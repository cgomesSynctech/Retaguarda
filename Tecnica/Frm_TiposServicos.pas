unit Frm_TiposServicos;

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
  TFrmTiposServicos = class(TFrmPadrao)
    dfDescricao: TTS_DBEdit;
    TS_Label7: TTS_Label;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposServicos: TFrmTiposServicos;

implementation

uses DM_Projeto, DM_TiposServicos;

{$R *.dfm}

procedure TFrmTiposServicos.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmTiposServicos:=Self;
end;

end.
