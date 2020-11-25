unit Dlg_SelecionarCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TDlgSelecionarCampos = class(TForm)
    lbCampos: TListBox;
    procedure lbCamposDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgSelecionarCampos: TDlgSelecionarCampos;

implementation

{$R *.dfm}

procedure TDlgSelecionarCampos.lbCamposDblClick(Sender: TObject);
begin
	ModalResult := mrOk;
end;

end.
