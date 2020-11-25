unit DM_BBClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DlgMsg, Db, DBClient, Provider, IBCustomDataSet, IBQuery, IBUpdateSQL, Variants;


type
  TDMBBClientes = class(TDataModule)
    U_Clientes: TIBUpdateSQL;
    Q_Clientes: TIBQuery;
    P_Clientes: TDataSetProvider;
    C_ClientesDS: TDataSource;
    C_Clientes: TClientDataSet;
    Q_Aux: TIBQuery;
    DlgMsg: TDlgMsg;
    C_ClientesFAVORECIDO: TIntegerField;
    C_ClientesCODIGO: TStringField;
    C_ClientesNOME: TStringField;
    C_ClientesRAZAO: TStringField;
    C_ClientesENDERECO: TStringField;
    C_ClientesCIDADE: TStringField;
    C_ClientesUF: TStringField;
    C_ClientesCEP: TStringField;
    C_ClientesFONE1: TStringField;
    C_ClientesFONE2: TStringField;
    C_ClientesFAX: TStringField;
    C_ClientesCELULAR: TStringField;
    C_ClientesEMAIL: TStringField;
    C_ClientesTIPOFAVORECIDO: TIntegerField;
    C_ClientesTAXAVEL: TStringField;
    C_ClientesEIN: TStringField;
    C_ClientesSSN: TStringField;
    C_ClientesDESATIVADO: TStringField;
    C_ClientesEXIGIVEL1099: TStringField;
    C_ClientesDATACADASTRO: TDateField;
    C_ClientesSITE: TStringField;
    C_ClientesSITUACAO: TStringField;
    C_ClientesCONTA: TIntegerField;
    C_ClientesDATANASC: TDateField;
    Q_UFS: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    C_ClienteslkUF: TStringField;
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
    C_ClienteslkConta: TStringField;
    C_ClientesLIMITECREDITO: TBCDField;
    C_ClientesLOGOTIPO: TStringField;
    C_ClientesCREDITOOLD: TBCDField;
    C_ClientesID: TIntegerField;
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
    C_ParcelasVENDA: TIntegerField;
    C_ParcelasCLIENTE: TIntegerField;
    C_ParcelasNUMBOLETO: TStringField;
    C_ParcelasBANCO: TIntegerField;
    C_ParcelasNOTAFISCAL: TStringField;
    C_ParcelasSTATUS: TIntegerField;
    C_ParcelasVENDEDOR: TIntegerField;
    C_ParcelasDATAANTECIPACAO: TDateField;
    C_ParcelasVALORDESCANTECIPADO: TBCDField;
    C_ParcelasPERCENTUALMULTA: TBCDField;
    C_ParcelasPERCENTUALMORA: TBCDField;
    C_ParcelasJUROSPLANO: TBCDField;
    C_ParcelasUSUARIO: TIntegerField;
    C_ParcelasIDCOMISSAO: TIntegerField;
    C_ParcelasDESCONTOS: TBCDField;
    C_ParcelasJUROSRECEBIDOS: TBCDField;
    C_ParcelasDATAATRASADO: TDateField;
    C_ParcelasVALORJUROSMORA: TBCDField;
    C_ParcelasVALORMULTA: TBCDField;
    C_ParcelasCREDITOUTILIZADO: TBCDField;
    C_ParcelasDATACANCELAMENTO: TDateField;
    C_ParcelasFUNCCANCELAMENTO: TIntegerField;
    C_ParcelasOPENBALANCE: TStringField;
    C_ParcelasCREDITOGERADO: TBCDField;
    C_ParcelasFALTARECEBER: TBCDField;
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
    C_ClientesCREDITO: TBCDField;
    C_ParcelasIDNovo: TIntegerField;
    C_ParcelasVALOROLD: TBCDField;
    C_ParcelasCONTARECEITA: TIntegerField;
    C_ParcelasContaLookup: TStringField;
    C_Cheques: TClientDataSet;
    P_Cheques: TDataSetProvider;
    C_ChequesDS: TDataSource;
    Q_Cheques: TIBQuery;
    C_ChequesNOTAFISCAL: TStringField;
    C_ChequesVALOR: TBCDField;
    C_ChequesBANCO: TIntegerField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesFAVORECIDO: TIntegerField;
    C_ChequesNOME: TStringField;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesTITULARCHEQUE: TStringField;
    C_ChequesCONTARECEBER: TIntegerField;
    C_ChequesCONTA: TIntegerField;
    C_ChequesCONTARECEITA: TIntegerField;
    C_ChequeslkContaReceita: TStringField;
    C_ChequeslkContaAReceber: TStringField;
    Q_Bancos: TIBQuery;
    P_Bancos: TDataSetProvider;
    C_Bancos: TClientDataSet;
    C_BancosFAVORECIDO: TIntegerField;
    C_BancosNOME: TStringField;
    C_ChequeslkBanco: TStringField;
    C_ChequesID: TIntegerField;
    C_ChequesDATA: TDateField;
    C_ChequesVALOROLD: TBCDField;
    C_ParcelasCONTARECEBER: TIntegerField;
    C_ParcelaslkContaReceber: TStringField;
    C_ChequesDEPOSITO: TIntegerField;
    C_ChequesIDDOC: TIntegerField;
    C_ClientesCAMPO01: TStringField;
    C_ClientesCAMPO02: TStringField;
    C_ClientesCAMPO03: TStringField;
    C_ClientesCAMPO04: TStringField;
    C_ClientesCAMPO05: TStringField;
    C_ClientesCAMPO06: TStringField;
    C_ClientesCAMPO07: TStringField;
    C_ClientesCAMPO08: TStringField;
    C_ClientesCAMPO09: TStringField;
    C_ClientesCAMPO10: TStringField;
    C_ClientesCAIXAPOSTAL: TStringField;
    C_ParcelasQ_ContasOperacao: TDataSetField;
    C_ClientesVENDEDOR: TIntegerField;
    Q_Vendedor: TIBQuery;
    P_Vendedor: TDataSetProvider;
    C_Vendedor: TClientDataSet;
    C_VendedorFAVORECIDO: TIntegerField;
    C_VendedorNOME: TStringField;
    C_ClienteslkVendedor: TStringField;
    C_ClientesCPF_CNPJ: TStringField;
    C_ClientesINSCRICAO_EST: TStringField;
    C_ClientesBAIRRO: TStringField;
    C_ClientesTABELAPRECO: TIntegerField;
    C_ParcelasTIPOCOBRANCA: TIntegerField;
    C_ClientesEMPRESA: TIntegerField;
    C_ParcelasEMPRESA: TIntegerField;
    C_ParcelasPDV: TIntegerField;
    C_ChequesEMPRESA: TIntegerField;
    C_ChequesPDV: TIntegerField;
    C_ContasOperacaoEMPRESA: TIntegerField;
    C_ContasOperacaoPDV: TIntegerField;
    C_ClientesPAIS: TIntegerField;
    C_ClientesMUNICIPIO: TIntegerField;
    C_ClientesNRO: TStringField;
    procedure C_ClientesNewRecord(DataSet: TDataSet);
    procedure C_ClientesNOMEChange(Sender: TField);
    procedure C_ParcelasNewRecord(DataSet: TDataSet);
    procedure C_ParcelasAfterOpen(DataSet: TDataSet);
    procedure C_ParcelasCLIENTEChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ClientesBeforePost(DataSet: TDataSet);
    procedure C_ParcelasVENCIMENTOChange(Sender: TField);
    procedure C_ParcelasNOTAFISCALChange(Sender: TField);
    procedure C_ParcelasBeforePost(DataSet: TDataSet);
    procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure C_ChequesVENCIMENTOChange(Sender: TField);
    procedure C_ClientesCODIGOValidate(Sender: TField);
    procedure C_ChequesCONTARECEBERValidate(Sender: TField);
  private
    nIDGerador,nContaAR,nContaBB,nContaCreditoVale,nContaReceita,nContaCR: integer;
  public
    dData: TDateTime;
    bImportando: boolean;
    procedure CloseDatasets;
    procedure ContabilizaCreditos(nID:integer);
    procedure ContabilizaParcelas(nID:integer);
    function LocalizaVendedor(sCodigo:string):integer;
    function LocalizaCliente(sCodigo:string;var sNome:string):integer;
    function LocalizaTitulo(sTitulo:string):boolean;
    function LocalizaConta(sCodigo:string):integer;
    function ContabilizaContaAReceber(IDTitulo,nConta:integer):boolean;
    function ContabilizaRecebimento(IDDeposito:integer):boolean;
  end;

