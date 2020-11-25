unit DM_BBFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DlgMsg, Db, DBClient, Provider, IBCustomDataSet, IBQuery, IBUpdateSQL, Variants;

type
  TDMBBFornecedores = class(TDataModule)
    U_Fornecedores: TIBUpdateSQL;
    Q_Fornecedores: TIBQuery;
    P_Fornecedores: TDataSetProvider;
    C_FornecedoresDS: TDataSource;
    C_Fornecedores: TClientDataSet;
    Q_Aux: TIBQuery;
    DlgMsg: TDlgMsg;
    C_FornecedoresFAVORECIDO: TIntegerField;
    C_FornecedoresCODIGO: TStringField;
    C_FornecedoresNOME: TStringField;
    C_FornecedoresRAZAO: TStringField;
    C_FornecedoresENDERECO: TStringField;
    C_FornecedoresCIDADE: TStringField;
    C_FornecedoresUF: TStringField;
    C_FornecedoresCEP: TStringField;
    C_FornecedoresFONE1: TStringField;
    C_FornecedoresFONE2: TStringField;
    C_FornecedoresFAX: TStringField;
    C_FornecedoresCELULAR: TStringField;
    C_FornecedoresEMAIL: TStringField;
    C_FornecedoresTIPOFAVORECIDO: TIntegerField;
    C_FornecedoresTAXAVEL: TStringField;
    C_FornecedoresEIN: TStringField;
    C_FornecedoresSSN: TStringField;
    C_FornecedoresDESATIVADO: TStringField;
    C_FornecedoresEXIGIVEL1099: TStringField;
    C_FornecedoresDATACADASTRO: TDateField;
    C_FornecedoresSITE: TStringField;
    C_FornecedoresSITUACAO: TStringField;
    C_FornecedoresCONTA: TIntegerField;
    C_FornecedoresDATANASC: TDateField;
    Q_UFS: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    C_FornecedoreslkUF: TStringField;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasDS: TDataSource;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_FornecedoreslkConta: TStringField;
    C_FornecedoresLIMITECREDITO: TBCDField;
    C_FornecedoresLOGOTIPO: TStringField;
    C_FornecedoresCREDITOOLD: TBCDField;
    C_FornecedoresID: TIntegerField;
    U_Parcelas: TIBUpdateSQL;
    Q_Parcelas: TIBQuery;
    P_Parcelas: TDataSetProvider;
    C_ParcelasDS: TDataSource;
    C_Parcelas: TClientDataSet;
    C_ParcelasID: TIntegerField;
    C_ParcelasTITULO: TStringField;
    C_ParcelasPARCELA: TIntegerField;
    C_ParcelasVALOR: TBCDField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasCOMPETENCIA: TDateField;
    C_ParcelasVALORPAGO: TBCDField;
    C_ParcelasDATAPAGO: TDateField;
    C_ParcelasOBS: TStringField;
    C_ParcelasNUMBOLETO: TStringField;
    C_ParcelasBANCO: TIntegerField;
    C_ParcelasNOTAFISCAL: TStringField;
    C_ParcelasSTATUS: TIntegerField;
    C_ParcelasDATAANTECIPACAO: TDateField;
    C_ParcelasVALORDESCANTECIPADO: TBCDField;
    C_ParcelasJUROSPLANO: TBCDField;
    C_ParcelasUSUARIO: TIntegerField;
    C_ParcelasDESCONTOS: TBCDField;
    C_ParcelasDATAATRASADO: TDateField;
    C_ParcelasVALORJUROSMORA: TBCDField;
    C_ParcelasVALORMULTA: TBCDField;
    C_ParcelasCREDITOUTILIZADO: TBCDField;
    C_ParcelasDATACANCELAMENTO: TDateField;
    C_ParcelasFUNCCANCELAMENTO: TIntegerField;
    C_ParcelasOPENBALANCE: TStringField;
    C_ParcelasCREDITOGERADO: TBCDField;
    C_ParcelasNOME: TStringField;
    C_ContasOperacao: TClientDataSet;
    C_ContasOperacaoCONTA: TIntegerField;
    C_ContasOperacaoVALOR: TBCDField;
    C_ContasOperacaoCONTAOPERACAO: TIntegerField;
    C_ContasOperacaoID: TIntegerField;
    C_ContasOperacaoNOMECLIENTEREF: TStringField;
    C_ContasOperacaoCLIENTEREF: TIntegerField;
    C_ContasOperacaoHISTORICO: TStringField;
    C_ContasOperacaoORIGEM: TIntegerField;
    Q_ContasOperacao: TIBQuery;
    C_ContasOperacaoDS: TDataSource;
    U_ContasOperacao: TIBUpdateSQL;
    Q_MasterParcelas: TDataSource;
    C_ParcelasCONTA: TIntegerField;
    C_FornecedoresCREDITO: TBCDField;
    C_ParcelasIDNovo: TIntegerField;
    C_ParcelasVALOROLD: TBCDField;
    C_ParcelasContaLookup: TStringField;
    C_Cheques: TClientDataSet;
    P_Cheques: TDataSetProvider;
    C_ChequesDS: TDataSource;
    Q_Cheques: TIBQuery;
    C_ChequesNOTAFISCAL: TStringField;
    C_ChequesVALOR: TBCDField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesFAVORECIDO: TIntegerField;
    C_ChequesNOME: TStringField;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesCONTA: TIntegerField;
    C_ChequeslkContaDespesa: TStringField;
    C_ChequeslkContaAPagar: TStringField;
    Q_Bancos: TIBQuery;
    P_Bancos: TDataSetProvider;
    C_Bancos: TClientDataSet;
    C_BancosFAVORECIDO: TIntegerField;
    C_BancosNOME: TStringField;
    C_ChequesID: TIntegerField;
    C_ChequesDATA: TDateField;
    C_ChequesVALOROLD: TBCDField;
    C_ParcelaslkContaPagar: TStringField;
    C_ChequesIDDOC: TIntegerField;
    C_FornecedoresCAMPO01: TStringField;
    C_FornecedoresCAMPO02: TStringField;
    C_FornecedoresCAMPO03: TStringField;
    C_FornecedoresCAMPO04: TStringField;
    C_FornecedoresCAMPO05: TStringField;
    C_FornecedoresCAMPO06: TStringField;
    C_FornecedoresCAMPO07: TStringField;
    C_FornecedoresCAMPO08: TStringField;
    C_FornecedoresCAMPO09: TStringField;
    C_FornecedoresCAMPO10: TStringField;
    C_FornecedoresCAIXAPOSTAL: TStringField;
    C_ParcelasQ_ContasOperacao: TDataSetField;
    C_ChequesCONTACHEQUE: TIntegerField;
    C_ChequesCONTAPAGAR: TIntegerField;
    C_ChequesRETIRADA: TIntegerField;
    C_ChequesCONTADESPESA: TIntegerField;
    C_ParcelasCONTADESPESA: TIntegerField;
    C_ParcelasCONTAPAGAR: TIntegerField;
    C_ParcelasCOMPRA: TIntegerField;
    C_ParcelasFORNECEDOR: TIntegerField;
    C_ParcelasFALTAPAGAR: TBCDField;
    C_ChequeslkContaBanco: TStringField;
    C_FornecedoresCPF_CNPJ: TStringField;
    C_FornecedoresINSCRICAO_EST: TStringField;
    C_FornecedoresBAIRRO: TStringField;
    C_FornecedoresEMPRESA: TIntegerField;
    C_FornecedoresMUNICIPIO: TIntegerField;
    C_FornecedoresNRO: TStringField;
    C_FornecedoresPAIS: TIntegerField;
    procedure C_FornecedoresNewRecord(DataSet: TDataSet);
    procedure C_FornecedoresNOMEChange(Sender: TField);
    procedure C_ParcelasNewRecord(DataSet: TDataSet);
    procedure C_ParcelasAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_FornecedoresBeforePost(DataSet: TDataSet);
    procedure C_ParcelasVENCIMENTOChange(Sender: TField);
    procedure C_ParcelasNOTAFISCALChange(Sender: TField);
    procedure C_ParcelasBeforePost(DataSet: TDataSet);
    procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure C_ChequesVENCIMENTOChange(Sender: TField);
    procedure C_ParcelasFORNECEDORChange(Sender: TField);
    procedure C_FornecedoresCODIGOValidate(Sender: TField);
    procedure C_ChequesCONTAPAGARValidate(Sender: TField);
  private
    nIDGerador,nContaAP,nContaBB,nContaCreditoVale,nContaDespesa,nContaCR: integer;
  public
    dData: TDateTime;
    bImportando: boolean;
    procedure CloseDatasets;
    procedure ContabilizaCreditos(nID:integer);
    procedure ContabilizaParcelas(nID:integer);
    function LocalizaFornecedor(sCodigo:string;var sNome:string;nTipoFav:integer):integer;
    function LocalizaConta(sCodigo:string):integer;
    function LocalizaContaBanco:integer;
    function LocalizaTitulo(sTitulo:string):boolean;
    function ContabilizaContaAPagar(IDTitulo:integer):boolean;
    function ContabilizaPagamento(IDRetirada:integer):boolean;
  end;

