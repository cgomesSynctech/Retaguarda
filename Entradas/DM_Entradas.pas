unit DM_Entradas;

interface
uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    DM_ITENSMOVIMENTO, Db, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, TDM_PadraoManutencao, Variants,
    IBEvents, DateUtils, Math;

const
    SInicioGravacao = '%s: Gravação de %s #%s  ';
    SValidaGravacao = '%s: Validação Concluida ';
    SChavesGravacao = '%s: Chave Gerada = %s ';
    SOrdemDigitacao = '%s: Fixou ordem de Digitação ';
    SGravandoTabela = '%s: Gravou Tab. Principais #%s ';
    SGravandoCliente = '%s: Atualizou Fornecedor ';
    SCalculouComiss = '%s: Reduziu Comissão ';

type
    TDMEntradas = class(TDMItensMovimento)
        C_TabelaTAX: TIntegerField;
        C_TabelaPLANOPAGAMENTO: TIntegerField;
        C_TabelaTIPOENTREGA: TIntegerField;
        C_TabelaDATAENTREGA: TDateField;
        C_TabelaCAMPO01: TStringField;
        C_TabelaCAMPO02: TStringField;
        C_TabelaCAMPO03: TStringField;
        C_TabelaCAMPO04: TStringField;
        Q_PlanosPagamento: TIBQuery;
        P_PlanosPagamento: TDataSetProvider;
        C_PlanosPagamento: TClientDataSet;
        Q_TiposEntrega: TIBQuery;
        P_TiposEntrega: TDataSetProvider;
        C_TiposEntrega: TClientDataSet;
        C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
        C_PlanosPagamentoDESCRICAO: TStringField;
        C_PlanosPagamentoQTDPARCELAS: TIntegerField;
        C_PlanosPagamentoINTERVALOS: TStringField;
        C_TiposEntregaTIPOENTREGA: TIntegerField;
        C_TiposEntregaDESCRICAO: TStringField;
        C_TabelalkPlanoPagamento: TStringField;
        C_TabelalkTipoEntrega: TStringField;
        Q_SQL: TIBQuery;
        C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField;
        C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField;
        Q_Parcelas: TIBQuery;
        C_ParcelasDS: TDataSource;
        C_TabelaQ_Parcelas: TDataSetField;
        C_TabelacfLastIDMov: TStringField;
        C_TabelaSTATUS: TStringField;
        Q_MasterItensDS: TDataSource;
        Q_SQLi: TIBQuery;
        C_TiposMovimentoTIT1_DATA: TStringField;
        C_TiposMovimentoTIT2_DATA: TStringField;
        C_TiposMovimentoTIT1_NUMERO: TStringField;
        C_TiposMovimentoTIT2_NUMERO: TStringField;
        C_TiposMovimentoCB_INFOENTREGA: TStringField;
        C_TiposMovimentoTIT1_LOCALENTREGA: TStringField;
        C_TiposMovimentoTIT1_DATAENTREGA: TStringField;
        C_TiposMovimentoTIT1_TIPOENTREGA: TStringField;
        C_TiposMovimentoTIT2_LOCALENTREGA: TStringField;
        C_TiposMovimentoTIT2_DATAENTREGA: TStringField;
        C_TiposMovimentoTIT2_TIPOENTREGA: TStringField;
        C_TiposMovimentoCB_VENDEDOR: TStringField;
        C_TiposMovimentoTIT1_VENDEDOR: TStringField;
        C_TiposMovimentoTIT2_VENDEDOR: TStringField;
        C_TiposMovimentoCB_PEDIDO: TStringField;
        C_TiposMovimentoTIT1_PEDIDO: TStringField;
        C_TiposMovimentoTIT2_PEDIDO: TStringField;
        C_TiposMovimentoCB_COMISSAO: TStringField;
        C_TiposMovimentoTIT1_COMISSAO: TStringField;
        C_TiposMovimentoTIT2_COMISSAO: TStringField;
        C_TiposMovimentoCB_TERMOS: TStringField;
        C_TiposMovimentoTIT1_TERMOS: TStringField;
        C_TiposMovimentoTIT2_TERMOS: TStringField;
        C_TiposMovimentoCB_MENSAGEM: TStringField;
        C_TiposMovimentoTIT1_MENSAGEM: TStringField;
        C_TiposMovimentoTIT2_MENSAGEM: TStringField;
        C_TiposMovimentoCB_DESCONTOS: TStringField;
        C_TiposMovimentoTIT1_DESCONTOS: TStringField;
        C_TiposMovimentoTIT2_DESCONTOS: TStringField;
        C_TiposMovimentoCB_FRETE: TStringField;
        C_TiposMovimentoTIT1_FRETE: TStringField;
        C_TiposMovimentoTIT2_FRETE: TStringField;
        C_TiposMovimentoCB_TOTALITENS: TStringField;
        C_TiposMovimentoTIT1_TOTALITENS: TStringField;
        C_TiposMovimentoTIT2_TOTALITENS: TStringField;
        C_TiposMovimentoCB_TOTALFINAL: TStringField;
        C_TiposMovimentoTIT1_TOTALFINAL: TStringField;
        C_TiposMovimentoTIT2_TOTALFINAL: TStringField;
        C_TiposMovimentoTIT1_DESCRICAO: TStringField;
        C_TiposMovimentoTIT1_QUANTIDADE: TStringField;
        C_TiposMovimentoTIT1_PRECO: TStringField;
        C_TiposMovimentoTIT1_SUBTOTAL: TStringField;
        C_TiposMovimentoTIT2_DESCRICAO: TStringField;
        C_TiposMovimentoTIT2_QUANTIDADE: TStringField;
        C_TiposMovimentoTIT2_PRECO: TStringField;
        C_TiposMovimentoTIT2_SUBTOTAL: TStringField;
        C_TiposMovimentoCB_JUROS: TStringField;
        C_TiposMovimentoTIT1_JUROS: TStringField;
        C_TiposMovimentoTIT2_JUROS: TStringField;
        C_TiposMovimentoCB_DESPESAS: TStringField;
        C_TiposMovimentoTIT1_DESPESAS: TStringField;
        C_TiposMovimentoTIT2_DESPESAS: TStringField;
        C_TiposMovimentoCB_CAMPO01: TStringField;
        C_TiposMovimentoTIT1_CAMPO1: TStringField;
        C_TiposMovimentoTIT2_CAMPO1: TStringField;
        C_TiposMovimentoCB_CAMPO02: TStringField;
        C_TiposMovimentoTIT1_CAMPO2: TStringField;
        C_TiposMovimentoTIT2_CAMPO2: TStringField;
        C_TiposMovimentoCB_CAMPO03: TStringField;
        C_TiposMovimentoTIT1_CAMPO3: TStringField;
        C_TiposMovimentoTIT2_CAMPO3: TStringField;
        C_TiposMovimentoCB_CAMPO04: TStringField;
        C_TiposMovimentoTIT1_CAMPO4: TStringField;
        C_TiposMovimentoTIT2_CAMPO4: TStringField;
        C_TiposMovimentoCB_CODIGO: TStringField;
        C_TiposMovimentoTIT1_CODIGO: TStringField;
        C_TiposMovimentoTIT2_CODIGO: TStringField;
        C_TiposMovimentoCB_FUNCIONARIO: TStringField;
        C_TiposMovimentoTIT1_FUNCIONARIO: TStringField;
        C_TiposMovimentoTIT2_FUNCIONARIO: TStringField;
        C_TiposMovimentoTIT1_COLUNA1: TStringField;
        C_TiposMovimentoTIT1_COLUNA2: TStringField;
        C_TiposMovimentoTIT1_COLUNA3: TStringField;
        C_TiposMovimentoTIT1_COLUNA4: TStringField;
        C_TiposMovimentoTIT2_COLUNA1: TStringField;
        C_TiposMovimentoTIT2_COLUNA2: TStringField;
        C_TiposMovimentoTIT2_COLUNA3: TStringField;
        C_TiposMovimentoTIT2_COLUNA4: TStringField;
        C_TiposMovimentoCORTITULOS: TIntegerField;
        C_TiposMovimentoTIPOFAVPADRAO: TIntegerField;
        C_TiposMovimentoCB_COLUNA1: TStringField;
        C_TiposMovimentoCB_COLUNA2: TStringField;
        C_TiposMovimentoCB_COLUNA3: TStringField;
        C_TiposMovimentoCB_COLUNA4: TStringField;
        C_TiposMovimentoTIT1_UNIDADE: TStringField;
        C_TiposMovimentoTIT2_UNIDADE: TStringField;
        C_TiposMovimentoFOTO: TStringField;
        C_TiposMovimentoTIT1_VALIDADE: TStringField;
        C_TiposMovimentoTIT2_VALIDADE: TStringField;
        Q_LocaisEntrega: TIBQuery;
        C_LocaisEntrega: TClientDataSet;
        C_LocaisEntregaDS: TDataSource;
        C_LocaisEntregaENTREGA: TIntegerField;
        C_LocaisEntregaFAVORECIDO: TIntegerField;
        C_LocaisEntregaDESCRICAO: TStringField;
        C_TabelaLOCALENTREGA: TIntegerField;
        P_LocaisEntrega: TDataSetProvider;
        C_Parcelas: TClientDataSet;
        C_ParcelasID: TIntegerField;
        C_ParcelasTITULO: TStringField;
        C_ParcelasPARCELA: TIntegerField;
        C_ParcelasVENCIMENTO: TDateField;
        C_ParcelasCOMPETENCIA: TDateField;
        C_ParcelasVALOR: TBCDField;
        C_ParcelasSALDO: TBCDField;
        C_ParcelasIDMESTRE: TIntegerField;
        C_ParcelasVALORPAGO: TBCDField;
        C_ParcelasNOTAFISCAL: TStringField;
        C_ParcelasSTATUS: TIntegerField;
        C_ParcelasDATAANTECIPACAO: TDateField;
        C_ParcelasVALORDESCANTECIPADO: TBCDField;
        C_ParcelasJUROSPLANO: TBCDField;
        C_ParcelasUSUARIO: TIntegerField;
        C_ParcelasDESCONTOS: TBCDField;
        C_ParcelasDATAATRASADO: TDateField;
        C_ParcelasVALORJUROSMORA: TBCDField;
        C_ParcelasVALORMULTA: TBCDField;
        C_ParcelasCREDITOUTILIZADO: TBCDField;
        C_ParcelasCREDITOGERADO: TBCDField;
        C_ParcelasFORNECEDOR: TIntegerField;
        C_ParcelasJUROSPAGOS: TBCDField;
        C_ParcelasMULTA: TBCDField;
        C_ParcelasJUROSMORA: TBCDField;
        U_Parcelas: TIBUpdateSQL;
        C_TabelaPREVISAOENTREGA: TDateField;
        C_TabelaLOCALCLIENTE: TIntegerField;
        C_ItensORDEM: TIntegerField;
        C_ItensTAXAVEL: TStringField;
        C_ItensCOLUNA1: TStringField;
        C_ItensCOLUNA2: TStringField;
        C_ItensCOLUNA3: TStringField;
        C_ItensCOLUNA4: TStringField;
        C_ItensCLIENTEREF: TIntegerField;
        C_ItensSITUACAO: TStringField;
        C_ItensREFERENCIA: TStringField;
        C_ItensNOME: TStringField;
        C_ParcelasPGTOS: TBCDField;
        C_TabelaNOMECLIENTE: TStringField;
        C_ItensANALISADO: TStringField;
        C_TiposMovimentoCB_REFERENCIA: TStringField;
        C_TiposMovimentoTIT1_REFERENCIA: TStringField;
        C_TiposMovimentoTIT2_REFERENCIA: TStringField;
        C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField;
        C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField;
        C_TiposMovimentoTIT1_SITUACAO: TStringField;
        C_TiposMovimentoTIT2_SITUACAO: TStringField;
        C_TiposMovimentoATUALIZACUSTO: TStringField;
        C_TiposMovimentoATUALIZAPRECO: TStringField;
        C_TiposMovimentoINCLUIDESCONTO: TStringField;
        C_TiposMovimentoATUALIZAPRECOMANUAL: TStringField;
        C_TabelaINCLUIDESCONTO: TStringField;
        C_TabelaATUALIZACUSTO: TStringField;
        C_TabelaATUALIZAPRECO: TStringField;
        C_TabelaATUALIZAPRECOMANUAL: TStringField;
        C_ItensATUALIZOUCUSTO: TStringField;
        C_ItensATUALIZOUPRECO: TStringField;
        C_ItensI_FATORLUCRO: TFloatField;
        C_ItensLUCRO: TFloatField;
        C_ItensINDICELUCRO: TFloatField;
        C_ItensFRETEPROPORCIONAL: TFloatField;
        C_TabelaicDescontoParcelas: TCurrencyField;
        C_PlanosPagamentoTIPO: TStringField;
        C_PlanosPagamentoPERIODICIDADE: TIntegerField;
        C_PlanosPagamentoESQUEMAPARCELAS: TStringField;
        C_PlanosPagamentoTIPOENTRADA: TStringField;
        C_PlanosPagamentoCARENCIAENTRADA: TStringField;
        C_PlanosPagamentoVALIDADE: TDateField;
        C_PlanosPagamentoDESATIVADO: TStringField;
        C_ItensMESCLADO: TStringField;
        Q_Mesclagens: TIBQuery;
        U_Mesclagens: TIBUpdateSQL;
        C_Mesclagens: TClientDataSet;
        C_MesclagensDS: TDataSource;
        C_TiposMovimentoCB_STATUS: TStringField;
        C_TiposMovimentoSTATUSPADRAO: TStringField;
        C_TiposMovimentoCB_STATUSITENS: TStringField;
        C_ItensQ_Mesclagens: TDataSetField;
        C_MesclagensENTRADAITEMMESCLA: TIntegerField;
        C_MesclagensENTRADAITEM_ORIGINAL: TIntegerField;
        C_MesclagensQUANTIDADE: TBCDField;
        C_MesclagensIDITEM: TIntegerField;
        C_MesclagensQTDMAXIMA: TBCDField;
        C_MesclagensENTRADA_ORIGINAL: TIntegerField;
        C_MesclagensOLDQUANTIDADE: TBCDField;
        C_ItensUltrapassouMesclagem: TBooleanField;
        C_ItensSTATUS: TStringField;
        C_TiposMovimentoSTATUSPADRAOITENS: TStringField;
        C_TabelaUSUARIO: TStringField;
        C_TabelaicEnderecoEntrega: TStringField;
        C_LocaisEntregaENDERECOENTREGA: TStringField;
        C_LocaisEntregaCIDADEENTREGA: TStringField;
        C_LocaisEntregaUFENTREGA: TStringField;
        C_LocaisEntregaCEPENTREGA: TStringField;
        C_LocaisEntregaPAISENTREGA: TIntegerField;
        C_LocaisEntregaFONEENTREGA: TStringField;
        Q_Status: TIBQuery;
        P_Status: TDataSetProvider;
        C_Status: TClientDataSet;
        C_StatusSTATUS: TStringField;
        C_StatusDESCRICAO: TStringField;
        C_StatusORDEM: TIntegerField;
        C_TabelalkStatus: TStringField;
        C_MesclagensFECHAR_ORIGINAL: TStringField;
        C_ItensCODIGOFORN: TStringField;
        C_TiposMovimentoCB_CODIGOFORN: TStringField;
        C_TiposMovimentoTIT1_CODIGOFORN: TStringField;
        C_TiposMovimentoTIT2_CODIGOFORN: TStringField;
        C_TabelaSTATUSOLD: TStringField;
        C_ItensSTATUSOLD: TStringField;
        C_ItensNUMEROLOTE: TStringField;
        C_ItensVALIDADE: TDateField;
        C_TiposMovimentoCB_IMPRIMIROP: TStringField;
        C_TiposMovimentoCB_PGTOS: TStringField;
        C_TiposMovimentoCB_TOPRINTER: TStringField;
        C_TiposMovimentoCB_GERARNUM: TStringField;
        C_ItensCONTROLEVALIDADE: TStringField;
        C_ItensI_SEMLUCRO: TFloatField;
        IBEventos_Entradas: TIBEvents;
        C_ItensSAIDAITEM: TIntegerField;
        C_ItensVENDEDOR: TIntegerField;
        C_TiposMovimentoTIPOORIGEM: TIntegerField;
        C_ParcelasORIGEM_APAGAR: TIntegerField;
        C_ParcelasIDGERADOR_APAGAR: TIntegerField;
        C_ItensUNIDADE: TStringField;
        C_ItensFATOR: TFloatField;
        C_Unidades: TClientDataSet;
        P_Unidades: TDataSetProvider;
        Q_Unidades: TIBQuery;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_UnidadesINTEIRA: TStringField;
        C_ItenslkUnidade: TStringField;
        C_ItensCUSTOCONTABIL: TFloatField;
        C_ItensCUSTOMEDIO_ANT: TFloatField;
        C_ItensCUSTOCONTABIL_ANT: TFloatField;
        C_ItensNOVOPRECO: TFloatField;
        C_ItensI_CUSTOMEDIO: TFloatField;
        C_ItensI_PRECOCOMPRA: TFloatField;
        C_ItensBAIXAESTOQUE: TStringField;
        Q_EntradasItensFilhos: TIBQuery;
        U_EntradasItensFilhos: TIBUpdateSQL;
        C_EntradasItensFilhos: TClientDataSet;
        C_EntradasItensFilhosENTRADAITEMFILHO: TIntegerField;
        C_EntradasItensFilhosIDITEM: TIntegerField;
        C_EntradasItensFilhosITEM: TIntegerField;
        C_EntradasItensFilhosQUANTIDADE: TBCDField;
        C_EntradasItensFilhosCODIGO: TStringField;
        C_EntradasItensFilhosDESCRICAO: TStringField;
        C_EntradasItensFilhosCUSTOMEDIO: TFloatField;
        C_EntradasItensFilhosCUSTOCONTABIL: TFloatField;
        C_EntradasItensFilhosUNIDADE: TStringField;
        C_EntradasItensFilhosFATOR: TFloatField;
        C_EntradasItensFilhosDS: TDataSource;
        C_ItensTrocouItem: TBooleanField;
        C_ItensOLDITEM: TIntegerField;
        C_ItensQ_EntradasItensFilhos: TDataSetField;
        C_EntradasItensFilhoslkUnidFilho: TStringField;
        C_EntradasItensFilhosUNIDADEOLD: TStringField;
        C_ItensALMOXARIFADO: TIntegerField;
        C_TabelaALMOXPADRAO: TIntegerField;
        C_TiposMovimentoDIASVALIDADE: TIntegerField;
        C_TiposMovimentoALMOXPADRAO: TIntegerField;
        C_ItensOldUnidade: TStringField;
        Q_MensagensOperacoes: TIBQuery;
        P_MensagensOperacoes: TDataSetProvider;
        C_MensagensOperacoes: TClientDataSet;
        C_MensagensOperacoesMENSAGEMOPERACAO: TIntegerField;
        C_MensagensOperacoesDESCRICAO: TStringField;
        C_MensagensOperacoesDS: TDataSource;
        C_EntradasItensFilhosQTDE: TBCDField;
        C_TabelaUFORIGEM: TStringField;
        C_TabelaSERIENOTA: TStringField;
        C_TabelaMODELO: TStringField;
        C_TabelaCIF_FOB: TStringField;
        C_TabelaDATANOTA: TDateField;
        Q_CFOPs: TIBQuery;
        C_CFOPs: TClientDataSet;
        C_CFOPsDESCRICAO: TStringField;
        P_CFOPs: TDataSetProvider;
        C_CFOPsDS: TDataSource;
        Q_CFOPs_CSTs: TIBQuery;
        P_CFOPs_CSTs: TDataSetProvider;
        C_CFOPs_CSTs: TClientDataSet;
        C_CSTsDESCRICAO: TStringField;
        C_CFOPs_CSTsDS: TDataSource;
        C_TabelalkCFOP: TStringField;
        C_TiposMovimentoCB_ICMS: TStringField;
        C_TiposMovimentoTIT1_ICMS: TStringField;
        C_TiposMovimentoTIT2_ICMS: TStringField;
        C_TiposMovimentoPOSSUIICMS: TStringField;
        C_TiposMovimentoPOSSUIIPI: TStringField;
        C_TiposMovimentoPOSSUIISS: TStringField;
        C_TiposMovimentoCONTABILIZAICMS: TStringField;
        C_TiposMovimentoTIT1_TVA: TStringField;
        C_TiposMovimentoTIT2_TVA: TStringField;
        C_TiposMovimentoCB_TVA: TStringField;
        C_TiposMovimentoSERIE: TStringField;
        C_TiposMovimentoMODELODOC: TStringField;
        C_TiposMovimentoTIT1_IPI: TStringField;
        C_TiposMovimentoTIT2_IPI: TStringField;
        C_TiposMovimentoCB_IPI: TStringField;
        C_TabelaValorIPICalc: TIBBCDField;
        C_ItenslkCST: TStringField;
        C_ItensSITUACAOECF: TStringField;
        C_TabelaTOTALCalc: TCurrencyField;
        C_ItenslkCFOP: TStringField;
        C_TiposMovimentoCB_CFOP: TStringField;
        C_TiposMovimentoTIT1_CFOP: TStringField;
        C_TiposMovimentoTIT2_CFOP: TStringField;
        C_TabelaF_BAIRRO: TStringField;
        C_TabelaF_CPF_CNPJ: TStringField;
        C_TabelaF_INSCRICAO_EST: TStringField;
        C_PlanosPagamentoMENORVALOR: TBCDField;
        Q_SitECF: TIBQuery;
        P_SitECF: TDataSetProvider;
        C_SitECF: TClientDataSet;
        C_SitECFSITUACAOECF: TStringField;
        C_SitECFDESCRICAO: TStringField;
        C_ItenslkSitECF: TStringField;
        C_TiposMovimentoCB_DESCONTOITEM: TStringField;
        C_TiposMovimentoCB_COMPENSACAO: TStringField;
        C_TiposMovimentoCB_COMPENSACAONOCUSTO: TStringField;
        C_TabelaCB_NOTAFISCAL: TStringField;
        C_TiposMovimentoCB_NOTAFISCAL: TStringField;
        C_TabelaNOTAORIGEM: TIntegerField;
        C_ItensCFOPENTRADA: TStringField;
        C_TiposMovimentoCFOPASSOCIADO: TStringField;
        C_TabelaCFOPENTRADA: TStringField;
        C_CFOPsCFOP: TStringField;
        C_CFOPsPAI: TStringField;
        C_TabelaCFOPNOTA: TStringField;
        C_ItensCFOPCST: TStringField;
        C_CSTsCFOP_VENDA: TStringField;
        C_CSTsCFOP_COMPRA: TStringField;
        C_CSTsCFOP_DEVOLUCAO: TStringField;
        C_MesclagensFATOR: TFloatField;
        C_MesclagensUNIDADE: TStringField;
        Q_Almoxarifado: TIBQuery;
        P_Almoxarifado: TDataSetProvider;
        C_Almoxarifado: TClientDataSet;
        C_AlmoxarifadoALMOXARIFADO: TIntegerField;
        C_AlmoxarifadoDESCRICAO: TStringField;
        C_ItenslkAlmoxarifado: TStringField;
        C_TabelaCB_ENTRADAPRECOVENDA: TStringField;
        C_TiposMovimentoCB_ENTRADAPRECOVENDA: TStringField;
        C_ItensI_INDEXADOR: TIntegerField;
        C_TabelaINDEXADOR: TIntegerField;
        C_ParcelasINDEXADOR: TIntegerField;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        C_TabelalkIndexador: TStringField;
        C_TabelaFONTE: TStringField;
        C_TabelaBAIXAESTOQUEFISCAL: TStringField;
        C_ItensBAIXAESTOQUEFISCAL: TStringField;
        C_TiposMovimentoBAIXAESTOQUEFISCAL: TStringField;
        C_TabelaTM_BAIXAESTOQUEFISCAL: TStringField;
        Q_Vendedores: TIBQuery;
        P_Vendedores: TDataSetProvider;
        C_Vendedores: TClientDataSet;
        C_VendedoresFAVORECIDO: TIntegerField;
        C_VendedoresCODIGO: TStringField;
        C_VendedoresNOME: TStringField;
        C_VendedoresCOMISSAO: TBCDField;
        C_VendedoresLOGOTIPO: TStringField;
        C_TabelaVENDEDOR: TIntegerField;
        C_TabelalkVendedor: TStringField;
        C_ItensIDTRIBFEDERAL: TIntegerField;
        C_TabelaESPECIE: TStringField;
        C_ItensI_IDTRIBFEDERAL: TIntegerField;
        C_ItensFABRICACAO: TDateField;
        C_TabelaPDV: TIntegerField;
        C_ItensPDV: TIntegerField;
        C_ParcelasPDV: TIntegerField;
        C_CSTsTIPOMOVIMENTO: TIntegerField;
        C_CSTsCFOPASSOCIADO: TStringField;
        C_CSTsCFOPFORAESTADO: TStringField;
        C_ItensCSTPISCOFINS: TStringField;
        C_ItensI_NCM: TStringField;
        C_ItensCST: TStringField;
        C_CSTsCST: TStringField;
        C_TabelaEMPRESA: TIntegerField;
        C_ItensEMPRESA: TIntegerField;
        C_ParcelasEMPRESA: TIntegerField;
        C_TiposMovimentoCB_CSTPADRAO: TStringField;
        C_TiposMovimentoCST_PADRAO: TStringField;
        C_TiposMovimentoCB_PRECO: TStringField;
        C_ItensI_IDENTIFICACAO: TStringField;
        C_ItensI_ITEM: TIntegerField;
        C_TiposMovimentoCALCULAPISCOFINS: TStringField;
        Q_CSTs: TIBQuery;
        P_CSTs: TDataSetProvider;
        C_CSTs: TClientDataSet;
        C_CSTs_DS: TDataSource;
        C_CSTsCST2: TStringField;
        C_CSTsDESCRICAO2: TStringField;
        C_ItenslookUpCSTs: TStringField;
        Q_CSTs_IPI: TIBQuery;
        P_CSTs_IPI: TDataSetProvider;
        C_CSTs_IPI: TClientDataSet;
        C_CSTs_IPI_DS: TDataSource;
        C_CSTs_IPICSTIPI: TStringField;
        C_CSTs_IPIDESCRICAO: TStringField;
        Q_CSTs_PisCofins: TIBQuery;
        P_CSTs_PisCofins: TDataSetProvider;
        C_CSTs_PisCofins: TClientDataSet;
        C_CSTs_PisCofins_DS: TDataSource;
        C_CSTs_PisCofinsCSTPISCOFINS: TStringField;
        C_CSTs_PisCofinsDESCRICAO: TStringField;
        C_ItenslookUpCSTsPisCofins: TStringField;
        C_ItenslookUpCSTsIPI: TStringField;
        C_MesclagensEMPRESA: TIntegerField;
        C_TabelaFRETEINCLUSO: TStringField;
        C_ItensQUANTIDADEVOLUME: TFloatField;
        C_ItensSUBTOTALITEM: TFloatField;
        C_ItensCUSTOMEDIO: TFloatField;
        C_ItensRATEIODESCONTO: TFloatField;
        C_ItensRATEIOSEGURO: TFloatField;
        C_ItensRATEIOFRETE: TFloatField;
        C_ItensRATEIODESPESAS: TFloatField;
        C_ItensCUSTOCONTABILOLD: TFloatField;
        C_ItensOLDQUANTIDADE: TFloatField;
        C_ItensCOMPENSACAOCUSTO: TFloatField;
        C_ItensBASECALCICMSPROD: TFloatField;
        C_ItensBASECALCSUBSTPROD: TFloatField;
        C_ItensVALORICMSPROD: TFloatField;
        C_ItensVALORICMSSUBSTPROD: TFloatField;
        C_ItensVALORISENTASPROD: TFloatField;
        C_ItensVALORIPIPROD: TFloatField;
        C_ItensVALORPISPROD: TFloatField;
        C_ItensVALORCOFINSPROD: TFloatField;
        C_ItensIPI: TFloatField;
        C_ItensALIQIPI: TFloatField;
        C_ItensCSTIPI: TStringField;
        C_ItensALIQICMS: TFloatField;
        C_ItensALIQPIS: TFloatField;
        C_ItensALIQCOFINS: TFloatField;
        C_ItensREDUCAOCST: TFloatField;
        C_ItensDESCONTO: TFloatField;
        C_ItensTVA: TFloatField;
        C_ItensIMPORTACAO: TIntegerField;
        C_ItensFRETE: TFloatField;
        C_ItensSEGURO: TFloatField;
        C_ItensOUTRASDESPESAS: TFloatField;
        C_ItensSEMLUCRO: TFloatField;
        C_ItensFATORPRECO: TFloatField;
        C_TabelaPERCENTUALTAX: TBCDField;
        C_PlanosPagamentoJUROS: TBCDField;
        C_PlanosPagamentoPDESCONTO: TBCDField;
        C_PlanosPagamentoPERCENTUALENTRADA: TBCDField;
        C_TabelaFRETEEXTERNO: TBCDField;
        C_TabelaDESCONTO: TBCDField;
        C_TabelaFRETE: TBCDField;
        C_TabelaOUTRASDESPESAS: TFloatField;
        C_TabelaJUROS: TFloatField;
        C_TabelaIMPOSTO: TFloatField;
        C_TabelaPJUROS: TFloatField;
        C_TabelaTOTALITENS: TFloatField;
        C_TabelaTOTALITENS123: TFloatField;
        C_TabelaDESCONTOITENS: TFloatField;
        C_TabelaTOTALOLD: TFloatField;
        C_TabelaBASEIMPOSTO: TFloatField;
        C_TabelaBASEINCLUSO: TFloatField;
        C_TabelaIMPOSTO_INCLUSO: TFloatField;
        C_TabelaREDUCOESBASE: TFloatField;
        C_TabelaACRESCIMOSBASE: TFloatField;
        C_TabelaVOLUMES: TFloatField;
        C_TabelaOLDDESCONTO: TBCDField;
        C_TabelaVALORSEGURO: TFloatField;
        C_TabelaBASECALCICMS: TFloatField;
        C_TabelaVALORICMS: TFloatField;
        C_TabelaBASECALCSUBST: TFloatField;
        C_TabelaVALORICMSSUBST: TFloatField;
        C_TabelaVALORIPI: TFloatField;
        C_TabelaPESOBRUTO: TFloatField;
        C_TabelaPESOLIQUIDO: TFloatField;
        C_TabelaALIQICMSCOMPRA: TBCDField;
        C_TabelaVALORISENTAS: TFloatField;
        C_TabelaVALOROUTRASICMS: TFloatField;
        C_TabelaVALORISENTASIPI: TFloatField;
        C_TabelaVALOROUTRASIPI: TFloatField;
        C_TabelaPOSSUIICMS: TStringField;
        C_TabelaPOSSUIIPI: TStringField;
        C_TabelaCONTABILIZAICMS: TStringField;
        C_TabelaPAGOINVOICE: TFloatField;
        C_ItensPDESCONTO: TFloatField;
        C_ItensI_PESOBRUTO: TBCDField;
        C_ItensI_PESOLIQUIDO: TBCDField;
        C_ItensI_ESTOQUEVOLUME: TBCDField;
        C_ItensQTDRECEBIDA: TBCDField;
        C_ItensPRECOVENDA: TBCDField;
        C_ItensPRECOVENDAPRODUTOSPRECO: TBCDField;
        C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField;
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure C_TabelaTIPOMOVIMENTOChange(Sender: TField);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure C_TabelaFAVORECIDOChange(Sender: TField);
        procedure C_ItensITEMChange(Sender: TField);
        procedure C_ItensPRECOChange(Sender: TField);
        procedure C_TabelaDESCONTOChange(Sender: TField);
        procedure C_ItensBeforePost(DataSet: TDataSet);
        procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
        procedure C_ItensAfterPost(DataSet: TDataSet);
        procedure C_TabelaFRETEChange(Sender: TField);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure C_TabelaPLANOPAGAMENTOChange(Sender: TField);
        procedure C_TabelaPJUROSChange(Sender: TField);
        procedure C_ParcelasNewRecord(DataSet: TDataSet);
        procedure C_ParcelasBeforePost(DataSet: TDataSet);
        procedure C_TabelaNUMEROChange(Sender: TField);
        procedure C_TabelaTAXChange(Sender: TField);
        procedure C_ItensAfterDelete(DataSet: TDataSet);
        procedure DMComponentPesquisar4_Dados(Sender: TObject);
        procedure C_ItensQUANTIDADEChange(Sender: TField);
        procedure C_TabelaPERCENTUALTAXChange(Sender: TField);
        procedure Q_LocaisEntregaBeforeOpen(DataSet: TDataSet);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure C_ParcelasVALORValidate(Sender: TField);
        procedure C_ItensNewRecord(DataSet: TDataSet);
        procedure C_ItensITEMValidate(Sender: TField);
        procedure C_TabelaDATAChange(Sender: TField);
        procedure C_MesclagensNewRecord(DataSet: TDataSet);
        procedure C_ItensBeforeDelete(DataSet: TDataSet);
        procedure C_TabelaLOCALCLIENTEChange(Sender: TField);
        procedure C_LocaisEntregaAfterClose(DataSet: TDataSet);
        procedure C_TabelaSTATUSValidate(Sender: TField);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure IBEventos_EntradasEventAlert(Sender: TObject;
            EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
        procedure C_TabelaPOSSUITAXChange(Sender: TField);
        procedure C_ItensUNIDADEChange(Sender: TField);
        procedure C_TabelaREDUCOESBASEChange(Sender: TField);
        procedure C_TabelaTIPOMOVIMENTOValidate(Sender: TField);
        procedure C_TabelaBAIXAESTOQUEChange(Sender: TField);
        procedure C_TabelaAfterScroll(DataSet: TDataSet);
        procedure C_EntradasItensFilhosNewRecord(DataSet: TDataSet);
        procedure C_EntradasItensFilhosITEMChange(Sender: TField);
        procedure C_EntradasItensFilhosUNIDADEChange(Sender: TField);
        procedure C_TabelaALMOXPADRAOChange(Sender: TField);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_TabelaBASECALCICMSChange(Sender: TField);
        procedure C_TabelaNUMEROValidate(Sender: TField);
        procedure C_TabelaF_CPF_CNPJValidate(Sender: TField);
        procedure C_ItensDESCONTOValidate(Sender: TField);
        procedure C_ItensDESCONTOChange(Sender: TField);
        procedure C_ItensPDESCONTOChange(Sender: TField);
        procedure C_ItensUNIDADEValidate(Sender: TField);
        procedure C_TabelaINDEXADORChange(Sender: TField);
        procedure C_TabelaBAIXAESTOQUEFISCALChange(Sender: TField);
        procedure RecalcItens();
        procedure C_ItensPRECOVENDAChange(Sender: TField);
        procedure C_ItensIPIChange(Sender: TField);
        procedure C_ItensVALORIPIPRODChange(Sender: TField);
        procedure C_ItensVALORICMSPRODChange(Sender: TField);
        procedure C_ItensALIQICMSChange(Sender: TField);
        procedure C_ItensBASECALCICMSPRODChange(Sender: TField);
    private

        DMContabil: TDMContabilidade;
        nSeqParcelas, nSeqFilhos, nSeqMescla: Integer;
        bFromTotal, bCalculandoParcelas, bVerifica: boolean;
        procedure CalcularImposto;
        function NotaValida: boolean;
        function AtualizarDataHoraAlteracao_Item(idItem: integer): boolean;
        //    procedure AtualizarCustoPrecos;
    protected
        sNumeroGerado: string;
        bInDesconto: Boolean;

        function ItemChangeGetPreco: double; override;
        procedure CalcReducoesPorDesconto;

    public
        { Public declarations }
        bFaturandoOperacao, bPopulando, bMesclando, bFromPlanoPg, bPrecoVendaPP: Boolean;
        sPerformance: string;
        sWhereAdicional: string;
        nTotalValorIPI, nTotalBCICMS, nTotalValorICMS, nTotalBCICMSST, nTotalValorICMSST: Currency;

        nOrdemDigItens: Integer;

        procedure AtualizaItensFilhos;
        procedure ApagarMesclagem;
        procedure ApagarItensFilhos;
        procedure CarregarItensFilhos;
        procedure ApagarFilhos;

        procedure AplicarStatusAosItens(Sender: string);

        function GetMovimentos(sTipo: string): Integer; virtual;

        procedure ParcelasParaTotalFinal;
        procedure RatearDifProxParcelas(nParcelaDif: Integer; nDiferenca: Currency);
        procedure RefreshParcelas(bCancelados: boolean = false);
        function SomaParcelas: Currency;
        procedure JurosParcelas;
        procedure GerarParcelamento(nEntradaFixa: Currency = 0; bManterParcelas: Boolean = false);
        function PlanoPgtoComEntrada: Boolean;

        function EstoqueItem(IDItem: Integer): string;

        function TipoMovimento(FieldName: string): string;
        procedure AtualizaTotalFinal;

        function ContabilidadeAtivado: boolean;
        procedure ContabilidadeDesativado;
        procedure CriaContabilidade;
        procedure Contabiliza;
        procedure MostraContabilidade;
        /////////////////////////////////
    end;

implementation
uses DM_Projeto, Funcoes, Frm_Contabilidade, DM_Financeiro,
    Rpt_PedidosCompra, DM_DigitacaoItens, TDM_Projeto, DM_ItensIdentificacao;

{$R *.DFM}

procedure TDMEntradas.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    nOrdemDigItens := 0;

    if DMContabil <> nil then
        DMContabil.Iniciar;

    nSeqParcelas := 0;
    nSeqMescla := 0;

    if not C_TiposMovimento.Active then
        C_TiposMovimento.Open;

    if not C_Almoxarifado.Active then
        C_Almoxarifado.Open;
    //    C_ItensPreco.DisplayFormat := DMProjeto.sCasasDecimais;
    //    C_ItensQUANTIDADE.DisplayFormat := DMProjeto.sCasasDecimais;
    //    C_ItensSubTotal.DisplayFormat := DMProjeto.sCasasDecimais;
    //    C_ItensSUBTOTALITEM.DisplayFormat := DMProjeto.sCasasDecimais;
end;

procedure TDMEntradas.C_TabelaTIPOMOVIMENTOChange(Sender: TField);
begin
    inherited;
    {Capturando o NextID}
    C_TiposMovimento.Locate('TipoMovimento', Sender.asInteger, []);

    C_TabelaAtualizaCusto.Value := TipoMovimento('ATUALIZACUSTO');
    C_TabelaAtualizaPreco.Value := TipoMovimento('ATUALIZAPRECO');
    C_TabelaAtualizaPrecoManual.Value := TipoMovimento('ATUALIZAPRECOMANUAL');
    C_TabelaIncluiDesconto.Value := TipoMovimento('INCLUIDESCONTO');

    // LegisFiscal
    C_TabelaPossuiICMS.Value := TipoMovimento('POSSUIICMS');
    C_TabelaPossuiIPI.Value := TipoMovimento('POSSUIIPI');
    C_TabelaContabilizaICMS.Value := TipoMovimento('CONTABILIZAICMS');
    C_TabelaSerieNota.value := TipoMovimento('SERIE');
    //C_TabelaModelo.value          := iif(C_TabelaModelo.IsNull, TipoMovimento('MODELODOC'), C_TabelaModelo.value);
    C_TabelaCB_NotaFiscal.value := TipoMovimento('CB_NotaFiscal');
    ////////////////////////////////
    C_TabelaCB_ENTRADAPRECOVENDA.Value := TipoMovimento('CB_ENTRADAPRECOVENDA');

    if (C_TiposMovimentoStatusPadrao.asVariant <> null) then
        C_TabelaStatus.Value := C_TiposMovimentoStatusPadrao.Value; //O change deste campo atualiza os status dos itens;

end;

procedure TDMEntradas.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaEMPRESA.Value := DMProjeto.nEmpresaLogada;
    C_TabelaPDV.Value := DMPRojeto.nPDV;
    C_TabelaVolumes.Value := 0;
    //  C_TabelaDesconto.Value := 0;
    C_TabelaFrete.Value := 0;
    C_TabelaTotal.Value := 0;
    C_TabelaPERCENTUALTAX.VAlue := 0;
    C_TabelaJUROS.Value := 0;
    C_TabelaOUTRASDESPESAS.Value := 0;
    C_TabelaIMPOSTO.Value := 0;
    C_TabelaBASEIMPOSTO.Value := 0;
    C_TabelaBASEINCLUSO.Value := 0;
    C_TabelaTotalItens.Value := 0;
    C_TabelaTotalItens123.Value := 0;
    C_TabelaDescontoItens.Value := 0; {Descontos por valor acumulados}
    C_TabelaPJuros.Value := 0;

    C_TabelaUsuario.Value := DMProjeto.sLoginName;

    // LegisFiscal
    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.value, []);

    C_TabelaDatanota.value := DMProjeto.dDataSistema;
    C_TabelaSerienota.value := TipoMovimento('SERIE');
    C_TabelaESPECIE.value := 'NF';
    C_TabelaValorSeguro.value := 0;
    C_TabelaBaseCalcICMS.value := 0;
    C_TabelaValorICMS.value := 0;
    C_TabelaBaseCalcSubst.value := 0;
    C_TabelaValorICMSSubst.value := 0;
    C_TabelaValorIPI.value := 0;
    C_TabelaPesoBruto.value := 0;
    C_TabelaPesoLiquido.value := 0;
    C_TabelaAliqICMSCompra.value := 0;
    C_TabelaValorIsentas.value := 0;
    C_TabelaValorOutrasICMS.value := 0;
    C_TabelaValorIsentasIPI.value := 0;
    C_TabelaValorOutrasIPI.value := 0;
    C_TabelaModelo.value := TipoMovimento('MODELODOC');

    C_TabelaFreteIncluso.Value := 'N';
    C_TabelaALMOXPADRAO.Value := StrToIntDef(TipoMovimento('ALMOXPADRAO'), 0);
    C_TabelaFreteExterno.Value := 0;

    // Felipe - Variavel para totalizar o valor de IPI digitado pelo usuario
    nTotalValorIPI := 0;
    nTotalBCICMS := 0;
    nTotalValorICMS := 0;
    nTotalBCICMSST := 0;
    nTotalValorICMSST := 0;
