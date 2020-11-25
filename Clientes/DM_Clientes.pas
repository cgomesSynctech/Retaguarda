unit DM_Clientes;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
    IBQuery, DBClient, Provider, Variants, IBDatabase, IBEvents, ppMemo,
    ppCtrls, ppBands, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
    ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
    TDMClientes = class(TDMManutencao)
        Q_UFS: TIBQuery;
        Q_Paises: TIBQuery;
        Q_PlanoPagamento: TIBQuery;
        Q_Vendedor: TIBQuery;
        Q_TAXS: TIBQuery;
        Q_TiposEntrega: TIBQuery;
        Q_TiposAtividade: TIBQuery;
        P_UFs: TDataSetProvider;
        C_UFs: TClientDataSet;
        C_UFsDESCRICAO: TStringField;
        C_UFsUF: TStringField;
        P_Vendedor: TDataSetProvider;
        C_Vendedor: TClientDataSet;
        P_TiposEntrega: TDataSetProvider;
        C_TiposEntrega: TClientDataSet;
        C_TiposEntregaTIPOENTREGA: TIntegerField;
        P_TiposAtividade: TDataSetProvider;
        C_TiposAtividade: TClientDataSet;
        P_TAXS: TDataSetProvider;
        C_TAXS: TClientDataSet;
        P_Paises: TDataSetProvider;
        C_Paises: TClientDataSet;
        P_PlanoPagamento: TDataSetProvider;
        C_PlanosPagamento: TClientDataSet;
        C_PlanosPagamentoDESCRICAO: TStringField;
        C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
        C_PaisesPAIS: TIntegerField;
        C_PaisesDESCRICAO: TStringField;
        C_TiposEntregaDESCRICAO: TStringField;
        C_VendedorFAVORECIDO: TIntegerField;
        C_VendedorVENDEDOR: TStringField;
        C_TiposAtividadeTIPOATIVIDADE: TIntegerField;
        C_TiposAtividadeATIVIDADE: TStringField;
        C_TAXSDESCRICAO: TStringField;
        C_TAXSTAX: TIntegerField;
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
        C_TabelaFLOATINGFACTORY: TBCDField;
        C_TabelaMEMO_CHECK: TStringField;
        C_TabelaCREDITO: TBCDField;
        C_TabelaCONTA: TIntegerField;
        C_TabelaNUMERO_REVENDA: TStringField;
        C_TabelaTIPO_FUNC: TStringField;
        C_TabelaSALDO: TBCDField;
        C_TabelalkUF: TStringField;
        C_TabelalkPais: TStringField;
        C_TabelalkTipoAtividade: TStringField;
        C_TabelalkPlanoPagamento: TStringField;
        C_TabelalkTAX: TStringField;
        C_TabelalkVendedor: TStringField;
        Q_TabelaPreco: TIBQuery;
        P_TabelaPreco: TDataSetProvider;
        C_TabelasPreco: TClientDataSet;
        C_TabelasPrecoTABELAPRECO: TIntegerField;
        C_TabelasPrecoDESCRICAO: TStringField;
        C_ContasDS: TDataSource;
        C_TabelalkTipoEntrega: TStringField;
        C_TabelalkTabelaPreco: TStringField;
        C_TabelalkConta: TStringField;
        C_TabelacfSALDO: TBCDField;
        C_TabelacfCREDITO: TBCDField;
        C_TabelaDATANASC: TDateField;
        C_TabelacfCHEQUESPENDENTES: TFloatField;
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
        C_TabelaCHEQPENDENTES: TBCDField;
        C_TabelaCONTAPAGAMENTO: TIntegerField;
        Q_Contas: TIBQuery;
        P_Contas: TDataSetProvider;
        C_Contas: TClientDataSet;
        C_ContasCONTA: TIntegerField;
        C_ContasDESCRICAO: TStringField;
        C_ContasDESCTIPO: TStringField;
        C_ContasSALDO: TBCDField;
        C_ContasCONTAPAI: TIntegerField;
        Q_LocaisEntrega: TIBQuery;
        C_LocaisEntrega: TClientDataSet;
        C_LocaisEntregaENTREGA: TIntegerField;
        C_LocaisEntregaFAVORECIDO: TIntegerField;
        C_LocaisEntregaENDERECOENTREGA: TStringField;
        C_LocaisEntregaCIDADEENTREGA: TStringField;
        C_LocaisEntregaUFENTREGA: TStringField;
        C_LocaisEntregaCEPENTREGA: TStringField;
        C_TabelaCONTADESPESAS: TIntegerField;
        C_TabelaULTCOMPRA: TDateField;
        C_TabelaULTVALORCOMPRA: TBCDField;
        C_LocaisEntregaDS: TDataSource;
        C_LocaisEntregalkUFENTREGA: TStringField;
        U_LocaisEntrega: TIBUpdateSQL;
        C_ContasTIPOCONTA: TIntegerField;
        C_ContasCODIGOREDUZIDO: TStringField;
        Q_Contratos: TIBQuery;
        U_Contratos: TIBUpdateSQL;
        C_Contratos: TClientDataSet;
        C_ContratosDS: TDataSource;
        C_ContratosCONTRATO: TIntegerField;
        C_ContratosDESCRICAO: TStringField;
        C_ContratosFAVORECIDO: TIntegerField;
        C_ContratosITEM: TIntegerField;
        C_ContratosPRECO: TBCDField;
        C_ContratosPERIODICIDADE: TStringField;
        C_ContratosMETODOPGTO: TStringField;
        C_ContratosFUNCPAYITEM: TIntegerField;
        C_ContratosGRUPOCOBRANCA: TIntegerField;
        C_ContratosDIACOBRANCA: TStringField;
        C_ContratosNOMEFUNCIONARIO: TStringField;
        C_ItensDS: TDataSource;
        Q_Itens: TIBQuery;
        P_Itens: TDataSetProvider;
        C_Itens: TClientDataSet;
        C_ItensITEM: TIntegerField;
        C_ItensCODIGO: TStringField;
        C_ItensDESCRICAO: TStringField;
        C_ItensHASCHILDREN: TStringField;
        C_ContratoslkItem: TStringField;
        C_LocaisEntregaPAISENTREGA: TIntegerField;
        C_LocaisEntregaDESCRICAO: TStringField;
        C_LocaisEntregalkPais: TStringField;
        C_LocaisEntrega_icSelecionado: TIntegerField;
        C_LocaisEntregaFONEENTREGA: TStringField;
        C_TabelaPERIODICIDADE: TStringField;
        C_TabelaDATAADIMISSAO: TDateField;
        C_TabelaDATADEMISSAO: TDateField;
        C_TabelaDATAAUMENTO: TDateField;
        C_TabelaAGRUPARPORITEM: TStringField;
        C_TabelaRELACIONAMENTO: TIntegerField;
        C_TabelaRELAC: TIntegerField;
        C_TabelaDESCRICAORELAC: TStringField;
        C_TabelaINICIOSEMANA: TIntegerField;
        C_TabelaDIASPERIODO: TIntegerField;
        Q_Aux: TIBQuery;
        C_TabelaQUALIDADE: TIntegerField;
        C_TabelaZONA: TIntegerField;
        C_TabelaGRUPOCLIENTE: TIntegerField;
        C_TabelaGRAURELAC: TIntegerField;
        Q_Qualidades: TIBQuery;
        P_Qualidades: TDataSetProvider;
        C_Qualidades: TClientDataSet;
        C_QualidadesQUALIDADE: TIntegerField;
        C_QualidadesDESCRICAO: TStringField;
        Q_Zonas: TIBQuery;
        P_Zonas: TDataSetProvider;
        C_Zonas: TClientDataSet;
        C_ZonasZONA: TIntegerField;
        C_ZonasDESCRICAO: TStringField;
        Q_GrauRelac: TIBQuery;
        P_GrauRelac: TDataSetProvider;
        C_GrauRelac: TClientDataSet;
        Q_GruposCliente: TIBQuery;
        P_GruposCliente: TDataSetProvider;
        C_GruposCliente: TClientDataSet;
        C_GrauRelacGRAU: TIntegerField;
        C_GrauRelacDESCRICAO: TStringField;
        C_GruposClienteGRUPOCLIENTE: TIntegerField;
        C_GruposClienteDESCRICAO: TStringField;
        C_TabelalkQualidade: TStringField;
        C_TabelalkZona: TStringField;
        C_TabelalkGrupo: TStringField;
        C_TabelalkGrauRelac: TStringField;
        Q_Clientes: TIBQuery;
        U_Clientes: TIBUpdateSQL;
        C_Clientes: TClientDataSet;
        C_ClientesDS: TDataSource;
        C_ClientesFAVORECIDO: TIntegerField;
        C_ClientesNOME_AVAL: TStringField;
        C_ClientesSSN_AVAL: TStringField;
        C_ClientesCARTMOTOR_AVAL: TStringField;
        C_ClientesFONE1_AVAL: TStringField;
        C_ClientesFONE2_AVAL: TStringField;
        C_ClientesENDERECO_AVAL: TStringField;
        C_ClientesCIDADE_AVAL: TStringField;
        C_ClientesUF_AVAL: TStringField;
        C_ClientesCEP_AVAL: TStringField;
        C_ClientesCAIXAPOSTAL_AVAL: TStringField;
        C_ClientesIMOVEL_AVAL: TStringField;
        C_ClientesIMOVEL: TStringField;
        C_ClientesNOMEEMPREG: TStringField;
        C_ClientesNOMEEMPREG_AVAL: TStringField;
        C_ClientesENDERECOEMPREG: TStringField;
        C_ClientesENDERECOEMPREG_AVAL: TStringField;
        C_ClientesCIDADEEMPREG: TStringField;
        C_ClientesCIDADEEMPREG_AVAL: TStringField;
        C_ClientesUFEMPREG: TStringField;
        C_ClientesUFEMPREG_AVAL: TStringField;
        C_ClientesFONEEMPREG: TStringField;
        C_ClientesFONEEMPREG_AVAL: TStringField;
        C_ClientesCARGOEMPREG: TStringField;
        C_ClientesCARGOEMPREG_AVAL: TStringField;
        C_ClientesSUPERVEMPREG: TStringField;
        C_ClientesSUPERVEMPREG_AVAL: TStringField;
        C_ClientesSOCIOEMPREG: TStringField;
        C_ClientesSOCIOEMPREG_AVAL: TStringField;
        C_ClientesANOSTRABEMPREG: TIntegerField;
        C_ClientesANOSTRABEMPREG_AVAL: TIntegerField;
        C_ClientesSALARIOEMPREG: TBCDField;
        C_ClientesSALARIOEMPREG_AVAL: TBCDField;
        C_ClientesVEICULO: TStringField;
        C_ClientesVEICULO_AVAL: TStringField;
        C_ClientesCONJUGUE_NOME: TStringField;
        C_ClientesCONJUGUE_SSN: TStringField;
        C_ClientesCONJUGUE_DATANASC: TDateField;
        C_ClientesQTDEFILHOS: TIntegerField;
        C_ClientesPAIS: TIntegerField;
        C_ClientesNOMEEMPREG2: TStringField;
        C_ClientesNOMEEMPREG_AVAL2: TStringField;
        C_ClientesENDERECOEMPREG2: TStringField;
        C_ClientesENDERECOEMPREG_AVAL2: TStringField;
        C_ClientesCIDADEEMPREG2: TStringField;
        C_ClientesCIDADEEMPREG_AVAL2: TStringField;
        C_ClientesUFEMPREG2: TStringField;
        C_ClientesUFEMPREG_AVAL2: TStringField;
        C_ClientesFONEEMPREG2: TStringField;
        C_ClientesFONEEMPREG_AVAL2: TStringField;
        C_ClientesCARGOEMPREG2: TStringField;
        C_ClientesCARGOEMPREG_AVAL2: TStringField;
        C_ClientesSUPERVEMPREG2: TStringField;
        C_ClientesSUPERVEMPREG_AVAL2: TStringField;
        C_ClientesSOCIOEMPREG2: TStringField;
        C_ClientesSOCIOEMPREG_AVAL2: TStringField;
        C_ClientesANOSTRABEMPREG2: TIntegerField;
        C_ClientesANOSTRABEMPREG_AVAL2: TIntegerField;
        C_ClientesSALARIOEMPREG2: TBCDField;
        C_ClientesSALARIOEMPREG_AVAL2: TBCDField;
        C_ClientesBANCOFINANC: TStringField;
        C_ClientesBANCOFINANC_AVAL: TStringField;
        C_ClientesBANCOENDERFINANC: TStringField;
        C_ClientesBANCOENDERFINANC_AVAL: TStringField;
        C_ClientesBANCOCIDADEFINANC: TStringField;
        C_ClientesBANCOCIDADEFINANC_AVAL: TStringField;
        C_ClientesBANCOUFFINANC: TStringField;
        C_ClientesBANCOUFFINANC_AVAL: TStringField;
        C_ClientesBANCOCEPFINANC: TStringField;
        C_ClientesBANCOCEPFINANC_AVAL: TStringField;
        C_ClientesBANCONUMEROCONTA: TStringField;
        C_ClientesBANCONUMEROCONTA_AVAL: TStringField;
        C_ClientesBANCOSALDO: TBCDField;
        C_ClientesBANCOSALDO_AVAL: TBCDField;
        C_ClientesBANCOFINANC2: TStringField;
        C_ClientesBANCOFINANC_AVAL2: TStringField;
        C_ClientesBANCOENDERFINANC2: TStringField;
        C_ClientesBANCOENDERFINANC_AVAL2: TStringField;
        C_ClientesBANCOCIDADEFINANC2: TStringField;
        C_ClientesBANCOCIDADEFINANC_AVAL2: TStringField;
        C_ClientesBANCOUFFINANC2: TStringField;
        C_ClientesBANCOUFFINANC_AVAL2: TStringField;
        C_ClientesBANCOCEPFINANC2: TStringField;
        C_ClientesBANCOCEPFINANC_AVAL2: TStringField;
        C_ClientesBANCONUMEROCONTA2: TStringField;
        C_ClientesBANCONUMEROCONTA_AVAL2: TStringField;
        C_ClientesBANCOSALDO2: TBCDField;
        C_ClientesBANCOSALDO_AVAL2: TBCDField;
        C_ClientesCARTAOVISA: TStringField;
        C_ClientesCARTAOVISA_AVAL: TStringField;
        C_ClientesCARTAOMASTER: TStringField;
        C_ClientesCARTAOMASTER_AVAL: TStringField;
        C_ClientesCARTAOAMEX: TStringField;
        C_ClientesCARTAOAMEX_AVAL: TStringField;
        C_ClientesCARTAODISC: TStringField;
        C_ClientesCARTAODISC_AVAL: TStringField;
        C_ClientesCARTAOOUTRO: TStringField;
        C_ClientesCARTAOOUTRO_AVAL: TStringField;
        C_ClientesREFNOME: TStringField;
        C_ClientesREFNOME_AVAL: TStringField;
        C_ClientesREFFONE: TStringField;
        C_ClientesREFFONE_AVAL: TStringField;
        C_ClientesREFNOME2: TStringField;
        C_ClientesREFNOME_AVAL2: TStringField;
        C_ClientesREFFONE2: TStringField;
        C_ClientesREFFONE_AVAL2: TStringField;
        C_ClientesREFNOME3: TStringField;
        C_ClientesREFNOME_AVAL3: TStringField;
        C_ClientesREFFONE3: TStringField;
        C_ClientesREFFONE_AVAL3: TStringField;
        C_ClientesCARTMOTORUF: TStringField;
        C_ClientesCARTMOTORUF_AVAL: TStringField;
        C_UFsDS: TDataSource;
        C_ClientesCEPEMPREG: TStringField;
        C_ClientesCEPEMPREG_AVAL: TStringField;
        C_ClientesCEPEMPREG2: TStringField;
        C_ClientesCEPEMPREG_AVAL2: TStringField;
        C_ClientesDATANASC_AVAL: TDateField;
        C_ClientesCONJUGUE_NOME_AVAL: TStringField;
        C_ClientesCONJUGUE_DATANASC_AVAL: TDateField;
        C_ClientesCONJUGUE_SSN_AVAL: TStringField;
        C_ClientesPAIS_AVAL: TIntegerField;
        C_ClienteslkPaisAval: TStringField;
        Q_SQL: TIBQuery;
        Q_SQLTransaction: TIBTransaction;
        C_ConsultasDS: TDataSource;
        C_Consultas: TClientDataSet;
        Q_ConsultasProvider: TDataSetProvider;
        Q_Consultas: TIBQuery;
        Q_ConsultasPre: TIBQuery;
        P_ConsultasPre: TDataSetProvider;
        C_ConsultasPre: TClientDataSet;
        C_ConsultasPreCONSULTA: TIntegerField;
        C_ConsultasPreTITULO: TStringField;
        C_ConsultasPreQUERY: TStringField;
        C_ConsultasPreCATEGORIA: TIntegerField;
        IBEventos_Clientes: TIBEvents;
        C_ContratosFUNCIONARIO: TIntegerField;
        C_ContratosPAYROLLITEM: TIntegerField;
        C_PaisesDs: TDataSource;
        C_PayrollItems: TClientDataSet;
        P_PayrollItems: TDataSetProvider;
        Q_PayrollItems: TIBQuery;
        C_PayrollItemsPAYROLLITEM: TIntegerField;
        C_PayrollItemsDESCRICAO: TStringField;
        C_ContratoslkPayrollItem: TStringField;
        C_ContasBanco: TClientDataSet;
        P_ContasBanco: TDataSetProvider;
        Q_ContasBanco: TIBQuery;
        C_ContasBancoCODIGOREDUZIDO: TStringField;
        C_ContasBancoCONTA: TIntegerField;
        C_ContasBancoDESCRICAO: TStringField;
        C_ContasBancoDESCTIPO: TStringField;
        C_ContasBancoSALDO: TBCDField;
        C_ContasBancoCONTAPAI: TIntegerField;
        C_ContasBancoTIPOCONTA: TIntegerField;
        C_ContasBancoSALDOCONCILIACAO: TBCDField;
        C_ContasBancoDATACONCILIACAO: TDateField;
        C_TabelalkContaPagamento: TStringField;
        C_ContasBancoDS: TDataSource;
        C_ContratosVALORFUNC: TBCDField;
        Q_EstadoCivis: TIBQuery;
        P_EstadoCivis: TDataSetProvider;
        C_EstadoCivis: TClientDataSet;
        C_EstadoCivisESTADOCIVIL: TIntegerField;
        C_EstadoCivisDESCRICAO: TStringField;
        C_ClientesESTADOCIVIL: TIntegerField;
        C_ClientesESTADOCIVIL_AVAL: TIntegerField;
        C_TabelaSEXO: TStringField;
        C_ClienteslkEstadoCivil: TStringField;
        C_ClienteslkEstadoCivilAval: TStringField;
        C_Familiar: TClientDataSet;
        C_FamiliarID: TIntegerField;
        C_FamiliarNOME: TStringField;
        C_FamiliarRELACIONAMENTO: TIntegerField;
        C_FamiliarSSN: TStringField;
        C_FamiliarGRAURELAC: TIntegerField;
        C_FamiliarlkGrauRelac: TStringField;
        Q_Familiar: TIBQuery;
        U_Familiar: TIBUpdateSQL;
        C_FamiliarDS: TDataSource;
        C_ItensPRECO: TBCDField;
        C_TabelaCARTMOTOR: TStringField;
        P_Contratos: TDataSetProvider;
        P_LocaisEntrega: TDataSetProvider;
        P_Clientes: TDataSetProvider;
        P_Familiar: TDataSetProvider;
        C_TabelaCPF_CNPJ: TStringField;
        C_TabelaINSCRICAO_EST: TStringField;
        C_TabelaBAIRRO: TStringField;
        C_TabelaRG: TStringField;
        C_TabelaPESSOA_FJ: TStringField;
        C_TabelaFONTE: TStringField;
        C_TabelaINDICADOPELOFAV: TIntegerField;
        C_TabelaSUBSTITUTOTRIB: TStringField;
        C_TabelaOLDNOME: TStringField;
        Q_Receitas: TIBQuery;
        U_Receitas: TIBUpdateSQL;
        C_Receitas: TClientDataSet;
        C_ReceitasDS: TDataSource;
        P_Receitas: TDataSetProvider;
        C_ClientesPAI: TStringField;
        C_ClientesMAE: TStringField;
        C_ReceitasFAVORECIDO: TIntegerField;
        C_ReceitasOD_LG_ESF: TBCDField;
        C_ReceitasOD_LG_CIL: TBCDField;
        C_ReceitasOD_LG_EIXO: TBCDField;
        C_ReceitasOD_LG_DNP: TBCDField;
        C_ReceitasOD_LG_AP: TBCDField;
        C_ReceitasOD_LG_ARO: TBCDField;
        C_ReceitasOD_LG_DP: TBCDField;
        C_ReceitasOD_PE_ESF: TBCDField;
        C_ReceitasOD_PE_CIL: TBCDField;
        C_ReceitasOD_PE_EIXO: TBCDField;
        C_ReceitasOD_PE_DNP: TBCDField;
        C_ReceitasOD_PE_CO: TBCDField;
        C_ReceitasOD_PE_PEL: TBCDField;
        C_ReceitasOD_PE_DP: TBCDField;
        C_ReceitasOE_LG_ESF: TBCDField;
        C_ReceitasOE_LG_CIL: TBCDField;
        C_ReceitasOE_LG_EIXO: TBCDField;
        C_ReceitasOE_LG_DNP: TBCDField;
        C_ReceitasOE_LG_AP: TBCDField;
        C_ReceitasOE_LG_ARO: TBCDField;
        C_ReceitasOE_LG_DP: TBCDField;
        C_ReceitasOE_PE_ESF: TBCDField;
        C_ReceitasOE_PE_CIL: TBCDField;
        C_ReceitasOE_PE_EIXO: TBCDField;
        C_ReceitasOE_PE_DNP: TBCDField;
        C_ReceitasOE_PE_CO: TBCDField;
        C_ReceitasOE_PE_PEL: TBCDField;
        C_ReceitasOE_PE_DP: TBCDField;
        C_ReceitasTIPOLENTE: TIntegerField;
        C_ReceitasCOR: TIntegerField;
        C_ReceitasTIPOMATERIAL: TIntegerField;
        C_ReceitasREFERENTE: TStringField;
        C_ReceitasOBS: TStringField;
        C_TiposLentes: TClientDataSet;
        P_TiposLentes: TDataSetProvider;
        Q_TiposLentes: TIBQuery;
        C_TiposLentesTIPOLENTE: TIntegerField;
        C_TiposLentesDESCRICAO: TStringField;
        Q_Cores: TIBQuery;
        P_Cores: TDataSetProvider;
        C_Cores: TClientDataSet;
        C_CoresCOR: TIntegerField;
        C_CoresDESCRICAO: TStringField;
        C_TiposMaterial: TClientDataSet;
        P_TiposMaterial: TDataSetProvider;
        Q_TiposMaterial: TIBQuery;
        C_TiposMaterialTIPOMATERIAL: TIntegerField;
        C_TiposMaterialDESCRICAO: TStringField;
        C_ReceitaslkTipoLente: TStringField;
        C_ReceitaslkCor: TStringField;
        C_ReceitaslkTipoMaterial: TStringField;
        C_TabelaDTMODIFICACAO: TDateField;
        C_TabelaSTATUSIMS: TStringField;
        C_TabelaSTATUSITX: TStringField;
        C_TabelaCIDADE_CH: TIntegerField;
        Q_CidadesBristol: TIBQuery;
        C_CidadesBristolDS: TDataSource;
        C_CidadesBristol: TClientDataSet;
        P_CidadesBristol: TDataSetProvider;
        C_CidadesBristolCIDADE: TIntegerField;
        C_CidadesBristolDESCRICAO: TStringField;
        C_CidadesBristolUF: TStringField;
        C_TabelaCRM: TStringField;
        C_TabelaPERCDESCONTO: TBCDField;
        C_LocaisEntregaPONTOREFERENCIAENTREGA: TStringField;
        C_LocaisEntregaBAIRROENTREGA: TStringField;
        Q_Marcas: TIBQuery;
        P_Marcas: TDataSetProvider;
        C_Marcas: TClientDataSet;
        C_MarcasDESCRICAO: TStringField;
        C_MarcasMARCA: TIntegerField;
        Q_Tecnologias: TIBQuery;
        P_Tecnologias: TDataSetProvider;
        C_Tecnologias: TClientDataSet;
        C_TecnologiasTECNOLOGIA: TIntegerField;
        C_TecnologiasDESCRICAO: TStringField;
        Q_Equipamentos: TIBQuery;
        U_Equipamentos: TIBUpdateSQL;
        C_Equipamentos: TClientDataSet;
        C_EquipamentosEQUIPAMENTO: TIntegerField;
        C_EquipamentosNUMMAQUINA: TStringField;
        C_EquipamentosMARCA: TIntegerField;
        C_EquipamentosTECNOLOGIA: TIntegerField;
        C_EquipamentosPAVIMENTOS: TIntegerField;
        C_EquipamentoslkMarca: TStringField;
        C_EquipamentoslkTecnologia: TStringField;
        C_EquipamentosFAVORECIDO: TIntegerField;
        C_EquipamentosDS: TDataSource;
        C_TabelaQ_Equipamentos: TDataSetField;
        C_TabelaNUMCONTRATO: TStringField;
        C_TabelaEDIFICIO: TStringField;
        C_TabelaCONTATO: TStringField;
        C_EquipamentosDESCRICAO: TStringField;
        C_TabelaLOCALMAPA: TStringField;
        C_TabelaTIPOCONTRATO: TStringField;
        Q_AssistenciaEquip: TIBQuery;
        P_AssistenciaEquip: TDataSetProvider;
        C_AssistenciaEquip: TClientDataSet;
        C_AssistenciaEquipEQUIPAMENTO: TIntegerField;
        C_AssistenciaEquipDESCRICAO: TStringField;
        C_AssistenciaEquipDS: TDataSource;
        U_AssistenciaEquip: TIBUpdateSQL;
        C_AssistenciaEquipNUMEROSERIE: TStringField;
        C_AssistenciaEquipNOME: TStringField;
        C_AssistenciaEquipCLIENTE: TIntegerField;
        C_TabelaQ_AssistenciaEquip: TDataSetField;
        C_TabelaINSCRICAO_MUN: TStringField;
        C_TipoCobranca: TClientDataSet;
        P_TipoCobranca: TDataSetProvider;
        Q_TipoCobranca: TIBQuery;
        C_TipoCobrancaTIPOCOBRANCA: TIntegerField;
        C_TipoCobrancaDESCTIPO: TStringField;
        C_TabelaTIPOCOBRANCA: TIntegerField;
        C_TabelalkTipoCobranca: TStringField;
        C_TabelaCONSUMIDORFINAL: TStringField;
        Q_Municipios: TIBQuery;
        P_Municipios: TDataSetProvider;
        C_Municipios: TClientDataSet;
        C_MunicipiosMUNICIPIO: TIntegerField;
        C_MunicipiosCODUF: TIntegerField;
        C_MunicipiosDESCRICAO: TStringField;
        C_MunicipiosDs: TDataSource;
        C_TabelaMUNICIPIO: TIntegerField;
        C_TabelaSUFRAMA: TStringField;
        C_TabelalkpMunicipio: TStringField;
        C_TabelaNRO: TStringField;
        C_TabelaQ_Clientes: TDataSetField;
        C_TabelaSENHA: TStringField;
        C_TabelaDECRETO24755: TStringField;
        C_TabelaADDDIASPRAZO: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
    C_TabelaPERMITIRCHEQUE: TStringField;
    C_TabelaPERMITIRFIADO: TStringField;
    C_TabelaEMAIL: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure C_TabelaAfterScroll(DataSet: TDataSet);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure C_LocaisEntregaNewRecord(DataSet: TDataSet);
        procedure C_ContratosNewRecord(DataSet: TDataSet);
        procedure C_ContratosPERIODICIDADEChange(Sender: TField);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure C_FamiliarNewRecord(DataSet: TDataSet);
        procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
        procedure C_TabelaRELACChange(Sender: TField);
        procedure C_ClientesNewRecord(DataSet: TDataSet);
        procedure C_FamiliarNOMEValidate(Sender: TField);
        procedure C_FamiliarBeforePost(DataSet: TDataSet);
        procedure DMComponentAntesDeApagar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure IBEventos_ClientesEventAlert(Sender: TObject;
            EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
        procedure C_ContratosITEMChange(Sender: TField);
        procedure C_ContratosFUNCIONARIOChange(Sender: TField);
        procedure C_ContratosPAYROLLITEMChange(Sender: TField);
        procedure C_FamiliarBeforeOpen(DataSet: TDataSet);
        procedure C_ContratosBeforeOpen(DataSet: TDataSet);
        procedure C_LocaisEntregaBeforeOpen(DataSet: TDataSet);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure C_ClientesBeforeOpen(DataSet: TDataSet);
        procedure C_TabelaCPF_CNPJChange(Sender: TField);
        procedure C_TabelaCPF_CNPJValidate(Sender: TField);
        procedure C_TabelaNOMEChange(Sender: TField);
        procedure C_ReceitasBeforeOpen(DataSet: TDataSet);
        procedure C_ReceitasNewRecord(DataSet: TDataSet);
        procedure C_TabelaBeforePost(DataSet: TDataSet);
        procedure C_EquipamentosNewRecord(DataSet: TDataSet);
        procedure C_AssistenciaEquipNewRecord(DataSet: TDataSet);
        procedure DMComponentPesquisar4_Dados(Sender: TObject);
    private
        { Private declarations }
        nLocalEntrega, nSeqContratos, nSeq, xEquip: integer;
        procedure GravarContratos;
        procedure GravarFamiliar;
        procedure GravarLocaisEntrega;
        procedure GravarClientes;
        procedure GravarReceitas;
        function GetMunicipio(cidade: String): integer;
    public
        { Public declarations }
        procedure GeraCodigo;
        procedure SetCEP(cep:string);
    end;

var
    DMClientes: TDMClientes;

implementation

uses DM_Projeto, funcoes, TDM_Projeto;

{$R *.DFM}

function TDMClientes.GetMunicipio(cidade: String): integer;
var
 municipio : integer;
Begin
   try
       with DMProjeto.Q_Sql do  begin
           SQL.Text := 'select  m.municipio from municipios m where upper(m.descricao) = upper(:cidade) ';
           ParamByName('cidade').AsString := cidade;
           Open;
           municipio := Fields[0].AsInteger ;
           Close;
       end;
    except on E: Exception do
         municipio := 0;
    end;
    Result := municipio;
End;

procedure TDMClientes.SetCEP(cep:string);
Var
 Lista:TStringList;
Begin
  Lista := TStringList.Create;
  Lista := Funcoes.buscaCEP(cep);
  if not (C_Tabela.State in [dsEdit, dsInsert]) then
        C_Tabela.Edit;
  C_TabelaUF.Value       := Lista.Values['uf'];
  C_TabelaEndereco.Value := Lista.Values['logradouro'];
  C_TabelaBairro.Value   := Lista.Values['bairro'];
  C_TabelaCidade.Value   := Lista.Values['cidade'];
  C_TabelaMUNICIPIO.Value := GetMunicipio(C_TabelaCidade.Value);

  C_Tabela.UpdateRecord;
End;


procedure TDMClientes.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMClientes := Self;
    IBEventos_Clientes.RegisterEvents;
    xEquip := 0;
end;

procedure TDMClientes.GeraCodigo;
var xID, xCasas: integer;
    sNomeDoCampo, sCodigo, xCodigo: string;
begin
    inherited;
    sNomeDoCampo := 'IDCodigoCliente';
    if not (C_Tabela.State in [dsEdit, dsInsert]) then
        C_Tabela.Edit;
    C_Tabela.UpdateRecord;

    sCodigo := C_TabelaCODIGO.Value;
    xCodigo := sCodigo;
    if Direita(xCodigo, 1) = '-' then
        begin
            xCasas := 6;

            while (Direita(xCodigo, 1) = '-') or DMProjeto.VerificaExistenciaFav(1, C_TabelaFavorecido.value, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(copy(sCodigo, 1, Pos('-', sCodigo) - 1), 1);
                    if Length(IntToStr(xID)) > 6 then
                        xCasas := Length(IntToStr(xID));
                    xCodigo := sCodigo + AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end
    else if Trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(xCodigo) = '') or DMProjeto.VerificaExistenciaFav(1, C_TabelaFavorecido.value, 'C', xCodigo) do
                begin
                    xID := DMProjeto.NextID(sNomeDoCampo, 1);
                    if Length(IntToStr(xID)) > 6 then
                        xCasas := Length(IntToStr(xID));
                    xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    C_TabelaCODIGO.Value := xCodigo;
end;

procedure TDMClientes.GravarLocaisEntrega;
var
    sFilter: string;
begin

    if C_LocaisEntrega.Active and (C_LocaisEntrega.ChangeCount > 0) then
        with C_LocaisEntrega do
            begin
                if Filtered then
                    sFilter := Filter;

                try
                    Filtered := false;

                    First;
                    while not EOF do
                        begin
                            if FieldByName('Favorecido').asinteger <= 0 then
                                begin
                                    Edit;
                                    FieldByName('Favorecido').asInteger := C_TabelaFavorecido.Value;
                                end;
                            Next;
                        end;

                    try
                        ApplyUpdates(0);
                    except
                        on E: Exception do
                            ShowMessage(e.message);
                    end;
                    //  raise Exception.Create('@Não foi possível gravar o(s) Locais de Entrega!');
                finally
                    if sFilter <> '' then
                        Filtered := true;
                end;
            end;
end;

procedure TDMClientes.GravarClientes;
var
    sFilter: string;
begin

    if C_Clientes.Active and (C_Clientes.ChangeCount > 0) then
        with C_Clientes do
            begin
                if Filtered then
                    sFilter := Filter;

                try
                    Filtered := false;

                    First;
                    while not EOF do
                        begin
                            if FieldByName('Favorecido').asinteger <= 0 then
                                begin
                                    Edit;
                                    FieldByName('Favorecido').asInteger := C_TabelaFavorecido.Value;
                                end;

                            Next;
                        end;

                    if ApplyUpdates(0) > 0 then
                        raise Exception.Create('@Não foi possível gravar o(s) Clientes!');
                finally
                    if sFilter <> '' then
                        Filtered := true;
                end;
            end;
end;

procedure TDMClientes.GravarReceitas;
begin

    if C_Receitas.Active and (C_Receitas.ChangeCount > 0) then
        with C_Receitas do
            begin
                try
                    First;
                    while not EOF do
                        begin
                            if FieldByName('Favorecido').asinteger <= 0 then
                                begin
                                    Edit;
                                    FieldByName('Favorecido').asInteger := C_TabelaFavorecido.Value;
                                end;

                            Next;
                        end;

                    if ApplyUpdates(0) > 0 then
                        raise Exception.Create('@Não foi possível gravar a(s) Receitas!');
                except
                end;
            end;
end;

procedure TDMClientes.GravarContratos;
var
    sFilter: string;
begin

    if C_Contratos.Active and (C_Contratos.ChangeCount > 0) then
        with C_Contratos do
            begin
                if Filtered then
                    sFilter := Filter;

                try
                    Filtered := false;

                    First;
                    while not EOF do
                        begin
                            if FieldByName('Favorecido').asinteger <= 0 then
                                begin
                                    Edit;
                                    FieldByName('Favorecido').asInteger := C_TabelaFavorecido.Value;
                                end;

                            Next;
                        end;

                    if ApplyUpdates(0) > 0 then
                        raise Exception.Create('@Não foi possível gravar o(s) Contratos de Entrega!');
                finally
                    if sFilter <> '' then
                        Filtered := true;
                end;
            end;
end;

procedure TDMClientes.GravarFamiliar;
var
    sFilter: string;
begin

    if C_Familiar.Active and (C_Familiar.ChangeCount > 0) then
        with C_Familiar do
            begin
                if Filtered then
                    sFilter := Filter;

                try
                    Filtered := false;

                    First;
                    while not EOF do
                        begin
                            if FieldByName('Relacionamento').asinteger <= 0 then
                                begin
                                    Edit;
                                    FieldByName('Relacionamento').asInteger := C_TabelaFavorecido.Value;
                                end;

                            Next;
                        end;

                    if ApplyUpdates(0) > 0 then
                        raise Exception.Create('@Não foi possível gravar o(s) Relacionamentos!');
                finally
                    if sFilter <> '' then
                        Filtered := true;
                end;
            end;
end;

procedure TDMClientes.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
    inherited;
    nSeqContratos := -10;
    C_Familiar.Close;
    C_Contratos.Close;
    C_LocaisEntrega.Close;
    C_EstadoCivis.Close;
    C_Clientes.Close;
    C_Clientes.Open;
    C_Clientes.append;
    if DMProjeto.Parametro('TipoEmpresa') = 'O' then
        begin
            C_Receitas.Close;
            C_Receitas.Open;
            C_Receitas.append;
        end;
end;

procedure TDMClientes.C_TabelaCalcFields(DataSet: TDataSet);
begin
    inherited;
    if C_TabelaSALDO.AsVariant = null then
        C_TabelacfSALDO.AsFloat := 0
    else
        C_TabelacfSALDO.AsFloat := C_TabelaSALDO.AsFloat;

    if C_TabelaCREDITO.AsVariant = null then
        C_TabelacfCREDITO.AsFloat := 0
    else
        C_TabelacfCREDITO.AsFloat := C_TabelaCREDITO.AsFloat;

    if C_TabelaCHEQPENDENTES.AsVariant = null then
        C_TabelacfCHEQUESPENDENTES.AsFloat := 0
    else
        C_TabelacfCHEQUESPENDENTES.AsFloat := C_TabelaCHEQPENDENTES.AsFloat;
end;

procedure TDMClientes.C_TabelaAfterScroll(DataSet: TDataSet);
begin
    inherited;
    if C_Familiar.Active and bAlteracao then
        C_Familiar.Close;

    if C_LocaisEntrega.Active and bAlteracao then
        C_LocaisEntrega.Close;

    if C_Contratos.Active and bAlteracao then
        C_Contratos.Close;

    if length(C_TabelaCPF_CNPJ.Text) = 11 then
        C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(C_TabelaCPF_CNPJ.Text) = 14 then
        C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TDMClientes.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var bObriga: boolean;
begin
    if (C_TabelaCODIGO.Value = '') then
        GeraCodigo;
    inherited;

    if DMClientes.C_Clientes.state in [dsedit, dsinsert] then
        DMClientes.C_Clientes.post;
    if DMProjeto.Parametro('TipoEmpresa') = 'O' then
        begin
            if DMClientes.C_Receitas.state in [dsedit, dsinsert] then
                DMClientes.C_Receitas.post;
        end;

    bObriga := DMProjeto.Parametro('PermitirDuplicidadeFav') <> 'N';
    if DMProjeto.VerificaExistenciaFav(1, C_TabelaFavorecido.value, 'C', C_TabelaCODIGO.value) then
        begin
            DlgMsg.ShowMsg(5001, ['Cliente']);
            if bObriga then
                begin
                    bSkip := true;
                    Exit;
                end;
        end;
    if DMProjeto.VerificaExistenciaFav(1, DMClientes.C_TabelaFavorecido.value, 'N', DMClientes.C_TabelaNome.value) then
        begin
            DlgMsg.ShowMsg(5001, ['Cliente']);
            if bObriga then
                begin
                    bSkip := true;
                    Exit;
                end;
        end;

    // Código duplicados
    {
    if (C_TabelaCODIGO.Value<>'') then begin
      with DMProjeto.Q_SQL do begin
        Close;
        SQL.Text := 'Select Count(favorecido) From Favorecidos '+
          'Where tipofavorecido=1 And codigo='+QuotedStr(C_TabelaCODIGO.Value)+
          'And favorecido<>'+C_TabelaFAVORECIDO.AsString;
        Open;
        if (Fields[0].AsInteger>0) then begin
          DlgMsg.ShowMsg(933,['[CÓDIGO]']);
          bSkip := True;
          Exit;
        end;
      end; // with
    end; // if
    }
    {Validando Contratos}
    with C_Contratos do
        begin
            if Active then
                begin
                    if State in [dsEdit, dsInsert] then
                        Post;
                    First;
                    while not EOF do
                        begin
                            if C_ContratosItem.Value = 0 then
                                begin
                                    DlgMsg.ShowMsg(1998);
                                    bSkip := true;
                                    exit;
                                end;
                            Next;
                        end;
                end;
        end;

    with C_LocaisEntrega do
        begin
            if Active then
                begin
                    if State in [dsEdit, dsInsert] then
                        Post;
                    First;
                    while not EOF do
                        begin
                            if (C_LocaisEntregaDescricao.Value = '') or (C_LocaisEntregaEnderecoEntrega.Value = '') then
                                begin
                                    DlgMsg.ShowMsg(2160);
                                    bSkip := true;
                                    exit;
                                    //        Raise Exception.Create('@@');
                                end;
                            Next;
                        end;
                end;
        end;
    if C_Familiar.Active then
        if C_Familiar.State in [dsEdit, dsInsert] then
            C_Familiar.Post;
    if bAlteracao and (C_Tabela.ChangeCount = 0) then
        begin
            GravarFamiliar;
            GravarContratos;
            GravarLocaisEntrega;
            GravarClientes;
            GravarReceitas;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;
end;

procedure TDMClientes.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nLocalEntrega := -1;
end;

procedure TDMClientes.C_LocaisEntregaNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nLocalEntrega);
    C_LocaisEntregaFavorecido.Value := C_TabelaFavorecido.Value;
    C_LocaisEntregaENTREGA.Value := nLocalEntrega;
