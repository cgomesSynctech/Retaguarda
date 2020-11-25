unit DM_StatusAtendimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMStatusAtendimentos = class(TDMManutencao)
    C_TabelaSTATUSATENDIMENTO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMStatusAtendimentos: TDMStatusAtendimentos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMStatusAtendimentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMStatusAtendimentos := Self;
end;

end.