end;

function TDMEntradas.TipoMovimento;
begin
    result := '';

    try
        if (C_TiposMovimentoTipoMovimento.value <> C_TabelaTipoMovimento.Value) then
            C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

        result := C_TiposMovimento.FieldByName(FieldName).asString;
    except
        //Exceção só ocorre se o FieldName não for válido
        result := '';
    end;

end;

procedure TDMEntradas.C_TabelaFAVORECIDOChange(Sender: TField);
    function FornecedorField(FieldName: string): Variant;
    begin
        result := DMProjeto.C_LocalizarFav.FieldByName(FieldName).Value;
    end;

var
    nTabela: Integer;
    sN, sL: string;
begin
    bVerifica := true;
    inherited;
    bVerifica := false;

    {Corrigindo o PossuiTax - O Fornecedor pode estar Null}
    if C_TabelaPossuiTax.asVariant = null then
        C_TabelaPossuiTax.Value := TipoMovimento('POSSUITAX');

    if Sender.asVariant = null then
        exit;

    // LegisFiscal
    C_TabelaUFOrigem.value := FornecedorField('UF');
    //  C_TabelaF_BAIRRO.asVariant := FornecedorField('Bairro');
    //  C_TabelaF_CPF_CNPJ.asVariant := FornecedorField('CPF_CNPJ');
    //  C_TabelaF_INSCRICAO_EST.asVariant := FornecedorField('INSCRICAO_EST');
    C_TabelaFonte.AsVariant := FornecedorField('Fonte');

    if length(C_TabelaF_CPF_CNPJ.Text) = 11 then
        C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(C_TabelaF_CPF_CNPJ.Text) = 14 then
        C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';

    if C_TabelaUFOrigem.value <> DMProjeto.sUFEmpresa then
        begin
            sN := '6';
            sL := '2';
        end
    else
        begin
            sN := '5';
            sL := '1';
        end;
    C_TabelaCFOPNota.Value := sN + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);
    C_TabelaCFOPEntrada.Value := sL + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);
    //  if not (C_CSTs.Active) then
    //       C_CSTs.Active := True;
    //  C_CSTs.Locate('CST;TIPOMOVIMENTO', VarArrayOf([C_ItensCST.Value, C_TabelaTipoMovimento.value]), [loPartialKey]);
    //  if (sN = '5') Then
    //     C_ItensCFOPCST.Value := C_CSTscfopassociado.Value
    //  Else
    //     C_ItensCFOPCST.Value := C_CSTscfopforaestado.Value;

    if C_TabelaPossuiICMS.Value = 'S' then
        C_TabelaAliqICMSCompra.value := DMProjeto.AliquotaEstadoExterno(C_TabelaUFOrigem.value);

    {Previsão de Entrega do Fornecedor}
    if (C_TabelaTipoPadrao.Value = 102) then
        begin
            if (FornecedorField('DiasPeriodo') <> null) then
                C_TabelaPREVISAOENTREGA.Value := C_TabelaData.Value + FornecedorField('DiasPeriodo')
            else
                C_TabelaPREVISAOENTREGA.Value := C_TabelaData.Value + 7;
        end;

