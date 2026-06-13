unit FRM_TIPOEQUIPAMENTOS;

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
  TFRMTIPOEQUIPAMENTOS = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfDescricao: TTS_DBEdit;
    GridTIPOEQUIPAMENTO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMTIPOEQUIPAMENTOS: TFRMTIPOEQUIPAMENTOS;

implementation

uses DM_Projeto, DM_TIPOEQUIPAMENTOS;

{$R *.dfm}

procedure TFRMTIPOEQUIPAMENTOS.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  FRMTIPOEQUIPAMENTOS:=Self;
end;

end.
