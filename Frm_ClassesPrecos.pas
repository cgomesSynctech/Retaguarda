unit Frm_ClassesPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid,
  dxCntner, dxEditor, dxEdLib, dxDBELib, TS_DBEdit, TS_Panel, Placemnt,
  BTOdeum, FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel,
  dxfProgressBar, dxTLClms, dxTL, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel;

type
  TFrmClassesPrecos = class(TFrmPadrao)
    TS_PanelCorner1: TTS_PanelCorner;
    TS_Label1: TTS_Label;
    dfClassificacao: TTS_DBEdit;
    TS_QDBGrid1: TTS_QDBGrid;
    TS_PopupMenu1: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    TS_QDBGrid1_icSelecionado: TdxDBGridColumn;
    TS_QDBGrid1CLASSEPRECODET: TdxDBGridMaskColumn;
    TS_QDBGrid1CLASSEPRECO: TdxDBGridMaskColumn;
    TS_QDBGrid1UNIDADE: TdxDBGridMaskColumn;
    TS_QDBGrid1PERCENTUAL: TdxDBGridCurrencyColumn;
    TS_QDBGrid1lkUNidades: TdxDBGridLookupColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure TS_QDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClassesPrecos: TFrmClassesPrecos;

implementation

uses DM_Projeto, DM_ClassesPrecos;

{$R *.dfm}

procedure TFrmClassesPrecos.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmClassesPrecos:=Self;
end;

procedure TFrmClassesPrecos.TS_QDBGrid1Enter(Sender: TObject);
begin
  inherited;
  If DMClassesPrecos.C_ClassesPrecosDet.Active Then
    DMClassesPrecos.C_ClassesPrecosDet.Append;
end;

end.
