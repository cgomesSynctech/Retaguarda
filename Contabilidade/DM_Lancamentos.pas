unit DM_Lancamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, Variants;

type
  TDMLancamentos = class(TDMManutencao)
    Q_Contas: TIBQuery;
    Q_ContasProvider: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasDS: TDataSource;
    Q_LancamentosItens: TIBQuery;
    C_LancamentosItens: TClientDataSet;
    C_LancamentosItensDS: TDataSource;
    C_LancamentosItensLANCAMENTO: TIntegerField;
    C_LancamentosItensCONTA: TIntegerField;
    C_LancamentosItensVALOR: TBCDField;
    C_LancamentosItensHISTORICO: TStringField;
    C_LancamentosItensDebito: TIBBCDField;
    C_LancamentosItensCredito: TIBBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_LancamentosItenslkConta: TStringField;
    U_LancamentosItens: TIBUpdateSQL;
    C_TabelaLANCAMENTO: TIntegerField;
    C_TabelaREFERENCIA: TStringField;
    C_TabelaORIGEM: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaIDGERADOR: TIntegerField;
    C_LancamentosItensLANCAMENTOITEM: TIntegerField;
    C_TabelaQ_LancamentosItens: TDataSetField;
    C_ContasSALDO: TBCDField;
    C_TabelaNUMERO: TStringField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaDATA_AUDIT: TDateField;
    C_ContasTIPOCONTA: TIntegerField;
    C_TabelaHORA_AUDIT: TStringField;
    C_LancamentosItensFAVORECIDO: TIntegerField;
    C_LancamentosItensNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_LancamentosItensNewRecord(DataSet: TDataSet);
    procedure C_LancamentosItensDebitoChange(Sender: TField);
    procedure C_LancamentosItensCreditoChange(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_LancamentosItensHISTORICOChange(Sender: TField);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure DMComponentAntesDeIniciar(Sender: TObject);
    procedure DMComponentPesquisar2_SQLFinal(Sender: TObject;
      var SelectFinal: String);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_LancamentosItensBeforePost(DataSet: TDataSet);
    procedure C_TabelaREFERENCIAChange(Sender: TField);
    procedure C_LancamentosItensCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaBeforePost(DataSet: TDataSet);
    procedure DMComponentApagar_AntesApply(Sender: TObject);
  private
    bEditou,bCalc: boolean;
    nLancamento,nIDOrigem: integer;
    nHistorico: integer;
    sHistorico: string;
  public
    nCalcDebito, nCalcCredito: single;
  end;

var
  DMLancamentos: TDMLancamentos;

implementation
uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDMLancamentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMLancamentos := self;
  nIDOrigem     := 21;
  nLancamento   := -99999;

  nHistorico := DMProjeto.HistoricoPadraoOrigem(nIDOrigem);
  sHistorico := DMProjeto.HistoricoPadrao(nHistorico);
end;

procedure TDMLancamentos.C_LancamentosItensNewRecord(DataSet: TDataSet);
begin
  inherited;
//  if nHistorico > 0 then
  C_LancamentosItensLancamentoItem.value := nLancamento;
  C_LancamentosItensHistorico.value := sHistorico;

  if nCalcDebito > nCalcCredito then
    C_LancamentosItensCredito.value := nCalcDebito - nCalcCredito
  else if nCalcDebito < nCalcCredito then
    C_LancamentosItensDebito.value := nCalcCredito - nCalcDebito
  else begin
    C_LancamentosItensCredito.value := 0;
    C_LancamentosItensDebito.value := 0;
  end;

  inc(nLancamento);
end;

procedure TDMLancamentos.C_LancamentosItensDebitoChange(Sender: TField);
begin
  inherited;
  if bCalc then
    exit;
  bEditou := true;
  if C_LancamentosItensDebito.value > 0 then begin
    C_LancamentosItensValor.value := C_LancamentosItensDebito.value * -1;
    C_LancamentosItensCredito.value := 0;
  end;
//  else
//    C_LancamentosItensValor.value := 0;
end;

procedure TDMLancamentos.C_LancamentosItensCreditoChange(Sender: TField);
begin
  inherited;
  if bCalc then
    exit;
  bEditou := true;
  if C_LancamentosItensCredito.value > 0 then begin
    C_LancamentosItensValor.value := C_LancamentosItensCredito.value;
    C_LancamentosItensDebito.value := 0;
  end;
//  else
//    C_LancamentosItensValor.value := 0;
end;

procedure TDMLancamentos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaReferencia.value := '';
  C_TabelaData.value := DMProjeto.dDataSistema;
  C_TabelaOrigem.value := nIDOrigem;
  C_TabelaUsuario.value := DMProjeto.nFuncionario;
  C_TabelaData_Audit.value := DMProjeto.dDataSistema;
  C_TabelaHora_Audit.value := copy(TimeToStr(time),1,5);
end;

procedure TDMLancamentos.C_LancamentosItensHISTORICOChange(Sender: TField);
begin
  inherited;
  sHistorico := C_LancamentosItensHISTORICO.value;
end;

procedure TDMLancamentos.DMComponentModoInclusao2_Terminar(
  Sender: TObject);
begin
  inherited;
  DMLancamentos.C_LancamentosItens.append;
end;

procedure TDMLancamentos.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  bEditou := false;
end;

procedure TDMLancamentos.DMComponentAntesDeIniciar(Sender: TObject);
begin
  inherited;
  bEditou := false;
end;

procedure TDMLancamentos.DMComponentPesquisar2_SQLFinal(Sender: TObject;
  var SelectFinal: String);
begin
  inherited;
  bEditou := false;
end;

procedure TDMLancamentos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_LancamentosItens.State in [dsEdit,dsInsert] then
    C_LancamentosItens.post;

  if C_LancamentosItens.recordcount = 0 then begin
    DlgMsg.ShowMsg(3050);
    bSkip := true;
    exit;
  end;

  if nCalcDebito <> nCalcCredito then begin
    DlgMsg.ShowMsg(3051);
    bSkip := true;
    exit;
  end;
end;

procedure TDMLancamentos.C_LancamentosItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_LancamentosItensConta.isnull then
    abort;
end;

procedure TDMLancamentos.C_TabelaREFERENCIAChange(Sender: TField);
begin
  inherited;
  C_TabelaNumero.value := C_TabelaReferencia.value;
end;

procedure TDMLancamentos.C_LancamentosItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  if bEditou then
    exit;
//  C_LancamentosItensDebito.value := 0;
//  C_LancamentosItensCredito.value := 0;
  bCalc := true;
//  if C_TabelaLancamento.value > 0 then begin
    if C_LancamentosItensValor.value > 0 then
      C_LancamentosItensCredito.value := C_LancamentosItensValor.value
    else
      C_LancamentosItensDebito.value := abs(C_LancamentosItensValor.value);
//  end;
  bCalc := false;
end;

procedure TDMLancamentos.DMComponentGravar3_AposApply(Sender: TObject);
var nOrigem: integer;
begin
  inherited;

  nOrigem := DMProjeto.TipoOrigem('FrmLancamentos');
  C_LancamentosItens.first;
  while not C_LancamentosItens.eof do begin
    if C_LancamentosItensValor.value < 0 then
      DMFinanceiro.Depositar(nOrigem,C_TabelaLancamento.value,C_LancamentosItensConta.value,0,
      C_TabelaData.value,abs(C_LancamentosItensValor.value),0,1,C_LancamentosItensHistorico.value,0,
      C_TabelaReferencia.value,'',-1,'S')
    else if C_LancamentosItensValor.value > 0 then
      DMFinanceiro.Retirar(nOrigem,C_TabelaLancamento.value,C_LancamentosItensConta.value,
      C_TabelaData.value,abs(C_LancamentosItensValor.value),0,1,C_LancamentosItensHistorico.value,0,
      C_TabelaReferencia.value,'',-1,0,'S');

    C_LancamentosItens.next;
  end;
end;

procedure TDMLancamentos.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
begin
  inherited;
  if bAlteracao then begin
    DMProjeto.Q_Contabil.SQL.text := 'select * from lancamentos where lancamento = :lancto';
    DMProjeto.Q_Contabil.params[0].asinteger := C_TabelaLancamento.value;
    DMProjeto.Q_Contabil.open;
    while not DMProjeto.Q_Contabil.eof do begin
      DMFinanceiro.ExcluirTransacoes(DMProjeto.Q_Contabil.FieldByName('lancamento').asinteger);
      DMProjeto.Q_Contabil.next;
    end;
  end;
end;

procedure TDMLancamentos.C_TabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  C_TabelaIDGerador.value := C_TabelaLancamento.value;
end;

procedure TDMLancamentos.DMComponentApagar_AntesApply(Sender: TObject);
begin
  inherited;
  DMProjeto.Q_Contabil.SQL.text := 'select * from lancamentos where lancamento = :lancto';
  DMProjeto.Q_Contabil.params[0].asinteger := C_TabelaLancamento.value;
  DMProjeto.Q_Contabil.open;
  while not DMProjeto.Q_Contabil.eof do begin
    DMFinanceiro.ExcluirTransacoes(DMProjeto.Q_Contabil.FieldByName('lancamento').asinteger);
    DMProjeto.Q_Contabil.next;
  end;
end;

end.