end;

procedure TDMClientes.C_ContratosNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqContratos);

    C_ContratosContrato.Value := nSeqContratos;
    C_ContratosPreco.Value := 0;
    C_ContratosPeriodicidade.Value := 'S';
    C_ContratosDiaCobranca.Value := '2';
    C_ContratosMetodoPgto.Value := 'H';
    C_ContratosGrupoCobranca.Value := 1;
    C_ContratosFavorecido.Value := C_TabelaFavorecido.Value
end;

procedure TDMClientes.C_ContratosPERIODICIDADEChange(Sender: TField);
begin
    inherited;
    if (Sender.asString[1] in ['S', 'Q']) and (C_ContratosDiaCobranca.asString <> '') and
        (C_ContratosDiaCobranca.asInteger > 7) then
        C_ContratosDiaCobranca.Value := '7';

end;

procedure TDMClientes.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaEmpresa.Value := DMPRojeto.nEmpresaLogada;
    C_TabelaTIPOFAVORECIDO.Value := 1; // Cliente
    C_TabelaDATACADASTRO.Value := DMProjeto.dDataSistema;
    C_TabelaTAXAVEL.Value := 'N';
    C_TabelaDESATIVADO.Value := 'N';
    C_TabelaEXIGIVEL1099.Value := 'N';
    C_TabelaLOGOTIPO.Value := '';
    C_TabelaLIMITECREDITO.Value := 0;
    C_TabelaSituacao.Value := 'N';
    try
        C_TabelaMUNICIPIO.value := StrToInt(DMProjeto.sCidadeIbgeEmpresa);
    except
        C_TabelaMUNICIPIO.value := 0;
    end;
    C_TabelaUF.Value := DMProjeto.sUFEmpresa;
    C_TabelaCidade.Value := DMProjeto.sCidadeEmpresa;
    C_TabelaSexo.value := 'M';
    C_TabelaFonte.value := 'N';
    C_TabelaSubstitutoTrib.value := 'N';
    C_TabelaPessoa_FJ.value := 'F';
    C_TabelaPercDesconto.Value := 0;
    C_TabelaADDDIASPRAZO.Value := 0;
    C_TabelaConsumidorFinal.Value := 'N';
    C_TabelaPais.value := 1058;
    C_TabelaNRO.Value := 'SN';
