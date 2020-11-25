unit DM_AjustesItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, Variants;

type
  TDMAjustesItens = class(TDMManutencao)
    C_TabelaCONTA: TIntegerField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasDS: TDataSource;
    C_TabelacmbConta: TStringField;
    C_TabelaEstoque: TIBBCDField;
    C_TabelaEstoqueNovo: TIBBCDField;
    C_TabelaIDMESTRE: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaQUANTIDADE: TBCDField;
    C_TabelaITEM: TIntegerField;
    C_TabelaMOTIVO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaNUMERO: TStringField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasSALDO: TBCDField;
    C_ContasTIPOCONTA: TIntegerField;
    C_TabelaNUMEROLOTE: TStringField;
    C_TabelaVALIDADE: TDateField;
    C_TabelaCONTROLEVALIDADE: TStringField;
    C_TabelaUNIDADE: TStringField;
    C_TabelaFATOR: TFloatField;
    C_Unidades: TClientDataSet;
    P_Unidades: TDataSetProvider;
    C_UnidadesDS: TDataSource;
    Q_Unidades: TIBQuery;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    C_TabelalkUnidade: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaicEstoque: TBCDField;
    C_TabelaicEstoqueNovo: TBCDField;
    C_TabelaCUSTO: TFloatField;
    C_TabelaicCusto: TCurrencyField;
    C_TabelaCODIGO: TStringField;
    C_TabelaREFERENCIA: TStringField;
    Q_Almoxarifados: TIBQuery;
    P_Almoxarifados: TDataSetProvider;
    C_Almoxarifados: TClientDataSet;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    C_TabelaALMOXARIFADO: TIntegerField;
    C_TabelalkAlmoxarifado: TStringField;
    C_TabelaUnidadeOld: TStringField;
    C_UnidadesINTEIRA: TStringField;
    C_UnidadesCOMQTD: TStringField;
    C_TabelalkUnidadeInteira: TStringField;
    C_TabelaFATORUNDVENDA: TFloatField;
    C_TabelaULTIMOFORNECEDOR: TIntegerField;
    C_TabelaFORNECPREFERENCIA: TIntegerField;
    C_TabelaEMPRESA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaITEMChange(Sender: TField);
    procedure C_TabelaQUANTIDADEChange(Sender: TField);
    procedure C_TabelaEstoqueNovoChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure DMComponentApagar_AntesApply(Sender: TObject);
    procedure C_TabelaUNIDADEChange(Sender: TField);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure C_TabelaQUANTIDADESetText(Sender: TField;
      const Text: String);
    procedure C_TabelaicEstoqueNovoSetText(Sender: TField;
      const Text: String);
    procedure C_TabelaUNIDADEValidate(Sender: TField);
  private
    bChangeQtde: boolean;
    // Adriano
    DMContabil: TDMContabilidade;

    nHistorico: integer;
    sHistorico: string;
    bMultiAlmox: Boolean;
    function EstoqueAlmox(Item, Almox: Integer): Real;

  public
    dData : TDateTime;

    function DadosCompleto:boolean;
    function ContabilidadeAtivado:boolean;
    procedure AlterarAlmox;
    procedure ContabilidadeDesativado;
    procedure CriaContabilidade;
    procedure Contabiliza;
    procedure MostraContabilidade;
    /////////////////////////////////
  end;

var
  DMAjustesItens: TDMAjustesItens;

implementation
uses DM_Projeto, funcoes, Frm_Contabilidade;

{$R *.DFM}

procedure TDMAjustesItens.AlterarAlmox;
Begin
  C_TabelaEstoque.value := EstoqueAlmox(C_TabelaITEM.Value, C_TabelaAlmoxarifado.Value);
  C_TabelaITEMChange(C_TabelaITEM);
End;


function TDMAjustesItens.EstoqueAlmox(Item, Almox: Integer): Real;
Var Qtd: Real;
Begin
  Qtd:=0;
  With Q_Sql do Begin
    Sql.Text := ' select a.estoquealmox from itensalmox a '+
                ' where a.item = :ITEM and a.almoxarifado = :Almox ';
    Params[0].AsInteger := Item;
    Params[1].AsInteger := Almox;
    Open;
    Qtd:= FieldByName('estoquealmox').AsFloat;
  End;
  Result:=Qtd;

End;


