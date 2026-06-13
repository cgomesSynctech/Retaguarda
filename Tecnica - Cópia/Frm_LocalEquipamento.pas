unit Frm_LocalEquipamento;

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
  TFrmLocalEquipamento = class(TFrmPadrao)
    dfLocal: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocalEquipamento: TFrmLocalEquipamento;

implementation

uses DM_LocalEquipamento, DM_Projeto;

{$R *.dfm}

procedure TFrmLocalEquipamento.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmLocalEquipamento:=Self;
end;

end.
