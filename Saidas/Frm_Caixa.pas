unit Frm_Caixa;
     
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
    Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxCntner, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, ComCtrls, TS_PageControl, dxEditor,
    dxExEdtr, dxDBEdtr, dxDBELib, TS_DBLookupComboBox, dxEdLib, TS_DBEdit,
    DBText, TS_DBTextEffect, TS_DBMemo, TS_DBEditDate, Db, IBCustomDataSet,
    IBQuery, dxDBTLCl, dxGrClms, DBClient, Provider, IBUpdateSQL, dxGrClEx,
    ImgList, FormCont, teDrip, tePush, Dlg_InplacePgtos, TS_DBButtonEdit,
    TS_DBEditFavorecido, TS_Shape, DBCtrls, TS_DBText, TransEff, teTimed, Variants, DM_Contabilidade,
    BTOdeum, Placemnt, Dlg_Propaganda, Math, DateUtils, T_TefDiscado;

const
    PM_SetCondicoesPgto = WM_User + 25100;
Type
   TMultiplosCartoes = Record
     comprovante: Integer;
     PossuiTEF: Integer;
     MsgTEF: string;
     rede: string;
     nsu: string;
     data: string;
     hora: string;
     cupom: TStringList;
     aprovado: Boolean;
     valores: array[0..7] of Currency;
     HiperCard: Boolean;
     Dirreq: String;
     DirResp: String;
     Cartao: String;