var
  DMBBFornecedores: TDMBBFornecedores;

implementation
uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TDMBBFornecedores.C_FornecedoresNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_FornecedoresID.value := nIDGerador;
  C_FornecedoresFavorecido.value := nIDGerador;
  C_FornecedoresDataCadastro.value := DMProjeto.dDataSistema;
  C_FornecedoresDesativado.value := 'N';
  C_FornecedoresTIPOFAVORECIDO.Value := 2;
  C_FornecedoresTAXAVEL.Value := 'N';
  C_FornecedoresEXIGIVEL1099.Value := 'N';
  C_FornecedoresLOGOTIPO.Value := '';
  C_FornecedoresLIMITECREDITO.Value := 0;
  C_FornecedoresSituacao.Value := 'N';
  C_FornecedoresCidade.value := DMProjeto.sCidadeEmpresa;
  C_FornecedoresUF.value := DMProjeto.sUFEmpresa;
  C_FornecedoresConta.value := nContaAP;
  C_FornecedoresEmpresa.Value := -1;
end;

procedure TDMBBFornecedores.C_FornecedoresNOMEChange(Sender: TField);
begin
  C_FornecedoresRazao.value := C_FornecedoresNome.value;
end;

procedure TDMBBFornecedores.ContabilizaCreditos;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := nContaBB;
  nContaCredito := nContaCreditoVale;

  DMProjeto.Contabiliza(26,dData,nID,nID,
  nContaDebito,nContaCredito,C_FornecedoresCredito.value,C_FornecedoresCodigo.value,'Crédito do Business do Begin Balance');
