unit Dlg_SalvarTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner,
  dxEditor, TS_Edit;

type
  TDlgSalvarTemplate = class(TFrmModeloCadastros)
    Label1: TLabel;
    edTemplate: TTS_Edit;
    ckbPadrao: TTS_CheckBox;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    slTemplates : TStringList;
  end;

var
  DlgSalvarTemplate: TDlgSalvarTemplate;

implementation

{$R *.dfm}

procedure TDlgSalvarTemplate.btGravarClick(Sender: TObject);
begin
  inherited;
	if trim(edTemplate.Text)='' then begin
  	ShowMessage('Falta informar o nome do template.');
    edTemplate.SetFocus;
    Exit;
  end;
	if trim(uppercase(edTemplate.Text))='PADRAO' then begin
  	ShowMessage('Não pode gravar um template com o nome de "Padrao".');
    edTemplate.SetFocus;
    edTemplate.SelectAll;
    Exit;
  end;
  if slTemplates.IndexOf(edTemplate.Text)>=0 then begin
  	if Application.MessageBox('Este template já existe. Deseja sobreescrever este template ?','Substituir Template', mb_yesno) = idno then begin
    	edTemplate.SetFocus;
    	edTemplate.SelectAll;
    	Exit;
    end;
  end;
  ModalResult := mrOk;
end;

end.