end;

procedure TDMEntradas.C_ItensITEMChange(Sender: TField);
var
    sL: string;
begin
    ApagarMesclagem;

    ApagarFilhos;

    C_ItensMesclado.Value := 'N';

    {Definindo a Unidade antes de tudo, pois o preço a ser capturado depende dela.}
    if (not bMesclando) and (Sender.asVariant <> null) and (DMProjeto.Parametro('PesquisaMultiUnidade') <> 'S') then
        C_ItensUNIDADE.AsVariant := DMProjeto.C_LocalizarItens.FieldByName('UNIDADEENTRADA').AsVariant;

    inherited;

    if Sender.asVariant = null then
        exit;

    if C_TabelaPossuiICMS.Value = 'S' then
        C_ItensALIQICMS.Value := C_TabelaAliqICMSCompra.value;

    C_ItensDescricao.value := DMProjeto.C_LocalizarItensDescricaoCompra.value;
    C_ItensReferencia.value := DMProjeto.C_LocalizarItensReferencia.value;
    C_ItensLucro.value := DMProjeto.C_LocalizarItensFatorLucro.value;
    C_ItensSemLucro.value := DMProjeto.C_LocalizarItensSemLucro.value;
    C_ItensCustoMedio_Ant.Value := DMProjeto.C_LocalizarItensCustoMedio.value;
    C_ItensCustoContabil_Ant.Value := DMProjeto.C_LocalizarItensCustoContabil.value;
    C_ItensI_PrecoCompra.Value := DMProjeto.C_LocalizarItensPrecoCompra.value;
    C_ItensControleValidade.Value := DMProjeto.C_LocalizarItensControleValidade.value;
    C_ItensHasChildren.value := DMProjeto.C_LocalizarItensHasChildren.value;

    // LegisFiscal
    C_ItensIdTribFederal.Value := DMProjeto.C_LocalizarItensIDTRIBFEDERAL.Value;
    C_ItensSituacaoECF.value := IIF(DMProjeto.C_LocalizarItensSituacaoECF.value = '',
        DMProjeto.C_LocalizarItensSituacaoECFGrupo.value,
        DMProjeto.C_LocalizarItensSituacaoECF.value);
    if C_ItensSituacaoECF.Value = '' then
        C_ItensSituacaoECF.Value := 'T';

    C_ItensCST.value := IIF(DMProjeto.C_LocalizarItensCST.value = '',
        DMProjeto.C_LocalizarItensCSTGrupo.value,
        DMProjeto.C_LocalizarItensCST.value);

    {Solicitação SPED}
    C_ItensALIQPIS.Value := DMProjeto.C_LocalizarItensALIQPIS.Value;
    C_ItensALIQCOFINS.Value := DMProjeto.C_LocalizarItensALIQCOFINS.Value;
    C_ItensCSTPISCOFINS.Value := DMProjeto.C_LocalizarItensCSTPISCOFINS.Value;
    //C_ItensCSTIPI.Value := DMProjeto.C_LocalizarItensCSTIPI.Value;
    C_ItensCSTIPI.Value := DMProjeto.C_LocalizarItensCSTIPIENTRADA.Value;
    C_ItensI_NCM.Value := DMProjeto.C_LocalizarItensNCM.Value;

    if C_ItensCST.Value = '' then
        C_ItensCST.Value := '000';

    if (C_TabelaFonte.value = 'S') and (C_TabelaUFOrigem.value = DMProjeto.sUFEmpresa) then
        C_ItensTVA.value := DMProjeto.C_LocalizarItensTVAFonte.value
    else
        C_ItensTVA.value := DMProjeto.C_LocalizarItensTVA.value;

    //Modificado para entrada de Itens com Redução de Base de Calculo
    // Foi criado em Itens c Campo ReducaoCSTEntrada

    C_ItensReducaoCST.value := DMProjeto.C_LocalizarItensReducaoCSTEntrada.value;
    {  C_ItensReducaoCST.value  := IIF(DMProjeto.C_LocalizarItensReducaoCST.value = -999,
                                      DMProjeto.C_LocalizarItensReducaoCSTGrupo.value,
                                      DMProjeto.C_LocalizarItensReducaoCST.value);}
    if (C_ItensReducaoCST.Value <= 0) or (C_ItensReducaoCST.IsNull) then
        C_ItensReducaoCST.Value := 0
    else
        C_ItensCST.Value := '020';

    if (C_TiposMovimentoCB_CSTPADRAO.Value = 'S') then
        C_ItensCST.value := C_TiposMovimentoCST_PADRAO.value;

    if C_TabelaUFOrigem.value <> DMProjeto.sUFEmpresa then
        begin
            sL := '2';
        end
    else
        begin
            sL := '1';
        end;

    if not (C_CFOPs_CSTs.Active) then
        C_CFOPs_CSTs.Active := True;

    if ((C_ItensCFOPCST.IsNull) or (C_ItensCFOPCST.AsString = '')) then
        begin
            C_CFOPs_CSTs.Locate('CST;TIPOMOVIMENTO', VarArrayOf([C_ItensCST.Value, C_TabelaTipoMovimento.value]), [loPartialKey]);
            if (C_TabelaUFORIGEM.value = 'EX') then
                C_ItensCFOPCST.Value := '3102'
            else if (sL = '1') then
                C_ItensCFOPCST.Value := C_CSTscfopassociado.Value
            else
                C_ItensCFOPCST.Value := C_CSTscfopforaestado.Value;
        end; //So Incluir sugestao do CFOPCST quando nao existir valor

    if C_TabelaPossuiIPI.value = 'S' then
        begin
            C_ItensIPI.value := DMProjeto.C_LocalizarItensIPICompra.value;
            C_ItensALIQIPI.Value := DMProjeto.C_LocalizarItensIPICompra.value;
        end;

    C_ItensI_PesoBruto.value := DMProjeto.C_LocalizarItensPesoBruto.value;
    C_ItensI_PesoLiquido.value := DMProjeto.C_LocalizarItensPesoLiquido.value;

    if C_ItensI_TipoItem.value in [1, 2] then
        begin
            if C_TabelaPossuiICMS.Value = 'S' then
                begin
                    C_ItensAliqICMS.value := IIF(DMProjeto.C_LocalizarItensAliqICMS.value = -999,
                        DMProjeto.C_LocalizarItensAliqICMSGrupo.value,
                        DMProjeto.C_LocalizarItensAliqICMS.value);
                end;

            if C_TabelaPossuiICMS.Value = 'S' then
                begin
                    if (C_ItensAliqICMS.value = DMProjeto.nICMSInterno) or (C_TabelaUFOrigem.value <> DMProjeto.sUFEmpresa) then
                        C_ItensAliqICMS.value := C_TabelaAliqICMSCompra.value;
                end
            else
                C_ItensAliqICMS.value := 0;
        end;

    //if C_ItensSituacaoECF.value <> 'T' then
//        if C_TabelaPossuiICMS.Value = 'S' then
//            begin
//                C_ItensBASECALCICMSPROD.Value := 0;
//                C_ItensAliqICMS.AsVariant := 0;
//            end;

    { Felipe - 11/05/2016 }
    C_ItensBASECALCICMSPROD.Value := IIF(C_ItensSITUACAOECF.Value = 'T', C_ItensSubTotal.Value, 0);
    C_ItensAliqICMS.AsVariant := IIF(C_ItensSITUACAOECF.Value = 'T', C_ItensALIQICMS.Value, 0);

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select CodigoForn from ItensForn where Fornecedor = :F and Item = :I ';
            ParamByName('F').asInteger := C_TabelaFavorecido.asInteger;
            ParamByName('I').asInteger := sender.asInteger;
            Open;

            if FieldByName('CodigoForn').asString <> '' then
                C_ItensCodigoForn.Value := FieldByName('CodigoForn').asString;
            Close;
        end;
    if (bPrecoVendaPP) then
        begin
            //    C_Itens.FieldByName('PrecoVenda').Value := C_Itens.FieldByName('PRECOVENDAPRODUTOSPRECO').Value;
            C_Itens.FieldByName('PrecoVenda').Value := DMProjeto.C_LocalizarItensPRECO.Value;
            C_Itens.FieldByName('FATORPRECO').Value := 1;
        end;
    try
        C_Itens.FieldByName('Quantidade').FocusControl;
    except
    end;

end;

procedure TDMEntradas.C_ItensPRECOChange(Sender: TField);
begin
    if ((Sender.asFloat < 0) and not (C_ItensI_TipoItem.Value = 6)) or
        ((Sender.asVariant = null) and not (C_ItensI_TipoItem.Value in [0, 4..6])) then
        begin
            Sender.asFloat := 0;
            exit;
        end;

    inherited;

    if not bSubTotalChange then
        begin
            C_ItensDESCONTO.Value := (C_ItensPRECO.Value * C_ItensPDESCONTO.Value) / 100;
            C_ItensSubTotal.Value := C_ItensQUANTIDADE.value * (C_ItensPRECO.Value - C_ItensDESCONTO.Value);

            if (C_ItensSITUACAOECF.Value <> '') and (C_ItensSITUACAOECF.Value <> null) then
                begin
                    C_ItensBASECALCICMSPROD.value := IIF(C_ItensSITUACAOECF.Value = 'T', C_ItensSubTotal.Value, 0);
                    C_ItensALIQICMS.Value := IIF(C_ItensSITUACAOECF.Value = 'T', C_ItensALIQICMS.Value, 0);
                    C_ItensVALORICMSPROD.value := Arredonda((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2)
                        // Felipe - Alterado função de Truncar para Arredondar para calcular igual ao SyncFiscal ao gerar os arquivos Sped
                end;
        end;
end;

procedure TDMEntradas.C_TabelaDESCONTOChange(Sender: TField);
var
    nMax: Currency;
    nBaseIncluso, nBaseImposto: Currency;
begin
    {Obrigando que o Desconto seja sempre negativo}
    if Sender.asCurrency > 0 then
        begin
            Sender.asCurrency := -Sender.asCurrency;
            exit;
        end;

    inherited;

    C_TabelaOldDesconto.Value := Sender.asCurrency;

    CalcReducoesPorDesconto;

    AtualizaTotalFinal;

end;

procedure TDMEntradas.C_ItensBeforePost(DataSet: TDataSet);
var
    nNovoCusto: Currency;
begin
    if (C_ItensQuantidade.asVariant = null) and (C_ItensI_TIPOITEM.Value in [1, 2]) then
        C_ItensQuantidade.Value := 0;
    if (C_ItensPreco.asVariant = null) and not (C_ItensI_TIPOITEM.Value in [4, 7]) then
        C_ItensPreco.Value := 0;

    inherited;
    C_ItensSubTotalItem.AsVariant := C_ItensSubTotal.AsVariant;

    // LegisFiscal
    if C_ItensSituacaoECF.value = 'T' then
        begin
            //  if C_TabelaPossuiICMS.Value = 'S' then begin
           //     C_ItensBaseCalcICMSProd.value := 0;
           //     C_ItensValorICMSProd.value := 0;
           //  end;
            // COMENTADO POR CESAR ( 09.01.14) ALGUMAS BASES DE CALCULOS NAO FICAM IGUAL AO SUBTOTAL DO ITEN. POR EX. NO CASO DE OUTRAS DESPESAS E SEGUROS
            if C_TabelaPossuiICMS.Value = 'S' then
                begin
                    if C_ItensReducaoCST.value > 0 then
                        C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant - ((C_ItensSubTotal.AsVariant * C_ItensReducaoCST.value) / 100)
                    else
                        //  C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant;
                        // COMENTADO POR CESAR ( 09.01.14) ALGUMAS BASES DE CALCULOS NAO FICAM IGUAL AO SUBTOTAL DO ITEN. POR EX. NO CASO DE OUTRAS DESPESAS E SEGUROS
                         //    C_ItensValorICMSProd.value := truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value)/100,2);
                end;

            if (C_ItensTVA.value > 0) then
                begin
                    C_ItensBaseCalcSubstProd.value := 0;
                    C_ItensValorICMSSubstProd.value := 0;
                    C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
                    if C_TabelaPossuiICMS.Value = 'S' then
                        C_ItensValorICMSSubstProd.value := ((C_ItensBaseCalcSubstProd.value * C_ItensAliqICMS.value) / 100) - C_ItensValorICMSProd.Value;
                end;
        end
    else if C_ItensSituacaoECF.value = 'F' then
        begin
            if (C_ItensTVA.value > 0) then
                begin
                    C_ItensBaseCalcSubstProd.value := 0;
                    if C_TabelaPossuiICMS.Value = 'S' then
                        C_ItensValorICMSSubstProd.value := 0;
                    C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
                    if C_TabelaPossuiICMS.Value = 'S' then
                        C_ItensValorICMSSubstProd.value := ((C_ItensBaseCalcSubstProd.value * C_ItensAliqICMS.value) / 100) - C_ItensValorICMSProd.Value;
                end;
        end
    else if (C_ItensSituacaoECF.value = 'I') then
        C_ItensValorIsentasProd.value := C_ItensSubTotal.value;

    //  if C_TabelaPossuiIPI.value = 'S' then begin
    //    C_ItensValorIPIProd.value := 0;
    //    C_ItensValorIsentasProd.value := 0;
    //    if C_ItensIPI.value > 0 then
    //      C_ItensValorIPIProd.value := (C_ItensSubTotal.value * C_ItensIPI.value)/100;
    //  end;

    C_ItensSubTotaL.AsVariant := C_ItensSubTotal.AsVariant;
    C_ItensSubTotalItem.AsVariant := C_ItensSubTotal.AsVariant;
    {Para o controle dos itens filhos e mesclados}
    C_ItensTrocouItem.Value := C_ItensITEM.Value <> C_ItensOldItem.Value;
    C_ItensOldItem.Value := C_ItensItem.Value;

    // Felipe - Adicionado em 21/01/2015 (Calcula o valor de Pis e Cofins e atribui valor para os campos de SaidasItens)
    if (C_TiposMovimentoCALCULAPISCOFINS.Value = 'S') then
        begin
            C_ItensVALORPISPROD.Value := Truncar(C_ItensSubTotal.Value * (C_ItensALIQPIS.Value / 100), 2);
            C_ItensVALORCOFINSPROD.Value := Truncar(C_ItensSubTotal.Value * (C_ItensALIQCOFINS.Value / 100), 2);
        end;

    if (C_ItensI_IDENTIFICACAO.Value = 'S') then
        begin
            DMProjeto.nIdItem := C_ItensI_ITEM.AsInteger;
            DMProjeto.nQuantItem := C_ItensQUANTIDADE.AsCurrency;
            DMProjeto.CriarForm('FrmItensIdentificacao', Self, True);
        end;
end;

procedure TDMEntradas.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
var
    TempDS: TClientDataSet;
    sControle, sModificados, sCompensacaoNoCusto: string;
    nValorDesc, nDescPe, nTotal_12: Currency;
    nFreteProp, nRateioDescItem: Double;
    nICMSAplicEntrada, nCustoContabil, nPrecoUnit: Currency;
    yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais: Currency;
    bPesquisaMultiUnidade: Boolean;
    SomaRateio: Currency;
begin
    inherited;
    bPesquisaMultiUnidade := (DMProjeto.Parametro('PesquisaMultiUnidade') = 'S');
    sPerformance := sPerformance + Format(SChavesGravacao, [DateTimeToStr(Now), C_TabelaIDMestre.asString]) + #13;

    // Felipe - Rateio de desconto nos itens da entrada (06/04/2015)
    SomaRateio := 0.00;
    if (C_TabelaDESCONTO.Value <> null) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.Eof do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIODESCONTO.Value := Abs((C_TabelaDesconto.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value)));
                    SomaRateio := SomaRateio + Abs(C_ItensRATEIODESCONTO.Value);
                    C_Itens.Post;
                    C_Itens.Next;
                end;
            SomaRateio := (Abs(C_TabelaDesconto.Value) - SomaRateio);
            C_Itens.First;
            C_Itens.Edit;
            C_ItensRATEIODESCONTO.Value := Abs((C_ItensRATEIODESCONTO.Value + SomaRateio));
            C_Itens.Post;
            C_Itens.EnableControls;
        end;

    // Felipe - Rateio de outras despesas nos itens da entrada (06/04/2015)
    SomaRateio := 0.00;
    if (C_TabelaOUTRASDESPESAS.Value <> null) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIODESPESAS.Value := (C_TabelaOUTRASDESPESAS.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value));
                    SomaRateio := SomaRateio + C_ItensRATEIODESPESAS.Value;
                    C_Itens.Post;
                    C_Itens.Next;
                end;
            SomaRateio := (C_TabelaOUTRASDESPESAS.Value - SomaRateio);
            C_Itens.First;
            C_Itens.Edit;
            C_ItensRATEIODESPESAS.Value := (C_ItensRATEIODESPESAS.Value + SomaRateio);
            C_Itens.Post;
            C_Itens.EnableControls;
        end;

    {Está aqui para que possa pegar também a modificação do Número do Movimento}
    if C_Parcelas.RecordCount > 0 then
        begin
            {Garantindo atualização de campos da invoice: Fornecedor, Número da Nota, Títulos, etc.(POST)}
            C_Parcelas.First;
            while not C_Parcelas.EOF do
                begin
                    C_Parcelas.Edit;
                    C_Parcelas.Post;
                    C_Parcelas.Next
                end;
        end;

    {Gerando o Campo Ordem - para Impressões e Consultas - Segue a ordem de digitacao dos itens}
    {Aproveitando para gerar também o Rateio de Desconto de cada item}
    nDescPe := C_TabelaDesconto.asCurrency + C_TabelaDescontoItens.asCurrency;

    TempDS := TClientDataSet.Create(self);
    TempDS.CloneCursor(C_Itens, true);

    nTotal_12 := 0;

    TempDS.First;
    while not TempDS.EOF do
        begin
            if (TempDS.FieldByName('I_TipoItem').asInteger in [1, 2]) then
                nTotal_12 := nTotal_12 + TempDS.FieldByName('SubTotal').asCurrency;

            TempDS.Next;
        end;

    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);
    sCompensacaoNoCusto := C_TiposMovimentoCB_COMPENSACAONOCUSTO.Value;

    {Calculando os Custos e novos Preços}
    {A tabela de Itens só é atualizada após o apply - conforme configurado no tipo do movimento}
    if C_TabelaTipoPadrao.Value in [101, 105] then
        begin
            if nTotal_12 > 0 then
                nFreteProp := ((C_TabelaFrete.Value +
                    C_TabelaOutrasDespesas.Value +
                    C_TabelaJuros.Value +
                    C_TabelaFreteExterno.AsCurrency) / nTotal_12)
            else
                nFreteProp := 0;

            //// comentado por cesar 25-05-2015 esse teste esta sendo feito em outro ponto pegando apenas o valor do imposto federal
            /// esse calculo era feito levando em consideração apenas a tributação da empresa. E agora passou a ser feito por item.
        // COFINS e PIS - Crédito para Lucro Real
            if (DMProjeto.sTipoTributEmpresa = 'R') then
                DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais)
            else
                yImpostosFederais := 0;

            TempDS.First;

            while not TempDS.EOF do
                begin
                    TempDS.Edit;

                    TempDS.FieldByName('Importacao').AsInteger := TempDS.FieldByName('Importacao').AsInteger + 1;

                    if ((TempDS.FieldByName('I_TipoItem').asInteger in [1, 2, 3]) and (C_TabelaTotalItens123.asCurrency > 0)) then
                        begin
                            //TempDS.FieldByName('RateioDesconto').asCurrency := (nDescPe * (TempDS.FieldByName('SubTotal').asCurrency / C_TabelaTotalItens123.asCurrency) * -1);

                            //TempDS.FieldByName('RATEIODESPESAS').asCurrency := ( C_TabelaOUTRASDESPESAS.Value * (TempDS.FieldByName('SubTotal').asCurrency / C_TabelaTotalItens123.asCurrency));
                            TempDS.FieldByName('RATEIOFRETE').asCurrency := (C_TabelaFRETE.Value * (TempDS.FieldByName('SubTotal').asCurrency / C_TabelaTotalItens123.asCurrency));
                            TempDS.FieldByName('RATEIOSEGURO').asCurrency := (C_TabelaVALORSEGURO.Value * (TempDS.FieldByName('SubTotal').asCurrency / C_TabelaTotalItens123.asCurrency));

                            if (Esquerda(TempDS.FieldByName('UsoTipoItem').AsString, 1) = 'D') then
                                begin
                                    nValorDesc := StrToFloatDef(SeparaStrings(TempDS.FieldByName('UsoTipoItem').AsString, '=', 2), 0) / 100;
                                    //TempDS.FieldByName('RateioDesconto').asCurrency := TempDS.FieldByName('RateioDesconto').asCurrency + (nValorDesc * TempDS.FieldByName('Preco').asCurrency);
                                end;
                            //        If TempDS.FieldByName('RateioDesconto').asCurrency > 0 Then {Acrescido Pois, o Valor Sempre Vem Negativo}
                            //          TempDS.FieldByName('RateioDesconto').asCurrency := -TempDS.FieldByName('RateioDesconto').asCurrency;
                        end;

                    nRateioDescItem := TempDS.FieldByName('RateioDesconto').asCurrency;

                    {CUSTO CONTABIL}
                    if TempDS.FieldByName('I_TipoItem').asInteger in [1, 2] then
                        begin
                            TempDS.FieldByName('FreteProporcional').asFloat := nFreteProp;

                            {Definindo Custo Contábil de Compra}
                            if C_TabelaPossuiICMS.Value = 'S' then
                                if (TempDS.FieldByName('SITUACAOECF').AsString = 'F') and (C_TabelaBASECALCICMS.AsCurrency > 0) then
                                    nICMSAplicEntrada := C_TabelaALIQICMSCOMPRA.Value
                                else
                                    nICMSAplicEntrada := TempDS.FieldByName('ALIQICMS').Value;

                            if C_TabelaPossuiICMS.Value = 'S' then
                                if (TempDS.FieldByName('CST').Value <> '') and (nICMSAplicEntrada > 0) and
                                    (TempDS.FieldByName('ReducaoCST').Value > 0) and (Copy(TempDS.FieldByName('CST').Value, 2, 1) = '2') then
                                    nICMSAplicEntrada := Arredondar(nICMSAplicEntrada * (1 - TempDS.FieldByName('ReducaoCST').Value / 100), 1, false);

                            ////////////////////    Calculo dos Custo dos produtos  ///////////////////////////////////////////////////////////////

                            nPrecoUnit := (TempDS.FieldByName('Preco').asFloat - TempDS.FieldByName('Desconto').asFloat);

                            ///////// CALUCLOS CESAR 24-05-2015 //////
                            if (DMProjeto.sTipoTributEmpresa = 'R') then
                                begin // LUCRO REAL
                                    yImpostosFederais := Tempds.FieldByName('AliqPis').AsCurrency + Tempds.FieldByName('AliqCofins').AsCurrency;
                                    if (TempDS.FieldByName('SITUACAOECF').AsString = 'F') or (TempDS.FieldByName('SITUACAOECF').AsString = 'I') then // SE O PRODUTO FOR 'F' ou 'I' NÃO TEM CREDITO DE ICMS
                                        nICMSAplicEntrada := 0;
                                    nCustoContabil := ((nPrecoUnit * (1 - (nICMSAplicEntrada + yImpostosFederais) / 100)) +
                                        (nRateioDescItem / TempDS.FieldByName('QUANTIDADE').asCurrency)) +
                                        (TempDS.FieldByName('RATEIOFRETE').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FIELDBYNAME('VALORICMSSUBSTPROD').ASCURRENCY / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('RATEIODESPESAS').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('VALORIPIPROD').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency);

                                end; // if (DMProjeto.sTipoTributEmpresa = 'R') then

                            if (DMProjeto.sTipoTributEmpresa = 'P') then
                                begin // LUCRO Presumido

                                    yImpostosFederais := 0; // presumido não tem credito de Imposto Federal
                                    if (TempDS.FieldByName('SITUACAOECF').AsString = 'F') or (TempDS.FieldByName('SITUACAOECF').AsString = 'I') then // SE O PRODUTO FOR 'F' ou 'I' NÃO TEM CREDITO DE ICMS
                                        nICMSAplicEntrada := 0;
                                    nCustoContabil := ((nPrecoUnit * (1 - (nICMSAplicEntrada + yImpostosFederais) / 100)) +
                                        (nRateioDescItem / TempDS.FieldByName('QUANTIDADE').asCurrency)) +
                                        (TempDS.FieldByName('RATEIOFRETE').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FIELDBYNAME('VALORICMSSUBSTPROD').ASCURRENCY / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('RATEIODESPESAS').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('VALORIPIPROD').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency);

                                end; // if (DMProjeto.sTipoTributEmpresa = 'P') then

                            if (DMProjeto.sTipoTributEmpresa = 'N') then
                                begin // LUCRO Simples Nacional

                                    yImpostosFederais := 0; // Simples não tem credito de Imposto federal
                                    if (TempDS.FieldByName('SITUACAOECF').AsString = 'F') or (TempDS.FieldByName('SITUACAOECF').AsString = 'I') then // SE O PRODUTO FOR 'F' ou 'I' NÃO TEM CREDITO DE ICMS
                                        nICMSAplicEntrada := 0;
                                    nCustoContabil := ((nPrecoUnit * (1 + (DMProjeto.nICMSInterno - nICMSAplicEntrada) / 100)) +
                                        (nRateioDescItem / TempDS.FieldByName('QUANTIDADE').asCurrency)) +
                                        (TempDS.FieldByName('RATEIOFRETE').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FIELDBYNAME('VALORICMSSUBSTPROD').ASCURRENCY / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('RATEIODESPESAS').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency) +
                                        (TempDS.FieldByName('VALORIPIPROD').asCurrency / TempDS.FieldByName('QUANTIDADE').asCurrency);

                                end; // if (DMProjeto.sTipoTributEmpresa = 'N') then

                            //                            nPrecoUnit := (TempDS.FieldByName('Preco').asFloat - TempDS.FieldByName('Desconto').asFloat);
                            //                            nCustoContabil := ((nPrecoUnit * (1 + (TempDS.FieldByName('IPI').asCurrency - nICMSAplicEntrada - yImpostosFederais) / 100)) +
                            //                                (nRateioDescItem / TempDS.FieldByName('QUANTIDADE').asCurrency)) + (nPrecoUnit * nFreteProp);
                            //                            if (TempDS.FieldByName('SITUACAOECF').AsString = 'F') and (TempDS.FieldByName('TVA').AsCurrency > 0) then
                            //                                nCustoContabil := nCustoContabil + (nPrecoUnit + nPrecoUnit * TempDS.FieldByName('TVA').AsCurrency / 100) * (DMProjeto.nICMSInterno / 100);
                                                        //1  * iif(TempDS.FieldByName('SITUACAOECF').AsString = 'F',(DMProjeto.nICMSInterno/100) + 1,1) +
                                                        //                           iif(TempDS.FieldByName('SITUACAOECF').AsString = 'F',TempDS.FieldByName('TVA').AsCurrency * DMProjeto.nICMSInterno/1000,0) +

                            if (sCompensacaoNoCusto = 'S') and (TempDS.FieldByName('CompensacaoCusto').asCurrency <> 0) then
                                nCustoContabil := nCustoContabil * (1 + TempDS.FieldByName('CompensacaoCusto').asCurrency / 100);

                            {Calculando o Novo Custo Contábil}

                            if bPesquisaMultiUnidade then
                                TempDS.FieldByName('CustoContabil').asFloat := nCustoContabil
                            else
                                TempDS.FieldByName('CustoContabil').asFloat := nCustoContabil /
                                    IIF(TempDS.FieldByName('Fator').asFloat = 0, 1, TempDS.FieldByName('Fator').asFloat);
                        end;

                    if TempDS.FieldByName('I_TipoItem').asInteger = 3 then
                        begin
                            TempDS.FieldByName('CustoContabil').asFloat := (TempDS.FieldByName('Preco').asFloat - TempDS.FieldByName('Desconto').asFloat);
                        end;

                    TempDS.Post;

                    TempDS.Next;
                end;

        end;

    TempDS.Free;

    sPerformance := sPerformance + Format(SOrdemDigitacao, [DateTimeToStr(Now)]) + #13;

