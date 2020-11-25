unit DM_Embalagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEmbalagem = class(TDMManutencao)
    C_TabelaSAIDA: TIntegerField;
    C_TabelaNUMERO: TStringField;
    C_TabelaEMBALAGENS: TIntegerField;
    C_TabelaTOTAL: TFloatField;
    C_TabelaNOME: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaDATA: TDateField;

  private
    { Private declarations }
  public

    { Public declarations }
  end;
    function GetDadosSaida(pedido: string) : Currency ;
var
  DMEmbalagem: TDMEmbalagem;

implementation
uses DM_Projeto ;

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
