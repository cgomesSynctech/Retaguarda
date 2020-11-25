unit DM_AssistenciaLaboratorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMAssistenciaLaboratorio = class(TDMManutencao)
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
    C_TabelaDESCMODELO: TStringField;
    C_TabelaFATURADO: TStringField;
    C_TecnicoFAVORECIDO: TIntegerField;
    C_TecnicoNOME: TStringField;
    C_TabelalkTecnico: TStringField;
    C_TabelaORCAMENTO: TStringField;
    C_ServicosDeticSubTotal: TCurrencyField;
    C_ServicosDetUNIDADE: TStringField;
    Q_Unidades: TIBQuery;
    P_Unidades: TDataSetProvider;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    C_ServicosDetlkUnidade: TStringField;
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
    C_TabelaSERVICOPRONTO: TStringField;
    C_TabelaPRODUTOENTREGUE: TStringField;
    Q_ClientesEquip: TIBQuery;
    C_TabelaOBSSERVICOPRONTO: TStringField;
    C_TabelaOBSSERVICOENTREGUE: TStringField;
    C_TabelaOBSORCACEITO: TStringField;
    C_TabelaOBSORCCOMUNICADO: TStringField;
    C_ServicosDetESTOQUE: TBCDField;
    C_TabelaTECNICODAOS: TIntegerField;
    C_TabelaCONTATO: TStringField;
    C_TabelaCELULAR: TStringField;
    C_TabelaDESCEQUIPAMENTO: TStringField;
    C_ServicosDetREFERENCIA: TStringField;
    C_TabelaSERVICOAVISADO: TStringField;
    C_TabelaDATAORCAMENTO: TDateField;
    C_TabelaDATASERVICO: TDateField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ServicosDetCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_ServicosDetNewRecord(DataSet: TDataSet);
    procedure C_TabelaSTATUSSERVICOValidate(Sender: TField);
    procedure C_ServicosDetITEMChange(Sender: TField);
  private
    { Private declarations }
    nSeq : integer;
  public
    { Public declarations }
    Procedure PegarOSNumero;
    procedure GerarSerial;
  end;

var
  DMAssistenciaLaboratorio: TDMAssistenciaLaboratorio;

implementation

uses DM_Projeto, Funcoes, dlg_AcompanhamentoAssistencia;

{$R *.dfm}


procedure TDMAssistenciaLaboratorio.GerarSerial;
Begin
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_TabelaNUMEROSERIE.AsString:=Sonumeros(IntToStr(DMProjeto.NextID('SERIAL',1)),8);
  C_Tabela.UpdateRecord;
End;

Procedure TDMAssistenciaLaboratorio.PegarOSNumero;
Begin
  if C_TabelaOSNUMERO.AsString = '' then begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;
    C_TabelaOSNUMERO.AsString:=Sonumeros(IntToStr(DMProjeto.NextID('OSNUMERO',1)),8);
    C_Tabela.Post;
  end;
End;


procedure TDMAssistenciaLaboratorio.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaFUNCENTRADA.AsInteger  := DMProjeto.nFuncionarioLogado;
  C_TabelaDATAENTRADA.AsDateTime := DMProjeto.getDataServidor;
  C_TabelaSTATUSSERVICO.AsInteger := 10;
  C_TabelaLOCALIZACAO.AsInteger := 10;
end;

procedure TDMAssistenciaLaboratorio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMAssistenciaLaboratorio:=Self;
  nSeq := -1;
end;

procedure TDMAssistenciaLaboratorio.C_ServicosDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  C_ServicosDeticSUBTOTAL.Value :=
  C_ServicosDetQUANTIDADE.Value * C_ServicosDetVALOR.Value;
end;

