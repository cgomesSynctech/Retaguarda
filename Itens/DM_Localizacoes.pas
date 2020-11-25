unit DM_Localizacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMLocalizacoes = class(TDMManutencao)
    C_TabelaLOCALIZACAO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLocalizacoes: TDMLocalizacoes;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMLocalizacoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMLocalizacoes := Self;
end;

end.