end;

procedure TDMClientes.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    nSeq := -1;
end;

procedure TDMClientes.C_FamiliarNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_FamiliarID.Value := nSeq;
    Dec(nSeq);
    if C_TabelaFavorecido.Value > 0 then
        C_FamiliarRelacionamento.Value := C_TabelaFavorecido.Value;
end;

procedure TDMClientes.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
begin
    inherited;
    if C_Familiar.Active and C_TabelaRelacionamento.IsNull then
        begin
            if C_Tabela.State in [dsBrowse] then
                C_Tabela.Edit;
            C_TabelaRelacionamento.Value := C_TabelaFavorecido.Value;
            C_TabelaRelac.Value := C_TabelaFavorecido.Value;
        end;
end;

procedure TDMClientes.C_TabelaRELACChange(Sender: TField);
begin
    inherited;
    with C_Familiar do
        begin
            if Active then
                begin
                    DisableControls;
                    First;
                    while not EOF do
                        begin
                            Edit;
                            if C_FamiliarRelacionamento.IsNull then
                                C_FamiliarRelacionamento.Value := C_TabelaFavorecido.Value;
                            Post;
                            Next;
                        end;
                    enablecontrols;
                end;
        end;
end;

procedure TDMClientes.C_ClientesNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ClientesFavorecido.value := C_TabelaFavorecido.Value;
    C_ClientesIMOVEL.value := 'A';
    C_ClientesIMOVEL_AVAL.value := 'A';
    C_ClientesVEICULO.value := 'N';
    C_ClientesVEICULO_AVAL.value := 'N';
    C_ClientesSOCIOEMPREG.value := 'N';
    C_ClientesSOCIOEMPREG2.value := 'N';
    C_ClientesCARTAOAMEX.value := 'N';
    C_ClientesCARTAOMASTER.value := 'N';
    C_ClientesCARTAOVISA.value := 'N';
    C_ClientesCARTAODISC.value := 'N';
    C_ClientesCARTAOAMEX_AVAL.value := 'N';
    C_ClientesCARTAOMASTER_AVAL.value := 'N';
    C_ClientesCARTAOVISA_AVAL.value := 'N';
    C_ClientesCARTAODISC_AVAL.value := 'N';
    C_ClientesSOCIOEMPREG_AVAL.value := 'N';
    C_ClientesSOCIOEMPREG_AVAL2.value := 'N';
