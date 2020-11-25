unit DM_Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider, Variants, ppCtrls, ppPrnabl, ppClass,
  ppBands, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppStrtch, ppRegion, Psock, NMFtp;

type
  TDMEmpresa = class(TDMManutencao)
    Q_TiposBusiness: TIBQuery;
    C_TabelacmbTipoBusiness: TStringField;
    C_TiposBusiness: TClientDataSet;
    Q_TiposBusinessProvider: TDataSetProvider;
    C_TiposBusinessDESCRICAO: TStringField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaCAIXAPOSTAL: TStringField;
    C_TabelaPAIS: TIntegerField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    C_TabelaFAX: TStringField;
    C_TabelaCELULAR: TStringField;
    C_TabelaCONTATO: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaTIPOATIVIDADE: TIntegerField;
    C_TabelaEIN: TStringField;
    C_TabelaSSN: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaTIPOENTREGA: TIntegerField;
    C_TabelaDATACADASTRO: TDateField;
    C_TabelaSITE: TStringField;
    C_TabelaOBS: TStringField;
    C_TabelaIMPORTACAO: TIntegerField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaLOGOTIPO: TStringField;
    C_TiposBusinessTIPOBUSINESS: TIntegerField;
    C_UF: TClientDataSet;
    P_UF: TDataSetProvider;
    Q_UF: TIBQuery;
    C_UFUF: TStringField;
    C_UFDESCRICAO: TStringField;
    C_TabelaDescUF: TStringField;
    Q_UFDS: TDataSource;
    C_TiposBusinessDS: TDataSource;
    C_Empresas: TClientDataSet;
    Q_Empresas: TIBQuery;
    U_Empresas: TIBUpdateSQL;
    C_TabelaCPF_CNPJ: TStringField;
    C_TabelaINSCRICAO_EST: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaQ_Empresas: TDataSetField;
    C_TabelaTIPOEMPRESA: TStringField;
    C_TabelaINSCRICAO_MUN: TStringField;
    P_Empresas: TDataSetProvider;
    ppDBC_TabelaDS: TppDBPipeline;
    ppDBC_EmpresasDS: TppDBPipeline;
    ppRegistro: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    regCab: TppRegion;
    ppLabel24: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    C_EmpresasFAVORECIDO: TIntegerField;
    C_EmpresasNUMERO: TStringField;
    C_EmpresasCOMPLEMENTO: TStringField;
    C_EmpresasDATAINICIO: TDateField;
    C_EmpresasCPF_CNPJ_CONTADOR: TStringField;
    C_EmpresasCRC_CONTADOR: TStringField;
    C_EmpresasNOME_CONTADOR: TStringField;
    C_EmpresasFONE_CONTADOR: TStringField;
    C_EmpresasEMAIL_CONTADOR: TStringField;
    C_EmpresasCAE: TStringField;
    C_EmpresasCONTRIBIPI: TStringField;
    C_EmpresasSUBSTITUTOTRIB: TStringField;
    C_EmpresasNOME_RESPONSAVEL: TStringField;
    C_EmpresasFONE_RESPONSAVEL: TStringField;
    C_EmpresasEMAIL_RESPONSAVEL: TStringField;
    C_EmpresasCPF_RESPONSAVEL: TStringField;
    C_EmpresasENDERECO_RESPONSAVEL: TStringField;
    C_EmpresasCIDADE_RESPONSAVEL: TStringField;
    C_EmpresasUF_RESPONSAVEL: TStringField;
    C_EmpresasCEP_RESPONSAVEL: TStringField;
    C_EmpresasBAIRRO_RESPONSAVEL: TStringField;
    C_EmpresasREVENDA: TStringField;
    C_EmpresasDs: TDataSource;
    ppShape4: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel33: TppLabel;
    C_EmpresasINSCRICAO_EST_SUB: TStringField;
    Q_CNAES: TIBQuery;
    P_CNAES: TDataSetProvider;
    C_CNAES: TClientDataSet;
    C_CNAESDs: TDataSource;
    C_EmpresaslkpCNAE: TStringField;
    Q_Municipios: TIBQuery;
    P_Municipios: TDataSetProvider;
    C_Municipios: TClientDataSet;
    C_MunicipiosDs: TDataSource;
    C_MunicipiosMUNICIPIO: TIntegerField;
    C_MunicipiosCODUF: TIntegerField;
    C_MunicipiosDESCRICAO: TStringField;
    C_TabelaMUNICIPIO: TIntegerField;
    C_TabelalkpMunicipio: TStringField;
    C_CNAESCNAE: TIntegerField;
    C_CNAESDESCRICAO: TStringField;
    C_EmpresasCNAE: TIntegerField;
    C_EmpresasCODIGODAREVENDA: TStringField;
    Q_Municipio_ContadorIBGE: TIBQuery;
    P_Municipio_ContadorIBGE: TDataSetProvider;
    C_Municipio_ContadorIBGE: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    C_Municipio_ContadorIBGEDS: TDataSource;
    C_EmpresasMUN_IBGE_CONTADOR: TIntegerField;
    C_EmpresaslkpContadorIBGE: TStringField;
    C_TabelaPESSOA_FJ: TStringField;
    C_TabelaNRO: TStringField;
    C_EmpresasALIQCREDITOSN: TBCDField;
    C_EmpresasESTACOES: TIntegerField;
    C_EmpresasCSC: TStringField;
    C_EmpresasFLEXDOCS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_EmpresasNewRecord(DataSet: TDataSet);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure C_TabelaCPF_CNPJValidate(Sender: TField);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure imprimir;
    procedure GerarRegistro;
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure ppLabel33GetText(Sender: TObject; var Text: String);
  private

    function GetFoto : string;
    procedure SetFoto(F:String);

  public
    function PodeFechar: Boolean;
    function VerificaPrimeiraVez: Boolean;
    property Foto:String
      read  GetFoto
      write SetFoto;
  end;

