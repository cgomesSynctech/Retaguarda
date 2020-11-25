unit Rpt_ConferProducoes;
                             
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery, TS_LastDataObject, DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, Buttons,
  dxExEdtr, dxEdLib, TS_CheckBox, teCtrls, TS_EffectsPanel, TS_SpeedButton,
  Menus, TS_PopupMenu, dxEditor, TS_DateTimePicker,  ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  TS_ButtonEdit, TS_EditFavorecido, Placemnt;

type
  TRptConferProducoes = class(TRptPadrao)
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaNOMEFUNC: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaVALORCONTRATO: TBCDField;
    C_ConsultaVALORHORA: TBCDField;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEFUNC: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS: TdxDBGridMaskColumn;
    dbgConsultaVALORCONTRATO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALRECEBER: TdxDBGridMaskColumn;
    dbgConsultaVALORHORA: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALPAGAR: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    TS_Panel2: TTS_Panel;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    C_ConsultaPRODUCAO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaFUNCIONARIO: TIntegerField;
    dbgConsultaColumn10: TdxDBGridColumn;
    dbgConsultaColumn11: TdxDBGridColumn;
    dbgConsultaColumn12: TdxDBGridColumn;
    dbgConsultaColumn13: TdxDBGridColumn;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaColumn14: TdxDBGridColumn;
    dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ConsultaQTDHORAS: TFloatField;
    C_ConsultaSUBTOTALRECEBER: TFloatField;
    C_ConsultaSUBTOTALPAGAR: TFloatField;
    C_ConsultaQTDHORAS_USER: TStringField;
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    edCliente: TTS_EditFavorecido;
    edFuncionario: TTS_EditFavorecido;
    dbgConsultaColumn16: TdxDBGridColumn;
    C_ConsultaMETODOCLIENTE: TStringField;
    C_ConsultacfVALORARECEBER: TCurrencyField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn17: TdxDBGridColumn;
    dbgConsultaColumn18: TdxDBGridMaskColumn;
    C_ConsultaDESPESAS: TBCDField;
    C_ConsultaDATAINICIO: TDateField;
    C_ConsultaDATAFIM: TDateField;
    dbgConsultaColumn19: TdxDBGridColumn;
    dbgConsultaColumn20: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dbgConsultaGetSummaryTopText(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
      GroupKeyValue: Variant; FieldName: String; var AText: String);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dtDataIDateChange(Sender: TObject);
    procedure edClienteSelecionou(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
  public
  end;

var
  RptConferProducoes: TRptConferProducoes;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptConferProducoes.btAtualizarClick(Sender: TObject);
begin
  inherited;
{  Q_Consulta.SQL.text := sSQL;
  if sClientes <> '' then
    Q_Consulta.SQL.Add('and pf.favorecido in ('+sClientes+')');
  if sFuncionarios <> '' then
    Q_Consulta.SQL.Add('and pf.funcionario in ('+sFuncionarios+')');
  Q_Consulta.SQL.Add('order by cli.nome,func.nome'); }
  with C_Consulta do begin
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where pf.datainicio >= :dDataI and pf.datainicio <= :dDataF';
    if edCliente.ID <> 0 then
      CommandText := CommandText + ' and pf.favorecido = '+IntToStr(edCliente.ID)+' ';
    if edFuncionario.ID <> 0 then
      CommandText := CommandText + ' and pf.funcionario = '+IntToStr(edFuncionario.ID)+' ';
    CommandText := CommandText + ' order by cli.nome,func.nome';
    close;
    FetchParams;
    Params[0].asdatetime := trunc(dtDataI.date);
    Params[1].asdatetime := trunc(dtDataF.date);
    open;
  end;  

  with dbgConsulta do begin
  	FullExpand;
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lbPeriodo.Caption+' '+dtDataI.Text+' a '+dtDataF.Text);
    if edCliente.ID <> 0 then
    	TS_ReportFilter.Add('Cliente: '+edCliente.Text);
    if edFuncionario.ID <> 0 then
    	TS_ReportFilter.Add('Funcionário: '+edFuncionario.Text);
	end;
end;

procedure TRptConferProducoes.dtDataIChange(Sender: TObject);
begin
  inherited;
  btAtualizarClick(self);
end;

