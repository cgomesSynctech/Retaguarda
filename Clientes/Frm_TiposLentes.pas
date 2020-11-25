unit Frm_TiposLentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxDBCtrl, dxDBGrid, dxCntner, dxEditor,
  dxEdLib, dxDBELib, TS_DBEdit, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel;

type
  TFrmTiposLentes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    Grid_icSelecionado: TdxDBGridColumn;
    GridTIPOLENTE: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposLentes: TFrmTiposLentes;

implementation
uses DM_Projeto, DM_TiposLentes;

{$R *.dfm}

end.
