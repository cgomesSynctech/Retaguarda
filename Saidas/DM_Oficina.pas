unit DM_Oficina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMOficina = class(TDMManutencao)
    C_TabelaID: TIntegerField;
    C_TabelaIDSAIDA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaESTADOEQUIPAMENTO: TStringField;
    C_TabelaDATAENTRADA: TDateField;
    C_TabelaHORAENTRADA: TTimeField;
    C_TabelaDATAENTREGA: TDateField;
    C_TabelaHORAENTREGA: TTimeField;
    C_TabelaEMOFICINA: TStringField;
    C_TabelaSERVICOPRONTO: TStringField;
    Q_Mecanicos: TIBQuery;
    P_Mecanicos: TDataSetProvider;
    C_Mecanicos: TClientDataSet;
    C_TabelaMECANICO: TIntegerField;
    C_MecanicosFAVORECIDO: TIntegerField;
    C_MecanicosMECANICO: TStringField;
    C_TabelalkMecanico: TStringField;
    C_TabelaFINALIZADO: TStringField;
    Q_Vendedor: TIBQuery;
    C_Vendedor: TClientDataSet;
    P_Vendedor: TDataSetProvider;
    C_VendedorFAVORECIDO: TIntegerField;
    C_VendedorVENDEDOR: TStringField;
    C_TabelaVENDEDOR: TIntegerField;
    C_TabelalkVendedor: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOficina: TDMOficina;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMOficina.DataModuleCreate(Sender: TObject);
begin
  inherited;
    DMOficina := Self;
end;

end.
