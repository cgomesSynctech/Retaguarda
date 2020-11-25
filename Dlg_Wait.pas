unit Dlg_Wait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TS_Shape, StdCtrls, TS_Label;

type
  TDlgWait = class(TForm)
    lblMsg: TTS_Label;
    TS_Shape1: TTS_Shape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    sMSG: String;
  end;

var
  DlgWait: TDlgWait;

implementation

{$R *.dfm}

procedure TDlgWait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

end.
