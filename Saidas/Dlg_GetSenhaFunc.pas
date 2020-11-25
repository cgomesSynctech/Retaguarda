unit Dlg_GetSenhaFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxEdLib, TS_MaskEdit,
  Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel;

type
  TDlgGetSenhaFunc = class(TFrmModeloCadastros)
    dfSenha: TTS_MaskEdit;
    TS_Label1: TTS_Label;
    procedure dfSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgGetSenhaFunc: TDlgGetSenhaFunc;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgGetSenhaFunc.dfSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravarClick(self);
end;

procedure TDlgGetSenhaFunc.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrok;
end;

end.
