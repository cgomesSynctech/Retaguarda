unit Frm_Contabilidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, 
  StdCtrls, TS_BitBtn, Db, IBCustomDataSet,
  IBQuery, Provider, DBClient, TS_Label, DBCtrls, TS_DBText, Mask,
  TS_DBEdit, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms, dxCntner,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, TS_QDBGrid,
  dxGrClEx, dxExEdtr, Dlg_PopupContas, teCtrls, TS_EffectsPanel, Placemnt,
  BTOdeum;

type
  TFrmContabilidade = class(TFrmModeloCadastros)
    C_ContabilidadeDS: TDataSource;
    dbgContabil: TTS_QDBGrid;
    dbgContabilHistorico: TdxDBGridColumn;
    dbgContabilDebito: TdxDBGridColumn;
    dbgContabilCredito: TdxDBGridColumn;
    dbgContabilAlterar: TdxDBGridColumn;
    dbgContabilConta: TdxDBGridPopupColumn;
    dbgContabilLancamentoItem: TdxDBGridColumn;
    dbgContabilTipoConta: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbgContabilEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbgContabilCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
  protected
    DlgPopup :TDlgPopupContas;
    xConta: integer;
  private
    C_Contabil: TClientDataSet;
    PopupDS: TDataSource;
  public
    Constructor Create(AOwner: TComponent; X_Contabil: TClientDataSet; xPopupDS:TDataSource);
  end;

var
  FrmContabilidade: TFrmContabilidade;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TFrmContabilidade.Create;
begin
  C_Contabil := X_Contabil;
  PopupDS    := xPopupDS;
  inherited Create(AOwner);
end;

procedure TFrmContabilidade.FormCreate(Sender: TObject);
begin
  inherited;
  C_Contabil.Open;
  C_Contabil.first;
  C_ContabilidadeDS.dataset := C_Contabil;

  DlgPopup := TDlgPopupContas.Create(self,PopupDS,dbgContabilConta,true);
end;

procedure TFrmContabilidade.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Contabil.state in [dsEdit,dsInsert] then
    C_Contabil.post;
  close;
end;

procedure TFrmContabilidade.dbgContabilEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
  if (dbgContabil.GetFieldValue(Node,'Alterar',0) = 1) and (lowercase(dbgContabil.FocusedField.FieldName) <> 'historico') then
    Allow := false;
end;

procedure TFrmContabilidade.dbgContabilCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgContabil.GetFieldValue(ANode,'Debito',0) > 0 then
    AColor := $00E7E1F0
  else if dbgContabil.GetFieldValue(ANode,'Credito',0) > 0 then
    AColor := $00F5EBDE;
end;

procedure TFrmContabilidade.FormActivate(Sender: TObject);
begin
  inherited;
  dbgContabilConta.PopupControl := DlgPopup.pnPopup;
end;

end.
