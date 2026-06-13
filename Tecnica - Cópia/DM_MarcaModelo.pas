unit DM_MarcaModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMMarcaModelo = class(TDMManutencao)
    C_TabelaID: TIntegerField;
    C_TabelaMODELO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMarcaModelo: TDMMarcaModelo;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
 