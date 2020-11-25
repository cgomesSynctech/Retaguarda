unit Dlg_CFOPs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxCntner, dxDBTL, Db, DBClient, dxExEdtr, dxDBELib,
  IBCustomDataSet, IBQuery, Provider, ExtCtrls, StdCtrls, dxGrClEx,
  Buttons, TS_SpeedButton, TS_DBPopupEdit, TS_PopupEdit, dxEdLib, Variants,
  teCtrls, TS_EffectsPanel;

type
  TDlgCFOPs = class(TForm)
    pnCFOP: TTS_Panel;
    dbTreeCFOPs: TdxDBTreeList;
    dbTreeCFOPsDescricao: TdxDBTreeListColumn;
    dbTreeCFOPsCodigo: TdxDBTreeListMaskColumn;
    procedure dbTreeCFOPsDblClick(Sender: TObject);
    procedure dbTreeCFOPsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dbTreeCFOPsCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbTreeCFOPsHotTrackNode(Sender: TObject;
      AHotTrackInfo: TdxTreeListHotTrackInfo; var ACursor: TCursor);
    procedure dbTreeCFOPsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    Coluna: TdxDBGridPopupColumn;
    Campo: TTS_DBPopupEdit;
    Campo2: TTS_PopupEdit;
    procedure EventoPopup(Sender: TObject;const EditText: String);
    procedure EventoCloseUp(Sender: TObject; var Text: String; var Accept: Boolean);

    procedure EventoCampoPopup(Sender: TObject;const EditText: String);
    procedure EventoCampoCloseUp(Sender: TObject; var Text: String; var Accept: Boolean);
    procedure EventoCampo2Popup(Sender: TObject;const EditText: String);
    procedure EventoCampo2CloseUp(Sender: TObject; var Text: String; var Accept: Boolean);
  public
    PopupDS: TDataSource;
    constructor Create(AOwner: TComponent; C_PopupDS:TDataSource;gColuna:TdxDBGridPopupColumn);
    procedure SetEventos(CampoLkp: TCustomdxPopupEdit);
    procedure SetDS(xPopupDS:TDatasource);
    procedure SetColuna(gColuna:TdxDBGridPopupColumn);
    procedure SetFiltro(sFiltro:string);
  end;

var
  DlgCFOPs: TDlgCFOPs;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgCFOPs.Create;
begin
  PopupDS := C_PopupDS;
  Coluna  := gColuna;
  inherited Create(AOwner);
end;

procedure TDlgCFOPs.SetDS;
begin
  PopupDS := xPopupDS;
  dbTreeCFOPs.Datasource := PopupDS;
end;

{procedure TDlgPopupContas.SetNaoCampoDB;
begin
  bCampoDB := false;
end;}

procedure TDlgCFOPs.SetFiltro;
begin
  PopupDS.dataset.filtered := false;
  PopupDS.dataset.filter := sFiltro;
  PopupDS.dataset.filtered := true;
end;

procedure TDlgCFOPs.SetColuna;
begin
  Coluna  := gColuna;
  if Coluna <> nil then begin
    Coluna.OnPopup   := EventoPopup;
    Coluna.OnCloseUp := EventoCloseUp;
  end;
end;

procedure TDlgCFOPs.dbTreeCFOPsDblClick(Sender: TObject);
begin
  inherited;
  if dbTreeCFOPs.count = 0 then
    exit;
  if dbTreeCFOPs.FocusedNode.HasChildren then
    dbTreeCFOPs.FocusedNode.Expand(true)
  else begin
    (GetParentForm(dbTreeCFOPs) as TdxPopupEditForm).ClosePopup(True);
  end;
end;

procedure TDlgCFOPs.SetEventos;
begin
  if CampoLkp is TTS_DBPopupEdit then begin
    Campo := TTS_DBPopupEdit(CampoLkp);
    Campo.OnPopup := EventoCampoPopup;
    Campo.OnCloseup := EventoCampoCloseup;
  end
  else if CampoLkp is TTS_PopupEdit then begin
    Campo2 := TTS_PopupEdit(CampoLkp);
    Campo2.OnPopup := EventoCampo2Popup;
    Campo2.OnCloseup := EventoCampo2Closeup;
  end;
end;

procedure TDlgCFOPs.dbTreeCFOPsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Key in [VK_UP, VK_DOWN]) and (ssAlt in Shift)) or
      ((Key = VK_F4) and not (ssAlt in Shift)) or (Key = VK_ESCAPE) then begin
//    PopupDS.dataset.filtered := false;
    (GetParentForm(dbTreeCFOPs) as TdxPopupEditForm).ClosePopup(False);
  end
  else if Key = VK_RETURN then dbTreeCFOPsDblClick(nil);
end;