End;
type
    TFrmCaixa = class(TFrmModeloCadastros)
        dbgSalesOrder: TTS_QDBGrid;
        pnCliente: TTS_Panel;
        dbtObs: TTS_DBTextEffect;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        TS_DBEdit5: TTS_DBEdit;
        pnFotoCliente: TTS_Panel;
        cmbTipoMovimento: TTS_DBLookupComboBox;
        lbOperacao: TTS_Label;
        lbData: TTS_Label;
        lbNumero: TTS_Label;
        lbStatus: TTS_Label;
        pgItens: TTS_PageControl;
        tsTermos: TTS_TabSheet;
        tsItens: TTS_TabSheet;
        dbgParcelas: TTS_QDBGrid;
        cmbTermos: TTS_DBLookupComboBox;
        TS_Label4: TTS_Label;
        lbMensagem: TTS_Label;
        dfMensagem: TTS_DBMemo;
        dfData: TTS_DBEditDate;
        dfNumero: TTS_DBEdit;
        cmbStatus: TTS_DBLookupComboBox;
        Q_SalesOrder: TIBQuery;
        P_SalesOrder: TDataSetProvider;
        C_SalesOrder: TClientDataSet;
        C_SalesOrderDS: TDataSource;
        C_SalesOrderSAIDA: TIntegerField;
        C_SalesOrderNUMERO: TStringField;
        C_SalesOrderDATA: TDateField;
        C_SalesOrderFAVORECIDO: TIntegerField;
        C_SalesOrderOBS: TStringField;
        C_SalesOrderDESCONTO: TBCDField;
        C_SalesOrderFRETE: TBCDField;
        C_SalesOrderOUTRASDESPESAS: TBCDField;
        C_SalesOrderJUROS: TBCDField;
        C_SalesOrderIMPOSTO: TBCDField;
        C_SalesOrderNOME: TStringField;
        C_SalesOrderDESCMOV: TStringField;
        C_SalesOrderNOMEVENDEDOR: TStringField;
        C_SalesOrderDESCPLANO: TStringField;
        dbgSalesOrderNUMERO: TdxDBGridMaskColumn;
        dbgSalesOrderDATA: TdxDBGridDateColumn;
        dbgSalesOrderOBS: TdxDBGridMaskColumn;
        dbgSalesOrderDESCONTO: TdxDBGridMaskColumn;
        dbgSalesOrderFRETE: TdxDBGridMaskColumn;
        dbgSalesOrderTOTAL: TdxDBGridMaskColumn;
        dbgSalesOrderOUTRASDESPESAS: TdxDBGridMaskColumn;
        dbgSalesOrderJUROS: TdxDBGridMaskColumn;
        dbgSalesOrderIMPOSTO: TdxDBGridMaskColumn;
        dbgSalesOrderNOME: TdxDBGridMaskColumn;
        dbgSalesOrderDESCMOV: TdxDBGridMaskColumn;
        dbgSalesOrderNOMEVENDEDOR: TdxDBGridMaskColumn;
        dbgSalesOrderDESCPLANO: TdxDBGridMaskColumn;
        C_SalesOrderFORMNAME: TStringField;
        Q_Saidas: TIBQuery;
        P_Saidas: TDataSetProvider;
        C_Saidas: TClientDataSet;
        C_SaidasDS: TDataSource;
        Q_TiposMovimento: TIBQuery;
        P_TiposMovimento: TDataSetProvider;
        C_TiposMovimentoDS: TDataSource;
        C_SaidasSAIDA: TIntegerField;
        C_SaidasNUMERO: TStringField;
        C_SaidasDATA: TDateField;
        C_SaidasFAVORECIDO: TIntegerField;
        C_SaidasOBS: TStringField;
        C_SaidasTAX: TIntegerField;
        C_SaidasPERCENTUALTAX: TBCDField;
        C_SaidasDESCONTO: TBCDField;
        C_SaidasPLANOPAGAMENTO: TIntegerField;
        C_SaidasVENDEDOR: TIntegerField;
        C_SaidasFRETE: TBCDField;
        C_SaidasTIPOENTREGA: TIntegerField;
        C_SaidasDATAENTREGA: TDateField;
        C_SaidasIMPORTACAO: TIntegerField;
        C_SaidasSITUACAO: TStringField;
        C_SaidasTIPOMOVIMENTO: TIntegerField;
        C_SaidasPEDIDO_CLIENTE: TStringField;
        C_SaidasOUTRASDESPESAS: TBCDField;
        C_SaidasJUROS: TBCDField;
        C_SaidasPOSSUITAX: TStringField;
        C_SaidasBAIXAESTOQUE: TStringField;
        C_SaidasCALCCOMISSAO: TStringField;
        C_SaidasPOSSUIENTREGA: TStringField;
        C_SaidasCAMPO01: TStringField;
        C_SaidasCAMPO02: TStringField;
        C_SaidasCAMPO03: TStringField;
        C_SaidasCAMPO04: TStringField;
        C_SaidasIMPRESSO: TStringField;
        C_SaidasIMPOSTO: TBCDField;
        C_SaidasIMPOSTO_INCLUSO: TBCDField;
        C_SaidasPCOMISSAO: TBCDField;
        C_SaidasCAIXA: TIntegerField;
        C_SaidasLOCALENTREGA: TIntegerField;
        C_SaidasTABELAPADRAO: TIntegerField;
        C_SaidasTIPOPADRAO: TIntegerField;
        C_SaidasDATACANCELAMENTO: TDateField;
        C_SaidasFUNCCANCELAMENTO: TIntegerField;
        C_SaidasMOTIVOCANCELAMENTO: TStringField;
        C_SaidasPJUROS: TBCDField;
        C_SaidasVALORCOMISSAO: TBCDField;
        C_SaidasVALIDADE: TDateField;
        C_SaidasCONDICOESPGTO: TStringField;
        C_SaidasDATAENTREGUE: TDateField;
        C_SaidasSTATUS: TStringField;
        C_SaidasTOTALITENS123: TBCDField;
        C_SaidasBASEIMPOSTO: TBCDField;
        C_SaidasBASEINCLUSO: TBCDField;
        C_SaidasDESCONTOITENS: TBCDField;
        C_SaidasTIPOIMPRESSAO: TStringField;
        C_SaidasTOTALPGTOS: TBCDField;
        C_SaidasSTATUSANTERIOR: TStringField;
        C_SaidasNOME: TStringField;
        C_SaidasCIDADE: TStringField;
        C_SaidasENDERECO: TStringField;
        C_SaidasUF: TStringField;
        C_SaidasEMAIL: TStringField;
        C_SaidasOBSCLIENTE: TStringField;
        C_SaidasCEP: TStringField;
        Q_Parcelas: TIBQuery;
        U_Parcelas: TIBUpdateSQL;
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
        C_ParcelasCLIENTE: TIntegerField;
        C_ParcelasNOTAFISCAL: TStringField;
        C_ParcelasSTATUS: TIntegerField;
        C_ParcelasVENDEDOR: TIntegerField;
        C_ParcelasDATAANTECIPACAO: TDateField;
        C_ParcelasVALORDESCANTECIPADO: TBCDField;
        C_ParcelasJUROSPLANO: TBCDField;
        C_ParcelasUSUARIO: TIntegerField;
        C_ParcelasDESCONTOS: TBCDField;
        C_ParcelasJUROSRECEBIDOS: TBCDField;
        C_ParcelasDATAATRASADO: TDateField;
        C_ParcelasVALORJUROSMORA: TBCDField;
        C_ParcelasVALORMULTA: TBCDField;
        C_ParcelasCREDITOUTILIZADO: TBCDField;
        C_ParcelasCREDITOGERADO: TBCDField;
        C_ParcelasPERCENTUALMULTA: TBCDField;
        C_ParcelasPERCENTUALMORA: TBCDField;
        C_ParcelasPGTOS: TBCDField;
        C_ParcelasDOC_GARANTIA: TStringField;
        C_ParcelasDS: TDataSource;
        Q_MasterDS: TDataSource;
        C_SaidasIDMESTRE: TIntegerField;
        C_SaidasQ_Parcelas: TDataSetField;
        C_ItensDS: TDataSource;
        C_SaidasQ_Itens: TDataSetField;
        Q_Funcs: TIBQuery;
        P_Funcs: TDataSetProvider;
        C_Funcs: TClientDataSet;
        IntegerField1: TIntegerField;
        StringField1: TStringField;
        StringField2: TStringField;
        C_Status: TClientDataSet;
        C_StatusSTATUS: TStringField;
        C_StatusDESCRICAO: TStringField;
        C_StatusORDEM: TIntegerField;
        P_Status: TDataSetProvider;
        Q_Status: TIBQuery;
        Q_PlanosPagamento: TIBQuery;
        P_PlanosPagamento: TDataSetProvider;
        C_PlanosPagamento: TClientDataSet;
        C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
        C_PlanosPagamentoDESCRICAO: TStringField;
        C_PlanosPagamentoJUROS: TBCDField;
        C_PlanosPagamentoQTDPARCELAS: TIntegerField;
        C_PlanosPagamentoPDESCONTO: TBCDField;
        C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField;
        C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField;
        C_PlanosPagamentoTIPO: TStringField;
        C_PlanosPagamentoPERIODICIDADE: TIntegerField;
        C_PlanosPagamentoESQUEMAPARCELAS: TStringField;
        C_PlanosPagamentoTIPOENTRADA: TStringField;
        C_PlanosPagamentoPERCENTUALENTRADA: TBCDField;
        C_PlanosPagamentoVALIDADE: TDateField;
        C_PlanosPagamentoDESATIVADO: TStringField;
        C_PlanosPagamentoINTERVALOS: TStringField;
        C_PlanosPagamentoCARENCIAENTRADA: TStringField;
        C_SaidaslkPlanoPgto: TStringField;
        C_Parcelas_icSelecionado: TIntegerField;
        dbgParcelasID: TdxDBGridMaskColumn;
        dbgParcelasPARCELA: TdxDBGridMaskColumn;
        dbgParcelasVENCIMENTO: TdxDBGridDateColumn;
        dbgParcelasVALOR: TdxDBGridMaskColumn;
        dbgParcelasDOC_GARANTIA: TdxDBGridMaskColumn;
        dbgItens: TTS_QDBGrid;
        dbgItensFuncProducao: TdxDBGridLookupColumn;
        dbgItensReferencia: TdxDBGridButtonColumn;
        dbgItensSEQUENCIA: TdxDBGridMaskColumn;
        dbgItensI_CODIGO: TdxDBGridButtonColumn;
        dbgItensDESCRICAO: TdxDBGridButtonColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
        dbgItensQUANTIDADE: TdxDBGridMaskColumn;
        dbgItensPRECO: TdxDBGridPopupColumn;
        dbgItensSubTotal: TdxDBGridColumn;
        dbgItensTipoItem: TdxDBGridColumn;
        dbgItensStatus: TdxDBGridImageColumn;
        dbgItensUsoTipoItem: TdxDBGridColumn;
        dbgItensColuna1: TdxDBGridColumn;
        dbgItensColuna2: TdxDBGridColumn;
        dbgItensColuna3: TdxDBGridColumn;
        dbgItensColuna4: TdxDBGridColumn;
        dbgItensBaixoEstoque: TdxDBGridColumn;
        dbgItensI_Percentual: TdxDBGridColumn;
        dbgItensColumn19: TdxDBGridColumn;
        dbgItensColumn20: TdxDBGridColumn;
        dbgItensMesclado: TdxDBGridColumn;
        C_SaidaslkStatus: TStringField;
        PgtoCtner: TFormContainer;
        imgStatus: TImageList;
        TransitionSaidas: TTransitionList;
        T_Itens: TPushTransition;
        T_Termos: TPushTransition;
        T_FotoClienteOn: TPushTransition;
        T_FotoClienteOff: TPushTransition;
        C_SaidasREDUCOESBASE: TBCDField;
        C_SaidasACRESCIMOSBASE: TBCDField;
        C_SaidasLOGOTIPO: TStringField;
        U_Saidas: TIBUpdateSQL;
        dfCliente: TTS_DBEditFavorecido;
        C_SaidasNOMEVENDEDOR: TStringField;
        lbVendedor: TTS_Label;
        dbtVendedor: TTS_DBText;
        spVendedor: TTS_Shape;
        Q_SQL: TIBQuery;
        C_ParcelasValorAReceber: TCurrencyField;
        C_ParcelasPagamento: TCurrencyField;
        C_ParcelasJuros: TCurrencyField;
        dbgParcelasColumn7: TdxDBGridColumn;
        dbgParcelasColumn8: TdxDBGridColumn;
        dbgParcelasColumn9: TdxDBGridColumn;
        dbgParcelasColumn10: TdxDBGridColumn;
        TS_Label1: TTS_Label;
        N1: TMenuItem;
        AtualizarListadeSalesOrder1: TMenuItem;
        TS_Shape1: TTS_Shape;
        C_SaidasF_CONTA: TIntegerField;
        C_ParcelasVENDA: TIntegerField;
        CtnPropagandas: TFormContainer;
        C_SaidasFONE1: TStringField;
        TS_DBEdit6: TTS_DBEdit;
        btFecharCaixa: TTS_SpeedButton;
        btRetirar: TTS_SpeedButton;
        btAbrirCaixa: TTS_SpeedButton;
        btRepassar: TTS_SpeedButton;
        TS_Bevel2: TTS_Bevel;
        TS_Bevel3: TTS_Bevel;
        TS_Bevel5: TTS_Bevel;
        btReceberPgtos: TTS_SpeedButton;
        C_SaidasicDescontoParcelas: TCurrencyField;
        lbDataCaixa: TdxfLabel;
        TS_Shape2: TTS_Shape;
        Q_Itens: TIBQuery;
        U_Itens: TIBUpdateSQL;
        C_Itens: TClientDataSet;
        C_ItensIDITEM: TIntegerField;
        C_ItensIDMESTRE: TIntegerField;
        C_ItensSEQUENCIA: TIntegerField;
        C_ItensDESCRICAO: TStringField;
        C_ItensQUANTIDADE: TBCDField;
        C_ItensPRECO: TFloatField;
        C_ItensITEM: TIntegerField;
        C_ItensUSOTIPOITEM: TStringField;
        C_ItensI_TIPOITEM: TIntegerField;
        C_ItensI_CODIGO: TStringField;
        C_ItensI_DESCRICAOCOMPRA: TStringField;
        C_ItensI_GRUPO: TIntegerField;
        C_ItensI_DESCRICAO: TStringField;
        C_ItensI_QTDEMINIMO: TBCDField;
        C_ItensI_QTDEMAXIMO: TBCDField;
        C_ItensI_TAXAVEL: TStringField;
        C_ItensI_ULTIMOFORNECEDOR: TIntegerField;
        C_ItensI_PERCENTUAL: TBCDField;
        C_ItensI_APLICARANTESTAX: TStringField;
        C_ItensI_UNIDADE: TStringField;
        C_ItensI_ESTOQUE: TBCDField;
        C_ItensI_BALANCO: TStringField;
        C_ItensI_COMISSAO: TBCDField;
        C_ItensI_DESCONTOMAXIMO: TBCDField;
        C_ItensI_TAXINCLUSO: TStringField;
        C_ItensI_CONTA_VENDA: TIntegerField;
        C_ItensI_CONTA_CUSTO: TIntegerField;
        C_ItensI_CONTA_INVENT: TIntegerField;
        C_ItensI_FOTO: TStringField;
        C_ItensI_PROMOCAO: TStringField;
        C_ItensDESCRICAOUNIDADE: TStringField;
        C_ItensORDEM: TIntegerField;
        C_ItensUNIDADEINTEIRA: TStringField;
        C_ItensSubTotal: TBCDField;
        C_Itens_icSelecionado: TIntegerField;
        C_ItensHASCHILDREN: TStringField;
        C_ItensTABELAPRECO: TIntegerField;
        C_ItenscfBaixoEstoque: TFloatField;
        C_ItensRATEIODESCONTO: TBCDField;
        C_ItensI_PONTOPEDIDO: TBCDField;
        C_ItensCONTAVENDA: TIntegerField;
        C_ItensTAXAVEL: TStringField;
        C_ItensOrdemMontagem: TStringField;
        C_ItensPRODUCAO: TIntegerField;
        C_ItensFUNCPRODUCAO: TIntegerField;
        C_ItenslkFuncProducao: TStringField;
        C_ItensCHAVEPRODUCAOFUNC: TIntegerField;
        C_ItensCOLUNA1: TStringField;
        C_ItensCOLUNA2: TStringField;
        C_ItensCOLUNA3: TStringField;
        C_ItensCOLUNA4: TStringField;
        C_ItensOLDQUANTIDADE: TBCDField;
        C_ItensMAXDESCONTO: TFloatField;
        C_ItenscfValorMaxDesconto: TFloatField;
        C_ItensENTRADAITEM: TIntegerField;
        C_ItensDESPESA: TIntegerField;
        C_ItensI_FATORLUCRO: TFloatField;
        C_ItensI_REFERENCIA: TStringField;
        C_ItensDESCONTOMAXIMOGRUPO: TBCDField;
        C_ItensMESCLADO: TStringField;
        C_ItensTrocouItem: TBooleanField;
        C_ItensOLDITEM: TIntegerField;
        C_ItensUltrapassouMesclagem: TBooleanField;
        C_ItensQTDFATURADA: TBCDField;
        C_ItensFOTOGRUPO: TStringField;
        C_ItensSTATUS: TStringField;
        C_ItensSTATUSOLD: TStringField;
        C_ItensNUMEROLOTE: TStringField;
        C_ItensI_SEMLUCRO: TFloatField;
        C_ItensI_UNIDADEENTRADA: TStringField;
        C_ItensI_UNIDADECARGA: TStringField;
        C_ItensI_UNIDADEVAREJO: TStringField;
        C_ItensN_USOTIPOITEM: TBCDField;
        C_ItensUNIDADE: TStringField;
        C_ItensFATOR: TFloatField;
        C_ItensI_UNIDADEMINIMA: TIntegerField;
        C_ItensCUSTOMEDIO: TFloatField;
        C_ItensCUSTOCONTABIL: TFloatField;
        C_ItensPRECOTABELA: TBCDField;
        C_ItensI_CUSTOMEDIO: TFloatField;
        C_ItensOLDPRECO: TFloatField;
        C_ItensI_FATORUNDVENDA: TFloatField;
        C_ItensI_FATORUNDCOMPRA: TFloatField;
        C_ItensOLDUNIDADE: TStringField;
        C_ItensicFoto: TStringField;
        C_ItensDESCONTO: TFloatField;
        C_ItensPROMOCAO: TStringField;
        C_ItensPRECOSEMPROMOCAO: TBCDField;
        C_ItensBAIXAESTOQUE: TStringField;
        C_ItensI_COMLUCRO: TFloatField;
        C_ItensQTDMONTAGEM: TBCDField;
        C_ItensALMOXARIFADO: TIntegerField;
        C_ItensDESCRICAOCOMPLEMENTAR: TStringField;
        C_TiposMovimento: TClientDataSet;
        C_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentoDESCRICAO: TStringField;
        C_TiposMovimentoTIPO: TStringField;
        C_TiposMovimentoPOSSUITAX: TStringField;
        C_TiposMovimentoBAIXAESTOQUE: TStringField;
        C_TiposMovimentoCALCCOMISSAO: TStringField;
        C_TiposMovimentoPOSSUIENTREGA: TStringField;
        C_TiposMovimentoBLOQUEARSEATRASADO: TStringField;
        C_TiposMovimentoBLOQUEARPORSITUACAO: TStringField;
        C_TiposMovimentoBLOQUEARPORESTOQUE: TStringField;
        C_TiposMovimentoLIMITEFAVORECIDO: TStringField;
        C_TiposMovimentoSIGLAINICIAL: TStringField;
        C_TiposMovimentoTIPOPADRAO: TIntegerField;
        C_TiposMovimentoDESCTIPOPADRAO: TStringField;
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
        C_TiposMovimentoCB_STATUS: TStringField;
        C_TiposMovimentoSTATUSPADRAO: TStringField;
        C_TiposMovimentoCB_STATUSITENS: TStringField;
        C_TiposMovimentoSTATUSPADRAOITENS: TStringField;
        C_TiposMovimentoCB_DOCSGARANTIA: TStringField;
        C_TiposMovimentoCB_IMPRIMIROP: TStringField;
        C_TiposMovimentoCB_PGTOS: TStringField;
        C_TiposMovimentoCB_FICHACLIENTE: TStringField;
        C_TiposMovimentoCB_TOPRINTER: TStringField;
        C_TiposMovimentoCB_GERARNUM: TStringField;
        C_TiposMovimentoFAVORECIDOPADRAO: TIntegerField;
        C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField;
        C_TiposMovimentoMENSAGEMPADRAO: TIntegerField;
        C_TiposMovimentoCB_CONTRATO: TStringField;
        C_TiposMovimentoTEMPLATE: TIntegerField;
        C_TiposMovimentoTERMOCONTRATO: TIntegerField;
        C_TiposMovimentoDIASVALIDADE: TIntegerField;
        C_TiposMovimentoTABELAPADRAO: TIntegerField;
        C_TiposMovimentoALMOXPADRAO: TIntegerField;
        C_TiposMovimentoTIPODESCRICAO: TStringField;
        C_SaidasALMOXPADRAO: TIntegerField;
        C_SalesOrderBAIXAESTOQUE: TStringField;
        Escolher1: TMenuItem;
        AbrirCaixa1: TMenuItem;
        Lista: TMenuItem;
        Editar1: TMenuItem;
        ReceberPagto1: TMenuItem;
        Pagamentos1: TMenuItem;
        FazerRepasse1: TMenuItem;
        FecharCaixa1: TMenuItem;
        N2: TMenuItem;
        CadastrodoCliente1: TMenuItem;
        ermos1: TMenuItem;
        Itens1: TMenuItem;
        pnStatus: TTS_Panel;
        TS_Label5: TTS_Label;
        pnsMaisOpcoes: TTS_Panel;
        lbKey8: TTS_Label;
        lbTit8: TTS_Label;
        TS_Shape21: TTS_Shape;
        TS_Shape3: TTS_Shape;
        pnsFecharCaixa: TTS_Panel;
        lbKey7: TTS_Label;
        lbTit7: TTS_Label;
        TS_Shape8: TTS_Shape;
        pnsRepassar: TTS_Panel;
        lbKey6: TTS_Label;
        lbTit6: TTS_Label;
        TS_Shape15: TTS_Shape;
        pnsRetirar: TTS_Panel;
        lbKey5: TTS_Label;
        lbTit5: TTS_Label;
        TS_Shape24: TTS_Shape;
        pnsComando1: TTS_Panel;
        lbKey4: TTS_Label;
        lbTit4: TTS_Label;
        TS_Shape22: TTS_Shape;
        pnsLimpar: TTS_Panel;
        lbKey3: TTS_Label;
        lbTit3: TTS_Label;
        TS_Shape19: TTS_Shape;
        pnsGravar: TTS_Panel;
        lbKey2: TTS_Label;
        lbTit2: TTS_Label;
        TS_Shape18: TTS_Shape;
        pnsAbrirCaixa: TTS_Panel;
        lbKey1: TTS_Label;
        lbTit1: TTS_Label;
        pnsReceberPgtos: TTS_Panel;
        lbKey9: TTS_Label;
        lbTit9: TTS_Label;
        TS_Shape23: TTS_Shape;
        NaomostrarmaisAtalhos1: TMenuItem;
        C_ItensALIQICMS: TBCDField;
        C_ItensSituacaoECF: TStringField;
        C_SaidasLabelMsg: TStringField;
        dbLabelMsg: TTS_DBText;
        TS_Bevel4: TTS_Bevel;
        btNotaCupom: TTS_SpeedButton;
        pnsBobina: TTS_Panel;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Shape4: TTS_Shape;
        pnsECF: TTS_Panel;
        TS_Label6: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Shape6: TTS_Shape;
        N3: TMenuItem;
        ComandosECF1: TMenuItem;
        rocadeBobina1: TMenuItem;
        pmImprimirCupom: TMenuItem;
        lbTipoCobranca: TTS_Label;
        cmbTipoCobranca: TTS_DBLookupComboBox;
        C_SaidasCOBRANCA: TIntegerField;
        C_SaidasCARTEIRA: TIntegerField;
        C_ParcelasTIPOCOBRANCA: TIntegerField;
        Q_TiposCobranca: TIBQuery;
        P_TiposCobranca: TDataSetProvider;
        C_TiposCobranca: TClientDataSet;
        C_TiposCobrancaTIPOCOBRANCA: TIntegerField;
        C_TiposCobrancaDESCRICAO: TStringField;
        C_TiposCobrancaDESATIVADO: TStringField;
        C_SaidaslkCobranca: TStringField;
        lbCarteira: TTS_Label;
        cmbCarteira: TTS_DBLookupComboBox;
        C_CarteirasDS: TDataSource;
        C_Carteiras: TClientDataSet;
        C_CarteirasCARTEIRA: TIntegerField;
        C_CarteirasDESCRICAO: TStringField;
        P_Carteiras: TDataSetProvider;
        Q_Carteiras: TIBQuery;
        C_SaidaslkCarteira: TStringField;
        C_SaidasTOTALSERVICOS: TBCDField;
        C_SaidasSERIENOTA: TStringField;
        C_SaidasPOSSUIICMS: TStringField;
        C_SaidasPOSSUIIPI: TStringField;
        C_SaidasPOSSUIISS: TStringField;
        C_SaidasCONTABILIZAICMS: TStringField;
        C_SaidasMODELO: TStringField;
        C_SaidasPDV: TIntegerField;
        C_TiposMovimentoPOSSUIICMS: TStringField;
        C_TiposMovimentoPOSSUIIPI: TStringField;
        C_TiposMovimentoPOSSUIISS: TStringField;
        C_TiposMovimentoCONTABILIZAICMS: TStringField;
        C_TiposMovimentoSERIE: TStringField;
        C_TiposMovimentoMODELODOC: TStringField;
        C_ParcelasCARTEIRA: TIntegerField;
        C_SaidasF_CPF_CNPJ: TStringField;
        C_ItensCST: TStringField;
        C_ItensREDUCAOCST: TBCDField;
        TS_Bevel6: TTS_Bevel;
        btCancelar: TTS_SpeedButton;
        Q_SQLi: TIBQuery;
        CancelarOperaes1: TMenuItem;
        C_SaidasCFOPNOTA: TStringField;
        C_TiposMovimentoCFOPASSOCIADO: TStringField;
        C_SaidasTOTAL: TBCDField;
        C_SaidasTOTALITENS: TBCDField;
        C_SaidasTOTALGERAL: TBCDField;
        C_ItensSUBTOTALITEM: TBCDField;
        C_SalesOrderTOTAL: TBCDField;
    ReimprimirOperaes1: TMenuItem;
    GravarII: TMenuItem;
    C_TiposMovimentoCB_NOTAFISCAL: TStringField;
    C_ItensI_LOCALIZACAO: TIntegerField;
    C_SaidasBAIXAESTOQUEFISCAL: TStringField;
    P_Item: TDataSetProvider;
    C_ItensBAIXAESTOQUEFISCAL: TStringField;
    dbgItensALIQICMS: TdxDBGridColumn;
    AbrirGaveta1: TMenuItem;
    TEF2: TTEFDiscado;
        procedure FormShow(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure dbgSalesOrderDblClick(Sender: TObject);
        procedure C_SaidasTIPOMOVIMENTOChange(Sender: TField);
        procedure C_SaidasDATAChange(Sender: TField);
        procedure C_ParcelasNewRecord(DataSet: TDataSet);
        procedure C_ParcelasBeforePost(DataSet: TDataSet);
        procedure C_SaidasSTATUSChange(Sender: TField);
        procedure pnFotoClienteClick(Sender: TObject);
        procedure pgItensChange(Sender: TObject);
        procedure pgItensChanging(Sender: TObject;
            var AllowChange: Boolean);
        procedure C_SaidasNUMEROChange(Sender: TField);
        procedure dbgParcelasTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dfClienteSelecionou(Sender: TObject);
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure C_ParcelasCalcFields(DataSet: TDataSet);
        procedure btComando2Click(Sender: TObject);
        procedure btContabilidadeClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure btAbrirCaixaClick(Sender: TObject);
        procedure btRetirarClick(Sender: TObject);
        procedure btRepassarClick(Sender: TObject);
        procedure btReceberPgtosClick(Sender: TObject);
        procedure btFecharCaixaClick(Sender: TObject);
        procedure C_SaidasBAIXAESTOQUEChange(Sender: TField);
        procedure C_SaidasALMOXPADRAOChange(Sender: TField);
        procedure ermos1Click(Sender: TObject);
        procedure Itens1Click(Sender: TObject);
        procedure CadastrodoCliente1Click(Sender: TObject);
        procedure NaomostrarmaisAtalhos1Click(Sender: TObject);
        procedure btNotaCupomClick(Sender: TObject);
        procedure ComandosECF1Click(Sender: TObject);
        procedure rocadeBobina1Click(Sender: TObject);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure pmImprimirCupomClick(Sender: TObject);
        procedure cmbTipoCobrancaChange(Sender: TObject);
        procedure cmbCarteiraChange(Sender: TObject);
        procedure btCancelarClick(Sender: TObject);
    procedure ReimprimirOperaes1Click(Sender: TObject);
    procedure GravarIIClick(Sender: TObject);
    procedure AbrirGaveta1Click(Sender: TObject);
    private
        DlgProps: TDlgPropaganda;

        DMContabil: TDMContabilidade;

        Estado: string;

        bNovoCupom, bXECF: Boolean;
        sTmp: string;
        bmpSeta: TBitmap;

        nSelecParcs: Currency;
        sTipoExclusao: string;
        procedure CancelandoMultiplosCartoes;
        procedure EstadoInicial(bForcarLista: Boolean = false);
        procedure EstadoPropaganda;
        procedure AbrirParaFaturar(nSaida: Integer = 0);
        procedure Faturar( bBotao : boolean );
        procedure Gravar;

        procedure ConfigInterface;
        procedure GerarNumeroOperacao;
        procedure ImprimirDocs;
        procedure AbrirOperacaoEscolhida(nSaida: Integer = 0);
        procedure PMSetCondicoesPgto(var Msg: TMessage); message PM_SetCondicoesPgto;
        procedure AtualizaCaixa;
        procedure SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);
        procedure Gravacao( bBotao : boolean );
    public
        { Public declarations }
        DlgPgtos: TDlgInplacePgtos;
    end;