end;

procedure TDMEntradas.C_ItensAfterPost(DataSet: TDataSet);
begin
    RecalcItens();
end;

procedure TDMEntradas.RecalcItens();
var
    TempDS: TClientDataSet;
    nTotalItens, nTotal123: Currency;
    nJurosDesc, nBasePeNota, nBaseImposto, nBaseIncluso: Currency;
    nIDItem: Integer;
    nVolumes, nDescProporcional: double;
    nValorIsentas, nValorOutrasICMS, nValorIPI: currency;
    nBaseCalcICMS, nValorICMS, nValorICMS_Calc_ST: currency;
    nBaseSubst, nValorSubst, nRetidoICMS, nPesoBruto, nPesoLiquido: Currency;
begin
    inherited;

    TempDS := TClientDataSet.Create(self);

    with TempDS do
        begin
            CloneCursor(C_Itens, true);

            {Calculando o Total dos Itens}
            {Calculando a Base para o Imposto e o Valor do Tax}
            nTotalItens := 0;
            nTotal123 := 0;
            nBaseImposto := 0;
            nBaseIncluso := 0;
            nJurosDesc := 0; //Para computar os Juros e Descontos Percentuais;
            nBasePeNota := 0;
            nVolumes := 0;

            nBaseCalcICMS := 0;
            nValorICMS := 0;
            nValorICMS_Calc_ST := 0;
            nValorIsentas := 0;
            nValorOutrasICMS := 0;
            nValorIPI := 0;
            nBaseSubst := 0;
            nValorSubst := 0;
            nPesoBruto := 0;
            nPesoLiquido := 0;
            nRetidoICMS := 0;

            First;
            while not EOF do
                begin
                    if FieldByName('I_TipoItem').asInteger <> 7 then
                        nTotalItens := nTotalItens + FieldByName('SubTotal').asCurrency;

                    if FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
                        nTotal123 := nTotal123 + FieldByName('SubTotal').asCurrency
                    else if (FieldByName('I_TipoItem').asInteger = 6) and (FieldByName('I_Percentual').asFloat = 0) then
                        nBasePeNota := nBasePeNota + FieldByName('SubTotal').asCurrency;

                    {Volumes}
                    {Se a unidade é inteira considera a quantidade, caso contrario, considera-se como um volume.
                     Isto ocorre por exemplo, com queijo, carne, etc. onde a unidade é kilo, mas o volume é um só.}
                    if FieldByName('I_TipoItem').asInteger = 1 then
                        nVolumes := nVolumes + IIF(C_ItensUnidadeInteira.Value = 'S', FieldByName('Quantidade').asFloat, 1);

                    // LegisFiscal
                    if C_TabelaPossuiICMS.Value = 'S' then
                        nBaseCalcICMS := nBaseCalcICMS + FieldByName('BaseCalcICMSProd').asCurrency;

                    nBaseSubst := nBaseSubst + FieldByName('BaseCalcSubstProd').asCurrency;
                    nValorSubst := nValorSubst + FieldByName('VALORICMSSUBSTPROD').asCurrency;
                    nValorIPI := nValorIPI + FieldByName('ValorIPIProd').asCurrency;

                    if FieldByName('SituacaoECF').AsString = 'I' then
                        nValorIsentas := nValorIsentas + FieldByName('SubTotal').asCurrency
                    else
                        begin
                            if C_TabelaPossuiICMS.Value = 'S' then
                                begin
                                    nValorOutrasICMS := nValorOutrasICMS + (FieldByName('SubTotal').asCurrency - FieldByName('BaseCalcICMSProd').asCurrency);
                                    nValorICMS := nValorICMS + (FieldByName('BaseCalcICMSProd').asCurrency * FieldByName('AliqICMS').asCurrency) / 100;
                                    if FieldByName('SituacaoECF').AsString = 'F' then
                                        nValorICMS_Calc_ST := nValorICMS_Calc_ST + (FieldByName('subtotalitem').asCurrency * FieldByName('AliqICMS').asCurrency) / 100;
                                end;
                        end;
                    nPesoBruto := nPesoBruto + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoBruto').asFloat);
                    nPesoLiquido := nPesoLiquido + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoLiquido').asFloat);
                    Next;
                end;

            if C_Tabela.State = dsBrowse then
                C_Tabela.Edit;

            C_TabelaTOTALITENS123.Value := nTotal123;
            C_TabelaTOTALITENS.Value := nTotal123;
            nTotalValorIPI := nValorIPI;
            nTotalBCICMS := nBaseCalcICMS;
            nTotalValorICMS := nValorICMS;
            nTotalBCICMSST := nBaseSubst;
            nTotalValorICMSST := nValorSubst;

            //if C_Tabela.State = dsBrowse then
//              C_Tabela.Edit;

            // LegisFiscal
            //if ((C_TabelaBaseCalcSubst.value = 0) or (C_TabelaTipoPadrao.value <> 101) and (C_TabelaPossuiICMS.value = 'S')) then begin
            //#Retirado PAra Não Haver Calc Pelo Sistema #//if (C_TabelaPossuiICMS.value = 'S') then begin
            //#Retirado PAra Não Haver Calc Pelo Sistema #//  C_TabelaBaseCalcSubst.value := nBaseSubst;
            //#Retirado PAra Não Haver Calc Pelo Sistema #//  C_TabelaBaseCalcICMS.value := nBaseCalcICMS+C_TabelaDesconto.value+C_TabelaFrete.value+C_TabelaOutrasDespesas.value;
            //#Retirado PAra Não Haver Calc Pelo Sistema #//  C_TabelaValorICMS.value := nValorICMS + Truncar((((C_TabelaFrete.Value + C_TabelaOutrasDespesas.Value)*C_TabelaAliqICMSCompra.value)/100),2);;

              {Aplicando o descon  to (proporcional) na Base de Cálculo}
            try
                nDescProporcional := C_TabelaDesconto.Value / (C_TabelaTotalItens.value + C_TabelaOutrasDespesas.value + C_TabelaFrete.value);
            except
                nDescProporcional := 0;
            end;
            if nDescProporcional < 0 then
                begin
                    nDescProporcional := 0;

                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaBaseCalcICMS.Value := Truncar(C_TabelaBaseCalcICMS.Value * (1-nDescProporcional),2);
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaValorICMS.Value := Truncar(C_TabelaValorICMS.Value * (1-nDescProporcional),2);
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaBaseCalcSubst.value := Truncar(nBaseSubst * (1-nDescProporcional),2);

                //    C_TabelaValorISS.value := nValorISS;
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaValorIsentas.value := nValorIsentas;
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaValorOutrasICMS.value := nValorOutrasICMS;
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaValorIPI.value := nValorIPI;
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//if C_TabelaBaseCalcSubst.value > 0 then
                    //#Retirado PAra Não Haver Calc Pelo Sistema #//  C_TabelaValorICMSSubst.value := Truncar(((C_TabelaBaseCalcSubst.value * DMProjeto.nICMSInterno)/100) - nValorICMS_Calc_ST,2);

                    C_TabelaPesoBruto.value := nPesoBruto;
                    C_TabelaPesoLiquido.value := nPesoLiquido;
                end
            else
                //#Retirado PAra Não Haver Calc Pelo Sistema #//  C_TabelaValorIPICalc.value := nValorIPI;
                //

                {A Base para Imposto é considerado valor Bruto - antes de descontos}
                //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaBASEIMPOSTO.Value := C_TabelaValorIPI.value + C_TabelaValorSeguro.value + C_TabelaValorICMSSubst.value;
                //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaBASEINCLUSO.Value := nBaseIncluso;
                {
                if nTotal123 > 0 then begin
                  nBaseImposto := nBaseImposto * (1 + ((nBasePeNota+C_TabelaDesconto.asCurrency)/nTotal123));
                  nBaseIncluso := nBaseIncluso * (1 + ((nBasePeNota+C_TabelaDesconto.asCurrency)/nTotal123));
                end;
                }
                // C_TabelaIMPOSTO.asCurrency         := nBaseImposto * (C_TabelaPERCENTUALTAX.Value/100);
                // C_TabelaIMPOSTO_INCLUSO.asCurrency := nBaseIncluso * (C_TabelaPERCENTUALTAX.Value/100);

                //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaTotalItens.asCurrency    := nTotalItens;
                //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaTotalItens123.asCurrency := nTotal123;
                //#Retirado PAra Não Haver Calc Pelo Sistema #//C_TabelaDescontoItens.asCurrency := nBasePeNota;  //DescontoItens acumula os Descontos por Valor.
                C_TabelaVolumes.asFloat := nVolumes;
        end;
    TempDS.Free;
end;

procedure TDMEntradas.C_TabelaFRETEChange(Sender: TField);
begin
    inherited;
    AtualizaTotalFinal;
end;

procedure TDMEntradas.AtualizaTotalFinal;
begin
    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    C_TabelaTOTALCalc.asCurrency := C_TabelaTOTALITENS.asCurrency +
        C_TabelaVALORIPI.asCurrency +
        C_TabelaVALORICMSSUBST.asCurrency +
        C_TabelaDESCONTO.asCurrency + {O Desconto é negativo}
    C_TabelaFRETE.asCurrency +
        C_TabelaValorSeguro.asCurrency +
        C_TabelaOUTRASDESPESAS.asCurrency +
        C_TabelaJUROS.asCurrency;
    if C_TabelaTipoPadrao.value <> 101 then
        C_TabelaTotal.value := C_TabelaTOTALCalc.value;
    {Outras despesas não incluem os juros cobrados pelo plano de pgto, este valor agora é o campo Juros}

    {Recalculo automatico das parcelas}
    if (State = dmsNormal) and (bFromPlanoPg) and not bFromTotal and not bCalculandoParcelas and
        (C_TabelaPlanoPagamento.Value > 0) and (C_Parcelas.RecordCount > 0) then
        begin
            bFromTotal := true;
            try
                if C_TabelaPagoInvoice.Value > 0 then
                    JurosParcelas
                else
                    GerarParcelamento;
            finally
                bFromTotal := false;
            end;
        end;

end;

function TDMEntradas.SomaParcelas;
var
    nBalance: Currency;
begin
    nBalance := 0;
    if C_Parcelas.Active then
        begin
            C_Parcelas.First;
            while not C_Parcelas.EOF do
                begin
                    nBalance := nBalance + C_ParcelasValor.Value;
                    C_Parcelas.Next;
                end;
        end;
    result := nBalance;
end;

function TDMEntradas.EstoqueItem(IDItem: Integer): string;
begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'Select Estoque from Itens where ITEM = :IT ';
    Q_SQL.Params[0].asinteger := IDItem;
    Q_SQL.Open;

    Result := FormatCurr('#,##0.0##', (Q_SQL.FieldByName('Estoque').asFloat / C_ItensFator.Value));

    Q_SQL.Close;

end;

procedure TDMEntradas.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var
    i: Integer;
    s: string;
    bBaixoEstoque, bValido, bQtdZerada: boolean;
    nEstoque: Double;
    nBalance: Currency;
    aEstoque: TStringList;
    TmpDS: TClientDataSet;
    nFator: Currency;
