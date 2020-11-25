unit Rpt_PedidosCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ppDB, ppDBPipe, IBCustomDataSet, IBQuery, ppBands, ppMemo, ppReport,
  ppSubRpt, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, myChkBox, ppVar, rxGIF, GIFImage, Provider,
  DBClient, DlgMsg;

type
  TRptPedidosCompra = class(TForm)
    rbInvoice: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    rbrgCabecalho: TppRegion;
    ppLine7: TppLine;
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
    ppDetailBand1: TppDetailBand;
    srItens: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    rbRodape: TppFooterBand;
    ppDBMemo1: TppDBMemo;
    dfTITMensagem: TppDBText;
    ppPageStyle1: TppPageStyle;
    shpCodigo: TppShape;
    lbCodigo: TppDBText;
    lbReferencia: TppDBText;
    lbQuantidade: TppDBText;
    lbSubTotal: TppDBText;
    lbColuna1: TppDBText;
    Q_InvoiceDS: TDataSource;
    Q_Invoice: TIBQuery;
    dbpInvoice: TppDBPipeline;
    Q_InvItens: TIBQuery;
    Q_InvItensDS: TDataSource;
    dbpInvItens: TppDBPipeline;
    rbrgCampo02: TppRegion;
    rbrgCampo03: TppRegion;
    rbrgCampo04: TppRegion;
    rbrgCampo01: TppRegion;
    ppShape13: TppShape;
    ppDBText29: TppDBText;
    dfTITCampo1: TppDBText;
    ppShape15: TppShape;
    ppDBText31: TppDBText;
    dfTITCampo2: TppDBText;
    ppShape17: TppShape;
    ppDBText33: TppDBText;
    dfTITCampo3: TppDBText;
    ppShape19: TppShape;
    ppDBText35: TppDBText;
    dfTITCampo4: TppDBText;
    ppShape21: TppShape;
    ppDBText37: TppDBText;
    dfTITLocEnt: TppDBText;
    ppShape23: TppShape;
    ppDBText39: TppDBText;
    dfTITDataEnt: TppDBText;
    ppDBText41: TppDBText;
    ppShape25: TppShape;
    dfTITTipoEnt: TppDBText;
    ppDBText43: TppDBText;
    rbrgSumario: TppRegion;
    rbshItens: TppShape;
    lnCodigo: TppLine;
    lnPreco: TppLine;
    lnSubTotal: TppLine;
    lnColuna1: TppLine;
    lnCliente: TppLine;
    dfTITTipoMov: TppDBText;
    ppShape5: TppShape;
    ppDBText3: TppDBText;
    dfTITTermo: TppDBText;
    dfTITTotal: TppDBText;
    ppDBText9: TppDBText;
    ppShape6: TppShape;
    ppLabel4: TppLabel;
    Q_InvoiceINVOICE: TIBStringField;
    Q_InvoiceDATA: TDateField;
    Q_InvoiceSITUACAO: TIBStringField;
    Q_InvoiceDATAENTREGA: TDateField;
    Q_InvoiceENDERECOENTREGA: TIBStringField;
    Q_InvoiceCIDADEUFZIPENTREGA: TIBStringField;
    Q_InvoiceTIPOENTREGA: TIBStringField;
    Q_InvoiceFONE1: TIBStringField;
    Q_InvoiceFAX: TIBStringField;
    Q_InvoiceCAMPO01: TIBStringField;
    Q_InvoiceCAMPO02: TIBStringField;
    Q_InvoiceCAMPO03: TIBStringField;
    Q_InvoiceCAMPO04: TIBStringField;
    Q_InvoicePLANOPAG: TIBStringField;
    Q_InvoiceOBS: TIBStringField;
    Q_InvoiceNOME: TIBStringField;
    Q_InvoiceENDERECO: TIBStringField;
    Q_InvoiceCIDADEUFZIP: TIBStringField;
    Q_InvItensCODIGO: TIBStringField;
    Q_InvItensITEMDESC: TIBStringField;
    Q_InvItensQUANTIDADE: TIBBCDField;
    Q_InvItensPRECO: TFloatField;
    Q_InvItensTIPOITEM: TIntegerField;
    Q_InvItensTAXAVEL: TIBStringField;
    Q_InvoiceDESCONTO: TIBBCDField;
    Q_InvoiceFRETE: TIBBCDField;
    Q_InvoiceOUTRASDESPESAS: TIBBCDField;
    Q_InvoiceJUROS: TIBBCDField;
    Q_Parcelas: TIBQuery;
    Q_ParcelasDS: TDataSource;
    Q_ParcelasPARCELA: TIntegerField;
    Q_ParcelasVALOR: TIBBCDField;
    Q_ParcelasVENCIMENTO: TDateField;
    dbpParcelas: TppDBPipeline;
    ppShape16: TppShape;
    ppShape18: TppShape;
    rgDesconto: TppRegion;
    ppDBText5: TppDBText;
    ppDBText19: TppDBText;
    rgFrete: TppRegion;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    rgJuros: TppRegion;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    rgDespesas: TppRegion;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    rgTotalInvoice: TppRegion;
    Q_InvoiceTIPOMOVIMENTO: TIntegerField;
    Q_InvoiceDESCRICAO: TIBStringField;
    Q_InvoiceTIPO: TIBStringField;
    Q_InvoiceBAIXAESTOQUE: TIBStringField;
    Q_InvoiceCALCCOMISSAO: TIBStringField;
    Q_InvoicePOSSUIENTREGA: TIBStringField;
    Q_InvoiceBLOQUEARSEATRASADO: TIBStringField;
    Q_InvoiceBLOQUEARPORSITUACAO: TIBStringField;
    Q_InvoiceBLOQUEARPORESTOQUE: TIBStringField;
    Q_InvoiceLIMITEFAVORECIDO: TIBStringField;
    Q_InvoiceSIGLAINICIAL: TIBStringField;
    Q_InvoiceTIT1_DATA: TIBStringField;
    Q_InvoiceTIT2_DATA: TIBStringField;
    Q_InvoiceTIT1_NUMERO: TIBStringField;
    Q_InvoiceTIT2_NUMERO: TIBStringField;
    Q_InvoiceCB_INFOENTREGA: TIBStringField;
    Q_InvoiceTIT1_LOCALENTREGA: TIBStringField;
    Q_InvoiceTIT1_DATAENTREGA: TIBStringField;
    Q_InvoiceTIT1_TIPOENTREGA: TIBStringField;
    Q_InvoiceTIT2_LOCALENTREGA: TIBStringField;
    Q_InvoiceTIT2_DATAENTREGA: TIBStringField;
    Q_InvoiceTIT2_TIPOENTREGA: TIBStringField;
    Q_InvoiceCB_VENDEDOR: TIBStringField;
    Q_InvoiceTIT1_VENDEDOR: TIBStringField;
    Q_InvoiceTIT2_VENDEDOR: TIBStringField;
    Q_InvoiceCB_PEDIDO: TIBStringField;
    Q_InvoiceTIT1_PEDIDO: TIBStringField;
    Q_InvoiceTIT2_PEDIDO: TIBStringField;
    Q_InvoiceCB_COMISSAO: TIBStringField;
    Q_InvoiceTIT1_COMISSAO: TIBStringField;
    Q_InvoiceTIT2_COMISSAO: TIBStringField;
    Q_InvoiceCB_TERMOS: TIBStringField;
    Q_InvoiceTIT1_TERMOS: TIBStringField;
    Q_InvoiceTIT2_TERMOS: TIBStringField;
    Q_InvoiceCB_MENSAGEM: TIBStringField;
    Q_InvoiceTIT1_MENSAGEM: TIBStringField;
    Q_InvoiceTIT2_MENSAGEM: TIBStringField;
    Q_InvoiceCB_DESCONTOS: TIBStringField;
    Q_InvoiceTIT1_DESCONTOS: TIBStringField;
    Q_InvoiceTIT2_DESCONTOS: TIBStringField;
    Q_InvoiceCB_FRETE: TIBStringField;
    Q_InvoiceTIT1_FRETE: TIBStringField;
    Q_InvoiceTIT2_FRETE: TIBStringField;
    Q_InvoiceCB_TOTALITENS: TIBStringField;
    Q_InvoiceTIT1_TOTALITENS: TIBStringField;
    Q_InvoiceTIT2_TOTALITENS: TIBStringField;
    Q_InvoiceCB_TOTALFINAL: TIBStringField;
    Q_InvoiceTIT1_TOTALFINAL: TIBStringField;
    Q_InvoiceTIT2_TOTALFINAL: TIBStringField;
    Q_InvoiceTIT1_DESCRICAO: TIBStringField;
    Q_InvoiceTIT1_QUANTIDADE: TIBStringField;
    Q_InvoiceTIT1_PRECO: TIBStringField;
    Q_InvoiceTIT1_SUBTOTAL: TIBStringField;
    Q_InvoiceTIT2_DESCRICAO: TIBStringField;
    Q_InvoiceTIT2_QUANTIDADE: TIBStringField;
    Q_InvoiceTIT2_PRECO: TIBStringField;
    Q_InvoiceTIT2_SUBTOTAL: TIBStringField;
    Q_InvoiceCB_JUROS: TIBStringField;
    Q_InvoiceTIT1_JUROS: TIBStringField;
    Q_InvoiceTIT2_JUROS: TIBStringField;
    Q_InvoiceCB_DESPESAS: TIBStringField;
    Q_InvoiceTIT1_DESPESAS: TIBStringField;
    Q_InvoiceTIT2_DESPESAS: TIBStringField;
    Q_InvoiceCB_CAMPO01: TIBStringField;
    Q_InvoiceTIT1_CAMPO1: TIBStringField;
    Q_InvoiceTIT2_CAMPO1: TIBStringField;
    Q_InvoiceCB_CAMPO02: TIBStringField;
    Q_InvoiceTIT1_CAMPO2: TIBStringField;
    Q_InvoiceTIT2_CAMPO2: TIBStringField;
    Q_InvoiceCB_CAMPO03: TIBStringField;
    Q_InvoiceTIT1_CAMPO3: TIBStringField;
    Q_InvoiceTIT2_CAMPO3: TIBStringField;
    Q_InvoiceCB_CAMPO04: TIBStringField;
    Q_InvoiceTIT1_CAMPO4: TIBStringField;
    Q_InvoiceTIT2_CAMPO4: TIBStringField;
    Q_InvoiceCB_CODIGO: TIBStringField;
    Q_InvoiceTIT1_CODIGO: TIBStringField;
    Q_InvoiceTIT2_CODIGO: TIBStringField;
    Q_InvoiceCB_FUNCIONARIO: TIBStringField;
    Q_InvoiceTIT1_FUNCIONARIO: TIBStringField;
    Q_InvoiceTIT2_FUNCIONARIO: TIBStringField;
    Q_InvoiceTIT1_COLUNA1: TIBStringField;
    Q_InvoiceTIT1_COLUNA2: TIBStringField;
    Q_InvoiceTIT1_COLUNA3: TIBStringField;
    Q_InvoiceTIT1_COLUNA4: TIBStringField;
    Q_InvoiceTIT2_COLUNA1: TIBStringField;
    Q_InvoiceTIT2_COLUNA2: TIBStringField;
    Q_InvoiceTIT2_COLUNA3: TIBStringField;
    Q_InvoiceTIT2_COLUNA4: TIBStringField;
    Q_InvoiceCORTITULOS: TIntegerField;
    Q_InvoiceTIPOFAVPADRAO: TIntegerField;
    Q_InvoiceTIPOPADRAO: TIntegerField;
    Q_InvoiceCB_COLUNA1: TIBStringField;
    Q_InvoiceCB_COLUNA2: TIBStringField;
    Q_InvoiceCB_COLUNA3: TIBStringField;
    Q_InvoiceCB_COLUNA4: TIBStringField;
    Q_InvoiceTIT1_UNIDADE: TIBStringField;
    Q_InvoiceTIT2_UNIDADE: TIBStringField;
    Q_InvoiceFOTO: TIBStringField;
    Q_InvoiceTIT1_VALIDADE: TIBStringField;
    Q_InvoiceTIT2_VALIDADE: TIBStringField;
    Q_InvoiceCB_REFERENCIA: TIBStringField;
    Q_InvoiceTIT1_REFERENCIA: TIBStringField;
    Q_InvoiceTIT2_REFERENCIA: TIBStringField;
    Q_InvoiceTIT1_QTDRECEBIDA: TIBStringField;
    Q_InvoiceTIT2_QTDRECEBIDA: TIBStringField;
    Q_InvoiceTIT1_SITUACAO: TIBStringField;
    Q_InvoiceTIT2_SITUACAO: TIBStringField;
    ppLine1: TppLine;
    shpReferencia: TppShape;
    shpDescricao: TppShape;
    lbDescricao: TppDBText;
    lbUnidade: TppDBText;
    shpUnidade: TppShape;
    shpQuantidade: TppShape;
    shpPreco: TppShape;
    lbPreco: TppDBText;
    shpSubtotal: TppShape;
    shpColuna1: TppShape;
    shpColuna3: TppShape;
    shpColuna4: TppShape;
    shpColuna2: TppShape;
    lbColuna2: TppDBText;
    lbColuna3: TppDBText;
    lbColuna4: TppDBText;
    dbtCliente: TppDBText;
    dbtCodigo: TppDBText;
    dbtDescricao: TppDBText;
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
    Q_InvItensCOLUNA1: TIBStringField;
    Q_InvItensCOLUNA2: TIBStringField;
    Q_InvItensCOLUNA3: TIBStringField;
    Q_InvItensCOLUNA4: TIBStringField;
    Q_InvItensUNIDADE: TIBStringField;
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
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand1: TppSummaryBand;
    C_Parcelas: TClientDataSet;
    P_Parcelas: TDataSetProvider;
    C_ParcelasPARCELA: TIntegerField;
    C_ParcelasVALOR: TBCDField;
    C_ParcelasVENCIMENTO: TDateField;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    Q_InvoiceENTRADA: TIntegerField;
    Q_InvoicePREVISAOENTREGA: TDateField;
    Q_InvoiceATUALIZACUSTO: TIBStringField;
    Q_InvoiceATUALIZAPRECO: TIBStringField;
    Q_InvoiceINCLUIDESCONTO: TIBStringField;
    Q_InvoiceATUALIZAPRECOMANUAL: TIBStringField;
    Q_InvItensENTRADA: TIntegerField;
    Q_InvItensQTDRECEBIDA: TIBBCDField;
    Q_InvItensSITUACAO: TIBStringField;
    Q_InvItensNOMECLIENTE: TIBStringField;
    Q_ParcelasCOMPRA: TIntegerField;
    C_ParcelasCOMPRA: TIntegerField;
    lbQtdRecebida: TppDBText;
    shpQtdRecebida: TppShape;
    shpCliente: TppShape;
    lbCliente: TppDBText;
    dbtReferencia: TppDBText;
    lnReferencia: TppLine;
    dbtQtdRecebida: TppDBText;
    lnQtdRecebida: TppLine;
    lnSituacao: TppLine;
    dbtSituacao: TppDBText;
    shpSituacao: TppShape;
    lbSituacao: TppDBText;
    Q_InvItensREFERENCIA: TIBStringField;
    dbtTotalItem: TppDBCalc;
    shpTotalItem: TppShape;
    ppStatus: TppDBText;
    Q_InvoiceSTATUS: TIBStringField;
    Q_InvoiceCB_STATUS: TIBStringField;
    Q_InvItensCODIGOFORN: TIBStringField;
    Q_InvoiceCB_CODIGOFORN: TIBStringField;
    Q_InvoiceTIT1_CODIGOFORN: TIBStringField;
    Q_InvoiceTIT2_CODIGOFORN: TIBStringField;
    regInfoEntrega: TppRegion;
    regTermo: TppRegion;
    Q_InvoiceIMPOSTO: TIBBCDField;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    Q_InvItensENTRADAITEM: TIntegerField;
    Q_InvoiceTIPOORIGEM: TIntegerField;
    Q_InvoiceCB_COMPOSICAOITENS: TIBStringField;
    lbCancelado: TppLabel;
    subComposicaoItens: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    dbtDescComposicao: TppDBText;
    dbtQtdeComposicao: TppDBText;
    dbtUnidComposicao: TppDBText;
    rbNotaFiscal: TppReport;
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
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
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
    dbtDescontos: TppDBText;
    ppDBMemo9: TppDBMemo;
    ppDBText159: TppDBText;
    ppDBText166: TppDBText;
    ppLabel7: TppLabel;
    ppLabel13: TppLabel;
    Q_InvoiceSERIENOTA: TIBStringField;
    Q_InvoiceUFDESTINO: TIBStringField;
    Q_InvoiceBASECALCICMS: TIBBCDField;
    Q_InvoiceVALORICMS: TIBBCDField;
    Q_InvoiceVALORIPI: TIBBCDField;
    Q_InvoiceBASECALCSUBST: TIBBCDField;
    Q_InvoiceVALORICMSSUBST: TIBBCDField;
    Q_InvoiceVALORSEGURO: TIBBCDField;
    Q_InvoicePESOBRUTO: TIBBCDField;
    Q_InvoicePESOLIQUIDO: TIBBCDField;
    Q_InvoiceALIQICMSVENDA: TIBBCDField;
    Q_InvoiceVALORISENTAS: TIBBCDField;
    Q_InvoicePOSSUIICMS1: TIBStringField;
    Q_InvoiceCONTABILIZAICMS1: TIBStringField;
    Q_InvoiceMODELO: TIBStringField;
    Q_InvoiceVALOROUTRASICMS: TIBBCDField;
    Q_InvoiceVALORISENTASIPI: TIBBCDField;
    Q_InvoiceVALOROUTRASIPI: TIBBCDField;
    Q_InvoiceVOLUMES: TIBBCDField;
    Q_InvoiceCPF_CNPJ: TIBStringField;
    Q_InvoiceCODIGOCLIENTE: TIBStringField;
    Q_InvoiceINSCRICAO_EST: TIBStringField;
    Q_InvoiceRAZAO: TIBStringField;
    Q_InvoiceBAIRRO: TIBStringField;
    Q_InvItensFABRICANTE: TIBStringField;
    Q_InvItensCST: TIBStringField;
    Q_InvItensALIQICMS: TIBBCDField;
    Q_InvItensIPI: TIBBCDField;
    Q_InvItensVALORIPIPROD: TIBBCDField;
    Q_InvItensPDESCONTO: TIBBCDField;
    Q_InvItensDESCONTO: TIBBCDField;
    Q_InvoiceARQUIVO: TIBStringField;
    Q_InvoiceCB_FABRICANTE: TIBStringField;
    Q_InvoiceIMPRESSO: TIBStringField;
    Q_InvoiceCB_GERARNUM: TIBStringField;
    Q_InvoiceCB_TOPRINTER: TIBStringField;
    DlgMsg: TDlgMsg;
    rbServicos: TppReport;
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
    ppChildReport4: TppChildReport;
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
    ppDBText255: TppDBText;
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
    Q_InvoiceTIPONOTAFISCAL: TIBStringField;
    dbCompItens: TppDBPipeline;
    C_CompItens: TClientDataSet;
    C_CompItensQUANTIDADE: TBCDField;
    C_CompItensUNIDADE: TStringField;
    C_CompItensDESCRICAO: TStringField;
    Q_CompItens: TIBQuery;
    C_CompItensDS: TDataSource;
    C_SaidasItensIdentDS: TDataSource;
    C_ServicosDS: TDataSource;
    C_Servicos: TClientDataSet;
    C_ServicosCodigo: TStringField;
    C_ServicosDescricao: TStringField;
    C_ServicosUnd: TStringField;
    C_ServicosPreco: TCurrencyField;
    C_ServicosQuantidade: TCurrencyField;
    C_ServicosSubTotal: TCurrencyField;
    dbServicos: TppDBPipeline;
    dbServicosppField1: TppField;
    dbServicosppField2: TppField;
    dbServicosppField3: TppField;
    dbServicosppField4: TppField;
    dbServicosppField5: TppField;
    dbServicosppField6: TppField;
    dbSaidasItensIdent: TppDBPipeline;
    C_SaidasItensIdent: TClientDataSet;
    Q_SaidasItensIdent: TIBQuery;
    DataSetProvider1: TDataSetProvider;
    C_CompItensENTRADAITEM: TIntegerField;
    DataSetProvider2: TDataSetProvider;
    C_SaidasItensIdentENTRADAITEMIDENT: TIntegerField;
    C_SaidasItensIdentENTRADAITEM: TIntegerField;
    C_SaidasItensIdentENTRADA: TIntegerField;
    C_SaidasItensIdentSERIAL: TStringField;
    Q_InvoiceCFOPNOTA: TIBStringField;
    Q_InvItensTOTAL: TIBBCDField;
    Q_InvoiceTOTAL: TIBBCDField;
    Q_InvoiceTOTALITENS: TIBBCDField;
    Q_InvoiceTIPOFRETE: TIBStringField;
    Q_InvoicePLACAVEIC: TIBStringField;
    Q_InvoiceTRANSPORTADORA: TIntegerField;
    Q_InvoiceDESCESPECIE: TIBStringField;
    Q_InvoiceDESCMARCA: TIBStringField;
    Q_InvoiceDESCNUMERO: TIBStringField;
    Q_InvoiceCEP: TIBStringField;
    Q_InvoiceCIDADE: TIBStringField;
    Q_InvoiceUF: TIBStringField;
    Q_InvItensNUMEROLOTE: TIBStringField;
    Q_InvoiceTEMPLATE: TIntegerField;
    Q_InvoiceCB_IMPDOC: TIBStringField;
    Q_InvoiceARQUIVOTEMPLATE: TIBStringField;
    shpIPI: TppShape;
    lbIPI: TppDBText;
    Q_InvoiceTIT1_IPI: TIBStringField;
    Q_InvoiceTIT2_IPI: TIBStringField;
    Q_InvoiceCB_IPI: TIBStringField;
    lnIPI: TppLine;
    dbtIPI: TppDBText;
    Q_InvoiceCB_NOTAFISCAL: TIBStringField;
    shpDesconto: TppShape;
    lbDesconto: TppDBText;
    lnDesconto: TppLine;
    dbtDesconto: TppDBText;
    Q_InvoiceTIT_DESCONTO: TIBStringField;
    procedure ppStatusGetText(Sender: TObject; var Text: String);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure dbtCodigoGetText(Sender: TObject; var Text: String);
    procedure lbCodigoGetText(Sender: TObject; var Text: String);
    procedure ppDBText14GetText(Sender: TObject; var Text: String);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure dbtTotalItemPrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDBText3Print(Sender: TObject);
    procedure dbtDescontosGetText(Sender: TObject;
  var Text: String);
    procedure ppDBText195GetText(Sender: TObject;
  var Text: String);
    procedure ppDBText204GetText(Sender: TObject;
  var Text: String);
    procedure ppDBText217GetText(Sender: TObject;
  var Text: String);
    procedure ppDBText225GetText(Sender: TObject;
  var Text: String);
    procedure ppFooterBand11BeforeGenerate(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel66GetText(Sender: TObject; var Text: String);
    procedure ppLabel67GetText(Sender: TObject; var Text: String);
    procedure ppLabel68GetText(Sender: TObject; var Text: String);
    procedure ppLabel69GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppDBText204GetText2(Sender: TObject;
  var Text: String);
    procedure ppDBText275GetText(Sender: TObject;
  var Text: String);
    procedure ppDBText307GetText(Sender: TObject;
  var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel70GetText(Sender: TObject; var Text: String);
    procedure ppLabel71GetText(Sender: TObject; var Text: String);
    procedure ppLabel91GetText(Sender: TObject; var Text: String);
    procedure ppLabel92GetText(Sender: TObject; var Text: String);
    procedure ppLabel93GetText(Sender: TObject; var Text: String);
    procedure rbServicosStartPage(Sender: TObject);
    procedure rbNotaFiscalPreviewFormCreate(Sender: TObject);
    procedure dbtQuantidadePrint(Sender: TObject);
    procedure dbtReferenciaGetText(Sender: TObject; var Text: String);
  private
  	NumeroNota : integer;
    procedure HabilitarGradeRelatorio(imprimir: String);
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaIdioma(Idioma: integer);
    procedure ImprimePedidoCompra( Entrada: integer; Impressora: boolean=False; sQtdRecebida : string = 'N';sSituacao : string = 'N');
    procedure ImprimeNotaFiscal( Entrada: integer );
    procedure DefineColunas(Sender : TForm; nLeftInicial : double; slColunas : TStringList);
		function 	getColunasMovimento(TipoMovimento : integer; sTipoImpressao : string = 'P') : TStringList;
	  function 	getColunasPedidoCompra(TipoMovimento : integer; sQtdRecebida : string = 'N'; sSituacao : string = 'N') : TStringList;
  end;

var
  RptPedidosCompra: TRptPedidosCompra;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptPedidosCompra.ppStatusGetText(Sender: TObject;
  var Text: String);
var sStatus : string;
begin
  sStatus := 'Status: ';
  if Q_InvoiceCB_Status.Value = 'N' then
  	Text := ''
  else if Text = 'P' then
  	Text := sStatus + 'Pendente'
  else if Text = 'S' then
  	Text := sStatus + 'Solicitado'
  else if Text = 'R' then
  	Text := sStatus + 'Recebido'
  else if Text = 'Z' then
  	Text := sStatus + 'Pedido Realizado'
  else if Text = 'D' then
  	Text := sStatus + 'Pedido Parcial'
  else if Text = 'H' then
  	Text := sStatus + 'Fechado'
  else if Text = 'N' then
  	Text := sStatus + 'Solicita��o n�o Aprovada'
  else if Text = 'L' then
  	Text := sStatus + 'Recebido Parcial'
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin
  if Q_InvItensTIPOITEM.Value=6 then
    if (Q_InvItensPRECO.Value <> Q_InvItensTOTAL.Value) then
      Text := Text+'%';
end;

procedure TRptPedidosCompra.AtualizaIdioma(Idioma: integer);
var campo: string;
begin
  campo := 'TIT'+IntToStr(Idioma)+'_CAMPO1';
  dfTITCampo1.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_CAMPO2';
  dfTITCampo2.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_CAMPO3';
  dfTITCampo3.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_CAMPO4';
  dfTITCampo4.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_DATA';
  dfTITData.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_DATAENTREGA';
  dfTITDataEnt.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_DESCRICAO';
  lbDescricao.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_CODIGO';
  lbCodigo.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_LOCALENTREGA';
  dfTITLocEnt.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_MENSAGEM';
  dfTITMensagem.DataField := campo;
//  campo := 'TIT'+IntToStr(Idioma)+'_PEDIDO';
//  dfTITPedido.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_QUANTIDADE';
  lbQuantidade.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_SUBTOTAL';
  lbSubTotal.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_TERMOS';
  dfTITTermo.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_TIPOENTREGA';
  dfTITTipoEnt.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_TOTALFINAL';
  dfTITTotal.DataField := campo;
  campo := 'TIT'+IntToStr(Idioma)+'_PRECO';
  lbPreco.DataField := campo;
//  campo := 'TIT'+IntToStr(Idioma)+'_VENDEDOR';
//  dfTITVend.DataField := campo;
end;

procedure TRptPedidosCompra.ppDetailBand2BeforePrint(Sender: TObject);
begin
  rbshItens.Brush.Color := clWhite;
  rbshItens.Visible := False;
  dbtDescricao.Font.Color := clBlack;
  if Q_InvItensTIPOITEM.Value=5 then // Juros
    dbtDescricao.Font.Color := clBlue
  else if Q_InvItensTIPOITEM.Value=6 then // Descontos
    dbtDescricao.Font.Color := clRed
  else if Q_InvItensTIPOITEM.Value=7 then begin // SubTotal
    rbshItens.Brush.Color := $00EFEFEF;
    rbshItens.Visible := True;
  end;
end;

procedure TRptPedidosCompra.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := '#'+Text;
end;

procedure TRptPedidosCompra.dbtCodigoGetText(Sender: TObject;
  var Text: String);
begin
   if Q_InvoiceCB_CodigoForn.Value = 'S' then
    	Text := Q_InvItensCodigoForn.AsString;
end;

procedure TRptPedidosCompra.lbCodigoGetText(Sender: TObject;
  var Text: String);
begin
   if Q_InvoiceCB_CodigoForn.Value = 'S' then
    	Text := Q_InvoiceTIT2_CodigoForn.AsString;
end;

procedure TRptPedidosCompra.ppDBText14GetText(Sender: TObject;
  var Text: String);
begin
	Text := 'Fax: '+Text;
end;

procedure TRptPedidosCompra.ppDBText13GetText(Sender: TObject;
  var Text: String);
begin
	Text := 'Fone: '+Text;
end;

procedure TRptPedidosCompra.dbtTotalItemPrint(Sender: TObject);
begin
  if (Q_InvoiceTipoPadrao.Value = 103) then begin
  	shpTotalItem.Visible := false;
    dbtTotalItem.Visible := false;
	end else if (rbInvoice.PageNo < rbInvoice.PageCount) then begin
  	shpTotalItem.Visible := false;
    dbtTotalItem.Visible := false;
  end else begin
  	shpTotalItem.Visible := true;
    dbtTotalItem.Visible := true;
	end;
end;

procedure TRptPedidosCompra.ppSummaryBand1BeforePrint(Sender: TObject);
begin
	if rbInvoice.PageNo < rbInvoice.PageCount then
  	ppSummaryBand1.Visible := false
  else
    ppSummaryBand1.Visible := true;
end;

procedure TRptPedidosCompra.ppDBText3Print(Sender: TObject);
begin
	TppPrintable(Sender).Visible := rbInvoice.PageNo = rbInvoice.PageCount;
end;


procedure TRptPedidosCompra.ImprimeNotaFiscal( Entrada : integer );
var sTipoImpressao, sFormName, sImpressora : string;
		i : integer;
    Controle : TppPrintable;
    nTotalServ, nTotalProd : Currency;
begin

    with Q_Invoice do begin
      Close;
      ParamByName('Entrada').AsInteger := Entrada;
      Open;
    end;

    Q_InvItens.Close;
    Q_InvItens.Open;

    C_Parcelas.Close;
    C_Parcelas.Open;

    NumeroNota := 0;

    {Nota Fiscal Produtos}
    if Q_InvoiceTipoNotaFiscal.value = 'NE' then begin

      if Q_InvoiceArquivo.Value <> '' then begin
        rbNotaFiscal.Template.FileName := DMProjeto.TemplatesPath+Q_InvoiceArquivo.Value;
        if fileexists(rbNotaFiscal.Template.FileName) then
          rbNotaFiscal.Template.LoadFromFile
        else
          rbNotaFiscal.Template.FileName := '';
      end else
        rbNotaFiscal.Template.FileName := '';

      C_Parcelas.First;
      for i:=1 to 6 do begin
        if (C_Parcelas.EOF) or (C_Parcelas.IsEmpty) then
          break;
        Controle := TppLabel(FindComponent('NumeroParc_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption := C_ParcelasParcela.AsString;

        Controle := TppLabel(FindComponent('VencimentoParc_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption := C_ParcelasVencimento.AsString;

        Controle := TppLabel(FindComponent('ValorParc_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption  := formatfloat('#,###,##0.00',C_ParcelasValor.Value);

        C_Parcelas.Next;
      end;

      if FindComponent('dbtDescComplementarNF') <> nil then begin
        dbtDescComplementarNF.Visible := false;
        dbtDescComplementarNF.DataPipeline := nil;
      end;

      if FindComponent('subComposicaoItensNF') <> nil then
        subComposicaoItensNF.Visible := false;

      if FindComponent('subIdentificacoesNF') <> nil then
        subIdentificacoesNF.Visible := false;

      if FindComponent('ppFabricanteNF') <> nil then
        ppFabricanteNF.Visible    := Q_InvoiceCB_Fabricante.AsString = 'S';

      sImpressora := DMProjeto.getImpressora( 'Nota Fiscal' );

      if sImpressora <> '' then
        rbNotaFiscal.PrinterSetup.PrinterName := sImpressora;

      try

//        if Q_InvoiceImpresso.Value <> 'S' then
          // Este controle dever� ser feito em DMEntradas...
//           if Q_InvoiceCB_GERARNUM.value = 'S' then
//              NumeroNota := DMProjeto.NextID( 'NOTAFISCAL', 1);

        if Q_InvoiceCB_TOPrinter.Value = 'S' then begin
           rbNotaFiscal.DeviceType := 'Printer';
           rbNotaFiscal.Print;
        end else if Q_InvoiceCB_TOPrinter.Value = 'C' then begin
           if DlgMsg.ShowMsg( 8016, ['Op.Num.: ' + Q_InvoiceINVOICE.AsString] ) = 100 then begin
             rbNotaFiscal.DeviceType := 'Printer';
             rbNotaFiscal.Print;
           end;
        end else if Q_InvoiceCB_TOPrinter.Value = 'N' then begin
           rbNotaFiscal.DeviceType := 'Screen';
           rbNotaFiscal.Print;
        end;

      except
        on E:Exception do begin
        	DlgMsg.ShowMsg(1,E.Message,'');
//      		DMProjeto.NextID( 'NOTAFISCAL', -1);
        end;
    	end;

    {Servi�os}
    end else begin

      if Q_InvoiceArquivo.Value <> '' then begin
        rbServicos.Template.FileName := DMProjeto.TemplatesPath+Q_InvoiceArquivo.Value;
        if fileexists(rbServicos.Template.FileName) then
          rbServicos.Template.LoadFromFile
        else
          rbServicos.Template.FileName := '';
      end else
        rbServicos.Template.FileName := '';

      C_Parcelas.First;
      for i:=1 to 6 do begin
        if (C_Parcelas.EOF) or (C_Parcelas.IsEmpty) then
          break;
        Controle := TppLabel(FindComponent('NumeroParcS_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption := C_ParcelasParcela.AsString;

        Controle := TppLabel(FindComponent('VencimentoParcS_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption := C_ParcelasVencimento.AsString;

        Controle := TppLabel(FindComponent('ValorParcS_' + IntToStr(i)));
        if Controle <> nil then
          TppLabel(Controle).Caption  := formatfloat('#,###,##0.00',C_ParcelasValor.Value);

        C_Parcelas.Next;
      end;

       C_Servicos.CreateDataSet;
       with Q_InvItens do begin
         First;
         while not EOF do begin
           if Q_InvItensTipoItem.Value = 3 then begin
              with C_Servicos do begin
                 Append;
                 FieldByName('Codigo').AsString 		:= Q_InvItensCodigo.AsString;
                 FieldByName('Descricao').AsString := Q_InvItensItemDesc.AsString;
                 FieldByName('Und').AsString 			:= Q_InvItensUnidade.AsString;
                 FieldByName('Quantidade').AsCurrency := Q_InvItensQuantidade.AsCurrency;
                 FieldByName('Preco').AsCurrency 	:= Q_InvItensPreco.AsCurrency;
                 FieldByName('SubTotal').AsCurrency:= Q_InvItensTotal.AsCurrency;
                 Post;
                 nTotalServ := nTotalServ + Q_InvItensTotal.AsCurrency;
              end;
           end else
              nTotalProd := nTotalProd + Q_InvItensTotal.AsCurrency;
           Next;
         end;
       end;

       Q_InvItens.Filtered := false;
       Q_InvItens.Filter 	 := 'TipoItem <> 3';
       Q_InvItens.Filtered := true;

       Servicos.OverFlowOffSet := Servicos.Top;

      if FindComponent('dbtDescComplementarNFS') <> nil then begin
        dbtDescComplementarNFs.Visible := false;
        dbtDescComplementarNFs.DataPipeline := nil;
      end;

      if FindComponent('subComposicaoItensNFS') <> nil then
        subComposicaoItensNFS.Visible := false;

      if FindComponent('subIdentificacoesNFS') <> nil then
        subIdentificacoesNFS.Visible := false;

      if FindComponent('ppFabricanteNFS') <> nil then
        ppFabricanteNFS.Visible    := Q_InvoiceCB_Fabricante.AsString = 'S';

      sImpressora := DMProjeto.getImpressora( 'Nota Fiscal' );

      if sImpressora <> '' then
        rbServicos.PrinterSetup.PrinterName := sImpressora;

      try
//        if Q_InvoiceImpresso.Value <> 'S' then
//           if Q_InvoiceCB_GERARNUM.value = 'S' then
//              NumeroNota := DMProjeto.NextID( 'NOTAFISCAL', 1);

        if Q_InvoiceCB_TOPrinter.Value = 'S' then begin
           rbServicos.DeviceType := 'Printer';
           rbServicos.Print;
        end else if Q_InvoiceCB_TOPrinter.Value = 'C' then begin
           if DlgMsg.ShowMsg( 8016, ['Op.Num.: '+Q_InvoiceINVOICE.AsString] ) = 100 then begin
             rbServicos.DeviceType := 'Printer';
             rbServicos.Print;
           end;
        end else if Q_InvoiceCB_TOPrinter.Value = 'N' then begin
           rbServicos.DeviceType := 'Screen';
           rbServicos.Print;
        end;
      except
        on E:Exception do begin
        	DlgMsg.ShowMsg(1,E.Message,'');
      		DMProjeto.NextID( 'NOTAFISCAL', -1);
        end;
    	end;
   end;

//   if Q_InvoiceImpresso.Value <> 'S' then begin
//      if Q_InvoiceCB_GERARNUM.value = 'S' then begin
//        with DMProjeto.Q_SQL do begin
//         close;
//         sql.text := 'update saidas '+
//                     'set numero = :numero, '+
//                     '    impresso = ''S'' '+
//                     'where saida = :saida';
//         parambyname('saida').AsInteger := Entrada;
//         parambyname('numero').Asstring := formatfloat('0000000',NumeroNota);
//         ExecSQL;
//         close;
//         sql.text := 'update titulosareceber '+
//                     'set notafiscal = :numero, '+
//                     '    titulo = :numero || ''-'' || parcela '+
//                     'where venda = :saida';
//         parambyname('saida').AsInteger := Entrada;
//         parambyname('numero').Asstring := formatfloat('0000000',NumeroNota);
//         ExecSQL;
//        end;
//        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
//      end;
//   end;

end;

procedure TRptPedidosCompra.ImprimePedidoCompra;
var sTipoImpressao, sFormName : string;
		i : integer;
    posicao: Single;
    campo, sNotaFiscal : string;
begin
  try
    with Q_Invoice do begin
      Close;
      ParamByName('Entrada').AsInteger := Entrada;
      Open;
    end;

    Q_InvItens.Close;
    Q_InvItens.Open;

    sNotaFiscal := Q_InvoiceCB_NOTAFISCAL.AsString;

    if (Q_InvoiceCB_IMPDOC.Value = 'S') and (Q_InvoiceTEMPLATE.AsInteger > 0) and
       (Q_InvoiceARQUIVOTEMPLATE.AsString <> '') and (FileExists( DMProjeto.TemplatesPath + Q_InvoiceARQUIVOTEMPLATE.AsString )) then begin
       rbInvoice.Template.FileName := DMProjeto.TemplatesPath + Q_InvoiceARQUIVOTEMPLATE.AsString;
       rbInvoice.Template.LoadFromFile;
     end
     else
       rbInvoice.Template.FileName := '';

    DefineColunas( RptPedidosCompra, 6, getColunasPedidoCompra(Q_InvoiceTipoMovimento.Value, sQtdRecebida, sSituacao) );

    rgDesconto.Visible:= (Q_InvoiceTipoPadrao.Value <> 103) and (Q_InvoiceCB_Descontos.Value='S');
    rgDespesas.Visible:= (Q_InvoiceTipoPadrao.Value <> 103) and (Q_InvoiceCB_Despesas.Value='S');
    rgFrete.Visible 	:= (Q_InvoiceTipoPadrao.Value <> 103) and (Q_InvoiceCB_Frete.Value='S');
    rgJuros.Visible 	:= (Q_InvoiceTipoPadrao.Value <> 103) and (Q_InvoiceCB_Juros.Value='S');
    rgTotalInvoice.Visible := (Q_InvoiceTipoPadrao.Value <> 103);
    regInfoEntrega.Visible := (Q_InvoiceTipoPadrao.Value > 100) and (Q_InvoiceCB_InfoEntrega.Value='S');
    regTermo.Visible			 := (Q_InvoiceTipoPadrao.Value <> 103) and (Q_InvoiceTipoPadrao.Value <> 106);
		subComposicaoItens.Visible := (Q_InvoiceCB_ComposicaoItens.Value='S');

  	posicao := 14;

  	campo := 'TIT2_CAMPO1';
  	if length(Q_Invoice.FieldByName(campo).AsString)>0 then begin
    	rbrgCampo01.Left := posicao;
    	rbrgCampo01.Visible := True;
    	posicao := posicao+rbrgCampo01.Width;
  	end else begin
    	rbrgCampo01.Visible := False;
  	end;

  	campo := 'TIT2_CAMPO2';
  	if length(Q_Invoice.FieldByName(campo).AsString)>0 then begin
    	rbrgCampo02.Left := posicao;
    	rbrgCampo02.Visible := True;
    	posicao := posicao+rbrgCampo02.Width;
  	end else begin
    	rbrgCampo02.Visible := False;
  	end;

  	campo := 'TIT2_CAMPO3';
  	if length(Q_Invoice.FieldByName(campo).AsString)>0 then begin
    	rbrgCampo03.Left := posicao;
    	rbrgCampo03.Visible := True;
    	posicao := posicao+rbrgCampo03.Width;
  	end else begin
    	rbrgCampo03.Visible := False;
  	end;

  	campo := 'TIT2_CAMPO4';
  	if length(Q_Invoice.FieldByName(campo).AsString)>0 then begin
    	rbrgCampo04.Left := posicao;
    	rbrgCampo04.Visible := True;
    	posicao := posicao+rbrgCampo04.Width;
  	end else begin
    	rbrgCampo04.Visible := False;
  	end;

   lbCancelado.Visible := Q_InvoiceSITUACAO.Value='C';

    sFormName := DMProjeto.getTelaGeradora( Q_InvoiceTipoOrigem.AsInteger );
    DMProjeto.ImprimirCabecalho( rbrgCabecalho, sFormName );

      if not rbrgCabecalho.Visible then begin
      	for i:=0 to ComponentCount - 1 do begin
        	if Components[i].Tag >= 20 then
          	TppPrintable(Components[i]).Top := TppPrintable(Components[i]).Top - rbrgCabecalho.Height;
          if Components[i].Tag = 21 then
		TppPrintable(Components[i]).Height := TppPrintable(Components[i]).Height + rbrgCabecalho.Height;
        end;
      end;

    if Impressora then
      rbInvoice.DeviceType := 'Printer'
    else
      rbInvoice.DeviceType := 'Screen';

    HabilitarGradeRelatorio(DMProjeto.Parametro('ImprimirGradeRelotorio'));

    rbInvoice.Print;
  finally
  	Q_Invoice.Close;
    Q_InvItens.Close;
    Q_CompItens.Close;
    C_Parcelas.Close;
  end;

  if ( sNotaFiscal = 'S') then begin
    ImprimeNotaFiscal( Entrada );
  end;
end;

procedure TrptPedidosCompra.HabilitarGradeRelatorio(imprimir: String);
begin
    if (imprimir = 'N' ) then begin
      ppLine1.Visible := false;
      shpCodigo.Visible := false;
      shpDescricao.Visible := false;
      shpReferencia.Visible := false;
      shpUnidade.Visible := false;
      shpQuantidade.Visible := false;
      shpQtdRecebida.Visible := false;
      shpPreco.Visible := false;
      shpDesconto.Visible := false;
      shpSubtotal.Visible := false;
      shpCliente.Visible := false;
      shpIPI.Visible := false;
      shpSituacao.Visible := false;
      shpColuna1.Visible := false;
      shpColuna2.Visible := false;
      shpColuna3.Visible := false;
      shpColuna4.Visible := false;

      lnCodigo.Visible := false;
      lnDescricao.Visible := false;
      lnReferencia.Visible := false;
      lnUnidade.Visible := false;
      lnQuantidade.Visible := false;
      lnQtdRecebida.Visible := false;
      lnPreco.Visible := false;
      lnDesconto.Visible := false;
      lnSubtotal.Visible := false;
      lnCliente.Visible := false;
      lnIPI.Visible := false;
      lnSituacao.Visible := false;
      lnColuna1.Visible := false;
      lnColuna2.Visible := false;
      lnColuna3.Visible := false;
      lnColuna4.Visible := false;
    end;
end;

procedure TRptPedidosCompra.DefineColunas;
var slVisivel,slPosicaoInicial : TStringList;
		Controle, ControleShp, ControleLbl, ControleLn, ControleDbt : TppPrintable;
    nInteiro, i, nCol, nColunas : integer;
    nLeft, nWidth, nTotalWidth, nTotalWidthVisivel, nPixel : double;
begin
   {Carregar valores padr�o}
   if slPosicaoInicial = nil then
   	 slPosicaoInicial := TStringList.Create;
	 if slPosicaoInicial.Count = 0 then
  		for i:=0 to slColunas.Count-1 do begin
   			ControleShp := TppPrintable(Sender.FindComponent('shp'+SeparaStrings(slColunas[i],';',1)));
      	ControleLbl := TppPrintable(Sender.FindComponent('lb'+SeparaStrings(slColunas[i],';',1)));
      	ControleLn  := TppPrintable(Sender.FindComponent('ln'+SeparaStrings(slColunas[i],';',1)));
      	ControleDbt := TppPrintable(Sender.FindComponent('dbt'+SeparaStrings(slColunas[i],';',1)));
        slPosicaoInicial.Add(ControleShp.Name+';'+FloatToStr(ControleShp.Left)+';'+FloatToStr(ControleShp.Width));
        slPosicaoInicial.Add(ControleLbl.Name+';'+FloatToStr(ControleLbl.Left)+';'+FloatToStr(ControleLbl.Width));
				slPosicaoInicial.Add(ControleLn.Name+';'+FloatToStr(ControleLn.Left)+';'+FloatToStr(ControleLn.Width));
				slPosicaoInicial.Add(ControleDbt.Name+';'+FloatToStr(ControleDbt.Left)+';'+FloatToStr(ControleDbt.Width));
    	end;
   {Setar Valores Padr�o}
		for i:=0 to slPosicaoInicial.Count-1 do begin
   			Controle    	:= TppPrintable(Sender.FindComponent(SeparaStrings(slPosicaoInicial[i],';',1)));
      	Controle.Left := StrToFloat(SeparaStrings(slPosicaoInicial[i],';',2));
      	Controle.Width:= StrToFloat(SeparaStrings(slPosicaoInicial[i],';',3));
      	Controle.Visible := true;
   	end;
   nColunas := slColunas.Count;
   nTotalWidth := 0;
   nTotalWidthVisivel := 0;
   nPixel := 0;
   slVisivel := TStringlist.Create;
   {Retirar as Colunas n�o vis�vel}
   for i:=0 to nColunas-1 do begin
   		ControleShp := TppPrintable(Sender.FindComponent('shp'+SeparaStrings(slColunas[i],';',1)));
      nTotalWidth := nTotalWidth + ControleShp.Width;
      ControleLbl := TppPrintable(Sender.FindComponent('lb'+SeparaStrings(slColunas[i],';',1)));
      ControleLn  := TppPrintable(Sender.FindComponent('ln'+SeparaStrings(slColunas[i],';',1)));
      ControleDbt := TppPrintable(Sender.FindComponent('dbt'+SeparaStrings(slColunas[i],';',1)));
    	if uppercase(SeparaStrings(slColunas[i],';',2))<>'S' then begin
        ControleShp.Visible:=false;
        ControleLbl.Visible:=false;
        ControleLn.Visible:=false;
        ControleDbt.Visible:=false;
        nCol := i;
      	for nCol:=i+1 to nColunas do begin
        	ControleShp 			:= TppPrintable(Sender.FindComponent('shp'+SeparaStrings(slColunas[nCol-1],';',1)));
          ControleShp.Left 	:= ControleShp.Left - ControleShp.Width+1;
          ControleLbl 			:= TppPrintable(Sender.FindComponent('lb'+SeparaStrings(slColunas[nCol-1],';',1)));
          ControleLbl.Left 	:= ControleShp.Left;
          ControleLn 				:= TppPrintable(Sender.FindComponent('ln'+SeparaStrings(slColunas[nCol-1],';',1)));
          ControleLn.Left 	:= ControleShp.Left;
        end;
      end else begin
        ControleShp.Visible:=true;
        ControleLbl.Visible:=true;
        ControleLn.Visible :=true;
        ControleDbt.Visible:=true;
        slVisivel.Add(SeparaStrings(slColunas[i],';',1)+';'+SeparaStrings(slColunas[i],';',3)+';'+FloatToStr(nPixel));
      	nTotalWidthVisivel := nTotalWidthVisivel + ControleShp.Width;
      end;
   end;
   nTotalWidth := nTotalWidth - (nColunas-1);
   nTotalWidthVisivel := nTotalWidthVisivel - (slColunas.Count-1);
   nLeft := nLeftInicial;
   nWidth:= 0;
   nPixel:= 0;
   {Posicionar e Aumentar a largura de modo ponderado}
   for i:=0 to slVisivel.Count-1 do begin
      ControleShp := TppPrintable(Sender.FindComponent('shp'+SeparaStrings(slVisivel[i],';',1)));
      ControleLbl := TppPrintable(Sender.FindComponent('lb'+SeparaStrings(slVisivel[i],';',1)));
      ControleLn  := TppPrintable(Sender.FindComponent('ln'+SeparaStrings(slVisivel[i],';',1)));
      ControleDbt := TppPrintable(Sender.FindComponent('dbt'+SeparaStrings(slVisivel[i],';',1)));
      // TppLabel(ControleLbl).Caption := SeparaStrings(slVisivel[i],';',2);
      nWidth 	 := (ControleShp.Width+((nTotalWidth-nTotalWidthVisivel)*(ControleShp.Width/nTotalWidthVisivel)));
      nInteiro := Round(nWidth);
      if nLeft = nLeftInicial then
      	ControleShp.Left  := nLeft
      else begin
        nPixel := nPixel + 1;
      	ControleShp.Left  := nLeft-nPixel;
      end;
      Controlelbl.Left  := ControleShp.Left;
      Controleln.Left  	:= ControleShp.Left;
      ControleDbt.Left  := ControleShp.Left+5;

      if i <> (slVisivel.Count-1) then begin
      	ControleShp.Width := nInteiro;
        ControleLbl.Width := ControleShp.Width;
        ControleDbt.Width := ControleShp.Width-10;
      end else begin
      	ControleShp.Width := nTotalWidth-(ControleShp.Left-nLeftInicial);
        ControleLbl.Width := ControleShp.Width;
        ControleDbt.Width := ControleShp.Width-10;
      end;
      nLeft := nLeft + ControleShp.Width;
   end;

   if TppPrintable(Sender.FindComponent('dbtSubTotal')).Visible then begin
   		TppPrintable(Sender.FindComponent('dbtTotalItem')).Left := TppPrintable(Sender.FindComponent('dbtSubTotal')).Left;
   		TppPrintable(Sender.FindComponent('dbtTotalItem')).Width:= TppPrintable(Sender.FindComponent('dbtSubTotal')).Width;
   		TppPrintable(Sender.FindComponent('shpTotalItem')).Left := TppPrintable(Sender.FindComponent('shpSubTotal')).Left;
   		TppPrintable(Sender.FindComponent('shpTotalItem')).Width:= TppPrintable(Sender.FindComponent('shpSubTotal')).Width;
   end else begin
   		TppPrintable(Sender.FindComponent('dbtTotalItem')).Visible := false;
      TppPrintable(Sender.FindComponent('shpTotalItem')).Visible := false;	
   end;

   Controle := TppPrintable(Sender.FindComponent('subComposicaoItens'));
   if (Controle <> nil) and (Controle.Visible) then begin
      Controle := TppPrintable(Sender.FindComponent('dbtQtdeComposicao'));
      ControleDbt := TppPrintable(Sender.FindComponent('dbtDescricao'));
      ControleLbl := TppPrintable(Sender.FindComponent('dbtDescComposicao'));
      ControleLn 	:= TppPrintable(Sender.FindComponent('dbtUnidComposicao'));
			Controle.Left := ControleDbt.Left + 5;
      ControleLn.Left := ControleDbt.Left + 5 + Controle.Width + 4;
      ControleLbl.Left := ControleDbt.Left + 9 + Controle.Width + ControleLn.Width + 5;
 			ControleLbl.Width:= ControleDbt.Width - 14 - Controle.Width - ControleLn.Width;
	 end;
end;

function TRptPedidosCompra.getColunasMovimento;
var slColunas : TStringList;
begin
  slColunas := TStringList.Create;
	with DMProjeto.Q_SQL2 do begin
  	close;
    sql.text := 'select * from tiposmovimento where tipomovimento = :tipo';
    params[0].AsInteger := TipoMovimento;
    open;
    slColunas.Add('Funcionario'+';'+iif(sTipoImpressao='P',fieldbyname('cb_funcionario').AsString,'N'));
    slColunas.Add('Codigo'+';'+fieldbyname('cb_codigo').AsString);
    slColunas.Add('Descricao;S');
    slColunas.Add('Referencia;'+fieldbyname('cb_referencia').AsString);
    slColunas.Add('Unidade;S');
    slColunas.Add('Quantidade;S');
    slColunas.Add('Preco'+';'+fieldbyname('cb_preco').AsString);
    slColunas.Add('Desconto'+';'+fieldbyname('CB_DESCONTOITEM').AsString);
    slColunas.Add('SubTotal'+';'+fieldbyname('cb_subtotal').AsString);
    slColunas.Add('IPI'+';'+fieldbyname('cb_ipi').AsString);
    slColunas.Add('Coluna1'+';'+fieldbyname('cb_coluna1').AsString);
    slColunas.Add('Coluna2'+';'+fieldbyname('cb_coluna2').AsString);
    slColunas.Add('Coluna3'+';'+fieldbyname('cb_coluna3').AsString);
    slColunas.Add('Coluna4'+';'+fieldbyname('cb_coluna4').AsString);
    close;
  end;
  result := slColunas;
end;

function TRptPedidosCompra.getColunasPedidoCompra;
var slColunas : TStringList;
begin
  slColunas := TStringList.Create;
	with DMProjeto.Q_SQL2 do begin
  	close;
    sql.text := 'select * from tiposmovimento where tipomovimento = :tipo';
    params[0].AsInteger := TipoMovimento;
    open;
    slColunas.Add('Codigo'+';'+fieldbyname('cb_codigo').AsString);
    slColunas.Add('Descricao;S');
    slColunas.Add('Referencia;'+fieldbyname('cb_referencia').AsString);
    slColunas.Add('Unidade;S');
    slColunas.Add('Quantidade;S');
    slColunas.Add('QtdRecebida;'+sQtdRecebida);
    slColunas.Add('Preco;'+iif(fieldbyname('tipopadrao').AsInteger=103,'N','S'));
    slColunas.Add('Desconto'+';'+fieldbyname('CB_DESCONTOITEM').AsString);
    slColunas.Add('SubTotal;'+iif(fieldbyname('tipopadrao').AsInteger=103,'N','S'));
    slColunas.Add('Cliente'+';'+fieldbyname('cb_funcionario').AsString);
    slColunas.Add('Situacao;'+sSituacao);
    slColunas.Add('IPI'+';'+fieldbyname('cb_ipi').AsString);
    slColunas.Add('Coluna1'+';'+fieldbyname('cb_coluna1').AsString);
    slColunas.Add('Coluna2'+';'+fieldbyname('cb_coluna2').AsString);
    slColunas.Add('Coluna3'+';'+fieldbyname('cb_coluna3').AsString);
    slColunas.Add('Coluna4'+';'+fieldbyname('cb_coluna4').AsString);
    close;
  end;
  result := slColunas;
end;


procedure TRptPedidosCompra.dbtDescontosGetText(Sender: TObject;
  var Text: String);
begin
	if Q_InvoiceDesconto.Value = 0 then
  	Text := '';
end;

procedure TRptPedidosCompra.ppDBText195GetText(Sender: TObject;
  var Text: String);
begin
  if NumeroNota > 0 then
    Text := formatfloat('0000000',NumeroNota);
end;

procedure TRptPedidosCompra.ppDBText204GetText(Sender: TObject;
  var Text: String);
begin
  Text := MascaraCPFCNPJ(Text);
end;

procedure TRptPedidosCompra.ppDBText217GetText(Sender: TObject;
  var Text: String);
begin
  if lbContinuacao.Visible then
    Text := '*********';
end;

procedure TRptPedidosCompra.ppDBText225GetText(Sender: TObject;
  var Text: String);
begin
	if Text = 'C' then
  	Text := '1'
  else
  	Text := '2';
end;

procedure TRptPedidosCompra.ppFooterBand11BeforeGenerate(Sender: TObject);
var i : integer;
begin
	if (rbNotaFiscal.PageCount > 1) and (rbNotaFiscal.PageNo <> rbNotaFiscal.PageCount) then begin
  	lbContinuacao.Visible := true;
    lbContinuacao2.Visible := true;
    for i:=0 to ComponentCount-1 do
    	if Components[i].Tag = 50 then
      	TppPrintable(Components[i]).Visible := false;
  end else begin
  	lbContinuacao.Visible := false;
    lbContinuacao2.Visible := false;
    for i:=0 to ComponentCount-1 do
    	if Components[i].Tag = 50 then
      	TppPrintable(Components[i]).Visible := true;
	end;
end;

procedure TRptPedidosCompra.ppLabel13GetText(Sender: TObject; var Text: String);
begin
	if Text <> 'C' then
  	Text := 'X'
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel66GetText(Sender: TObject; var Text: String);
begin
	if pos(Copy(Q_InvoiceCFOPNota.AsString,1,1),'567')>0 then
  	Text := ' x '
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel67GetText(Sender: TObject; var Text: String);
begin
	if pos(Copy(Q_InvoiceCFOPNota.AsString,1,1),'567')=0 then
  	Text := ' x '
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel68GetText(Sender: TObject; var Text: String);
begin
  if Q_InvoiceDesconto.Value<>0 then
		Text := Formatfloat('#,###,##0.00',(Q_InvoiceDesconto.Value/(Q_InvoiceTotal.Value+Q_InvoiceDesconto.Value))*Q_InvItensTotal.Value)
  else
  	Text := Formatfloat('#,###,##0.00', 0 );
end;

procedure TRptPedidosCompra.ppLabel69GetText(Sender: TObject; var Text: String);
begin
	if Q_InvoiceDesconto.Value = 0 then
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel7GetText(Sender: TObject; var Text: String);
begin
	if Text = 'C' then
  	Text := 'X'
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppDBText204GetText2(Sender: TObject;
  var Text: String);
begin
  Text := MascaraCPFCNPJ(Text);
end;

procedure TRptPedidosCompra.ppDBText275GetText(Sender: TObject;
  var Text: String);
begin
	if Text = 'C' then
  	Text := '1'
  else
  	Text := '2';
end;

procedure TRptPedidosCompra.ppDBText307GetText(Sender: TObject;
  var Text: String);
begin
  if lbContinuacaoServ.Visible then
     Text := '*********';
end;

procedure TRptPedidosCompra.ppLabel14GetText(Sender: TObject; var Text: String);
begin
	if Text = 'C' then
  	Text := 'X'
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel23GetText(Sender: TObject; var Text: String);
begin
	if Text <> 'C' then
  	Text := 'X'
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel70GetText(Sender: TObject; var Text: String);
begin
	if pos(Copy(Q_InvoiceCFOPNota.AsString,1,1),'567')>0 then
  	Text := ' x '
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel71GetText(Sender: TObject; var Text: String);
begin
	if pos(Copy(Q_InvoiceCFOPNota.AsString,1,1),'567')=0 then
  	Text := ' x '
  else
  	Text := '';
end;

procedure TRptPedidosCompra.ppLabel91GetText(Sender: TObject; var Text: String);
begin
  if not lbContinuacaoServ.Visible then
		Text := iif(DMProjeto.Parametro('AliquotaISS')='','5 %',DMProjeto.Parametro('AliquotaISS')+' %')
  else
  	Text := '*********';
end;

procedure TRptPedidosCompra.ppLabel92GetText(Sender: TObject; var Text: String);
begin
  if not lbContinuacaoServ.Visible then
		Text := iif(DMProjeto.Parametro('AliquotaISS')='',0.05*BaseCalculoISS.Value,(StrToIntDef(DMProjeto.Parametro('AliquotaISS'),0)/100)*BaseCalculoISS.Value)
  else
  	Text := '*********';
end;

procedure TRptPedidosCompra.ppLabel93GetText(Sender: TObject; var Text: String);
begin
  if Q_InvoiceDesconto.Value = 0 then
    Text := '';
end;

procedure TRptPedidosCompra.rbServicosStartPage(Sender: TObject);
var i : integer;
begin
	if (rbServicos.PageCount > 1) and (rbServicos.PageNo <> rbServicos.PageCount) then begin
  	lbContinuacaoServ.Visible := true;
    lbContinuacaoServ2.Visible := true;
    for i:=0 to ComponentCount-1 do
    	if Components[i].Tag = 50 then
      	TppPrintable(Components[i]).Visible := false;
  end else begin
  	lbContinuacaoServ.Visible := false;
    lbContinuacaoServ2.Visible := false;
    for i:=0 to ComponentCount-1 do
    	if Components[i].Tag = 50 then
      	TppPrintable(Components[i]).Visible := true;
  end;
end;

procedure TRptPedidosCompra.rbNotaFiscalPreviewFormCreate(Sender: TObject);
begin
//
end;

procedure TRptPedidosCompra.dbtQuantidadePrint(Sender: TObject);
begin
//  dbtQuantidade.DisplayFormat := '###,###,##0.00'
end;

procedure TRptPedidosCompra.dbtReferenciaGetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,1,25);
end;

end.
