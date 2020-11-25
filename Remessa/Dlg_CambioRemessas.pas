unit Dlg_CambioRemessas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido,
  dxCntner, dxEditor, dxDBEdtr, dxDBELib, TS_DBLookupTipoFav,
  FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_DateTimePicker, Db, IBCustomDataSet, IBQuery, Provider,
  DBClient, dxDBTLCl, dxGrClms,
  TS_Panel, IBUpdateSQL, Placemnt, BTOdeum;

type
  TDlgCambioRemessas = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    edData: TTS_DateTimePicker;
    TS_Panel1: TTS_Panel;
    TS_Label2: TTS_Label;
    Q_Agentes: TIBQuery;
    Q_AgenciaCambio: TIBQuery;
    C_Agentes: TClientDataSet;
    PAgentes: TDataSetProvider;
    C_AgentesFAVORECIDO: TIntegerField;
    C_AgentesCODIGO: TStringField;
    C_AgentesNOME: TStringField;
    dsAgentes: TDataSource;
    dbgAgentes: TTS_QDBGrid;
    dbgAgentesFAVORECIDO: TdxDBGridMaskColumn;
    dbgAgentesCODIGO: TdxDBGridMaskColumn;
    dbgAgentesNOME: TdxDBGridMaskColumn;
    dbgCambio: TTS_QDBGrid;
    dsMestre: TDataSource;
    dsAgenciaCambio: TDataSource;
    C_AgentesQ_AgenciaCambio: TDataSetField;
    C_CambioAgencia: TClientDataSet;
    C_CambioAgenciaAGENCIA_CAMBIO: TIntegerField;
    C_CambioAgenciaAGENCIA: TIntegerField;
    C_CambioAgenciaINDEXADOR: TIntegerField;
    C_CambioAgenciaCAMBIO: TBCDField;
    C_CambioAgenciaDATA: TDateField;
    C_CambioAgenciaFAVORECIDO: TIntegerField;
    C_Indexador: TClientDataSet;
    PIndexador: TDataSetProvider;
    Q_Indexador: TIBQuery;
    C_CambioAgenciacbIndexador: TStringField;
    dbgCambioAGENCIA_CAMBIO: TdxDBGridMaskColumn;
    dbgCambioAGENCIA: TdxDBGridMaskColumn;
    dbgCambioINDEXADOR: TdxDBGridMaskColumn;
    dbgCambioCAMBIO: TdxDBGridMaskColumn;
    dbgCambioDATA: TdxDBGridDateColumn;
    dbgCambioFAVORECIDO: TdxDBGridMaskColumn;
    dbgCambiocbIndexador: TdxDBGridLookupColumn;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    ppmAgentes: TTS_PopupMenu;
    ppmCambio: TTS_PopupMenu;
    upAgenciaCambio: TIBUpdateSQL;
    Incluir1: TMenuItem;
    Remover1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure dbgCambioColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure dbgAgentesColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure C_CambioAgenciaNewRecord(DataSet: TDataSet);
    procedure C_AgentesReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormCreate(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Remover1Click(Sender: TObject);
    procedure C_CambioAgenciaBeforeInsert(DataSet: TDataSet);
    procedure edDataDateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    sSQLMestre, sSQLDetalhe : String;
  public
    { Public declarations }
    procedure AtualizaDados;
  end;

var
  DlgCambioRemessas: TDlgCambioRemessas;

implementation

uses DM_Projeto;

{$R *.DFM}

{ TDlgCambioRemessas }

procedure TDlgCambioRemessas.AtualizaDados;
begin
  if edData.Date = 0 then
     exit;
  with C_Agentes do begin
    Close;
    CommandText := sSQLMestre;
    if edFavorecido.ID <> 0 then
       CommandText := CommandText + ' and favorecido = '+IntToStr(edFavorecido.ID);
    Open;
  end;
  with C_CambioAgencia do begin
//    CommandText := sSQLDetalhe;
    if edData.Date <> 0 then begin
      filter := 'data = ' + QuotedStr(FormatDateTime(ShortDateFormat,edData.Date));
    end;
  end;
end;

procedure TDlgCambioRemessas.FormShow(Sender: TObject);
begin
  inherited;
  sSQLMestre := Q_Agentes.SQL.Text;
  sSQLDetalhe := Q_AgenciaCambio.SQL.Text;
  edData.Date := DmProjeto.dDataSistema;
  AtualizaDados;
end;

procedure TDlgCambioRemessas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  AtualizaDados;
end;                                         

procedure TDlgCambioRemessas.dbgCambioColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if UpperCase(Column.FieldName)='CBINDEXADOR' then begin
    DmProjeto.CriarForm('FrmIndexador', Self, True);
    C_Indexador.Close;
    C_Indexador.Open;
  end;
  Allow := False; 
end;

procedure TDlgCambioRemessas.dbgAgentesColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if UpperCase(Column.FieldName)='CODIGO' then begin
    DmProjeto.CriarForm('FrmAgencias', Self, True);
    C_Agentes.Close;
    C_Agentes.Open;
  end;
  Allow := False;
end;

procedure TDlgCambioRemessas.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    if C_Agentes.ChangeCount > 0 then
       C_Agentes.ApplyUpdates(0);
    if not DmProjeto.IBT_Projeto.InTransaction then
        DmProjeto.IBT_Projeto.CommitRetaining;
  except
  end;
end;

procedure TDlgCambioRemessas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edfavorecido.ID = 0 then
    AtualizaDados;
end;

procedure TDlgCambioRemessas.C_CambioAgenciaNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByname('AGENCIA').AsInteger := C_Agentes.FieldByName('Favorecido').AsInteger;
  DataSet.FieldByname('AGENCIA_CAMBIO').AsInteger := DmProjeto.NextIDGlobal;
  DataSet.FieldByname('DATA').AsDateTime := edData.Date;
end;

procedure TDlgCambioRemessas.C_AgentesReconcileError(
  DataSet: TClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  if e.ErrorCode = 65330 then
  	DlgMsg.ShowMsg(80,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else if e.ErrorCode = 65432 then
  	DlgMsg.ShowMsg(81,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else if e.ErrorCode = 64732 then
  	DlgMsg.ShowMsg(83,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else
  	DlgMsg.ShowMsg(84,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '');
end;

procedure TDlgCambioRemessas.FormCreate(Sender: TObject);
begin
  inherited;
  if not DmProjeto.IBT_Projeto.InTransaction then
    DmProjeto.IBT_Projeto.StartTransaction;
end;

procedure TDlgCambioRemessas.Incluir1Click(Sender: TObject);
begin
  inherited;
  if C_CambioAgencia.State = dsInactive then begin
    C_CambioAgencia.Open;
  end;
  if C_CambioAgencia.State = dsBrowse then begin
    C_CambioAgencia.Append;
  end;
end;

procedure TDlgCambioRemessas.Remover1Click(Sender: TObject);
begin
  inherited;
  if not C_CambioAgencia.IsEmpty then begin
    C_CambioAgencia.Delete;
  end;
end;

procedure TDlgCambioRemessas.C_CambioAgenciaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if edData.Date = 0 then
    Abort;
end;

procedure TDlgCambioRemessas.edDataDateChange(Sender: TObject);
begin
  inherited;
  AtualizaDados;
end;

procedure TDlgCambioRemessas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    if C_Agentes.ChangeCount > 0 then 
       C_Agentes.CancelUpdates;
  except
  end;
end;

end.
