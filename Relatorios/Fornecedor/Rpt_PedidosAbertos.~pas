unit Rpt_PedidosAbertos;
                                                                          
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxExEdtr,
  dxEdLib, TS_DateTimePicker, dxCntner, dxEditor, TS_CurrencyEdit,
  StdCtrls, TS_RadioButton, TS_Label, FormsComponent, DBClient, Provider,
  IBCustomDataSet, IBQuery, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls, Buttons, TS_SpeedButton,
  dxfLabel, TS_MaxPanel, 
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt, TS_CheckBox;

type
  TRptPedidosAbertos = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaENTRADA: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaPREVISAOENTREGA: TDateField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    dbgConsultaPREVISAOENTREGA: TdxDBGridDateColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPAIS: TIntegerField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    RBPedidosAtrasados: TTS_RadioButton;
    edDias: TTS_CurrencyEdit;
    TS_Label2: TTS_Label;
    rbPeriodo: TTS_RadioButton;
    DataI: TTS_DateTimePicker;
    lbData2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaNUMERO: TStringField;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    C_Consultadesc_Situacao: TStringField;
    dbgConsultadesc_Situacao: TdxDBGridColumn;
    dbgConsultaSIT_ENTRADA: TdxDBGridMaskColumn;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    C_ConsultaSTATUS: TStringField;
    dbgConsultaSTATUS: TdxDBGridMaskColumn;
    N9: TMenuItem;
    Endereo1: TMenuItem;
    C_ConsultaTOTAL: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure RBPedidosAtrasadosClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure edDiasExit(Sender: TObject);
    procedure DataIExit(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptPedidosAbertos: TRptPedidosAbertos;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptPedidosAbertos.AtualizaConsulta;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 2 and e.tipopadrao = 101 and ' +
                   'e.situacao = ''N''';
    if rbPeriodo.Checked then begin
      CommandText := CommandText +  ' and e.data between :datai and :dataf ';
      FetchParams;
      Params.ParamByName('datai').AsDateTime := Datai.Date;
      Params.ParamByName('dataf').AsDateTime := Dataf.Date;
    end
    else begin
      CommandText := CommandText +
       ' and e.data <= '+ QuotedStr(FormatDateTime('mm/dd/yyyy',DmProjeto.dDataSistema - Trunc(edDias.Value)));
      Q_Consulta.Params.Clear;
      Params.Clear;//FetchParams;
    end;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if RBPedidosAtrasados.Checked then
     TS_ReportFilter.Add('Pedidos atrasados a mais de ' + edDias.Text + ' dias.');
    if rbPeriodo.Checked then
     TS_ReportFilter.Add('Todos os pedidos no Período de: ' + FormatDateTime(ShortDateFormat, DataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, DataF.Date));
  end;
end;

procedure TRptPedidosAbertos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  if C_Consulta.FindField('PREVISAOENTREGA') <> nil then
     C_Consulta.FindField('PREVISAOENTREGA').EditMask := ShortDateFormat;
  if DataI.GetEditingText = '' then DataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if DataF.GetEditingText = '' then DataF.Date := DmProjeto.dDataSistema;
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Consulta.Close;
end;

procedure TRptPedidosAbertos.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not Anode.HasChildren then begin
  	if (dbgConsulta.GetFieldValue(ANode, 'PREVISAOENTREGA', DmProjeto.dDataSistema)
          < DmProjeto.dDataSistema)
       and ((dbgConsulta.GetFieldValue(ANode, 'STATUS', 'N') = 'P') or
          (dbgConsulta.GetFieldValue(ANode, 'STATUS', 'N') = 'L')) then
    	AFont.Color := clRed;
  end;
end;

procedure TRptPedidosAbertos.RBPedidosAtrasadosClick(Sender: TObject);
  procedure Abilitar(bValor : Boolean);
  begin
    lbData2.Visible := bValor;
    DataI.Visible   := bValor;
    DataF.Visible   := bValor;
    edDias.Enabled  := not bValor;
    if edDias.Enabled then
      ActiveControl := edDias
    else
      ActiveControl := DataI;
    Application.ProcessMessages;
  end;
begin
  inherited;
  Abilitar(rbPeriodo.Checked);
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  if (dbgConsulta.FocusedField.FieldName = 'NUMERO')
   or (dbgConsulta.FocusedField.FieldName = 'DATA')
   or (dbgConsulta.FocusedField.FieldName = 'TOTAL')
   or (dbgConsulta.FocusedField.FieldName = 'PREVISAOENTREGA')
   or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'DESC_SITUACAO')  then begin

    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Entrada',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmCompras',Self,true);
  end
  else begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmFornecedores',Self,true);
  end;
end;

procedure TRptPedidosAbertos.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptPedidosAbertos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.edDiasExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.DataIExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptPedidosAbertos.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
  if C_Consulta.FieldByName('STATUS').AsString <> '' then begin
    case C_Consulta.FieldByName('STATUS').AsString[1] of
      'P' : C_Consulta.FieldByName('Desc_Situacao').AsString := 'PENDENTE';
      'A' : C_Consulta.FieldByName('Desc_Situacao').AsString := 'ATENDIDO';
      'F' : C_Consulta.FieldByName('Desc_Situacao').AsString := 'FECHADO';
      'L' : C_Consulta.FieldByName('Desc_Situacao').AsString := 'PARCIAL';
    end;
  end;
end;

end.