end;

procedure TDMClientes.C_FamiliarNOMEValidate(Sender: TField);
begin
    inherited;
end;

(*
insert into favorecidos
  (FAVORECIDO, NOME, DATANASC, TIPOFAVORECIDO, DESATIVADO,
RELACIONAMENTO, SSN, GRAURELAC)
values
  (:ID, :NOME, :DATANASC, :TIPOFAVORECIDO, :DESATIVADO,
:RELACIONAMENTO, :SSN, :GRAURELAC)
*)

procedure TDMClientes.C_FamiliarBeforePost(DataSet: TDataSet);
begin
    inherited;
    if (C_FamiliarID.value <= 0) then
        begin
            DlgMsg.ShowMsg(543);
            abort;
        end;
end;

procedure TDMClientes.DMComponentAntesDeApagar(Sender: TObject;
    var bCanDelete: Boolean);
begin
    inherited;
    with DMProjeto.Q_SQL do
        begin
            SQL.text := 'select id from titulosareceber where cliente = :cliente and ' +
                'status >= 1 and status < 50';
            params[0].asinteger := C_TabelaFavorecido.value;
            open;
            if FieldByName('id').asinteger > 0 then
                begin
                    bCanDelete := false;
                    DlgMsg.ShowMsg(6020);
                    exit;
                end;
        end;