var
  DMEmpresa: TDMEmpresa;

implementation
  uses DM_Projeto, funcoes, TDM_PadraoManutencao;

{$R *.DFM}

function TDMEmpresa.GetFoto : string;
begin
  result := C_Tabela['Logotipo'].asString;
end;

procedure TDMEmpresa.SetFoto(F:String);
begin
  if not (C_Tabela.State in [dsInsert,dsEdit]) then
    C_Tabela.Edit;

  if F <> '' then
    C_Tabela['Logotipo'] := F
  else begin
    C_Tabela['Logotipo'] := null;
    C_Tabela['IDLogotipo'] := null;
  end;
end;

procedure TDMEmpresa.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMEmpresa := self;
end;

procedure TDMEmpresa.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaFavorecido.value := -1;
  C_TabelaTipoFavorecido.value := -1;
  C_TabelaUF.value := 'PB';
  C_TabelaCidade.value := 'João Pessoa';
  C_TabelaTipoEmpresa.Value := 'P';
  C_TabelaMUNICIPIO.Value := 2507507;
  C_TabelaPESSOA_FJ.Value := 'J';
  C_TabelaNRO.Value := 'SN';
end;

procedure TDMEmpresa.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_TabelaDataCadastro.IsNull then
     C_TabelaDataCadastro.Value := Date;
     C_TabelaNRO.Value := C_EmpresasNUMERO.AsString;
end;

procedure TDMEmpresa.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  if DMEmpresa.C_Empresas.Active {and (DMEmpresa.C_EmpresasFavorecido.value = 0)} then
    DMEmpresa.C_Empresas.append;
end;


procedure TDMEmpresa.C_EmpresasNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_EmpresasFAVORECIDO.VALUE :=  -1;
  C_TabelaUF.value := 'PB';
  C_TabelaCidade.value := 'João Pessoa';
  C_EmpresasContribIPI.value := 'N';
  C_EmpresasSubstitutoTrib.value := 'N';
  C_EmpresasRevenda.Value := '0001';
  C_EmpresasEstacoes.Value := 5;
end;


procedure TDMEmpresa.C_TabelaCPF_CNPJValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsVariant = null) or (Sender.AsString = '') then
    exit;
  CPF_CGCValido(AllTrim(Sender.Text));
end;

procedure TDMEmpresa.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
  If C_Tabela.state in [dsEdit,dsInsert] Then
  C_Tabela.ApplyUpdates(0);
  If C_Empresas.State in [dsEdit,dsInsert] Then
    C_Empresas.Post;
  C_Empresas.ApplyUpdates(0);
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
end;

procedure TDMEmpresa.GerarRegistro;
Var
  Arq: TextFile;
