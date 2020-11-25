unit Frm_TiposEntrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, Mask, DBCtrls,
  TS_DBEdit, TS_Label, TS_LastDataObject,
  CheckLst, TS_CheckListBox, TS_Bevel, dxCntner, dxEditor, dxEdLib,
  dxDBELib, TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  dxTLClms, dxExEdtr, BTOdeum, Placemnt;

type
  TFrmTiposEntrega = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    GridTIPOENTREGA: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposEntrega: TFrmTiposEntrega;

implementation

uses DM_TiposEntrega, DM_Projeto;

{$R *.DFM}

procedure TFrmTiposEntrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmTiposEntrega := nil;
end;

end.
