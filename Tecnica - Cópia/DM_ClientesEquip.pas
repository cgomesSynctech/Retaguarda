unit DM_ClientesEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;
 
type
  TDMClientesEquip = class(TDMManutencao)
    C_TabelaEQUIPAMENTO: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaNUMEROSERIE: TStringField;
    C_TabelaMODELO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaDATACOMPRA: TDateField;
    C_TabelaDIASGARANTIA: TIntegerField;
    C_TabelaNOTAFISCAL: TStringField;
    C_TabelaREVENDEDOR: TStringField;
    C_TabelaCPF_CNPJ: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClientesEquip: TDMClientesEquip;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMClientesEquip.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMClientesEquip := Self;
end;

end.