var
  DMBBClientes: TDMBBClientes;

implementation
uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

function TDMBBClientes.LocalizaConta;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select CONTA from contas where codigoreduzido = :codigo';
  Q_Aux.params[0].asstring := sCodigo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

procedure TDMBBClientes.C_ClientesNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ClientesID.value := nIDGerador;
  C_ClientesFavorecido.value := nIDGerador;
  C_ClientesDataCadastro.value := DMProjeto.dDataSistema;
  C_ClientesDesativado.value := 'N';
  C_ClientesTIPOFAVORECIDO.Value := 1;
  C_ClientesTAXAVEL.Value := 'N';
  C_ClientesEXIGIVEL1099.Value := 'N';
  C_ClientesLOGOTIPO.Value := '';
  C_ClientesLIMITECREDITO.Value := 0;
  C_ClientesSituacao.Value := 'N';
  C_ClientesCidade.value := DMProjeto.sCidadeEmpresa;
  C_ClientesUF.value := DMProjeto.sUFEmpresa;
  C_ClientesConta.value := nContaAR;
  C_ClientesEmpresa.Value := -1;
end;

procedure TDMBBClientes.C_ClientesNOMEChange(Sender: TField);
begin
  C_ClientesRazao.value := C_ClientesNome.value;
end;

procedure TDMBBClientes.ContabilizaCreditos;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := nContaBB;
  nContaCredito := nContaCreditoVale;

  DMProjeto.Contabiliza(32,dData,nID,nID,
  nContaDebito,nContaCredito,C_ClientesCredito.value,C_ClientesCodigo.value,'Crédito de Clientes do Begin Balance');
