unit Frm_Testes1;

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
  TFrmTestes1 = class(TFrmPadrao)
    TS_DBEdNome: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_DBEdTelefone: TTS_DBEdit;
    TS_Label2: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTestes1: TFrmTestes1;

implementation

uses DM_Teste1;

{$R *.dfm}

end.
