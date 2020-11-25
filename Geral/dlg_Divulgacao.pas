unit dlg_Divulgacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, OleCtrls, SHDocVw, StdCtrls;

type
  TdlgDivulgacao = class(TForm)
    pnDivulgacao: TPanel;
    tmDivulgacao: TTimer;
    wbDivulgacao: TWebBrowser;
    Panel1: TPanel;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDivulgacao: TdlgDivulgacao;

implementation

{$R *.dfm}

procedure TdlgDivulgacao.btnFecharClick(Sender: TObject);
begin
  Close();
end;

procedure TdlgDivulgacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TdlgDivulgacao.FormShow(Sender: TObject);
begin
   try
   wbDivulgacao.Navigate('http://www.mjrantunes.com.br/divulgacao.htm');
   Except
     Close();
   End;

end;

end.
