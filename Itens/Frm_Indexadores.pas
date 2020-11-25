unit Frm_Indexadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label, Mask, DBCtrls,
  TS_DBEdit, TS_LastDataObject, CheckLst, TS_CheckListBox,
  TS_Bevel, dxCntner, dxEditor, dxEdLib, dxDBELib, TS_Image,
  dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, dxTLClms, dxExEdtr, Placemnt, BTOdeum, dxfProgressBar;

type

  TFrmIndexadores = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    edDescricao: TTS_DBEdit;
    TS_Label3: TTS_Label;
    edCifrao: TTS_DBEdit;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridCIFRAO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndexadores: TFrmIndexadores;

implementation

uses DM_Indexadores, DM_Projeto;

{$R *.DFM}

procedure TFrmIndexadores.FormCreate(Sender: TObject);
begin
  inherited;
  FrmIndexadores := Self;
end;

procedure TFrmIndexadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmIndexadores := nil;
end;

end.
