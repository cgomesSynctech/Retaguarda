unit DM_Embalagem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEmbalagem2 = class(TDMManutencao)
    C_TabelaSAIDA: TIntegerField;
    C_TabelaEMBALAGENS: TIntegerField;
    C_TabelaDESTINO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmbalagem2: TDMEmbalagem2;

implementation
uses Dm_projeto;
{$R *.dfm}

procedure TDMEmbalagem2.DataModuleCreate(Sender: TObject);
begin
  inherited;
     DMEmbalagem2 := Self;
     Q_Tabela.Open; 
end;

end.
