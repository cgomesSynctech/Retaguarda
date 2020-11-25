unit Dlg_AbrirTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_ComboBox, Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel;

type
  TDlgAbrirTemplate = class(TFrmModeloCadastros)
    cmbTemplates: TTS_ComboBox;
    Label1: TLabel;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    slTemplates : TStringList;
  end;

var
  DlgAbrirTemplate: TDlgAbrirTemplate;

implementation

{$R *.dfm}

procedure TDlgAbrirTemplate.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	cmbTemplates.Items := slTemplates;
end;

procedure TDlgAbrirTemplate.btGravarClick(Sender: TObject);
begin
  inherited;
  if cmbTemplates.Text = '' then begin
  	ShowMessage('Falta informar o template para ser aberto.');
    cmbTemplates.SetFocus;
    Exit;
  end;
	ModalResult := mrOk;
end;

end.