end;

procedure TDMBBFornecedores.ContabilizaParcelas;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := C_ContasOperacaoConta.value;
  nContaCredito := C_ParcelasContaPagar.value;

  DMProjeto.Contabiliza(31,dData,nID,C_ParcelasFornecedor.value,
  nContaDebito,nContaCredito,C_ParcelasValor.value,C_ParcelasTitulo.value,'Begin Balance');
end;

procedure TDMBBFornecedores.C_ParcelasNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ParcelasID.Value 					      	:= nIDGerador;
  C_ParcelasIDNovo.Value 			      	:= nIDGerador;
  C_ParcelasParcela.Value 						:= 1;
  C_ParcelasNotaFiscal.Value					:= '';
  C_ParcelasTitulo.Value							:= '';
  C_ParcelasCompetencia.Value 				:= dData;
  C_ParcelasStatus.Value 							:= 1;
  C_ParcelasVencimento.Value 					:= DMProjeto.dDataSistema;
	C_ParcelasFaltaPagar.Value  		  	:= 0;
	C_ParcelasCreditoGerado.Value				:= 0;
  C_ParcelasValorPago.Value 					:= 0;
  C_ParcelasValorDescAntecipado.Value := 0;
  C_ParcelasDescontos.Value 					:= 0;
  C_ParcelasCreditoUtilizado.Value 		:= 0;
  C_ParcelasJurosPlano.Value					:= 0;

  {FuncLogin}
  if DMProjeto.nFuncionario > 0 then
    C_ParcelasUsuario.Value := DMProjeto.nFuncionario;

  C_ParcelasDescontos.Value      := 0;
  C_ParcelasValor.Value 			   := 0;
  C_ParcelasContaPagar.value     := nContaAP;
  C_ParcelasContaDespesa.value   := nContaDespesa;
