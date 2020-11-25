unit DM_MensagensOperacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMMensagensOperacoes = class(TDMManutencao)
    C_TabelaMENSAGEMOPERACAO: TIntegerField;
    C_TabelaTIPO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMensagensOperacoes: TDMMensagensOperacoes;

implementation
  Uses DM_Projeto;

{$R *.dfm}

procedure TDMMensagensOperacoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMMensagensOperacoes := self;
end;

procedure TDMMensagensOperacoes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTipo.Value := 'V';
end;

end.
 