unit DM_TermosContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTermosContratos = class(TDMManutencao)
    C_TabelaTERMOCONTRATO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaTITULO: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTermosContratos: TDMTermosContratos;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDMTermosContratos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDesativado.Value := 'N';
end;

procedure TDMTermosContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTermosContratos := self;
end;

end.