end;

procedure TDMClientes.DMComponentExclusao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if C_TabelaFavorecido.Value = 1 then
        begin
            DlgMsg.ShowMsg(806);
            bSkip := true;
            Exit;
        end;
end;

procedure TDMClientes.IBEventos_ClientesEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
begin
    inherited;
    if EventName = 'EVENTO_ITENS' then
        begin
            C_Itens.close;
            C_Itens.open;
        end
    else if EventName = 'EVENTO_CONTAS' then
        begin
            C_Contas.close;
            C_Contas.open;
        end
    else if EventName = 'EVENTO_FAVORECIDOS' then
        begin
            C_Vendedor.close;
            C_Vendedor.open;
        end
    else if EventName = 'EVENTO_PLANOSPAGAMENTO' then
        begin
            C_PlanosPagamento.close;
            C_PlanosPagamento.open;
        end
    else if EventName = 'EVENTO_TAXS' then
        begin
            C_Taxs.close;
            C_Taxs.open;
        end;
end;

procedure TDMClientes.C_ContratosITEMChange(Sender: TField);
begin
    inherited;
    C_ContratosDescricao.Value := C_ContratoslkItem.Value;
    if C_Itens.Locate('Item', C_ContratosItem.Value, []) then
        C_ContratosPreco.Value := C_ItensPreco.Value;
