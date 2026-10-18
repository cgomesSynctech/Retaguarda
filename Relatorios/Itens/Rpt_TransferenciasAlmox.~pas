unit Rpt_TransferenciasAlmox;

interface                                                

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEdLib, TS_PopupEdit,
  TS_PopupFiltrarItens, dxEditor, TS_DateTimePicker, dxDBTLCl, dxGrClms,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, TS_CheckBox;

type
  TRptTransferenciasAlmox = class(TRptPadrao)
    TS_Label1: TTS_Label;
    edDataIni: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataFim: TTS_DateTimePicker;
    popupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaTRANSFALMOX: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaTRANSFALMOXITEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaNUMEROLOTE: TStringField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaDESCALMOXO: TStringField;
    C_ConsultaDESCALMOXD: TStringField;
    dbgConsultaTRANSFALMOX: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaUSUARIO: TdxDBGridMaskColumn;
    dbgConsultaTRANSFALMOXITEM: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaNUMEROLOTE: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaDESCALMOXO: TdxDBGridMaskColumn;
    dbgConsultaDESCALMOXD: TdxDBGridMaskColumn;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    Q_Almoxarifados: TIBQuery;
    C_Almoxarifados: TClientDataSet;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    P_Almoxarifados: TDataSetProvider;
    cmbAlmoxOrigem: TTS_LookupComboBox;
    cmbAlmoxDestino: TTS_LookupComboBox;
    C_AlmoxarifadosDS: TDataSource;
    C_ConsultaLOGINNAME: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure edDataIniDateChange(Sender: TObject);
  private
    procedure AtualizaItens(WhereAdicional:string ='');
  public
    { Public declarations }
  end;

var
  RptTransferenciasAlmox: TRptTransferenciasAlmox;

implementation
uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptTransferenciasAlmox.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Almoxarifados.open;
  bCarregando := true;
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if edDataIni.GetEditingText = '' then edDataIni.date := DMProjeto.dDataSistema-30;
  if edDataFim.GetEditingText = '' then edDataFim.date := DMProjeto.dDataSistema;
  edDataIni.OnDateChange := edDataIniDateChange;
  edDataFim.OnDateChange := edDataIniDateChange;
  bCarregando := false;
  AtualizaItens;
end;

procedure TRptTransferenciasAlmox.AtualizaItens(WhereAdicional:string ='');
begin
  if bCarregando then
    exit;
    
  ActiveControl := nil;

  with C_Consulta do begin
    Close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where ta.data >= :dDataI and ta.data <= :dDataF and ta.situacao = ''N'' ';
    if PopupFiltroItens.getSQL <> '' then
      CommandText := CommandText + ' and '+PopupFiltroItens.getSQL;

    if Length(WhereAdicional)>0 then
    	CommandText := CommandText+' And '+WhereAdicional;

    if cmbAlmoxOrigem.LookupKeyValue <> null then
    	CommandText := CommandText+' And tai.almox_origem = '+IntToStr(cmbAlmoxOrigem.LookupKeyValue);
    if cmbAlmoxDestino.LookupKeyValue <> null then
    	CommandText := CommandText+' And tai.almox_destino = '+IntToStr(cmbAlmoxDestino.LookupKeyValue);

    params[0].asdatetime := trunc(edDataIni.date);
    params[1].asdatetime := trunc(edDataFim.date);
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(replace(PopupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptTransferenciasAlmox.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptTransferenciasAlmox.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
   sForm : String;
begin
  inherited;
  if (dbgConsulta.FocusedField.FieldName = 'CODIGO') or (dbgConsulta.FocusedField.FieldName = 'DESCRICAO')
    or (dbgConsulta.FocusedField.FieldName = 'DESCRICAO') then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TRANSFALMOX', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmTransferenciasAlmox', Self, true);
  end;
end;

procedure TRptTransferenciasAlmox.edDataIniDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

end.
