unit Frm_MarcasVeiculos;

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
  TFrmMarcasVeiculos = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMarcasVeiculos: TFrmMarcasVeiculos;

implementation

Uses DM_Projeto, DM_MarcasVeiculos; 
{$R *.dfm}

end.
