unit Frm_CadPerfis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_Label, TS_LastDataObject, TS_Bevel,
  TS_MaxPanel, CheckLst, TS_CheckListBox, dxCntner, dxEditor, dxEdLib,
  dxDBELib, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, dxExEdtr,
  TS_LookupComboBox, TS_DBLookupComboBox, dxDBEdtr, Placemnt, BTOdeum,
  dxfProgressBar;

type
  TFrmCadPerfis = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfDescricao: TTS_DBEdit;
    GridPERFIL: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridINICIALIZACAO: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    dfPerfil: TTS_DBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPerfis: TFrmCadPerfis;

implementation
uses DM_CadPerfis, DM_Projeto;

{$R *.DFM}

procedure TFrmCadPerfis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadPerfis := nil;
end;

procedure TFrmCadPerfis.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if DMCadPerfis.bAlteracao then
  	dfPerfil.Enabled := DMCadPerfis.C_TabelaPerfil.Value > 10;
end;

procedure TFrmCadPerfis.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	dfPerfil.Enabled := true;
end;

procedure TFrmCadPerfis.btGravarClick(Sender: TObject);
begin
 // inherited;

end;

end.
