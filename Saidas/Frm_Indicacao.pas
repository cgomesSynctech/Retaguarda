unit Frm_Indicacao;

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
  TFrmIndicacao = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndicacao: TFrmIndicacao;

implementation
uses DM_Projeto, DM_Indicacao ;
{$R *.dfm}

end.
