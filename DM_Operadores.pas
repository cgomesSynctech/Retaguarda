unit DM_Operadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMOperadores = class(TDMManutencao)
    C_TabelaOPERADOR: TIntegerField;
    C_TabelaNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOperadores: TDMOperadores;

implementation
uses DM_Projeto;

{$R *.dfm}

end.
