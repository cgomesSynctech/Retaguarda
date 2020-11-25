unit Rpt_Payrolls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_DateTimePicker, StdCtrls, TS_Label, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent, DBClient, Provider,
  IBCustomDataSet, IBQuery, 
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, ComCtrls, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, ExtCtrls, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, TS_ButtonEdit, TS_EditFavorecido, TS_RadioButton, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  dxDBTLCl, dxGrClms, TS_CheckBox;

type
  TRptPayrolls = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaVALORLIQUIDO: TBCDField;
    C_ConsultaVALORBRUTO: TBCDField;
    C_ConsultaPAGOESTEANO: TBCDField;
    C_ConsultaVALORCOMISSAO: TBCDField;
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn;
    dbgConsultaVALORBRUTO: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS: TdxDBGridMaskColumn;
    dbgConsultaPAGOESTEANO: TdxDBGridMaskColumn;
    dbgConsultaVALORCOMISSAO: TdxDBGridMaskColumn;
    C_ConsultaPAYROLLFUNC: TIntegerField;
    lbFunc: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    rgPorPayroll: TTS_RadioButton;
    rgPorFuncionario: TTS_RadioButton;
    dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ConsultaQTDHORAS: TFloatField;
    C_ConsultaQTDHORAS_USER: TStringField;
    dbgConsultaSTATUS: TdxDBGridImageColumn;
    C_ConsultaSTATUS: TStringField;
    C_ConsultaccStatus: TStringField;
    C_ConsultaVALORPAGO: TBCDField;
    dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
    C_ConsultaDATAINICIO: TDateField;
    C_ConsultaDATAFIM: TDateField;
    C_ConsultaDATAPAGAMENTO: TDateField;
    dbgConsultaDATAINICIO: TdxDBGridColumn;
    dbgConsultaDATAFIM: TdxDBGridColumn;
    dbgConsultaDATAPAGAMENTO: TdxDBGridColumn;
    dbgConsultaNOMECARGO: TdxDBGridColumn;
    C_ConsultaPERIODICIDADE: TStringField;
    C_ConsultaNOMECARGO: TStringField;
    dbgConsultaPERIODICIDADE: TdxDBGridImageColumn;
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure rgPorPayrollClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPayrolls: TRptPayrolls;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptPayrolls.Atualizar;
begin
	with C_Consulta do begin
  	close;

    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where p.datainicio >= :datai and p.datainicio <= :dataf and '+
                   '(pf.funcionario = :funcionario or :todos = 0)';

    CommandText := replace(CommandText,'dd/mm/yyyy',DMProjeto.sDateFormat);
    fetchparams;
    params.parambyname('datai').AsDate := DataI.Date;
    params.parambyname('dataf').AsDate := DataF.Date;
    params.parambyname('funcionario').AsInteger := edFavorecido.ID;
    params.parambyname('todos').AsInteger := edFavorecido.ID;
    open;
  end;
  with dbgConsulta.TS_ReportFilter do begin
  	Clear;
    Add(lbPeriodo.Caption+' '+DataI.Text+' a '+DataF.Text);
    if edFavorecido.ID <> 0 then
      Add(lbFunc.Caption+' '+edFavorecido.Text);
  end;
end;

procedure TRptPayrolls.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPayrolls.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgConsultaQtdHoras_User.Visible := false
  else
  	dbgConsultaQtdHoras.Visible := false;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptPayrolls.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPayrolls.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	Atualizar;
end;

procedure TRptPayrolls.rgPorPayrollClick(Sender: TObject);
begin
  inherited;
  if rgPorPayroll.Checked then begin
    dbgConsultaDescricao.GroupIndex := 0;
    dbgConsultaNome.GroupIndex := -1;
    dbgConsultaDescricao.Visible := false;
    dbgConsultaNome.Visible := true;
    dbgConsultaNomeCargo.Visible:= true;
  end else begin
  	dbgConsultaNome.GroupIndex := 0;
    dbgConsultaDescricao.GroupIndex := -1;
    dbgConsultaNome.Visible := false;
    dbgConsultaDescricao.Visible 	:= true;
    dbgConsultaNomeCargo.Visible	:= false;
  end;
end;

procedure TRptPayrolls.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptPayrolls.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_ConsultaValorPago.Value > 0 then
  	C_ConsultaccStatus.Value := 'F'
  else
  	C_ConsultaccStatus.Value := 'A';
end;

procedure TRptPayrolls.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if TdxDBGridColumn(AColumn).FieldName = 'STATUS' then
  	if dbgConsulta.GetFieldValue(Anode,'STATUS','A') = 'A' then
    	AFont.Color := clBlue
    else
      AFont.Color := clRed;
end;

end.
