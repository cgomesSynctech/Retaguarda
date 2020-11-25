unit DM_Checks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMChecks = class(TDMManutencao)
    Q_SQL: TIBQuery;
    C_TabelaCHECKEX: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaBANCO: TStringField;
    C_TabelaCHEQUEINI: TStringField;
    C_TabelaDVINI: TStringField;
    C_TabelaCHEQUEFIM: TStringField;
    C_TabelaDVFIM: TStringField;
    C_TabelaVALORCHEQUEINI: TBCDField;
    C_TabelaDATACHEQUEINI: TDateField;
    C_TabelaCONSULTA: TStringField;
    C_TabelaDATACONSULTA: TDateField;
    C_TabelaHORACONSULTA: TTimeField;
    C_TabelaNOMEBANCO: TStringField;
    C_TabelaSTATUSBANCO: TStringField;
    C_TabelaNOMERF: TStringField;
    C_TabelaDATARF: TDateField;
    C_TabelaSITUACAOCPF: TStringField;
    C_TabelaREG02: TStringField;
    C_TabelaR02MSG: TStringField;
    C_TabelaREG04: TStringField;
    C_TabelaR04QTD: TIntegerField;
    C_TabelaR04DATAANTIGA: TDateField;
    C_TabelaR04DATARECENTE: TDateField;
    C_TabelaR04MODALIDADE: TStringField;
    C_TabelaR04VALOR: TBCDField;
    C_TabelaR04ORIGEM: TStringField;
    C_TabelaR04LOJA: TStringField;
    C_TabelaREG06: TStringField;
    C_TabelaR06MSG: TStringField;
    C_TabelaREG08: TStringField;
    C_TabelaR08DATARECENTE: TDateField;
    C_TabelaR08MODALIDADE: TStringField;
    C_TabelaR08AVALISTA: TStringField;
    C_TabelaR08VALOR: TBCDField;
    C_TabelaR08CONTRATO: TStringField;
    C_TabelaR08ORIGEM: TStringField;
    C_TabelaREG10: TStringField;
    C_TabelaR10TOTAL: TIntegerField;
    C_TabelaR10DATAANTIGA: TDateField;
    C_TabelaR10DATARECENTE: TDateField;
    C_TabelaREG12: TStringField;
    C_TabelaR12MSG: TStringField;
    C_TabelaREG14: TStringField;
    C_TabelaR14QUANTIDADE: TIntegerField;
    C_TabelaR14DATARECENTE: TDateField;
    C_TabelaR14BANCO: TStringField;
    C_TabelaR14BANCONOME: TStringField;
    C_TabelaR14AGENCIA: TStringField;
    C_TabelaR14LOJA: TStringField;
    C_TabelaREG16: TStringField;
    C_TabelaR16MSG: TStringField;
    C_TabelaREG18: TStringField;
    C_TabelaR18QUANTIDADE: TIntegerField;
    C_TabelaR18DATARECENTE: TDateField;
    C_TabelaR18BANCO: TStringField;
    C_TabelaR18AGENCIA: TStringField;
    C_TabelaR18BANCONOME: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaREG20: TStringField;
    C_TabelaR20MSG: TStringField;
    C_TabelaREG22: TStringField;
    C_TabelaR22BANCO: TStringField;
    C_TabelaR22AGENCIA: TStringField;
    C_TabelaR22CONTA: TStringField;
    C_TabelaR22CHEQUEINI: TStringField;
    C_TabelaR22CHEQUEFIM: TStringField;
    C_TabelaR22MOTIVO: TStringField;
    C_TabelaR22DATA: TDateField;
    C_TabelaR22HORA: TTimeField;
    C_TabelaR22FONTE: TStringField;
    C_TabelaREG24: TStringField;
    C_TabelaR24MSG: TStringField;
    C_TabelaREG26: TStringField;
    C_TabelaR26BANCO: TStringField;
    C_TabelaR26AGENCIA: TStringField;
    C_TabelaR26CONTA: TStringField;
    C_TabelaR26CHEQUEINI: TStringField;
    C_TabelaR26CHEQUEFIM: TStringField;
    C_TabelaR26MOTIVO: TStringField;
    C_TabelaR26DATA: TDateField;
    C_TabelaR26FONTE: TStringField;
    C_TabelaREG28: TStringField;
    C_TabelaR28MSG: TStringField;
    Q_Relatorio: TIBQuery;
    C_Relatorio: TClientDataSet;
    P_Relatorio: TDataSetProvider;
    C_RelatorioDS: TDataSource;
    C_RelatorioCHECKEX: TIntegerField;
    C_RelatorioCLIENTE: TIntegerField;
    C_RelatorioBANCO: TStringField;
    C_RelatorioCHEQUEINI: TStringField;
    C_RelatorioDVINI: TStringField;
    C_RelatorioCHEQUEFIM: TStringField;
    C_RelatorioDVFIM: TStringField;
    C_RelatorioVALORCHEQUEINI: TBCDField;
    C_RelatorioDATACHEQUEINI: TDateField;
    C_RelatorioCONSULTA: TStringField;
    C_RelatorioDATACONSULTA: TDateField;
    C_RelatorioHORACONSULTA: TTimeField;
    C_RelatorioNOMEBANCO: TStringField;
    C_RelatorioSTATUSBANCO: TStringField;
    C_RelatorioNOMERF: TStringField;
    C_RelatorioDATARF: TDateField;
    C_RelatorioSITUACAOCPF: TStringField;
    C_RelatorioREG02: TStringField;
    C_RelatorioR02MSG: TStringField;
    C_RelatorioREG04: TStringField;
    C_RelatorioR04QTD: TIntegerField;
    C_RelatorioR04DATAANTIGA: TDateField;
    C_RelatorioR04DATARECENTE: TDateField;
    C_RelatorioR04MODALIDADE: TStringField;
    C_RelatorioR04VALOR: TBCDField;
    C_RelatorioR04ORIGEM: TStringField;
    C_RelatorioR04LOJA: TStringField;
    C_RelatorioREG06: TStringField;
    C_RelatorioR06MSG: TStringField;
    C_RelatorioREG08: TStringField;
    C_RelatorioR08DATARECENTE: TDateField;
    C_RelatorioR08MODALIDADE: TStringField;
    C_RelatorioR08AVALISTA: TStringField;
    C_RelatorioR08VALOR: TBCDField;
    C_RelatorioR08CONTRATO: TStringField;
    C_RelatorioR08ORIGEM: TStringField;
    C_RelatorioREG10: TStringField;
    C_RelatorioR10TOTAL: TIntegerField;
    C_RelatorioR10DATAANTIGA: TDateField;
    C_RelatorioR10DATARECENTE: TDateField;
    C_RelatorioREG12: TStringField;
    C_RelatorioR12MSG: TStringField;
    C_RelatorioREG14: TStringField;
    C_RelatorioR14QUANTIDADE: TIntegerField;
    C_RelatorioR14DATARECENTE: TDateField;
    C_RelatorioR14BANCO: TStringField;
    C_RelatorioR14BANCONOME: TStringField;
    C_RelatorioR14AGENCIA: TStringField;
    C_RelatorioR14LOJA: TStringField;
    C_RelatorioREG16: TStringField;
    C_RelatorioR16MSG: TStringField;
    C_RelatorioREG18: TStringField;
    C_RelatorioR18QUANTIDADE: TIntegerField;
    C_RelatorioR18DATARECENTE: TDateField;
    C_RelatorioR18BANCO: TStringField;
    C_RelatorioR18AGENCIA: TStringField;
    C_RelatorioR18BANCONOME: TStringField;
    C_RelatorioREG20: TStringField;
    C_RelatorioR20MSG: TStringField;
    C_RelatorioREG22: TStringField;
    C_RelatorioR22BANCO: TStringField;
    C_RelatorioR22AGENCIA: TStringField;
    C_RelatorioR22CONTA: TStringField;
    C_RelatorioR22CHEQUEINI: TStringField;
    C_RelatorioR22CHEQUEFIM: TStringField;
    C_RelatorioR22MOTIVO: TStringField;
    C_RelatorioR22DATA: TDateField;
    C_RelatorioR22HORA: TTimeField;
    C_RelatorioR22FONTE: TStringField;
    C_RelatorioREG24: TStringField;
    C_RelatorioR24MSG: TStringField;
    C_RelatorioREG26: TStringField;
    C_RelatorioR26BANCO: TStringField;
    C_RelatorioR26AGENCIA: TStringField;
    C_RelatorioR26CONTA: TStringField;
    C_RelatorioR26CHEQUEINI: TStringField;
    C_RelatorioR26CHEQUEFIM: TStringField;
    C_RelatorioR26MOTIVO: TStringField;
    C_RelatorioR26DATA: TDateField;
    C_RelatorioR26FONTE: TStringField;
    C_RelatorioREG28: TStringField;
    C_RelatorioR28MSG: TStringField;
    C_RelatorioNOME: TStringField;
    C_RelatorioCPF_CNPJ: TStringField;
    C_RelatorioPESSOA_FJ: TStringField;
    P_Cheques: TDataSetProvider;
    C_Cheques: TClientDataSet;
    Q_Cheques: TIBQuery;
    C_ChequesIDDOC: TIntegerField;
    C_TabelaCPF: TStringField;
    C_RelatorioCPF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Id:integer;
  end;

var
  DMChecks: TDMChecks;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMChecks.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMChecks := Self;
end;

procedure TDMChecks.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaConsulta.Value := 'CH';
end;

procedure TDMChecks.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
begin
  inherited;
  Id := C_TabelaCheckEx.Value;
end;

end.
