unit dm_Embalagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEmbalagem = class(TDMManutencao)
    C_TabelaSAIDA: TIntegerField;
    C_TabelaTOTAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

    function GetDadosSaida(pedido: string) : Currency ;
var
  DMEmbalagem: TDMEmbalagem;

implementation
uses DM_projeto;
{$R *.dfm}




function GetDadosSaida(pedido: string) : Currency ;
  begin
   with DMEmbalagem.Q_Tabela do begin
     Close;
     ParamByName('NunPedido').AsString := pedido ;
     Open ;
     Result := fieldbyname('total').ascurrency;
    end;

end;
end.
