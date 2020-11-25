unit DM_CidadesBristol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMCidadesBristol = class(TDMManutencao)
    C_TabelaCIDADE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaUF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCidadesBristol: TDMCidadesBristol;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
