unit DM_MarcasVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMMarcasVeiculos = class(TDMManutencao)
    C_TabelaMARCA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMarcasVeiculos: TDMMarcasVeiculos;

implementation

uses DM_Projeto ; 
{$R *.dfm}

end.
