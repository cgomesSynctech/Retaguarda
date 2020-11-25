unit Dlg_EscolherTax;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, DM_Saidas;

type
  TDlgEscolherTax = class(TForm)
    lbTax: TDBLookupListBox;
    procedure lbTaxDblClick(Sender: TObject);
    procedure lbTaxKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMSaidas;
  end;

var
  DlgEscolherTax: TDlgEscolherTax;

implementation

{$R *.DFM}

procedure TDlgEscolherTax.lbTaxDblClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgEscolherTax.lbTaxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Close;
end;

procedure TDlgEscolherTax.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TDlgEscolherTax.FormShow(Sender: TObject);
begin
  lbTax.DataSource := DM.C_TabelaDS;
end;

end.
