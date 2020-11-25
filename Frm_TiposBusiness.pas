unit Frm_TiposBusiness;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, TS_Label, Mask,
  DBCtrls, TS_DBEdit, TS_LastDataObject,
  CheckLst, TS_CheckListBox, TS_Bevel, dxCntner, dxEditor, dxEdLib,
  dxDBELib, TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  dxTLClms, dxExEdtr, BTOdeum, Placemnt;

type
  TFrmTiposBusiness = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridTIPOBUSINESS: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposBusiness: TFrmTiposBusiness;

implementation

uses DM_TiposBusiness, DM_Projeto;

{$R *.DFM}

procedure TFrmTiposBusiness.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmTiposBusiness := nil;
end;

end.
