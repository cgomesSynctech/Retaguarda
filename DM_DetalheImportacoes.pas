unit DM_DetalheImportacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMDetalheImportacoes = class(TDMManutencao)
    C_TabelaDETALHEIMPORTACAO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaLOCALDESEMBARACO: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaCODIGOEXPORT: TStringField;
    Q_UFS: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    C_UFsDS: TDataSource;
    C_TabelalkUF: TStringField;
    C_TabelaDATADESEMBARACO: TDateField;
    C_TabelaTPVIATRANSP: TIntegerField;
    C_TabelaVAFRMMOPC: TFloatField;
    C_TabelaTPINTERMEDIARIO: TIntegerField;
    C_TabelaCNPJOPC: TStringField;
    C_TabelaUFTERCEIROOPC: TStringField;
    C_TabelaNADICAO: TIntegerField;
    C_TabelaNSEQADIC: TIntegerField;
    C_TabelaCFABRICANTE: TStringField;
    C_TabelaVDESCDI: TFloatField;
    C_TabelaNDRAWOPC: TStringField;
    C_TabelaVBC: TBCDField;
    C_TabelaVDESPADU: TBCDField;
    C_TabelaVII: TBCDField;
    C_TabelaVIOF: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDetalheImportacoes: TDMDetalheImportacoes;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
