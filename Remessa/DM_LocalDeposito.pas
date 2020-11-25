unit DM_LocalDeposito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, DBTables;

type
  TDMLocalDeposito = class(TDMManutencao)
    Q_LookUFS: TIBQuery;
    Q_LookPais: TIBQuery;
    Q_UFsProvider: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    Q_PaisProvider: TDataSetProvider;
    C_Pais: TClientDataSet;
    C_PaisPAIS: TIntegerField;
    C_PaisDESCRICAO: TStringField;
    C_PaisDS: TDataSource;
    C_UFsDS: TDataSource;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaCAIXAPOSTAL: TStringField;
    C_TabelaPAIS: TIntegerField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    C_TabelaFAX: TStringField;
    C_TabelaCELULAR: TStringField;
    C_TabelaCONTATO: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaTIPOATIVIDADE: TIntegerField;
    C_TabelaPLANOPAGAMENTO: TIntegerField;
    C_TabelaVENDEDOR: TIntegerField;
    C_TabelaLIMITECREDITO: TBCDField;
    C_TabelaTAXAVEL: TStringField;
    C_TabelaTAX: TIntegerField;
    C_TabelaEIN: TStringField;
    C_TabelaSSN: TStringField;
    C_TabelaTABELAPRECO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaEXIGIVEL1099: TStringField;
    C_TabelaTIPOENTREGA: TIntegerField;
    C_TabelaDATACADASTRO: TDateField;
    C_TabelaSITE: TStringField;
    C_TabelaOBS: TStringField;
    C_TabelaIMPORTACAO: TIntegerField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaCARGO: TIntegerField;
    C_TabelaLOGOTIPO: TStringField;
    C_TabelaJUROSFACTORY: TBCDField;
    C_TabelaTAXASFACTORY: TBCDField;
    C_TabelaMEMO_CHECK: TStringField;
    C_TabelaCREDITO: TBCDField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaNUMERO_REVENDA: TStringField;
    C_TabelaTIPO_FUNC: TStringField;
    C_TabelaDATANASC: TDateField;
    C_TabelaCAMPO01: TStringField;
    C_TabelaCAMPO02: TStringField;
    C_TabelaCAMPO03: TStringField;
    C_TabelaCAMPO04: TStringField;
    C_TabelaCAMPO05: TStringField;
    C_TabelaCAMPO06: TStringField;
    C_TabelaCAMPO07: TStringField;
    C_TabelaCAMPO08: TStringField;
    C_TabelaCAMPO09: TStringField;
    C_TabelaCAMPO10: TStringField;
    C_TabelaCOMISSAO: TBCDField;
    C_TabelaISVENDEDOR: TStringField;
    C_TabelaCONTAPAGAMENTO: TIntegerField;
    C_TabelalkUF: TStringField;
    C_TabelalkPais: TStringField;
    C_TabelaCONTADESPESAS: TIntegerField;
    Q_TabelaFAVORECIDO: TIntegerField;
    Q_TabelaCODIGO: TIBStringField;
    Q_TabelaNOME: TIBStringField;
    Q_TabelaRAZAO: TIBStringField;
    Q_TabelaENDERECO: TIBStringField;
    Q_TabelaCIDADE: TIBStringField;
    Q_TabelaUF: TIBStringField;
    Q_TabelaCEP: TIBStringField;
    Q_TabelaCAIXAPOSTAL: TIBStringField;
    Q_TabelaPAIS: TIntegerField;
    Q_TabelaFONE1: TIBStringField;
    Q_TabelaFONE2: TIBStringField;
    Q_TabelaFAX: TIBStringField;
    Q_TabelaCELULAR: TIBStringField;
    Q_TabelaCONTATO: TIBStringField;
    Q_TabelaEMAIL: TIBStringField;
    Q_TabelaTIPOFAVORECIDO: TIntegerField;
    Q_TabelaTIPOATIVIDADE: TIntegerField;
    Q_TabelaPLANOPAGAMENTO: TIntegerField;
    Q_TabelaVENDEDOR: TIntegerField;
    Q_TabelaLIMITECREDITO: TIBBCDField;
    Q_TabelaTAXAVEL: TIBStringField;
    Q_TabelaTAX: TIntegerField;
    Q_TabelaEIN: TIBStringField;
    Q_TabelaSSN: TIBStringField;
    Q_TabelaTABELAPRECO: TIntegerField;
    Q_TabelaDESATIVADO: TIBStringField;
    Q_TabelaEXIGIVEL1099: TIBStringField;
    Q_TabelaTIPOENTREGA: TIntegerField;
    Q_TabelaDATACADASTRO: TDateField;
    Q_TabelaSITE: TIBStringField;
    Q_TabelaOBS: TIBStringField;
    Q_TabelaIMPORTACAO: TIntegerField;
    Q_TabelaSITUACAO: TIBStringField;
    Q_TabelaCARGO: TIntegerField;
    Q_TabelaLOGOTIPO: TIBStringField;
    Q_TabelaJUROSFACTORY: TIBBCDField;
    Q_TabelaTAXASFACTORY: TIBBCDField;
    Q_TabelaFLOATINGFACTORY: TIBBCDField;
    Q_TabelaMEMO_CHECK: TIBStringField;
    Q_TabelaCREDITO: TIBBCDField;
    Q_TabelaCONTA: TIntegerField;
    Q_TabelaNUMERO_REVENDA: TIBStringField;
    Q_TabelaTIPO_FUNC: TIBStringField;
    Q_TabelaDATANASC: TDateField;
    Q_TabelaCAMPO01: TIBStringField;
    Q_TabelaCAMPO02: TIBStringField;
    Q_TabelaCAMPO03: TIBStringField;
    Q_TabelaCAMPO04: TIBStringField;
    Q_TabelaCAMPO05: TIBStringField;
    Q_TabelaCAMPO06: TIBStringField;
    Q_TabelaCAMPO07: TIBStringField;
    Q_TabelaCAMPO08: TIBStringField;
    Q_TabelaCAMPO09: TIBStringField;
    Q_TabelaCAMPO10: TIBStringField;
    Q_TabelaCOMISSAO: TIBBCDField;
    Q_TabelaISVENDEDOR: TIBStringField;
    Q_TabelaCONTAPAGAMENTO: TIntegerField;
    Q_TabelaCONTADESPESAS: TIntegerField;
    Q_TabelaNOME_CLIENTE: TIBStringField;
    C_TabelaNOME_CLIENTE: TStringField;
    Q_Depositos: TIBQuery;
    upDepositos: TIBUpdateSQL;
    C_Deposito: TClientDataSet;
    C_TabelaQ_Depositos: TDataSetField;
    dsDeposito: TDataSource;
    Q_Bancos: TIBQuery;
    Q_BancosFAVORECIDO: TIntegerField;
    Q_BancosNOME: TIBStringField;
    C_Bancos: TClientDataSet;
    PBancos: TDataSetProvider;
    C_BancosFAVORECIDO: TIntegerField;
    C_BancosNOME: TStringField;
    C_DepositoRECEPTORDEPOSITO: TIntegerField;
    C_DepositoRECEPTOR: TIntegerField;
    C_DepositoDESCRICAO: TStringField;
    C_DepositoCONTA: TStringField;
    C_DepositoAGENCIA: TStringField;
    C_DepositoBANCO: TIntegerField;
    C_DepositoOBS: TStringField;
    C_DepositocbBanco: TStringField;
    C_DepositoFAVORECIDO: TIntegerField;
    C_DepositoPADRAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_DepositoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    nSeq : Integer;
  public
    nCliente: integer;
    procedure GeraCodigo;
  end;

