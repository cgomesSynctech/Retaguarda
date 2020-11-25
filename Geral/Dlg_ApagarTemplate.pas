unit Dlg_ApagarTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, CheckLst, TS_CheckListBox;

type
  TDlgApagarTemplate = class(TFrmModeloCadastros)
    clbTemplates: TTS_CheckListBox;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    slTemplates : TStringList;
  end;

var
  DlgApagarTemplate: TDlgApagarTemplate;

implementation

{$R *.dfm}

procedure TDlgApagarTemplate.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	clbTemplates.Items := slTemplates;
end;

procedure TDlgApagarTemplate.btGravarClick(Sender: TObject);
begin
  inherited;
  if clbTemplates.Selecionados( true ) = '' then begin
  	ShowMessage('Falta selecionar o(s) template(s) para ser(em) apagado(s).');
    clbTemplates.SetFocus;
    Exit;
  end;
	ModalResult := mrOk;
end;

end.