procedure TRptConferProducoes.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dtDataI.date := dtDataI.date + 7;
  bCarregando := false;
  dtDataF.date := dtDataF.date + 7;
  ActiveControl := dtDataI;
end;

procedure TRptConferProducoes.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dtDataI.date := dtDataI.date - 7;
  bCarregando := false;
  dtDataF.date := dtDataF.date - 7;
  ActiveControl := dtDataI;
end;

procedure TRptConferProducoes.dbgConsultaDblClick(Sender: TObject);
var nFavorecido,nID: integer;
    sForm: string;
begin
  inherited;
  if dbgConsulta.FocusedNode.HasChildren then begin
    nFavorecido := dbgConsulta.GetFirstChildValue(tdxdbgridNode(dbgConsulta.FocusedNode),'favorecido');
    DMProjeto.SetParametrosForm([nFavorecido]);
    DMProjeto.CriarForm('FrmClientes', Self, false);
  end
  else if lowercase(dbgConsulta.FocusedField.FieldName) = 'nomefunc' then begin
    nFavorecido := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'funcionario',0);
    DMProjeto.SetParametrosForm([nFavorecido]);
    DMProjeto.CriarForm('FrmFuncionarios', Self, false);
  end
  else if lowercase(dbgConsulta.FocusedField.FieldName) = 'descricao' then begin
    nFavorecido := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'item',0);
    DMProjeto.SetParametrosForm([nFavorecido]);
    DMProjeto.CriarForm('FrmItens', Self, false);
  end
  else begin
    nID   := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'producao',0);
    sForm := 'frmtimesimples';
    if (nID <> 0) and (sForm <> '') then begin
      DMProjeto.SetParametrosForm([nID]);
      DMProjeto.CriarForm(sForm, self, true);
    end
    else
      DlgMsg.ShowMsg(3120);
  end;
end;

procedure TRptConferProducoes.dbgConsultaGetSummaryTopText(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
  GroupKeyValue: Variant; FieldName: String; var AText: String);
begin
  inherited;
{  if (lowercase(FieldName) = 'valorcontrato') then
    AText := 'Fone:'+dbgConsulta.GetFirstChildValue(ANode,'fone1'); }
end;

procedure TRptConferProducoes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgConsultaQtdHoras_User.Visible := false
  else
  	dbgConsultaQtdHoras.Visible := false;
  dtDataI.OnDateChange := nil;
  dtDataF.OnDateChange := nil;
  if DMProjeto.ExisteParametrosForm then begin
  	dtDataI.date := StrToDate(DMProjeto.getParametrosForm( 2 ));
  	dtDataF.date := StrToDate(DMProjeto.getParametrosForm( 3 ));
  	if DMProjeto.QtdParametrosForm > 1 then
      if DMProjeto.getParametrosForm( 1 ) <> 0 then
				edFuncionario.ID := DMProjeto.getParametrosForm( 1 );
  	if DMProjeto.QtdParametrosForm > 4 then
			edCliente.ID := DMProjeto.getParametrosForm( 4 );
  end else begin
  	if dtDataI.GetEditingText = '' then dtDataI.date := DMProjeto.dDataSistema - 7;
  	if dtDataF.GetEditingText = '' then dtDataF.date := DMProjeto.dDataSistema;
  end;
  dtDataI.OnDateChange := dtDataIDateChange;
  dtDataF.OnDateChange := dtDataIDateChange;
  
  btAtualizarClick(self);
end;

procedure TRptConferProducoes.dtDataIDateChange(Sender: TObject);
begin
  inherited;
	btAtualizarClick(self);
end;

procedure TRptConferProducoes.edClienteSelecionou(Sender: TObject);
begin
  inherited;
	btAtualizar.Click;
end;

procedure TRptConferProducoes.edClienteChange(Sender: TObject);
begin
  inherited;
	if TTS_EditFavorecido(Sender).Text = '' then
  	btAtualizar.Click;
end;

procedure TRptConferProducoes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_ConsultaMetodoCliente.Value = 'V' then
		C_ConsultacfValorAReceber.AsCurrency := C_ConsultaValorContrato.AsCurrency
  else
  	C_ConsultacfValorAReceber.AsCurrency := (C_ConsultaValorContrato.AsCurrency*C_ConsultaQtdHoras.Value) - C_ConsultaDespesas.AsCurrency;
end;

end.
