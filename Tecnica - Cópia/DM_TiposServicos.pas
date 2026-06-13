unit DM_TiposServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTiposServicos = class(TDMManutencao)
    C_TabelaTIPOSERVICO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposServicos: TDMTiposServicos;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
