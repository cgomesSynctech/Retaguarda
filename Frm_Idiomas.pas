unit Frm_Idiomas;

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
  dxTLClms;

type
  TFrmIdiomas = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridIDIOMA: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIdiomas: TFrmIdiomas;

implementation
Uses DM_Idiomas, DM_Projeto;
{$R *.DFM}

procedure TFrmIdiomas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmIdiomas:=Nil;
end;

end.