procedure TDMAjustesItens.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMAjustesItens := self;
  dData := DMProjeto.dDataSistema;
  bMultiAlmox := DMProjeto.Parametro('MultiAlmox') = 'S';
end;

procedure TDMAjustesItens.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;                                             
  C_TabelaEmpresa.Value := DMProjeto.nEmpresaLogada;
  C_TabelaULTIMOFORNECEDOR.Value := -9;
  C_TabelaFORNECPREFERENCIA.Value := -9;  

  C_TabelaFator.Value := 1;

  C_TabelaNumero.value := AdicionarStr(IntToStr(DMProjeto.NextID('ReferAjustes')),'0',6);
  C_TabelaData.value := dData;
  C_TabelaConta.value := DMProjeto.ContaPadrao(7);

  C_TabelaCusto.Value := 0;
  C_TabelaQuantidade.value := 0;
  C_TabelaEstoque.value := 0;
  C_TabelaEstoqueNovo.value := 0;
  C_TabelaAlmoxarifado.Value := 0;
  C_Almoxarifados.Locate('ALMOXARIFADO','0',[]);
end;

procedure TDMAjustesItens.C_TabelaITEMChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin
    C_TabelaDescricao.value        := DMProjeto.C_LocalizarItens.FieldByName('descricao').AsString;
    C_TabelaCodigo.value           := DMProjeto.C_LocalizarItens.FieldByName('Codigo').AsString;
    C_TabelaReferencia.value       := DMProjeto.C_LocalizarItens.FieldByName('Referencia').AsString;
    if bMultiAlmox Then
       C_TabelaEstoque.value      := EstoqueAlmox(Sender.AsInteger, C_Almoxarifados.FieldByName('ALMOXARIFADO').AsInteger)
    Else
       C_TabelaEstoque.value      := DMProjeto.C_LocalizarItens.FieldByName('Estoque').AsFloat;
    C_TabelaCusto.value            := DMProjeto.C_LocalizarItens.FieldByName('customedio').AsFloat;
    C_TabelaControlevalidade.value := DMProjeto.C_LocalizarItens.FieldByName('controlevalidade').AsString;
    C_TabelaUnidade.Value := DMProjeto.C_LocalizarItens.FieldByName('Unidade').AsString;
    C_TabelaFator.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;
    C_TabelaFatorUndVenda.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').AsFloat;
  end else begin
    C_TabelaDescricao.asVariant := null;
//    C_TabelaUnidade.asVariant := null;
    C_TabelaEstoque.value 	:= 0;
    C_TabelaEstoqueNovo.value 	:= 0;
    C_TabelaCusto.value 		:= 0;
    C_TabelaFator.value 		:= 1;
    C_TabelaFatorUndVenda.Value := 1;
    C_TabelaControlevalidade.value := 'N'
  end;
end;

procedure TDMAjustesItens.C_TabelaQUANTIDADEChange(Sender: TField);
var
  nNovoEst : double;
begin
  inherited;
  bChangeQtde := true;
  nNovoEst := C_TabelaEstoque.value + (C_TabelaQuantidade.value * C_TabelaFator.Value) /
              IIF(C_TabelaFATORUNDVENDA.Value > 0, C_TabelaFATORUNDVENDA.Value, 1);

  if C_TabelaEstoqueNovo.Value <> nNovoEst then
    C_TabelaEstoqueNovo.value := nNovoEst;

  C_TabelaCalcFields(C_Tabela);
  bChangeQtde := false;
end;

procedure TDMAjustesItens.C_TabelaEstoqueNovoChange(Sender: TField);
var
  nQtd : double;
begin
  inherited;
  nQtd := ((C_TabelaEstoqueNovo.Value - C_TabelaEstoque.Value) / IIF(C_TabelaFator.Value > 0, C_TabelaFator.Value,1)) * C_TabelaFATORUNDVENDA.Value;

  if (bChangeQtde = false) then
    if C_TabelaQuantidade.Value <> nQtd then
      C_TabelaQuantidade.value := nQtd;

  C_TabelaCalcFields(C_Tabela);
end;

procedure TDMAjustesItens.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if not DadosCompleto then
    bSkip := true;
end;

function TDMAjustesItens.DadosCompleto;
begin
  result := true;
  if C_TabelaItem.IsNull then begin
    DlgMsg.ShowMsg(513,['Item']);
    result := false;
  end;

  if (C_TabelaControleValidade.value = 'S') and (C_TabelaQuantidade.Value > 0) and
     ((C_TabelaNumeroLote.Value = '') or (C_TabelaValidade.Value = 0)) then begin
    DlgMsg.ShowMsg(6008);
    result := false;
  end;