begin
    inherited;

    try
        if C_Itens.Active and (C_Itens.State <> dsBrowse) then
            C_Itens.Post;
    except
    end;

    if C_TabelaSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(2119);
            bSkip := true;
            exit;
        end;

    bQtdZerada := False;

    {Verificando se existem itens válidos => subtotal > 0}
    if (C_TabelaTipoPadrao.Value in [101, 102]) then
        with C_Itens do
            begin
                First;
                while not EOF do
                    begin
                        bValido := (C_ItensSubTotal.Value > 0);
                        if bValido then
                            break;
                        Next;
                    end;
                if not bValido then
                    begin
                        DlgMsg.ShowMsg(2120);
                        bSkip := true;
                        exit;
                    end;
            end;

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Itens, true);
            DisableControls;
            First;
            while not EOF do
                begin
                    if (C_TabelaTipoPadrao.Value = 101) and (C_ItensControleValidade.value = 'S') and
                        ((C_ItensNumeroLote.Value = '') or C_ItensValidade.IsNull or (not C_ItensValidade.IsNull and (C_ItensValidade.value <= DMProjeto.dDataSistema))) then
                        begin
                            DlgMsg.ShowMsg(6008);
                            bSkip := true;
                            Exit;
                        end;
                    if (FieldByName('Item').asInteger > 0) and (FieldByName('I_TipoItem').asInteger = 1) then
                        begin
                            if FieldByName('Unidade').AsString = '' then
                                begin
                                    DlgMsg.ShowMsg(929, ['a Unidade do Item "' + FieldByName('Descricao').AsString + '"']);
                                    EnableControls;
                                    bSkip := true;
                                    Exit;
                                end;
                            if FieldByName('Fator').AsCurrency = 0 then
                                begin
                                    nFator := DMProjeto.SetFator(FieldByName('Item').AsInteger, FieldByName('Descricao').AsString, FieldByName('Unidade').AsString);
                                    if nFator > 0 then
                                        begin
                                            Edit;
                                            FieldByName('Fator').AsCurrency := nFator;
                                            Post;
                                        end
                                    else
                                        begin
                                            bSkip := true;
                                            EnableControls;
                                            Exit;
                                        end;
                                end;
                        end;
                    if (FieldByName('Quantidade').AsCurrency <= 0.00) or (FieldByName('Preco').AsCurrency <= 0.00) then
                        begin
                            bQtdZerada := True;
                        end;

                    Next;
                end;
            Free;
        end;

    sPerformance := Format(SInicioGravacao, [DateTimeToStr(Now), C_TabelalkTipoMovimento.asString, C_TabelaNumero.asString]) + #13;

    if (bQtdZerada) then
        begin
            Application.MessageBox(pChar('Existem Itens Com a Quantidade ou Preço Zerado!' + #13 + #13 + 'ENTRADA NÃO SERÁ SALVA!'), 'Erro!', mb_ok);
            bSkip := true;
            Exit;
        end;

    {Validação de Gravação}
    {Não permitindo número Duplicado - Se for '' será gerado após IDs (Clausula OR) }
    if bAlteracao and (C_TabelaNumero.Value <> '') then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Count(Entrada) as Existentes from Entradas ' +
                    'where TipoMovimento = :TM and Numero = :N and Entrada <> :E and ' +
                    'situacao <> ''C'' and favorecido = :fav ';
                ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
                ParamByName('N').asString := C_TabelaNumero.Value;
                ParamByName('E').asInteger := C_TabelaIDMestre.asInteger;
                ParamByName('fav').AsInteger := C_TabelaFAVORECIDO.AsInteger;
                Open;

                i := FieldByName('Existentes').asInteger;
                Close;

                if (i > 0) then
                    begin
                        bSkip := true;
                        DlgMsg.ShowMsg(2102, [C_TabelaNumero.Value, C_TabelalkTipoMovimento.Value]);
                        Exit;
                    end;
            end;

    {Existência do Favorecido}
    if C_TabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(643); //Faltou escolher o Fornecedor!
            bSkip := true;
            exit;
        end;

    {Verificando Balance das Parcelas x Total Final}
    if not C_Parcelas.IsEmpty then
        begin
            nBalance := SomaParcelas;
            if (nBalance > 0) and (ABS(nBalance - C_TabelaTotal.asCurrency) > 0.009) then
                begin
                    if DlgMsg.ShowMsg(2100) <> 100 then
                        begin
                            bSkip := true;
                            exit;
                        end
                    else
                        begin //Ajustando automaticamente
                            JurosParcelas; //Para apenas recalcular as parcelas
                        end;
                end;
        end;

    sPerformance := sPerformance + Format(SValidaGravacao, [DateTimeToStr(Now)]) + #13;

    if (TipoMovimento('CB_GERARNUM') <> 'S') and (C_TabelaNumero.Value = '') then
        begin
            DlgMsg.ShowMsg(2333);
            bSkip := true;
            exit;
        end;

    {Verificando Duplicidade}
    {Não permitindo número Duplicado}
    if (TipoMovimento('CB_GERARNUM') <> 'S') or (bAlteracao) then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Count(Entrada) as Existentes from Entradas ' +
                    'where TipoMovimento = :TM and Numero = :N and Entrada <> :E ' +
                    'and favorecido = :fav ';
                ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
                ParamByName('N').asString := C_TabelaNumero.Value;
                ParamByName('E').asInteger := C_TabelaIDMestre.asInteger;
                ParamByName('fav').AsInteger := C_TabelaFAVORECIDO.AsInteger;
                Open;

                i := FieldByName('Existentes').asInteger;
                Close;

                if (i > 0) then
                    begin
                        bSkip := true;
                        DlgMsg.ShowMsg(2102, [C_TabelaNumero.Value, C_TabelalkTipoMovimento.Value]);
                        Exit;
                    end;
            end;

    RecalcItens;

    if (C_TabelaTipoPadrao.value = 101) and not NotaValida then
        begin
            bSkip := true;
            exit;
        end;
end;

procedure TDMEntradas.DMComponentGravar3_AposApply(Sender: TObject);
var nEstoque: double;
begin
    inherited;
    sPerformance := sPerformance + Format(SGravandoTabela, [DateTimeToStr(Now), C_TabelaNumero.asString]) + #13;

    {Atualizando o Endereço do Fornecedor}
    DMProjeto.AtualizarFornecedorCompra(C_TabelaFavorecido.Value,
        C_TabelaF_ENDERECO.Value,
        C_TabelaF_CIDADE.VAlue,
        C_TabelaF_UF.Value, C_TabelaF_CEP.Value,
        C_TabelaF_EMAIL.Value);

    sPerformance := sPerformance + Format(SGravandoCliente, [DateTimeToStr(Now)]) + #13;

    {Atualizando Status das Mesclagens}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Execute procedure PP_StatusEntrada :E ';
            params[0].asInteger := C_TabelaIDMestre.Value;
            ExecSQL;
        end;
    // Sera feito na hora da geracao do arquivo
    //  if (C_TabelaPossuiICMS.value = 'S') and (TipoMovimento('CB_CFOP') = 'S') then begin
    //  if (C_TabelaPossuiICMS.value = 'S')  then begin
    //    with DMProjeto.StoreProcedure do begin
    //       StoredProcName := 'PP_ENTRADASCFOP';
    //       ParamByName('nEntrada').AsInteger := C_TabelaIDMestre.value;
    //       ExecProc;
    //    end;
    //  end;

      {Atualizando TransaçõesEstoque: Cliente, Data}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Update TransacoesEstoque set Favorecido = :F, Data = :D ' +
                'where IDGerador = :ENTRADA';
            ParamByName('F').asInteger := C_TabelaFavorecido.Value;
            ParamByName('D').asDateTime := C_TabelaData.Value;
            ParamByName('ENTRADA').asInteger := C_TabelaIDMestre.Value;
            ExecSQL;
        end;

    if C_TabelaTipoPadrao.value in [101, 105, 106] then
        begin
            Contabiliza;

            if not DMContabil.Salvar(C_TabelaIDMestre.value) then
                raise Exception.Create(DMProjeto.GetMsg(3117));
        end;
    ///////////////////////////
end;

procedure TDMEntradas.C_TabelaPLANOPAGAMENTOChange(Sender: TField);
    procedure LimparParcelas;
    begin
        with C_Parcelas do
            begin
                DisableControls;
                First;
                while not eof do
                    Delete;

                EnableControls;
            end;
    end;
begin
    inherited;
    {Geração das Parcelas fica no Change dos Juros}

    bFromPlanoPg := true;

    if C_TabelaPlanoPagamento.asVariant = null then
        begin
            LimparParcelas;
            C_Tabela.Edit;
            C_TabelaJuros.asCurrency := 0;
            exit;
        end
    else
        C_TabelaPJuros.Value := C_PlanosPagamentoJuros.Value;

    bFromPlanoPg := false;

end;

procedure TDMEntradas.C_TabelaPJUROSChange(Sender: TField);
begin
    inherited;
    if bFromPlanoPg then
        GerarParcelamento
    else
        JurosParcelas;
end;

procedure TDMEntradas.GerarParcelamento;
    procedure LimparParcelas;
    begin
        with C_Parcelas do
            begin
                DisableControls;
                First;
                while not eof do
                    Delete;

                EnableControls;
            end;
    end;
var
    nDif, nTotalParcelas, nDescontoLimpo: Currency;
    nValorVenda, nCentavos: Currency;
    sEntrada, sParcelas, Str: string;
    slParcelas: TStringList;
    i: Integer;
begin

    if bFaturandoOperacao then
        exit;

    if C_TabelaPlanoPagamento.asVariant = null then
        begin
            LimparParcelas;
            C_Tabela.Edit;
            C_TabelaJuros.asCurrency := 0;

            exit;

        end;

    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    {Parametros do Parcelamento}
    nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;
    nCentavos := 0.01 * C_PlanosPagamentoQtdParcelas.Value;

    if C_TabelaTipoPadrao.value = 101 then
        DMProjeto.GerarPlanoPgto(C_PlanosPagamento, nValorVenda, nEntradaFixa, C_TabelaPJuros.Value, C_TabelaDataNota.Value,
            C_TabelaPlanoPagamento.Value, sEntrada, sParcelas)
    else
        DMProjeto.GerarPlanoPgto(C_PlanosPagamento, nValorVenda, nEntradaFixa, C_TabelaPJuros.Value, C_TabelaData.Value,
            C_TabelaPlanoPagamento.Value, sEntrada, sParcelas);

    nTotalParcelas := 0;

    try
        {Gerando o Parcelamento}
        bCalculandoParcelas := true;

        if not bManterParcelas then
            LimparParcelas;

        if (sEntrada <> '') then
            begin

                if not bManterParcelas then
                    C_Parcelas.Append
                else
                    C_Parcelas.Edit;

                if not bManterParcelas then
                    begin
                        //Numero da Parcela
                        C_ParcelasParcela.AsString := SeparaStrings(sEntrada, ';', 1);

                        //Data do Vencimento
                        C_ParcelasVencimento.asString := SeparaStrings(sEntrada, ';', 2);
                    end;

                //Valor da Parcela
                C_ParcelasValor.asString := SeparaStrings(sEntrada, ';', 3);

                // Indexador da Parcela
                C_ParcelasINDEXADOR.AsVariant := C_TabelaINDEXADOR.AsVariant;

                if not bManterParcelas then
                    begin
                        C_ParcelasCompetencia.Value := C_TabelaData.Value;

                        C_ParcelasJurosPlano.asCurrency := 0;

                        C_ParcelasOrigem_APagar.Value := StrToIntDef(TipoMovimento('TipoOrigem'), 0);
                    end;

                nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

                if not bManterParcelas then
                    C_Parcelas.Post
                else
                    C_Parcelas.Next;

            end;

        if sParcelas <> '' then
            begin
                slParcelas := TStringList.Create;
                slParcelas.SetText(PChar(sParcelas));
                for i := 0 to slParcelas.Count - 1 do
                    begin
                        str := slParcelas[i];

                        if Str = '' then
                            Continue;

                        if not bManterParcelas then
                            C_Parcelas.Append
                        else
                            C_Parcelas.Edit;

                        if not bManterParcelas then
                            begin
                                //Numero da Parcela
                                C_ParcelasParcela.AsString := SeparaStrings(str, ';', 1);

                                //Data do Vencimento
                                C_ParcelasVencimento.asString := SeparaStrings(str, ';', 2);

                            end;

                        //Valor da Parcela
                        C_ParcelasValor.asString := SeparaStrings(str, ';', 3);

                        // Indexador da Parcela
                        C_ParcelasINDEXADOR.AsVariant := C_TabelaINDEXADOR.AsVariant;

                        if not bManterParcelas then
                            begin
                                C_ParcelasCompetencia.Value := C_TabelaData.Value;

                                C_ParcelasJurosPlano.asString := SeparaStrings(str, ';', 4);

                                if C_PlanosPagamentoPDesconto.Value > 0 then
                                    begin
                                        C_ParcelasVALORDESCANTECIPADO.asString := SeparaStrings(str, ';', 5);
                                        C_ParcelasDATAANTECIPACAO.asString := SeparaStrings(str, ';', 6);
                                    end;

                                C_ParcelasOrigem_APagar.Value := StrToIntDef(TipoMovimento('TipoOrigem'), 0);
                            end;

                        nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

                        if not bManterParcelas then
                            C_Parcelas.Post
                        else
                            C_Parcelas.Next;

                    end; //for i:=1 to ...

                slParcelas.Free;
            end;
    finally
        {Verificando se houve Juros que modificam o valor da venda, ou se houve desconto}
        {A atualização do Total fica por conta da função AtualizarTotalFinal no change dos campos}
        nDescontoLimpo := C_TabelaDesconto.asCurrency - C_TabelaicDescontoParcelas.asCurrency;

        C_Tabela.Edit;
        C_TabelaJuros.asCurrency := 0;
        C_TabelaicDescontoParcelas.asCurrency := 0;
        C_TabelaDESCONTO.asCurrency := nDescontoLimpo;

        if nTotalParcelas > 0 then
            begin
                nDif := nTotalParcelas - nValorVenda;
                if (nDif <> 0) and (ABS(nDif) <= nCentavos) then
                    begin
                        C_Parcelas.Last;
                        C_Parcelas.Edit;
                        C_ParcelasValor.asCurrency := C_ParcelasValor.asCurrency - nDif;
                        C_Parcelas.Post;
                    end
                else if nDif > 0 then {=> Juros}
                    C_TabelaJuros.asCurrency := nDif
                else if nDif < 0 then
                    begin {=> Desconto  (já neg.)}
                        C_TabelaDESCONTO.asCurrency := nDescontoLimpo + nDif;
                        C_TabelaicDescontoParcelas.asCurrency := nDif;
                    end;
            end;

        C_Parcelas.First;
        bCalculandoParcelas := False;
    end;

end;

procedure TDMEntradas.JurosParcelas;
var
    nDif, nTotalParcelas, nDescontoLimpo: Currency;
    nValorVenda, nCentavos: Currency;
    sEntrada, sParcelas, Str: string;
    slParcelas: TStringList;
    i: Integer;
begin
    if bFaturandoOperacao then
        exit;

    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    {Parametros do Parcelamento}
    nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;
    nCentavos := 0.01 * C_PlanosPagamentoQtdParcelas.Value;

    C_Parcelas.Locate('Parcela', 1, []); //Para posicionar na Entrada

    if C_TabelaPlanoPagamento.asVariant <> null then
        DMProjeto.GerarPlanoPgto(C_PlanosPagamento, nValorVenda, IIF(C_Parcelas.RecordCount = 1, 0,
            IIF(C_PlanosPagamentoEsquemaParcelas.Value <> 'S', C_ParcelasValor.Value, 0)),
            C_TabelaPJuros.Value, C_TabelaData.Value,
            C_TabelaPlanoPagamento.Value, sEntrada, sParcelas)
    else
        begin
            sEntrada := '1;' + DateTimeToStr(C_TabelaData.Value) + ';' + CurrToStr(nValorVenda);
            sParcelas := '';
        end;

    nTotalParcelas := 0;

    try
        {Gerando o Parcelamento}
        bCalculandoParcelas := true;

        if (sEntrada <> '') and C_Parcelas.Locate('Parcela', 1, []) then
            begin

                C_Parcelas.Edit;

                //Valor da Parcela
                C_ParcelasValor.asString := SeparaStrings(sEntrada, ';', 3);

                C_ParcelasCompetencia.Value := C_TabelaData.Value;

                C_ParcelasJurosPlano.asCurrency := 0;

                C_Parcelas.Post;

                nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

                C_Parcelas.Next;

            end;

        if sParcelas <> '' then
            begin
                slParcelas := TStringList.Create;
                slParcelas.SetText(PChar(sParcelas));
                for i := 0 to slParcelas.Count - 1 do
                    begin
                        str := slParcelas[i];

                        if Str = '' then
                            Continue;

                        C_Parcelas.Edit;

                        //Valor da Parcela
                        C_ParcelasValor.asString := SeparaStrings(str, ';', 3);

                        C_ParcelasCompetencia.Value := C_TabelaData.Value;

                        C_ParcelasJurosPlano.asString := SeparaStrings(str, ';', 4);

                        if C_PlanosPagamentoPDesconto.Value > 0 then
                            begin
                                C_ParcelasVALORDESCANTECIPADO.asString := SeparaStrings(str, ';', 5);
                                C_ParcelasDATAANTECIPACAO.asString := SeparaStrings(str, ';', 6);
                            end;

                        C_Parcelas.Post;

                        nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

                        C_Parcelas.Next;

                    end; //for i:=1 to ...
                slParcelas.Free;
            end;
    finally
        {Verificando se houve Juros que modificam o valor da venda, ou se houve desconto}
        {A atualização do Total fica por conta da função AtualizarTotalFinal no change dos campos}
        nDescontoLimpo := C_TabelaDesconto.asCurrency - C_TabelaicDescontoParcelas.asCurrency;

        C_Tabela.Edit;
        C_TabelaJuros.asCurrency := 0;
        C_TabelaicDescontoParcelas.asCurrency := 0;
        C_TabelaDESCONTO.asCurrency := nDescontoLimpo;

        if nTotalParcelas > 0 then
            begin
                nDif := nTotalParcelas - nValorVenda;
                if (nDif <> 0) and (ABS(nDif) <= nCentavos) then
                    begin
                        C_Parcelas.Last;
                        C_Parcelas.Edit;
                        C_ParcelasValor.asCurrency := C_ParcelasValor.asCurrency - nDif;
                        C_Parcelas.Post;
                    end
                else if nDif > 0 then {=> Juros}
                    C_TabelaJuros.asCurrency := nDif
                else if nDif < 0 then
                    begin {=> Desconto  (já neg.)}
                        C_TabelaDESCONTO.asCurrency := nDescontoLimpo + nDif;
                        C_TabelaicDescontoParcelas.asCurrency := nDif;
                    end;
            end;

        C_Parcelas.First;
        bCalculandoParcelas := False;
    end;

end;

function TDMEntradas.PlanoPgtoComEntrada: Boolean;
begin
    result := false;
    if C_TabelaPlanoPagamento.asVariant = null then
        exit;

    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    result := (C_PlanosPagamentoEsquemaParcelas.Value <> 'S');

end;

{Aqui devem ser colocados todos os campos numéricos para que fique com
 valor diferente de null}

procedure TDMEntradas.C_ParcelasNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nSeqParcelas);
    C_ParcelasEMPRESA.Value := DMProjeto.nEmpresaLogada;
    C_ParcelasID.Value := nSeqParcelas;
    C_ParcelasPDV.Value := DMPRojeto.nPDV;
    C_ParcelasValor.Value := 0;
    C_ParcelasValorPago.Value := 0;
    C_ParcelasStatus.Value := 1;
    C_ParcelasVALORDESCANTECIPADO.Value := 0;
    C_ParcelasJUROSPLANO.Value := 0;
    C_ParcelasDESCONTOS.Value := 0;
    C_ParcelasJUROSPAGOS.Value := 0;
    C_ParcelasVALORJUROSMORA.Value := 0;
    C_ParcelasVALORMULTA.Value := 0;
    C_ParcelasCREDITOGERADO.Value := 0;
    C_ParcelasCREDITOUTILIZADO.Value := 0;
    C_ParcelasJUROSMORA.Value := 0;
    C_ParcelasMULTA.Value := 0;
end;

{O BeforePost das Parcelas serve para definir os campos que só podem ter seus
 valores conhecidos após os campos básicos terem seus valores.  A Codificação
 abaixo está subentendendo que não poderá haver modificações para parcelas que
 já receberam pagamentos e que a classe ao gravar irá fazer uma varredura nas
 parcelas para Confirmação de Fornecedor, Titulo, etc.}

procedure TDMEntradas.C_ParcelasBeforePost(DataSet: TDataSet);
    function StatusTitulo(Vencimento, DataAtrasado: TDateTime): Integer;
    begin
        if DMProjeto.dDataSistema >= DataAtrasado then
            result := 3 {Em Atraso}
        else if (DMProjeto.dDataSistema < DataAtrasado) and (DMProjeto.dDataSistema >= Vencimento) then
            result := 2 {Vencido}
        else if DMProjeto.dDataSistema < Vencimento then
            result := 1;
    end;
begin
    inherited;
    if C_PlanosPagamentoPlanoPagamento.VAlue <> C_TabelaPlanoPagamento.Value then
        C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    C_ParcelasCOMPETENCIA.Value := C_TabelaData.Value;
    C_ParcelasDATAATRASADO.Value := DMProjeto.PrimeiroDiaUtil(C_ParcelasVencimento.Value, False);

    if C_PlanosPagamentoPDesconto.Value > 0 then
        begin
            C_ParcelasDATAANTECIPACAO.Value := C_ParcelasVencimento.Value -
                C_PlanosPagamentoDias_Antecipacao.asInteger;

            C_ParcelasVALORDESCANTECIPADO.asCurrency := C_ParcelasValor.asCurrency *
                (C_PlanosPagamentoPDesconto.Value / 100);
        end;

    C_ParcelasFornecedor.Value := C_TabelaFavorecido.Value;
    C_ParcelasNotaFiscal.Value := C_TabelaNumero.Value;
    if C_ParcelasNOTAFISCAL.Value <> '' then
        C_ParcelasTITULO.Value := Adicionarstr(C_ParcelasNotaFiscal.Value, '0', 7) + '-' +
            C_ParcelasParcela.asString
    else
        C_ParcelasTITULO.Value := AdicionarStr(IntToStr(DMProjeto.NextID('Titulo')), '0', 7) + '-' +
            C_ParcelasParcela.asString;

    C_ParcelasUSUARIO.Value := DMProjeto.nFuncionario;

    {Status}
    if C_TabelaTipoPadrao.Value <> 101 then
        C_ParcelasStatus.Value := -1 {Usa a tabela de Titulos a Receber apenas para armazenar acordo com o cliente}
    else if C_ParcelasValor.asCurrency <= C_ParcelasPgtos.asCurrency then
        C_ParcelasStatus.Value := 50
    else
        C_ParcelasStatus.Value := StatusTitulo(C_ParcelasVencimento.Value, C_ParcelasDATAATRASADO.Value);

end;

procedure TDMEntradas.C_TabelaNUMEROChange(Sender: TField);
var
    sNum: string;
begin
    inherited;
    {Verificando se o Número possui 7 digitos}

    sNum := CompleteCode(Sender.asString, 7);

    if sNum <> Sender.asString then
        Sender.asString := sNum;

end;

procedure TDMEntradas.C_TabelaTAXChange(Sender: TField);
begin
    inherited;
    {    if C_Taxs.Locate('TAX', Sender.asInteger, []) then
         C_TabelaPERCENTUALTAX.Value := C_TaxsPercentual.Value
        else
          C_TabelaPercentualTax.Value := 0;}
end;

procedure TDMEntradas.C_ItensAfterDelete(DataSet: TDataSet);
begin
    inherited;
    //Para forçar o recálculo dos itens, descontos e impostos
    C_ItensAfterPost(DataSet);
end;

procedure TDMEntradas.DMComponentPesquisar4_Dados(Sender: TObject);
begin
    //Não precisa atualizar SubTotais, pois nesta instância ele não é campo calculado, mas DATA;
end;

procedure TDMEntradas.C_ItensQUANTIDADEChange(Sender: TField);
var
    nDif, nAcrescimo, nOldQtd, nMaxMescla: double;   
begin
    if (Sender.asFloat < 0) or ((Sender.asVariant = null) and not (C_ItensI_TipoItem.Value in [0, 4..7])) then
        begin
            Sender.asFloat := 0;
            exit;
        end;

    inherited;

    if not bSubTotalChange and (C_ItensQUANTIDADE.AsVariant <> Null) then
        begin
            C_ItensSubTotal.Value := C_ItensQUANTIDADE.value * (C_ItensPRECO.Value - C_ItensDESCONTO.Value);
            C_ItensBASECALCICMSPROD.Value := IIF(C_ItensSITUACAOECF.Value = 'T', C_ItensSubTotal.Value, 0);
        end;

    nDif := (Sender.asFloat - C_ItensOldQuantidade.asFloat);

    nOldQtd := C_ItensOldQuantidade.asFloat;

    C_ItensOldQuantidade.asFloat := Sender.asFloat;

    {Verificando se precisa haver modificações na mesclagem}
    if not bMesclando and not bFaturandoOperacao and (nDif <> 0) and
        (C_ItensI_TipoItem.Value in [1, 2, 3]) and not (C_MesclagensIDITEM.Isnull) then
        begin

            C_ItensUltrapassouMesclagem.Value := false;

            with C_Mesclagens do
                begin
                    if nDif < 0 then
                        begin //Retirando do último para o primeiro mesclado.
                            {É preciso observar se a quantidade do item (Old) não está a maior que a máxima que foi mesclada.
                             Caso afirmativo, o que vai ser retirado da mesclagem será a diferenca entre a QtdMaxima e a Nova Qtd.
                             Caso negativo, a diferença já calculada será a utilizada na redução das mesclagens.}
                            {Capturando a QtdMaxima}
                            First;
                            nMaxMescla := 0;
                            while not EOF do
                                begin
                                    nMaxMescla := nMaxMescla + FieldByName('QtdMaxima').asFloat;
                                    Next;
                                end;

                            if nOldQtd > nMaxMescla then
                                begin //Implica que a mesclagem está no máximo e foi ultrapassado
                                    nDif := nMaxMescla - Sender.asFloat; {Qtd Atual}
                                    if nDif < 0 then
                                        nDif := 0;
                                end;

                            nDif := ABS(nDif);
                            while not BOF and (nDif > 0) do
                                begin
                                    Edit;
                                    if FieldByName('Quantidade').asFloat >= nDif then
                                        begin
                                            FieldByName('Quantidade').asFloat := FieldByName('Quantidade').asFloat - nDif;
                                            nDif := 0;
                                            Post;
                                            Prior;
                                        end
                                    else
                                        begin
                                            nDif := nDif - FieldByName('Quantidade').asFloat;
                                            FieldByName('Quantidade').asFloat := 0; //estes serão apagados na gravação;
                                            Post;
                                            Prior;
                                        end;
                                end;
                        end
                    else if nDif > 0 then
                        begin //Acrescentando do Primeiro para o Ultimo.
                            First;
                            while not EOF and (nDif > 0) do
                                begin
                                    if FieldByName('Quantidade').asFloat < FieldByName('QtdMaxima').asFloat then
                                        begin
                                            nAcrescimo := FieldByName('QtdMaxima').asFloat - FieldByName('Quantidade').asFloat;

                                            if nDif > nAcrescimo then
                                                begin
                                                    Edit;
                                                    FieldByName('Quantidade').asFloat := FieldByName('Quantidade').asFloat + nAcrescimo;
                                                    Post;

                                                    nDif := nDif - nAcrescimo;
                                                end
                                            else
                                                begin
                                                    Edit;
                                                    FieldByName('Quantidade').asFloat := FieldByName('Quantidade').asFloat + nDif;
                                                    Post;
                                                    nDif := 0;
                                                end;
                                        end;
                                    Next;
                                end;
                            {Verificando se ultrapassou a possibilidade de mesclagem}
                            C_ItensUltrapassouMesclagem.Value := (nDif > 0);
                            if C_ItensUltrapassouMesclagem.Value then
                                DlgMsg.ShowMsg(IIF(C_TabelaTipoPadrao.Value = 102, 2308, 2310));
                        end;
                end; //with
        end;

    if C_ItensHasChildren.value = 'S' then
        begin
            C_EntradasItensFilhos.first;
            if not C_EntradasItensFilhosItem.isnull then
                begin
                    while not C_EntradasItensFilhos.eof do
                        begin
                            C_EntradasItensFilhos.edit;
                            C_EntradasItensFilhosQtde.value := C_ItensQuantidade.value;
                            C_EntradasItensFilhos.next;
                        end;
                end;
        end;

end;

procedure TDMEntradas.CalcReducoesPorDesconto;
var nProp: double;
begin
    nProp := 0;
    if C_TabelaTotalItens123.asCurrency > 0 then
        begin
            nProp := ((C_TabelaDesconto.asCurrency + C_TabelaDescontoItens.asCurrency) / C_TabelaTotalItens123.asCurrency);
            nProp := ABS(nProp);
        end;

    {Definindo ReducoesBase - Este campo serve para registrar as reduções externas à base de calculo normal dos Itens}
    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;
    C_TabelaReducoesBase.asCurrency := (C_TabelaBaseImposto.asCurrency + C_TabelaBaseIncluso.asCurrency) * nProp;
    RecalcItens();
end;

procedure TDMEntradas.C_TabelaPERCENTUALTAXChange(Sender: TField);
begin
    inherited;
    //	CalcularImposto;
end;

procedure TDMEntradas.Q_LocaisEntregaBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    if C_TabelaLocalCliente.Value = 0 then
        Q_LocaisEntrega.Params[0].asInteger := C_TabelaFavorecido.asInteger
    else
        Q_LocaisEntrega.Params[0].asInteger := C_TabelaLocalCliente.asInteger;
end;

function TDMEntradas.ItemChangeGetPreco: double;
begin
    Result := 0;

    if C_TabelaTipoPadrao.Value = 106 then
        Result := DMProjeto.C_LocalizarItensPreco.asCurrency
    else
        begin
            {O Preço retornado deve ser o último preço de compra para aquele fornecedor}
            if C_TabelaFavorecido.Value > 0 then
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'Select PrecoCompra, Fator from ItensForn where Fornecedor = :F and Item = :I ' +
                            'and Data >= :D';
                        ParamByName('F').asInteger := C_TabelaFavorecido.Value;
                        ParamByName('I').asInteger := C_ItensItem.Value;
                        ParamByName('D').asDateTime := DMProjeto.dDataSistema - StrToIntDef(DMProjeto.Parametro('DiasPrecoCompra'), 120);
                        Open;

                        if FieldByName('PrecoCompra').asFloat > 0 then
                            Result := (FieldByName('PrecoCompra').asFloat / FieldByName('Fator').asFloat) *
                                DMProjeto.getFatorUnidade(C_ItensItem.Value, C_ItensUnidade.Value);

                        Close;

                    end;

            if Result = 0 then
                Result := DMProjeto.C_LocalizarItensPrecoCompra.asFloat * {O preco de compra já está na unidade mínima}
                DMProjeto.getFatorUnidade(C_ItensItem.Value, C_ItensUnidade.Value);
        end;

end;

procedure TDMEntradas.DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    function CancelarParcelas(nInvoice: integer; Motivo: string; var sTitulos: string): string; //Retorna o valor gerado de créditos;
    var
        sRetiradas: string;
        x: Integer;
    begin
        with Q_SQLi do
            begin
                {Parcelas afetadas}
                Close;
                SQL.Text := 'Select * from DuplicatasAPagar where Empresa = :empresa and Compra = :C and Status > 0 ';
                params[0].asInteger := DMPRojeto.nEmpresaLogada;
                params[1].asInteger := nInvoice;
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

                {Retiradas Afetadas}
                Close;
                SQL.Text := 'Select * from RetiradasDuplicatas where Duplicata in (' + sTitulos + ') ';
                Open;
                sRetiradas := '';
                while not EOF do
                    begin
                        sRetiradas := CExp(sRetiradas, ',') + FieldByName('Retirada').asString;
                        Next;
                    end;
                Close;

                for x := 1 to ContaStrings(sTitulos, ',') do
                    begin
                        if not DMFinanceiro.CancelarDuplicata(StrToIntDef(SeparaStrings(sTitulos, ',', x), 0), Motivo, false, false) then
                            raise Exception.Create('@@')
                        else
                            DMFinanceiro.CancelarLancamentos(SeparaStrings(sTitulos, ',', x));
                    end;

                result := sRetiradas;

            end;
    end;
    function ExistePagamentos(nInvoice: integer): Boolean;
    begin
        with Q_SQLi do
            begin
                Close;
                SQL.Text := 'Select * from DuplicatasAPagar d INNER JOIN RetiradasDuplicatas rd ON d.empresa = rd.empresa and d.ID = rd.Duplicata and d.pdv = rd.pdv ' +
                    'where d.Compra = :C and d.Status > 0 ';
                Params[0].asInteger := nInvoice;
                Open;

                Last;

                result := RecordCount > 0;

                Close;
            end;
    end;
var
    sRetiradasAfetadas, sMotivo, xTitulos: string;
    j: integer;
    xQtde, xQtdeEntrada, xQtdeAtual: double;
begin
    inherited;
    bSkip := true;
    {Verificando se já foi cancelado}
    if C_TabelaSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(940);
            Exit;
        end;

    {Verificando se há Pagamentos e notificando ao usuário este fato}
    if (C_TabelaTipoPadrao.Value = 101) and ExistePagamentos(C_TabelaIDMestre.Value) and
        (DlgMsg.ShowMsg(2295) <> 100) then
        exit;

    {Desfazendo edições para que não ocorram erros durante o cancelamento}
    C_Itens.UndoLastChange(False);
    C_Parcelas.UndoLastChange(False);
    C_Tabela.UndoLastChange(False);

    sMotivo := '';
    while sMotivo = '' do
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    {Cancelando a Operação}
    try
        try
            with Q_SQL do
                begin
                    {Cancelando as Parcelas}
                    if C_TabelaTipoPadrao.Value <> 101 then
                        begin
                            Close;
                            SQL.Text := 'Delete from DuplicatasAPagar where Compra = :C ';
                            Params[0].asInteger := C_TabelaIDMestre.Value;
                            ExecSQL;
                        end
                    else
                        begin
                            {Cancela, altera recebimentos e gera créditos (se preciso for)}
                            sRetiradasAfetadas := CancelarParcelas(C_TabelaIDMestre.Value, 'Canc. Compra #' + C_TabelaNumero.asString + '; ' + sMotivo, xTitulos);

                            for j := 1 to ContaStrings(xTitulos, ',') do
                                DMFinanceiro.AjustaRecebimentoContas(StrToInt(SeparaStrings(xTitulos, ',', j)), sRetiradasAfetadas);
                        end;

                    {Cancelando a Operacao}
                    Close;
                    SQL.Text := 'Update Entradas set Situacao = ''C'' where Entrada = :entrada and pdv = :pdv';
                    ParamByName('entrada').AsInteger := C_TabelaIDMESTRE.Value;
                    ParamByName('pdv').AsInteger := C_TabelaPDV.Value;
                    ExecSQL;

                    {Cancelando os Itens da Operacao}
                    Close;
                    SQL.Text := 'update entradasitens set situacao = ''C'' where entrada = :entrada and pdv = :pdv';
                    ParamByName('entrada').AsInteger := C_TabelaIDMESTRE.Value;
                    ParamByName('pdv').AsInteger := C_TabelaPDV.Value;
                    ExecSQL;

                    {Registrando Auditoria}
                    {TODO}
                    DMFinanceiro.AuditoriaFinanceira(38, 'Cancelamento da Compra #' + C_TabelaNumero.asString, 'Entradas',
                        C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                        C_TabelaIDMestre.Value, 34, 0);

                end;
        finally
            C_Itens.EnableControls;
        end;

        // Estorno dos Lancamentos Contabeis
        DMFinanceiro.CancelarLancamentos(C_TabelaIDMestre.AsString);

        // Estorno dos Lotes
        if DMProjeto.bControleValidade then
            with Q_SQL do
                begin
                    close;
                    SQL.text := 'select ei.entradaitem,il.qtdentradas as qtdeentrada,il.estoquelote as qtdeatual,ei.item from entradasitens ei, itenslotes il, itens i ' +
                        'where ei.empresa = :empresa and  ei.entrada = :entrada and ei.item = il.Item and ei.item = i.item and i.tipoitem = 1 and i.controlevalidade = ''S''';
                    params[0].asInteger := DMPRojeto.nEmpresaLogada;
                    params[1].asinteger := C_TabelaIDMestre.value;
                    open;
                    while not eof do
                        begin
                            xQtdeEntrada := FieldByName('QtdeEntrada').AsFloat;
                            xQtdeAtual := FieldByName('QtdeAtual').AsFloat;
                            xQtde := xQtdeEntrada - xQtdeAtual;

                            DMProjeto.Q_Contabil.SQL.text := 'delete from itenslotesEntradas where EntradaItem = :entradaitem';
                            DMProjeto.Q_Contabil.params[0].asinteger := FieldByName('entradaitem').AsInteger;
                            DMProjeto.Q_Contabil.ExecSQL;

                            //        if ((xQtdeEntrada <> xQtdeAtual) and (xQtde > 0)) then begin
                            //          DMProjeto.Q_Contabil.close;
                            //          DMProjeto.Q_Contabil.SQL.text := 'execute procedure pp_AjustaLotes :entradaitem,:item,:xQtde';
                            //          DMProjeto.Q_Contabil.params[0].asinteger := FieldByName('entradaitem').AsInteger;
                            //          DMProjeto.Q_Contabil.params[1].asinteger := FieldByName('item').AsInteger;
                            //          DMProjeto.Q_Contabil.params[2].asfloat   := xQtde;
                            //          DMProjeto.Q_Contabil.ExecSQL;
                            //        end;
                            next;
                        end;
                end;

        if C_Tabela.State = dsBrowse then
            C_Tabela.Edit;
        C_TabelaSituacao.Value := 'C';
        C_Tabela.Post;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

                DlgMsg.ShowMsg(2199, e.message, '');
            end;
    end;

end;

function TDMEntradas.ContabilidadeAtivado;
begin
    result := DMContabil <> nil;
end;

procedure TDMEntradas.ContabilidadeDesativado;
begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
end;

procedure TDMEntradas.CriaContabilidade;
begin
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMEntradas.Contabiliza;
begin
    if C_TabelaTipoPadrao.value = 101 then
        DMContabil.ContabilizaInvoicesEntradas(C_TabelaIDMestre.value, C_Tabela, C_Itens)
    else
        DMContabil.ContabilizaDevolucoesClientes(C_TabelaIDMestre.value, C_Tabela, C_Itens);
end;

procedure TDMEntradas.MostraContabilidade;
begin
    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
end;

procedure TDMEntradas.C_ParcelasVALORValidate(Sender: TField);
begin
    inherited;
    if (C_ParcelasPgtos.Value > 0) and (Sender.asCurrency - C_ParcelasPgtos.asCurrency < 0) then
        begin
            DlgMsg.ShowMsg(2239, [FormatCurr('##,##0.00', C_ParcelasPgtos.asCurrency)]);
            raise Exception.Create('@@');
        end;
end;

procedure TDMEntradas.RefreshParcelas;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select * ' +
                'From DuplicatasAPagar Where  empresa = :empresa and Compra = :C and Status > 0 ';
            if bCancelados then
                SQL.Text := replace(SQL.Text, 'and Status > 0', '');
            params[0].asInteger := DMPRojeto.nEmpresaLogada;
            Params[1].asInteger := C_TabelaIDMestre.Value;
            Open;

            try
                C_Parcelas.DisableControls;
                while not EOF do
                    begin
                        C_Parcelas.Locate('ID', FieldByName('ID').asInteger, []);
                        C_Parcelas.Edit;

                        C_Parcelas.FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency;
                        C_Parcelas.FieldByName('Saldo').asCurrency := FieldByName('FaltaPagar').asCurrency;
                        C_Parcelas.FieldByName('Pgtos').asCurrency := FieldByName('Valor').asCurrency -
                            FieldByName('FaltaPagar').asCurrency;
                        C_Parcelas.FieldByName('ValorPago').asCurrency := FieldByName('ValorPago').asCurrency;
                        C_Parcelas.FieldByName('CreditoGerado').asCurrency := FieldByName('CreditoGerado').asCurrency;
                        C_Parcelas.FieldByName('CreditoUtilizado').asCurrency := FieldByName('CreditoUtilizado').asCurrency;
                        C_Parcelas.FieldByName('Descontos').asCurrency := FieldByName('Descontos').asCurrency;
                        C_Parcelas.FieldByName('JurosPagos').asCurrency := FieldByName('JurosPagos').asCurrency;
                        C_Parcelas.FieldByName('DataAtrasado').asDateTime := FieldByName('DataAtrasado').asDateTime;
                        C_Parcelas.FieldByName('Status').asCurrency := FieldByName('Status').asCurrency;

                        C_Parcelas.Post;

                        Next;
                    end;
            finally
                C_Parcelas.EnableControls;
            end;

        end;
end;

procedure TDMEntradas.C_ItensNewRecord(DataSet: TDataSet);
begin
    inherited;
    inc(nOrdemDigItens);
    C_ItensEMPRESA.Value := DMProjeto.nEmpresaLogada;
    C_ItensPDV.Value := DMProjeto.nPDV;
    C_ItensAlmoxarifado.Value := C_TabelaAlmoxPadrao.Value;
    C_ItensBaixaEstoque.Value := C_TabelaBaixaEstoque.Value;
    C_ItensBaixaEstoqueFiscal.Value := C_TabelaBaixaEstoqueFiscal.Value;
    C_ItensOrdem.Value := nOrdemDigItens;
    C_ItensAnalisado.Value := 'N';
    C_ItensSITUACAO.Value := 'N';
    C_ItensCustoMedio.Value := 0;
    C_ItensCustoMedio_Ant.Value := 0;
    C_ItensCustoContabil.Value := 0;
    C_ItensCustoContabil_Ant.Value := 0;
    C_ItensQtdRecebida.Value := 0;
    C_ItensSemLucro.Value := 0;
    C_ItensRateioDesconto.Value := 0;
    C_ItensLucro.Value := 0;
    C_ItensIndiceLucro.Value := 0;
    C_ItensNovoPreco.Value := 0;
    C_ItensFreteProporcional.Value := 1; {tem que estar no formato percentual pronto para multiplicar}
    C_ItensFRETE.Value := 0;
    C_ItensSEGURO.Value := 0;
    C_ItensOUTRASDESPESAS.Value := 0;
    C_ItensAtualizouCusto.Value := 'N';
    C_ItensAtualizouPreco.Value := 'N';
    C_ItensQuantidadeVolume.Value := 1.00;

    if (C_TiposMovimentoStatusPadraoItens.Value <> '') then
        C_ItensStatus.Value := C_TiposMovimentoStatusPadraoItens.Value
    else
        C_ItensStatus.Value := 'P';

    // LegisFiscal
    if C_TabelaPossuiICMS.Value = 'S' then
        C_ItensAliqICMS.value := C_TabelaAliqICMSCompra.value;
    C_ItensBaseCalcICMSProd.Value := 0;

    C_ItensAliqICMS.Value := 0;
    C_ItensVALORICMSPROD.Value := 0;
    C_ItensCST.Value := '000';
    C_ItensReducaoCST.Value := 0;
    C_ItensCFOPEntrada.Value := C_TabelaCFOPEntrada.value;
    C_ItensBaseCalcSubstProd.Value := 0;
    C_ItensVALORICMSSUBSTPROD.Value := 0;
    C_ItensIPI.Value := 0;
    C_ItensALIQIPI.Value := 0;
    C_ItensValorIPIProd.Value := 0;

    C_ItensALIQPIS.Value := 0;
    C_ItensALIQCOFINS.Value := 0;
    C_ItensVALORPISPROD.Value := 0;
    C_ItensVALORCOFINSPROD.Value := 0;

    C_ItensDesconto.Value := 0;
    C_ItensPDesconto.Value := 0;
    C_ItensCompensacaoCusto.Value := 0;
end;

procedure TDMEntradas.C_ItensITEMValidate(Sender: TField);
begin
    inherited;
    {  if bAlteracao and (C_ItensIDITEM.Value > 0) then begin
        DlgMsg.ShowMsg(2280);
        Raise Exception.Create('@@');
      end;}
end;

function TDMEntradas.GetMovimentos;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(*) as Movimentos from Entradas where TipoPadrao in (' + sTipo + ') ' +
                ' and Situacao = ''N'' and Status in (''P'', ''L'') and Favorecido = :C ';
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            Result := FieldByName('Movimentos').asInteger;

            Close;
        end;
end;

procedure TDMEntradas.ParcelasParaTotalFinal;
var
    TmpDS: TClientDataSet;
    nTotalParcelas, nDescontoLimpo, nValorVenda, nDif: Currency;
begin

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Parcelas, true);
            First;
            nTotalParcelas := 0;
            while not EOF do
                begin
                    nTotalParcelas := nTotalParcelas + FieldByName('Valor').asCurrency;
                    Next;
                end;
        end;
    TmpDS.Free;

    nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;
    nDescontoLimpo := C_TabelaDesconto.asCurrency - C_TabelaicDescontoParcelas.asCurrency;

    C_Tabela.Edit;
    C_TabelaJuros.asCurrency := 0;
    C_TabelaicDescontoParcelas.asCurrency := 0;
    C_TabelaDESCONTO.asCurrency := nDescontoLimpo;

    if nTotalParcelas > 0 then
        begin
            nDif := nTotalParcelas - nValorVenda;
            if nDif > 0 then {=> Juros}
                C_TabelaJuros.asCurrency := nDif
            else if nDif < 0 then
                begin {=> Desconto  (já neg.)}
                    C_TabelaDESCONTO.asCurrency := nDescontoLimpo + nDif;
                    C_TabelaicDescontoParcelas.asCurrency := nDif;
                end;
        end;

