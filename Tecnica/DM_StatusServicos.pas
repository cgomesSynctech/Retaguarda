unit DM_StatusServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDmStatusServicos = class(TDMManutencao)
    C_TabelaSTATUSSERVICO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaORDEM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmStatusServicos: TDmStatusServicos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDmStatusServicos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DmStatusServicos:=Self;
end;

end.
