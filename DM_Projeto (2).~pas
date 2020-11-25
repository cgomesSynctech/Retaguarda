unit DM_Projeto;
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_PROJETO, DlgMsg, IBDatabase, T_AutorizacaoDialog, Db,
    IBCustomDataSet, IBQuery, IBUpdateSQL, Provider, DBClient, Registry,
    TS_ModuloStyle, ppRegion, ppCtrls, ppClass, ppReport, ppTypes,
    IBStoredProc, dxCntner, ImgList, ppRichTx, IBSQL, Variants, ppViewr, {ECF,}
    IBServices, TDM_Manutencao, DateUtils, ZRCtrls, IB,
    {PAF}
    FuncoesPAF, RegAuxiliar, Sintegra, Axexo_VI, RegReducaoZ, RegReducaoZ_R06,
    OleServer, PDFCreatorPilotLib_TLB;
type
    TpArray = array[1..16] of string;

type
    TabCores = record
        Status: Integer;
        Cor: TColor;
        Descricao: string;
    end;

    TPositionProc = procedure(Pos, Max: Integer) of object;

    TDMProjeto = class(TDMProject)
        IBT_Auditoria: TIBTransaction;
        msClientes: TTS_ModuloStyle;
        msAgenda: TTS_ModuloStyle;
        esFinanceiro: TdxEditStyleController;
        esFornecedores: TdxEditStyleController;
        esAgenda: TdxEditStyleController;
        esClientes: TdxEditStyleController;
        esItens: TdxEditStyleController;
        esCaixa: TdxEditStyleController;
        esContabil: TdxEditStyleController;
        esRemessa: TdxEditStyleController;
        esGeral: TdxEditStyleController;
        msFinanceiro: TTS_ModuloStyle;
        msFornecedores: TTS_ModuloStyle;
        msItens: TTS_ModuloStyle;
        msCaixa: TTS_ModuloStyle;
        msContabil: TTS_ModuloStyle;
        msRemessa: TTS_ModuloStyle;
        msGeral: TTS_ModuloStyle;
        Q_Contabil: TIBQuery;
        esFuncionarios: TdxEditStyleController;
        msFuncionarios: TTS_ModuloStyle;
        Q_Produtos: TIBQuery;
        esCompany: TdxEditStyleController;
        msCompany: TTS_ModuloStyle;
        C_LocalizarItensDESCONTOMAXIMOGRUPO: TBCDField;
        C_LocalizarItensDESCFABRICANTE: TStringField;
        C_LocalizarItensCONTROLEVALIDADE: TStringField;
        C_LocalizarItensITEM: TIntegerField;
        C_LocalizarItensTIPOITEM: TIntegerField;
        C_LocalizarItensCODIGO: TStringField;
        C_LocalizarItensDESCRICAOCOMPRA: TStringField;
        C_LocalizarItensGRUPO: TIntegerField;
        C_LocalizarItensDESCRICAO: TStringField;
        C_LocalizarItensTAXAVEL: TStringField;
        C_LocalizarItensULTIMOFORNECEDOR: TIntegerField;
        C_LocalizarItensQTDEMINIMO: TBCDField;
        C_LocalizarItensQTDEMAXIMO: TBCDField;
        C_LocalizarItensPONTOPEDIDO: TBCDField;
        C_LocalizarItensPERCENTUAL: TBCDField;
        C_LocalizarItensAPLICARANTESTAX: TStringField;
        C_LocalizarItensUNIDADE: TStringField;
        C_LocalizarItensDESATIVADO: TStringField;
        C_LocalizarItensESTOQUE: TBCDField;
        C_LocalizarItensIMPORTACAO: TIntegerField;
        C_LocalizarItensCOMISSAO: TBCDField;
        C_LocalizarItensDESCONTOMAXIMO: TBCDField;
        C_LocalizarItensTAXINCLUSO: TStringField;
        C_LocalizarItensCONTA_VENDA: TIntegerField;
        C_LocalizarItensCONTA_CUSTO: TIntegerField;
        C_LocalizarItensCONTA_INVENT: TIntegerField;
        C_LocalizarItensFABRICANTE: TIntegerField;
        C_LocalizarItensBALANCO: TStringField;
        C_LocalizarItensCAMPO01: TStringField;
        C_LocalizarItensCAMPO02: TStringField;
        C_LocalizarItensCAMPO03: TStringField;
        C_LocalizarItensCAMPO04: TStringField;
        C_LocalizarItensCAMPO05: TStringField;
        C_LocalizarItensCAMPO06: TStringField;
        C_LocalizarItensISITEMCOMPRA: TStringField;
        C_LocalizarItensCAMPO07: TStringField;
        C_LocalizarItensCAMPO08: TStringField;
        C_LocalizarItensPTAXINCLUSO: TBCDField;
        C_LocalizarItensCAMPO09: TStringField;
        C_LocalizarItensCUSTODESPESAS: TBCDField;
        C_LocalizarItensCAMPO10: TStringField;
        C_LocalizarItensFOTO: TStringField;
        C_LocalizarItensPROMOCAO: TStringField;
        C_LocalizarItensFATORLUCRO: TFloatField;
        C_LocalizarItensHASCHILDREN: TStringField;
        C_LocalizarItensREFERENCIA: TStringField;
        C_LocalizarItensSEMLUCRO: TFloatField;
        C_LocalizarItensDATACADASTRO: TDateField;
        C_LocalizarItensTEMPOMEDIOVALIDADE: TIntegerField;
        C_LocalizarItensFORNECPREFERENCIA: TIntegerField;
        C_LocalizarItensREVENDA: TStringField;
        C_LocalizarItensULTIMACOMPRA: TDateField;
        C_LocalizarItensCOMPENSACUSTO: TFloatField;
        C_LocalizarItensCOMLUCRO: TFloatField;
        C_LocalizarItensDESCTIPOITEM: TStringField;
        C_LocalizarItensPRECOMANUAL: TStringField;
        C_LocalizarItensDESCUNIDADE: TStringField;
        C_LocalizarItensUNIDADEINTEIRA: TStringField;
        C_LocalizarItensDESCRICAOGRUPO: TStringField;
        C_LocalizarFavFAVORECIDO: TIntegerField;
        C_LocalizarFavCODIGO: TStringField;
        C_LocalizarFavNOME: TStringField;
        C_LocalizarFavRAZAO: TStringField;
        C_LocalizarFavENDERECO: TStringField;
        C_LocalizarFavCIDADE: TStringField;
        C_LocalizarFavUF: TStringField;
        C_LocalizarFavCEP: TStringField;
        C_LocalizarFavCAIXAPOSTAL: TStringField;
        C_LocalizarFavPAIS: TIntegerField;
        C_LocalizarFavFONE1: TStringField;
        C_LocalizarFavFONE2: TStringField;
        C_LocalizarFavFAX: TStringField;
        C_LocalizarFavCELULAR: TStringField;
        C_LocalizarFavCONTATO: TStringField;
        C_LocalizarFavEMAIL: TStringField;
        C_LocalizarFavTIPOFAVORECIDO: TIntegerField;
        C_LocalizarFavTIPOATIVIDADE: TIntegerField;
        C_LocalizarFavPLANOPAGAMENTO: TIntegerField;
        C_LocalizarFavVENDEDOR: TIntegerField;
        C_LocalizarFavLIMITECREDITO: TBCDField;
        C_LocalizarFavTAXAVEL: TStringField;
        C_LocalizarFavTAX: TIntegerField;
        C_LocalizarFavEIN: TStringField;
        C_LocalizarFavSSN: TStringField;
        C_LocalizarFavTABELAPRECO: TIntegerField;
        C_LocalizarFavDESATIVADO: TStringField;
        C_LocalizarFavEXIGIVEL1099: TStringField;
        C_LocalizarFavTIPOENTREGA: TIntegerField;
        C_LocalizarFavDATACADASTRO: TDateField;
        C_LocalizarFavSITE: TStringField;
        C_LocalizarFavOBS: TStringField;
        C_LocalizarFavIMPORTACAO: TIntegerField;
        C_LocalizarFavSITUACAO: TStringField;
        C_LocalizarFavCARGO: TIntegerField;
        C_LocalizarFavLOGOTIPO: TStringField;
        C_LocalizarFavJUROSFACTORY: TBCDField;
        C_LocalizarFavTAXASFACTORY: TBCDField;
        C_LocalizarFavFLOATINGFACTORY: TBCDField;
        C_LocalizarFavMEMO_CHECK: TStringField;
        C_LocalizarFavCREDITO: TBCDField;
        C_LocalizarFavCONTA: TIntegerField;
        C_LocalizarFavNUMERO_REVENDA: TStringField;
        C_LocalizarFavTIPO_FUNC: TStringField;
        C_LocalizarFavDATANASC: TDateField;
        C_LocalizarFavCAMPO01: TStringField;
        C_LocalizarFavCAMPO02: TStringField;
        C_LocalizarFavCAMPO03: TStringField;
        C_LocalizarFavCAMPO04: TStringField;
        C_LocalizarFavCAMPO05: TStringField;
        C_LocalizarFavCAMPO06: TStringField;
        C_LocalizarFavCAMPO07: TStringField;
        C_LocalizarFavCAMPO08: TStringField;
        C_LocalizarFavCAMPO09: TStringField;
        C_LocalizarFavCAMPO10: TStringField;
        C_LocalizarFavCOMISSAO: TBCDField;
        C_LocalizarFavISVENDEDOR: TStringField;
        C_LocalizarFavCONTAPAGAMENTO: TIntegerField;
        C_LocalizarFavCONTADESPESAS: TIntegerField;
        C_LocalizarFavULTCOMPRA: TDateField;
        C_LocalizarFavULTVALORCOMPRA: TBCDField;
        C_LocalizarFavPERIODICIDADE: TStringField;
        C_LocalizarFavDATAADIMISSAO: TDateField;
        C_LocalizarFavDATADEMISSAO: TDateField;
        C_LocalizarFavDATAAUMENTO: TDateField;
        C_LocalizarFavAGRUPARPORITEM: TStringField;
        C_LocalizarFavRELACIONAMENTO: TIntegerField;
        C_LocalizarFavDESCRICAORELAC: TStringField;
        C_LocalizarFavINICIOSEMANA: TIntegerField;
        C_LocalizarFavDIASPERIODO: TIntegerField;
        C_LocalizarFavQUALIDADE: TIntegerField;
        C_LocalizarFavZONA: TIntegerField;
        C_LocalizarFavGRUPOCLIENTE: TIntegerField;
        C_LocalizarFavGRAURELAC: TIntegerField;
        C_LocalizarFavULTIMOPGTO: TDateField;
        C_LocalizarFavULTIMOVALORPAGO: TBCDField;
        C_LocalizarItensFOTOGRUPO: TStringField;
        C_LocalizarItensUNIDADEENTRADA: TStringField;
        C_LocalizarItensUNIDADECARGA: TStringField;
        C_LocalizarItensUNIDADEVAREJO: TStringField;
        Q_Payrolls: TIBQuery;
        P_Payrolls: TDataSetProvider;
        C_Payrolls: TClientDataSet;
        C_PayrollsPAYROLL: TIntegerField;
        C_PayrollsDESCRICAO: TStringField;
        C_PayrollsDATAINICIO: TDateField;
        C_PayrollsDATAFIM: TDateField;
        C_PayrollsVALORLIQUIDO: TBCDField;
        C_PayrollsVALORBRUTO: TBCDField;
        C_PayrollsDATAPAGAMENTO: TDateField;
        C_PayrollsNOME: TStringField;
        C_PayrollsCODIGO: TStringField;
        C_LocalizarItensULTQTDECOMPRA: TBCDField;
        C_LocalizarItensUNIDADEMINIMA: TIntegerField;
        StoreProcedure: TIBStoredProc;
        C_LocalizarItensPRECOCOMPRA: TFloatField;
        C_LocalizarItensPRI_CUSTOMEDIO: TFloatField;
        C_LocalizarItensPRI_CUSTOCONTABIL: TFloatField;
        C_LocalizarItensPRI_PRECOCOMPRA: TFloatField;
        C_LocalizarItensCUSTOPRODUTO: TFloatField;
        C_LocalizarItensPRECO: TBCDField;
        C_PayrollsSTATUS: TStringField;
        C_LocalizarItensFATORUNDVENDA: TFloatField;
        C_LocalizarItensFATORUNDCOMPRA: TFloatField;
        C_LocalizarItensicEstoqueVenda: TBCDField;
        C_LocalizarItensicEstoqueCompra: TBCDField;
        C_LocalizarItensPRECOPROMOCAO: TBCDField;
        C_LocalizarItensicPreco: TBCDField;
        C_LocalizarItensicPrecoMinimo: TBCDField;
        C_LocalizarItensicEmPromocao: TBooleanField;
        C_LocalizarItensicMinimo: TBCDField;
        C_LocalizarItensicPontoPedido: TBCDField;
        C_LocalizarItensicMaximo: TBCDField;
        C_LocalizarItensicMinimoCompra: TBCDField;
        C_LocalizarItensicPontoPedidoCompra: TBCDField;
        C_LocalizarItensicMaximoCompra: TBCDField;
        C_LocalizarItensicPrecoCompra: TBCDField;
        C_LocalizarItensicQuantidade: TBCDField;
        C_LocalizarItensicUltQtdCompra: TBCDField;
        C_LocalizarItensicCustoMedio: TBCDField;
        C_LocalizarItensicCustoContabil: TBCDField;
        C_LocalizarItensNomeFornPreferencia: TStringField;
        C_LocalizarItensNomeUltimoFornecedor: TStringField;
        C_LocalizarItensDESCRICAOCOMPLEMENTAR: TStringField;
        C_LocalizarItensDESCRICAOTECNICA: TStringField;
        C_LocalizarItensCST: TStringField;
        C_LocalizarItensREDUCAOCST: TBCDField;
        C_LocalizarItensIPICOMPRA: TBCDField;
        C_LocalizarItensIPIVENDA: TBCDField;
        C_LocalizarItensPESOBRUTO: TBCDField;
        C_LocalizarItensPESOLIQUIDO: TBCDField;
        C_LocalizarItensALIQICMS: TBCDField;
        C_LocalizarItensSITUACAOECF: TStringField;
        C_LocalizarItensTVA: TBCDField;
        C_LocalizarItensTVAFONTE: TBCDField;
        C_LocalizarFavCPF_CNPJ: TStringField;
        C_LocalizarFavINSCRICAO_EST: TStringField;
        C_LocalizarFavBAIRRO: TStringField;
        C_LocalizarFavPESSOA_FJ: TStringField;
        C_LocalizarFavFONTE: TStringField;
        C_LocalizarItensIDENTIFICACAO: TStringField;
        C_LocalizarItensULTIMAVENDA: TDateField;
        C_LocalizarItensESTOQUECONSIGSAIDA: TBCDField;
        C_LocalizarItensESTOQUECONSIGENTRADA: TBCDField;
        C_LocalizarItensSITUACAOECFGRUPO: TStringField;
        C_LocalizarItensCSTGRUPO: TStringField;
        C_LocalizarItensREDUCAOCSTGRUPO: TBCDField;
        C_LocalizarItensALIQICMSGRUPO: TBCDField;
        C_LocalizarItensCLASFISCAL: TStringField;
        C_LocalizarItensCODIGOBARRAS: TStringField;
        Q_Conversa: TIBQuery;
        C_LocalizarItensREDUCAOCSTENTRADA: TBCDField;
        C_LocalizarItensPERCUND: TBCDField;
        C_LocalizarItensPRECOMANUND: TBCDField;
        C_LocalizarItensicChaveUnica: TStringField;
        C_LocalizarItensUNDVENDA: TStringField;
        C_LocalizarItensPRECONORMAL: TBCDField;
        C_LocalizarItensFATORITEMUND: TFloatField;
        C_LocalizarItensPERCENTUALMINIMO: TBCDField;
        Q_Reimp: TIBQuery;
        C_Reimp: TClientDataSet;
        C_ReimpSAIDAITEM: TIntegerField;
        C_ReimpCODIGO: TStringField;
        C_ReimpDESCRICAO: TStringField;
        C_ReimpSITUACAOECF: TStringField;
        C_ReimpREDUCAOCST: TBCDField;
        C_ReimpALIQICMS: TBCDField;
        C_ReimpQUANTIDADE: TBCDField;
        C_ReimpPRECO: TFloatField;
        P_Reimp: TDataSetProvider;
        P_Pgtos: TDataSetProvider;
        Q_Pgtos: TIBQuery;
        C_Pgtos: TClientDataSet;
        C_PgtosESPECIE: TIntegerField;
        C_PgtosVALOR: TBCDField;
        Q_LocalizarEquip: TIBQuery;
        P_LocalizarEquip: TDataSetProvider;
        C_LocalizarEquip: TClientDataSet;
        C_LocalizarEquip_icSelecionado: TIntegerField;
        C_LocalizarEquipicChaveUnica: TIntegerField;
        C_LocalizarEquipicQuantidade: TBCDField;
        C_LocalizarEquipMODELO: TIntegerField;
        C_LocalizarEquipCODIGO: TStringField;
        C_LocalizarEquipDESCRICAO: TStringField;
        C_LocalizarEquipFABRICANTE: TIntegerField;
        C_LocalizarEquipDESCFABRICANTE: TStringField;
        C_LocalizarEquipMARCA: TIntegerField;
        C_LocalizarEquipMARCADESC: TStringField;
        C_LocalizarEquipTIPOEQUIPAMENTO: TIntegerField;
        C_LocalizarEquipTIPOEQUIPAMENTODESC: TStringField;
        C_LocalizarItensCUSTOMEDIO: TFloatField;
        C_LocalizarItensCUSTOCONTABIL: TFloatField;
        C_LocalizarItensGRUPOCOMISSAO: TIntegerField;
        C_LocalizarFavPERCDESCONTO: TBCDField;
        C_LocalizarItensINDEXADOR: TIntegerField;
        C_LocalizarItensLOCALIZACAO: TIntegerField;
        C_LocalizarItensESTOQUEINICIAL: TBCDField;
        C_LocalizarItensicEstoqueFiscal: TFloatField;
        C_LocalizarItensicDifEstoque: TFloatField;
        C_LocalizarItensESTOQUEFISCAL: TBCDField;
        Q_Validacao: TIBQuery;
        C_LocalizarItensDESCLOCALIZACAO: TStringField;
        C_LocalizarFavDESCTIPOENTREGA: TStringField;
        C_LocalizarItensIDTRIBFEDERAL: TIntegerField;
        C_LocalizarFavTIPOCOBRANCA: TIntegerField;
        C_LocalizarItensQTDEMBALAGEM: TFloatField;
        C_LocalizarItensDESCGRDCOMISSAO: TStringField;
        C_ReimpUNIDADE: TStringField;
        Q_GerarSaida: TIBQuery;
        P_GerarSaida: TDataSetProvider;
        C_GerarSaida: TClientDataSet;
        C_LocalizarFavCONSUMIDORFINAL: TStringField;
        C_LocalizarItensESTOQUEVOLUME: TBCDField;
        Q_SQL3: TIBQuery;
        C_LocalizarFavSENHA: TStringField;
        C_LocalizarFavDECRETO24755: TStringField;
        Q_R07: TIBQuery;
        Q_R06: TIBQuery;
        Q_R05: TIBQuery;
        Q_R04: TIBQuery;
        Q_R03: TIBQuery;
        Q_R02: TIBQuery;
        C_EmpresasFAVORECIDO: TIntegerField;
        C_EmpresasNOME: TStringField;
        C_EmpresasENDERECO: TStringField;
        C_EmpresasBAIRRO: TStringField;
        C_EmpresasCIDADE: TStringField;
        C_EmpresasUF: TStringField;
        C_EmpresasFONE1: TStringField;
        C_EmpresasFONE2: TStringField;
        C_EmpresasFAX: TStringField;
        C_EmpresasCEP: TStringField;
        C_EmpresasEMAIL: TStringField;
        C_EmpresasSITE: TStringField;
        C_EmpresasCPF_CNPJ: TStringField;
        C_EmpresasRAZAO: TStringField;
        C_LocalizarFavNRO: TStringField;
        C_LocalizarFavADDDIASPRAZO: TIntegerField;
        C_LocalizarItensABC: TStringField;
        C_LocalizarItensLEITURAATUAL: TBCDField;
        C_LocalizarItensLEITURAMAXIMA: TBCDField;
        C_LocalizarItensULTDESCONTO: TBCDField;
        C_LocalizarItensENCERRANTE: TStringField;
        C_LocalizarItensAGENDARCONTATO: TStringField;
        C_LocalizarItensPISCOFINS: TStringField;
        C_LocalizarItensEXPORTACAO: TStringField;
        C_LocalizarItensALIQPIS: TBCDField;
        C_LocalizarItensALIQCOFINS: TBCDField;
        C_LocalizarItensALIQIR: TBCDField;
        C_LocalizarItensALIQSS: TBCDField;
        C_LocalizarItensALIQIPI: TFloatField;
        C_LocalizarItensNCM: TStringField;
        C_LocalizarItensCSTPISCOFINS: TStringField;
        C_LocalizarItensALIQPISSAIDA: TFloatField;
        C_LocalizarItensALIQCOFINSSAIDA: TFloatField;
        C_LocalizarItensCSTPISCOFINSSAIDA: TStringField;
        C_LocalizarItensNATURAZARECEITAPISCOFINS: TIntegerField;
        C_LocalizarItensVINCULOCREDITOPISCOFINS: TStringField;
        C_LocalizarItensBASECREDITOPISCOFINS: TStringField;
        C_LocalizarItensEMPRESA: TIntegerField;
        Q_Auxiliar: TIBQuery;
        C_LocalizarItensCSTIPI: TStringField;
        DB_SyncOS: TIBDatabase;
        Q_ValidaCliente: TIBQuery;
        P_ValidaCliente: TDataSetProvider;
        IBT_SyncOS: TIBTransaction;
        P_Dados: TDataSetProvider;
        Q_Dados: TIBQuery;
        C_LocalizarEquipCOR: TStringField;
        C_LocalizarItensCUSTOMANUAL: TBCDField;
        C_LocalizarItensTABELAPRECO1: TBCDField;
        C_LocalizarItensTABELAPRECO2: TBCDField;
        C_LocalizarItensTABELAPRECO3: TBCDField;
    C_LocalizarItensCSTIPIENTRADA: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_LocalizarItensCalcFields(DataSet: TDataSet);
        procedure C_LocalizarFavCPF_CNPJGetText(Sender: TField;
            var Text: string; DisplayText: Boolean);
        procedure C_LocalizarEquipCalcFields(DataSet: TDataSet);
        procedure zrLabelBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure C_LocalizarItensNewRecord(DataSet: TDataSet);
    private
        nTentativas: Integer;
        bGravouSaida: Boolean;
        sCabEsquerdo, sCabDireito, sErroSaida: string;
        aStatusCores: array[1..20] of TabCores;
        CabecalhoLadoDireito: TppRichText;
        procedure Maximiza(Sender: TObject);
        procedure Atualiza(sender: TObject);
        // LegisFiscal   
        function AliqISS(sUF: string): single;
    public

        VersaoSistema: string;

        PAFObrigatorio: Boolean;
        MostrarMenuPAF: Boolean;
        nCasasDecimais: Integer;

        //EVERTON - APENAS CRIE OS PARAMETROS QUE EXISTEM NO PDV E NAO DEVERIAM SER UTILIZADOS NO RETAGUARDA
        sCaminhoTefResp, sCaminhoTefReq, sTipoTef, LinhasImpressaoTef: string;
        // Felipe - Apenas criado as variaveis que sao usadas no PDV e nao no Retaguarda
        nSubTotalItem, nValorItemCancelado, nSubTotalImpBematech: Currency;

        sCasasDecimais, sTabelasPreco: string;

        // LegisFiscal
        nICMSInterno: single;
        nPDV, nContaAtual, nIdItem: integer; //  nIdItem - usado para tela de produtos identificados (produtos com numero serial)
        sIdentificador: string; //Variavel sera Utilizada Para Identificar o Computador de Exportaçao
        nModeloECF: integer;
        bBematech25: Boolean;
        bTEF, bTimer, DesabilitaTeclado, bECFAtivo, bMovimentarProdutoIdentificado: boolean; //  bMovimentarProdutoIdentificado (usado para confirmar se é pra dar faturar ou dar entrada em produto identificado (numero serial)
        nISS: single;
        sTipoEmpresa, sSerialItem: string; //  sSerialItem - usado para tela de produtos Identificados (produtos com numero serial)
        nFuncionarioLogado: Integer; //nFuncionário de DMProject aponta agora para usuários;
        nIntervaloCodigo: integer;
        bSituacaoCaixa, bCaixa, bControleValidade, bControleValidadeAut, bVersaoFull, bPermitirOficina: boolean;    // bPermitirOficina (usado para utilizar a tela de Oficina)
        bFormatoAMPM: boolean;
        nMaxDescontoFunc, nQuantItem: Currency; //  nQuantItem - usado para tela de produtos identificados (produtos com numero serial)
        nTabelaPadraoFunc, nTipoMovPRFunc: Integer;
        bOrdemProducao: boolean;
        sNomeReservado: string;
        sEmail, sHost, sUserID: string;
        nMinutos: integer;
        sLastOpcoes, sLastMarks, sLastMarksDesc, sParametrosForm: string;
        sCabecalho: string;
        slHistorico, slIdItensIdentificados: TStringList;
        {Variaveis Financeiro}
        nFavEmpresa, nClienteSel: Integer;
        sItensSelec, sGruposSelec, sFabricSelec, sTabPrecoSelec: string;
        bCodigoContab, bNaoSalvarDifContab: boolean;
        slPermissoesTiposMov, slPermissoesTabPreco: TStringList;

        {PAF}
        PAFCampos: TCamposPAF;
        procedure ReducaoZ(datahora: string);
        procedure ReducaoZ_R06(denominacao: string);
        procedure ReducaoZ_R07(MeioPGTO: string; Valor: Currency);
        procedure AtualizarSintegra(path: string);
        procedure AtualizaMD5Itens(item: integer);
        function GetAliquotasZ(crz: string): TpArray;
        function VerificaMD5Itens(item: integer): Boolean;
        function GerarMovimentoPorECF(dtInicio, dtFim: TDateTime): Boolean;

        // LegisFiscal

        function GetPDVMaq: integer;
        function AliquotaEstado(sUF: string): single;
        function AliquotaEstadoExterno(sUF: string): single;
        function CST(sTipo, sCST: string; nAliqICMS, nReducao, nValor: currency): currency;
        function CSTIsentas(sCST: string): boolean;
        function CSTSubstTrib(sCST: string): boolean;
        function CSTReducao(sCST: string): boolean;
        procedure VerRecebimentos(Titulo: integer; Saida: integer; sFavorecido: string);
        procedure VerPagamentos(Duplicata: integer; Entrada: integer; sFavorecido: string);
        procedure AtualizaPermissoesTiposMovimento;
        procedure AtualizaPermissoesTabelasPreco;
        function PermissoesTabelasPreco(nTabelaPreco: integer; sTipo: string = ''; bSenha: boolean = false): boolean;
        function PermissoesTiposMovimento(nTipoMov: integer; bSenha: boolean = false): boolean;
        function TabelaHtml(bBorda: boolean; nWidth: integer; sCorCabecalho, sCorDados, sCabecalho, sDados: string; sAlinhamento: string = ''; sLargura: string = ''; nOsNmais: Integer = 0): string;
        function SetFator(Item: Integer; Descricao, Unidade: string; bRegistrar: boolean = true): double;
        function getUnidadeMinima(Item: integer): string;
        function PrecoDireto(Item: integer; Unidade: string; TabelaPreco: integer = 0): Currency;
        function GetPrecoItem(nItem: Integer; Unidade: string; nTabelaPreco: integer = 0): Currency;
        function getFatorUnidade(Item: integer; sUnidade: string): double;
        function AtualizaAcesso(TempdtTrava: string): boolean;
        function getCampoFavorecido(Fav: integer; Campo: string): Variant;
        function getCampoTabela(Tabela, CampoChave, Campo: string; ID: integer): Variant;
        procedure ValidaPrecosAutomaticos;
        procedure SincronizarLucros(Itens, Grupos, Fabrics, Condicoes: string);
        procedure SincronizarPrecosVenda(Itens, Grupos, Fabrics, Condicoes: string);
        procedure FatoresCustos(var MaiorComissao, DespesaFixa, EncargosCartoes, LucroPadrao, ImpostosFederais: Currency);
        function FatorCusto(NomeFator: string): Currency;
        function getPagoEsteAno(Funcionario: integer; PayRollItem: integer = 0): Currency;
        function GerarPlanoPgto(DataSet: TClientDataSet; Valor, ValorEntrada, Juros: Currency; Data: TDatetime;
            Plano: Integer; var Entrada, Parcelas: string): string;
        //    procedure ConfigurarImpressao( Link : TBasedxReportLink; sTitulo : string );
        procedure ImprimirRecibo(ID: integer; sWhere: string = ''; slParametros: string = ''; sParamConsulta: string = ''; sHaving: string = '');
        procedure ImprimirDocumentosSaida(Saida: integer; Empresa: integer; PDV: integer; bOpcoesImpressao: boolean = false);
        function getDescricaoMes(Mes: integer): string;
        function getMes(sMes: string): integer;
        function FormataEndereco(DataSet: TClientDataSet): string;
        function ChecaLembretes(nFav: integer): boolean;
        function GeraCodigoItem(sCodigo: string; nChave: integer): string;
        function GeraCodigoGrupo(sCodigo: string; nChave: integer): string;
        function GeraCodigoFabricante(sCodigo: string; nChave: integer): string;
        function GeraCodigoCargo(sCodigo: string; nChave: integer): string;
        function GeraCodigoCliente(sCodigo: string; nChave: integer): string;
        function GeraCodigoFornecedor(sCodigo: string; nChave: integer): string;
        function GeraCodigoConta(sCodigo: string; nChave: integer): string;
        function GeraCodigoFunc(sCodigo: string; nChave: integer): string;
        function AjusteItem(dData: TDateTime; nItem: integer; sUnid: string; nConta: integer; nQtde: double; nCusto: currency; sMotivo, sNumeroLote: string; dValidade: TDateTime): integer;
        function AtualizaAjusteItem(nAjuste: integer; dData: TDateTime; nItem, nConta: integer; nQtde: double; nCusto: currency; sMotivo, sUnid: string): integer;
        function Contabiliza(nOrigem: integer; dData: TDateTime; nIDGerador, nFavorecido, nContaDebito, nContaCredito: integer; nValor: currency; sNumero, sHistorico: string; nFlag_ID: integer = 0): integer;
        procedure CancelarLancamentos(sIDGerador: string);
        function DescricaoStatus(nStatus: Integer): string;
        function ContaPadrao(nID: integer): integer;
        function HistoricoPadraoOrigem(nID: integer): integer;
        function HistoricoPadrao(nID: integer): string;
        function TipoOrigem(sForm: string): integer; overload;
        function TipoOrigem(Tipo: integer): string; overload;
        function SaldoContaAtual(nID: integer; dData, dDataF: TDateTime): currency;
        function SaldoContaAtualPai(nID: integer; dData, dDataF: TDateTime): currency;
        function SaldoContaDebito(nID: integer; dData: TDateTime): currency;
        function SaldoContaCredito(nID: integer; dData: TDateTime): currency;
        function GetValores(nID: integer; nValor: currency): string;
        function getValoresSQL(sSQL, sCampo: string; sOutroCampo: string = ''): string;
        function CalcularNet(dDataI, dDataF: TDatetime): currency;
        function CalcularGrossProfit(dDataI, dDataF: TDatetime): currency;
        function VerificaExistenciaItem(nItem: integer; sTipo, sTexto: string): boolean;
        function VerificaExistenciaItensCodigos(sTexto: string): boolean;
        function ValidarCodigoItensUnidades(sCodigo: string): boolean;
        function VerificaExistenciaConta(nConta: integer; sTipo, sTexto: string): boolean;
        function getTelaGeradora(Tipo: integer): string;
        function getTelaFavorecido(Tipo: integer): string;
        procedure GravarDataset(cdsDataSet: TClientDataSet);
        function SetZero: string;
        function getDataServidor: TDateTime;
        function ConverteDataParametro(sData: string): TDatetime;
        function getEndereco(Favorecido: integer): string;
        function Gen_ID(Generator: string; bVisualizar: boolean = false): integer;
        procedure getStatusCores;
        function CorPadrao(nStatus: Integer): TColor;
        function IsFeriado(dData: TDateTime): boolean;
        function getInfoImpressao(ID: integer; sCampo: string = 'TipoCabecalho'; sMaq: string = 'N'): string;
        procedure ImprimirRelatorioFavorecido(Sender: TComponent; sTipo: string; nFavorecido: integer; bImpressora: boolean = false);
        procedure AtualizarClienteVenda(Favorecido: Integer; dData: TDateTime; Total: Currency;
            Endereco, Cidade, UF, CEP, Fone, Email: string);
        procedure AtualizarFornecedorCompra(Favorecido: Integer;
            Endereco, Cidade, UF, CEP, Email: string);
        function BaixaEstoque(nItem: Integer; sSinal: string; nQtde: double): boolean;
        function EstoqueItem(nItem: Integer; dData: TDateTime): Currency;
        procedure EstornarEstoqueSaida(Saida: Integer);
        procedure BaixarEstoqueSaida(Saida: Integer);
        procedure EstornarEstoqueEntrada(Entrada: Integer);
        procedure BaixarEstoqueEntrada(Entrada: Integer);
        function PrimeiroDiaUtil(DateRef: TDateTime; Inclusive: Boolean = true; Atraso: Boolean = false): TDateTime;
        function Comissao_Dia(nVendedor, nDoW: Integer): Currency;
        function CalcularComissao(Saida: string; SaidaItem: integer = 0; TotalDevolvido: Currency = 0): Currency;
        function CalcularComissoes(Vendedores: string; DataI, DataF: TDateTime;
            P: TPositionProc): Integer;
        function GravaMemorize(nOrigem: Integer; nId: Integer; sCodigo: string; sDescricao: string): Integer;
        procedure Memorize(Sender: TComponent; nOrigem: Integer; nId: Integer; sCodigo: string; sDescricao: string; nTipo: Integer; nFav: Integer = 0);
        procedure Ocorrencia(Sender: TComponent; nCodigo: Integer; nMesg: Integer; sNome: string);
        procedure Lembrete(Sender: TComponent; nCodigo: Integer; nTipo: Integer; nMesg: Integer);
        function PrecoNormal(nProduto: integer; Unidade: string): currency;
        procedure AtualizarPrecos(nItem: Integer;
            Itens: string = ''; Grupos: string = '';
            Fabrics: string = ''; Condicoes: string = '');
        function FormFav(nTipoFav: integer): string;
        function DescTipoFav(nTipoFav: integer): string;
        function RecalcularCustosItem(sItem, sUnidade, sEntrada: string): Boolean;
        function GetEstoqueAntesEntrada(Item, Entrada: Integer): Double;
        procedure RecalcularItensFail(P: TPositionProc);
        procedure AtualizaPlanoContas;
        function GetInformacoesChequesAcer(nFav: integer; var nCheqDevAc: integer; var fCheqDevAcVal: currency): boolean;
        function GetInformacoesChequesDev(nFav: integer; var nCheqDevQuant: integer; var fCheqDevVal: currency): boolean;
        function GetInformacoesCreditoAberto(nFav: integer; var fCredAberto: currency): boolean;
        function GetInformacoesParcelasDiasAtraso(nFav: integer; var nMedAtra: integer): boolean;
        function GetInformacoesTotalParcelasAVencer(nFav, nAno: integer; var nQuantParcAVencer: integer; var fValorParcAVencer: currency): boolean;
        function GetInformacoesTotalParcelasVencidas(nFav, nAno: integer; var nQuantParcVencidas: integer; var fValorParcVencidas: currency): boolean;
        function GetInformacoesTotalParcelasAtrasadas(nFav, nAno: integer; var nQuantParcAtrasadas: integer; var fValorParcAtrasadas: currency): boolean;
        function GetInformacoesTotalParcelasEmAtraso(nFav, nAno: integer; var nQuantParcEmAtraso: integer; var fValorParcEmAtraso: currency): boolean;
        function GetInformacoesTotalParcelasEmDia(nFav, nAno: integer; var nQuantParcEmDia: integer; var fValorParcEmDia: currency): boolean;
        function GetInformacoesTotalParcelas(nFav, nAno: integer; var nQuantParc: integer; var fValorParc: currency): boolean;
        function GetInformacoesMenorParcelas(nFav: integer; var nCodMenorParc, nVenda: integer; var fValMenorParc: currency): boolean;
        function GetInformacoesMaiorParcelas(nFav: integer; var nCodMaiorParc, nVenda: integer; var fValMaiorParc: currency): boolean;
        function GetInformacoesMediaParcelas(nFav: integer; var nParcelas: integer; var fValMedParc: currency): boolean;
        function GetInformacoesTotalVendas(nFav: integer; var nQuantVendas: integer; var fValTotVendas, fValMedVendas: currency): boolean;
        function GetInformacoesMenorVenda(nFav: integer; var nCodMenorVenda: integer; var dDataMenorVenda: TDateTime; var fValMenorVenda: currency): boolean;
        function GetInformacoesMaiorVenda(nFav: integer; var nCodMaiorVenda: integer; var dDataMaiorVenda: TDateTime; var fValMaiorVenda: currency): boolean;
        function GetInformacoesUltVenda(nFav: integer; var nCodUltVenda: integer; var dDataUltVenda: TDateTime; var fValUltVenda: currency): boolean;
        function GetInformacoesCheques(nFav: integer; var nCheqPend: integer; var fCheqPend: currency): boolean;
        function GetInformacoesCredito(nFav: integer; var dDataCad: TDateTime; var fLimiteCred, fCredito: currency): boolean;
        procedure AtualizaParametros;
        procedure ConfiguraECF;
        function SetGenerator(Generator: string; nIDGen: Integer): boolean;
        function SetGeneratorTrans(nIDTran: integer): boolean;
        function SetOkParaGerarNF(nIDTran: integer): boolean;
        function SetNEWDATABASE(nIDTran: integer): boolean;
        function GerarSaida(EstFisico: Boolean; var Numero: string;
            Favorecido: integer;
            sUF: string;
            dData: TDateTime;
            Vendedor: integer;
            TipoMovimento: integer;
            Itens: string;
            Caixa: integer = 1;
            Desconto: Currency = 0;
            Obs: string = '';
            nIDSaida: integer = 0;
            bPermitirGravarSemReceber: Boolean = False;
            nFormaPgto: Integer = 1): integer;
        function Conta_A_Receber(Parcela: Integer;
            ValorAReceber: currency;
            Vencimento,
            Competencia: TDateTime;
            OBS: string;
            Cliente,
            Venda: Integer;
            NotaFiscal: string;
            nIDOrigemAReceber: integer = 0;
            nIDGeradorAReceber: integer = 0;
            Status: integer = 0;
            nContaReceita: integer = 0;
            caminho: string = ''): Integer;
        function ContabContasOperacao(nConta: integer; nValor: currency; nID: integer; nOrigem: integer = 0): boolean;
        function SetStatus(Vencimento: TDateTime): integer;
        //Incluido por Michel
        procedure GeraArquivoSaida(caminho, comando: string);
        //procedure Importar(arquivoOrigem: string);
        procedure Exportar(destino: string);
        procedure BatchQuery(caminho: string);
        procedure CopiaArquivos(origem, destino, ext: string; novaExt: string = '');
        function ToSQL(const v: variant): string;
        function GetSQL(origem: TIBQuery): string;
        function PrecoMultiUnidade(item, tabelapreco: integer; unidade: string; var MiniMo: currency; var PrecoCusto: currency): currency;
        function ImprimirCupom(nSaida: integer; sCliente, sVendedor, sObs: string; nDesconto: currency): boolean;
        function GeraCodigoEquipamento(sCodigo: string; nChave: integer): string;
        function VerificaExistenciaEquipamento(nMod: integer; sTipo, sTexto: string): boolean;
        function ParametroTEF(sField: string): string;
        procedure ExcluirSaida(nSaida: integer; sNum: string);
        procedure GeraCabecalhoZR(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
        function GerarDevolucao(var Numero: string; Favorecido: integer; Vendedor: integer; Itens: string;
            Desconto: Currency): integer;
        function CalcularComissaoDevolucao(Data: TDateTime; item, Vendedor, PlanoPagamento: integer; total: currency): currency;
        function CalcularComissaoDev(Entrada, Saida, vendedor, item, subtotalitem, planopagamento, entradaitem: Integer; Data: TDateTime): integer;
        function UpdateEstacoes(sChave, sData, sHora, sEstacoes: string): Boolean;
        function TipoPadraoInicial(tipoPadrao: integer; tipo: string; tipomovimento: integer): integer;
        procedure DadosClientesVerificacao(cpf_cnpj, razao, email, fone, obs: string);
        function GetNumeroEstacoes(): integer;
    end;
var
    DMProjeto: TDMProjeto;
    //    Function SW_AbrePortaScanner(var Numero:Integer):Boolean; stdcall;external 'scsweda.dll'
    //    Function SW_FechaPortaScanner:Boolean;stdcall;external 'scsweda.dll'
    //    Function SW_HabilitaScanner(var habilita:integer):Boolean;stdcall;external 'scsweda.dll'

const
    formapgto: array[0..8] of string = ('DINHEIRO', 'CHEQUE', 'CHQ ELETRO', 'CARTAO', 'DEP BANC', 'CREDITO', 'OUTROS', 'DOC COBRANCA', 'InforPOP');

implementation
uses Funcoes, Math, RegistroClasses, Dlg_InserirFator, Dlg_Recebido, Dlg_Pagamentos,

    dlg_AutorizacaoTabela, {dm_ECF,} Dlg_Campos, Dlg_ImpressaoDoc, Rpt_Invoices,
    Rpt_DocCobranca, Util2, Dlg_Parcelas, DM_PDVs, DM_Financeiro, Form_RichEdit, MD5;

{$R *.DFM}

{PAF}

function TDMProjeto.GetAliquotasZ(crz: string): TpArray;
var
    Q_Array: TIBQuery;
    vAliq: TpArray;
    i, j: Integer;
begin
    Result := vAliq;
    {Eliminação do DMECF.}
    // Q_Array := TIBQuery.Create(owner);
    // Q_Array.Database := DMProject.DB_Projeto;
    // Q_Array.Sql.Text := 'Select Aliquotas From ReducaoZ where CRZ = :CRZ';
    // Q_Array.ParamByName('CRZ').AsString := crz;
    // Q_Array.Open;
    // j:=1;
    // For i := 1 to 16 do Begin
    //    vAliq[i] := Copy(Q_Array.FieldByName('Aliquotas').AsString,J+1,4);
    //    j := j + 5;
    // End;
    // Result := vAliq;
end;

function TDMProjeto.GerarMovimentoPorECF(dtInicio, dtFim: TDateTime): Boolean;
var linha: string;
    vArray: TpArray;
    sTotalizador, Md5Z, DataInstal: string;
    i: integer;
    f: TextFile;
    CaminhoArquivo: string;
begin
    result := true;
    {Eliminação do DMECF.}
    //  inherited;
    //  try
    //    CaminhoArquivo := ExtractFilePath(Application.ExeName) + trim(dmECF.ECF1.GetCodigoModeloFiscal()) + Copy(DMProjeto.PAFCampos.NroFabricacao_ECF,7,14) + FormatDateTime('DDMMYYYY',dtFim) +'.TXT';
    //    AssignFile(f, CaminhoArquivo);
    //    ReWrite(f);
    //    DataInstal := Copy(DMProjeto.PAFCampos.DataInstalacaoSB,5,4)
    //                 +Copy(DMProjeto.PAFCampos.DataInstalacaoSB,3,2)
    //                 +Copy(DMProjeto.PAFCampos.DataInstalacaoSB,1,2);
    //    linha:= 'R01'               {Identificação do ECF}
    //      + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //      + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //      + PreencherSTR(DMProjeto.PAFCampos.TipoECF,' ',007)
    //      + PreencherSTR(DMProjeto.PAFCampos.MarcaECF,' ',020)
    //      + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //      + PreencherSTR(DMProjeto.PAFCampos.VersaoSB,' ',10)
    //      + PreencherSTR(DataInstal,' ',008)
    //      + PreencherSTR(DMProjeto.PAFCampos.HoraInstalacaoSB,' ',006)
    //      + PreencherSTR(DMProjeto.PAFCampos.NumeroSeqECF,' ',003)
    //      + PreencherSTR(RestringirCarac(DMProjeto.PAFCampos.CNPJ_Usuario),' ',014)
    //      + SoNumeros(DMProjeto.PAFCampos.IE_Usuario,014)
    //      + SoNumeros(DMProjeto.PAFCampos.CNPJ_Desenv,014)
    //      + SoNumeros(DMProjeto.PAFCampos.IE_Desenv,014)
    //      + SoNumeros(DMProjeto.PAFCampos.IM_Desenv,014)
    //      + PreencherSTR(DMProjeto.PAFCampos.RAZAO_Desenv,' ',040)
    //      + PreencherSTR(DMProjeto.PAFCampos.Systema,' ',040)
    //      + PreencherSTR(DMProjeto.PAFCampos.Versao,' ',010)
    //      + PreencherSTR(DMProjeto.PAFCampos.MD5_Exe,' ',032)
    //      + PreencherSTR(FormatDateTime('YYYYMMDD', dtInicio),' ',008)
    //      + PreencherSTR(FormatDateTime('YYYYMMDD', dtFim),' ',008)
    //      + PreencherSTR(DMProjeto.PAFCampos.VersaoPAF,' ',004);
    //      Writeln(f,linha);
    //    With Q_R02 do Begin {Relação das Redução Z}
    //      Close;
    //      Sql.Text := 'select z.NROFABRICACAO,  z.nroordem, z.crz,  z.cro, z.crg, z.coo, z.datamovimento, z.dataemissao, z.horaemissao, '+
    //                  ' (z.grandetotal - z.grandetotalinicial) as VendaBrutaDiaria, ''N'' as ECFISS, MD5Z, '+
    //                  ' z.grandetotal , z.grandetotalinicial From reducaoz z where z.nrofabricacao = :nrofabricacao and z.datamovimento >= :DtInicio and z.datamovimento <= :DtFim ';
    //      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    ////         MD5Z := MD5Print(MD5String(
    ////          Trim(FieldByName('NROFABRICACAO').AsString)
    ////          +SoNumeros(Trim(FieldByName('CRZ').AsString),6)
    ////          +SoNumeros(Trim(FieldByName('COO').AsString),6)
    ////          +SoNumeros(Trim(FieldByName('CRO').AsString),6)
    ////          +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),5,4)
    ////          +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),3,2)
    ////          +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),1,2)
    ////          +'20'+Copy(Trim(FieldByName('DATAEMISSAO').AsString),5,2)
    ////          +Copy(Trim(FieldByName('DATAEMISSAO').AsString),3,2)
    ////          +Copy(Trim(FieldByName('DATAEMISSAO').AsString),1,2)
    ////          +Trim(FieldByName('HORAEMISSAO').AsString)
    ////          +Trim(FieldByName('GrandeTotal').AsString)
    ////          +Trim(FieldByName('GrandeTotalInicial').AsString)
    ////          ));
    ////        if (MD5Z = FieldByName('MD5Z').AsString) Then
    //            linha:= 'R02'
    //              + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //              + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //              + PreencherSTR( DMProjeto.PAFCampos.ModeloECF ,' ',020)
    //              + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //              + SoNumeros(Trim(FieldByName('CRZ').AsString),6)
    //              + SoNumeros(Trim(FieldByName('COO').AsString),6)
    //              + SoNumeros(Trim(FieldByName('CRO').AsString),6)
    //              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),5,4)
    //              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),3,2)
    //              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),1,2)
    //              +'20'+Copy(Trim(FieldByName('DATAEMISSAO').AsString),5,2)
    //              +Copy(Trim(FieldByName('DATAEMISSAO').AsString),3,2)
    //              +Copy(Trim(FieldByName('DATAEMISSAO').AsString),1,2)
    //              + FieldByName('HORAEMISSAO').AsString
    //              + SoNumeros(FieldByName('VENDABRUTADIARIA').AsString,14)
    //              + FieldByName('ECFISS').AsString;
    ////         Else
    ////            linha:= 'R02'
    ////              + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    ////              + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    ////              + PreencherSTR(' ' ,'?',020)
    ////              + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    ////              + SoNumeros(Trim(FieldByName('CRZ').AsString),6)
    ////              + SoNumeros(Trim(FieldByName('COO').AsString),6)
    ////              + SoNumeros(Trim(FieldByName('CRO').AsString),6)
    ////              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),5,4)
    ////              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),3,2)
    ////              +Copy(Trim(FieldByName('DATAMOVIMENTO').AsString),1,2)
    ////              +'20'+Copy(Trim(FieldByName('DATAEMISSAO').AsString),5,2)
    ////              +Copy(Trim(FieldByName('DATAEMISSAO').AsString),3,2)
    ////              +Copy(Trim(FieldByName('DATAEMISSAO').AsString),1,2)
    ////              + FieldByName('HORAEMISSAO').AsString
    ////              + SoNumeros(FieldByName('VENDABRUTADIARIA').AsString,14)
    ////              + FieldByName('ECFISS').AsString;
    //          Writeln(f,linha);
    //          vArray := GetAliquotasZ(Q_R02.FieldByName('CRZ').AsString); {Building}
    //          Next;
    //      End; {While  Q_R02 Not EOF do Begin}
    //    End; {With Q_R02 do Begin}
    //    With Q_R03 do Begin   {Detalhe da Redução Z}
    //      Close;
    //      Sql.Text := 'select z.CRZ,z.tipototalizador, z.totalizador, z.valortotalizador, z.Md5 From reducaoz_r03 z '+
    //                  ' where z.crz in (select y.crz From reducaoz y where y.nrofabricacao = :nrofabricacao and y.datamovimento >= :DtInicio and y.datamovimento <= :DtFim) ';      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    ////        MD5Z := MD5Print(MD5String(
    ////            Trim(DMProjeto.PAFCampos.NroFabricacao_ECF)
    ////            +Trim(FieldByName('CRZ').AsString)
    ////            +Trim(FieldByName('TIPOTOTALIZADOR').AsString)
    ////            +Trim(FieldByName('TOTALIZADOR').AsString)
    ////            +Trim(SoNumeros(FieldByName('VALORTOTALIZADOR').AsString,13))
    ////            ));
    ////        if (MD5Z = FieldByName('MD5').AsString) Then
    //            linha:= 'R03'
    //              + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //              + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //              + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //              + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //              + SoNumeros(FieldByName('CRZ').AsString,6)
    //              +  PreencherSTR(FieldByName('TOTALIZADOR').AsString, ' ', 7)
    //              + SoNumeros(FieldByName('VALORTOTALIZADOR').AsString,13);
    ////        Else
    ////            linha:= 'R03'
    ////              + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    ////              + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    ////              + PreencherSTR(' ' ,'?',020)
    ////              + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    ////              + SoNumeros(FieldByName('CRZ').AsString,6)
    ////              +  PreencherSTR(FieldByName('TOTALIZADOR').AsString, ' ', 7)
    ////              + SoNumeros(FieldByName('VALORTOTALIZADOR').AsString,13);
    //        Writeln(f,linha);
    //        Next;
    //      End; {While R03 Not EOF do Begin}
    //    End;  {With Q_R03 do Begin}
    //    With Q_R04 do Begin {Cupom Fiscal Emitido}
    //      Close;
    //      Sql.Text := 'select  z.numeroserieecf , z.ccf, z.crz, z.numero, z.data, z.total, z.desconto, '+
    //                  ' z.acrescimosbase, z.total - z.desconto as liquido, '+
    //                  ' case when z.situacao = ''C'' Then ''S'' else ''N'' end as cancelado, f.razao, f.cpf_cnpj '+
    //                  ' From saidas z inner join favorecidos f on f.favorecido = z.favorecido '+
    //                  ' where z.crz in (select y.crz From reducaoz y where y.nrofabricacao = :nrofabricacao and y.datamovimento >= :DtInicio and y.datamovimento <= :DtFim) ';
    //      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    //        linha:= 'R04'
    //          + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //          + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //          + FieldByName('CCF').AsString
    //          + SoNumeros(FieldByName('NUMERO').AsString,6)
    //          + FormatDateTime('YYYYMMDD', FieldByName('DATA').AsDateTime)
    //          + SoNumeros(iif(FieldByName('CANCELADO').AsString = 'S', '0',FieldByName('TOTAL').AsString),14)
    //          + SoNumeros(FieldByName('DESCONTO').AsString,13)
    //          + 'V'
    //          + SoNumeros(FieldByName('ACRESCIMOSBASE').AsString,13)
    //          + 'V'
    //          + SoNumeros(iif(FieldByName('CANCELADO').AsString = 'S', '0',FieldByName('LIQUIDO').AsString),14)
    //          + FieldByName('CANCELADO').AsString
    //          + SoNumeros(' ',13)
    //          + 'D'
    //          + PreencherSTR(Copy(FieldByName('RAZAO').AsString,1,40),' ',40)
    //          + SoNumeros(FieldByName('CPF_CNPJ').AsString,14);
    //        Writeln(f,linha);
    //        Next; {R04}
    //      End; {R04 Not EOF}
    //    End; {With Q_R04 do Begin}
    //
    //
    //    With Q_R05 do Begin {Detalhe do Cupom Fiscal }
    //      Close;
    //      Sql.Text := 'select z.numeroserieecf, z.numero, z.ccf, zi.sequencia, '+
    //                  ' case when i.codigobarras is null then i.codigo else i.codigobarras end as Codigo, '+
    //                  ' i.descricao, zi.quantidade, zi.unidade, zi.preco, zi.desconto, 0.00 as Acrescimo, zi.subtotalitem, zi.aliqicms, zi.situacaoecf, '+
    //                  ' ''N'' as Cancelamento, 0 as QtdCancelada, 0.00 as VlrCancelada, 0.00 as VlrCancAcrescimo, ''T'' as IndArrTrun, i.ippt, ''2'' as CasasDecQtd, ''2'' as CasasDecVlr '+
    //                  ' From saidas z inner join saidasitens zi on zi.saida = z.saida inner join itens i on i.item = zi.item '+
    //                  ' where z.crz in (select y.crz From reducaoz y where y.nrofabricacao = :nrofabricacao and y.datamovimento >= :DtInicio and y.datamovimento <= :DtFim) ';      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    //        sTotalizador:= '';
    //        for i:= 1 to 16 do Begin
    //         if (FieldByName('AliqICMS').AsInteger = StrToInt(vArray[i])/100) Then
    //            sTotalizador := SoNumeros(IntToStr(i),2) + FieldByName('situacaoECF').AsString + vArray[i];
    //        End;
    //        linha:= 'R05'
    //          + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //          + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //          + SoNumeros(FieldByName('NUMERO').AsString,6)
    //          + SoNumeros(FieldByName('CCF').AsString,6)
    //          + SoNumeros(FieldByName('SEQUENCIA').AsString,03)
    //          + SoNumeros(FieldByName('CODIGO').AsString,14)
    //          + PreencherSTR(FieldByName('DESCRICAO').AsString,' ',100)
    //          + SoNumeros(FieldByName('QUANTIDADE').AsString,07)
    //          + PreencherSTR(Copy(FieldByName('UNIDADE').AsString,1,3),' ',03)
    //          + SoNumeros(FieldByName('PRECO').AsString,08)
    //          + SoNumeros(FieldByName('DESCONTO').AsString,08)
    //          + SoNumeros(FieldByName('ACRESCIMO').AsString,08)
    //          + SoNumeros(FieldByName('SUBTOTALITEM').AsString,14)
    //          + PreencherSTR(sTotalizador,' ',7)
    //          + PreencherSTR(FieldByName('CANCELAMENTO').AsString,'N',01)
    //          + SoNumeros(FieldByName('QtdCancelada').AsString,07)
    //          + SoNumeros(FieldByName('VlrCancelada').AsString,13)
    //          + SoNumeros(FieldByName('VlrCancAcrescimo').AsString,13)
    //          + PreencherSTR(FieldByName('IndArrTrun').AsString,'T',01)
    //          + PreencherSTR(FieldByName('IPPT').AsString,'T',01)
    //          + SoNumeros(FieldByName('CasasDecQtd').AsString,01)
    //          + SoNumeros(FieldByName('CasasDecVlr').AsString,01);
    //        Writeln(f,linha);
    //        Next;{R05}
    //      End; {R05 Not EOF}
    //    End; {With Q_R05 do Begin}
    //    With Q_R06 do Begin {Outros Documentos }
    //      Close;
    //      Sql.Text := 'select z.crz, z.nrofabricacao, z.coo, z.gnf, case when z.denominacao = ''RG'' Then z.grg else ''000000'' end as GRG, '+
    //                  ' case when z.denominacao = ''CC'' Then z.cdc else ''0000'' end as CDC, z.denominacao, z.datafinal, z.horafinal '+
    //                  ' From reducaoz_r06 z '+
    //                  ' where z.crz in (select y.crz From reducaoz y where y.nrofabricacao = :nrofabricacao and y.datamovimento >= :DtInicio and y.datamovimento <= :DtFim) ';      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    //        linha:= 'R06'
    //          + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //          + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //          + SoNumeros(FieldByName('COO').AsString,06)
    //          + SoNumeros(FieldByName('GNF').AsString,06)
    //          + SoNumeros(FieldByName('GRG').AsString,06)
    //          + SoNumeros(FieldByName('CDC').AsString,04)
    //          + PreencherSTR(FieldByName('DENOMINACAO').AsString,' ',02)
    //          + Copy(Trim(FieldByName('DATAFINAL').AsString),5,4)
    //          + Copy(Trim(FieldByName('DATAFINAL').AsString),3,2)
    //          + Copy(Trim(FieldByName('DATAFINAL').AsString),1,2)
    //          + SoNumeros(FieldByName('HORAFINAL').AsString,06);
    //        Writeln(f,linha);
    //        Next;{R06}
    //      End; {R05 Not EOF}
    //    End; {With Q_R06 do Begin}
    //    With Q_R07 do Begin {Meios PGTO }
    //      Close;
    //      Sql.Text := 'select z.crz, z.nrofabricacao, z.coo, z.ccf, z.gnf, z.meiopgto, z.valor  '+
    //                  ' From reducaoz_r07 z'+
    //                  ' where z.crz in (select y.crz From reducaoz y where y.nrofabricacao = :nrofabricacao and y.datamovimento >= :DtInicio and y.datamovimento <= :DtFim) ';
    //      ParamByName('nrofabricacao').AsString := DMProjeto.PAFCampos.NroFabricacao_ECF;
    //      ParamByName('DtInicio').AsString :=  FormatDateTime('DDMMYYYY', dtInicio );
    //      ParamByName('DtFim').AsString :=  FormatDateTime('DDMMYYYY', dtFim );
    //      Open;
    //      While Not EOF do Begin
    //        linha:= 'R07'
    //          + PreencherSTR(DMProjeto.PAFCampos.NroFabricacao_ECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.MFDAdicional,' ',001)
    //          + PreencherSTR(DMProjeto.PAFCampos.ModeloECF,' ',020)
    //          + PreencherSTR(DMProjeto.PAFCampos.NroECF,' ',02)
    //          + SoNumeros(FieldByName('COO').AsString,06)
    //          + SoNumeros(FieldByName('CCF').AsString,06)
    //          + SoNumeros(FieldByName('GNF').AsString,06)
    //          + PreencherSTR(FieldByName('MEIOPGTO').AsString,' ',15)
    //          + SoNumeros(FieldByName('VALOR').AsString,13)
    //          + 'N' {Indicador de Estrorno}
    //          + SoNumeros('0',13);
    //        Writeln(f,linha);
    //        Next;{R07}
    //      End; {R07 Not EOF}
    //    End; {With Q_R07 do Begin}
    //    CloseFile(f);
    //    dmECF.ECF1.AssinarAquivo(CaminhoArquivo);
    //    Result := true;
    //  Except
    //    Result := false;
    //  end;
end;

function TDMProjeto.VerificaMD5Itens(item: integer): Boolean;
var Md5Gerado, Md5Base: string;
    Ok: Boolean;
begin
    try
        Ok := False;
        with Q_Sql do
            begin
                SQL.Text := 'SELECT CODIGO,CODIGOBARRAS,DESCRICAO,UNIDADE,ESTOQUE,ULTIMAVENDA, MD5 FROM ITENS I WHERE ITEM = :ITEM ';
                ParamByName('item').AsInteger := item;
                Open;
                Md5Gerado := Trim(Fields[0].AsString)
                    + Trim(Fields[1].AsString)
                    + Trim(Fields[2].AsString)
                    + Trim(Fields[3].AsString)
                    + Trim(Fields[4].AsString)
                    + Trim(Fields[5].AsString);
                Md5Base := Fields[6].AsString;
                Close;
                Md5Gerado := LowerCase(MD5.MD5Print(MD5.MD5String(Md5Gerado)));
                if (Md5Gerado = Md5Base) then
                    Ok := True;
            end;
        Result := Ok;
    except on E: Exception do
            raise Exception.Create('Erro ao verificar o MD5 da tabela de Itens!!!' + #13 + e.Message);
    end;
end;

procedure TDMProjeto.AtualizaMD5Itens(item: integer);
var texto: string;
begin
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        with Q_Sql do
            begin
                SQL.Text := 'SELECT CODIGO,CODIGOBARRAS,DESCRICAO,UNIDADE,ESTOQUE,ULTIMAVENDA FROM ITENS I WHERE ITEM = :ITEM ';
                ParamByName('item').AsInteger := item;
                Open;
                texto := Trim(Fields[0].AsString)
                    + Trim(Fields[1].AsString)
                    + Trim(Fields[2].AsString)
                    + Trim(Fields[3].AsString)
                    + Trim(Fields[4].AsString)
                    + Trim(Fields[5].AsString);
                Close;
                texto := LowerCase(MD5.MD5Print(MD5.MD5String(texto)));
                SQL.Text := 'Update ITENS SET MD5 = :MD5 WHERE ITEM = :ITEM ';
                ParamByName('md5').AsString := texto;
                ParamByName('item').AsInteger := item;
                Prepare;
                ExecSQL;
            end;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    except on E: Exception do
            raise Exception.Create('Não foi possível gravar informações do MD5 da Ultima Venda em Itens!!!' + #13 + e.Message);
    end;
end;

procedure TDMProjeto.ReducaoZ_R07(MeioPGTO: string; Valor: Currency);
begin
    {Eliminação do DMECF.}
    // try
    //   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    //     DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    //   With StoreProcedure do Begin
    //      StoredProcName := 'PP_REDUCAOZ_R07';
    //      ParamByName('CRZ').AsString                := PAFCampos.ProximaZ;
    //      ParamByName('NROFABRICACAO').AsString      := PAFCampos.NroFabricacao_ECF;
    //      ParamByName('COO').AsString                := DMECF.ECF1.COO;
    //      ParamByName('CCF').AsString                := DMECF.ECF1.GetNumero_CCF;
    //      ParamByName('GNF').AsString                := DMECF.ECF1.GetNumero_GNF;
    //      ParamByName('MEIOPGTO').AsString           := MeioPGTO;
    //      ParamByName('VALOR').AsCurrency            := Valor;
    //      ExecProc;
    //   End; {With StoreProcedure do }
    //   DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    //  Except on E:Exception do
    //    raise Exception.Create('Não foi possível gravar informações do registro R07!!!'+#13+e.Message);
    // End;

end;

procedure TDMProjeto.ReducaoZ_R06(denominacao: string);
var
    zR06: TReducaoZ_R06;
    dTHoraUltimoDoc: string;
begin
    {Eliminação do DMECF.}
    // try
    //   {PAF} {Chamada da função para Guardar R06 Passando o 'DENOMINACAO = CN }
    //   dTHoraUltimoDoc := DMECF.ECF1.GetDataHoraUltimoDOC();
    //   zR06.DATAFINAL := Copy(dTHoraUltimoDoc,1,8);
    //   zR06.HORAFINAL := Copy(dTHoraUltimoDoc,9,6);
    //   zR06.DENOMINACAO := denominacao;
    //   zR06.COO := DMECF.ECF1.COO;
    //   zR06.GNF := DMECF.ECF1.GetNumero_GNF;
    //   zR06.GRG := DMECF.ECF1.GetNumero_GRG;
    //   zR06.CDC := DMECF.ECF1.GetNumero_CDC;
    //   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    //     DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    //   With StoreProcedure do Begin
    //      StoredProcName := 'PP_REDUCAOZ_R06';
    //      ParamByName('CRZ').AsString                := PAFCampos.ProximaZ;
    //      ParamByName('NROFABRICACAO').AsString      := PAFCampos.NroFabricacao_ECF;
    //      ParamByName('COO').AsString                := zR06.COO;
    //      ParamByName('GNF').AsString                := zR06.GNF;
    //      ParamByName('GRG').AsString                := zR06.GRG;
    //      ParamByName('CDC').AsString                := zR06.CDC;
    //      ParamByName('DENOMINACAO').AsString        := zR06.DENOMINACAO;
    //      ParamByName('DATAFINAL').AsString          := zR06.DATAFINAL;
    //      ParamByName('HORAFINAL').AsString          := zR06.HORAFINAL;
    //      ExecProc;
    //   End; {With StoreProcedure do }
    //   DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    //  Except on E:Exception do
    //    raise Exception.Create('Não foi possível gravar informações do registro R06!!!'+#13+e.Message);
    // End;
end;

procedure TDMProjeto.ReducaoZ(datahora: string);
var
    ultz: TReducaoZ;
    MD5Z: string;
    i, x, y, z: Integer;
begin
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        //ultz := DMECF.ECF1.GetDadosUltimaReducaoZ();
        with StoreProcedure do
            begin
                StoredProcName := 'PP_REDUCAOZ';
                ParamByName('NROFABRICACAO').Value := PAFCampos.NroFabricacao_ECF;
                ParamByName('MFADICIONAL').Value := PAFCampos.MFDAdicional;
                ParamByName('MODELOECF').Value := '2D';
                ParamByName('NROORDEM').Value := PAFCampos.NroECF;
                ParamByName('DataMovimento').Value := ultz.DataMovimento;
                ParamByName('DataEmissao').Value := Copy(datahora, 1, 6);
                ParamByName('HoraEmissao').Value := Copy(datahora, 7, 6);
                ParamByName('GrandeTotal').Value := StrToCurr(ultz.GrandeTotal) / 100.00;
                ParamByName('GrandeTotalInicial').Value := StrToCurr(ultz.GrandeTotalInicial) / 100.00;
                ParamByName('DescontosICMS').Value := StrToCurr(ultz.DescontosICMS) / 100.00;
                ParamByName('DescontosISS').Value := StrToCurr(ultz.DescontosISS) / 100.00;
                ParamByName('CancelamentosICMS').Value := StrToCurr(ultz.CancelamentosICMS) / 100.00;
                ParamByName('CancelamentosISS').Value := StrToCurr(ultz.CancelamentosISS) / 100.00;
                ParamByName('AcrescimosICMS').Value := StrToCurr(ultz.AcrescimosICMS) / 100.00;
                ParamByName('AcrescimosISS').Value := StrToCurr(ultz.AcrescimosISS) / 100.00;
                ParamByName('TributadosICMSISS').Value := ultz.TributadosICMSISS;
                ParamByName('F1ICMS').Value := StrToCurr(ultz.F1ICMS) / 100.00;
                ParamByName('F2ICMS').Value := StrToCurr(ultz.F2ICMS) / 100.00;
                ParamByName('I1ICMS').Value := StrToCurr(ultz.I1ICMS) / 100.00;
                ParamByName('I2ICMS').Value := StrToCurr(ultz.I2ICMS) / 100.00;
                ParamByName('N1ICMS').Value := StrToCurr(ultz.N1ICMS) / 100.00;
                ParamByName('N2ICMS').Value := StrToCurr(ultz.N2ICMS) / 100.00;
                ParamByName('F1ISS').Value := StrToCurr(ultz.F1ISS) / 100.00;
                ParamByName('F2ISS').Value := StrToCurr(ultz.F2ISS) / 100.00;
                ParamByName('I1ISS').Value := StrToCurr(ultz.I1ISS) / 100.00;
                ParamByName('I2ISS').Value := StrToCurr(ultz.I2ISS) / 100.00;
                ParamByName('N1ISS').Value := StrToCurr(ultz.N1ISS) / 100.00;
                ParamByName('N2ISS').Value := StrToCurr(ultz.N2ISS) / 100.00;
                ParamByName('TotalizadoresNF').Value := ultz.TotalizadoresNF;
                ParamByName('DescontosNF').Value := StrToCurr(ultz.DescontosNF) / 100.00;
                ParamByName('CancelamentosNF').Value := StrToCurr(ultz.CancelamentosNF) / 100.00;
                ParamByName('AcrescimosNF').Value := StrToCurr(ultz.AcrescimosNF) / 100.00;
                ParamByName('Aliquotas').Value := ultz.Aliquotas;
                ParamByName('CRO').Value := ultz.CRO;
                ParamByName('CRZ').Value := ultz.CRZ;
                ParamByName('CRZRestante').Value := ultz.CRZRestante;
                ParamByName('COO').Value := ultz.COO;
                ParamByName('GNF').Value := ultz.GNF;
                ParamByName('CCF').Value := ultz.CCF;
                ParamByName('CVC').Value := ultz.CVC;
                ParamByName('CRG').Value := ultz.CRG;
                ParamByName('CFD').Value := ultz.CFD;
                ParamByName('CBP').Value := ultz.CBP;
                ParamByName('NFC').Value := ultz.NFC;
                ParamByName('CMV').Value := ultz.CMV;
                ParamByName('CFC').Value := ultz.CFC;
                ParamByName('CNC').Value := ultz.CNC;
                ParamByName('CBC').Value := ultz.CBC;
                ParamByName('NCN').Value := ultz.NCN;
                ParamByName('CDC').Value := ultz.CDC;
                ParamByName('CON').Value := ultz.CON;
                ParamByName('CER').Value := ultz.CER;
                ParamByName('MD5Z').Value := MD5Print(MD5String(ultz.MD5Z));
                ExecProc;
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                {Detalhe da Redução Z}
                y := 2;
                z := 1;
                x := 1;
                for i := 1 to 16 do
                    begin
                        if ((Copy(ultz.Aliquotas, x, 1) = '1') or (Copy(ultz.Aliquotas, x, 1) = '2')) then
                            begin
                                MD5Z := MD5Print(MD5String(
                                    Trim(PAFCampos.NroFabricacao_ECF)
                                    + Trim(ultz.CRZ)
                                    + Trim(Copy(ultz.Aliquotas, x, 1))
                                    + Trim(SoNumeros(IntToStr(i), 2) + iif(Copy(ultz.Aliquotas, x, 1) = '1', 'T', 'S') + Copy(ultz.Aliquotas, y, 4))
                                    + Trim(ultz.TributadosICMSISS)
                                    ));

                                with StoreProcedure do
                                    begin
                                        StoredProcName := 'PP_REDUCAOZ_R03';
                                        ParamByName('CRZ').AsString := ultz.CRZ;
                                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                                        ParamByName('TIPOTOTALIZADOR').AsString := Copy(ultz.Aliquotas, x, 1);
                                        ParamByName('TOTALIZADOR').AsString := SoNumeros(IntToStr(i), 2) + iif(Copy(ultz.Aliquotas, x, 1) = '1', 'T', 'S') + Copy(ultz.Aliquotas, y, 4);
                                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToInt(Copy(ultz.TributadosICMSISS, z, 14)) / 100.00;
                                        ParamByName('MD5').AsString := MD5Z;
                                        ExecProc;
                                    end; {With StoreProcedure do }
                            end; {if ((relR03.TipoTotalizador = '1') or (relR03.TipoTotalizador = '2'))}
                        x := x + 5;
                        y := y + 5;
                        z := z + 14;
                    end; {for i := 1 to 16 do begin}
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                {Não ICMS/ISS}
                with StoreProcedure do
                    begin
                        StoredProcName := 'PP_REDUCAOZ_R03';
                        {F1ICMS}

                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('F1')
                            + Trim(ultz.F1ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'F1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.F1ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {F2ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('F2')
                            + Trim(ultz.F2ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'F2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.F2ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {I1ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('I1')
                            + Trim(ultz.I1ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'I1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.I1ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {I2ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('I2')
                            + Trim(ultz.I2ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'I2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.I2ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {N1ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('N1')
                            + Trim(ultz.N1ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'N1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.N1ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {N2ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('N2')
                            + Trim(ultz.N2ICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'N2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.N2ICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {F1ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('FS1')
                            + Trim(ultz.F1ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'FS1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.F1ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {F2ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('FS2')
                            + Trim(ultz.F2ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'FS2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.F2ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {I1ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('IS1')
                            + Trim(ultz.I1ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'IS1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.I1ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {I2ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('IS2')
                            + Trim(ultz.I2ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'IS2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.I2ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {N1ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('NS1')
                            + Trim(ultz.N1ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'NS1';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.N1ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {N2ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('NS2')
                            + Trim(ultz.N2ISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'NS2';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.N2ISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {OPNF}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('0')
                            + Trim('OPNF')
                            + Trim(SoNumeros('0', 13))
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '0';
                        ParamByName('TOTALIZADOR').AsString := 'OPNF';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := 0.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Deconto ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('DT')
                            + Trim(ultz.DescontosICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'DT';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.DescontosICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Deconto ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('DS')
                            + Trim(ultz.DescontosISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'DS';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.DescontosISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Acrescimos ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('AT')
                            + Trim(ultz.AcrescimosICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'AT';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.AcrescimosICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Acrescimos ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('AS')
                            + Trim(ultz.AcrescimosISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'AS';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.AcrescimosISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Cancelamento ICMS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('1')
                            + Trim('Can-T')
                            + Trim(ultz.CancelamentosICMS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '1';
                        ParamByName('TOTALIZADOR').AsString := 'Can-T';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.CancelamentosICMS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                        {Cancelamento ISS}
                        MD5Z := MD5Print(MD5String(
                            Trim(PAFCampos.NroFabricacao_ECF)
                            + Trim(ultz.CRZ)
                            + Trim('2')
                            + Trim('Can-S')
                            + Trim(ultz.CancelamentosISS)
                            ));
                        ParamByName('CRZ').AsString := ultz.CRZ;
                        ParamByName('NROFABRICACAO').AsString := PAFCampos.NroFabricacao_ECF;
                        ParamByName('TIPOTOTALIZADOR').AsString := '2';
                        ParamByName('TOTALIZADOR').AsString := 'Can-S';
                        ParamByName('VALORTOTALIZADOR').AsCurrency := StrToCurr(ultz.CancelamentosISS) / 100.00;
                        ParamByName('MD5').AsString := MD5Z;
                        ExecProc;
                    end; {With StoreProcedure do }
            end;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    except on E: Exception do
            raise Exception.Create('Não foi possível gravar informações da última redução Z!!!' + #13 + e.Message);
    end;
end;

procedure TDMProjeto.AtualizarSintegra(path: string);
var reg60A: TReg_60A;
    reg60D: TReg_60D;
    reg60I: TReg_60I;
    reg60M: TReg_60M;
    reg60R: TReg_60R;
    sintegra: TextFile;
    linha, tipoReg, data, serie, crz: string;
begin
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        if (not FileExists(path + 'sintegra.txt')) then
            raise Exception.Create('O arquivo ' + path + 'sintegra.txt não foi gerado.');
        AssignFile(sintegra, path + 'sintegra.txt');
        Reset(sintegra);
        while not Eof(sintegra) do
            begin
                ReadLn(sintegra, linha);
                tipoReg := copy(linha, 1, 3);
                if (tipoReg = '60M') then
                    begin
                        reg60M.DataEmissao := Copy(linha, 04, 08);
                        reg60M.NumeroSerie := Copy(linha, 12, 20);
                        reg60M.NumeroOrdem := Copy(linha, 32, 03);
                        reg60M.Modelo := Copy(linha, 35, 02);
                        reg60M.COOInicio := Copy(linha, 37, 06);
                        reg60M.COOFim := Copy(linha, 43, 06);
                        reg60M.CRZ := Copy(linha, 49, 06);
                        reg60M.CRO := Copy(linha, 55, 03);
                        reg60M.VendaBruta := StrToCurr(Copy(linha, 58, 16)) / 100;
                        reg60M.Totalizador := StrToCurr(Copy(linha, 74, 16)) / 100;
                        {Para ser aproveitado no Reg tipo 60R onde não tenho o serial do equipamento}
                        data := reg60M.DataEmissao;
                        serie := reg60M.NumeroSerie;
                        crz := reg60M.CRZ;
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_60M';
                                ParamByName('DATAEMISSAO').AsString := reg60M.DataEmissao;
                                ParamByName('NUMEROSERIE').AsString := reg60M.NumeroSerie;
                                ParamByName('NUMEROORDEM').AsString := reg60M.NumeroOrdem;
                                ParamByName('MODELO').AsString := reg60M.Modelo;
                                ParamByName('COOINICIO').AsString := reg60M.COOInicio;
                                ParamByName('COOFIM').AsString := reg60M.COOFim;
                                ParamByName('CRZ').AsString := reg60M.CRZ;
                                ParamByName('CRO').AsString := reg60M.CRO;
                                ParamByName('VENDABRUTA').AsCurrency := reg60M.VendaBruta;
                                ParamByName('TOTALIZADOR').AsCurrency := reg60M.Totalizador;
                                ExecProc;
                            end;
                    end;
                if (tipoReg = '60A') then
                    begin
                        reg60A.DataEmissao := Copy(linha, 04, 08);
                        reg60A.NumeroSerie := Copy(linha, 12, 20);
                        REG60A.CRZ := crz;
                        reg60A.Situacao_Aliq := Copy(linha, 32, 04);
                        reg60A.ValorAcumulado := StrToCurr(Copy(linha, 36, 12)) / 100;
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_60A';
                                ParamByName('DATAEMISSAO').AsString := reg60A.DataEmissao;
                                ParamByName('NUMEROSERIE').AsString := reg60A.NumeroSerie;
                                ParamByName('CRZ').AsString := reg60A.CRZ;
                                ParamByName('SITUACAO_ALIQ').AsString := reg60A.Situacao_Aliq;
                                ParamByName('VALORACUMULADO').AsCurrency := reg60A.ValorAcumulado;
                                ExecProc;
                            end;
                    end;
                if (tipoReg = '60D') then
                    begin
                        reg60D.DataEmissao := Copy(linha, 04, 08);
                        reg60D.NumeroSerie := Copy(linha, 12, 20);
                        reg60D.Codigo := Copy(linha, 32, 14);
                        reg60D.Quantidade := StrToFloat(Copy(linha, 46, 13)) / 1000;
                        reg60D.Valor := StrToCurr(Copy(linha, 59, 16)) / 100;
                        reg60D.BaseICMS := StrToCurr(Copy(linha, 75, 16)) / 100;
                        reg60D.Situacao_Aliq := Copy(linha, 91, 04);
                        reg60D.ValorICMS := StrToCurr(Copy(linha, 95, 13)) / 100;
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_60D';
                                ParamByName('DATAEMISSAO').AsString := reg60D.DataEmissao;
                                ParamByName('NUMEROSERIE').AsString := reg60D.NumeroSerie;
                                ParamByName('CODIGO').AsString := reg60D.Codigo;
                                ParamByName('QUANTIDADE').AsFloat := reg60D.Quantidade;
                                ParamByName('VALOR').AsCurrency := reg60D.Valor;
                                ParamByName('BASEICMS').AsCurrency := reg60D.BaseICMS;
                                ParamByName('SITUACAO_ALIQ').AsString := reg60D.Situacao_Aliq;
                                ParamByName('VALORICMS').AsCurrency := reg60D.ValorICMS;
                                ExecProc;
                            end;
                    end;
                if (tipoReg = '60I') then
                    begin
                        reg60I.DataEmissao := Copy(linha, 04, 08);
                        reg60I.NumeroSerie := Copy(linha, 12, 20);
                        reg60I.Modelo := Copy(linha, 32, 02);
                        reg60I.COO := Copy(linha, 34, 06);
                        reg60I.NumeroOrdem := Copy(linha, 40, 03);
                        reg60I.Codigo := Copy(linha, 43, 14);
                        reg60I.Quantidade := StrToFloat(Copy(linha, 57, 13)) / 1000;
                        reg60I.Valor := StrToCurr(Copy(linha, 83, 12)) / 100;
                        reg60I.BaseICMS := StrToCurr(Copy(linha, 83, 12)) / 100;
                        reg60I.Situacao_Aliq := Copy(linha, 95, 04);
                        reg60I.ValorICMS := StrToCurr(Copy(linha, 99, 12)) / 100;
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_60I';
                                ParamByName('DATAEMISSAO').AsString := reg60I.DataEmissao;
                                ParamByName('NUMEROSERIE').AsString := reg60I.NumeroSerie;
                                ParamByName('MODELO').AsString := reg60I.Modelo;
                                ParamByName('COO').AsString := reg60I.COO;
                                ParamByName('NUMEROORDEM').AsString := reg60I.NumeroOrdem;
                                ParamByName('CODIGO').AsString := reg60I.Codigo;
                                ParamByName('QUANTIDADE').AsFloat := reg60I.Quantidade;
                                ParamByName('VALOR').AsCurrency := reg60I.Valor;
                                ParamByName('BASEICMS').AsCurrency := reg60I.BaseICMS;
                                ParamByName('SITUACAO_ALIQ').AsString := reg60I.Situacao_Aliq;
                                ParamByName('VALORICMS').AsCurrency := reg60I.ValorICMS;
                                ExecProc;
                            end;
                    end;
                if (tipoReg = '60R') then
                    begin
                        reg60R.DataEmissao := data;
                        reg60R.NumeroSerie := serie;
                        reg60R.Codigo := Copy(linha, 10, 14);
                        reg60R.Quantidade := StrToFloat(Copy(linha, 24, 13)) / 1000;
                        reg60R.Valor := StrToCurr(Copy(linha, 37, 16)) / 100;
                        reg60R.BaseICMS := StrToCurr(Copy(linha, 53, 16)) / 100;
                        reg60R.Situacao_Aliq := Copy(linha, 69, 04);
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_60R';
                                ParamByName('DATAEMISSAO').AsString := reg60R.DataEmissao;
                                ParamByName('NUMEROSERIE').AsString := reg60R.NumeroSerie;
                                ParamByName('CODIGO').AsString := reg60R.Codigo;
                                ParamByName('QUANTIDADE').AsFloat := reg60R.Quantidade;
                                ParamByName('VALOR').AsCurrency := reg60R.Valor;
                                ParamByName('BASEICMS').AsCurrency := reg60R.BaseICMS;
                                ParamByName('SITUACAO_ALIQ').AsString := reg60R.Situacao_Aliq;
                                ExecProc;
                            end;
                    end;
                if (Copy(tipoReg, 1, 2) = '75') then
                    begin
                        {Atualizando no banco de dados}
                        with StoreProcedure do
                            begin
                                StoredProcName := 'PP_SINTEGRA_75';
                                ParamByName('DATAINICIO').AsString := Copy(linha, 003, 008);
                                ParamByName('DATAFINAL').AsString := Copy(linha, 011, 008);
                                ParamByName('CODIGO').AsString := Copy(linha, 019, 014);
                                ParamByName('NCM').AsString := Copy(linha, 033, 008);
                                ParamByName('DESCRICAO').AsString := Copy(linha, 041, 053);
                                ParamByName('UNIDADE').AsString := Copy(linha, 094, 006);
                                ParamByName('ALIQIPI').AsString := Copy(linha, 100, 005);
                                ParamByName('ALIQICMS').AsString := Copy(linha, 105, 004);
                                ParamByName('REDUCAO').AsString := Copy(linha, 109, 005);
                                ParamByName('BASECALCICMS').AsString := Copy(linha, 114, 013);
                                ExecProc;
                            end;
                    end;
            end;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    except
        on E: Exception do
            raise Exception.Create('Não foi possível atualizar dados para o SINTEGRA!!! ' + #13 + e.Message);
    end;

end;

function TDMProjeto.SetOkParaGerarNF;
begin
    try
        Q_SetGen.Close;
        Q_SetGen.SQL.Text := 'Set Generator GENSIST_OKPARAGERARNF to ' + IntToStr(nIDTran);
        Q_SetGen.ExecQuery;
    except
        on E: Exception do
            begin
            end;
    end;
end;

function TDMProjeto.SetNEWDATABASE;
begin
    try
        Q_SetGen.Close;
        Q_SetGen.SQL.Text := 'SET GENERATOR GENSIST_NEWDATABASE TO ' + IntToStr(nIDTran);
        Q_SetGen.ExecQuery;
    except
        on E: Exception do
            begin
            end;
    end;
end;

function TDMProjeto.SetGeneratorTrans;
begin
    try
        Q_SetGen.Close;
        Q_SetGen.SQL.Text := 'Set Generator GENSIST_CONTROLTRANS to ' + IntToStr(nIDTran);
        Q_SetGen.ExecQuery;
    except
        on E: Exception do
            begin
            end;
    end;
end;

function TDMProjeto.SetGenerator(Generator: string; nIDGen: Integer): boolean;
begin
    try
        Q_SetGen.Close;
        Q_SetGen.SQL.Text := 'Set Generator ' + Generator + ' to ' + IntToStr(nIDGen);
        Q_SetGen.ExecQuery;
    except
        on E: Exception do
            begin
            end;
    end;
end;

procedure TDMProjeto.AtualizaParametros;
var
    i, qtdTabelas: integer;
    sTabelas, index: string;
begin
    C_Parametros.Close;
    C_Parametros.Open;
    DMProjeto.nIdiomaPadrao := 1;
    DMProjeto.sMultiIdioma := 'N';
    DMProjeto.getStatusCores;
    DMProjeto.nFavEmpresa := -1;
    DMProjeto.DadosEmpresa;
    DMProjeto.sTabelasPreco := DMProjeto.Parametro('VisualizarTabelasPrecos');
    DMProjeto.bControleValidade := DMProjeto.Parametro('ControleValidade') = 'S';
    DMProjeto.bControleValidadeAut := DMProjeto.Parametro('ControleValidadeAutom') = 'S';
    DMProjeto.bCodigoContab := DMProjeto.Parametro('ImpRelContabCod') = 'S';
    DMProjeto.bNaoSalvarDifContab := DMProjeto.Parametro('NaoSalvarDifContab') = 'S';
    DMProjeto.bOrdemProducao := DMProjeto.Parametro('OrdemProducao') = 'S';

    if DMProjeto.Parametro('IntervaloCodigo') = '' then
        DMProjeto.nIntervaloCodigo := 1
    else
        DMProjeto.nIntervaloCodigo := StrToInt(DMProjeto.Parametro('IntervaloCodigo'));
    DMProjeto.bTEF := DMProjeto.ParametroTEF('TEF') = 'S';
    // LegisFiscal
    nICMSInterno := AliquotaEstado(sUFEmpresa);
    //  nISS := StrToFloat(DMProjeto.Parametro('ISSLocal'));
    nISS := DMProjeto.AliqISS(sUFEmpresa);

    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
        Q_LocalizarItens.SQL.Text := 'Select 	i.ITEM, i.TIPOITEM, i.CODIGO, i.DESCRICAOCOMPRA,' +
            'i.GRUPO, i.DESCRICAO, i.TAXAVEL, (cast(pr.preco as float) * cast(iu.fator as float) / cast(i.fatorundvenda as float)) as CUSTOMEDIO,' +
            'i.ULTIMOFORNECEDOR, i.QTDEMINIMO,i.QTDEMAXIMO, ' +
            'i.PONTOPEDIDO,i.PERCENTUAL,i.APLICARANTESTAX, ' +
            'iu.UNIDADE,i.LOCALIZACAO,i.DESATIVADO,i.ESTOQUE, ' +
            'i.IMPORTACAO,i.COMISSAO,i.DESCONTOMAXIMO,i.TAXINCLUSO, ' +
            'i.CONTA_VENDA,i.CONTA_CUSTO,i.CONTA_INVENT,i.FABRICANTE, ' +
            'i.BALANCO,i.CAMPO01,i.CAMPO02,i.CAMPO03,i.CAMPO04,i.CAMPO05, ' +
            'i.PRECOCOMPRA,i.CAMPO06, (cast(i.CUSTOCONTABIL as float) * cast(iu.fator as float) / cast(i.fatorundvenda as Float))  As CUSTOCONTABIL, ' +
            'coalesce(i.CUSTOMANUAL, 0) as CUSTOMANUAL, i.ISITEMCOMPRA,i.CAMPO07, ' +
            'i.CAMPO08,i.PTAXINCLUSO,i.CAMPO09,i.CUSTODESPESAS,i.CAMPO10, ' +
            'i.FOTO,i.PROMOCAO,i.FATORLUCRO,i.HASCHILDREN,i.REFERENCIA, ' +
            'i.SEMLUCRO,i.PRI_CUSTOMEDIO,i.PRI_CUSTOCONTABIL,i.PRI_PRECOCOMPRA, ' +
            'i.DATACADASTRO,i.CUSTOPRODUTO,i.CONTROLEVALIDADE, ' +
            'i.TEMPOMEDIOVALIDADE,i.FORNECPREFERENCIA,i.REVENDA, ' +
            'i.ULTIMACOMPRA,i.COMPENSACUSTO,i.COMLUCRO,iu.UNIDADE as UNIDADEENTRADA, ' +
            'i.UNIDADECARGA,i.UNIDADEVAREJO,i.ULTQTDECOMPRA, ' +
            'i.UNIDADEMINIMA,i.FATORUNDVENDA,i.FATORUNDCOMPRA, ' +
            'i.ULTIMAVENDA,i.ESTOQUECONSIGSAIDA,i.ESTOQUECONSIGENTRADA, i.ESTOQUEVOLUME, ' +
            'i.ABC,i.DESCRICAOCOMPLEMENTAR,i.DESCRICAOTECNICA,i.CST, ' +
            'i.REDUCAOCST,i.IPICOMPRA,i.IPIVENDA,i.PESOBRUTO,i.PESOLIQUIDO, ' +
            'i.ALIQICMS,i.SITUACAOECF,i.TVA,i.TVAFONTE,i.CLASFISCAL, ' +
            'i.LEITURAATUAL,i.LEITURAMAXIMA,i.IDENTIFICACAO,i.ULTDESCONTO, ' +
            'i.CODIGOBARRAS,i.ENCERRANTE,i.AGENDARCONTATO,i.PISCOFINS, ' +
            'i.REDUCAOCSTENTRADA,i.ESTOQUEINICIAL,i.EXPORTACAO, i.INDEXADOR, ' +
            't.Descricao as DescTipoItem, p.Preco, p.PrecoManual, ' +
            'p.PrecoPromocao, u.Descricao as DescUnidade, ' +
            'u.Inteira as UnidadeInteira, ' +
            'g.DescricaoGrupo, ' +
            'g.DescontoMaximo as DescontoMaximoGrupo, ' +
            'g.Foto as FotoGrupo, f.descricao as descfabricante, ' +
            'ultf.Nome as NomeUltimoFornecedor, ' +
            'fpf.Nome as NomeFornPreferencia, ' +
            'g.SituacaoECF as SituacaoECFGrupo, ' +
            'g.CST as CSTGrupo, ' +
            'g.ReducaoCST as ReducaoCSTGrupo, ' +
            'g.AliqICMS as AliqICMSGrupo,  ' +
            'iu.percentual as percund, iu.precomanual as precomanund, ' +
            'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
            'iu.PercentualMinimo, i.GrupoComissao, i.estoquefiscal, L.descricao as DescLocalizacao, ' +
            'i.IDTRIBFEDERAL, iu.QTDEMBALAGEM, gc.descricao as DESCGRDCOMISSAO,  ' +
            'i.aliqpis, i.aliqcofins, i.aliqir, i.aliqss, i.aliqipi, i.clasfiscal as NCM, i.cstpiscofins, ' +
            'i.ALIQPISSAIDA,i.CSTPISCOFINSSAIDA,i.NATURAZARECEITAPISCOFINS,i.ALIQPISSAIDA, ' +
            'i.ALIQCOFINSSAIDA,i.VINCULOCREDITOPISCOFINS,i.BASECREDITOPISCOFINS, i.empresa, i.cstipi, i.cstipientrada, ' +
            'coalesce((select p1.preco from produtospreco p1 where p1.item = i.item and p1.tabelapreco = 111), 0) as tabelapreco1, ' +
            'coalesce((select p2.preco from produtospreco p2 where p2.item = i.item and p2.tabelapreco = 222), 0) as tabelapreco2, ' +
            'coalesce((select p3.preco from produtospreco p3 where p3.item = i.item and p3.tabelapreco = 333), 0) as tabelapreco3 ' +
            'from itens i ' +
            'inner join Favorecidos ultf ON ultf.Favorecido =  i.FornecPreferencia ' +
            'inner join Favorecidos fpf ON fpf.Favorecido = i.UltimoFornecedor ' +
            'inner join produtospreco p on p.Item = i.Item and p.Unidade = i.Unidade and p.tabelapreco = :tabelapreco ' +
            'inner join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = :tabelapreco ' +
            'left join localizacoes l on l.localizacao = i.localizacao ' +
            'left join itensunidades iu on iu.item = i.item  ' +
            'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao ' +
            'Left join tipositens t on t.tipoitem = i.tipoitem ' +
            'left join Grupos g on g.Grupo = i.Grupo ' +
            'left join Unidades u ON u.Unidade = i.unidade ' +
            'left join Fabricantes f ON f.Fabricante = i.Fabricante ' +
            '  /*$*/ ' // (Felipe - 29/03/2016) NÃO REMOVER ESSA LINHA. Implementacao para adicionar tabelas de preco de acordo com o parametro "VisualizarTabelasPrecos".
    else
        Q_LocalizarItens.SQL.Text := 'Select i.ITEM, i.TIPOITEM, i.CODIGO, i.DESCRICAOCOMPRA, ' +
            'i.GRUPO, i.DESCRICAO, i.TAXAVEL, cast(i.CUSTOMEDIO as float) as CUSTOMEDIO, ' +
            'i.ULTIMOFORNECEDOR, i.QTDEMINIMO,i.QTDEMAXIMO, ' +
            'i.PONTOPEDIDO,i.PERCENTUAL,i.APLICARANTESTAX, ' +
            'i.UNIDADE,i.LOCALIZACAO,i.DESATIVADO,i.ESTOQUE, ' +
            'i.IMPORTACAO,i.COMISSAO,i.DESCONTOMAXIMO,i.TAXINCLUSO, ' +
            'i.CONTA_VENDA,i.CONTA_CUSTO,i.CONTA_INVENT,i.FABRICANTE, ' +
            'i.BALANCO,i.CAMPO01,i.CAMPO02,i.CAMPO03,i.CAMPO04,i.CAMPO05, ' +
            'i.PRECOCOMPRA,i.CAMPO06,CAST(i.CUSTOCONTABIL as float) as CUSTOCONTABIL, ' +
            'coalesce(i.CUSTOMANUAL, 0) as CUSTOMANUAL, i.ISITEMCOMPRA,i.CAMPO07, ' +
            'i.CAMPO08,i.PTAXINCLUSO,i.CAMPO09,i.CUSTODESPESAS,i.CAMPO10, ' +
            'i.FOTO,i.PROMOCAO,i.FATORLUCRO,i.HASCHILDREN,i.REFERENCIA, ' +
            'i.SEMLUCRO,i.PRI_CUSTOMEDIO,i.PRI_CUSTOCONTABIL,i.PRI_PRECOCOMPRA, ' +
            'i.DATACADASTRO,i.CUSTOPRODUTO,i.CONTROLEVALIDADE, ' +
            'i.TEMPOMEDIOVALIDADE,i.FORNECPREFERENCIA,i.REVENDA, ' +
            'i.ULTIMACOMPRA,i.COMPENSACUSTO,i.COMLUCRO,i.UNIDADEENTRADA, ' +
            'i.UNIDADECARGA,i.UNIDADEVAREJO,i.ULTQTDECOMPRA, ' +
            'i.UNIDADEMINIMA,i.FATORUNDVENDA,i.FATORUNDCOMPRA, ' +
            'i.ULTIMAVENDA,i.ESTOQUECONSIGSAIDA,i.ESTOQUECONSIGENTRADA,  i.ESTOQUEVOLUME,  ' +
            'i.ABC,i.DESCRICAOCOMPLEMENTAR,i.DESCRICAOTECNICA,i.CST, ' +
            'i.REDUCAOCST,i.IPICOMPRA,i.IPIVENDA,i.PESOBRUTO,i.PESOLIQUIDO, ' +
            'i.ALIQICMS,i.SITUACAOECF,i.TVA,i.TVAFONTE,i.CLASFISCAL, ' +
            'i.LEITURAATUAL,i.LEITURAMAXIMA,i.IDENTIFICACAO,i.ULTDESCONTO, ' +
            'i.CODIGOBARRAS,i.ENCERRANTE,i.AGENDARCONTATO,i.PISCOFINS, ' +
            'i.REDUCAOCSTENTRADA,i.ESTOQUEINICIAL,i.EXPORTACAO, i.INDEXADOR, ' +
            't.Descricao as DescTipoItem, p.Preco, p.PrecoManual, ' +
            'p.PrecoPromocao, u.Descricao as DescUnidade, ' +
            'u.Inteira as UnidadeInteira, g.DescricaoGrupo, ' +
            'g.DescontoMaximo as DescontoMaximoGrupo, ' +
            'g.Foto as FotoGrupo, f.descricao as descfabricante, ' +
            'ultf.Nome as NomeUltimoFornecedor, ' +
            'fpf.Nome as NomeFornPreferencia, ' +
            'g.SituacaoECF as SituacaoECFGrupo, g.CST as CSTGrupo, ' +
            'g.ReducaoCST as ReducaoCSTGrupo, g.AliqICMS as AliqICMSGrupo, 0.000 as percund, ' +
            '0.000 as precomanund, i.unidade as undvenda, pr.preco as preconormal, ' +
            'i.FATORUNDVENDA as FatorItemUnd, 0.000 as percentualminimo, i.GrupoComissao, i.estoquefiscal, ' +
            'L.descricao as DescLocalizacao, i.IDTRIBFEDERAL, iu.QTDEMBALAGEM, ' +
            'gc.descricao as DESCGRDCOMISSAO, ' +
            ' i.aliqpis, i.aliqcofins, i.aliqir, i.aliqss, i.aliqipi, i.clasfiscal as NCM, i.cstpiscofins, ' +
            'i.ALIQPISSAIDA,i.CSTPISCOFINSSAIDA,i.NATURAZARECEITAPISCOFINS,i.ALIQPISSAIDA, ' +
            'i.ALIQCOFINSSAIDA,i.VINCULOCREDITOPISCOFINS,i.BASECREDITOPISCOFINS, i.empresa,i.cstipi, i.cstipientrada,' +
            'coalesce((select p1.preco from produtospreco p1 where p1.item = i.item and p1.tabelapreco = 111), 0) as tabelapreco1, ' +
            'coalesce((select p2.preco from produtospreco p2 where p2.item = i.item and p2.tabelapreco = 222), 0) as tabelapreco2, ' +
            'coalesce((select p3.preco from produtospreco p3 where p3.item = i.item and p3.tabelapreco = 333), 0) as tabelapreco3 ' +
            'from itens i ' +
            'Left join tipositens t on t.tipoitem = i.tipoitem ' +
            'left join Grupos g on g.Grupo = i.Grupo ' +
            'left join Unidades u ON u.Unidade = i.unidade ' +
            'left join Fabricantes f ON f.Fabricante = i.Fabricante ' +
            'inner join Favorecidos ultf ON ultf.Favorecido =  i.FornecPreferencia  ' +
            'inner join Favorecidos fpf ON fpf.Favorecido = i.UltimoFornecedor ' +
            'inner join produtospreco p on p.Item = i.Item and p.Unidade = i.Unidade and p.tabelapreco = :tabelapreco ' +
            'inner join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = :tabelapreco ' +
            'left join localizacoes l on l.localizacao = i.localizacao ' +
            'left join itensunidades iu on iu.item = i.item and i.unidade = iu.unidade ' +
            'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao ' +
            '  /*$*/ '; // (Felipe - 23/03/2016) NÃO REMOVER ESSA LINHA. Implementacao para adicionar tabelas de preco de acordo com o parametro "VisualizarTabelasPrecos".

    { Felipe (23/03/2016) - Implementacao para adicionar colunas de tabela de preco de acordo com o parametro "VisualizarTabelasPrecos".
                Deve-se deixar a string ('/*$*/') pois sera necessaria na montagem da consulta de pesquisa de item. O trecho antigo esta logo acima.
                NÃO REMOVER a string ('/*$*/'). Feito por conta de implantacao na Center Bike.  }
    qtdTabelas := ContaStrings(DMProjeto.sTabelasPreco, ';');

    if (qtdTabelas > 3) then
        qtdTabelas := 3;

    for i := 1 to qtdTabelas do
        begin
            index := InttoStr(i);
            Q_LocalizarItens.SQL.Text := Replace(Q_LocalizarItens.SQL.Text, PreencherStr(index, index, 3), SeparaStrings(DMProjeto.sTabelasPreco, ';', i));
            //sTabelas := sTabelas + Replace(', coalesce((select p$.preco from produtospreco p$ where p$.item = i.item and p$.tabelapreco = ' + SeparaStrings(DMProjeto.sTabelasPreco, ';', i) + '), 0) as tabelapreco$ ', '$', IntToStr(i));
        end;

    C_LocalizarItens.CommandText := Q_LocalizarItens.SQL.Text;

end;

function TDMProjeto.getTelaGeradora(Tipo: integer): string;
begin
    if tipo = 0 then
        result := ''
    else
        begin
            with Q_SQL do
                begin
                    close;
                    SQL.Text := 'select formname from tiposorigens ' +
                        'where origem = ' + IntToStr(Tipo);
                    open;
                    result := fieldbyname('formname').AsString;
                    close;
                end;
        end;
end;

function TDMProjeto.getTelaFavorecido(Tipo: integer): string;
begin
    if tipo = 0 then
        result := ''
    else
        begin
            with Q_SQL do
                begin
                    close;
                    SQL.Text := 'select form from tiposfavorecido ' +
                        'where tipofavorecido = ' + IntToStr(Tipo);
                    open;
                    result := fieldbyname('form').AsString;
                    close;
                end;
        end;
end;

function TDMProjeto.IsFeriado(dData: TDateTime): boolean;
begin
    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select Count(*) as IsFeriado from Feriados ' +
                'where Data = :D ';
            Params[0].asDate := dData;
            Open;

            result := FieldByName('IsFeriado').asInteger > 0;

            Close;
        end;
end;

procedure TDMProjeto.Lembrete;
begin
    if nCodigo <= 0 then
        DlgMsg.ShowMsg(947)
    else
        begin
            DMProjeto.SetParametrosForm([nCodigo, nTipo, NULL, 'Favorecido', 0]);
            DMProjeto.CriarForm('FrmLembrete', Sender, false);
        end;
end;

procedure TDMProjeto.Ocorrencia;
begin
    if nCodigo <= 0 then
        DlgMsg.ShowMsg(947)
    else
        begin
            DMProjeto.SetParametrosForm([nCodigo, sNome]);
            DMProjeto.CriarForm('FrmOcorrencias', Sender, true, true);
        end;
end;

procedure TDMProjeto.Memorize;
var
    nResult, nPkMemorize: Integer;
begin
    if nId <= 0 then
        begin
            DlgMsg.ShowMsg(947);
            exit;
        end;

    with Q_SQL do
        begin //Verificando se existe registros
            Close;
            Sql.Text := 'select count(*) from Memorizacoes where origem =:nOrigem and ' +
                ' idgerador = :nId';
            ParamByName('nOrigem').AsInteger := nOrigem;
            ParamByName('nId').AsInteger := nId;
            Open;
            nResult := Fields[0].AsInteger;
            Close;
        end;

    if (nResult > 0) then
        if DlgMsg.ShowMsg(3071) = 200 then //Deseja subtituir
            exit;

    with Q_SQL do
        begin
            Close;
            Sql.Text := 'delete from Memorizacoes where origem =:nOrigem and ' +
                ' idgerador = :nId';
            ParamByName('nOrigem').AsInteger := nOrigem;
            ParamByName('nId').AsInteger := nId;
            ExecSql;
        end;
    //Inclusao da Memorizacao
    nPkMemorize := GravaMemorize(nOrigem, nId, sCodigo, sDescricao);

    if DlgMsg.ShowMsg(3075) = 100 then
        begin
            if nFav > 0 then
                SetParametrosForm([NULL, nId, nTipo, 'Memorizacao', nPkMemorize, nFav])
            else
                SetParametrosForm([NULL, nId, nTipo, 'Memorizacao', nPkMemorize]);
            CriarForm('FrmLembrete', Sender, true);
        end;
end;

function TDMProjeto.GravaMemorize(nOrigem: Integer; nId: Integer; sCodigo: string; sDescricao: string): Integer;
begin
    Q_Sql.Close;
    Q_Sql.Sql.Text := 'insert into memorizacoes (memorizacao, data, origem, idgerador, descricao, numero) ' +
        'values (:Memorizacao, :DataAtual, :Origem, :Id, :sdescricao, :snumero)';
    Q_Sql.ParamByName('DataAtual').AsDateTime := DMProjeto.dDataSistema;
    Q_Sql.ParamByName('Origem').AsInteger := nOrigem;
    Q_Sql.ParamByName('Id').AsInteger := nId;
    Q_Sql.ParamByName('Memorizacao').AsInteger := dmprojeto.nextidglobal;
    Q_Sql.ParamByName('sdescricao').AsString := sDescricao;
    Q_Sql.ParamByName('snumero').AsString := sCodigo;

    Q_Sql.ExecSQL;
    IBT_Projeto.Commit;

    Q_Sql.Close;
    Q_Sql.Sql.Text := 'select max(memorizacao) maximo from memorizacoes';
    Q_Sql.Open;
    result := Q_Sql.FieldByName('maximo').AsInteger;
end;

function TDMProjeto.getEndereco(Favorecido: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DB_Projeto;
            close;
            SQL.Text := 'select (endereco || ''#13'' || Cidade || ''-'' || UF || ''#13'' || CEP) as Endereco from favorecidos ' +
                'where favorecido = :fav ';
            ParamByName('fav').AsInteger := Favorecido;
            open;
            result := fieldbyname('endereco').AsString;
            close;
            Free;
        end;
end;

function TDMProjeto.Gen_ID(Generator: string; bVisualizar: boolean = false): integer;
begin
    with Q_IDs do
        begin
            if bVisualizar then
                SQL.Text := 'select gen_id(' + Generator + ',0) from rdb$database'
            else
                SQL.Text := 'select gen_id(' + Generator + ',1) from rdb$database';
            Open;
            result := fields[0].AsInteger;
            Close;
        end;
end;

procedure TDMProjeto.ImprimirRelatorioFavorecido;
begin
    try
        Screen.Cursor := crHourGlass;
        // RptFavorecidos := TRptFavorecidos.Create(Self);
        if sTipo = 'CREDITO' then
            begin
                SetParametrosForm([null, nFavorecido, 'C']);
                CriarForm('RptCreditos', Sender, true);
            end
        else if sTipo = 'CREDITOFORN' then
            begin
                SetParametrosForm([null, nFavorecido, 'F']);
                CriarForm('RptCreditos', Sender, true);
            end
        else if sTipo = 'CHEQUESPENDENTES' then
            begin
                SetParametrosForm([null, nFavorecido]);
                CriarForm('RptChequesNaEmpresa', Sender, true);
                //RptFavorecidos.ImprimeRelatorioCheqPendentes( nFavorecido, bImpressora );
            end
        else if sTipo = 'CHEQUESACOMPENSAR' then
            begin
                SetParametrosForm([null, nFavorecido]);
                CriarForm('RptChequesACompensar', Sender, true);
            end
        else if sTipo = 'SALDOEMABERTO' then
            begin
                SetParametrosForm([null, nFavorecido]);
                CriarForm('RptInvoicesAReceber', Sender, true);
                //RptFavorecidos.ImprimeRelatorioSaldoEmAberto( nFavorecido, bImpressora );
            end
        else if sTipo = 'SALDOEMABERTOFORNEC' then
            begin
                SetParametrosForm([null, nFavorecido]);
                CriarForm('RptContasAPagar', Sender, true);
                //RptFavorecidos.ImprimeRelatorioSaldoEmAbertoFornec( nFavorecido, bImpressora );
            end;
    finally
        //RptFavorecidos.Free;
        Screen.Cursor := crDefault;
    end;
end;

function TDMProjeto.getDataServidor: TDateTime;
begin
    with Q_SQL do
        begin
            SQL.Clear;
            SQL.Text := 'select current_date from rdb$database';
            Open;
            result := Fields[0].AsDateTime;
        end;
end;

function TDMProjeto.SetZero;
begin
    result := '0' + DecimalSeparator + '00';
end;

procedure TDMProjeto.getStatusCores;
var i: integer;
begin
    with DMProjeto.Q_SQL do
        begin
            SQL.Clear;
            SQL.Text := 'select status,descricao,cor from statusdoc';
            Open;
            First;
            i := 1;
            while not EOF do
                begin
                    aStatusCores[i].Status := fieldbyname('status').AsInteger;
                    aStatusCores[i].Descricao := fieldbyname('descricao').AsString;
                    if fieldbyname('cor').IsNull then
                        aStatusCores[i].Cor := clBlack
                    else
                        aStatusCores[i].Cor := StringToColor(fieldbyname('cor').AsString);
                    Next;
                    inc(i);
                end;
            Close;
        end;
end;

function TDMProjeto.CorPadrao(nStatus: Integer): TColor;
var i: byte;
begin
    if nStatus = 0 then
        begin
            result := clBlack;
            Exit;
        end;
    result := clBlack;
    for i := 1 to 20 do
        if aStatusCores[i].Status = nStatus then
            begin
                result := aStatusCores[i].Cor;
                Break;
            end;
end;

function TDMProjeto.DescricaoStatus(nStatus: Integer): string;
var i: byte;
begin
    result := '';
    for i := 1 to 20 do
        if aStatusCores[i].Status = nStatus then
            begin
                result := aStatusCores[i].Descricao;
                Break;
            end;
end;

procedure TDMProjeto.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMProject := self;
    VersaoSistema := '6.65';
    C_LocalizarItens.CommandText := Q_LocalizarItens.SQL.Text;
    C_LocalizarFav.CommandText := Q_LocalizarFav.SQL.Text;
    C_LocalizarEquip.CommandText := Q_LocalizarEquip.SQL.Text;
    msAgenda.Textura := msGeral.Textura;
    msFinanceiro.Textura := msGeral.Textura;
    msFornecedores.Textura := msGeral.Textura;
    msFuncionarios.Textura := msGeral.Textura;
    msCaixa.Textura := msGeral.Textura;
    msItens.Textura := msGeral.Textura;
    msClientes.Textura := msGeral.Textura;
    msRemessa.Textura := msGeral.Textura;
    msContabil.Textura := msGeral.Textura;
    msCompany.Textura := msGeral.Textura;

end;

procedure TDMProjeto.GravarDataset(cdsDataSet: TClientDataSet);
begin
    try
        cdsDataSet.post;
    except
    end;

    if cdsDataSet.ChangeCount <= 0 then
        exit;

    cdsDataSet.Filtered := false;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    cdsDataSet.ApplyUpdates(0);

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
end;

function TDMProjeto.SaldoContaAtual;
begin
    result := 0;
    with DMProjeto.StoreProcedure do
        begin
            if (dDataF > 0) and (dData = 0) then
                begin
                    StoredProcName := 'PP_SALDOCONTAATUAL_F';
                    ParamByName('Conta').AsInteger := nID;
                    ParamByName('DataF').AsDate := trunc(dDataF);
                end
            else if dDataF > 0 then
                begin
                    StoredProcName := 'PP_SALDOCONTAATUAL_P';
                    Prepare;
                    ParamByName('Conta').AsInteger := nID;
                    ParamByName('DataI').AsDate := trunc(dData);
                    ParamByName('DataF').AsDate := trunc(dDataF);
                end
            else
                begin
                    StoredProcName := 'PP_SALDOCONTAATUAL';
                    ParamByName('Conta').AsInteger := nID;
                end;
            ExecProc;
            result := parambyname('saldo').ascurrency;
        end;
end;

function TDMProjeto.SaldoContaAtualPai;
begin
    result := 0;
    with DMProjeto.Q_SQL do
        begin
            if (dDataF > 0) and (dData = 0) then
                begin
                    SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li, contas c ' +
                        'where c.contapai = :conta and li.conta = c.conta and l.data <= :dDataF and l.lancamento = li.lancamento';
                    params[0].asinteger := nID;
                    params[1].asdatetime := trunc(dDataF);
                end
            else if (dData > 0) and (dDataF > 0) then
                begin
                    SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li, contas c ' +
                        'where c.contapai = :conta and li.conta = c.conta and l.data >= :dDataI and l.data <= :dDataF and l.lancamento = li.lancamento';
                    params[0].asinteger := nID;
                    params[1].asdatetime := trunc(dData);
                    params[2].asdatetime := trunc(dDataF);
                end
            else if dDataF > 0 then
                begin
                    SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li, contas c ' +
                        'where c.contapai = :conta and li.conta = c.conta and l.data >= :dDataI and l.data <= :dDataF and l.lancamento = li.lancamento';
                    params[0].asinteger := nID;
                    params[1].asdatetime := trunc(FirstMonthDay(dDataF));
                    params[2].asdatetime := trunc(dDataF);
                end
            else
                begin
                    SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li, contas c ' +
                        'where c.contapai = :conta and li.conta = c.conta and l.lancamento = li.lancamento';
                    params[0].asinteger := nID;
                end;
            Open;
            if recordcount > 0 then
                result := fieldbyname('saldo').ascurrency;
            close;
        end;
end;

function TDMProjeto.SaldoContaDebito;
begin
    result := 0;
    with DMProjeto.Q_SQL do
        begin
            SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li ' +
                'where l.lancamento = li.lancamento and li.conta = :conta and l.data >= :dDataI and l.data <= :dDataF and valor < 0';
            params[0].asinteger := nID;
            params[1].asdatetime := trunc(FirstMonthDay(dData));
            params[2].asdatetime := trunc(dData);
            Open;
            if recordcount > 0 then
                result := fieldbyname('saldo').ascurrency;
            close;
        end;
end;

function TDMProjeto.SaldoContaCredito;
begin
    result := 0;
    with DMProjeto.Q_SQL do
        begin
            SQL.Text := 'select sum(valor) as saldo from lancamentos l, lancamentositens li ' +
                'where l.lancamento = li.lancamento and li.conta = :conta and l.data >= :dDataI and l.data <= :dDataF and valor > 0';
            params[0].asinteger := nID;
            params[1].asdatetime := trunc(FirstMonthDay(dData));
            params[2].asdatetime := trunc(dData);
            Open;
            if recordcount > 0 then
                result := fieldbyname('saldo').ascurrency;
            close;
        end;
end;

function TDMProjeto.ContaPadrao;
begin
    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.Text := 'select conta from contaspadrao where id = :id';
            params[0].asinteger := nID;
            Open;
            result := fieldbyname('conta').asinteger;
            close;
        end;
end;

procedure TDMProjeto.CancelarLancamentos;
var sLancamentos: string;
begin
    if pos(',', sIDGerador) > 0 then
        Q_Contabil.SQL.Text := 'select lancamento from lancamentos where idgerador in (' + sidgerador + ')'
    else
        Q_Contabil.SQL.Text := 'select lancamento from lancamentos where idgerador = ' + sidgerador;
    Q_Contabil.open;
    sLancamentos := '';
    while not Q_Contabil.eof do
        begin
            if sLancamentos <> '' then
                sLancamentos := sLancamentos + ',';
            sLancamentos := Q_Contabil.FieldByName('lancamento').asstring;
            Q_Contabil.next;
        end;

    //
    if sLancamentos <> '' then
        begin
            Q_Contabil.SQL.Text := 'delete from lancamentos where lancamento in (' + sLancamentos + ')';
            Q_Contabil.execsql;
        end;
    //
    if sLancamentos <> '' then
        begin
            Q_Contabil.SQL.Text := 'delete from lancamentositens where lancamento in (' + sLancamentos + ')';
            Q_Contabil.execsql;
        end;
end;

function TDMProjeto.Contabiliza;
var nID: integer;
begin
    if nIDGerador > 0 then
        DMProjeto.CancelarLancamentos(IntToStr(nIDGerador));
    //
    nValor := abs(nValor);
    nID := DMProjeto.NextIDGlobal;
    with Q_Contabil do
        begin
            close;
            SQL.Text := 'insert into lancamentos(lancamento,referencia,origem,data,numero,idgerador,' +
                'usuario,data_audit,hora_audit) ' +
                'values(:lancamento,:referencia,:origem,:data,:numero,:idgerador,' +
                ':usuario,:data_audit,:hora_audit) ';
            params[0].asinteger := nID;
            params[1].asstring := sNumero;
            params[2].asinteger := nOrigem;
            params[3].asdatetime := dData;
            params[4].asstring := sNumero;
            if (nOrigem = 21) and (nIDGerador = 0) then
                params[5].asinteger := nID
            else
                params[5].asinteger := nIDGerador;

            params[6].asinteger := nFuncionario;
            params[7].asdatetime := dData;
            params[8].asstring := copy(TimeToStr(time), 1, 5);
            ExecSQL;
            // Crédito
            close;
            SQL.Text := 'insert into lancamentositens(lancamentoitem,lancamento,conta,favorecido,' +
                'valor,historico,alterar,flag_id) ' +
                'values(:lancamentoitem,:lancamento,:conta,:favorecido,:valor,:historico,1,:flag_id)';
            params[0].asinteger := DMProjeto.NextIDGlobal;
            params[1].asinteger := nID;
            params[2].asinteger := nContaCredito;
            params[3].asinteger := nFavorecido;
            params[4].ascurrency := nValor;
            params[5].asstring := sHistorico;
            params[6].asinteger := nFlag_ID;
            ExecSQL;
            // Débito
            close;
            SQL.Text := 'insert into lancamentositens(lancamentoitem,lancamento,conta,favorecido,' +
                'valor,historico,alterar,flag_id) ' +
                'values(:lancamentoitem,:lancamento,:conta,:favorecido,:valor,:historico,1,:flag_id)';
            params[0].asinteger := DMProjeto.NextIDGlobal;
            params[1].asinteger := nID;
            params[2].asinteger := nContaDebito;
            params[3].asinteger := nFavorecido;
            params[4].ascurrency := nValor * -1;
            params[5].asstring := sHistorico;
            params[6].asinteger := nFlag_ID;
            ExecSQL;
        end;
    result := nID;
end;

function TDMProjeto.HistoricoPadraoOrigem;
begin
    with DMProjeto.Q_SQL do
        begin
            SQL.Text := 'select historicopadrao from tiposorigens where origem = :id';
            params[0].asinteger := nID;
            Open;
            result := fieldbyname('historicopadrao').asinteger;
            close;
        end;
end;

function TDMProjeto.TipoOrigem(sForm: string): integer;
begin
    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.Text := 'select origem from tiposorigens where formname = :sForm';
            params[0].asstring := sForm;
            Open;
            result := fieldbyname('origem').asinteger;
            close;
        end;
end;

function TDMProjeto.TipoOrigem(Tipo: integer): string;
begin
    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.Text := 'select descricao from tiposorigens where origem = :tipo';
            params[0].asInteger := Tipo;
            Open;
            result := fieldbyname('descricao').asstring;
            close;
        end;
end;

function TDMProjeto.HistoricoPadrao;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'select descricao from historicos where historico = :id';
            params[0].asinteger := nID;
            Open;
            result := fieldbyname('descricao').asstring;
            close;
        end;
end;

function TDMProjeto.GetValores;
begin
    Q_Contabil.close;
    if nValor > 0 then
        Q_Contabil.SQL.text := 'select c.descricao from lancamentos l, lancamentositens li, contas c ' +
            'where l.lancamento = :lancamento and li.valor < 0 and l.lancamento = li.lancamento and li.conta = c.conta '
    else
        Q_Contabil.SQL.text := 'select c.descricao from lancamentos l, lancamentositens li, contas c ' +
            'where l.lancamento = :lancamento and li.valor > 0 and l.lancamento = li.lancamento and li.conta = c.conta ';
    Q_Contabil.Params[0].asinteger := nID;
    Q_Contabil.open;
    result := Q_Contabil.FieldByName('descricao').asstring;
    Q_Contabil.next;
    if not Q_Contabil.eof and (Q_Contabil.FieldByName('descricao').asstring <> '') then
        result := '** várias contas **';
end;

function TDMProjeto.CalcularNet;
begin
    result := 0;
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'select sum(li.valor) as Saldo from lancamentos l, lancamentositens li, contas c, tiposcontas t ' +
        'where l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = t.tipoconta and t.tipo = ''R'' and ' +
        'l.data >= :dDataI and l.data <= :dDataF';
    if dDataI = 0 then
        Q_Contabil.Params[0].asdatetime := FirstMonthDay(dDataF)
    else
        Q_Contabil.Params[0].asdatetime := dDataI;
    Q_Contabil.Params[1].asdatetime := dDataF;
    Q_Contabil.open;
    if Q_Contabil.recordcount > 0 then
        result := Q_Contabil.FieldByName('Saldo').ascurrency;

    //
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'select sum(li.valor) as Saldo from lancamentos l, lancamentositens li, contas c, tiposcontas t ' +
        'where l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = t.tipoconta and t.tipo in (''D'',''S'') and ' +
        'l.data >= :dDataI and l.data <= :dData';
    if dDataI = 0 then
        Q_Contabil.Params[0].asdatetime := FirstMonthDay(dDataF)
    else
        Q_Contabil.Params[0].asdatetime := dDataI;
    Q_Contabil.Params[1].asdatetime := dDataF;
    Q_Contabil.open;
    if Q_Contabil.recordcount > 0 then
        result := result + Q_Contabil.FieldByName('Saldo').ascurrency
end;

function TDMProjeto.CalcularGrossProfit;
begin
    result := 0;
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'select sum(li.valor) as Saldo from lancamentos l, lancamentositens li, contas c, tiposcontas t ' +
        'where l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = t.tipoconta and t.tipo = ''R'' and ' +
        'l.data >= :dDataI and l.data <= :dDataF';
    Q_Contabil.Params[0].asdatetime := dDataI;
    Q_Contabil.Params[1].asdatetime := dDataF;
    Q_Contabil.open;
    if Q_Contabil.recordcount > 0 then
        result := Q_Contabil.FieldByName('Saldo').ascurrency;

    //
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'select sum(li.valor) as Saldo from lancamentos l, lancamentositens li, contas c, tiposcontas t ' +
        'where l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = t.tipoconta and t.tipo = ''S'' and ' +
        'l.data >= :dDataI and l.data <= :dData';
    Q_Contabil.Params[0].asdatetime := dDataI;
    Q_Contabil.Params[1].asdatetime := dDataF;
    Q_Contabil.open;
    if Q_Contabil.recordcount > 0 then
        result := result + Q_Contabil.FieldByName('Saldo').ascurrency;
end;

function TDMProjeto.FormataEndereco(DataSet: TClientDataSet): string;
begin
    result := 'Endereço: ' + DataSet.FieldByName('Endereco').AsString + '. ';
    if not DataSet.FieldByName('Cidade').IsNull then
        result := result + DataSet.FieldByName('Cidade').AsString + ' ' + DataSet.FieldByName('UF').AsString + '. ';
    if not DataSet.FieldByName('CEP').IsNull then
        result := result + DataSet.FieldByName('CEP').AsString + ' ';
    if not DataSet.FieldByName('Fone1').IsNull then
        result := result + 'Fone: ' + DataSet.FieldByName('Fone1').AsString + ' ' + DataSet.FieldByName('Fone2').AsString + ' ';
    if not DataSet.FieldByName('Fax').IsNull then
        result := result + 'Fax: ' + DataSet.FieldByName('Fax').AsString;
end;

function TDMProjeto.getMes(sMes: string): integer;
begin
    with q_sql do
        begin
            close;
            sql.text := 'select mes from meses where upper(descricao)= :mes';
            parambyname('mes').asstring := uppercase(sMes);
            open;
            result := fields[0].AsInteger;
            close;
        end;
end;

function TDMProjeto.getDescricaoMes(Mes: integer): string;
begin
    with q_sql do
        begin
            close;
            sql.text := 'select descricao from meses where mes= :mes';
            parambyname('mes').AsInteger := Mes;
            open;
            result := fields[0].AsString;
            close;
        end;
end;

procedure TDMProjeto.AtualizarClienteVenda;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Update Favorecidos set ' +
                '    Endereco = :End, ' +
                '    Cidade   = :Cid, ' +
                '    UF       = :UF, ' +
                '    CEP      = :CEP, ' +
                '    Fone1    = :Fone, ' +
                '    Email    = :Email, ' +
                '    UltCompra = :Data, ' +
                '    UltValorCompra = :Total ';

            SQL.Text := SQL.Text + ' Where (consumidorfinal <> ''S'') and (Favorecido = :Fav )';

            ParamByName('End').asString := Endereco;
            ParamByName('Cid').asString := Cidade;
            ParamByName('UF').asString := UF;
            ParamByName('CEP').asString := CEP;
            ParamByName('Fone').asString := Fone;
            ParamByName('Email').asString := Email;
            ParamByName('Fav').asInteger := Favorecido;
            ParamByName('Data').asDateTime := dData;
            ParamByName('Total').asCurrency := Total;

            ExecSQL;

        end;
end;

procedure TDMProjeto.AtualizarFornecedorCompra;
var
    UltCompra: string;
begin
    with Q_SQL do
        begin
            Close;

            SQL.Text := 'Select Max(Entrada) as UltCompra from Entradas ' +
                'where Situacao = ''N'' and TipoPadrao = 100 and Favorecido = ' + IntToStr(Favorecido) +
                ' and  Data = (Select Max(Data) from Entradas e ' +
                '              where e.Situacao = ''N'' and e.TipoPadrao = 100 ' +
                '              and   e.Favorecido = ' + IntToStr(Favorecido) + ') ';
            Open;

            UltCompra := FieldByName('UltCompra').asString;

            Close;
            SQL.Text := 'Update Favorecidos set ' +
                '    Endereco = :End, ' +
                '    Cidade   = :Cid, ' +
                '    UF       = :UF, ' +
                '    CEP      = :CEP, ' +
                '    Email    = :Email ';

            if UltCompra <> '' then
                SQL.Text := SQL.Text +
                    '  , UltCompra = (Select Data from Entradas where Entrada = ' + UltCompra + '), ' +
                    '    UltValorCompra = (Select Total from Entradas Where Entrada = ' + UltCompra + ') ';

            SQL.Text := SQL.Text + ' Where Favorecido = :Fav ';

            ParamByName('End').asString := Endereco;
            ParamByName('Cid').asString := Cidade;
            ParamByName('UF').asString := UF;
            ParamByName('CEP').asString := CEP;
            ParamByName('Email').asString := Email;

            ParamByName('Fav').asInteger := Favorecido;

            ExecSQL;

        end;
end;

function TDMProjeto.EstoqueItem(nItem: Integer; dData: TDateTime): Currency;
var mais, menos: Currency;
    data, item: string;
begin
    item := IntToStr(nItem);
    data := QuotedStr(FormatDateTime('mm/dd/yyyy', dData));
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Sum(ei.quantidade*ei.fator) From entradasitens ei ' +
                'Join entradas e on ei.entrada=e.entrada Join itens i on ei.item=i.item ' +
                'Where ei.item = :item And e.data<= :data And i.tipoitem=1';
            ParamByName('Item').AsInteger := nItem;
            ParamByName('Data').AsDateTime := dData;
            Open;
            mais := Fields[0].AsFloat;
            Close;
            SQL.Text := 'Select Sum(si.quantidade*si.fator) From saidasitens si ' +
                'Join saidas s On si.saida=s.saida ' +
                'Where si.item = :item ' +
                'And s.data<= :data And s.baixaestoque=' + QuotedStr('S');
            ParamByName('Item').AsInteger := nItem;
            ParamByName('Data').AsDateTime := dData;
            Open;
            menos := Fields[0].AsFloat;
            Close;
            SQL.Text := 'select iu.fator from itens i ' +
                'inner join itensunidades iu on iu.item = i.item and iu.unidade = i.unidade ' +
                'where i.item = :item';
            Parambyname('Item').AsInteger := nItem;
            Open;
            result := mais - menos / fields[0].AsCurrency;
        end;
end;

function TDMProjeto.PrimeiroDiaUtil;
var
    FBD: TDateTime;
begin
    Result := 0;
    if not Inclusive then
        FBD := DateRef + 1
    else
        FBD := DateRef;

    while Result = 0 do
        begin
            if (DayOfWeek(FBD) = 7 {Sabado}) then
                begin

                    if (Parametro('SabadoUtil') = 'S') then
                        begin
                            if IsFeriado(FBD) then
                                FBD := FBD + IIF(Atraso, 3, 2)
                            else
                                Result := FBD + IIF(Atraso, 2, 0);
                        end

                    else
                        FBD := FBD + IIF(Atraso, 3, 2); // ir para Segunda ou Terça

                end
            else if (DayOfWeek(FBD) = 1 {Domingo}) then
                FBD := FBD + IIF(Atraso, 2, 1)

            else if (DayOfWeek(FBD) in [2..6]) then
                begin

                    if IsFeriado(FBD) then
                        FBD := FBD + 1
                    else
                        Result := FBD;

                end;
        end;

end;

function TDMProjeto.CalcularComissaoDev(Entrada, Saida, vendedor, item, subtotalitem, planopagamento, entradaitem: Integer; Data: TDateTime): integer;
begin
    Q_SQL.close;
    Q_SQL.Sql.Text := 'select Max(venda) as Saida, Vendedor from comissoesdev where entrada = ' + IntToStr(Entrada);
    Q_SQL.Open;
    Saida := Q_Sql.FieldByName('Saida').Value;
    Vendedor := Q_Sql.FieldByName('Vendedor').Value;
    Q_SQL.close;
    Q_SQL.Sql.Text := 'delete from comissoesdev where entrada = ' + IntToStr(Entrada);
    Q_SQL.Open;
    Q_SQL.sql.text := 'insert into comissoesdev ' +
        '(comissaodev, data, venda, funcionario, valor, entrada, valoritem) ' +
        'values ' +
        '(:comissaodev, :data, :funcionario, :valor, :entrada, :valoritem) ';
    Q_SQL.ParamByName('ComissaoDev').AsInteger := DMProjeto.NextIDGlobal;
    Q_SQL.ParamByName('Data').AsDateTime := Data;
    Q_SQL.ParamByName('Venda').AsInteger := Saida;
    Q_SQL.ParamByName('Funcionario').AsInteger := Vendedor;
    Q_SQL.ParamByName('Valoritem').AsCurrency := SubTotalItem;
    //    if (C_ItensSaidaItem.AsInteger > 0) then
    //      Q_SQL.ParamByName('Valor').AsCurrency				:= DMProjeto.CalcularComissao( IntToStr(Saida), C_ItensSaidaItem.AsInteger, C_ItensSubTotalItem.AsCurrency )
    //    else
    //      Q_SQL.ParamByName('Valor').AsCurrency := CalcularComissaoDevolucao( C_ItensITEM.AsInteger, C_ItensSubTotalItem.AsCurrency );
    //      Q_SQL.ParamByName('Entrada').AsInteger			:= Entrada
    //      Q_SQL.ExecSQL;
    //      Q_SQL.close;
end;

function TDMPROJETO.CalcularComissaoDevolucao(Data: TDateTime; item, Vendedor, PlanoPagamento: integer; total: currency): currency;
var nDOW: integer;
    Comissao, ComissGrupo, ComissaoPlano, PComissao, nValorComissao, nPComiss: currency;
begin
    nDOW := IIF(DMProjeto.IsFeriado(Data), 8, DayOfWeek(Data));
    //// Comissão do Item e do Grupo
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select i.comissao, i.tipoitem, g.comissao as comissgrupo ' +
        'from itens i ' +
        'left join grupos g on i.grupo = g.grupo ' +
        'where item = ' + IntToStr(item);
    DMProjeto.Q_SQL.Open;
    Comissao := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    ComissGrupo := DMProjeto.Q_SQL.FieldByName('comissgrupo').AsCurrency;
    //// Comissão do Plano de Pagamento
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select comissao from planospagamento where planopagamento = ' + IntToStr(PlanoPagamento);
    DMProjeto.Q_SQL.Open;
    ComissaoPlano := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    //// Comissão do Usuário
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'select comissao from favorecidos where favorecido = ' + IntToStr(Vendedor);
    DMProjeto.Q_SQL.Open;
    PComissao := DMProjeto.Q_SQL.FieldByName('comissao').AsCurrency;
    DMProjeto.Q_SQL.Close;

    nValorComissao := 0;
    nPComiss := 0;

    if (ComissaoPlano > 0) then
        nPComiss := ComissaoPlano {Comissão do Plano de Pagamento }
    else if (Comissao > 0) then
        nPComiss := Comissao {Comissão no Produto}
    else if (ComissGrupo > 0) then
        nPComiss := ComissGrupo {Comissão definida no Grupo}
    else if (PComissao > 0) then
        nPComiss := PComissao; {Comissão do Usuário}

    {Adicionando comissão por dia especial}
    nPComiss := nPComiss + DMProjeto.Comissao_Dia(Vendedor, nDoW);

    nValorComissao := total * (nPComiss / 100);

    Result := nValorComissao;

end;

function TDMProjeto.CalcularComissoes;
var
    i: Integer;
begin
    try
        with Q_Contabil do
            begin {Utilizado aqui por não haver mais outro disponível}
                Close;
                SQL.Text := 'Select s.Saida ' +
                    'from   Saidas s, Favorecidos fu ' +
                    'Where  s.Vendedor = fu.Favorecido and s.Situacao = ''N'' ' +
                    'and    s.Vendedor in (' + Vendedores + ')  ' +
                    'and    s.Data >= :DI and s.Data <= :DF ' +
                    'and    s.CalcComissao = ''S'' ' +
                    'order by s.Vendedor ';
                ParamByName('DI').asDateTime := DataI;
                ParamByName('DF').asDateTime := DataF;
                Open;

                Last;

                Result := Recordcount;
                i := 0;

                First;
                while not EOF do
                    begin
                        CalcularComissao(FieldByName('Saida').asString);

                        inc(i);

                        if Assigned(P) then
                            P(i, result);

                        Next;
                    end;

            end;
        //        Q_Sql.SQL.Text := 'SELECT E.entrada, e.vendedor, e.planopagamento e.data, ei.item, ei.subtotalitem , ei.entradaitem '+
        //                 'FROM ENTRADAS E inner join entradasitens ei on ei.entrada = e.entrada '+
        //                 ' WHERE TIPOMOVIMENTO = 8 '+
        //                 ' and    E.Vendedor in (' + Vendedores + ') '+
        //                 ' and    E.Data >= :DI and E.Data <= :DF '+
        //                 ' and    E.CalcComissao = ''S'' '+
        //                 'order by E.Vendedor ';
        //        Q_Sql.ParamByName('DI').asDateTime := DataI;
        //        Q_Sql.ParamByName('DF').asDateTime := DataF;
        //        Q_Sql.Open;
        //        Q_Sql.Fisrt;
        //        while not Q_Sql.EOF do
        //        begin
        //          CalcularComissaoDev(FieldByName('ENTRADA').AsInteger,
        //                              0,
        //                              FieldByName('vendedor').AsInteger,
        //                              FieldByName('planopagamento').AsInteger,
        //                              FieldByName('item').AsInteger,
        //                              FieldByName('subtotalitem').AsCurrency,
        //                              FieldByName('entradaitem').AsInteger,
        //                              FieldByName('DATA').AsDateTime);
        //          inc(i);
        //          Next;
        //        end;
        DB_Projeto.DefaultTransaction.CommitRetaining;

        DlgMsg.ShowMsg(1891);
    except
        on e: Exception do
            begin
                if DB_Projeto.DefaultTransaction.InTransaction then
                    DB_Projeto.DefaultTransaction.RollbackRetaining;

                DlgMsg.ShowMsg(2, e.message, '');
            end;
    end;
end;

function TDMProjeto.Comissao_Dia(nVendedor, nDoW: Integer): Currency;
begin
    Result := 0;
    with Q_SQL2 do
        begin
            {Capturando Comissao do Funcionario, Utilizada na função acima}
            Close;
            SQL.Text := 'Select Funcionario, Dia_Semana, Add_Comissao ' +
                'From FuncsPayItens f INNER JOIN Comissoes_Dia c ON f.PayrollItem = c.PayrollItem and c.Dia_Semana = :DS ' +
                'Where f.Funcionario = :FUNC ';
            ParamByName('FUNC').asInteger := nVendedor;
            ParamByName('DS').asInteger := nDow;
            Open;

            Result := FieldByName('Add_Comissao').asCurrency;

            Close;
        end; //with
end;

function TDMProjeto.CalcularComissao;
var
    nPComiss, nPDesconto: Double;
    nDOW, nSaida: Integer;
    nValorComissao, nRateioItem, nCheqPre, nComissaoAddicional: Currency;
    bPerc, bGrupoComiss, bPesquisaMultiUnidade, bDiminuirComissaoDesconto: boolean;
    sTipoItemComissao: string;

begin
    bDiminuirComissaoDesconto := (Parametro('DiminuirComissaoDesconto') = 'S');
    bPesquisaMultiUnidade := (DMProjeto.Parametro('PesquisaMultiUnidade') = 'S');
    nComissaoAddicional := 0;
    sTipoItemComissao := ' ';
    if (Parametro('TipoItemComissao') = '1') then
        sTipoItemComissao := ' and i.TIpoItem = 1 ';
    if (Parametro('TipoItemComissao') = '3') then
        sTipoItemComissao := ' and i.TIpoItem = 3 ';
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select s.saida, s.data, s.pcomissao, s.total, s.totalitens123, ' +
                ' s.vendedor, si.Quantidade, si.Preco, si.SubTotalItem, (si.RateioDesconto ) as RateioDesconto, i.Comissao, i.TipoItem, ' +
                ' g.Comissao as ComissGrupo, fu.Comissao as ComissVend, tp.Add_Comissao, ' +
                ' si.precotabela, i.grupocomissao, si.desconto, tm.CB_COMISSAO, pp.COMISSAO as ComissaoPlano ' +
                'from   Saidas s ' +
                '    LEFT JOIN SaidasItens si ON si.Saida = s.Saida ' +
                '    LEFT JOIN Itens i ON i.Item = si.Item ' +
                '    LEFT JOIN Favorecidos fu ON s.Vendedor = fu.Favorecido ' +
                '    LEFT JOIN TabelasPreco tp ON tp.TabelaPreco = si.TabelaPreco ' +
                '    LEFT JOIN Grupos g ON i.Grupo = g.Grupo ' +
                '    LEFT JOIN TiposMovimento tm on s.tipomovimento = tm.tipomovimento ' +
                '    LEFT JOIN PlanosPagamento pp On s.planopagamento = pp.planopagamento ' +
                'Where  s.Saida = ' + Saida + '  ' +
                sTipoItemComissao +
                iif(SaidaItem = 0, '', 'and si.SaidaItem = ' + IntToStr(SaidaItem)) + ' ' +
                'and s.CalcComissao = ''S'' and si.situacao <> ''C'' ' +
                'order by s.Vendedor, si.Saida, si.Ordem ';
            Open;
            {Se não há vendedor não há como calcular comissao}
            while ((FieldByName('Vendedor').asInteger = 0) or (FieldByName('TipoItem').asInteger > 3)) and not EOF do
                Next;

            while not EOF do
                begin
                    {Para cada Saida}
                    nSaida := FieldByName('Saida').asInteger;
                    nDOW := IIF(IsFeriado(FieldByName('Data').asDateTime), 8, DayOfWeek(FieldByName('Data').asDateTime));
                    nCheqPre := 0;
                    {Para cada Item da Saida}
                    nValorComissao := 0;
                    while not EOF and (nSaida = FieldByName('Saida').asInteger) do
                        begin
                            nPComiss := 0;

                            if (FieldByName('CB_COMISSAO').AsString = 'S') and (FieldByName('PComissao').AsCurrency > 0) then
                                nPComiss := FieldByName('PComissao').AsCurrency
                            else
                                begin
                                    // Valor do Desconto em VALORES

                                    bGrupoComiss := Parametro('GrupoComissao') = 'S';
                                    if bGrupoComiss then
                                        nRateioItem := 0
                                    else
                                        nRateioItem := FieldByName('RateioDesconto').AsCurrency;
                                    nPDesconto := FieldByName('Desconto').AsCurrency - nRateioItem;

                                    // Valor do Desconto em PERCENTUAL
                                    if (FieldByName('PrecoTabela').AsCurrency = 0) or (FieldByName('PrecoTabela').IsNull) then
                                        nPDesconto := 0
                                    else
                                        nPDesconto := Abs((nPDesconto * 100) / FieldByName('PrecoTabela').AsCurrency);

                                    if Parametro('GrupoComissao') = 'S' then
                                        begin
                                            Q_ComandoSQL.Close;
                                            Q_ComandoSQL.SQL.Text := 'select comissao from gruposcomissoesdet ' +
                                                'where grupocomissao = :gc and :vlr between valorini and valorfim ';
                                            Q_ComandoSQL.ParamByName('gc').AsInteger := FieldByName('grupocomissao').AsInteger;
                                            Q_ComandoSQL.ParamByName('vlr').AsCurrency := nPDesconto;
                                            Q_ComandoSQL.Open;
                                            if Q_ComandoSQL.RecordCount > 0 then
                                                begin
                                                    bPerc := True;
                                                    nPComiss := Q_ComandoSQL.FieldByName('comissao').AsCurrency;
                                                end
                                            else
                                                bPerc := False;
                                            Q_ComandoSQL.Close;
                                        end
                                    else
                                        bPerc := False;

                                    // Caso não tenha encontrado o grupo de comissões ou
                                    // não pegue do grupo de comissões (parâmetro)...
                                    if not bPerc then
                                        begin
                                            if FieldByName('ComissaoPlano').AsCurrency > 0 then
                                                nPComiss := FieldByName('ComissaoPlano').AsCurrency {Comissão do Plano de Pagamento }
                                            else if FieldByName('Comissao').asCurrency >= 0 then
                                                nPComiss := FieldByName('Comissao').asCurrency {Comissão no Produto}
                                            else if (FieldByName('ComissGrupo').asCurrency >= 0) then
                                                nPComiss := FieldByName('ComissGrupo').asCurrency {Comissão definida no Grupo}
                                            else if (FieldByName('PComissao').asCurrency > 0) then
                                                nPComiss := FieldByName('PComissao').asCurrency;

                                            {Comissão definida para o Vendedor}
                                            if (nPComiss <= 0) then
                                                nPComiss := FieldByName('ComissVend').asCurrency;

                                            {Adicionando a comissão da tabela de Precos}

                                            nComissaoAddicional := FieldByName('Add_Comissao').asCurrency;
                                            {
                                               Diminuir Percentual de Comissão do Item Na proporção do Desconto do Preco do Item
                                               Neste Caso a Comissão adicional na venda pela tabela de preço vai ser ZERO

                                            }
                                            if bDiminuirComissaoDesconto then
                                                if FieldByName('precotabela').asCurrency > FieldByName('Preco').asCurrency then
                                                    begin
                                                        nPComiss := nPComiss - (nPComiss * (1 - (FieldByName('preco').asCurrency / FieldByName('precotabela').asCurrency)));
                                                        nComissaoAddicional := 0;
                                                    end;

                                            nPComiss := nPComiss + nComissaoAddicional;

                                            {Adicionando comissão por dia especial}
                                            nPComiss := nPComiss + Comissao_Dia(FieldByName('Vendedor').asInteger, nDoW);
                                        end;
                                end;
                            if SaidaItem <> 0 then
                                nValorComissao := nValorComissao + ((TotalDevolvido - nRateioItem) * (nPComiss / 100))
                            else
                                nValorComissao := nValorComissao + ((FieldByName('SubTotalItem').asCurrency - nRateioItem) * (nPComiss / 100));
                            //nValorComissao := nValorComissao + ((FieldByName('SubTotalItem').asCurrency - nRateioItem) * (nPComiss / 100));   // Felipe - Comentado em 19/09/2014 a pedido de Marcos
                            Next {Item};
                        end;

                    if SaidaItem = 0 then
                        begin
                            // Recalculando um percentual geral para a venda
                            if bPesquisaMultiUnidade then
                                nPComiss := (nValorComissao * 100) / FieldByName('TotalItens123').AsCurrency;
                            //
                            {Atualizando a Saida}
                            Q_ComandoSQL.Close;
                            Q_ComandoSQL.SQL.Text := 'Update Saidas set ValorComissao = :V where Saida = :S ';
                            Q_ComandoSQL.ParamByName('V').asCurrency := nValorComissao;
                            Q_ComandoSQL.ParamByName('S').asInteger := nSaida;
                            Q_ComandoSQL.ExecSQL;

                            {Atualizando em Comissoes}

                            Q_ComandoSQL.Close;
                            Q_ComandoSQL.SQL.Text := 'Update Comissoes set ' +
                                '   Funcionario = :Func, Data = :Data, ' +
                                '   ValorComissao = :Vc, ValorVenda = :Vv, ' +
                                '   ValorItens = :Vi, ' +
                                '   PercComissao = :C ' +
                                'where Venda = :S ';
                            Q_ComandoSQL.ParamByName('Func').asInteger := FieldByName('Vendedor').asInteger;
                            Q_ComandoSQL.ParamByName('Data').asDateTime := FieldByName('Data').asDateTime;
                            Q_ComandoSQL.ParamByName('Vv').asCurrency := FieldByName('Total').asCurrency;
                            Q_ComandoSQL.ParamByName('Vi').asCurrency := FieldByName('TotalItens123').asCurrency;
                            Q_ComandoSQL.ParamByName('Vc').asCurrency := nValorComissao;
                            Q_ComandoSQL.ParamByName('C').asCurrency := nPComiss;
                            Q_ComandoSQL.ParamByName('S').asInteger := nSaida;
                            Q_ComandoSQL.ExecSQL;

                            if Q_ComandoSQL.RowsAffected = 0 then
                                begin {Não existe ainda em Comissões - incluindo}
                                    Q_ComandoSQL.Close;
                                    Q_ComandoSQL.SQL.Text := 'Insert into Comissoes ' +
                                        '     (Comissao, Funcionario, Data, Venda, ValorVenda, ValorItens, ' +
                                        '      RecebidoVenda, ValorComissao, PercComissao ) ' +
                                        'Values ' +
                                        '     (:C, :F, :D, :V, :Vv, :Vi, 0, :Vc, :pC) ';
                                    Q_ComandoSQL.ParamByName('C').asInteger := NextIDGlobal;
                                    Q_ComandoSQL.ParamByName('F').asInteger := FieldByName('Vendedor').asInteger;
                                    Q_ComandoSQL.ParamByName('D').asDateTime := FieldByName('Data').asDateTime;
                                    Q_ComandoSQL.ParamByName('Vv').asCurrency := FieldByName('Total').asCurrency;
                                    Q_ComandoSQL.ParamByName('Vi').asCurrency := FieldByName('TotalItens123').asCurrency;
                                    Q_ComandoSQL.ParamByName('Vc').asCurrency := nValorComissao;
                                    Q_ComandoSQL.ParamByName('pC').asCurrency := nPComiss;
                                    Q_ComandoSQL.ParamByName('V').asInteger := nSaida;
                                    Q_ComandoSQL.ParamByName('pC').asCurrency := nPComiss;
                                    Q_ComandoSQL.ExecSQL;
                                end;

                        end;

                end;

        end; //with Q_SQL;

    Q_SQL2.Close;
    Q_SQL.Close;
    Q_ComandoSQL.Close;
    result := nValorComissao;
end;

function TDMProjeto.getPagoEsteAno(Funcionario: integer; PayRollItem: integer = 0): Currency;
begin
    with Q_SQL do
        begin
            close;
            if PayRollItem = 0 then
                sql.text := 'Select sum(rd.Valor) from RetiradasDoc rd ' +
                    'INNER JOIN Retiradas r ON r.Retirada = rd.Retirada ' +
                    'where rd.FavorecidoDoc = :func and r.Data >= (''1/1/'' || extract(year from current_date)) and rd.Status < 70 '
            else
                sql.text := 'select sum(ppi.valor) as PagoEsteAno from payrollsfunc pf, payrollspayitens ppi, payrolls p ' +
                    'where pf.funcionario = :func and pf.Data >= (''1/1/'' || extract(year from current_date)) and pf.payroll = p.payroll and p.status <> ''C'' and pf.payrollfunc = ppi.payrollfunc ' +
                    'and ppi.payrollitem = ' + IntToStr(PayRollItem);
            parambyname('func').asInteger := Funcionario;
            open;
            result := fields[0].AsCurrency;
            close;
        end;
end;

function TDMProjeto.BaixaEstoque;
begin
    if sSinal = '' then
        sSinal := '+';
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'update itens set estoque = estoque ' + sSinal + ' :estoque where item = :item';
    Q_Contabil.params[0].asfloat := nQtde;
    Q_Contabil.params[1].asinteger := nItem;
    Q_Contabil.ExecSQL;
end;

procedure TDMProjeto.EstornarEstoqueSaida;

    procedure EstornarEstoqueItem(ITEM: Integer; Quantidade: double);
    var
        X_Item: TIBQuery;
    begin
        X_Item := TIBQuery.Create(self);
        X_Item.DataBase := DB_Projeto;
        X_Item.Transaction := IBT_Projeto;

        with X_Item do
            begin
                Close;
                SQL.Text := 'Update Itens Set Estoque = Estoque + :Q ' +
                    'where Item = :I ';
                ParamByName('Q').asFloat := Quantidade;
                ParamByName('I').asInteger := ITEM;
                ExecSQL;
            end;

    end;

    procedure EstornarEstoqueFilhos(SAIDAITEM, ITEMPAI: Integer; Quantidade: double);
    var
        X_Filhos: TIBQuery;
    begin
        X_Filhos := TIBQuery.Create(self);
        X_Filhos.DataBase := DB_Projeto;
        X_Filhos.Transaction := IBT_Projeto;
        X_Filhos.Free;
    end;

begin

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select si.SaidaItem, si.Item, si.Quantidade, si.HasChildren ' +
                'from (SaidasItens si INNER JOIN SAIDAS s ON s.Saida = si.Saida) ' +
                '     INNER JOIN Itens i ON si.Item = i.Item ' +
                'Where s.Situacao = ''N'' and s.BaixaEstoque = ''S'' ' +
                'and   s.Saida = :S and i.TipoItem = 1 order by Ordem ';
            Params[0].asInteger := Saida;
            Open;

            First;
            while not EOF do
                begin
                    EstornarEstoqueItem(FieldByName('ITEM').asInteger,
                        FieldByName('Quantidade').asFloat);

                    {Se o item é composto, baixar também o estoque de cada filho}
                    {Por enquanto esta opção está inativa até conclusão de análise}
                    if FieldByName('HasChildren').asString = 'S' then
                        EstornarEstoqueFilhos(FieldByName('SAIDAITEM').asInteger, FieldByName('ITEM').asInteger,
                            FieldByName('Quantidade').asFloat);

                    Next;

                end;

        end;

end;

procedure TDMProjeto.BaixarEstoqueSaida;

    procedure BaixarEstoqueItem(ITEM: Integer; Quantidade: double);
    var
        X_Item: TIBQuery;
    begin
        X_Item := TIBQuery.Create(self);
        X_Item.DataBase := DB_Projeto;
        X_Item.Transaction := IBT_Projeto;

        with X_Item do
            begin
                Close;
                SQL.Text := 'Update Itens Set Estoque = Estoque - :Q ' +
                    'where Item = :I ';
                ParamByName('Q').asFloat := Quantidade;
                ParamByName('I').asInteger := ITEM;
                ExecSQL;
            end;

    end;

    procedure BaixarEstoqueFilhos(SAIDAITEM, ITEMPAI: Integer; Quantidade: double);
    var
        X_Filhos: TIBQuery;
    begin
        X_Filhos := TIBQuery.Create(self);
        X_Filhos.DataBase := DB_Projeto;
        X_Filhos.Transaction := IBT_Projeto;

        {    with X_Filhos do begin
              Close;
              SQL.Text := 'Select sf.Item, sf.Quantidade, i.HasChildren '+
                          'from SaidasItensFilhos sf INNER JOIN Itens i ON f.Item = i.Item '+
                          'Where sf.SaidaItemPai = :SIP and i.TipoItem = 1 order by Ordem ';
              ParamByName('SIP').asInteger := ITEMPAI;
              Open;

              while not EOF do begin
                if FieldByName('HasChildren').asString = 'S' then
                  BaixarEstoqueFilhos( FieldByName('ITEM').asInteger,
                                       FieldByName('Quantidade').asFloat * Quantidade )
                else
                  BaixarEstoqueItem( FieldByName('ITEM').asInteger,
                                     FieldByName('Quantidade').asFloat * Quantidade );
                Next;
              end;

            end;
        }
        X_Filhos.Free;
    end;

begin

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select si.SaidaItem, si.Item, si.Quantidade, si.HasChildren ' +
                'from (SaidasItens si INNER JOIN SAIDAS s ON s.Saida = si.Saida) ' +
                '     INNER JOIN Itens i ON si.Item = i.Item ' +
                'Where s.Situacao = ''N'' and s.BaixaEstoque = ''S'' ' +
                'and   si.Saida = :S and i.TipoItem = 1 order by Ordem ';
            Params[0].asInteger := Saida;
            Open;

            First;
            while not EOF do
                begin
                    BaixarEstoqueItem(FieldByName('ITEM').asInteger,
                        FieldByName('Quantidade').asFloat);

                    {Se o item é composto, baixar também o estoque de cada filho}
                    {Por enquanto esta opção está inativa até conclusão de análise}
                    if FieldByName('HasChildren').asString = 'S' then
                        BaixarEstoqueFilhos(FieldByName('SAIDAITEM').asInteger, FieldByName('ITEM').asInteger,
                            FieldByName('Quantidade').asFloat);

                    Next;

                end;

        end;
end;

procedure TDMProjeto.BaixarEstoqueEntrada(Entrada: Integer);

    procedure BaixarEstoqueItem(ITEM: Integer; Quantidade: double);
    var
        X_Item: TIBQuery;
    begin
        X_Item := TIBQuery.Create(self);
        X_Item.DataBase := DB_Projeto;
        X_Item.Transaction := IBT_Projeto;

        with X_Item do
            begin
                Close;
                SQL.Text := 'Update Itens Set Estoque = Estoque + :Q ' +
                    'where Item = :I ';
                ParamByName('Q').asFloat := Quantidade;
                ParamByName('I').asInteger := ITEM;
                ExecSQL;
            end;

    end;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select ei.EntradaItem, ei.Item, ei.Quantidade ' +
                'from (EntradasItens ei INNER JOIN Entradas e ON e.Entrada = ei.Entrada) ' +
                '     INNER JOIN Itens i ON ei.Item = i.Item ' +
                'Where e.Situacao = ''N'' and e.BaixaEstoque = ''S'' ' +
                'and   e.Entrada  = :S and i.TipoItem = 1 order by Ordem ';
            Params[0].asInteger := Entrada;
            Open;

            First;
            while not EOF do
                begin
                    BaixarEstoqueItem(FieldByName('ITEM').asInteger,
                        FieldByName('Quantidade').asFloat);

                    Next;
                end;

        end;
end;

procedure TDMProjeto.EstornarEstoqueEntrada(Entrada: Integer);

    procedure EstornarEstoqueItem(ITEM: Integer; Quantidade: double);
    var
        X_Item: TIBQuery;
    begin
        X_Item := TIBQuery.Create(self);
        X_Item.DataBase := DB_Projeto;
        X_Item.Transaction := IBT_Projeto;

        with X_Item do
            begin
                Close;
                SQL.Text := 'Update Itens Set Estoque = Estoque - :Q ' +
                    'where Item = :I ';
                ParamByName('Q').asFloat := Quantidade;
                ParamByName('I').asInteger := ITEM;
                ExecSQL;
            end;

    end;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select ei.EntradaItem, ei.Item, ei.Quantidade ' +
                'from (EntradasItens ei INNER JOIN Entradas e ON e.Entrada = ei.Entrada) ' +
                '     INNER JOIN Itens i ON ei.Item = i.Item ' +
                'Where e.Situacao = ''N'' and e.BaixaEstoque = ''S'' ' +
                'and   ei.Entrada = :S and i.TipoItem = 1 order by Ordem ';
            Params[0].asInteger := Entrada;
            Open;

            First;
            while not EOF do
                begin
                    EstornarEstoqueItem(FieldByName('ITEM').asInteger,
                        FieldByName('Quantidade').asFloat);

                    Next;

                end;

        end;
end;

procedure TDMProjeto.AtualizarPrecos;
var
    nPreco: currency;
    sUnid: string;
begin
    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.Text := 'select * from tabelaspreco where tabelapreco > 0 and desativado = ''N'' and baseada = ''S''';
            open;
            while not eof do
                begin
                    DMProjeto.Q_SQL2.SQL.text := 'update produtospreco set preco = :preco, precomanual = ''N'' ' +
                        'where item = :nproduto and unidade = :unidade and ' +
                        'tabelapreco = :tabela and precomanual = ''N'' ';
                    if nItem > 0 then
                        begin
                            sUnid := getCampoTabela('Itens', 'Item', 'unidade', nItem);
                            nPreco := PrecoNormal(nItem, sUnid);
                            DMProjeto.Q_SQL2.close;
                            if DMProjeto.Q_SQL.fieldbyname('percentual').asfloat > 0 then
                                DMProjeto.Q_SQL2.parambyname('preco').asfloat := nPreco + ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat)) / 100)
                            else
                                DMProjeto.Q_SQL2.parambyname('preco').asfloat := nPreco - ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat)) / 100);

                            DMProjeto.Q_SQL2.parambyname('nproduto').asinteger := nItem;
                            DMProjeto.Q_SQL2.parambyname('unidade').asstring := sUnid;
                            DMProjeto.Q_SQL2.parambyname('tabela').asinteger := DMProjeto.Q_SQL.fieldbyname('tabelapreco').asinteger;
                            DMProjeto.Q_SQL2.execsql;
                        end
                    else
                        begin
                            Q_Produtos.close;
                            Q_Produtos.SQL.text := 'select item from itens where ';
                            if Itens <> '' then
                                Q_Produtos.SQL.text := Q_Produtos.SQL.text + ' Item in (' + Itens + ') and '
                            else if Grupos <> '' then
                                Q_Produtos.SQL.text := Q_Produtos.SQL.text + ' Grupo in (' + Grupos + ') and '
                            else if Fabrics <> '' then
                                Q_Produtos.SQL.text := Q_Produtos.SQL.text + ' Fabricante in (' + Fabrics + ') and ';

                            Q_Produtos.SQL.text := Q_Produtos.SQL.text + ' desativado = ''N'' ';

                            if Condicoes <> '' then
                                Q_Produtos.SQL.text := Q_Produtos.SQL.text + ' and ' + Condicoes;

                            Q_Produtos.open;
                            while not Q_Produtos.eof do
                                begin
                                    nPreco := PrecoNormal(Q_Produtos.FieldByName('item').asinteger, Q_Produtos.FieldByName('unidade').asString);
                                    DMProjeto.Q_SQL2.close;
                                    if DMProjeto.Q_SQL.fieldbyname('percentual').asfloat > 0 then
                                        DMProjeto.Q_SQL2.params[0].asfloat := nPreco + ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat)) / 100)
                                    else
                                        DMProjeto.Q_SQL2.params[0].asfloat := nPreco - ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat)) / 100);
                                    DMProjeto.Q_SQL2.params[1].asinteger := Q_Produtos.FieldByName('item').asinteger;
                                    DMProjeto.Q_SQL2.params[2].asinteger := DMProjeto.Q_SQL.fieldbyname('tabelapreco').asinteger;
                                    DMProjeto.Q_SQL2.execsql;
                                    Q_Produtos.next;
                                end;
                        end;
                    next;
                end;
        end;
end;

function TDMProjeto.PrecoNormal;
begin
    with DMProjeto.Q_ComandoSQL do
        begin
            Close;
            SQL.text := 'select preco from produtospreco ' +
                'where item = :produto and tabelapreco = 0 and unidade = :unidade';
            params[0].asinteger := nProduto;
            params[1].asstring := Unidade;
            Open;
            result := FieldByName('preco').AsCurrency;
            close;
        end;
end;

function TDMProjeto.FormFav;
begin
    DMProjeto.Q_ComandoSQL.SQL.text := 'select form from tiposfavorecido where tipofavorecido = :nTipo';
    DMProjeto.Q_ComandoSQL.params[0].asinteger := nTipoFav;
    DMProjeto.Q_ComandoSQL.open;
    result := DMProjeto.Q_ComandoSQL.FieldByName('form').AsString;
    DMProjeto.Q_ComandoSQL.close;
end;

function TDMProjeto.DescTipoFav;
begin
    DMProjeto.Q_ComandoSQL.SQL.text := 'select descricao from tiposfavorecido where tipofavorecido = :nTipo';
    DMProjeto.Q_ComandoSQL.params[0].asinteger := nTipoFav;
    DMProjeto.Q_ComandoSQL.open;
    result := DMProjeto.Q_ComandoSQL.FieldByName('descricao').AsString;
    DMProjeto.Q_ComandoSQL.close;
end;

(*
procedure TDMProjeto.ConfigurarImpressao( Link : TBasedxReportLink; sTitulo : string);
begin
  with Link do begin
   ReportTitle.Text := sTitulo+#13#10+#13#10;
    with PrinterPage do begin
      PageHeader.LeftTextAlignY 	 := taTop;
      PageHeader.RightTextAlignY  := taTop;
      PageHeader.CenterTextAlignY := taTop;
      PageHeader.Font.Name := 'Tahoma';
      PageHeader.Font.Size := 10;
      {Lado Esquerdo}
     PageHeader.LeftTitle.Clear;
     PageHeader.LeftTitle.Add(DMProjeto.sNomeEmpresa);
     PageHeader.LeftTitle.Add(DMProjeto.sEnderecoEmpresa);
     PageHeader.LeftTitle.Add(DMProjeto.sCidadeEmpresa+iif(DMProjeto.sUFEmpresa<>'','-'+DMProjeto.sUFEmpresa,''));
     if DMProjeto.sEINEmpresa<> '' then
       PageHeader.LeftTitle.Add('EIN: '+DMProjeto.sEINEmpresa);
     if DMProjeto.sEmailEmpresa<> '' then
       PageHeader.LeftTitle.Add('Email: '+DMProjeto.sEmailEmpresa+iif(DMProjeto.sSiteEmpresa<>'','   Site: '+DMProjeto.sSiteEmpresa,''));
      {Lado Direito}
     PageHeader.RightTitle.Clear;
     PageHeader.RightTitle.Add('[Date Printed][Time Printed]');
     PageHeader.RightTitle.Add('Page [Page #] of [Total Pages]');
     PageHeader.RightTitle.Add('by SyncTech');
    end;
  end;
end;
*)

function TDMProjeto.AjusteItem;
begin
    result := DMProjeto.NextIDGlobal;
    with DMProjeto.Q_Contabil do
        begin
            close;
            SQL.text := 'insert into ajustesitens ' +
                '(ajusteitem,data,item,unidade,conta,quantidade,custo,motivo,numerolote,validade,fator) ' +
                'values ' +
                '(:ajusteitem,:data,:item,:unidade,:conta,:quantidade,:custo,:motivo,:numerolote,:validade,:fator)';
            params[0].asinteger := result;
            params[1].asdatetime := dData;
            params[2].asinteger := nItem;
            params[3].asstring := sUnid;
            params[4].asinteger := nConta;
            params[5].asfloat := nQtde;
            params[6].ascurrency := nCusto;
            params[7].asstring := sMotivo;
            if sNumeroLote <> '' then
                params[8].asstring := sNumeroLote
            else
                SQL.Text := replace(SQL.Text, ':numerolote', 'null');

            if dValidade > 0 then
                parambyName('Validade').asdatetime := dValidade
            else
                SQL.Text := replace(SQL.Text, ':validade', 'null');

            parambyname('fator').asfloat := getFatorUnidade(nItem, sUnid);
            ExecSQL;
        end;
end;

function TDMProjeto.AtualizaAjusteItem;
begin
    with DMProjeto.Q_Contabil do
        begin
            Close;
            SQL.text := 'update ajustesitens ' +
                'set data = :data, item = :item,conta = :conta,quantidade = :quantidade,' +
                'custo = :custo, motivo = :motivo, Unidade = :Unidade, Fator = :Fator ' +
                'where ajusteitem = :ajusteitem ';
            params[0].asdatetime := dData;
            params[1].asinteger := nItem;
            params[2].asinteger := nConta;
            params[3].asfloat := nQtde;
            params[4].ascurrency := nCusto;
            params[5].asstring := sMotivo;
            params[6].asinteger := nAjuste;
            params[7].asstring := sUnid;
            params[8].asfloat := getFatorUnidade(nItem, sUnid);
            ExecSQL;
        end;
end;

function TDMProjeto.GeraCodigoItem;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaItem(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo + AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaItem(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCodigoItem', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoGrupo;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistencia(nChave, 'grupos', 'grupo', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistencia(nChave, 'grupos', 'grupo', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID('IDCodigoGrupo', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoFabricante;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistencia(nChave, 'fabricantes', 'fabricante', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistencia(nChave, 'fabricantes', 'fabricante', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID('IDCodigoFabricante', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoCargo;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistencia(nChave, 'cargos', 'cargo', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistencia(nChave, 'cargos', 'cargo', xCodigo, 'codigo') do
                begin
                    xID := DMProjeto.NextID('IDCodigoCargo', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoCliente;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaFav(1, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaFav(1, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCodigoCliente', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoFornecedor;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaFav(2, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaFav(2, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCodigoFornecedor', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoConta;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaConta(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaConta(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCodigoConta', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.GeraCodigoFunc;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaFav(3, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo +
                        AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaFav(3, nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCodigoFuncionario', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.RecalcularCustosItem(sItem, sUnidade, sEntrada: string): Boolean;

    function GetEstoqueDia(dData: TDateTime): Double;
    begin

    end;

    procedure GetPrimeirosCustos(Item: string; var nCustoMedio, nCustoContabil, nPrecoCompra: Currency);
    begin
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Pri_CustoMedio, Pri_CustoContabil, Pri_PrecoCompra from Itens where Item = ' + Item;
                Open;

                nCustoMedio := FieldByName('Pri_CustoMedio').asCurrency;
                nCustoContabil := FieldByName('Pri_CustoContabil').asCurrency;
                nPrecoCompra := FieldByName('Pri_PrecoCompra').asCurrency;

                Close;
            end;
    end;

    function GetEntradaAnterior(Item, Unidade, Entrada: string): Integer;
    begin
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Max(ei.Entrada) as EntradaAnt ' +
                    'from EntradasItens ei INNER JOIN Entradas e ON e.Entrada = ei.Entrada ' +
                    'where ei.Item = ' + Item +
                    '  and ei.Unidade = ''' + Unidade + '''' +
                    '  and e.Entrada < ' + Entrada +
                    '  and e.Situacao = ''N'' and e.TipoPadrao in (101,105) ';

                Open;
                result := FieldbyName('EntradaAnt').asInteger;
                Close;
            end;
    end;

    procedure AtualizarCustosEntradaItem(nEntradaItem: Integer; CustoMedio: currency);
    begin
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Update EntradasItens set CustoMedio = :C where EntradaItem = :EI ';
                ParambyName('C').asCurrency := CustoMedio;
                ParambyName('EI').asInteger := nEntradaItem;
                ExecSQL;
                Close;
            end;
    end;

    procedure GetLucro(nItem: Integer; var SemLucro, Lucro: double);
    begin
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select SemLucro, FatorLucro ' +
                    'from Itens where Item = :I ';
                ParamByName('I').asInteger := nItem;
                Open;

                SemLucro := FieldByName('SemLucro').asFloat;
                Lucro := FieldByName('FatorLucro').asFloat;

                Close;
            end;
    end;

var X_EntradasRecalc, X_EntradaAnterior: TIBQuery;
    nEntradaAnt: Integer;
    nCustoMedio, nCustoContabil, nPrecoCompra, nCustoContabilFinal, nPrecoCompraFinal, nNovoPreco: Currency;
    nEstoqueAcumuladoEntrada, nEstoqueAnt, nQtdEntrada, nSemLucro, nLucro, nLucroOld: double;
    sMesmaEntrada: string;
    bAtualizaPreco: boolean;
begin
    result := false;
    nCustoMedio := 0;
    nCustoContabil := 0;
    nCustoContabilFinal := 0;
    nPrecoCompra := 0;
    nPrecoCompraFinal := 0;
    nNovoPreco := 0;

    nLucro := 0;

    {Capiturando semlucro para saber se há a necessidade de recalcular o fator de lucro conforme análise das
     entradas para o item.  O nLucroOld serve apenas para gerar a ocorrencia de sistema caso o fator de lucro
     seja modificado}
    GetLucro(StrToInt(sItem), nSemLucro, nLucroOld);

    bAtualizaPreco := false;

    {Entrada atual e posteriores - Esta consulta será "varrida" até que seja processada a
     última entrada para o item.  Em cada entrada será capturado o custo (se os flags
     permitiram atualização - AtualizouCusto = S) e o preço de venda para o item.  Sabendo
     que o preço de venda que está registrado em entradasitens é o preço que ficou para o
     item, ele será sempre considerado para atualização, sendo corrigido o fator de lucro
     para que fique compatível com ele}
    X_EntradasRecalc := TIBQuery.Create(self);
    with X_EntradasRecalc do
        begin
            DataBase := DB_Projeto;
            Transaction := IBT_Projeto;
            Close;
            SQL.Text := 'Select ei.*, e.AtualizaCusto, e.IncluiDesconto, e.BaixaEstoque, e.Data, i.TipoItem, ' +
                '       t.Descricao as lkTipoMov, tp.TipoOrigem ' +
                'from EntradasItens ei INNER JOIN Entradas e ON e.Entrada = ei.Entrada ' +
                '     INNER JOIN Itens i ON i.Item = ei.Item ' +
                '     INNER JOIN TiposMovimento t ON t.TipoMovimento = e.TipoMovimento ' +
                '     INNER JOIN TiposPadrao tp ON tp.TipoPadrao = t.TipoPadrao ' +
                'where e.Situacao = ''N'' and e.TipoPadrao in (101,105) and e.Entrada >= ' + sEntrada +
                '  and ei.Item = ' + sItem +
                '  order by  ei.Entrada, ei.ordem ';
            Open;
        end;

    {Entrada Anterior para o Item - É importante para o recalculo do custo médio durante o processo.
     Se o item não possui mais entradas posteriores (X_EntradasRecalc) os custos e preços encontrados
     nesta consulta serão utilizados para atualizar o cadastro do item.  Caso não seja a última entrada,
     seus custos servirão como os anteriores para recalculo dos posteriores.}
    X_EntradaAnterior := TIBQuery.Create(self);
    with X_EntradaAnterior do
        begin
            DataBase := DB_Projeto;
            Transaction := IBT_Projeto;
            Close;
            SQL.Text := 'Select ei.*, e.AtualizaCusto, e.IncluiDesconto, e.BaixaEstoque, e.Data ' +
                'from EntradasItens ei INNER JOIN Entradas e ON e.Entrada = ei.Entrada ' +
                'where e.Situacao = ''N'' and e.TipoPadrao in (101,105) ' +
                '  and e.Entrada = :EntradaAnt ' +
                '  and ei.Item = ' + sItem + ' and ei.unidade = ''' + sUnidade +
                '  order by  ei.Entrada, ei.ordem ';
            Params[0].asInteger := GetEntradaAnterior(sItem, sUnidade, sEntrada);
            Open;
            Last; // Para parar sobre a última ocorrência do item na entrada, i.e. último custo e Preço
        end;

    {Analise de Casos}

    {1. Existe Entrada Anterior}
    if (X_EntradaAnterior.RecordCount > 0) then
        begin
            {O Custo Inicial do produto volta a ser o da entrada anterior}
            nCustoMedio := X_EntradaAnterior.FieldByName('CustoMedio').asCurrency;
            nCustoContabil := X_EntradaAnterior.FieldByName('CustoContabil').asCurrency;
            nPrecoCompra := X_EntradaAnterior.FieldByName('Preco').asCurrency;

            {Verificando o que a entrada fez com os custos e preço.  Se a entrada não atualizou custos, nada
             será feito no cadastro do item - se esta também for a última entrada.}
            if X_EntradaAnterior.FieldByName('AtualizouCusto').asString = 'S' then
                begin
                    nCustoContabilFinal := nCustoContabil;
                    nPrecoCompraFinal := nPrecoCompra;

                    {O Flag abaixo é posto verdadeiro porque sabe-se que o NOVOPRECO registrado em entradasitens
                     corresponde ao preço que ficou no item após a entrada - mesmo que esteja configurado para não
                     atualizar preco no tipo da operação}
                    bAtualizaPreco := true; //Para poder retornar ao preço definido na entrada - caso esta seja a última do item.

                    nNovoPreco := X_EntradaAnterior.FieldByName('NovoPreco').asCurrency;
                    nLucro := X_EntradaAnterior.FieldByName('Lucro').asFloat;
                    if nSemLucro <> X_EntradaAnterior.FieldByName('SemLucro').asCurrency then
                        nLucro := -1 {Calcular, pois houve alterações em sem lucro}
                end;

            X_EntradaAnterior.Close;
            X_EntradaAnterior.Free;
        end;

    {2. Não existe Entrada Anterior}
    if (X_EntradaAnterior.RecordCount = 0) then
        begin
            {O Custo do produto volta a ser o que está registrado nos campos PRI_CustoMedio, PRI_CustoContabil...}
            GetPrimeirosCustos(sItem, nCustoMedio, nCustoContabil, nPrecoCompra);

            {Neste caso o custo será atualizado e o preço mantido - modificando assim o fator de lucro, pois não
             há como retornar ao preço original antes da entrada.}
            nCustoContabilFinal := nCustoContabil;
            nPrecoCompraFinal := nPrecoCompra;
            bAtualizaPreco := false;
            nLucro := -1; //Para manter o preço e recalcular o lucro;
        end;

    {3. Se não existem Entradas Posteriores, provavelmente o item foi excluido desta entrada podendo ter sido
        esta a única (se caso .2.) ou última entrada (se caso .1. e não há posteriores) para o item}

    {4. Existem Entradas Posteriores - O processo de recalculo irá atualizar os custos em cada uma destas entradas;
        O custo anterior que será considerado para início do recalculo já foi capturado nos caso 1 ou 2 acima.}
    if (X_EntradasRecalc.RecordCount > 0) then
        with X_EntradasRecalc do
            begin
                nEstoqueAcumuladoEntrada := 0;
                sMesmaEntrada := FieldByName('Entrada').asString;
                while not EOF do
                    begin
                        {Se o item não foi apagado ele existe na própria entrada, que já está com os custos calculados,
                         inclusive considerando os custos anteriores.  Desta forma estes passam a ser os anteriores para
                         as próximas entradas.}
                        if FieldByName('Entrada').asString = sEntrada then
                            begin
                                nCustoMedio := FieldByName('CustoMedio').asCurrency;
                                nCustoContabil := FieldByName('CustoContabil').asCurrency;
                                nPrecoCompra := FieldByName('Preco').asCurrency;
                            end
                        else
                            begin
                                {Recalculando os Custos para a entrada}
                                nCustoContabil := FieldByName('CustoContabil').asCurrency;
                                nPrecoCompra := FieldByName('Preco').asCurrency;
                                if nCustoMedio <= 0 then
                                    nCustoMedio := nCustoContabil;

                                {Definindo o custo médio conforme o tipo de item da entrada}
                                if FieldByName('TipoItem').asInteger = 1 then
                                    begin
                                        nQtdEntrada := FieldByName('Quantidade').asFloat;
                                        nEstoqueAnt := GetEstoqueAntesEntrada(StrToInt(sItem), FieldByName('Entrada').asInteger) +
                                            nEstoqueAcumuladoEntrada;
                                        if nEstoqueAnt < 0 then
                                            nEstoqueAnt := 0;

                                        try
                                            nCustoMedio := ((nEstoqueAnt * nCustoMedio) + (nCustoContabil * nQtdEntrada)) / (nEstoqueAnt + nQtdEntrada);
                                        except
                                            nCustoMedio := nCustoContabil;
                                        end;
                                    end
                                else if FieldByName('TipoItem').asInteger = 2 then
                                    begin
                                        nCustoMedio := (nCustoMedio + nCustoContabil) / 2;
                                    end
                                else if FieldByName('TipoItem').asInteger = 3 then
                                    begin
                                        nCustoMedio := nCustoContabil;
                                    end;

                                {Para que outros recalculos de custo possam contar com um custo médio correto}
                                AtualizarCustosEntradaItem(FieldByName('EntradaItem').asInteger, nCustoMedio);

                                {Não é preciso atualizar o campo NovoPreco porque ele é baseado sobre o custocontabil,
                                 e este não é afetado pela alteração do custo médio.  Permanece então o que foi calculado
                                 durante a entrada do item}

                            end;

                        {Verificando se a entrada atualizou custos e precos;  Desta forma a última entrada que o fez terá seu
                         valor guardado nestas variáveis para que o item seja atualizado conforme configurado nas entradas.
                         Novamente cito que o preco de venda será atualizado conforme calculado na entrada por refletir exatamente
                         o preco que ficou no item após a entrada.  O fator de lucro só precisará ser recalculado se houve
                         alterações no campo SemLucro, para que reflita a atual configuração para o item}
                        if FieldByName('AtualizouCusto').asString = 'S' then
                            begin
                                nCustoContabilFinal := nCustoContabil;
                                nPrecoCompraFinal := nPrecoCompra;
                                nNovoPreco := FieldByName('NovoPreco').asCurrency;
                                bAtualizaPreco := true;
                                nLucro := FieldByName('Lucro').asFloat;
                                if nSemLucro <> FieldByName('SemLucro').asCurrency then
                                    nLucro := -1;
                            end;

                        {Esta variável acumula as quantidades do item na entrada.  Isto é para que o custo do item
                         reconheça outra ocorrência do mesmo item na mesma entrada e possa já considerar como estoque
                         anterior.  Esta variável é zerada toda vez que mudar de entrada.}
                        nEstoqueAcumuladoEntrada := nEstoqueAcumuladoEntrada + FieldByName('Quantidade').asFloat;

                        X_EntradasRecalc.Next;

                        if FieldByName('Entrada').asString <> sMesmaEntrada then
                            begin
                                sMesmaEntrada := FieldByName('Entrada').asString;
                                nEstoqueAcumuladoEntrada := 0;
                            end;

                    end; //while entradas posteriores;
            end; //if caso 4

    {Corrigindo CustoMedio - pois este processo é feito apenas para movimentos do tipo 101, 105}
    if nCustoMedio > 0 then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Update Itens set CustoMedio = :CM ' +
                    'where Item = :I ';
                ParamByName('CM').asCurrency := nCustoMedio;
                ParamByName('I').asInteger := StrToInt(sItem);
                ExecSQL;
            end;

    {Atualizando os Custos e Corrigindo Fator de Lucro.  Se nCustoContabilFinal chegar até aqui zerado,
     é porque nenhuma entrada atualizou custos para o item.  Desta forma nada será alterado no cadastro
     do item durante este recalculo.}
    if nCustoContabilFinal > 0 then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Update Itens set CustoContabil = :CC, PrecoCompra = :PC ' +
                    'where Item = :I ';
                ParamByName('CC').asCurrency := nCustoContabilFinal;
                ParamByName('PC').asCurrency := nPrecoCompraFinal;
                ParamByName('I').asInteger := StrToInt(sItem);
                ExecSQL;

                if bAtualizaPreco and (nNovoPreco > 0) then
                    begin //Atualizando o Preço da Tab. Zero;
                        Close;
                        SQL.Text := 'Update ProdutosPreco set Preco = :NPreco where Item = :I and TabelaPreco = 0 and Unidade = :Unid';
                        ParamByName('NPreco').asCurrency := nNovoPreco;
                        ParamByName('I').asInteger := StrToInt(sItem);
                        ParamByName('Unid').asString := sUnidade;
                        ExecSQL;

                        AtualizarPrecos(StrToInt(sItem), sUnidade); //Para as Tabelas Baseadas na Tab.Zero
                    end;

                //Corrigindo o Fator de Lucro do Item mesmo que atualize o preço o fator deve ser Atualizado;
                if nNovoPreco = 0 then
                    nNovoPreco := GetPrecoItem(StrToInt(sItem), sUnidade);

                if (nLucro = -1) and (nNovoPreco > 0) then
                    nLucro := (((nNovoPreco - nCustoContabil) / nNovoPreco) - (nSemLucro / 100)) * 100;

                if nLucro > 0 then
                    begin // para garantir não jogar um fator de lucro incorreto no item.
                        Close;
                        SQL.Text := 'Update Itens set FatorLucro = :L where ITEM = :I ';
                        ParamByName('L').asFloat := nLucro;
                        ParamByName('I').asInteger := StrToInt(sItem);
                        ExecSQL;

                        {Ocorrencia - Sistema}
                        DMProjeto.OcorrenciaSistema(700, X_EntradasRecalc.FieldByName('Descricao').asString + '|' +
                            FloatToStr(nLucroOld) + '|' +
                            FloatToStr(nLucro) + '|' +
                            X_EntradasRecalc.FieldByName('lkTipoMov').asString,
                            StrToInt(sEntrada), X_EntradasRecalc.FieldByName('TipoOrigem').asInteger);
                    end;

            end; //nCustoContabil > 0

    try
        if DB_Projeto.DefaultTransaction.InTransaction then
            DB_Projeto.DefaultTransaction.CommitRetaining;

        result := true; //Para Retirar /Lancar em ItensFail
    except
        on e: Exception do
            begin
                if DB_Projeto.DefaultTransaction.InTransaction then
                    DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;

end;

function TDMProjeto.GetEstoqueAntesEntrada;
var nEstoque: Currency;
begin
    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select Sum(Quantidade*Fator) as Estoque from TransacoesEstoque where ITEM = :I and IDGerador < :E  ';
            ParamByName('I').asInteger := Item;
            ParamByName('E').asInteger := Entrada;
            Open;
            nEstoque := FieldByName('Estoque').asCurrency;
            Close;
            SQL.Text := 'Select iu.Fator as Estoque from itens i ' +
                'inner join itensunidades iu on iu.item = i.item and iu.unidade = i.unidade ' +
                'where i.ITEM = :I ';
            ParamByName('I').asInteger := Item;
            Open;

            result := nEstoque / Fields[0].AsCurrency;

            Close;
        end;
end;

procedure TDMProjeto.RecalcularItensFail(P: TPositionProc);
var
    i, Max: Integer;
    sRecalcs, s, sItensFail: string;
begin
    sItensFail := Parametro('ItensFail');
    Max := ContaStrings(sItensFail, ',');

    try
        sRecalcs := '';
        for i := 1 to Max do
            begin
                s := SeparaStrings(sItensFail, ',', i); // Formato = ITEM - ENTRADA;
                if RecalcularCustosItem(SeparaStrings(s, '-', 1), getCampoTabela('Itens', 'Item', 'Unidade', StrToInt(SeparaStrings(s, '-', 1))), SeparaStrings(s, '-', 2)) then
                    sRecalcs := CExp(sRecalcs, ',') + s;

                if Assigned(P) then
                    P(i, Max);

                Application.ProcessMessages;

            end;
    finally
        sRecalcs := replace(Parametro('ItensFail'), sRecalcs, '');
        if (sRecalcs <> '') and (sRecalcs[1] = ',') then
            sRecalcs[1] := ' ';
        SetParametro('ItensFail', Trim(sRecalcs));
    end;

end;

procedure TDMProjeto.C_LocalizarItensCalcFields(DataSet: TDataSet);
var
    nDescMax: Currency;
    nFatorVenda, nFatorCompra, nFatorItemUnd: double;
    bMultiUnd: boolean;
begin
    inherited;

    DataSet.FieldByName('icChaveUnica').AsString := DataSet.FieldByName('Item').AsString + '|' + DataSet.FieldByName('Unidade').AsString;
    {Desc. Max. Produto}
    nDescMax := DataSet.FieldByName('DescontoMaximo').asCurrency;

    {Desc. Max. Grupo}
    if nDescMax < 0 then
        nDescMax := DataSet.FieldByName('DESCONTOMAXIMOGrupo').asCurrency;

    {Desc. Max. Vendedor}
    if nDescMax < 0 then
        nDescMax := nMaxDescontoFunc;

    nFatorItemUnd := IIF(DataSet.FieldByName('FatorItemUnd').asFloat > 0, DataSet.FieldByName('FatorItemUnd').asFloat, 1);
    nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);
    nFatorCompra := IIF(DataSet.FieldByName('FatorUndCompra').asFloat > 0, DataSet.FieldByName('FatorUndCompra').asFloat, 1);

    {Estoques e Custos}
    DataSet.FieldByName('icEstoqueVenda').asFloat := (DataSet.FieldByName('Estoque').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icEstoqueCompra').asFloat := DataSet.FieldByName('Estoque').asFloat / nFatorCompra;

    DataSet.FieldByName('icEstoqueFiscal').asFloat := (DataSet.FieldByName('EstoqueFiscal').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icDifEstoque').asFloat := ((DataSet.FieldByName('Estoque').asFloat / nFatorItemUnd) * nFatorVenda) -
        ((DataSet.FieldByName('EstoqueFiscal').asFloat / nFatorItemUnd) * nFatorVenda);
    bMultiUnd := Parametro('PesquisaMultiUnidade') = 'S';

    DataSet.FieldByName('icMinimo').asFloat := (DataSet.FieldByName('QtdeMinimo').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icMaximo').asFloat := (DataSet.FieldByName('QtdeMaximo').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icPontoPedido').asFloat := (DataSet.FieldByName('PontoPedido').asFloat / nFatorItemUnd) * nFatorVenda;

    DataSet.FieldByName('icMinimoCompra').asFloat := (DataSet.FieldByName('QtdeMinimo').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icMaximoCompra').asFloat := (DataSet.FieldByName('QtdeMaximo').asFloat / nFatorItemUnd) * nFatorVenda;
    DataSet.FieldByName('icPontoPedidoCompra').asFloat := (DataSet.FieldByName('PontoPedido').asFloat / nFatorItemUnd) * nFatorVenda;

    DataSet.FieldByName('icUltQtdCompra').asFloat := (DataSet.FieldByName('UltQtdeCompra').asFloat / nFatorItemUnd) * nFatorVenda;

    // Cálculo do Preço de Venda...

    if (bMultiUnd) and (DataSet.FieldByName('PrecoManUnd').AsCurrency > 0) then
        begin
            // Calculando primeiro o mínimo... **##**
            DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Preco').asCurrency;
            if (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
                begin
                    DataSet.FieldByName('icPreco').AsCurrency := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * nFatorItemUnd;
                    //        DataSet.FieldByName('icEstoqueVenda').asFloat := (DataSet.FieldByName('icEstoqueVenda').asFloat / nFatorItemUnd) * nFatorVenda;
                    //        DataSet.FieldByName('icEstoqueCompra').asFloat := DataSet.FieldByName('icEstoqueCompra').asFloat / nFatorItemUnd * nFatorVenda;
                end;
            if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
                //        DataSet.FieldByName('icPrecoMinimo').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency + (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercentualMinimo').ASCurrency /100 );
                DataSet.FieldByName('icPrecoMinimo').AsCurrency := DataSet.FieldByName('PrecoManUnd').AsCurrency - (DataSet.FieldByName('PrecoManUnd').AsCurrency * DataSet.FieldByName('DescontoMaximo').ASCurrency / 100);

            // **##** Para então colocar o preço manual
            DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('PrecoManUnd').AsCurrency;
        end
    else
        begin
            if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then
                begin
                    DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('PrecoPromocao').asCurrency;
                    DataSet.FieldByName('icEmPromocao').asBoolean := true;
                    DataSet.FieldByName('icPrecoMinimo').asCurrency := DataSet.FieldByName('icPreco').asCurrency;
                end
            else
                begin
                    if DataSet.FieldByName('Percentual').asCurrency = 0 then
                        begin
                            DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Preco').asCurrency;
                            if (bMultiUnd) and (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
                                DataSet.FieldByName('icPreco').AsCurrency := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * nFatorItemUnd;
                        end
                    else
                        begin
                            DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Percentual').asCurrency;
                        end;

                    DataSet.FieldByName('icEmPromocao').asBoolean := false;

                    if (nDescMax > 0) and (DataSet.FieldByName('Percentual').asCurrency = 0) then
                        DataSet.FieldByName('icPrecoMinimo').asCurrency := DataSet.FieldByName('Preco').asCurrency * (1 - (nDescMax / 100))
                    else
                        DataSet.FieldByName('icPrecoMinimo').asCurrency := 0;

                    if (bMultiUnd) then
                        begin
                            if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
                                DataSet.FieldByName('icPrecoMinimo').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency + (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercentualMinimo').ASCurrency / 100);
                            if (DataSet.FieldByName('PercUnd').ASCurrency > 0) then
                                DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency + (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercUnd').ASCurrency / 100);
                            DataSet.FieldByName('icPreco').AsCurrency := RoundTo(DataSet.FieldByName('icPreco').AsCurrency, -2);
                            DataSet.FieldByName('icPrecoMinimo').AsCurrency := RoundTo(DataSet.FieldByName('icPrecoMinimo').AsCurrency, -2);
                        end;
                end;
        end;
    // Fim do Cálculo do Preço de Venda

    DataSet.FieldByName('icPrecoCompra').asCurrency := DataSet.FieldByName('PrecoCompra').asFloat;

    DataSet.FieldByName('icCustoMedio').asCurrency := (DataSet.FieldByName('CustoMedio').asFloat / nFatorVenda) * nFatorItemUnd;
    DataSet.FieldByName('icCustoContabil').asCurrency := (DataSet.FieldByName('CustoContabil').asFloat / nFatorVenda) * nFatorItemUnd;

    // Adicionando as cotações dos indexadores mais atualizados...
    if DataSet.FieldByName('Indexador').AsVariant <> null then
        begin
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'select valor from cotacoes ' +
                        'where data = (select max(data) from cotacoes where indexador = :i) ' +
                        'and indexador = :i ';
                    ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
                    Open;
                    if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                        begin
                            DataSet.FieldByName('icPreco').AsCurrency := RoundTo(DataSet.FieldByName('icPreco').AsCurrency / Fields[0].AsFloat, -2);
                            DataSet.FieldByName('icPrecoMinimo').AsCurrency := RoundTo(DataSet.FieldByName('icPrecoMinimo').AsCurrency / Fields[0].AsFloat, -2);
                        end;
                    Close;
                end;
        end;
end;

procedure TDMProjeto.AtualizaPlanoContas;
var nConta, nContaPai, nNivel: integer;
begin
    Q_SQL.close;
    Q_SQL.SQL.text := 'update contas set nivel = :nivel where conta = :conta';

    Q_SQL2.close;
    Q_SQL2.SQL.text := 'select contapai from contas where conta = :conta';

    // Cálculo do Nível da Conta
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'select conta, contapai from contas ';
    DMProjeto.Q_Contabil.open;
    while not DMProjeto.Q_Contabil.eof do
        begin
            nConta := DMProjeto.Q_Contabil.FieldByName('conta').AsInteger;
            nContaPai := DMProjeto.Q_Contabil.FieldByName('contapai').AsInteger;
            nNivel := 0;
            while nContaPai > 0 do
                begin
                    inc(nNivel);

                    Q_SQL2.close;
                    Q_SQL2.ParamByName('conta').asinteger := nContaPai;
                    Q_SQL2.open;
                    nContaPai := Q_SQL2.FieldByName('contapai').AsInteger;
                end;
            Q_SQL.close;
            Q_SQL.ParamByName('conta').asinteger := nConta;
            Q_SQL.ParamByName('nivel').asinteger := nNivel;
            Q_SQL.ExecSQL;

            DMProjeto.Q_Contabil.next;
        end;
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'update contas set sintetico = ''S'' where ' +
        'conta in (select contapai from contas)';
    DMProjeto.Q_Contabil.execsql;
    //
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'update contas set sintetico = ''N'' where ' +
        'conta not in (select contapai from contas where contapai is not null)';
    DMProjeto.Q_Contabil.execsql;
end;

function TDMProjeto.GerarPlanoPgto;
var
    nJuros, nIndice, nIndiceLimpo: double;
    nValorEntrada, nValorParcelas, nMenorEntrada, nParcLimpa, nValorDescAntec, nTotalParcelamento, nValorTotal: Currency;
    sParcelas, sParcela, sParc, sResumo, s: string;
    i, nQtdParcelas, nOffSetEntrada, nDias: integer;
    bEntrada: boolean;
    dVenc, dVencAntec: TDateTime;
    slParcelas: TStringList;

    FieldJuros, FieldMenorValor, FieldPercentualEntrada, FieldPDesconto: Double;
    FieldPeriodicidade, FieldQtdParcelas, FieldDias_Antecipacao: Integer;
    FieldEsquemaParcelas, FieldIntervalos, FieldTipoEntrada, FieldDescricao, FieldCarenciaEntrada: string;

begin
    result := '';

    if DataSet <> nil then
        with DataSet do
            begin
                if (State <> dsInsert) then
                    begin
                        if (RecordCount = 0) then
                            exit;
                        if not Locate('PlanoPagamento', Plano, []) then
                            exit;
                    end;

                FieldJuros := FieldByName('Juros').asFloat;
                FieldMenorValor := FieldByName('MenorValor').asFloat;
                FieldPercentualEntrada := FieldByName('PercentualEntrada').asFloat;
                FieldPDesconto := FieldByName('PDesconto').asFloat;

                FieldPeriodicidade := FieldByName('Periodicidade').asInteger;
                FieldQtdParcelas := FieldByName('QtdParcelas').asInteger;
                FieldDias_Antecipacao := FieldByName('Dias_Antecipacao').asInteger;

                FieldEsquemaParcelas := FieldByName('EsquemaParcelas').asString;
                FieldIntervalos := FieldByName('Intervalos').asString;
                FieldTipoEntrada := FieldByName('TipoEntrada').asString;
                FieldDescricao := FieldByName('Descricao').asString;
                FieldCarenciaEntrada := FieldByName('CarenciaEntrada').asString;
            end
    else if DataSet = nil then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select * from PlanosPagamento where PlanoPagamento = :PL ';
                Params[0].asInteger := Plano;
                Open;

                if recordcount = 0 then
                    begin
                        Close;
                        exit;
                    end;

                FieldJuros := FieldByName('Juros').asFloat;
                FieldMenorValor := FieldByName('MenorValor').asFloat;
                FieldPercentualEntrada := FieldByName('PercentualEntrada').asFloat;
                FieldPDesconto := FieldByName('PDesconto').asFloat;

                FieldPeriodicidade := FieldByName('Periodicidade').asInteger;
                FieldQtdParcelas := FieldByName('QtdParcelas').asInteger;
                FieldDias_Antecipacao := FieldByName('Dias_Antecipacao').asInteger;

                FieldEsquemaParcelas := FieldByName('EsquemaParcelas').asString;
                FieldIntervalos := FieldByName('Intervalos').asString;
                FieldTipoEntrada := FieldByName('TipoEntrada').asString;
                FieldDescricao := FieldByName('Descricao').asString;
                FieldCarenciaEntrada := FieldByName('CarenciaEntrada').asString;

                Close;
            end;

    if Juros = 0 then
        nJuros := FieldJuros
    else
        nJuros := Juros; //Parametro

    sParcelas := '';

    if FieldEsquemaParcelas = 'V' then
        begin
            nQtdParcelas := Trunc(Valor / FieldMenorValor) - 1;
            if nQtdParcelas < 0 then
                nQtdParcelas := 0;
            nMenorEntrada := Valor / (nQtdParcelas + 1);
            bEntrada := true;
            if nQtdParcelas > 0 then
                begin
                    //Construindo Dinamicamente os Intervalos conforme Periodicidade e Num Parc. gerada.
                    nDias := FieldPeriodicidade;
                    for i := 1 to nQtdParcelas do
                        begin
                            sParcelas := CExp(sParcelas, ';') + IntToStr(i) + '-' + IntToStr(nDias);
                            nDias := nDias + FieldPeriodicidade;
                        end;
                end;
        end
    else
        begin
            nQtdParcelas := FieldQtdParcelas;
            nMenorEntrada := Valor * (FieldPercentualEntrada / 100);
            sParcelas := FieldIntervalos;
            bEntrada := not (FieldEsquemaParcelas[1] in ['S', 'F']);
        end;

    nOffSetEntrada := IIF(bEntrada, 1, 0); //Para ajustar o número das Parcelas, já que a primeira será a entrada;

    nValorTotal := Valor;

    {Definindo o Valor da Entrada}
    nValorEntrada := 0;

    if ValorEntrada > 0 then
        begin
            if ValorEntrada > Valor then
                ValorEntrada := Valor
            else if ValorEntrada < nMenorEntrada then
                ValorEntrada := nMenorEntrada;

            nValorEntrada := ValorEntrada;

            Valor := Valor - nValorEntrada;
            bEntrada := true;
        end
    else if bEntrada then
        begin
            //Definindo Conforme o Plano de Pgto
            if FieldTipoEntrada = 'D' then
                nValorEntrada := Arredondar(Valor / (nQtdParcelas + nOffSetEntrada), 2)
            else
                nValorEntrada := nMenorEntrada;

            if nValorEntrada > Valor then
                nValorEntrada := Valor;

            Valor := Valor - nValorEntrada;
        end;

    {Definindo o Valor das Parcelas}
    nValorParcelas := 0;

    if nQtdParcelas > 0 then
        begin
            if nJuros <> 0 then
                nIndice := (nJuros / 100) * power(1 + (nJuros / 100), nQtdParcelas) /
                    (power(1 + (nJuros / 100), nQtdParcelas) - 1)
            else
                nIndice := 1 / nQtdParcelas;

            nIndiceLimpo := 1 / nQtdParcelas;

            nValorParcelas := Arredondar((Valor * nIndice), 2);
            if nValorParcelas < 0 then
                nValorParcelas := 0;

            nParcLimpa := Arredondar((Valor * nIndiceLimpo), 2);
            if nParcLimpa < 0 then
                nParcLimpa := 0;
        end;

    nTotalParcelamento := nValorEntrada + (nQtdParcelas * nValorParcelas);
    nTotalParcelamento := Arredondar(nTotalParcelamento, 2);

    sResumo := FieldDescricao + ': ' +
        IIF(bEntrada, FormatCurr('##,##0.00', nValorEntrada), '') +
        IIF((bEntrada and (nQtdParcelas > 0)), ' + ', '') +
        IIF(nQtdParcelas > 0, IntToStr(nQtdParcelas) + ' x ' + FormatCurr('##,##0.00', nValorParcelas), '') +
        IIF(nTotalParcelamento <> nValorTotal, ' = ' + FormatCurr('##,##0.00', nTotalParcelamento), '');

    {Gerando o Parcelamento}
    Entrada := '';
    if bEntrada then
        begin
            if pos('/', FieldCarenciaEntrada) = 0 then
                dVenc := Data + StrToIntDef(FieldCarenciaEntrada, 0)
            else
                begin
                    s := uppercase(FieldCarenciaEntrada);
                    s := replace(s, 'DD', IntToStr(Day(Data)));

                    dVenc := AnoMesDiaToDate(s);
                end;

            Entrada := '1' + ';' + //Parcela
            DateTimeToStr(dVenc) + ';' + //Vencimento
            CurrToStr(nValorEntrada);
        end;

    (***********************)
    Parcelas := '';
    if nValorParcelas > 0 then
        begin
            slParcelas := TStringList.Create;

            dVenc := Data;
            for i := 1 to nQtdParcelas do
                begin
                    sParcela := SeparaStrings(sParcelas, ';', i);

                    sParc := SeparaStrings(sParcela, '-', 1);
                    sParc := IntToStr(StrToIntDef(sParc, 1) + nOffSetEntrada);

                    s := SeparaStrings(sParcela, '-', 2);
                    nDias := StrToIntDef(s, -1);

                    if FieldEsquemaParcelas = 'F' then
                        // Várias Parcelas com Vencimentos Fixos
                        dVenc := StrToFloatDef(s, Date)
                    else
                        begin
                            // Outros Tipos
                            if (nDias > 0) and (FieldPeriodicidade = 30) and ((nDias mod 30) = 0) then
                                dVenc := DateAdd('MM', 1, dVenc)
                            else if (nDias = -1) and (pos('/', s) > 0) then
                                begin
                                    s := uppercase(s);
                                    s := replace(s, 'DD', IntToStr(Day(Data)));
                                    dVenc := AnoMesDiaToDate(s);
                                end
                            else
                                dVenc := Data + nDias;
                        end;

                    sParc := sParc + ';' + //Parcela
                    DateTimeToStr(dVenc) + ';' + //Vencimento
                    CurrToStr(nValorParcelas) + ';' + //Valor Parcela
                    CurrToStr(nValorParcelas - nParcLimpa) + ';'; //JurosPlano

                    {Desconto por pgto antecipado}
                    if FieldPDesconto > 0 then
                        begin
                            dVencAntec := dVenc - FieldDias_Antecipacao;
                            nValorDescAntec := Arredondar(nValorParcelas * (FieldPDesconto / 100), 2);
                            sParc := sParc + CurrToStr(nValorDescAntec) + ';' +
                                DateTimetoStr(dVencAntec);
                        end
                    else
                        sParc := sParc + ';';

                    slParcelas.Add(sParc);
                end; // end do for

            Parcelas := slParcelas.Text;

            slParcelas.Free;
        end; // end do if

    result := sResumo;
end;

procedure TDMProjeto.Maximiza(Sender: TObject);
begin
    TppReport(Sender).PreviewForm.WindowState := wsMaximized;
    TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TDMProjeto.Atualiza(sender: TObject);
begin
    CabecalhoLadoDireito.RichText := sCabDireito;
    CabecalhoLadoDireito.RichText := replace(CabecalhoLadoDireito.RichText, '<NumeroPagina>', IntToStr(TppReport(TppBand(CabecalhoLadoDireito.Parent).Report).PageNo));
    CabecalhoLadoDireito.RichText := replace(CabecalhoLadoDireito.RichText, '<TotalPaginas>', IntToStr(TppReport(TppBand(CabecalhoLadoDireito.Parent).Report).PageCount));
end;

function TDMProjeto.getValoresSQL(sSQL, sCampo: string; sOutroCampo: string = ''): string;
var sValor: string;
begin
    with Q_SQL2 do
        begin
            close;
            sql.text := sSQL;
            open;
            disablecontrols;
            sValor := '';
            while not eof do
                begin
                    sValor := sValor + fieldbyname(sCampo).asString + ',';
                    Next;
                end;
            enablecontrols;
            close;
            sValor := Copy(sValor, 1, length(sValor) - 1);
        end;
    result := sValor;
end;

function TDMProjeto.VerificaExistenciaItem;
begin
    Q_ComandoSQL.close;
    if sTipo = 'C' then
        Q_ComandoSQL.SQL.text := 'select item from itens where item <> :nItem and desativado = ''N'' and codigo = :codigo'
    else
        Q_ComandoSQL.SQL.text := 'select item from itens where item <> :nItem and desativado = ''N'' and upper(descricao) = :descricao';
    Q_ComandoSQL.params[0].asinteger := nItem;
    Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
    Q_ComandoSQL.open;
    result := Q_ComandoSQL.FieldByName('item').asinteger <> 0;
end;

function TDMProjeto.VerificaExistenciaItensCodigos(sTexto: string): boolean;
begin
    Q_ComandoSQL.close;
    Q_ComandoSQL.SQL.text := 'select ic.item,ic.codigo from itenscodigos ic INNER JOIN itens i ON i.item = ic.item where ic.codigo = :codigo';
    Q_ComandoSQL.params[0].Asstring := sTexto;
    Q_ComandoSQL.open;
    result := Q_ComandoSQL.FieldByName('item').asinteger <> 0;
end;

function TDMProjeto.ValidarCodigoItensUnidades(sCodigo: string): boolean;
begin
    Q_ComandoSQL.Close;
    Q_ComandoSQL.SQL.Text := 'select count(*) as qtd from itensunidades i where i.codigo = :codigo';
    Q_ComandoSQL.Params[0].AsString := sCodigo;
    Q_ComandoSQL.Open;

    Result := Q_ComandoSQL.FieldByname('qtd').AsInteger > 0;
end;

function TDMProjeto.VerificaExistenciaConta;
begin
    Q_ComandoSQL.close;
    if sTipo = 'C' then
        Q_ComandoSQL.SQL.text := 'select conta from contas where conta <> :nconta and desativado = ''N'' and codigoreduzido = :codigo'
    else
        Q_ComandoSQL.SQL.text := 'select conta from contas where conta <> :nconta and desativado = ''N'' and upper(descricao) = :descricao';
    Q_ComandoSQL.params[0].asinteger := nConta;
    Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
    Q_ComandoSQL.open;
    result := Q_ComandoSQL.FieldByName('conta').asinteger <> 0;
end;

function TDMProjeto.GetInformacoesCredito(nFav: integer; var dDataCad: TDateTime; var fLimiteCred, fCredito: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Favorecido, Nome, DataCadastro, LimiteCredito, Credito ' +
                'From Favorecidos Where Favorecido = ' + IntToStr(nFav);
            Open;
            dDataCad := FieldByName('DataCadastro').AsDateTime;
            fLimiteCred := FieldByName('LimiteCredito').AsCurrency;
            fCredito := FieldByName('Credito').AsCurrency;
        end;
end;

function TDMProjeto.GetInformacoesCheques(nFav: integer; var nCheqPend: integer; var fCheqPend: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(dd.IDDoc) As QuantCheques, ' +
                'Sum(dd.Valor) As TotalCheques ' +
                'From DepositosDoc dd ' +
                'Inner Join Depositos d On d.Deposito=dd.Deposito ' +
                'Inner Join FormasPagamento fp On fp.formapagamento=dd.formapagamento ' +
                'Where dd.Status=3 and dd.ForaDaEmpresa = ''N'' and fp.Especie = 1 and d.Favorecido =' + IntToStr(nFav);
            Open;
            nCheqPend := FieldByName('QuantCheques').AsInteger;
            fCheqPend := FieldByName('TotalCheques').AsCurrency;
        end;
end;

function TDMProjeto.GetInformacoesCreditoAberto(nFav: integer; var fCredAberto: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select SUM(faltareceber) As CredAberto ' +
                'From TitulosaReceber Where Cliente = ' + IntToStr(nFav) + ' ' +
                'And Status >= 1 And Status < 50 Having SUM(faltareceber)>=0';
            Open;
            fCredAberto := FieldByName('CredAberto').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesUltVenda(nFav: integer; var nCodUltVenda: integer; var dDataUltVenda: TDateTime; var fValUltVenda: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Saida, Data, Total From Saidas ' +
                'Where Saida = (Select Max(Saida) From Saidas ' +
                'Where Favorecido=' + IntToStr(nFav) + ' ' +
                'And Situacao = ' + QuotedStr('N') + ' And TipoPadrao = 1)' {Invoice};
            Open;
            nCodUltVenda := FieldByName('Saida').AsInteger;
            dDataUltVenda := FieldByName('Data').AsDateTime;
            fValUltVenda := FieldByName('Total').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesMaiorVenda(nFav: integer; var nCodMaiorVenda: integer; var dDataMaiorVenda: TDateTime; var fValMaiorVenda: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Saida, Data, Total From Saidas ' +
                'Where Favorecido = ' + IntToStr(nFav) + ' ' +
                'And Total = (Select Max(Total) From Saidas ' +
                'Where Favorecido = ' + IntToStr(nFav) + ' ' +
                'And Situacao = ' + QuotedStr('N') + ' And TipoPadrao = 1) ' +
                'Order By Saida Desc';
            Open;
            nCodMaiorVenda := FieldByName('Saida').AsInteger;
            dDataMaiorVenda := FieldByName('Data').AsDateTime;
            fValMaiorVenda := FieldByName('Total').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesMenorVenda(nFav: integer; var nCodMenorVenda: integer; var dDataMenorVenda: TDateTime; var fValMenorVenda: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Saida, Data, Total From Saidas ' +
                'Where Favorecido = ' + IntToStr(nFav) + ' ' +
                'And Total = (Select Min(Total) From Saidas ' +
                'Where Favorecido = ' + IntToStr(nFav) + ' ' +
                'And Situacao = ' + QuotedStr('N') + ' And TipoPadrao = 1) ' +
                'Order By Saida Desc';
            Open;
            nCodMenorVenda := FieldByName('Saida').AsInteger;
            dDataMenorVenda := FieldByName('Data').AsDateTime;
            fValMenorVenda := FieldByName('Total').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalVendas(nFav: integer; var nQuantVendas: integer; var fValTotVendas, fValMedVendas: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(Saida) As QuantVendas, ' +
                'Sum(Total) As TotalVendas, Avg(Total) As MediaVendas ' +
                'From Saidas Where Favorecido = ' + IntToStr(nFav) + ' ' +
                'And Situacao = ' + QuotedStr('N') + ' And TipoPadrao = 1';
            Open;
            fValTotVendas := FieldByName('TotalVendas').AsFloat;
            nQuantVendas := FieldByName('QuantVendas').AsInteger;
            fValMedVendas := FieldByName('MediaVendas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesMediaParcelas(nFav: integer; var nParcelas: integer; var fValMedParc: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(tr.ID) as parcelas, ' +
                'Sum(tr.valor) As totparcelas, Avg(Valor) As mediaparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status>0';
            Open;
            nParcelas := FieldByName('Parcelas').AsInteger;
            fValMedParc := FieldByName('MediaParcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesMaiorParcelas(nFav: integer; var nCodMaiorParc, nVenda: integer; var fValMaiorParc: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select ID as codigo, Valor As maiorparcela, venda From TitulosaReceber ' +
                'Where valor = (Select Max(Valor) From TitulosaReceber ' +
                'Where Cliente = ' + IntToStr(nFav) + ' ' +
                'And Status>0) ' +
                'Order By id desc';
            Open;
            nCodMaiorParc := FieldByName('codigo').AsInteger;
            nVenda := FieldByName('venda').AsInteger;
            fValMaiorParc := FieldByName('maiorparcela').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesMenorParcelas(nFav: integer; var nCodMenorParc, nVenda: integer; var fValMenorParc: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select ID as codigo, Valor As menorparcela, venda From TitulosaReceber ' +
                'Where valor = (Select Min(Valor) From TitulosaReceber ' +
                'Where Cliente = ' + IntToStr(nFav) + ' ' +
                'And Status>0) ' +
                'Order By id desc';
            Open;
            nCodMenorParc := FieldByName('codigo').AsInteger;
            nVenda := FieldByName('venda').AsInteger;
            fValMenorParc := FieldByName('menorparcela').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelas(nFav, nAno: integer; var nQuantParc: integer; var fValorParc: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status>0';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}
            Open;
            nQuantParc := FieldByName('quantparcelas').AsInteger;
            fValorParc := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelasEmDia(nFav, nAno: integer; var nQuantParcEmDia: integer; var fValorParcEmDia: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status>=50 And tr.datapago<=tr.vencimento';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}
            Open;
            nQuantParcEmDia := FieldByName('quantparcelas').AsInteger;
            fValorParcEmDia := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelasEmAtraso(nFav, nAno: integer; var nQuantParcEmAtraso: integer; var fValorParcEmAtraso: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status>=50 And tr.datapago>tr.vencimento';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}
            Open;
            nQuantParcEmAtraso := FieldByName('quantparcelas').AsInteger;
            fValorParcEmAtraso := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelasAtrasadas(nFav, nAno: integer; var nQuantParcAtrasadas: integer; var fValorParcAtrasadas: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status=3';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}
            Open;
            nQuantParcAtrasadas := FieldByName('quantparcelas').AsInteger;
            fValorParcAtrasadas := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelasVencidas(nFav, nAno: integer; var nQuantParcVencidas: integer; var fValorParcVencidas: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And tr.status = 2';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}
            Open;
            nQuantParcVencidas := FieldByName('quantparcelas').AsInteger;
            fValorParcVencidas := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesTotalParcelasAVencer(nFav, nAno: integer; var nQuantParcAVencer: integer; var fValorParcAVencer: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.faltareceber) As totparcelas ' +
                'From titulosareceber tr ' +
                'Where cliente = ' + IntToStr(nFav) + ' ' +
                'And vencimento>CURRENT_DATE and tr.status > 0 and tr.status < 50 ';
            if nAno > 0 then
                SQL.Add('and extract(year from tr.vencimento) = ' + IntToStr(nAno));
                //SQL.Add('And f_year(tr.vencimento) = ' + IntToStr(nAno));         {Felipe - Comentado para incluir função que rodará no Firebird 1.5 e 2.5 (11/04/2016)}

            Open;
            nQuantParcAVencer := FieldByName('quantparcelas').AsInteger;
            fValorParcAVencer := FieldByName('totparcelas').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesParcelasDiasAtraso(nFav: integer; var nMedAtra: integer): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select avg(DataPago-Vencimento) as DiasAtraso ' +
                'From TitulosaReceber ' +
                'Where (DataPago-Vencimento)>0 ' +
                'And Cliente = ' + IntToStr(nFav) + ' ' +
                'And Status >= 50';
            Open;
            nMedAtra := FieldByName('DiasAtraso').AsInteger;
        end;
end;

function TDMProjeto.GetInformacoesChequesDev(nFav: integer; var nCheqDevQuant: integer; var fCheqDevVal: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(dd.IDDOC) As QuantCheques, Sum(dd.Valor) As TotalCheques ' +
                'From DepositosDoc dd Join FormasPagamento fp On dd.FormaPagamento=fp.FormaPagamento ' +
                'Join Depositos d On d.Deposito=dd.Deposito Where fp.Especie=1 ' +
                'And d.Favorecido = ' + IntToStr(nFav) + ' And dd.Status = 4';
            Open;
            nCheqDevQuant := FieldByName('QuantCheques').AsInteger;
            fCheqDevVal := FieldByName('TotalCheques').AsFloat;
        end;
end;

function TDMProjeto.GetInformacoesChequesAcer(nFav: integer; var nCheqDevAc: integer; var fCheqDevAcVal: currency): boolean;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(dd.IDDOC) As QuantCheques, Sum(dd.Valor) As TotalCheques ' +
                'From DepositosDoc dd Join Depositos d On d.Deposito=dd.Deposito ' +
                'Where d.Favorecido = ' + IntToStr(nFav) + ' And dd.Status = 71';
            Open;
            nCheqDevAc := FieldByName('QuantCheques').AsInteger;
            fCheqDevAcVal := FieldByName('TotalCheques').AsFloat;
        end;
end;

function TDMProjeto.ConverteDataParametro(sData: string): TDatetime;
begin
    result := EncodeDate(StrToInt(Copy(sData, 1, 4)), StrToInt(Copy(sData, 5, 2)), StrToInt(Copy(sData, 7, 2)));
end;

procedure TDMProjeto.FatoresCustos;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select MaiorComissao, DespesasFixas, EncargosCartoes, LucroPadrao, ImpostosFederais from FatoresCusto ';
            try
                Open;
                MaiorComissao := fieldbyname('MaiorComissao').asCurrency;
                DespesaFixa := fieldbyname('DespesasFixas').asCurrency;
                EncargosCartoes := fieldbyname('EncargosCartoes').asCurrency;
                LucroPadrao := fieldbyname('LucroPadrao').asCurrency;
                ImpostosFederais := fieldbyname('ImpostosFederais').asCurrency;

            except
                ShowMessage('Fatores de Custos não encontrados!');
            end;

            Close;
        end;
end;

function TDMProjeto.FatorCusto(NomeFator: string): Currency;
begin
    result := 0;
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select ' + NomeFator + ' from FatoresCusto ';
            try
                Open;
                result := fieldbyname(NomeFator).asCurrency;
            except
                ShowMessage('Fator de Custo "' + NomeFator + '" não encontrado!');
            end;

            Close;
        end;
end;

procedure TDMProjeto.SincronizarLucros(Itens, Grupos, Fabrics, Condicoes: string);
var
    sComando: string;
    nLucro: double;
begin

    with Q_SQL do
        begin
            Close;
            sComando := 'Select i.Item, i.SemLucro, i.FatorLucro, (i.CustoMedio * i.fatorundvenda) as CustoMedio, ' +
                '(i.CustoContabil * i.fatorundvenda) as CustoContabil, pp.Preco ' +
                'From Itens i inner join ProdutosPreco pp on pp.Item = i.Item and pp.Unidade = i.Unidade ' +
                'where pp.TabelaPreco = 0 and pp.Preco > 0 and pp.Preco > i.CustoMedio and i.CustoMedio > 0 ';
            if Itens <> '' then
                sComando := sComando + ' and i.Item in (' + Itens + ') '
            else if Grupos <> '' then
                sComando := sComando + ' and i.Grupo in (' + Grupos + ') '
            else if Fabrics <> '' then
                sComando := sComando + ' and i.Fabricante in (' + Fabrics + ') ';

            if Condicoes <> '' then
                sComando := sComando + ' and ' + Condicoes;

            SQL.Text := sComando;
            Open;

            Q_SQL2.Close;
            Q_SQL2.SQL.Text := 'Update Itens set FatorLucro = :L where Item = :I ';

            while not EOF do
                begin
                    if DMProjeto.Parametro('CustoCalcPreco') = 'CC' then
                        nLucro := (((FieldByName('Preco').asCurrency - FieldByName('CustoContabil').asCurrency) / FieldByName('Preco').asCurrency) - (FieldByName('SemLucro').asCurrency / 100)) * 100
                    else
                        nLucro := (((FieldByName('Preco').asCurrency - FieldByName('CustoMedio').asCurrency) / FieldByName('Preco').asCurrency) - (FieldByName('SemLucro').asCurrency / 100)) * 100;
                    if nlucro < 0 then
                        nLucro := 0;
                    Q_SQL2.Params[0].asFloat := nLucro;
                    Q_SQL2.Params[1].asInteger := FieldByName('Item').asInteger;
                    Q_SQL2.ExecSQL;

                    Next; //Q_SQL;
                end;

            Close;
        end;

end;

procedure TDMProjeto.SincronizarPrecosVenda(Itens, Grupos, Fabrics, Condicoes: string);
var
    sComando: string;
    nPreco: currency;
    nFator: double;
begin
    with Q_SQL do
        begin
            Close;
            sComando := 'Select i.Item, i.SemLucro, i.FatorLucro, (i.CustoMedio * i.fatorundvenda) as customedio, (i.custocontabil * i.fatorundvenda) as CustoContabil, ' +
                'pp.Preco, i.Unidade, g.fatorlucro as g_lucro ' +
                'From Itens i inner join ProdutosPreco pp on pp.Item = i.Item and pp.Unidade = i.Unidade left join grupos g on i.grupo = g.grupo ' +
                'where pp.TabelaPreco = 0 and i.CustoMedio > 0 ';
            if Itens <> '' then
                sComando := sComando + ' and i.Item in (' + Itens + ') '
            else if Grupos <> '' then
                sComando := sComando + ' and i.Grupo in (' + Grupos + ') '
            else if Fabrics <> '' then
                sComando := sComando + ' and i.Fabricante in (' + Fabrics + ') ';

            if Condicoes <> '' then
                sComando := sComando + ' and ' + Condicoes;

            SQL.Text := sComando;
            Open;

            Q_SQL2.Close;
            Q_SQL2.SQL.Text := 'Update ProdutosPreco set Preco = :P where Item = :I and Unidade = :U ';

            while not EOF do
                begin
                    if FieldByName('FatorLucro').asCurrency = -999 then
                        nFator := FieldByName('SemLucro').asCurrency + FieldByName('g_Lucro').asCurrency
                    else
                        nFator := FieldByName('SemLucro').asCurrency + FieldByName('FatorLucro').asCurrency;

                    if nFator > 100 then
                        nFator := 99.9;

                    nFator := (100 - nFator) / 100;

                    if DMProjeto.Parametro('CustoCalcPreco') = 'CC' then
                        begin
                            try
                                nPreco := Arredondar((FieldByName('CustoContabil').asCurrency / nFator), 2);
                            except
                                nPreco := 0;
                            end;
                        end
                    else
                        begin
                            try
                                nPreco := Arredondar((FieldByName('CustoMedio').asCurrency / nFator), 2);
                            except
                                nPreco := 0;
                            end;
                        end;
                    Q_SQL2.Params[0].asFloat := nPreco;
                    Q_SQL2.Params[1].asInteger := FieldByName('Item').asInteger;
                    Q_SQL2.Params[2].asString := FieldByName('Unidade').asString;
                    Q_SQL2.ExecSQL;

                    Next; //Q_SQL;
                end;

            Close;
        end;

    {Atualizando tabelas derivadas}
    AtualizarPrecos(0, Itens, Grupos, Fabrics, Condicoes);

    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
end;

function TDMProjeto.getInfoImpressao;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            Database := DB_Projeto;
            SQL.Text := 'select ' + sCampo + ' from relatorios' + iif(sMaq = 'S', 'maq', '') + ' where id = :id';
            Parambyname('id').AsInteger := ID;
            Open;
            result := fields[0].AsString;
            Close;
            Free;
        end;
end;

procedure TDMProjeto.ValidaPrecosAutomaticos;
var
    nOp: Integer;
    sCusto: string;
begin
    if DMProjeto.Parametro('CustoCalcPreco') = 'CC' then
        sCusto := 'i.CustoMedio = 0'
    else
        sCusto := 'i.CustoContabil = 0';

    with DMProjeto.Q_SQL do
        begin
            {Verificando Itens com Custo Zerados e preço de venda Informado.  Isto impossibilita a determinação de um
             fator de lucro que complete a equação }
            Close;
            SQL.Text := 'Select Count(*) as Existentes from Itens i ' +
                'Inner Join ProdutosPreco pp ON pp.Item = i.Item and pp.Unidade = i.Unidade ' +
                'where ' + sCusto + ' and i.Desativado = ''N'' and i.TipoItem = 1 ' +
                'and   i.Revenda = ''S'' and pp.TabelaPreco = 0 and pp.preco > 0 ';
            Open;

            if FieldByName('Existentes').asInteger > 0 then
                begin
                    nOp := DlgMsg.ShowMsg(2460);

                    if nOp = 100 then
                        begin
                            {Chamando o Cadastro de Itens com os itens problemáticos}
                            DMProjeto.SetParametrosForm([null, null, 'D']);
                            DMProjeto.CriarForm('FrmItens', self, true);
                        end
                    else
                        begin
                            SetParametro('PrecosAutomaticos', 'N');
                            exit;
                        end;

                end;
            {END: Preco > 0 and Custo  = 0}
            system.delete(sCusto, pos('=', sCusto), 3);

            {Verificando Itens que estão com Preços diferentes dos Preços Calculados pelo sistema}
            Close;
            SQL.Text := 'Select Count(*) as Existentes from Itens i ' +
                'Inner Join ProdutosPreco pp ON pp.Item = i.Item and pp.Unidade = i.Unidade ' +
                'Inner Join ItensUnidades iuv ON iuv.Item = i.Item and iuv.Unidade = i.Unidade ' +
                'where pp.TabelaPreco = 0 and i.Desativado = ''N'' and i.TipoItem = 1 ' +
                'and   i.Revenda = ''S'' and i.ComLucro < 100  ' +
                'and   F_ABS(pp.Preco - ((' + sCusto + '*iuv.Fator) / ((100 - i.ComLucro) / 100))) >= 0.02 ';
            Open;

            if FieldByName('Existentes').asInteger > 0 then
                begin
                    nOp := DlgMsg.ShowMsg(2462);

                    if nOp = 100 then
                        begin
                            {Chamando o Cadastro de Itens com os itens problemáticos}
                            DMProjeto.SetParametrosForm([null, null, 'C']);
                            DMProjeto.CriarForm('FrmItens', self, true);
                        end
                    else
                        SetParametro('PrecosAutomaticos', 'N');

                end;

            {END: Preco <> PrecoCalculado}
        end;

end;

function TDMProjeto.getCampoFavorecido(Fav: integer; Campo: string): Variant;
var Query: TIbQuery;
begin
    Query := TIbQuery.Create(self);
    with Query do
        begin
            database := DB_Projeto;
            close;
            sql.text := 'select ' + Campo + ' from favorecidos where favorecido = :fav';
            parambyname('fav').AsInteger := Fav;
            open;
            result := fields[0].AsVariant;
            close;
            Free;
        end;
end;

function TDMProjeto.getCampoTabela(Tabela, CampoChave, Campo: string; ID: integer): Variant;
var Query: TIbQuery;
begin
    Query := TIbQuery.Create(self);
    with Query do
        begin
            database := DB_Projeto;
            close;
            sql.text := 'select ' + Campo + ' from ' + Tabela + ' where ' + CampoChave + ' = :' + CampoChave;
            parambyname(campochave).AsInteger := ID;
            open;
            result := fields[0].AsVariant;
            close;
            Free;
        end;
end;

function TDMProjeto.AtualizaAcesso;
begin
    q_sql.Close;
    q_sql.sql.text := 'update idiomas set ' +
        ' cod_empresa = ' + IntToStr(NextIDGlobal(true)) +
        ' + ' + TempdtTrava +
        ' where idioma = 1';
    q_sql.ExecSql;
    IBT_Projeto.CommitRetaining;
end;

function TDMProjeto.PrecoDireto(Item: integer; Unidade: string; TabelaPreco: integer = 0): Currency;
var nFatorVenda, nFatorUnidade, nPreco, nPrecoPromocao: Currency;
begin
    nFatorUnidade := getFatorUnidade(Item, Unidade);
    if nFatorUnidade = 0 then
        nFatorUnidade := SetFator(Item, getCampoTabela('Itens', 'Item', 'Descricao', Item), Unidade);

    with Q_SQL do
        begin
            Close;
            Sql.text := 'Select Preco, PrecoPromocao From ProdutosPreco ' +
                'Where Item = :item and Unidade = :unidade and TabelaPreco = :tabela ';
            ParamByName('item').asinteger := Item;
            ParamByName('unidade').asstring := Unidade;
            ParamByName('tabela').asinteger := TabelaPreco;
            Open;

            nPreco := Fields[0].AsCurrency;
            nPrecoPromocao := Fields[1].asCurrency;

            if nPrecoPromocao > 0 then
                nPreco := nPrecoPromocao;

            Close;

            if (nPreco = 0) then
                begin
                    SQL.Text := 'Select pp.Preco, i.FatorUndVenda, i.Indexador ' +
                        'from Itens i inner join produtospreco pp on pp.item = i.item and pp.unidade = i.unidade ' +
                        'where i.item = :item and pp.Tabelapreco = :T';
                    ParamByName('item').asinteger := Item;
                    ParamByName('t').asinteger := TabelaPreco;
                    Open;

                    nPreco := Fields[0].AsCurrency;
                    nFatorVenda := Fields[1].asFloat;

                    try
                        nPreco := (nPreco / nFatorVenda) * nFatorUnidade;
                    except
                    end;
                    // Adicionando as cotações dos indexadores mais atualizados...
                    if FieldByName('Indexador').AsVariant <> null then
                        begin
                            Q_SQL2.Close;
                            Q_SQL2.SQL.Text := 'select valor from cotacoes ' +
                                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                                'and indexador = :i ';
                            Q_SQL2.ParamByName('i').AsInteger := FieldByName('Indexador').AsInteger;
                            Q_SQL2.Open;
                            if (Q_SQL2.RecordCount > 0) and (Q_SQL2.Fields[0].AsFloat > 0) then
                                begin
                                    nPreco := RoundTo(nPreco / Q_SQL2.Fields[0].AsFloat, -2);
                                end;
                            Q_SQL2.Close;
                        end;
                    //
                end;
            Close;

            result := nPreco;

        end;
end;

function TDMProjeto.SetFator(Item: Integer; Descricao, Unidade: string; bRegistrar: Boolean = True): double;
begin
    if Unidade = '' then
        begin
            result := 1;
            exit;
        end;

    DlgInserirFator := TDlgInserirFator.Create(self);
    with DlgInserirFator do
        begin
            nItem := Item;
            sItem := Descricao;
            sUnidade := Unidade;
            nFator := ExtractNumFromStr(Unidade);

            if ShowModal = mrOk then
                begin
                    result := edFator.Value;
                    if (edFator.Value > 0) and bRegistrar then
                        with Q_SQL do
                            begin
                                close;
                                sql.text := 'insert into itensunidades ' +
                                    '( item, unidade, fator ) ' +
                                    'values ' +
                                    '( ' + IntToStr(nitem) + ', ''' + sUnidade + ''', ' + FloatToStr(edFator.Value) + ')';
                                execsql;
                                close;
                            end;
                end
            else
                result := -1;

            Release;
        end;
end;

function TDMProjeto.getFatorUnidade(Item: integer; sUnidade: string): double;
begin
    if sUnidade = '' then
        exit;
    with q_sql do
        begin
            close;
            sql.text := 'select fator from itensunidades ' +
                'where item = :item and unidade = :unidade';
            parambyname('item').asInteger := Item;
            parambyname('unidade').asString := sUnidade;
            open;
            result := fields[0].asFloat;

            if Result = 0 then
                Result := SetFator(Item, getCampoTabela('Itens', 'Item', 'Descricao', Item), sUnidade);

            if Result = 0 then
                Result := 1;

            close;
        end;
end;

function TDMProjeto.getUnidadeMinima(Item: integer): string;
begin
    with q_sql2 do
        begin
            close;
            sql.text := 'select unidade from itensunidades ' +
                'where item = :item ' +
                'order by fator';
            parambyname('item').asInteger := Item;
            open;
            result := fields[0].asString;
            close;
        end;
end;

function TDMProjeto.GetPrecoItem(nItem: Integer; Unidade: string; nTabelaPreco: integer = 0): Currency;
begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'Select Preco from ProdutosPreco ' +
        'where ITEM = :I and TabelaPreco = :tabela and Unidade = :Unidade ';
    Q_SQL.Params[0].asinteger := nItem;
    Q_SQL.Params[1].asinteger := nTabelaPreco;
    Q_SQL.Params[2].asstring := Unidade;
    Q_SQL.Open;

    Result := Q_SQL.FieldByName('Preco').asCurrency;

    Q_SQL.Close;
end;

function TDMProjeto.TabelaHtml(bBorda: boolean; nWidth: integer; sCorCabecalho, sCorDados, sCabecalho, sDados: string; sAlinhamento: string = ''; sLargura: string = ''; nOsNmais: Integer = 0): string;
var sHtml, sCab, sLinha, sLinhas, sColunas: string;
    i, j: integer;
begin
    sHtml := '<table ' + iif(bBorda, 'border="1"', 'noborder') + ' width="' + IntToStr(nWidth) + '%" style="font-size: 11px">' +
        '<tr bgcolor="' + sCorCabecalho + '">'; //#C0C0FF
    {Cabeçalho}
    sCab := '';
    sLinhas := '';
    for i := 1 to ContaStrings(sCabecalho, ';') do
        sCab := sCab + '<td align="center"><b>' + SeparaStrings(sCabecalho, ';', i) + '</td>';
    sCab := sCab + '</tr>';
    {Dados}
    for i := 1 to ContaStrings(sDados, ';') do
        begin //#EBEBFF
            sColunas := SeparaStrings(sDados, ';', i);
            sLinha := '';
            for j := 1 to ContaStrings(sColunas, '=') do
                sLinha := sLinha + '<td ' + SeparaStrings(sAlinhamento, ';', j) + ' ' + SeparaStrings(sLargura, ';', j) + '>' + SeparaStrings(sColunas, '=', j) + '</td>';
            sLinha := '<tr bgcolor="' + sCorDados + '">' + sLinha + '</tr>';
            sLinhas := sLinhas + sLinha;
        end;
    result := sHtml + sCab + sLinhas + '</table>';
end;

function TDMProjeto.ChecaLembretes(nFav: integer): boolean;
begin
    Q_ComandoSQL.SQL.text := 'select lembrete from lembretes l where situacao = ''N'' and ' +
        'lembrete in (select lembrete from lembretesclientes lc where l.lembrete = lc.lembrete and lc.cliente = ' + IntToStr(nFav) + ')';
    Q_ComandoSQL.open;
    result := Q_ComandoSQL.fieldbyname('lembrete').asinteger <> 0;
    Q_ComandoSQL.close;
end;

procedure TDMProjeto.AtualizaPermissoesTabelasPreco;
begin
    if slPermissoesTabPreco = nil then
        slPermissoesTabPreco := TStringList.create
    else
        slPermissoesTabPreco.Clear;

    Q_ComandoSQL.SQL.text := 'select tabelapreco, consultar, utilizar from perfistabelaprecos ' +
        'where perfil = ' + IntToStr(nPerfil);
    Q_ComandoSQL.open;
    while not Q_ComandoSQL.eof do
        begin
            slPermissoesTabPreco.Add(Q_ComandoSQL.fieldbyname('tabelapreco').asstring + '_U=' + Q_ComandoSQL.fieldbyname('utilizar').asstring);
            slPermissoesTabPreco.Add(Q_ComandoSQL.fieldbyname('tabelapreco').asstring + '_C=' + Q_ComandoSQL.fieldbyname('consultar').asstring);
            Q_ComandoSQL.next;
        end;
    Q_ComandoSQL.close;
end;

function TDMProjeto.PermissoesTabelasPreco;
begin
    if sTipo = '' then
        sTipo := 'C';
    result := slPermissoesTabPreco.values[IntToStr(nTabelaPreco) + '_' + sTipo] <> 'S';

    if not result and bSenha then
        begin
            dlgAutorizacaoTabela := TdlgAutorizacaoTabela.Create(Application, 'TP', nTabelaPreco, sTipo);
            try
                result := (dlgAutorizacaoTabela.ShowModal = mrOk);
            finally
                dlgAutorizacaoTabela.Release;
            end;
        end;
end;

procedure TDMProjeto.AtualizaPermissoesTiposMovimento;
begin
    if slPermissoesTiposMov = nil then
        slPermissoesTiposMov := TStringList.create
    else
        slPermissoesTiposMov.Clear;

    Q_ComandoSQL.SQL.text := 'select tipomovimento, utilizar from perfistiposmovimento ' +
        'where perfil = ' + IntToStr(nPerfil);
    Q_ComandoSQL.open;
    while not Q_ComandoSQL.eof do
        begin
            slPermissoesTiposMov.Add(Q_ComandoSQL.fieldbyname('tipomovimento').asstring + '=' + Q_ComandoSQL.fieldbyname('utilizar').asstring);
            Q_ComandoSQL.next;
        end;
    Q_ComandoSQL.close;
end;

function TDMProjeto.PermissoesTiposMovimento;
begin
    result := slPermissoesTiposMov.values[IntToStr(nTipoMov)] <> 'S';
    if not result and bSenha then
        begin
            dlgAutorizacaoTabela := TdlgAutorizacaoTabela.Create(Application, 'TM', nTipoMov, '');
            try
                result := (dlgAutorizacaoTabela.ShowModal = mrOk);
            finally
                dlgAutorizacaoTabela.Release;
            end;
        end;
end;

function TDMProjeto.CST(sTipo, sCST: string; nAliqICMS, nReducao, nValor: currency): currency;
begin
    result := 0;
    if sCST <> '' then
        begin
            if sTipo = 'BC' then
                begin
                    case StrToInt(Direita(sCST, 1)) of
                        0: result := nValor;
                        1, 6: result := 0;
                        2, 7: result := Truncar(nValor * (1 - nReducao / 100), 2);
                        3, 4: result := 0;
                    end;
                end
            else if sTipo = 'BCI' then
                begin
                    case StrToInt(Direita(sCST, 1)) of
                        0: result := 0;
                        1, 6: result := 0;
                        2, 7: result := 0;
                        3, 4: result := nValor;
                    end;
                end
            else
                begin
                    if nAliqICMS < 0 then
                        nAliqICMS := DMProjeto.nICMSInterno;
                    case StrToInt(Direita(sCST, 1)) of
                        0: result := nAliqICMS / 100;
                        1, 6: result := 0;
                        2, 7: result := (nAliqICMS *
                                (1 - nReducao / 100)) / 100;
                        3, 4: result := 0;
                    end;
                end;
        end;
end;

function TDMProjeto.CSTReducao(sCST: string): boolean;
begin
    if (copy(sCST, 2, 1) = '2') or (copy(sCST, 2, 1) = '7') then
        result := true
    else
        result := false;
end;

function TDMProjeto.CSTIsentas(sCST: string): boolean;
begin
    if (copy(sCST, 2, 1) = '3') or (copy(sCST, 2, 1) = '4') then
        result := true
    else
        result := false;
end;

function TDMProjeto.CSTSubstTrib(sCST: string): boolean;
begin
    if (copy(sCST, 2, 1) = '1') or (copy(sCST, 2, 1) = '6') then
        result := true
    else
        result := false;
end;

function TDMProjeto.AliquotaEstado(sUF: string): single;
begin
    q_sql.Close;
    q_sql.sql.text := 'select icms_interno from ufs where uf = :uf';
    q_sql.params[0].asstring := sUF;
    q_sql.open;
    result := q_sql.fieldbyname('icms_interno').asfloat;
    q_sql.close;
end;

function TDMProjeto.AliqISS;
begin
    q_sql.Close;
    q_sql.sql.text := 'select isslocal from ufs where uf = :uf';
    q_sql.params[0].asstring := sUF;
    q_sql.open;
    result := q_sql.fieldbyname('isslocal').asfloat;
end;

function TDMProjeto.AliquotaEstadoExterno(sUF: string): single;
begin
    q_sql.Close;
    q_sql.sql.text := 'select icms_externo from ufs where uf = :uf';
    q_sql.params[0].asstring := sUF;
    q_sql.open;
    result := q_sql.fieldbyname('icms_externo').asfloat;
end;

function TDMProjeto.GetPDVMaq: integer;
var nNROECF: Integer;
begin
    try
        try
            //      q_sql.Close;
            //      q_sql.sql.text := 'select NumeroECF from pdvs where maquina = :maquina';
            //      q_sql.params[0].asstring := maquina;
            //      q_sql.open;
            //      if (q_sql.RecordCount > 0) Then
            //        nNROECF := q_sql.fieldbyname('NumeroECF').asinteger
            //      Else
            nNROECF := 0;
        except
            nNROECF := 0;
        end;
    finally
        result := nNROECF;
    end;
end;

procedure TDMProjeto.ConfiguraECF;
var Habilita: Integer;
begin
    {Eliminação do DMECF.}
    //    DMProjeto.Q_Sql.Close;
    //    DMProjeto.Q_Sql.Sql.Clear;
    //    DMProjeto.Q_Sql.Sql.Add('select * from pdvs where maquina = ''' + DMProjeto.Maquina + '''');
    //    DMProjeto.Q_Sql.Open;
    //    if DMProjeto.Q_Sql.RecordCount > 0 then begin
    //        if DMProjeto.Q_Sql.FieldByName('Ativo').AsString = 'S' then Begin
    //            DMProjeto.bECFAtivo := True;
    //            bBematech25:= False;
    //            case DMProjeto.Q_Sql.FieldByName('ECF').AsInteger of
    //                0:
    //                    begin
    //                        DMProjeto.bECFAtivo := False;
    //                        DMECF.ECF1.Modelo := Nenhuma;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 0;
    //                    end;
    //                1:
    //                    begin
    //                        DMECF.ECF1.Modelo := Bematech;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 1;
    //                    end;
    //                2:
    //                    begin
    //                        DMECF.ECF1.Modelo := Corisco;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 2;
    //                    end;
    //                3:
    //                    begin
    //                        DMECF.ECF1.Modelo := Schalter;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 3;
    //                    end;
    //                4:
    //                    begin
    //                        DMECF.ECF1.Modelo := Urano;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 4;
    //                    end;
    //                5:
    //                    begin // AFRAC - Schalter
    //                        DMECF.ECF1.Modelo := Afrac;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 5;
    //                    end;
    //                6:
    //                    begin // AFRAC - Sweda
    //                        DMECF.ECF1.Modelo := Afrac;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 5;
    //                    end;
    //                7:
    //                    begin // AFRAC - Dataregis
    //                        DMECF.ECF1.Modelo := Afrac;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 5;
    //                    end;
    //                8:
    //                    begin
    //                        DMECF.ECF1.Modelo := Elgin;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 6;
    //                    end;
    //                9:
    //                    begin
    //                        DMECF.ECF1.Modelo := Sweda;
    //                        DMECF.ECF1.Sweda9000 := False;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                        nModeloECF := 7;
    //                    end;
    //                10:
    //                    begin
    //                       DMECF.ECF1.Modelo := Daruma;
    //                       DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                       nModeloECF := 8;
    //                    end;
    //                11:
    //                    begin
    //                        DMECF.ECF1.Modelo := Sweda;
    //                        DMECF.ECF1.Sweda9000 := True;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                        nModeloECF := 7;
    //                    end;
    //                12:
    //                    begin
    //                        DMECF.ECF1.Modelo := Bematech;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_Sql.FieldByName('PORTA').AsString;
    //                        nModeloECF := 1;
    //                        DMECF.ECF1.Bematech25  := True;
    //                        bBematech25:= True;
    //                    end;
    //                13:
    //                    begin
    //                        DMECF.ECF1.Modelo := Sweda100;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                        nModeloECF := 10;
    //                    end;
    //                14:
    //                    begin
    //                        DMECF.ECF1.Modelo := Quattro;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                        nModeloECF := 11;
    //                    end;
    //
    //                15:
    //                    begin
    //                        DMECF.ECF1.Modelo := ElginMFD;
    //                        DMECF.ECF1.Porta := DMProjeto.Q_SQL.FieldByName('PORTA').AsString;
    //                        nModeloECF := 12;
    //                    end;
    //            end;
    //        end else Begin
    //            DMProjeto.bECFAtivo := False;
    //            DMECF.ECF1.Modelo := Nenhuma;
    //            DMECF.ECF1.Porta := 'COM1';
    //            nModeloECF := 0;
    //        End;
    //    end;
    //
    ////  DMECF.ECF1.AtivoScan := (DMProjeto.Q_Sql.FieldByName('AtivoScan').AsString = 'S');
    ////  If DMProjeto.Q_SQL.FieldByName('PORTAScan').IsNull Then
    ////     DMECF.ECF1.PortaScan := 0
    ////  Else
    ////     DMECF.ECF1.PortaScan := StrToInt(Copy(DMProjeto.Q_SQL.FieldByName('PORTAScan').AsString,4,1));
    ////  Habilita:=1;
    ////  If DMECF.ECF1.AtivoScan Then
    ////    If SW_FechaPortaScanner Then
    ////      If SW_AbrePortaScanner(DMECF.ECF1.PortaScan) Then
    ////        SW_HabilitaScanner(Habilita)
    ////      Else
    ////         Application.MessageBox('Ocorreu Falha na Conecção do Leitor de Código de Barras','Aviso',mb_ok);
    //
end;

procedure TDMProjeto.C_LocalizarFavCPF_CNPJGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
begin
    inherited;
    Text := MascaraCPFCNPJ(Sender.AsString);
end;

procedure TDMProjeto.ImprimirRecibo(ID: integer; sWhere: string = ''; slParametros: string = ''; sParamConsulta: string = ''; sHaving: string = '');
begin
    DlgCampos := TDlgCampos.Create(Self);
    DlgCampos.Imprimir(id, sWhere, slParametros, sParamConsulta, sHaving);
    DlgCampos.Free;
end;

procedure TDMProjeto.VerRecebimentos(Titulo: integer; Saida: integer; sFavorecido: string);
begin
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'VERPAG', '', False, 'Favorecido:' + sFavorecido) then
        Exit;

    if (Titulo > 0) then
        DMProjeto.SetParametrosForm([Titulo, Saida, sFavorecido])
    else
        DMProjeto.SetParametrosForm([null, Saida, sFavorecido]);

    DlgRecebido := TDlgRecebido.Create(self);
    DlgRecebido.ShowModal;
    DlgRecebido.Release;
    DlgRecebido := nil;
    DMProjeto.LimparParametrosForm;
end;

procedure TDMProjeto.VerPagamentos(Duplicata: integer; Entrada: integer; sFavorecido: string);
begin
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'VERPAG', '', False, 'Favorecido:' + sFavorecido) then
        exit;
    DMProjeto.SetParametrosForm([Duplicata, Entrada, sFavorecido]);
    DlgPagamentos := TDlgPagamentos.Create(self);
    DlgPagamentos.ShowModal;
    DlgPagamentos.Release;
    DlgPagamentos := nil;
    DMProjeto.LimparParametrosForm;
end;

procedure TDMProjeto.ImprimirDocumentosSaida(Saida: integer; Empresa: integer; PDV: integer; bOpcoesImpressao: boolean = false);
var CB_OpcoesImpressao, CB_NotaFiscal, CB_Documento,
    CB_Carne, CB_Recibo, CB_Duplicata, CB_Boleto, CB_FichaCliente,
        CB_DUPLICATA_IMP: string;
    TipoNotaFiscal, TipoImpressaoOperacao, Enviar: string;
    Favorecido, Template, TemplateNotaFiscal, TipoMovimento: integer;
    nValor: Currency;
    bGrava, bProxVez: boolean;
    i, k, w, h, r, top, count, countpages, ifont, imprimirNovamente: integer;
    coeff: Currency;
    diretorioImagens: string;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'select t.CB_NOTAFISCAL, t.CB_IMPDOC, t.CB_OPCOESIMPRESSAO, ' +
                't.CB_FICHACLIENTE, t.CB_CARNE, t.CB_RECIBO, t.CB_DUPLICATA, t.CB_BOLETO, ' +
                't.TEMPLATE, t.TEMPLATENOTAFISCAL, t.TIPOIMPRESSAO_OP, ' +
                't.CB_TOPRINTER, t.TIPONOTAFISCAL, t.CB_FICHACLIENTE, t.TIPOMOVIMENTO, ' +
                's.FAVORECIDO, t.CB_DUPLICATA_IMPRESSA ' +
                'from saidas s, tiposmovimento t ' +
                'where s.saida = :saida and s.tipomovimento = t.tipomovimento ';
            parambyname('Saida').AsInteger := Saida;
            open;
            CB_OpcoesImpressao := FieldByName('cb_opcoesimpressao').AsString;
            CB_NotaFiscal := FieldByName('cb_notafiscal').AsString;
            CB_Documento := FieldByName('cb_impdoc').AsString;
            CB_Carne := FieldByName('cb_carne').AsString;
            CB_Recibo := FieldByName('cb_recibo').AsString;
            CB_Duplicata := FieldByName('cb_duplicata').AsString;
            CB_Duplicata_Imp := FieldByName('cb_duplicata_impressa').AsString;
            CB_Boleto := FieldByName('cb_boleto').AsString;
            CB_FichaCliente := FieldByName('cb_fichacliente').AsString;
            Template := FieldByName('template').AsInteger;
            TemplateNotaFiscal := FieldByName('templatenotafiscal').AsInteger;
            TipoImpressaoOperacao := FieldByName('tipoimpressao_op').AsString;
            TipoNotaFiscal := FieldByName('tiponotafiscal').AsString;
            Enviar := FieldByName('cb_toprinter').AsString;
            TipoMovimento := FieldByName('tipomovimento').AsInteger;
            Favorecido := FieldByName('favorecido').AsInteger;
            close;
        end;
    if bOpcoesImpressao or (CB_OpcoesImpressao = 'S') then
        begin
            DlgImpressaoDoc := TDlgImpressaoDoc.Create(self);
            with DlgImpressaoDoc do
                begin
                    ckbNotaFiscal.Checked := CB_NotaFiscal = 'S';
                    ckbDocumento.Checked := CB_Documento = 'S';
                    ckbCarne.Checked := CB_Carne = 'S';
                    ckbRecibo.Checked := CB_Recibo = 'S';
                    ckbDuplicata.Checked := CB_Duplicata = 'S';
                    ckbBoleto.Checked := CB_Boleto = 'S';
                    ckbFichaCliente.Checked := CB_FichaCliente = 'S';
                    cmbTipoNotaFiscal.Text := TipoNotaFiscal;
                    cmbTipoDoc.LookUpKeyValue := TipoImpressaoOperacao;
                    cmbTemplate.LookUpKeyValue := Template;
                    cmbTemplateNF.LookUpKeyValue := TemplateNotaFiscal;
                    cmbEnviarPara.Text := Enviar;
                    if ShowModal = mrOk then
                        begin
                            CB_FichaCliente := iif(ckbFichaCliente.Checked, 'S', 'N');
                            CB_Recibo := iif(ckbRecibo.Checked, 'S', 'N');
                            CB_NotaFiscal := iif(ckbNotaFiscal.Checked, 'S', 'N');
                            CB_Documento := iif(ckbDocumento.Checked, 'S', 'N');
                            CB_Carne := iif(ckbCarne.Checked, 'S', 'N');
                            CB_Recibo := iif(ckbRecibo.Checked, 'S', 'N');
                            CB_Duplicata := iif(ckbDuplicata.Checked, 'S', 'N');
                            CB_Boleto := iif(ckbBoleto.Checked, 'S', 'N');
                            CB_FichaCliente := iif(ckbFichaCliente.Checked, 'S', 'N');
                            TipoNotaFiscal := cmbTipoNotaFiscal.Text;
                            TipoImpressaoOperacao := cmbTipoDoc.LookUpKeyValue;
                            Template := cmbTemplate.LookUpKeyValue;
                            TemplateNotaFiscal := cmbTemplateNF.LookUpKeyValue;
                            Enviar := cmbEnviarPara.Text;
                            bGrava := ckbPadrao.Checked;
                            bProxVez := ckbProximaVez.Checked;
                        end
                    else
                        begin
                            Free;
                            Exit;
                        end;
                    Free;
                end;
        end;

    if (CB_Documento = 'S') or (CB_NotaFiscal = 'S') then
        begin
            RptInvoices := TRptInvoices.Create(self);

            imprimirNovamente := mrYes;

            while (imprimirNovamente = mrYes) do
                begin

                    if bOpcoesImpressao or (CB_OpcoesImpressao = 'S') then
                        RptInvoices.ImprimeMovimento(Saida, Empresa, PDV, 'CB_Documento=' + CB_Documento + ';' +
                            'CB_NotaFiscal=' + CB_NotaFiscal + ';' +
                            'TipoNotaFiscal=' + TipoNotaFiscal + ';' +
                            'TipoImpressaoOperacao=' + TipoImpressaoOperacao + ';' +
                            'Template=' + IntToStr(Template) + ';' +
                            'TemplateNotaFiscal=' + IntToStr(TemplateNotaFiscal) + ';' +
                            'Enviar=' + Enviar)
                    else
                        RptInvoices.ImprimeMovimento(Saida, Empresa, PDV);

                    imprimirNovamente := MessageDlg('Deseja imprimir novamente?', mtConfirmation, [mbYes, mbNo], 0);

                end;

            RptInvoices.Release;
            RptInvoices := nil;
        end;

    if (CB_Carne = 'S') then
        begin
            RptDocCobranca := TRptDocCobranca.Create(self);
            RptDocCobranca.Imprimir(Saida, Enviar, CB_Carne, 'N', 'N');
            RptDocCobranca.Release;
            RptDocCobranca := nil;
        end;
    if (CB_Duplicata = 'S') then
        begin
            RptDocCobranca := TRptDocCobranca.Create(self);
            RptDocCobranca.Imprimir(Saida, Enviar, 'N', 'N', CB_Duplicata);
            RptDocCobranca.Release;
            RptDocCobranca := nil;
        end;
    if (CB_Boleto = 'S') then
        begin
            RptDocCobranca := TRptDocCobranca.Create(self);
            RptDocCobranca.Imprimir(Saida, Enviar, 'N', CB_Boleto, 'N');
            RptDocCobranca.Release;
            RptDocCobranca := nil;
        end;

    //    If (CB_Duplicata_Imp = 'S') Then Begin
    //        RptDocCobranca := TRptDocCobranca.Create(self);
    //        RptDocCobranca.Imprimir(Saida, Enviar, CB_Carne, CB_Boleto, CB_Duplicata);
    //        RptDocCobranca.Release;
    //        RptDocCobranca := nil;
    //    end;

    if CB_FICHACLIENTE = 'S' then
        begin
            DMProjeto.SetParametrosForm([Favorecido, 'P']);
            DMProjeto.CriarForm('DlgFichaFavorecido', self, true);
        end;

    if CB_Recibo = 'S' then
        begin
            nValor := 0;
            DlgParcelas := TDlgParcelas.Create(self);
            DlgParcelas.Saida := Saida;
            if DlgParcelas.ShowModal = mrOk then
                nValor := DlgParcelas.Total;
            if nValor > 0 then
                ImprimirRecibo(23, '', '<Valor>=' + formatfloat('#,###,##0.00', nValor) + ';' + '<Extenso>=' + Util2.Extenso(nValor), ':Saida=' + IntToStr(Saida));
            DlgParcelas.Free;
        end;
    if bGrava then
        begin
            with Q_SQL do
                begin
                    Close;
                    Sql.text := 'Update TiposMovimento t ' +
                        'set ' +
                        't.CB_NOTAFISCAL = ''' + CB_NotaFiscal + ''', ' +
                        't.CB_IMPDOC = ''' + CB_Documento + ''', ' +
                        't.CB_OPCOESIMPRESSAO = ''' + iif(not bProxVez, 'S', 'N') + ''', ' +
                        't.CB_FICHACLIENTE = ''' + CB_FichaCliente + ''', ' +
                        't.CB_CARNE = ''' + CB_Carne + ''', ' +
                        't.CB_RECIBO = ''' + CB_Recibo + ''', ' +
                        't.CB_BOLETO = ''' + CB_Boleto + ''', ' +
                        't.CB_DUPLICATA = ''' + CB_Duplicata + ''', ' +
                        't.TEMPLATE = ' + IntToStr(Template) + ', ' +
                        't.TEMPLATENOTAFISCAL = ' + IntToStr(TemplateNotaFiscal) + ', ' +
                        't.TIPOIMPRESSAO_OP = ''' + TipoImpressaoOperacao + ''', ' +
                        't.CB_TOPRINTER = ''' + Enviar + ''', ' +
                        't.TIPONOTAFISCAL = ''' + TipoNotaFiscal + ''' ' +
                        'where tipomovimento = ' + IntToStr(TipoMovimento);
                    ExecSQL;
                end;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end
    else if bProxVez then
        begin
            with Q_SQL do
                begin
                    Close;
                    Sql.text := 'update tiposmovimento t ' +
                        'set t.CB_OPCOESIMPRESSAO = ''' + iif(not bProxVez, 'S', 'N') + ''' ' +
                        'where tipomovimento = ' + IntToStr(TipoMovimento);
                    ExecSQL;
                end;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;
end;

function TDMProjeto.GerarSaida(EstFisico: Boolean; var Numero: string;
    Favorecido: integer;
    sUF: string;
    dData: TDateTime;
    Vendedor: integer;
    TipoMovimento: integer;
    Itens: string;
    Caixa: integer = 1;
    Desconto: Currency = 0;
    Obs: string = '';
    nIDSaida: integer = 0;
    bPermitirGravarSemReceber: Boolean = False;
    nFormaPgto: Integer = 1): integer;

var IdSaida, SaidaItem, Qtde, i, TipoPadrao, TabelaPadrao, Item, TipoITem, TabelaPReco,
    Conta_Venda, idTribFederal, almoxpadrao: integer;
    Total, Imposto, TotalItens, TotalItens123, TotalProdutos, BaseCalcICMS, ValorICMS,
        ValorIPI, BaseCalcSubst, ValorICMSSubst, ValorIsentas, DescontoItens, BaseCalcICMSProd,
        ValorICMSProd, ValorIPIProd, BaseCalcSubstProd, ValorICMSSubstProd, ValorIsentasProd,
        Quantidade, Preco, ReducaoCST, AliqICMS, IPI, CustoMedio, CustoContabil,
        TVA, Fator, DescontoMaximo, DescontoMaximoGrupo, MaxDesconto, ReducoesBase, Volumes,
        ValorOutrasICMS, RateioDesconto: currency;
    sItem, BaixaEstoque, BaixaEstoqueFiscal, Sigla, sComissao, sCFOP, sPossuiICMS, sPossuiISS, sPossuiIPI,
        sSERIE, sModeloDOC, Descricao, Unidade, SituacaoECF, CST, sN, sUFDestino, comando, GeraFinanceiro, sErro: string;
begin
    {Eliminação do DMECF.}
    try
        Imposto := 0;
        TotalItens := 0;
        TotalItens123 := 0;
        TotalProdutos := 0;
        BaseCalcICMS := 0;
        ValorICMS := 0;
        ValorIPI := 0;
        BaseCalcSubst := 0;
        ValorICMSSubst := 0;
        ValorIsentas := 0;
        DescontoItens := 0;
        ReducoesBase := 0;
        Volumes := 0;
        ValorOutrasICMS := 0;
        Qtde := ContaStrings(Itens, '||');
        { Dados do Tipo de Movimento }
        with Q_SQL do
            begin
                Close;
                SQL.Text := ' select baixaestoque, baixaestoqueFiscal, tipopadrao, tabelapadrao, siglainicial, calccomissao, ' +
                    ' cfopassociado, possuiicms, possuiiss, possuiipi, serie, modelodoc, gerafinanceiro, almoxpadrao ' +
                    ' from tiposmovimento ' +
                    ' where tipomovimento = :TipoMovimento';
                ParamByName('TipoMovimento').Asinteger := TipoMovimento;
                Open;
                BaixaEstoque := FieldByName('baixaestoque').AsString;
                if EstFisico then
                    BaixaEstoqueFiscal := FieldByName('baixaestoqueFiscal').AsString
                else
                    BaixaEstoqueFiscal := 'N';
                TipoPadrao := FieldByName('tipopadrao').AsInteger;
                TabelaPadrao := FieldByName('tabelapadrao').AsInteger;
                Sigla := FieldByName('siglainicial').AsString;
                sComissao := FieldByName('calccomissao').AsString;
                sCFOP := FieldByName('cfopassociado').AsString;
                sPossuiICMS := FieldByName('possuiicms').AsString;
                sPossuiISS := FieldByName('possuiiss').AsString;
                sPossuiIPI := FieldByName('possuiipi').AsString;
                sSERIE := FieldByName('serie').AsString;
                sModeloDOC := FieldByName('modelodoc').AsString;
                GeraFinanceiro := FieldByName('gerafinanceiro').AsString;
                almoxpadrao := FieldByName('almoxpadrao').AsInteger;
                Close;
            end;

        if (Numero = '') then
            Numero := CExp(Sigla, '-') + AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + IntToStr(TipoMovimento))), '0', 7 - Length(Sigla));

        if (Favorecido > 1) and (sUF <> DMProjeto.sUFEmpresa) and (sUF <> '') then
            begin
                sN := '6';
                sUFDestino := sUF;
            end
        else
            begin
                sN := '5';
                sUFDestino := DMProjeto.sUFEmpresa;
            end;

        {Varrendo os Itens para Calcular os Totais}
        for i := 1 to Qtde do
            begin
                sItem := SeparaStrings(Itens, '||', i);
                Item := StrToIntDef(SeparaStrings(sItem, ';', 1), 0);
                Quantidade := StrToFloatDef(SeparaStrings(sItem, ';', 3), 0);
                Preco := StrToFloatDef(SeparaStrings(sItem, ';', 4), 0);
                TipoItem := StrToIntDef(SeparaStrings(sItem, ';', 6), 0);
                SituacaoECF := SeparaStrings(sItem, ';', 8);
                ReducaoCST := StrToFloatDef(SeparaStrings(sItem, ';', 9), 0);
                AliqICMS := StrToFloatDef(SeparaStrings(sItem, ';', 10), 0);
                IPI := StrToFloatDef(SeparaStrings(sItem, ';', 11), 0);
                TVA := StrToFloatDef(SeparaStrings(sItem, ';', 15), 0);

                // Zerando os totalizadores dos produtos
                BaseCalcICMSProd := 0;
                ValorICMSProd := 0;
                ValorIPIProd := 0;
                BaseCalcSubstProd := 0;
                ValorICMSSubstProd := 0;
                ValorIsentasProd := 0;

                if Frac(Quantidade) > 0 then
                    Volumes := Volumes + 1
                else
                    Volumes := Volumes + Quantidade;

                TotalItens := TotalItens + (Preco * Quantidade);

                if (TipoItem in [1, 2, 3]) then
                    TotalItens123 := TotalItens123 + (Preco * Quantidade);

                if (TipoItem = 1) then
                    TotalProdutos := TotalProdutos + (Preco * Quantidade);

                if SituacaoECF = 'T' then
                    begin
                        if ReducaoCST > 0 then
                            BaseCalcICMSProd := (Preco * Quantidade) - Truncar((((Preco * Quantidade) * ReducaoCST) / 100), 2)
                        else
                            BaseCalcICMSProd := (Preco * Quantidade);

                        ValorICMSProd := truncar((BaseCalcICMSProd * AliqICMS) / 100, 2);
                        if (TVA > 0) then
                            begin
                                BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                                ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                            end;
                    end
                else if SituacaoECF = 'F' then
                    begin
                        if (TVA > 0) then
                            begin
                                BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                                ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                            end;
                    end
                else if (SituacaoECF = 'I') then
                    ValorIsentasProd := (Preco * Quantidade);

                ValorOutrasICMS := ValorOutrasICMS + truncar((truncar((Preco * Quantidade), 3) - truncar(BaseCalcICMSProd, 3)), 2);

                if sPossuiIPI = 'S' then
                    begin
                        if IPI > 0 then
                            ValorIPIProd := truncar(((Preco * Quantidade) * IPI) / 100, 2);
                    end;

                // Totalizações
                BaseCalcICMS := BaseCalcICMS + BaseCalcICMSProd;
                ValorICMS := ValorICMS + ValorICMSProd;
                ValorIPI := ValorIPI + ValorIPIProd;
                BaseCalcSubst := BaseCalcSubst + BaseCalcSubstProd;
                ValorICMSSubst := ValorICMSSubst + ValorICMSSubstProd;
                ValorIsentas := ValorIsentas + ValorIsentasProd;

                if (TipoItem = 6) and (Preco > 0) then
                    DescontoItens := DescontoItens + Preco;

            end; // end do for

        if Desconto < 0 then // o desconto é negativo
            Imposto := RoundTo(Imposto + ((Desconto / TotalItens) * Imposto), -2);
        if Pos(DecimalSeparator, FloatToStr(TotalItens)) > 0 then
            TotalItens := StrToFloat(Copy(FloatToStr(TotalItens), 1, Pos(DecimalSeparator, FloatToStr(TotalItens)) + 2)); //RoundTo(TotalItens, -2);
        BaseCalcICMS := RoundTo(BaseCalcICMS, -2);
        ValorICMS := RoundTo(ValorICMS, -2);
        ValorIPI := RoundTo(ValorIPI, -2);
        BaseCalcSubst := RoundTo(BaseCalcSubst, -2);
        ValorICMSSubst := RoundTo(ValorICMSSubst, -2);
        ValorIsentas := RoundTo(ValorIsentas, -2);
        if TotalItens123 > 0 then
            ReducoesBase := BaseCalcICMS * (Abs(Desconto) / TotalItens123);

        Total := TotalItens + Desconto; // o desconto é negativo

        {Gravando do registro mestre da Saída (Venda)}
        // Controle de exceções e commit feito na chamada....
        //try
        if nIDSaida = 0 then
            //          with Q_SQL do begin
            //              close;
            //              SQL.clear;
            //              SQL.Text := 'SELECT NumeroECF FROM PDVs WHERE PDV = ' + IntToStr(nPDV);
            //              Open;
            //              IDSaida := StrToInt( Copy('000000', 1, 7 - Length(IntToStr(DMProjeto.NextIDGlobal)))
            //                                   + IntToStr(DMProjeto.NextIDGlobal));
            //              Q_SQL.Close;
            //          end
            IDSaida := DMProjeto.NextIDGlobal
        else
            IDSaida := nIDSaida;

        //with Q_SQL do begin
        with Q_GerarSaida do
            begin
                Close;
                SQL.Text := 'insert into Saidas (Saida, Numero, Data, Favorecido, Obs, Vendedor, ' +
                    'Desconto, PlanoPagamento, Total, Situacao, TipoMovimento, TipoPadrao, ' +
                    'BaixaEstoque, baixaestoqueFiscal, CalcComissao, POssuiEntrega, Validade, ' +
                    'Caixa, TabelaPadrao, TotalItens, TotalItens123, CFOPNota, ' +
                    'SerieNota, BaseCalcICMS, ValorICMS, ValorISS, BaseCalcSubst, ValorIPI, ' +
                    'ValorICMSSubst, AliqICMSVenda, ValorIsentas, TotalServicos, ' +
                    'PossuiICMS, PossuiIPI, PossuiISS, Modelo, PDV, SeEstoque, TipoImpressao, ' +
                    'LicitacaoICMS, TotalProdutos, ValorIPIItens, BaseCalcICMSItens, ' +
                    'ValorICMSItens, BaseCalcSubstItens, BaseImposto, BaseIncluso, ReducoesBase,' +
                    'Volumes, UFDestino, TipoFrete, ValorOutrasICMS, NUMEROECF, NUMEROSERIEECF, CCF, CRZ, empresa,MD5 ) ' +
                    'values ' +
                    '(:Saida, :Numero, :Data, :Favorecido, :Obs, :vendedor, ' +
                    ':Desconto, :PlanoPagamento, :Total, ''N'', :TipoMovimento, :TipoPadrao, ' +
                    ':BaixaEstoque, :BaixaestoqueFiscal, :CalcComissao, ''N'', :Validade, ' +
                    ':Caixa, :TabelaPadrao, :TotalItens, :TotalItens123, :CFOPNota, ' +
                    ':SerieNota, :BaseCalcICMS, :ValorICMS, :ValorISS, :BaseCalcSubst, :ValorIPI, ' +
                    ':ValorICMSSubst, :AliqICMSVenda, :ValorIsentas, :TotalServicos, ' +
                    ':PossuiICMS, :PossuiIPI, :PossuiISS, :Modelo, :PDV, ''N'', ''P'', ' +
                    ':LicitacaoICMS, :TotalProdutos, :ValorIPIItens, :BaseCalcICMSItens, ' +
                    ':ValorICMSItens, :BaseCalcSubstItens, :BaseImposto, :BaseIncluso, :ReducoesBase, ' +
                    ':Volumes, :UFDestino, :TipoFrete, :ValorOutrasICMS, :NUMEROECF, :NUMEROSERIEECF, :CCF, :CRZ, :empresa,:MD5 )';
                ParamByName('saida').AsInteger := IDSaida;
                ParamByName('numero').AsString := Numero;
                ParamByName('data').AsDateTime := dData;
                ParamByName('favorecido').AsInteger := Favorecido;
                ParamByName('obs').AsString := Obs;
                ParamByName('vendedor').AsInteger := Vendedor;
                ParamByName('desconto').AsCurrency := desconto; // o desconto já deve ser passado negativo
                ParamByName('planopagamento').AsInteger := iif(DMProjeto.C_LocalizarFav.FieldByName('PLANOPAGAMENTO').isNull, 0, DMProjeto.C_LocalizarFav.FieldByName('PLANOPAGAMENTO').Value);
                ParamByName('total').AsCurrency := Total;
                ParamByName('tipomovimento').AsInteger := TipoMovimento;
                ParamByName('tipopadrao').AsInteger := TipoPadrao;
                ParamByName('baixaestoque').AsString := BaixaEstoque;
                ParamByName('baixaestoqueFiscal').AsString := BaixaEstoqueFiscal;
                ParamByName('CalcComissao').AsString := sComissao;
                ParamByName('validade').AsDateTime := dDataSistema;
                ParamByName('caixa').AsInteger := Caixa;
                ParamByName('tabelapadrao').AsInteger := TabelaPadrao;
                ParamByName('totalitens').AsCurrency := TotalItens;
                ParamByName('totalitens123').AsCurrency := TotalItens123;
                ParamByName('cfopnota').AsString := sN + direita(sCFOP, 3);
                ParamByName('serienota').AsString := sSERIE;
                ParamByName('BaseCalcICMS').AsCurrency := BaseCalcICMS;
                ParamByName('valoricms').AsCurrency := ValorICMS;
                ParamByName('valoriss').AsCurrency := 0;
                ParamByName('basecalcsubst').AsCurrency := BaseCalcSubst;
                ParamByName('valoripi').AsCurrency := ValorIPI;
                ParamByName('valoricmssubst').AsCurrency := ValorICMSSubst;
                ParamByName('AliqICMSVenda').AsCurrency := DMProjeto.nICMSInterno;
                ParamByName('ValorIsentas').AsCurrency := ValorIsentas;
                ParamByName('TotalServicos').AsCurrency := 0;
                ParamByName('PossuiICMS').AsString := sPossuiICMS;
                ParamByName('PossuiIPI').AsString := sPossuiIPI;
                ParamByName('PossuiISS').AsString := sPossuiISS;
                ParamBYName('Modelo').ASString := sModeloDOC;
                ParamByName('PDV').AsInteger := StrToInt(iif(PAFObrigatorio, DMProjeto.PAFCampos.NroECF, 0));
                ParamByName('LicitacaoICMS').AsCurrency := DMProjeto.nICMSInterno;
                ParamByName('TotalPRodutos').AsCurrency := TotalProdutos;
                ParamByName('ValorIPIItens').ASCurrency := ValorIPI;
                ParamByName('BaseCalcICMSItens').AsCurrency := BaseCalcICMS;
                ParamByName('ValorICMSITens').AsCurrency := ValorICMS;
                ParamByName('BaseCalcSubstItens').ASCurrency := BaseCalcSubst;
                ParamByName('BaseImposto').AsCurrency := ValorIPI + ValorICMSSubst;
                ParamByName('BaseIncluso').AsCurrency := DMProjeto.nISS;
                ParamByName('ReducoesBase').AsCurrency := ReducoesBase;
                ParamByName('Volumes').AsCurrency := Volumes;
                ParamByName('UFDestino').AsString := sUFDestino;
                if (PAFObrigatorio) then
                    begin
                        ParamByName('NUMEROECF').AsString := PAFCampos.NroECF;
                        ParamByName('NUMEROSERIEECF').AsString := PAFCampos.NroFabricacao_ECF;
                        //ParamByName('CCF').AsString := SoNumeros( IntToStr(StrToInt(DMECF.ECF1.GetNumero_CCF()) + 1),6) ;
                        ParamByName('CRZ').AsString := PAFCampos.ProximaZ;
                    end
                else
                    begin
                        ParamByName('NUMEROECF').AsString := '01';
                        ParamByName('NUMEROSERIEECF').AsString := '000';
                        ParamByName('CCF').AsString := '0000';
                        ParamByName('CRZ').AsString := '0000';
                    end;
                if DMProjeto.Parametro('TipoFrete') <> '' then
                    begin
                        ParamByName('TipoFrete').AsString := DMProjeto.Parametro('TipoFrete');
                        //comando := comando + ', ' + ToSQL(DMProjeto.Parametro('TipoFrete')) + ', 0';
                    end
                else
                    begin
                        ParamByName('TipoFrete').AsString := 'C';
                        ParamByName('ValorOutrasICMS').AsCurrency := ValorOutrasICMS;
                        // comando := comando + ', ' + ToSQL('C') + ', ' + ToSQL(ValorOutrasICMS) + '); ';
                    end;
                ParamByName('Empresa').Value := DMProjeto.nEmpresaLogada;
                nTentativas := 0;
                bGravouSaida := False;
                repeat
                    try
                        C_GerarSaida.FetchParams;
                        C_GerarSaida.Execute;
                        C_GerarSaida.Close;
                        //paulo verificar                AtualizarMD5Saidas(IntToStr(IDSaida));
                        nTentativas := 3;
                        bGravouSaida := True;
                    except
                        on e: Exception do
                            begin
                                sErroSaida := e.message;
                                Inc(nTentativas);
                                Sleep(20);
                            end;
                        on e: EIBError do
                            sErroSaida := sErroSaida + #13 + ' Base: ' + e.message;
                    end;
                until nTentativas = 3;
                if not (bGravouSaida) then
                    DlgMsg.ShowMsg(50, [pChar(sErroSaida)])

            end;

        {Varrendo os itens para registrar SaídasItens}
        for i := 1 to Qtde do
            begin
                sItem := SeparaStrings(Itens, '||', i);
                Item := StrToIntDef(SeparaStrings(sItem, ';', 1), 0);
                Descricao := SeparaStrings(sItem, ';', 2);
                Quantidade := StrToFloatDef(SeparaStrings(sItem, ';', 3), 0);
                Preco := StrToFloatDef(SeparaStrings(sItem, ';', 4), 0);
                Unidade := SeparaStrings(sItem, ';', 5);
                TipoItem := StrToIntDef(SeparaStrings(sItem, ';', 6), 0);
                TabelaPreco := StrToIntDef(SeparaStrings(sItem, ';', 7), 0);
                SituacaoECF := SeparaStrings(sItem, ';', 8);
                ReducaoCST := StrToFloatDef(SeparaStrings(sItem, ';', 9), 0);
                AliqICMS := StrToFloatDef(SeparaStrings(sItem, ';', 10), 0);
                IPI := StrToFloatDef(SeparaStrings(sItem, ';', 11), 0);
                CustoMedio := StrToFloatDef(SeparaStrings(sItem, ';', 12), 0);
                CustoContabil := StrToFloatDef(SeparaStrings(sItem, ';', 13), 0);
                CST := SeparaStrings(sItem, ';', 14);
                TVA := StrToFloatDef(SeparaStrings(sItem, ';', 15), 0);
                conta_venda := StrToIntDef(SeparaStrings(sItem, ';', 16), 0);
                fator := StrToFloatDef(SeparaStrings(sItem, ';', 17), 0);
                idTribFederal := StrToInt(SeparaStrings(sItem, ';', 18));
                DescontoMaximo := 0;
                DescontoMaximoGrupo := 0;
                if (Item = 0) or (Quantidade = 0) then
                    begin
                        ShowMessage('Item ou Quantidade ou Preço não definido.');
                    end;
                // Zerando os totalizadores dos produtos
                BaseCalcICMSProd := 0;
                ValorICMSProd := 0;
                ValorIPIProd := 0;
                BaseCalcSubstProd := 0;
                ValorICMSSubstProd := 0;
                ValorIsentasProd := 0;
                if SituacaoECF = 'T' then
                    begin
                        if ReducaoCST > 0 then
                            BaseCalcICMSProd := (Preco * Quantidade) - Truncar((((Preco * Quantidade) * ReducaoCST) / 100), 2)
                        else
                            BaseCalcICMSProd := (Preco * Quantidade);

                        ValorICMSProd := truncar((BaseCalcICMSProd * AliqICMS) / 100, 2);
                        if (TVA > 0) then
                            begin
                                BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                                ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                            end;
                    end
                else if SituacaoECF = 'F' then
                    begin
                        if (TVA > 0) then
                            begin
                                BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                                ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                            end;
                    end
                else if (SituacaoECF = 'I') then
                    ValorIsentasProd := (Preco * Quantidade);
                if sPossuiIPI = 'S' then
                    begin
                        if IPI > 0 then
                            ValorIPIProd := truncar(((Preco * Quantidade) * IPI) / 100, 2);
                    end;
                {Gravando o Item}
                SaidaItem := DMProjeto.NextIDGlobal;
                if (TipoItem in [1, 2, 3]) then
                    begin
                        if (DescontoMaximo > 0) then
                            MaxDesconto := DescontoMaximo / 100
                        else if (DescontoMaximoGrupo > 0) then
                            MaxDesconto := DescontoMaximoGrupo / 100
                        else
                            MaxDesconto := 0;
                    end
                else
                    MaxDesconto := 0;

                if (Desconto < 0) then
                    RateioDesconto := (Desconto * (Preco * Quantidade)) / TotalItens;

                if (Conta_Venda <= 0) then
                    begin
                        with Q_SQL do
                            begin
                                Close;
                                Sql.Text := 'select conta from contaspadrao where id = 8';
                                Open;
                                Conta_Venda := FieldByName('conta').AsInteger;
                                Close;
                            end;
                    end;
                with Q_GerarSaida do
                    begin
                        Close;
                        SQL.Clear;
                        SQL.Text := 'INSERT INTO SAIDASITENS ' +
                            '( saidaitem, saida, sequencia, item, descricao, ' +
                            'quantidade, preco, contavenda, tabelapreco, precotabela, ' +
                            'subtotalitem, ordem, customedio, custocontabil, haschildren, maxdesconto, ' +
                            'status, unidade, fator, n_usotipoitem, desconto, promocao, ' +
                            'precosempromocao, baixaestoque, baixaestoqueFiscal, almoxarifado, ordemmontagem, ' +
                            'basecalcicmsprod, ipi, aliqicms, cst, reducaocst, situacaoecf, ' +
                            'cfopnota, basecalcsubstprod, valoripiprod, tva, valoricmsprod, ' +
                            'valorisentasprod, valoricmssubstprod, rateiodesconto, cfopcst, idtribfederal, pdv, importacao, empresa,situacao ) ' +
                            'values ' +
                            '( :saidaitem, :saida, :sequencia, :item, :descricao, ' +
                            ':quantidade, :preco, :contavenda, :tabelapreco, :precotabela, ' +
                            ':subtotalitem, :ordem, :customedio, :custocontabil, :haschildren, :maxdesconto, ' +
                            ':status, :unidade, :fator, :n_usotipoitem, :desconto, :promocao, ' +
                            ':precosempromocao, :baixaestoque, :baixaestoqueFiscal, :almoxarifado, :ordemmontagem, ' +
                            ':basecalcicmsprod, :ipi, :aliqicms, :cst, :reducaocst, :situacaoecf, ' +
                            ':cfopnota, :basecalcsubstprod, :valoripiprod, :tva, :valoricmsprod, ' +
                            ':valorisentasprod, :valoricmssubstprod, :rateiodesconto, :cfopcst, :idtribfederal, :pdv, 0, :empresa,:situacao ) ';
                        ParamByName('SaidaItem').AsInteger := SaidaItem;
                        ParamByName('Saida').AsInteger := IDSaida;
                        ParamByName('Sequencia').AsInteger := i;
                        ParamByName('item').AsInteger := item;
                        ParamByName('descricao').AsString := Descricao;
                        ParamByName('quantidade').AsCurrency := quantidade;
                        ParamByName('preco').AsCurrency := preco;
                        ParamByName('contavenda').AsInteger := conta_venda;
                        ParamByName('tabelapreco').AsInteger := TabelaPreco;
                        ParamByName('precotabela').AsCurrency := preco;
                        ParamByName('subtotalitem').AsCurrency := quantidade * preco;
                        ParamByName('ordem').AsInteger := i;
                        ParamByName('customedio').AsCurrency := customedio;
                        ParamByName('custocontabil').AsCurrency := custocontabil;
                        ParamByName('haschildren').AsString := 'N';
                        ParamByName('MaxDesconto').AsCurrency := MaxDesconto;
                        ParamByName('status').AsString := 'E';
                        ParamByName('unidade').AsString := Unidade;
                        ParamByName('fator').AsCurrency := Fator;
                        ParamByName('n_usotipoitem').AsCurrency := 0;
                        ParamByName('desconto').AsCurrency := 0;
                        ParamByName('promocao').AsString := 'N';
                        ParamByName('precosempromocao').AsCurrency := 0;
                        ParamByName('baixaestoque').AsString := baixaestoque;
                        ParamByName('BaixaestoqueFiscal').AsString := baixaestoqueFiscal;
                        ParamByName('almoxarifado').AsInteger := almoxpadrao;
                        ParambyName('ordemmontagem').AsString := 'N';
                        ParamByName('basecalcicmsprod').AsCurrency := BaseCalcICMSProd;
                        ParamByName('IPI').AsCurrency := IPI;
                        ParambyName('AliqICMS').AsCurrency := AliqICMS;
                        ParambyName('CST').ASString := CST;
                        ParambyName('reducaocst').AsCurrency := reducaocst;
                        ParamByName('situacaoecf').AsString := SituacaoECF;
                        ParambyName('CFOPNota').AsString := sN + direita(sCFOP, 3);
                        ParambyName('basecalcsubstprod').ASCurrency := basecalcsubstprod;
                        ParamByName('valoripiprod').AsCurrency := valoripiprod;
                        ParamByName('tva').AsCurrency := iif(tva < 0, 0, tva);
                        ParamByName('valoricmsprod').AsCurrency := valoricmsprod;
                        ParamByName('valorisentasprod').AsCurrency := valorisentasprod;
                        ParamByName('valoricmssubstprod').AsCurrency := valoricmssubstprod;
                        ParamByName('rateiodesconto').AsCurrency := RateioDesconto;
                        ParamByName('cfopcst').AsString := sN + direita(sCFOP, 3);
                        ParamByName('idTribFederal').AsInteger := idTribFederal;
                        ParamByName('PDV').AsInteger := StrToInt(iif(DMPRojeto.PAFObrigatorio, DMProjeto.PAFCampos.NroECF, 0));
                        ParamByName('Empresa').Value := DMProjeto.nEmpresaLogada;
                        ParambyName('situacao').AsString := 'N';
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                C_GerarSaida.FetchParams;
                                C_GerarSaida.Execute;
                                C_GerarSaida.Close;
                                nTentativas := 3;
                                //paulo verificar                    AtualizarMD5SaidasItem(IntToStr(IDSaida));

                                bGravouSaida := True;
                            except
                                on E: EIBError do
                                    begin
                                        Inc(nTentativas);
                                        Sleep(200);

                                        sErro := e.message;
                                    end;
                            end;

                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + sErro + ' ' + IntToStr(SaidaItem))]);
                    end;
            end; // end do segundo for
        //      GeraArquivoSaida( ExtractFilePath(Application.ExeName) + 'OutIn\' + IntToStr(nPDV) + '-' + IntToStr(IDSaida) + '.pdv', comando);

        if (Vendedor <> 0) and (sComissao = 'S') then
            CalcularComissao(IntToStr(IDSaida));

        {Gerando Parcela a Receber}
        if (GeraFinanceiro = 'S') and ((TipoMovimento in [1, 7, 23]) or (TipoMovimento = 700)) then
            begin
                Conta_A_Receber(1, // Parcela
                    Total, // ValorAReceber
                    dData + iif(nFormaPgto = 0, 30 + DMProjeto.C_LocalizarFav.FieldByName('ADDDIASPRAZO').AsInteger, 0),
                    dData,
                    Obs,
                    Favorecido,
                    IDSaida,
                    Numero,
                    34,
                    IDSaida,
                    0, //Status
                    0,
                    iif(DMProjeto.C_LocalizarFav.FieldByName('TIPOCOBRANCA').IsNull, 0, DMProjeto.C_LocalizarFav.FieldByName('TIPOCOBRANCA').AsString)
                    );
            end;
        result := IDSaida;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, e.Message, '');
            end;
    end;
end;

function TDMProjeto.Conta_A_Receber;
var Titulo, comando, sJuros: string;
    ID, TipoCobranca: integer;
    DtAtraso: TDateTime;
    JurosParametrizado: currency;
begin

    try
        TipoCobranca := StrToInt(Caminho);
    except
        TipoCobranca := 0;
    end;

    if Parcela = 0 then
        Parcela := 1;
    ID := DMProjeto.NextIDGlobal;
    DtAtraso := DMProjeto.PrimeiroDiaUtil(Vencimento, false, true);
    if DMProjeto.Parametro('Juros') <> '' then
        begin
            sJuros := replace(DMProjeto.Parametro('Juros'), ',', decimalseparator);
            sJuros := replace(sJuros, '.', decimalseparator);
            JurosParametrizado := StrToFloat(sJuros);
        end
    else
        JurosParametrizado := 0;

    if (NotaFiscal <> '') and (Copy(NotaFiscal, 1, 1) <> 'R') then
        Titulo := Adicionarstr(NotaFiscal, '0', 6) + '-' + IntToStr(Parcela)
    else if (Copy(NotaFiscal, 1, 1) = 'R') then
        Titulo := 'REP' + formatdatetime('mmyy', Competencia) + '-' + IntToStr(Parcela)
    else
        Titulo := '';

    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Insert into TitulosAReceber ' +
                '     (ID, Parcela, Valor, Vencimento, Competencia, ValorPago, DataPago, ' +
                '      OBS, Cliente, ' +
                '      Status, NotaFiscal, Titulo, DataAtrasado, Usuario, Venda, ' +
                '      ValorDescAntecipado, PercentualMulta, JurosPlano, ' +
                '      Descontos, JurosRecebidos, ValorJurosMora, ValorMulta, ' +
                '      CreditoUtilizado, CreditoGerado, Origem_AReceber, IDGerador_AReceber, ' +
                '      PercentualMora, TIPOCOBRANCA, pdv, importacao, empresa ) ' +
                'Values ' +
                '     (:ID, :Parc, :Valor, :Venc, :Comp, 0, null, :OBS, :Cliente,  ' +
                '      :Status, :NFiscal, :Tit, :DtAtras, :FuncLogin, :Venda, ' +
                '      0, 0, 0, 0, 0, 0, 0, 0, 0, :Origem_AReceber, :IDGerador_AReceber, ' +
                '      :Juros, :TIPOCOBRANCA, :pdv, 0 , :empresa) ';
            Params[0].asInteger := ID;
            Params[1].asInteger := Parcela;
            Params[2].AsCurrency := ValorAReceber;
            Params[3].asDateTime := Vencimento;
            Params[4].asDateTime := Competencia;
            Params[5].asString := OBS;
            Params[6].asInteger := Cliente;
            Params[15].AsCurrency := JurosParametrizado;
            Params[16].asInteger := TipoCobranca;
            Params[17].asInteger := DMProjeto.nPDV;
            Params[18].asInteger := DMProjeto.nEmpresaLogada;

            //        comando := #13 + #10 + 'INSERT INTO TITULOSARECEBER ' +
            //            '(ID, Parcela, Valor, Vencimento, Competencia, ValorPago, DataPago, ' +
            //            'OBS, Cliente, Status, NotaFiscal, Titulo, DataAtrasado, Usuario, Venda, ' +
            //            'ValorDescAntecipado, PercentualMulta, PercentualMora, JurosPlano, ' +
            //            'Descontos, JurosRecebidos, ValorJurosMora, ValorMulta, CreditoUtilizado, ' +
            //            'CreditoGerado, Origem_AReceber, IDGerador_AReceber) ' +
            //            'VALUES(' + ToSQL(ID) + ',' + ToSQL(Parcela) + ',' + ToSQL(ValorAReceber) + ',' +
            //            ToSQL(Vencimento) + ',' + ToSQL(Competencia) + ', 0 , null,' + ToSQL(OBS) + ',' +
            //            ToSQL(Cliente);

            if (Status = 0) then
                begin
                    Params[7].asInteger := SetStatus(Vencimento);
                    //            comando := comando + ',' + ToSQL(SetStatus(Vencimento))
                end
            else
                begin
                    Params[7].asInteger := Status;
                    //            comando := comando + ',' + ToSQL(Status)
                end;

            Params[8].asString := NotaFiscal;

            if Copy(Titulo, 1, 4) = 'COO:' then
                Titulo := 'C:' + copy(Sonumeros(Titulo, 0), 1, 8);

            Params[9].asString := Titulo;
            Params[10].asDateTime := DtAtraso;
            Params[11].asInteger := DMProjeto.nFuncionario;
            Params[12].asInteger := Venda;
            Params[13].asInteger := nIDOrigemAReceber;
            Params[14].asInteger := nIDGeradorAReceber;

            ExecSQL;

            //        if (caminho <> '') then
            //        begin
            //            comando := comando + ', ' + ToSQL(NotaFiscal) + ', ' + ToSQL(Titulo) + ', ' +
            //                       ToSQL(DtAtraso) + ', ' + ToSQL(DMProjeto.nFuncionario) + ', ' +
            //                       ToSQL(Venda) + ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,' +
            //                       ToSQL(nIDOrigemAReceber) + ', ' + ToSQL(nIDGeradorAReceber) + '); ';
            //            GeraArquivoSaida(caminho, comando);
            //        end;

            if nContaReceita > 0 then
                begin
                    ContabContasOperacao(nContaReceita, ValorAReceber, ID, 0);

                    DMProjeto.Contabiliza(30, Competencia, ID, Cliente, DMProjeto.ContaPadrao(9),
                        nContaReceita, ValorAReceber, NotaFiscal, '');
                end;

            Result := ID;
        end;
end;

function TDMProjeto.ContabContasOperacao;
begin
    Q_Contabil.close;
    Q_Contabil.SQL.text := 'insert into contasoperacao(conta,valor,idgerador,origem) ' +
        'values (:conta,:valor,:idgerador,:origem)';
    Q_Contabil.params[0].asinteger := nConta;
    Q_Contabil.params[1].ascurrency := nValor;
    Q_Contabil.params[2].asinteger := nID;
    Q_Contabil.params[3].asinteger := nOrigem;
    Q_Contabil.ExecSQL;
end;

function TDMProjeto.SetStatus;
begin
    if Trunc(Vencimento) > Trunc(DMProjeto.dDataSistema) then
        result := 1
    else if Trunc(Vencimento) = Trunc(DMProjeto.dDataSistema) then
        result := 2
    else
        result := 3;
end;

//Autor: Michel Lucio de Assis
//Descr: Cria um arquivo texto no local especificado por camindo, com
//       o conteudo de comando. Se o arquivo já existir ele apenas adiciona
//       os dados no final do mesmo.

procedure TDMProjeto.GeraArquivoSaida(caminho, comando: string);
var ArquivoSaida: TextFile;
begin
    AssignFile(ArquivoSaida, caminho);

    if not FileExists(caminho) then
        Rewrite(ArquivoSaida);

    Reset(ArquivoSaida);
    Append(ArquivoSaida);
    Writeln(ArquivoSaida, comando);
    Flush(ArquivoSaida);
    CloseFile(ArquivoSaida);
end;

//Autor: Michel Lucio de Assis
//Descr: Lê um arquivo texto no local especificado por camindo, colocando
//       o conteudo do arquivo na variavel caminho

procedure LeArquivo(caminho: string; var conteudo: string);
var ArquivoEntrada: TextFile;
    temp: string;
begin
    AssignFile(ArquivoEntrada, caminho);
    Reset(ArquivoEntrada);

    while not EOF(ArquivoEntrada) do
        begin
            Readln(ArquivoEntrada, temp);
            conteudo := conteudo + temp;
        end;

    CloseFile(ArquivoEntrada)
end;

//Autor: Michel Lucio de Assis
//Descr: Converte qualquer valor passado para um string no padrão SQL

function TDMProjeto.ToSQL(const v: variant): string;
var sDecimalSeparador: Char;
begin
    sDecimalSeparador := SysUtils.DecimalSeparator;
    case TVarData(v).vType of
        varByte, varSmallInt, varInteger: result := IntToStr(v);
        varSingle, varDouble, varCurrency, varVariant:
            begin
                SysUtils.DecimalSeparator := '.';
                result := CurrToStrF(v, ffFixed, 2);
                SysUtils.DecimalSeparator := sDecimalSeparador;
            end;
        varDate:
            begin
                if YearOf(v) < 1900 then //se for apenas tempo
                    result := '''' + TimeToStr(v) + ''''
                else
                    begin
                        ShortDateFormat := 'mm/dd/yyyy';
                        result := '''' + DateTimeToStr(v) + '''';
                        ShortDateFormat := 'd/m/yyyy';
                    end;
            end;
        varString: result := '''' + V + '''';
    else
        result := 'Null';
    end;
end;

//Autor: Michel Lucio de Assis
//Descr: Retorna o conteudo da propriedade SQL de DataSet Query

function TDMProjeto.GetSQL(origem: TIBQuery): string;
var i: integer;
    comando: string;
begin
    with origem do
        begin
            comando := SQL.Text;

            for i := 0 to params.count - 1 do
                begin
                    comando := replace(comando, ':' + params[i].Name, ToSQL(params[i].Value));
                end;
        end;

    result := Trim(comando) + ';';
end;

//Autor: Michel Lucio de Assis
//Descr: Exporta os comandos representando as ações executadas no servidor,
//       para serem capturados pelos PDV's.

procedure TDMProjeto.Exportar(destino: string);
var tabelas: array[0..5] of string;
    chaves: array[0..5] of string;
    i, j: Integer;
    comando, campos, valores, cmdUpdate, caminho: string;
    QueryAuxiliar: TIBQuery;
begin
    tabelas[0] := 'TabelasPreco';
    tabelas[1] := 'ProdutosPreco';
    tabelas[2] := 'Favorecidos';
    tabelas[3] := 'ItensUnidades';
    tabelas[4] := 'Itens';
    tabelas[5] := 'ListaNegra';

    chaves[0] := 'TabelaPreco';
    chaves[1] := 'ProdutoPreco';
    chaves[2] := 'Favorecido';
    chaves[3] := 'ItemUnidade';
    chaves[4] := 'Item';
    chaves[5] := 'Identificacao';

    QueryAuxiliar := TIBQuery.Create(self);
    QueryAuxiliar.Database := DMProjeto.DB_Projeto;

    for j := 0 to 5 do
        begin
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'SELECT * FROM ' + tabelas[j] + ' WHERE exportacao is not Null';
                    Open;
                    First;

                    while not EOF do
                        begin
                            if FieldByName('exportacao').Value = 'I' then
                                begin
                                    for i := 0 to FieldCount - 1 do
                                        begin
                                            if Fields[i].FieldName <> 'exportacao' then
                                                begin
                                                    campos := campos + ',' + Fields[i].FieldName;
                                                    valores := valores + ',' + DMProjeto.ToSQL(Fields[i].Value);
                                                end;
                                        end;

                                    comando := 'INSERT INTO ' + tabelas[j] + '(' + Copy(campos, 2, Length(campos)) + ') ' +
                                        'VALUES (' + Copy(valores, 2, Length(campos)) + ')' + #13 + comando;
                                end
                            else if FieldByName('exportacao').Value = 'U' then
                                begin
                                    for i := 0 to FieldCount - 1 do
                                        begin
                                            if Fields[i].FieldName <> 'exportacao' then
                                                campos := campos + ', ' + Fields[i].FieldName + ' = ' + DMProjeto.ToSQL(Fields[i].Value);
                                        end;

                                    comando := 'UPDATE ' + tabelas[j] + ' SET ' + Copy(campos, 2, Length(campos)) +
                                        ' WHERE ' + chaves[j] + ' = ' + DMProjeto.ToSQL(FieldByName(chaves[j]).Value) +
                                        #13 + comando;
                                end
                            else if FieldByName('exportacao').Value = 'D' then
                                begin
                                    comando := 'DELETE FROM ' + tabelas[j] +
                                        ' WHERE ' + chaves[j] + ' = ' + DMProjeto.ToSQL(FieldByName(chaves[j]).Value) +
                                        #13 + comando;
                                end;

                            QueryAuxiliar.Close;
                            QueryAuxiliar.SQL.Clear;
                            QueryAuxiliar.SQL.Text := 'UPDATE ' + tabelas[j] + ' SET exportacao = Null WHERE ' +
                                chaves[j] + ' = ' + DMProjeto.ToSQL(FieldByName(chaves[j]).Value) + ';';
                            QueryAuxiliar.ExecSQL;

                            campos := '';
                            valores := '';
                            Next;
                        end;
                end;
        end;

    if comando <> '' then
        begin
            with QueryAuxiliar do
                begin
                    Close;
                    SQL.Clear;
                    SQL.Text := 'SELECT MAX(EXPORTACAO)+1 AS PROXIMO FROM EXPORTACOES';
                    Open;

                    caminho := destino + '\' + FieldByName('PROXIMO').AsString + '-' + FormatDateTime('yyyymmddhhmm', Now) + '.ret';

                    Close;
                    SQL.Clear;
                    SQL.Text := 'INSERT INTO EXPORTACOES (CAMINHOARQ, DATAHORA) ' +
                        'VALUES (' + DMProjeto.ToSQL(caminho) + ', ' + DMProjeto.ToSQL(Now) + ');';
                    ExecSQL;

                    GeraArquivoSaida(caminho, comando);
                end;
        end;

    Q_SQL.Close;
    QueryAuxiliar.Free;
end;
(*(Michel) Função sem uso. Marcada para exclusão. Foi substituida por BacthQuery
procedure TDMProjeto.Importar(ArquivoOrigem: string);
var comando: string;
    tempSQL: TIBSQL;
begin
    tempSQL := TIBSQL.Create(self);
    tempSQL.Database := DMProjeto.DB_Projeto;

    LeArquivo(ArquivoOrigem, comando);

    with tempSQL do
    begin
        Close;
        SQL.Clear;
        SQL.Text := comando;
        ExecQuery;
    end;

    tempSQL.Free;
end;*)

procedure TDMProjeto.BatchQuery(caminho: string);
var lista: TStringList;
    i: integer;
begin
    try
        try
            lista := TStringList.Create;
            lista.LoadFromFile(caminho);

            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

            for i := 0 to lista.Count - 1 do
                begin
                    if Trim(lista[i]) <> '' then
                        begin
                            with Q_SQL do
                                begin
                                    Close;
                                    SQL.Clear;
                                    SQL.Text := Trim(lista[i]);
                                    ExecSQL;
                                end;
                        end;
                end;

            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        except on E: Exception do
                Application.MessageBox(pchar('Ocorreu um erro na execução do comando ' + #13 + E.Message), 'Aviso', mb_ok);
        end;
    finally
        Q_SQL.Close;
        lista.Free;
    end;
end;

procedure TDMProjeto.CopiaArquivos(origem, destino, ext: string; novaExt: string = '');
var SR: TSearchRec;
    I: integer;
begin
    if origem = destino then
        begin
            ShowMessage('Escolha um outro local para origem/destino');
            Exit;
        end;

    I := FindFirst(origem + '\*' + ext, faAnyFile, SR);

    while I = 0 do
        begin
            if (SR.Attr and faDirectory) <> faDirectory then
                begin
                    if CopyFile(PChar(Origem + '\' + SR.Name),
                        PChar(Destino + '\' + SR.Name), false) then
                        begin
                            if novaExt <> '' then
                                RenameFile(origem, ChangeFileExt(ExtractFileName(origem), novaExt))
                        end
                    else
                        ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
                end;

            I := FindNext(SR);
        end;
end;

function TDMProjeto.PrecoMultiUnidade(item, tabelapreco: integer; unidade: string; var MiniMo: currency; var PrecoCusto: currency): currency;
var nDescMax, nFatorVenda: currency;
begin
    Result := 0;
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select i.item, i.percentual, i.descontomaximo, i.fatorundvenda, p.preco, p.precopromocao, ' +
                //                'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
            'iu.percentual as percund,  COALESCE(IU.precomanual,0) * (1 + (Select (tp.PERCENTUAL/100) from TABELASPRECO tp where tp.TABELAPRECO = :tabelapreco)) as precomanund, iu.unidade, ' +
                'g.descontomaximo as descontomaximogrupo, ' +
                'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
                'iu.PercentualMinimo, i.Indexador ' +
                'from itens i ' +
                'left join Grupos g on g.Grupo = i.Grupo ' +
                'left join itensunidades iu on iu.item = i.item ' +
                'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade ' +
                'and p.tabelapreco = :tabelapreco ' +
                'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade ' +
                'and pr.tabelapreco = :tabelapreco ' +
                'where i.item = :item and iu.unidade = :unidade ';
            ParamByName('tabelapreco').AsInteger := TabelaPreco;
            ParamByName('item').AsInteger := Item;
            ParamByName('unidade').AsString := Unidade;
            Open;
            {Desc. Max. Produto}
            nDescMax := FieldByName('DescontoMaximo').asCurrency;

            {Desc. Max. Grupo}
            if nDescMax < 0 then
                nDescMax := FieldByName('DESCONTOMAXIMOGrupo').asCurrency;

            {Desc. Max. Vendedor}
            if nDescMax < 0 then
                nDescMax := nMaxDescontoFunc;

            nFatorVenda := IIF(FieldByName('FatorUndVenda').asFloat > 0, FieldByName('FatorUndVenda').asFloat, 1);

            // No caso da multiunidade, o preço de custo é o próprio preço...
            PrecoCusto := (FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * FieldByName('FatorItemUnd').AsCurrency;

            if FieldByName('PrecoManUnd').AsCurrency > 0 then
                begin
                    // Calculando primeiro o mínimo... **##**
                    Result := FieldByName('Preco').asCurrency;
                    if (FieldByName('Unidade').AsString <> FieldByName('UndVenda').AsString) then
                        Result := (FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * FieldByName('FatorItemUnd').AsCurrency;
                    if FieldByName('PercentualMinimo').AsCurrency > 0 then
                        Minimo := Result + (Result * FieldByName('PercentualMinimo').ASCurrency / 100);
                    // **##** Para então colocar o preço manual
                    Result := FieldByName('PrecoManUnd').AsCurrency;
                end
            else if FieldByName('PrecoPromocao').asCurrency > 0 then
                begin
                    Result := FieldByName('PrecoPromocao').asCurrency;
                    Minimo := Result;
                end
            else
                begin
                    if FieldByName('Percentual').asCurrency = 0 then
                        begin
                            Result := FieldByName('Preco').asCurrency;
                            if FieldByName('Unidade').AsString <> FieldByName('UndVenda').AsString then
                                Result := (FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * FieldByName('FatorItemUnd').AsCurrency;
                        end
                    else
                        Result := FieldByName('Percentual').asCurrency;

                    if (nDescMax > 0) and (FieldByName('Percentual').asCurrency = 0) then
                        Minimo := Result * (1 - (nDescMax / 100))
                    else
                        Minimo := 0;

                    if FieldByName('PercentualMinimo').AsCurrency > 0 then
                        Minimo := Result + (Result * FieldByName('PercentualMinimo').ASCurrency / 100);

                    if (FieldByName('PercUnd').ASCurrency > 0) then
                        begin
                            Result := Result + (Result * FieldByName('PercUnd').ASCurrency / 100);
                        end;

                end;
            Result := RoundTo(Result, -2);
            Minimo := RoundTo(Minimo, -2);
            // Adicionando as cotações dos indexadores mais atualizados...
            if FieldByName('Indexador').AsVariant <> null then
                begin
                    Q_SQL2.Close;
                    Q_SQL2.SQL.Text := 'select valor from cotacoes ' +
                        'where data = (select max(data) from cotacoes where indexador = :i) ' +
                        'and indexador = :i ';
                    Q_SQL2.ParamByName('i').AsInteger := FieldByName('Indexador').AsInteger;
                    Q_SQL2.Open;
                    if (Q_SQL2.RecordCount > 0) and (Q_SQL2.Fields[0].AsFloat > 0) then
                        begin
                            Result := RoundTo(Result / Q_SQL2.Fields[0].AsFloat, -2);
                            Minimo := RoundTo(Minimo / Q_SQL2.Fields[0].AsFloat, -2);
                        end;
                    Q_SQL2.Close;
                end;
            //
            Close;
        end;
end;

function TDMProjeto.ImprimirCupom(nSaida: integer; sCliente, sVendedor, sObs: string; nDesconto: currency): boolean;
var valores: array[0..7] of Currency;
    cupom: TStringList;
    cTotal: Currency;
    sCOO: string;
    imprimiu: boolean;
    tentativas: Integer;
begin
    Result := True;
    {Eliminação do DMECF.}
   //  C_Reimp.Close;
   //  Q_Reimp.SQL.Text := 'select si.saidaitem, i.codigo, si.descricao, ' +
   //                      'si.situacaoecf, si.reducaocst, si.aliqicms, ' +
   //                      'si.quantidade, si.preco , si.Unidade ' +
   //                      'from saidasitens si ' +
   //                      'left join itens i on i.item = si.item ' +
   //                      'where si.saida = ' + IntToStr(nSaida);
   //  C_Reimp.Open;
   //  C_Reimp.First;
   //  if DMECF.ECF1.AbreCupom('') then begin
   //    cTotal:=0;
   //    while not C_Reimp.EOF do begin
   //        imprimiu:=False;
   //        tentativas:=1;
   //        Repeat
   //          Try
   //            imprimiu := DMECF.ECF1.VendeItem(C_ReimpCODIGO.AsString,
   //                                    RetiraAcentos(C_ReimpDESCRICAO.AsString),
   //                                    C_ReimpSITUACAOECF.AsString,
   //                                    iif((C_ReimpREDUCAOCST.Value > 0),FormatFloat('00.00',RoundTo((100-C_ReimpREDUCAOCST.Value)*C_ReimpALIQICMS.Value/100,-2)),
   //                                    FormatFloat('00.00',C_ReimpALIQICMS.Value)),
   //                                    'F',
   //                                    FormatFloat('0.000',C_ReimpQUANTIDADE.Value),
   //                                    DMProjeto.nCasasDecimais,
   //                                    FormatFloat(DMProjeto.sCasasDecimais,C_ReimpPRECO.Value),
   //                                    '$',
   //                                    '0000', Copy(C_ReimpUnidade.AsString,1,2));
   //            if imprimiu Then
   //              tentativas := 6
   //            Else Begin
   //              inc(tentativas);
   //              Sleep(10);
   //            End;
   //          Except
   //          End;
   //        Until (tentativas > 5);
   //        //Sleep(1000); //Tentar eliminar o problema da velocidade de impressão;
   //        if not (imprimiu) Then Begin
   //          DlgMsg.ShowMsg(50,['Erro Ao Tentar Registrar o Item na Impressora Fiscal:'+#13+
   //                             'Verifique as Informações do Item a seguir'+#13+
   //                             'Item: '+RetiraAcentos(C_ReimpDESCRICAO.AsString)+#13+
   //                             'Situação ECF:'+C_ReimpSITUACAOECF.AsString+#13+
   //                             'Aliquota ICMS:'+C_ReimpALIQICMS.AsString]);
   //        End;
   //        cTotal:=cTotal+  (C_ReimpPRECO.Value *  C_ReimpQUANTIDADE.Value);
   //        C_Reimp.Next;
   //
   //    end; // end do while
   //    C_Reimp.Close;
   //    C_Pgtos.Close;
   //    Q_Pgtos.SQL.Text := 'select fp.especie, sum(dd.valor) as valor ' +
   //                        'from saidas s ' +
   //                        'left join titulosareceber tr on tr.venda = s.saida ' +
   //                        'left join depositostitulos dt on dt.titulo = tr.id ' +
   //                        'left join depositos d on d.deposito = dt.deposito ' +
   //                        'left join depositosdoc dd on dd.deposito = d.deposito ' +
   //                        'left join formaspagamento fp on fp.formapagamento = dd.formapagamento ' +
   //                        'where s.saida = ' + IntToStr(nSaida) + ' ' +
   //                        'group by fp.especie ';
   //    C_Pgtos.Open;
   //    C_Pgtos.First;
   //    valores[0]:=0;valores[1]:=0;valores[2]:=0;valores[3]:=0;
   //    valores[4]:=0;valores[5]:=0;valores[6]:=0;valores[7]:=0;
   //    while not C_Pgtos.EOF do begin
   //      if C_PgtosESPECIE.Value = 5 then valores[0] := C_PgtosVALOR.Value;
   //      if C_PgtosESPECIE.Value = 1 then valores[1] := C_PgtosVALOR.Value;
   //      if C_PgtosESPECIE.Value = 2 then valores[2] := C_PgtosVALOR.Value;
   //      if C_PgtosESPECIE.Value = 3 then valores[3] := C_PgtosVALOR.Value;
   //      C_Pgtos.Next;
   //    end;
   //    Cupom := TStringList.Create;
   //    If valores[0]+valores[1]+valores[2]+valores[3]+valores[4]+valores[5]+valores[6]+valores[7] =0 Then
   //       valores[0]:= cTotal;
   //    if not DMECF.FechamentoCupomTEF(Cupom, valores, FormaPgto, nDesconto, sObs, sCliente, sVendedor, '', 0) then
   //      Result := False
   //    else begin
   //      sCOO := DMECF.ECF1.COO;
   //      with Q_SQL do begin
   //        Close;
   //        SQL.Text := 'update saidas set numero = :numero ' +
   //                    'where saida = :saida ';
   //        ParamByName('numero').AsString := 'COO:' + sCOO;
   //        ParamByName('saida').AsInteger := nSaida;
   //        ExecSQL;
   //        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   //          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
   //      end;
   //    end;
   //  end
   //  else begin
   //    Result := False;
   //  end;
end;

function TDMProjeto.GeraCodigoEquipamento;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
        begin
            xCasas := 6;
            while (direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaEquipamento(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := sCodigo + AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaEquipamento(nChave, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID('IDCODIGOEQUIPAMENTO', nIntervaloCodigo);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    result := xCodigo;
end;

function TDMProjeto.VerificaExistenciaEquipamento;
begin
    Q_ComandoSQL.close;
    if sTipo = 'C' then
        Q_ComandoSQL.SQL.text := 'select modelo from modelos where modelo <> :nMod and codigo = :codigo'
    else
        Q_ComandoSQL.SQL.text := 'select modelo from modelos where modelo <> :nMod and upper(descricao) = :descricao';
    Q_ComandoSQL.params[0].asinteger := nMod;
    Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
    Q_ComandoSQL.open;
    result := Q_ComandoSQL.FieldByName('modelo').asinteger <> 0;
end;

procedure TDMProjeto.C_LocalizarEquipCalcFields(DataSet: TDataSet);
begin
    inherited;
    DataSet.FieldByName('icChaveUnica').AsInteger := DataSet.FieldByName('Modelo').AsInteger;
end;

function TDMProjeto.ParametroTEF(sField: string): string;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select ' + sField + ' from pdvs where maquina = ''' + DMProjeto.Maquina + '''';
            Open;
            if (RecordCount > 0) then
                Result := Fields[0].AsString
            else
                Result := 'N';
            Close;
        end;
end;

procedure TDMProjeto.ExcluirSaida(nSaida: integer; sNum: string);

    function CancelarParcelas(nInvoice: integer; Motivo: string; var sTitulos: string): string; //Retorna o valor gerado de créditos;
    var sDepositos: string;
        x: Integer;
    begin
        with Q_SQL do
            begin
                {Parcelas afetadas}
                Close;
                SQL.Text := 'Select * from TitulosAReceber where Venda = :V and Status > 0 ';
                params[0].asInteger := nInvoice;
                Open;
                sTitulos := '';
                while not EOF do
                    begin
                        sTitulos := CExp(sTitulos, ',') + FieldByName('ID').asString;
                        Next;
                    end;
                Close;

                if sTitulos = '' then
                    begin
                        result := '';
                        exit;
                    end;

                {Depositos Afetados}
                Close;
                SQL.Text := 'Select * from DepositosTitulos where Titulo in (' + sTitulos + ') ';
                Open;
                sDepositos := '';
                while not EOF do
                    begin
                        sDepositos := CExp(sDepositos, ',') + FieldByName('Deposito').asString;
                        Next;
                    end;
                Close;

                for x := 1 to ContaStrings(sDepositos, ',') do
                    DMFinanceiro.ApagarDeposito(StrToIntDef(SeparaStrings(sDepositos, ',', x), 0), false, true);

                for x := 1 to ContaStrings(sTitulos, ',') do
                    begin
                        if not DMFinanceiro.CancelarTitulo(StrToIntDef(SeparaStrings(sTitulos, ',', x), 0), null, null, Motivo, false, false) then
                            raise Exception.Create('@@')
                        else
                            DMFinanceiro.CancelarLancamentos(SeparaStrings(sTitulos, ',', x));
                    end;

                result := sDepositos;
            end;
    end;

    function ExisteRecebimentos(nInvoice: integer): Boolean;
    begin
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select * from TitulosAReceber t INNER JOIN DepositosTitulos dt ON t.ID = dt.Titulo ' +
                    'where t.Venda = :V and t.Status > 0 ';
                Params[0].asInteger := nInvoice;
                Open;

                Last;

                result := RecordCount > 0;

                Close;
            end;
    end;
var
    sDepositosAfetados, sMotivo, xTitulos: string;
    j, nMsg: integer;
begin
    {Verificando se há recebimentos e notificando ao usuário este fato}
    if ExisteRecebimentos(nSaida) then
        begin
            if (DlgMsg.ShowMsg(2197) <> 100) then
                exit;
        end;

    sMotivo := '';
    while sMotivo = '' do
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    {Cancelando a Operação}
    try
        with Q_SQL do
            begin
                {Cancela, altera recebimentos e gera créditos (se preciso for)}
                sDepositosAfetados := CancelarParcelas(nSaida, 'Canc. Vendas #' + sNum + '; ' + sMotivo, xTitulos);

                {Cancelando a Operacao}
                Close;
                SQL.Text := 'Update Saidas set Situacao = ''C'' where Saida = :S';
                Params[0].asInteger := nSaida;
                ExecSQL;

                {Cancelando a Comissão: Apagando para que ao somar no payroll o valor seja deduzido}
                Close;
                SQL.Text := 'Delete from Comissoes where Venda = :V ';
                Params[0].asInteger := nSaida;
                ExecSQL;

            end;

        // Estorno dos Lancamentos Contabeis
        DMFinanceiro.CancelarLancamentos(IntToStr(nSaida));

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        DlgMsg.ShowMsg(50, ['Operação cancelada!']);

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DlgMsg.ShowMsg(2199, e.message, '');
            end;
    end;
end;

procedure TDMProjeto.GeraCabecalhoZR(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
var sLinha, sLadoEsquerdo, sLadoDireito: string;
    i: integer;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'select esquerdo, direito from cabecalho';
            open;
            sLadoEsquerdo := fields[0].asString;
            sLadoDireito := fields[1].asString;
        end;

    FormRichEdit := TFormRichEdit.Create(self);
    Interpreta(sLadoEsquerdo);
    Interpreta(sLadoDireito);
    sLadoEsquerdo := FormataCabecalho(FormRichEdit.RichEdit, sLadoEsquerdo);
    sLadoDireito := FormataCabecalho(FormRichEdit.RichEdit, sLadoDireito);
    FormRichEdit.Free;

    {Lado Esquerdo}
    zrNome.Caption := '';
    zrEnd.Caption := '';
    zrCid.Caption := '';
    zrFone.Caption := '';
    i := 1;
    while i <= ContaStrings(sLadoEsquerdo, ';') do
        begin
            sLinha := SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2);
            while (sLinha = SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2)) and
                (i <= ContaStrings(sLadoEsquerdo, ';')) do
                begin
                    if sLinha = '0' then
                        zrNome.Caption := zrNome.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
                    else if sLinha = '1' then
                        zrEnd.Caption := zrEnd.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
                    else if sLinha = '2' then
                        zrCid.Caption := zrCid.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
                    else if sLinha = '3' then
                        zrFone.Caption := zrFone.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
                    else
                        i := 1000;
                    inc(i);
                end;
        end;
    zrNome.BeforePrint := ZRLabelBeforePrint;
    zrEnd.BeforePrint := ZRLabelBeforePrint;
    zrCid.BeforePrint := ZRLabelBeforePrint;
    zrFone.BeforePrint := ZRLabelBeforePrint;

    {Lado Direito}
    if zrLin1 <> nil then
        begin
            zrLin1.Caption := '';
            zrLin2.Caption := '';
            zrLin3.Caption := '';
            zrLin4.Caption := '';
            i := 1;
            while i <= ContaStrings(sLadoDireito, ';') do
                begin
                    sLinha := SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2);
                    while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2)) and
                        (i <= ContaStrings(sLadoDireito, ';')) do
                        begin
                            if sLinha = '0' then
                                zrLin1.Caption := zrLin1.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                            else if sLinha = '1' then
                                zrLin2.Caption := zrLin2.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                            else if sLinha = '2' then
                                zrLin3.Caption := zrLin3.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                            else if sLinha = '3' then
                                zrLin4.Caption := zrLin4.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                            else
                                i := 1000;
                            inc(i);
                        end;
                end;
            zrLin1.BeforePrint := ZRLabelBeforePrint;
            zrLin2.BeforePrint := ZRLabelBeforePrint;
            zrLin3.BeforePrint := ZRLabelBeforePrint;
            zrLin4.BeforePrint := ZRLabelBeforePrint;
        end;
end;

procedure TDMProjeto.ZRLabelBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<NumeroPagina>', IntToStr(TZrLabel(Sender).Report.PageCount));
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<TotalPaginas>', IntToStr(TZrLabel(Sender).Report.PageCount));
end;

function TDMProjeto.GerarDevolucao(var Numero: string; Favorecido: integer; Vendedor: integer; Itens: string;
    Desconto: Currency): integer;
var TotalItens, TotalItens123, Quantidade, Preco, ReducaoCST, AliqICMS, IPI, TVA,
    Volumes, Total, BaseCalcICMS, BaseCalcICMSProd, ValorICMSProd, ValorIPIProd,
        BaseCalcSubstProd, ValorICMSSubstProd, ValorIsentasProd,
        ValorICMS, BaseCalcSubst, ValorICMSSubst, ValorIPI, ValorIsentas,
        ValorOutrasICMS, nProp, ReducoesBase, CustoMedio, CustoContabil, Fator,
        SemLucro, Lucro, AliqEstadoExterno: currency;
    i, Qtde, TipoPadrao, Item, TipoItem, AlmoxPadrao, nIDEntrada, TabelaPreco,
        Conta_Venda: integer;
    BaixaEstoque, baixaestoqueFiscal, StatusPadrao, StatusPadraoItens, IncluiDesconto, AtualizaCusto, AtualizaPreco,
        Serie, ModeloDoc, PossuiICMS, PossuiIPI, SiglaInicial, sCFOP,
        sItem, SituacaoECF, CalcComissao, UFOrigem, sN, sL, CFOPNota, CFOPEntrada,
        Fonte, Descricao, Unidade, CST: string;
begin
    TotalItens := 0;
    TotalItens123 := 0;
    Volumes := 0;
    BaseCalcICMS := 0;
    ValorICMS := 0;
    BaseCalcSubst := 0;
    ValorICMSSubst := 0;
    ValorIPI := 0;
    ValorIsentas := 0;
    ValorOutrasICMS := 0;

    Qtde := ContaStrings(Itens, '||');

    {Dados do Tipo de Movimento}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select baixaestoque, baixaestoqueFiscal, tipopadrao, statuspadrao, statuspadraoitens, incluidesconto, ' +
                'atualizacusto, atualizapreco, serie, modelodoc, possuiicms, possuiipi, ' +
                'siglainicial, cfopassociado, calccomissao, almoxpadrao ' +
                'from tiposmovimento ' +
                'where tipomovimento = 8 ';
            Open;
            BaixaEstoque := FieldByName('baixaestoque').AsString;
            BaixaEstoqueFiscal := FieldByName('baixaestoqueFiscal').AsString;
            TipoPadrao := FieldByName('tipopadrao').AsInteger;
            StatusPadrao := FieldByName('statuspadrao').AsString;
            StatusPadraoItens := FieldByName('statuspadraoitens').AsString;
            IncluiDesconto := FieldByName('incluidesconto').AsString;
            AtualizaCusto := FieldByName('atualizacusto').AsString;
            AtualizaPreco := FieldByName('atualizapreco').AsString;
            Serie := FieldByName('serie').AsString;
            ModeloDoc := FieldByName('modelodoc').AsString;
            PossuiICMS := FieldByName('possuiicms').AsString;
            PossuiIPI := FieldByName('possuiipi').AsString;
            SiglaInicial := FieldByName('siglainicial').AsString;
            sCFOP := FieldByName('cfopassociado').AsString;
            CalcComissao := FieldByName('calccomissao').AsString;
            AlmoxPadrao := StrToIntDef(FieldByName('almoxpadrao').AsString, 0);
            Close;
        end;

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select uf, fonte from favorecidos where favorecido = ' + IntToStr(Favorecido);
            Open;
            UFOrigem := FieldByName('uf').AsString;
            Fonte := FieldByName('fonte').AsString;
            Close;
        end;

    if UFOrigem <> DMProjeto.sUFEmpresa then
        begin
            sN := '6';
            sL := '2';
        end
    else
        begin
            sN := '5';
            sL := '1';
        end;
    CFOPNota := sN + Direita(sCFOP, 3);
    CFOPEntrada := sL + Direita(sCFOP, 3);

    if (Numero = '') then
        Numero := CExp(SiglaInicial, '-') + AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_8')), '0', 7 - Length(SiglaInicial));

    {Varrendo os itens para calcular os totais}
    for i := 1 to Qtde do
        begin
            sItem := SeparaStrings(Itens, '||', i);
            Item := StrToIntDef(SeparaStrings(sItem, ';', 1), 0);
            Quantidade := StrToFloatDef(SeparaStrings(sItem, ';', 3), 0);
            Preco := StrToFloatDef(SeparaStrings(sItem, ';', 4), 0);
            TipoItem := StrToIntDef(SeparaStrings(sItem, ';', 6), 0);
            SituacaoECF := SeparaStrings(sItem, ';', 8);
            ReducaoCST := StrToFloatDef(SeparaStrings(sItem, ';', 9), 0);
            AliqICMS := StrToFloatDef(SeparaStrings(sItem, ';', 10), 0);
            IPI := StrToFloatDef(SeparaStrings(sItem, ';', 11), 0);
            TVA := StrToFloatDef(SeparaStrings(sItem, ';', 15), 0);

            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'select semlucro, fatorlucro from itens where item = ' + IntToStr(Item);
                    Open;
                    SemLucro := FieldByName('semlucro').AsCurrency;
                    Lucro := FieldByName('fatorlucro').AsCurrency;
                    Close;
                end;

            // Zerando os totalizadores dos produtos
            BaseCalcICMSProd := 0;
            ValorICMSProd := 0;
            ValorIPIProd := 0;
            BaseCalcSubstProd := 0;
            ValorICMSSubstProd := 0;
            ValorIsentasProd := 0;

            if SituacaoECF = 'T' then
                begin
                    if ReducaoCST > 0 then
                        BaseCalcICMSProd := (Preco * Quantidade) - Truncar((((Preco * Quantidade) * ReducaoCST) / 100), 2)
                    else
                        BaseCalcICMSProd := (Preco * Quantidade);

                    ValorICMSProd := truncar((BaseCalcICMSProd * AliqICMS) / 100, 2);
                    if (TVA > 0) then
                        begin
                            BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                            ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                        end;
                end
            else if SituacaoECF = 'F' then
                begin
                    if (TVA > 0) then
                        begin
                            BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                            ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                        end;
                end
            else if (SituacaoECF = 'I') then
                ValorIsentasProd := (Preco * Quantidade);

            if (SituacaoECF <> 'I') then
                ValorOutrasICMS := ValorOutrasICMS + (Preco * Quantidade) - BaseCalcICMSProd;

            if PossuiIPI = 'S' then
                begin
                    if IPI > 0 then
                        ValorIPIProd := truncar(((Preco * Quantidade) * IPI) / 100, 2);
                    ValorIPI := ValorIPI + ValorIPIProd;
                end;

            if PossuiICMS = 'S' then
                begin
                    BaseCalcICMS := BaseCalcICMS + BaseCalcICMSProd;
                    ValorICMS := ValorICMS + ValorICMSProd;
                    BaseCalcSubst := BaseCalcSubst + BaseCalcSubstProd;
                    ValorICMSSubst := ValorICMSSubst + ValorICMSSubstProd;
                end;

            ValorIsentas := ValorIsentas + ValorIsentasProd;

            TotalItens := TotalItens + (Preco * Quantidade);

            if (TipoItem in [1, 2, 3]) then
                TotalItens123 := TotalItens123 + (Preco * Quantidade);

            if Frac(Quantidade) > 0 then
                Volumes := Volumes + 1
            else
                Volumes := Volumes + Quantidade;

        end;

    Total := TotalItens + Desconto; // o desconto é negativo

    nProp := 0;
    if TotalItens123 > 0 then
        begin
            nProp := ((Desconto) / TotalItens123);
            nProp := ABS(nProp);
        end;

    {Definindo ReducoesBase - Este campo serve para registrar as reduções externas à base de calculo normal dos Itens}
    ReducoesBase := (ValorIPI + ValorICMSSubst) * nProp;

    AliqEstadoExterno := AliquotaEstadoExterno(UFOrigem);

    nIDEntrada := DMProjeto.NextIDGlobal;

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'insert into entradas ( entrada, data, favorecido, percentualtax, desconto, ' +
                'frete, total, situacao, numero, tipomovimento, tipopadrao, baixaestoque, baixaestoqueFiscal, ' +
                'status, imposto, totalitens, outrasdespesas, juros, pjuros, calccomissao, ' +
                'possuientrega, totalitens123, descontoitens, incluidesconto, atualizacusto, ' +
                'atualizapreco, usuario, baseimposto, baseincluso, reducoesbase, volumes,  ' +
                'almoxpadrao, uforigem, cfopnota, cfopentrada, serienota, valorseguro, ' +
                'basecalcicms, valoricms, basecalcsubst, valoricmssubst, valoripi, pesobruto, ' +
                'pesoliquido, aliqicmscompra, freteincluso, valorisentas, modelo, valoroutrasicms, ' +
                'valorisentasipi, valoroutrasipi, possuiicms, possuiipi, datanota, freteexterno, ' +
                'fonte, vendedor ) ' +
                'values ' +
                '(:entrada, :data, :favorecido, 0, :desconto, 0, :total, ''N'', :numero, ' +
                '8, :tipopadrao, :baixaestoque, :baixaestoqueFiscal, :status, 0, :totalitens, 0, 0, 0, :calccomissao, ' +
                '''N'',:totalitens123,0,:incluidesconto,:atualizacusto,:atualizapreco,:usuario, ' +
                ':baseimposto, 0, :reducoesbase, :volumes, :almoxpadrao, :uforigem, ' +
                ':cfopnota, :cfopentrada, :serienota, 0, :basecalcicms, :valoricms, ' +
                ':basecalcsubst, :valoricmssubst, :valoripi, 0, 0, :aliqicmscompra, ' +
                ':freteincluso, :valorisentas, :modelo, :valoroutrasicms, 0, 0, ' +
                ':possuiicms, :possuiipi, :datanota, 0, :fonte, :vendedor ) ';
            ParamByName('entrada').AsInteger := nIDEntrada;
            ParamByName('data').AsDateTime := DMProjeto.dDataSistema;
            ParamByName('favorecido').AsInteger := Favorecido;
            ParamByName('desconto').AsCurrency := Desconto; // o desconto já deve ser passado negativo
            ParamByName('total').AsCurrency := Total;
            ParamByName('numero').AsString := Numero;
            ParamByName('tipopadrao').AsInteger := TipoPadrao;
            ParamByName('baixaestoque').AsString := BaixaEstoque;
            ParamByName('baixaestoqueFiscal').AsString := BaixaEstoqueFiscal;
            ParamByName('status').AsString := iif(Trim(StatusPadrao) <> '', StatusPadrao, 'D');
            ParamByName('totalitens').AsCurrency := TotalItens;
            ParamByName('calccomissao').AsString := CalcComissao;
            ParamByName('totalitens123').AsCurrency := TotalItens123;
            ParamByName('incluidesconto').AsString := IncluiDesconto;
            ParamByName('atualizacusto').AsString := AtualizaCusto;
            ParamByName('atualizapreco').AsString := AtualizaPreco;
            ParamByName('usuario').AsString := DMProjeto.sLoginName;
            ParamByName('baseimposto').AsCurrency := ValorIPI + ValorICMSSubst;
            ParamByName('reducoesbase').AsCurrency := ReducoesBase;
            ParamByName('volumes').AsCurrency := Volumes;
            ParamByName('almoxpadrao').AsInteger := AlmoxPadrao;
            ParamByName('uforigem').AsString := UFOrigem;
            ParamByName('cfopnota').AsString := CFOPNota;
            ParamByName('cfopentrada').AsString := CFOPEntrada;
            ParamByName('serienota').AsString := Serie;
            ParamByName('basecalcicms').AsCurrency := BaseCalcICMS;
            ParamByName('valoricms').AsCurrency := ValorICMS;
            ParamByName('basecalcsubst').AsCurrency := BaseCalcSubst;
            ParamByName('valoricmssubst').AsCurrency := ValorICMSSubst;
            ParamByName('valoripi').AsCurrency := ValorIPI;
            ParamByName('aliqicmscompra').AsCurrency := AliqEstadoExterno;
            ParamByName('freteincluso').AsString := 'N';
            ParamByName('valorisentas').AsCurrency := ValorIsentas;
            ParamByName('modelo').AsString := ModeloDoc;
            ParamByName('valoroutrasicms').AsCurrency := ValorOutrasICMS;
            ParamByName('possuiicms').AsString := PossuiICMS;
            ParamByName('possuiipi').AsString := PossuiIPI;
            ParamByName('datanota').AsDateTime := DMProjeto.dDataSistema;
            ParamByName('fonte').AsString := Fonte;
            ParamByName('vendedor').AsInteger := Vendedor;
            ExecSQL;
            Close;
        end;

    {Varrendo os itens para registrar EntradasItens}
    for i := 1 to Qtde do
        begin
            sItem := SeparaStrings(Itens, '||', i);
            Item := StrToIntDef(SeparaStrings(sItem, ';', 1), 0);
            Descricao := SeparaStrings(sItem, ';', 2);
            Quantidade := StrToFloatDef(SeparaStrings(sItem, ';', 3), 0);
            Preco := StrToFloatDef(SeparaStrings(sItem, ';', 4), 0);
            Unidade := SeparaStrings(sItem, ';', 5);
            TipoItem := StrToIntDef(SeparaStrings(sItem, ';', 6), 0);
            TabelaPreco := StrToIntDef(SeparaStrings(sItem, ';', 7), 0);
            SituacaoECF := SeparaStrings(sItem, ';', 8);
            ReducaoCST := StrToFloatDef(SeparaStrings(sItem, ';', 9), 0);
            AliqICMS := StrToFloatDef(SeparaStrings(sItem, ';', 10), 0);
            IPI := StrToFloatDef(SeparaStrings(sItem, ';', 11), 0);
            CustoMedio := StrToFloatDef(SeparaStrings(sItem, ';', 12), 0);
            CustoContabil := StrToFloatDef(SeparaStrings(sItem, ';', 13), 0);
            CST := SeparaStrings(sItem, ';', 14);
            TVA := StrToFloatDef(SeparaStrings(sItem, ';', 15), 0);
            conta_venda := StrToIntDef(SeparaStrings(sItem, ';', 16), 0);
            fator := StrToFloatDef(SeparaStrings(sItem, ';', 17), 0);

            // Zerando os totalizadores dos produtos
            BaseCalcICMSProd := 0;
            ValorICMSProd := 0;
            ValorIPIProd := 0;
            BaseCalcSubstProd := 0;
            ValorICMSSubstProd := 0;
            ValorIsentasProd := 0;

            if SituacaoECF = 'T' then
                begin
                    if ReducaoCST > 0 then
                        BaseCalcICMSProd := (Preco * Quantidade) - Truncar((((Preco * Quantidade) * ReducaoCST) / 100), 2)
                    else
                        BaseCalcICMSProd := (Preco * Quantidade);

                    ValorICMSProd := truncar((BaseCalcICMSProd * AliqICMS) / 100, 2);
                    if (TVA > 0) then
                        begin
                            BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                            ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                        end;
                end
            else if SituacaoECF = 'F' then
                begin
                    if (TVA > 0) then
                        begin
                            BaseCalcSubstProd := (Preco * Quantidade) + truncar((((Preco * Quantidade) * TVA) / 100), 2);
                            ValorICMSSubstProd := Truncar(((BaseCalcSubstProd * AliqICMS) / 100) - ValorICMSProd, 2);
                        end;
                end
            else if (SituacaoECF = 'I') then
                ValorIsentasProd := (Preco * Quantidade);

            if PossuiIPI = 'S' then
                begin
                    if IPI > 0 then
                        ValorIPIProd := truncar(((Preco * Quantidade) * IPI) / 100, 2);
                end;

            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'insert into entradasitens ' +
                        '(entradaitem, entrada, sequencia, item, descricao, quantidade, ' +
                        'preco, customedio, subtotalitem, haschildren, ordem, custocontabil, ' +
                        'rateiodesconto, semlucro, lucro, ' +
                        'indicelucro, novopreco, analisado, atualizoucusto, atualizoupreco, ' +
                        'freteproporcional, status, vendedor, unidade, fator, ' +
                        'baixaestoque, BaixaEstoqueFiscal, almoxarifado, basecalcicmsprod, ipi, aliqicms, ' +
                        'cst, reducaocst, cfopentrada, desconto, basecalcsubstprod, ' +
                        'valoripiprod, tva, situacaoecf, valoricmsprod, valorisentasprod, ' +
                        'valoricmssubstprod ) ' +
                        'values ' +
                        '(:entradaitem, :entrada, :sequencia, :item, :descricao, :quantidade, ' +
                        ':preco, :customedio, :subtotalitem, ''N'', :ordem, :custocontabil, ' +
                        '0, :semlucro, :lucro, ' +
                        '0, 0, ''N'', ''N'', ''N'', 1, ' +
                        ':status, :vendedor, :unidade, :fator, ' +
                        ':baixaestoque, :BaixaEstoqueFiscal, :almoxarifado, :basecalcicmsprod, :ipi, :aliqicms, ' +
                        ':cst, :reducaocst, :cfopentrada, :desconto, :basecalcsubstprod, ' +
                        ':valoripiprod, :tva, :situacaoecf, :valoricmsprod, :valorisentasprod, ' +
                        ':valoricmssubstprod ) ';
                    ParamByName('entradaitem').AsInteger := NextIDGlobal;
                    ParamByName('entrada').AsInteger := nIDEntrada;
                    ParamByName('sequencia').AsInteger := i;
                    ParamByName('item').AsInteger := Item;
                    ParamByName('descricao').AsString := Descricao;
                    ParamByName('quantidade').AsCurrency := Quantidade;
                    ParamByName('preco').AsCurrency := Preco;
                    ParamByName('customedio').AsCurrency := CustoMedio;
                    ParamByName('subtotalitem').AsCurrency := Quantidade * Preco;
                    ParamByName('ordem').AsInteger := i;
                    ParamByName('custocontabil').AsCurrency := CustoContabil;
                    ParamByName('semlucro').AsCurrency := SemLucro;
                    ParamByName('lucro').AsCurrency := Lucro;
                    ParamByName('status').AsString := iif(trim(StatusPadraoItens) <> '', StatusPadraoItens, 'P');
                    ParamByName('vendedor').AsInteger := Vendedor;
                    ParamByName('unidade').AsString := Unidade;
                    ParamByName('fator').AsCurrency := Fator;
                    ParamByName('baixaestoque').AsString := BaixaEstoque;
                    ParamByName('BaixaEstoqueFiscal').AsString := BaixaEstoqueFiscal;
                    ParamByName('almoxarifado').AsInteger := AlmoxPadrao;
                    ParamByName('basecalcicmsprod').AsCurrency := BaseCalcICMSProd;
                    ParamByName('ipi').AsCurrency := IPI;
                    ParamByName('aliqicms').AsCurrency := AliqICMS;
                    ParamByName('cst').AsString := CST;
                    ParamByName('reducaocst').AsCurrency := ReducaoCST;
                    ParamByName('cfopentrada').AsString := CFOPEntrada;
                    ParamByName('basecalcsubstprod').AsCurrency := BaseCalcSubstProd;
                    ParamByName('valoripiprod').AsCurrency := ValorIPIProd;
                    ParamByName('tva').AsCurrency := TVA;
                    ParamByName('situacaoecf').AsString := SituacaoECF;
                    ParamByName('valoricmsprod').AsCurrency := ValorICMSProd;
                    ParamByName('valorisentasprod').AsCurrency := ValorIsentasProd;
                    ParamByName('valoricmssubstprod').AsCurrency := ValorICMSSubstProd;
                    ExecSQL;
                    Close;
                end;
        end;
    Result := nIDEntrada;
end;

procedure TDMProjeto.C_LocalizarItensNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_LocalizarItensFORNECPREFERENCIA.Value := -9;
    C_LocalizarItensULTIMOFORNECEDOR.Value := -9;
    C_LocalizarItensEMPRESA.Value := DMProjeto.nEmpresaLogada;

end;

function TDMProjeto.UpdateEstacoes(sChave, sData, sHora, sEstacoes: string): Boolean;
begin
    try
        Result := False;
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        with Q_Validacao do
            begin
                Close;
                Sql.Text := ' delete FROM  estacoeschave c ';
                Open;
                Close;
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'INSERT INTO ESTACOESCHAVE (ESTACAOCHAVE, EMPRESA, CHAVE, DATAEXPIRA, HORAEXPIRA, ESTACOES, ORIGEMREPLIC) VALUES' +
                            '(''1'', -1, :sChave, :sData, :sHora, :sEstacoes, ''R'')';
                        ParamByName('sChave').AsString := sChave;
                        ParamByName('sData').AsString := sData;
                        ParamByName('sHora').AsString := sHora;
                        ParamByName('sEstacoes').AsString := sEstacoes;
                        ExecSql;
                        Close;
                    end;
            end;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        Result := True;
    except
        on e: exception do
            Application.MessageBox(pchar(e.message), 'Erro!', Mb_Ok);
    end;
end;

function TDMProjeto.TipoPadraoInicial(tipoPadrao: integer; tipo: string; tipomovimento: integer): integer;

begin
    with Q_SQL do
        begin
            Close;
            if (tipomovimento = 0) then
                SQL.Text := 'Select FIRST 1 t.*, tp.Descricao as DescTipoPadrao, tp.tipoorigem ' +
                    'From TiposMovimento t inner join TiposPadrao tp on t.TipoPadrao = tp.TipoPadrao ' +
                    'Where  t.TipoPadrao = ' + IntToStr(tipoPadrao) + ' and t.Tipo = ''' + tipo + ''' ' +
                    'Order by t.ordem '
            else
                SQL.Text := 'Select FIRST 1 t.*, tp.Descricao as DescTipoPadrao, tp.tipoorigem ' +
                    'From TiposMovimento t inner join TiposPadrao tp on t.TipoPadrao = tp.TipoPadrao ' +
                    'Where  t.tipomovimento = ' + IntToStr(tipomovimento) + ' and t.Tipo = ''' + tipo + ''' ' +
                    'Order by t.ordem ';
            try
                Open;
                result := FieldByName('TipoMovimento').AsInteger;
            except
                result := 0;
            end;
        end;
end;

procedure TDMProjeto.DadosClientesVerificacao(cpf_cnpj, razao, email, fone, obs: string);
begin
    try
        with Q_Dados do
            begin
                close;
                sql.Text := 'execute procedure DADOS_CLIENTES_VERIFICACAO_IU(''' + cpf_cnpj + ''',''' + funcoes.PlacadeRede + '''' +
                    ',''SYNCRETAGUARDA'',''' + razao + ''',''' + email + ''',''' + fone + ''',''SYNCRETAGUARDA - Nome do computador: ' + obs + ''')';
                ExecSQL;
                DMProjeto.DB_SyncOS.DefaultTransaction.Commit;
            end;
    except
        on e: Exception do
            MessageDlg(pchar(e.Message + ' '), mtWarning, [mbOK], 0);
    end;
end;

function TDMProjeto.GetNumeroEstacoes(): integer;
var num: integer;
begin
    with Q_Sql do
        begin
            SQL.Text := 'select Max(e.estacoes) from empresas e where e.favorecido = -1';
            Open;
            num := Fields[0].AsInteger;
        end;
    Result := num;
end;

end.

