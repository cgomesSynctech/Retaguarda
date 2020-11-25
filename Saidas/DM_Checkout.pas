unit DM_Checkout;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMCheckout = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCheckout: TDMCheckout;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMCheckout.DataModuleCreate(Sender: TObject);
begin
  DMCheckout := Self;
end;

end.
