unit Frm_TipoTributacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBMemo,
  dxEditor, TS_DBEdit;

type
  TFrmTipoTributacao = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    edTipoTrib: TTS_DBEdit;
    TS_Label2: TTS_Label;
    memoDecreto: TTS_DBMemo;
    GridSITUACAOECF: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridDECRETO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoTributacao: TFrmTipoTributacao;

implementation

{$R *.dfm}

uses DM_Projeto, DM_TipoTributacao;

end.
 