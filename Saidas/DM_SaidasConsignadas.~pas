unit DM_SaidasConsignadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, IBQuery, IBEvents, BTOdeum, IBStoredProc, ActnList;

type
  TDMSaidasConsignadas = class(TDMSaidas)
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaSTATUSValidate(Sender: TField);
    procedure C_ItensSTATUSValidate(Sender: TField);
    procedure C_ItensPRECOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSaidasConsignadas: TDMSaidasConsignadas;

implementation
  uses DM_Projeto, Funcoes, DM_DigitacaoItens;

{$R *.DFM}

procedure TDMSaidasConsignadas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMSaidasConsignadas := self;
end;

procedure TDMSaidasConsignadas.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 4 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMSaidasConsignadas.C_TabelaSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'F') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'F') and (sender.asString <> 'F') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

procedure TDMSaidasConsignadas.C_ItensSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'F') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'F') and (sender.asString <> 'F') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
    end
  else if (sender.asString = 'M') and (C_ItensHasChildren.Value <> 'S') then begin
    DlgMsg.ShowMsg(2403);
    raise exception.create('@@');
  end;
end;


procedure TDMSaidasConsignadas.C_ItensPRECOChange(Sender: TField);
var
    nVlMaxDesconto, nSub, nDif: double;
    bPodeDesconto: boolean;
    nDescItem, nPerDesc, nPComissao: Currency;
    sGrupoDesconto: string[5];
begin

    {Validando o Desconto}
    if C_ItensI_TIPOITEM.Value = 6 then
        begin
            if Sender.asCurrency > 0 then
                begin
                    Sender.asCurrency := -Sender.asCurrency;
                    exit;
                end;

            nVlMaxDesconto := TotalUsoTipoItem('cfValorMaxDesconto', C_ItensUSOTIPOITEM.Value);
            nSub := TotalUsoTipoItem('SubTotal', C_ItensUSOTIPOITEM.Value);

            if C_ItensI_PERCENTUAL.Value > 0 then
                begin
                    if (nSub > 0) and (ABS(C_ItensPRECO.Value) > (nVlMaxDesconto / nSub) * 100)
                        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := -(nVlMaxDesconto / nSub) * 100;
                            exit;
                        end;
                end
            else
                begin
                    if (ABS(C_ItensPRECO.Value) > (nVlMaxDesconto))
                        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100)
                        , C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := -nVlMaxDesconto;
                            exit;
                        end;
                end;

        end
    else if (C_ItensI_TIPOITEM.Value in [1, 2, 3]) and (C_ItensPrecoTabela.Value > 0) then
        begin
            // não é permitido diminuir o preco de um item em promocao
            if (C_ItensPromocao.Value = 'S') and (C_ItensPreco.asFloat < C_ItensPrecoTabela.asFloat) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;

                    DlgMsg.ShowMsg(8041);
                    raise Exception.Create('@@');
                end;

            // permissão p/ verificar se pode aumentar o preco
            if (C_ItensPreco.Value <> C_ItensOldPreco.Value) and (C_ItensPreco.asFloat > C_ItensPrecoTabela.Value + (0.001))
                and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'AUMENTPREC', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString, C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;
                    exit;
                end;

            // permissao p/ verificar se pode diminuir o preco
            if ((C_ItensPreco.Value <> C_ItensOldPreco.Value) and (C_ItensPreco.asFloat < C_ItensPrecoTabela.Value - (0.001)))
                and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'DIMINPREC', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString + #13#10 +
                'Desconto:' + FloatToStr(nSub) + #13#10 +
                IIF(C_ItensOLDPRECO.AsCurrency > 0, 'Desconto %: ' + FloatToStr((C_Itenspreco.AsCurrency / C_ItensOLDPRECO.AsCurrency) * 100), 0),
                //'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;
                    exit;
                end;

            {Capturando o MaxDesconto que ainda pode ser concedido - pois o campo Desconto de C_Tabela já pode ter valor}
            bPodeDesconto := DMProjeto.LerPermissaoextra('SadasConsignadas1', 'Perdescmax');
            bPodeDesconto := DMProjeto.LerPermissao(sForm, 'Perdescmax');

            nVlMaxDesconto := ValorMaxDesconto;

            nVlMaxDesconto := nVlMaxDesconto + C_TabelaDesconto.Value;
            nSub := C_ItensPreco.asFloat - C_ItensOldPreco.asFloat;

            nDif := ((C_ItensPrecoTabela.asFloat - C_ItensPreco.asFloat) / C_ItensPrecoTabela.asFloat) - C_ItensMaxDesconto.asFloat;

            {O Desconto Máximo já foi ultrapassado, não é possível dar mais descontos}
            if (nSub < 0) and ((nVlMaxDesconto - nSub < 0) or (nVlMaxDesconto < 0)) then
                begin
                    if bPodeDesconto then
                        DlgMsg.ShowMsg(2751,
                            [FormatCurr('##0.0# %', C_ItensMaxDesconto.Value * 100)],
                            'SemAlertarDescontoMax')
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := C_ItensOldPreco.Value;
                            exit;
                        end;
                end
            else if (nSub < 0) and (nDif > 0.00000001) then
                begin {Verificando alterações a menor no preço}
                    if bPodeDesconto then
                        begin
                            DlgMsg.ShowMsg(2750, [FormatCurr('##0.0# %', C_ItensMaxDesconto.Value * 100),
                                FormatCurr('#,##0.000', C_ItensPrecoTabela.asFloat * C_ItensMaxDesconto.Value)], 'SemAlertarDescontoMax');
                        end
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := C_ItensPrecoTabela.Value * (1 - C_ItensMaxDesconto.Value);
                            C_ItensPDesconto.OnChange := nil;
                            C_Itens.FieldByName('PDesconto').AsCurrency := (C_ItensMaxDesconto.Value * 100.00);
                            C_ItensPDesconto.OnChange := C_ItensPDescontoChange;

                            exit;
                        end;
                end;

        end;

    C_ItensOldPreco.Value := C_ItensPreco.Value;
    C_Itens.FieldByName('icPercComissao').AsCurrency := nPComissao;
    C_Itens.FieldByName('icGrupoDesconto').AsString := sGrupoDesconto;
    {Primeiro Valida o Desconto para poder ocorrer o PrecoChange da SuperClasse.}
    inherited;
end;

end.
