unit Dlg_RemoverCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TS_BitBtn, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_ComboBox, TS_Label;

type
  TDlgRemoverCampos = class(TForm)
    TS_Label1: TTS_Label;
    cmbCampos: TTS_ComboBox;
    TS_BitBtn1: TTS_BitBtn;
    TS_BitBtn2: TTS_BitBtn;
    procedure FormShow(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgRemoverCampos: TDlgRemoverCampos;

implementation

{$R *.dfm}

procedure TDlgRemoverCampos.FormShow(Sender: TObject);
begin
  if cmbCampos.Items.Count > 0 then
  	cmbCampos.ItemIndex := 0;
end;

procedure TDlgRemoverCampos.TS_BitBtn1Click(Sender: TObject);
begin
	if cmbCampos.Text = '' then begin
  	ShowMessage('Falta informar o campo a ser removido.');
    Exit;
  end;
  ModalResult := mrOk;
end;

end.
