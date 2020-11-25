unit Frm_StatusServicos;

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
  TFrmStatusServicos = class(TFrmPadrao)
    lbDescricao: TTS_Label;
    dfDescricao: TTS_DBEdit;
    GridDESCRICAO: TdxDBGridMaskColumn;
    lbOrdem: TTS_Label;
    edOrdem: TTS_DBEdit;
    GridORDEM: TdxDBGridMaskColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusServicos: TFrmStatusServicos;

implementation

uses DM_Projeto, DM_StatusServicos;

{$R *.dfm}

procedure TFrmStatusServicos.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmStatusServicos:=Self;
end;

end.