end;

function TDMAjustesItens.ContabilidadeAtivado;
begin
  result := DMContabil <> nil;
end;

procedure TDMAjustesItens.ContabilidadeDesativado;
begin
  DMContabil.FechaDatasets;
  DMContabil.Free;
end;

procedure TDMAjustesItens.CriaContabilidade;
begin
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMAjustesItens.Contabiliza;
begin
  DMContabil.ContabilizaAjustesItens(DMAjustesItens.C_TabelaIDMestre.Value,DMAjustesItens.C_Tabela);
end;

procedure TDMAjustesItens.MostraContabilidade;
begin
  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
end;

procedure TDMAjustesItens.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  Contabiliza;

  if not DMContabil.Salvar(C_TabelaIDMestre.value) then
    raise Exception.Create(DMProjeto.GetMsg(3117));
  ///////////////////////////
end;

procedure TDMAjustesItens.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

procedure TDMAjustesItens.DMComponentApagar_AntesApply(Sender: TObject);
begin
  inherited;
  DMProjeto.CancelarLancamentos(C_TabelaIDMESTRE.asstring);
end;

procedure TDMAjustesItens.C_TabelaUNIDADEChange(Sender: TField);
var
  nFator : double;
begin
  inherited;
  //nFator := DMProjeto.getFatorUnidade( DMProjeto.C_LocalizarItensITEM.Value, C_TabelaUnidade.Value );
  nFator := DMProjeto.getFatorUnidade( C_TabelaITEM.Value, C_TabelaUnidade.Value );
  if nFator <= 0 then begin
    C_TabelaUnidade.Value := C_TabelaUnidadeOld.Value;
    exit;
  end else
    C_TabelaFator.Value := nFator;

  C_TabelaUnidadeOld.Value := C_TabelaUnidade.Value;
end;

procedure TDMAjustesItens.C_TabelaCalcFields(DataSet: TDataSet);
var
  nFator : double;
begin
  inherited;
  nFator := IIF(C_TabelaFator.Value > 0, C_TabelaFator.Value, 1);

  C_TabelaicEstoque.Value := (C_TabelaEstoque.Value / nFator) * C_TabelaFATORUNDVENDA.Value;
  C_TabelaicEstoqueNovo.Value := (C_TabelaEstoqueNovo.Value / nFator) * C_TabelaFATORUNDVENDA.Value;
  C_TabelaicCusto.Value := (C_TabelaCusto.Value * nFator) / IIF(C_TabelaFATORUNDVENDA.Value > 0, C_TabelaFATORUNDVENDA.Value, 1);

end;

procedure TDMAjustesItens.C_TabelaQUANTIDADESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  //Se a unidade for inteira, truncar a quantidade
  if (C_TabelalkUnidadeInteira.Value = 'S') then
    C_TabelaQuantidade.value := trunc(StrToFloat(Text))
  else
    C_TabelaQuantidade.AsString := Text;
end;

procedure TDMAjustesItens.C_TabelaicEstoqueNovoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  //Se a unidade for inteira, truncar a quantidade
  if (C_TabelalkUnidadeInteira.Value = 'S') then
    C_TabelaicEstoqueNovo.Value := trunc(StrToFloat(Text))
  else
    C_TabelaicEstoqueNovo.AsString := Text;

  C_TabelaEstoqueNovo.Value := (C_TabelaicEstoqueNovo.Value * C_TabelaFator.Value) /
                               IIF(C_TabelaFATORUNDVENDA.Value > 0, C_TabelaFATORUNDVENDA.Value, 1);
end;

procedure TDMAjustesItens.C_TabelaUNIDADEValidate(Sender: TField);
begin
  inherited;
  if C_TabelaITEM.AsInteger > 1 then with Q_SQL do begin
    Close;
    SQL.Text := 'select itemunidade from itensunidades where item = :item and unidade = :und ';
    ParamByName('item').AsInteger := C_TabelaITEM.AsInteger;
    ParamByName('und').AsString := Sender.AsString;
    Open;
    if RecordCount < 1 then begin
      Close;
      DlgMsg.ShowMsg( 8027 );
      raise Exception.Create('@@');
    end;
  end;
end;



End.

