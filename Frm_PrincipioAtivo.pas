unit Frm_PrincipioAtivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit;

type
  TFrmPrincipioAtivo = class(TFrmPadrao)
    dfDescricao: TTS_DBEdit;
    TS_Label1: TTS_Label;
    Grid_icSelecionado: TdxDBGridColumn;
    GridPRINCIPIOATIVO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipioAtivo: TFrmPrincipioAtivo;

implementation

uses DM_Projeto, DM_PRincipioAtivo;

{$R *.dfm}

end.
