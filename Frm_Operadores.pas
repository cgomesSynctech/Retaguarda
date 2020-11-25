unit Frm_Operadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel;

type
  TFrmOperadores = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOperadores: TFrmOperadores;

implementation
uses DM_Projeto, DM_Operadores;

{$R *.dfm}

end.
 