end;

procedure TDMBBClientes.ContabilizaParcelas;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := C_ParcelasContaReceber.value;
  nContaCredito := C_ContasOperacaoConta.value;

  DMProjeto.Contabiliza(30,dData,nID,C_ParcelasCliente.value,
  nContaDebito,nContaCredito,C_ParcelasValor.value,C_ParcelasTitulo.value,'Begin Balance');
end;

procedure TDMBBClientes.C_ParcelasNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ParcelasID.Value 					      := nIDGerador;
  C_ParcelasIDNovo.Value 			      	:= nIDGerador;
  C_ParcelasParcela.Value 						:= 1;
  C_ParcelasTipoCobranca.Value 		  	   := 1;
  C_ParcelasNotaFiscal.Value					:= '';
  C_ParcelasTitulo.Value						:= '';
  C_ParcelasCompetencia.Value 				:= dData;
  C_ParcelasStatus.Value 						:= 1;
  C_ParcelasVencimento.Value 					:= DMProjeto.dDataSistema;
  C_ParcelasFaltaReceber.Value  		    	:= 0;
  C_ParcelasCreditoGerado.Value				:= 0;
  C_ParcelasValorPago.Value 					:= 0;
  C_ParcelasValorDescAntecipado.Value     := 0;
  C_ParcelasDescontos.Value 					:= 0;
  C_ParcelasJurosRecebidos.Value 			:= 0;
  C_ParcelasValorJurosMora.Value 			:= 0;
  C_ParcelasValorMulta.Value 					:= 0;
  C_ParcelasCreditoUtilizado.Value 		   := 0;
  C_ParcelasJurosPlano.Value					:= 0;
  C_ParcelasEmpresa.Value                 := -1;
  C_ParcelasPDV.Value					      := 0;
  {FuncLogin}
  if DMProjeto.nFuncionario > 0 then
    C_ParcelasUsuario.Value := DMProjeto.nFuncionario;

  C_ParcelasPercentualMora.Value := 0;
