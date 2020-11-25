unit DM_Factory;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
    IBUpdateSQL, Db, IBQuery;

type
    TDMFactory = class(TDMManutencao)
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
        C_TabelaCOMISSAO: TBCDField;
        C_TabelaISVENDEDOR: TStringField;
        C_TabelaCONTAPAGAMENTO: TIntegerField;
        C_TabelaCONTADESPESAS: TIntegerField;
        C_TabelaFLOATINGFACTORY: TBCDField;
        Q_UF: TIBQuery;
        C_UF: TClientDataSet;
        P_UF: TDataSetProvider;
        C_UFUF: TStringField;
        C_UFDESCRICAO: TStringField;
        C_TabelalkUF: TStringField;
        C_TabelaEMPRESA: TIntegerField;
        Q_ContaDespesas: TIBQuery;
        P_ContaDespesas: TDataSetProvider;
        C_ContaDespesas: TClientDataSet;
        C_ContaDespesasCONTA: TIntegerField;
        C_ContaDespesasDESCRICAO: TStringField;
        C_ContaDespesasDESCTIPO: TStringField;
        C_ContaDespesasSALDO: TBCDField;
        C_ContaDespesasCONTAPAI: TIntegerField;
        C_ContaDespesasCODIGOREDUZIDO: TStringField;
        C_ContaDespesasCODIGOCONTA: TStringField;
        C_ContaDespesasTIPOCONTA: TIntegerField;
        C_ContaDespesasDS: TDataSource;
        C_TabelalkpContaDespesa: TStringField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasCODIGOCONTA: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasDS: TDataSource;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    DMFactory: TDMFactory;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMFactory.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMFactory := self;
    C_ContaDespesas.close;
    C_ContaDespesas.open;
end;

procedure TDMFactory.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaEmpresa.Value := -1;
    C_TabelaTipoFavorecido.Value := 5;
    C_TabelaDesativado.Value := 'N';
    C_TabelaDataCadastro.Value := DMProjeto.dDataSistema;
    C_TabelaIsVendedor.Value := 'M';
    C_TabelaFloatingFactory.Value := 0;
end;

end.