end;

procedure TDMEntradas.RatearDifProxParcelas(nParcelaDif: Integer; nDiferenca: Currency);
var
    TmpDS: TClientDataSet;
    nQtdProx: Integer;
    nDifParcelas: Currency;
    nTotalParcelas, nDescontoLimpo, nValorVenda, nDif: Currency;
begin
    nTotalParcelas := 0;

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Parcelas, true);
            First;
            if Locate('Parcela', nParcelaDif + 1, []) then
                begin
                    nTotalParcelas := -nDiferenca; //porque o valor da parcela modificada não é capturada pelo clone;
                    {Capturando Quantidade de próximas parcelas}
                    nQtdProx := 0;
                    while not EOF do
                        begin
                            inc(nQtdProx);
                            Next;
                        end;

                    {Rateando Diferenca}
                    if nQtdProx > 0 then
                        begin
                            First;
                            nDifParcelas := nDiferenca / nQtdProx;
                            while not EOF do
                                begin
                                    if FieldByName('Parcela').asInteger > nParcelaDif then
                                        begin
                                            Edit;
                                            FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency + nDifParcelas;
                                            Post;
                                        end;
                                    nTotalParcelas := nTotalParcelas + FieldbyName('Valor').asCurrency;

                                    Next;
                                end;
                        end;

                end;

            if nTotalParcelas > 0 then
                begin
                    nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;

                    nDif := nTotalParcelas - nValorVenda;
                    if (nDif <> 0) and (ABS(nDif) <= (0.01 * C_Parcelas.RecordCount)) then
                        begin
                            Last;
                            Edit;
                            FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency - nDif;
                            Post;
                        end;
                end;

        end;
    TmpDS.Free;