end;

procedure TDMClientes.C_ContratosFUNCIONARIOChange(Sender: TField);
begin
    inherited;
    DMClientes.C_ContratosNomeFuncionario.Value := DMProjeto.C_LocalizarFavNome.Value;
    with Q_SQL do
        begin
            close;
            sql.text := 'select f.payrollitem from funcspayitens f, payrollitens p ' +
                'where f.funcionario = :func and f.payrollitem = p.payrollitem and p.tipopayroll = 1 ';
            parambyname('func').AsInteger := C_ContratosFuncionario.Value;
            open;
            if recordcount > 0 then
                C_ContratosPayRollItem.value := fields[0].AsInteger
            else
                C_ContratosPayRollItem.asVariant := null;
            close;
        end;
end;

procedure TDMClientes.C_ContratosPAYROLLITEMChange(Sender: TField);
begin
    inherited;
    with Q_SQL do
        begin
            close;
            sql.text := 'select f.item, f.valor from funcspayitens f ' +
                'where f.funcionario = :func and f.payrollitem = :pay';
            parambyname('func').AsInteger := C_ContratosFuncionario.Value;
            parambyname('pay').AsInteger := C_ContratosPayRollItem.Value;
            open;
            if RecordCount > 0 then
                begin
                    C_ContratosItem.Value := fields[0].AsInteger;
                    C_ContratosValorFunc.Value := fields[1].AsCurrency;
                end;
            close;
        end;
