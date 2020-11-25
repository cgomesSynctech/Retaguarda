unit DM_DevolucoesClientes;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DM_Entradas, IBEvents, DB, DBClient, Provider, DlgMsg,
    DMComponent, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMDevolucoesClientes = class(TDMEntradas)
        C_TabelaCHAVENFE: TStringField;
        C_TabelaSTATUSNFE: TIntegerField;
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_ItensAfterPost(DataSet: TDataSet);
        procedure RecalcularItens();
    procedure C_ItensQUANTIDADEChange(Sender: TField);
    private
        { Private declarations }
        function CalcularComissaoDevolucao(item: integer; total: currency): currency;
    public
        procedure ApagarOperacoesExtras;
        { Public declarations }
    end;

var
    DMDevolucoesClientes: TDMDevolucoesClientes;

implementation
uses funcoes, DM_Projeto, DM_Financeiro, DM_DigitacaoItens, TDM_Manutencao;
{$R *.dfm}

procedure TDMDevolucoesClientes.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMDevolucoesClientes := self;
end;

procedure TDMDevolucoesClientes.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 106 and ');
    Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMDevolucoesClientes.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaStatus.Value := 'D';
end;

procedure TDMDevolucoesClientes.ApagarOperacoesExtras;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'delete from transacoescreditos where idgerador = :id';
            parambyname('id').AsInteger := C_TabelaIDMestre.Value;
            execsql;
            close;
            sql.text := 'delete from comissoesdev where entrada = :id';
            parambyname('id').AsInteger := C_TabelaIDMestre.Value;
            execsql;
        end;
end;

procedure TDMDevolucoesClientes.DMComponentGravar4_AposCommit(
    Sender: TObject);
var Saida: integer;
begin
    inherited;
    if bAlteracao then
        ApagarOperacoesExtras;

    DMFinanceiro.RegistrarCredito(C_TabelaFavorecido.Value,
        C_TabelaIDMestre.Value,
        46, {Tipo Operação}
        true, {Empresa Devendo}
        0,
        (C_TabelaTOTALITENS123.Value + C_TabelaDESCONTO.Value),
        C_TabelalkTipoMovimento.AsString + ' #' + iif(sNumeroGerado <> '', sNumeroGerado, C_TabelaNumero.AsString));

    if (C_TabelaVENDEDOR.AsInteger > 0) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    Q_SQL.close;
                    Q_SQL.sql.text := 'select saida from saidasitens where saidaitem = :saidaitem';
                    Q_SQL.parambyname('saidaitem').asinteger := C_ItensSaidaItem.AsInteger;
                    Q_SQL.open;
                    Saida := Q_SQL.fields[0].AsInteger;
                    Q_SQL.close;
                    Q_SQL.sql.text := 'insert into comissoesdev ' +
                        '(comissaodev, data, venda, funcionario, valor, entrada, valoritem) ' +
                        'values ' +
                        '(:comissaodev, :data, :venda, :funcionario, :valor, :entrada, :valoritem) ';
                    Q_SQL.ParamByName('ComissaoDev').AsInteger := DMProjeto.NextIDGlobal;
                    Q_SQL.ParamByName('Data').AsDateTime := C_TabelaData.Value;
                    Q_SQL.ParamByName('Venda').AsInteger := Saida;
                    Q_SQL.ParamByName('Funcionario').AsInteger := C_TABELAVendedor.Value;
                    Q_SQL.ParamByName('Valoritem').AsCurrency := C_ItensSubTotalItem.AsCurrency;

                    if (C_ItensSaidaItem.AsInteger > 0) then
                        Q_SQL.ParamByName('Valor').AsCurrency := DMProjeto.CalcularComissao(IntToStr(Saida), C_ItensSaidaItem.AsInteger, C_ItensSubTotalItem.AsCurrency)
                    else
                        Q_SQL.ParamByName('Valor').AsCurrency := CalcularComissaoDevolucao(C_ItensITEM.AsInteger, C_ItensSubTotalItem.AsCurrency);
                    Q_SQL.ParamByName('Entrada').AsInteger := C_TabelaIDMestre.AsInteger;
                    Q_SQL.ExecSQL;

                    Q_SQL.close;
                    Q_SQL.sql.text := 'update saidasitens ' +
                        'set status = ''V'' ' +
                        'where saidaitem = :saidaitem';
                    Q_SQL.params[0].AsInteger := C_ItensSaidaItem.AsInteger;
                    Q_SQL.ExecSQL;
                    C_Itens.Next;
                end;
            C_Itens.EnableControls;
        end;