Begin
  try
    SaveDialog.FileName := 'R_'+C_TabelaCPF_CNPJ.AsString+'.TXT';
    if SaveDialog.Execute Then Begin
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq,SaveDialog.FileName);
      Writeln(Arq,'RAZAO='+LowerCase(Funcoes.RetiraAcentos(C_TabelaRazao.AsString)));
      Writeln(Arq,'NOME='+C_TabelaNome.AsString);
      Writeln(Arq,'CPF_CNPJ='+C_TabelaCPF_CNPJ.AsString);
      Writeln(Arq,'INSCRICAO_EST='+C_TabelaINSCRICAO_EST.AsString);
      Writeln(Arq,'INSCRICAO_MUN='+C_TabelaINSCRICAO_MUN.AsString);
      Writeln(Arq,'ENDERECO='+C_TabelaENDERECO.AsString);
      Writeln(Arq,'COMPLEMENTO='+C_EmpresasCOMPLEMENTO.AsString);
      Writeln(Arq,'BAIRRO='+C_TabelaBAIRRO.AsString);
      Writeln(Arq,'CIDADE='+C_TabelaCIDADE.AsString);
      Writeln(Arq,'UF='+C_TabelaUF.AsString);
      Writeln(Arq,'CEP='+C_TabelaCEP.AsString);
      Writeln(Arq,'FONE1='+C_TabelaFONE1.AsString);
      Writeln(Arq,'EMAIL='+C_TabelaEMAIL.AsString);
      Writeln(Arq,'CPF_CNPJ_CONTADOR='+C_EmpresasCPF_CNPJ_CONTADOR.AsString);
      Writeln(Arq,'CRC_CONTADOR='+C_EmpresasCRC_CONTADOR.AsString);
      Writeln(Arq,'NOME_CONTADOR='+C_EmpresasNOME_CONTADOR.AsString);
      Writeln(Arq,'FONE_CONTADOR='+C_EmpresasFONE_CONTADOR.AsString);
      Writeln(Arq,'EMAIL_CONTADOR='+C_EmpresasEMAIL_CONTADOR.AsString);
      Writeln(Arq,'NOME_RESPONSAVEL='+C_EmpresasNOME_RESPONSAVEL.AsString);
      Writeln(Arq,'FONE_RESPONSAVEL='+C_EmpresasFONE_RESPONSAVEL.AsString);
      Writeln(Arq,'EMAIL_RESPONSAVEL='+C_EmpresasEMAIL_RESPONSAVEL.AsString);
      Writeln(Arq,'CPF_RESPONSAVEL='+C_EmpresasCPF_RESPONSAVEL.AsString);
      Writeln(Arq,'ENDERECO_RESPONSAVEL='+C_EmpresasENDERECO_RESPONSAVEL.AsString);
      Writeln(Arq,'BAIRRO_RESPONSAVEL='+C_EmpresasBAIRRO_RESPONSAVEL.AsString);
      Writeln(Arq,'CIDADE_RESPONSAVEL='+C_EmpresasCIDADE_RESPONSAVEL.AsString);
      Writeln(Arq,'UF_RESPONSAVEL='+C_EmpresasUF_RESPONSAVEL.AsString);
      Writeln(Arq,'CEP_RESPONSAVEL='+C_EmpresasCEP_RESPONSAVEL.AsString);
      Writeln(Arq,'ESTACOES='+C_EmpresasESTACOES.AsString);
      Writeln(Arq,'REVENDA='+C_EmpresasREVENDA.AsString);
      Writeln(Arq,'VERSAOSISTEMA='+DMProjeto.Parametro('VersaoSistema'));
      CloseFile(Arq);
      ShowMessage('Arquivo Gerado com Sucesso!' );
    End;
  except
   on e:Exception do
      ShowMessage(' Erro: '+e.message);
  End;
End;

function TDMEmpresa.VerificaPrimeiraVez;
Begin
 Result := True;
 with DMProjeto.Q_Validacao do begin
    Close;
    Sql.Text := ' SELECT C.dataexpira, C.HoraExpira,  c.chave, c.estacaochave, C.ESTACOES '+
                ' FROM  estacoeschave c ';
    Open;
    If RecordCount > 0 Then
      Result := False;
    Close;
 End;
End;


function TDMEmpresa.PodeFechar;
Begin
   Result := True;
   if ((C_TabelaRazao.IsNull) Or
      (C_TabelaNome.IsNull) Or
      (C_TabelaCPF_CNPJ.IsNull) Or
      (C_TabelaINSCRICAO_EST.IsNull) Or
      (C_TabelaINSCRICAO_MUN.IsNull) Or
      (C_TabelaENDERECO.IsNull) Or
      (C_EmpresasCOMPLEMENTO.IsNull) Or
      (C_TabelaBAIRRO.IsNull) Or
      (C_TabelaCIDADE.IsNull) Or
      (C_TabelaUF.IsNull) Or
      (C_TabelaCEP.IsNull) Or
      (C_TabelaFONE1.IsNull) Or
      (C_TabelaEMAIL.IsNull) Or
      (C_EmpresasCPF_CNPJ_CONTADOR.IsNull) Or
      (C_EmpresasCRC_CONTADOR.IsNull) Or
      (C_EmpresasNOME_CONTADOR.IsNull) Or
      (C_EmpresasFONE_CONTADOR.IsNull) Or
      (C_EmpresasEMAIL_CONTADOR.IsNull) Or
      (C_EmpresasCAE.IsNull) Or
      (C_EmpresasNOME_RESPONSAVEL.IsNull) Or
      (C_EmpresasFONE_RESPONSAVEL.IsNull) Or
      (C_EmpresasEMAIL_RESPONSAVEL.IsNull) Or
      (C_EmpresasCPF_RESPONSAVEL.IsNull) Or
      (C_EmpresasENDERECO_RESPONSAVEL.IsNull) Or
      (C_EmpresasBAIRRO_RESPONSAVEL.IsNull) Or
      (C_EmpresasCIDADE_RESPONSAVEL.IsNull) Or
      (C_EmpresasUF_RESPONSAVEL.IsNull) Or
      (C_EmpresasCEP_RESPONSAVEL.IsNull) Or
      (C_EmpresasESTACOES.IsNull) Or
      (C_EmpresasREVENDA.IsNull)) Then
      Result := False;

End;
        //teste git
procedure TDMEmpresa.imprimir;
Begin
  DMProjeto.ImprimirCabecalho( regCab );
  ppRegistro.Print;

End;

procedure TDMEmpresa.ppDBText1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := LowerCase(Funcoes.RetiraAcentos(Text));
end;

procedure TDMEmpresa.ppLabel33GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMProjeto.Parametro('VersaoSistema');
end;

end.