end;

procedure TDMClientes.C_FamiliarBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_Familiar.FetchParams;
    C_Familiar.Params.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
end;

procedure TDMClientes.C_ContratosBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_Contratos.FetchParams;
    C_Contratos.Params.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
end;

procedure TDMClientes.C_LocaisEntregaBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_LocaisEntrega.FetchParams;
    C_LocaisEntrega.Params.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
end;

procedure TDMClientes.DMComponentGravar3_AposApply(Sender: TObject);
begin
    inherited;
    GravarContratos;
    GravarFamiliar;
    GravarLocaisEntrega;
    GravarClientes;
    GravarReceitas;
end;

procedure TDMClientes.C_ClientesBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    //	C_Clientes.FetchParams;
    //  C_Clientes.Params.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
end;

procedure TDMClientes.C_TabelaCPF_CNPJChange(Sender: TField);
begin
    inherited;
    if length(DMClientes.C_TabelaCPF_CNPJ.value) = 14 then
        C_TabelaPessoa_FJ.value := 'J'
    else
        C_TabelaPessoa_FJ.value := 'F';
end;

procedure TDMClientes.C_TabelaCPF_CNPJValidate(Sender: TField);
var sDescricao: string;
begin
    inherited;
    if (Sender.AsVariant = null) or (Sender.AsString = '') then
        exit;

    CPF_CGCValido(Sender.Text);

    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Favorecido, TipoFavorecido From Favorecidos where CPF_CNPJ = :C and Desativado = ''N''';
            Params[0].asString := Sender.AsString;
            Open;
            if (Length(Sender.Text) = 11) and ((FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1)) and (FieldByName('TipoFavorecido').asinteger = 1) then
                begin
                    sDescricao := DMProjeto.DescTipoFav(FieldByName('TipoFavorecido').asinteger) + '!';
                    DlgMsg.ShowMsg(7006, [sDescricao]);
                    raise Exception.Create('@@');
                end
            else if (FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1) then
                begin
                    sDescricao := DMProjeto.DescTipoFav(FieldByName('TipoFavorecido').asinteger) + '!';
                    DlgMsg.ShowMsg(7007, [sDescricao]);

                    Close;
                    exit;
                end;
        end;
end;

procedure TDMClientes.C_TabelaNOMEChange(Sender: TField);
begin
    inherited;
    if C_TabelaRazao.IsNull or (C_TabelaOldNOME.value = C_TabelaRAZAO.value) then
        begin
            C_TabelaRazao.value := Replace(C_TabelaNome.value, '@', '');
            C_TabelaRAZAO.Value := Replace(C_TabelaRAZAO.Value, '&', '');
        end;
    C_TabelaOldNome.value := C_TabelaNome.value;
end;

procedure TDMClientes.C_ReceitasBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_Receitas.FetchParams;
    C_Receitas.Params.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
end;

procedure TDMClientes.C_ReceitasNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ReceitasFavorecido.Value := C_TabelaFavorecido.Value;
end;

procedure TDMClientes.C_TabelaBeforePost(DataSet: TDataSet);
begin
    inherited;
    C_TabelaDTModificacao.value := DMProjeto.dDataSistema;
    if DMProjeto.Parametro('TipoEmpresa') = 'H' then
        begin
            if bAlteracao then
                begin
                    C_TabelaStatusIms.value := 'A';
                    C_TabelaStatusItx.value := 'A';
                end
            else
                begin
                    C_TabelaStatusIms.value := 'I';
                    C_TabelaStatusItx.value := 'I';
                end;
        end;

end;

procedure TDMClientes.C_EquipamentosNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_EquipamentosEQUIPAMENTO.Value := -1;
end;

procedure TDMClientes.C_AssistenciaEquipNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(xEquip);
    C_AssistenciaEquipEquipamento.Value := xEquip;
    C_AssistenciaEquipCLIENTE.Value := C_TabelaFavorecido.Value;
end;

procedure TDMClientes.DMComponentPesquisar4_Dados(Sender: TObject);
begin
    inherited;
    nSeqContratos := -10;
    C_Familiar.Close;
    C_Contratos.Close;
    C_LocaisEntrega.Close;
    C_EstadoCivis.Close;
    //  C_Clientes.Close;
    //  Q_Clientes.Close;
    //  Q_Clientes.ParambyName('Favorecido').AsInteger := C_TabelaFavorecido.AsInteger;
    //  C_Clientes.FetchParams;
    //  C_Clientes.Open;
    if DMProjeto.Parametro('TipoEmpresa') = 'O' then
        begin
            C_Receitas.Close;
            C_Receitas.Open;
            C_Receitas.append;
        end;
end;

end.