procedure TDMAssistenciaLaboratorio.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
var nEquip : integer;
begin
  inherited;
  //Paulo inicio 06072012
  with Q_ClientesEquip do
  begin
        close;
        sql.Clear;
        sql.add('select c.numeroserie as numerodeserie, m.modelo as codM from servicos s  inner join clientesequipamentos '+
        'c on c.cliente = s.cliente and c.equipamento = s.equipamento inner join modelos m on c.modelo = m.modelo where osnumero = :osnumero');
        ParamByName('osnumero').AsString := dlgAcompanhamentoAssistencia.osnumero;
        Open;
  end;
  //Paulo fim 06072012
  nEquip := 0;
  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'select equipamento from clientesequipamentos ' +
                'where cliente = :cliente and numeroserie = :num ' +
                'and modelo = :mod ';
    ParamByName('cliente').AsInteger := C_TabelaCLIENTE.AsInteger;
    ParamByName('num').AsString := Q_ClientesEquip.fieldbyname('numerodeserie').asstring;
    ParamByName('mod').AsInteger := Q_ClientesEquip.fieldbyname('codM').AsInteger;
    Open;
    nEquip := FieldByName('equipamento').AsInteger;
    Close;
  end;
  if nEquip = 0 then begin
    with DMProjeto.Q_SQL do begin
      nEquip := DMProjeto.NextID('CLIENTESEQUIPAMENTOS_ID');
      Close;
      SQL.Text := 'insert into clientesequipamentos ' +
                  '(equipamento, cliente, numeroserie, modelo ) ' +
                  'values ' +
                  '(:equipamento, :cliente, :num, :mod ) ';
      ParamByName('equipamento').AsInteger := nEquip;
      ParamByName('cliente').AsInteger := C_TabelaCLIENTE.AsInteger;
      ParamByName('num').AsString := C_TabelaNUMEROSERIE.AsString;
      ParamByName('mod').AsInteger := C_TabelaMODELO.AsInteger;
      ExecSQL;
    end;
  end;
  if not (C_Tabela.State in [dsInsert,dsEdit]) then
  C_Tabela.Edit;
  C_TabelaEQUIPAMENTO.Value := nEquip;
  C_Tabela.Post;
end;

procedure TDMAssistenciaLaboratorio.DMComponentGravar1_Iniciar(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  if (C_TabelaSTATUSSERVICO.Value = 30) and (C_ServicosDet.RecordCount < 1) then begin
    DlgMSg.ShowMsg( 8022 );
    bSkip := True;
    Exit;
  end;
  //
  if (C_TabelaSTATUSSERVICO.Value = 50) and (C_ServicosDet.RecordCount < 1) and (DMProjeto.Parametro('ObrigarItensTecnica') = 'S') then begin
    DlgMsg.ShowMsg( 8022 );
    bSkip := True;
    Exit;
  end;

  //
  if not (C_Tabela.State in [dsInsert, dsEdit]) then
    C_Tabela.Edit;
  if (C_TabelaSTATUSSERVICO.Value = 50) then begin
    C_TabelaDATASAIDA.AsDateTime := DMProjeto.dDataSistemaAtual;
    C_TabelaHORASAIDA.AsDateTime := Now;
  end
  else begin
    C_TabelaDATASAIDA.AsVariant := Null;
    C_TabelaHORASAIDA.AsVariant := Null;
  end;
  C_Tabela.Post;
end;

procedure TDMAssistenciaLaboratorio.DMComponentPesquisar1_Iniciar(
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

procedure TDMAssistenciaLaboratorio.C_ServicosDetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dec(nSeq);
  C_ServicosDetSERVICODET.Value := nSeq;
  C_ServicosDetQUANTIDADE.Value := 1;
  C_ServicosDetVALOR.Value := 0;
end;

procedure TDMAssistenciaLaboratorio.C_TabelaSTATUSSERVICOValidate(
  Sender: TField);
begin
  inherited;
  if (Sender.Value = 30) and (C_ServicosDet.RecordCount < 1) then begin
    DlgMsg.ShowMsg( 8022 );
    raise Exception.Create('@@');
  end
  else if (C_TabelaSTATUSSERVICO.Value = 50) and (C_ServicosDet.RecordCount < 1) and (DMProjeto.Parametro('ObrigarItensTecnica') = 'S') then begin
    DlgMsg.ShowMsg( 8022 );
    raise Exception.Create('@@');
  end;
end;

procedure TDMAssistenciaLaboratorio.C_ServicosDetITEMChange(
  Sender: TField);
begin
  inherited;
  if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
    C_ServicosDetQUANTIDADE.Value := DMPRojeto.C_LocalizarItensicQuantidade.Value
  else
    C_ServicosDetQUANTIDADE.Value := 1;

  C_ServicosDetVALOR.Value := DMProjeto.C_LocalizarItensicPreco.Value;
  C_ServicosDetCODIGO.Value := DMProjeto.C_LocalizarItensCODIGO.Value;
  C_ServicosDetDESCRICAOITEM.Value := DMProjeto.C_LocalizarItensDESCRICAO.Value;
  C_ServicosDetUNIDADE.Value := DMProjeto.C_LocalizarItensUnidade.value;
  C_ServicosDetREFERENCIA.Value := DMProjeto.C_LocalizarItensREFERENCIA.Value;
end;

end.
