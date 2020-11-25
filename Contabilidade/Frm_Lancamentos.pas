unit Frm_Lancamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, TS_PopupMenu, ComCtrls,
  StdCtrls, CheckLst, TS_CheckListBox, Buttons, TS_BitBtn, ExtCtrls,
  TS_Bevel, TS_SpeedButton,
  TS_DBEditNumber, DBCtrls, TS_DBLookupComboBox,
  TS_DBEditDate, Mask, TS_DBEdit, TS_Label, TS_Shape, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxdbtrel, dxDBELib, dxGrClEx, db, TS_Image, dxfLabel, TS_MaxPanel,
  TS_QDBGrid, dxDBTL, Dlg_PopupContas, teCtrls,
  TS_EffectsPanel, dxTLClms, TS_DBButtonEdit, Placemnt, BTOdeum;

type
  TFrmLancamentos = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label4: TTS_Label;
    dbgLancamentos: TTS_QDBGrid;
    dbgLancamentosColumn1: TdxDBGridLookupColumn;
    dbgLancamentosColumn5: TdxDBGridColumn;
    dbgLancamentosDebito: TdxDBGridColumn;
    dbgLancamentosCredito: TdxDBGridColumn;
    lblDiferenca: TTS_Label;
    dbgLancamentosContax: TdxDBGridPopupColumn;
    C_PopupDS: TDataSource;
    TS_DBButtonEdit1: TTS_DBButtonEdit;
    dbgLancamentosCliente: TdxDBGridButtonColumn;
    procedure dbgLancamentosCalcSummary(Sender: TObject);
    procedure dbgLancamentosCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dbgLancamentosContaxInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TS_DBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  protected
    DlgPopup :TDlgPopupContas;
  private
  public
    { Public declarations }
  end;

var
  FrmLancamentos: TFrmLancamentos;

implementation
uses DM_Lancamentos, DM_Projeto, funcoes;

{$R *.DFM}

procedure TFrmLancamentos.dbgLancamentosCalcSummary(Sender: TObject);
begin
  inherited;
  DMLancamentos.nCalcDebito := dbgLancamentosDebito.SummaryFooterValue;
  DMLancamentos.nCalcCredito := dbgLancamentosCredito.SummaryFooterValue;
  lblDiferenca.caption := FormatCurr('###,##0.00',DMLancamentos.nCalcCredito - DMLancamentos.nCalcDebito);
end;

procedure TFrmLancamentos.dbgLancamentosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgLancamentos.GetFieldValue(ANode,'Debito',0) > 0 then
    AColor := $00E7E1F0
  else if dbgLancamentos.GetFieldValue(ANode,'Credito',0) > 0 then
    AColor := $00F5EBDE;
end;

procedure TFrmLancamentos.FormCreate(Sender: TObject);
begin
  inherited;
  DlgPopup := TDlgPopupContas.Create(self,DMLancamentos.C_ContasDS,dbgLancamentosContax,true);
end;

procedure TFrmLancamentos.dbgLancamentosContaxInitPopup(Sender: TObject);
begin
  inherited;
//  DlgPopup.SetColuna(dbgLancamentosContax);
end;

procedure TFrmLancamentos.FormActivate(Sender: TObject);
begin
  inherited;
  dbgLancamentosContax.PopupControl := DlgPopup.pnPopup;
end;

procedure TFrmLancamentos.TS_DBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if not (DMLancamentos.C_Tabela.state in [dsEdit,dsInsert]) then
    DMLancamentos.C_Tabela.edit;
  DMLancamentos.C_TabelaReferencia.value := AdicionarStr(IntToStr(DMProjeto.NextID('RefLancamentos')),'0',8);
end;

end.