var
    FrmCaixa: TFrmCaixa;
    valores: array[0..7] of Currency;
    hipercard: boolean;
    MultCartao: array[0..7] of TMCartoes;
    MultCartoes: Array[0..7] of TMultiplosCartoes;
const
    formapgto: array[0..8] of string = ('DINHEIRO', 'CHEQUE', 'CHQ ELETRO', 'CARTAO', 'DEP BANC', 'CREDITO', 'OUTROS', 'DOC COBRANCA','InforPOP');

implementation
uses teRender, DM_Projeto, Funcoes, DM_Financeiro, teBkgrnd, Rpt_Invoices,
    Frm_Contabilidade, Dlg_AssistenteConfigCaixa, DM_ECF, Frm_MsgECF,
    Dlg_ImprimirOp, Frm_MsgTEF, FuncoesPAF;

{$R *.DFM}


procedure TFrmCaixa.CancelandoMultiplosCartoes;
var k: Integer;
 msgCancelamento: String;
 Cupons: TStringList;
Begin
  Cupons := TStringList.Create;
  msgCancelamento := 'A venda deverá ser finalizada em outra forma de pagamento.'+#13#10;
  msgCancelamento := msgCancelamento + 'Após  finalização, favor efetuar cancelamento'+#13#10 ;
  msgCancelamento := msgCancelamento + '(no Administrativo dos cartões) dos seguintea cartões:'+#13#10;
  For k := 0 to 7 do Begin
    if (MultCartoes[k].aprovado) then Begin
      msgCancelamento:=msgCancelamento + MultCartoes[k].MsgTEF + #13#10;
      msgCancelamento:=msgCancelamento + 'Rede: ' + MultCartoes[k].rede + #13#10;
      msgCancelamento:=msgCancelamento + 'NSU : ' + MultCartoes[k].nsu  + #13#10;
      msgCancelamento:=msgCancelamento + 'Data: ' + MultCartoes[k].data + #13#10;
      msgCancelamento:=msgCancelamento + 'Hora: ' + MultCartoes[k].hora + #13#10;
      msgCancelamento:=msgCancelamento + 'Vlr : ' + FloatToStr(MultCartoes[k].valores[3])+#13#10; //Cartao
      msgCancelamento:=msgCancelamento + '-----------------------------------------------'+#13#10;
      MultCartao[k].Valor := 0;
      Cupons.Add( msgCancelamento );

      //TEF2.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), FloattoStr(MultCartoes[k].valores[3]), MultCartoes[k].rede, MultCartoes[k].nsu, MultCartoes[k].data, MultCartoes[k].hora, MultCartoes[k].cupom, MultCartoes[k].msgTef);
    end;
  End;
  Cupons.SaveToFile('C:\MultiplosCartoes_'+FormatDateTime('YYYYMMDDHHmmSS',Now)+'.TXT');
  Application.MessageBox(pchar(msgCancelamento),'Atenção',mb_OK);
End;

procedure TFrmCaixa.FormShow(Sender: TObject);
begin
    inherited;
    FormsComponent.Caption := FormsComponent.Caption + ': ' + DMFinanceiro.sNomeContaPadrao;
    lbDataCaixa.Caption := ' - ' + FormatDateTime(ShortDateFormat, DMProjeto.dDataSistema);
    lbDataCaixa.Left := lbCaption.Left + lbCaption.Width + 5;
    if (DMProjeto.dDataSistema < DMProjeto.getDataServidor) then
        lbDataCaixa.Font.Color := clRed;

    pgItens.Bitmap := pnDados.BackgroundOptions.Picture.Bitmap;
    pnStatus.BackgroundOptions.Picture.Bitmap := pnDados.BackgroundOptions.Picture.Bitmap;
    sTipoExclusao := 'Operacao';
    EstadoInicial;

end;

procedure TFrmCaixa.btLimparClick(Sender: TObject);
begin
    inherited;
    EstadoInicial(true);
end;

procedure TFrmCaixa.btGravarClick(Sender: TObject);
begin
    inherited;
    Gravacao( True );
end;

procedure TFrmCaixa.dbgSalesOrderDblClick(Sender: TObject);
begin
    inherited;
    AbrirParaFaturar;
end;

procedure TFrmCaixa.btComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_SalesOrderSaida.Value]);
    DMProjeto.CriarForm(C_SalesOrderFormName.Value, Self, True);
    if not dbgSalesOrder.Visible then
    begin
        if DlgPgtos <> nil then
            DlgPgtos.EstadoInicial;
        AbrirOperacaoEscolhida;
    end;
end;

procedure TFrmCaixa.AbrirParaFaturar;
begin
    {Verificando se o Caixa está aberto}
    if not DMProjeto.bSituacaoCaixa then
    begin
        DlgMsg.ShowMsg(2471);
        exit;
    end;

    dbgSalesOrder.SendToBack;
    dbgSalesOrder.Visible := false;
    pnDados.Enabled := true;

    SetEnableMenu(False, AtualizarListadeSalesOrder1);
    SetEnableMenu(False, ReceberPagto1);
    SetEnableMenu(False, Pagamentos1);
    SetEnableMenu(False, FazerRepasse1);
    SetEnableMenu(false, pmImprimirCupom);
    SetEnableMenu(False, CancelarOperaes1);
    SetEnableMenu(False, ReimprimirOperaes1);

    SetEnableMenu(False, AbrirCaixa1);
    SetEnableMenu(False, FecharCaixa1);

    SetEnableMenu(true, Lista);

    lbEstadoForm.Caption := SeparaStrings(lbEstadoForm.TagStr, ';', 2);
    btGravar.Caption := SeparaStrings(btGravar.TagStr, ';', 2);
    btGravar.Hint := SeparaStrings(btGravar.TagStr, ';', 4);
    Escolher1.Caption := btGravar.Caption;
    lbTit2.Caption := btGravar.Caption;

    Application.ProcessMessages;

    if DMContabil <> nil then
        DMContabil.Iniciar;

    {Carregando o Form de Recebimentos para o FormConteiner}
    if DlgPgtos = nil then
    begin
        DlgPgtos := TDlgInplacePgtos(PgtoCtner.CreateForm(TDlgInplacePgtos));
        DlgPgtos.BitmapTela := pnDados.Backgroundoptions.picture.Bitmap;
        DlgPgtos.C_Parcelas := C_Parcelas;
        PgtoCtner.ShowFormEx(DlgPgtos, true, nil, nil, fcfaClient);
    end;

    AbrirOperacaoEscolhida(nSaida);

    Estado := 'Faturar';
    bNovoCupom := True;
end;

procedure TFrmCaixa.AbrirOperacaoEscolhida;
begin
    {Tipos de Movimento de Faturamento}
    C_TiposMovimento.Close;
    C_TiposMovimento.Open;

    {Selecionando a Operação}
    C_Saidas.DisableControls;
    C_Saidas.Close;
    C_Saidas.FetchParams;
    C_Saidas.Params[0].asInteger := IIF(nSaida = 0, C_SalesOrderSaida.Value, nSaida);
    C_Saidas.Open;

    C_Saidas.Edit;

    C_SaidasCaixa.Value := DMFinanceiro.nContaPadrao;

    {Atualizando o Tipo de Movimento  - change irá atualizar os campos necessários, como número, baixaestoque, etc.}
    C_TiposMovimento.Locate('TipoMovimento', StrToIntDef(DMProjeto.Parametro('TipoMovFatCaixa'), C_TiposMovimentoTipoMovimento.Value), []);
    C_SaidasTipoMovimento.asInteger := C_TiposMovimentoTipoMovimento.Value;

    if C_TiposMovimentoCB_GERARNUM.Value = 'S' then
        C_SaidasNumero.asVariant := null;

    {Atualizando a data - change irá atualizar os vencimentos e competências das Parcelas cadastradas}
    C_SaidasData.Value := DMProjeto.dDataSistema;
    C_Saidas.EnableControls;

    {Se não existe parcelas, gera-se como se fosse a vista - o NewRecord atribui os demais campos}
    C_Parcelas.DisableControls;
    if C_Parcelas.RecordCount = 0 then
    begin
        C_Parcelas.Append;
        C_ParcelasValor.Value := C_SaidasTotal.asCurrency;
        C_ParcelasVencimento.Value := C_SaidasData.Value;
        C_Parcelas.Post;
    end;

    {Selecionando todas as Parcelas que se venceram}
    with C_Parcelas do
    begin
        First;
        while not EOF do
        begin
            if C_ParcelasVencimento.Value <= C_SaidasData.Value then
                dbgParcelas.SelecionarLinha;

            Next;
        end;
        First;
    end;
    C_Parcelas.EnableControls;

    pnFotoCliente.Visible := (C_SaidasLogotipo.Value <> '');

    try
        if pgItens.ActivePageIndex <> 0 then
            pgItens.ActivePageIndex := 0;
        ActiveControl := dbgParcelas;
    except
    end;

    if DlgPgtos <> nil then
    begin
        DlgPgtos.SetCliente(C_SaidasFavorecido.Value, C_SaidasNome.Value);
        DlgPgtos.dtData := C_SaidasData.Value;
    end;

    if C_SaidasCondicoesPgto.Value <> '' then
        PostMessage(Self.Handle, PM_SetCondicoesPgto, 0, 0);

end;

procedure TFrmCaixa.PMSetCondicoesPgto(var Msg: TMessage);
var
    i, nQtd: integer;
    sForma, sFPg: string;
    nVlr: Currency;
begin
    for i := 1 to ContaStrings(C_SaidasCondicoesPgto.Value, '|') do
    begin
        sForma := SeparaStrings(C_SaidasCondicoesPgto.Value, '|', i);
        sFPg := SeparaStrings(sForma, ';', 1);
        nQtd := StrToIntDef(SeparaStrings(sForma, ';', 2), 1);
        nVlr := StrToFloatDef(SeparaStrings(sForma, ';', 3), 0);

        try
            DlgPgtos.SelecionarFPgto(ord(sFPg[1]), nQtd, nVlr);
        except
        end;

    end;
end;