end;

procedure TDMBBFornecedores.C_ParcelasAfterOpen(DataSet: TDataSet);
begin
  if not C_ContasOperacao.Active then
    C_ContasOperacao.open;
end;

procedure TDMBBFornecedores.DataModuleCreate(Sender: TObject);
begin
  nIDGerador := -1000;
  nContaAP      := DMProjeto.ContaPadrao(10);
  nContaBB      := DMProjeto.ContaPadrao(5);
  nContaCreditoVale := DMProjeto.ContaPadrao(13);
  nContaDespesa := DMProjeto.ContaPadrao(25);
  nContaCR      := DMProjeto.ContaPadrao(17);
  if nContaCR = 0 then
    nContaCR := nContaAP;
end;

procedure TDMBBFornecedores.CloseDatasets;
var i: integer;
begin
  for i := 0 to ComponentCount-1 do begin
    if (Components[i] is TClientDataSet) and (TClientDataSet(Components[i]).Active) then begin
      TClientDataSet(Components[i]).close;
      TClientDataSet(Components[i]).enablecontrols;
    end
    else if (Components[i] is TIBQuery) and (TIBQuery(Components[i]).Active) then begin
      TIBQuery(Components[i]).close;
      TIBQuery(Components[i]).enablecontrols;
    end;
  end;
end;