end;

procedure TDMDevolucoesClientes.DMComponentExclusao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    with Q_SQL do
        begin
            close;
            sql.text := 'delete from transacoescreditos where idgerador = :id';
            parambyname('id').asInteger := C_TabelaIDMestre.Value;
            ExecSQL;
        end;
end;

procedure TDMDevolucoesClientes.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
begin
    if DlgMsg.ShowMsg(711, [formatfloat('#,###,##0.000', (C_TabelaTOTALITENS123.Value + C_TabelaDESCONTO.Value))]) = 100 then
        begin
            inherited
        end
    else
        begin
            bSkip := true;
            Exit;
        end;
end;

function TDMDevolucoesClientes.CalcularComissaoDevolucao(item: integer; total: currency): currency;
var nDOW: integer;
    Comissao, ComissGrupo, ComissaoPlano, PComissao, nValorComissao, nPComiss: currency;
begin
    nDOW := IIF(DMProjeto.IsFeriado(C_Tabela.FieldByName('Data').asDateTime), 8, DayOfWeek(C_Tabela.FieldByName('Data').asDateTime));
    //// Comissão do Item e do Grupo
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select i.comissao, i.tipoitem, g.comissao as comissgrupo ' +
        'from itens i ' +
        'left join grupos g on i.grupo = g.grupo ' +
        'where item = ' + IntToStr(item);
    DMProjeto.Q_SQL.Open;
    Comissao := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    ComissGrupo := DMProjeto.Q_SQL.FieldByName('comissgrupo').AsCurrency;
    //// Comissão do Plano de Pagamento
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select comissao from planospagamento where planopagamento = ' + IntToStr(C_TabelaPLANOPAGAMENTO.AsInteger);
    DMProjeto.Q_SQL.Open;
    ComissaoPlano := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    //// Comissão do Usuário
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select comissao from favorecidos where favorecido = ' + IntToStr(C_TabelaVENDEDOR.AsInteger);
    DMProjeto.Q_SQL.Open;
    PComissao := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    DMProjeto.Q_SQL.Close;

    nValorComissao := 0;
    nPComiss := 0;

    if (ComissaoPlano > 0) then
        nPComiss := ComissaoPlano {Comissão do Plano de Pagamento }
    else if (Comissao > 0) then
        nPComiss := Comissao {Comissão no Produto}
    else if (ComissGrupo > 0) then
        nPComiss := ComissGrupo {Comissão definida no Grupo}
    else if (PComissao > 0) then
        nPComiss := PComissao; {Comissão do Usuário}

    {Adicionando comissão por dia especial}
    nPComiss := nPComiss + DMProjeto.Comissao_Dia(C_Tabela.FieldByName('Vendedor').asInteger, nDoW);

    nValorComissao := total * (nPComiss / 100);

    Result := nValorComissao;

end;

procedure TDMDevolucoesClientes.RecalcularItens();
var
    TempDS: TClientDataSet;
    nTotalProdutos, nTotalItens, nTotal123, nBasePeNota, nJurosDescSub: Currency;
    nVolumes: double;
    nValorIsentas, nValorOutrasICMS, nValorIPI: currency;
    nBaseCalcICMS, nValorICMS, nValorICMS_Calc_ST: currency;
    nBaseSubst, nValorSubst, nPesoBruto, nPesoLiquido: Currency;
begin
    //inherited;