//  if DMProjeto.Parametro('JurosMora') <> '' then
//    C_ParcelasPercentualMora.Value := StrToFloat(DMProjeto.Parametro('JurosMora'));
  C_ParcelasPercentualMulta.Value := 0;
//  if DMProjeto.Parametro('MultaAtraso') <> '' then
//    C_ParcelasPercentualMulta.Value := StrToFloat(DMProjeto.Parametro('MultaAtraso'));

  C_ParcelasJurosRecebidos.Value := 0;
  C_ParcelasDescontos.Value := 0;
  C_ParcelasValor.Value 							:= 0;
  C_ParcelasContaReceber.value := nContaAR;
  C_ParcelasContaReceita.value := nContaReceita;
end;

procedure TDMBBClientes.C_ParcelasAfterOpen(DataSet: TDataSet);
begin
  if not C_ContasOperacao.Active then
    C_ContasOperacao.open;
end;

procedure TDMBBClientes.C_ParcelasCLIENTEChange(Sender: TField);
begin
  if not bImportando then
    C_ParcelasContaReceber.AsVariant := DMProjeto.C_LocalizarFav.FieldByName('conta').Value;
  if C_ParcelasContaReceber.IsNull then
    C_ParcelasContaReceber.value := nContaAR;
end;

procedure TDMBBClientes.DataModuleCreate(Sender: TObject);
begin
  nIDGerador        := -1000;
  nContaAR          := DMProjeto.ContaPadrao(9);
  nContaBB          := DMProjeto.ContaPadrao(5);
  nContaCreditoVale := DMProjeto.ContaPadrao(13);
  nContaReceita     := DMProjeto.ContaPadrao(24);
  nContaCR          := DMProjeto.ContaPadrao(17);
  if nContaCR = 0 then
    nContaCR := nContaAR;
end;

procedure TDMBBClientes.CloseDatasets;
var i: integer;
begin
  for i := 0 to ComponentCount-1 do begin
    if (Components[i] is TClientDataSet) and (TClientDataSet(Components[i]).Active) then begin
      TClientDataSet(Components[i]).close;
      TClientDataSet(Components[i]).EnableControls;
    end
    else if (Components[i] is TIBQuery) and (TIBQuery(Components[i]).Active) then begin
      TIBQuery(Components[i]).close;
      TIBQuery(Components[i]).EnableControls;
    end
  end;
end;