procedure TFrmCaixa.EstadoInicial;
begin
    C_SalesOrder.Close;

    {Verificando se está configurado para exibir propagandas}
    if not bForcarLista and (Estado <> 'Propaganda') and (DMProjeto.Parametro('PropagandaCaixa') = 'S') then
        EstadoPropaganda
    else
    begin
        C_SalesOrder.Open;

        if Estado = 'Propaganda' then
        begin
            if (DlgProps <> nil) then
            begin
                DlgProps.Parar;
            end;

            CtnPropagandas.Visible := false;
            pnTitulo.Visible := true;
            pnNavigator.Visible := true;

        end;

        dbgSalesOrder.Visible := true;
        dbgSalesOrder.BringToFront;
        pnDados.Enabled := false;

        SetEnableMenu(True, AtualizarListadeSalesOrder1);
        SetEnableMenu(True, ReceberPagto1);
        SetEnableMenu(True, Pagamentos1);
        SetEnableMenu(True, FazerRepasse1);
        SetEnableMenu(True, pmImprimirCupom);
        SetEnableMenu(True, CancelarOperaes1);
        SetEnableMenu(True, ReimprimirOperaes1);

        SetEnableMenu(DMFinanceiro.Conta_Situacao(DMFinanceiro.nContaPadrao) <> 'Aberto', AbrirCaixa1);
        SetEnableMenu(not btAbrirCaixa.Enabled, FecharCaixa1);

        SetEnableMenu(false, Lista);

        lbEstadoForm.Caption := SeparaStrings(lbEstadoForm.TagStr, ';', 1);
        btGravar.Caption := SeparaStrings(btGravar.TagStr, ';', 1);
        btGravar.Hint := SeparaStrings(btGravar.TagStr, ';', 3);
        Escolher1.Caption := btGravar.Caption;
        lbTit2.Caption := btGravar.Caption;

        C_TiposMovimento.Close;
        C_Saidas.Close;

        if DlgPgtos <> nil then
            DlgPgtos.EstadoInicial;

        Estado := 'Lista';
    end;

end;

procedure TFrmCaixa.EstadoPropaganda;
begin
    pnNavigator.Visible := false;
    pnTitulo.Visible := false;
    pnDados.Enabled := false;

    CtnPropagandas.Visible := true;
    CtnPropagandas.BringToFront;

    if (DlgProps = nil) then
    begin
        DlgProps := TDlgPropaganda(CtnPropagandas.CreateForm(TDlgPropaganda));
        CtnPropagandas.ShowFormEx(DlgProps, true, nil, nil, fcfaClient);
    end;
    if (DlgProps <> nil) then
    begin
        DlgProps.Iniciar;
    end;

    C_TiposMovimento.Close;
    C_Saidas.Close;

    Estado := 'Propaganda';
end;

procedure TFrmCaixa.C_SaidasTIPOMOVIMENTOChange(Sender: TField);
var sN: string;
begin
    inherited;
    C_TiposMovimento.Locate('TipoMovimento', Sender.asInteger, []);

    if (C_TiposMovimentoCB_Status.Value = 'S') and (C_TiposMovimentoStatusPadrao.asVariant <> null) then
        C_SaidasStatus.Value := C_TiposMovimentoStatusPadrao.Value; //O change deste campo atualiza os status dos itens;

    {Se o Pedido Baixou Estoque e a venda não está configurada para baixar, o campo baixaestoque não pode ser modificado
     pois geraria um estorno do estoque apenas, visto que isto é apenas uma alteração do tipo de movimento }
    if (C_SalesOrderBaixaEstoque.Value = 'N') then
        C_SaidasBaixaEstoque.Value := C_TiposMovimentoBaixaEstoque.Value;

    C_SaidasPossuiTax.Value       := C_TiposMovimentoPossuiTax.Value; {Passar de N -> S não faz efeito, somente de S -> N}
    C_SaidasCalcComissao.Value    := C_TiposMovimentoCalcComissao.Value;
    C_SaidasPossuiEntrega.Value   := C_TiposMovimentoPossuiEntrega.Value;
    C_SaidasTipoPadrao.Value      := C_TiposMovimentoTipoPadrao.Value;
{ Não Respeitava o Almox selecionado na tela que enviou para o Caixa. Caso queira que o Tipo de Movimento
  Defina em qual Almoxarifado ira efetuara a baixa, basta descomentar a linha abaixo.
    C_SaidasAlmoxPadrao.Value     := C_TiposMovimentoAlmoxPadrao.Value;
}
    C_SaidasSerieNota.value       := C_TiposMovimentoSerie.value;
    C_SaidasModelo.value          := C_TiposMovimentoModeloDoc.value;
    C_SaidasPossuiICMS.value      := C_TiposMovimentoPossuiICMS.value;
    C_SaidasPossuiIPI.value       := C_TiposMovimentoPossuiIPI.value;
    C_SaidasPossuiISS.value       := C_TiposMovimentoPossuiISS.value;
    C_SaidasContabilizaICMS.value := C_TiposMovimentoContabilizaICMS.value;

    if C_SaidasUF.value <> DMProjeto.sUFEmpresa then
        sN := '6'
    else
        sN := '5';
    C_SaidasCFOPNota.Value := sN + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);
    C_SaidasPDV.value := DMProjeto.nPDV;

    if (C_SaidasSerieNota.value = 'ECF') and (DMProjeto.Parametro('FaturaServico') <> 'S') then
        C_SaidasTotal.value := C_SaidasTotalGeral.value - C_SaidasTotalServicos.value
    else
        C_SaidasTotal.value := C_SaidasTotalGeral.value;

    ConfigInterface;
end;

procedure TFrmCaixa.ConfigInterface;
begin
    lbStatus.Visible := C_TiposMovimentoCB_Status.Value = 'S';
    cmbStatus.Visible := lbStatus.Visible;
    lbVendedor.Visible := (C_TiposMovimento.FieldByName('CB_VENDEDOR').asString = 'S');
    dbtVendedor.Visible := lbVendedor.Visible;
    spVendedor.Visible := lbVendedor.Visible;

    dfNumero.Visible := (C_TiposMovimentoCB_GERARNUM.Value <> 'S');

    dbgItensI_Codigo.Visible := C_TiposMovimentoCB_Codigo.Value = 'S';
    dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';
    dbgItensFuncProducao.Visible := C_TiposMovimentoCB_FUNCIONARIO.Value = 'S';
    //  dbgItensTaxavel.Visible := C_TiposMovimentoCB_TAX.Value = 'S';
    dbgItensStatus.Visible := C_TiposMovimentoCB_StatusItens.Value = 'S';

    dbgParcelasDOC_GARANTIA.Visible := C_TiposMovimentoCB_DocsGarantia.Value = 'S';

    dbgItensColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
    dbgItensColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
    dbgItensColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
    dbgItensColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';

    lbData.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATA').asString) + ':';
    lbNumero.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_NUMERO').asString) + ':';
    lbMensagem.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_MENSAGEM').asString) + ':';
    lbVendedor.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_VENDEDOR').asString) + ':';

    dbgItensI_Codigo.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Codigo').asString;
    dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Referencia').asString;
    dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCRICAO').asString;
    dbgItensUnidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_UNIDADE').asString;
    dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_QUANTIDADE').asString;
    dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PRECO').asString;
    dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_SUBTOTAL').asString;
    dbgItensFuncProducao.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FUNCIONARIO').asString;
    // dbgItensTaxavel.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TAX').asString;

    dbgItensColuna1.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna1').asString;
    dbgItensColuna2.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna2').asString;
    dbgItensColuna3.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna3').asString;
    dbgItensColuna4.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna4').asString;

end;

procedure TFrmCaixa.C_SaidasDATAChange(Sender: TField);
var
    TmpDS: TClientDataSet;
    nDifDays: Integer;
begin
    inherited;
    if (C_Parcelas.RecordCount > 0) then
    begin
        nDifDays := Trunc(C_SaidasData.Value) - Trunc(C_ParcelasCompetencia.Value);

        TmpDS := TClientDataSet.Create(self);
        with TmpDS do
        begin
            CloneCursor(C_Parcelas, True);
            First;
            while not EOF do
            begin
                Edit;
                FieldByName('Vencimento').asDateTime := FieldByName('Vencimento').asDateTime + nDifDays;
                FieldByName('Competencia').asDateTime := C_SaidasData.Value;
                Post;
                Next;
            end;
        end;
        TmpDS.Free;

    end;

    if DlgPgtos <> nil then
    begin
        DlgPgtos.dtData := C_SaidasData.Value;
    end;

end;

procedure TFrmCaixa.C_ParcelasNewRecord(DataSet: TDataSet);
begin
    inherited;

    C_ParcelasID.Value := -1;

    C_ParcelasParcela.Value := 1;
    C_ParcelasValor.Value := 0;
    C_ParcelasValorPago.Value := 0;
    C_ParcelasStatus.Value := 1;
    C_ParcelasVALORDESCANTECIPADO.Value := 0;
    C_ParcelasJUROSPLANO.Value := 0;
    C_ParcelasDESCONTOS.Value := 0;
    C_ParcelasJuros.Value := 0;
    C_ParcelasJUROSRECEBIDOS.Value := 0;
    C_ParcelasVALORJUROSMORA.Value := 0;
    C_ParcelasVALORMULTA.Value := 0;
    C_ParcelasCREDITOGERADO.Value := 0;
    C_ParcelasCREDITOUTILIZADO.Value := 0;
    C_ParcelasPERCENTUALMORA.Value := 0;
    C_ParcelasPERCENTUALMULTA.Value := 0;
end;

procedure TFrmCaixa.C_ParcelasBeforePost(DataSet: TDataSet);

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
    if C_PlanosPagamentoPlanoPagamento.VAlue <> C_SaidasPlanoPagamento.Value then
        C_PlanosPagamento.Locate('PlanoPagamento', C_SaidasPlanoPagamento.Value, []);

    C_ParcelasCOMPETENCIA.Value := C_SaidasData.Value;
    C_ParcelasDATAATRASADO.Value := DMProjeto.PrimeiroDiaUtil(C_ParcelasVencimento.Value, False);

    if C_PlanosPagamentoPDesconto.Value > 0 then
    begin
        C_ParcelasDATAANTECIPACAO.Value := C_ParcelasVencimento.Value -
            C_PlanosPagamentoDias_Antecipacao.asInteger;

        C_ParcelasVALORDESCANTECIPADO.asCurrency := C_ParcelasValor.asCurrency *
            (C_PlanosPagamentoPDesconto.Value / 100);
    end;

    C_ParcelasCliente.Value := C_SaidasFavorecido.Value;
    C_ParcelasNotaFiscal.Value := C_SaidasNumero.Value;
    if C_ParcelasNOTAFISCAL.Value <> '' then
        C_ParcelasTITULO.Value := Adicionarstr(C_ParcelasNotaFiscal.Value, '0', 6) + '-' +
            C_ParcelasParcela.asString
    else
        C_ParcelasTITULO.Value := AdicionarStr(IntToStr(DMProjeto.NextID('Titulo')), '0', 6) + '-' +
            C_ParcelasParcela.asString;

    C_ParcelasVendedor.AsVariant := C_SaidasVENDEDOR.asVariant;
    C_ParcelasUSUARIO.Value := DMProjeto.nFuncionario;

    {Status}
    if C_ParcelasValor.asCurrency <= C_ParcelasPgtos.asCurrency then
        C_ParcelasStatus.Value := 50
    else
        C_ParcelasStatus.Value := StatusTitulo(C_ParcelasVencimento.Value, C_ParcelasDATAATRASADO.Value);

end;

procedure TFrmCaixa.C_SaidasSTATUSChange(Sender: TField);
begin
    inherited;
    if C_Itens.RecordCount > 0 then
    begin
        try
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
            begin
                if (C_ItensStatus.Value <> 'M') and (C_ItensI_TipoItem.Value in [1, 2]) then
                begin
                    C_Itens.Edit;
                    C_ItensStatus.Value := Sender.asString;
                    C_Itens.Post;
                end;
                C_Itens.Next;
            end;
            C_Itens.First;
        finally
            C_Itens.EnableControls;
        end;
    end;

end;

procedure TFrmCaixa.pnFotoClienteClick(Sender: TObject);
var
    r: TRect;
    bOn: Boolean;
begin
    inherited;
    bOn := pnFotoCliente.Width = 9;

    r.Left := pnFotoCliente.Left;
    r.Top := pnFotoCliente.Top;
    r.Right := pnFotoCliente.Left + 128;
    r.Bottom := pnFotoCliente.Top + 96;

    if bOn then
    begin {Mostrar Foto}
        if bmpSeta = nil then
            bmpSeta := TBitMap.Create;

        bmpSeta.Assign(pnFotoCliente.BackGroundOptions.Picture.Bitmap);

        T_FotoClienteOn.Prepare(pnFotoCliente.Parent, R);
        pnFotoCliente.Width := 128;
        pnFotoCliente.Height := 96;

        try
            pnFotoCliente.BackGroundOptions.Picture.LoadFromFile(C_SaidasLogotipo.Value);
            pnFotoCliente.BackGroundOptions.GlassVisible := false;
            pnFotoCliente.BackGroundOptions.PictureMode := fcpmStretch;
        except
            pnFotoCliente.Width := 9;
            pnFotoCliente.Height := 83;
            pnFotoCliente.BackGroundOptions.PictureMode := fcpmCenter;
            T_FotoClienteOn.unPrepare;
        end;

        try
            if T_FotoClienteOn.Prepared then
                T_FotoClienteOn.Execute;
        finally
            T_FotoClienteOn.unPrepare;
        end;
    end
    else
    begin
        T_FotoClienteOff.Prepare(pnFotoCliente.Parent, R);
        pnFotoCliente.Width := 9;
        pnFotoCliente.Height := 83;

        pnFotoCliente.BackGroundOptions.Picture.Bitmap.Assign(bmpSeta);
        pnFotoCliente.BackGroundOptions.GlassVisible := True;
        pnFotoCliente.BackGroundOptions.PictureMode := fcpmCenter;

        try
            if T_FotoClienteOff.Prepared then
                T_FotoClienteOff.Execute;
        finally
            T_FotoClienteOff.unPrepare;
        end;

    end;

end;

