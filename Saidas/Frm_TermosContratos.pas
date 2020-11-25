unit Frm_TermosContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib, TS_DBMemo, TS_DBEdit,
  Placemnt;

type
  TFrmTermosContratos = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTermosContratos: TFrmTermosContratos;

implementation
  uses DM_Projeto, DM_TermosContratos;

  
{$R *.dfm}

end.
