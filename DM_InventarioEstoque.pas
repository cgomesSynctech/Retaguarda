unit DM_InventarioEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMInventarioEstoque = class(TDMManutencao)
    C_TabelaDATA: TDateField;
    C_TabelaESTOQUEANTERIOR: TBCDField;
    C_TabelaENTRADAS: TBCDField;
    C_TabelaSAIDAS: TBCDField;
    C_TabelaESTOQUE: TBCDField;
    C_TabelaCUSTOMEDIO: TBCDField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCODIGO: TStringField;
    C_TabelaITEM: TIntegerField;
    C_TabelaINVENTARIO: TIntegerField;
    C_TabelaEMPRESA: TIntegerField;
    C_TabelaULTIMOFORNECEDOR: TIntegerField;
    C_TabelaFORNECPREFERENCIA: TIntegerField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMInventarioEstoque: TDMInventarioEstoque;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMInventarioEstoque.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaEmpresa.Value := -1;
  C_TabelaULTIMOFORNECEDOR.Value := -9;
  C_TabelaFORNECPREFERENCIA.Value := -9;
end;

end.
