unit Frm_MensagensOperacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, TS_DBMemo, StdCtrls, TS_Label, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxTLClms, dxTL,
  TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  Placemnt, TS_DBImageEdit, dxfProgressBar;

type
  TFrmMensagensOperacoes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    Grid_icSelecionado: TdxDBGridColumn;
    GridMENSAGEMOPERACAO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMemoColumn;
    TS_Label2: TTS_Label;
    TS_DBImageEdit1: TTS_DBImageEdit;
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure TS_DBMemo1Validate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagensOperacoes: TFrmMensagensOperacoes;

implementation
  uses DM_Projeto, DM_MensagensOperacoes, funcoes;

{$R *.dfm}

procedure TFrmMensagensOperacoes.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then
    DMMensagensOperacoes.C_TabelaTipo.Value := DMProjeto.GetParametrosForm(1);
    
end;

procedure TFrmMensagensOperacoes.TS_DBMemo1Validate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    if (TS_DBMemo1.Text <> '') then
    begin
        TS_DBMemo1.Text := Replace(TS_DBMemo1.Text, #$D#$A, ' ');
    end;
end;

end.