procedure TDlgCFOPs.FormCreate(Sender: TObject);
begin
  dbTreeCFOPs.Datasource := PopupDS;
  if Coluna <> nil then begin
    Coluna.OnPopup := EventoPopup;
    Coluna.OnCloseUp := EventoCloseUp;
  end;
  dbTreeCFOPs.SelectedIndex := 1;
end;

procedure TDlgCFOPs.EventoPopup(Sender: TObject;
  const EditText: String);
var
  MasterField: TField;
begin
  if Coluna = nil then
    exit;
  with Coluna.Field do
  begin
    MasterField := DataSet.FieldByName(KeyFields);
    PopupDS.Dataset.Locate(LookupKeyFields, MasterField.Value, []);
  end;
  dbTreeCFOPS.SelectedIndex := 1;
end;

procedure TDlgCFOPs.EventoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
var
  MasterField: TField;
  AValue: Variant;
begin
  if Coluna = nil then
    exit;
  if dbTreeCFOPs.Count = 0 then
    exit;
  if Accept then
  with Coluna.Field do
  begin
    MasterField := DataSet.FieldByName(KeyFields);
    AValue := PopupDS.Dataset.FieldByName(LookupKeyFields).Value;
    if MasterField.CanModify then
    begin
      DataSet.Edit;
      if VarIsNull(AValue) then MasterField.Clear
      else MasterField.Value := AValue;
      Coluna.TreeList.CloseEditor;
    end;
  end;
//  PopupDS.dataset.filtered := false;
  inherited;
end;

procedure TDlgCFOPs.EventoCampoPopup(Sender: TObject;
  const EditText: String);
var
  MasterField: TField;
  sCampo: string;
begin
  sCampo := Campo.DataField;
//  with Campo.Datasource.Dataset.FieldByName(sCampo) do
//  begin
    MasterField := Campo.Datasource.DataSet.FieldByName(sCampo);
    PopupDS.Dataset.Locate('cfop', MasterField.Value, []);
//  end;
  dbTreeCFOPs.SelectedIndex := 1;
end;

procedure TDlgCFOPs.EventoCampoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
var
  MasterField: TField;
  AValue: string;
  sCampo: string;
begin
  if dbTreeCFOPs.Count = 0 then
    exit;
  sCampo := Campo.DataField;
  if Accept then begin
//  with Campo.Datasource.Dataset.FieldByName(sCampo) do
//  begin
    MasterField := Campo.Datasource.DataSet.FieldByName(sCampo);
    AValue := PopupDS.Dataset.FieldByName('CFOP').value;
    if MasterField.CanModify then begin
      Campo.Datasource.DataSet.Edit;
//      if VarIsNull(AValue) then MasterField.Clear
//      else
      Campo.Datasource.DataSet.FieldByName(sCampo).value := AValue;
//      Campo.Datasource.DataSet.post;
      text := AValue;
//      Campo.TreeList.CloseEditor;
    end;
  end;
//  PopupDS.dataset.filtered := false;
  inherited;
end;

procedure TDlgCFOPs.EventoCampo2Popup(Sender: TObject;
  const EditText: String);
begin
  if campo2.LookupKeyValue > 0 then
    PopupDS.Dataset.Locate('cfop', campo2.LookupKeyValue, []);
  dbTreeCFOPs.SelectedIndex := 1;
end;

procedure TDlgCFOPs.EventoCampo2CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  if dbTreeCFOPs.Count = 0 then
    exit;
  if Accept then begin
    campo2.LookupKeyValue := PopupDS.Dataset.FieldByName('cfop').Value;
    text := PopupDS.Dataset.FieldByName('descricao').Value;
  end;
//  PopupDS.dataset.filtered := false;
end;

procedure TDlgCFOPs.dbTreeCFOPsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var wColor,xColor: TColor;
begin
  xColor := RGB(100, 200, 255);
  if (copy(ANode.values[0],1,1) = '1') or (copy(ANode.values[0],1,1) = '5') then // dentro do estado
    AFont.color := clNavy
  else if (copy(ANode.values[0],1,1) = '2') or (copy(ANode.values[0],1,1) = '6') then // fora do estado
    AFont.color := clRed
  else if (copy(ANode.values[0],1,1) = '3') or (copy(ANode.values[0],1,1) = '7') then // fora do país
    AFont.color := $00FF0080;

  if ANode = dbTreeCFOPs.HotTrackInfo.Node then begin
    AFont.Style := AFont.Style + [fsUnderline];
    if not ANode.HasChildren then
      AColor := xColor;
  end;
end;


procedure TDlgCFOPs.dbTreeCFOPsHotTrackNode(Sender: TObject;
  AHotTrackInfo: TdxTreeListHotTrackInfo; var ACursor: TCursor);
begin
  dbTreeCFOPs.Repaint;
end;

procedure TDlgCFOPs.dbTreeCFOPsMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  if (Button = mbLeft) and (dbTreeCFOPs.GetHitTestInfoAt(X, Y) in RowHitTests) then
//    dbTreeCFOPsDblClick(nil);
end;

end.
