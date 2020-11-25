unit Frm_UFS;
 
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
  dxTLClms, dxExEdtr, Placemnt, BTOdeum, TS_DBEditNumber, dxfProgressBar;

type
  TFrmUFS = class(TFrmPadrao)
    TS_DBEdDescricao: TTS_DBEdit;
    TS_Label1: TTS_Label;
    dfSigla: TTS_DBEdit;
    TS_Label3: TTS_Label;
    GridUF: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_DBEditNumber2: TTS_DBEditNumber;
    TS_DBEditNumber3: TTS_DBEditNumber;
    TS_Label2: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    GridColumn4: TdxDBGridColumn;
    GridColumn5: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUFS: TFrmUFS;

implementation

uses DM_UFS, DM_Projeto;

{$R *.DFM}

procedure TFrmUFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmUFS := Nil;
end;

procedure TFrmUFS.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dfSigla.Color := clWindow;
  dfSigla.ReadOnly := false;
end;

procedure TFrmUFS.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dfSigla.Color := $00CBD9F3;
  dfSigla.ReadOnly := true;
end;

end.