end;

procedure TDMEntradas.C_TabelaDATAChange(Sender: TField);
var
    TmpDS: TClientDataSet;
    nDifDays: Integer;
begin
    inherited;
    if (C_Parcelas.RecordCount > 0) then
        begin
            nDifDays := Trunc(C_TabelaData.Value) - Trunc(C_ParcelasCompetencia.Value);

            TmpDS := TClientDataSet.Create(self);
            with TmpDS do
                begin
                    CloneCursor(C_Parcelas, True);
                    First;
                    while not EOF do
                        begin
                            Edit;
                            FieldByName('Vencimento').asDateTime := FieldByName('Vencimento').asDateTime + nDifDays;
                            FieldByName('Competencia').asDateTime := C_TabelaData.Value;
                            Post;
                            Next;
                        end;
                end;
            TmpDS.Free;

        end;
end;

procedure TDMEntradas.C_MesclagensNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqMescla);

    C_MesclagensEntradaITEMMESCLA.Value := nSeqMescla;
    C_MesclagensQuantidade.Value := 0;
end;

procedure TDMEntradas.C_ItensBeforeDelete(DataSet: TDataSet);
begin
    inherited;
    if C_ItensQtdRecebida.Value > 0 then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select e.Numero, t.Descricao as lkOperacao ' +
                    'from (((Entradasitensmescla eim inner join Entradasitens ei on eim.Empresa = ei.empresa and eim.EntradaItem = ei.EntradaItem) ' +
                    '     inner join Entradas e on e.empresa = ei.empresa and e.Entrada = ei.Entrada and e.pdv = ei.pdv) ' +
                    '     inner join tiposmovimento t on t.tipomovimento = e.tipomovimento) ' +
                    'where eim.Entradaitem_original = :e ';
                params[0].asInteger := C_ItensIDITEM.Value;
                Open;

                if RecordCount > 0 then
                    begin
                        DlgMsg.ShowMsg(2306, [FieldByName('lkOperacao').asString, FieldByName('Numero').asString]);
                        Close;
                        raise Exception.Create('@@');
                    end;

                Close;
            end;

    if C_ItensMesclado.Value = 'S' then
        with C_Mesclagens do
            begin
                First;
                while not EOF do
                    Delete;
            end;
    {
      if C_ItensHasChildren.Value = 'S' then with C_SaidasItensFilhos do begin
        First;
        while not EOF do
          Delete;
      end;}
end;

procedure TDMEntradas.AplicarStatusAosItens(Sender: string);
var
    nItem: Integer;
begin
    inherited;
    if (Sender <> '') then
        begin
            if C_Itens.RecordCount = 0 then
                exit;

            with C_Itens do
                begin
                    nItem := FieldByName('IDITEM').asInteger;
                    DisableControls;
                    First;

                    while not EOF do
                        begin
                            if FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
                                begin
                                    Edit;
                                    FieldByName('Status').asString := Sender;
                                    Post;
                                end;
                            Next;
                        end;

                    Locate('IDITEM', nItem, []);
                    EnableControls;
                end;
        end;

end;

procedure TDMEntradas.C_TabelaLOCALCLIENTEChange(Sender: TField);
begin
    inherited;
    C_LocaisEntrega.Close;
    C_LocaisEntrega.Open;
end;

procedure TDMEntradas.C_LocaisEntregaAfterClose(DataSet: TDataSet);
begin
    inherited;
    {  if C_Tabela.Active then begin
        C_Tabela.Edit;
        C_TabelaLocalEntrega.asVariant := null;
      end;}
end;

procedure TDMEntradas.C_TabelaSTATUSValidate(Sender: TField);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTSTATUSO', '', False, 'Para:' + C_TabelalkStatus.AsString) then
        raise exception.create('@@');

    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSO') then
        raise exception.create('@@');
end;

procedure TDMEntradas.DMComponentGravar4_AposCommit(Sender: TObject);
var
    bOk: boolean;
    i, k: Integer;
    F: TextFile;
begin
    inherited;
    {Gerando Número da Operacao}
    try
        if not bAlteracao and (TipoMovimento('CB_GERARNUM') = 'S') then
            with Q_SQL do
                begin
                    bOk := false;
                    while not bOk do
                        begin
                            if (TipoMovimento('CB_NOTAFISCAL') = 'S') then
                                begin
                                    for k := 1 to 6 do
                                        begin
                                            if (k <= 5) and (DMProjeto.GEN_ID('GENSIST_OKPARAGERARNF', true) = 1) then
                                                sleep(2000)
                                            else
                                                begin
                                                    DMProjeto.SetOkParaGerarNF(1);
                                                    if not FileExists(ExtractFilePath(Application.ExeName) + 'NF.TXT') then
                                                        begin
                                                            AssignFile(F, ExtractFilePath(Application.ExeName) + 'NF.TXT');
                                                            Rewrite(F);
                                                            CloseFile(F);
                                                        end
                                                    else
                                                        begin
                                                            if DayOfTheMonth(Date) = 28 then
                                                                begin
                                                                    RenameFile(ExtractFilePath(Application.ExeName) + 'NF.TXT',
                                                                        ExtractFilePath(Application.ExeName) + 'NF-' + FormatDateTime('yyyy-mm', Date) + '.TXT');
                                                                    AssignFile(F, ExtractFilePath(Application.ExeName) + 'NF.TXT');
                                                                    Rewrite(F);
                                                                    CloseFile(F);
                                                                end;
                                                        end;
                                                    sNumeroGerado := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7);
                                                    AssignFile(F, ExtractFilePath(Application.ExeName) + 'NF.TXT');
                                                    System.Append(F);
                                                    WriteLn(F, sNumeroGerado + ' ; ' + C_TiposMovimentoDESCRICAO.AsString + ' ; ' +
                                                        FormatDateTime('dd/mm/yyyy  hh:mm:ss', now) + ' ; ' +
                                                        DMProjeto.Maquina + '/' + DMProjeto.sLoginName + ' ; ' +
                                                        'DMEntradas ' + C_TabelaIDMESTRE.AsString);
                                                    CloseFile(F);
                                                    Break;
                                                end;
                                        end;
                                end
                            else
                                sNumeroGerado := CExp(TipoMovimento('SIGLAINICIAL'), '-') +
                                    AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + C_TabelaTipoMovimento.asString)), '0', 7 - Length(TipoMovimento('SIGLAINICIAL')));

                            {Verificando Duplicidade}
                            Close;
                            SQL.Text := 'Select Count(Entrada) as Existentes from Entradas ' +
                                'where TipoMovimento = :TM and Numero = :N and Entrada <> :E ';
                            ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
                            ParamByName('N').asString := sNumeroGerado;
                            ParamByName('E').asInteger := C_TabelaIDMestre.asInteger;
                            Open;

                            i := FieldByName('Existentes').asInteger;
                            Close;

                            if (i > 0) then
                                Continue; //Para Gerar novo número;

                            {Atribuindo o Número gerado}
                            Close;
                            SQL.Text := 'Update Entradas set Numero = :NG where Entrada = :E ';
                            ParamByName('NG').asString := sNumeroGerado;
                            ParamByName('E').asInteger := C_TabelaIDMestre.asInteger;
                            ExecSQL;

                            Close;
                            SQL.Text := 'Update DuplicatasAPagar set NotaFiscal = :NF, Titulo = :TT || ''-'' || Parcela ' +
                                'where Compra = :C ';
                            ParamByName('NF').asString := sNumeroGerado;
                            ParamByName('TT').asString := sNumeroGerado;
                            ParamByName('C').asInteger := C_TabelaIDMestre.asInteger;
                            ExecSQL;

                            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                            DMProjeto.SetOkParaGerarNF(0);
                            bOk := true;
                        end; //while
                end; //if

        if DMProjeto.bMovimentarProdutoIdentificado then
            DMItensIdentificacao.GravaItensIdentificadosEntrada(C_TabelaIDMESTRE.Value);
        DMProjeto.nIdItem := 0;

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

                DlgMsg.ShowMsg(2334);
            end;
    end;

end;

procedure TDMEntradas.C_TabelaCalcFields(DataSet: TDataSet);
var
    sEnd: string;
begin
    inherited;

    if C_TabelaLocalEntrega.Value > 0 then
        begin
            if not C_LocaisEntrega.Active then
                C_LocaisEntrega.Open;

            if C_TabelaLocalEntrega.asVariant = null then
                C_TabelaicEnderecoEntrega.Value := ''
            else
                begin
                    if C_LocaisEntregaEntrega.Value <> C_TabelaLocalEntrega.Value then
                        C_LocaisEntrega.Locate('Entrega', C_TabelaLocalEntrega.Value, []);

                    sEnd := 'Endereço: ' + C_LocaisEntregaEnderecoEntrega.AsString + #13;
                    if not C_LocaisEntregaCidadeEntrega.IsNull then
                        sEnd := sEnd + C_LocaisEntregaCidadeEntrega.AsString + ' ' + C_LocaisEntregaUFEntrega.AsString + #13;
                    if not C_LocaisEntregaCEPEntrega.IsNull then
                        sEnd := sEnd + C_LocaisEntregaCEPEntrega.AsString + #13;
                    if not C_LocaisEntregaFoneEntrega.IsNull then
                        sEnd := sEnd + 'Fone: ' + C_LocaisEntregaFoneEntrega.AsString;

                    C_TabelaicEnderecoEntrega.Value := sEnd;
                end;
        end;

end;

procedure TDMEntradas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    IBEventos_Entradas.RegisterEvents;
    bPrecoVendaPP := (DMProjeto.Parametro('EntradaPrecoVendaPP') = 'S');
    DMProjeto.slIdItensIdentificados := TStringList.Create;
end;

procedure TDMEntradas.IBEventos_EntradasEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
begin
    inherited;
    if EventName = 'EVENTO_PLANOSPAGAMENTO' then
        begin
            C_PlanosPagamento.close;
            C_PlanosPagamento.open;
        end
    else if EventName = 'EVENTO_LOCAISENTREGA' then
        begin
            C_LocaisEntrega.close;
            C_LocaisEntrega.open;
        end
            {  else if EventName = 'EVENTO_TAXS' then begin
                C_Taxs.close;
                C_Taxs.open;
              end}
    else if EventName = 'EVENTO_TIPOSMOVIMENTO' then
        begin
            C_TiposMovimento.close;
            C_TiposMovimento.open;
        end;
end;

procedure TDMEntradas.C_TabelaPOSSUITAXChange(Sender: TField);
begin
    inherited;
    //	CalcularImposto;
end;

procedure TDMEntradas.CalcularImposto;
var
    nBaseImposto, nBaseIncluso, nReducoes: Currency;
begin
    {Aplicando as Reducoes nas Bases de Calculo.
     Os acrescimos são sempre aplicados à baseimposto, visto que será um valor destacado}

    nReducoes := C_TabelaReducoesBase.asCurrency;

    nBaseImposto := C_TabelaBaseImposto.asCurrency +
        C_TabelaAcrescimosBase.asCurrency;

    if nBaseImposto < C_TabelaReducoesBase.asCurrency then
        begin
            nReducoes := nReducoes - nBaseImposto;
            nBaseImposto := 0;
        end
    else
        begin
            nBaseImposto := nBaseImposto - nReducoes;
            nReducoes := 0;
        end;

    nBaseIncluso := C_TabelaBaseIncluso.asCurrency - nReducoes;

    if nBaseIncluso < 0 then
        nBaseIncluso := 0;

    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    {Calculando o Imposto conforme Tax escolhido}
  {  if (C_TabelaPossuiTax.Value = 'S') and (C_TabelaPercentualTax.Value > 0) then begin
      C_TabelaIMPOSTO.Value := nBaseImposto * (C_TabelaPERCENTUALTAX.Value/100);
      C_TabelaIMPOSTO_INCLUSO.Value := nBaseIncluso * (C_TabelaPERCENTUALTAX.Value/100);
      end
    else begin
      C_TabelaIMPOSTO.Value := 0;
      C_TabelaIMPOSTO_INCLUSO.Value := 0;
    end;}
    (*
    Aplicando as Reducoes nas Bases de Calculo.
     Os acrescimos são sempre aplicados à baseimposto, visto que será um valor destacado}

    {
    nReducoes := C_TabelaReducoesBase.asCurrency;

    nBaseImposto := C_TabelaBaseImposto.asCurrency +
                    C_TabelaAcrescimosBase.asCurrency;

    if nBaseImposto < C_TabelaReducoesBase.asCurrency then begin
      nReducoes := nReducoes - nBaseImposto;
      nBaseImposto := 0;
      end
    else begin
      nBaseImposto := nBaseImposto - nReducoes;
      nReducoes := 0;
    end;

    nBaseIncluso := C_TabelaBaseIncluso.asCurrency - nReducoes;

    if nBaseIncluso < 0 then
    nBaseIncluso := 0;
    }

    nBaseIncluso := C_TabelaBaseIncluso.asCurrency; // - nReducoes;

    if C_Tabela.State = dsBrowse then
      C_Tabela.Edit;

    {Calculando o Imposto conforme Tax escolhido}
    if (C_TabelaPossuiTax.Value = 'S') and (C_TabelaPercentualTax.Value > 0) then begin
      C_TabelaIMPOSTO.Value := nBaseImposto * (C_TabelaPERCENTUALTAX.Value/100);
      C_TabelaIMPOSTO_INCLUSO.Value := nBaseIncluso * (C_TabelaPERCENTUALTAX.Value/100);
      end
    else begin
      C_TabelaIMPOSTO.Value := 0;
      C_TabelaIMPOSTO_INCLUSO.Value := 0;
    end;
    *)
end;

procedure TDMEntradas.C_ItensUNIDADEChange(Sender: TField);
var
    nCusto, nFator: double;
begin
    inherited;

    nCusto := C_ItensPreco.Value / IIF(C_ItensFator.Value > 0, C_ItensFator.Value, 1);
    nFator := DMProjeto.getFatorUnidade(C_ItensItem.Value, C_ItensUnidade.Value);

    if nFator <= 0 then
        begin
            C_ItensUnidade.Value := C_ItensOldUnidade.Value;
            exit;
        end
    else
        C_ItensFator.Value := nFator;

    {Atualizando o Preço do Item}
    C_ItensPreco.Value := nCusto * C_ItensFator.Value;

    C_ItensOldUnidade.Value := C_ItensUnidade.Value;
end;

procedure TDMEntradas.C_TabelaREDUCOESBASEChange(Sender: TField);
begin
    inherited;
    CalcularImposto;
end;

procedure TDMEntradas.C_TabelaTIPOMOVIMENTOValidate(Sender: TField);
begin
    inherited;
    if bAlteracao then
        begin
            C_TiposMovimento.Locate('TipoMovimento', Sender.asInteger, []);
            if (C_TiposMovimentoBaixaEstoque.Value <> C_TabelaBaixaEstoque.Value) and (C_TabelaBaixaEstoque.Value <> '') then
                raise Exception.Create('@Desculpe, este tipo de Operação é incompatível com o anterior e não pode ser permutado!');
        end;
end;

procedure TDMEntradas.ApagarFilhos;
begin
    try
        if C_ItensHasChildren.Value = 'S' then
            with C_EntradasItensFilhos do
                begin
                    First;
                    while not EOF do
                        Delete;
                end;
    except
    end;
end;

procedure TDMEntradas.ApagarMesclagem;
begin
    if C_ItensMesclado.Value = 'S' then
        with C_Mesclagens do
            begin
                First;
                while not EOF do
                    Delete;
            end;
end;

procedure TDMEntradas.C_TabelaBAIXAESTOQUEChange(Sender: TField);
var
    nChave: Integer;
begin
    inherited;
    {Repassando as modificações deste flag para todos os ítens}
    with C_Itens do
        begin
            if not Active or (RecordCount = 0) then
                exit;

            nChave := C_ItensIDITEM.Value;

            DisableControls;
            First;
            while not EOF do
                begin
                    Edit;
                    C_ItensBaixaEstoque.Value := Sender.asString;
                    Next;
                end;

            Locate('IDITEM', nChave, []);

            EnableControls;
        end;

end;

procedure TDMEntradas.C_TabelaAfterScroll(DataSet: TDataSet);
var
    tmpds: TClientDataSet;
    nMaxOrdem, nMaxSeq: Integer;
begin
    inherited;
    if length(C_TabelaF_CPF_CNPJ.Text) = 11 then
        C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(C_TabelaF_CPF_CNPJ.Text) = 14 then
        C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';

    nMaxOrdem := 0;
    nMaxSeq := 0;

    if bAlteracao then
        begin
            tmpds := TClientDataSet.Create(self);
            with tmpds do
                begin
                    CloneCursor(C_Itens, true);

                    First;
                    while not eof do
                        begin
                            if FieldByName('Sequencia').asInteger > nMaxSeq then
                                nMaxSeq := FieldByName('Sequencia').asInteger;

                            if FieldByName('Ordem').asInteger > nMaxOrdem then
                                nMaxOrdem := FieldByName('Ordem').asInteger;

                            Next;
                        end;

                end;
            tmpds.free;

            nOrdemDigItens := nMaxOrdem;
            nSequencia := nMaxSeq;
        end;

