unit Frm_CidadesBristol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TFrmCidadesBristol = class(TFrmPadrao)
    DfDescricao: TTS_DBEdit;
    TS_Label1: TTS_Label;
    DfUF: TTS_DBEdit;
    TS_Label2: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidadesBristol: TFrmCidadesBristol;

implementation

uses DM_Projeto,DM_CidadesBristol;

{$R *.dfm}

end.
