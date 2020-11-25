unit DM_Teste1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTeste1 = class(TDMManutencao)
    C_TabelaTESTE1: TIntegerField;
    C_TabelaNOME: TStringField;
    C_TabelaTELEFONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTeste1: TDMTeste1;

implementation

{$R *.dfm}

uses DM_Projeto;

end.
