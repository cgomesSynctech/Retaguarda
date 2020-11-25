unit DM_Pontuacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPontuacoes = class(TDMManutencao)
    C_TabelaPONTUACAO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaINICIO: TDateField;
    C_TabelaFIM: TDateField;
    C_TabelaFATORPONTO: TBCDField;
    C_TabelaMINIMORESGATE: TBCDField;
    C_TabelaFECHADA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FecharPontuacao;
  end;

var
  DMPontuacoes: TDMPontuacoes;

implementation

uses DM_Projeto;

{$R *.dfm}

Procedure TDMPontuacoes.FecharPontuacao;
Begin
  With DMProjeto.Q_SQL Do Begin
{Implementar Fechamento caso seja necessario insert into pontuacaoresgates com as vendas}
  End;
end;

end.