procedure TDMBBFornecedores.C_FornecedoresBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (trim(C_FornecedoresCodigo.value) = '') or (trim(C_FornecedoresNome.value) = '') or
    (C_FornecedoresUF.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBFornecedores.C_ParcelasVENCIMENTOChange(Sender: TField);
begin
 	C_ParcelasDataAtrasado.Value := DMProjeto.PrimeiroDiaUtil( C_ParcelasVencimento.Value, false, true );
  if C_ParcelasStatus.Value < 50 then
  	C_ParcelasStatus.Value := DMFinanceiro.SetStatus( C_ParcelasVencimento.Value );
end;

procedure TDMBBFornecedores.C_ParcelasNOTAFISCALChange(Sender: TField);
begin
  if (C_ParcelasNotaFiscal.Value <> '') then
    C_ParcelasTitulo.Value := AdicionarStr(C_ParcelasNotaFiscal.Value,'0',6)+'-'+C_ParcelasParcela.AsString;
end;

function TDMBBFornecedores.LocalizaFornecedor;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select favorecido,nome from favorecidos where codigo = :codigo ';//and tipofavorecido = :nTipoFav';
  Q_Aux.params[0].asstring  := sCodigo;
  //Q_Aux.params[1].asinteger := nTipoFav;
  Q_Aux.open;
  sNome := Q_Aux.FieldByName('nome').asstring;
  result := Q_Aux.FieldByName('favorecido').asinteger;
end;

function TDMBBFornecedores.LocalizaConta;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select CONTA from contas where conta = :codigo';
  Q_Aux.params[0].asinteger := strtoint(sCodigo);
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

function TDMBBFornecedores.LocalizaContaBanco;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select CONTA from contas where tipoconta = 2 and desativado = ''N''';
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

function TDMBBFornecedores.LocalizaTitulo;
begin
  Q_Aux.close;
  Q_Aux.SQL.text := 'select titulo from duplicatasapagar where titulo = :titulo';
  Q_Aux.params[0].asstring := sTitulo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('titulo').asstring <> '';
end;

procedure TDMBBFornecedores.C_ParcelasBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (trim(C_ParcelasTitulo.value) = '') or
    (C_ParcelasValor.value <= 0) or (C_ParcelasVencimento.IsNull) or (C_ParcelasFornecedor.IsNull) or (C_ParcelasContaPagar.IsNull) or (C_ParcelasContaDespesa.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBFornecedores.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ContasOperacaoContaOperacao.value := nIDGerador;
  C_ContasOperacaoOrigem.value := 30;
end;

procedure TDMBBFornecedores.C_ChequesNewRecord(DataSet: TDataSet);
var nIDConta: integer;
begin
  nIDGerador := nIDGerador - 1;
  C_ChequesID.Value 				 	:= nIDGerador;
  C_ChequesRetirada.Value  	 	:= nIDGerador;
  C_ChequesIDDoc.Value    	 	:= nIDGerador;
  C_ChequesData.Value 			 	:= dData;
  C_ChequesValor.Value 			 	:= 0;
  C_ChequesContaDespesa.value := nContaDespesa;
  nIDConta := LocalizaContaBanco;
  if nIDConta > 0 then
    C_ChequesContaPagar.value := nIDConta;
end;

procedure TDMBBFornecedores.C_ChequesBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (C_ChequesFavorecido.IsNull) or (C_ChequesNumCheque.value = 0) or
    (C_ChequesValor.value <= 0) or (C_ChequesVencimento.IsNull) or (C_ChequesContaPagar.IsNull) or (C_ChequesContaDespesa.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;

end;

function TDMBBFornecedores.ContabilizaContaAPagar(IDTitulo:integer):boolean;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := C_ChequesContaDespesa.value;
  nContaCredito := nContaAP;

  DMProjeto.Contabiliza(31,dData,IDTitulo,C_ChequesFavorecido.value,
  nContaDebito,nContaCredito,C_ChequesValor.value,C_ChequesNotaFiscal.value,'Begin Balance');
end;

function TDMBBFornecedores.ContabilizaPagamento(IDRetirada:integer):boolean;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := nContaAP;
  nContaCredito := C_ChequesContaPagar.value;

  DMProjeto.Contabiliza(4,dData,IDRetirada,C_ChequesFavorecido.value,
  nContaDebito,nContaCredito,C_ChequesValor.value,C_ChequesNotaFiscal.value,'Begin Balance');
end;

procedure TDMBBFornecedores.C_ChequesVENCIMENTOChange(Sender: TField);
begin
{  C_ChequesContaPagar.Value := DMFinanceiro.getContaPagar(0,C_ChequesData.value,C_ChequesVencimento.Value);
  if C_ChequesContaPagar.Value = 0 then
    C_ChequesContaPagar.Value := 1; }
end;

procedure TDMBBFornecedores.C_ParcelasFORNECEDORChange(Sender: TField);
begin
  if not bImportando then
    C_ParcelasContaPagar.AsVariant := DMProjeto.C_LocalizarFav.FieldByName('conta').Value;
  if C_ParcelasContaPagar.IsNull then
    C_ParcelasContaPagar.value := nContaAP;
end;

procedure TDMBBFornecedores.C_FornecedoresCODIGOValidate(Sender: TField);
begin
  if bImportando then
    exit;
  if DMProjeto.VerificaExistenciaFav(2,C_FornecedoresFavorecido.value,'C',C_FornecedoresCODIGO.value) then begin
    DlgMsg.ShowMsg(5001,['Fornecedor']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMBBFornecedores.C_ChequesCONTAPAGARValidate(Sender: TField);
begin
  if C_ChequesCONTAPAGAR.value > 0 then begin
    C_Contas.locate('conta',C_ChequesCONTAPAGAR.value,[]);
    if C_ContasTipoConta.value <> 2 then begin
      DlgMsg.ShowMsg(6018);
      raise Exception.Create('@@');
    end;
  end;
end;

end.
