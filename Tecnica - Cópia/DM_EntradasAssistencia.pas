unit DM_EntradasAssistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEntradasAssistencia = class(TDMManutencao)
    Q_ServicosDet: TIBQuery;
    U_ServicosDet: TIBUpdateSQL;
    P_ServicosDet: TDataSetProvider;
    C_ServicosDet: TClientDataSet;
    IntegerField1: TIntegerField;                                                                          
    C_ServicosDetDs: TDataSource;
    Q_TipoServico: TIBQuery;
    P_TipoServico: TDataSetProvider;
    C_TipoServico: TClientDataSet;
    IntegerField3: TIntegerField;
    C_TipoServicoDs: TDataSource;
    C_TipoServicoTIPOSERVICO: TIntegerField;
    C_TipoServicoDESCRICAO: TStringField;
    Q_StatusServico: TIBQuery;
    P_StatusServico: TDataSetProvider;
    C_StatusServico: TClientDataSet;
    IntegerField4: TIntegerField;
    C_StatusServicoDs: TDataSource;
    C_StatusServicoSTATUSSERVICO: TIntegerField;
    C_StatusServicoDESCRICAO: TStringField;
    C_TabelalkpStatus: TStringField;
    C_TabelalkpTipoServico: TStringField;
    C_TabelaSERVICO: TIntegerField;
    C_TabelaOSNUMERO: TStringField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaDATAENTRADA: TDateField;
    C_TabelaHORAENTRADA: TTimeField;
    C_TabelaEQUIPAMENTO: TIntegerField;
    C_TabelaPARTESAGRAGADAS: TStringField;
    C_TabelaDEFEITOALEGADO: TStringField;
    C_TabelaDEFEITOENCONTRADO: TStringField;
    C_TabelaOBSERVACAO: TStringField;
    C_TabelaDATASAIDA: TDateField;
    C_TabelaHORASAIDA: TTimeField;
    C_TabelaFUNCENTRADA: TIntegerField;
    C_TabelaTECNICO: TIntegerField;
    C_TabelaFUNCSAIDA: TIntegerField;
    C_TabelaSTATUSSERVICO: TIntegerField;
    C_TabelaLOCALIZACAO: TIntegerField;
    C_TabelaTIPOSERVICO: TIntegerField;
    C_TabelaNUMEROSERIE: TStringField;
    C_TabelaMODELO: TIntegerField;
    C_TabelaCARACTERISTICA: TStringField;
    C_TabelaNOME: TStringField;
    C_ServicosDetDESCRICAOITEM: TStringField;
    C_ServicosDetITEM: TIntegerField;
    C_ServicosDetQUANTIDADE: TBCDField;
    C_ServicosDetSERVICO: TIntegerField;
    C_ServicosDetSERVICODET: TIntegerField;
    C_ServicosDetVALOR: TBCDField;
    C_ServicosDetCODIGO: TStringField;
    C_ServicosDetDESCRICAO: TStringField;
    C_ServicosDetPRECO: TBCDField;
    C_ServicosDetSUBTOTAL: TCurrencyField;
    C_TabelaQ_ServicosDet: TDataSetField;
    Q_Localizacao: TIBQuery;
    P_Localizacao: TDataSetProvider;
    C_Localizacao: TClientDataSet;
    IntegerField8: TIntegerField;
    C_LocalizacaoDs: TDataSource;
    C_LocalizacaoLOCALIZACAOEQUIPAMENTO: TIntegerField;
    C_LocalizacaoDESCRICAO: TStringField;
    C_TabelalkpLocalizacao: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    Q_Tecnico: TIBQuery;
    P_Tecnico: TDataSetProvider;
    C_Tecnico: TClientDataSet;
    IntegerField9: TIntegerField;
    C_TecnicoDs: TDataSource;
    C_TabelaFATURADO: TStringField;
    C_TecnicoFAVORECIDO: TIntegerField;
    C_TecnicoNOME: TStringField;
    C_TabelalkTecnico: TStringField;
    C_TabelaORCAMENTO: TStringField;
    Q_Equip: TIBQuery;
    C_Equip: TClientDataSet;
    C_EquipDS: TDataSource;
    C_EquipEQUIPAMENTO: TIntegerField;
    C_EquipDESCRICAO: TStringField;
    P_Equip: TDataSetProvider;
    C_TabelaAVARIA: TStringField;
    C_TabelaCOMACESSORIO: TStringField;
    C_TabelaCOMACESSORIOOBS: TStringField;
    C_TabelaESTADOPRODMANCHADO: TStringField;
    C_TabelaESTADOPRODARRANHADO: TStringField;
    C_TabelaESTADOPRODSUJO: TStringField;
    C_TabelaESTADOPRODCABOELETRICO: TStringField;
    C_TabelaESTADOPRODQUEBRADO: TStringField;
    C_TabelaEMBALAGEMPAPELAO: TStringField;
    C_TabelaEMBALAGEMPLASTICO: TStringField;
    C_TabelaRETORNO: TStringField;
    C_TabelaORCAMENTOACEITO: TStringField;
    C_TabelaORCAMENTOCOMUNICADO: TStringField;
    C_TabelaGARANTIAFABRICA: TStringField;
    C_TabelaFORAGARANTIA: TStringField;
    C_TabelaSEMEMBALAGEM: TStringField;
    C_TabelaOBSAVARIA: TStringField;
    C_TabelaTECNICOENTRADA: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ServicosDetCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure DMComponentPesquisar4_Dados(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PegarOSNumero;
    procedure GerarSerial;
    Procedure AtualizaAcessorios(sAcessorios: String);
  end;

var
  DMEntradasAssistencia: TDMEntradasAssistencia;

implementation

uses DM_Projeto, Funcoes, Frm_EntradasAssistencia;

{$R *.dfm}

Procedure TDMEntradasAssistencia.AtualizaAcessorios;
Begin
 If Not (C_Tabela.state in [dsEdit,dsInsert]) then
   C_Tabela.Edit;
 C_TabelaPARTESAGRAGADAS.AsString := sAcessorios;
end;


procedure TDMEntradasAssistencia.GerarSerial;
Begin
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_TabelaNUMEROSERIE.AsString:=Sonumeros(IntToStr(DMProjeto.NextID('SERIAL',1)),8);
  C_Tabela.UpdateRecord;
End;

Procedure TDMEntradasAssistencia.PegarOSNumero;
Begin
  if C_TabelaOSNUMERO.AsString = '' then begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;
    C_TabelaOSNUMERO.AsString:=Sonumeros(IntToStr(DMProjeto.NextID('OSNUMERO',1)),8);
    C_Tabela.Post;
  end;
End;


procedure TDMEntradasAssistencia.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaFUNCENTRADA.AsInteger  := DMProjeto.nFuncionarioLogado;
  C_TabelaDATAENTRADA.AsDateTime := DMProjeto.getDataServidor;
  C_TabelaSTATUSSERVICO.AsInteger := 10;
  C_TabelaLOCALIZACAO.AsInteger := 10;

end;

procedure TDMEntradasAssistencia.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMEntradasAssistencia:=Self;
end;

procedure TDMEntradasAssistencia.C_ServicosDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  C_ServicosDetSUBTOTAL.Value :=
  C_ServicosDetQUANTIDADE.Value * C_ServicosDetVALOR.Value;
end;

procedure TDMEntradasAssistencia.DMComponentGravar1_Iniciar(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  if not bAlteracao then begin
    if not (C_Tabela.State in [dsInsert,dsEdit]) then
      C_Tabela.Edit;
    C_TabelaHORAENTRADA.Value := Now;
    C_Tabela.Post;
  end;
  PegarOSNumero;
end;

procedure TDMEntradasAssistencia.DMComponentPesquisar1_Iniciar(
  Sender: TObject; var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  if (C_TabelaOSNUMERO.AsString <> '') and (Length( C_TabelaOSNUMERO.AsString ) < 8) then begin
      if not (C_Tabela.State in [dsInsert,dsEdit]) then
      C_Tabela.Edit;
    C_TabelaOSNUMERO.Value := AdicionarStr(C_TabelaOSNUMERO.AsString,'0',8);
    C_Tabela.UpdateRecord;
  end;
end;

procedure TDMEntradasAssistencia.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  C_Equip.Close;
  Q_Equip.ParamByName('CLIENTE').AsInteger := -1;
  C_Equip.Open;
end;

procedure TDMEntradasAssistencia.DMComponentPesquisar4_Dados(
  Sender: TObject);
begin
  inherited;
  C_Equip.Close;
  Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
  C_Equip.Open;
end;

end.