procedure TFrmCaixa.pgItensChange(Sender: TObject);
begin
    inherited;
    try
        if T_Termos.Prepared then
            T_Termos.Execute;
        if T_Itens.Prepared then
            T_Itens.Execute;
    finally
        if T_Termos.Prepared then
            T_Termos.unPrepare;
        if T_Itens.Prepared then
            T_Itens.unPrepare;
    end;
end;

procedure TFrmCaixa.pgItensChanging(Sender: TObject;
    var AllowChange: Boolean);
var
    R: TRect;
begin
    inherited;

    R.TopLeft :=
        ControlScreenToClient(pgItens.Parent,
        ControlClientToScreen(pgItens.ActivePage,
        pgItens.ActivePage.ClientRect.TopLeft));
    R.BottomRight :=
        ControlScreenToClient(pgItens.Parent,
        ControlClientToScreen(pgItens.ActivePage,
        pgItens.ActivePage.ClientRect.BottomRight));

    if pgItens.ActivePage = tsItens then
        T_Termos.Prepare(pgItens.Parent, R)
    else if pgItens.ActivePage = tsTermos then
        T_Itens.Prepare(pgItens.Parent, R);
end;

procedure TFrmCaixa.C_SaidasNUMEROChange(Sender: TField);
var
    sSigla, sNum: string;
begin
    inherited;
    {Verificando se o Número possui 6 digitos}
    if pos('-', Sender.asString) > 0 then
    begin
        sSigla := SeparaStrings(Sender.asString, '-', 1) + '-';
        sNum := SeparaStrings(Sender.asString, '-', 2);
    end
    else
        sNum := Sender.asString;

    if Length(sNum) < 6 then
    begin
        sNum := AdicionarStr(sNum, '0', 6);
        Sender.asString := sSigla + sNum;
    end;

end;

procedure TFrmCaixa.dbgParcelasTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
begin
    inherited;
    nSelecParcs := dbgParcelas.TotalSelecionado('Valor');
    cmbTipoCobranca.OnChange(self);
    if C_Parcelas.State = dsBrowse then
        C_Parcelas.Edit;

    if bSelected then
        C_ParcelasPagamento.Value := C_ParcelasValor.Value
    else
        C_ParcelasPagamento.Value := 0;

    {Atualizando Rotina de Recebimento}
    if DlgPgtos <> nil then
    begin
        DlgPgtos.UpdateValorReceber(nSelecParcs);
        DlgPgtos.dtData := C_SaidasData.Value;
    end;

end;

procedure TFrmCaixa.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = VK_F8 then
    begin
        Key := 0;
        EstadoInicial;
    end;

    inherited;

    if ((ssAlt in Shift) or (ssCtrl in Shift)) and (Key in [ord('1')..ord('7')]) and (DlgPgtos <> nil) then
        DlgPgtos.SelecionarFPgto(Key);

//    if (Estado = 'Faturar') and (Shift = [ssShift]) and (Key = VK_F5) then
//      Gravacao( False );

end;

procedure TFrmCaixa.dfClienteSelecionou(Sender: TObject);
begin
    inherited;
    if DlgPgtos <> nil then
    begin
        DlgPgtos.SetCliente(C_SaidasFavorecido.Value, C_SaidasNome.Value);
    end;
end;

procedure TFrmCaixa.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_SaidasTIPOMOVIMENTO.asVariant, 1]);
end;

procedure TFrmCaixa.Faturar( bBotao : boolean );
var
    i,k,z, nMsg, comprovante, PossuiTEF, registros, NroCartoes: Integer;
    nDif, nParcelas: Currency;
    sTmp, MsgTEF, sCliente, sVendedor, sEndereco, rede, nsu, data, hora, Msg: string;
    Aprovado, bECF: Boolean;
    Cupom: TStringList;
      imprimiu:Boolean;
      tentativas:Integer;
