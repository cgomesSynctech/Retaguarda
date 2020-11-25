unit Rpt_ItensLotes;

interface                              

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_CalcEdit, StdCtrls,
  TS_Label, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, ComCtrls, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls, Buttons, TS_SpeedButton,
  dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_SpinEdit,
  TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox, TS_DateTimePicker;

type
  TRptItensLotes = class(TRptPadrao)
    TS_Label1: TTS_Label;
    dfDias: TTS_SpinEdit;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaIDULTFORNECEDOR: TIntegerField;
    C_ConsultaULTFORNECEDOR: TStringField;
    C_ConsultaTIPOITEM: TStringField;
    C_ConsultaGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaNUMEROLOTE: TStringField;
    C_ConsultaVALIDADE: TDateField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNUMEROLOTE: TdxDBGridMaskColumn;
    dbgConsultaVALIDADE: TdxDBGridDateColumn;
    dbgConsultaQTDEATUAL: TdxDBGridMaskColumn;
    C_ConsultaESTOQUE: TFloatField;
    C_ConsultaQTDEATUAL: TFloatField;
    dbgConsultaFALTA: TdxDBGridColumn;
    C_ConsultaicFalta: TIntegerField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaIDLOTE: TIntegerField;
    dtInicio: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    C_ConsultaESTOQUELOTE: TBCDField;
    dbgConsultaESTOQUELOTE: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dfDiasChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
  private
    sWhere,sSelectInicial: string;
  public
    { Public declarations }
  end;

var
  RptItensLotes: TRptItensLotes;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TRptItensLotes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  C_Consulta.close;

  C_Consulta.CommandText := ' Select ' + getCampos + ' ' +
                            ' From ' + getTabelas + ' ' +
                            ' Where '+PopupFiltroItens.getSQL+' '+
                            ' and i.Estoque > 0 '+
                            ' and il.estoquelote > 0 '+
                            ' and i.controlevalidade = ''S'' and il.qtdentradas > 0 ' +
                            ' and il.validade >= :data '+
                            ' and (il.validade - current_date) <= :nDias ';
  C_Consulta.FetchParams;
  C_Consulta.Params[0].asDateTime := dtInicio.Date;
  C_Consulta.Params[1].asInteger  := trunc(dfDias.value);
  C_Consulta.open;
end;

procedure TRptItensLotes.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dtInicio.Date := DmProjeto.getDataServidor;
  btAtualizarClick(self);
end;

procedure TRptItensLotes.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgConsulta.GetFieldValue(ANode,'Validade',0) <= DMProjeto.dDataSistema then
    AFont.Color := clRed;
end;

procedure TRptItensLotes.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
   sForm : String;
begin
  inherited;
  if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
    DMProjeto.SetParametrosForm([nItem]);
    sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode,'TipoFavorecido',''));
    DMProjeto.CriarForm(sForm, Self, true);
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

procedure TRptItensLotes.dfDiasChange(Sender: TObject);
begin
  inherited;
  btAtualizarClick(self);
end;

procedure TRptItensLotes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	DataSet['icFalta'] := C_ConsultaValidade.Value-DMProjeto.dDataSistema;
  if DataSet['icFalta'] < 0 then
  	DataSet['icFalta'] := 0;
end;

procedure TRptItensLotes.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
	btAtualizar.Click;
end;

end.