var
  DMLocalDeposito: TDMLocalDeposito;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMLocalDeposito.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMLocalDeposito := self;
  nSeq := 0;
  nCliente := 0;
end;

procedure TDMLocalDeposito.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TabelaDataCadastro.Value := DMProjeto.dDataSistema;
  C_TabelaTIPOFAVORECIDO.Value := 8;
  C_TabelaTAXAVEL.Value := 'N';
  C_TabelaDESATIVADO.Value := 'N';
  C_TabelaEXIGIVEL1099.Value := 'N';
end;

procedure TDMLocalDeposito.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoLocalDeposito';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  if Direita(C_TabelaCODIGO.Value,1)='-' then begin
    xCasas := 6;
    xID := DMProjeto.NextID(copy(C_TabelaCODIGO.Value,1,Pos('-',C_TabelaCODIGO.Value)-1),1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := C_TabelaCODIGO.Value+AdicionarStr(IntToStr(xID),'0',xCasas);
  end else if Trim(C_TabelaCODIGO.Value)='' then begin
    xCasas := 6;
    xID := DMProjeto.NextID(sNomeDoCampo,1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := AdicionarStr(IntToStr(xID),'0',xCasas);
  end;
end;

procedure TDMLocalDeposito.C_DepositoNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nSeq);
  DataSet.FieldByname('ReceptorDeposito').AsInteger := nSeq;
  DataSet.FieldByname('Padrao').AsString := 'N';
//  DataSet.FieldByname('Receptor').AsInteger := C_Tabela.FieldByname('Favorecido').AsInteger;
end;

end.
