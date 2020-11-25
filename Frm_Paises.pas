unit Frm_Paises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, TS_Label, Mask, DBCtrls, TS_DBEdit, FormComponent,
  ImgList, DlgMsg, Menus, TS_PopupMenu, TS_ScrollBox, ComCtrls, 
  Buttons, TS_SpeedButton, ExtCtrls, 
  TS_BitBtn, TS_Bevel, TS_LastDataObject,
  CheckLst, TS_CheckListBox, dxCntner, dxEditor, dxEdLib,
  dxDBELib, TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, TS_EffectsPanel, 
  dxTLClms, teCtrls, dxExEdtr, BTOdeum, Placemnt;

type
  TFrmPaises = class(TFrmPadrao)
    TS_DBEdDescricao: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridPAIS: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPaises: TFrmPaises;

implementation

uses DM_Paises, DM_Projeto;

{$R *.DFM}

procedure TFrmPaises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPaises := nil;
end;

end.