// ESSA PROCEDURE FOI INSERIDA POR CESAR para calcular altomaticamente os valoers de base de calculo e valor de icms na devolução.
// esses dois campos estava ficando zerado e obrigando o cliente a digita-los manualmente.

    TempDS := TClientDataSet.Create(self);

    with TempDS do
        begin
            CloneCursor(C_Itens, true);

            nVolumes := 0;

            nTotalProdutos := 0;
            nTotalItens := 0;
            nTotal123 := 0;
            nBasePeNota := 0;
            nJurosDescSub := 0;

            nBaseCalcICMS := 0;
            nValorICMS := 0;
            nValorICMS_Calc_ST := 0;
            nValorIsentas := 0;
            nValorOutrasICMS := 0;
            nValorIPI := 0;
            nBaseSubst := 0;
            nValorSubst := 0;
            nPesoBruto := 0;
            nPesoLiquido := 0;

            First;
            while not Eof do
                begin
                    if not (FieldByName('I_TipoItem').asInteger in [7]) then
                        nTotalItens := nTotalItens + FieldByName('SubTotal').asCurrency;

                    if FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
                        nTotal123 := nTotal123 + FieldByName('SubTotal').asCurrency
                    else if (FieldByName('I_TipoItem').asInteger = 6) and (FieldByName('I_Percentual').asFloat = 0) then
                        nBasePeNota := nBasePeNota + FieldByName('SubTotal').asCurrency;

                    if (FieldByName('I_TipoItem').asInteger in [1, 2]) then
                        nTotalProdutos := nTotalProdutos + FieldByName('SubTotal').asCurrency + nJurosDescSub;

                    nBaseSubst := nBaseSubst + FieldByName('BaseCalcSubstProd').asCurrency;
                    nValorSubst := nValorSubst + FieldByName('VALORICMSSUBSTPROD').asCurrency;
                    nValorIPI := nValorIPI + FieldByName('ValorIPIProd').asCurrency;

                    if (C_ItensSITUACAOECF.Value = 'I') then
                        nValorIsentas := nValorIsentas + FieldByName('SubTotal').asCurrency
                    else
                        begin
                            if C_TabelaPossuiICMS.Value = 'S' then
                                begin
                                    if FieldByName('SituacaoECF').AsString = 'T' then
                                        begin
                                            nBaseCalcICMS := nBaseCalcICMS + FieldByName('BaseCalcICMSProd').asCurrency;
                                            nValorICMS := nValorICMS + FieldByName('ValorICMSProd').asCurrency;
                                            nValorOutrasICMS := nValorOutrasICMS + (FieldByName('SubTotal').asCurrency - FieldByName('BaseCalcICMSProd').asCurrency);
                                        end;
                                    if FieldByName('SituacaoECF').AsString = 'F' then
                                        nValorICMS_Calc_ST := nValorICMS_Calc_ST + (FieldByName('subtotalitem').asCurrency * FieldByName('AliqICMS').asCurrency) / 100;
                                end;
                        end;

                    nPesoBruto := nPesoBruto + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoBruto').asFloat);
                    nPesoLiquido := nPesoLiquido + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoLiquido').asFloat);

                    Next;
                end;

            if C_Tabela.State = dsBrowse then
                C_Tabela.Edit;

            C_TabelaTOTALITENS.Value := nTotalItens;
            C_TabelaTOTALITENS.Value := nTotalProdutos;
            C_TabelaTOTALITENS123.Value := nTotal123;
            C_TabelaDESCONTOITENS.Value := nBasePeNota;

            C_TabelaBASECALCICMS.Value := nBaseCalcICMS;
            C_TabelaVALORICMS.Value := nValorICMS;
            C_TabelaBASECALCSUBST.Value := nBaseSubst;
            C_TabelaVALORICMSSUBST.Value := nValorSubst;
            C_TabelaVALORIPI.Value := nValorIPI;

            C_TabelaPesoBruto.value := nPesoBruto;
            C_TabelaPesoLiquido.value := nPesoLiquido;

            C_TabelaVolumes.asFloat := nVolumes;
        end;
    TempDS.Free;
end;

procedure TDMDevolucoesClientes.C_ItensAfterPost(DataSet: TDataSet);
begin
    //inherited;
    RecalcularItens();
end;


procedure TDMDevolucoesClientes.C_ItensQUANTIDADEChange(Sender: TField);
begin
    if (Sender.asFloat < 0) or ((Sender.asVariant = null) and not (C_ItensI_TipoItem.Value in [0, 4..7])) then
        begin
            Sender.asFloat := 0;
            exit;
        end;

  inherited;
   //inherited
end;

end.

