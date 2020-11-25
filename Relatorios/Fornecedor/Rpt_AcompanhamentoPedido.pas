unit Rpt_AcompanhamentoPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxExEdtr,
  dxEdLib, TS_CheckBox, dxCntner, dxEditor, TS_DateTimePicker, StdCtrls,
  TS_Label, FormsComponent, DBClient, Provider, IBCustomDataSet, IBQuery,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, ExtCtrls, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel,
  dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ComCtrls, Variants, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptAcompanhamentoPedido = class(TRptPadrao)
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaPREVISAOENTREGA: TDateField;
    C_ConsultaSITUACAO: TStringField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultasubRecebido: TFloatField;
    C_ConsultaPedido: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaQTDRECEBIDA: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTAL: TdxDBGridMaskColumn;
    dbgConsultaPedido: TdxDBGridColumn;
    C_ConsultaENTRADA: TIntegerField;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaPREVISAOENTREGA: TdxDBGridDateColumn;
    C_ConsultaSTATUS: TStringField;
    dbgConsultaSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALRECEBIDO: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    lbA: TTS_Label;
    DataF: TTS_DateTimePicker;
    cbParcialAtendidos: TTS_CheckBox;
    cbAtrasados: TTS_CheckBox;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    C_ConsultaITEM: TIntegerField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaprecovenda: TdxDBGridColumn;
    dbgConsultaSUBPRECOVENDA: TdxDBGridColumn;
    dbgConsultaMC_PERCENT: TdxDBGridColumn;
    dbgConsultaMARGEMCONTRIBUICAO: TdxDBGridColumn;
    C_ConsultaFORNECEDOR: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaFORNECEDOR: TdxDBGridColumn;
    dbgConsultaFABRICANTE: TdxDBGridColumn;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaQTDRECEBIDA: TBCDField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaSUBTOTAL: TFloatField;
    C_ConsultaSUBTOTALRECEBIDO: TFloatField;
    C_ConsultaPRECOVENDA: TBCDField;
    C_ConsultaSUBPRECOVENDA: TFloatField;
    C_ConsultaMARGEMCONTRIBUICAO: TFloatField;
    C_ConsultaMC_PERCENT: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cbParcialAtendidosClick(Sender: TObject);
    procedure cbAtrasadosClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptAcompanhamentoPedido: TRptAcompanhamentoPedido;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptAcompanhamentoPedido.AtualizaConsulta;
  function GetDescSituacao(TipoSituacao : String) : String;
  begin
    if TipoSituacao <> '' then begin
      case TipoSituacao[1] of
        'C' : Result := '(CANCELADO)';
        'P' : Result := '(PENDENTE)';
        'A' : Result := '(ATENDIDO)';
        'F' : Result := '(FECHADO0';
        'L' : Result := '(PARCIAL)';
        else
           Result := '';
      end;
    end;
  end;
Var sWhare: string;

begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas;


    sWhare := 'Where e.tipomovimento = 5 ';

    if bIniciarComDados then begin
      Params.Clear;
      sWhare :=  sWhare + ' and e.entrada = ' + VarAsType( nOpenKey, varString );
    end
    else begin
      Params.Clear;
      sWhare := sWhare + ' and e.data between :datai and :dataf ';
      if cbParcialAtendidos.Checked then begin
        sWhare := sWhare + ' and e.status = '+QuotedStr('L');
      end;
      if cbAtrasados.Checked then begin
        sWhare := sWhare + ' and e.previsaoentrega < :data ';
      end;

      CommandText := CommandText + sWhare;

      FetchParams;
      Params.ParamByName('Datai').AsDateTime := DataI.date;
      Params.ParamByName('Dataf').AsDateTime := DataF.date;
      if Params.FindParam('data') <> nil then
          Params.ParamByName('data').AsDateTime := DmProjeto.dDataSistema;


    end;


    Open;
    while not Eof do begin
      Edit;
      FieldByName('Pedido').AsString := FieldByName('Numero').AsString
           + ',   Data: ' + FieldByName('Data').AsString;
//            + ',   Prev. Entrega: ' + FieldByName('Data').AsString
//            + GetDescSituacao(FieldByName('Status').AsString);
      Post;
      Next;
    end;
  end;
  if not bIniciarComDados then begin
    with dbgConsulta do begin
      TS_ReportFilter.Clear;
      TS_ReportFilter.Add(lbPeriodo.Caption+' ' + DataI.Text+ ' '+lbA.Caption+' ' + Dataf.Text );
      if cbParcialAtendidos.Checked then
         TS_ReportFilter.Add(cbParcialAtendidos.Caption);
      if cbAtrasados.Checked then
         TS_ReportFilter.Add(cbAtrasados.Caption);
    end;
  end;
end;

procedure TRptAcompanhamentoPedido.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAcompanhamentoPedido.FormShow(Sender: TObject);
  Procedure VisualizaPesquisa( bValor : Boolean);
  begin
    lbPeriodo.Visible := bValor;
    lbA.Visible := bValor;
    DataI.Visible := bValor;
    DataF.Visible := bValor;
    cbParcialAtendidos.Visible := bValor;
    cbAtrasados.Visible := bValor;
  end;
begin
  inherited;
  VisualizaPesquisa(not bIniciarComDados);
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if DataF.GetEditingText = '' then DataF.Date := DmProjeto.dDataSistema;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
end;

procedure TRptAcompanhamentoPedido.dbgConsultaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ANode.HasChildren then
    if (dbgConsulta.GetFieldValue(ANode, 'PREVISAOENTREGA', DmProjeto.dDataSistema)
          < DmProjeto.dDataSistema)
       and ((dbgConsulta.GetFieldValue(ANode, 'STATUS', 'N') = 'P') or
          (dbgConsulta.GetFieldValue(ANode, 'STATUS', 'N') = 'L')) then
         AFont.Color := clRed
    else
       if (dbgConsulta.GetFieldValue(ANode, 'STATUS', 'N') = 'A') then
         AFont.Color := clBlue;
end;

procedure TRptAcompanhamentoPedido.cbParcialAtendidosClick(
  Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAcompanhamentoPedido.cbAtrasadosClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAcompanhamentoPedido.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAcompanhamentoPedido.dbgConsultaDblClick(Sender: TObject);
var
  nid : Integer;
begin
  inherited;
  nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'item',0);
  DMProjeto.SetParametrosForm([nId]);
  DMProjeto.CriarForm('FrmItens',Self,true);
end;

procedure TRptAcompanhamentoPedido.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAcompanhamentoPedido.FormCreate(Sender: TObject);
begin
  inherited;
  dbgConsulta.TotalizarAcima( false );
  dbgConsulta.MostrarRodapeGrupo( true );
end;

end.
