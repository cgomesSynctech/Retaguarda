unit FrmTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZReport;

type
  TForm1 = class(TForm)
    ZReport1: TZReport;
    ZReport1Header: TZRBand;
    ZReport1Detail: TZRBand;
    ZReport1Footer: TZRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
