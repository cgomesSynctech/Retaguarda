unit Rpt_Invoices;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, ppDB, ppDBPipe, IBCustomDataSet, IBQuery, ppBands, ppMemo, ppReport,
    ppSubRpt, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass, ppCache,
    ppComm, ppRelatv, ppProd, myChkBox, ppVar, rxGIF, GIFImage, Provider,
    DBClient, ZRCtrls, ZReport, Variants, ZREscape, ZRPrntr, Printers, TXComp,
    ppDevice, ppFilDev, ppModule, daDataModule, DlgMsg, ppViewr, raCodMod,
    StdCtrls, ppRichTx, OleServer, PDFCreatorPilotLib_TLB;

type
    TRptInvoices = class(TForm)
        rbInvoice: TppReport;
        C_InvoiceDS: TDataSource;
        Q_Invoice: TIBQuery;
        dbpInvoice: TppDBPipeline;
        C_ItensDS: TDataSource;
        dbpInvItens: TppDBPipeline;
        Q_Parcelas: TIBQuery;
        C_ParcelasDS: TDataSource;
        dbpParcelas: TppDBPipeline;
        C_Parcelas: TClientDataSet;
        C_ParcelasPARCELA: TIntegerField;
        C_ParcelasVALOR: TBCDField;
        C_ParcelasVENCIMENTO: TDateField;
        C_ParcelasVENDA: TIntegerField;
        C_ParcelasSTATUS: TIntegerField;
        ZReportInvoice: TZReport;
        ZReportInvoiceHeader: TZRBand;
        ZReportInvoiceDetail: TZRBand;
        ZReportInvoiceDetailFooter: TZRBand;
        zrNomeEmpresa: TZRLabel;
        zrEndereco: TZRLabel;
        zrCidade: TZRLabel;
        ZReportInvoiceChild: TZRBand;
        zrvCODIGO: TZRField;
        zrvITEMDESC: TZRField;
        zrvQUANTIDADE: TZRField;
        zrvPRECO: TZRField;
        zrvTOTAL: TZRField;
        zrvTAXAVEL: TZRField;
        zrvUNIDADE: TZRField;
        zrvTotal0: TZRAggregator;
        zrvNome: TZRField;
        zrvEndereco: TZRField;
        zrCidadeUfZip: TZRField;
        zrvFone1: TZRField;
        zrvFax: TZRField;
        zrvVendedor: TZRField;
        zrvEnderecoEntrega: TZRField;
        zrvEntregaCidadeUfZip: TZRField;
        zrvTipoEntrega: TZRField;
        zrvDataEntrega: TZRField;
        lbTerms2: TZRLabel;
        zrvTerms: TZRField;
        dbTerms2: TZRLabel;
        lbDescontos2: TZRLabel;
        dbMensagem2: TZRLabel;
        dbDescontos2: TZRLabel;
        dbTotalFinal2: TZRLabel;
        dbPaid2: TZRLabel;
        dbBalance2: TZRLabel;
        zrvDiscounts: TZRField;
        zrvFreight: TZRField;
        zrvInterest: TZRField;
        zrvOthers: TZRField;
        zrvTotalInvoice: TZRField;
        zrvPaid: TZRField;
        zrvBalance: TZRField;
        zrvImposto: TZRField;
        zrvMensagem: TZRField;
        ZReportInvoiceChild0: TZRBand;
        ZReportInvoiceChild1: TZRBand;
        ZReportInvoiceChild2: TZRBand;
        ZRLabel1: TZRLabel;
        ZRLabel2: TZRLabel;
        ZRLabel4: TZRLabel;
        ZRLabel5: TZRLabel;
        ZRLabel6: TZRLabel;
        ZRLabel7: TZRLabel;
        ZRLabel3: TZRLabel;
        ZRLabel17: TZRLabel;
        ZRLabel20: TZRLabel;
        zrInvoice: TZRLabel;
        zrLinha1: TZRLabel;
        zrLinha2: TZRLabel;
        zrLinha3: TZRLabel;
        zrvTit2_Codigo: TZRField;
        zrvTit2_Descricao: TZRField;
        zrvTit2_Referencia: TZRField;
        zrvTit2_Unidade: TZRField;
        zrvTit2_Quantidade: TZRField;
        zrvTit2_Preco: TZRField;
        zrvTit2_Subtotal: TZRField;
        zrvTit2_Descontos: TZRField;
        zrvTit2_Juros: TZRField;
        zrvTit2_frete: TZRField;
        zrvTit2_Despesas: TZRField;
        zrvTit2_Tax: TZRField;
        ptDescontos2: TZRLabel;
        ZRVendaRapida: TZReport;
        ZRVendaRapidaHeader: TZRBand;
        ZRVendaRapidaDetail: TZRBand;
        ZRVendaRapidaChild: TZRBand;
        zrNomeEmpresa2: TZRLabel;
        zrEndereco2: TZRLabel;
        zrCidade2: TZRLabel;
        zrLinha5: TZRLabel;
        zrLinha6: TZRLabel;
        zrLinha7: TZRLabel;
        ZRVendaRapidaChild0: TZRBand;
        ZRLabel54: TZRLabel;
        lbData2: TZRSystemLabel;
        lbHora2: TZRSystemLabel;
        ZRVendaRapidaChild1: TZRBand;
        zrvCODIGO0: TZRField;
        zrvITEMDESC0: TZRField;
        zrvQUANTIDADE0: TZRField;
        zrvPRECO0: TZRField;
        zrvTOTAL1: TZRField;
        zrvTAXAVEL0: TZRField;
        zrvNOMEFUNCIONARIO: TZRField;
        zrvUNIDADE0: TZRField;
        zrvREFERENCIA: TZRField;
        ZRLabel55: TZRLabel;
        zrvTIT2Codigo: TZRField;
        zrvTit2Descricao: TZRField;
        zrvTit2Unidade: TZRField;
        zrvTit2Preco: TZRField;
        zrvTit2Quantidade: TZRField;
        zrvTit2SubTotal: TZRField;
        ZRLabel56: TZRLabel;
        ZRLabel57: TZRLabel;
        ZRLabel58: TZRLabel;
        ZRLabel59: TZRLabel;
        ZRLabel60: TZRLabel;
        zrvTotal2: TZRAggregator;
        zrvObsVendaRapida: TZRField;
        zrvTit2Juros: TZRField;
        zrvTitDescontos: TZRField;
        zrvTit2Tax: TZRField;
        zrvTax: TZRField;
        zrvDescontos: TZRField;
        zrvJuros: TZRField;
        zrvTerm: TZRField;
        zrvTit2TotalItens: TZRField;
        zrvTotalFinal: TZRField;
        zrvTit2TotalFinal: TZRField;
        zrvRepresentant: TZRField;
        zrvTotalPaid: TZRField;
        zrvBalanceVR: TZRField;
        ZRVendaRapidaDetailFooter: TZRBand;
        dbTerms: TZRLabel;
        lbTerms: TZRLabel;
        LbRepresent: TZRLabel;
        dbRepresent: TZRLabel;
        lbTotalItem: TZRLabel;
        dbTotalItem: TZRTotalLabel;
        ptTotalItem: TZRLabel;
        ptDescontos: TZRLabel;
        dbDescontos: TZRLabel;
        lbDescontos: TZRLabel;
        lbJuros: TZRLabel;
        ptJuros: TZRLabel;
        dbJuros: TZRLabel;
        lbTotalFinal: TZRLabel;
        ptTotalFinal: TZRLabel;
        dbTotalFinal: TZRLabel;
        dbPaid: TZRLabel;
        ptPaid: TZRLabel;
        ptBalance: TZRLabel;
        dbBalance: TZRLabel;
        dbMensagem: TZRLabel;
        Q_Itens: TIBQuery;
        zr40Colunas: TZReport;
        zr40ColunasDetail: TZRBand;
        zr40ColunasDetailFooter: TZRBand;
        zr40ColunasColumnHeader: TZRBand;
        ZRLabel88: TZRLabel;
        ZRLabel89: TZRLabel;
        cTIT2_CODIGO: TZRField;
        cTIT2_DESCRICAO: TZRField;
        cTIT2_UNIDADE: TZRField;
        cTIT2_QUANTIDADE: TZRField;
        cTIT2_PRECO: TZRField;
        cTIT2_SUBTOTAL: TZRField;
        c_TIT2_REFERENCIA: TZRField;
        cTIT2_TAX: TZRField;
        cCODIGO: TZRField;
        cDESCRICAO: TZRField;
        cQUANTIDADE: TZRField;
        cPRECO: TZRField;
        cTOTAL: TZRField;
        cUNIDADE: TZRField;
        ZRLabel90: TZRLabel;
        ZRLabel91: TZRLabel;
        ZRLabel92: TZRLabel;
        ZRLabel93: TZRLabel;
        ZRLabel94: TZRLabel;
        ZRLabel95: TZRLabel;
        ZRLabel96: TZRLabel;
        ZRLabel97: TZRLabel;
        ZRLabel98: TZRLabel;
        ZRLabel99: TZRLabel;
        ZRLabel100: TZRLabel;
        ZRLabel101: TZRLabel;
        ZRLabel102: TZRLabel;
        ZRLabel103: TZRLabel;
        cTAX: TZRField;
        cTotalGeral: TZRAggregator;
        cQtdeItens: TZRAggregator;
        cOBS: TZRField;
        zr40ColunasHeader: TZRBand;
        zrCidade3: TZRLabel;
        zrEndereco3: TZRLabel;
        zrNomeEmpresa3: TZRLabel;
        cDATA: TZRField;
        cTOTALITENS: TZRField;
        cIMPOSTO: TZRField;
        cTOTALINVOICE: TZRField;
        C_Invoice: TClientDataSet;
        C_Itens: TClientDataSet;
        P_Invoice: TDataSetProvider;
        Q_InvoiceDS: TDataSource;
        C_InvoiceSAIDA: TIntegerField;
        C_InvoiceINVOICE: TStringField;
        C_InvoiceDATA: TDateField;
        C_InvoiceSITUACAO: TStringField;
        C_InvoiceDATAENTREGA: TDateField;
        C_InvoiceENDERECOENTREGA: TStringField;
        C_InvoiceVALIDADE: TDateField;
        C_InvoiceSTATUS: TStringField;
        C_InvoiceTIPOENTREGA: TStringField;
        C_InvoiceVENDEDOR: TStringField;
        C_InvoicePEDIDO_CLIENTE: TStringField;
        C_InvoiceFONE1: TStringField;
        C_InvoiceFAX: TStringField;
        C_InvoiceCAMPO01: TStringField;
        C_InvoiceCAMPO02: TStringField;
        C_InvoiceCAMPO03: TStringField;
        C_InvoiceCAMPO04: TStringField;
        C_InvoicePLANOPAG: TStringField;
        C_InvoiceNOME: TStringField;
        C_InvoiceENDERECO: TStringField;
        C_InvoiceTIPOMOVIMENTO: TIntegerField;
        C_InvoiceDESCRICAO: TStringField;
        C_InvoiceTIPO: TStringField;
        C_InvoiceBAIXAESTOQUE: TStringField;
        C_InvoiceCALCCOMISSAO: TStringField;
        C_InvoicePOSSUIENTREGA: TStringField;
        C_InvoiceBLOQUEARSEATRASADO: TStringField;
        C_InvoiceBLOQUEARPORSITUACAO: TStringField;
        C_InvoiceBLOQUEARPORESTOQUE: TStringField;
        C_InvoiceLIMITEFAVORECIDO: TStringField;
        C_InvoiceSIGLAINICIAL: TStringField;
        C_InvoiceTIT2_DATA: TStringField;
        C_InvoiceTIT2_NUMERO: TStringField;
        C_InvoiceCB_INFOENTREGA: TStringField;
        C_InvoiceTIT2_LOCALENTREGA: TStringField;
        C_InvoiceTIT2_DATAENTREGA: TStringField;
        C_InvoiceTIT2_TIPOENTREGA: TStringField;
        C_InvoiceCB_VENDEDOR: TStringField;
        C_InvoiceTIT2_VENDEDOR: TStringField;
        C_InvoiceCB_PEDIDO: TStringField;
        C_InvoiceTIT2_PEDIDO: TStringField;
        C_InvoiceCB_COMISSAO: TStringField;
        C_InvoiceTIT2_COMISSAO: TStringField;
        C_InvoiceCB_TERMOS: TStringField;
        C_InvoiceTIT2_TERMOS: TStringField;
        C_InvoiceCB_MENSAGEM: TStringField;
        C_InvoiceTIT2_MENSAGEM: TStringField;
        C_InvoiceCB_DESCONTOS: TStringField;
        C_InvoiceTIT2_DESCONTOS: TStringField;
        C_InvoiceCB_FRETE: TStringField;
        C_InvoiceTIT2_FRETE: TStringField;
        C_InvoiceCB_TOTALITENS: TStringField;
        C_InvoiceTIT2_TOTALITENS: TStringField;
        C_InvoiceCB_TOTALFINAL: TStringField;
        C_InvoiceTIT2_TOTALFINAL: TStringField;
        C_InvoiceTIT2_DESCRICAO: TStringField;
        C_InvoiceTIT2_QUANTIDADE: TStringField;
        C_InvoiceTIT2_PRECO: TStringField;
        C_InvoiceTIT2_SUBTOTAL: TStringField;
        C_InvoiceCB_JUROS: TStringField;
        C_InvoiceTIT2_JUROS: TStringField;
        C_InvoiceCB_DESPESAS: TStringField;
        C_InvoiceTIT2_DESPESAS: TStringField;
        C_InvoiceCB_CAMPO01: TStringField;
        C_InvoiceTIT2_CAMPO1: TStringField;
        C_InvoiceCB_CAMPO02: TStringField;
        C_InvoiceTIT2_CAMPO2: TStringField;
        C_InvoiceCB_CAMPO03: TStringField;
        C_InvoiceTIT2_CAMPO3: TStringField;
        C_InvoiceCB_CAMPO04: TStringField;
        C_InvoiceTIT2_CAMPO4: TStringField;
        C_InvoiceCB_CODIGO: TStringField;
        C_InvoiceTIT2_CODIGO: TStringField;
        C_InvoiceCB_FUNCIONARIO: TStringField;
        C_InvoiceTIT2_FUNCIONARIO: TStringField;
        C_InvoiceTIT2_COLUNA1: TStringField;
        C_InvoiceTIT2_COLUNA2: TStringField;
        C_InvoiceTIT2_COLUNA3: TStringField;
        C_InvoiceTIT2_COLUNA4: TStringField;
        C_InvoiceCORTITULOS: TIntegerField;
        C_InvoiceTIPOFAVPADRAO: TIntegerField;
        C_InvoiceTIPOPADRAO: TIntegerField;
        C_InvoiceCB_COLUNA1: TStringField;
        C_InvoiceCB_COLUNA2: TStringField;
        C_InvoiceCB_COLUNA3: TStringField;
        C_InvoiceCB_COLUNA4: TStringField;
        C_InvoiceTIT2_UNIDADE: TStringField;
        C_InvoiceFOTO: TStringField;
        C_InvoiceTIT2_VALIDADE: TStringField;
        C_InvoiceCB_REFERENCIA: TStringField;
        C_InvoiceTIT2_REFERENCIA: TStringField;
        C_InvoiceTIT2_QTDRECEBIDA: TStringField;
        C_InvoiceTIT2_SITUACAO: TStringField;
        C_InvoiceATUALIZACUSTO: TStringField;
        C_InvoiceATUALIZAPRECO: TStringField;
        C_InvoiceINCLUIDESCONTO: TStringField;
        C_InvoiceATUALIZAPRECOMANUAL: TStringField;
        C_InvoiceCB_STATUS: TStringField;
        C_InvoiceSTATUSPADRAO: TStringField;
        C_InvoiceCB_STATUSITENS: TStringField;
        C_InvoiceSTATUSPADRAOITENS: TStringField;
        C_InvoiceCB_DOCSGARANTIA: TStringField;
        C_InvoiceCB_CODIGOFORN: TStringField;
        C_InvoiceTIT2_CODIGOFORN: TStringField;
        C_InvoiceCB_IMPRIMIROP: TStringField;
        C_InvoiceCB_PGTOS: TStringField;
        C_InvoiceCB_FICHACLIENTE: TStringField;
        C_InvoiceCB_TOPRINTER: TStringField;
        C_InvoiceCB_GERARNUM: TStringField;
        C_InvoiceFAVORECIDOPADRAO: TIntegerField;
        C_InvoiceTIPOIMPRESSAO_OP: TStringField;
        C_InvoiceMENSAGEMPADRAO: TIntegerField;
        C_InvoiceCB_CONTRATO: TStringField;
        C_InvoiceTERMOCONTRATO: TIntegerField;
        C_InvoiceTEMPLATE: TIntegerField;
        C_InvoiceCB_PRECO: TStringField;
        C_InvoiceCB_SUBTOTAL: TStringField;
        C_InvoiceDESCTERMOCONTRATO: TStringField;
        C_InvoiceTITULOCONTRATO: TStringField;
        C_InvoiceTEMPLATEARQUIVO: TStringField;
        C_InvoiceDESCSTATUSSAIDA: TStringField;
        C_InvoiceTIPOORIGEM: TIntegerField;
        C_ItensSAIDA: TIntegerField;
        C_ItensCODIGO: TStringField;
        C_ItensITEMDESC: TStringField;
        C_ItensQUANTIDADE: TFloatField;
        C_ItensPRECO: TFloatField;
        C_ItensTIPOITEM: TIntegerField;
        C_ItensCOLUNA1: TStringField;
        C_ItensCOLUNA2: TStringField;
        C_ItensCOLUNA3: TStringField;
        C_ItensCOLUNA4: TStringField;
        C_ItensNOMEFUNCIONARIO: TStringField;
        C_ItensUNIDADE: TStringField;
        C_ItensREFERENCIA: TStringField;
        C_ItensDESCRICAOCOMPLEMENTAR: TStringField;
        C_CompItens: TClientDataSet;
        C_CompItensDS: TDataSource;
        Q_CompItens: TIBQuery;
        dbCompItens: TppDBPipeline;
        Q_ItensDS: TDataSource;
        C_ItensSAIDAITEM: TIntegerField;
        C_CompItensQUANTIDADE: TBCDField;
        C_CompItensUNIDADE: TStringField;
        C_CompItensDESCRICAO: TStringField;
        C_InvoiceQ_Parcelas: TDataSetField;
        C_InvoiceCB_COMPOSICAOITENS: TStringField;
        C_InvoiceCB_DESCRICAOCOMPLEMENTAR: TStringField;
        C_InvoiceCB_UNIDADE: TStringField;
        rbInvoiceProdServ: TppReport;
        C_Servicos: TClientDataSet;
        C_ServicosDS: TDataSource;
        C_ServicosCodigo: TStringField;
        C_ServicosDescricao: TStringField;
        C_ServicosUnd: TStringField;
        C_ServicosPreco: TCurrencyField;
        C_ServicosQuantidade: TCurrencyField;
        C_ServicosSubTotal: TCurrencyField;
        dbServicos: TppDBPipeline;
        rbInvoiceEconomico: TppReport;
        C_ItensDESCTIPOITEM: TStringField;
        rbMeiaFolha: TppReport;
        ppHeaderBand8: TppHeaderBand;
        ppShape76: TppShape;
        ppShape77: TppShape;
        ppDBText135: TppDBText;
        ppDBText141: TppDBText;
        ppDBText177: TppDBText;
        lbCodigo4: TppDBText;
        lbFuncionario4: TppDBText;
        lbQuantidade4: TppDBText;
        lbSubTotal4: TppDBText;
        lbColuna4_1: TppDBText;
        lbTax4: TppLabel;
        lbDescricao4: TppDBText;
        lbUnidade4: TppDBText;
        lbPreco4: TppDBText;
        lbReferencia4: TppDBText;
        shpColuna4_4: TppLine;
        shpColuna4_3: TppLine;
        shpColuna4_2: TppLine;
        shpColuna4_1: TppLine;
        shpTax4: TppLine;
        shpSubTotal4: TppLine;
        shpPreco4: TppLine;
        shpQuantidade4: TppLine;
        shpUnidade4: TppLine;
        shpReferencia4: TppLine;
        shpDescricao4: TppLine;
        shpCodigo4: TppLine;
        shpFuncionario4: TppLine;
        lnCodigo4: TppLine;
        lnDescricao4: TppLine;
        lnReferencia4: TppLine;
        lnUnidade4: TppLine;
        lnQuantidade4: TppLine;
        lnPreco4: TppLine;
        lnSubTotal4: TppLine;
        lnTax4: TppLine;
        lnColuna4_1: TppLine;
        lnColuna4_2: TppLine;
        lnColuna4_3: TppLine;
        lnColuna4_4: TppLine;
        lnFuncionario4: TppLine;
        lbColuna4_4: TppDBText;
        lbColuna4_2: TppDBText;
        lbColuna4_3: TppDBText;
        DetalheSimples: TppDetailBand;
        rgItens4: TppRegion;
        dbtTax4: TmyDBCheckBox;
        dbtFuncionario4: TppDBText;
        dbtCodigo4: TppDBText;
        dbtUnidade4: TppDBText;
        dbtQuantidade4: TppDBText;
        dbtPreco4: TppDBText;
        dbtSubTotal4: TppDBText;
        dbtColuna4_1: TppDBText;
        dbtColuna4_2: TppDBText;
        dbtColuna4_3: TppDBText;
        dbtColuna4_4: TppDBText;
        dbtReferencia4: TppDBText;
        dbtDescComplementar4: TppDBMemo;
        subComposicaoItens4: TppSubReport;
        ppChildReport8: TppChildReport;
        ppHeaderBand9: TppHeaderBand;
        ppDetailBand14: TppDetailBand;
        dbtQtdeComposicao4: TppDBText;
        ppFooterBand7: TppFooterBand;
        ppFooterBand8: TppFooterBand;
        ppRegion11: TppRegion;
        ppShape89: TppShape;
        ppDBText214: TppDBText;
        ppDBMemo5: TppDBMemo;
        ppSummaryBand4: TppSummaryBand;
        ppLine79: TppLine;
        lbEmpresa: TppLabel;
        lbEndereco: TppLabel;
        lbTelefone: TppLabel;
        ppDBText136: TppDBText;
        ppDBText139: TppDBText;
        ppDBText140: TppDBText;
        dbRepresent2: TZRLabel;
        lbRepresent2: TZRLabel;
        lbTotalItem2: TZRLabel;
        ptTotalItem2: TZRLabel;
        Tit2TotalItens: TZRField;
        C_InvoiceCB_BALANCE: TStringField;
        C_InvoiceTIT2_BALANCE: TStringField;
        C_InvoiceTIT2_PGTOS: TStringField;
        C_InvoiceCB_VALIDADE: TStringField;
        lbPaid: TZRLabel;
        lbBalance: TZRLabel;
        zrvTit2_Pgtos: TZRField;
        zrvTit2_Balance: TZRField;
        lbTotalFinal2: TZRLabel;
        lbPaid2: TZRLabel;
        lbBalance2: TZRLabel;
        ptTotalFinal2: TZRLabel;
        ptPaid2: TZRLabel;
        ptBalance2: TZRLabel;
        Tit2_Paid: TZRField;
        Tit2_Balance: TZRField;
        Tit2_TotalFinal: TZRField;
        DescComplementar: TZRField;
        subCompItens: TZRSubDetail;
        ZRLabel22: TZRLabel;
        ZRLabel23: TZRLabel;
        zrvQUANTIDADE1: TZRField;
        zrvUNIDADE1: TZRField;
        zrvDESCRICAO: TZRField;
        zrChildDescComplementar: TZRBand;
        subCompItens2: TZRSubDetail;
        zrvQUANTIDADE2: TZRField;
        zrvDESCRICAO0: TZRField;
        zrvDESCRICAOCOMPLEMENTAR: TZRField;
        ZRLabel25: TZRLabel;
        ZRLabel26: TZRLabel;
        zr40ColunasChild: TZRBand;
        ZRLabel86: TZRLabel;
        ZRLabel87: TZRLabel;
        ZRSystemLabel1: TZRSystemLabel;
        zrvDESCTIPOITEM: TZRField;
        ChildDescComplementar: TZRBand;
        ZRLabel16: TZRLabel;
        vgf: TZRBand;
        ZRLabel63: TZRLabel;
        ZRLabel62: TZRLabel;
        ZRLabel64: TZRLabel;
        ZRLabel65: TZRLabel;
        ZRLabel66: TZRLabel;
        ZRLabel67: TZRLabel;
        zrvDESCTIPOITEM0: TZRField;
        ZRLabel28: TZRLabel;
        ZRFrameLine2: TZRFrameLine;
        zrvNomeCliente: TZRField;
        zrNomeCodigoCliente: TZRLabel;
        lbCancelado4: TppLabel;
        dbtUnidComposicao4: TppDBText;
        dbtDescComposicao4: TppDBMemo;
        ZRLabel30: TZRLabel;
        ZRLabel31: TZRLabel;
        zrvUNIDADE2: TZRField;
        dbtDescricao4: TppDBMemo;
        ppHeaderBand6: TppHeaderBand;
        ppShape46: TppShape;
        rgCab3: TppRegion;
        ppDBText74: TppDBText;
        ppShape47: TppShape;
        ppLabel17: TppLabel;
        ppShape48: TppShape;
        ppShape49: TppShape;
        ppDBText75: TppDBText;
        ppDBText76: TppDBText;
        ppDBText77: TppDBText;
        ppDBText78: TppDBText;
        ppDBText79: TppDBText;
        ppDBText80: TppDBText;
        ppDBText101: TppDBText;
        rgVendedor3: TppRegion;
        ppShape50: TppShape;
        ppDBText102: TppDBText;
        ppDBText103: TppDBText;
        rgPedido3: TppRegion;
        ppShape51: TppShape;
        ppDBText104: TppDBText;
        ppDBText105: TppDBText;
        rgCampo3_2: TppRegion;
        ppShape52: TppShape;
        ppDBText108: TppDBText;
        ppDBText109: TppDBText;
        rgCampo3_3: TppRegion;
        ppShape53: TppShape;
        ppDBText110: TppDBText;
        ppDBText111: TppDBText;
        rgCampo3_4: TppRegion;
        ppShape54: TppShape;
        ppDBText112: TppDBText;
        ppDBText113: TppDBText;
        lbColuna3_3: TppDBText;
        rgCampo3_1: TppRegion;
        ppShape55: TppShape;
        ppDBText114: TppDBText;
        ppDBText120: TppDBText;
        ppDBText121: TppDBText;
        ppLabel19: TppLabel;
        rgValidade3: TppRegion;
        ppShape56: TppShape;
        ppDBText122: TppDBText;
        ppDBText123: TppDBText;
        ppDBText124: TppDBText;
        rgInfoEntrega3: TppRegion;
        ppShape57: TppShape;
        ppDBText125: TppDBText;
        ppDBText126: TppDBText;
        ppShape59: TppShape;
        ppDBText127: TppDBText;
        ppDBText128: TppDBText;
        ppShape60: TppShape;
        ppDBText129: TppDBText;
        ppDBText130: TppDBText;
        ppDBText131: TppDBText;
        lbCodigo3: TppDBText;
        lbFuncionario3: TppDBText;
        lbQuantidade3: TppDBText;
        lbSubTotal3: TppDBText;
        lbColuna3_1: TppDBText;
        lbDescricao3: TppDBText;
        lbUnidade3: TppDBText;
        lbPreco3: TppDBText;
        lbReferencia3: TppDBText;
        shpColuna3_4: TppLine;
        shpColuna3_3: TppLine;
        shpColuna3_2: TppLine;
        shpColuna3_1: TppLine;
        shpTax3: TppLine;
        shpSubTotal3: TppLine;
        shpPreco3: TppLine;
        shpQuantidade3: TppLine;
        shpUnidade3: TppLine;
        shpReferencia3: TppLine;
        shpDescricao3: TppLine;
        shpCodigo3: TppLine;
        shpFuncionario3: TppLine;
        lnCodigo3: TppLine;
        lnDescricao3: TppLine;
        lnReferencia3: TppLine;
        lnUnidade3: TppLine;
        lnQuantidade3: TppLine;
        lnPreco3: TppLine;
        lnSubTotal3: TppLine;
        lnColuna3_1: TppLine;
        lnColuna3_2: TppLine;
        lnColuna3_3: TppLine;
        lnColuna3_4: TppLine;
        lnFuncionario3: TppLine;
        lbColuna3_4: TppDBText;
        lbColuna3_2: TppDBText;
        ppDBText132: TppDBText;
        lbCancelado3: TppLabel;
        DetalheItens: TppDetailBand;
        rgItens3: TppRegion;
        dbtFuncionario3: TppDBText;
        dbtCodigo3: TppDBText;
        dbtUnidade3: TppDBText;
        dbtQuantidade3: TppDBText;
        dbtPreco3: TppDBText;
        dbtSubTotal3: TppDBText;
        dbtColuna3_1: TppDBText;
        dbtColuna3_2: TppDBText;
        dbtColuna3_3: TppDBText;
        dbtColuna3_4: TppDBText;
        dbtReferencia3: TppDBText;
        dbtDescricao3: TppDBMemo;
        dbtDescComplementar3: TppDBMemo;
        subComposicaoItens3: TppSubReport;
        ppChildReport9: TppChildReport;
        ppHeaderBand7: TppHeaderBand;
        ppDetailBand12: TppDetailBand;
        dbtQtdeComposicao3: TppDBText;
        dbtUnidComposicao3: TppDBText;
        dbtDescComposicao3: TppDBMemo;
        ppFooterBand5: TppFooterBand;
        ppFooterBand6: TppFooterBand;
        rgMensagem3: TppRegion;
        ppShape61: TppShape;
        ppDBText146: TppDBText;
        ppDBMemo4: TppDBMemo;
        ppSummaryBand3: TppSummaryBand;
        subParcelas3: TppSubReport;
        ppChildReport10: TppChildReport;
        ppColumnHeaderBand3: TppColumnHeaderBand;
        ppLine41: TppLine;
        ppLine42: TppLine;
        ppDetailBand13: TppDetailBand;
        ppDBText147: TppDBText;
        ppDBText148: TppDBText;
        ppDBText149: TppDBText;
        ppLine43: TppLine;
        ppLine44: TppLine;
        ppLine45: TppLine;
        ppLine46: TppLine;
        ppLine47: TppLine;
        ppImage1: TppImage;
        ppImage4: TppImage;
        ppColumnFooterBand3: TppColumnFooterBand;
        rgDesconto3: TppRegion;
        ppDBText150: TppDBText;
        ppDBText151: TppDBText;
        rgFrete3: TppRegion;
        ppDBText152: TppDBText;
        ppDBText153: TppDBText;
        rgJuros3: TppRegion;
        ppDBText154: TppDBText;
        ppDBText155: TppDBText;
        rgDespesas3: TppRegion;
        ppDBText156: TppDBText;
        ppDBText157: TppDBText;
        rgTotal3: TppRegion;
        ppDBText160: TppDBText;
        ppDBText161: TppDBText;
        rgBalance3: TppRegion;
        ppDBText162: TppDBText;
        rgPaid3: TppRegion;
        ppDBText163: TppDBText;
        ppLabel24: TppLabel;
        dbtSubTotalItem3: TppDBCalc;
        ppShape86: TppShape;
        ppDBText169: TppDBText;
        ppDBText170: TppDBText;
        ppLine5: TppLine;
        ppGroup1: TppGroup;
        CabGrupoPorTipoItem: TppGroupHeaderBand;
        ppDBText133: TppDBText;
        RodGrupoPorTipoItem: TppGroupFooterBand;
        dbtTotalPorTipo: TppDBCalc;
        shpTotalPorTipo: TppLine;
        ppHeaderBand1: TppHeaderBand;
        ppShape1: TppShape;
        rbrgCabecalho: TppRegion;
        ppDBText1: TppDBText;
        ppShape2: TppShape;
        ppLabel2: TppLabel;
        ppShape3: TppShape;
        ppShape4: TppShape;
        ppDBText2: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBText14: TppDBText;
        dfTITData: TppDBText;
        rbrgVendedor: TppRegion;
        ppShape9: TppShape;
        ppDBText25: TppDBText;
        dfTITVend: TppDBText;
        rbrgPedido: TppRegion;
        ppShape11: TppShape;
        ppDBText27: TppDBText;
        dfTITPedido: TppDBText;
        rbrgCampo02: TppRegion;
        ppShape15: TppShape;
        ppDBText31: TppDBText;
        dfTITCampo2: TppDBText;
        rbrgCampo03: TppRegion;
        ppShape17: TppShape;
        ppDBText33: TppDBText;
        dfTITCampo3: TppDBText;
        rbrgCampo04: TppRegion;
        ppShape19: TppShape;
        ppDBText35: TppDBText;
        dfTITCampo4: TppDBText;
        rbrgCampo01: TppRegion;
        ppShape13: TppShape;
        ppDBText29: TppDBText;
        dfTITCampo1: TppDBText;
        dfTITTipoMov: TppDBText;
        ppLabel4: TppLabel;
        rbrgValidade: TppRegion;
        ppShape7: TppShape;
        ppDBText4: TppDBText;
        ppDBText6: TppDBText;
        ppDBText30: TppDBText;
        regInfoEntrega: TppRegion;
        ppShape23: TppShape;
        dfTITDataEnt: TppDBText;
        ppDBText39: TppDBText;
        ppShape25: TppShape;
        dfTITTipoEnt: TppDBText;
        ppDBText43: TppDBText;
        ppShape21: TppShape;
        ppDBText37: TppDBText;
        dfTITLocEnt: TppDBText;
        ppDBText41: TppDBText;
        lbCancelado: TppLabel;
        ppDetailBand1: TppDetailBand;
        rbshItens: TppRegion;
        lnCodigo: TppLine;
        lnSubTotal: TppLine;
        lnColuna1: TppLine;
        lnFuncionario: TppLine;
        lnPreco: TppLine;
        dbtFuncionario: TppDBText;
        dbtCodigo: TppDBText;
        dbtUnidade: TppDBText;
        dbtQuantidade: TppDBText;
        dbtPreco: TppDBText;
        dbtSubTotal: TppDBText;
        dbtColuna1: TppDBText;
        dbtColuna2: TppDBText;
        dbtColuna3: TppDBText;
        dbtColuna4: TppDBText;
        lnDescricao: TppLine;
        lnUnidade: TppLine;
        lnQuantidade: TppLine;
        lnColuna2: TppLine;
        lnColuna3: TppLine;
        lnColuna4: TppLine;
        lnReferencia: TppLine;
        dbtReferencia: TppDBText;
        dbtDescricao: TppDBMemo;
        subComposicaoItens: TppSubReport;
        ppChildReport3: TppChildReport;
        ppHeaderBand2: TppHeaderBand;
        ppDetailBand4: TppDetailBand;
        dbtQtdeComposicao: TppDBText;
        dbtUnidComposicao: TppDBText;
        dbtDescComposicao: TppDBMemo;
        ppFooterBand1: TppFooterBand;
        dbtDescComplementar: TppDBMemo;
        rbRodape: TppFooterBand;
        rbrgSumario: TppRegion;
        ppShape6: TppShape;
        dfTITMensagem: TppDBText;
        ppDBMemo1: TppDBMemo;
        ppSummaryBand1: TppSummaryBand;
        rbsrParcelas: TppSubReport;
        ppChildReport2: TppChildReport;
        ppColumnHeaderBand1: TppColumnHeaderBand;
        ppShape12: TppShape;
        ppLabel3: TppLabel;
        ppLabel6: TppLabel;
        ppLine19: TppLine;
        ppLabel5: TppLabel;
        ppLine20: TppLine;
        ppDetailBand3: TppDetailBand;
        ppDBText24: TppDBText;
        ppDBText26: TppDBText;
        ppDBText28: TppDBText;
        ppLine21: TppLine;
        ppLine22: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        imgAtrasado: TppImage;
        imgPago: TppImage;
        ppColumnFooterBand1: TppColumnFooterBand;
        rgDesconto: TppRegion;
        ppDBText5: TppDBText;
        ppLine14: TppLine;
        ppDBText19: TppDBText;
        rgFrete: TppRegion;
        ppDBText15: TppDBText;
        ppLine23: TppLine;
        ppDBText16: TppDBText;
        rgJuros: TppRegion;
        ppDBText17: TppDBText;
        ppLine27: TppLine;
        ppDBText18: TppDBText;
        rgDespesas: TppRegion;
        ppDBText20: TppDBText;
        ppLine31: TppLine;
        ppDBText21: TppDBText;
        rgTotalInvoice: TppRegion;
        ppShape16: TppShape;
        ppShape18: TppShape;
        dfTITTotal: TppDBText;
        ppDBText9: TppDBText;
        rgBalance: TppRegion;
        ppShape8: TppShape;
        ppShape10: TppShape;
        ppDBText8: TppDBText;
        rgPaid: TppRegion;
        ppShape14: TppShape;
        ppShape20: TppShape;
        ppDBText7: TppDBText;
        ppPageStyle1: TppPageStyle;
        shpTotalItem: TppShape;
        shpReferencia: TppShape;
        shpColuna1: TppShape;
        shpColuna2: TppShape;
        shpColuna4: TppShape;
        shpColuna3: TppShape;
        shpUnidade: TppShape;
        shpSubtotal: TppShape;
        shpQuantidade: TppShape;
        shpFuncionario: TppShape;
        shpCodigo: TppShape;
        lbCodigo: TppDBText;
        lbFuncionario: TppDBText;
        lbQuantidade: TppDBText;
        lbSubTotal: TppDBText;
        lbColuna1: TppDBText;
        ppShape5: TppShape;
        ppDBText3: TppDBText;
        dfTITTermo: TppDBText;
        ppLine1: TppLine;
        shpDescricao: TppShape;
        lbDescricao: TppDBText;
        lbUnidade: TppDBText;
        shpPreco: TppShape;
        lbPreco: TppDBText;
        lbColuna2: TppDBText;
        lbColuna3: TppDBText;
        lbColuna4: TppDBText;
        lbReferencia: TppDBText;
        dbtTotalItem: TppDBText;
        rbOrcamento: TppReport;
        ppHeaderBand10: TppHeaderBand;
        rgCab: TppRegion;
        ppDBText81: TppDBText;
        ppLabel27: TppLabel;
        ppLabel29: TppLabel;
        ppDBText82: TppDBText;
        dbNumero: TppDBText;
        dbCliente: TppDBText;
        ppDBText142: TppDBText;
        ppDetailBand2: TppDetailBand;
        dbtCodigo_O: TppDBText;
        lnCodigo_O: TppLine;
        lnDescricao_O: TppLine;
        dbtDescricao_O: TppDBText;
        dbtReferencia_O: TppDBText;
        lnReferencia_O: TppLine;
        dbtFabricante_O: TppDBText;
        lnFabricante_O: TppLine;
        dbtUnidade_O: TppDBText;
        lnUnidade_O: TppLine;
        dbtQuantidade_O: TppDBText;
        lnQuantidade_O: TppLine;
        dbtPreco_O: TppDBText;
        lnPreco_O: TppLine;
        dbtSubTotal_O: TppDBText;
        lnSubTotal_O: TppLine;
        ppFooterBand9: TppFooterBand;
        ppSummaryBand5: TppSummaryBand;
        ppLabel30: TppLabel;
        ppLabel31: TppLabel;
        ppLabel32: TppLabel;
        ppLine6: TppLine;
        ppDBText143: TppDBText;
        ppDBText144: TppDBText;
        ppDBText145: TppDBText;
        rgCondPag: TppRegion;
        ppLabel33: TppLabel;
        ppDBMemo2: TppDBMemo;
        rgOutrasCond: TppRegion;
        ppLabel34: TppLabel;
        ppLabel35: TppLabel;
        lbGarantia: TppLabel;
        ppDBText164: TppDBText;
        ppDBText165: TppDBText;
        dbtGarantia: TppDBText;
        ckEstoque: TmyDBCheckBox;
        lbEstoque: TppLabel;
        rgExplicacoes: TppRegion;
        ppDBMemo6: TppDBMemo;
        rgFuncionario: TppRegion;
        dbtVendedor: TppDBText;
        dbtCargo: TppDBText;
        ppLabel36: TppLabel;
        ppDBText168: TppDBText;
        ppGroup2: TppGroup;
        ppGroupHeaderBand1: TppGroupHeaderBand;
        ppDBText171: TppDBText;
        shpCodigo_O: TppShape;
        lbCodigo_O: TppDBText;
        shpDescricao_O: TppShape;
        lbDescricao_O: TppDBText;
        shpFabricante_O: TppShape;
        lbFabricante_O: TppDBText;
        shpUnidade_O: TppShape;
        lbUnidade_O: TppDBText;
        shpQuantidade_O: TppShape;
        lbQuantidade_O: TppDBText;
        shpPreco_O: TppShape;
        lbPreco_O: TppDBText;
        shpSubTotal_O: TppShape;
        lbSubtotal_O: TppDBText;
        shpReferencia_O: TppShape;
        lbReferencia_O: TppDBText;
        ppGroupFooterBand1: TppGroupFooterBand;
        dbtTotalItem_O: TppDBCalc;
        rbProposta: TppReport;
        ppTitleBand1: TppTitleBand;
        ppShape74: TppShape;
        rgCabProposta: TppRegion;
        ppDBText172: TppDBText;
        ppLabel37: TppLabel;
        ppLabel38: TppLabel;
        ppDBText173: TppDBText;
        ppDBText174: TppDBText;
        ppLabel39: TppLabel;
        ppLabel40: TppLabel;
        ppLabel41: TppLabel;
        ppLabel42: TppLabel;
        ppLabel43: TppLabel;
        ppLabel44: TppLabel;
        ppLabel45: TppLabel;
        ppDBText175: TppDBText;
        ppDBText176: TppDBText;
        ppDBText178: TppDBText;
        ppDBText179: TppDBText;
        ppDBText180: TppDBText;
        ppDBText181: TppDBText;
        ppDBText182: TppDBText;
        ppLabel46: TppLabel;
        ppLabel47: TppLabel;
        ppLabel48: TppLabel;
        ppLabel49: TppLabel;
        ppLabel50: TppLabel;
        ppLabel51: TppLabel;
        ppLabel52: TppLabel;
        ppDBText183: TppDBText;
        ppDBText184: TppDBText;
        ppDBText185: TppDBText;
        ppDBText186: TppDBText;
        ppDBText187: TppDBText;
        ppDBText188: TppDBText;
        ppShape75: TppShape;
        ppLabel53: TppLabel;
        ppLabel54: TppLabel;
        ppHeaderBand11: TppHeaderBand;
        shpSequencial_P: TppShape;
        shpDescricao_P: TppShape;
        lbDescricao_P: TppDBText;
        shpRegistro_P: TppShape;
        shpUnidade_P: TppShape;
        lbUnidade_P: TppDBText;
        shpQuantidade_P: TppShape;
        lbQuantidade_P: TppDBText;
        shpPreco_P: TppShape;
        lbPreco_P: TppDBText;
        shpSubTotal_P: TppShape;
        lbSubTotal_P: TppDBText;
        shpFabricante_P: TppShape;
        lbColuna01_P: TppDBText;
        lbSequencial_P: TppLabel;
        ppDetailBand5: TppDetailBand;
        dbtSequencial_P: TppDBText;
        lnSequencial_P: TppLine;
        lnDescricao_P: TppLine;
        dbtColuna01_P: TppDBText;
        lnColuna01_P: TppLine;
        dbtUnidade_P: TppDBText;
        lnUnidade_P: TppLine;
        dbtQuantidade_P: TppDBText;
        lnQuantidade_P: TppLine;
        dbtPreco_P: TppDBText;
        lnPreco_P: TppLine;
        dbtSubTotal_P: TppDBText;
        lnSubTotal_P: TppLine;
        rgPorExtenso: TppRegion;
        ppLabel55: TppLabel;
        lbExtensoPreco: TppLabel;
        ppLabel56: TppLabel;
        lbExtensoTotal: TppLabel;
        ppLine9: TppLine;
        ppLine10: TppLine;
        rgAliqICMS: TppRegion;
        ppLabel57: TppLabel;
        ppLabel58: TppLabel;
        ppLabel59: TppLabel;
        ppLabel60: TppLabel;
        ppLabel61: TppLabel;
        ppLabel62: TppLabel;
        ppLine8: TppLine;
        ppLine11: TppLine;
        ppFooterBand10: TppFooterBand;
        ppSummaryBand6: TppSummaryBand;
        ppLabel63: TppLabel;
        ppRegion4: TppRegion;
        ppRegion5: TppRegion;
        ppDBText190: TppDBText;
        ppDBText191: TppDBText;
        ppLabel64: TppLabel;
        ppLabel65: TppLabel;
        dbtTotal: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        rbNotaFiscal: TppReport;
        rbServicos: TppReport;
        C_InvoiceCB_ICMS: TStringField;
        C_InvoiceTIT2_ICMS: TStringField;
        C_InvoiceCB_CONSISTENCIA: TStringField;
        C_InvoiceDESATIVADO: TStringField;
        C_InvoiceDIASVALIDADE: TIntegerField;
        C_InvoiceTABELAPADRAO: TIntegerField;
        C_InvoiceALMOXPADRAO: TIntegerField;
        C_InvoiceTIPODESCRICAO: TStringField;
        C_InvoicePOSSUIICMS: TStringField;
        C_InvoicePOSSUIIPI: TStringField;
        C_InvoicePOSSUIISS: TStringField;
        C_InvoiceCONTABILIZAICMS: TStringField;
        C_InvoiceTIT2_TVA: TStringField;
        C_InvoiceCB_TVA: TStringField;
        C_InvoiceCB_FABRICANTE: TStringField;
        C_InvoiceCB_NUMEROITEM: TStringField;
        C_InvoiceCB_REGISTRO: TStringField;
        C_InvoiceTIT2_FABRICANTE: TStringField;
        C_InvoiceTIT2_REGISTRO: TStringField;
        C_InvoiceCB_ALIQICMS: TStringField;
        C_InvoiceCB_POREXTENSO: TStringField;
        C_InvoiceSERIE: TStringField;
        C_InvoiceMODELODOC: TStringField;
        C_InvoiceTIT2_IPI: TStringField;
        C_InvoiceCB_IPI: TStringField;
        C_InvoiceCB_LICITACAO: TStringField;
        C_InvoiceCB_CFOP: TStringField;
        C_InvoiceTIT2_CFOP: TStringField;
        C_InvoiceCFOPNOTA: TStringField;
        C_InvoiceSERIENOTA: TStringField;
        C_InvoiceUFDESTINO: TStringField;
        C_InvoiceTIPOFRETE: TStringField;
        C_InvoiceDESCESPECIE: TStringField;
        C_InvoiceDESCMARCA: TStringField;
        C_InvoiceDESCNUMERO: TStringField;
        C_InvoiceMODELO: TStringField;
        C_InvoiceFONTE: TStringField;
        C_InvoicePLACAVEIC: TStringField;
        C_InvoiceATRATAR: TStringField;
        C_InvoiceINTRODUCAO: TStringField;
        C_InvoicePRAZOENTREGA: TStringField;
        C_InvoiceCONDICOESPGTO: TStringField;
        C_InvoiceGARANTIA: TStringField;
        C_InvoiceSEESTOQUE: TStringField;
        C_InvoicePROCESSO: TStringField;
        C_InvoiceCARTACONVITE: TStringField;
        C_InvoiceTOMADAPRECOS: TStringField;
        C_InvoiceDATAABERTURA: TStringField;
        C_InvoiceEXPLICACOES: TStringField;
        C_InvoiceLICITACAOICMS: TFloatField;
        C_InvoiceSUBSTTRIB: TStringField;
        C_InvoicePJUROSNEGOCIADO: TFloatField;
        C_InvoiceCPF_CNPJ: TStringField;
        C_InvoiceINSCRICAO_EST: TStringField;
        ppDBText291: TppDBText;
        ppDBText292: TppDBText;
        ppDBText295: TppDBText;
        ppDBText296: TppDBText;
        C_ItensBASECALCICMSPROD: TFloatField;
        C_ItensIPI: TFloatField;
        C_ItensALIQICMS: TFloatField;
        C_ItensCST: TStringField;
        C_ItensREDUCAOCST: TFloatField;
        C_ItensSITUACAOECF: TStringField;
        C_ItensBASECALCSUBSTPROD: TFloatField;
        C_ItensVALORIPIPROD: TFloatField;
        C_ItensTVA: TFloatField;
        C_ItensNUMEROITEM: TStringField;
        C_ItensREGISTRO: TStringField;
        C_ItensVALORICMSPROD: TFloatField;
        C_ItensVALORISENTASPROD: TFloatField;
        C_ItensVALORICMSSUBSTPROD: TFloatField;
        zTit2_termos: TZRField;
        ZRLabel32: TZRLabel;
        C_InvoiceCB_NOTAFISCAL: TStringField;
        C_InvoiceTIPONOTAFISCAL: TStringField;
        C_InvoiceTEMPLATENOTAFISCAL: TIntegerField;
        C_InvoiceCB_DUPLICATA: TStringField;
        C_InvoiceCB_BOLETO: TStringField;
        C_InvoiceCB_CARNE: TStringField;
        C_InvoiceCB_RECIBO: TStringField;
        C_InvoiceCB_IMPDOC: TStringField;
        C_InvoiceDESC_CFOP: TStringField;
        C_InvoiceTRANSP_NOME: TStringField;
        C_InvoiceTRANSP_ENDERECO: TStringField;
        C_InvoiceTRANSP_BAIRRO: TStringField;
        C_InvoiceTRANSP_CIDADE: TStringField;
        C_InvoiceTRANSP_UF: TStringField;
        C_InvoiceTRANSP_CPF_CNPJ: TStringField;
        C_InvoiceTRANSP_INSCRICAO_EST: TStringField;
        C_InvoiceTEMPLATENFARQUIVO: TStringField;
        lbCanceladoORC: TppLabel;
        ppDBText138: TppDBText;
        C_InvoiceBAIRRO: TStringField;
        C_InvoiceCIDADE: TStringField;
        C_InvoiceCEP: TStringField;
        C_InvoiceUF: TStringField;
        C_ItensFABRICANTE: TStringField;
        C_ParcelasTITULO: TStringField;
        C_InvoiceVOLUMES: TFloatField;
        C_InvoiceCODIGOVENDEDOR: TStringField;
        C_InvoiceRAZAO: TStringField;
        ppDBText167: TppDBText;
        ppLabel1: TppLabel;
        C_InvoiceCONDICOESPAGTO: TStringField;
        C_ItensNUMEROLOTE: TStringField;
        C_SaidasItensIdentDS: TDataSource;
        C_SaidasItensIdent: TClientDataSet;
        Q_SaidasItensIdent: TIBQuery;
        dbSaidasItensIdent: TppDBPipeline;
        C_SaidasItensIdentSAIDAITEMIDENT: TIntegerField;
        C_SaidasItensIdentSAIDAITEM: TIntegerField;
        C_SaidasItensIdentSAIDA: TIntegerField;
        C_SaidasItensIdentSERIAL: TStringField;
        C_CompItensSERIAL: TStringField;
        C_InvoiceCB_IDENTIFICACAO: TStringField;
        ppFabricante: TppDBMemo;
        subIdentificacoes: TppSubReport;
        ppChildReport16: TppChildReport;
        ppTitleBand6: TppTitleBand;
        ppDetailBand20: TppDetailBand;
        ppSummaryBand12: TppSummaryBand;
        ppDBText303: TppDBText;
        ppColumnHeaderBand5: TppColumnHeaderBand;
        ppColumnFooterBand5: TppColumnFooterBand;
        ppDBText304: TppDBText;
        DlgMsg: TDlgMsg;
        C_InvoiceIMPRESSO: TStringField;
        C_ItensDESCONTO: TFloatField;
        C_ItensPDESCONTO: TFloatField;
        zrOrcamento: TZReport;
        zrOrcamentoDetail: TZRBand;
        zrOrcamentoFooter: TZRBand;
        zrOrcamentoHeader: TZRBand;
        zrOrcamentoChild: TZRBand;
        zrOrcamentoChild0: TZRBand;
        zrvCODIGO1: TZRField;
        zrvITEMDESC1: TZRField;
        zrvQUANTIDADE3: TZRField;
        zrvPRECO1: TZRField;
        zrvTOTAL3: TZRField;
        zrvUNIDADE3: TZRField;
        zrvDESCONTO: TZRField;
        ZRLabel68: TZRLabel;
        ZRLabel69: TZRLabel;
        ZRLabel70: TZRLabel;
        ZRLabel71: TZRLabel;
        ZRLabel72: TZRLabel;
        ZRLabel73: TZRLabel;
        ZRLabel74: TZRLabel;
        TotalItens: TZRAggregator;
        TotalDesconto: TZRAggregator;
        zrvExpression: TZRExpression;
        TotalGeral: TZRAggregator;
        ZRLabel75: TZRLabel;
        ZRTotalLabel1: TZRTotalLabel;
        ZRLabel76: TZRLabel;
        ZRTotalLabel2: TZRTotalLabel;
        ZRLabel77: TZRLabel;
        ZRLabel78: TZRLabel;
        ZRLabel79: TZRLabel;
        ZRLabel45: TZRLabel;
        ZRLabel46: TZRLabel;
        ZRLabel80: TZRLabel;
        ZRLabel81: TZRLabel;
        ZRFrameLine3: TZRFrameLine;
        ZRLabel82: TZRLabel;
        ZRLabel83: TZRLabel;
        ZRLabel84: TZRLabel;
        zrOrcamentoChild1: TZRBand;
        ZRLabel47: TZRLabel;
        ZRLabel41: TZRLabel;
        ZRLabel85: TZRLabel;
        zrCliente: TZRField;
        zrCPF_CNPJ: TZRField;
        zrIntroducao: TZRField;
        zrCONDICOESPGTO: TZRField;
        zrValidade: TZRField;
        zrExplicacoes: TZRField;
        zrOutrasDespesas: TZRField;
        zrFrete: TZRField;
        ZRLabel8: TZRLabel;
        ZRLabel15: TZRLabel;
        ZRLabel33: TZRLabel;
        zrTotal: TZRField;
        zrPRAZOENTREGA: TZRField;
        zrVENDEDOR: TZRField;
        zrCargo: TZRField;
        C_InvoiceCARGOVENDEDOR: TStringField;
        ppLine7: TppLine;
        ppLabel25: TppLabel;
        zrOrcamentoChild2: TZRBand;
        ZRLabel48: TZRLabel;
        ZRLabel49: TZRLabel;
        ZRLabel50: TZRLabel;
        ZRLabel51: TZRLabel;
        ZRLabel52: TZRLabel;
        ZRLabel53: TZRLabel;
        ZRLabel61: TZRLabel;
        ZRLabel107: TZRLabel;
        ZRLabel44: TZRLabel;
        ZRLabel43: TZRLabel;
        ZRLabel40: TZRLabel;
        ZRLabel42: TZRLabel;
        ZRLabel39: TZRLabel;
        ZRLabel38: TZRLabel;
        zrFone4: TZRLabel;
        zrCidade4: TZRLabel;
        zrEndereco4: TZRLabel;
        zrNomeEmpresa4: TZRLabel;
        ZRSystemLabel4: TZRSystemLabel;
        ZRSystemLabel3: TZRSystemLabel;
        ZRSystemLabel2: TZRSystemLabel;
        ZRLabel34: TZRLabel;
        ZRLabel18: TZRLabel;
        ZRLabel9: TZRLabel;
        ZRLabel10: TZRLabel;
        ZRLabel11: TZRLabel;
        ZRLabel12: TZRLabel;
        ZRLabel13: TZRLabel;
        ZRLabel14: TZRLabel;
        ZRLabel24: TZRLabel;
        zrCodigoCliente: TZRField;
        C_InvoiceCODIGOCLIENTE: TStringField;
        ZRLabel19: TZRLabel;
        rgTotalItens3: TppRegion;
        ppDBText305: TppDBText;
        C_InvoiceNF_CUPOM: TStringField;
        ppLabel26: TppLabel;
        ppLine13: TppLine;
        C_ItensCFOPNOTA: TStringField;
        C_InvoiceCFOPASSOCIADO: TStringField;
        C_InvoiceBALANCE: TFloatField;
        C_ItensTOTAL: TFloatField;
        ZRLabel21: TZRLabel;
        ZRLabel27: TZRLabel;
        zrvTIT2_CAMPO1: TZRField;
        ZRLabel35: TZRLabel;
        ZRLabel36: TZRLabel;
        ZRLabel37: TZRLabel;
        ZRLabel108: TZRLabel;
        ZRLabel109: TZRLabel;
        ZRLabel110: TZRLabel;
        ZRLabel112: TZRLabel;
        ZRLabel113: TZRLabel;
        zrvTIT2_CAMPO2: TZRField;
        zrvTIT2_CAMPO3: TZRField;
        zrvTIT2_CAMPO4: TZRField;
        zrvCAMPO01: TZRField;
        zrvCAMPO02: TZRField;
        zrvCAMPO03: TZRField;
        zrvCAMPO04: TZRField;
        ppHeaderBand3: TppHeaderBand;
        ppShape22: TppShape;
        rgCabecalho: TppRegion;
        ppDBText32: TppDBText;
        ppShape24: TppShape;
        ppLabel8: TppLabel;
        ppShape26: TppShape;
        ppShape27: TppShape;
        ppDBText34: TppDBText;
        ppDBText36: TppDBText;
        ppDBText38: TppDBText;
        ppDBText40: TppDBText;
        ppDBText42: TppDBText;
        ppDBText44: TppDBText;
        ppDBText45: TppDBText;
        rgVendedor2: TppRegion;
        ppShape28: TppShape;
        ppDBText46: TppDBText;
        ppDBText47: TppDBText;
        rgPedido2: TppRegion;
        ppShape29: TppShape;
        ppDBText48: TppDBText;
        ppDBText49: TppDBText;
        rgCampo2_2: TppRegion;
        ppShape30: TppShape;
        ppDBText50: TppDBText;
        ppDBText51: TppDBText;
        rgCampo2_3: TppRegion;
        ppShape31: TppShape;
        ppDBText52: TppDBText;
        ppDBText53: TppDBText;
        rgCampo2_4: TppRegion;
        ppShape32: TppShape;
        ppDBText54: TppDBText;
        ppDBText55: TppDBText;
        rgCampo2_1: TppRegion;
        ppShape33: TppShape;
        ppDBText56: TppDBText;
        ppDBText57: TppDBText;
        ppDBText58: TppDBText;
        ppLabel9: TppLabel;
        rbrgValidade2: TppRegion;
        ppShape34: TppShape;
        ppDBText59: TppDBText;
        ppDBText60: TppDBText;
        ppDBText61: TppDBText;
        regInfoEntrega2: TppRegion;
        ppShape35: TppShape;
        ppDBText62: TppDBText;
        ppDBText63: TppDBText;
        ppShape36: TppShape;
        ppDBText64: TppDBText;
        ppDBText65: TppDBText;
        ppShape37: TppShape;
        ppDBText66: TppDBText;
        ppDBText67: TppDBText;
        ppDBText68: TppDBText;
        lbCancelado2: TppLabel;
        ppDBText293: TppDBText;
        DetalhePS: TppDetailBand;
        subItens: TppSubReport;
        ppChildReport4: TppChildReport;
        ppDetailBand6: TppDetailBand;
        rgItens: TppRegion;
        lnCodigo2: TppLine;
        lnSubTotal2: TppLine;
        lnColuna2_1: TppLine;
        lnFuncionario2: TppLine;
        lnPreco2: TppLine;
        dbtFuncionario2: TppDBText;
        dbtCodigo2: TppDBText;
        dbtUnidade2: TppDBText;
        dbtQuantidade2: TppDBText;
        dbtPreco2: TppDBText;
        dbtSubTotal2: TppDBText;
        dbtColuna2_1: TppDBText;
        dbtColuna2_2: TppDBText;
        dbtColuna2_3: TppDBText;
        dbtColuna2_4: TppDBText;
        lnDescricao2: TppLine;
        lnUnidade2: TppLine;
        lnQuantidade2: TppLine;
        lnColuna2_2: TppLine;
        lnColuna2_3: TppLine;
        lnColuna2_4: TppLine;
        lnReferencia2: TppLine;
        dbtReferencia2: TppDBText;
        dbtDescricao2: TppDBMemo;
        dbtDescComplementar2: TppDBMemo;
        subComposicaoItens2: TppSubReport;
        ppChildReport5: TppChildReport;
        ppHeaderBand4: TppHeaderBand;
        ppDetailBand7: TppDetailBand;
        dbtQtdeComposicao2: TppDBText;
        dbtDescComposicao2: TppDBMemo;
        dbtUnidComposicao2: TppDBText;
        ppFooterBand2: TppFooterBand;
        subServicos: TppSubReport;
        ppChildReport7: TppChildReport;
        ppHeaderBand5: TppHeaderBand;
        ppDetailBand9: TppDetailBand;
        ppDBText71: TppDBText;
        ppDBText119: TppDBText;
        ppDBText70: TppDBText;
        ppDBText72: TppDBText;
        ppDBText73: TppDBText;
        ppFooterBand4: TppFooterBand;
        ppFooterBand3: TppFooterBand;
        ppRegion12: TppRegion;
        ppShape38: TppShape;
        ppDBText83: TppDBText;
        ppDBMemo3: TppDBMemo;
        ppSummaryBand2: TppSummaryBand;
        rgDesconto2: TppRegion;
        ppDBText87: TppDBText;
        ppLine33: TppLine;
        ppDBText88: TppDBText;
        rgFrete2: TppRegion;
        ppDBText89: TppDBText;
        ppLine34: TppLine;
        ppDBText90: TppDBText;
        rgJuros2: TppRegion;
        ppDBText91: TppDBText;
        ppLine36: TppLine;
        ppDBText92: TppDBText;
        rgDespesas2: TppRegion;
        ppDBText93: TppDBText;
        ppLine37: TppLine;
        ppDBText94: TppDBText;
        ppRegion18: TppRegion;
        ppShape40: TppShape;
        ppShape41: TppShape;
        ppDBText97: TppDBText;
        ppDBText98: TppDBText;
        ppRegion19: TppRegion;
        ppShape42: TppShape;
        ppShape43: TppShape;
        ppDBText99: TppDBText;
        ppDBText294: TppDBText;
        ppRegion20: TppRegion;
        ppShape44: TppShape;
        ppShape45: TppShape;
        ppDBText100: TppDBText;
        ppDBText158: TppDBText;
        ppPageStyle2: TppPageStyle;
        ppShape64: TppShape;
        shpSubTotalProd2: TppShape;
        shpReferencia2: TppShape;
        shpColuna2_1: TppShape;
        shpColuna2_2: TppShape;
        shpColuna2_4: TppShape;
        shpColuna2_3: TppShape;
        shpUnidade2: TppShape;
        shpSubtotal2: TppShape;
        shpQuantidade2: TppShape;
        shpFuncionario2: TppShape;
        shpCodigo2: TppShape;
        lbCodigo2: TppDBText;
        lbFuncionario2: TppDBText;
        lbQuantidade2: TppDBText;
        lbSubtotal2: TppDBText;
        lbColuna2_1: TppDBText;
        ppShape58: TppShape;
        ppDBText106: TppDBText;
        ppDBText107: TppDBText;
        ppLine39: TppLine;
        shpDescricao2: TppShape;
        lbDescricao2: TppDBText;
        lbUnidade2: TppDBText;
        shpPreco2: TppShape;
        lbPreco2: TppDBText;
        lbColuna2_2: TppDBText;
        lbColuna2_3: TppDBText;
        lbColuna2_4: TppDBText;
        lbReferencia2: TppDBText;
        ppLabel16: TppLabel;
        lbSubTotalProd2: TppLabel;
        ppShape63: TppShape;
        ppLabel18: TppLabel;
        ppDBText115: TppDBText;
        ppShape65: TppShape;
        ppShape66: TppShape;
        ppShape67: TppShape;
        ppDBText116: TppDBText;
        ppDBText117: TppDBText;
        ppDBText118: TppDBText;
        ppLine40: TppLine;
        lbSubTotalServ2: TppLabel;
        ppDBText69: TppDBText;
        shpSubTotalServ2: TppShape;
        ppLabel15: TppLabel;
        dbtSubTotalProd2: TppLabel;
        C_ItensCFOPCST: TStringField;
        C_InvoiceCIDADEUFZIPENTREGA: TStringField;
        C_InvoiceCIDADEUFZIP: TStringField;
        ZRPreImpresso: TZReport;
        zrCodigo: TZRField;
        zrDescricao: TZRField;
        zrQuantidade: TZRField;
        zrPreco: TZRField;
        zrSubTotal: TZRField;
        zrTaxavel: TZRField;
        zrUnidade: TZRField;
        ZRAggregator2: TZRAggregator;
        ZRBand14: TZRBand;
        ZRLabel199: TZRLabel;
        ZRLabel200: TZRLabel;
        ZRLabel201: TZRLabel;
        ZRLabel202: TZRLabel;
        ZRLabel203: TZRLabel;
        ZRLabel204: TZRLabel;
        ZRBand15: TZRBand;
        ZRLabel205: TZRLabel;
        ZRSubDetail2: TZRSubDetail;
        ZRField112: TZRField;
        ZRField113: TZRField;
        ZRField114: TZRField;
        ZRLabel206: TZRLabel;
        ZRLabel207: TZRLabel;
        ZRLabel208: TZRLabel;
        ppCabecalho: TppHeaderBand;
        ppDBText192: TppDBText;
        ppDBText193: TppDBText;
        ppDBText194: TppDBText;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppDBText195: TppDBText;
        ppDBText196: TppDBText;
        ppDBText197: TppDBText;
        ppDBText198: TppDBText;
        ppDBText199: TppDBText;
        ppDBText200: TppDBText;
        ppDBText201: TppDBText;
        ppDBText202: TppDBText;
        ppDBText203: TppDBText;
        ppDBText204: TppDBText;
        ppDBText205: TppDBText;
        NUMEROPARC_1: TppLabel;
        NUMEROPARC_2: TppLabel;
        NUMEROPARC_3: TppLabel;
        VENCIMENTOPARC_1: TppLabel;
        VENCIMENTOPARC_2: TppLabel;
        VENCIMENTOPARC_3: TppLabel;
        NUMEROPARC_4: TppLabel;
        NUMEROPARC_5: TppLabel;
        NUMEROPARC_6: TppLabel;
        VENCIMENTOPARC_4: TppLabel;
        VENCIMENTOPARC_5: TppLabel;
        VENCIMENTOPARC_6: TppLabel;
        VALORPARC_1: TppLabel;
        VALORPARC_2: TppLabel;
        VALORPARC_3: TppLabel;
        VALORPARC_4: TppLabel;
        VALORPARC_5: TppLabel;
        VALORPARC_6: TppLabel;
        ppSystemVariable1: TppSystemVariable;
        ppDetailBand10: TppDetailBand;
        subComposicaoItensNF: TppSubReport;
        ppChildReport12: TppChildReport;
        ppTitleBand3: TppTitleBand;
        ppDetailBand17: TppDetailBand;
        ppDBText22: TppDBText;
        ppDBText23: TppDBText;
        ppDBText95: TppDBText;
        ppDBText302: TppDBText;
        ppSummaryBand9: TppSummaryBand;
        ppRegion1: TppRegion;
        ppDBText206: TppDBText;
        ppDBText208: TppDBText;
        ppDBText209: TppDBText;
        ppDBText210: TppDBText;
        dfPreco: TppDBText;
        dfTotal: TppDBText;
        ppDBText213: TppDBText;
        ppLabel68: TppLabel;
        ppDBMemo10: TppDBMemo;
        ppDBText189: TppDBText;
        ppDBText207: TppDBText;
        ppDBText297: TppDBText;
        ppDesconto: TppDBText;
        ppPercDesconto: TppDBText;
        ppFabricanteNF: TppDBMemo;
        dbtDescComplementarNF: TppDBMemo;
        subIdentificacoesNF: TppSubReport;
        ppChildReport14: TppChildReport;
        ppTitleBand5: TppTitleBand;
        ppColumnHeaderBand4: TppColumnHeaderBand;
        ppDetailBand19: TppDetailBand;
        ppDBText262: TppDBText;
        ppColumnFooterBand4: TppColumnFooterBand;
        ppSummaryBand11: TppSummaryBand;
        ppFooterBand11: TppFooterBand;
        lbContinuacao2: TppLabel;
        lbContinuacao: TppLabel;
        ppDBText215: TppDBText;
        ppDBText216: TppDBText;
        ppDBText217: TppDBText;
        ppDBText218: TppDBText;
        ppDBText219: TppDBText;
        ppDBText220: TppDBText;
        ppDBText221: TppDBText;
        ppDBText222: TppDBText;
        ppDBText223: TppDBText;
        ppDBText224: TppDBText;
        ppDBText225: TppDBText;
        ppDBText226: TppDBText;
        ppDBText227: TppDBText;
        ppDBText228: TppDBText;
        ppDBText229: TppDBText;
        ppDBText230: TppDBText;
        ppDBText231: TppDBText;
        ppDBText232: TppDBText;
        ppDBText233: TppDBText;
        ppDBText234: TppDBText;
        ppDBText235: TppDBText;
        ppDBText236: TppDBText;
        ppDBText237: TppDBText;
        ppDBText238: TppDBText;
        ppDBText239: TppDBText;
        ppLabel69: TppLabel;
        dbtDesconto: TppDBText;
        ppDBMemo9: TppDBMemo;
        ppDBText159: TppDBText;
        ppDBText166: TppDBText;
        ppLabel7: TppLabel;
        ppLabel13: TppLabel;
        ppDBText306: TppDBText;
        ppHeaderBand12: TppHeaderBand;
        ppDBText240: TppDBText;
        ppDBText241: TppDBText;
        ppDBText242: TppDBText;
        ppLabel70: TppLabel;
        ppLabel71: TppLabel;
        ppDBText243: TppDBText;
        ppDBText244: TppDBText;
        ppDBText245: TppDBText;
        ppDBText246: TppDBText;
        ppDBText247: TppDBText;
        ppDBText248: TppDBText;
        ppDBText249: TppDBText;
        ppDBText250: TppDBText;
        ppDBText251: TppDBText;
        ppDBText252: TppDBText;
        ppDBText253: TppDBText;
        NumeroParcS_1: TppLabel;
        NumeroParcS_2: TppLabel;
        NumeroParcS_3: TppLabel;
        VencimentoParcS_1: TppLabel;
        VencimentoParcS_2: TppLabel;
        VencimentoParcS_3: TppLabel;
        NumeroParcS_4: TppLabel;
        NumeroParcS_5: TppLabel;
        NumeroParcS_6: TppLabel;
        VencimentoParcS_4: TppLabel;
        VencimentoParcS_5: TppLabel;
        VencimentoParcS_6: TppLabel;
        ValorParcS_1: TppLabel;
        ValorParcS_2: TppLabel;
        ValorParcS_3: TppLabel;
        ValorParcS_4: TppLabel;
        ValorParcS_5: TppLabel;
        ValorParcS_6: TppLabel;
        ppSystemVariable2: TppSystemVariable;
        ppDetailBand11: TppDetailBand;
        Produtos: TppSubReport;
        ppChildReport1: TppChildReport;
        ppTitleBand2: TppTitleBand;
        ppDetailBand15: TppDetailBand;
        SubComposicaoItensNFS: TppSubReport;
        ppChildReport13: TppChildReport;
        ppTitleBand4: TppTitleBand;
        ppDetailBand18: TppDetailBand;
        ppDBText96: TppDBText;
        ppDBText134: TppDBText;
        ppDBText137: TppDBText;
        ppSummaryBand10: TppSummaryBand;
        dbtDescComplementarNFS: TppDBMemo;
        ppRegion2: TppRegion;
        ppDBText254: TppDBText;
        ppDBText256: TppDBText;
        ppDBText257: TppDBText;
        ppDBText258: TppDBText;
        ppDBText259: TppDBText;
        ppDBText260: TppDBText;
        ppDBText261: TppDBText;
        ppPercDescontoServ: TppDBText;
        ppDBText298: TppDBText;
        ppDBText299: TppDBText;
        ppDescontoServ: TppDBText;
        subIdentificacoesNFS: TppSubReport;
        ppChildReport15: TppChildReport;
        ppHeaderBand14: TppHeaderBand;
        ppDetailBand21: TppDetailBand;
        ppFooterBand14: TppFooterBand;
        ppFabricanteNFS: TppDBMemo;
        ppSummaryBand7: TppSummaryBand;
        ppFooterBand13: TppFooterBand;
        ppDBMemo11: TppDBMemo;
        ppDBText265: TppDBText;
        ppDBText266: TppDBText;
        ppDBText267: TppDBText;
        ppDBText268: TppDBText;
        ppDBText269: TppDBText;
        ppDBText270: TppDBText;
        ppDBText271: TppDBText;
        ppDBText272: TppDBText;
        ppDBText273: TppDBText;
        ppDBText274: TppDBText;
        ppDBText275: TppDBText;
        ppDBText276: TppDBText;
        ppDBText277: TppDBText;
        ppDBText278: TppDBText;
        ppDBText279: TppDBText;
        ppDBText280: TppDBText;
        ppDBText281: TppDBText;
        ppDBText282: TppDBText;
        ppDBText283: TppDBText;
        ppDBText284: TppDBText;
        ppDBText285: TppDBText;
        ppDBText286: TppDBText;
        ppDBText287: TppDBText;
        ppDBText288: TppDBText;
        ppDBText289: TppDBText;
        ppLabel93: TppLabel;
        ppDBText290: TppDBText;
        lbContinuacaoServ: TppLabel;
        lbContinuacaoServ2: TppLabel;
        ppLabel14: TppLabel;
        ppLabel23: TppLabel;
        ppDBText300: TppDBText;
        ppDBText301: TppDBText;
        ppDBText255: TppDBText;
        zrNomeCliente: TZRField;
        zrPreEndereco: TZRField;
        zrPreCidade: TZRField;
        zrPreCodigoCliente: TZRField;
        zrvDESCRICAOCOMPLEMENTAR0: TZRField;
        zrPreNomeVendedor: TZRField;
        zrPreTermos: TZRField;
        zrPreTotalVenda: TZRField;
        zrDesconto: TZRField;
        zrPreObs: TZRField;
        zrFone: TZRField;
        zrPreTIT_CAMPO1: TZRField;
        zrPreCAMPO1: TZRField;
        zrPreTIT_CAMPO2: TZRField;
        zrPreCAMPO2: TZRField;
        zrPreTIT_CAMPO3: TZRField;
        zrPreCAMPO3: TZRField;
        zrPreTIT_CAMPO4: TZRField;
        zrPreCAMPO4: TZRField;
        ZRPreImpressoPageFooter: TZRBand;
        ZRLabel171: TZRLabel;
        ZRLabel173: TZRLabel;
        ZRLabel172: TZRLabel;
        ZRLabel174: TZRLabel;
        ZRLabel175: TZRLabel;
        ZRPreImpressoPageHeader: TZRBand;
        ZRLabel177: TZRLabel;
        zrlPreCodigoCliente: TZRLabel;
        zrlPreNomeCliente: TZRLabel;
        zrlPreEndCliente: TZRLabel;
        zrlPreCidadeCliente: TZRLabel;
        ZRLabel181: TZRLabel;
        zrlTitC1: TZRLabel;
        zrlPreFone: TZRLabel;
        zrlTitC2: TZRLabel;
        zrlC1: TZRLabel;
        zrlC2: TZRLabel;
        zrlTitC3: TZRLabel;
        zrlC3: TZRLabel;
        zrlTitC4: TZRLabel;
        zrlC4: TZRLabel;
        C_ItensicCodigoAsterisco: TStringField;
        zrvicCodigoAsterisco: TZRField;
        ZRLabel176: TZRLabel;
        zrlPreCPF: TZRLabel;
        C_ItensQ_SaidasItensIdent: TDataSetField;
        C_ItensQ_CompItens: TDataSetField;
        C_InvoiceQ_Itens: TDataSetField;
        C_ItensFATOR: TFloatField;
        AntesZPedidoCompleto: TZReport;
        zrpcCODIGO: TZRField;
        zrpcITEMDESC: TZRField;
        zrpcQUANTIDADE: TZRField;
        zrpcPRECO: TZRField;
        zrpcTOTAL: TZRField;
        zrpcTAXAVEL: TZRField;
        zrpcUNIDADE: TZRField;
        ZRAggregator4: TZRAggregator;
        zrpcNOME: TZRField;
        zrpcENDERECO: TZRField;
        zrpcCIDADEUFZIP: TZRField;
        zrpcFONE1: TZRField;
        zrpcFAX: TZRField;
        zrpcVENDEDOR: TZRField;
        zrENDERECOENTREGA: TZRField;
        zrpcCIDADEUFZIPENTREGA: TZRField;
        zrpcTIPOENTREGA: TZRField;
        zrpcDATAENTREGA: TZRField;
        zrpcPLANOPAG: TZRField;
        zrpcDESCONTO: TZRField;
        zrpcFRETE: TZRField;
        zrpcJUROS: TZRField;
        zrpcOUTRASDESPESAS: TZRField;
        zrpcTOTAL2: TZRField;
        zrpcTOTALPGTOS: TZRField;
        zrpcBALANCE: TZRField;
        zrpcIMPOSTO: TZRField;
        zrpcOBS: TZRField;
        zrpcTIT2_CODIGO: TZRField;
        zrpcTIT2_DESCRICAO: TZRField;
        zrpcTIT2_REFERENCIA: TZRField;
        zrpcTIT2_UNIDADE: TZRField;
        zrpcTIT2_QUANTIDADE: TZRField;
        zrpcTIT2_PRECO: TZRField;
        zrpcTIT2_SUBTOTAL: TZRField;
        zrpcTIT2_DESCONTOS: TZRField;
        zrpcTIT2_JUROS: TZRField;
        zrpcTIT2_FRETE: TZRField;
        zrpcTIT2_DESPESAS: TZRField;
        zrpcTIT2_VALORTAX: TZRField;
        zrpcTIT2_TOTALITENS: TZRField;
        zrpcTIT2_PGTOS: TZRField;
        zrpcINVOICE: TZRField;
        zrpcTIT2_TOTALFINAL: TZRField;
        zrpcDESCRICAOCOMPLEMENTAR: TZRField;
        zrpcDESCTIPOITEM: TZRField;
        zrpcCODIGOCLIENTE: TZRField;
        zrpcTIT2_CAMPO1: TZRField;
        zrpcTIT2_CAMPO2: TZRField;
        zrpcTIT2_CAMPO3: TZRField;
        zrpcTIT2_CAMPO4: TZRField;
        zrpcCAMPO01: TZRField;
        zrpcCAMPO02: TZRField;
        zrpcCAMPO03: TZRField;
        zrpcCAMPO04: TZRField;
        zrpcBanda1: TZRBand;
        AntesZPedidoCompletoHeader: TZRBand;
        zrpcBanda2: TZRBand;
        ZRLabel185: TZRLabel;
        ZRBand12: TZRBand;
        ZRLabel186: TZRLabel;
        ZRLabel187: TZRLabel;
        ZRLabel188: TZRLabel;
        ZRLabel189: TZRLabel;
        ZRLabel190: TZRLabel;
        ZRLabel191: TZRLabel;
        ZRLabel192: TZRLabel;
        ZRLabel193: TZRLabel;
        ZRLabel194: TZRLabel;
        ZRLabel195: TZRLabel;
        ZRLabel196: TZRLabel;
        ZRLabel197: TZRLabel;
        ZRLabel198: TZRLabel;
        ZRLabel209: TZRLabel;
        ZRLabel210: TZRLabel;
        ZRBand13: TZRBand;
        ZRLabel211: TZRLabel;
        ZRLabel212: TZRLabel;
        ZRLabel213: TZRLabel;
        ZRLabel214: TZRLabel;
        ZRLabel215: TZRLabel;
        ZRLabel216: TZRLabel;
        ZRBand16: TZRBand;
        ZRLabel217: TZRLabel;
        ZRLabel218: TZRLabel;
        ZRLabel219: TZRLabel;
        ZRLabel220: TZRLabel;
        ZRLabel221: TZRLabel;
        ZRLabel222: TZRLabel;
        pcDescCompl: TZRBand;
        ZRLabel223: TZRLabel;
        pcSubItens: TZRSubDetail;
        zrpcCOMP_QTD: TZRField;
        zrpcCOMP_DESC: TZRField;
        zrpcCOMP_UND: TZRField;
        ZRLabel224: TZRLabel;
        ZRLabel225: TZRLabel;
        ZRLabel226: TZRLabel;
        ZRLabel360: TZRLabel;
        ZRLabel361: TZRLabel;
        zrpcFATOR: TZRField;
        zrpcREFERENCIA: TZRField;
        ZRLabel362: TZRLabel;
        ZRLabel363: TZRLabel;
        AntesZPedidoCompletoFooter: TZRBand;
        pclbRepresent: TZRLabel;
        pclbTerms: TZRLabel;
        pcdbTerms: TZRLabel;
        pcdbRepresent: TZRLabel;
        pcdbMensagem: TZRLabel;
        pclbTotalItem: TZRLabel;
        pclbDescontos: TZRLabel;
        pclbTotalFinal: TZRLabel;
        pclbPaid: TZRLabel;
        pclbBalance: TZRLabel;
        pcdbTotalItem: TZRTotalLabel;
        pcdbDescontos: TZRLabel;
        pcdbTotalFinal: TZRLabel;
        pcdbPaid: TZRLabel;
        pcdbBalance: TZRLabel;
        ZRLabel366: TZRLabel;
        ZRLabel364: TZRLabel;
        ZRLabel365: TZRLabel;
        ZRLabel367: TZRLabel;
        pcptTotalItem: TZRLabel;
        pcptDescontos: TZRLabel;
        pcptTotalFinal: TZRLabel;
        pcptPaid: TZRLabel;
        pcptBalance: TZRLabel;
        AntesZPedidoCompletoSubDetail: TZRSubDetail;
        AntesZPedidoCompletoSubDetailColumnHeader: TZRBand;
        ZRLabel179: TZRLabel;
        ZRLabel180: TZRLabel;
        ZRLabel182: TZRLabel;
        ZRLabel183: TZRLabel;
        zrvPARCELA: TZRField;
        zrvVALOR: TZRField;
        zrvVENCIMENTO: TZRField;
        zrvVENDA: TZRField;
        zrvSTATUS: TZRField;
        zrvTITULO: TZRField;
        ZRLabel184: TZRLabel;
        ZRLabel227: TZRLabel;
        ZRLabel285: TZRLabel;
        ZRLabel286: TZRLabel;
        ZRLabel287: TZRLabel;
        ZRLabel288: TZRLabel;
        zrFone2: TZRLabel;
        zrLinha8: TZRLabel;
        zrFone1: TZRLabel;
        zrLinha4: TZRLabel;
        ZRLabel289: TZRLabel;
        ZRLabel290: TZRLabel;
        zrpcRAZAO: TZRField;
        zrpcCPF_CNPJ: TZRField;
        zrpcINSCRICAO_EST: TZRField;
        ZRLabel291: TZRLabel;
        ZRLabel292: TZRLabel;
        ZRLabel293: TZRLabel;
        ZRLabel294: TZRLabel;
        AntesZPedidoCompletoPageHeader: TZRBand;
        pclbNomeEmpresa: TZRLabel;
        pclbEndereco: TZRLabel;
        pclbCidade: TZRLabel;
        pclbFone: TZRLabel;
        pclbLinha1: TZRLabel;
        pclbLinha2: TZRLabel;
        pclbLinha3: TZRLabel;
        pclbLInha4: TZRLabel;
        rbFX880: TppReport;
        ppHeaderBand15: TppHeaderBand;
        ppDetailBand22: TppDetailBand;
        ppFooterBand15: TppFooterBand;
        zrlNumero: TppLabel;
        zrlPreFXCodigoCliente: TppLabel;
        zrlPreFXNomeCliente: TppLabel;
        zrlPreFXEndCliente: TppLabel;
        zrlPreFXCidadeCliente: TppLabel;
        ppLabel73: TppLabel;
        zrlPreFXFone: TppLabel;
        ppLabel74: TppLabel;
        zrlPreFXCPF: TppLabel;
        zrlFXTitC1: TppLabel;
        zrlFXTitC2: TppLabel;
        zrlFXTitC3: TppLabel;
        zrlFXTitC4: TppLabel;
        zrlFXC1: TppLabel;
        zrlFXC2: TppLabel;
        zrlFXC3: TppLabel;
        zrlFXC4: TppLabel;
        ppDBText308: TppDBText;
        ppDBText309: TppDBText;
        ppDBText310: TppDBText;
        ppDBText311: TppDBText;
        ppDBText312: TppDBText;
        ppDBText313: TppDBText;
        ppDBText314: TppDBText;
        ppDBText315: TppDBText;
        ppDBText316: TppDBText;
        ppDBText317: TppDBText;
        ppDBText318: TppDBText;
        ppPageStyle3: TppPageStyle;
        raCodeModule1: TraCodeModule;
        C_InvoiceCB_IMPRESSAOSEMVALORES: TStringField;
        dbTotalItem2: TZRTotalLabel;
        ppRegion3: TppRegion;
        ppDBText319: TppDBText;
        ppLabel72: TppLabel;
        ppDBText320: TppDBText;
        zrvDesconto40Col: TZRField;
        zrvOutras40Col: TZRField;
        C_InvoiceOBS: TStringField;
        Servicos: TppSubReport;
        ppChildReport11: TppChildReport;
        ppHeaderBand13: TppHeaderBand;
        ppDetailBand16: TppDetailBand;
        ppDBText263: TppDBText;
        ppDBText264: TppDBText;
        ppDBMemo12: TppDBMemo;
        BaseCalculoISS: TppDBCalc;
        ppFooterBand12: TppFooterBand;
        ppSummaryBand8: TppSummaryBand;
        ppLabel91: TppLabel;
        ppLabel92: TppLabel;
        ppDBText307: TppDBText;
        ZRLabel121: TZRLabel;
        cFone1: TZRField;
        zrvEnderecoCliente: TZRField;
        C_InvoiceGERAFINANCEIRO: TStringField;
        C_InvoiceTIT1_DATA: TStringField;
        C_InvoiceTIT1_NUMERO: TStringField;
        C_InvoiceTIT1_LOCALENTREGA: TStringField;
        C_InvoiceTIT1_DATAENTREGA: TStringField;
        C_InvoiceTIT1_TIPOENTREGA: TStringField;
        C_InvoiceTIT1_VENDEDOR: TStringField;
        C_InvoiceTIT1_PEDIDO: TStringField;
        C_InvoiceTIT1_COMISSAO: TStringField;
        C_InvoiceTIT1_TERMOS: TStringField;
        C_InvoiceTIT1_MENSAGEM: TStringField;
        C_InvoiceTIT1_DESCONTOS: TStringField;
        C_InvoiceTIT1_FRETE: TStringField;
        C_InvoiceTIT1_TOTALITENS: TStringField;
        C_InvoiceTIT1_TOTALFINAL: TStringField;
        C_InvoiceTIT1_DESCRICAO: TStringField;
        C_InvoiceTIT1_QUANTIDADE: TStringField;
        C_InvoiceTIT1_PRECO: TStringField;
        C_InvoiceTIT1_SUBTOTAL: TStringField;
        C_InvoiceTIT1_JUROS: TStringField;
        C_InvoiceTIT1_DESPESAS: TStringField;
        C_InvoiceTIT1_CAMPO1: TStringField;
        C_InvoiceTIT1_CAMPO2: TStringField;
        C_InvoiceTIT1_CAMPO3: TStringField;
        C_InvoiceTIT1_CAMPO4: TStringField;
        C_InvoiceTIT1_CODIGO: TStringField;
        C_InvoiceTIT1_FUNCIONARIO: TStringField;
        C_InvoiceTIT1_ICMS: TStringField;
        C_InvoiceTIT1_COLUNA1: TStringField;
        C_InvoiceTIT1_COLUNA2: TStringField;
        C_InvoiceTIT1_COLUNA3: TStringField;
        C_InvoiceTIT1_COLUNA4: TStringField;
        C_InvoiceTIT1_UNIDADE: TStringField;
        C_InvoiceTIT1_VALIDADE: TStringField;
        C_InvoiceTIT1_REFERENCIA: TStringField;
        C_InvoiceTIT1_QTDRECEBIDA: TStringField;
        C_InvoiceTIT1_SITUACAO: TStringField;
        C_InvoiceTIT1_CODIGOFORN: TStringField;
        C_InvoiceTIT1_PGTOS: TStringField;
        C_InvoiceTIT1_BALANCE: TStringField;
        C_InvoicePOSSUIICMS1: TStringField;
        C_InvoicePOSSUIISS1: TStringField;
        C_InvoiceCONTABILIZAICMS1: TStringField;
        C_InvoiceTIT1_TVA: TStringField;
        C_InvoiceTIT1_FABRICANTE: TStringField;
        C_InvoiceTIT1_REGISTRO: TStringField;
        C_InvoiceTIT1_IPI: TStringField;
        C_InvoicePOSSUITAX: TStringField;
        C_InvoiceTIT1_CFOP: TStringField;
        C_InvoiceTIPOCOB_PADRAO: TIntegerField;
        C_InvoiceCB_OPCOESIMPRESSAO: TStringField;
        C_InvoiceTEMPLATEDUPLICATA: TIntegerField;
        C_InvoiceTEMPLATEBOLETO: TIntegerField;
        C_InvoiceCB_DESCONTOITEM: TStringField;
        C_InvoiceCB_COMPENSACAO: TStringField;
        C_InvoiceCB_COMPENSACAONOCUSTO: TStringField;
        C_InvoiceTIPO_CARTEIRA_PADRAO: TIntegerField;
        C_InvoiceCB_ORDEM_IMP_ITENS: TStringField;
        C_InvoiceCB_DUPLICATA_IMPRESSA: TStringField;
        C_InvoiceCB_ENTRADAPRECOVENDA: TStringField;
        C_InvoiceBAIXAESTOQUEFISCAL: TStringField;
        C_ItensALMOXARIFADO: TIntegerField;
        ZQtdAlmox: TZReport;
        ZRField1: TZRField;
        ZRField2: TZRField;
        ZRField3: TZRField;
        ZRField4: TZRField;
        ZRField5: TZRField;
        ZRField6: TZRField;
        ZRField7: TZRField;
        ZRField8: TZRField;
        ZRField9: TZRField;
        ZRField10: TZRField;
        ZRField11: TZRField;
        ZRField12: TZRField;
        ZRField13: TZRField;
        ZRField14: TZRField;
        ZRField15: TZRField;
        ZRAggregator1: TZRAggregator;
        ZRAggregator3: TZRAggregator;
        ZRField16: TZRField;
        ZRField17: TZRField;
        ZRField18: TZRField;
        ZRField19: TZRField;
        ZRField20: TZRField;
        ZRField21: TZRField;
        ZRField22: TZRField;
        ZRField23: TZRField;
        ZRField24: TZRField;
        ZRField25: TZRField;
        ZRBand1: TZRBand;
        ZRLabel122: TZRLabel;
        ZRLabel123: TZRLabel;
        ZRLabel124: TZRLabel;
        ZRLabel125: TZRLabel;
        ZRBand2: TZRBand;
        ZRLabel126: TZRLabel;
        ZRLabel127: TZRLabel;
        ZRSystemLabel5: TZRSystemLabel;
        ZRLabel128: TZRLabel;
        ZRLabel129: TZRLabel;
        ZRBand3: TZRBand;
        ZRLabel130: TZRLabel;
        ZRLabel131: TZRLabel;
        ZRLabel132: TZRLabel;
        ZRLabel133: TZRLabel;
        ZRBand4: TZRBand;
        ZRLabel137: TZRLabel;
        ZRLabel138: TZRLabel;
        ZRLabel139: TZRLabel;
        ZRLabel140: TZRLabel;
        ZRBand5: TZRBand;
        ZRTotalLabel5: TZRTotalLabel;
        ZRLabel147: TZRLabel;
        ZRLabel148: TZRLabel;
        ZRLabel155: TZRLabel;
        ZRLabel156: TZRLabel;
        ZRLabel157: TZRLabel;
        ZRLabel158: TZRLabel;
        zrvField: TZRField;
        ZRLabel134: TZRLabel;
        zrvField0: TZRField;
        C_InvoiceCB_SOLICITACAOALMOX: TStringField;
        ZRTamanhoFixo: TZReport;
        ZRField26: TZRField;
        ZRField27: TZRField;
        ZRField28: TZRField;
        ZRField29: TZRField;
        ZRField30: TZRField;
        ZRField31: TZRField;
        ZRField32: TZRField;
        ZRField33: TZRField;
        ZRField34: TZRField;
        ZRField35: TZRField;
        ZRField36: TZRField;
        ZRField37: TZRField;
        ZRField38: TZRField;
        ZRField39: TZRField;
        ZRField40: TZRField;
        ZRField41: TZRField;
        ZRField42: TZRField;
        ZRField43: TZRField;
        ZRField44: TZRField;
        ZRField45: TZRField;
        ZRField46: TZRField;
        ZRField47: TZRField;
        ZRField48: TZRField;
        ZRField49: TZRField;
        ZRField50: TZRField;
        ZRField51: TZRField;
        ZRField52: TZRField;
        ZRBand6: TZRBand;
        ZRLabel135: TZRLabel;
        ZRLabel136: TZRLabel;
        ZRLabel141: TZRLabel;
        ZRLabel142: TZRLabel;
        ZRLabel143: TZRLabel;
        ZRLabel144: TZRLabel;
        ZRLabel146: TZRLabel;
        ZRBand7: TZRBand;
        ZRLabel162: TZRLabel;
        ZRLabel163: TZRLabel;
        ZRLabel164: TZRLabel;
        ZRLabel165: TZRLabel;
        ZRLabel166: TZRLabel;
        ZRLabel167: TZRLabel;
        ZRSubDetail1: TZRSubDetail;
        ZRField53: TZRField;
        ZRField54: TZRField;
        ZRField55: TZRField;
        ZRLabel169: TZRLabel;
        ZRLabel170: TZRLabel;
        ZRLabel228: TZRLabel;
        ZREmpresa: TZRLabel;
        zrvFieldEmpresa: TZRField;
        zrvFieldEndereco: TZRField;
        zrvFieldBairro: TZRField;
        zrvFieldcidade: TZRField;
        zrvFieldemail: TZRField;
        zrvFieldFone: TZRField;
        ZRLabel234: TZRLabel;
        ZRLabel235: TZRLabel;
        ZRLabel237: TZRLabel;
        zrvFieldCodigoCliente: TZRField;
        zrvFieldNomeCliente: TZRField;
        zrvFieldEndCliente: TZRField;
        zrvFieldBairroCliente: TZRField;
        zrvFieldCidadeCliente: TZRField;
        zrvFieldFoneCliente: TZRField;
        zrv40ColunasPlanoPag: TZRField;
        zrv40ColunasVendedor: TZRField;
        zrv40ColunasOBS: TZRField;
        zrv40ColunasCAMPO01: TZRField;
        zr40ColunasFooter: TZRBand;
        zr40ColunasSubDetail: TZRSubDetail;
        zr40ColunasSubDetailColumnHeader: TZRBand;
        zr40ColunasSubDetailDetailFooter: TZRBand;
        ZRLabel29: TZRLabel;
        ZRLabel152: TZRLabel;
        ZRLabel159: TZRLabel;
        ZRLabel160: TZRLabel;
        ZRLabel161: TZRLabel;
        ZRLabel236: TZRLabel;
        ZRLabel238: TZRLabel;
        ZRLabel239: TZRLabel;
        ZRLabel240: TZRLabel;
        ZRLabel241: TZRLabel;
        zrvPARCELA0: TZRField;
        zrvVALOR0: TZRField;
        zrvVENCIMENTO0: TZRField;
        zrvTITULO0: TZRField;
        zrvSTATUS0: TZRField;
        zrvVENDA0: TZRField;
        C_ParcelasVALORPAGO: TBCDField;
        zrvVALORPAGO: TZRField;
        ZRLabel242: TZRLabel;
        ZRLabel243: TZRLabel;
        AntesZPedidoCompletoSubDetailColumnFooter: TZRBand;
        ZRLabel178: TZRLabel;
        ppLine15: TppLine;
        zrPreImpModeloII: TZReport;
        ZRField56: TZRField;
        ZRField57: TZRField;
        ZRField58: TZRField;
        ZRField59: TZRField;
        ZRField60: TZRField;
        ZRField61: TZRField;
        ZRField62: TZRField;
        ZRAggregator6: TZRAggregator;
        ZRField63: TZRField;
        ZRField64: TZRField;
        ZRField65: TZRField;
        ZRField66: TZRField;
        ZRField67: TZRField;
        ZRField68: TZRField;
        ZRField69: TZRField;
        ZRField70: TZRField;
        ZRField71: TZRField;
        ZRField72: TZRField;
        ZRField73: TZRField;
        ZRField74: TZRField;
        ZRField75: TZRField;
        ZRField76: TZRField;
        ZRField77: TZRField;
        ZRField78: TZRField;
        ZRField79: TZRField;
        ZRField80: TZRField;
        ZRField81: TZRField;
        ZRField82: TZRField;
        ZRBand10: TZRBand;
        ZRLabel244: TZRLabel;
        zrlPre2CodigoCliente: TZRLabel;
        zrlPre2NomeCliente: TZRLabel;
        zrlPre2EndCliente: TZRLabel;
        zrlPre2CidadeCliente: TZRLabel;
        zrlTit2C1: TZRLabel;
        zrlPre2Fone: TZRLabel;
        zrlTit2C2: TZRLabel;
        zrlC2_1: TZRLabel;
        zrlC2_2: TZRLabel;
        zrlTit2C3: TZRLabel;
        zrlC2_3: TZRLabel;
        zrlTit2C4: TZRLabel;
        zrlC2_4: TZRLabel;
        zrlPre2CPF: TZRLabel;
        ZRBand11: TZRBand;
        ZRLabel261: TZRLabel;
        ZRLabel262: TZRLabel;
        ZRLabel263: TZRLabel;
        ZRLabel264: TZRLabel;
        ZRLabel265: TZRLabel;
        ZRLabel266: TZRLabel;
        ZRBand17: TZRBand;
        ZRLabel267: TZRLabel;
        ZRSubDetail3: TZRSubDetail;
        ZRField83: TZRField;
        ZRField84: TZRField;
        ZRField85: TZRField;
        ZRLabel268: TZRLabel;
        ZRLabel269: TZRLabel;
        ZRLabel270: TZRLabel;
        ZRBand18: TZRBand;
        ZRLabel272: TZRLabel;
        ZRLabel273: TZRLabel;
        ZRLabel274: TZRLabel;
        ZRLabel275: TZRLabel;
        zrlPre2Insc_Est: TZRLabel;
        zrlPre2Bairro: TZRLabel;
        zrlPre2UF: TZRLabel;
        ZRSystemLabel6: TZRSystemLabel;
        ZRLabel245: TZRLabel;
        zrlPre2CEP: TZRLabel;
        zrlPre2Vendedor: TZRLabel;
        zrlPre2TipoMovimento: TZRLabel;
        ppDBText211: TppDBText;
        ppDBText212: TppDBText;
        ppSubReport1: TppSubReport;
        ppChildReport17: TppChildReport;
        ppColumnHeaderBand6: TppColumnHeaderBand;
        ppShape68: TppShape;
        ppLabel75: TppLabel;
        ppLabel76: TppLabel;
        ppLine16: TppLine;
        ppLabel77: TppLabel;
        ppLine17: TppLine;
        ppDetailBand23: TppDetailBand;
        ppDBText321: TppDBText;
        ppDBText322: TppDBText;
        ppDBText323: TppDBText;
        ppLine18: TppLine;
        ppLine35: TppLine;
        ppLine38: TppLine;
        ppLine48: TppLine;
        ppLine49: TppLine;
        ppImage5: TppImage;
        ppImage6: TppImage;
        ppColumnFooterBand6: TppColumnFooterBand;
        ppDBText324: TppDBText;
        ZR40ColEconomico: TZReport;
        ZRField86: TZRField;
        ZRField87: TZRField;
        ZRField88: TZRField;
        ZRField89: TZRField;
        ZRField90: TZRField;
        ZRField91: TZRField;
        ZRField92: TZRField;
        ZRField93: TZRField;
        ZRField94: TZRField;
        ZRField95: TZRField;
        ZRField96: TZRField;
        ZRField97: TZRField;
        ZRField98: TZRField;
        ZRField99: TZRField;
        ZRField100: TZRField;
        ZRAggregator7: TZRAggregator;
        ZRAggregator8: TZRAggregator;
        ZRField101: TZRField;
        ZRField102: TZRField;
        ZRField103: TZRField;
        ZRField104: TZRField;
        ZRField105: TZRField;
        ZRField106: TZRField;
        ZRField107: TZRField;
        ZRField108: TZRField;
        ZRField109: TZRField;
        ZRField110: TZRField;
        ZRField111: TZRField;
        ZRField115: TZRField;
        ZRField116: TZRField;
        ZRField117: TZRField;
        ZRBand19: TZRBand;
        zrCidade3e: TZRLabel;
        zrEndereco3e: TZRLabel;
        zrNomeEmpresa3e: TZRLabel;
        zrFonee: TZRLabel;
        ZRBand20: TZRBand;
        ZRLabel250: TZRLabel;
        ZRSystemLabel7: TZRSystemLabel;
        zrNomeCodigoClientee: TZRLabel;
        zrNomeVendedor3e: TZRLabel;
        ZRBand21: TZRBand;
        ZRLabel254: TZRLabel;
        ZRLabel255: TZRLabel;
        ZRLabel256: TZRLabel;
        ZRLabel257: TZRLabel;
        ZRLabel258: TZRLabel;
        ZRLabel259: TZRLabel;
        ZRLabel260: TZRLabel;
        ZRBand22: TZRBand;
        ZRLabel271: TZRLabel;
        ZRLabel276: TZRLabel;
        ZRLabel277: TZRLabel;
        ZRLabel278: TZRLabel;
        ZRLabel279: TZRLabel;
        ZRLabel280: TZRLabel;
        ZRLabel281: TZRLabel;
        ZRLabel282: TZRLabel;
        ZRLabel283: TZRLabel;
        ZRBand23: TZRBand;
        ZRLabel284: TZRLabel;
        ZRTotalLabel6: TZRTotalLabel;
        ZRLabel295: TZRLabel;
        ZRLabel296: TZRLabel;
        ZRLabel297: TZRLabel;
        ZRLabel298: TZRLabel;
        ZRLabel299: TZRLabel;
        ZRLabel300: TZRLabel;
        ZRLabel301: TZRLabel;
        ZRLabel302: TZRLabel;
        ZRTotalLabel7: TZRTotalLabel;
        ZRLabel303: TZRLabel;
        ZRLabel304: TZRLabel;
        ZRLabel305: TZRLabel;
        ZRLabel306: TZRLabel;
        ZRLabel307: TZRLabel;
        ZRLabel308: TZRLabel;
        ZRLabel309: TZRLabel;
        ZRLabel310: TZRLabel;
        ZRLabel311: TZRLabel;
        ZRBand24: TZRBand;
        ZRSubDetail4: TZRSubDetail;
        ZRField118: TZRField;
        ZRField119: TZRField;
        ZRField120: TZRField;
        ZRField121: TZRField;
        ZRField122: TZRField;
        ZRField123: TZRField;
        ZRField124: TZRField;
        ZRLabel312: TZRLabel;
        ZRLabel313: TZRLabel;
        ZRLabel314: TZRLabel;
        ZRLabel315: TZRLabel;
        ZRLabel316: TZRLabel;
        ZRBand25: TZRBand;
        ZRLabel317: TZRLabel;
        ZRLabel318: TZRLabel;
        ZRLabel319: TZRLabel;
        ZRLabel320: TZRLabel;
        ZRLabel321: TZRLabel;
        ZRLabel322: TZRLabel;
        ZRBand26: TZRBand;
        ZRLabel246: TZRLabel;
        ZRLabel251: TZRLabel;
        ZR40ColEconomicoPageFooter: TZRBand;
        ZRLabel324: TZRLabel;
        ZRLabel323: TZRLabel;
        pp40ColunasGrafico: TppReport;
        ppHeaderBand16: TppHeaderBand;
        ppNumero: TppLabel;
        pp40CodigoCliente: TppLabel;
        pp40NomeCliente: TppLabel;
        pp40Endereco: TppLabel;
        pp40Cidade: TppLabel;
        ppLabel83: TppLabel;
        pp40Fone: TppLabel;
        ppLabel85: TppLabel;
        pp40CPF: TppLabel;
        ppDetailBand24: TppDetailBand;
        ppDBText325: TppDBText;
        ppDBText326: TppDBText;
        ppDBText327: TppDBText;
        ppDBText328: TppDBText;
        ppDBText329: TppDBText;
        ppDBText330: TppDBText;
        raCodeModule2: TraCodeModule;
        pp40Empresa: TppLabel;
        pp40EndEmpresa: TppLabel;
        pp40FoneEmpresa: TppLabel;
        ppSummaryBand13: TppSummaryBand;
        ppDBText331: TppDBText;
        ppDBText332: TppDBText;
        ppDBText333: TppDBText;
        ppDBText334: TppDBText;
        ppDBText335: TppDBText;
        ppLabel78: TppLabel;
        ppLabel79: TppLabel;
        ppLine50: TppLine;
        C_InvoiceTIPOCOBRANCA: TStringField;
        ZRLabel247: TZRLabel;
        ZRLabel248: TZRLabel;
        zrvFieldCidadeUfZip: TZRField;
        zrvFieldCPF_CNPJ: TZRField;
        ZRLabel114: TZRLabel;
        ZRLabel252: TZRLabel;
        ZRLabel253: TZRLabel;
        ZRLabel325: TZRLabel;
        ZRLabel326: TZRLabel;
        ZRLabel327: TZRLabel;
        ZRTamanhoFixoFooter: TZRBand;
        ZRTamanhoFixoChild: TZRBand;
        ZRTamanhoFixoSubDetail: TZRSubDetail;
        ZRLabel328: TZRLabel;
        ZRLabel329: TZRLabel;
        ZRLabel330: TZRLabel;
        ZRLabel331: TZRLabel;
        ZRLabel332: TZRLabel;
        ZRLabel333: TZRLabel;
        ZRLabel334: TZRLabel;
        ZRLabel335: TZRLabel;
        ZRLabel336: TZRLabel;
        ZRLabel231: TZRLabel;
        zrvFieldParcela: TZRField;
        zrvFieldVencimento: TZRField;
        zrvFieldValor: TZRField;
        zrvFieldTitulo: TZRField;
        ZRLabel249: TZRLabel;
        ZRLabel340: TZRLabel;
        ZRLabel229: TZRLabel;
        ZRLabel230: TZRLabel;
        ZRLabel339: TZRLabel;
        ZRLabel232: TZRLabel;
        ZRLabel338: TZRLabel;
        ZRLabel233: TZRLabel;
        ZRLabel168: TZRLabel;
        ZRTamanhoFixoPageFooter: TZRBand;
        C_ItensLOCAL: TStringField;
        zrpcLOCAL: TZRField;
        ZRLabel341: TZRLabel;
        ZRLabel342: TZRLabel;
        ZRLabel343: TZRLabel;
        ZRLabel344: TZRLabel;
        zrvFABRICANTE: TZRField;
        ZRLabel345: TZRLabel;
        ZRLabel346: TZRLabel;
        C_InvoiceDescontoPerc: TFloatField;
        zrvDescontoPerc: TZRField;
        ppLabel80: TppLabel;
        ppLabel81: TppLabel;
        ppDBText336: TppDBText;
        ppDBText337: TppDBText;
        ZRLabelTotalItens: TZRLabel;
        zrvFieldTotalItens: TZRField;
        ZRLabelSubTotal: TZRLabel;
        ppDBText338: TppDBText;
        ppLabel82: TppLabel;
        ppPreImpresso_II: TppReport;
        ppHeaderBand18: TppHeaderBand;
        ppDBText358: TppDBText;
        ppDBText360: TppDBText;
        ppDBText361: TppDBText;
        ppDBText362: TppDBText;
        ppDBText363: TppDBText;
        ppDBText364: TppDBText;
        ppDBText365: TppDBText;
        ppDBText366: TppDBText;
        ppDBText367: TppDBText;
        ppDBText377: TppDBText;
        ppDBText352: TppDBText;
        ppDetailBand28: TppDetailBand;
        ppDBText368: TppDBText;
        ppDBText369: TppDBText;
        ppDBText370: TppDBText;
        ppDBText371: TppDBText;
        ppDBText375: TppDBText;
        ppDBText376: TppDBText;
        ppFooterBand_PPG: TppFooterBand;
        ppDBText379: TppDBText;
        ppDBText380: TppDBText;
        ppDBText381: TppDBText;
        ppDBText382: TppDBText;
        ppDBText351: TppDBText;
        ppLabel84: TppLabel;
        ppLabel86: TppLabel;
        ppLabel87: TppLabel;
        ppLabel88: TppLabel;
        ppSystemVariable3: TppSystemVariable;
        ppDBText339: TppDBText;
        ppLabel28: TppLabel;
        ppLabel89: TppLabel;
        ppDBText340: TppDBText;
        ppLabel90: TppLabel;
        ppLabel94: TppLabel;
        ppLabel95: TppLabel;
        ppLabel96: TppLabel;
        ppLabel97: TppLabel;
        ppDBText341: TppDBText;
        ppDBText342: TppDBText;
        ppDBText343: TppDBText;
        ppLabel98: TppLabel;
        ppDBText344: TppDBText;
        ppLabel99: TppLabel;
        ZRLabeTecnico: TZRLabel;
        ZRTecnico: TZRLabel;
        ZRLTecnico: TZRLabel;
        ZRLabel349: TZRLabel;
        C_InvoiceMENSAGEMITEM: TStringField;
        C_ItensSTATUSITEM: TStringField;
        C_ItensTAXAVEL: TStringField;
        C_InvoiceNRO: TStringField;
        C_InvoiceCB_CARNEIDENTIFICADO: TStringField;
        C_InvoiceLIVROFISCAL: TStringField;
        C_ItensORDEM: TIntegerField;
        C_ParcelasSIGLA: TStringField;
        ppLabel100: TppLabel;
        ppDBText345: TppDBText;
        ppLine51: TppLine;
        ppLine52: TppLine;
        ppLine53: TppLine;
        C_InvoiceRG: TStringField;
        rbInvoiceOURO: TppReport;
        ppHeaderBand17: TppHeaderBand;
        ppShape69: TppShape;
        rbrgCabecalhoOURO: TppRegion;
        ppDBText346: TppDBText;
        ppShape70: TppShape;
        ppLabel101: TppLabel;
        ppShape71: TppShape;
        ppShape72: TppShape;
        ppDBText347: TppDBText;
        ppDBText348: TppDBText;
        ppDBText349: TppDBText;
        ppDBText350: TppDBText;
        ppDBText353: TppDBText;
        ppDBText354: TppDBText;
        ppDBText355: TppDBText;
        ppShape73: TppShape;
        ppDBVendedor: TppDBText;
        ppDBText357: TppDBText;
        ppDBText388: TppDBText;
        ppLabel102: TppLabel;
        ppDBText391: TppDBText;
        ppRegion16: TppRegion;
        ppShape84: TppShape;
        ppDBText392: TppDBText;
        ppDBText393: TppDBText;
        lbCanceladoOURO: TppLabel;
        ppDBText399: TppDBText;
        ppDBText400: TppDBText;
        ppLabel104: TppLabel;
        ppDetailBand25: TppDetailBand;
        ppRegion17: TppRegion;
        ppLine54: TppLine;
        ppLine55: TppLine;
        ppLine58: TppLine;
        ppDBText402: TppDBText;
        ppDBText403: TppDBText;
        ppDBText404: TppDBText;
        ppDBPrecoOURO: TppDBText;
        ppDBTotalOURO: TppDBText;
        ppLine60: TppLine;
        ppLine61: TppLine;
        ppDBMemo7: TppDBMemo;
        ppSummaryBand15: TppSummaryBand;
        ppSubParcelasOURO: TppSubReport;
        ppChildReport20: TppChildReport;
        ppColumnHeaderBand8: TppColumnHeaderBand;
        ppShape90: TppShape;
        ppLabel105: TppLabel;
        ppLabel106: TppLabel;
        ppLine66: TppLine;
        ppLabel107: TppLabel;
        ppLine67: TppLine;
        ppLabel108: TppLabel;
        ppLine68: TppLine;
        ppLine69: TppLine;
        ppDetailBand29: TppDetailBand;
        ppDBText417: TppDBText;
        ppDBText418: TppDBText;
        ppDBText419: TppDBText;
        ppLine70: TppLine;
        ppLine71: TppLine;
        ppLine72: TppLine;
        ppLine73: TppLine;
        ppLine74: TppLine;
        ppImage7: TppImage;
        ppImage8: TppImage;
        ppDBText420: TppDBText;
        ppLine75: TppLine;
        ppColumnFooterBand8: TppColumnFooterBand;
        ppDBDescontoOURO: TppDBText;
        ppDBTotalGeralOURO: TppDBText;
        ppLabel103: TppLabel;
        ppLabel109: TppLabel;
        ppLabel110: TppLabel;
        ppDBPrecoTotalOURO: TppDBText;
        ppLabel112: TppLabel;
        ppLabel113: TppLabel;
        ppLabel114: TppLabel;
        ppLabel115: TppLabel;
        ppLabel116: TppLabel;
        ppRegion8: TppRegion;
        ppLine59: TppLine;
        ppLine62: TppLine;
        ppLine63: TppLine;
        ppLine64: TppLine;
        ppLine65: TppLine;
        ppLabel111: TppLabel;
        ppmAlertaContrato: TppMemo;
        ppLine56: TppLine;
        ppFooterBand16: TppFooterBand;
        ppDBText359: TppDBText;
        ppLine57: TppLine;
        ppRegion6: TppRegion;
        ppLabel117: TppLabel;
        ppDBMemo8: TppDBMemo;
        C_ItensSEQUENCIA: TIntegerField;
        ppRichTextIntroducao: TppRichText;
        ppRichExplicacoes: TppRichText;
        ppDBDescComplementarProposta: TppDBMemo;
        C_ItensPRECOTABELA: TFloatField;
        dbtDescricao_P: TppDBMemo;
        ZRLabel348: TZRLabel;
        ZRLabel350: TZRLabel;
        zrvLocalizacao: TZRField;
        Sigla: TZRField;
        ppGroup3: TppGroup;
        ppGroupHeaderBand2: TppGroupHeaderBand;
        ppGroupFooterBand2: TppGroupFooterBand;
        ppDBText356: TppDBText;
        zr40ColunasGroup: TZRGroup;
        zrv40ColunasCAMPO02: TZRField;
        zr40ColunasGroupHeader: TZRBand;
        ZRLabel351: TZRLabel;
        ZRLabel104: TZRLabel;
        ZRTotalLabel4: TZRTotalLabel;
        ZRLabel105: TZRLabel;
        ZRLabel106: TZRLabel;
        zrlDesconto: TZRLabel;
        ZRLabel115: TZRLabel;
        ZRLabel116: TZRLabel;
        ZRLabel117: TZRLabel;
        ZRLabel118: TZRLabel;
        ZRLabel119: TZRLabel;
        ZrtTotalFinal: TZRTotalLabel;
        ZRLabel111: TZRLabel;
        ZRLabel120: TZRLabel;
        ENDERECO: TZRLabel;
        ZRLabel145: TZRLabel;
        ZRLabel149: TZRLabel;
        ZRLabel150: TZRLabel;
        ZRLabel151: TZRLabel;
        ZRLabel153: TZRLabel;
        ZRCampo01: TZRLabel;
        ZRTotalLabel3: TZRTotalLabel;
        ZRLabel337: TZRLabel;
        ZReport1: TZReport;
        ZRField125: TZRField;
        ZRField126: TZRField;
        ZRField127: TZRField;
        ZRField128: TZRField;
        ZRField129: TZRField;
        ZRField130: TZRField;
        ZRField131: TZRField;
        ZRAggregator5: TZRAggregator;
        ZRField132: TZRField;
        ZRField133: TZRField;
        ZRField134: TZRField;
        ZRField135: TZRField;
        ZRField136: TZRField;
        ZRField137: TZRField;
        ZRField138: TZRField;
        ZRField139: TZRField;
        ZRField140: TZRField;
        ZRField141: TZRField;
        ZRField142: TZRField;
        ZRField143: TZRField;
        ZRField144: TZRField;
        ZRField145: TZRField;
        ZRField146: TZRField;
        ZRField147: TZRField;
        ZRField148: TZRField;
        ZRField149: TZRField;
        ZRField150: TZRField;
        ZRField151: TZRField;
        ZRField152: TZRField;
        ZRField153: TZRField;
        ZRField154: TZRField;
        ZRField155: TZRField;
        ZRField156: TZRField;
        ZRField157: TZRField;
        ZRField158: TZRField;
        ZRField159: TZRField;
        ZRField160: TZRField;
        ZRField161: TZRField;
        ZRField162: TZRField;
        ZRField163: TZRField;
        ZRField164: TZRField;
        ZRField165: TZRField;
        ZRField166: TZRField;
        ZRField167: TZRField;
        ZRField168: TZRField;
        ZRField169: TZRField;
        ZRField170: TZRField;
        ZRField171: TZRField;
        ZRField172: TZRField;
        ZRField173: TZRField;
        ZRField174: TZRField;
        ZRField175: TZRField;
        ZRField176: TZRField;
        ZRField177: TZRField;
        ZRField178: TZRField;
        ZRField179: TZRField;
        ZRField180: TZRField;
        ZRField181: TZRField;
        ZRField182: TZRField;
        ZRField183: TZRField;
        ZRField184: TZRField;
        ZRBand8: TZRBand;
        ZRLabel347: TZRLabel;
        ZRLabel352: TZRLabel;
        ZRLabel353: TZRLabel;
        ZRLabel354: TZRLabel;
        ZRLabel355: TZRLabel;
        ZRLabel356: TZRLabel;
        ZRLabel357: TZRLabel;
        ZRLabel358: TZRLabel;
        ZRBand9: TZRBand;
        ZRBand27: TZRBand;
        ZRBand28: TZRBand;
        ZRLabel359: TZRLabel;
        ZRBand29: TZRBand;
        ZRLabel368: TZRLabel;
        ZRLabel369: TZRLabel;
        ZRLabel370: TZRLabel;
        ZRLabel371: TZRLabel;
        ZRLabel372: TZRLabel;
        ZRLabel373: TZRLabel;
        ZRLabel374: TZRLabel;
        ZRLabel375: TZRLabel;
        ZRLabel376: TZRLabel;
        ZRLabel377: TZRLabel;
        ZRLabel378: TZRLabel;
        ZRLabel379: TZRLabel;
        ZRLabel380: TZRLabel;
        ZRLabel381: TZRLabel;
        ZRLabel382: TZRLabel;
        ZRLabel383: TZRLabel;
        ZRLabel384: TZRLabel;
        ZRLabel385: TZRLabel;
        ZRLabel386: TZRLabel;
        ZRLabel387: TZRLabel;
        ZRLabel388: TZRLabel;
        ZRBand30: TZRBand;
        ZRLabel389: TZRLabel;
        ZRLabel390: TZRLabel;
        ZRLabel391: TZRLabel;
        ZRLabel392: TZRLabel;
        ZRLabel393: TZRLabel;
        ZRLabel394: TZRLabel;
        ZRLabel395: TZRLabel;
        ZRLabel396: TZRLabel;
        ZRLabel397: TZRLabel;
        ZRBand31: TZRBand;
        ZRLabel398: TZRLabel;
        ZRLabel399: TZRLabel;
        ZRLabel400: TZRLabel;
        ZRLabel401: TZRLabel;
        ZRLabel402: TZRLabel;
        ZRLabel403: TZRLabel;
        ZRLabel404: TZRLabel;
        ZRLabel405: TZRLabel;
        ZRLabel406: TZRLabel;
        ZRBand32: TZRBand;
        ZRLabel407: TZRLabel;
        ZRSubDetail5: TZRSubDetail;
        ZRField185: TZRField;
        ZRField186: TZRField;
        ZRField187: TZRField;
        ZRLabel408: TZRLabel;
        ZRLabel409: TZRLabel;
        ZRLabel410: TZRLabel;
        ZRBand33: TZRBand;
        ZRLabel411: TZRLabel;
        ZRLabel412: TZRLabel;
        ZRLabel413: TZRLabel;
        ZRLabel414: TZRLabel;
        ZRLabel415: TZRLabel;
        ZRLabel416: TZRLabel;
        ZRLabel417: TZRLabel;
        ZRLabel418: TZRLabel;
        ZRLabel419: TZRLabel;
        ZRLabel420: TZRLabel;
        ZRTotalLabel8: TZRTotalLabel;
        ZRLabel421: TZRLabel;
        ZRLabel422: TZRLabel;
        ZRLabel423: TZRLabel;
        ZRLabel424: TZRLabel;
        ZRLabel425: TZRLabel;
        ZRLabel426: TZRLabel;
        ZRLabel427: TZRLabel;
        ZRLabel428: TZRLabel;
        ZRLabel429: TZRLabel;
        ZRLabel430: TZRLabel;
        ZRLabel431: TZRLabel;
        ZRLabel432: TZRLabel;
        ZRLabel433: TZRLabel;
        ZRLabel434: TZRLabel;
        ZRSubDetail6: TZRSubDetail;
        ZRField188: TZRField;
        ZRField189: TZRField;
        ZRField190: TZRField;
        ZRField191: TZRField;
        ZRField192: TZRField;
        ZRField193: TZRField;
        ZRLabel435: TZRLabel;
        ZRLabel436: TZRLabel;
        ZRLabel437: TZRLabel;
        ZRLabel438: TZRLabel;
        ZRBand34: TZRBand;
        ZRLabel439: TZRLabel;
        ZRLabel440: TZRLabel;
        ZRLabel441: TZRLabel;
        ZRLabel442: TZRLabel;
        ZRLabel443: TZRLabel;
        ZRBand35: TZRBand;
        ZRLabel444: TZRLabel;
        ZPedidoCompFolhaCompleta: TZReport;
        ZRField194: TZRField;
        ZRField195: TZRField;
        ZRField196: TZRField;
        ZRField197: TZRField;
        ZRField198: TZRField;
        ZRField199: TZRField;
        ZRField200: TZRField;
        ZRAggregator9: TZRAggregator;
        ZRField201: TZRField;
        ZRField202: TZRField;
        ZRField203: TZRField;
        ZRField204: TZRField;
        ZRField205: TZRField;
        ZRField206: TZRField;
        ZRField207: TZRField;
        ZRField208: TZRField;
        ZRField209: TZRField;
        ZRField210: TZRField;
        ZRField211: TZRField;
        ZRField212: TZRField;
        ZRField213: TZRField;
        ZRField214: TZRField;
        ZRField215: TZRField;
        ZRField216: TZRField;
        ZRField217: TZRField;
        ZRField218: TZRField;
        ZRField219: TZRField;
        ZRField220: TZRField;
        ZRField221: TZRField;
        ZRField222: TZRField;
        ZRField223: TZRField;
        ZRField224: TZRField;
        ZRField225: TZRField;
        ZRField226: TZRField;
        ZRField227: TZRField;
        ZRField228: TZRField;
        ZRField229: TZRField;
        ZRField230: TZRField;
        ZRField231: TZRField;
        ZRField232: TZRField;
        ZRField233: TZRField;
        ZRField234: TZRField;
        ZRField235: TZRField;
        ZRField236: TZRField;
        ZRField237: TZRField;
        ZRField238: TZRField;
        ZRField239: TZRField;
        ZRField240: TZRField;
        ZRField241: TZRField;
        ZRField242: TZRField;
        ZRField243: TZRField;
        ZRField244: TZRField;
        ZRField245: TZRField;
        ZRField246: TZRField;
        ZRField247: TZRField;
        ZRField248: TZRField;
        ZRField249: TZRField;
        ZRField250: TZRField;
        ZRField251: TZRField;
        ZRField252: TZRField;
        ZRField253: TZRField;
        ZRBand37: TZRBand;
        ZRBand38: TZRBand;
        ZRBand39: TZRBand;
        ZRLabel453: TZRLabel;
        ZRBand40: TZRBand;
        ZRLabel454: TZRLabel;
        ZRLabel455: TZRLabel;
        ZRLabel456: TZRLabel;
        ZRLabel457: TZRLabel;
        ZRLabel458: TZRLabel;
        ZRLabel459: TZRLabel;
        ZRLabel460: TZRLabel;
        ZRLabel461: TZRLabel;
        ZRLabel462: TZRLabel;
        ZRLabel463: TZRLabel;
        ZRLabel464: TZRLabel;
        ZRLabel465: TZRLabel;
        ZRLabel466: TZRLabel;
        ZRLabel467: TZRLabel;
        ZRLabel468: TZRLabel;
        ZRLabel469: TZRLabel;
        ZRLabel470: TZRLabel;
        ZRLabel471: TZRLabel;
        ZRLabel472: TZRLabel;
        ZRLabel473: TZRLabel;
        ZRLabel474: TZRLabel;
        ZRBand41: TZRBand;
        ZRLabel475: TZRLabel;
        ZRLabel476: TZRLabel;
        ZRLabel477: TZRLabel;
        ZRLabel478: TZRLabel;
        ZRLabel479: TZRLabel;
        ZRLabel480: TZRLabel;
        ZRLabel481: TZRLabel;
        ZRLabel482: TZRLabel;
        ZRLabel483: TZRLabel;
        ZRBand42: TZRBand;
        ZRLabel484: TZRLabel;
        ZRLabel485: TZRLabel;
        ZRLabel486: TZRLabel;
        ZRLabel487: TZRLabel;
        ZRLabel488: TZRLabel;
        ZRLabel489: TZRLabel;
        ZRLabel490: TZRLabel;
        ZRLabel491: TZRLabel;
        ZRLabel492: TZRLabel;
        ZRBand43: TZRBand;
        ZRLabel493: TZRLabel;
        ZRSubDetail7: TZRSubDetail;
        ZRField254: TZRField;
        ZRField255: TZRField;
        ZRField256: TZRField;
        ZRLabel494: TZRLabel;
        ZRLabel495: TZRLabel;
        ZRLabel496: TZRLabel;
        ZRBand44: TZRBand;
        ZRLabel497: TZRLabel;
        ZRLabel498: TZRLabel;
        ZRLabel499: TZRLabel;
        ZRLabel500: TZRLabel;
        ZRLabel501: TZRLabel;
        ZRLabel502: TZRLabel;
        ZRLabel503: TZRLabel;
        ZRLabel504: TZRLabel;
        ZRLabel505: TZRLabel;
        ZRLabel506: TZRLabel;
        ZRTotalLabel9: TZRTotalLabel;
        ZRLabel507: TZRLabel;
        ZRLabel508: TZRLabel;
        ZRLabel509: TZRLabel;
        ZRLabel510: TZRLabel;
        ZRLabel511: TZRLabel;
        ZRLabel512: TZRLabel;
        ZRLabel513: TZRLabel;
        ZRLabel514: TZRLabel;
        ZRLabel515: TZRLabel;
        ZRLabel516: TZRLabel;
        ZRLabel517: TZRLabel;
        ZRLabel518: TZRLabel;
        ZRLabel519: TZRLabel;
        ZRLabel520: TZRLabel;
        ZRSubDetail8: TZRSubDetail;
        ZRField257: TZRField;
        ZRField258: TZRField;
        ZRField259: TZRField;
        ZRField260: TZRField;
        ZRField261: TZRField;
        ZRField262: TZRField;
        ZRLabel521: TZRLabel;
        ZRLabel522: TZRLabel;
        ZRLabel523: TZRLabel;
        ZRLabel524: TZRLabel;
        ZRBand45: TZRBand;
        ZRLabel525: TZRLabel;
        ZRLabel526: TZRLabel;
        ZRLabel527: TZRLabel;
        ZRLabel528: TZRLabel;
        ZRLabel529: TZRLabel;
        ZRBand46: TZRBand;
        ZRLabel530: TZRLabel;
        ZReport3: TZReport;
        ZRField263: TZRField;
        ZRField264: TZRField;
        ZRField265: TZRField;
        ZRField266: TZRField;
        ZRField267: TZRField;
        ZRField268: TZRField;
        ZRField269: TZRField;
        ZRAggregator10: TZRAggregator;
        ZRField270: TZRField;
        ZRField271: TZRField;
        ZRField272: TZRField;
        ZRField273: TZRField;
        ZRField274: TZRField;
        ZRField275: TZRField;
        ZRField276: TZRField;
        ZRField277: TZRField;
        ZRField278: TZRField;
        ZRField279: TZRField;
        ZRField280: TZRField;
        ZRField281: TZRField;
        ZRField282: TZRField;
        ZRField283: TZRField;
        ZRField284: TZRField;
        ZRField285: TZRField;
        ZRField286: TZRField;
        ZRField287: TZRField;
        ZRField288: TZRField;
        ZRField289: TZRField;
        ZRField290: TZRField;
        ZRField291: TZRField;
        ZRField292: TZRField;
        ZRField293: TZRField;
        ZRField294: TZRField;
        ZRField295: TZRField;
        ZRField296: TZRField;
        ZRField297: TZRField;
        ZRField298: TZRField;
        ZRField299: TZRField;
        ZRField300: TZRField;
        ZRField301: TZRField;
        ZRField302: TZRField;
        ZRField303: TZRField;
        ZRField304: TZRField;
        ZRField305: TZRField;
        ZRField306: TZRField;
        ZRField307: TZRField;
        ZRField308: TZRField;
        ZRField309: TZRField;
        ZRField310: TZRField;
        ZRField311: TZRField;
        ZRField312: TZRField;
        ZRField313: TZRField;
        ZRField314: TZRField;
        ZRField315: TZRField;
        ZRField316: TZRField;
        ZRField317: TZRField;
        ZRField318: TZRField;
        ZRField319: TZRField;
        ZRField320: TZRField;
        ZRField321: TZRField;
        ZRField322: TZRField;
        ZRBand47: TZRBand;
        ZRLabel531: TZRLabel;
        ZRLabel532: TZRLabel;
        ZRLabel533: TZRLabel;
        ZRLabel534: TZRLabel;
        ZRLabel535: TZRLabel;
        ZRLabel536: TZRLabel;
        ZRLabel537: TZRLabel;
        ZRLabel538: TZRLabel;
        ZRBand48: TZRBand;
        ZRBand49: TZRBand;
        ZRBand50: TZRBand;
        ZRLabel539: TZRLabel;
        ZRBand51: TZRBand;
        ZRLabel540: TZRLabel;
        ZRLabel541: TZRLabel;
        ZRLabel542: TZRLabel;
        ZRLabel543: TZRLabel;
        ZRLabel544: TZRLabel;
        ZRLabel545: TZRLabel;
        ZRLabel546: TZRLabel;
        ZRLabel547: TZRLabel;
        ZRLabel548: TZRLabel;
        ZRLabel549: TZRLabel;
        ZRLabel550: TZRLabel;
        ZRLabel551: TZRLabel;
        ZRLabel552: TZRLabel;
        ZRLabel553: TZRLabel;
        ZRLabel554: TZRLabel;
        ZRLabel555: TZRLabel;
        ZRLabel556: TZRLabel;
        ZRLabel557: TZRLabel;
        ZRLabel558: TZRLabel;
        ZRLabel559: TZRLabel;
        ZRLabel560: TZRLabel;
        ZRBand52: TZRBand;
        ZRLabel561: TZRLabel;
        ZRLabel562: TZRLabel;
        ZRLabel563: TZRLabel;
        ZRLabel564: TZRLabel;
        ZRLabel565: TZRLabel;
        ZRLabel566: TZRLabel;
        ZRLabel567: TZRLabel;
        ZRLabel568: TZRLabel;
        ZRLabel569: TZRLabel;
        ZRBand53: TZRBand;
        ZRLabel570: TZRLabel;
        ZRLabel571: TZRLabel;
        ZRLabel572: TZRLabel;
        ZRLabel573: TZRLabel;
        ZRLabel574: TZRLabel;
        ZRLabel575: TZRLabel;
        ZRLabel576: TZRLabel;
        ZRLabel577: TZRLabel;
        ZRLabel578: TZRLabel;
        ZRBand54: TZRBand;
        ZRLabel579: TZRLabel;
        ZRSubDetail9: TZRSubDetail;
        ZRField323: TZRField;
        ZRField324: TZRField;
        ZRField325: TZRField;
        ZRLabel580: TZRLabel;
        ZRLabel581: TZRLabel;
        ZRLabel582: TZRLabel;
        ZRBand55: TZRBand;
        ZRLabel583: TZRLabel;
        ZRLabel584: TZRLabel;
        ZRLabel585: TZRLabel;
        ZRLabel586: TZRLabel;
        ZRLabel587: TZRLabel;
        ZRLabel588: TZRLabel;
        ZRLabel589: TZRLabel;
        ZRLabel590: TZRLabel;
        ZRLabel591: TZRLabel;
        ZRLabel592: TZRLabel;
        ZRTotalLabel10: TZRTotalLabel;
        ZRLabel593: TZRLabel;
        ZRLabel594: TZRLabel;
        ZRLabel595: TZRLabel;
        ZRLabel596: TZRLabel;
        ZRLabel597: TZRLabel;
        ZRLabel598: TZRLabel;
        ZRLabel599: TZRLabel;
        ZRLabel600: TZRLabel;
        ZRLabel601: TZRLabel;
        ZRLabel602: TZRLabel;
        ZRLabel603: TZRLabel;
        ZRLabel604: TZRLabel;
        ZRLabel605: TZRLabel;
        ZRLabel606: TZRLabel;
        ZRSubDetail10: TZRSubDetail;
        ZRField326: TZRField;
        ZRField327: TZRField;
        ZRField328: TZRField;
        ZRField329: TZRField;
        ZRField330: TZRField;
        ZRField331: TZRField;
        ZRLabel607: TZRLabel;
        ZRLabel608: TZRLabel;
        ZRLabel609: TZRLabel;
        ZRLabel610: TZRLabel;
        ZRBand56: TZRBand;
        ZRLabel611: TZRLabel;
        ZRLabel612: TZRLabel;
        ZRLabel613: TZRLabel;
        ZRLabel614: TZRLabel;
        ZRLabel615: TZRLabel;
        ZRBand57: TZRBand;
        ZRLabel616: TZRLabel;
        ZPedidoCompleto: TZReport;
        ZRField332: TZRField;
        ZRField333: TZRField;
        ZRField334: TZRField;
        ZRField335: TZRField;
        ZRField336: TZRField;
        ZRField337: TZRField;
        ZRField338: TZRField;
        ZRAggregator11: TZRAggregator;
        ZRField339: TZRField;
        ZRField340: TZRField;
        ZRField341: TZRField;
        ZRField342: TZRField;
        ZRField343: TZRField;
        ZRField344: TZRField;
        ZRField345: TZRField;
        ZRField346: TZRField;
        ZRField347: TZRField;
        ZRField348: TZRField;
        ZRField349: TZRField;
        ZRField350: TZRField;
        ZRField351: TZRField;
        ZRField352: TZRField;
        ZRField353: TZRField;
        ZRField354: TZRField;
        ZRField355: TZRField;
        ZRField356: TZRField;
        ZRField357: TZRField;
        ZRField358: TZRField;
        ZRField359: TZRField;
        ZRField360: TZRField;
        ZRField361: TZRField;
        ZRField362: TZRField;
        ZRField363: TZRField;
        ZRField364: TZRField;
        ZRField365: TZRField;
        ZRField366: TZRField;
        ZRField367: TZRField;
        ZRField368: TZRField;
        ZRField369: TZRField;
        ZRField370: TZRField;
        ZRField371: TZRField;
        ZRField372: TZRField;
        ZRField373: TZRField;
        ZRField374: TZRField;
        ZRField375: TZRField;
        ZRField376: TZRField;
        ZRField377: TZRField;
        ZRField378: TZRField;
        ZRField379: TZRField;
        ZRField380: TZRField;
        ZRField381: TZRField;
        ZRField382: TZRField;
        ZRField383: TZRField;
        ZRField384: TZRField;
        ZRField385: TZRField;
        ZRField386: TZRField;
        ZRField387: TZRField;
        ZRField388: TZRField;
        ZRField389: TZRField;
        ZRField390: TZRField;
        ZRField391: TZRField;
        ZPedidoCompletoPageHeader: TZRBand;
        ZRLabel445: TZRLabel;
        ZRLabel446: TZRLabel;
        ZRLabel447: TZRLabel;
        ZRLabel448: TZRLabel;
        ZRLabel449: TZRLabel;
        ZRLabel450: TZRLabel;
        ZRLabel451: TZRLabel;
        ZRLabel452: TZRLabel;
        ZRBand36: TZRBand;
        ZPedidoCompletoHeader: TZRBand;
        ZRBand58: TZRBand;
        ZRLabel617: TZRLabel;
        ZRBand59: TZRBand;
        ZRLabel618: TZRLabel;
        ZRLabel619: TZRLabel;
        ZRLabel620: TZRLabel;
        ZRLabel621: TZRLabel;
        ZRLabel622: TZRLabel;
        ZRLabel623: TZRLabel;
        ZRLabel624: TZRLabel;
        ZRLabel625: TZRLabel;
        ZRLabel626: TZRLabel;
        ZRLabel627: TZRLabel;
        ZRLabel628: TZRLabel;
        ZRLabel629: TZRLabel;
        ZRLabel630: TZRLabel;
        ZRLabel631: TZRLabel;
        ZRLabel632: TZRLabel;
        ZRLabel633: TZRLabel;
        ZRLabel634: TZRLabel;
        ZRLabel635: TZRLabel;
        ZRLabel636: TZRLabel;
        ZRLabel637: TZRLabel;
        ZRLabel638: TZRLabel;
        ZRBand60: TZRBand;
        ZRLabel639: TZRLabel;
        ZRLabel640: TZRLabel;
        ZRLabel641: TZRLabel;
        ZRLabel642: TZRLabel;
        ZRLabel643: TZRLabel;
        ZRLabel644: TZRLabel;
        ZRLabel645: TZRLabel;
        ZRLabel646: TZRLabel;
        ZRLabel647: TZRLabel;
        ZRBand61: TZRBand;
        ZRLabel648: TZRLabel;
        ZRLabel649: TZRLabel;
        ZRLabel650: TZRLabel;
        ZRLabel651: TZRLabel;
        ZRLabel652: TZRLabel;
        ZRLabel653: TZRLabel;
        ZRLabel654: TZRLabel;
        ZRLabel655: TZRLabel;
        ZRLabel656: TZRLabel;
        ZRBand62: TZRBand;
        ZRLabel657: TZRLabel;
        ZRSubDetail11: TZRSubDetail;
        ZRField392: TZRField;
        ZRField393: TZRField;
        ZRField394: TZRField;
        ZRLabel658: TZRLabel;
        ZRLabel659: TZRLabel;
        ZRLabel660: TZRLabel;
        ZPedidoCompletoFooter: TZRBand;
        ZRLabel661: TZRLabel;
        ZRLabel662: TZRLabel;
        ZRLabel663: TZRLabel;
        ZRLabel664: TZRLabel;
        ZRLabel665: TZRLabel;
        ZRLabel666: TZRLabel;
        ZRLabel667: TZRLabel;
        ZRLabel668: TZRLabel;
        ZRLabel669: TZRLabel;
        ZRLabel670: TZRLabel;
        ZRTotalLabel11: TZRTotalLabel;
        ZRLabel671: TZRLabel;
        ZRLabel672: TZRLabel;
        ZRLabel673: TZRLabel;
        ZRLabel674: TZRLabel;
        ZRLabel675: TZRLabel;
        ZRLabel676: TZRLabel;
        ZRLabel677: TZRLabel;
        ZRLabel678: TZRLabel;
        ZRLabel679: TZRLabel;
        ZRLabel680: TZRLabel;
        ZRLabel681: TZRLabel;
        ZRLabel682: TZRLabel;
        ZRLabel683: TZRLabel;
        ZRLabel684: TZRLabel;
        ZPedidoCompletoSubDetail: TZRSubDetail;
        ZRField395: TZRField;
        ZRField396: TZRField;
        ZRField397: TZRField;
        ZRField398: TZRField;
        ZRField399: TZRField;
        ZRField400: TZRField;
        ZRLabel685: TZRLabel;
        ZRLabel686: TZRLabel;
        ZRLabel687: TZRLabel;
        ZRLabel688: TZRLabel;
        ZPedidoCompletoSubDetailColumnHeader: TZRBand;
        ZRLabel689: TZRLabel;
        ZRLabel690: TZRLabel;
        ZRLabel691: TZRLabel;
        ZRLabel692: TZRLabel;
        ZRLabel693: TZRLabel;
        ZPedidoCompletoSubDetailColumnFooter: TZRBand;
        ZRLabel694: TZRLabel;
        ZReport2: TZReport;
        ZRField401: TZRField;
        ZRField402: TZRField;
        ZRField403: TZRField;
        ZRField404: TZRField;
        ZRField405: TZRField;
        ZRField406: TZRField;
        ZRField407: TZRField;
        ZRAggregator12: TZRAggregator;
        ZRField408: TZRField;
        ZRField409: TZRField;
        ZRField410: TZRField;
        ZRField411: TZRField;
        ZRField412: TZRField;
        ZRField413: TZRField;
        ZRField414: TZRField;
        ZRField415: TZRField;
        ZRField416: TZRField;
        ZRField417: TZRField;
        ZRField418: TZRField;
        ZRField419: TZRField;
        ZRField420: TZRField;
        ZRField421: TZRField;
        ZRField422: TZRField;
        ZRField423: TZRField;
        ZRField424: TZRField;
        ZRField425: TZRField;
        ZRField426: TZRField;
        ZRField427: TZRField;
        ZRField428: TZRField;
        ZRField429: TZRField;
        ZRField430: TZRField;
        ZRField431: TZRField;
        ZRField432: TZRField;
        ZRField433: TZRField;
        ZRField434: TZRField;
        ZRField435: TZRField;
        ZRField436: TZRField;
        ZRField437: TZRField;
        ZRField438: TZRField;
        ZRField439: TZRField;
        ZRField440: TZRField;
        ZRField441: TZRField;
        ZRField442: TZRField;
        ZRField443: TZRField;
        ZRField444: TZRField;
        ZRField445: TZRField;
        ZRField446: TZRField;
        ZRField447: TZRField;
        ZRField448: TZRField;
        ZRField449: TZRField;
        ZRField450: TZRField;
        ZRField451: TZRField;
        ZRField452: TZRField;
        ZRField453: TZRField;
        ZRField454: TZRField;
        ZRField455: TZRField;
        ZRField456: TZRField;
        ZRField457: TZRField;
        ZRField458: TZRField;
        ZRField459: TZRField;
        ZRField460: TZRField;
        ZRBand63: TZRBand;
        ZRLabel695: TZRLabel;
        ZRLabel696: TZRLabel;
        ZRLabel697: TZRLabel;
        ZRLabel698: TZRLabel;
        ZRLabel699: TZRLabel;
        ZRLabel700: TZRLabel;
        ZRLabel701: TZRLabel;
        ZRLabel702: TZRLabel;
        ZRBand64: TZRBand;
        ZRBand65: TZRBand;
        ZRBand66: TZRBand;
        ZRLabel703: TZRLabel;
        ZRBand67: TZRBand;
        ZRLabel704: TZRLabel;
        ZRLabel705: TZRLabel;
        ZRLabel706: TZRLabel;
        ZRLabel707: TZRLabel;
        ZRLabel708: TZRLabel;
        ZRLabel709: TZRLabel;
        ZRLabel710: TZRLabel;
        ZRLabel711: TZRLabel;
        ZRLabel712: TZRLabel;
        ZRLabel713: TZRLabel;
        ZRLabel714: TZRLabel;
        ZRLabel715: TZRLabel;
        ZRLabel716: TZRLabel;
        ZRLabel717: TZRLabel;
        ZRLabel718: TZRLabel;
        ZRLabel719: TZRLabel;
        ZRLabel720: TZRLabel;
        ZRLabel721: TZRLabel;
        ZRLabel722: TZRLabel;
        ZRLabel723: TZRLabel;
        ZRLabel724: TZRLabel;
        ZRBand68: TZRBand;
        ZRLabel725: TZRLabel;
        ZRLabel726: TZRLabel;
        ZRLabel727: TZRLabel;
        ZRLabel728: TZRLabel;
        ZRLabel729: TZRLabel;
        ZRLabel730: TZRLabel;
        ZRLabel731: TZRLabel;
        ZRLabel732: TZRLabel;
        ZRLabel733: TZRLabel;
        ZRBand69: TZRBand;
        ZRLabel734: TZRLabel;
        ZRLabel735: TZRLabel;
        ZRLabel736: TZRLabel;
        ZRLabel737: TZRLabel;
        ZRLabel738: TZRLabel;
        ZRLabel739: TZRLabel;
        ZRLabel740: TZRLabel;
        ZRLabel741: TZRLabel;
        ZRLabel742: TZRLabel;
        ZRBand70: TZRBand;
        ZRLabel743: TZRLabel;
        ZRSubDetail12: TZRSubDetail;
        ZRField461: TZRField;
        ZRField462: TZRField;
        ZRField463: TZRField;
        ZRLabel744: TZRLabel;
        ZRLabel745: TZRLabel;
        ZRLabel746: TZRLabel;
        ZRBand71: TZRBand;
        ZRLabel747: TZRLabel;
        ZRLabel748: TZRLabel;
        ZRLabel749: TZRLabel;
        ZRLabel750: TZRLabel;
        ZRLabel751: TZRLabel;
        ZRLabel752: TZRLabel;
        ZRLabel753: TZRLabel;
        ZRLabel754: TZRLabel;
        ZRLabel755: TZRLabel;
        ZRLabel756: TZRLabel;
        ZRTotalLabel12: TZRTotalLabel;
        ZRLabel757: TZRLabel;
        ZRLabel758: TZRLabel;
        ZRLabel759: TZRLabel;
        ZRLabel760: TZRLabel;
        ZRLabel761: TZRLabel;
        ZRLabel762: TZRLabel;
        ZRLabel763: TZRLabel;
        ZRLabel764: TZRLabel;
        ZRLabel765: TZRLabel;
        ZRLabel766: TZRLabel;
        ZRLabel767: TZRLabel;
        ZRLabel768: TZRLabel;
        ZRLabel769: TZRLabel;
        ZRLabel770: TZRLabel;
        ZRSubDetail13: TZRSubDetail;
        ZRField464: TZRField;
        ZRField465: TZRField;
        ZRField466: TZRField;
        ZRField467: TZRField;
        ZRField468: TZRField;
        ZRField469: TZRField;
        ZRLabel771: TZRLabel;
        ZRLabel772: TZRLabel;
        ZRLabel773: TZRLabel;
        ZRLabel774: TZRLabel;
        ZRBand72: TZRBand;
        ZRLabel775: TZRLabel;
        ZRLabel776: TZRLabel;
        ZRLabel777: TZRLabel;
        ZRLabel778: TZRLabel;
        ZRLabel779: TZRLabel;
        ZRBand73: TZRBand;
        ZRLabel780: TZRLabel;
        pPedidoCompleto: TppReport;
        ppHeaderBand19: TppHeaderBand;
        ppLabel124: TppLabel;
        pfcInvoice: TppDBText;
        pfcnome: TppDBText;
        pfcendereco: TppDBText;
        pfccpfcnpj: TppDBText;
        pfcfone1: TppDBText;
        pfctit2campo1: TppDBText;
        pfccodigocliente: TppDBText;
        pfcrazao: TppDBText;
        ppDetailBand26: TppDetailBand;
        ppFooterBand17: TppFooterBand;
        ppSummaryBand14: TppSummaryBand;
        ppLabel125: TppLabel;
        pfcbairro: TppDBText;
        pfccidade: TppDBText;
        ppLabel126: TppLabel;
        pfcuf: TppDBText;
        pfccep: TppDBText;
        ppLabel136: TppLabel;
        ppLabel127: TppLabel;
        pfcie: TppDBText;
        ppLabel137: TppLabel;
        pfctit2campo2: TppDBText;
        pfctit2campo3: TppDBText;
        pfctit2campo4: TppDBText;
        pfccampo01: TppDBText;
        pfccampo02: TppDBText;
        pfccampo03: TppDBText;
        pfccampo04: TppDBText;
        ppLabel118: TppLabel;
        ppLabel119: TppLabel;
        ppLabel121: TppLabel;
        ppLabel138: TppLabel;
        ppLabel139: TppLabel;
        ppDBText428: TppDBText;
        ppDBText427: TppDBText;
        ppDBText429: TppDBText;
        ppDBText430: TppDBText;
        ppLabel128: TppLabel;
        ppLabel129: TppLabel;
        ppLabel130: TppLabel;
        ppLabel131: TppLabel;
        ppLine76: TppLine;
        ppLine77: TppLine;
        ppDBText412: TppDBText;
        ppDBText413: TppDBText;
        ppDBText414: TppDBText;
        ppDBText416: TppDBText;
        ppDBText445: TppDBText;
        ppDBText446: TppDBText;
        ppDBText447: TppDBText;
        ppReport1: TppReport;
        ppHeaderBand20: TppHeaderBand;
        ppLabel135: TppLabel;
        ppDBText372: TppDBText;
        ppDBText373: TppDBText;
        ppDBText374: TppDBText;
        ppDBText378: TppDBText;
        ppDBText383: TppDBText;
        ppDBText384: TppDBText;
        ppDBText385: TppDBText;
        ppDBText386: TppDBText;
        ppLabel140: TppLabel;
        ppDBText387: TppDBText;
        ppDBText389: TppDBText;
        ppLabel141: TppLabel;
        ppDBText390: TppDBText;
        ppDBText394: TppDBText;
        ppLabel142: TppLabel;
        ppLabel143: TppLabel;
        ppDBText395: TppDBText;
        ppLabel144: TppLabel;
        ppDBText396: TppDBText;
        ppDBText397: TppDBText;
        ppDBText398: TppDBText;
        ppDBText401: TppDBText;
        ppDBText405: TppDBText;
        ppDBText406: TppDBText;
        ppDBText407: TppDBText;
        ppLabel145: TppLabel;
        ppLabel146: TppLabel;
        ppLabel147: TppLabel;
        ppLabel148: TppLabel;
        ppLabel149: TppLabel;
        ppDBText408: TppDBText;
        ppDBText421: TppDBText;
        ppDBText422: TppDBText;
        ppDBText423: TppDBText;
        ppDBText424: TppDBText;
        ppDBText425: TppDBText;
        ppDBText426: TppDBText;
        ppDBText431: TppDBText;
        ppDBText433: TppDBText;
        ppDBText435: TppDBText;
        ppDBText436: TppDBText;
        ppDBText438: TppDBText;
        ppDetailBand27: TppDetailBand;
        ppRegion7: TppRegion;
        ppDBText442: TppDBText;
        ppDBText443: TppDBText;
        ppDBText444: TppDBText;
        ppDBText449: TppDBText;
        ppDBText450: TppDBText;
        ppDBMemo13: TppDBMemo;
        ppDBText451: TppDBText;
        ppDBText452: TppDBText;
        ppDBText453: TppDBText;
        ppFooterBand18: TppFooterBand;
        ppDBText454: TppDBText;
        ppDBText455: TppDBText;
        ppDBText456: TppDBText;
        ppDBText457: TppDBText;
        ppDBText458: TppDBText;
        ppDBText459: TppDBText;
        ppDBText460: TppDBText;
        ppDBText461: TppDBText;
        ppDBText462: TppDBText;
        ppDBText463: TppDBText;
        ppDBText464: TppDBText;
        ppLabel150: TppLabel;
        ppLabel151: TppLabel;
        ppDBText465: TppDBText;
        ppDBText466: TppDBText;
        ppSummaryBand16: TppSummaryBand;
        ppLabel152: TppLabel;
        ppLabel153: TppLabel;
        ppLabel154: TppLabel;
        ppDBText467: TppDBText;
        ppLine78: TppLine;
        ppLabel155: TppLabel;
        ppLabel156: TppLabel;
        ppLabel157: TppLabel;
        ppLabel158: TppLabel;
        ppLabel159: TppLabel;
        ppLine80: TppLine;
        ppLine81: TppLine;
        ppDBText468: TppDBText;
        ppDBText469: TppDBText;
        ppDBText470: TppDBText;
        pfccodigoitem: TppDBText;
        pfcitemdesc: TppDBMemo;
        pfcidade: TppDBText;
        pfcreferencia: TppDBText;
        pfclocal: TppDBText;
        pfcentidade: TppDBText;
        pfcpreco: TppDBText;
        pfctotal: TppDBText;
        ppLine82: TppLine;
        ppLine83: TppLine;
        ppDBText432: TppDBText;
        pfctit2totalitem: TppDBText;
        ppDBText434: TppDBText;
        pfctit2desconto: TppDBText;
        pfctit2totalfinal: TppDBText;
        ppDBText437: TppDBText;
        pfctit2pgtos: TppDBText;
        ppDBText439: TppDBText;
        ppDBText440: TppDBText;
        ppDBText441: TppDBText;
        pfcvendedor: TppDBText;
        ppLabel120: TppLabel;
        ppLabel122: TppLabel;
        pfcplanopag: TppDBText;
        pfcobs: TppDBText;
        ppDBText448: TppDBText;
        ppSubReport3: TppSubReport;
        ppChildReport6: TppChildReport;
        ppColumnHeaderBand2: TppColumnHeaderBand;
        ppDetailBand8: TppDetailBand;
        ppDBText84: TppDBText;
        ppDBText85: TppDBText;
        ppDBText86: TppDBText;
        ppColumnFooterBand2: TppColumnFooterBand;
        ppSubReport2: TppSubReport;
        ppChildReport18: TppChildReport;
        ppColumnHeaderBand7: TppColumnHeaderBand;
        ppShape78: TppShape;
        ppLabel160: TppLabel;
        ppLabel161: TppLabel;
        ppLine84: TppLine;
        ppLabel162: TppLabel;
        ppLine85: TppLine;
        ppDetailBand30: TppDetailBand;
        ppDBText471: TppDBText;
        ppDBText472: TppDBText;
        ppDBText473: TppDBText;
        ppLine86: TppLine;
        ppLine87: TppLine;
        ppLine88: TppLine;
        ppLine89: TppLine;
        ppLine90: TppLine;
        ppImage9: TppImage;
        ppImage10: TppImage;
        ppColumnFooterBand7: TppColumnFooterBand;
        ppLabel10: TppLabel;
        ppLabel12: TppLabel;
        ppLabel11: TppLabel;
        ppLabel163: TppLabel;
        ppDBText474: TppDBText;
        ppLine24: TppLine;
        pfcfator: TppDBText;
        ppDBText409: TppDBText;
        C_ItensQUANTIDADEVOLUME: TFloatField;
        //dbpInvItensppQUANTIDADEVOLUME: TppField;
        rbPedMeiaFolhaLX300: TppReport;
        ppHeaderBand21: TppHeaderBand;
        ppShape39: TppShape;
        ppShape79: TppShape;
        ppDBText410: TppDBText;
        ppDBText411: TppDBText;
        ppDBText415: TppDBText;
        lbCodigo5: TppDBText;
        lbFuncionario5: TppDBText;
        lbQuantidade5: TppDBText;
        lbSubTotal5: TppDBText;
        lbColuna5_1: TppDBText;
        ppLabel123: TppLabel;
        lbDescricao5: TppDBText;
        lbUnidade5: TppDBText;
        lbPreco5: TppDBText;
        lbReferencia5: TppDBText;
        shpColuna5_4: TppLine;
        shpColuna5_3: TppLine;
        shpColuna5_2: TppLine;
        shpColuna5_1: TppLine;
        shpTax5: TppLine;
        shpSubTotal5: TppLine;
        shpPreco5: TppLine;
        shpQuantidade5: TppLine;
        shpUnidade5: TppLine;
        shpReferencia5: TppLine;
        shpDescricao5: TppLine;
        shpCodigo5: TppLine;
        shpFuncionario5: TppLine;
        lnCodigo5: TppLine;
        lnDescricao5: TppLine;
        lnReferencia5: TppLine;
        lnUnidade5: TppLine;
        lnQuantidade5: TppLine;
        lnPreco5: TppLine;
        lnSubTotal5: TppLine;
        lnTax5: TppLine;
        lnColuna5_1: TppLine;
        lnColuna5_2: TppLine;
        lnColuna5_3: TppLine;
        lnColuna5_4: TppLine;
        lnFuncionario5: TppLine;
        lbColuna5_4: TppDBText;
        lbColuna5_2: TppDBText;
        lbColuna5_3: TppDBText;
        lbEmpresa5: TppLabel;
        lbEndereco5: TppLabel;
        lbTelefone5: TppLabel;
        ppDBText487: TppDBText;
        lbCancelado5: TppLabel;
        ppDBText488: TppDBText;
        ppDBText489: TppDBText;
        ppDBText490: TppDBText;
        ppLabel165: TppLabel;
        ppLabel166: TppLabel;
        ppLabel167: TppLabel;
        ppLabel168: TppLabel;
        ppLabel169: TppLabel;
        ppDBText491: TppDBText;
        ppDBText492: TppDBText;
        ppDBText493: TppDBText;
        ppLabel170: TppLabel;
        ppDBText494: TppDBText;
        ppLabel171: TppLabel;
        ppDetailBand31: TppDetailBand;
        rgItens5: TppRegion;
        myDBCheckBox1: TmyDBCheckBox;
        dbtFuncionario5: TppDBText;
        dbtCodigo5: TppDBText;
        dbtUnidade5: TppDBText;
        dbtQuantidade5: TppDBText;
        dbtPreco5: TppDBText;
        dbtSubTotal5: TppDBText;
        dbtColuna5_1: TppDBText;
        dbtColuna5_2: TppDBText;
        dbtColuna5_3: TppDBText;
        dbtColuna5_4: TppDBText;
        dbtReferencia5: TppDBText;
        dbtDescricao5: TppDBMemo;
        dbtDescComplementar5: TppDBMemo;
        subComposicaoItens5: TppSubReport;
        ppChildReport19: TppChildReport;
        ppHeaderBand22: TppHeaderBand;
        ppDetailBand32: TppDetailBand;
        dbtQtdeComposicao5: TppDBText;
        dbtUnidComposicao5: TppDBText;
        dbtDescComposicao5: TppDBMemo;
        ppFooterBand19: TppFooterBand;
        ppFooterBand20: TppFooterBand;
        ppSummaryBand17: TppSummaryBand;
        ppLine111: TppLine;
        ppRegion10: TppRegion;
        ppShape80: TppShape;
        ppDBText508: TppDBText;
        ppDBMemo17: TppDBMemo;
        ppSubReport5: TppSubReport;
        ppChildReport21: TppChildReport;
        ppColumnHeaderBand9: TppColumnHeaderBand;
        ppShape81: TppShape;
        ppLabel172: TppLabel;
        ppLabel173: TppLabel;
        ppLine112: TppLine;
        ppLabel174: TppLabel;
        ppLine113: TppLine;
        ppDetailBand33: TppDetailBand;
        ppDBText509: TppDBText;
        ppDBText510: TppDBText;
        ppDBText511: TppDBText;
        ppLine114: TppLine;
        ppLine115: TppLine;
        ppLine116: TppLine;
        ppLine117: TppLine;
        ppLine118: TppLine;
        ppImage2: TppImage;
        ppImage3: TppImage;
        ppColumnFooterBand9: TppColumnFooterBand;
        ppDBText512: TppDBText;
        ppDBText513: TppDBText;
        ppLabel175: TppLabel;
        ppLabel176: TppLabel;
        ppDBText514: TppDBText;
        ppDBText515: TppDBText;
        ppDBText516: TppDBText;
        ppLabel177: TppLabel;
        ppDBText517: TppDBText;
        ppLabel178: TppLabel;
        ppLabel179: TppLabel;
        ppDBText518: TppDBText;
        ppDBText519: TppDBText;
        ppLabel132: TppLabel;
        C_ItensPRECOCUSTOLICITACAO: TFloatField;
        C_ItensSubTotalLicitacao: TFloatField;
        C_ItensDifSubTotalLicitacao: TFloatField;
        C_ItensPercLucroLicitacao: TStringField;
        C_InvoiceTotalItensLicitacao: TFloatField;
        C_InvoiceLucro: TFloatField;
        C_InvoicePercentualLucro: TFloatField;
        rbPedidoDuasVias: TppReport;
        ppHeaderBand23: TppHeaderBand;
        ppRegion9: TppRegion;
        ppLine25: TppLine;
        ppLabel133: TppLabel;
        ppLabel134: TppLabel;
        ppLine26: TppLine;
        ppLine28: TppLine;
        ppLine29: TppLine;
        ppLine30: TppLine;
        ppLabel164: TppLabel;
        ppLabel180: TppLabel;
        ppLabel181: TppLabel;
        ppLabel182: TppLabel;
        rgCabPedido1: TppRegion;
        ppDBText475: TppDBText;
        ppDBText476: TppDBText;
        ppDBText477: TppDBText;
        ppDBText478: TppDBText;
        ppDBText479: TppDBText;
        ppDBText480: TppDBText;
        lbCancelado6: TppLabel;
        ppDBText481: TppDBText;
        ppDBText482: TppDBText;
        ppLabel184: TppLabel;
        ppLabel185: TppLabel;
        ppLabel186: TppLabel;
        ppLabel187: TppLabel;
        ppLabel188: TppLabel;
        ppDBText483: TppDBText;
        ppLabel189: TppLabel;
        ppLabel190: TppLabel;
        ppLabel191: TppLabel;
        ppLabel192: TppLabel;
        ppDBText484: TppDBText;
        ppDBText485: TppDBText;
        ppDBText486: TppDBText;
        ppDetailBand34: TppDetailBand;
        ppRegion15: TppRegion;
        ppLine32: TppLine;
        ppLine91: TppLine;
        ppLine92: TppLine;
        ppDBText495: TppDBText;
        ppDBText496: TppDBText;
        ppDBText497: TppDBText;
        ppDBText498: TppDBText;
        ppDBText499: TppDBText;
        ppLine93: TppLine;
        ppLine94: TppLine;
        ppDBMemo14: TppDBMemo;
        ppFooterBand21: TppFooterBand;
        ppSummaryBand18: TppSummaryBand;
        ppSubReport4: TppSubReport;
        ppChildReport22: TppChildReport;
        ppColumnHeaderBand10: TppColumnHeaderBand;
        ppShape92: TppShape;
        ppLabel193: TppLabel;
        ppLabel195: TppLabel;
        ppLine95: TppLine;
        ppLabel196: TppLabel;
        ppLine96: TppLine;
        ppLabel197: TppLabel;
        ppLine97: TppLine;
        ppLine98: TppLine;
        ppDetailBand35: TppDetailBand;
        ppDBText500: TppDBText;
        ppDBText501: TppDBText;
        ppDBText502: TppDBText;
        ppLine99: TppLine;
        ppLine100: TppLine;
        ppLine101: TppLine;
        ppLine102: TppLine;
        ppLine103: TppLine;
        ppImage11: TppImage;
        ppImage12: TppImage;
        ppDBText503: TppDBText;
        ppLine104: TppLine;
        ppColumnFooterBand10: TppColumnFooterBand;
        ppDBText504: TppDBText;
        ppDBText505: TppDBText;
        ppLabel198: TppLabel;
        ppLabel199: TppLabel;
        ppLabel200: TppLabel;
        ppDBText506: TppDBText;
        ppLine105: TppLine;
        ppRegion21: TppRegion;
        ppLine106: TppLine;
        ppDBText507: TppDBText;
        ppLabel201: TppLabel;
        ppDBText520: TppDBText;
        ppLabel202: TppLabel;
        ppDBText521: TppDBText;
        ppDBText522: TppDBText;
        ppLabel204: TppLabel;
        ppDBText523: TppDBText;
        ppLabel205: TppLabel;
        ppDBText524: TppDBText;
        ppLabel210: TppLabel;
        ppDBText525: TppDBText;
        Old_rbPedidoDuasVias: TppReport;
        ppHeaderBand24: TppHeaderBand;
        ppRegion13: TppRegion;
        ppLine107: TppLine;
        ppLabel194: TppLabel;
        ppLabel203: TppLabel;
        ppLine108: TppLine;
        ppLine109: TppLine;
        ppLine110: TppLine;
        ppLine119: TppLine;
        ppLabel206: TppLabel;
        ppLabel207: TppLabel;
        ppLabel208: TppLabel;
        ppLabel209: TppLabel;
        ppShape83: TppShape;
        ppRegion22: TppRegion;
        ppDBText526: TppDBText;
        ppShape88: TppShape;
        ppShape91: TppShape;
        ppDBText527: TppDBText;
        ppDBText528: TppDBText;
        ppDBText529: TppDBText;
        ppDBText530: TppDBText;
        ppDBText531: TppDBText;
        ppLabel211: TppLabel;
        ppDBText532: TppDBText;
        ppDBText533: TppDBText;
        ppLabel212: TppLabel;
        ppLabel213: TppLabel;
        ppLabel214: TppLabel;
        ppLabel215: TppLabel;
        ppLabel216: TppLabel;
        ppDBText534: TppDBText;
        ppLabel217: TppLabel;
        ppLabel218: TppLabel;
        ppLabel219: TppLabel;
        ppLabel220: TppLabel;
        ppDBText535: TppDBText;
        ppDBText536: TppDBText;
        ppDBText537: TppDBText;
        ppDetailBand36: TppDetailBand;
        ppRegion23: TppRegion;
        ppLine120: TppLine;
        ppLine121: TppLine;
        ppLine122: TppLine;
        ppDBText538: TppDBText;
        ppDBText539: TppDBText;
        ppDBText540: TppDBText;
        ppDBText541: TppDBText;
        ppDBText542: TppDBText;
        ppLine123: TppLine;
        ppLine124: TppLine;
        ppDBMemo15: TppDBMemo;
        ppFooterBand22: TppFooterBand;
        ppSummaryBand19: TppSummaryBand;
        ppSubReport6: TppSubReport;
        ppChildReport23: TppChildReport;
        ppColumnHeaderBand11: TppColumnHeaderBand;
        ppShape93: TppShape;
        ppLabel221: TppLabel;
        ppLabel222: TppLabel;
        ppLine125: TppLine;
        ppLabel223: TppLabel;
        ppLine126: TppLine;
        ppLabel224: TppLabel;
        ppLine127: TppLine;
        ppLine128: TppLine;
        ppDetailBand37: TppDetailBand;
        ppDBText543: TppDBText;
        ppDBText544: TppDBText;
        ppDBText545: TppDBText;
        ppLine129: TppLine;
        ppLine130: TppLine;
        ppLine131: TppLine;
        ppLine132: TppLine;
        ppLine133: TppLine;
        ppImage13: TppImage;
        ppImage14: TppImage;
        ppDBText546: TppDBText;
        ppLine134: TppLine;
        ppColumnFooterBand11: TppColumnFooterBand;
        ppDBText547: TppDBText;
        ppDBText548: TppDBText;
        ppLabel225: TppLabel;
        ppLabel226: TppLabel;
        ppLabel227: TppLabel;
        ppDBText549: TppDBText;
        ppLine135: TppLine;
        ppRegion24: TppRegion;
        ppLine136: TppLine;
        ppDBText550: TppDBText;
        ppLabel228: TppLabel;
        ppDBText551: TppDBText;
        ppLabel229: TppLabel;
        ppDBText552: TppDBText;
        ppDBText553: TppDBText;
        ppLabel230: TppLabel;
        ppDBText554: TppDBText;
        ppLabel231: TppLabel;
        ppDBText555: TppDBText;
        ppLabel232: TppLabel;
        ppDBText556: TppDBText;
        ppPageStyle4: TppPageStyle;
        PDFDocument: TPDFDocument4;
        ppDBText557: TppDBText;
        rbMeiaFolha_Backup: TppReport;
        ppHeaderBand25: TppHeaderBand;
        ppShape82: TppShape;
        ppShape85: TppShape;
        ppDBText558: TppDBText;
        ppDBText559: TppDBText;
        ppDBText560: TppDBText;
        ppDBText561: TppDBText;
        ppDBText562: TppDBText;
        ppDBText563: TppDBText;
        ppDBText564: TppDBText;
        ppDBText565: TppDBText;
        ppLabel183: TppLabel;
        ppDBText566: TppDBText;
        ppDBText567: TppDBText;
        ppDBText568: TppDBText;
        ppDBText569: TppDBText;
        ppLine137: TppLine;
        ppLine138: TppLine;
        ppLine139: TppLine;
        ppLine140: TppLine;
        ppLine141: TppLine;
        ppLine142: TppLine;
        ppLine143: TppLine;
        ppLine144: TppLine;
        ppLine145: TppLine;
        ppLine146: TppLine;
        ppLine147: TppLine;
        ppLine148: TppLine;
        ppLine149: TppLine;
        ppLine150: TppLine;
        ppLine151: TppLine;
        ppLine152: TppLine;
        ppLine153: TppLine;
        ppLine154: TppLine;
        ppLine155: TppLine;
        ppLine156: TppLine;
        ppLine157: TppLine;
        ppLine158: TppLine;
        ppLine159: TppLine;
        ppLine160: TppLine;
        ppLine161: TppLine;
        ppLine162: TppLine;
        ppDBText570: TppDBText;
        ppDBText571: TppDBText;
        ppDBText572: TppDBText;
        ppLabel233: TppLabel;
        ppLabel234: TppLabel;
        ppLabel235: TppLabel;
        ppDBText573: TppDBText;
        ppLabel236: TppLabel;
        ppDBText574: TppDBText;
        ppDBText575: TppDBText;
        ppDBText576: TppDBText;
        ppLabel237: TppLabel;
        ppLabel238: TppLabel;
        ppLabel239: TppLabel;
        ppLabel240: TppLabel;
        ppLabel241: TppLabel;
        ppDBText577: TppDBText;
        ppDBText578: TppDBText;
        ppDBText579: TppDBText;
        ppLabel242: TppLabel;
        ppDBText580: TppDBText;
        ppLabel243: TppLabel;
        ppDetailBand38: TppDetailBand;
        ppRegion14: TppRegion;
        myDBCheckBox2: TmyDBCheckBox;
        ppDBText581: TppDBText;
        ppDBText582: TppDBText;
        ppDBText583: TppDBText;
        ppDBText584: TppDBText;
        ppDBText585: TppDBText;
        ppDBText586: TppDBText;
        ppDBText587: TppDBText;
        ppDBText588: TppDBText;
        ppDBText589: TppDBText;
        ppDBText590: TppDBText;
        ppDBText591: TppDBText;
        ppDBMemo16: TppDBMemo;
        ppDBMemo18: TppDBMemo;
        ppSubReport7: TppSubReport;
        ppChildReport24: TppChildReport;
        ppHeaderBand26: TppHeaderBand;
        ppDetailBand39: TppDetailBand;
        ppDBText592: TppDBText;
        ppDBText593: TppDBText;
        ppDBMemo19: TppDBMemo;
        ppFooterBand23: TppFooterBand;
        ppFooterBand24: TppFooterBand;
        ppSummaryBand20: TppSummaryBand;
        ppLine163: TppLine;
        ppRegion25: TppRegion;
        ppShape87: TppShape;
        ppDBText594: TppDBText;
        ppDBMemo20: TppDBMemo;
        ppSubReport8: TppSubReport;
        ppChildReport25: TppChildReport;
        ppColumnHeaderBand12: TppColumnHeaderBand;
        ppShape94: TppShape;
        ppLabel244: TppLabel;
        ppLabel245: TppLabel;
        ppLine164: TppLine;
        ppLabel246: TppLabel;
        ppLine165: TppLine;
        ppDetailBand40: TppDetailBand;
        ppDBText595: TppDBText;
        ppDBText596: TppDBText;
        ppDBText597: TppDBText;
        ppLine166: TppLine;
        ppLine167: TppLine;
        ppLine168: TppLine;
        ppLine169: TppLine;
        ppLine170: TppLine;
        ppImage15: TppImage;
        ppImage16: TppImage;
        ppColumnFooterBand12: TppColumnFooterBand;
        ppDBText598: TppDBText;
        ppDBText599: TppDBText;
        ppLabel247: TppLabel;
        ppLabel248: TppLabel;
        ppDBText600: TppDBText;
        ppDBText601: TppDBText;
        ppDBText602: TppDBText;
        ppLabel249: TppLabel;
        ppDBText603: TppDBText;
        ppLabel250: TppLabel;
        ppLabel251: TppLabel;
        ppDBText604: TppDBText;
        ppTituloCampo01: TppDBText;
        ppCampo01: TppDBText;
        ppTituloCampo02: TppDBText;
        ppTituloCampo03: TppDBText;
        ppTituloCampo04: TppDBText;
        ppCampo02: TppDBText;
        ppCampo03: TppDBText;
        ppCampo04: TppDBText;
        ppShapeCampo04: TppShape;
        ppShapeCampo03: TppShape;
        ppShapeCampo02: TppShape;
        ppShapeCampo01: TppShape;
        ppShape62: TppShape;
        ppLabel20: TppLabel;
        ppLabel21: TppLabel;
        ppLabel22: TppLabel;
        rbInvoiceEconomico_Backup: TppReport;
        ppHeaderBand27: TppHeaderBand;
        ppShape95: TppShape;
        ppRegion26: TppRegion;
        ppDBText605: TppDBText;
        ppShape96: TppShape;
        ppLabel252: TppLabel;
        ppShape97: TppShape;
        ppShape98: TppShape;
        ppDBText606: TppDBText;
        ppDBText607: TppDBText;
        ppDBText608: TppDBText;
        ppDBText609: TppDBText;
        ppDBText610: TppDBText;
        ppDBText611: TppDBText;
        ppDBText612: TppDBText;
        ppRegion27: TppRegion;
        ppShape99: TppShape;
        ppDBText613: TppDBText;
        ppDBText614: TppDBText;
        ppRegion28: TppRegion;
        ppShape100: TppShape;
        ppDBText615: TppDBText;
        ppDBText616: TppDBText;
        ppRegion29: TppRegion;
        ppShape101: TppShape;
        ppDBText617: TppDBText;
        ppDBText618: TppDBText;
        ppRegion30: TppRegion;
        ppShape102: TppShape;
        ppDBText619: TppDBText;
        ppDBText620: TppDBText;
        ppRegion31: TppRegion;
        ppShape103: TppShape;
        ppDBText621: TppDBText;
        ppDBText622: TppDBText;
        ppDBText623: TppDBText;
        ppRegion32: TppRegion;
        ppShape104: TppShape;
        ppDBText624: TppDBText;
        ppDBText625: TppDBText;
        ppDBText626: TppDBText;
        ppLabel253: TppLabel;
        ppRegion33: TppRegion;
        ppShape105: TppShape;
        ppDBText627: TppDBText;
        ppDBText628: TppDBText;
        ppDBText629: TppDBText;
        ppRegion34: TppRegion;
        ppShape106: TppShape;
        ppDBText630: TppDBText;
        ppDBText631: TppDBText;
        ppShape107: TppShape;
        ppDBText632: TppDBText;
        ppDBText633: TppDBText;
        ppShape108: TppShape;
        ppDBText634: TppDBText;
        ppDBText635: TppDBText;
        ppDBText636: TppDBText;
        ppDBText637: TppDBText;
        ppDBText638: TppDBText;
        ppDBText639: TppDBText;
        ppDBText640: TppDBText;
        ppDBText641: TppDBText;
        ppDBText642: TppDBText;
        ppDBText643: TppDBText;
        ppDBText644: TppDBText;
        ppDBText645: TppDBText;
        ppLine171: TppLine;
        ppLine172: TppLine;
        ppLine173: TppLine;
        ppLine174: TppLine;
        ppLine175: TppLine;
        ppLine176: TppLine;
        ppLine177: TppLine;
        ppLine178: TppLine;
        ppLine179: TppLine;
        ppLine180: TppLine;
        ppLine181: TppLine;
        ppLine182: TppLine;
        ppLine183: TppLine;
        ppLine184: TppLine;
        ppLine185: TppLine;
        ppLine186: TppLine;
        ppLine187: TppLine;
        ppLine188: TppLine;
        ppLine189: TppLine;
        ppLine190: TppLine;
        ppLine191: TppLine;
        ppLine192: TppLine;
        ppLine193: TppLine;
        ppLine194: TppLine;
        ppLine195: TppLine;
        ppDBText646: TppDBText;
        ppDBText647: TppDBText;
        ppDBText648: TppDBText;
        ppLabel254: TppLabel;
        ppDBText649: TppDBText;
        ppDetailBand41: TppDetailBand;
        ppRegion35: TppRegion;
        ppDBText650: TppDBText;
        ppDBText651: TppDBText;
        ppDBText652: TppDBText;
        ppDBText653: TppDBText;
        ppDBText654: TppDBText;
        ppDBText655: TppDBText;
        ppDBText656: TppDBText;
        ppDBText657: TppDBText;
        ppDBText658: TppDBText;
        ppDBText659: TppDBText;
        ppDBText660: TppDBText;
        ppDBMemo21: TppDBMemo;
        ppDBMemo22: TppDBMemo;
        ppSubReport9: TppSubReport;
        ppChildReport26: TppChildReport;
        ppHeaderBand28: TppHeaderBand;
        ppDetailBand42: TppDetailBand;
        ppDBText661: TppDBText;
        ppDBText662: TppDBText;
        ppDBMemo23: TppDBMemo;
        ppFooterBand25: TppFooterBand;
        ppFooterBand26: TppFooterBand;
        ppRegion36: TppRegion;
        ppShape109: TppShape;
        ppDBText663: TppDBText;
        ppDBMemo24: TppDBMemo;
        ppLabel255: TppLabel;
        ppLine196: TppLine;
        ppSummaryBand21: TppSummaryBand;
        ppSubReport10: TppSubReport;
        ppChildReport27: TppChildReport;
        ppColumnHeaderBand13: TppColumnHeaderBand;
        ppShape110: TppShape;
        ppLine197: TppLine;
        ppLine198: TppLine;
        ppLabel256: TppLabel;
        ppLabel257: TppLabel;
        ppLabel258: TppLabel;
        ppDetailBand43: TppDetailBand;
        ppDBText664: TppDBText;
        ppDBText665: TppDBText;
        ppDBText666: TppDBText;
        ppLine199: TppLine;
        ppLine200: TppLine;
        ppLine201: TppLine;
        ppLine202: TppLine;
        ppLine203: TppLine;
        ppImage17: TppImage;
        ppImage18: TppImage;
        ppColumnFooterBand13: TppColumnFooterBand;
        ppRegion37: TppRegion;
        ppDBText667: TppDBText;
        ppDBText668: TppDBText;
        ppRegion38: TppRegion;
        ppDBText669: TppDBText;
        ppDBText670: TppDBText;
        ppRegion39: TppRegion;
        ppDBText671: TppDBText;
        ppDBText672: TppDBText;
        ppRegion40: TppRegion;
        ppDBText673: TppDBText;
        ppDBText674: TppDBText;
        ppRegion41: TppRegion;
        ppDBText675: TppDBText;
        ppDBText676: TppDBText;
        ppRegion42: TppRegion;
        ppDBText677: TppDBText;
        ppDBText678: TppDBText;
        ppRegion43: TppRegion;
        ppDBText679: TppDBText;
        ppLabel259: TppLabel;
        ppShape111: TppShape;
        ppDBText680: TppDBText;
        ppDBText681: TppDBText;
        ppLine204: TppLine;
        ppRegion44: TppRegion;
        ppDBCalc1: TppDBCalc;
        ppDBText682: TppDBText;
        ppGroup4: TppGroup;
        ppGroupHeaderBand3: TppGroupHeaderBand;
        ppDBText683: TppDBText;
        ppGroupFooterBand3: TppGroupFooterBand;
        ppDBCalc3: TppDBCalc;
        ppLine205: TppLine;
        C_InvoiceTOTAL: TFloatField;
        C_InvoiceTOTALPGTOS: TFloatField;
        C_InvoiceDESCONTO: TFloatField;
        C_InvoiceFRETE: TFloatField;
        C_InvoiceOUTRASDESPESAS: TFloatField;
        C_InvoiceJUROS: TFloatField;
        C_InvoiceTOTALITENS: TFloatField;
        C_InvoiceBASECALCICMS: TFloatField;
        C_InvoiceVALORICMS: TFloatField;
        C_InvoiceVALORISS: TFloatField;
        C_InvoiceVALORIPI: TFloatField;
        C_InvoiceBASECALCSUBST: TFloatField;
        C_InvoiceVALORICMSSUBST: TFloatField;
        C_InvoiceVALORSEGURO: TFloatField;
        C_InvoicePESOBRUTO: TFloatField;
        C_InvoicePESOLIQUIDO: TFloatField;
        C_InvoiceALIQICMSVENDA: TFloatField;
        C_InvoiceVALORISENTAS: TFloatField;
        C_InvoiceTOTALSERVICOS: TFloatField;
        C_InvoiceVALOROUTRASICMS: TFloatField;
        C_InvoiceVALORISENTASIPI: TFloatField;
        C_InvoiceVALOROUTRASIPI: TFloatField;
        C_InvoiceBASEINCLUSO: TFloatField;
        C_InvoiceTOTALPRODUTOS: TFloatField;
        C_InvoiceALIQPIS_MOVIMENTO: TBCDField;
        C_InvoiceALIQCOFINS_MOVIMENTO: TBCDField;
        C_InvoiceCALCULAPISCOFINS: TStringField;
        ZRCampo02: TZRLabel;
        cTIT2_CAMPO02: TZRField;
        zrLabel_TitCAMPO02: TZRLabel;
        cTIT2_CAMPO01: TZRField;
        zrLabel_TitCAMPO01: TZRLabel;
        zrv40ColunasDATAENTREGA: TZRField;
        zrDataEntrega: TZRLabel;
        zrLabelDataEntrega: TZRLabel;
        zrLabelEndEntrega: TZRLabel;
        zrLabelSeparador: TZRLabel;
        ZRLabel781: TZRLabel;
        ZRLabelEntregue: TZRLabel;
        ZREntregue: TZRLabel;
        ZReport4: TZReport;
        ZRField470: TZRField;
        ZRField471: TZRField;
        ZRField472: TZRField;
        ZRField473: TZRField;
        ZRField474: TZRField;
        ZRField475: TZRField;
        ZRField476: TZRField;
        ZRField477: TZRField;
        ZRField478: TZRField;
        ZRField479: TZRField;
        ZRField480: TZRField;
        ZRField481: TZRField;
        ZRField482: TZRField;
        ZRField483: TZRField;
        ZRField484: TZRField;
        ZRAggregator13: TZRAggregator;
        ZRAggregator14: TZRAggregator;
        ZRField485: TZRField;
        ZRField486: TZRField;
        ZRField487: TZRField;
        ZRField488: TZRField;
        ZRField489: TZRField;
        ZRField490: TZRField;
        ZRField491: TZRField;
        ZRField492: TZRField;
        ZRField493: TZRField;
        ZRField494: TZRField;
        ZRField495: TZRField;
        ZRField496: TZRField;
        ZRField497: TZRField;
        ZRField498: TZRField;
        ZRField499: TZRField;
        ZRField500: TZRField;
        ZRField501: TZRField;
        ZRField502: TZRField;
        ZRField503: TZRField;
        ZRGroup1: TZRGroup;
        ZRBand74: TZRBand;
        ZRLabel783: TZRLabel;
        ZRLabel784: TZRLabel;
        ZRLabel785: TZRLabel;
        ZRLabel786: TZRLabel;
        ZRBand75: TZRBand;
        ZRLabel787: TZRLabel;
        ZRLabel788: TZRLabel;
        ZRSystemLabel8: TZRSystemLabel;
        ZRLabel789: TZRLabel;
        ZRBand76: TZRBand;
        ZRLabel790: TZRLabel;
        ZRLabel791: TZRLabel;
        ZRLabel792: TZRLabel;
        ZRLabel793: TZRLabel;
        ZRLabel794: TZRLabel;
        ZRLabel795: TZRLabel;
        ZRLabel796: TZRLabel;
        ZRBand77: TZRBand;
        ZRLabel797: TZRLabel;
        ZRBand78: TZRBand;
        ZRLabel798: TZRLabel;
        ZRLabel799: TZRLabel;
        ZRLabel800: TZRLabel;
        ZRLabel801: TZRLabel;
        ZRLabel802: TZRLabel;
        ZRLabel803: TZRLabel;
        ZRLabel804: TZRLabel;
        ZRLabel805: TZRLabel;
        ZRLabel806: TZRLabel;
        ZRBand79: TZRBand;
        ZRBand80: TZRBand;
        ZRLabel807: TZRLabel;
        ZRTotalLabel13: TZRTotalLabel;
        ZRLabel808: TZRLabel;
        ZRLabel809: TZRLabel;
        ZRLabel810: TZRLabel;
        ZRLabel811: TZRLabel;
        ZRLabel812: TZRLabel;
        ZRLabel813: TZRLabel;
        ZRLabel814: TZRLabel;
        ZRLabel815: TZRLabel;
        ZRTotalLabel14: TZRTotalLabel;
        ZRLabel816: TZRLabel;
        ZRLabel817: TZRLabel;
        ZRLabel818: TZRLabel;
        ZRLabel819: TZRLabel;
        ZRLabel820: TZRLabel;
        ZRLabel821: TZRLabel;
        ZRLabel822: TZRLabel;
        ZRLabel823: TZRLabel;
        ZRLabel824: TZRLabel;
        ZRTotalLabel15: TZRTotalLabel;
        ZRLabel825: TZRLabel;
        ZRLabel826: TZRLabel;
        ZRLabel827: TZRLabel;
        ZRLabel828: TZRLabel;
        ZRLabel829: TZRLabel;
        ZRLabel830: TZRLabel;
        ZRLabel831: TZRLabel;
        ZRLabel832: TZRLabel;
        ZRLabel833: TZRLabel;
        ZRSubDetail14: TZRSubDetail;
        ZRField504: TZRField;
        ZRField505: TZRField;
        ZRField506: TZRField;
        ZRField507: TZRField;
        ZRField508: TZRField;
        ZRField509: TZRField;
        ZRField510: TZRField;
        ZRField511: TZRField;
        ZRLabel834: TZRLabel;
        ZRLabel835: TZRLabel;
        ZRLabel836: TZRLabel;
        ZRLabel837: TZRLabel;
        ZRLabel838: TZRLabel;
        ZRLabel839: TZRLabel;
        ZRBand81: TZRBand;
        ZRLabel840: TZRLabel;
        ZRLabel841: TZRLabel;
        ZRLabel842: TZRLabel;
        ZRLabel843: TZRLabel;
        ZRLabel844: TZRLabel;
        ZRLabel845: TZRLabel;
        ZRLabel846: TZRLabel;
        ZRBand82: TZRBand;
        ZRLabel847: TZRLabel;
        ZRLabel848: TZRLabel;
        ZRLabel849: TZRLabel;
        ZRLabel850: TZRLabel;
        ZRLabel851: TZRLabel;
        zr40Colunas_Backup: TZReport;
        ZRField512: TZRField;
        ZRField513: TZRField;
        ZRField514: TZRField;
        ZRField515: TZRField;
        ZRField516: TZRField;
        ZRField517: TZRField;
        ZRField518: TZRField;
        ZRField519: TZRField;
        ZRField520: TZRField;
        ZRField521: TZRField;
        ZRField522: TZRField;
        ZRField523: TZRField;
        ZRField524: TZRField;
        ZRField525: TZRField;
        ZRField526: TZRField;
        ZRAggregator15: TZRAggregator;
        ZRAggregator16: TZRAggregator;
        ZRField527: TZRField;
        ZRField528: TZRField;
        ZRField529: TZRField;
        ZRField530: TZRField;
        ZRField531: TZRField;
        ZRField532: TZRField;
        ZRField533: TZRField;
        ZRField534: TZRField;
        ZRField535: TZRField;
        ZRField536: TZRField;
        ZRField537: TZRField;
        ZRField538: TZRField;
        ZRField539: TZRField;
        ZRField540: TZRField;
        ZRField541: TZRField;
        ZRField542: TZRField;
        ZRField543: TZRField;
        ZRField544: TZRField;
        ZRField545: TZRField;
        ZRGroup2: TZRGroup;
        ZRBand83: TZRBand;
        ZRLabel852: TZRLabel;
        ZRLabel853: TZRLabel;
        ZRLabel854: TZRLabel;
        ZRLabel855: TZRLabel;
        ZRBand84: TZRBand;
        ZRLabel856: TZRLabel;
        ZRLabel857: TZRLabel;
        ZRSystemLabel9: TZRSystemLabel;
        ZRLabel858: TZRLabel;
        ZRBand85: TZRBand;
        ZRLabel859: TZRLabel;
        ZRLabel860: TZRLabel;
        ZRLabel861: TZRLabel;
        ZRLabel862: TZRLabel;
        ZRLabel863: TZRLabel;
        ZRLabel864: TZRLabel;
        ZRLabel865: TZRLabel;
        ZRBand86: TZRBand;
        ZRLabel866: TZRLabel;
        ZRBand87: TZRBand;
        ZRLabel867: TZRLabel;
        ZRLabel868: TZRLabel;
        ZRLabel869: TZRLabel;
        ZRLabel870: TZRLabel;
        ZRLabel871: TZRLabel;
        ZRLabel872: TZRLabel;
        ZRLabel873: TZRLabel;
        ZRLabel874: TZRLabel;
        ZRLabel875: TZRLabel;
        ZRBand88: TZRBand;
        ZRBand89: TZRBand;
        ZRLabel876: TZRLabel;
        ZRTotalLabel16: TZRTotalLabel;
        ZRLabel877: TZRLabel;
        ZRLabel878: TZRLabel;
        ZRLabel879: TZRLabel;
        ZRLabel880: TZRLabel;
        ZRLabel881: TZRLabel;
        ZRLabel882: TZRLabel;
        ZRLabel883: TZRLabel;
        ZRLabel884: TZRLabel;
        ZRTotalLabel17: TZRTotalLabel;
        ZRLabel885: TZRLabel;
        ZRLabel886: TZRLabel;
        ZRLabel887: TZRLabel;
        ZRLabel888: TZRLabel;
        ZRLabel889: TZRLabel;
        ZRLabel890: TZRLabel;
        ZRLabel891: TZRLabel;
        ZRLabel892: TZRLabel;
        ZRLabel893: TZRLabel;
        ZRTotalLabel18: TZRTotalLabel;
        ZRLabel894: TZRLabel;
        ZRLabel895: TZRLabel;
        ZRLabel896: TZRLabel;
        ZRLabel897: TZRLabel;
        ZRLabel898: TZRLabel;
        ZRLabel899: TZRLabel;
        ZRLabel900: TZRLabel;
        ZRLabel901: TZRLabel;
        ZRLabel902: TZRLabel;
        ZRSubDetail15: TZRSubDetail;
        ZRField546: TZRField;
        ZRField547: TZRField;
        ZRField548: TZRField;
        ZRField549: TZRField;
        ZRField550: TZRField;
        ZRField551: TZRField;
        ZRField552: TZRField;
        ZRField553: TZRField;
        ZRLabel903: TZRLabel;
        ZRLabel904: TZRLabel;
        ZRLabel905: TZRLabel;
        ZRLabel906: TZRLabel;
        ZRLabel907: TZRLabel;
        ZRLabel908: TZRLabel;
        ZRBand90: TZRBand;
        ZRLabel909: TZRLabel;
        ZRLabel910: TZRLabel;
        ZRLabel911: TZRLabel;
        ZRLabel912: TZRLabel;
        ZRLabel913: TZRLabel;
        ZRLabel914: TZRLabel;
        ZRLabel915: TZRLabel;
        ZRBand91: TZRBand;
        ZRLabel916: TZRLabel;
        ZRLabel917: TZRLabel;
        ZRLabel918: TZRLabel;
        ZRLabel919: TZRLabel;
        ZRLabel920: TZRLabel;
        cTIT2_FABRICANTE: TZRField;
        cFABRICANTE: TZRField;
        zrLabelInvoice: TZRLabel;
        zr40ColunasNovo: TZReport;
        zrsoAgregQtdTotalItens: TZRAggregator;
        zrsoAgregTotalItens: TZRAggregator;
        zr40ColunasNovoGroup: TZRGroup;
        zr40ColunasNovoHeader: TZRBand;
        zrsoNomeEmpresa: TZRLabel;
        zrsoEnderecoEmpresa: TZRLabel;
        zrsoCidadeEmpresa: TZRLabel;
        zrsoFoneEmpresa: TZRLabel;
        zr40ColunasNovoFooter: TZRBand;
        zr40ColunasNovoColumnHeader: TZRBand;
        zr40ColunasNovoDetail: TZRBand;
        zr40ColunasNovoDetailFooter: TZRBand;
        zr40ColunasCenterBike: TZReport;
        ZRField557: TZRField;
        ZRField558: TZRField;
        ZRField559: TZRField;
        ZRField560: TZRField;
        ZRField561: TZRField;
        ZRField562: TZRField;
        ZRField563: TZRField;
        ZRField564: TZRField;
        ZRField565: TZRField;
        ZRField566: TZRField;
        ZRField567: TZRField;
        ZRField568: TZRField;
        ZRField569: TZRField;
        ZRField570: TZRField;
        ZRField571: TZRField;
        ZRAggregator19: TZRAggregator;
        ZRAggregator20: TZRAggregator;
        ZRField572: TZRField;
        ZRField573: TZRField;
        ZRField574: TZRField;
        ZRField575: TZRField;
        ZRField576: TZRField;
        ZRField577: TZRField;
        ZRField578: TZRField;
        ZRField579: TZRField;
        ZRField580: TZRField;
        ZRField581: TZRField;
        ZRField582: TZRField;
        ZRField583: TZRField;
        ZRField584: TZRField;
        ZRField585: TZRField;
        ZRField586: TZRField;
        ZRField587: TZRField;
        ZRField588: TZRField;
        ZRField589: TZRField;
        ZRField590: TZRField;
        ZRField591: TZRField;
        ZRField592: TZRField;
        ZRGroup3: TZRGroup;
        ZRBand92: TZRBand;
        ZRLabel937: TZRLabel;
        ZRLabel938: TZRLabel;
        ZRLabel939: TZRLabel;
        ZRLabel940: TZRLabel;
        ZRBand93: TZRBand;
        ZRLabel941: TZRLabel;
        ZRLabel942: TZRLabel;
        ZRSystemLabel10: TZRSystemLabel;
        ZRLabel943: TZRLabel;
        ZRBand94: TZRBand;
        ZRLabel944: TZRLabel;
        ZRLabel945: TZRLabel;
        ZRLabel946: TZRLabel;
        ZRLabel947: TZRLabel;
        ZRLabel948: TZRLabel;
        ZRLabel949: TZRLabel;
        ZRLabel950: TZRLabel;
        ZRLabel951: TZRLabel;
        ZRBand95: TZRBand;
        ZRLabel952: TZRLabel;
        ZRBand96: TZRBand;
        ZRLabel953: TZRLabel;
        ZRLabel954: TZRLabel;
        ZRLabel955: TZRLabel;
        ZRLabel956: TZRLabel;
        ZRLabel957: TZRLabel;
        ZRLabel958: TZRLabel;
        ZRLabel959: TZRLabel;
        ZRLabel960: TZRLabel;
        ZRLabel961: TZRLabel;
        ZRLabel962: TZRLabel;
        ZRLabel963: TZRLabel;
        ZRLabel964: TZRLabel;
        ZRBand97: TZRBand;
        ZRBand98: TZRBand;
        ZRLabel965: TZRLabel;
        ZRTotalLabel19: TZRTotalLabel;
        ZRLabel966: TZRLabel;
        ZRLabel967: TZRLabel;
        ZRLabel968: TZRLabel;
        ZRLabel969: TZRLabel;
        ZRLabel970: TZRLabel;
        ZRLabel971: TZRLabel;
        ZRLabel972: TZRLabel;
        ZRLabel973: TZRLabel;
        ZRTotalLabel20: TZRTotalLabel;
        ZRLabel974: TZRLabel;
        ZRLabel975: TZRLabel;
        ZRLabel976: TZRLabel;
        ZRLabel977: TZRLabel;
        ZRLabel978: TZRLabel;
        ZRLabel979: TZRLabel;
        ZRLabel980: TZRLabel;
        ZRLabel981: TZRLabel;
        ZRLabel982: TZRLabel;
        ZRTotalLabel21: TZRTotalLabel;
        ZRLabel983: TZRLabel;
        ZRLabel984: TZRLabel;
        ZRLabel985: TZRLabel;
        ZRLabel986: TZRLabel;
        ZRLabel987: TZRLabel;
        ZRLabel988: TZRLabel;
        ZRLabel989: TZRLabel;
        ZRLabel990: TZRLabel;
        ZRLabel991: TZRLabel;
        ZRLabel992: TZRLabel;
        ZRLabel993: TZRLabel;
        ZRSubDetail16: TZRSubDetail;
        ZRField593: TZRField;
        ZRField594: TZRField;
        ZRField595: TZRField;
        ZRField596: TZRField;
        ZRField597: TZRField;
        ZRField598: TZRField;
        ZRField599: TZRField;
        ZRField600: TZRField;
        ZRLabel994: TZRLabel;
        ZRLabel995: TZRLabel;
        ZRLabel996: TZRLabel;
        ZRLabel997: TZRLabel;
        ZRLabel998: TZRLabel;
        ZRLabel999: TZRLabel;
        ZRBand99: TZRBand;
        ZRLabel1000: TZRLabel;
        ZRLabel1001: TZRLabel;
        ZRLabel1002: TZRLabel;
        ZRLabel1003: TZRLabel;
        ZRLabel1004: TZRLabel;
        ZRLabel1005: TZRLabel;
        ZRLabel1006: TZRLabel;
        ZRBand100: TZRBand;
        ZRLabel1007: TZRLabel;
        ZRLabel1008: TZRLabel;
        ZRLabel1009: TZRLabel;
        ZRLabel1010: TZRLabel;
        ZRLabel1011: TZRLabel;
        ZRLabel1012: TZRLabel;
        zrsoDATA: TZRField;
        zrsoTIT2_CODIGO: TZRField;
        zrsoDESCRICAOITEM: TZRField;
        zrsoQUANTIDADE: TZRField;
        zrsoPRECO: TZRField;
        zrsoTOTALITEM: TZRField;
        zrsoTIT2_DESCRICAO: TZRField;
        zrsoTIT2_UNIDADE: TZRField;
        zrsoTIT2_QUANTIDADE: TZRField;
        zrsoTIT2_PRECO: TZRField;
        zrsoTIT2_SUBTOTAL: TZRField;
        zrsoCODIGOITEM: TZRField;
        zrsoUNIDADEITEM: TZRField;
        zrsoQUANTIDADEITEM: TZRField;
        zrsoPRECOITEM: TZRField;
        zrsoSUBTOTALITEM: TZRField;
        ZRLabel1018: TZRLabel;
        ZRLabel1019: TZRLabel;
        ZRLabel1020: TZRLabel;
        ZRLabel1021: TZRLabel;
        ZRLabel1022: TZRLabel;
        ZRLabel1023: TZRLabel;
        ZRLabel154: TZRLabel;
        ZRLabel782: TZRLabel;
        ZRLabel921: TZRLabel;
        ZRLabel922: TZRLabel;
        ZRLabel923: TZRLabel;
        ZRLabel924: TZRLabel;
        ZRLabel1024: TZRLabel;
        ZRLabel1025: TZRLabel;
        zrsoInvoiceHead: TZRLabel;
        ZRLabel925: TZRLabel;
        ZRSystemLabel11: TZRSystemLabel;
        zrsoFABRICANTEITEM: TZRField;
        ZRLabel926: TZRLabel;
        ZRLabel927: TZRLabel;
        ZRLabel1013: TZRLabel;
        ZRTotalLabel22: TZRTotalLabel;
        ZRTotalLabel23: TZRTotalLabel;
        ZRLabel1014: TZRLabel;
        ZRLabel1015: TZRLabel;
        ZRLabel1016: TZRLabel;
        ZRLabel1017: TZRLabel;
        ZRLabel1026: TZRLabel;
        ZRLabel1027: TZRLabel;
        ZRTotalLabel24: TZRTotalLabel;
        zrsoDESCONTO: TZRField;
        zrsoACRESCIMO: TZRField;
        ZRLabel1028: TZRLabel;
        ZRLabel1029: TZRLabel;
        zrsoTOTALITENS: TZRField;
        ZRLabel1030: TZRLabel;
        ZRLabel1031: TZRLabel;
        ZRLabel1032: TZRLabel;
        zrsoOBSERVACAO: TZRField;
        ZRLabel1033: TZRLabel;
        zr40ColunasNovoSubDetail: TZRSubDetail;
        zr40ColunasNovoSubDetailColumnHeader: TZRBand;
        zrsoVENDEDOR: TZRField;
        zrsoPLANOPAGTO: TZRField;
        ZRLabel932: TZRLabel;
        zr40ColunasNovoSubDetailDetailHeader: TZRBand;
        ZRLabel935: TZRLabel;
        zrsoPARCELA: TZRField;
        zrsoVENCIMENTO: TZRField;
        zrsoVALORPARCELA: TZRField;
        zrsoVALORPAGOPARCELA: TZRField;
        zrsoTITULO: TZRField;
        ZRLabel936: TZRLabel;
        ZRLabel1034: TZRLabel;
        ZRLabel1035: TZRLabel;
        ZRLabel1036: TZRLabel;
        ZRLabel1037: TZRLabel;
        ZRLabel933: TZRLabel;
        ZRLabel1038: TZRLabel;
        ZRLabel1039: TZRLabel;
        ZRLabel1040: TZRLabel;
        ZRLabel1041: TZRLabel;
        ZRLabel1042: TZRLabel;
        ZRLabel1043: TZRLabel;
        ZRLabel1044: TZRLabel;
        zrsoInvoiceFooter: TZRLabel;
        zrsoLabelDescricaoOficina: TZRLabel;
        zrsoDescricaoOficina: TZRLabel;
        zrsoLabelEstadoEquipamentoOficina: TZRLabel;
        zrsoEstadoEquipamentoOficina: TZRLabel;
        ZRLabel928: TZRLabel;
        ZRLabel929: TZRLabel;
        zrsoDataHoraEntrada: TZRLabel;
        zrsoDataHoraEntrega: TZRLabel;
        zr40ColunasNovoSubDetailDetailFooter: TZRBand;
        ZRLabel930: TZRLabel;
        rbProposta_Backup: TppReport;
        ppTitleBand7: TppTitleBand;
        ppShape112: TppShape;
        ppShape113: TppShape;
        ppRegion45: TppRegion;
        ppDBText684: TppDBText;
        ppLabel260: TppLabel;
        ppLabel261: TppLabel;
        ppDBText685: TppDBText;
        ppDBText686: TppDBText;
        ppLabel262: TppLabel;
        ppLabel263: TppLabel;
        ppLabel264: TppLabel;
        ppLabel265: TppLabel;
        ppLabel266: TppLabel;
        ppLabel267: TppLabel;
        ppLabel268: TppLabel;
        ppDBText687: TppDBText;
        ppDBText688: TppDBText;
        ppDBText689: TppDBText;
        ppDBText690: TppDBText;
        ppDBText691: TppDBText;
        ppDBText692: TppDBText;
        ppDBText693: TppDBText;
        ppLabel269: TppLabel;
        ppLabel270: TppLabel;
        ppLabel271: TppLabel;
        ppLabel272: TppLabel;
        ppLabel273: TppLabel;
        ppLabel274: TppLabel;
        ppLabel275: TppLabel;
        ppDBText694: TppDBText;
        ppDBText695: TppDBText;
        ppDBText696: TppDBText;
        ppDBText697: TppDBText;
        ppDBText698: TppDBText;
        ppDBText699: TppDBText;
        ppLabel276: TppLabel;
        ppLabel277: TppLabel;
        ppRegion46: TppRegion;
        ppRichText1: TppRichText;
        ppDBText700: TppDBText;
        ppLabel278: TppLabel;
        ppDBText701: TppDBText;
        ppHeaderBand29: TppHeaderBand;
        ppShape114: TppShape;
        ppShape115: TppShape;
        ppDBText702: TppDBText;
        ppShape116: TppShape;
        ppDBText703: TppDBText;
        ppShape117: TppShape;
        ppDBText704: TppDBText;
        ppShape118: TppShape;
        ppDBText705: TppDBText;
        ppShape119: TppShape;
        ppDBText706: TppDBText;
        ppShape120: TppShape;
        ppDBText707: TppDBText;
        ppShape121: TppShape;
        ppDBText708: TppDBText;
        ppLabel279: TppLabel;
        ppLine206: TppLine;
        ppLine207: TppLine;
        ppLine208: TppLine;
        ppLine209: TppLine;
        ppLine210: TppLine;
        ppLine211: TppLine;
        ppLine212: TppLine;
        ppLine213: TppLine;
        ppDetailBand44: TppDetailBand;
        ppRegion47: TppRegion;
        ppLabel280: TppLabel;
        ppLabel281: TppLabel;
        ppLabel282: TppLabel;
        ppLabel283: TppLabel;
        ppLabel284: TppLabel;
        ppLabel285: TppLabel;
        ppLine214: TppLine;
        ppLine215: TppLine;
        ppDBText709: TppDBText;
        ppDBText710: TppDBText;
        ppDBText711: TppDBText;
        ppDBText712: TppDBText;
        ppDBText713: TppDBText;
        ppDBText714: TppDBText;
        ppDBText715: TppDBText;
        ppRegion48: TppRegion;
        ppLabel286: TppLabel;
        ppLabel287: TppLabel;
        ppLabel288: TppLabel;
        ppLabel289: TppLabel;
        ppLine216: TppLine;
        ppLine217: TppLine;
        ppLine218: TppLine;
        ppDBMemo25: TppDBMemo;
        ppDBMemo26: TppDBMemo;
        ppFooterBand27: TppFooterBand;
        ppSummaryBand22: TppSummaryBand;
        ppLabel290: TppLabel;
        ppLine219: TppLine;
        ppRegion49: TppRegion;
        ppRichText2: TppRichText;
        ppRegion50: TppRegion;
        ppDBText716: TppDBText;
        ppDBText717: TppDBText;
        ppLabel291: TppLabel;
        ppLabel292: TppLabel;
        ppDBCalc4: TppDBCalc;
        ppDBCalc5: TppDBCalc;
        ppLine220: TppLine;
        zrlblTecnicoOficina: TZRLabel;
        zrlblConferenteOficina: TZRLabel;
        zrlblMecanicoOficina: TZRLabel;
        zrlblVendedorOficina: TZRLabel;
        ppDBExplicacoes: TppDBMemo;
        ppShapeExplicacoes: TppShape;
        ppLBLExplicacoes: TppLabel;
        lbFabricante_P: TppDBText;
        lnFabricante: TppLine;
        dbtFabricante_P: TppDBText;
    ppLabel293: TppLabel;
    ppDBText718: TppDBText;
    C_InvoiceOBSCLIENTE: TStringField;
    dbpInvoiceppField318: TppField;
    rppedidograde: TppReport;
    ppHeaderBand30: TppHeaderBand;
    ppRegion51: TppRegion;
    ppLine12: TppLine;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    rbCabecalhopp: TppRegion;
    ppDBText719: TppDBText;
    ppDBText720: TppDBText;
    ppDBText721: TppDBText;
    ppDBText722: TppDBText;
    ppLabel300: TppLabel;
    ppDBText723: TppDBText;
    ppDBText724: TppDBText;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppDBText725: TppDBText;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppDBText726: TppDBText;
    ppDBText727: TppDBText;
    ppDBText728: TppDBText;
    ppDBText729: TppDBText;
    ppDBText730: TppDBText;
    ppDBText731: TppDBText;
    ppLabel310: TppLabel;
    ppDBText732: TppDBText;
    ppDetailBand45: TppDetailBand;
    ppRegion53: TppRegion;
    ppLine225: TppLine;
    ppLine226: TppLine;
    ppLine227: TppLine;
    ppDBText733: TppDBText;
    ppDBText734: TppDBText;
    ppDBText735: TppDBText;
    ppDBText736: TppDBText;
    ppDBText737: TppDBText;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppDBMemo27: TppDBMemo;
    ppFooterBand28: TppFooterBand;
    ppSummaryBand23: TppSummaryBand;
    ppSubReport11: TppSubReport;
    ppChildReport28: TppChildReport;
    ppColumnHeaderBand14: TppColumnHeaderBand;
    ppShape122: TppShape;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLine230: TppLine;
    ppLabel313: TppLabel;
    ppLine231: TppLine;
    ppLabel314: TppLabel;
    ppLine232: TppLine;
    ppLine233: TppLine;
    ppDetailBand46: TppDetailBand;
    ppDBText738: TppDBText;
    ppDBText739: TppDBText;
    ppDBText740: TppDBText;
    ppLine234: TppLine;
    ppLine235: TppLine;
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine238: TppLine;
    ppImage19: TppImage;
    ppImage20: TppImage;
    ppDBText741: TppDBText;
    ppLine239: TppLine;
    ppColumnFooterBand14: TppColumnFooterBand;
    ppDBText742: TppDBText;
    ppDBText743: TppDBText;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppDBText744: TppDBText;
    ppLine240: TppLine;
    ppRegion54: TppRegion;
    ppLine241: TppLine;
    ppDBText745: TppDBText;
    ppLabel318: TppLabel;
    ppDBText746: TppDBText;
    ppLabel319: TppLabel;
    ppDBText747: TppDBText;
    ppDBText748: TppDBText;
    ppLabel320: TppLabel;
    ppDBText749: TppDBText;
    ppLabel321: TppLabel;
    ppDBText750: TppDBText;
    ppLabel322: TppLabel;
    ppDBText751: TppDBText;
    C_InvoiceEMAIL: TStringField;
    C_InvoiceCELULAR: TStringField;
    dbpInvoiceppField320: TppField;
    dbpInvoiceppField319: TppField;
    C_InvoiceREFFONE: TStringField;
    C_InvoiceREFNOME: TStringField;
    C_InvoiceREFNOME2: TStringField;
    C_InvoiceREFFONE2: TStringField;
    C_InvoiceREFNOME3: TStringField;
    C_InvoiceREFFONE3: TStringField;
    dbpInvoiceppField321: TppField;
    dbpInvoiceppField322: TppField;
    dbpInvoiceppField323: TppField;
    dbpInvoiceppField324: TppField;
    dbpInvoiceppField325: TppField;
    dbpInvoiceppField326: TppField;
    rppedidogradePrecoTabela: TppReport;
    ppHeaderBand31: TppHeaderBand;
    ppRegion52: TppRegion;
    ppLine242: TppLine;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLine243: TppLine;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppDBText752: TppDBText;
    ppDBText753: TppDBText;
    ppDBText754: TppDBText;
    ppDBText755: TppDBText;
    ppLabel329: TppLabel;
    ppDBText756: TppDBText;
    ppDBText757: TppDBText;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppDBText758: TppDBText;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppDBText759: TppDBText;
    ppDBText760: TppDBText;
    ppDBText761: TppDBText;
    ppDBText762: TppDBText;
    ppDBText763: TppDBText;
    ppDBText764: TppDBText;
    ppLabel339: TppLabel;
    ppDBText765: TppDBText;
    ppDetailBand47: TppDetailBand;
    ppRegion56: TppRegion;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppDBText766: TppDBText;
    ppDBText767: TppDBText;
    ppDBText768: TppDBText;
    ppDBText769: TppDBText;
    ppDBText770: TppDBText;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppDBMemo28: TppDBMemo;
    ppFooterBand29: TppFooterBand;
    ppSummaryBand24: TppSummaryBand;
    ppSubReport12: TppSubReport;
    ppChildReport29: TppChildReport;
    ppColumnHeaderBand15: TppColumnHeaderBand;
    ppShape123: TppShape;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLine252: TppLine;
    ppLabel342: TppLabel;
    ppLine253: TppLine;
    ppLabel343: TppLabel;
    ppLine254: TppLine;
    ppLine255: TppLine;
    ppDetailBand48: TppDetailBand;
    ppDBText771: TppDBText;
    ppDBText772: TppDBText;
    ppDBText773: TppDBText;
    ppLine256: TppLine;
    ppLine257: TppLine;
    ppLine258: TppLine;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppImage21: TppImage;
    ppImage22: TppImage;
    ppDBText774: TppDBText;
    ppLine261: TppLine;
    ppColumnFooterBand15: TppColumnFooterBand;
    ppDBText775: TppDBText;
    ppDBText776: TppDBText;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppDBText777: TppDBText;
    ppLine262: TppLine;
    ppRegion57: TppRegion;
    ppLine263: TppLine;
    ppDBText778: TppDBText;
    ppLabel347: TppLabel;
    ppDBText779: TppDBText;
    ppLabel348: TppLabel;
    ppDBText780: TppDBText;
    ppDBText781: TppDBText;
    ppLabel349: TppLabel;
    ppDBText782: TppDBText;
    ppLabel350: TppLabel;
    ppDBText783: TppDBText;
    ppLabel351: TppLabel;
    ppDBText784: TppDBText;
    ppLine264: TppLine;
    ppLabel352: TppLabel;
    ppLine265: TppLine;
    ppDBText785: TppDBText;
    ppRegion55: TppRegion;
    ZRLabel931: TZRLabel;
    ZRLabel934: TZRLabel;
    ZRLabel1045: TZRLabel;
    ZRLabel1046: TZRLabel;
    ZRLabel1047: TZRLabel;
    ZRLabel1048: TZRLabel;
    ZRLabel1049: TZRLabel;
    zrvField1Endereco: TZRField;
    zrvField1NRO: TZRField;
    zrvField1BAIRRO: TZRField;
    zrvField1CIDADE: TZRField;
    zrvField1UF: TZRField;
    zrvField1CEP: TZRField;
    zrvField1FONE1: TZRField;
        procedure rbRodapeBeforePrint(Sender: TObject);
        procedure ppDBText7GetText(Sender: TObject; var Text: string);
        procedure ppDetailBand2BeforePrint(Sender: TObject);
        procedure ppDBText2GetText(Sender: TObject; var Text: string);
        procedure rgBalancePrint(Sender: TObject);
        procedure imgPagoPrint(Sender: TObject);
        procedure imgAtrasadoPrint(Sender: TObject);
        procedure ppDBText30GetText(Sender: TObject; var Text: string);
        procedure zrInvoiceBeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure dbtTotalItemPrint(Sender: TObject);
        procedure ppDBText14GetText(Sender: TObject; var Text: string);
        procedure ZRLabel86BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure ppDetailBand6BeforePrint(Sender: TObject);
        procedure ppLabel15GetText(Sender: TObject; var Text: string);
        procedure dbtSubTotalProd2GetText(Sender: TObject; var Text: string);
        procedure DetalheItensBeforePrint(Sender: TObject);
        procedure ppDBText141GetText(Sender: TObject; var Text: string);
        procedure DetalheSimplesBeforePrint(Sender: TObject);
        procedure ChildDescComplementarBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure ChildDescComplementar2BeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure ZRVendaRapidaDetailBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure dbtUnidadeGetText(Sender: TObject; var Text: string);
        procedure ppLabel92GetText(Sender: TObject; var Text: string);
        procedure ppLabel91GetText(Sender: TObject; var Text: string);
        procedure ppFooterBand11BeforeGenerate(Sender: TObject);
        procedure ppLabel70GetText(Sender: TObject; var Text: string);
        procedure ppLabel71GetText(Sender: TObject; var Text: string);
        procedure ppLabel67GetText(Sender: TObject; var Text: string);
        procedure ppLabel66GetText(Sender: TObject; var Text: string);
        procedure ppDBText225GetText(Sender: TObject; var Text: string);
        procedure ppDBText275GetText(Sender: TObject; var Text: string);
        procedure ppLabel68GetText(Sender: TObject; var Text: string);
        procedure dbtDescontoGetText(Sender: TObject; var Text: string);
        procedure ppLabel62GetText(Sender: TObject; var Text: string);
        procedure ppLabel61GetText(Sender: TObject; var Text: string);
        procedure ppLabel60GetText(Sender: TObject; var Text: string);
        procedure ppLabel64GetText(Sender: TObject; var Text: string);
        procedure lbExtensoPrecoGetText(Sender: TObject; var Text: string);
        procedure lbExtensoTotalGetText(Sender: TObject; var Text: string);
        procedure ppDBText171GetText(Sender: TObject; var Text: string);
        procedure ppLabel69GetText(Sender: TObject; var Text: string);
        procedure ppLabel7GetText(Sender: TObject; var Text: string);
        procedure ppLabel13GetText(Sender: TObject; var Text: string);
        procedure ppLabel93GetText(Sender: TObject; var Text: string);
        procedure ppLabel14GetText(Sender: TObject; var Text: string);
        procedure ppLabel23GetText(Sender: TObject; var Text: string);
        procedure ppDBText195GetText(Sender: TObject; var Text: string);
        procedure ppDBText204GetText(Sender: TObject; var Text: string);
        procedure ppDBText217GetText(Sender: TObject; var Text: string);
        procedure ppDBText269GetText(Sender: TObject; var Text: string);
        procedure ppDBText266GetText(Sender: TObject; var Text: string);
        procedure ppDBText267GetText(Sender: TObject; var Text: string);
        procedure ppDBText271GetText(Sender: TObject; var Text: string);
        procedure ppDBCalc1GetText(Sender: TObject; var Text: string);
        procedure rbServicosStartPage(Sender: TObject);
        procedure BaseCalculoISSGetText(Sender: TObject; var Text: string);
        procedure ZRLabel39BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure ZRLabel44BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure zrChildDescComplementarBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure rgMensagem3Print(Sender: TObject);
        procedure rbNotaFiscalPreviewFormCreate(Sender: TObject);
        procedure rbServicosPreviewFormCreate(Sender: TObject);
        procedure ppDBText307GetText(Sender: TObject; var Text: string);
        procedure C_ItensCalcFields(DataSet: TDataSet);
        procedure zrLabelBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure ppDetailBand11BeforeGenerate(Sender: TObject);
        procedure ZRLabel126BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure ZRLabel156BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure zrlDescontoBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
        procedure C_InvoiceCalcFields(DataSet: TDataSet);
        procedure ppFooterBand_PPGBeforePrint(Sender: TObject);
        procedure ppPreImpresso_IIStartFirstPass(Sender: TObject);
        procedure ppDBText341GetText(Sender: TObject; var Text: string);
        procedure ppDBText186GetText(Sender: TObject; var Text: string);
        procedure ppmAlertaContratoPrint(Sender: TObject);
        procedure ppDBMemo7GetMemo(Sender: TObject; aLines: TStrings);
        procedure ppRichTextIntroducaoPrint(Sender: TObject);
        procedure ppRichExplicacoesPrint(Sender: TObject);
        procedure ppDBText412GetText(Sender: TObject; var Text: string);
        procedure ppDBText414GetText(Sender: TObject; var Text: string);
        procedure ppDBText447GetText(Sender: TObject; var Text: string);
        procedure pfcInvoiceGetText(Sender: TObject; var Text: string);
        procedure ppDBText445GetText(Sender: TObject; var Text: string);
        procedure ppDBText413GetText(Sender: TObject; var Text: string);
        procedure ppDBText416GetText(Sender: TObject; var Text: string);
        procedure ppDBText446GetText(Sender: TObject; var Text: string);
    private
        { Private declarations }
        NumeroNota, nTotalServ, nTotalProd: Currency;
        sTipoItem: string;
        nIDSaida, nEmpresa, nPDV: integer;
        function SetSaltos: string;
        procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
        function GerarArquivo(Report: TppReport; Arquivo: string = ''; bEmail: boolean = false): string;
        function getTipoArquivo(sArquivo: string): string;
        procedure EnviarEmail(Report: TppReport; Nome: string);
        function getArquivoTemplate(Template: integer): string;
    public
        { Public declarations }
        procedure AtualizaIdioma(Idioma: integer);
        procedure ImprimeMovimento(Saida: integer; Empresa: integer; PDV: integer; slOpcoes: string = ''); // Felipe - Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
        procedure DefineColunas(Sender: TForm; nLeftInicial: double; slColunas: TStringList; bModeloEconomico: boolean = false);
        function getColunasMovimento(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasProdServ(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasEconomico(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasMeiaFolha(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasMeiaFolhaLX300(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasOrcamento(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        function getColunasPropostas(TipoMovimento: integer; sTipoImpressao: string = 'P'): TStringList;
        procedure imprimeRbInvoiceProdServ(sTipoImpressao, sFormName, ImpressaoPara, sArquivo, sImpressaoSemValores: string; posicao: Single; Template: integer);
        // Felipe - Funcao para totalizar os itens de licitacao (Implementacao para empresa Up Distribuidora) e percentual de lucro
        function TotalizarItensLicitacao(idSaida: integer; Empresa: integer; Pdv: integer): Currency;
        function CalcularLucro(idSaida: integer; Empresa: integer; Pdv: integer): Currency;
        function TotalizarPercentualLucro(idSaida: integer; Empresa: integer; Pdv: integer): Currency;

        procedure PrintPDF();

    end;

var
    RptInvoices: TRptInvoices;

implementation
uses DM_Projeto, Funcoes, Form_RichEdit, Util2, TDM_Projeto;

{$R *.DFM}

procedure TRptInvoices.imprimeRbInvoiceProdServ;
var
    i: Integer;
begin
    if Template <> 0 then
        begin
            rbInvoiceProdServ.Template.FileName := sArquivo;
            if FileExists(rbInvoiceProdServ.Template.FileName) then
                rbInvoiceProdServ.Template.LoadFromFile
            else
                rbInvoiceProdServ.Template.FileName := '';
        end
    else
        rbInvoiceProdServ.Template.FileName := '';

    rbrgValidade2.Visible := (C_InvoiceCB_Validade.Value = 'S');
    rgDesconto2.Visible := (C_InvoiceCB_Descontos.Value = 'S');
    rgDespesas2.Visible := (C_InvoiceCB_Despesas.Value = 'S');
    rgFrete2.Visible := (C_InvoiceCB_Frete.Value = 'S');
    rgJuros2.Visible := (C_InvoiceCB_Juros.Value = 'S');
    dbtDescComplementar2.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
    subComposicaoItens2.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');
    regInfoEntrega2.Visible := (C_InvoiceCB_InfoEntrega.Value = 'S');

    posicao := 14;
    if C_InvoiceCB_VENDEDOR.Value = 'S' then
        begin
            rgVendedor2.Left := posicao;
            rgVendedor2.Visible := True;
            posicao := posicao + rgVendedor2.Width;
        end
    else
        rgVendedor2.Visible := False;

    if C_InvoiceCB_PEDIDO.Value = 'S' then
        begin
            rgPedido2.Left := posicao;
            rgPedido2.Visible := True;
            posicao := posicao + rgPedido2.Width;
        end
    else
        begin
            rgPedido2.Visible := False;
        end;

    if C_Invoice.FieldByName('CB_CAMPO01').AsString = 'S' then
        begin
            rgCampo2_1.Left := posicao;
            rgCampo2_1.Visible := True;
            posicao := posicao + rgCampo2_1.Width;
        end
    else
        begin
            rgCampo2_1.Visible := False;
        end;

    if C_Invoice.FieldByName('CB_CAMPO02').AsString = 'S' then
        begin
            rgCampo2_2.Left := posicao;
            rgCampo2_2.Visible := True;
            posicao := posicao + rgCampo2_2.Width;
        end
    else
        begin
            rgCampo2_2.Visible := False;
        end;

    if C_Invoice.FieldByName('CB_CAMPO03').AsString = 'S' then
        begin
            rgCampo2_3.Left := posicao;
            rgCampo2_3.Visible := True;
            posicao := posicao + rgCampo2_3.Width;
        end
    else
        begin
            rgCampo2_3.Visible := False;
        end;

    if C_Invoice.FieldByName('CB_CAMPO04').AsString = 'S' then
        begin
            rgCampo2_4.Left := posicao;
            rgCampo2_4.Visible := True;
            posicao := posicao + rgCampo2_4.Width;
        end
    else
        begin
            rgCampo2_4.Visible := False;
        end;

    lbCancelado2.Visible := C_InvoiceSITUACAO.Value = 'C';

    {Separando os produtos dos serviços}
    if not C_Servicos.Active then
        C_Servicos.CreateDataSet
    else
        C_Servicos.EmptyDataSet;

    with C_Itens do
        begin
            First;
            while not EOF do
                begin
                    if C_ItensTipoItem.Value = 3 then
                        begin
                            with C_Servicos do
                                begin
                                    Append;
                                    FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                    FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                    FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                    FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                    FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                    FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                    Post;
                                    nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                end;
                        end
                    else
                        nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                    Next;
                end;
        end;

    C_Itens.Filtered := false;
    C_Itens.Filter := 'TipoItem <> 3';
    C_Itens.Filtered := true;

    DefineColunas(RptInvoices, 6, getColunasProdServ(C_InvoiceTipoMovimento.Value, sTipoImpressao));

    DMProjeto.ImprimirCabecalho(rgCabecalho, sFormName);

    if not rgCabecalho.Visible then
        begin
            for i := 0 to ComponentCount - 1 do
                begin
                    if Components[i].Tag >= 20 then
                        TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rgCabecalho.Height;
                    if Components[i].Tag in [21, 23] then
                        TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top + Trunc(rgCabecalho.Height / 2);
                    if Components[i].Tag in [22, 24] then
                        TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + Trunc(rgCabecalho.Height / 2);
                    if Components[i].Tag in [24] then
                        TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top + Trunc(rgCabecalho.Height / 2);
                end;
            SubItens.StopPosition := SubItens.StopPosition - Trunc(rgCabecalho.Height / 2);
            SubServicos.Top := SubServicos.Top + Trunc(rgCabecalho.Height / 2);
        end;

    if ImpressaoPara = 'S' then
        begin
            rbInvoiceProdServ.DeviceType := 'Printer';
            rbInvoiceProdServ.Print;
        end
    else if ImpressaoPara = 'C' then
        begin
            if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                begin
                    rbInvoiceProdServ.DeviceType := 'Printer';
                    rbInvoiceProdServ.Print;
                end;
        end
    else if ImpressaoPara = 'N' then
        begin
            rbInvoiceProdServ.DeviceType := 'Screen';
            rbInvoiceProdServ.Print;
        end
    else
        EnviarEmail(rbInvoiceProdServ, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');

    if (sImpressaoSemValores = 'S') then
        begin
            dbtPreco2.visible := false;
            ppDBText70.visible := false;
            ppDBText73.visible := false;
            dbtSubTotal2.visible := false;
            rgDesconto2.visible := false;
            rgFrete2.visible := false;
            rgJuros2.visible := false;
            rgDespesas2.visible := false;
            ppSubReport3.visible := false;
            lbSubTotalProd2.visible := false;
            shpSubTotalProd2.visible := false;
            dbtSubTotalProd2.visible := false;
            lbSubTotalServ2.visible := false;
            shpSubTotalServ2.visible := false;
            ppLabel15.visible := false;
            ppShape58.visible := false;
            ppDBText106.visible := false;
            ppDBText107.visible := false;
            ppLabel15.visible := false;
            lbSubTotalServ2.visible := false;
            shpSubTotalServ2.visible := false;

            if ImpressaoPara = 'S' then
                begin
                    rbInvoiceProdServ.DeviceType := 'Printer';
                    rbInvoiceProdServ.Print;
                end
            else if ImpressaoPara = 'C' then
                begin
                    if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                        begin
                            rbInvoiceProdServ.DeviceType := 'Printer';
                            rbInvoiceProdServ.Print;
                        end;
                end
            else if ImpressaoPara = 'N' then
                begin
                    rbInvoiceProdServ.DeviceType := 'Screen';
                    rbInvoiceProdServ.Print;
                end
            else
                EnviarEmail(rbInvoiceProdServ, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
        end;

end;

procedure TRptInvoices.rbRodapeBeforePrint(Sender: TObject);
begin
    {  if rbInvoice.PageNo < rbInvoice.PageCount then
        rbrgSumario.Visible := False
      else rbrgSumario.Visible := True;}
end;

procedure TRptInvoices.ppDBText7GetText(Sender: TObject;
    var Text: string);
begin
    if C_ItensTIPOITEM.Value = 6 then
        if (C_ItensPRECO.Value <> C_ItensTOTAL.Value) then
            Text := Text + '%';
end;

procedure TRptInvoices.AtualizaIdioma(Idioma: integer);
var campo: string;
begin
    campo := 'TIT' + IntToStr(Idioma) + '_CAMPO1';
    dfTITCampo1.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_CAMPO2';
    dfTITCampo2.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_CAMPO3';
    dfTITCampo3.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_CAMPO4';
    dfTITCampo4.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_DATA';
    dfTITData.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_DATAENTREGA';
    dfTITDataEnt.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_DESCRICAO';
    lbDescricao.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_CODIGO';
    lbCodigo.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_LOCALENTREGA';
    dfTITLocEnt.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_MENSAGEM';
    dfTITMensagem.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_PEDIDO';
    dfTITPedido.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_QUANTIDADE';
    lbQuantidade.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_SUBTOTAL';
    lbSubTotal.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_TERMOS';
    dfTITTermo.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_TIPOENTREGA';
    dfTITTipoEnt.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_TOTALFINAL';
    dfTITTotal.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_PRECO';
    lbPreco.DataField := campo;
    campo := 'TIT' + IntToStr(Idioma) + '_VENDEDOR';
    dfTITVend.DataField := campo;
end;

procedure TRptInvoices.ppDetailBand2BeforePrint(Sender: TObject);
begin
    rbshItens.Brush.Color := clWhite;
    //rbshItens.Visible := False;
    dbtDescricao.Font.Color := clBlack;
    if C_ItensTIPOITEM.Value = 5 then // Juros
        dbtDescricao.Font.Color := clBlue
    else if C_ItensTIPOITEM.Value = 6 then // Descontos
        dbtDescricao.Font.Color := clRed
    else if C_ItensTIPOITEM.Value = 7 then
        begin // SubTotal
            rbshItens.Brush.Color := $00EFEFEF;
            //rbshItens.Visible := True;
        end;
end;

procedure TRptInvoices.ppDBText2GetText(Sender: TObject; var Text: string);
begin
    Text := '#' + Text;
end;

procedure TRptInvoices.rgBalancePrint(Sender: TObject);
begin
    TppRegion(Sender).Visible := C_InvoiceTipoPadrao.Value = 1;
end;

procedure TRptInvoices.imgPagoPrint(Sender: TObject);
begin
    TppPrintable(Sender).Visible := C_ParcelasStatus.Value >= 50;
end;

procedure TRptInvoices.imgAtrasadoPrint(Sender: TObject);
begin
    TppPrintable(Sender).Visible := C_ParcelasStatus.Value = 3;
end;

procedure TRptInvoices.ppDBText30GetText(Sender: TObject;
    var Text: string);
var sStatus: string;
begin
    sStatus := 'Status: ';
    if C_InvoiceCB_Status.Value = 'N' then
        Text := ''
    else if Text = '' then
        Text := ''
    else
        Text := sStatus + C_InvoiceDescStatusSaida.AsString;
end;

procedure TRptInvoices.zrInvoiceBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := UpperCase(C_InvoiceDescricao.AsString) + ' #' + C_InvoiceInvoice.AsString + Chr(32) + C_InvoiceDATA.AsString;
end;

procedure TRptInvoices.dbtTotalItemPrint(Sender: TObject);
begin
    if rbInvoice.PageNo < rbInvoice.PageCount then
        begin
            shpTotalItem.Visible := false;
            dbtTotalItem.Visible := false;
        end
    else
        begin
            shpTotalItem.Visible := true;
            dbtTotalItem.Visible := true;
        end;
end;

function TRptInvoices.SetSaltos: string;
var nSalto, i: integer;
    sSaltos: string;
begin
    nSalto := StrToIntDef(DMProjeto.Parametro('SaltoLinhas'), 3);
    sSaltos := '';
    for i := 1 to nSalto do
        sSaltos := sSaltos + #10#13;
    result := sSaltos;
end;

procedure TRptInvoices.GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
var sLinha, sLadoEsquerdo, sLadoDireito: string;
    i: integer;
begin
    with DMProjeto.q_sql do
        begin
            close;
            sql.text := 'select esquerdo, direito from cabecalho';
            open;
            sLadoEsquerdo := fields[0].asString;
            sLadoDireito := fields[1].asString;
        end;

    FormRichEdit := TFormRichEdit.Create(self);
    DMProjeto.Interpreta(sLadoEsquerdo);
    DMProjeto.Interpreta(sLadoDireito);
    sLadoEsquerdo := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoEsquerdo);
    sLadoDireito := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoDireito);
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

function TRptInvoices.getArquivoTemplate(Template: integer): string;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'select arquivo from templates where template = :template';
            ParamByName('Template').AsInteger := Template;
            Open;
            result := FieldByName('Arquivo').AsString;
            Close;
        end;
end;

procedure TRptInvoices.ImprimeMovimento;
var sTipoImpressao, sDriver, sSaltos: string;
    bInfoEntrega, bCB_SUBTOTAL: boolean;
    i, nSalto: integer;
    Driver: integer;
    sFormName, ImpressaoPara: string;
    sImpressora, sModelo, sImpressaoSemValores: string;
    sTipoCabecalho: string;
    posicao: Single;
    campo, sOrdem: string;
    Controle: TppLabel;
    CB_Documento, sNotaFiscal, sArquivo, sArquivoNF, sTipoNotaFiscal: string;
    Template, TemplateNF: integer;
    nomeImpressora, papelImpressora, impressaoPadrao: string;
begin
    try
        NumeroNota := 0;
        nIDSaida := Saida;
        nEmpresa := Empresa;
        nPDV := PDV;

        with DMProjeto.q_sql do
            begin
                close;
                //sql.text := 'select tipoimpressao from saidas where saida = :saida';
                sql.text := 'select tipoimpressao from saidas where saida = :saida and empresa = :empresa and pdv = :pdv'; // Felipe - Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
                params[0].asInteger := Saida;
                Params[1].AsInteger := Empresa;
                Params[2].AsInteger := PDV;
                open;
                sTipoImpressao := fields[0].AsString;
                // Selecionando a ordem da impressão dos itens que será
                // agora pelo tipo de movimento
                Close;

                // Felipe - Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
                SQL.Text := 'select tp.cb_ordem_imp_itens, tp.CB_SUBTOTAL, tp.cb_impressorapadrao, tp.nomeimpressora, tp.papelimpressora from tiposmovimento tp ' +
                    'inner join saidas s on s.tipomovimento = tp.tipomovimento ' +
                    'where s.saida = :saida and s.empresa = :empresa and s.pdv = :pdv ';
                Params[0].AsInteger := Saida;
                Params[1].AsInteger := Empresa;
                Params[2].AsInteger := PDV;
                Open;

                {Felipe - Comentado trecho abaixo pois a configuração "Imprimir por Ordem Alfabética" no Tipo Movimento não funciona com a ordenação informada abaixo (29/07/2015)}
                //sOrdem := IIF(Fields[0].AsString = 'S', 'i.LOCALIZACAO,i.tipoitem, si.sequencia, si.descricao ', 'i.LOCALIZACAO,si.ordem ');
                sOrdem := IIF(Fields[0].AsString = 'S', 'i.tipoitem asc, si.descricao asc', 'i.tipoitem asc, si.sequencia asc, si.descricao asc');
                bCB_SUBTOTAL := (Fields[1].AsString = 'S');
                impressaoPadrao := Fields[2].AsString;
                nomeImpressora := Fields[3].AsString;
                papelImpressora := Fields[4].AsString;
                Close;
            end;

        C_Itens.Close;
        (* sOrdem := DMProjeto.Parametro('OrdemInvoice');
        if sOrdem = '' then
            sOrdem := 'si.Ordem '; *)
        with Q_Itens do
            begin
                close;
                if sTipoImpressao = 'P' then
                    begin
                        SQL.Text := 'Select si.saida, si.empresa, si.pdv, si.saidaitem, i.codigo, ' +
                            'si.descricao as itemdesc, si.quantidade, si.preco, ' +
                            'si.subtotalitem as total, si.numerolote, ' +
                            'i.tipoitem, si.descricaocomplementar, ' +
                            'si.coluna1, si.coluna2, si.coluna3, si.coluna4, ' +
                            'f.nome as nomefuncionario, si.unidade, i.referencia, ti.descricao as desctipoitem, ' +
                            'si.basecalcicmsprod, si.ipi, si.aliqicms, si.cst, si.reducaocst, si.situacaoecf, ' +
                            'si.cfopnota, si.basecalcsubstprod, si.valoripiprod, si.tva, si.numeroitem, ' +
                            'si.registro, si.valoricmsprod, si.valorisentasprod, si.valoricmssubstprod, ' +
                            'fab.descricao as fabricante, si.desconto, si.pdesconto, si.cfopcst, si.fator, si.almoxarifado, ' +
                            'l.descricao as Local, s.descricao as StatusItem , si.taxavel, SI.ordem, si.sequencia, si.precotabela, si.QUANTIDADEVOLUME, ' +
                            'si.precocustolicitacao ' +
                            'From saidasitens si ' +
                            'Inner Join itens i on si.item=i.item ' +
                            'Inner Join tipositens ti on ti.tipoitem = i.tipoitem ' +
                            'Left Join favorecidos f on si.funcproducao=f.favorecido ' +
                            'Left Join fabricantes fab on i.fabricante=fab.fabricante ' +
                            'LEFT JOIN LOCALIZACOES L ON L.localizacao = I.localizacao ' +
                            'LEFT JOIN statussaidasitens s on s.status = si.status ' +
                            'Where si.saida = :saida and si.empresa = :empresa and si.pdv = :pdv ' +
                            'and si.situacao = ''N'' ' +
                            'Order By ' + sOrdem + ' ';
                        // 'i.tipoitem,fab.descricao,i.descricao,si.ordem '
                    end
                else
                    begin
                        C_CompItens.DataSetField := nil;
                        Q_CompItens.DataSource := nil;
                        C_Itens.Fields.Remove(C_ItensQ_CompItens);
                        C_Itens.Fields.Remove(C_ITensSAIDAITEM);
                        C_Itens.Fields.Remove(C_ItensNOMEFUNCIONARIO);
                        C_Itens.Fields.Remove(C_ItensCFOPCST);
                        C_Itens.Fields.Remove(C_ItensSTATUSITEM);
                        C_Itens.Fields.Remove(C_ItensTAXAVEL);
                        C_Itens.Fields.Remove(C_ItensSEQUENCIA);
                        C_Itens.Fields.Remove(C_ItensPRECOTABELA);
                        subComposicaoItens.DataPipeline := nil;
                        subComposicaoItens2.DataPipeline := nil;
                        subComposicaoItens3.DataPipeline := nil;
                        subComposicaoItens4.DataPipeline := nil;
                        SQL.Text := 'Select i.codigo, si.Saida, si.empresa, si.pdv, si.saidaitem, si.descricao as itemdesc, ' +
                            // Felipe - Comentado trecho abaixo pois retorna espaço em branco, não utilizado (09/10/2014)
//+ QuotedStr(StrRepeat(' ', 50)) + ' as NomeFuncionario, ' +
                        ' i.tipoitem, si.unidade, i.referencia, si.Coluna1, si.Coluna2, si.Coluna3, si.Coluna4, ' +
                            ' si.basecalcicmsprod, si.ipi, si.aliqicms, si.cst, si.reducaocst, si.situacaoecf, ' +
                            ' si.cfopnota, si.basecalcsubstprod, si.valoripiprod, si.tva, si.numeroitem, ' +
                            ' si.registro, si.valoricmsprod, si.valorisentasprod, si.valoricmssubstprod, ' +
                            ' si.preco, ti.descricao as desctipoitem, fab.descricao as fabricante, si.numerolote, ' +
                            ' si.desconto, si.pdesconto, ' +
                            ' si.descricaocomplementar, sum(si.quantidade) as quantidade, sum(si.subtotalitem) as total, ' +
                            ' si.fator, si.almoxarifado, l.descricao as Local, si.ordem , si.QUANTIDADEVOLUME, ' +
                            ' si.precocustolicitacao ' +
                            ' from saidasitens si ' +
                            ' left Join itens i on si.item = i.item ' +
                            ' inner Join tipositens ti on ti.tipoitem = i.tipoitem ' +
                            ' left join favorecidos f on si.funcproducao=f.favorecido ' +
                            ' left Join fabricantes fab on i.fabricante=fab.fabricante ' +
                            ' lEFT JOIN LOCALIZACOES L ON L.localizacao = I.localizacao ' +
                            ' Where si.saida=:saida and si.empresa = :empresa and si.pdv = :pdv ' +
                            ' and si.situacao = ''N'' ' +
                            ' Group by ' +
                            ' i.codigo, si.Saida, si.empresa, si.pdv, si.saidaitem, si.descricao, ' +
                            ' i.tipoitem, si.unidade, i.referencia, si.Coluna1, si.Coluna2, si.Coluna3, si.Coluna4, ' +
                            ' si.basecalcicmsprod, si.ipi, si.aliqicms, si.cst, si.reducaocst, si.situacaoecf, ' +
                            ' si.cfopnota, si.basecalcsubstprod, si.valoripiprod, si.tva, si.numeroitem, ' +
                            ' si.registro, si.valoricmsprod, si.valorisentasprod, si.valoricmssubstprod, ' +
                            ' si.preco, ti.descricao, fab.descricao, si.numerolote, ' +
                            ' si.desconto, si.pdesconto, ' +
                            ' si.descricaocomplementar, ' +
                            ' si.fator, si.almoxarifado, l.descricao, si.ordem , si.QUANTIDADEVOLUME, si.precocustolicitacao ';
                    end;
            end;

        with C_Invoice do
            begin
                // Felipe - Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
                Close;
                FetchParams;
                Params.ParamByName('SAIDA').AsInteger := Saida;
                Params.ParamByName('empresa').AsInteger := Empresa;
                Params.ParamByName('pdv').AsInteger := PDV;
                Open;
            end;

        {Passado por parametro na função}
        if slOpcoes <> '' then
            begin
                CB_Documento := SeparaStrings(SeparaStrings(slOpcoes, ';', 1), '=', 2);
                ImpressaoPara := SeparaStrings(SeparaStrings(slOpcoes, ';', 7), '=', 2);
                sModelo := SeparaStrings(SeparaStrings(slOpcoes, ';', 4), '=', 2);
                sNotaFiscal := SeparaStrings(SeparaStrings(slOpcoes, ';', 2), '=', 2);
                sTipoNotaFiscal := SeparaStrings(SeparaStrings(slOpcoes, ';', 3), '=', 2);
                Template := StrToIntDef(SeparaStrings(SeparaStrings(slOpcoes, ';', 5), '=', 2), 0);
                TemplateNF := StrToIntDef(SeparaStrings(SeparaStrings(slOpcoes, ';', 6), '=', 2), 0);
                sArquivo := DMProjeto.TemplatesPath + getArquivoTemplate(Template);
                sArquivoNF := DMProjeto.TemplatesPath + getArquivoTemplate(TemplateNF);
            end
        else
            begin
                ImpressaoPara := C_InvoiceCB_TOPrinter.AsString;
                sModelo := C_InvoiceTIPOIMPRESSAO_OP.AsString;
                sNotaFiscal := C_InvoiceCB_NOTAFISCAL.Value;
                sImpressaoSemValores := C_InvoiceCB_IMPRESSAOSEMVALORES.AsString;
                CB_Documento := C_InvoiceCB_IMPDOC.Value;
                sTipoNotaFiscal := C_InvoiceTipoNotaFiscal.Value;
                Template := C_InvoiceTemplate.AsInteger;
                TemplateNF := C_InvoiceTemplateNotaFiscal.AsInteger;
                sArquivo := DMProjeto.TemplatesPath + C_InvoiceTemplateArquivo.Value;
                sArquivoNF := DMProjeto.TemplatesPath + C_InvoiceTemplateNFArquivo.Value;
            end;
        sFormName := DMProjeto.getTelaGeradora(C_InvoiceTipoOrigem.AsInteger);

        if (sNotaFiscal = 'S') and ((C_InvoicePossuiICMS.Value = 'S') or (C_InvoicePossuiISS.Value = 'S')) then
            begin
                if C_InvoiceImpresso.Value <> 'S' then
                    with DMProjeto.Q_SQL do
                        begin
                            if C_InvoiceCB_GERARNUM.value = 'S' then
                                begin
                                    //Marcos - Regerando Numero da NF
                                    //                        NumeroNota := DMProjeto.NextID('NOTAFISCAL', 1);
                                    //
                                    //                        close;
                                    //                        sql.text := 'update saidas ' +
                                    //                            'set numero = :numero, ' +
                                    //                            '    impresso = ''S'' ' +
                                    //                            'where saida = :saida';
                                    //                        parambyname('saida').AsInteger := Saida;
                                    //                        parambyname('numero').Asstring := formatfloat('0000000', NumeroNota);
                                    //                        ExecSQL;
                                    //
                                    //                        close;
                                    //                        sql.text := 'update titulosareceber ' +
                                    //                            'set notafiscal = :numero, ' +
                                    //                            '    titulo = :numero || ''-'' || parcela ' +
                                    //                            'where venda = :saida';
                                    //                        parambyname('saida').AsInteger := Saida;
                                    //                        parambyname('numero').Asstring := formatfloat('0000000', NumeroNota);
                                    //                        ExecSQL;
                                    //
                                    //                        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                                end
                            else
                                begin
                                    close;
                                    sql.text := 'update saidas ' +
                                        'set impresso = ''S'' ' +
                                        'where saida = :saida and empresa = :empresa and pdv = :pdv';
                                    ParamByName('saida').AsInteger := Saida;
                                    ParamByName('empresa').AsInteger := Empresa;
                                    ParamByName('pdv').AsInteger := PDV;
                                    ExecSQL;

                                    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                                end;

                            with C_Invoice do
                                begin
                                    Close;
                                    FetchParams;
                                    Params.ParamByName('SAIDA').AsInteger := Saida;
                                    Params.ParamByName('EMPRESA').AsInteger := Empresa;
                                    Params.ParamByName('PDV').AsInteger := PDV;
                                    Open;
                                end;

                        end;
                {Nota Fiscal de Produtos}

                if sTipoNotaFiscal = 'NF' then
                    begin
                        C_ItensPreco.DisplayFormat := DMProjeto.sCasasDecimais;
                        //                C_ItensTOTAL.DisplayFormat := DMProjeto.sCasasDecimais;
                        dfPreco.DisplayFormat := DMProjeto.sCasasDecimais;
                        //                dfTotal.DisplayFormat      := DMProjeto.sCasasDecimais;
                        if TemplateNF <> 0 then
                            begin
                                rbNotaFiscal.Template.FileName := sArquivoNF;
                                if fileexists(rbNotaFiscal.Template.FileName) then
                                    rbNotaFiscal.Template.LoadFromFile
                                else
                                    rbNotaFiscal.Template.FileName := '';
                            end
                        else
                            rbNotaFiscal.Template.FileName := '';

                        C_Parcelas.First;
                        for i := 1 to 6 do
                            begin
                                if (C_Parcelas.EOF) or (C_Parcelas.IsEmpty) then
                                    break;
                                Controle := TppLabel(FindComponent('NumeroParc_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := C_ParcelasTitulo.AsString;

                                Controle := TppLabel(FindComponent('VencimentoParc_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := C_ParcelasVencimento.AsString;

                                Controle := TppLabel(FindComponent('ValorParc_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := formatfloat('#,###,##0.00', C_ParcelasValor.Value);

                                C_Parcelas.Next;
                            end;

                        if FindComponent('dbtDescComplementarNF') <> nil then
                            dbtDescComplementarNF.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');

                        if FindComponent('subComposicaoItensNF') <> nil then
                            subComposicaoItensNF.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                        if FindComponent('subIdentificacoesNF') <> nil then
                            subIdentificacoesNF.Visible := (DMProjeto.Parametro('Identificacao') = 'S') and (C_InvoiceCB_Identificacao.AsString = 'S');

                        if FindComponent('ppFabricanteNF') <> nil then
                            ppFabricanteNF.Visible := C_InvoiceCB_Fabricante.AsString = 'S';

                        sImpressora := DMProjeto.getImpressora('Nota Fiscal');

                        if sImpressora <> '' then
                            rbNotaFiscal.PrinterSetup.PrinterName := sImpressora;

                        //         ppDBText207.Visible := True;
                        if ImpressaoPara = 'S' then
                            begin
                                rbNotaFiscal.DeviceType := 'Printer';
                                rbNotaFiscal.Print;
                            end
                        else if ImpressaoPara = 'C' then
                            begin
                                if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                    begin
                                        rbNotaFiscal.DeviceType := 'Printer';
                                        rbNotaFiscal.Print;
                                    end;
                            end
                        else if ImpressaoPara = 'N' then
                            begin
                                rbNotaFiscal.DeviceType := 'Screen';
                                rbNotaFiscal.Print;
                            end;
                    end
                else
                    begin
                        if TemplateNF <> 0 then
                            begin
                                rbServicos.Template.FileName := sArquivoNF;
                                if fileexists(rbServicos.Template.FileName) then
                                    rbServicos.Template.LoadFromFile
                                else
                                    rbServicos.Template.FileName := '';
                            end
                        else
                            rbServicos.Template.FileName := '';

                        C_Parcelas.First;
                        for i := 1 to 6 do
                            begin
                                if (C_Parcelas.EOF) or (C_Parcelas.IsEmpty) then
                                    break;

                                Controle := TppLabel(FindComponent('NumeroParcS_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := C_ParcelasTitulo.AsString;

                                Controle := TppLabel(FindComponent('VencimentoParcS_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := C_ParcelasVencimento.AsString;

                                Controle := TppLabel(FindComponent('ValorParcS_' + IntToStr(i)));
                                if Controle <> nil then
                                    TppLabel(Controle).Caption := formatfloat('#,###,##0.00', C_ParcelasValor.Value);

                                C_Parcelas.Next;
                            end;

                        C_Servicos.CreateDataSet;
                        with C_Itens do
                            begin
                                First;
                                while not EOF do
                                    begin
                                        if C_ItensTipoItem.Value = 3 then
                                            begin
                                                with C_Servicos do
                                                    begin
                                                        Append;
                                                        FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                        FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                        FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                        FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                        FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                        FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                        Post;
                                                        nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                                    end;
                                            end
                                        else
                                            nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                        Next;
                                    end;
                            end;

                        C_Itens.Filtered := false;
                        C_Itens.Filter := 'TipoItem <> 3';
                        C_Itens.Filtered := true;

                        Servicos.OverFlowOffSet := Servicos.Top;

                        dbtDescComplementarNFS.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
                        subComposicaoItensNFS.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                        if FindComponent('subIdentificacoesNFS') <> nil then
                            subIdentificacoesNFS.Visible := (DMProjeto.Parametro('Identificacao') = 'S') and (C_InvoiceCB_Identificacao.AsString = 'S');

                        if FindComponent('ppFabricanteNFS') <> nil then
                            ppFabricanteNFS.Visible := C_InvoiceCB_Fabricante.AsString = 'S';

                        sImpressora := DMProjeto.getImpressora('Nota Fiscal');

                        if sImpressora <> '' then
                            rbServicos.PrinterSetup.PrinterName := sImpressora;

                        if ImpressaoPara = 'S' then
                            begin
                                rbServicos.DeviceType := 'Printer';
                                rbServicos.Print;
                            end
                        else if ImpressaoPara = 'C' then
                            begin
                                if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                    begin
                                        rbServicos.DeviceType := 'Printer';
                                        rbServicos.Print;
                                    end;
                            end
                        else if ImpressaoPara = 'N' then
                            begin
                                rbServicos.DeviceType := 'Screen';
                                rbServicos.Print;
                            end;
                    end;
            end;

        nTotalServ := 0;
        nTotalProd := 0;
        sTipoItem := '';

        {Venda Rápida}
        if (CB_Documento = 'S') and (Copy(sModelo, 1, 2) = 'PC') then
            begin

                ZPedidoCompleto.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                ZPedidoCompleto.ShowProgress := false;
                ZPedidoCompleto.Options.Copies := DMProjeto.getCopias(sFormName);
                ZPedidoCompletoHeader.Height := StrToIntDef(DMProjeto.Parametro('QtdLinhasCabecalho'), 3);
                ZPedidoCompleto.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;
                ZPedidoCompleto.Options.Escapes.ReportFinish := SetSaltos;
                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);

                if sTipoCabecalho = 'PT' then //Papel Timbrado
                    begin
                        pclbNomeEmpresa.Enabled := false;
                        pclbEndereco.Enabled := false;
                        pclbCidade.Enabled := false;
                        pclbLinha1.Enabled := false;
                        pclbLinha2.Enabled := false;
                        pclbLinha3.Enabled := false;
                    end
                else if sTipoCabecalho = 'SC' then //Sem cabeçalho
                    begin
                        ZPedidoCompletoHeader.Visible := false;
                        zrpcBanda2.Visible := false;
                    end
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        ZPedidoCompletoHeader.Visible := true;
                        zrpcBanda2.Visible := true;
                        pclbNomeEmpresa.Enabled := false;
                        pclbEndereco.Enabled := false;
                        pclbCidade.Enabled := false;
                        pclbLinha1.Enabled := false;
                        pclbLinha2.Enabled := false;
                        pclbLinha3.Enabled := false;
                    end
                else
                    GeraCabecalho(pclbNomeEmpresa, pclbEndereco, pclbCidade, pclbFone, pclbLinha1, pclbLinha2, pclbLinha3, pclbLinha4);

                pclbRepresent.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                pcdbRepresent.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                pclbTerms.Visible := (C_InvoiceCB_Termos.Value = 'S');
                pcdbTerms.Visible := (C_InvoiceCB_Termos.Value = 'S');
                pcdbMensagem.Visible := (C_InvoiceCB_Mensagem.Value = 'S');
                pclbTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                pcdbTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                pcptTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                pclbDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                pcdbDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                pcptDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                pclbTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                pcdbTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                pcptTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                pclbPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                pcdbPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                pcptPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                pclbBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                pcdbBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                pcptBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                pcDescCompl.Enabled := (C_InvoiceCB_DESCRICAOCOMPLEMENTAR.Value = 'S');
                pcSubItens.Visible := (C_InvoiceCB_COMPOSICAOITENS.Value = 'S');

                sImpressora := DMProjeto.getImpressora(sFormName);

                //Parametro para colocar espacamento vertical entre os itens da venda
                if (DMProjeto.Parametro('PedCompletEspacItem') = 'S') then
                    ZRBand16.Height := 2
                else
                    ZRBand16.Height := 1;

                if ImpressaoPara = 'S' then
                    ZPedidoCompleto.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            ZPedidoCompleto.Print;
                    end
                else if ImpressaoPara = 'N' then
                    ZPedidoCompleto.Preview
                else
                    begin
                        ZPedidoCompleto.Options.Destination := zrdFile;
                        ZPedidoCompleto.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        ZPedidoCompleto.Print;
                        EnviarEmail(nil, ZPedidoCompleto.FileName);
                    end;
            end

                /////////////////////*/*/*/*/*/*/////////////////////////////////////
        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 1) = 'R') then
            begin
                if (sModelo = 'RC') then
                    begin {Condensado}
                        ZRVendaRapida.Options.Font.Condensed := true;
                        ZRVendaRapida.Options.Font.Condensed17 := true;
                        ZRVendaRapida.Options.Font.Condensed20 := true;
                    end
                else
                    begin
                        ZRVendaRapida.Options.Font.Condensed := false;
                        ZRVendaRapida.Options.Font.Condensed17 := false;
                        ZRVendaRapida.Options.Font.Condensed20 := false;
                    end;

                ZRVendaRapida.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                ZRVendaRapida.Options.PaperType := TZrPaperType(StrToIntDef(DMProjeto.Parametro('TipoPapelModoTexto'), 2));
                ZRVendaRapida.ShowProgress := false;
                ZRVendaRapida.Options.Copies := DMProjeto.getCopias(sFormName);
                ZRVendaRapidaHeader.Height := StrToIntDef(DMProjeto.Parametro('QtdLinhasCabecalho'), 3);
                ZRVendaRapida.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;
                zrVendaRapida.Options.Escapes.ReportFinish := SetSaltos;

                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);

                if sTipoCabecalho = 'PT' then //Papel Timbrado
                    begin
                        zrNomeEmpresa2.Enabled := false;
                        zrEndereco2.Enabled := false;
                        zrCidade2.Enabled := false;
                        zrLinha4.Enabled := false;
                        zrLinha5.Enabled := false;
                        zrLinha6.Enabled := false;
                        lbData2.Enabled := true;
                        lbHora2.Enabled := true;
                    end
                else if sTipoCabecalho = 'SC' then //Sem cabeçalho
                    begin
                        ZRVendaRapidaHeader.Visible := false;
                        ZRVendaRapidaChild.Visible := false;
                        lbData2.Enabled := true;
                        lbHora2.Enabled := true;
                    end
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        ZRVendaRapidaHeader.Visible := true;
                        ZRVendaRapidaChild.Visible := true;
                        zrNomeEmpresa2.Visible := false;
                        zrEndereco2.Visible := false;
                        zrCidade2.Visible := false;
                        zrLinha4.Visible := false;
                        zrLinha5.Visible := false;
                        zrLinha6.Visible := false;
                    end
                else
                    GeraCabecalho(zrNomeEmpresa2, zrEndereco2, zrCidade2, zrFone2, zrLinha5, zrLinha6, zrLinha7, zrLinha8);

                lbRepresent.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                dbRepresent.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                lbTerms.Visible := (C_InvoiceCB_Termos.Value = 'S');
                dbTerms.Visible := (C_InvoiceCB_Termos.Value = 'S');
                dbMensagem.Visible := (C_InvoiceCB_Mensagem.Value = 'S');
                lbTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                dbTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                ptTotalItem.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                lbDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                dbDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                ptDescontos.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                lbJuros.Visible := (C_InvoiceCB_Juros.Value = 'S');
                dbJuros.Visible := (C_InvoiceCB_Juros.Value = 'S');
                ptJuros.Visible := (C_InvoiceCB_Juros.Value = 'S');
                lbTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                dbTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                ptTotalFinal.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                lbPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                dbPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                ptPaid.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                lbBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                dbBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                ptBalance.Visible := (C_InvoiceCB_Balance.Value = 'S');
                ChildDescComplementar.Enabled := (C_InvoiceCB_DESCRICAOCOMPLEMENTAR.Value = 'S');
                subCompItens.Visible := (C_InvoiceCB_COMPOSICAOITENS.Value = 'S');

                {Definição Produto e Serviço}
                ZRVendaRapidaDetail.Visible := sModelo = 'RS';
                if Copy(sModelo, 1, 2) = 'RS' then
                    begin
                        C_Itens.AddIndex('iTipoItem', 'TipoItem', []);
                        C_Itens.IndexName := 'iTipoItem';
                    end;

                sImpressora := DMProjeto.getImpressora(sFormName);
                if sImpressora <> '' then
                    Printer.PrinterIndex := Printer.Printers.IndexOf(sImpressora);

                if ImpressaoPara = 'S' then
                    ZRVendaRapida.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            ZRVendaRapida.Print;
                    end
                else if ImpressaoPara = 'N' then
                    ZRVendaRapida.Preview
                else
                    begin
                        ZRVendaRapida.Options.Destination := zrdFile;
                        ZRVendaRapida.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        ZRVendaRapida.Print;
                        EnviarEmail(nil, ZRVendaRapida.FileName);
                    end;
                {Invoice Rápida Modelo Texto}
            end
        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 1) = 'T') then
            begin
                if (sModelo = 'TC') then
                    begin {Condensado}
                        zReportInvoice.Options.Font.Condensed := true;
                        zReportInvoice.Options.Font.Condensed17 := true;
                        zReportInvoice.Options.Font.Condensed20 := true;
                    end
                else
                    begin
                        zReportInvoice.Options.Font.Condensed := false;
                        zReportInvoice.Options.Font.Condensed17 := false;
                        zReportInvoice.Options.Font.Condensed20 := false;
                    end;

                {Driver Impressora Matricial}
                //Driver := StrToIntDef(DMProjeto.Parametro('DriverImpressoraMatricial'),2);
                //zReportInvoice.Options.Escapes.Model := TZrEscapeModel(Driver);
                zReportInvoice.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                zReportInvoice.Options.PaperType := TZrPaperType(StrToIntDef(DMProjeto.Parametro('TipoPapelModoTexto'), 2));
                zReportInvoice.ShowProgress := false;
                zReportInvoice.Options.Copies := DMProjeto.getCopias(sFormName);
                zReportInvoiceHeader.Height := StrToIntDef(DMProjeto.Parametro('QtdLinhasCabecalho'), 3);
                zReportInvoice.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;

                zReportInvoice.Options.Escapes.ReportFinish := SetSaltos;

                lbRepresent2.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                dbRepresent2.Visible := (C_InvoiceCB_Vendedor.Value = 'S');
                lbTerms2.Visible := (C_InvoiceCB_Termos.Value = 'S');
                dbTerms2.Visible := (C_InvoiceCB_Termos.Value = 'S');
                dbMensagem2.Visible := (C_InvoiceCB_Mensagem.Value = 'S');
                lbTotalItem2.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                dbTotalItem2.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                ptTotalItem2.Visible := (C_InvoiceCB_TOTALITENS.Value = 'S');
                lbDescontos2.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                dbDescontos2.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                ptDescontos2.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                lbTotalFinal2.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                dbTotalFinal2.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                ptTotalFinal2.Visible := (C_InvoiceCB_TotalFinal.Value = 'S');
                lbPaid2.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                dbPaid2.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                ptPaid2.Visible := (C_InvoiceCB_Pgtos.Value = 'S');
                lbBalance2.Visible := (C_InvoiceCB_Balance.Value = 'S');
                dbBalance2.Visible := (C_InvoiceCB_Balance.Value = 'S');
                ptBalance2.Visible := (C_InvoiceCB_Balance.Value = 'S');
                {Composição de Itens}
                subCompItens2.Visible := (C_InvoiceCB_COMPOSICAOITENS.Value = 'S');
                if Copy(sModelo, 1, 2) = 'TS' then
                    begin
                        C_Itens.AddIndex('iTipoItem', 'TipoItem', []);
                        C_Itens.IndexName := 'iTipoItem';
                    end;

                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);
                if sTipoCabecalho = 'PT' then
                    begin
                        zrNomeEmpresa.Enabled := false;
                        zrEndereco.Enabled := false;
                        zrCidade.Enabled := false;
                        zrLinha1.Enabled := false;
                        zrLinha2.Enabled := false;
                        zrLinha3.Enabled := false;
                    end
                else if sTipoCabecalho = 'SC' then
                    begin
                        zReportInvoiceHeader.Visible := false;
                        zReportInvoiceChild.Visible := false;
                        //zReportInvoiceChild0.Top :=
                    end
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        ZReportInvoiceHeader.Visible := true;
                        ZReportInvoiceChild.Visible := true;
                        zrNomeEmpresa.Visible := false;
                        zrEndereco.Visible := false;
                        zrCidade.Visible := false;
                        zrLinha1.Visible := false;
                        zrLinha2.Visible := false;
                        zrLinha3.Visible := false;
                    end
                else
                    GeraCabecalho(zrNomeEmpresa, zrEndereco, zrCidade, zrFone1, zrLinha1, zrLinha2, zrLinha3, zrLinha4);

                sImpressora := DMProjeto.getImpressora(sFormName);
                if sImpressora <> '' then
                    Printer.PrinterIndex := Printer.Printers.IndexOf(sImpressora);

                //imprimindo
                if ImpressaoPara = 'S' then
                    zReportInvoice.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            zReportInvoice.Print;
                    end
                else if ImpressaoPara = 'N' then
                    zReportInvoice.Preview
                else
                    begin
                        zReportInvoice.Options.Destination := zrdFile;
                        zReportInvoice.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zReportInvoice.Print;
                        EnviarEmail(nil, zReportInvoice.FileName);
                    end;
                //
                if (sImpressaoSemValores = 'S') then
                    begin
                        ZRLabel13.visible := false;
                        ZRLabel14.visible := false;
                        dbTotalItem2.visible := false;
                        dbDescontos2.visible := false;
                        dbTotalFinal2.visible := false;
                        dbPaid2.visible := false;
                        dbBalance2.visible := false;
                        lbTotalItem2.visible := false;
                        lbDescontos2.visible := false;
                        lbTotalFinal2.visible := false;
                        lbPaid2.visible := false;
                        lbBalance2.visible := false;
                        ptTotalItem2.visible := false;
                        ptDescontos2.visible := false;
                        ptTotalFinal2.visible := false;
                        ptPaid2.visible := false;
                        ptBalance2.visible := false;
                        ZRLabel6.visible := false;
                        ZRLabel7.visible := false;

                        if ImpressaoPara = 'S' then
                            zReportInvoice.Print
                        else if ImpressaoPara = 'C' then
                            begin
                                if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                    zReportInvoice.Print;
                            end
                        else if ImpressaoPara = 'N' then
                            zReportInvoice.Preview
                        else
                            begin
                                zReportInvoice.Options.Destination := zrdFile;
                                zReportInvoice.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                                zReportInvoice.Print;
                                EnviarEmail(nil, zReportInvoice.FileName);
                            end;
                    end;

                {Modelo Texto - 40 Colunas}
            end

        else if (CB_Documento = 'S') and (sModelo = '40O') then
            begin
                zrsoNomeEmpresa.Caption := DMProjeto.sNomeEmpresa;
                zrsoEnderecoEmpresa.Caption := DMProjeto.sEnderecoEmpresa;
                zrsoCidadeEmpresa.Caption := DMProjeto.sCidadeEmpresa + ' - ' + DMProjeto.sUFEmpresa;
                zrsoFoneEmpresa.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
                zrsoInvoiceHead.Caption := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;
                zrsoInvoiceFooter.Caption := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;

                with DMProjeto.Q_SQL3 do
                    begin
                        Close;
                        SQL.Text := 'select count(o.id), o.descricao, o.estadoequipamento, o.dataentrada, o.horaentrada, o.dataentrega, o.horaentrega ' +
                            'from saidas s left join oficina o on s.saida = o.idsaida ' +
                            'where s.saida = :idsaida and s.pdv = :pdv ' +
                            'group by o.descricao, o.estadoequipamento, o.dataentrada, o.horaentrada, o.dataentrega, o.horaentrega ';
                        ParamByName('idsaida').AsInteger := Saida;
                        ParamByName('pdv').AsInteger := PDV;
                        Open;

                        if (FieldByName('count').AsInteger > 0) then
                            begin
                                zrsoDescricaoOficina.Caption := FieldByName('descricao').AsString;
                                zrsoEstadoEquipamentoOficina.Caption := FieldByName('estadoequipamento').AsString;
                                zrsoDataHoraEntrada.Caption := FieldByName('dataentrada').AsString + ' - ' + FieldByName('horaentrada').AsString;
                                zrsoDataHoraEntrega.Caption := FieldByName('dataentrega').AsString + ' - ' + FieldByName('horaentrega').AsString;
                            end
                        else
                            zr40ColunasNovoSubDetailColumnHeader.Visible := False;
                    end;

                { Utilizar esse comando para ocultar os campos de Oficina }

                if ImpressaoPara = 'S' then
                    zr40ColunasNovo.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            zr40ColunasNovo.Print;
                    end
                else if ImpressaoPara = 'N' then
                    zr40ColunasNovo.Preview

                    { Modelo '40O' Texto - 40 Colunas para Serviço/Oficina }
            end

        else if (CB_Documento = 'S') and (sModelo = '40') then
            begin
                {Driver Impressora Matricial}
                //Driver := StrToIntDef(DMProjeto.Parametro('DriverImpressoraMatricial'),2);
                //zr40Colunas.Options.Escapes.Model := TZrEscapeModel(Driver);
                C_ItensPreco.DisplayFormat := DMProjeto.sCasasDecimais;
                zrpcPRECO.Format.DisplayMask := DMProjeto.sCasasDecimais;
                zr40Colunas.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                zr40Colunas.Options.PaperType := TZrPaperType(StrToIntDef(DMProjeto.Parametro('TipoPapelModoTexto'), 2));
                zr40Colunas.Options.Font.Condensed := (DMProjeto.Parametro('Imp40ColCondensed') = 'S');
                zr40Colunas.Options.Font.Condensed17 := (DMProjeto.Parametro('Imp40ColCondensed17') = 'S');
                zr40Colunas.Options.Font.Condensed20 := (DMProjeto.Parametro('Imp40ColCondensed20') = 'S');
                zr40Colunas.Options.Font.Expand := (DMProjeto.Parametro('Imp40ColExpand') = 'S');

                zr40Colunas.ShowProgress := false;
                zr40Colunas.Options.Copies := DMProjeto.getCopias(sFormName);
                zr40Colunas.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;

                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);
                if sTipoCabecalho = 'PT' then
                    begin
                        zrNomeEmpresa3.Enabled := false;
                        zrEndereco3.Enabled := false;
                        zrCidade3.Enabled := false;
                    end
                else if DMProjeto.sCabecalho = 'SC' then
                    zr40ColunasHeader.Visible := false
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        zr40ColunasHeader.Visible := true;
                        zr40ColunasChild.Visible := true;
                        zrNomeEmpresa3.Visible := false;
                        zrEndereco3.Visible := false;
                        zrCidade3.Visible := false;
                    end
                else
                    begin
                        zrNomeEmpresa3.Caption := DMProjeto.sNomeEmpresa;
                        zrEndereco3.Caption := DMProjeto.sEnderecoEmpresa;
                        zrCidade3.Caption := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
                        ZRLabel121.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
                    end;

                zr40Colunas.Options.Escapes.ReportFinish := SetSaltos;
                // Abrindo os itens
                C_Itens.Open;

                //            if (C_InvoiceVENDEDOR.AsString <> '') then
                //              zrNomeVendedor3.Caption := 'Vendedor: ' + C_InvoiceVENDEDOR.AsString
                //            else
                //              zrNomeVendedor3.Caption := '';

                zrNomeCodigoCliente.Caption := C_InvoiceCODIGOCLIENTE.AsString + ' - ' + C_InvoiceNOME.AsString;

                sImpressora := DMProjeto.getImpressora(sFormName);
                if sImpressora <> '' then
                    Printer.PrinterIndex := Printer.Printers.IndexOf(sImpressora);

                //Verifica para onde vai ser enviado o relatorio
                //if (DMProjeto.Parametro('InformarTecnicoRelatorio') = 'S') then
//                    ZRTecnico.Caption := InputBox('', 'Informe o Nome do Técnico:', ' ')
//                else
//                    ZRTecnico.Caption := '';
//
//                if (ZRTecnico.Caption = '') then ZRLabeTecnico.Caption := '';

                { (Inclusao do campo Entregue. Ajuste feito para implantacao na Center Bike     - Felipe 11/11/2015)
                    Utilizado "ZRLabeTecnico.Visible" para nao fazer varias consultas ao banco.
                }
                zrLabelInvoice.Caption := C_InvoiceDESCRICAO.AsString + ' # ' + C_InvoiceINVOICE.AsString;

                ZRLabeTecnico.Visible := (DMProjeto.Parametro('InformarTecnicoRelatorio') = 'S');
                ZRTecnico.Visible := ZRLabeTecnico.Visible;
                ZRLabelEntregue.Visible := ZRLabeTecnico.Visible;
                ZREntregue.Visible := ZRLabeTecnico.Visible;

                { Felipe - Configurando a exibição dos campos 01 e 02 de acordo com o o Tipo Movimento (29/04/2016) }
                zrLabel_TitCAMPO01.Visible := (C_InvoiceCB_CAMPO01.Value = 'S');
                ZRCampo01.Visible := (C_InvoiceCB_CAMPO01.Value = 'S');
                zrLabel_TitCAMPO02.Visible := (C_InvoiceCB_CAMPO02.Value = 'S');
                ZRCampo02.Visible := (C_InvoiceCB_CAMPO02.Value = 'S');

                if (C_InvoiceENDERECOENTREGA.AsString <> '') then zrLabelEndEntrega.Visible := True;

                if (C_InvoiceDATAENTREGA.AsDateTime <> null) then zrLabelDataEntrega.Visible := True;

                if ImpressaoPara = 'S' then
                    zr40Colunas.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            zr40Colunas.Print;
                    end
                else if ImpressaoPara = 'N' then
                    zr40Colunas.Preview
                else
                    begin
                        zr40Colunas.Options.Destination := zrdFile;
                        zr40Colunas.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zr40Colunas.Print;
                        EnviarEmail(nil, zr40Colunas.FileName);
                    end;
                {Modelo Texto - 40 Colunas Economico}
            end
        else if (CB_Documento = 'S') and (sModelo = '40E') then
            begin
                {Driver Impressora Matricial}
                //Driver := StrToIntDef(DMProjeto.Parametro('DriverImpressoraMatricial'),2);
                //zr40Colunas.Options.Escapes.Model := TZrEscapeModel(Driver);
                C_ItensPreco.DisplayFormat := DMProjeto.sCasasDecimais;
                zrpcPRECO.Format.DisplayMask := DMProjeto.sCasasDecimais;
                zr40Colunas.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                zr40Colunas.Options.PaperType := TZrPaperType(StrToIntDef(DMProjeto.Parametro('TipoPapelModoTexto'), 2));
                zr40Colunas.Options.Font.Condensed := (DMProjeto.Parametro('Imp40ColCondensed') = 'S');
                zr40Colunas.Options.Font.Condensed17 := (DMProjeto.Parametro('Imp40ColCondensed17') = 'S');
                zr40Colunas.Options.Font.Condensed20 := (DMProjeto.Parametro('Imp40ColCondensed20') = 'S');
                zr40Colunas.Options.Font.Expand := (DMProjeto.Parametro('Imp40ColExpand') = 'S');

                zr40Colunas.ShowProgress := false;
                zr40Colunas.Options.Copies := DMProjeto.getCopias(sFormName);
                zr40Colunas.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;

                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);
                if sTipoCabecalho = 'PT' then
                    begin
                        zrNomeEmpresa3e.Enabled := false;
                        zrEndereco3e.Enabled := false;
                        zrCidade3e.Enabled := false;
                    end
                else if DMProjeto.sCabecalho = 'SC' then
                    zr40ColunasHeader.Visible := false
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        zr40ColunasHeader.Visible := true;
                        zr40ColunasChild.Visible := true;
                        zrNomeEmpresa3e.Visible := false;
                        zrEndereco3e.Visible := false;
                        zrCidade3e.Visible := false;
                    end
                else
                    begin
                        zrNomeEmpresa3e.Caption := DMProjeto.sNomeEmpresa;
                        zrEndereco3e.Caption := DMProjeto.sEnderecoEmpresa;
                        zrCidade3e.Caption := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
                        zrFonee.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
                    end;

                ZR40ColEconomico.Options.Escapes.ReportFinish := SetSaltos;
                // Abrindo os itens
                C_Itens.Open;

                if (C_InvoiceVENDEDOR.AsString <> '') then
                    zrNomeVendedor3e.Caption := 'Vendedor: ' + C_InvoiceVENDEDOR.AsString
                else
                    zrNomeVendedor3e.Caption := '';

                zrNomeCodigoClientee.Caption := C_InvoiceCODIGOCLIENTE.AsString + ' - ' + C_InvoiceNOME.AsString;

                sImpressora := DMProjeto.getImpressora(sFormName);
                if sImpressora <> '' then
                    Printer.PrinterIndex := Printer.Printers.IndexOf(sImpressora);

                //Verifica para onde vai ser enviado o relatorio
                ZRLTecnico.Caption := InputBox('', 'Informe o Nome do Técnico:', ' ');
                if ImpressaoPara = 'S' then
                    ZR40ColEconomico.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            ZR40ColEconomico.Print;
                    end
                else if ImpressaoPara = 'N' then
                    ZR40ColEconomico.Preview
                else
                    begin
                        ZR40ColEconomico.Options.Destination := zrdFile;
                        ZR40ColEconomico.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        ZR40ColEconomico.Print;
                        EnviarEmail(nil, ZR40ColEconomico.FileName);
                    end;
                {Orçamento - Modelo Matricial}
            end
        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 2) = 'OT') then
            begin
                zrOrcamento.Options.PreviewMode := TZrPreviewMode(StrToIntDef(DMProjeto.Parametro('PreviewModoTexto'), 1));
                zrOrcamento.Options.PaperType := TZrPaperType(StrToIntDef(DMProjeto.Parametro('TipoPapelModoTexto'), 2));
                zrOrcamento.ShowProgress := false;
                zrOrcamento.Options.Copies := DMProjeto.getCopias(sFormName);
                zrOrcamento.Title := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;
                ZRLabel53.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');
                ZRLabel73.Visible := (C_InvoiceCB_DESCONTOS.Value = 'S');

                if (sModelo = 'OTC') then
                    begin {Condensado}
                        zrOrcamento.Options.Font.Condensed := true;
                        zrOrcamento.Options.Font.Condensed17 := true;
                        zrOrcamento.Options.Font.Condensed20 := true;
                    end
                else
                    begin
                        zrOrcamento.Options.Font.Condensed := false;
                        zrOrcamento.Options.Font.Condensed17 := false;
                        zrOrcamento.Options.Font.Condensed20 := false;
                    end;

                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);
                if sTipoCabecalho = 'PT' then
                    begin
                        zrNomeEmpresa4.Visible := false;
                        zrEndereco4.Visible := false;
                        zrCidade4.Visible := false;
                        zrFone4.Visible := false;
                    end
                else if DMProjeto.sCabecalho = 'SC' then
                    zrOrcamentoHeader.Visible := false
                else if sTipoCabecalho = 'CB' then //(Michel) - Cabeçalho em branco
                    begin
                        zrOrcamentoHeader.Visible := true;
                        zrOrcamentoChild.Visible := true;
                        zrNomeEmpresa4.Visible := false;
                        zrEndereco4.Visible := false;
                        zrCidade4.Visible := false;
                        zrFone4.Visible := false;
                    end
                else
                    begin
                        zrNomeEmpresa4.Caption := DMProjeto.sNomeEmpresa;
                        zrEndereco4.Caption := DMProjeto.sEnderecoEmpresa;
                        zrCidade4.Caption := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
                        zrFone4.Caption := DMProjeto.sFone1Empresa;
                    end;

                //Esta linha abaixo pode estar errada. Ao invés de zr40 acho que era
                //pra ser zrOrcamento.
                zr40Colunas.Options.Escapes.ReportFinish := SetSaltos;
                // Abrindo os itens
                C_Itens.Open;

                sImpressora := DMProjeto.getImpressora(sFormName);
                if sImpressora <> '' then
                    Printer.PrinterIndex := Printer.Printers.IndexOf(sImpressora);

                if ImpressaoPara = 'S' then
                    zrOrcamento.Print
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            zrOrcamento.Print;
                    end
                else if ImpressaoPara = 'N' then
                    zrOrcamento.Preview
                else
                    begin
                        zrOrcamento.Options.Destination := zrdFile;
                        zrOrcamento.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrOrcamento.Print;
                        EnviarEmail(nil, zrOrcamento.FileName);
                    end;
                {Modelo Normal -- ReportBuilder}
            end

                {Inicio rbInvoiceOuro}
        else if (CB_Documento = 'S') and (sModelo = 'AU') then
            begin
                //            if Template <> 0 then
                //            begin
                //                rbInvoiceOURO.Template.FileName := sArquivo;
                //                if FileExists(rbInvoiceOURO.Template.FileName) then
                //                    rbInvoiceOURO.Template.LoadFromFile
                //                else
                //                    rbInvoiceOURO.Template.FileName := '';
                //            end
                //            else
                //                rbInvoiceOURO.Template.FileName := '';

                lbCanceladoOURO.Visible := C_InvoiceSITUACAO.Value = 'C';

                if (Application.MessageBox(pchar('Emitir esta impressão para a produção?'), 'Pergunta', mb_iconquestion + mb_yesno + MB_DEFBUTTON2) = idYes) then
                    begin
                        ppDBTotalOURO.Visible := False;
                        ppDBPrecoOURO.Visible := False;
                        ppDBTotalGeralOURO.Visible := False;
                        ppDBDescontoOURO.Visible := False;
                        ppDBPrecoTotalOURO.Visible := False;
                        ppSubParcelasOURO.Visible := False;
                    end
                else
                    begin
                        ppDBTotalOURO.Visible := True;
                        ppDBPrecoOURO.Visible := True;
                        ppDBTotalGeralOURO.Visible := True;
                        ppDBDescontoOURO.Visible := True;
                        ppDBPrecoTotalOURO.Visible := True;
                        ppSubParcelasOURO.Visible := True;
                    end;

                // ppDBDescricaoComplementarOURO.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');

                DefineColunas(RptInvoices, 6, getColunasMovimento(C_InvoiceTipoMovimento.Value, sTipoImpressao));

                sFormName := DMProjeto.getTelaGeradora(C_InvoiceTipoOrigem.AsInteger);
                DMProjeto.ImprimirCabecalho(rbrgCabecalhoOURO, sFormName);

                if not rbrgCabecalhoOURO.Visible then
                    begin
                        for i := 0 to ComponentCount - 1 do
                            begin
                                if Components[i].Tag >= 20 then
                                    TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rbrgCabecalhoOURO.Height;
                                if Components[i].Tag = 21 then
                                    TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + rbrgCabecalhoOURO.Height;
                            end;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rbInvoiceOURO.DeviceType := 'Printer';
                        rbInvoiceOURO.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbInvoiceOURO.DeviceType := 'Printer';
                                rbInvoiceOURO.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbInvoiceOURO.DeviceType := 'Screen';
                        rbInvoiceOURO.Print;
                    end
                else
                    EnviarEmail(rbInvoiceOURO, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end
                {Fim rbInvoiceOUROOuro}

        else if (CB_Documento = 'S') and (sModelo = 'N') then
            begin
                if Template <> 0 then
                    begin
                        rbInvoice.Template.FileName := sArquivo;
                        if FileExists(rbInvoice.Template.FileName) then
                            rbInvoice.Template.LoadFromFile
                        else
                            rbInvoice.Template.FileName := '';
                    end
                else
                    rbInvoice.Template.FileName := '';

                posicao := 14;
                if C_InvoiceCB_VENDEDOR.Value = 'S' then
                    begin
                        rbrgVendedor.Left := posicao;
                        rbrgVendedor.Visible := True;
                        posicao := posicao + rbrgVendedor.Width;
                    end
                else
                    rbrgVendedor.Visible := False;

                if C_InvoiceCB_PEDIDO.Value = 'S' then
                    begin
                        rbrgPedido.Left := posicao;
                        rbrgPedido.Visible := True;
                        posicao := posicao + rbrgPedido.Width;
                    end
                else
                    rbrgPedido.Visible := False;

                //campo := 'CB_CAMPO01';
                if C_Invoice.FieldByName('CB_CAMPO01').AsString = 'S' then
                    begin
                        rbrgCampo01.Left := posicao;
                        rbrgCampo01.Visible := True;
                        posicao := posicao + rbrgCampo01.Width;
                    end
                else
                    rbrgCampo01.Visible := False;

                //campo := 'CB_CAMPO02';
                if C_Invoice.FieldByName('CB_CAMPO02').AsString = 'S' then
                    begin
                        rbrgCampo02.Left := posicao;
                        rbrgCampo02.Visible := True;
                        posicao := posicao + rbrgCampo02.Width;
                    end
                else
                    rbrgCampo02.Visible := False;

                //campo := 'CB_CAMPO03';
                if C_Invoice.FieldByName('CB_CAMPO03').AsString = 'S' then
                    begin
                        rbrgCampo03.Left := posicao;
                        rbrgCampo03.Visible := True;
                        posicao := posicao + rbrgCampo03.Width;
                    end
                else
                    rbrgCampo03.Visible := False;

                //campo := 'CB_CAMPO04';
                if C_Invoice.FieldByName('CB_CAMPO04').AsString = 'S' then
                    begin
                        rbrgCampo04.Left := posicao;
                        rbrgCampo04.Visible := True;
                        posicao := posicao + rbrgCampo04.Width;
                    end
                else
                    rbrgCampo04.Visible := False;

                lbCancelado.Visible := C_InvoiceSITUACAO.Value = 'C';

                rbrgValidade.Visible := (C_InvoiceCB_Validade.Value = 'S');
                rgDesconto.Visible := (C_InvoiceCB_Descontos.Value = 'S');
                rgDespesas.Visible := (C_InvoiceCB_Despesas.Value = 'S');
                rgFrete.Visible := (C_InvoiceCB_Frete.Value = 'S');
                rgJuros.Visible := (C_InvoiceCB_Juros.Value = 'S');
                dbtDescComplementar.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
                subComposicaoItens.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');
                regInfoEntrega.Visible := (C_InvoiceCB_InfoEntrega.Value = 'S');
                subIdentificacoes.Visible := (DMProjeto.Parametro('Identificacao') = 'S') and (C_InvoiceCB_Identificacao.AsString = 'S');
                ppFabricante.Visible := C_InvoiceCB_Fabricante.AsString = 'S';
                if ppFabricante.Visible then
                    ppDetailBand1.PrintCount := 13
                else
                    ppDetailBand1.PrintCount := 22;

                DefineColunas(RptInvoices, 6, getColunasMovimento(C_InvoiceTipoMovimento.Value, sTipoImpressao));

                sFormName := DMProjeto.getTelaGeradora(C_InvoiceTipoOrigem.AsInteger);
                DMProjeto.ImprimirCabecalho(rbrgCabecalho, sFormName);

                if not rbrgCabecalho.Visible then
                    begin
                        for i := 0 to ComponentCount - 1 do
                            begin
                                if Components[i].Tag >= 20 then
                                    TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rbrgCabecalho.Height;
                                if Components[i].Tag = 21 then
                                    TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + rbrgCabecalho.Height;
                            end;
                    end;

                if (impressaoPadrao = 'S') then
                    begin
                        rbInvoice.PrinterSetup.PrinterName := nomeImpressora;
                        rbInvoice.PrinterSetup.PaperName := papelImpressora;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rbInvoice.DeviceType := 'Printer';
                        rbInvoice.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbInvoice.DeviceType := 'Printer';
                                rbInvoice.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbInvoice.DeviceType := 'Screen';
                        rbInvoice.Print;
                    end
                else
                    EnviarEmail(rbInvoice, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end
        else if (CB_Documento = 'S') and (sModelo = 'O') then
            begin
                if Template <> 0 then
                    begin
                        rbOrcamento.Template.FileName := sArquivo;
                        if fileexists(rbOrcamento.Template.FileName) then
                            rbOrcamento.Template.LoadFromFile
                        else
                            rbOrcamento.Template.FileName := '';
                    end
                else
                    rbOrcamento.Template.FileName := '';

                dbtVendedor.Visible := C_InvoiceCB_VENDEDOR.Value = 'S';
                dbtCargo.Visible := dbtVendedor.Visible;

                lbCanceladoORC.Visible := C_InvoiceSITUACAO.Value = 'C';

                //dbtDescComplementarO.Visible := (C_InvoiceCB_DescricaoComplementar.Value='S');
                //subComposicaoItensO.Visible := (C_InvoiceCB_ComposicaoItens.Value='S');

                DefineColunas(RptInvoices, 6, getColunasOrcamento(C_InvoiceTipoMovimento.Value, sTipoImpressao), true);

                sFormName := DMProjeto.getTelaGeradora(C_InvoiceTipoOrigem.AsInteger);
                DMProjeto.ImprimirCabecalho(rgCab, sFormName);

                if not rgCab.Visible then
                    begin
                        for i := 0 to ComponentCount - 1 do
                            begin
                                if Components[i].Tag >= 20 then
                                    TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rgCab.Height;
                                if Components[i].Tag = 21 then
                                    TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + rgCab.Height;
                            end;
                    end;

                lbGarantia.Visible := (C_InvoiceGarantia.Value <> '');
                lbEstoque.Visible := (C_InvoiceGarantia.Value <> '');
                ckEstoque.Visible := (C_InvoiceGarantia.Value <> '');

                if ImpressaoPara = 'S' then
                    begin
                        rbOrcamento.DeviceType := 'Printer';
                        rbOrcamento.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbOrcamento.DeviceType := 'Printer';
                                rbOrcamento.Print;
                            end
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbOrcamento.DeviceType := 'Screen';
                        rbOrcamento.Print;
                    end
                else
                    EnviarEmail(rbOrcamento, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');

                // Reimpressão sem valores (Para o Caso de 1 via de Orçamento para Oficina
                lbPreco_O.Visible := True;
                lbSubtotal_O.Visible := True;
                dbtPreco_O.Visible := True;
                dbtSubTotal_O.Visible := True;
                ppLabel25.Visible := True;
                dbtTotalItem_O.Visible := True;
                ppLabel30.Visible := True;
                ppDBText143.Visible := True;
                ppLabel31.Visible := True;
                ppDBText168.Visible := True;
                ppLabel36.Visible := True;
                ppDBText144.Visible := True;
                ppLabel32.Visible := True;
                ppDBText145.Visible := True;
                ppLine6.Visible := True;
                shpSubTotal_O.Visible := True;
                lnSubTotal_O.Visible := True;
                shpPreco_O.Visible := True;
                lnPreco_O.Visible := True;
                ppLabel33.Visible := True;
                ppDBMemo2.Visible := True;
                if (sImpressaoSemValores = 'S') then
                    begin
                        lbPreco_O.Visible := False;
                        lbSubtotal_O.Visible := False;
                        dbtPreco_O.Visible := False;
                        dbtSubTotal_O.Visible := False;
                        ppLabel25.Visible := False;
                        dbtTotalItem_O.Visible := False;
                        ppLabel30.Visible := False;
                        ppDBText143.Visible := False;
                        ppLabel31.Visible := False;
                        ppDBText168.Visible := False;
                        ppLabel36.Visible := False;
                        ppDBText144.Visible := False;
                        ppLabel32.Visible := False;
                        ppDBText145.Visible := False;
                        ppLine6.Visible := False;
                        shpSubTotal_O.Visible := False;
                        lnSubTotal_O.Visible := False;
                        shpPreco_O.Visible := False;
                        lnPreco_O.Visible := False;
                        ppLabel33.Visible := False;
                        ppDBMemo2.Visible := False;

                        rbOrcamento.DeviceType := 'Printer';
                        if ImpressaoPara = 'S' then
                            rbOrcamento.Print;
                        if ImpressaoPara = 'C' then
                            if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                rbOrcamento.Print;
                        if ImpressaoPara = 'N' then
                            begin
                                rbOrcamento.DeviceType := 'Screen';
                                rbOrcamento.Print;
                            end
                    end; // Reimpressão sem valores.
            end
        else if (CB_Documento = 'S') and (sModelo = 'PL') then
            begin
                if Template <> 0 then
                    begin
                        rbProposta.Template.FileName := sArquivo;
                        if FileExists(rbProposta.Template.FileName) then
                            rbProposta.Template.LoadFromFile
                        else
                            rbProposta.Template.FileName := '';
                    end
                else
                    rbProposta.Template.FileName := '';

                dbtVendedor.Visible := C_InvoiceCB_VENDEDOR.Value = 'S';
                dbtCargo.Visible := dbtVendedor.Visible;

                lbCanceladoORC.Visible := C_InvoiceSITUACAO.Value = 'C';

                { Campo Objeto da Licitacao }
                ppLBLExplicacoes.Visible := (not C_InvoiceEXPLICACOES.IsNull) and (C_InvoiceEXPLICACOES.Value <> '');
                ppShapeExplicacoes.Visible := ppLBLExplicacoes.Visible;
                ppDBExplicacoes.Visible := ppLBLExplicacoes.Visible;

                //dbtDescComplementarO.Visible := (C_InvoiceCB_DescricaoComplementar.Value='S');
                //subComposicaoItensO.Visible := (C_InvoiceCB_ComposicaoItens.Value='S');

                //DefineColunas(RptInvoices, 6, getColunasPropostas(C_InvoiceTipoMovimento.Value, sTipoImpressao), true);

                sFormName := DMProjeto.getTelaGeradora(C_InvoiceTipoOrigem.AsInteger);

                DMProjeto.ImprimirCabecalho(rgCabProposta, sFormName);
                ppDBDescComplementarProposta.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
                {
                rgPorExtenso.Visible := (C_Invoice.fieldbyname('cb_porextenso').AsString = 'S');
                rgAliqICMS.Visible := (C_Invoice.fieldbyname('cb_aliqicms').AsString = 'S');
                lnDescricao_P.Visible := (not rgPorExtenso.Visible) and (not rgAliqICMS.Visible);
                lnRegistro_P.Visible := lnDescricao_P.Visible;
                lnFabricante_P.Visible := lnDescricao_P.Visible;
                }

                { Inicio Ajuste de colunas programaticamente }

                if (C_InvoiceCB_COLUNA1.Value = 'S') then
                    begin
                        lbFabricante_P.Width := 82;
                        dbtFabricante_P.Width := 82;
                        lnColuna01_P.Visible := True;
                        lbColuna01_P.Visible := True;
                        dbtColuna01_P.Visible := True;
                    end
                else
                    begin
                        lbFabricante_P.Width := 213;
                        dbtFabricante_P.Width := 213;
                        lnColuna01_P.Visible := False;
                        lbColuna01_P.Visible := False;
                        dbtColuna01_P.Visible := False;
                    end;

                lnColuna01_P.Visible := C_InvoiceCB_COLUNA1.Value = 'S';
                lbColuna01_P.Visible := C_InvoiceCB_COLUNA1.Value = 'S';
                dbtColuna01_P.Visible := C_InvoiceCB_COLUNA1.Value = 'S';
                lnUnidade_P.Visible := lnDescricao_P.Visible;
                lnQuantidade_P.Visible := lnDescricao_P.Visible;
                lnPreco_P.Visible := lnDescricao_P.Visible;
                lnSubTotal_P.Visible := lnDescricao_P.Visible;
                { Fim Ajuste de colunas programaticamente }

                if not rgCabProposta.Visible then
                    begin
                        for i := 0 to ComponentCount - 1 do
                            begin
                                if Components[i].Tag >= 20 then
                                    TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rgCabProposta.Height;
                                if Components[i].Tag = 21 then
                                    TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + rgCabProposta.Height;
                            end;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rbProposta.DeviceType := 'Printer';
                        rbProposta.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbProposta.DeviceType := 'Printer';
                                rbProposta.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbProposta.DeviceType := 'Screen';
                        rbProposta.Print;
                    end
                else
                    EnviarEmail(rbProposta, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end
        else if (CB_Documento = 'S') and (sModelo = 'PS') then
            begin
                imprimeRbInvoiceProdServ(sTipoImpressao, sFormName, ImpressaoPara, sArquivo, sImpressaoSemValores, posicao, Template);
            end
        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 1) = 'E') then
            begin
                if Template <> 0 then
                    begin
                        rbInvoiceEconomico.Template.FileName := sArquivo;
                        if fileexists(rbInvoiceEconomico.Template.FileName) then
                            rbInvoiceEconomico.Template.LoadFromFile
                        else
                            rbInvoiceEconomico.Template.FileName := '';
                    end
                else
                    rbInvoiceEconomico.Template.FileName := '';

                rgValidade3.Visible := (C_InvoiceCB_Validade.Value = 'S');
                rgDesconto3.Visible := (C_InvoiceCB_Descontos.Value = 'S');
                rgDespesas3.Visible := (C_InvoiceCB_Despesas.Value = 'S');
                rgFrete3.Visible := (C_InvoiceCB_Frete.Value = 'S');
                rgJuros3.Visible := (C_InvoiceCB_Juros.Value = 'S');
                dbtDescComplementar3.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
                subComposicaoItens3.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');
                rgInfoEntrega3.Visible := (C_InvoiceCB_InfoEntrega.Value = 'S');

                posicao := 14;
                if C_InvoiceCB_VENDEDOR.Value = 'S' then
                    begin
                        rgVendedor3.Left := posicao;
                        rgVendedor3.Visible := True;
                        posicao := posicao + rgVendedor3.Width;
                    end
                else
                    rgVendedor3.Visible := False;

                if C_InvoiceCB_PEDIDO.Value = 'S' then
                    begin
                        rgPedido3.Left := posicao;
                        rgPedido3.Visible := True;
                        posicao := posicao + rgPedido3.Width;
                    end
                else
                    begin
                        rgPedido3.Visible := False;
                    end;

                //campo := 'CB_CAMPO01';
                if C_Invoice.FieldByName('CB_CAMPO01').AsString = 'S' then
                    begin
                        rgCampo3_1.Left := posicao;
                        rgCampo3_1.Visible := True;
                        posicao := posicao + rgCampo3_1.Width;
                    end
                else
                    begin
                        rgCampo3_1.Visible := False;
                    end;

                //campo := 'CB_CAMPO02';
                if C_Invoice.FieldByName('CB_CAMPO02').AsString = 'S' then
                    begin
                        rgCampo3_2.Left := posicao;
                        rgCampo3_2.Visible := True;
                        posicao := posicao + rgCampo3_2.Width;
                    end
                else
                    begin
                        rgCampo3_2.Visible := False;
                    end;

                //campo := 'CB_CAMPO03';
                if C_Invoice.FieldByName('CB_CAMPO03').AsString = 'S' then
                    begin
                        rgCampo3_3.Left := posicao;
                        rgCampo3_3.Visible := True;
                        posicao := posicao + rgCampo3_3.Width;
                    end
                else
                    begin
                        rgCampo3_3.Visible := False;
                    end;

                //campo := 'CB_CAMPO04';
                if C_Invoice.FieldByName('CB_CAMPO04').AsString = 'S' then
                    begin
                        rgCampo3_4.Left := posicao;
                        rgCampo3_4.Visible := True;
                        posicao := posicao + rgCampo3_4.Width;
                    end
                else
                    begin
                        rgCampo3_4.Visible := False;
                    end;

                lbCancelado3.Visible := C_InvoiceSITUACAO.Value = 'C';

                DefineColunas(RptInvoices, 6, getColunasEconomico(C_InvoiceTipoMovimento.Value, sTipoImpressao), true);

                CabGrupoPorTipoItem.Visible := sModelo = 'EPS';
                RodGrupoPorTipoItem.Visible := sModelo = 'EPS';

                if sModelo = 'EPS' then
                    begin
                        C_Itens.AddIndex('iTipoItem', 'TipoItem', []);
                        C_Itens.IndexName := 'iTipoItem';
                    end;

                DMProjeto.ImprimirCabecalho(rgCab3, sFormName);

                if not rgCab3.Visible then
                    DetalheItens.PrintCount := DetalheItens.PrintCount + 5;

                if ImpressaoPara = 'S' then
                    begin
                        rbInvoiceEconomico.DeviceType := 'Printer';
                        rbInvoiceEconomico.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbInvoiceEconomico.DeviceType := 'Printer';
                                rbInvoiceEconomico.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbInvoiceEconomico.DeviceType := 'Screen';
                        rbInvoiceEconomico.Print;
                    end
                else
                    EnviarEmail(rbInvoiceEconomico, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                {Modelo Simples}
            end
                //else if (CB_Documento = 'S') and (Copy(sModelo, 1, 1) = 'S') then
        else if (CB_Documento = 'S') and (sModelo = 'S') then
            begin
                if Template <> 0 then
                    begin
                        rbMeiaFolha.Template.FileName := sArquivo;
                        if fileexists(rbMeiaFolha.Template.FileName) then
                            rbMeiaFolha.Template.LoadFromFile
                        else
                            rbMeiaFolha.Template.FileName := '';
                    end
                else
                    rbMeiaFolha.Template.FileName := '';

                //campo := 'CB_CAMPO01';
                if C_Invoice.FieldByName('CB_CAMPO01').AsString = 'S' then
                    begin
                        ppShapeCampo01.Visible := True;
                        ppTituloCampo01.Visible := True;
                        ppCampo01.Visible := True;
                    end
                else
                    begin
                        ppShapeCampo01.Visible := False;
                        ppTituloCampo01.Visible := False;
                        ppCampo01.Visible := False;
                    end;

                //campo := 'CB_CAMPO02';
                if C_Invoice.FieldByName('CB_CAMPO02').AsString = 'S' then
                    begin
                        ppShapeCampo02.Visible := True;
                        ppTituloCampo02.Visible := True;
                        ppCampo02.Visible := True;
                    end
                else
                    begin
                        ppShapeCampo02.Visible := False;
                        ppTituloCampo02.Visible := False;
                        ppCampo02.Visible := False;
                    end;

                //campo := 'CB_CAMPO03';
                if C_Invoice.FieldByName('CB_CAMPO03').AsString = 'S' then
                    begin
                        ppShapeCampo03.Visible := True;
                        ppTituloCampo03.Visible := True;
                        ppCampo03.Visible := True;
                    end
                else
                    begin
                        ppShapeCampo03.Visible := False;
                        ppTituloCampo03.Visible := False;
                        ppCampo03.Visible := False;
                    end;

                //campo := 'CB_CAMPO04';
                if C_Invoice.FieldByName('CB_CAMPO04').AsString = 'S' then
                    begin
                        ppShapeCampo04.Visible := True;
                        ppTituloCampo04.Visible := True;
                        ppCampo04.Visible := True;
                    end
                else
                    begin
                        ppShapeCampo04.Visible := False;
                        ppTituloCampo04.Visible := False;
                        ppCampo04.Visible := False;
                    end;

                lbCancelado4.Visible := C_InvoiceSITUACAO.Value = 'C';
                dbtDescComplementar4.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
                subComposicaoItens4.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                DefineColunas(RptInvoices, 6, getColunasMeiaFolha(C_InvoiceTipoMovimento.Value, sTipoImpressao), true);

                DMProjeto.ImprimirCabecalho(rgCab3, sFormName);

                if not rgCab3.Visible then
                    DetalheSimples.PrintCount := DetalheSimples.PrintCount + 5;

                lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
                lbEndereco.Caption := DMProjeto.sEnderecoEmpresa;
                lbTelefone.Caption := DMProjeto.sFone1Empresa;

                if (impressaoPadrao = 'S') then
                    begin
                        rbMeiaFolha.PrinterSetup.PrinterName := nomeImpressora;
                        rbMeiaFolha.PrinterSetup.PaperName := papelImpressora;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rbMeiaFolha.DeviceType := 'Printer';
                        rbMeiaFolha.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbMeiaFolha.DeviceType := 'Printer';
                                rbMeiaFolha.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbMeiaFolha.DeviceType := 'Screen';
                        rbMeiaFolha.Print;
                    end
                else
                    EnviarEmail(rbMeiaFolha, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end
                {Felipe - Adicionado "rbPedMeiaFolhaLX300" para imprimir em meia folha de papel continuo}
        else if (CB_Documento = 'S') and (sModelo = 'SMF') then
            begin
                try
                    lbCancelado5.Visible := C_InvoiceSITUACAO.Value = 'C';
                    dbtDescComplementar5.Visible := (C_InvoiceCB_DESCRICAOCOMPLEMENTAR.Value = 'S');
                    subComposicaoItens5.Visible := (C_InvoiceCB_COMPOSICAOITENS.Value = 'S');

                    DefineColunas(RptInvoices, 6, getColunasMeiaFolhaLX300(C_InvoiceTipoMovimento.Value, sTipoImpressao), true);

                    DMProjeto.ImprimirCabecalho(rgCab3, sFormName);

                    if not rgCab3.Visible then
                        DetalheSimples.PrintCount := DetalheSimples.PrintCount + 5;

                    lbEmpresa5.Caption := DMProjeto.sNomeEmpresa;
                    lbEndereco5.Caption := DMProjeto.sEnderecoEmpresa;
                    lbTelefone5.Caption := DMProjeto.sFone1Empresa;

                    if ImpressaoPara = 'S' then
                        begin
                            rbPedMeiaFolhaLX300.DeviceType := 'Printer';
                            rbPedMeiaFolhaLX300.Print;
                        end
                    else if ImpressaoPara = 'C' then
                        begin
                            if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                begin
                                    rbPedMeiaFolhaLX300.DeviceType := 'Printer';
                                    rbPedMeiaFolhaLX300.Print;
                                end;
                        end
                    else if ImpressaoPara = 'N' then
                        begin
                            rbPedMeiaFolhaLX300.DeviceType := 'Screen';
                            rbPedMeiaFolhaLX300.Print;
                        end
                    else
                        EnviarEmail(rbPedMeiaFolhaLX300, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                except
                    Application.MessageBox('Erro ao gerar Impressão (Pedido Meia Folha LX 300)', 'Erro', MB_ICONERROR);
                    Exit;
                end;
            end

{ Inclução de impressão para pedido de 1 Via em saidas César 10-10-2017}
        else if (CB_Documento = 'S') and (sModelo = 'P1V') then
            begin
                if Template <> 0 then
                    begin
                        rbPedidoDuasVias.Template.FileName := sArquivo;
                        if fileexists(rbPedidoDuasVias.Template.FileName) then
                            rbPedidoDuasVias.Template.LoadFromFile
                        else
                            rbPedidoDuasVias.Template.FileName := '';
                    end
                else
                    rbPedidoDuasVias.Template.FileName := '';

                lbCancelado.Visible := C_InvoiceSITUACAO.Value = 'C';
//                dbtDescComplementar4.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
//                subComposicaoItens4.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                DMProjeto.ImprimirCabecalho(rgCabPedido1, sFormName);

                if not rgCabPedido1.Visible then
                    DetalheSimples.PrintCount := DetalheSimples.PrintCount + 5;

                lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
                lbEndereco.Caption := DMProjeto.sEnderecoEmpresa;
                lbTelefone.Caption := DMProjeto.sFone1Empresa;

                if (impressaoPadrao = 'S') then
                    begin
                        rbPedidoDuasVias.PrinterSetup.PrinterName := nomeImpressora;
                        rbPedidoDuasVias.PrinterSetup.PaperName := papelImpressora;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rbPedidoDuasVias.DeviceType := 'Printer';
                        rbPedidoDuasVias.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbPedidoDuasVias.DeviceType := 'Printer';
                                rbPedidoDuasVias.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbPedidoDuasVias.DeviceType := 'Screen';
                        rbPedidoDuasVias.Print;
                    end
                else
                    EnviarEmail(rbPedidoDuasVias, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end

       { fINAL cESAR 10-10-2017 AQUI. }
  ////
        else if (CB_Documento = 'S') and (sModelo = 'PG') then
            begin
                if Template <> 0 then
                    begin
                        rppedidograde.Template.FileName := sArquivo;
                        if fileexists(rppedidograde.Template.FileName) then
                            rppedidograde.Template.LoadFromFile
                        else
                            rppedidograde.Template.FileName := '';
                    end
                else
                    rppedidograde.Template.FileName := '';

                lbCancelado.Visible := C_InvoiceSITUACAO.Value = 'C';
//                dbtDescComplementar4.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
//                subComposicaoItens4.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                DMProjeto.ImprimirCabecalho(rbCabecalhopp, sFormName);

                if not rbCabecalhopp.Visible then
                    DetalheSimples.PrintCount := DetalheSimples.PrintCount + 5;

                lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
                lbEndereco.Caption := DMProjeto.sEnderecoEmpresa;
                lbTelefone.Caption := DMProjeto.sFone1Empresa;

                if (impressaoPadrao = 'S') then
                    begin
                        rppedidograde.PrinterSetup.PrinterName := nomeImpressora;
                        rppedidograde.PrinterSetup.PaperName := papelImpressora;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rppedidograde.DeviceType := 'Printer';
                        rppedidograde.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rppedidograde.DeviceType := 'Printer';
                                rppedidograde.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rppedidograde.DeviceType := 'Screen';
                        rppedidograde.Print;
                    end
                else
                    EnviarEmail(rppedidograde, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end

  /////

////ZZZZZ

 else if (CB_Documento = 'S') and (sModelo = 'PGT') then
            begin
                if Template <> 0 then
                    begin
                        rppedidogradePrecoTabela.Template.FileName := sArquivo;
                        if fileexists(rppedidogradePrecoTabela.Template.FileName) then
                            rppedidogradePrecoTabela.Template.LoadFromFile
                        else
                            rppedidogradePrecoTabela.Template.FileName := '';
                    end
                else
                    rppedidogradePrecoTabela.Template.FileName := '';

                lbCancelado.Visible := C_InvoiceSITUACAO.Value = 'C';
//                dbtDescComplementar4.Visible := (C_InvoiceCB_DescricaoComplementar.Value = 'S');
//                subComposicaoItens4.Visible := (C_InvoiceCB_ComposicaoItens.Value = 'S');

                DMProjeto.ImprimirCabecalho(ppRegion55, sFormName);

                if not rbCabecalhopp.Visible then
                    DetalheSimples.PrintCount := DetalheSimples.PrintCount + 5;

                lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
                lbEndereco.Caption := DMProjeto.sEnderecoEmpresa;
                lbTelefone.Caption := DMProjeto.sFone1Empresa;

                if (impressaoPadrao = 'S') then
                    begin
                        rppedidogradePrecoTabela.PrinterSetup.PrinterName := nomeImpressora;
                        rppedidogradePrecoTabela.PrinterSetup.PaperName := papelImpressora;
                    end;

                if ImpressaoPara = 'S' then
                    begin
                        rppedidogradePrecoTabela.DeviceType := 'Printer';
                        rppedidogradePrecoTabela.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rppedidogradePrecoTabela.DeviceType := 'Printer';
                                rppedidogradePrecoTabela.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rppedidogradePrecoTabela.DeviceType := 'Screen';
                        rppedidogradePrecoTabela.Print;
                    end
                else
                    EnviarEmail(rppedidogradePrecoTabela, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
            end

  /////
////ZZZZZ





        else if (CB_Documento = 'S') and (UpperCase(sModelo) = 'P2V') then
            begin
                lbCancelado6.Visible := C_InvoiceSITUACAO.Value = 'C';
                DMProjeto.ImprimirCabecalho(rgCabPedido1, sFormName);
                if (UpperCase(ImpressaoPara) = 'S') or (UpperCase(ImpressaoPara) = 'N') then
                    begin
                        PrintPDF();
                    end;
            end

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PPI') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;

                // Pedido Pré-Impresso...
                zrlPreCodigoCliente.Caption := C_InvoiceCODIGOCLIENTE.AsString;
                zrlPreNomeCliente.Caption := C_InvoiceNOME.AsString;
                zrlPreEndCliente.Caption := C_InvoiceENDERECO.AsString;
                zrlPreCidadeCliente.Caption := C_InvoiceCIDADEUFZIP.AsString;
                zrlPreFone.Caption := C_InvoiceFONE1.AsString;
                zrlPreCPF.Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.AsString);

                zrlTitC1.Caption := C_InvoiceTIT2_CAMPO1.AsString;
                zrlTitC2.Caption := C_InvoiceTIT2_CAMPO2.AsString;
                zrlTitC3.Caption := C_InvoiceTIT2_CAMPO3.AsString;
                zrlTitC4.Caption := C_InvoiceTIT2_CAMPO4.AsString;
                zrlC1.Caption := C_InvoiceCAMPO01.AsString;
                zrlC2.Caption := C_InvoiceCAMPO02.AsString;
                zrlC3.Caption := C_InvoiceCAMPO03.AsString;
                zrlC4.Caption := C_InvoiceCAMPO04.AsString;
                //      C_Itens.Filtered := false;
                //      C_Itens.Filter 	 := 'TipoItem <> 3';
                //      C_Itens.Filtered := true;
                if ImpressaoPara = 'S' then
                    begin
                        zrPreImpresso.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                zrPreImpresso.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        zrPreImpresso.Preview;
                    end
                else
                    begin
                        zrPreImpresso.Options.Destination := zrdFile;
                        zrPreImpresso.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrPreImpresso.Print;
                        EnviarEmail(nil, zrPreImpresso.FileName);
                    end;
            end

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PP2') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;

                // Pedido Pré-Impresso...
                zrlPre2CodigoCliente.Caption := C_InvoiceCODIGOCLIENTE.AsString;
                zrlPre2NomeCliente.Caption := C_InvoiceNOME.AsString;
                zrlPre2EndCliente.Caption := C_InvoiceENDERECO.AsString;
                zrlPre2Bairro.Caption := C_InvoiceBAIRRO.AsString;
                zrlPre2UF.Caption := C_InvoiceUF.AsString;
                zrlPre2Insc_Est.Caption := C_InvoiceINSCRICAO_EST.AsString;
                zrlPre2CidadeCliente.Caption := C_InvoiceCIDADE.AsString;
                zrlPre2Fone.Caption := C_InvoiceFONE1.AsString;
                zrlPre2CEP.Caption := C_InvoiceCEP.AsString;
                zrlPre2CPF.Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.AsString);
                zrlPre2Vendedor.Caption := C_InvoiceVENDEDOR.AsString;
                zrlPre2TipoMovimento.Caption := C_InvoiceDESCRICAO.AsString;

                zrlTit2C1.Caption := C_InvoiceTIT2_CAMPO1.AsString;
                zrlTit2C2.Caption := C_InvoiceTIT2_CAMPO2.AsString;
                zrlTit2C3.Caption := C_InvoiceTIT2_CAMPO3.AsString;
                zrlTit2C4.Caption := C_InvoiceTIT2_CAMPO4.AsString;
                zrlC2_1.Caption := C_InvoiceCAMPO01.AsString;
                zrlC2_2.Caption := C_InvoiceCAMPO02.AsString;
                zrlC2_3.Caption := C_InvoiceCAMPO03.AsString;
                zrlC2_4.Caption := C_InvoiceCAMPO04.AsString;
                //      C_Itens.Filtered := false;
                //      C_Itens.Filter 	 := 'TipoItem <> 3';
                //      C_Itens.Filtered := true;
                if ImpressaoPara = 'S' then
                    begin
                        zrPreImpModeloII.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                zrPreImpModeloII.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        zrPreImpModeloII.Preview;
                    end
                else
                    begin
                        zrPreImpresso.Options.Destination := zrdFile;
                        zrPreImpresso.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrPreImpresso.Print;
                        EnviarEmail(nil, zrPreImpresso.FileName);
                    end;
            end

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'P40') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;
                pp40Empresa.Caption := DMProjeto.sNomeEmpresa;
                pp40EndEmpresa.Caption := DMProjeto.sEnderecoEmpresa;
                pp40FoneEmpresa.Caption := DMProjeto.sFone1Empresa;

                // Pedido Pré-Impresso para Epson FX-880+...
                ppNumero.Caption := UpperCase(C_InvoiceDescricao.AsString) + ' #' + C_InvoiceInvoice.AsString + Chr(32) + C_InvoiceDATA.AsString;
                pp40CodigoCliente.Caption := C_InvoiceCODIGOCLIENTE.AsString;
                pp40NomeCliente.Caption := C_InvoiceNOME.AsString;
                pp40Endereco.Caption := C_InvoiceENDERECO.AsString;
                pp40Cidade.Caption := C_InvoiceCIDADEUFZIP.AsString;
                pp40Fone.Caption := C_InvoiceFONE1.AsString;
                pp40CPF.Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.AsString);

                if ImpressaoPara = 'S' then
                    begin
                        pp40ColunasGrafico.DeviceType := 'Printer';
                        pp40ColunasGrafico.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                pp40ColunasGrafico.DeviceType := 'Printer';
                                pp40ColunasGrafico.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        pp40ColunasGrafico.DeviceType := 'Screen';
                        pp40ColunasGrafico.Print;
                    end
                else
                    begin
                        EnviarEmail(pp40ColunasGrafico, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                    end;
            end

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PFX') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;

                // Pedido Pré-Impresso para Epson FX-880+...
                zrlNumero.Caption := UpperCase(C_InvoiceDescricao.AsString) + ' #' + C_InvoiceInvoice.AsString + Chr(32) + C_InvoiceDATA.AsString;
                zrlPreFXCodigoCliente.Caption := C_InvoiceCODIGOCLIENTE.AsString;
                zrlPreFXNomeCliente.Caption := C_InvoiceNOME.AsString;
                zrlPreFXEndCliente.Caption := C_InvoiceENDERECO.AsString;
                zrlPreFXCidadeCliente.Caption := C_InvoiceCIDADEUFZIP.AsString;
                zrlPreFXFone.Caption := C_InvoiceFONE1.AsString;
                zrlPreFXCPF.Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.AsString);

                zrlFXTitC1.Caption := C_InvoiceTIT2_CAMPO1.AsString;
                zrlFXTitC2.Caption := C_InvoiceTIT2_CAMPO2.AsString;
                zrlFXTitC3.Caption := C_InvoiceTIT2_CAMPO3.AsString;
                zrlFXTitC4.Caption := C_InvoiceTIT2_CAMPO4.AsString;
                zrlFXC1.Caption := C_InvoiceCAMPO01.AsString;
                zrlFXC2.Caption := C_InvoiceCAMPO02.AsString;
                zrlFXC3.Caption := C_InvoiceCAMPO03.AsString;
                zrlFXC4.Caption := C_InvoiceCAMPO04.AsString;
                //      C_Itens.Filtered := false;
                //      C_Itens.Filter 	 := 'TipoItem <> 3';
                //      C_Itens.Filtered := true;
                if ImpressaoPara = 'S' then
                    begin
                        rbFX880.DeviceType := 'Printer';
                        rbFX880.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                rbFX880.DeviceType := 'Printer';
                                rbFX880.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        rbFX880.DeviceType := 'Screen';
                        rbFX880.Print;
                    end
                else
                    begin
                        EnviarEmail(rbFX880, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                    end;
            end
                //////////////

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PFC') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;

                // Pedido Pré-Impresso para Epson LX300...

        //            pfccodigocliente.Caption := C_InvoiceCODIGOCLIENTE.AsString;
        //            pfcnome.Caption := C_InvoiceNOME.AsString;
        //            pfcendereco.Caption := C_InvoiceENDERECO.AsString;
        //            pfccidade.Caption := C_InvoiceCIDADEUFZIP.AsString;
        //            pfcfone1.Caption := C_InvoiceFONE1.AsString;
        //            pfccpfcnpj.Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.AsString);

        //            pfctit2campo1.Caption := C_InvoiceTIT2_CAMPO1.AsString;
        //            pfctit2campo2.Caption := C_InvoiceTIT2_CAMPO2.AsString;
        //            pfctit2campo3.Caption := C_InvoiceTIT2_CAMPO3.AsString;
        //            pfctit2campo4.Caption := C_InvoiceTIT2_CAMPO4.AsString;
        //            pfccampo01.Caption := C_InvoiceCAMPO01.AsString;
        //            pfccampo02.Caption := C_InvoiceCAMPO02.AsString;
        //            pfccampo03.Caption := C_InvoiceCAMPO03.AsString;
        //            pfccampo04.Caption := C_InvoiceCAMPO04.AsString;
                //      C_Itens.Filtered := false;
                //      C_Itens.Filter 	 := 'TipoItem <> 3';
                //      C_Itens.Filtered := true;

                if ImpressaoPara = 'S' then
                    begin
                        pPedidoCompleto.DeviceType := 'Printer';
                        pPedidoCompleto.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                pPedidoCompleto.DeviceType := 'Printer';
                                pPedidoCompleto.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        pPedidoCompleto.DeviceType := 'Screen';
                        pPedidoCompleto.Print;
                    end
                else
                    begin
                        EnviarEmail(pPedidoCompleto, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                    end;
            end

                ///////////////
        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PPG') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;
                if ImpressaoPara = 'S' then
                    begin
                        ppPreImpresso_II.DeviceType := 'Printer';
                        ppPreImpresso_II.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                ppPreImpresso_II.DeviceType := 'Printer';
                                ppPreImpresso_II.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        ppPreImpresso_II.DeviceType := 'Screen';
                        ppPreImpresso_II.Print;
                    end
                else
                    begin
                        EnviarEmail(ppPreImpresso_II, DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.jpg');
                    end;
            end

        else if (CB_Documento = 'S') and (Copy(sModelo, 1, 3) = 'PTF') then
            begin
                C_Servicos.CreateDataSet;
                with C_Itens do
                    begin
                        First;
                        while not EOF do
                            begin
                                if C_ItensTipoItem.Value = 3 then
                                    begin
                                        with C_Servicos do
                                            begin
                                                Append;
                                                FieldByName('Codigo').AsString := C_ItensCodigo.AsString;
                                                FieldByName('Descricao').AsString := C_ItensItemDesc.AsString;
                                                FieldByName('Und').AsString := C_ItensUnidade.AsString;
                                                FieldByName('Quantidade').AsCurrency := C_ItensQuantidade.AsCurrency;
                                                FieldByName('Preco').AsCurrency := C_ItensPreco.AsCurrency;
                                                FieldByName('SubTotal').AsCurrency := C_ItensTotal.AsCurrency;
                                                Post;
                                                nTotalServ := nTotalServ + C_ItensTotal.AsCurrency;
                                            end;
                                    end
                                else
                                    nTotalProd := nTotalProd + C_ItensTotal.AsCurrency;
                                Next;
                            end;
                    end;
                sTipoCabecalho := DMProjeto.getCabecalho(sFormName);
                if sTipoCabecalho = 'CC' then
                    begin
                        zrEmpresa.Caption := DMProjeto.sNomeEmpresa;
                        ZRLabel234.Caption := DMProjeto.sEnderecoEmpresa;
                        ZRLabel235.Caption := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
                        ZRLabel237.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
                    end;

                ZRLabel141.Caption := C_InvoiceCODIGOCLIENTE.AsString;
                ZRLabel142.Caption := C_InvoiceNOME.AsString;
                ZRLabel143.Caption := C_InvoiceENDERECO.AsString;
                ZRLabel249.Caption := C_InvoiceCPF_CNPJ.AsString;
                ZRLabel248.Caption := C_InvoiceCIDADEUFZIP.AsString;
                ZRLabel146.Caption := C_InvoiceFONE1.AsString;
                ZRLabelSubTotal.Visible := bCB_SUBTOTAL;
                ZRLabelTotalItens.Visible := bCB_SUBTOTAL;

                if ImpressaoPara = 'S' then
                    begin
                        zrTamanhoFixo.Options.Destination := zrdPrinter;
                        zrTamanhoFixo.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrTamanhoFixo.Print;
                    end
                else if ImpressaoPara = 'C' then
                    begin
                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                            begin
                                zrTamanhoFixo.Options.Destination := zrdPrinter;
                                zrTamanhoFixo.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                                zrTamanhoFixo.Print;
                            end;
                    end
                else if ImpressaoPara = 'N' then
                    begin
                        zrTamanhoFixo.Options.Destination := zrdPrinter;
                        zrTamanhoFixo.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrTamanhoFixo.Preview;
                    end
                else
                    begin
                        zrTamanhoFixo.Options.Destination := zrdPrinter;
                        zrTamanhoFixo.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                        zrTamanhoFixo.Print;
                        EnviarEmail(nil, zrTamanhoFixo.FileName);
                    end;
            end;
        //Marcos
        {Escrever aki o Codigo de inpressao da solicitação de almox.}
        if (DMProjeto.Parametro('MultiAlmox') = 'S') and (C_InvoiceCB_SOLICITACAOALMOX.Value = 'S') then
            begin
                with DMProjeto.q_sql do
                    begin
                        Close;
                        Sql.Text := 'Select ALMOXARIFADO, DESCRICAO FROM ALMOXARIFADOS WHERE ORDENARRETIRADA = ''S'' ';
                        Open;
                        if not (DMProjeto.q_sql.FieldByName('ALMOXARIFADO').IsNull) then
                            begin
                                with C_Itens do
                                    begin
                                        Filter := ' ALMOXARIFADO = ' + DMProjeto.q_sql.FieldByName('ALMOXARIFADO').AsString;
                                        Filtered := True;
                                        if RecordCount > 0 then
                                            begin
                                                ZRLabel124.Caption := DMProjeto.sNomeEmpresa;
                                                ZRLabel123.Caption := DMProjeto.sEnderecoEmpresa;
                                                ZRLabel122.Caption := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
                                                ZRLabel125.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
                                                if ImpressaoPara = 'S' then
                                                    begin
                                                        ZQtdAlmox.Print;
                                                    end
                                                else if ImpressaoPara = 'C' then
                                                    begin
                                                        if DlgMsg.ShowMsg(8016, ['Op.Num.: ' + C_InvoiceINVOICE.AsString]) = 100 then
                                                            begin
                                                                ZQtdAlmox.Print;
                                                            end;
                                                    end
                                                else if ImpressaoPara = 'N' then
                                                    begin
                                                        ZQtdAlmox.Preview;
                                                    end
                                                else
                                                    begin
                                                        ZQtdAlmox.Options.Destination := zrdFile;
                                                        ZQtdAlmox.Options.FileName := DMProjeto.RelPath + C_InvoiceDescricao.asString + ' ' + C_InvoiceInvoice.asstring + '.txt';
                                                        ZQtdAlmox.Print;
                                                        EnviarEmail(nil, ZQtdAlmox.FileName);
                                                    end;
                                            end; {If RecordCount > 0 Then}
                                    end; {With C_Itens do Begin}
                            end; {If Not (DMProjeto.q_sql.FieldByName('ALMOXARIFADO').IsNull)}
                    end; {With C_Itens do Begin}
            end; { If (DMProjeto.Parametro('MultiAlmox')  = 'S') And (C_InvoiceCB_SOLICITACAOALMOX.Value = 'S') Then Begin }
    finally
        // Fechando os Datasets
        C_Invoice.Close;
        C_Itens.Close;
        C_CompItens.Close;
        C_Parcelas.Close;
    end;
end;

procedure TRptInvoices.DefineColunas;
var slVisivel, slPosicaoInicial: TStringList;
    Controle, ControleShp, ControleLbl, ControleLn, ControleDbt: TppPrintable;
    nInteiro, i, nCol, nColunas, nTamFonte: integer;
    nLeft, nWidth, nTotalWidth, nTotalWidthVisivel, nPixel: double;
begin
    {Carregar valores padrão}
    nTamFonte := StrToIntDef(DMProjeto.Parametro('TamanhoFonte'), 9);
    if slPosicaoInicial = nil then
        slPosicaoInicial := TStringList.Create;
    if slPosicaoInicial.Count = 0 then
        for i := 0 to slColunas.Count - 1 do
            begin
                ControleShp := TppPrintable(Sender.FindComponent('shp' + SeparaStrings(slColunas[i], ';', 1)));
                ControleLbl := TppPrintable(Sender.FindComponent('lb' + SeparaStrings(slColunas[i], ';', 1)));
                ControleLn := TppPrintable(Sender.FindComponent('ln' + SeparaStrings(slColunas[i], ';', 1)));
                ControleDbt := TppPrintable(Sender.FindComponent('dbt' + SeparaStrings(slColunas[i], ';', 1)));
                ControleDbt.Font.Size := nTamFonte;
                slPosicaoInicial.Add(ControleShp.Name + ';' + FloatToStr(ControleShp.Left) + ';' + FloatToStr(ControleShp.Width));
                slPosicaoInicial.Add(ControleLbl.Name + ';' + FloatToStr(ControleLbl.Left) + ';' + FloatToStr(ControleLbl.Width));
                slPosicaoInicial.Add(ControleLn.Name + ';' + FloatToStr(ControleLn.Left) + ';' + FloatToStr(ControleLn.Width));
                slPosicaoInicial.Add(ControleDbt.Name + ';' + FloatToStr(ControleDbt.Left) + ';' + FloatToStr(ControleDbt.Width));
            end;

    {Setar Valores Padrão}
    for i := 0 to slPosicaoInicial.Count - 1 do
        begin
            Controle := TppPrintable(Sender.FindComponent(SeparaStrings(slPosicaoInicial[i], ';', 1)));
            Controle.Left := StrToFloat(SeparaStrings(slPosicaoInicial[i], ';', 2));
            Controle.Width := StrToFloat(SeparaStrings(slPosicaoInicial[i], ';', 3));
            Controle.Visible := true;
        end;
    nColunas := slColunas.Count;
    nTotalWidth := 0;
    nTotalWidthVisivel := 0;
    nPixel := 0;
    slVisivel := TStringlist.Create;

    {Retirar as Colunas não visível}
    for i := 0 to nColunas - 1 do
        begin
            ControleShp := TppPrintable(Sender.FindComponent('shp' + SeparaStrings(slColunas[i], ';', 1)));
            nTotalWidth := nTotalWidth + ControleShp.Width;
            ControleLbl := TppPrintable(Sender.FindComponent('lb' + SeparaStrings(slColunas[i], ';', 1)));
            ControleLn := TppPrintable(Sender.FindComponent('ln' + SeparaStrings(slColunas[i], ';', 1)));
            ControleDbt := TppPrintable(Sender.FindComponent('dbt' + SeparaStrings(slColunas[i], ';', 1)));
            if uppercase(SeparaStrings(slColunas[i], ';', 2)) <> 'S' then
                begin
                    ControleShp.Visible := false;
                    ControleLbl.Visible := false;
                    ControleLn.Visible := false;
                    ControleDbt.Visible := false;
                    nCol := i;
                    for nCol := i + 1 to nColunas do
                        begin
                            ControleShp := TppPrintable(Sender.FindComponent('shp' + SeparaStrings(slColunas[nCol - 1], ';', 1)));
                            ControleShp.Left := ControleShp.Left - ControleShp.Width + 1;
                            ControleLbl := TppPrintable(Sender.FindComponent('lb' + SeparaStrings(slColunas[nCol - 1], ';', 1)));
                            ControleLbl.Left := ControleShp.Left;
                            ControleLn := TppPrintable(Sender.FindComponent('ln' + SeparaStrings(slColunas[nCol - 1], ';', 1)));
                            ControleLn.Left := ControleShp.Left;
                        end;
                end
            else
                begin
                    ControleShp.Visible := true;
                    ControleLbl.Visible := true;
                    ControleLn.Visible := true;
                    ControleDbt.Visible := true;
                    slVisivel.Add(SeparaStrings(slColunas[i], ';', 1) + ';' + SeparaStrings(slColunas[i], ';', 3) + ';' + FloatToStr(nPixel));
                    nTotalWidthVisivel := nTotalWidthVisivel + ControleShp.Width;
                end;
        end;
    nTotalWidth := nTotalWidth - (nColunas - 1);
    nTotalWidthVisivel := nTotalWidthVisivel - (slColunas.Count - 1);
    nLeft := nLeftInicial;
    nWidth := 0;
    nPixel := 0;

    {Posicionar e Aumentar a largura de modo ponderado}
    for i := 0 to slVisivel.Count - 1 do
        begin
            ControleShp := TppPrintable(Sender.FindComponent('shp' + SeparaStrings(slVisivel[i], ';', 1)));
            ControleLbl := TppPrintable(Sender.FindComponent('lb' + SeparaStrings(slVisivel[i], ';', 1)));
            ControleLn := TppPrintable(Sender.FindComponent('ln' + SeparaStrings(slVisivel[i], ';', 1)));
            ControleDbt := TppPrintable(Sender.FindComponent('dbt' + SeparaStrings(slVisivel[i], ';', 1)));

            nWidth := (ControleShp.Width + ((nTotalWidth - nTotalWidthVisivel) * (ControleShp.Width / nTotalWidthVisivel)));
            nInteiro := Round(nWidth);
            if nLeft = nLeftInicial then
                ControleShp.Left := nLeft
            else
                begin
                    nPixel := nPixel + 1;
                    ControleShp.Left := nLeft - nPixel;
                end;

            if i <> (slVisivel.Count - 1) then
                begin
                    ControleShp.Width := nInteiro + iif(bModeloEconomico, -3, 0); //aqui
                    ControleLbl.Width := ControleShp.Width;
                    ControleDbt.Width := ControleShp.Width - 10;
                end
            else
                begin
                    ControleShp.Width := nTotalWidth - (ControleShp.Left - nLeftInicial) + iif(bModeloEconomico, -3, 0); // aqui
                    ControleLbl.Width := ControleShp.Width;
                    ControleDbt.Width := ControleShp.Width - 10;
                end;

            Controlelbl.Left := ControleShp.Left;
            Controleln.Left := ControleShp.Left + iif(bModeloEconomico, ControleShp.Width, 0); //aqui
            ControleDbt.Left := ControleShp.Left + 5;

            nLeft := nLeft + ControleShp.Width + iif(bModeloEconomico, 3, 0); // aqui
        end;

    Controle := TppPrintable(Sender.FindComponent('dbtDescComplementar'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle.Left := TppPrintable(Sender.FindComponent('dbtDescricao')).Left;
            Controle.Width := TppPrintable(Sender.FindComponent('dbtDescricao')).Width;
        end;

    Controle := TppPrintable(Sender.FindComponent('subComposicaoItens'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao'));
            ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao'));
            ControleLn := TppPrintable(Sender.FindComponent('dbtUnidComposicao'));
            Controle.Left := ControleDbt.Left + 5;
            ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
            ControleLbl.Left := ControleDbt.Left + 5 + Controle.Width + 4 + ControleLn.Width + 3;
            ControleLbl.Width := ControleDbt.Width - Controle.Width - ControleLn.Width - 12;
        end;

    Controle := TppPrintable(Sender.FindComponent('subComposicaoItens2'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao2'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao2'));
            ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao2'));
            ControleLn := TppPrintable(Sender.FindComponent('dbtUnidComposicao2'));
            Controle.Left := ControleDbt.Left + 5;
            ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
            ControleLbl.Left := ControleDbt.Left + 5 + Controle.Width + 4 + ControleLn.Width + 3;
            ControleLbl.Width := ControleDbt.Width - Controle.Width - ControleLn.Width - 12;
        end;

    Controle := TppPrintable(Sender.FindComponent('subComposicaoItens3'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao3'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao3'));
            ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao3'));
            ControleLn := TppPrintable(Sender.FindComponent('dbtUnidComposicao3'));
            Controle.Left := ControleDbt.Left + 5;
            ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
            ControleLbl.Left := ControleDbt.Left + 5 + Controle.Width + 4 + ControleLn.Width + 3;
            ControleLbl.Width := ControleDbt.Width - Controle.Width - ControleLn.Width - 12;
        end;

    Controle := TppPrintable(Sender.FindComponent('subComposicaoItens4'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao4'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao4'));
            ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao4'));
            ControleLn := TppPrintable(Sender.FindComponent('dbtUnidComposicao4'));
            Controle.Left := ControleDbt.Left + 5;
            ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
            ControleLbl.Left := ControleDbt.Left + 5 + Controle.Width + 4 + ControleLn.Width + 3;
            ControleLbl.Width := ControleDbt.Width - Controle.Width - ControleLn.Width - 12;
        end;

    {Felipe - Pedido Meia Folha Formulario Continuo LX 300}
    Controle := TppPrintable(Sender.FindComponent('subComposicaoItens5'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao5'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao5'));
            ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao5'));
            ControleLn := TppPrintable(Sender.FindComponent('dbtUnidComposicao5'));
            Controle.Left := ControleDbt.Left + 5;
            ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
            ControleLbl.Left := ControleDbt.Left + 5 + Controle.Width + 4 + ControleLn.Width + 3;
            ControleLbl.Width := ControleDbt.Width - Controle.Width - ControleLn.Width - 12;
        end;

    Controle := TppPrintable(Sender.FindComponent('shpSubTotalProd2'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            ControleDbt := TppPrintable(Sender.FindComponent('shpSubTotal2'));
            ControleLbl := TppPrintable(Sender.FindComponent('lbSubTotalProd2'));
            Controle.Left := ControleDbt.Left;
            Controle.Width := ControleDbt.Width;
            ControleLbl.Left := ControleDbt.Left - ControleLbl.Width - 5;
            Controle := TppPrintable(Sender.FindComponent('dbtSubTotalProd2'));
            Controle.Left := ControleDbt.Left;
            Controle.Width := ControleDbt.Width - 3;
        end;

    Controle := TppPrintable(Sender.FindComponent('dbtSubTotal'));
    if Controle.Visible then
        begin
            Controle := TppPrintable(Sender.FindComponent('dbtTotalItem'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtSubTotal'));
            Controle.Left := ControleDbt.Left;
            Controle.Width := ControleDbt.Width;
            Controle := TppPrintable(Sender.FindComponent('shpTotalItem'));
            ControleDbt := TppPrintable(Sender.FindComponent('shpSubTotal'));
            Controle.Left := ControleDbt.Left;
            Controle.Width := ControleDbt.Width;
        end
    else
        begin
            TppPrintable(Sender.FindComponent('dbtTotalItem')).Left := 651;
            TppPrintable(Sender.FindComponent('shpTotalItem')).Left := 645;
        end;

    Controle := TppPrintable(Sender.FindComponent('shpSubTotalItem3'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            ControleShp := TppPrintable(Sender.FindComponent('shpSubTotal3'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtSubTotalItem3'));
            Controle.Left := ControleShp.Left;
            Controle.Width := ControleShp.Width;
            ControleDbt.Width := ControleShp.Width - 3;
            ControleDbt.Left := ControleShp.Left;
        end;

    Controle := TppPrintable(Sender.FindComponent('shpTotalPorTipo'));
    if (Controle <> nil) and (Controle.Visible) then
        begin
            ControleShp := TppPrintable(Sender.FindComponent('dbtSubTotal3'));
            ControleDbt := TppPrintable(Sender.FindComponent('dbtTotalPorTipo'));
            Controle.Left := ControleShp.Left;
            Controle.Width := ControleShp.Width;
            ControleDbt.Width := ControleShp.Width;
            ControleDbt.Left := ControleShp.Left;
            ControleDbt := TppPrintable(Sender.FindComponent('rgTotalItens3'));
            ControleDbt.Left := ControleShp.Left - (ControleDbt.Width - ControleShp.Width);
            ControleDbt := TppPrintable(Sender.FindComponent('rgDesconto3'));
            ControleDbt.Left := ControleShp.Left - (ControleDbt.Width - ControleShp.Width);
            ControleDbt := TppPrintable(Sender.FindComponent('rgTotal3'));
            ControleDbt.Left := ControleShp.Left - (ControleDbt.Width - ControleShp.Width);
        end;

end;

function TRptInvoices.getColunasMovimento;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_funcionario, cb_codigo, cb_referencia, cb_unidade, ' +
                'cb_preco, cb_subtotal, cb_coluna1, cb_coluna2, cb_coluna3, cb_coluna4 ' +
                'from tiposmovimento where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Funcionario' + ';' + iif(sTipoImpressao = 'P', fieldbyname('cb_funcionario').AsString, 'N'));
            slColunas.Add('Codigo' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao;S');
            slColunas.Add('Referencia;' + fieldbyname('cb_referencia').AsString);
            slColunas.Add('Unidade;' + fieldbyname('cb_unidade').AsString);
            slColunas.Add('Quantidade;S');
            slColunas.Add('Preco;' + fieldbyname('cb_preco').AsString);
            slColunas.Add('SubTotal;' + fieldbyname('cb_subtotal').AsString);
            slColunas.Add('Coluna1' + ';' + fieldbyname('cb_coluna1').AsString);
            slColunas.Add('Coluna2' + ';' + fieldbyname('cb_coluna2').AsString);
            slColunas.Add('Coluna3' + ';' + fieldbyname('cb_coluna3').AsString);
            slColunas.Add('Coluna4' + ';' + fieldbyname('cb_coluna4').AsString);
            close;
        end;
    result := slColunas;
end;

function TRptInvoices.getColunasProdServ;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_funcionario, cb_codigo, cb_referencia, cb_unidade, ' +
                'cb_preco, cb_subtotal, cb_coluna1, cb_coluna2, cb_coluna3, cb_coluna4 ' +
                'from tiposmovimento where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Funcionario2' + ';' + iif(sTipoImpressao = 'P', fieldbyname('cb_funcionario').AsString, 'N'));
            slColunas.Add('Codigo2' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao2;S');
            slColunas.Add('Referencia2;' + fieldbyname('cb_referencia').AsString);
            slColunas.Add('Unidade2;' + fieldbyname('cb_unidade').AsString);
            slColunas.Add('Quantidade2;S');
            slColunas.Add('Preco2;' + fieldbyname('cb_preco').AsString);
            slColunas.Add('SubTotal2;' + fieldbyname('cb_subtotal').AsString);
            slColunas.Add('Coluna2_1' + ';' + fieldbyname('cb_coluna1').AsString);
            slColunas.Add('Coluna2_2' + ';' + fieldbyname('cb_coluna2').AsString);
            slColunas.Add('Coluna2_3' + ';' + fieldbyname('cb_coluna3').AsString);
            slColunas.Add('Coluna2_4' + ';' + fieldbyname('cb_coluna4').AsString);
            close;
        end;
    result := slColunas;
end;

function TRptInvoices.getColunasEconomico;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_funcionario, cb_codigo, cb_referencia, cb_unidade, ' +
                'cb_preco, cb_subtotal, cb_coluna1, cb_coluna2, cb_coluna3, cb_coluna4 ' +
                'from tiposmovimento where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Funcionario3' + ';' + iif(sTipoImpressao = 'P', fieldbyname('cb_funcionario').AsString, 'N'));
            slColunas.Add('Codigo3' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao3;S');
            slColunas.Add('Referencia3;' + fieldbyname('cb_referencia').AsString);
            slColunas.Add('Unidade3;' + fieldbyname('cb_unidade').AsString);
            slColunas.Add('Quantidade3;S');
            slColunas.Add('Preco3;' + fieldbyname('cb_preco').AsString);
            slColunas.Add('SubTotal3;' + fieldbyname('cb_subtotal').AsString);
            slColunas.Add('Coluna3_1' + ';' + fieldbyname('cb_coluna1').AsString);
            slColunas.Add('Coluna3_2' + ';' + fieldbyname('cb_coluna2').AsString);
            slColunas.Add('Coluna3_3' + ';' + fieldbyname('cb_coluna3').AsString);
            slColunas.Add('Coluna3_4' + ';' + fieldbyname('cb_coluna4').AsString);
            close;
        end;
    result := slColunas;
end;

function TRptInvoices.getColunasMeiaFolha;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_funcionario, cb_codigo, cb_referencia, cb_unidade, ' +
                'cb_preco, cb_subtotal, cb_coluna1, cb_coluna2, cb_coluna3, cb_coluna4 ' +
                'from tiposmovimento where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Funcionario4' + ';' + iif(sTipoImpressao = 'P', fieldbyname('cb_funcionario').AsString, 'N'));
            slColunas.Add('Codigo4' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao4;S');
            slColunas.Add('Referencia4;' + fieldbyname('cb_referencia').AsString);
            slColunas.Add('Unidade4;' + fieldbyname('cb_unidade').AsString);
            slColunas.Add('Quantidade4;S');
            slColunas.Add('Preco4;' + fieldbyname('cb_preco').AsString);
            slColunas.Add('SubTotal4;' + fieldbyname('cb_subtotal').AsString);
            slColunas.Add('Coluna4_1' + ';' + fieldbyname('cb_coluna1').AsString);
            slColunas.Add('Coluna4_2' + ';' + fieldbyname('cb_coluna2').AsString);
            slColunas.Add('Coluna4_3' + ';' + fieldbyname('cb_coluna3').AsString);
            slColunas.Add('Coluna4_4' + ';' + fieldbyname('cb_coluna4').AsString);
            close;
        end;
    result := slColunas;
end;

function TRptInvoices.getColunasMeiaFolhaLX300;
var
    slColunas: TStringList;
begin
    try
        slColunas := TStringList.Create;

        with DMProjeto.Q_SQL2 do
            begin
                Close;
                SQL.Text := 'select cb_funcionario, cb_codigo, cb_referencia, cb_unidade, ' +
                    'cb_preco, cb_subtotal, cb_coluna1, cb_coluna2, cb_coluna3, cb_coluna4 ' +
                    'from tiposmovimento where tipomovimento = :tipo';
                params[0].AsInteger := TipoMovimento;
                open;
                slColunas.Add('Funcionario5' + ';' + iif(sTipoImpressao = 'P', fieldbyname('cb_funcionario').AsString, 'N'));
                slColunas.Add('Codigo5' + ';' + fieldbyname('cb_codigo').AsString);
                slColunas.Add('Descricao5;S');
                slColunas.Add('Referencia5;' + fieldbyname('cb_referencia').AsString);
                slColunas.Add('Unidade5;' + fieldbyname('cb_unidade').AsString);
                slColunas.Add('Quantidade5;S');
                slColunas.Add('Preco5;' + fieldbyname('cb_preco').AsString);
                slColunas.Add('SubTotal5;' + fieldbyname('cb_subtotal').AsString);
                slColunas.Add('Coluna5_1' + ';' + fieldbyname('cb_coluna1').AsString);
                slColunas.Add('Coluna5_2' + ';' + fieldbyname('cb_coluna2').AsString);
                slColunas.Add('Coluna5_3' + ';' + fieldbyname('cb_coluna3').AsString);
                slColunas.Add('Coluna5_4' + ';' + fieldbyname('cb_coluna4').AsString);

                Close;
            end;

        Result := slColunas;

    except
        Application.MessageBox('Erro no processo de impressão - Pedido Meia Folha LX300', 'Erro', MB_ICONERROR);
        Exit;
    end;
end;

function TRptInvoices.getColunasOrcamento;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_codigo, cb_referencia, cb_fabricante ' +
                'from tiposmovimento ' +
                'where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Codigo_O' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao_O;S');
            slColunas.Add('Referencia_O;' + fieldbyname('cb_referencia').AsString);
            slColunas.Add('Fabricante_O;' + fieldbyname('cb_fabricante').AsString);
            slColunas.Add('Unidade_O;S');
            slColunas.Add('Quantidade_O;S');
            slColunas.Add('Preco_O;S');
            slColunas.Add('SubTotal_O;S');
            close;
        end;
    result := slColunas;
end;

function TRptInvoices.getColunasPropostas;
var slColunas: TStringList;
begin
    slColunas := TStringList.Create;
    with DMProjeto.Q_SQL2 do
        begin
            close;
            sql.text := 'select cb_codigo, cb_referencia, cb_fabricante, cb_registro ' +
                'from tiposmovimento ' +
                'where tipomovimento = :tipo';
            params[0].AsInteger := TipoMovimento;
            open;
            slColunas.Add('Sequencial_P' + ';' + fieldbyname('cb_codigo').AsString);
            slColunas.Add('Descricao_P;S');
            slColunas.Add('Fabricante_P;' + fieldbyname('cb_fabricante').AsString);
            slColunas.Add('Registro_P;' + fieldbyname('cb_registro').AsString);
            slColunas.Add('Unidade_P;S');
            slColunas.Add('Quantidade_P;S');
            slColunas.Add('Preco_P;S');
            slColunas.Add('SubTotal_P;S');
            close;
        end;
    result := slColunas;
end;

procedure TRptInvoices.ppDBText14GetText(Sender: TObject;
    var Text: string);
begin
    Text := 'Fax: ' + Text;
end;

procedure TRptInvoices.ZRLabel86BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := UpperCase(C_InvoiceDescricao.AsString) + ' #' + C_InvoiceInvoice.AsString;
end;

procedure TRptInvoices.ppDetailBand6BeforePrint(Sender: TObject);
begin
    rgItens.Brush.Color := clWhite;
    dbtDescricao2.Font.Color := clBlack;
    if C_ItensTIPOITEM.Value = 5 then // Juros
        dbtDescricao2.Font.Color := clBlue
    else if C_ItensTIPOITEM.Value = 6 then // Descontos
        dbtDescricao2.Font.Color := clRed
    else if C_ItensTIPOITEM.Value = 7 then
        begin // SubTotal
            rgItens.Brush.Color := $00EFEFEF;
        end;
end;

procedure TRptInvoices.ppLabel15GetText(Sender: TObject; var Text: string);
begin
    Text := formatfloat('#,###,##0.00', nTotalServ);
end;

procedure TRptInvoices.dbtSubTotalProd2GetText(Sender: TObject;
    var Text: string);
begin
    Text := formatfloat('#,###,##0.00', nTotalProd);
end;

procedure TRptInvoices.DetalheItensBeforePrint(Sender: TObject);
begin
    rgItens3.Brush.Color := clWhite;
    dbtDescricao3.Font.Color := clBlack;
    if C_ItensTIPOITEM.Value = 5 then // Juros
        dbtDescricao3.Font.Color := clBlue
    else if C_ItensTIPOITEM.Value = 6 then // Descontos
        dbtDescricao3.Font.Color := clRed
    else if C_ItensTIPOITEM.Value = 7 then
        begin // SubTotal
            rgItens3.Brush.Color := $00EFEFEF;
        end;
    //  ppLine7.Visible := ppDetailBand10.Count = 19;
end;

procedure TRptInvoices.ppDBText141GetText(Sender: TObject;
    var Text: string);
begin
    Text := Text + ': ' + C_InvoiceData.AsString;
end;

procedure TRptInvoices.DetalheSimplesBeforePrint(Sender: TObject);
begin
    rgItens4.Brush.Color := clWhite;
    dbtDescricao4.Font.Color := clBlack;
    if C_ItensTIPOITEM.Value = 5 then // Juros
        dbtDescricao4.Font.Color := clBlue
    else if C_ItensTIPOITEM.Value = 6 then // Descontos
        dbtDescricao4.Font.Color := clRed
    else if C_ItensTIPOITEM.Value = 7 then
        begin // SubTotal
            rgItens4.Brush.Color := $00EFEFEF;
        end;
end;

procedure TRptInvoices.ChildDescComplementarBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    DoPrint := C_ItensDescricaoComplementar.AsString <> '';
end;

procedure TRptInvoices.ChildDescComplementar2BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    DoPrint := C_ItensDescricaoComplementar.AsString <> '';
end;

procedure TRptInvoices.ZRVendaRapidaDetailBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    DoPrint := (sTipoItem <> C_ItensDescTipoItem.AsString) and (Copy(C_InvoiceTipoImpressao_OP.AsString, 1, 2) = 'RS');
    sTipoItem := C_ItensDescTipoItem.AsString;
end;

function TRptInvoices.getTipoArquivo(sArquivo: string): string;
var sExt: string;
begin
    sExt := UpperCase(ExtractFileExt(sArquivo));
    sExt := replace(sExt, '.', '');
    if sExt = 'RTF' then
        result := 'RTFFile'
    else if sExt = 'XLS' then
        result := 'ExcelFile'
    else if Copy(sExt, 1, 2) = 'WK' then
        result := 'LotusFile'
    else if sExt = 'QPR' then
        result := 'QuattroFile'
    else if sExt = 'HTM' then
        result := 'HTMLFile'
    else if sExt = 'HTML' then
        result := 'XHTMLFile'
    else if sExt = 'PDF' then
        result := 'PDFFile'
    else if sExt = 'TXT' then
        result := 'ReportTextFile'
    else if sExt = 'JPG' then
        result := 'GraphicFile'
    else if sExt = 'GIF' then
        result := 'GraphicFile'
    else if sExt = 'BMP' then
        result := 'GraphicFile'
    else
        result := 'ArchiveFile';
end;

function TRptInvoices.GerarArquivo(Report: TppReport; Arquivo: string = ''; bEmail: boolean = false): string;
var
    lDeviceClass: TppDeviceClass;
    lFileDevice: TppFileDevice;
    i, nIndice: Integer;
    slArquivos: TStringList;
    sArq, sNome, sFiles: string;
begin
    result := '';

    lDeviceClass := ppDeviceClassForName(getTipoArquivo(Arquivo));
    lFileDevice := TppFileDevice(lDeviceClass.Create(Self));
    lFileDevice.Publisher := Report.Publisher;
    lFileDevice.FileName := Arquivo;
    Report.PrintToDevices;
    lFileDevice.Free;

    sNome := '';
    sFiles := '';
    if Pos(UpperCase(ExtractFileExt(Arquivo)), '.JPG,.BMP,.GIF') > 0 then
        sNome := 'IMG'
    else if Pos(UpperCase(ExtractFileExt(Arquivo)), '.HTM') > 0 then
        sNome := 'RPT';
    if sNome <> '' then
        begin
            slArquivos := getFileList(ExtractFilePath(Arquivo) + sNome + '*' + ExtractFileExt(Arquivo));
            if slArquivos.Count > 0 then
                begin
                    for i := 0 to slArquivos.Count - 1 do
                        begin
                            slArquivos[i] := ExtractFilePath(Arquivo) + slArquivos[i];
                            RenameFile(slArquivos[i], ExtractFilePath(Arquivo) + Copy(ExtractFileName(Arquivo), 1, pos('.', ExtractFileName(Arquivo)) - 1) + iif(slArquivos.Count > 1, IntToStr(i + 1), '') + ExtractFileExt(Arquivo));
                            sFiles := CExp(sFiles, ';') + ExtractFilePath(Arquivo) + Copy(ExtractFileName(Arquivo), 1, pos('.', ExtractFileName(Arquivo)) - 1) + iif(slArquivos.Count > 1, IntToStr(i + 1), '') + ExtractFileExt(Arquivo);
                        end;
                end;
        end;
    slArquivos.Free;
    if sFiles <> '' then
        result := sFiles
    else
        result := Arquivo;
end;

procedure TRptInvoices.EnviarEmail(Report: TppReport; Nome: string);
var sArquivo: string;
begin
    if Report <> nil then
        sArquivo := GerarArquivo(Report, Nome, false);
    sArquivo := Nome;
    SendMail(Nome, // Titulo
        'Segue em anexo.', // corpo da mensagem
        sArquivo, // arquivo
        '', // seu nome
        '', // seu endereco
        '', // nome do destinatário
        ''); // destino
end;

procedure TRptInvoices.dbtUnidadeGetText(Sender: TObject;
    var Text: string);
begin
    if C_ItensTipoItem.Value > 3 then
        Text := '';
end;

procedure TRptInvoices.ppLabel92GetText(Sender: TObject; var Text: string);
begin
    if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then
        Text := '*********'
    else
        Text := Formatfloat('#,###,##0.00', C_InvoiceVALORISS.Value);
end;

procedure TRptInvoices.ppLabel91GetText(Sender: TObject; var Text: string);
begin
    if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then
        Text := '*********'
    else
        Text := iif(DMProjeto.Parametro('AliquotaISS') = '', '5 %', DMProjeto.Parametro('AliquotaISS') + ' %');
end;

procedure TRptInvoices.ppFooterBand11BeforeGenerate(Sender: TObject);
var i: integer;
begin
    if (rbNotaFiscal.PageCount > 1) and (rbNotaFiscal.PageNo <> rbNotaFiscal.PageCount) then
        begin
            lbContinuacao.Visible := true;
            lbContinuacao2.Visible := true;
            for i := 0 to ComponentCount - 1 do
                if Components[i].Tag = 50 then
                    TppPrintable(Components[i]).Visible := false;
        end
    else
        begin
            lbContinuacao.Visible := false;
            lbContinuacao2.Visible := false;
            for i := 0 to ComponentCount - 1 do
                if Components[i].Tag = 50 then
                    TppPrintable(Components[i]).Visible := true;
        end;
end;

procedure TRptInvoices.ppLabel70GetText(Sender: TObject; var Text: string);
begin
    if pos(Copy(C_InvoiceCFOPNota.AsString, 1, 1), '567') > 0 then
        Text := ' x '
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel71GetText(Sender: TObject; var Text: string);
begin
    if pos(Copy(C_InvoiceCFOPNota.AsString, 1, 1), '567') = 0 then
        Text := ' x '
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel67GetText(Sender: TObject; var Text: string);
begin
    if pos(Copy(C_InvoiceCFOPNota.AsString, 1, 1), '567') = 0 then
        Text := ' x '
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel66GetText(Sender: TObject; var Text: string);
begin
    if pos(Copy(C_InvoiceCFOPNota.AsString, 1, 1), '567') > 0 then
        Text := ' x '
    else
        Text := '';
end;

procedure TRptInvoices.ppDBText225GetText(Sender: TObject;
    var Text: string);
begin
    if Text = 'C' then
        Text := '1'
    else
        Text := '2';
end;

procedure TRptInvoices.ppDBText275GetText(Sender: TObject;
    var Text: string);
begin
    if Text = 'C' then
        Text := '1'
    else
        Text := '2';
end;

procedure TRptInvoices.ppLabel68GetText(Sender: TObject; var Text: string);
begin
    if C_InvoiceDesconto.Value <> 0 then
        Text := Formatfloat('#,###,##0.00', (C_InvoiceDesconto.Value / (C_InvoiceTotal.Value + C_InvoiceDesconto.Value)) * C_ItensTotal.Value)
    else
        Text := Formatfloat('#,###,##0.00', 0);
end;

procedure TRptInvoices.dbtDescontoGetText(Sender: TObject;
    var Text: string);
begin
    if C_InvoiceDesconto.Value = 0 then
        Text := '';
end;

procedure TRptInvoices.ppLabel62GetText(Sender: TObject; var Text: string);
begin
    Text := Formatfloat('#,###,##0.00', iif(C_ItensAliqICMS.Value = 0, C_ItensPreco.Value, (100 - C_ItensAliqICMS.Value / 100) * C_ItensPreco.Value));
end;

procedure TRptInvoices.ppLabel61GetText(Sender: TObject; var Text: string);
begin
    Text := Formatfloat('#,###,##0.00', iif(C_ItensAliqICMS.Value = 0, 0, C_ItensAliqICMS.Value / 100 * C_ItensPreco.Value));
end;

procedure TRptInvoices.ppLabel60GetText(Sender: TObject; var Text: string);
begin
    Text := Formatfloat('##0.00 %', C_ItensAliqICMS.Value);
end;

procedure TRptInvoices.ppLabel64GetText(Sender: TObject; var Text: string);
begin
    Text := 'Importa a presente proposta em R$ ' + formatfloat('#,###,##0.00', dbtTotal.Value) + ' ' +
        '(' + LowerCase(Util2.Extenso(dbtTotal.Value)) + ').';
end;

procedure TRptInvoices.lbExtensoPrecoGetText(Sender: TObject;
    var Text: string);
begin
    Text := CurrencyString + ' ' + formatfloat('#,###,##0.00', C_ItensPreco.Value) +
        ' (' + Util2.Extenso(C_ItensPreco.Value) + ').';
end;

procedure TRptInvoices.lbExtensoTotalGetText(Sender: TObject;
    var Text: string);
begin
    Text := CurrencyString + ' ' + formatfloat('#,###,##0.00', C_ItensTotal.Value) +
        ' (' + Util2.Extenso(C_ItensTotal.Value) + ').';
end;

procedure TRptInvoices.ppDBText171GetText(Sender: TObject;
    var Text: string);
begin
    if C_ItensTipoItem.Value = 1 then
        Text := '';
end;

procedure TRptInvoices.ppLabel69GetText(Sender: TObject; var Text: string);
begin
    if C_InvoiceDesconto.Value = 0 then
        Text := '';
end;

procedure TRptInvoices.ppLabel7GetText(Sender: TObject; var Text: string);
begin
    if Text = 'C' then
        Text := 'X'
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel13GetText(Sender: TObject; var Text: string);
begin
    if Text <> 'C' then
        Text := 'X'
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel93GetText(Sender: TObject; var Text: string);
begin
    if C_InvoiceDesconto.Value = 0 then
        Text := '';
end;

procedure TRptInvoices.ppLabel14GetText(Sender: TObject; var Text: string);
begin
    if Text = 'C' then
        Text := 'X'
    else
        Text := '';
end;

procedure TRptInvoices.ppLabel23GetText(Sender: TObject; var Text: string);
begin
    if Text <> 'C' then
        Text := 'X'
    else
        Text := '';
end;

procedure TRptInvoices.ppDBText195GetText(Sender: TObject;
    var Text: string);
begin
    if NumeroNota > 0 then
        Text := formatfloat('0000000', NumeroNota);
end;

procedure TRptInvoices.ppDBText204GetText(Sender: TObject;
    var Text: string);
begin
    Text := MascaraCPFCNPJ(Text);
end;

procedure TRptInvoices.ppDBText217GetText(Sender: TObject;
    var Text: string);
begin
    if lbContinuacao.Visible then
        Text := '*********';
end;

procedure TRptInvoices.ppDBText269GetText(Sender: TObject;
    var Text: string);
begin
    if lbContinuacao.Visible then
        Text := '*********';
end;

procedure TRptInvoices.ppDBText266GetText(Sender: TObject;
    var Text: string);
begin
    if lbContinuacao.Visible then
        Text := '';
end;

procedure TRptInvoices.ppDBText267GetText(Sender: TObject;
    var Text: string);
begin
    if lbContinuacaoServ.Visible then
        Text := '*********';
end;

procedure TRptInvoices.ppDBText271GetText(Sender: TObject;
    var Text: string);
begin
    if lbContinuacaoServ.Visible then
        Text := '';
end;

procedure TRptInvoices.ppDBCalc1GetText(Sender: TObject; var Text: string);
begin
    if not lbContinuacaoServ.Visible then
        Text := formatfloat('#,###,##0.00', nTotalServ)
    else
        Text := '*********';
end;

procedure TRptInvoices.rbServicosStartPage(Sender: TObject);
var i: integer;
begin
    if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then
        begin
            lbContinuacaoServ.Visible := true;
            lbContinuacaoServ2.Visible := true;
            for i := 0 to ComponentCount - 1 do
                if Components[i].Tag = 50 then
                    TppPrintable(Components[i]).Visible := false;
        end
    else
        begin
            lbContinuacaoServ.Visible := false;
            lbContinuacaoServ2.Visible := false;
            for i := 0 to ComponentCount - 1 do
                if Components[i].Tag = 50 then
                    TppPrintable(Components[i]).Visible := true;
        end;
end;

procedure TRptInvoices.BaseCalculoISSGetText(Sender: TObject;
    var Text: string);
begin
    Text := formatfloat('#,###,##0.00', nTotalServ);
end;

procedure TRptInvoices.ZRLabel39BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := C_InvoiceDescricao.AsString + ' #' + C_InvoiceInvoice.AsString;
end;

procedure TRptInvoices.ZRLabel44BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := MascaraCPFCNPJ(C_InvoiceCPF_CNPJ.Value);
end;

procedure TRptInvoices.zrChildDescComplementarBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    DoPrint := (C_InvoiceCB_DESCRICAOCOMPLEMENTAR.Value = 'S') and (C_ItensDescricaoComplementar.Value <> '');
end;

procedure TRptInvoices.rgMensagem3Print(Sender: TObject);
begin
    rgMensagem3.Visible := C_InvoiceObs.Value <> '';
end;

procedure TRptInvoices.rbNotaFiscalPreviewFormCreate(Sender: TObject);
begin
    rbNotaFiscal.PreviewForm.WindowState := wsMaximized;
    TppViewer(rbNotaFiscal.PreviewForm.Viewer).ZoomSetting := zspageWidth;
end;

procedure TRptInvoices.rbServicosPreviewFormCreate(Sender: TObject);
begin
    rbServicos.PreviewForm.WindowState := wsMaximized;
    TppViewer(rbServicos.PreviewForm.Viewer).ZoomSetting := zspageWidth;
end;

procedure TRptInvoices.ppDBText307GetText(Sender: TObject;
    var Text: string);
begin
    if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then
        Text := '*********'
    else
        Text := Formatfloat('#,###,##0.00', C_InvoiceBASEINCLUSO.Value);
end;

procedure TRptInvoices.C_ItensCalcFields(DataSet: TDataSet);
begin
    if DataSet.FieldByName('TIPOITEM').AsInteger = 3 then
        DataSet.FieldByName('icCodigoAsterisco').AsString := DataSet.FieldByName('CODIGO').AsString + '*'
    else
        DataSet.FieldByName('icCodigoAsterisco').AsString := DataSet.FieldByName('CODIGO').AsString;

    if DataSet.FieldByName('PrecoCustoLicitacao').AsCurrency > 0 then
        begin
            DataSet.FieldByName('SubTotalLicitacao').AsCurrency := DataSet.FieldByName('PrecoCustoLicitacao').AsCurrency * DataSet.FieldByName('Quantidade').AsCurrency;
            DataSet.FieldByName('PercLucroLicitacao').AsString := FormatFloat(',.00',
                ((DataSet.FieldByName('Total').AsCurrency / DataSet.FieldByName('SubTotalLicitacao').AsCurrency) * 100) - 100) + ' %';
            DataSet.FieldByName('DifSubTotalLicitacao').AsCurrency := DataSet.FieldByName('Total').AsCurrency - DataSet.FieldByName('SubTotalLicitacao').AsCurrency;
        end
    else
        begin
            DataSet.FieldByName('SubTotalLicitacao').AsCurrency := 0;
            DataSet.FieldByName('PercLucroLicitacao').AsString := '0 %';
            DataSet.FieldByName('DifSubTotalLicitacao').AsCurrency := 0;
        end;

end;

procedure TRptInvoices.ZRLabelBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<NumeroPagina>', IntToStr(TZrLabel(Sender).Report.PageCount));
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<TotalPaginas>', IntToStr(TZrLabel(Sender).Report.PageCount));
end;

procedure TRptInvoices.ppDetailBand11BeforeGenerate(Sender: TObject);
begin
    if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then
        begin
            ppLabel91.Text := '*********';
            ppLabel92.Text := '*********';
            ppDBText307.Text := '*********';
        end
    else
        begin
            ppLabel91.Text := iif(DMProjeto.Parametro('AliquotaISS') = '', '5 %', DMProjeto.Parametro('AliquotaISS') + ' %');
            ppLabel92.Text := Formatfloat('#,###,##0.00', C_InvoiceVALORISS.Value);
            ppDBText307.Text := Formatfloat('#,###,##0.00', C_InvoiceBASEINCLUSO.Value);
        end;
end;

procedure TRptInvoices.ZRLabel126BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := 'Ord.Ret. ' + C_InvoiceInvoice.AsString;
end;

procedure TRptInvoices.ZRLabel156BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := 'Autorizo Retirada => ' + DMProjeto.q_sql.FieldByName('DESCRICAO').AsString;
end;

procedure TRptInvoices.zrlDescontoBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin

    zrlDesconto.Caption := 'Desc: ' + FloatToStr(Truncar(((C_InvoiceDesconto.Value * 100) / cTOTALitens.Value), 2)) + '%';
end;

procedure TRptInvoices.C_InvoiceCalcFields(DataSet: TDataSet);
begin
    Dataset.FieldByName('DescontoPerc').Value := Abs((Dataset.FieldByName('Desconto').Value / Dataset.FieldByName('TOTALITENS').Value) * 100);
    Dataset.FieldByName('TotalItensLicitacao').Value := TotalizarItensLicitacao(nIDSaida, nEmpresa, nPDV);
    Dataset.FieldByName('PercentualLucro').Value := TotalizarPercentualLucro(nIDSaida, nEmpresa, nPDV);
    Dataset.FieldByName('Lucro').Value := CalcularLucro(nIDSaida, nEmpresa, nPDV);
end;

procedure TRptInvoices.ppFooterBand_PPGBeforePrint(Sender: TObject);
begin
    if ppPreImpresso_II.PageCount > 1 then
        begin
            ppFooterBand_PPG.PrintOnFirstPage := false;
        end;
end;

procedure TRptInvoices.ppPreImpresso_IIStartFirstPass(Sender: TObject);
begin
    ppFooterBand_PPG.PrintOnFirstPage := true;
end;

procedure TRptInvoices.ppDBText341GetText(Sender: TObject;
    var Text: string);
begin
    Text := Text + ' - ';
end;

procedure TRptInvoices.ppDBText186GetText(Sender: TObject;
    var Text: string);
begin
    Text := IntToStr(Trunc(C_InvoiceVALIDADE.AsDateTime) - Trunc(Now)) + ' Dias.';
end;

procedure TRptInvoices.ppmAlertaContratoPrint(Sender: TObject);
begin
    ppmAlertaContrato.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'AlertaContrato.TXT');
end;

procedure TRptInvoices.ppDBMemo7GetMemo(Sender: TObject; aLines: TStrings);
begin
    aLines.Append(C_ItensITEMDESC.AsString);
    aLines.Append(C_ItensDESCRICAOCOMPLEMENTAR.AsString);
end;

procedure TRptInvoices.ppRichTextIntroducaoPrint(Sender: TObject);
begin
    try
        if FileExists(ExtractFilePath(Application.ExeName) + 'IntroducaoProposta.rtf') then
            ppRichTextIntroducao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'IntroducaoProposta.rtf')
    except
    end

end;

procedure TRptInvoices.ppRichExplicacoesPrint(Sender: TObject);
begin
    try
        if FileExists(ExtractFilePath(Application.ExeName) + 'ExplicacoesProposta.rtf') then
            ppRichExplicacoes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ExplicacoesProposta.rtf')

    except
    end
end;

procedure TRptInvoices.ppDBText412GetText(Sender: TObject;
    var Text: string);
begin
    Text := DMProjeto.sNomeEmpresa;
end;

procedure TRptInvoices.ppDBText414GetText(Sender: TObject;
    var Text: string);
begin
    Text := DMProjeto.sEnderecoEmpresa;
end;

procedure TRptInvoices.ppDBText447GetText(Sender: TObject;
    var Text: string);
begin
    Text := 'CEP: ' + DMProjeto.sCEPEmpresa;
end;

procedure TRptInvoices.pfcInvoiceGetText(Sender: TObject;
    var Text: string);
begin
    Text := UpperCase(C_InvoiceDescricao.AsString) + ' #' + C_InvoiceInvoice.AsString + Chr(32) + C_InvoiceDATA.AsString;
end;

procedure TRptInvoices.ppDBText445GetText(Sender: TObject;
    var Text: string);
begin
    Text := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
end;

procedure TRptInvoices.ppDBText413GetText(Sender: TObject;
    var Text: string);
begin
    Text := FormatDateTime('DD/MM/YYYY hh:mm:ss', now);
end;

procedure TRptInvoices.ppDBText416GetText(Sender: TObject;
    var Text: string);
begin
    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo,F.nome from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := DMProjeto.nFuncionarioLogado;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('nome').Asstring;

end;

procedure TRptInvoices.ppDBText446GetText(Sender: TObject;
    var Text: string);
begin
    text := 'by Synctech';
end;

function TRptInvoices.TotalizarItensLicitacao(idSaida: integer; Empresa: integer; Pdv: integer): Currency;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'select cast(sum(ss.precocustolicitacao * ss.quantidade) as numeric(15,2)) as totallicitacao ' +
                'from saidasitens ss ' +
                'where ss.saida = :saida and ss.empresa = :empresa and ss.pdv = :pdv ';
            ParamByName('saida').AsInteger := idSaida;
            ParamByName('empresa').AsInteger := Empresa;
            ParamByName('pdv').AsInteger := Pdv;
            Open;
            Result := FieldByName('totallicitacao').AsCurrency;
            Close;
        end;
end;

function TRptInvoices.CalcularLucro(idSaida: integer; Empresa: integer; Pdv: integer): Currency;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := ' select Sum(coalesce(case when (ss.precocustolicitacao = 0) Then 0 else ' +
                ' cast((ss.preco * ss.quantidade) - (ss.precocustolicitacao * ss.quantidade) as numeric(15,2)) end,0.00)) as lucro ' +
                ' from saidasitens ss ' +
                ' where ss.saida = :saida and ss.empresa = :empresa and ss.pdv = :pdv ';
            ParamByName('saida').AsInteger := idSaida;
            ParamByName('empresa').AsInteger := Empresa;
            ParamByName('pdv').AsInteger := Pdv;
            Open;
            Result := FieldByName('lucro').AsCurrency;
            Close;
        end;
end;

function TRptInvoices.TotalizarPercentualLucro(idSaida: integer; Empresa: integer; Pdv: integer): Currency;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                Close;
                SQL.Text := ' select coalesce(cast((sum(ss.subtotalitem) / sum(ss.precocustolicitacao * ss.quantidade) * 100) - 100 as numeric(15,2)), 0) as percentual ' +
                    ' from saidasitens ss ' +
                    ' where ss.saida = :saida and ss.empresa = :empresa and ss.pdv = :pdv ';
                ParamByName('saida').AsInteger := idSaida;
                ParamByName('empresa').AsInteger := Empresa;
                ParamByName('pdv').AsInteger := Pdv;
                Open;
                Result := FieldByName('percentual').AsCurrency;
                Close;
            end;
    except
        Result := 0;
    end;
end;

procedure TRptInvoices.PrintPDF();

var
    lDeviceClass: TppDeviceClass;
    lFileDevice: TppFileDevice;
    i, k, w, h, r, top, count, countpages: integer;
    coeff: Currency;
    diretorioImagens: string;
begin
    diretorioImagens := ExtractFilePath(Application.ExeName) + 'ImpressaoPedido';

    if not (DirectoryExists(diretorioImagens)) then
        ForceDirectories(diretorioImagens);

    funcoes.DeleteFilesFromDir(diretorioImagens);

    lDeviceClass := ppDeviceClassForName('GraphicFile');
    lFileDevice := TppFileDevice(lDeviceClass.Create(Self));
    lFileDevice.Publisher := rbPedidoDuasVias.Publisher;
    lFileDevice.FileName := diretorioImagens + '\arquivo.jpg';
    rbPedidoDuasVias.PrintToDevices;
    lFileDevice.Free;

    countpages := funcoes.GetQtdArquivosDir(diretorioImagens, 'JPG');

    PDFDocument := TPDFDocument4.Create(nil);
    PDFDocument.SetLicenseData('demo@demo', 'demo');
    PDFDocument.SetTitle('Pedido 2 Vias', fcANSI);
    PDFDocument.ProducePDFA := False;
    PDFDocument.Compression := coFlate;

    for i := 1 to countpages do
        begin
            count := 1;

            while (count <= 2) do
                begin
                    if (count mod 2) = 0 then
                        top := 500
                    else
                        top := 20;

                    k := PDFDocument.AddImageFromFile(diretorioImagens + '\IMG' + AdicionarStr(InttoStr(i), '0', 4) + '.JPG');
                    w := PDFDocument.GetImageWidth(k);
                    h := PDFDocument.GetImageHeight(k);
                    r := PDFDocument.GetImageResolution(k);
                    coeff := (PDFDocument.PageResolution / IIF(r > 0, r, 1));
                    PDFDocument.DrawImage(k, 10, top, (w * coeff) / 100, (h * coeff) / 100, 0);

                    if (count = 2) and (i < countpages) then
                        PDFDocument.NewPage;

                    Inc(count);
                end;

        end;

    PDFDocument.SaveToFile(diretorioImagens + '\pedido_impressao.pdf', True);
end;

{
     if sExt = 'RTF' then
        result := 'RTFFile'
    else if sExt = 'XLS' then
        result := 'ExcelFile'
    else if Copy(sExt, 1, 2) = 'WK' then
        result := 'LotusFile'
    else if sExt = 'QPR' then
        result := 'QuattroFile'
    else if sExt = 'HTM' then
        result := 'HTMLFile'
    else if sExt = 'HTML' then
        result := 'XHTMLFile'
    else if sExt = 'PDF' then
        result := 'PDFFile'
    else if sExt = 'TXT' then
        result := 'ReportTextFile'
    else if sExt = 'JPG' then
        result := 'GraphicFile'
    else if sExt = 'GIF' then
        result := 'GraphicFile'
    else if sExt = 'BMP' then
        result := 'GraphicFile'
    else
        result := 'ArchiveFile';
}

end.