end;

procedure TDMEntradas.ApagarItensFilhos;
begin
  try
    if (C_ItensHasChildren.Value <> 'S') or (C_ItensTrocouItem.Value) then
        if not C_EntradasItensFilhosItem.IsNull then
            begin
                C_EntradasItensFilhos.first;
                while not C_EntradasItensFilhos.eof do
                    C_EntradasItensFilhos.delete;
            end;
  except
  end;          
end;

procedure TDMEntradas.CarregarItensFilhos;
var bCond1, bCond2: boolean;
begin
  try
    {Só é para carregar os Itens Filhos se:
        1- este é um item composto e não existem filhos carregados ainda;
        2- este item é composto e é diferente do OldItem que estava carregado (troca de item);}
    bCond1 := (C_ItensHasChildren.value = 'S') and ( C_TabelaTIPOPADRAO.Value <> 106) and (C_EntradasItensFilhosItem.IsNull) and not bMesclando and not bFaturandoOperacao;
    bCond2 := (C_ItensHasChildren.value = 'S') and ( C_TabelaTIPOPADRAO.Value <> 106) and (C_ItensTrocouItem.Value) and not bMesclando and not bFaturandoOperacao;

    // quando é feita uma devolução e o item

    if bCond1 or bCond2 then
        begin
            Q_SQL.SQL.text := 'select i.item,ii.quantidade,i.codigo,i.descricao,ii.unidade,ii.fator,i.customedio,i.custocontabil ' +
                'from itensfilhos ii, itens i where ii.item = :item and ii.subitem = i.item';
            Q_SQL.params[0].asinteger := C_ItensItem.value;
            Q_SQL.open;
            bPopulando := true; //para não ocorrer C_EntradasItensFilhosItemChange;
            while not Q_SQL.eof do
                begin
                    C_EntradasItensFilhos.Append;
                    C_EntradasItensFilhosQuantidade.value := Q_SQL.FieldByName('quantidade').asfloat;
                    C_EntradasItensFilhosCodigo.value := Q_SQL.FieldByName('codigo').asstring;
                    C_EntradasItensFilhosDescricao.value := Q_SQL.FieldByName('descricao').asstring;
                    C_EntradasItensFilhosItem.value := Q_SQL.FieldByName('item').asinteger;
                    C_EntradasItensFilhosUnidade.value := Q_SQL.FieldByName('unidade').asstring;
                    C_EntradasItensFilhosFator.value := Q_SQL.FieldByName('fator').asFloat;
                    C_EntradasItensFilhosCustoMedio.value := Q_SQL.FieldByName('CustoMedio').asCurrency;
                    C_EntradasItensFilhosCustoContabil.value := Q_SQL.FieldByName('CustoContabil').asCurrency;
                    C_EntradasItensFilhos.post;

                    Q_SQL.next;
                end;
            Q_SQL.Close;
            bPopulando := False;
            C_EntradasItensFilhos.first;
        end;
  except
  end;
end;

procedure TDMEntradas.C_EntradasItensFilhosNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqFilhos);

    C_EntradasItensFilhosEntradaItemFilho.value := nSeqFilhos;
    C_EntradasItensFilhosQtde.value := C_ItensQuantidade.value;
end;

procedure TDMEntradas.C_EntradasItensFilhosITEMChange(Sender: TField);
begin
    inherited;
    if not bPopulando then
        begin
            C_EntradasItensFilhoscodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').Asstring;
            C_EntradasItensFilhosdescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').Asstring;
            C_EntradasItensFilhosunidade.value := DMProjeto.C_LocalizarItens.FieldByName('unidade').Asstring;
            C_EntradasItensFilhosfator.value := DMProjeto.C_LocalizarItens.FieldByName('fatorundvenda').Asfloat;
            C_EntradasItensFilhosCustoMedio.value := DMProjeto.C_LocalizarItens.FieldByName('CustoMedio').asCurrency;
            C_EntradasItensFilhosCustoContabil.value := DMProjeto.C_LocalizarItens.FieldByName('CustoContabil').asCurrency;
        end;
end;

procedure TDMEntradas.C_EntradasItensFilhosUNIDADEChange(Sender: TField);
var
    nFator: double;
begin
    inherited;
    if (C_EntradasItensFilhosUNIDADE.Value <> '') and (C_EntradasItensFilhosUNIDADE.Value <> C_EntradasItensFilhosUNIDADEOld.Value) then
        begin
            nFator := DMProjeto.GetFatorUnidade(C_EntradasItensFilhosItem.Value, sender.asstring);
            if nFator <= 0 then
                begin
                    C_EntradasItensFilhosUnidade.Value := C_EntradasItensFilhosUnidadeOld.Value;
                    exit;
                end
            else
                C_EntradasItensFilhosFator.Value := nFator;

        end;

    C_EntradasItensFilhosUnidadeOld.Value := C_EntradasItensFilhosUnidade.Value;
end;

procedure TDMEntradas.C_TabelaALMOXPADRAOChange(Sender: TField);
var
    nChave: Integer;
begin
    inherited;
    {Repassando as modificações deste flag para todos os ítens}
    with C_Itens do
        begin
            if not Active or (RecordCount = 0) then
                exit;

            nChave := C_ItensIDITEM.Value;

            DisableControls;
            First;
            while not EOF do
                begin
                    Edit;
                    C_ItensAlmoxarifado.Value := Sender.asInteger;
                    Next;
                end;

            Locate('IDITEM', nChave, []);

            EnableControls;
        end;

end;

procedure TDMEntradas.AtualizaItensFilhos;
begin
    {Apagando Itens Filhos, mesmo que este item não seja composto, pois pode ter sido uma alteração de um
     item que era composto.}
    ApagarItensFilhos;

    {Só é para carregar os Itens Filhos se:
        1- este é um item composto e não existem filhos carregados ainda;
        2- este item é composto e é diferente do OldItem que estava carregado (troca de item);}
    CarregarItensFilhos;
end;

procedure TDMEntradas.DMComponentPesquisar1_Iniciar(Sender: TObject;
    var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    if pos('OBS', Where) > 0 then
        Where := replace(Where, 'OBS', 't.OBS');

    if sWhereAdicional <> '' then
        Where := replace(Uppercase(Where), 'WHERE', ' where ' + sWhereAdicional);

end;

function TDMEntradas.NotaValida: boolean;
var
    nTotal, nICMS, nBase: Currency;
    sErro: string;
    nOp: integer;
begin
    result := true;

    sErro := 'Diferenças:' + #13 + #13;

    //Checando se o total bate
    nTotal := C_TabelaTotalItens.Value + C_TabelaOutrasDespesas.Value +
        C_TabelaValorIPI.Value + C_TabelaDesconto.Value + C_TabelaFrete.Value +
        C_TabelaValorICMSSubst.Value + C_TabelaVALORSEGURO.Value; //incluido o valor do seguro

    if not (C_TabelaFreteIncluso.Value = 'S') then
        nTotal := nTotal - C_TabelaFrete.Value;

    if abs(ntotal - C_TabelaTotal.Value) > 0.05 then
        sErro := sErro +
            'No Total da Nota:  Digitado = ' + C_TabelaTotal.Text +
            '    Calculado = ' + FloatToStrF(nTotal, ffFixed, 10, 2) + ' => Dif.: ' +
            FloatToStrF(abs(nTotal - C_TabelaTotal.Value), ffFixed, 10, 2) + #13 + #13;

    //Checando se a Base de Cálculo bate
    if C_TabelaTipoPadrao.value = 101 then
        begin
            nBase := C_TabelaBaseCalcICMS.value;

            // Felipe - Alterado código para verificar se a Base Calc. ICMS e Valor ICMS bate (20/01/2015)
            if abs(nTotalBCICMS - C_TabelaBaseCalcICMS.Value) > 0.05 then
                sErro := sErro +
                    'Na Base de Cálculo: Digitado = ' + C_TabelaBaseCalcICMS.Text +
                    '    Calculado = ' + FloatToStrF(nTotalBCICMS, ffFixed, 10, 2) + ' => Dif.: ' +
                    FloatToStrF(abs(nTotalBCICMS - C_TabelaBaseCalcICMS.Value), ffFixed, 10, 2) + #13 + #13;

            //Checando se o valor do ICMS bate
            //if C_TabelaPossuiICMS.Value = 'S' then
            //    nICMS := truncar(nBase * DMProjeto.AliquotaEstadoExterno(C_TabelaUFOrigem.Value) / 100, 2);

            if C_TabelaPossuiICMS.Value = 'S' then
                if abs(nTotalValorICMS - C_TabelaValorICMS.Value) > 0.05 then
                    sErro := sErro +
                        'No Valor do ICMS: Digitado = ' + C_TabelaValorICMS.Text +
                        '    Calculado = ' + FloatToStrF(nTotalValorICMS, ffFixed, 10, 2) + ' => Dif.: ' +
                        FloatToStrF(abs(nTotalValorICMS - C_TabelaValorICMS.Value), ffFixed, 10, 2) + #13 + #13;
        end;

    // Felipe - Checando se o valor do IPI bate. Alterado trecho que verifica se o valor do IPI bate. (20/01/2015)
    if abs(C_TabelaValorIPI.Value - nTotalValorIPI) > 0.005 then
        sErro := sErro +
            'No Valor do IPI: Digitado = ' + C_TabelaValorIPI.Text +
            '    Calculado = ' + FloatToStrF(nTotalValorIPI, ffFixed, 10, 2) + ' => Dif.: ' +
            FloatToStrF(abs(nTotalValorIPI - C_TabelaValorIPI.Value), ffFixed, 10, 2) + #13 + #13;

    // Felipe - Verificando se os totais referente a Base de Calculo ICMS Substituição batem (20/01/2015)
    if abs(C_TabelaBASECALCSUBST.Value - nTotalBCICMSST) > 0.005 then
        sErro := sErro +
            'No Valor de Base Calc. ICMS Subst.: Digitado = ' + C_TabelaBASECALCSUBST.Text +
            '    Calculado = ' + FloatToStrF(nTotalBCICMSST, ffFixed, 10, 2) + ' => Dif.: ' +
            FloatToStrF(abs(nTotalBCICMSST - C_TabelaBASECALCSUBST.Value), ffFixed, 10, 2) + #13 + #13;

    // Felipe - Verificando se os totais referente ao Valor de ICMS Substituição batem (20/01/2015)
    if abs(C_TabelaValorICMSSubst.Value - nTotalValorICMSST) > 0.005 then
        sErro := sErro +
            'No Valor de Base Calc. ICMS Subst.: Digitado = ' + C_TabelaValorICMSSubst.Text +
            '    Calculado = ' + FloatToStrF(nTotalValorICMSST, ffFixed, 10, 2) + ' => Dif.: ' +
            FloatToStrF(abs(nTotalValorICMSST - C_TabelaValorICMSSubst.Value), ffFixed, 10, 2) + #13 + #13;

    if C_TabelaValorICMSSubst.value > 0 then
        begin
            sErro := sErro + 'Foi digitado o Valor do ICMS Substituição R$: ' + C_TabelaValorICMSSubst.Text +
                '    verifique se os produtos de substituição tributária' + #13 +
                '    estão com o TVA correto, pois poderão ocorrer erros nos custos.' + #13 + #13;
        end;

    if length(sErro) > 15 then
        begin
            sErro := sErro + #13 +
                '(Desconsidere esta mensagem se a Nota Fiscal está correta, e estas diferenças representam apenas erros de arredondamento)' + #13 + #13 +
                'Deseja continuar a gravar esta Nota Fiscal ?';
            nOp := Application.MessageBox(Pchar(sErro), 'Nota Inconsistente', mb_yesno + mb_iconquestion + MB_DEFBUTTON2);
            if nOp = IDNO then
                result := false
            else
                begin
                    if Application.MessageBox(Pchar(
                        'Se esta Nota estiver realmente com inconsistência, acarretará em relatórios, estatísticas e valores contábeis não confiaveis.'
                        + #13 + #13 + 'Deseja realmente Gravar ?'), 'ATENÇÃO', mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = IDNO then
                        result := false;
                end;
        end;

end;

procedure TDMEntradas.C_TabelaBASECALCICMSChange(Sender: TField);
begin
    // Felipe - Comentado trecho abaixo para deixar que o usuário informe o valor correto. Hoje já ocorre de notas terem produtos com diferentes alíquotas de ICMS (20/01/2015)

    //if C_TabelaPossuiICMS.Value = 'S' then
//        begin
//            inherited;
//            C_TabelaValorICMS.Value := Truncar(C_TabelaBaseCalcICMS.Value * (C_TabelaAliqICMSCompra.Value / 100), 2);
//        end;
end;

procedure TDMEntradas.C_TabelaNUMEROValidate(Sender: TField);
begin
    inherited;
    if Sender.AsString = '' then
        exit;

    if (C_TabelaTipoPadrao.value = 101) then
        with DMProjeto.Q_SQL do
            begin

                Close;
                if not bAlteracao then
                    SQL.Text := 'Select count(*) as Existe from Entradas ' +
                        'Where  Favorecido = :F and Numero = :N and Situacao = ''N'' and tipopadrao = 101'
                else
                    SQL.Text := 'Select count(*) as Existe from Entradas ' +
                        'Where  Favorecido = :F and Numero = :N and Situacao = ''N'' and tipopadrao = 101 ' +
                        'and    Entrada <> ' + C_TabelaIDMestre.AsString + ' ';

                Params[0].AsInteger := C_TabelaFavorecido.Value;
                Params[1].AsString := trim(Sender.AsString);
                Open;

                if FieldByName('Existe').asInteger > 0 then
                    begin
                        DlgMsg.ShowMsg(7000); // Já existe uma Nota Fiscal de Entrada com esse número para este mesmo Fornecedor!
                        raise Exception.Create('@@');
                    end;
                Close;
            end;

end;

procedure TDMEntradas.C_TabelaF_CPF_CNPJValidate(Sender: TField);
var sDescricao: string;
begin
    inherited;
    if (Sender.AsVariant = null) or (Sender.AsString = '') or bVerifica then
        exit;

    CPF_CGCValido(Sender.Text);

    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Favorecido, TipoFavorecido From Favorecidos where CPF_CNPJ = :C and Desativado = ''N'' and favorecido <> :nFav';
            Params[0].asString := Sender.AsString;
            Params[1].asInteger := C_TabelaFavorecido.value;
            Open;
            if ((FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1)) and (FieldByName('TipoFavorecido').asinteger = 2) then
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

procedure TDMEntradas.C_ItensDESCONTOValidate(Sender: TField);
begin
    inherited;
    if Sender.asCurrency > C_ItensPreco.asCurrency then
        begin
            DlgMsg.ShowMsg(2800);
            raise Exception.Create('@@');
        end;
end;

procedure TDMEntradas.C_ItensDESCONTOChange(Sender: TField);
var
    nValor: currency;
begin
    inherited;
    if not bSubTotalChange then
        C_ItensSubTotal.Value := C_ItensQUANTIDADE.value * (C_ItensPRECO.Value - C_ItensDESCONTO.Value);

    if not bInDesconto and (C_ItensPreco.Value > 0) then
        begin
            nValor := ((C_ItensDesconto.Value / C_ItensPreco.Value) * 100);
            if ABS(nValor - C_ItensPDesconto.Value) > 0.01 then
                begin
                    bInDesconto := true;
                    C_ItensPDesconto.Value := nValor;
                    bInDesconto := false;
                end;
        end;

end;

procedure TDMEntradas.C_ItensPDESCONTOChange(Sender: TField);
var
    nValor: currency;
begin
    inherited;
    {Felipe - Incluido esse try para evitar que o erro: "Value of field 'PDESCONTO' is out of range" seja exibido}
    try
        if not bInDesconto then
            begin
                nValor := C_ItensPreco.Value * (C_ItensPDesconto.Value / 100);
                if ABS(nValor - C_ItensDesconto.Value) > 0.01 then
                    begin
                        bInDesconto := true;
                        C_ItensDesconto.Value := nValor;
                        bInDesconto := false;
                    end;
            end;
    except

    end;

end;

procedure TDMEntradas.C_ItensUNIDADEValidate(Sender: TField);
begin
    inherited;
    if not bMesclando then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'select itemunidade ' +
                    'from itensunidades ' +
                    'where item = :item ' +
                    'and unidade = :und ';
                ParamByName('item').AsInteger := C_ItensITEM.AsInteger;
                ParamByName('und').AsString := Sender.Value;
                Open;
                if RecordCount < 1 then
                    begin
                        Close;
                        DlgMsg.ShowMsg(8027);
                        raise Exception.Create('@@');
                    end;
            end;
end;

procedure TDMEntradas.C_TabelaINDEXADORChange(Sender: TField);
var TmpDS: TClientDataSet;
begin
    inherited;
    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Parcelas, True);
            First;
            while not EOF do
                begin
                    Edit;
                    FieldByName('Indexador').AsVariant := Sender.AsVariant;
                    Post;
                    Next;
                end;
        end;
    TmpDS.Free;
end;

procedure TDMEntradas.C_TabelaBAIXAESTOQUEFISCALChange(Sender: TField);
var
    nChave: Integer;
begin
    inherited;
    {Repassando as modificações deste flag para todos os ítens}
    with C_Itens do
        begin
            if not Active or (RecordCount = 0) then
                exit;

            nChave := C_ItensIDITEM.Value;

            DisableControls;
            First;
            while not EOF do
                begin
                    Edit;
                    C_ItensBaixaEstoqueFiscal.Value := Sender.asString;
                    Next;
                end;

            Locate('IDITEM', nChave, []);

            EnableControls;
        end;

end;

procedure TDMEntradas.C_ItensPRECOVENDAChange(Sender: TField);
begin
    inherited;
    if (bPrecoVendaPP) then
        begin
            C_ItensPRECOVENDAProdutosPreco.value := C_ItensPRECOVENDA.Value;
            AtualizarDataHoraAlteracao_Item(C_ItensI_ITEM.Value);
        end;
end;

procedure TDMEntradas.C_ItensIPIChange(Sender: TField);
begin
    inherited;
    C_ItensVALORIPIPROD.OnChange := nil;
    if C_TabelaPossuiIPI.value = 'S' then
        begin
            if C_ItensIPI.value >= 0 then
            try
                C_ItensValorIPIProd.value := (C_ItensSubTotal.value * C_ItensIPI.value) / 100;
                C_ItensALIQIPI.Value := C_ItensIPI.Value;
            except
                C_ItensValorIPIProd.value := 0.00;
            end;
        end;
    C_ItensVALORIPIPROD.OnChange := C_ItensVALORIPIPRODChange;
end;

procedure TDMEntradas.C_ItensVALORIPIPRODChange(Sender: TField);
begin
    inherited;
    C_ItensIPI.OnChange := nil;
    try
        C_ItensIPI.value := (C_ItensValorIPIProd.value / C_ItensSubTotal.value * 100.00);
        C_ItensALIQIPI.value := (C_ItensVALORIPIPROD.value / C_ItensSubTotal.value * 100.00);
    except
        C_ItensIPI.value := 0.00;
        C_ItensALIQIPI.Value := 0.00;
    end;
    C_ItensIPI.OnChange := C_ItensIPIChange;
end;

procedure TDMEntradas.C_ItensVALORICMSPRODChange(Sender: TField);
begin
    inherited;
    C_itensValorICMSProd.OnChange := nil;
    try
        //C_ItensValorICMSProd.value := truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value)/100,2);
        //C_itensValorICMSprod.Value := 0.00 ;
        C_ItensValorICMSProd.onChange := C_ItensVALORICMSPRODChange;
    except
        C_ItensValorICMSProd.value := Arredonda((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
        // C_itensValorICMSprod.Value := 0.00 ;
    end;
    C_ItensValorICMSProd.onChange := C_ItensVALORICMSPRODChange;
end;

procedure TDMEntradas.C_ItensALIQICMSChange(Sender: TField);
begin
    inherited;
    {
        Alterado em 04/11/2014
        Felipe - Alterado função de truncar para Arredondar, pois o calculo efetuado pelo SyncRetaguarda é diferente do calculo efetuado pelo SyncFiscal para geração dos arquivos Sped.
    }
    C_ItensVALORICMSPROD.value := Arredonda((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
end;

procedure TDMEntradas.C_ItensBASECALCICMSPRODChange(Sender: TField);
begin
    inherited;
    try
        C_ItensVALORICMSPROD.Value := Arredonda((C_ItensBASECALCICMSPROD.Value * C_ItensALIQICMS.Value) / 100, 2);
    except
        C_ItensVALORICMSPROD.Value := 0;
    end;
end;

// Felipe - Criado para atualizar o valor do campo DATA_HORA_ALTERACAO da tabela de itens quando o preço de venda do item for alterado. Só grava realmente
//          no banco quando o usuário grava a entrada (22/01/2015)

function TDMEntradas.AtualizarDataHoraAlteracao_Item(idItem: integer): boolean;
begin
    try
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'update itens ii set ii.data_hora_alteracao = :dt_now where ii.item = :iditem';
                ParamByName('dt_now').AsDateTime := Now;
                ParamByName('iditem').AsInteger := idItem;
                ExecSQL;

                Result := True;
            end;
    except
        Result := False;
    end;
end;

end.