begin

    C_TiposMovimento.Locate('TipoMovimento', C_SaidasTipoMovimento.Value, []);

    {*** Validando o Faturamento ***}

    {Cliente}
    if C_SaidasFavorecido.AsInteger = 0 then
    begin
        DlgMsg.ShowMsg(221);
        try
            dfCliente.SetFocus;
        except
        end;

        exit;
    end;

    {Existência de Parcelas}
    if (C_Parcelas.RecordCount = 0) then
    begin
        C_Parcelas.Append;
        C_ParcelasValor.asCurrency := C_SaidasTotal.asCurrency;
        C_ParcelasVencimento.Value := C_SaidasData.Value;
        C_ParcelasParcela.Value := 1;
        C_Parcelas.Post;
    end;

    {É obrigatório selecionar parcelas para serem pagas}
    if dbgParcelas.Selecionados = '' then
    begin
        DlgMsg.ShowMsg(2500);
        exit;
    end;
    if (C_TiposMovimentoCB_GERARNUM.Value <> 'S') and (C_SaidasNumero.Value = '') then
    begin
        DlgMsg.ShowMsg(2333);
        exit;
    end;

    {Verificando Duplicidade}
    {Não permitindo número Duplicado}
    if (C_TiposMovimentoCB_GERARNUM.Value <> 'S') then
        with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(saida) as Existentes from Saidas ' +
                'where TipoMovimento = :TM and Numero = :N and Saida <> :S ';
            ParamByName('TM').asInteger := C_SaidasTipoMovimento.Value;
            ParamByName('N').asString := C_SaidasNumero.Value;
            ParamByName('S').asInteger := C_SaidasIDMestre.asInteger;
            Open;

            i := FieldByName('Existentes').asInteger;
            Close;

            if (i > 0) then
            begin
                DlgMsg.ShowMsg(2102, [C_SaidasNumero.Value, CmbTipoMovimento.Text]);
                Exit;
            end;
        end;

    {Validando o Recebimento}
    if (DlgPgtos <> nil) and not DlgPgtos.Validar then
        exit;

    {Está aqui para que possa atualizar demais campos das parcelas}
    if C_Parcelas.RecordCount > 0 then
    begin
        {Garantindo atualização de campos da invoice: Cliente, Vendedor, Número da Nota, Títulos, etc.(POST)}
        C_Parcelas.First;
        while not C_Parcelas.EOF do
        begin
            C_Parcelas.Edit;
            C_Parcelas.Post;
            C_Parcelas.Next
        end;
    end;

    {Verificando se é Pagamento completo, parcial ou gera crédito}
    if DlgPgtos <> nil then
    begin
        {Verificando se está a menor}
        if DlgPgtos.GetRecebido < nSelecParcs then
        begin {Pgto. Parcial}
            nDif := 0;
            nMsg := 2509;
        end
        else if (DlgPgtos.GetRecebido - DlgPgtos.GetTroco) > nSelecParcs then
        begin {Pgto. gerando crédito => Troco a menor}
            nDif := (DlgPgtos.GetRecebido - DlgPgtos.GetTroco) - nSelecParcs;
            nMsg := 2511;
        end
        else
        begin
            nDif := 0;
            nMsg := 2510;
        end;
    end;

    {*** Confirmando gravação com o usuário ***}
    if DMProjeto.Parametro('Confirmacao') = 'S' then
    begin
        if DlgMsg.ShowMsg(nMsg, [IIF(nDif <> 0, FormatCurr('#,##0.00', nDif), '')]) <> 100 then
            exit;
    end;

    {Ajustando Titulos para Pagamento a Menor => Pgto. Parcial dos titulos selecionados}
    if (nMsg = 2509) and (DlgPgtos.GetRecebido > 0) then
        with C_Parcelas do
        begin
            Last;
            nDif := ABS(nSelecParcs - DlgPgtos.GetRecebido);
            while not BOF or (nDif > 0) do
            begin
                if C_Parcelas_icSelecionado.Value = 1 then
                begin
                    C_Parcelas.Edit;
                    if nDif > C_ParcelasPagamento.asCurrency then
                    begin
                        dbgParcelas.RemoverSelecao;
                        nDif := nDif - C_ParcelasValor.asCurrency;
                    end
                    else if nDif < C_ParcelasPagamento.asCurrency then
                    begin
                        C_ParcelasPagamento.asCurrency := C_ParcelasPagamento.asCurrency - nDif;
                        nDif := 0;
                    end;
                end;
                Prior;
            end;

        end;
    (* Impressão do Cupom Fiscal *)
    if bBotao then
      bECF := DMProjeto.bECFAtivo
    else
      bECF := bBotao;
    bXECF := bECF;
    if bECF then
    begin
        if bNovoCupom then
        begin
            if (DMProjeto.bCaixa) and (DMProjeto.bSituacaoCaixa) and (DMFinanceiro.Caixa_MovimentoCorrente < DMProjeto.dDataSistema) then
            begin
                if DlgMsg.ShowMsg(412, [formatdatetime(shortdateformat, DMFinanceiro.Caixa_MovimentoCorrente)]) = 100 then
                begin
                    DMProjeto.CriarForm('DlgFechamento', self, true);
                    Exit;
                end
                else
                    Exit;
            end;
            if (DMProjeto.bCaixa) and (not DMProjeto.bSituacaoCaixa) then
            begin
                if DlgMsg.ShowMsg(413) = 100 then
                begin
                    DMProjeto.CriarForm('DlgAberturaCaixa', self, true);
                    Exit;
                end
                else
                    Exit;
            end;
            if DMECF.ECF1.ChkECFAberto = 'ECF Fechado' then
            begin
                if DlgMsg.ShowMsg(6036) = 100 then
                begin
                  DMECF.ECF1.AberturaDia('0,01', 'Dinheiro');
                  if not (DMProjeto.nModeloECF in [1,10]) then
                    DMECF.ECF1.Sangria('0,00', DMProjeto.sLoginName);
                    Exit;
                end
                else
                    Exit;
            end;
            if DMECF.ECF1.LeData <> FormatDateTime('ddmmyy', DMProjeto.dDataSistema) then
            begin
                DlgMsg.ShowMsg(6037);
                Exit;
            end;
            if (DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') and (DMECF.ECF1.SubTotal <> 0) then
            begin
                if not DMECF.ECF1.CancelaUltimoCupom then
                    Exit;
            end;
            C_Itens.First;
            while not C_Itens.Eof do
            begin
                if not (C_ItensI_TipoItem.Value in [1, 2]) then
                begin
                    if not (C_Itens.State in [dsInsert, dsEdit]) then
                        C_Itens.Edit;
                    C_ItensALIQICMS.Value := DMProjeto.nISS;
                    C_Itens.Post;
                end;
                C_Itens.Next;
            end;
            registros := C_Itens.RecordCount;
            i := 1;
            C_Itens.First;
            while i <= registros do begin
                if C_ItensPreco.Value <= 0 then begin
                    ShowMessage('<<<< Erro: Item Sem Preço  >>>>'+#13+
                                'Codigo: '+C_ItensI_CODIGO.AsString+#13+
                                '  Item: '+C_ItensDESCRICAO.AsString);
                    C_Itens.Delete;
                    registros := registros - 1;
                end;
                if DMProjeto.Parametro('FaturaServico') = 'S' then begin
                    if DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto' then
                    begin
                        if DMECF.ECF1.VendeItem(C_ItensI_CODIGO.AsString,
                                        RetiraAcentos(C_ItensDESCRICAO.AsString),
                                        C_ItensSITUACAOECF.AsString,
                                        iif((C_ItensREDUCAOCST.Value > 0),
                                        FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                        FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F',
                                        FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                        DMProjeto.nCasasDecimais, //3
                                        FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                        '$',
                                        '0000',
                                        Copy(C_ItensUnidade.AsString,1,2)) then
                        begin
                            i := i + 1;
                            C_Itens.Next;
                        end
                        else
                        begin
                            C_Itens.Delete;
                            registros := registros - 1;
                        end;
                    end else begin
                        if DMECF.ECF1.AbreCupom('') then
                        begin
                            if DMECF.ECF1.VendeItem(C_ItensI_CODIGO.AsString,
                                        RetiraAcentos(C_ItensDESCRICAO.AsString),
                                        C_ItensSITUACAOECF.AsString,
                                        iif((C_ItensREDUCAOCST.Value > 0),
                                        FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                        FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F',
                                        FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                        DMProjeto.nCasasDecimais, //3
                                        FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                        '$',
                                        '0000',
                                        Copy(C_ItensUnidade.AsString,1,2)) then
                            begin
                                i := i + 1;
                                C_Itens.Next;
                            end
                            else
                            begin
                                C_Itens.Delete;
                                registros := registros - 1;
                            end;
                        end
                        else
                        begin
                            C_Itens.Delete;
                            registros := registros - 1;
                        end;
                    end;
                end
                else begin
                    if C_ItensI_TipoItem.Value in [1, 2] then begin
                        if DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto' then begin
                          imprimiu:=False;
                          tentativas:=1;
                          Repeat
                             Try
                               imprimiu:= DMECF.ECF1.VendeItem(C_ItensI_CODIGO.AsString,
                                              RetiraAcentos(C_ItensDESCRICAO.AsString),
                                              C_ItensSITUACAOECF.AsString,
                                              iif((C_ItensREDUCAOCST.Value > 0),
                                              FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                              FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                              'F',
                                              FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                              DMProjeto.nCasasDecimais, //3
                                              FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                              '$',
                                              '0000',
                                              Copy(C_ItensUnidade.AsString,1,2));
                               if imprimiu Then Begin
                                 i := i + 1;
                                 C_Itens.Next;
                                 tentativas := 6;
                               End Else Begin
                                 inc(tentativas);
                                 Sleep(10);
                               End;
                             Except
                             End;
                           Until (tentativas > 5);
                           if Not (imprimiu) then begin
                               C_Itens.Delete;
                               registros := registros - 1;
                           end;
                        end
                        else
                        begin
                            if DMECF.ECF1.AbreCupom('') then
                            begin
                                if DMECF.ECF1.VendeItem(C_ItensI_CODIGO.AsString,
                                        RetiraAcentos(C_ItensDESCRICAO.AsString),
                                        C_ItensSITUACAOECF.AsString,
                                        iif((C_ItensREDUCAOCST.Value > 0),
                                        FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                        FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F',
                                        FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                        DMProjeto.nCasasDecimais, //3
                                        FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                        '$',
                                        '0000',
                                        Copy(C_ItensUnidade.AsString,1,2)) then                                begin
                                    i := i + 1;
                                    C_Itens.Next;
                                end
                                else
                                begin
                                    C_Itens.Delete;
                                    registros := registros - 1;
                                end;
                            end
                            else
                            begin
                                C_Itens.Delete;
                                registros := registros - 1;
                            end;
                        end;
                    end
                    else
                    begin
                        C_Itens.Next;
                        i := i + 1;
                        //Sleep(100);
                    end;
                end;
            end;
            if Abs(C_SaidasTOTAL.AsFloat + C_SaidasDESCONTO.AsFloat - DMECF.ECF1.SubTotal) > 0.03 then
            begin
                if DlgMsg.ShowMsg(6038) = 100 then
                begin
                    DMECF.ECF1.CancelaUltimoCupom;
                    Exit;
                end;
            end;
        end;
        MsgTEF := '';
        comprovante := 0;
        aprovado := true;
        PossuiTEF := 0;
        Cupom := TStringList.Create;
        DlgPgtos.ValoresPagos(valores, hipercard, MultCartao);

        NroCartoes := 0;
        For k := 0 to 7 do Begin
           MultCartoes[k].comprovante :=0;
           MultCartoes[k].PossuiTEF :=0;
           MultCartoes[k].MsgTEF := '';
           MultCartoes[k].rede := '';
           MultCartoes[k].nsu  := '';
           MultCartoes[k].data := '';
           MultCartoes[k].hora := '';
           MultCartoes[k].valores[0] := 0; //Dinheiro
           MultCartoes[k].valores[1] := 0; //Cheque
           MultCartoes[k].valores[2] := 0; //Cheque Eletronico
           MultCartoes[k].valores[3] := MultCartao[k].Valor; //Cartao
           MultCartoes[k].Cartao     := MultCartao[k].Cartao; //Descricao Cartao.
           MultCartoes[k].valores[4] := 0;
           MultCartoes[k].valores[5] := 0;
           MultCartoes[k].valores[6] := 0;
           MultCartoes[k].valores[7] := 0;
           MultCartoes[k].cupom      := TstringList.Create();
           MultCartoes[k].aprovado   := false;
           MultCartoes[k].HiperCard  := iif(MultCartao[k].Cartao = 'HiperCard',True,False);
           MultCartoes[k].Dirreq     := '';
           MultCartoes[k].DirResp    := '';
           if MultCartao[k].Valor > 0 Then
              Inc(NroCartoes);
        End;
        nParcelas := 0;
        for i := 0 to 6 do
            nParcelas := nParcelas + valores[i];
        if (nParcelas < DMECF.ECF1.SubTotal + C_SaidasDESCONTO.AsFloat) then
            valores[7] := DMECF.ECF1.SubTotal + C_SaidasDESCONTO.AsFloat - nParcelas;
        if DMProjeto.bTEF Then Begin
          dmECF.TEF1.diretorioreq := 'C:\TEF_DIAL\REQ';
          dmECF.TEF1.diretorioresp := 'C:\TEF_DIAL\RESP';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
          dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := 'C:\HiperTEF\req';
          dmECF.TEF1.diretorioresp := 'C:\HiperTEF\resp';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := '';
          dmECF.TEF1.diretorioresp := '';
        End;
        if DMProjeto.bTEF and (DMProjeto.ParametroTEF('ConsultaCheque') = 'S') and (Valores[1] > 0) then
            with DlgPgtos do
            begin
                C_Cheques.First;
                dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
                dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
                while not C_Cheques.Eof do
                begin
                    if dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
                    begin
                        aprovado := dmECF.TEF1.Cheques(IntToStr(DMProjeto.NextID('TEF')), C_ChequesValor.AsCurrency,
                            iif(Length(C_ChequesCPF_CNPJ.AsString) > 11, 'J', 'F'), C_ChequesCPF_CNPJ.AsString, FormatDateTime('ddmmyyyy', C_ChequesVencimento.AsDateTime),
                            C_ChequeslkCodBanco.AsString, C_ChequesAgencia.AsString, C_ChequesAgenciaDV.AsString, C_ChequesConta.AsString, C_ChequesContaDV.AsString,
                            IntToStr(C_ChequesNumCheque.AsInteger), C_ChequesChequeDV.AsString, Msg);
                        if aprovado then
                        begin
                            Application.ProcessMessages;
                            ShowMessage(Msg);
                        end
                        else
                        begin
                            Application.ProcessMessages;
                            ShowMessage(Msg);
                            dmECF.TEF1.FinalizaTEF;
                            bNovoCupom := False;
                            Exit;
                        end;
                    end
                    else
                    begin
                        dmECF.TEF1.FinalizaTEF;
                        ShowMessage('Gerenciador Padrão não está ativo.');
                        bNovoCupom := False;
                        Exit;
                    end;
                    dmECF.TEF1.FinalizaTEF;
                    C_Cheques.Next;
                end;
                dmECF.TEF1.FinalizaTEF;
                if not (C_Saidas.State in [dsInsert, dsEdit]) then
                    C_Saidas.Edit;
                C_SaidasLabelMsg.Value := '';
                C_Saidas.Post;
            end;
        If NroCartoes <= 1 Then Begin
            if DMProjeto.bTEF and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then
            begin
                if not dmECF.VerificaTEF(valores, aprovado, MsgTEF, Cupom, PossuiTEF, comprovante, hipercard) then
                begin
                    bNovoCupom := False;
                    Exit;
                end;
                /// FALTA COLOCAR A MENSAGEM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                if PossuiTEF = 1 then
                begin
                    if not (C_Saidas.State in [dsInsert, dsEdit]) then
                        C_Saidas.Edit;
                    C_SaidasLabelMsg.Value := MsgTEF;
                    C_Saidas.Post;
                    Application.ProcessMessages;
                end;
            end;
            if DMProjeto.Parametro('ImprimeCliente') = 'S' then
            begin
                sCliente := iif(C_SaidasNome.Value <> '', C_SaidasNome.Value, '');
                sCliente := sCliente + iif(C_SaidasF_CPF_CNPJ.Value <> '', ' -- CPF:' + C_SaidasF_CPF_CNPJ.Value, '');
            end
            else
                sCliente := '';
            if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
                sVendedor := C_SaidasNomeVendedor.Value
            else
                sVendedor := '';
            if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
                sEndereco := C_SaidasEndereco.Value
            else
                sEndereco := '';
            if not dmECF.FechamentoCupomTEF(cupom, valores, FormaPgto, C_SaidasDESCONTO.AsCurrency, C_SaidasOBS.Value, sCliente, sVendedor, sEndereco, PossuiTEF) then
            begin
                bNovoCupom := False;
                exit;
            end
            else
            begin
                if not (C_Saidas.State in [dsInsert, dsEdit]) then
                    C_Saidas.Edit;
                C_SaidasNUMERO.AsString := 'COO:' + DMECF.ECF1.COO;
                C_Saidas.Post;
            end;
            if not DMECF.ImprimeTEF(comprovante, cupom, valores, rede, nsu, data, hora) then
                Exit
            else
            begin
                DlgPgtos.NSU := NSU;
                DlgPgtos.RedeNSU := Rede;
                DlgPgtos.DataNSU := Data;
                DlgPgtos.HoraNSU := Hora;
            end;
            if PossuiTEF = 1 then
            begin
                if not (C_Saidas.State in [dsInsert, dsEdit]) then
                    C_Saidas.Edit;
                C_SaidasLabelMsg.Value := '';
                C_Saidas.Post;
                DMECF.TEF1.FinalizaTEF;
            end;
            // Autenticação de Cheques...
            if (DMProjeto.Parametro('AutenticaCheques') = 'S') and (DlgPgtos.C_Cheques.RecordCount > 0) then begin
              DlgPgtos.C_Cheques.First;
              for i := 1 to 5 do begin
                if DlgMsg.ShowMsg( 8055, [DlgPgtos.C_ChequesNumCheque.AsString] ) = 100 then begin
                  DMECF.ECF1.Autenticacao( DlgPgtos.C_ChequesValor.AsString, 'Cheque Num ' + DlgPgtos.C_ChequesNumCheque.AsString );
                end;
                DlgPgtos.C_Cheques.Next;
                if DlgPgtos.C_Cheques.EOF then Break;
              end;
            end;
        end Else Begin      //Multiplos Cartões Inicio.
          cupom.Clear;
        if DMProjeto.bTEF and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then
            For k := 0 to (NroCartoes - 1) do Begin
             if not dmECF.VerificaTEF(MultCartoes[k].valores,
                                       MultCartoes[k].aprovado,
                                       MultCartoes[k].MsgTEF,
                                       MultCartoes[k].cupom,
                                       MultCartoes[k].PossuiTEF,
                                       MultCartoes[k].comprovante,
                                       MultCartoes[k].HiperCard) then begin
                 PossuiTEF := 0;
                 NroCartoes := 0;
                 DlgPgtos.C_Cartoes.EmptyDataSet;
                 DlgPgtos.cbCartao.Checked := False;
                 Application.MessageBox('Venda com multiplos cartões devera ser cancelada.','Aviso',mb_ok);
                 CancelandoMultiplosCartoes;
                 DMProjeto.bTimer := True;
                 Exit;
              end Else Begin
                    PossuiTEF := 1;
                    if MultCartoes[k].valores[3] > 0 then begin
                      if MultCartoes[k].HiperCard then begin
                        TEF2.diretorioreq := 'C:\HiperTEF\req';
                        TEF2.diretorioresp := 'C:\HiperTEF\resp';
                      end  else begin
                        TEF2.diretorioreq := 'C:\TEF_DIAL\REQ';
                        TEF2.diretorioresp := 'C:\TEF_DIAL\RESP';
                      end;
                    end else begin
                      TEF2.diretorioreq := 'C:\TEF_DISC\REQ';
                      TEF2.diretorioresp := 'C:\TEF_DISC\RESP';
                    End;
                    for z:=0 to MultCartoes[k].cupom.Count -1  do
                       cupom.Add(MultCartoes[k].cupom[z]);
                  TEF2.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')),MultCartoes[k].rede,MultCartoes[k].nsu,MultCartoes[k].data,MultCartoes[k].hora);
                End;
              End;
            End;
            dmProjeto.bTimer := True;

            if PossuiTEF = 1 then begin
               if not (C_Saidas.State in [dsInsert, dsEdit]) then
                   C_Saidas.Edit;
               C_SaidasLabelMsg.Value := MsgTEF;
               C_Saidas.Post;
      //         SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
      //         ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
      //         FormVenda.SetFocus;
      //         FormVenda.Repaint;
            end;

            if DMProjeto.Parametro('ImprimeCliente') = 'S' then
            begin
                sCliente := iif(C_SaidasNome.Value <> '', C_SaidasNome.Value, '');
                sCliente := sCliente + iif(C_SaidasF_CPF_CNPJ.Value <> '', ' -- CPF:' + C_SaidasF_CPF_CNPJ.Value, '');
            end
            else
                sCliente := '';
            if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
                sVendedor := C_SaidasNomeVendedor.Value
            else
                sVendedor := '';
            if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
                sEndereco := C_SaidasEndereco.Value
            else
                sEndereco := '';
            if not dmECF.FechamentoCupomTEF(cupom, valores, FormaPgto, C_SaidasDESCONTO.AsCurrency, C_SaidasObs.Value, sCliente, sVendedor, sEndereco, PossuiTEF) then begin
                  DMProjeto.bTimer := True;
                  exit;
            end;
            comprovante :=1;
            if DMProjeto.bTEF and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then  Begin
              if DMECF.ImprimeTEF(comprovante, cupom, valores, rede, nsu, data, hora) then Begin
                DlgPgtos.NSU := NSU;
                DlgPgtos.RedeNSU := Rede;
                DlgPgtos.DataNSU := Data;
                DlgPgtos.HoraNSU := Hora;
              end;
              if PossuiTEF = 1 then begin
                if not (C_Saidas.State in [dsInsert, dsEdit]) then
                   C_Saidas.Edit;
                C_SaidasLabelMsg.Value := '';
                C_Saidas.Post;
                DMECF.TEF1.InicializaTEF;
              end;
            End;
            DMProjeto.bTimer := True;
    end;





    {*** Gravando a operação como invoice ***}
    Gravar;

    (* Abrindo a gaveta de dinheiro... *)
  {  if DMProjeto.Parametro('Gaveta') = 'S' then
     AbrirGaveta;}

    sTmp := C_TiposMovimentoCB_ImprimirOP.Value;
    if sTmp = '' then
        sTmp := 'N';

    if sTmp[1] in ['I', 'S'] then
        ImprimirDocs;
    {PAF}
    if (DMPRojeto.PAFObrigatorio) Then Begin
      DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
      FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
    End;
    EstadoInicial;

end;

procedure TFrmCaixa.Gravar;
Var BaixaEstoqueFiscal: String;
begin
    try
       If bXECF Then
         BaixaEstoqueFiscal:='S'
       Else
         BaixaEstoqueFiscal:='N';
        {Start Transaction}
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        {GerandoIDs para as Parcelas - visto que é a única coisa que o usuário pode editar}
        DMProjeto.GenerateIDs(C_Parcelas, 'ID');
        C_Saidas.Edit;
        C_SaidasBaixaEstoqueFiscal.Value := BaixaEstoqueFiscal;
        With C_Itens do Begin
          DisableControls;
          First;
          while not EOF do Begin
            Edit;
            FieldByName('BaixaEstoqueFiscal').Value := BaixaEstoqueFiscal;
            Next;
          End;
          First;
          EnableControls;
        End;
        {Gravando Querys principais}
        C_Saidas.ApplyUpdates(0);

        {Complemento da Gravação}
        {Atualizando o Endereço do Cliente}
        DMProjeto.AtualizarClienteVenda(C_SaidasFavorecido.Value,
            C_SaidasData.Value,
            C_SaidasTotal.Value,
            C_SaidasENDERECO.Value,
            C_SaidasCIDADE.VAlue,
            C_SaidasUF.Value, C_SaidasCEP.Value, C_SaidasFone1.Value,
            C_SaidasEMAIL.Value);

        {Calculando a Comissão da Venda}
        if C_SAIDASCalcComissao.Value = 'S' then
        begin
            DMProjeto.CalcularComissao(C_SaidasIDMestre.asString);
        end;

        C_Itens.First;
        while not C_Itens.eof do begin
            {Associado o Item com a Produção}
            if C_ItensProducao.Value <> 0 then
                with Q_SQL do begin
                    Close;
                    SQL.Text := 'Update ProducoesFunc set SAIDAITEM = :SI where Producao = :PROD ';
                    Params[0].asInteger := C_ItensIDITEM.Value;
                    Params[1].asInteger := C_ItensProducao.Value;
                    ExecSQL;
                end;
            {Associado o Item com a Despesa}
            if C_ItensDespesa.Value <> 0 then
                with Q_SQL do begin
                    Close;
                    SQL.Text := 'Update ContasOperacao set SAIDAITEM = :SI where ContaOperacao = :C ';
                    Params[0].asInteger := C_ItensIDITEM.Value;
                    Params[1].asInteger := C_ItensDespesa.Value;
                    ExecSQL;
                end;
            {Associado o Item com a EntradaItem}
            if C_ItensEntradaItem.Value <> 0 then
                with Q_SQL do begin
                    Close;
                    SQL.Text := 'Update EntradasItens set SAIDAITEM = :SI where EntradaItem = :EI ';
                    Params[0].asInteger := C_ItensIDITEM.Value;
                    Params[1].asInteger := C_ItensEntradaItem.Value;
                    ExecSQL;
                end;
            C_Itens.Next;
        end;

        {Atualizando Status das Mesclagens}
        with Q_SQL do
        begin
            Close;
            SQL.Text := 'Execute procedure PP_StatusSaida :S ';
            params[0].asInteger := C_SaidasIDMestre.Value;
            ExecSQL;
        end;

        DMContabil.ContabilizaInvoices(C_SaidasIDMestre.value, C_Saidas, C_Itens);

        if not DMContabil.Salvar(C_SaidasIDMestre.value) then
            raise Exception.Create(DMProjeto.GetMsg(3117));
        /////////////

        {Gravando Recebimento}
        if (DlgPgtos <> nil) and (DlgPgtos.getRecebido > 0) then
            DlgPgtos.Gravar(dbgParcelas.ItensSelecionados, dbgParcelas.Selecionados, C_Parcelas);
        {*** Gerando Numeração da Operação ***}
        GerarNumeroOperacao;
        {*}

      {  if fileexists(DMProjeto.SonsPath+'caixareg.wav') then
          sndplaysound(PChar(DMProjeto.SonsPath+'caixareg.wav'), SND_ASYNC);
       }
        {Commit}
        if DMProjeto.Parametro('Gaveta') = 'G' then
          dmECF.ECF1.AbreGaveta;

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    except
        on e: Exception do
        begin
            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            DlgMsg.ShowMsg(242, e.message, '');
        end;
    end;
end;

procedure TFrmCaixa.GerarNumeroOperacao;
var
    bOk: boolean;
    i: Integer;
    sNumeroGerado: string;
    k: Integer;
    F: TextFile;
begin
    inherited;
    C_TiposMovimento.Locate('TipoMovimento', C_SaidasTipoMovimento.Value, []);

    {Gerando Número da Operacao}
    try
        if (C_TiposMovimentoCB_GERARNUM.Value = 'S') then
            with Q_SQL do begin
                bOk := false;
                while not bOk do begin
                  if (C_TiposMovimentoCB_NOTAFISCAL.Value = 'S') then Begin
                      for k := 1 to 6 do begin
                         if (k <= 5) and (DMProjeto.GEN_ID('GENSIST_OKPARAGERARNF',true) = 1) then
                            sleep(2000)
                         else begin
                            DMProjeto.SetOkParaGerarNF(1);
                            if Not FileExists(ExtractFilePath(Application.ExeName)+'NF.TXT') Then Begin
                              AssignFile(F,ExtractFilePath(Application.ExeName)+'NF.TXT');
                              Rewrite(F);
                              CloseFile(F);
                            end
                            else begin
                              if DayOfTheMonth( Date ) = 28 then begin
                                RenameFile(ExtractFilePath(Application.ExeName)+'NF.TXT',
                                           ExtractFilePath(Application.ExeName)+'NF-'+ FormatDateTime('yyyy-mm',Date) +'.TXT');
                                AssignFile(F,ExtractFilePath(Application.ExeName)+'NF.TXT');
                                Rewrite(F);
                                CloseFile(F);
                              end;
                            end;
                            sNumeroGerado := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7 );
                            AssignFile(F,ExtractFilePath(Application.ExeName)+'NF.TXT');
                            System.Append(F);
                            WriteLn(F,sNumeroGerado+' ; '+C_TiposMovimentoDESCRICAO.AsString+' ; '+
                                      FormatDateTime('dd/mm/yyyy  hh:mm:ss', now)+' ; '+
                                      DMProjeto.Maquina+'/'+DMProjeto.sLoginName+' ; '+
                                      'FrmCaixa ' + C_SaidasIDMestre.asString);
                            CloseFile(F);
                            Break;
                         end;
                      End;
                   end
                   else
                    sNumeroGerado := CExp(C_TiposMovimentoSIGLAINICIAL.Value, '-') +
                        AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + C_SaidasTipoMovimento.asString)), '0', 6);
                    {Verificando Duplicidade}
                    Close;
                    SQL.Text := 'Select Count(saida) as Existentes from Saidas ' +
                        'where TipoMovimento = :TM and Numero = :N and Saida <> :S ';
                    ParamByName('TM').asInteger := C_SaidasTipoMovimento.Value;
                    ParamByName('N').asString := sNumeroGerado;
                    ParamByName('S').asInteger := C_SaidasIDMestre.asInteger;
                    Open;

                    i := FieldByName('Existentes').asInteger;
                    Close;

                    if (i > 0) then
                        Continue; //Para Gerar novo número;

                    {Atribuindo o Número gerado}
                    Close;
                    SQL.Text := 'Update Saidas set Numero = :NG where Saida = :S ';
                    ParamByName('NG').asString := sNumeroGerado;
                    ParamByName('S').asInteger := C_SaidasIDMestre.asInteger;
                    ExecSQL;

                    Close;
                    SQL.Text := 'Update TitulosAReceber set NotaFiscal = :NF, Titulo = :TT ' +
                        'where Venda = :V ';
                    ParamByName('NF').asString := sNumeroGerado;
                    ParamByName('TT').asString := sNumeroGerado;
                    ParamByName('V').asInteger := C_SaidasIDMestre.asInteger;
                    ExecSQL;

                    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                    DMProjeto.SetOkParaGerarNF(0);
                    bOk := true;
                end; //while
            end; //if
    except
        on e: Exception do
        begin
            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

            DlgMsg.ShowMsg(2334);
        end;
    end;

end;

procedure TFrmCaixa.C_ParcelasCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ParcelasValorAReceber.Value := C_ParcelasValor.Value;
    C_ParcelasJuros.Value := 0;
end;

procedure TFrmCaixa.ImprimirDocs;
begin
    DMProjeto.ImprimirDocumentosSaida(C_SaidasIDMestre.Value);
end;

procedure TFrmCaixa.btComando2Click(Sender: TObject);
var
    nOp: Integer;
begin
    inherited;
    C_SalesOrder.Close;
    C_SalesOrder.Open;

    if C_SalesOrder.RecordCount = 0 then
    begin //Verificando se o sistema está configurado corretamente
        with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select count(*) from TiposMovimento where TipoPadrao = 2 and StatusPadrao = ''X'' ';
            Open;

            if Fields[0].asInteger = 0 then
            begin
                DlgAssistenteConfigCaixa := TDlgAssistenteConfigCaixa.Create(self);
                nOp := DlgAssistenteConfigCaixa.ShowModal;
                DlgAssistenteConfigCaixa.Release;
                DlgAssistenteConfigCaixa := nil;

                if nOp = 100 then
                begin
                    Close;
                    SQL.Text := 'Update TiposMovimento set StatusPadrao = ''X'', CB_Status = ''S'' ' +
                        'where TipoPadrao = 2 ';
                    ExecSQL;

                    SQL.Text := 'Update Saidas set Status = ''X'' ' +
                        'where Situacao = ''N'' and TipoPadrao = 2 and (Status = ''P'' or Status is null) ';
                    ExecSQL;

                    C_SalesOrder.Close;
                    C_SalesOrder.Open;
                end;

            end;

        end;
    end;

end;

procedure TFrmCaixa.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    // Adriano
    DMContabil.ContabilizaInvoices(C_SaidasIDMestre.value, C_Saidas, C_Itens);

    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
    ////////////////
end;

procedure TFrmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;

    // Adriano
    if DMContabil <> nil then
    begin
        DMContabil.FechaDatasets;
        DMContabil.Free;
    end;

    if DlgProps <> nil then
    begin
        DlgProps.Parar;
    end;

    if DlgPgtos <> nil then
        DlgPgtos.Fechar;

end;

procedure TFrmCaixa.FormCreate(Sender: TObject);
begin
    inherited;
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TFrmCaixa.btAbrirCaixaClick(Sender: TObject);
begin
    inherited;
    try
        DMProjeto.nCasasDecimais := StrToInt(DMProjeto.Parametro('CasasDecimais'));
        DMProjeto.sCasasDecimais := '######0.' + Copy('0000000000', 1, DMProjeto.nCasasDecimais);
    except
        DMProjeto.nCasasDecimais := 2;
        DMProjeto.sCasasDecimais := '######0.00';
    end;
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Clear;
    DMProjeto.Q_Sql.Sql.Add('select * from pdvs where maquina = ''' + DMProjeto.Maquina + '''');
    DMProjeto.Q_Sql.Open;
    if DMProjeto.Q_Sql.RecordCount > 0 then
    begin
        if DMProjeto.Q_Sql.FieldByName('Ativo').AsString = 'S' then
            DMProjeto.bECFAtivo := True
        else
            DMProjeto.bECFAtivo := False;
    end
    else
        DMProjeto.bECFAtivo := False;
    DMProjeto.CriarForm('DlgAberturaCaixa', self, true);
    AtualizaCaixa;

    lbDataCaixa.Caption := FormatDateTime(ShortDateFormat, DMProjeto.dDataSistema);
    if (DMProjeto.dDataSistema < DMProjeto.getDataServidor) then
        lbDataCaixa.Font.Color := clRed
    else
        lbDataCaixa.Font.Color := clWindowText;
end;

procedure TFrmCaixa.btRetirarClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPgtoInstantaneo', self, true);
end;

procedure TFrmCaixa.btRepassarClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRepasse', self, True);
end;

procedure TFrmCaixa.btReceberPgtosClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgDepositos', Self, true);
end;

procedure TFrmCaixa.btFecharCaixaClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgFechamento', self, true);
    AtualizaCaixa;
    lbDataCaixa.Caption := FormatDateTime(ShortDateFormat, DMProjeto.dDataSistema);
    if (DMProjeto.dDataSistema < DMProjeto.getDataServidor) then
        lbDataCaixa.Font.Color := clRed
    else
        lbDataCaixa.Font.Color := clWindowText;
end;

procedure TFrmCaixa.C_SaidasBAIXAESTOQUEChange(Sender: TField);
begin
    inherited;

    {Repassando as modificações deste flag para todos os ítens}
    with C_Itens do
    begin
        if not Active or (RecordCount = 0) then
            exit;

        DisableControls;
        First;
        while not EOF do
        begin
            Edit;
            C_ItensBaixaEstoque.Value := Sender.asString;
            Next;
        end;

        EnableControls;
    end;

end;

procedure TFrmCaixa.C_SaidasALMOXPADRAOChange(Sender: TField);
begin
    inherited;
    {Repassando as modificações deste flag para todos os ítens}
    with C_Itens do
    begin
        if not Active or (RecordCount = 0) then
            exit;

        DisableControls;
        First;
        while not EOF do begin
            Edit;
            C_ItensAlmoxarifado.Value := Sender.asInteger;
            Next;
        end;

        EnableControls;
    end;
end;

procedure TFrmCaixa.AtualizaCaixa;
begin
    with DMProjeto do
    begin
        bSituacaoCaixa := DMFinanceiro.Conta_Situacao(DMFinanceiro.nContaPadrao) = 'Aberto';
        bCaixa := (DMFinanceiro.nContaPadrao <> 1) and (DMFinanceiro.Conta_TipoConta(DMFinanceiro.nContaPadrao) = 1);
        btAbrirCaixa.Enabled := (not bSituacaoCaixa) and bCaixa;
        btFecharCaixa.Enabled := bSituacaoCaixa and bCaixa;
    end;
end;

procedure TFrmCaixa.ermos1Click(Sender: TObject);
begin
    inherited;
    pgItens.SetPage(tsTermos);
end;

procedure TFrmCaixa.Itens1Click(Sender: TObject);
begin
    inherited;
    pgItens.SetPage(tsItens);
end;

procedure TFrmCaixa.CadastrodoCliente1Click(Sender: TObject);
begin
    inherited;
    if Estado = 'Lista' then
        DMProjeto.SetParametrosForm([IIF(C_SalesOrderFavorecido.Value = 1, null, C_SalesOrderFavorecido.Value)])
    else
        DMProjeto.SetParametrosForm([IIF(C_SaidasFavorecido.Value = 1, null, C_SaidasFavorecido.Value)]);

    DMProjeto.CriarForm('FrmClientes', self, true);

end;

procedure TFrmCaixa.NaomostrarmaisAtalhos1Click(Sender: TObject);
begin
    inherited;
    NaomostrarmaisAtalhos1.Checked := not NaomostrarmaisAtalhos1.Checked;
    if NaomostrarmaisAtalhos1.Checked then
        pnStatus.Visible := false;
end;

procedure TFrmCaixa.SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);

function GetKeyLabel(oPanel: TTS_Panel): TTS_Label;
    var i: integer;
    begin
        result := nil;
        for i := 0 to ComponentCount - 1 do
        begin
            if (components[i] is TTS_Label) and (Esquerda(TTS_Label(components[i]).Name, 5) = 'lbKey') and
                (TTS_Label(components[i]).Parent = oPanel) then
            begin
                result := TTS_Label(components[i]);
                break;
            end;
        end;
    end;

    function GetTitLabel(oPanel: TTS_Panel): TTS_Label;
    var i: integer;
    begin
        result := nil;
        for i := 0 to ComponentCount - 1 do
        begin
            if (components[i] is TTS_Label) and (Esquerda(TTS_Label(components[i]).Name, 5) = 'lbTit') and
                (TTS_Label(components[i]).Parent = oPanel) then
            begin
                result := TTS_Label(components[i]);
                break;
            end;
        end;
    end;

var
    sBotao, sPainel: string;

begin
    oMenu.Enabled := bEnable;

    if oMenu.Hint <> '' then
    begin
        sBotao := SeparaStrings(oMenu.Hint, ';', 1);
        sPainel := SeparaStrings(oMenu.Hint, ';', 2);

        if sBotao <> '' then
            TTS_SpeedButton(FindComponent(sBotao)).Enabled := bEnable;

        if sPainel <> '' then
        begin
            TTS_Label(GetKeyLabel(TTS_Panel(FindComponent(sPainel)))).Enabled := bEnable;
            TTS_Label(GetTitLabel(TTS_Panel(FindComponent(sPainel)))).Enabled := bEnable;
        end;

    end;

end;

procedure TFrmCaixa.btNotaCupomClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 8]);
    DMProjeto.CriarForm('FrmNotasCupons', Self, true);
end;

procedure TFrmCaixa.ComandosECF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmConfigECF', Self, True);
end;

procedure TFrmCaixa.rocadeBobina1Click(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6031) = 100 then
    begin
        FrmMsgECF := TFrmMsgECF.Create(Self);
        FrmMsgECF.LabelMsg.Caption := 'Aguarde...Emitindo Leitura X.';
        FrmMsgECF.Show;
        FrmMsgECF.BringToFront;
        FrmMsgECF.Repaint;
        if not DMECF.ECF1.LeituraX then
        begin
            FrmMsgECF.Free;
            Exit;
        end;
        FrmMsgECF.Free;
        if DlgMsg.ShowMsg(6028) = 100 then
        begin
            FrmMsgECF := TFrmMsgECF.Create(Self);
            FrmMsgECF.LabelMsg.Caption := 'Aguarde...Emitindo Leitura X.';
            FrmMsgECF.Show;
            FrmMsgECF.BringToFront;
            FrmMsgECF.Repaint;
            DMECF.ECF1.LeituraX;
            FrmMsgECF.Free;
        end;
    end;
end;

procedure TFrmCaixa.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if LastDataObject.TableName = 'PDVS' then
    begin
        if DMProjeto.bECFAtivo then
        begin
            lbOperacao.Enabled := false;
            cmbTipoMovimento.ReadOnly := true;
            cmbTipoMovimento.Color := $00F5EBDE;
        end
        else
        begin
            lbOperacao.Enabled := true;
            cmbTipoMovimento.ReadOnly := false;
            cmbTipoMovimento.Color := clWindow;
        end;

        if not cmbTipoMovimento.ReadOnly and cmbTipoMovimento.CanFocus then
            cmbTipoMovimento.SetFocus;
    end;
end;

procedure TFrmCaixa.pmImprimirCupomClick(Sender: TObject);
var
    nSaida: Integer;
begin
    inherited;
    DMProjeto.SetParametrosForm([null, null, 'para Imprimir Cupom']);
    nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

    if nSaida > 0 then
    begin
        AbrirParaFaturar(nSaida);
    end;

end;

procedure TFrmCaixa.cmbTipoCobrancaChange(Sender: TObject);
begin
    inherited;
    lbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);
    cmbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);
    if (ActiveControl = cmbTipoCobranca) then
        with C_Parcelas do
        begin
            if not Active then
                exit;
            First;
            while not EOF do
            begin
                Edit;
                FieldByName('TipoCobranca').asInteger := cmbTipoCobranca.LookupKeyValue;
                Next;
            end;
            First;
        end;
end;

procedure TFrmCaixa.cmbCarteiraChange(Sender: TObject);
begin
    inherited;
    if (ActiveControl = cmbCarteira) then
        with C_Parcelas do
        begin
            if not Active then
                exit;
            First;
            while not EOF do
            begin
                Edit;
                FieldByName('Carteira').asInteger := cmbCarteira.LookupKeyValue;
                Next;
            end;
            First;
        end;
end;

procedure TFrmCaixa.btCancelarClick(Sender: TObject);

function CancelarParcelas(nInvoice: integer; Motivo: string; var sTitulos: string): string; //Retorna o valor gerado de créditos;
    var
        sDepositos: string;
        x: Integer;
    begin
        with DMProjeto.Q_SQL2 do
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

            {Cancelando os Recebimentos - Normalmente se proveniente de Venda Rápida}
            if sTipoExclusao = 'Total' then
            begin
                for x := 1 to ContaStrings(sDepositos, ',') do
                    DMFinanceiro.ApagarDeposito(StrToIntDef(SeparaStrings(sDepositos, ',', x), 0), false, true);

            end;

            for x := 1 to ContaStrings(sTitulos, ',') do
            begin
                if not DMFinanceiro.CancelarTitulo(StrToIntDef(SeparaStrings(sTitulos, ',', x), 0), Motivo, false, false) then
                    raise Exception.Create('@@')
                else
                    DMFinanceiro.CancelarLancamentos(SeparaStrings(sTitulos, ',', x));
            end;

            result := sDepositos;

        end;
    end;

    function ExisteRecebimentos(nInvoice: integer): Boolean;
    begin
        with Q_SQLi do
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
    sNumero, sDepositosAfetados, sMotivo, xTitulos: string;
    nSaida, j, nMsg: integer;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX('FrmCaixa', 'CanOpGrav') then
        exit;

    if DMProjeto.nModeloECF <> 0 then
        with DMProjeto.Q_ComandoSQL do
        begin
            close;
            SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and tipopadrao = 1 and serienota = ''ECF'' and pdv = :pdv and data = :dData';
            params[0].asinteger := DMProjeto.nPDV;
            params[1].asdatetime := DMProjeto.dDataSistema;
            open;
            nSaida := fieldbyname('IDSaida').asinteger;
            close;
            SQL.text := 'select numero from saidas where saida = :nSaida';
            params[0].asinteger := nSaida;
            open;
            sNumero := FieldByName('numero').asstring;
        end
    else
    begin
        DMProjeto.SetParametrosForm([null, 1]);
        nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);
    end;
    // Colocar aki o kancelamento do kupom
    if (DMProjeto.nModeloECF = 0) or (not DMProjeto.bECFAtivo) then
    begin
        if (nSaida > 0) and not (DlgMsg.ShowMsg(6042, ['Deseja cancelar a venda ' + sNumero + '?']) = 100) then
            Exit;
    end
    else
    begin
        if (Copy(sNumero, 5, Length(sNumero) - 4) = dmECF.ECf1.COO) then
        begin
            if DlgMsg.ShowMsg(6042, ['Deseja cancelar o cupom ' + sNumero + '?']) = 100 then
            begin
                if not dmECF.ECF1.CancelaUltimoCupom then
                    Exit;
            end
            else
                Exit;
        end
        else
        begin
            DlgMsg.ShowMsg(50, ['O número cadastrado (' + sNumero + ') difere do número do ECF (' + dmECF.ECF1.COO + ').']);
            Exit;
        end;
    end;
    //
    if nSaida > 0 then
    begin
        {Tipos de Movimento de Faturamento}
        C_TiposMovimento.Close;
        C_TiposMovimento.Open;

        {Selecionando a Operação}
        C_Saidas.DisableControls;
        C_Saidas.Close;
        C_Saidas.FetchParams;
        C_Saidas.Params[0].asInteger := nSaida;
        C_Saidas.Open;
        C_Saidas.Edit;

        if C_SaidasSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(2759);
            exit;
        end;

        {Verificando se há recebimentos e notificando ao usuário este fato}
        if (C_SaidasTipoPadrao.Value = 1) and ExisteRecebimentos(C_SaidasIDMESTRE.Value) then
        begin
            if sTipoExclusao = 'Operacao' then
                nMsg := 2195
            else
                nMsg := 2197;

            if (DlgMsg.ShowMsg(nMsg) <> 100) then
                exit;
        end;

        {Desfazendo edições para que não ocorram erros durante o cancelamento}
        C_Itens.UndoLastChange(False);
        C_Parcelas.UndoLastChange(False);
        C_Saidas.UndoLastChange(False);

        sMotivo := '';
        while sMotivo = '' do
            sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

        {Cancelando a Operação}
        try

            try
                with Q_SQLi do
                begin
                    {Desvinculando produções, despesas e itens}
                    C_Itens.DisableControls;
                    C_Itens.First;
                    while not C_Itens.EOF do
                    begin
                        if C_ItensProducao.Value <> 0 then
                        begin
                            Close;
                            SQL.Text := 'Update ProducoesFunc set SAIDAITEM = null where Producao = :PROD ';
                            Params[0].asInteger := C_ItensProducao.Value;
                            ExecSQL;
                        end;
                        if C_ItensDespesa.Value <> 0 then
                        begin
                            Close;
                            SQL.Text := 'Update ContasOperacao set SAIDAITEM = null where ContaOperacao = :C ';
                            Params[0].asInteger := C_ItensDespesa.Value;
                            ExecSQL;
                        end;
                        if C_ItensEntradaItem.Value <> 0 then
                        begin
                            Close;
                            SQL.Text := 'Update EntradasItens set SAIDAITEM = null where EntradaItem = :EI ';
                            Params[0].asInteger := C_ItensEntradaItem.Value;
                            ExecSQL;
                        end;
                        {Cancelando as Ordens de Produção}
                        if DMProjeto.bOrdemProducao and (C_ItensHasChildren.value = 'S') then
                        begin
                            Close;
                            SQL.Text := 'update montagens set status = 3 where saidaitem = :V ';
                            Params[0].asInteger := C_ItensIDItem.Value;
                            ExecSQL;
                        end;

                        C_Itens.Next;
                    end;

                    {Cancelando as Parcelas}
                    if C_SaidasTipoPadrao.Value <> 1 then
                    begin
                        Close;
                        SQL.Text := 'Delete from TitulosAReceber where Venda = :V ';
                        Params[0].asInteger := C_SaidasIDMestre.Value;
                        ExecSQL;
                    end
                    else
                    begin
                        {Cancela, altera recebimentos e gera créditos (se preciso for)}
                        sDepositosAfetados := CancelarParcelas(C_SaidasIDMestre.Value, 'Canc. Vendas #' + C_SaidasNumero.asString + '; ' + sMotivo, xTitulos);

                        if sTipoExclusao = 'Operacao' then
                            for j := 1 to ContaStrings(xTitulos, ',') do
                                DMFinanceiro.AjustaRecebimentoContas(StrToInt(SeparaStrings(xTitulos, ',', j)), sDepositosAfetados);
                    end;

                    {Cancelando a Operacao}
                    Close;
                    SQL.Text := 'Update Saidas set Situacao = ''C'' where Saida = :S';
                    Params[0].asInteger := C_SaidasIDMestre.Value;
                    ExecSQL;

                    {Cancelando a Comissão: Apagando para que ao somar no payroll o valor seja deduzido}
                    Close;
                    SQL.Text := 'Delete from Comissoes where Venda = :V ';
                    Params[0].asInteger := C_SaidasIDMestre.Value;
                    ExecSQL;

                    {Registrando Auditoria}
                    DMFinanceiro.AuditoriaFinanceira(38, 'Cancelamento da Venda #' + C_SaidasNumero.asString, 'Saidas',
                        C_SaidasIDMestre.Value, C_SaidasTotal.Value,
                        C_SaidasIDMestre.Value, 34, 0);

                end;
            finally
                C_Itens.EnableControls;
            end;

            // Estorno dos Lancamentos Contabeis
            DMFinanceiro.CancelarLancamentos(C_SaidasIDMestre.AsString);

            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

            if C_Saidas.State = dsBrowse then
                C_Saidas.Edit;
            C_SaidasSituacao.Value := 'C';

        except
            on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

                DlgMsg.ShowMsg(2199, e.message, '');
            end;
        end;
    end;
end;
procedure TFrmCaixa.ReimprimirOperaes1Click(Sender: TObject);
var nSaida: integer;
    sCliente, sVendedor, sObs: string;
    nDesconto: currency;
begin
  inherited;
  DlgImprimirOp := TDlgImprimirOp.Create(Self);
  if DlgImprimirOp.ShowModal = -1 then
    DlgImprimirOp.Release
  else begin
    nSaida := DlgImprimirOp.nSaida;
    sCliente := DlgImprimirOp.sCliente;
    sVendedor := DlgImprimirOp.sVendedor;
    sObs := DlgImprimirOp.sObs;
    nDesconto := DlgImprimirOp.nDesconto;

    DlgImprimirOp.Release;
    if DMProjeto.bECFAtivo then
      if not DMProjeto.ImprimirCupom(nSaida, sCliente, sVendedor, sObs, nDesconto) then begin
        if DlgMsg.ShowMsg(6042,['Ocorreu algum problema durante a reimpressão do cupom. Deseja cancelar o que foi lançado?']) = 100 then
           DMECF.ECF1.CancelaUltimoCupom;
      end;
  end;
end;

procedure TFrmCaixa.Gravacao( bBotao : boolean );
begin
  if C_SalesOrder.IsEmpty then
      exit;
  if not btLimpar.Enabled then
      AbrirParaFaturar
  else
      Faturar( bBotao );
end;

procedure TFrmCaixa.GravarIIClick(Sender: TObject);
begin
  inherited;
//  if (Estado = 'Faturar') then
//    Gravacao( False );
end;

procedure TFrmCaixa.AbrirGaveta1Click(Sender: TObject);
begin
  inherited;
  DMECF.ECF1.AbreGaveta;
end;

end.
