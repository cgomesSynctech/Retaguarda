unit DM_Indicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMIndicacao = class(TDMManutencao)
    C_TabelaID: TIntegerField;
    C_TabelaNOME: TStringField;
    C_TabelaPROFISSAO: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaFONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMIndicacao: TDMIndicacao;

implementation
uses DM_Projeto; 

{$R *.dfm}

end.
