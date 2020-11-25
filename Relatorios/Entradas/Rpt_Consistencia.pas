 unit Rpt_Consistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  dxEdLib, TS_DateTimePicker, TS_CheckBox;

type
  TRptConsistencia = class(TRptPadrao)
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    C_ConsultaIDCONSISTENCIA: TIntegerField;
    C_ConsultaVALORNOTA: TBCDField;
    C_ConsultaVALORPEDIDO: TBCDField;
    C_ConsultaDATANOTA: TDateField;
    C_ConsultaDATAPEDIDO: TDateField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAOITEM: TStringField;
    C_ConsultaDESCRICAOSTATUS: TStringField;
    C_ConsultaENTRADA: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaValorPedidoCalc: TStringField;
    dbgConsultaIDCONSISTENCIA: TdxDBGridMaskColumn;
    dbgConsultaVALORNOTA: TdxDBGridCurrencyColumn;
    dbgConsultaVALORPEDIDO: TdxDBGridCurrencyColumn;
    dbgConsultaDATANOTA: TdxDBGridDateColumn;
    dbgConsultaDATAPEDIDO: TdxDBGridDateColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOITEM: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOSTATUS: TdxDBGridMaskColumn;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaValorNotaCalc: TdxDBGridColumn;
    dbgConsultaValorPedidoCalc: TdxDBGridColumn;
    C_ConsultaValorNotaCalc: TStringField;
    C_ConsultaSTATUS: TIntegerField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
    sConsultaSQL, sWhere: string;
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptConsistencia: TRptConsistencia;

implementation

uses DM_Projeto;
{$R *.dfm}

procedure TRptConsistencia.AtualizaConsulta;
begin
  with C_Consulta do begin
    Close;
    CommandText := sConsultaSQL + sWhere;
    Params.ParamByName('datai').AsDateTime := edDataI.date;
    Params.ParamByName('dataf').AsDateTime := edDataF.date;
    Open;
  end;
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de ' + edDataI.Text + ' a ' + edDataF.Text);
    FullExpand;
  end;
  dbgConsultaDESCRICAOSTATUS.ColIndex := 0;
end;

procedure TRptConsistencia.FormsComponentBeforeClearParams(
  Sender: TObject);
var Id:integer;
begin
  inherited;
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  sConsultaSQL := Q_Consulta.SQL.Text;
  sWhere := 'Where e.data between :datai and :dataf ';
  if DMProjeto.QtdParametrosForm > 0 then begin
      Id := DMProjeto.GetParametrosForm(0);
      sWhere := sWhere + ' and cp.entrada = ' + IntToStr(Id);
  end;
  sWhere := sWhere + ' order by e.data, cpi.status';
  AtualizaConsulta;
end;

procedure TRptConsistencia.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptConsistencia.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_ConsultaValorNota.Value = Null then begin
    if C_ConsultaDataNota.Value <> Null then
      C_ConsultaValorNotaCalc.Value := DateToStr(C_ConsultaDataNota.AsDateTime);
  end else C_ConsultaValorNotaCalc.Value := FormatFloat('0.00',C_ConsultaValorNota.AsCurrency);

  if C_ConsultaValorPedido.Value = Null then begin
    if C_ConsultaDataPedido.Value <> Null then
      C_ConsultaValorPedidoCalc.Value := DateToStr(C_ConsultaDataPedido.AsDateTime);
  end else C_ConsultaValorPedidoCalc.Value := FormatFloat('0.00',C_ConsultaValorPedido.AsCurrency);

end;

procedure TRptConsistencia.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var num: string;
begin
  inherited;
{  if ANode.HasChildren and (copy(AText,1,4) = 'Nota') then begin
    num := Trim(Copy(Atext,Pos(':',Atext)+1,Length(Atext)-Pos(':',Atext)));
    C_Consulta.Locate('NUMERO',num,[]);
    AText := 'Nota #:' + C_ConsultaNumero.AsString + ' - Data:' + DateToStr(C_ConsultaData.Value);
  end;}
end;

procedure TRptConsistencia.dbgConsultaDblClick(Sender: TObject);
var nId: integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'DESCRICAOITEM' then begin
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'ITEM',0);
    SetParametrosForm([nId]);
    CriarForm('FrmItens',self,true);
  end;
end
else begin
{  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'ENTRADA',0);
    SetParametrosForm([nId]);
    CriarForm('FrmCompras',self,true);
  end;}
end;

end;

procedure TRptConsistencia.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
