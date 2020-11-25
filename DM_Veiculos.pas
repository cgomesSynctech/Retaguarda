unit DM_Veiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMVeiculos = class(TDMManutencao)
    C_TabelaVEICULO: TIntegerField;
    C_TabelaPLACA: TStringField;         
    C_TabelaCHASSI: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCAPACIDADE: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMVeiculos: TDMVeiculos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMVeiculos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMVeiculos := Self;
end;

end.
