unit DM_Marcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMMarcas = class(TDMManutencao)
    C_TabelaMARCA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMarcas: TDMMarcas;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