procedure TDMBBClientes.C_ClientesBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (trim(C_ClientesCodigo.value) = '') or (trim(C_ClientesNome.value) = '') or
    (C_ClientesUF.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBClientes.C_ParcelasVENCIMENTOChange(Sender: TField);
begin
 	C_ParcelasDataAtrasado.Value := DMProjeto.PrimeiroDiaUtil( C_ParcelasVencimento.Value, false, true );
  if C_ParcelasStatus.Value < 50 then
  	C_ParcelasStatus.Value := DMFinanceiro.SetStatus( C_ParcelasVencimento.Value );
end;

procedure TDMBBClientes.C_ParcelasNOTAFISCALChange(Sender: TField);
begin
  if (C_ParcelasNotaFiscal.Value <> '') then
    C_ParcelasTitulo.Value := AdicionarStr(C_ParcelasNotaFiscal.Value,'0',6)+'-'+C_ParcelasParcela.AsString;
end;

function TDMBBClientes.LocalizaCliente;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select favorecido,nome from favorecidos where codigo = :codigo and tipofavorecido = 1' ;
  Q_Aux.params[0].asstring := adicionarstr(sCodigo,'0',6);
  Q_Aux.open;
  sNome := Q_Aux.FieldByName('nome').asstring;
  result := Q_Aux.FieldByName('favorecido').asinteger;
end;

function TDMBBClientes.LocalizaVendedor;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select favorecido from favorecidos where codigo = :codigo and tipofavorecido = 3 and isvendedor = ''S''';
  Q_Aux.params[0].asstring := sCodigo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('favorecido').asinteger;
end;

function TDMBBClientes.LocalizaTitulo;
begin
  Q_Aux.close;
  Q_Aux.SQL.text := 'select titulo from titulosareceber where titulo = :titulo';
  Q_Aux.params[0].asstring := sTitulo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('titulo').asstring <> '';
end;

procedure TDMBBClientes.C_ParcelasBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (trim(C_ParcelasTitulo.value) = '') or
    (C_ParcelasValor.value <= 0) or (C_ParcelasVencimento.IsNull) or (C_ParcelasCliente.IsNull) or (C_ParcelasContaReceber.IsNull) or (C_ParcelasContaReceita.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBClientes.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ContasOperacaoContaOperacao.value := nIDGerador;
  C_ContasOperacaoOrigem.value := 30;
  C_ContasOperacaoEmpresa.Value := -1;
  C_ContasOperacaoPDV.Value := 0;
end;

procedure TDMBBClientes.C_ChequesNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ChequesID.Value 				 	:= nIDGerador;
  C_ChequesDeposito.Value  	 	:= nIDGerador;
  C_ChequesIDDoc.Value    	 	:= nIDGerador;
  C_ChequesData.Value 			 	:= dData;
  C_ChequesValor.Value 			 	:= 0;
  C_ChequesContaReceita.value := nContaReceita;
  C_ChequesContaReceber.value := 1;
  C_ChequesEmpresa.Value := -1;
  C_ChequesPDV.Value := 0;
end;

procedure TDMBBClientes.C_ChequesBeforePost(DataSet: TDataSet);
begin
  if bImportando then
    exit;
  if (C_ChequesFavorecido.IsNull) or (C_ChequesNumCheque.value = 0) or
    (C_ChequesValor.value <= 0) or (C_ChequesVencimento.IsNull) or (C_ChequesContaReceber.IsNull) or (C_ChequesContaReceita.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;

end;

function TDMBBClientes.ContabilizaContaAReceber(IDTitulo,nConta:integer):boolean;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  if nConta = 0 then
    nContaDebito  := nContaAR
  else
    nContaDebito  := nConta;

  nContaCredito := C_ChequesContaReceita.value;

  DMProjeto.Contabiliza(30,dData,IDTitulo,C_ChequesFavorecido.value,
  nContaDebito,nContaCredito,C_ChequesValor.value,C_ChequesNotaFiscal.value,'Begin Balance');
end;

function TDMBBClientes.ContabilizaRecebimento(IDDeposito:integer):boolean;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  nContaDebito  := C_ChequesContaReceber.value;
  nContaCredito := 1;

  DMProjeto.Contabiliza(2,dData,IDDeposito,C_ChequesFavorecido.value,
  nContaDebito,nContaCredito,C_ChequesValor.value,C_ChequesNotaFiscal.value,'Begin Balance');
end;

procedure TDMBBClientes.C_ChequesVENCIMENTOChange(Sender: TField);
begin
{  C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0,C_ChequesData.value,C_ChequesVencimento.Value);
  if C_ChequesContaReceber.Value = 0 then
    C_ChequesContaReceber.Value := 1;}
end;

procedure TDMBBClientes.C_ClientesCODIGOValidate(Sender: TField);
begin
  if bImportando then
    exit;
  if DMProjeto.VerificaExistenciaFav(1,C_ClientesFavorecido.value,'C',C_ClientesCODIGO.value) then begin
    DlgMsg.ShowMsg(5001,['Cliente']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMBBClientes.C_ChequesCONTARECEBERValidate(Sender: TField);
begin
  if C_ChequesCONTARECEBER.value > 0 then begin
    C_Contas.locate('conta',C_ChequesCONTARECEBER.value,[]);
    if C_ContasTipoConta.value <> 1 then begin
      DlgMsg.ShowMsg(6018);
      raise Exception.Create('@@');
    end;
  end;
end;

{      for i := 0 to slCreditos.Count - 1 do begin
        DMFinanceiro.RegistrarCredito(StrToInt(slCreditos.Names[i]),StrToInt(slCreditos.Names[i]),32,true,0,StrToInt(slCreditos.values[slCreditos.Names[i]]),'begin balance');
        DMBBClientes.C_Clientes.locate('favorecido',StrToInt(slCreditos.Names[i]),[]);
        DMBBClientes.ContabilizaCreditos(StrToInt(slCreditos.Names[i]));
      end;}

end.
