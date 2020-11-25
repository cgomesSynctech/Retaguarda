unit Frm_Permissoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, TS_PopupMenu, ComCtrls,
  StdCtrls, Buttons, TS_BitBtn, ExtCtrls, TS_Bevel,
  TS_SpeedButton, TS_MaxPanel, TS_Label, Mask, DBCtrls, TS_DBEdit,
  CheckLst, TS_CheckListBox, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms;

type
  TFrmPermissoes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPermissoes: TFrmPermissoes;

implementation
uses DM_Permissoes, DM_Projeto;

{$R *.DFM}

end.
