unit DM_Saidas;

interface

uses

    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    DM_ITENSMOVIMENTO, Db, DBClient, Provider, DlgMsg, DMComponent, Variants,
    IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, TDM_PadraoManutencao,
    IBEvents, Math, DateUtils, BTOdeum;
                                         
const
    SInicioGravacao = '%s: Iniciando Gravação da %s ';
    SValidaGravacao = '%s: Validação Concluida ';
    SChavesGravacao = '%s: Chaves Geradas ';
    SCorrigeParcelasPost = '%s: Parcelas Corrigidas (Post)';
    SLimiteCliente = '%s: Limite de Cliente Aprovado';
    SEstoqueOk = '%s: Estoque dos Itens Ok';
    SFimDeGravacao = '%s: Gravação Concluida! ';
    SGravandoTabela = '%s: Gravou dados na Base';
    SUpdateAssociacoes = '%s: Atualizou Associações';
    SAtualizaStatusMescla = '%s: Atualizou Status Mesclagem';
    STransacoesEstoque = '%s: Atualizou Transações de Estoque ';
    SGravandoCliente = '%s: Atualizou Cliente ';
    SContabilidade = '%s: Lançou Contabilidade';
    SCalculouComiss = '%s: Atualizou Comissão ';

type
    TDMSaidas = class(TDMItensMovimento)
        C_TabelaPLANOPAGAMENTO: TIntegerField;
        C_TabelaVENDEDOR: TIntegerField;
        C_TabelaTIPOENTREGA: TIntegerField;
        C_TabelaDATAENTREGA: TDateField;
        C_TabelaPEDIDO_CLIENTE: TStringField;
        C_TabelaCAMPO01: TStringField;
        C_TabelaCAMPO02: TStringField;
        C_TabelaCAMPO03: TStringField;
        C_TabelaCAMPO04: TStringField;
        Q_PlanosPagamento: TIBQuery;
        P_PlanosPagamento: TDataSetProvider;
        C_PlanosPagamento: TClientDataSet;
        Q_Vendedores: TIBQuery;
        P_Vendedores: TDataSetProvider;
        C_Vendedores: TClientDataSet;
        Q_TiposEntrega: TIBQuery;
        P_TiposEntrega: TDataSetProvider;
        C_TiposEntrega: TClientDataSet;
        C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
        C_PlanosPagamentoDESCRICAO: TStringField;
        C_PlanosPagamentoJUROS: TBCDField;
        C_PlanosPagamentoQTDPARCELAS: TIntegerField;
        C_VendedoresFAVORECIDO: TIntegerField;
        C_VendedoresCODIGO: TStringField;
        C_VendedoresNOME: TStringField;
        C_TiposEntregaTIPOENTREGA: TIntegerField;
        C_TiposEntregaDESCRICAO: TStringField;
        C_TabelalkPlanoPagamento: TStringField;
        C_TabelalkVendedor: TStringField;
        C_TabelalkTipoEntrega: TStringField;
        Q_SQL: TIBQuery;
        C_TabelaIMPRESSO: TStringField;
        C_TabelacfEnderecoParaEntrega: TStringField;
        C_ItensORDEM: TIntegerField;
        C_PlanosPagamentoPDESCONTO: TBCDField;
        C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField;
        C_TabelaTABELAPADRAO: TIntegerField;
        Q_ProdutosPreco: TIBQuery;
        P_ProdutosPreco: TDataSetProvider;
        C_ProdutosPreco: TClientDataSet;
        C_ProdutosPrecoDS: TDataSource;
        C_ProdutosPrecoITEM: TIntegerField;
        C_ProdutosPrecoTABELAPRECO: TIntegerField;
        C_ProdutosPrecoPRECOMANUAL: TStringField;
        C_ProdutosPrecoDESCRICAO: TStringField;
        C_ProdutosPreco_icSelecionado: TIntegerField;
        C_ItensTABELAPRECO: TIntegerField;
        C_ItenscfBaixoEstoque: TFloatField;
        C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField;
        Q_Parcelas: TIBQuery;
        U_Parcelas: TIBUpdateSQL;
        C_Parcelas: TClientDataSet;
        C_ParcelasDS: TDataSource;
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
        C_TabelacfLastIDMov: TStringField;
        C_ItensCONTAVENDA: TIntegerField;
        C_ItensTAXAVEL: TStringField;
        C_TabelaVALIDADE: TDateField;
        C_TabelaDATAENTREGUE: TDateField;
        C_TabelaSTATUS: TStringField;
        C_TabelaCONDICOESPGTO: TStringField;
        C_SaidasItensFilhos: TClientDataSet;
        Q_SaidasItensFilhos: TIBQuery;
        C_SaidasItensFilhosDS: TDataSource;
        U_SaidasItensFilhos: TIBUpdateSQL;
        Q_MasterItensDS: TDataSource;
        C_ItensQ_SaidasItensFilhos: TDataSetField;
        C_SaidasItensFilhosIDITEM: TIntegerField;
        C_SaidasItensFilhosSAIDAITEMFILHO: TIntegerField;
        C_SaidasItensFilhosITEM: TIntegerField;
        C_SaidasItensFilhosQUANTIDADE: TBCDField;
        C_SaidasItensFilhosCODIGO: TStringField;
        C_SaidasItensFilhosDESCRICAO: TStringField;
        C_ItensOrdemMontagem: TStringField;
        C_ItensPRODUCAO: TIntegerField;
        C_ItensFUNCPRODUCAO: TIntegerField;
        Q_Funcs: TIBQuery;
        P_Funcs: TDataSetProvider;
        C_Funcs: TClientDataSet;
        IntegerField1: TIntegerField;
        StringField1: TStringField;
        StringField2: TStringField;
        C_ItenslkFuncProducao: TStringField;
        C_TabelaF_AGRUPARPORITEM: TStringField;
        Q_SQLi: TIBQuery;
        C_VendedoresCOMISSAO: TBCDField;
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
        C_ItensCHAVEPRODUCAOFUNC: TIntegerField;
        C_TiposMovimentoCB_COLUNA1: TStringField;
        C_TiposMovimentoCB_COLUNA2: TStringField;
        C_TiposMovimentoCB_COLUNA3: TStringField;
        C_TiposMovimentoCB_COLUNA4: TStringField;
        C_ItensCOLUNA1: TStringField;
        C_ItensCOLUNA2: TStringField;
        C_ItensCOLUNA3: TStringField;
        C_ItensCOLUNA4: TStringField;
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
        C_ItenscfValorMaxDesconto: TFloatField;
        C_TabelaCAIXA: TIntegerField;
        C_ItensENTRADAITEM: TIntegerField;
        C_ItensDESPESA: TIntegerField;
        C_ParcelasPGTOS: TBCDField;
        C_TabelaTIPOIMPRESSAO: TStringField;
        C_ItensI_FATORLUCRO: TFloatField;
        C_TabelaicDescontoParcelas: TCurrencyField;
        C_TabelaicAlertouLimite: TBooleanField;
        C_ItensI_REFERENCIA: TStringField;
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
        Q_Mesclagens: TIBQuery;
        U_Mesclagens: TIBUpdateSQL;
        C_Mesclagens: TClientDataSet;
        C_ItensQ_Mesclagens: TDataSetField;
        C_MesclagensDS: TDataSource;
        C_MesclagensSAIDAITEMMESCLA: TIntegerField;
        C_MesclagensSAIDAITEM_ORIGINAL: TIntegerField;
        C_MesclagensQUANTIDADE: TBCDField;
        C_MesclagensIDITEM: TIntegerField;
        C_ItensMESCLADO: TStringField;
        C_ItensTrocouItem: TBooleanField;
        C_ItensOLDITEM: TIntegerField;
        C_MesclagensQTDMAXIMA: TBCDField;
        C_ItensUltrapassouMesclagem: TBooleanField;
        C_MesclagensSAIDA_ORIGINAL: TIntegerField;
        C_MesclagensOLDQUANTIDADE: TBCDField;
        C_ItensFOTOGRUPO: TStringField;
        C_ItensSTATUS: TStringField;
        C_TiposMovimentoCB_STATUS: TStringField;
        C_TiposMovimentoSTATUSPADRAO: TStringField;
        C_TiposMovimentoCB_STATUSITENS: TStringField;
        C_PlanosPagamentoTIPO: TStringField;
        C_PlanosPagamentoPERIODICIDADE: TIntegerField;
        C_PlanosPagamentoESQUEMAPARCELAS: TStringField;
        C_PlanosPagamentoTIPOENTRADA: TStringField;
        C_PlanosPagamentoPERCENTUALENTRADA: TBCDField;
        C_PlanosPagamentoVALIDADE: TDateField;
        C_PlanosPagamentoDESATIVADO: TStringField;
        C_PlanosPagamentoINTERVALOS: TStringField;
        C_PlanosPagamentoCARENCIAENTRADA: TStringField;
        C_TiposMovimentoSTATUSPADRAOITENS: TStringField;
        C_ParcelasDOC_GARANTIA: TStringField;
        C_TiposMovimentoCB_DOCSGARANTIA: TStringField;
        Q_Status: TIBQuery;
        P_Status: TDataSetProvider;
        C_Status: TClientDataSet;
        C_StatusSTATUS: TStringField;
        C_StatusDESCRICAO: TStringField;
        C_StatusORDEM: TIntegerField;
        C_TabelalkStatus: TStringField;
        C_ItensSTATUSOLD: TStringField;
        C_TabelaSTATUSOLD: TStringField;
        C_TiposMovimentoCB_IMPRIMIROP: TStringField;
        C_TiposMovimentoCB_PGTOS: TStringField;
        C_TiposMovimentoCB_FICHACLIENTE: TStringField;
        C_TiposMovimentoCB_TOPRINTER: TStringField;
        C_TiposMovimentoCB_GERARNUM: TStringField;
        C_ItensNUMEROLOTE: TStringField;
        C_TiposMovimentoFAVORECIDOPADRAO: TIntegerField;
        C_ItensI_SEMLUCRO: TFloatField;
        C_MesclagensFECHAR_ORIGINAL: TStringField;
        IBEventos_Saidas: TIBEvents;
        Q_MensagensOperacoes: TIBQuery;
        P_MensagensOperacoes: TDataSetProvider;
        C_MensagensOperacoes: TClientDataSet;
        C_MensagensOperacoesMENSAGEMOPERACAO: TIntegerField;
        C_MensagensOperacoesDESCRICAO: TStringField;
        C_MensagensOperacoesDS: TDataSource;
        C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField;
        C_TiposMovimentoMENSAGEMPADRAO: TIntegerField;
        C_ItensI_UNIDADEENTRADA: TStringField;
        C_ItensI_UNIDADECARGA: TStringField;
        C_ItensI_UNIDADEVAREJO: TStringField;
        C_TiposMovimentoCB_CONTRATO: TStringField;
        Q_TermosContratos: TIBQuery;
        P_TermosContrato: TDataSetProvider;
        C_TermosContratos: TClientDataSet;
        C_TermosContratoDS: TDataSource;
        C_TabelaTERMOCONTRATO: TStringField;
        C_TermosContratosTERMOCONTRATO: TIntegerField;
        C_TermosContratosDESCRICAO: TStringField;
        C_TermosContratosDESATIVADO: TStringField;
        C_TermosContratosTITULO: TStringField;
        C_TiposMovimentoTEMPLATE: TIntegerField;
        C_TiposMovimentoTERMOCONTRATO: TIntegerField;
        Q_Lotes: TIBQuery;
        P_Lotes: TDataSetProvider;
        C_Lotes: TClientDataSet;
        C_LotesDS: TDataSource;
        C_ParcelasORIGEM_ARECEBER: TIntegerField;
        C_ParcelasIDGERADOR_ARECEBER: TIntegerField;
        C_TiposMovimentoTIPOORIGEM: TIntegerField;
        C_ItensUNIDADE: TStringField;
        C_ItensI_UNIDADEMINIMA: TIntegerField;
        C_ItenslkUnidade: TStringField;
        C_MesclagensUNIDADE: TStringField;
        C_MesclagensFATOR: TFloatField;
        C_SaidasItensFilhosCUSTOMEDIO: TFloatField;
        C_SaidasItensFilhosCUSTOCONTABIL: TFloatField;
        C_ItensI_CUSTOMEDIO: TFloatField;
        Q_Unidades: TIBQuery;
        C_Unidades: TClientDataSet;
        P_Unidades: TDataSetProvider;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_UnidadesINTEIRA: TStringField;
        C_ProdutosPrecoBASEADA: TStringField;
        C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
        C_ItensI_FATORUNDVENDA: TFloatField;
        C_ItensI_FATORUNDCOMPRA: TFloatField;
        C_ProdutosPrecoPERCENTUAL: TBCDField;
        C_LotesIDLOTE: TIntegerField;
        C_LotesITEM: TIntegerField;
        C_LotesNUMEROLOTE: TStringField;
        C_LotesVALIDADE: TDateField;
        C_LotesESTOQUELOTE: TBCDField;
        C_LotesQTDENTRADAS: TBCDField;
        C_LotesFATORUNDVENDA: TFloatField;
        C_LotesicEstoqueLote: TCurrencyField;
        C_ItensicFoto: TStringField;
        C_SaidasItensFilhosUNIDADE: TStringField;
        C_SaidasItensFilhosFATOR: TFloatField;
        C_TiposMovimentoDIASVALIDADE: TIntegerField;
        C_VendedoresLOGOTIPO: TStringField;
        C_ItensPROMOCAO: TStringField;
        C_ItensBAIXAESTOQUE: TStringField;
        C_ProdutosPrecoPRECOPROMOCAO: TBCDField;
        C_ItensI_COMLUCRO: TFloatField;
        C_SaidasItensFilhosPRECO: TBCDField;
        C_ItensALMOXARIFADO: TIntegerField;
        C_ItensDESCRICAOCOMPLEMENTAR: TStringField;
        C_TiposMovimentoTABELAPADRAO: TIntegerField;
        C_TiposMovimentoALMOXPADRAO: TIntegerField;
        C_TabelaALMOXPADRAO: TIntegerField;
        C_SaidasItensFilhoslkUnidFilho: TStringField;
        C_SaidasItensFilhosUNIDADEOLD: TStringField;
        C_SaidasItensFilhosQTDE: TBCDField;
        C_TiposMovimentoTIPODESCRICAO: TStringField;
        C_TabelaSERIENOTA: TStringField;
        C_TabelaUFDESTINO: TStringField;
        C_TabelaMODELO: TStringField;
        C_TabelaPDV: TIntegerField;
        C_TabelaFONTE: TStringField;
        C_TabelaTIPOFRETE: TStringField;
        C_TabelaTRANSPORTADORA: TIntegerField;
        C_TabelaDESCESPECIE: TStringField;
        C_TabelaDESCMARCA: TStringField;
        C_TabelaDESCNUMERO: TStringField;
        C_TabelaPLACAVEIC: TStringField;
        C_TabelaATRATAR: TStringField;
        C_TabelaINTRODUCAO: TStringField;
        C_TabelaPRAZOENTREGA: TStringField;
        C_TabelaGARANTIA: TStringField;
        C_TabelaSEESTOQUE: TStringField;
        C_TabelaPROCESSO: TStringField;
        C_TabelaCARTACONVITE: TStringField;
        C_TabelaTOMADAPRECOS: TStringField;
        C_TabelaDATAABERTURA: TStringField;
        C_TabelaEXPLICACOES: TStringField;
        C_CFOPs: TClientDataSet;
        C_CFOPsCFOP: TStringField;
        C_CFOPsDESCRICAO: TStringField;
        C_CFOPsPAI: TStringField;
        P_CFOPs: TDataSetProvider;
        Q_CFOPs: TIBQuery;
        C_CFOPsDS: TDataSource;
        Q_CSTs: TIBQuery;
        P_CSTs: TDataSetProvider;
        C_CSTs: TClientDataSet;
        C_CSTsDESCRICAO: TStringField;
        C_CSTsDS: TDataSource;
        Q_Transp: TIBQuery;
        P_Transp: TDataSetProvider;
        C_Transp: TClientDataSet;
        C_TranspFAVORECIDO: TIntegerField;
        C_TranspNOME: TStringField;
        C_TranspCODIGO: TStringField;
        C_TabelalkTransportadora: TStringField;
        C_TabelalkCFOP: TStringField;
        C_TabelaSUBSTTRIB: TStringField;
        C_ItensSITUACAOECF: TStringField;
        C_ItensNUMEROITEM: TStringField;
        C_ItensREGISTRO: TStringField;
        C_TiposMovimentoPOSSUIICMS: TStringField;
        C_TiposMovimentoPOSSUIIPI: TStringField;
        C_TiposMovimentoPOSSUIISS: TStringField;
        C_TiposMovimentoCONTABILIZAICMS: TStringField;
        C_TiposMovimentoSERIE: TStringField;
        C_TiposMovimentoMODELODOC: TStringField;
        C_ItensI_PESOBRUTO: TBCDField;
        C_ItensI_PESOLIQUIDO: TBCDField;
        C_TiposMovimentoCB_ICMS: TStringField;
        C_TiposMovimentoCB_TVA: TStringField;
        C_TiposMovimentoCB_IPI: TStringField;
        C_TiposMovimentoTIT1_ICMS: TStringField;
        C_TiposMovimentoTIT1_TVA: TStringField;
        C_TiposMovimentoTIT1_IPI: TStringField;
        C_PlanosPagamentoMENORVALOR: TBCDField;
        C_TiposMovimentoCB_LICITACAO: TStringField;
        C_TiposMovimentoCB_CFOP: TStringField;
        C_TiposMovimentoTIT1_CFOP: TStringField;
        C_TiposMovimentoTIT2_CFOP: TStringField;
        C_ItenslkCFOP: TStringField;
        C_PlanosPagamento_icSelecionado: TIntegerField;
        Q_TiposCobranca: TIBQuery;
        P_TiposCobranca: TDataSetProvider;
        C_TiposCobranca: TClientDataSet;
        C_ParcelasTIPOCOBRANCA: TIntegerField;
        C_TabelaQ_Parcelas: TDataSetField;
        C_TiposCobrancaTIPOCOBRANCA: TIntegerField;
        C_TiposCobrancaDESCRICAO: TStringField;
        C_TiposCobrancaDESATIVADO: TStringField;
        C_ParcelaslkTipoCobranca: TStringField;
        C_TiposMovimentoTIPOCOB_PADRAO: TIntegerField;
        C_TabelaF_BAIRRO: TStringField;
        C_TabelaF_CPF_CNPJ: TStringField;
        C_TabelaF_INSCRICAO_EST: TStringField;
        C_ItensI_DescricaoComplementar: TStringField;
        C_ItensI_DescricaoTecnica: TStringField;
        C_TabelaCONDICOESPAGTO: TStringField;
        C_TiposCobrancaDS: TDataSource;
        Q_Carteiras: TIBQuery;
        P_Carteiras: TDataSetProvider;
        C_Carteiras: TClientDataSet;
        C_CarteirasDS: TDataSource;
        C_CarteirasCARTEIRA: TIntegerField;
        C_CarteirasDESCRICAO: TStringField;
        C_ParcelasCARTEIRA: TIntegerField;
        C_ParcelaslkCarteira: TStringField;
        C_TiposMovimentoCB_NUMEROITEM: TStringField;
        C_TiposMovimentoCB_REGISTRO: TStringField;
        Q_SitECF: TIBQuery;
        P_SitECF: TDataSetProvider;
        C_SitECF: TClientDataSet;
        C_SitECFSITUACAOECF: TStringField;
        C_SitECFDESCRICAO: TStringField;
        C_ItenslkSitECF: TStringField;
        C_TabelaCOBRANCA: TIntegerField;
        C_TabelaCARTEIRA: TIntegerField;
        C_TabelalkCobranca: TStringField;
        C_TabelalkCarteira: TStringField;
        C_TabelaNF_CUPOM: TStringField;
        C_TabelaMEDICO: TIntegerField;
        C_ItensCFOPNOTA: TStringField;
        C_TabelaCFOPNOTA: TStringField;
        C_TiposMovimentoCFOPASSOCIADO: TStringField;
        C_ItensDATACONTATO: TDateField;
        Q_PosVenda: TIBQuery;
        Q_PosVendaAGENDARCONTATO: TIBStringField;
        C_CSTsCFOP_VENDA: TStringField;
        C_CSTsCFOP_COMPRA: TStringField;
        C_CSTsCFOP_DEVOLUCAO: TStringField;
        C_ItensCFOPCST: TStringField;
        C_TiposMovimentoGERAFINANCEIRO: TStringField;
        C_TabelaTM_GERAFINANCEIRO: TStringField;
        C_TiposMovimentoCB_NOTAFISCAL: TStringField;
        C_TiposMovimentoTIPO_CARTEIRA_PADRAO: TIntegerField;
        Q_Almoxarifado: TIBQuery;
        C_Almoxarifado: TClientDataSet;
        P_Almoxarifado: TDataSetProvider;
        C_AlmoxarifadoALMOXARIFADO: TIntegerField;
        C_AlmoxarifadoDESCRICAO: TStringField;
        C_ItenslkAlmox: TStringField;
        C_ItensI_GRUPOCOMISSAO: TIntegerField;
        C_TabelaF_PERCDESCONTO: TBCDField;
        C_ProdutosPrecoPRECO_NORMAL: TBCDField;
        C_ProdutosPrecoPRECO: TCurrencyField;
        C_ItensI_INDEXADOR: TIntegerField;
        C_TabelaBAIXAESTOQUEFISCAL: TStringField;
        C_TiposMovimentoBAIXAESTOQUEFISCAL: TStringField;
        C_TabelaTM_BAIXAESTOQUEFISCAL: TStringField;
        C_ItensBAIXAESTOQUEFISCAL: TStringField;
        C_PlanosPagamentoCOMISSAO: TBCDField;
        C_TabelaTAX: TIntegerField;
        C_ItensIDTRIBFEDERAL: TIntegerField;
        C_ItensicPercComissao: TFloatField;
        C_ItensicPercDesconto: TFloatField;
        C_ItensicGrupoDesconto: TStringField;
        Beep: TBTBeeper;
        C_TabelaF_CONSUMIDORFINAL: TStringField;
        C_ItensCSTPISCOFINS: TStringField;
        C_TabelaMENSAGEMITEM: TStringField;
        C_TiposMovimentoCB_DESCONTOITEM: TStringField;
        C_ItensI_CODIGOBARRAS: TStringField;
        C_ItensPDV: TIntegerField;
        C_ParcelasPDV: TIntegerField;
        C_ParcelasIMPORTACAO: TIntegerField;
        C_SaidasItensFilhosIMPORTACAO: TIntegerField;
        C_ItensIMPORTACAO: TIntegerField;
        C_TabelaIMPORTACAO: TIntegerField;
        C_CSTsTIPOMOVIMENTO: TIntegerField;
        C_CSTsCFOPASSOCIADO: TStringField;
        C_CSTsCFOPFORAESTADO: TStringField;
        C_TabelaEMPRESA: TIntegerField;
        C_ItensCST: TStringField;
        C_ItensEMPRESA: TIntegerField;
        C_CSTsCST: TStringField;
        C_ParcelasEMPRESA: TIntegerField;
        C_ItensSITUACAO: TStringField;
        C_TiposMovimentoCB_CSTPADRAO: TStringField;
        C_TiposMovimentoCST_PADRAO: TStringField;
        C_ItensI_CLASFISCAL: TStringField;
        C_TiposMovimentoLIVROFISCAL: TStringField;
        C_SaidasItensFilhosEMPRESA: TIntegerField;
        C_SaidasItensFilhosPDV: TIntegerField;
        C_ParcelasNOSSONUMERO: TStringField;
        C_CarteirasNOSSONUMERO: TStringField;
        C_ItensI_IDENTIFICACAO: TStringField;
        C_ItensI_ITEM: TIntegerField;
        C_ParcelasVENDA: TIntegerField;
        C_MesclagensPDV: TStringField;
        C_MesclagensEMPERSA: TIntegerField;
        C_ParcelasDIGITONOSSONUMERO: TStringField;
        C_CarteirasNUMEROCARTEIRA: TStringField;
        C_ItensCalcSubTotalPrecoLicitacao: TFloatField;
        C_ItensDifSubTotalLicitacao: TFloatField;
        C_ItensPercLucroLicitacao: TStringField;
        C_TiposMovimentoCALCULAPISCOFINS: TStringField;
        C_TabelaPERCENTUALTAX: TFloatField;
        C_TabelaJUROS: TFloatField;
        C_TabelaIMPOSTO: TFloatField;
        C_TabelaIMPOSTO_INCLUSO: TFloatField;
        C_TabelaPCOMISSAO: TFloatField;
        C_TabelaPJUROS: TFloatField;
        C_TabelaTOTALITENS: TFloatField;
        C_TabelaTOTALITENS123: TFloatField;
        C_TabelaBASEIMPOSTO: TFloatField;
        C_TabelaBASEINCLUSO: TFloatField;
        C_TabelaDESCONTOITENS: TFloatField;
        C_TabelaTOTALOLD: TFloatField;
        C_TabelaREDUCOESBASE: TFloatField;
        C_TabelaACRESCIMOSBASE: TFloatField;
        C_TabelaVOLUMES: TFloatField;
        C_TabelaOLDDESCONTO: TFloatField;
        C_TabelaPJUROSNEGOCIADO: TFloatField;
        C_TabelaTOTALPRODUTOS: TFloatField;
        C_TabelaVALORIPIITENS: TFloatField;
        C_TabelaBASECALCICMSITENS: TFloatField;
        C_TabelaBASECALCSUBSTITENS: TFloatField;
        C_TabelaVALORICMSITENS: TFloatField;
        C_TabelaBASECALCICMS: TFloatField;
        C_TabelaVALORICMS: TFloatField;
        C_TabelaVALORISS: TFloatField;
        C_TabelaVALORIPI: TFloatField;
        C_TabelaBASECALCSUBST: TFloatField;
        C_TabelaVALORICMSSUBST: TFloatField;
        C_TabelaALIQICMSVENDA: TFloatField;
        C_TabelaVALORISENTAS: TFloatField;
        C_TabelaTOTALSERVICOS: TFloatField;
        C_TabelaPOSSUIICMS: TStringField;
        C_TabelaPOSSUIIPI: TStringField;
        C_TabelaPOSSUIISS: TStringField;
        C_TabelaCONTABILIZAICMS: TStringField;
        C_TabelaVALOROUTRASICMS: TFloatField;
        C_TabelaVALORSEGURO: TFloatField;
        C_TabelaPESOBRUTO: TFloatField;
        C_TabelaPESOLIQUIDO: TFloatField;
        C_TabelaPAGOINVOICE: TFloatField;
        C_TabelaDESCONTO: TFloatField;
        C_TabelaFRETE: TFloatField;
        C_TabelaOUTRASDESPESAS: TFloatField;
        C_TabelaLICITACAOICMS: TFloatField;
        C_ItensSUBTOTALITEM: TFloatField;
        C_ItensPRECOTABELA: TFloatField;
        C_ItensRATEIODESCONTO: TFloatField;
        C_ItensCUSTOMEDIO: TFloatField;
        C_ItensMAXDESCONTO: TFloatField;
        C_ItensOLDQUANTIDADE: TFloatField;
        C_ItensCUSTOCONTABIL: TFloatField;
        C_ItensQTDFATURADA: TFloatField;
        C_ItensQTDMONTAGEM: TFloatField;
        C_ItensFATOR: TFloatField;
        C_ItensOLDPRECO: TFloatField;
        C_ItensOLDUNIDADE: TStringField;
        C_ItensDESCONTO: TFloatField;
        C_ItensPDESCONTO: TFloatField;
        C_ItensPRECOSEMPROMOCAO: TFloatField;
        C_ItensBASECALCICMSPROD: TFloatField;
        C_ItensIPI: TFloatField;
        C_ItensALIQICMS: TFloatField;
        C_ItensREDUCAOCST: TFloatField;
        C_ItensBASECALCSUBSTPROD: TFloatField;
        C_ItensVALORIPIPROD: TFloatField;
        C_ItensVALORICMSPROD: TFloatField;
        C_ItensVALORICMSSUBSTPROD: TFloatField;
        C_ItensVALORISENTASPROD: TFloatField;
        C_ItensALIQPIS: TFloatField;
        C_ItensALIQCOFINS: TFloatField;
        C_ItensCSTIPI: TStringField;
        C_ItensALIQIPI: TFloatField;
        C_ItensPCOMISSAO: TFloatField;
        C_ItensDESCONTOMAXIMOGRUPO: TBCDField;
        C_ItensVALORPISPROD: TFloatField;
        C_ItensVALORCOFINSPROD: TFloatField;
        C_ItensRATEIODESPESAS: TFloatField;
        C_ItensRATEIOFRETE: TFloatField;
        C_ItensRATEIOSEGURO: TFloatField;
        C_ItensQUANTIDADEVOLUME: TFloatField;
        C_ItensPRECOCUSTOLICITACAO: TFloatField;
        C_ItensN_USOTIPOITEM: TFloatField;
        C_ItensTVA: TFloatField;
        Q_TabelaCSTs: TIBQuery;
        P_TabelaCSTs: TDataSetProvider;
        C_TabelaCSTs: TClientDataSet;
        C_TabelaCSTs_DS: TDataSource;
        C_TabelaCSTsCST: TStringField;
        C_TabelaCSTsDESCRICAO: TStringField;
        Q_CSTIPI: TIBQuery;
        P_CSTIPI: TDataSetProvider;
        C_CSTIPI: TClientDataSet;
        C_CSTIPICSTIPI: TStringField;
        C_CSTIPIDESCRICAO: TStringField;
        C_CSTIPICSTDESC: TStringField;
        C_CSTIPIDS: TDataSource;
        C_ItenslkCSTIPI: TStringField;
        Q_CST_PisCofins: TIBQuery;
        P_CST_PisCofins: TDataSetProvider;
        C_CST_PisCofins: TClientDataSet;
        C_CST_PisCofinsCSTPISCOFINS: TStringField;
        C_CST_PisCofinsDESCRICAO: TStringField;
        C_CST_PisCofins_DS: TDataSource;
        C_ItenslkCSTPisCofins: TStringField;
        C_TabelaF_PESSOA_FJ: TStringField;
        C_TiposMovimentoCALCULAICMSSUBST: TStringField;
    C_TiposMovimentoCB_MENSAGEMTRIBUTOS: TStringField;
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure C_TabelaTIPOMOVIMENTOChange(Sender: TField);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure C_TabelaFAVORECIDOChange(Sender: TField);
        procedure C_ItensITEMChange(Sender: TField);
        procedure C_ItensCalcFields(DataSet: TDataSet);
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
        procedure C_ItensAfterDelete(DataSet: TDataSet);
        procedure DMComponentPesquisar4_Dados(Sender: TObject);
        procedure C_SaidasItensFilhosNewRecord(DataSet: TDataSet);
        procedure C_ItensQUANTIDADEChange(Sender: TField);
        procedure C_SaidasItensFilhosITEMChange(Sender: TField);
        procedure C_TabelaVENDEDORChange(Sender: TField);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure C_ParcelasVALORValidate(Sender: TField);
        procedure C_TabelaDATAChange(Sender: TField);
        procedure C_MesclagensNewRecord(DataSet: TDataSet);
        procedure C_ItensBeforeDelete(DataSet: TDataSet);
        procedure C_ItensNewRecord(DataSet: TDataSet);
        procedure C_TabelaSTATUSValidate(Sender: TField);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure C_ItensNUMEROLOTEValidate(Sender: TField);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure IBEventos_SaidasEventAlert(Sender: TObject;
            EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentAposIniciar(Sender: TObject);
        procedure C_TabelaAfterScroll(DataSet: TDataSet);
        procedure C_ItensUNIDADEChange(Sender: TField);
        procedure DMComponentAntesDeApagar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure C_LotesCalcFields(DataSet: TDataSet);
        procedure C_TabelaBAIXAESTOQUEChange(Sender: TField);
        procedure C_TabelaALMOXPADRAOChange(Sender: TField);
        procedure C_SaidasItensFilhosUNIDADEChange(Sender: TField);
        procedure C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
            var Accept: Boolean);
        procedure C_ItensITEMValidate(Sender: TField);
        procedure C_TabelaALIQICMSVENDAChange(Sender: TField);
        procedure C_TabelaF_CPF_CNPJValidate(Sender: TField);
        procedure C_TabelaVALORIPIChange(Sender: TField);
        procedure C_ItensUNIDADEValidate(Sender: TField);
        procedure C_ProdutosPrecoCalcFields(DataSet: TDataSet);
        procedure C_TabelaPCOMISSAOValidate(Sender: TField);
        procedure C_TabelaBAIXAESTOQUEFISCALChange(Sender: TField);
        procedure C_ItensSITUACAOECFChange(Sender: TField);
        procedure C_TabelaIDMESTREChange(Sender: TField);
        procedure DMComponentGravar5_Terminar(Sender: TObject);
        procedure UpdateNossoNumero(carteira: integer);
        procedure CalcularIcmsSubstParaFabricante(aliqIcmsExterno: Currency);
        function SelectNossoNumero(carteira: integer): string;
        function ConsultaStatusSaida(idSaida, empresa, pdv: integer): boolean;
        function CalculaDVNossoNumeroBradesco(carteira: string; nossonumero: string): string;
        procedure AtualizaCFOPsGrid(UF: string);
        procedure C_ItensPDESCONTOChange(Sender: TField);
    private
        DMContabil: TDMContabilidade;
        nSeqParcelas, nSeqFilhos, nSeqMescla: Integer;
        nTentativas: Integer;
        bGravouSaida: Boolean;
        sErro: string;
        bFromTotalFinal, bNotCalcImposto, bFromTotal, bCalculandoParcelas, bVerifica: boolean;

        procedure CriarOrdemProducao(nItem, nSaidaItem: integer; nQtde: double);

        function BaixoEstoque(nItem: Integer; sUnidade: string): real;

    protected
        sNumeroGerado: string;
        sTipoExclusao: string; //Operacao, Total;   Default = 'Operacao';
        nSeqPP: Integer; //Sequencial para produtospreco

        function ItemChangeGetPreco: double; override;
        procedure CalcularImposto(bCalc_IPI_ICMSSUBST: Boolean = true);
        procedure CalcReducoesPorDesconto;

    public
        { Public declarations }

        sForm: string;

        bDisableItensAfterPost, bDECRETO25905: boolean;

        nOrdemDigItens, nTipoMovimento, idItem, idTipoCobranca, idOficina, idMontagemProduto: Integer;

        sItensSemEstoque, sLiberarDiasAtraso: string;

        sWhereAdicional, sNumCarteira, sTipoEmpresa: string;

        volumeEdit: double;
        bFaturandoOperacao, bPopulando, bMesclando, bFromPlanoPg, bGeraBoleto, bBloquearVendedor: Boolean;
        sPerformance: string;
        function MensagemItens(Id: Integer): string;
        function ControlePosVenda(nItem: Integer): Boolean;
        function NomeTabelaPreco(nTable: Integer): string;
        procedure AlterarTabelaPadrao(bConfirmar: boolean = true);
        procedure AlterarTabelaItem(nIDItem, nTabela: Integer; sUnidade: string);
        procedure AtualizaItensFilhos;
        function ExistemParcelasRenegociadas: Boolean;
        function FirstUsefullTable(nTable: Integer): Integer;

        procedure AplicarStatusAosItens(Sender: string);

        procedure ApagarItensFilhos;
        procedure CarregarItensFilhos;

        function GetMovimentos(sTipo: string; sSerie: string = ''; nTipoOP: Integer = 0): Integer;

        procedure ApagarMesclagem;
        procedure ApagarFilhos;

        procedure ParcelasParaTotalFinal;
        procedure RatearDifProxParcelas(nParcelaDif: Integer; nDiferenca: Currency);
        procedure RefreshParcelas(bCancelados: boolean = false);
        function GetAtrasados: Currency;
        function GetDevolvidos: Currency;
        function GetReembolsos: Currency;

        function GetEstimates(nTipoOP: Integer = 0): Integer;
        function GetSalesOrders(nTipoOP: Integer = 0): Integer;

        function LocalizarTabelaItem(nItem, nTabela: Integer; sUnid: string): Boolean;
        procedure AgruparPorItem;
        function SomaParcelas: Currency;
        procedure JurosParcelas;
        procedure GerarParcelamento(nEntradaFixa: Currency = 0; bManterParcelas: Boolean = false);
        function PlanoPgtoComEntrada: Boolean;
        function EstoqueItem(IDItem: Integer): string;

        function TipoMovimento(FieldName: string): string;
        function ValorMaxDesconto: double;
        procedure AtualizaTotalFinal(bCalc_IPI_ICMSSUBST: boolean = false);
        procedure RecalculaPreco(nDiferenca: currency = 0);

        function ContabilidadeAtivado: boolean;
        procedure ContabilidadeDesativado;
        procedure CriaContabilidade;
        procedure Contabiliza;
        procedure MostraContabilidade;

        /////////////////////////////////
        function VerificaItemDuplicado(nItem: Integer): Boolean;
    end;

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, Frm_Contabilidade,
    DM_DigitacaoItens, DM_ItensFavorecido, TDM_Projeto, Dlg_ItensIdentificacaoSaida,
    TDM_Manutencao;

{$R *.DFM}

function TDMSaidas.VerificaItemDuplicado(nItem: Integer): Boolean;
var TempDS: TClientDataSet;
    Achou: Boolean;
begin
    Achou := False;
    TempDS := TClientDataSet.Create(self);
    TempDS.CloneCursor(C_Itens, true);
    TempDS.First;
    if TempDS.Locate('ITEM', nItem, []) then
        begin
            Achou := True;
        end;
    TempDS.Free;
    Result := Achou;
end;

function TDMSaidas.ControlePosVenda;
begin
    Result := False;
    with Q_PosVenda do
        begin
            Close;
            ParamByName('Item').AsInteger := nItem;
            Open;
            if FieldByName('AGENDARCONTATO').AsString = 'S' then
                Result := True;
        end;
end;

procedure TDMSaidas.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    if DMContabil <> nil then
        DMContabil.Iniciar;
    nSeqParcelas := 0;
    nSeqFilhos := 0;
    nSeqMescla := 0;
    nOrdemDigItens := 0;

    //  if not C_TiposMovimento.Active then
    C_TiposMovimento.close;
    C_TiposMovimento.Open;

    if not C_Almoxarifado.Active then
        C_Almoxarifado.Open;
end;

procedure TDMSaidas.C_TabelaTIPOMOVIMENTOChange(Sender: TField);
var nTabela, nTipoMov: integer;
    sN: string;
begin
    inherited;
    {Capturando o NextID}
    nTipoMov := iif(nTipoMovimento = 0, Sender.asInteger, nTipoMovimento);

    C_TiposMovimento.Locate('TipoMovimento', nTipoMov, []);

    if (C_TiposMovimentoCB_Status.Value = 'S') and (C_TiposMovimentoStatusPadrao.asVariant <> null) and
        (C_TabelaStatus.Value <> C_TiposMovimentoStatusPadrao.Value) and not bAlteracao then
        C_TabelaStatus.Value := C_TiposMovimentoStatusPadrao.Value; //O change deste campo atualiza os status dos itens;

    if (Sender.Value = 3) and (C_TabelaStatus.Value = 'X') and (not bAlteracao) then
        C_TabelaStatus.Value := C_TiposMovimentoStatusPadrao.Value;

    if (C_TiposMovimentoDiasValidade.Value > 0) and not bAlteracao then
        C_TabelaValidade.Value := DMProjeto.dDataSistema + C_TiposMovimentoDiasValidade.Value;

    if (C_TabelaTipoPadrao.value = 2) and (C_TabelaIntroducao.value = '') then
        C_TabelaIntroducao.value := DMProjeto.Parametro('IntroducaoOrcamento');

    C_TabelaPossuiICMS.value := C_TiposMovimentoPossuiICMS.value;
    C_TabelaPossuiIPI.value := C_TiposMovimentoPossuiIPI.value;
    C_TabelaPossuiISS.value := C_TiposMovimentoPossuiISS.value;
    C_TabelaContabilizaICMS.value := C_TiposMovimentoContabilizaICMS.value;
    C_TabelaTM_GERAFINANCEIRO.Value := C_TiposMovimentoGERAFINANCEIRO.Value;

    if C_TabelaUFDestino.value <> DMProjeto.sUFEmpresa then
        sN := '6'
    else
        sN := '5';
    C_TabelaCFOPNota.Value := sN + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);

    if ConsultaStatusSaida(C_TabelaIDMESTRE.AsInteger, C_TabelaEMPRESA.AsInteger, C_TabelaPDV.AsInteger) then
        begin
            {TabelaPadrao}
            nTabela := StrToIntDef(TipoMovimento('TabelaPadrao'), 0);
            if (nTabela >= 0) and (nTabela <> C_TabelaTabelaPadrao.Value) then
                begin
                    if DMProjeto.PermissoesTabelasPreco(nTabela, 'U', true) then
                        begin
                            C_TabelaTABELAPADRAO.Value := nTabela;
                            AlterarTabelaPadrao(true);
                        end
                    else
                        begin
                            C_TabelaTABELAPADRAO.Value := FirstUsefullTable(nTabela);
                            if C_TabelaTabelaPadrao.Value >= 0 then
                                AlterarTabelaPadrao(true);
                        end;
                end;
        end;
end;

procedure TDMSaidas.C_TabelaNewRecord(DataSet: TDataSet);
var nTabela, nCarteira: integer;
begin
    inherited;
    C_TabelaEMPRESA.Value := DMPRojeto.nEmpresaLogada;
    C_TabelaIMPORTACAO.Value := 0;
    C_TabelaImpresso.Value := 'N';
    C_TabelaTipoImpressao.Value := 'P' {P-Padrao;  G-Agrupada por Item+Preco};
    C_TabelaVolumes.Value := 0;
    C_TabelaDesconto.Value := 0;
    C_TabelaFrete.Value := 0;
    C_TabelaTotal.Value := 0;
    C_TabelaJUROS.Value := 0;
    C_TabelaOUTRASDESPESAS.Value := 0;
    C_TabelaBASEIMPOSTO.Value := 0;
    C_TabelaBASEINCLUSO.Value := 0;
    C_TabelaIMPOSTO.Value := 0;
    C_TabelaIMPOSTO_INCLUSO.Value := 0;
    C_TabelaTotalItens.Value := 0;
    C_TabelaTotalProdutos.Value := 0;
    C_TabelaBaseCalcICMSItens.Value := 0;
    C_TabelaBaseCalcSubstItens.Value := 0;
    C_TabelaValorICMSItens.Value := 0;
    C_TabelaValorIPIItens.Value := 0;
    C_TabelaCaixa.Value := DMFinanceiro.nContaPadrao;
    //C_TabelaDATAENTREGA.Value := Now;

    if (DMProjeto.nFuncionarioLogado > 0) and
        C_Vendedores.Locate('Favorecido', DMProjeto.nFuncionarioLogado, []) then
        C_TabelaVendedor.Value := DMProjeto.nFuncionarioLogado;

    C_TabelaValidade.Value := DMProjeto.dDataSistema + C_TiposMovimentoDiasValidade.Value;

    nTabela := StrToIntDef(TipoMovimento('TabelaPadrao'), 0);
    C_TabelaTABELAPADRAO.Value := FirstUsefullTable(nTabela);

    // LegisFiscal
    C_TabelaCFOPNota.value := '5' + direita(TipoMovimento('CFOPAssociado'), 3);
    C_TabelaPossuiICMS.value := TipoMovimento('PossuiICMS');
    C_TabelaPossuiISS.value := TipoMovimento('PossuiISS');
    C_TabelaPossuiIPI.value := TipoMovimento('PossuiIPI');
    C_TabelaTM_GERAFINANCEIRO.Value := TipoMovimento('GERAFINANCEIRO');
    C_TabelaContabilizaICMS.value := TipoMovimento('ContabilizaICMS');
    C_TabelaSerieNota.value := TipoMovimento('Serie');
    C_TabelaModelo.value := TipoMovimento('Modelodoc');
    C_TabelaBaseCalcICMS.value := 0;
    C_TabelaValorICMS.value := 0;
    C_TabelaValorISS.value := 0;
    C_TabelaBaseCalcSubst.value := 0;
    C_TabelaValorICMSSubst.value := 0;
    if (TipoMovimento('PossuiICMS') = 'S') then
        C_TabelaAliqICMSVenda.value := DMProjeto.nICMSInterno
    else
        C_TabelaAliqICMSVenda.value := 0.00;
    C_TabelaValorIsentas.value := 0;
    C_TabelaValorSeguro.value := 0;
    if DMProjeto.Parametro('TipoFrete') <> '' then
        C_TabelaTipoFrete.value := DMProjeto.Parametro('TipoFrete')
    else
        C_TabelaTIPOFRETE.Value := 'C';
    //C_TabelaTipoFrete.value := InttoStr(0);       Felipe - Adicionar nova tabela para frete (0 - Emitente, 1 - Destinatario, 2 - Terceiros e 9 - Outros)

    C_TabelaTotalServicos.value := 0;
    C_TabelaValorOutrasICMS.value := 0;
    C_TabelaPDV.value := DMProjeto.nPDV;
    C_TabelaCobranca.value := StrToIntDef(TipoMovimento('TipoCob_Padrao'), 1);
    if (C_TabelaCobranca.Value = 3) then
        begin
            nCarteira := StrToIntDef(TipoMovimento('TIPO_CARTEIRA_PADRAO'), 0);
            if nCarteira > 0 then
                C_TabelaCarteira.Value := nCarteira;
        end;

    C_TabelaALMOXPADRAO.Value := StrToIntDef(TipoMovimento('ALMOXPADRAO'), 0);
    if (C_TabelaPossuiICMS.value = 'S') then
        C_TabelaLicitacaoICMS.value := DMProjeto.nICMSInterno;
    C_TabelaSeEstoque.value := 'N';

end;

function TDMSaidas.TipoMovimento;
begin
    result := '';

    if C_TiposMovimentoTipoMovimento.value <> C_TabelaTipoMovimento.Value then
        C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.VAlue, []);

    try
        result := C_TiposMovimento.FieldByName(FieldName).asString;
    except
        on e: exception do
            begin
                //Exceção só ocorre se o FieldName não for válido
                result := '';
                {Registrando Auditoria}
                DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                    + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                    C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                    C_TabelaIDMestre.Value, 34, 0);
            end;
    end;

end;

function TDMSaidas.GetAtrasados: Currency;
begin
    {Verificando Atrasos}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Sum(FaltaReceber) as Atrasados from TitulosAReceber ' +
                'Where  (Status = 3) and (Cliente = :C) and (Current_date - Vencimento) > ' + sLiberarDiasAtraso;
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            Result := FieldByName('Atrasados').asCurrency;

            Close;
        end;
end;

function TDMSaidas.GetDevolvidos: Currency;
begin
    {Verificando Atrasos}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Sum(dd.Valor) as Devolvidos ' +
                'from DepositosDoc dd inner join Depositos d on d.deposito = dd.deposito ' +
                'Where  dd.Status = 4 and d.Favorecido = :C ';
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            Result := FieldByName('Devolvidos').asCurrency;

            Close;
        end;
end;

function TDMSaidas.GetReembolsos: Currency;
var
    nReemb: Currency;
begin
    {Capturando Existencia de TimeSheet / Rembolsos}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select sum(ValorContrato) as Prods from ProducoesFunc where Favorecido = :F and SaidaItem is null and NaoCobrar = ''N'' ';
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            nReemb := FieldByName('Prods').asCurrency;

            Close;
            SQL.Text := 'Select sum(ei.SubTotalItem) as Prods from EntradasItens ei, Entradas e ' +
                'where ei.Entrada = e.Entrada and e.TipoPadrao = 100 and ei.ClienteRef = :F and ei.SaidaItem is null and ei.NaoCobrar = ''N'' ';
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            nReemb := nReemb + FieldByName('Prods').asCurrency;

            Close;
            SQL.Text := 'Select sum(Valor) as Prods from ContasOperacao where ClienteRef = :F and SaidaItem is null and NaoCobrar = ''N'' ';
            params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            nReemb := nReemb + FieldByName('Prods').asCurrency;

            Close;
            Result := nReemb;
        end;

end;

// Felipe - Atualizar o primeiro digito do campo CFOPSCST das SAIDASITENS de acordo com a UF do Favorecido. Também atualiza o CFOPNOTA de SAIDASITENS.

procedure TDMSaidas.AtualizaCFOPsGrid(UF: string);
var
    sN: string;
begin
    if (UF = '') or (UF = DMProjeto.sUFEmpresa) then
        sN := '5'
    else
        sN := '6';

    C_Itens.DisableControls;
    C_Itens.First;
    while not C_Itens.EOF do
        begin
            C_Itens.Edit;
            C_ItensCFOPCST.Value := sN + Direita(C_ItensCFOPCST.Value, 3);
            C_ItensCFOPNOTA.Value := C_ItensCFOPCST.Value;
            C_Itens.Post;
            C_Itens.Next;
        end;

    C_Itens.EnableControls;

end;

procedure TDMSaidas.C_TabelaFAVORECIDOChange(Sender: TField);

    function ClienteField(FieldName: string): Variant;
    begin
        result := DMProjeto.C_LocalizarFav.FieldByName(FieldName).Value;
    end;

var
    nTabela: Integer;
    sN: string;
begin
    C_LocaisEntrega.close;
    C_LocaisEntrega.Params.ParamByName('Favorecido').Value := C_TabelaFavorecido.Value;
    C_LocaisEntrega.open;
    bVerifica := true;
    inherited;
    bVerifica := false;

    {Corrigindo o PossuiTax - O cliente pode estar Null}
    if C_TabelaPossuiTax.asVariant = null then
        C_TabelaPossuiTax.Value := TipoMovimento('POSSUITAX');

    if Sender.asVariant = null then
        exit;

    // LegisFiscal
    C_TabelaUFDestino.Value := iif(ClienteField('UF') = Null, DMProjeto.sUFEmpresa, ClienteField('UF'));
    C_TabelaFonte.AsVariant := ClienteField('Fonte');

    if length(C_TabelaF_CPF_CNPJ.Text) = 11 then
        C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(C_TabelaF_CPF_CNPJ.Text) = 14 then
        C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';

    if C_TabelaUFDestino.value <> DMProjeto.sUFEmpresa then
        sN := '6'
    else
        sN := '5';
    C_TabelaCFOPNota.Value := sN + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);

    AtualizaCFOPsGrid(C_TabelaUFDESTINO.Value);

    if (C_TabelaPossuiICMS.value = 'S') then
        if C_TabelaUFDestino.value = DMProjeto.sUFEmpresa then
            C_TabelaAliqICMSVenda.value := DMProjeto.nICMSInterno
        else if ((UpperCase(Trim(C_TabelaF_INSCRICAO_EST.AsString)) = 'ISENTO') or (Length(Trim(C_TabelaF_CPF_CNPJ.AsString)) < 14)) then
            C_TabelaAliqICMSVenda.value := DMProjeto.nICMSInterno
        else
            C_TabelaAliqICMSVenda.value := DMProjeto.AliquotaEstadoExterno(C_TabelaUFDestino.value);

    if (C_TabelaTipoPadrao.value = 3) then
        begin
            //if (C_TabelaATratar.value = '') then
            C_TabelaATratar.value := C_TabelaF_Nome.value;
        end;
    {Vendedor Associado}
    if (ClienteField('Vendedor') <> null) and (ClienteField('Vendedor') > 0) then
        C_TabelaVendedor.Value := ClienteField('Vendedor');

    {Tipo Cobranca Associado}
    if (ClienteField('TIPOCOBRANCA') <> null) and (ClienteField('TIPOCOBRANCA') > 0) then
        C_TabelaCobranca.Value := ClienteField('TIPOCOBRANCA');

    {Determinando Tabela do Cliente como padrão}
    {Ao atribuir já ocorre no Change a atualização dos precos dos itens já digitados}
    nTabela := IIF(ClienteField('TabelaPreco') = null, -1, ClienteField('TabelaPreco'));
    if (nTabela >= 0) and (nTabela <> C_TabelaTabelaPadrao.Value) and DMProjeto.PermissoesTabelasPreco(nTabela, 'U', true) then
        begin
            C_TabelaTABELAPADRAO.Value := nTabela;
            AlterarTabelaPadrao(true);
        end;
end;

procedure TDMSaidas.C_ItensITEMChange(Sender: TField);
var
    sTipoDesc, sN: string;
begin

    //sPerformance := sPerformance + Format('[%s] - Iniciando ItemChange', [TimeToStr(Now)])+#13;

    ApagarMesclagem;
    //sPerformance := sPerformance + Format('[%s] - Após apagar Mesclagem', [TimeToStr(Now)])+#13;

    ApagarFilhos;
    //sPerformance := sPerformance + Format('[%s] - Após Apagar Composicao', [TimeToStr(Now)])+#13;

    C_ItensMesclado.Value := 'N';

    {MaxDesconto - para apresentação quando solicitado pelo usuário}
    {Representa o Percentual Máximo de Desconto permitido para o Item}
    {Prioridade:  DescontoMaximo do CLIENTE => PERCDESCONTO
                  DescontoMaximo do Produto;
                  DescontoMáximo do Usuário;}

    if DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3] then
        begin
            if (DMProjeto.Parametro('DescontoAuto') = 'S') and (C_TabelaF_PERCDESCONTO.Value > 0) then
                C_ItensMaxDesconto.Value := (C_TabelaF_PERCDESCONTO.Value / 100) {%}
            else if DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value > 0 then
                C_ItensMaxDesconto.Value := (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value / 100) {%}
            else if DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value > 0 then
                C_ItensMaxDesconto.Value := (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value / 100) {%}
            else if DMProjeto.nMaxDescontoFunc > 0 then
                C_ItensMaxDesconto.Value := (DMProjeto.nMaxDescontoFunc / 100) {%}
            else
                C_ItensMaxDesconto.Value := 0;
        end
    else
        C_ItensMaxDesconto.Value := 0;

    C_ItensI_CLASFISCAL.Value := DMProjeto.C_LocalizarItensCLASFISCAL.value;
    C_ItensALIQPIS.Value := DMProjeto.C_LocalizarItensALIQPISSAIDA.Value;
    C_ItensALIQCOFINS.Value := DMProjeto.C_LocalizarItensALIQCOFINSSAIDA.Value;
    C_ItensCSTPISCOFINS.Value := DMProjeto.C_LocalizarItensCSTPISCOFINSSAIDA.Value;
    C_ItensALIQIPI.Value := DMProjeto.C_LocalizarItensALIQIPI.Value;

    C_ItensVALORPISPROD.Value := (C_ItensALIQPIS.Value / 100.00) * C_ItensSubTotal.Value;
    C_ItensVALORCOFINSPROD.Value := (C_ItensALIQCOFINS.Value / 100.00) * C_ItensSubTotal.Value;

    C_ItensFotoGrupo.Value := DMProjeto.C_LocalizarItensFotoGrupo.value;

    {Aqui será incluido o código para atribuição da tabela de varejo ou da unidade de venda normal}
    C_ItensI_FatorUndVenda.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;
    C_ItensI_FatorUndCompra.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndCompra').asFloat;

    C_ItensFator.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorItemUnd').AsFloat;
    C_ItensUNIDADE.AsVariant := DMProjeto.C_LocalizarItens.FieldByName('UNIDADE').AsVariant;
    //sPerformance := sPerformance + Format('[%s] - Após definir Fator e Unidade', [TimeToStr(Now)])+#13;
    C_ItensI_INDEXADOR.AsVariant := DMProjeto.C_LocalizarItens.FieldByName('INDEXADOR').AsVariant;
    C_ItensIdTribFederal.Value := IIF(DMProjeto.C_LocalizarItens.FieldByName('IDTRIBFEDERAL').IsNull, 2, DMProjeto.C_LocalizarItens.FieldByName('IDTRIBFEDERAL').Value);
    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
        begin
            C_ItensPreco.Value := DMProjeto.C_LocalizarItensicPReco.AsCurrency;
            C_ItensPrecoTabela.Value := DMProjeto.C_LocalizarItensicPReco.AsCurrency;
            C_ItensPromocao.Value := 'N';
            C_ItensPrecoSemPromocao.Value := DMProjeto.C_LocalizarItensicPReco.AsCurrency;
            if DMProjeto.C_LocalizarItensicPreco.AsCurrency > 0 then
                C_ItensMaxDesconto.Value := 1 - (DMProjeto.C_LocalizarItensicPRecoMinimo.AsCurrency / DMProjeto.C_LocalizarItensicPReco.AsCurrency)
            else
                C_ItensMaxDesconto.Value := 0;
            if C_TiposMovimentoTIPOPADRAO.Value = 5 then
                begin
                    C_ItensPrecoTabela.Value := DMProjeto.C_LocalizarItensPRECO.AsCurrency;
                    C_ItensPrecoSemPromocao.Value := DMProjeto.C_LocalizarItensPRECO.AsCurrency;
                    C_ItensMaxDesconto.Value := 0;
                end;
        end
    else
        begin
            {Capturando o Preco Tabela para a TabelaPreco corrente e unidade do item definida acima}
            if not bMesclando and (DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3]) and
                LocalizarTabelaItem(Sender.asInteger, C_TabelaTabelaPadrao.Value, C_ItensUNIDADE.asString) then
                begin
                    // Para forçar o CalcFields
                    C_ProdutosPreco.Edit;
                    C_ProdutosPreco.Post;
                    //
                    if C_ProdutosPrecoPrecoPromocao.Value > 0 then
                        begin
                            C_ItensPrecoTabela.Value := C_ProdutosPrecoPrecoPromocao.asCurrency;
                            C_ItensPromocao.Value := IIF(C_TiposMovimentoTIPOPADRAO.Value in [5, 6], 'N', 'S');
                            C_ItensPrecoSemPromocao.Value := C_ProdutosPrecoPreco.asCurrency;
                            C_ItensMaxDesconto.Value := 0;
                        end
                    else
                        begin
                            C_ItensPrecoTabela.Value := C_ProdutosPrecoPreco.asCurrency;
                            C_ItensPromocao.Value := 'N';
                            C_ItensPrecoSemPromocao.Value := 0;
                        end;
                    C_ItensTabelaPreco.Value := C_ProdutosPrecoTabelaPreco.Value;
                end
            else
                begin
                    C_ItensPrecoTabela.Value := 0;
                    C_ItensTabelaPreco.Value := 0;
                end;
        end;
    //sPerformance := sPerformance + Format('[%s] - Após definir Tabela de Preco', [TimeToStr(Now)])+#13;

    if DMProjeto.C_LocalizarItensTIPOITEM.Value < 8 then
        C_ItensPrecoTabela.asCurrency := Arredondar(C_ItensPrecoTabela.asCurrency, DMProjeto.nCasasDecimais);

    C_ItensNumeroLote.asVariant := null;
    //sPerformance := sPerformance + Format('[%s] - Após definir Lote nulo', [TimeToStr(Now)])+#13;

    {O Inherited fica após o código do Desconto Máximo para que ao ocorrer o PrecoChange
     já seja possível determinar se o desconto do item é válido (isto se o tipo do item
     for Desconto).  Se o Desconto não for válido o PrecoChange já altera para o
     ValorMaxDesconto}

    inherited;
    if C_TiposMovimentoTIPOPADRAO.Value in [5, 6] then
        begin
            C_ItensPreco.Value := DMProjeto.C_LocalizarItensPRECOCOMPRA.AsCurrency;
            C_ItensPrecoTabela.Value := DMProjeto.C_LocalizarItensPRECO.AsCurrency;
            C_ItensPrecoSemPromocao.Value := DMProjeto.C_LocalizarItensPRECO.AsCurrency;
            C_ItensMaxDesconto.Value := 0;
        end;

    C_ItensDESCRICAOCOMPLEMENTAR.Value := DMProjeto.C_LocalizarItensDESCRICAOCOMPLEMENTAR.Value;

    sTipoDesc := TipoMovimento('TipoDescricao');
    if (sTipoDesc = 'DC') and (DMProjeto.C_LocalizarItensDescricaoComplementar.Value <> '') then
        C_ItensDescricao.Value := DMProjeto.C_LocalizarItensDescricaoComplementar.Value
    else if (sTipoDesc = 'DT') and (DMProjeto.C_LocalizarItensDescricaoTecnica.Value <> '') then
        C_ItensDescricao.Value := DMProjeto.C_LocalizarItensDescricaoTecnica.Value;

    if (sTipoDesc <> 'DC') and (DMProjeto.C_LocalizarItensDescricaoComplementar.Value <> '') then
        C_ItensDESCRICAOCOMPLEMENTAR.Value := DMProjeto.C_LocalizarItensDescricaoComplementar.Value;
    //sPerformance := sPerformance + Format('[%s] - Após definir Descrição Padrao', [TimeToStr(Now)])+#13;

    if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
        C_ItensQuantidade.Value := DMProjeto.C_LocalizarItensicQuantidade.Value;

    C_ItensicFoto.Value := IIF(C_ItensI_Foto.Value <> '', C_ItensI_Foto.Value, C_ItensFotoGrupo.Value);

    if not (C_ItensI_TipoItem.Value in [1, 2, 3]) then
        C_ItensStatus.asVariant := null;

    //sPerformance := sPerformance + Format('[%s] - Após definir Foto', [TimeToStr(Now)])+#13;

    if Sender.asVariant = null then
        exit;
    // Atribuindo CST para o item
    C_ItensCSTIPI.value := DMProjeto.C_LocalizarItensCSTIPI.value;
    C_ItensCSTPISCOFINS.value := DMProjeto.C_LocalizarItensCSTPISCOFINSSAIDA.value;

    // LegisFiscal
    C_ItensSituacaoECF.value := IIF(DMProjeto.C_LocalizarItensSituacaoECF.value = '',
        DMProjeto.C_LocalizarItensSituacaoECFGrupo.value,
        DMProjeto.C_LocalizarItensSituacaoECF.value);
    if C_ItensSituacaoECF.Value = '' then
        C_ItensSituacaoECF.Value := 'T';

    if (DMProjeto.C_LocalizarFav.FieldByName('DECRETO24755').AsString = 'S') then
        begin
            C_ItensCST.value := '040';
            C_ItensSituacaoECF.value := 'I';
        end
    else if (C_TiposMovimentoCB_CSTPADRAO.Value = 'S') then
        begin
            C_ItensCST.value := C_TiposMovimentoCST_PADRAO.value;
        end
    else
        begin
            C_ItensCST.value := IIF(DMProjeto.C_LocalizarItensCST.value = '', DMProjeto.C_LocalizarItensCSTGrupo.value, DMProjeto.C_LocalizarItensCST.value);
        end;
    if C_ItensCST.Value = '' then
        C_ItensCST.Value := '000';

    if (C_TabelaUFDestino.value <> DMProjeto.sUFEmpresa) and (C_TabelaUFDESTINO.Value <> '') then
        sN := '6'
    else
        sN := '5';

    C_TabelaCFOPNota.Value := sN + Direita(C_TiposMovimentoCFOPAssociado.Value, 3);

    if not (C_CSTs.Active) then
        C_CSTs.Active := True;

    if ((C_ItensCFOPCST.IsNull) or (C_ItensCFOPCST.AsString = '')) then
        begin
            C_CSTs.Locate('CST;TIPOMOVIMENTO', VarArrayOf([C_ItensCST.Value, C_TabelaTipoMovimento.value]), [loPartialKey]);
            if (C_TabelaUFDestino.value = 'EX') then
                C_ItensCFOPCST.Value := '3102'
            else if (sN = '5') then
                C_ItensCFOPCST.Value := C_CSTscfopassociado.Value
            else
                C_ItensCFOPCST.Value := C_CSTscfopforaestado.Value;
            if (C_ItensI_TIPOITEM.Value = 3) then
                C_ItensCFOPCST.Value := '6933';
        end; //So Incluir sugestao do CFOPCST quando nao existir valor

    C_ItensReducaoCST.value := IIF(DMProjeto.C_LocalizarItensReducaoCST.value = -999,
        DMProjeto.C_LocalizarItensReducaoCSTGrupo.value,
        DMProjeto.C_LocalizarItensReducaoCST.value);
    if C_ItensReducaoCST.Value < 0 then
        C_ItensReducaoCST.Value := 0;

    if C_TabelaPossuiIPI.value = 'S' then
        begin
            C_ItensIPI.value := DMProjeto.C_LocalizarItensIPIVenda.value;
            C_ItensALIQIPI.Value := C_ItensIPI.Value;
        end;

    C_ItensI_PesoBruto.value := DMProjeto.C_LocalizarItensPesoBruto.value;
    C_ItensI_PesoLiquido.value := DMProjeto.C_LocalizarItensPesoLiquido.value;

    C_ItensI_GRUPOCOMISSAO.Value := DMProjeto.C_LocalizarItensGRUPOCOMISSAO.Value;

    if (C_TabelaPossuiICMS.value = 'S') then
        if C_ItensI_TipoItem.value in [1, 2] then
            begin
                C_ItensAliqICMS.value := IIF(DMProjeto.C_LocalizarItensAliqICMS.value = -999,
                    DMProjeto.C_LocalizarItensAliqICMSGrupo.value,
                    DMProjeto.C_LocalizarItensAliqICMS.value);
                if (sForm <> 'FrmVendaRapida') and ((C_ItensAliqICMS.value = DMProjeto.nICMSInterno) or (C_TabelaUFDestino.value <> DMProjeto.sUFEmpresa)) then
                    C_ItensAliqICMS.value := C_TabelaAliqICMSVenda.value;
            end
        else
            C_ItensAliqICMS.value := 0;
    if (C_TabelaPossuiICMS.value = 'S') then
        if C_ItensSituacaoECF.value <> 'T' then
            C_ItensAliqICMS.AsVariant := 0;
    //Eliminar calculo de Fonte para Outros tipos de movimento que nao sejam vendas ((C_TabelaTipoMovimento.Value = 1) and)
    // Mudar AKI para C_TabelasTipoPadrao.Value = 1.

    //C_ItensTVA.value := 0;
    { Atribuindo o TVA ao item }
    C_ItensTVA.value := DMProjeto.C_LocalizarItensTVAFonte.value;

    if ((C_TabelaTipoMovimento.Value = 1) or (C_TabelaTipoMovimento.Value = 100)) and (C_TabelaFonte.value = 'S') and (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
        begin
            //C_ItensTVA.value := DMProjeto.C_LocalizarItensTVAFonte.value;
            { Aplica o CST 010 somente se o Tipo Tributacao for diferente de Simples Nacional e item Tributavel }
            if (C_ItensSITUACAOECF.Value = 'T') and (DMProjeto.sTipoTributEmpresa <> 'N') then
                C_ItensCST.Value := '010';
        end
    else if (C_TabelaSubstTrib.value = 'S') and (C_TabelaUFDestino.value <> DMProjeto.sUFEmpresa) then
        C_ItensTVA.value := DMProjeto.C_LocalizarItensTVA.value;
    /////
    //sPerformance := sPerformance + Format('[%s] - Após definir Campos Fiscais', [TimeToStr(Now)])+#13;

    C_ItensContaVenda.value := DMProjeto.C_LocalizarItensConta_Venda.value;

    C_ItensHasChildren.value := DMProjeto.C_LocalizarItensHasChildren.value;
    C_ItensI_FatorLucro.value := DMProjeto.C_LocalizarItensFatorLucro.value;
    C_ItensI_SemLucro.value := DMProjeto.C_LocalizarItensSemLucro.value;

    //  if not bAlteracao or (C_ItensCustoMedio.asCurrency = 0) then

    C_ItensCustoMedio.asCurrency := DMProjeto.C_LocalizarItensCustoMedio.asCurrency;
    C_ItensCustoContabil.asCurrency := DMProjeto.C_LocalizarItensCustoContabil.asCurrency;

    C_ItensOrdemMontagem.value := 'N';
    //sPerformance := sPerformance + Format('[%s] - Após definir Fatores e Custos', [TimeToStr(Now)])+#13;

//    If (C_ItensHasChildren.value = 'S') and
    if DMProjeto.bOrdemProducao and not bMesclando then
        begin
            if (C_ItensBaixaEstoque.value = 'S') and (C_ItensHasChildren.value = 'S') and (C_ItensMesclado.value = 'N') and
                (C_ItensOrdemMontagem.value <> 'X') and (C_ItensOrdemMontagem.value <> 'S') and (C_ItensI_TipoItem.value = 1) and ((C_ItensQuantidade.value * C_ItensFator.value) > C_ItensI_Estoque.value) then
                begin
                    if (DMProjeto.Parametro('AutoOrdemProducao') = 'S') or (DlgMsg.ShowMsg(3110) = 100) then
                        begin
                            if not (C_Itens.state in [dsEdit, dsInsert]) then
                                C_Itens.edit;
                            C_ItensOrdemMontagem.value := 'X';
                        end
                    else
                        C_ItensOrdemMontagem.value := 'N';
                end;

            //sPerformance := sPerformance + Format('[%s] - Após Ordem Produção', [TimeToStr(Now)])+#13;

        end;
    C_ItensPCOMISSAO.Value := iif(DMProjeto.C_LocalizarItensCOMISSAO.Value < 0, 0.00, DMProjeto.C_LocalizarItensCOMISSAO.Value);

end;

procedure TDMSaidas.C_ItensCalcFields(DataSet: TDataSet);
var
    nQtd: double;
begin
    inherited;
    if DataSet.FieldByName('Quantidade').Value = null then
        nQtd := 0.00
    else
        nQtd := DataSet.FieldByName('Quantidade').asFloat;

    {CalcField Apenas para Visualização do Usuário - quando solicitado}
    if DataSet.FieldByName('PrecoTabela').asCurrency > 0 then
        begin
            if DataSet.FieldByName('MaxDesconto').asFloat > 0 then
                begin
                    DataSet.FieldByName('cfValorMaxDesconto').asCurrency :=
                        ((nQtd * DataSet.FieldByName('PrecoTabela').asCurrency) * DataSet.FieldByName('MaxDesconto').asFloat) -
                        (nQtd * (DataSet.FieldByName('PrecoTabela').asCurrency - DataSet.FieldByName('Preco').asFloat)); //Desc. o Preço diretamente

                    if DataSet.FieldByName('cfValorMaxDesconto').asCurrency < 0 then
                        DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;

                end
            else
                DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;
        end
    else if DataSet.FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
        DataSet.FieldByName('cfValorMaxDesconto').asCurrency := (DataSet.FieldByName('SubTotal').asCurrency)
    else
        DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;

    if DataSet.FieldByName('PRECOCUSTOLICITACAO').AsCurrency > 0 then
        begin
            DataSet.FieldByName('CalcSubTotalPrecoLicitacao').AsCurrency := DataSet.FieldByName('Quantidade').AsCurrency * DataSet.FieldByName('PrecoCustoLicitacao').AsFloat;
            DataSet.FieldByName('PercLucroLicitacao').AsString := CurrtoStr(((DataSet.FieldByName('SubTotalItem').AsCurrency / DataSet.FieldByName('CalcSubTotalPrecoLicitacao').AsCurrency) * 100) - 100);
            DataSet.FieldByName('DifSubTotalLicitacao').AsCurrency := DataSet.FieldByName('SubTotalItem').AsCurrency - DataSet.FieldByName('CalcSubTotalPrecoLicitacao').AsCurrency;
        end
    else
        begin
            DataSet.FieldByName('CalcSubTotalPrecoLicitacao').AsCurrency := 0;
            DataSet.FieldByName('PercLucroLicitacao').AsString := '0';
            DataSet.FieldByName('DifSubTotalLicitacao').AsCurrency := 0;
        end;
end;

procedure TDMSaidas.C_ItensPRECOChange(Sender: TField);
var
    nVlMaxDesconto, nSub, nDif: double;
    bPodeDesconto: boolean;
    nDescItem, nPerDesc, nPComissao: Currency;
    sGrupoDesconto: string[5];
begin
    if ((Sender.asFloat < 0) and not (C_ItensI_TipoItem.Value = 6)) or
        ((Sender.asVariant = null) and not (C_ItensI_TipoItem.Value in [0, 4..7])) then
        begin
            Sender.asFloat := 0;
            exit;
        end;
    {Verificando se a comissão está negativa }
    if (DMProjeto.Parametro('GrupoComissao') = 'S') and (C_TabelaCALCCOMISSAO.AsString = 'S') and
        (C_ItensPrecoTabela.AsFloat > 0) then
        begin
            nPComissao := 0;
            if (C_ItensPrecoTabela.asFloat - Sender.AsFloat) < 0 then
                nDescItem := 0
            else
                nDescItem := -(C_ItensPrecoTabela.asFloat - Sender.AsFloat); {Valor do Desconto}
            // Calculando o percentual de desconto proporcional dado ao item
            if C_ItensPrecoTabela.asFloat > 0 then
                nPerDesc := Abs((nDescItem * 100) / C_ItensPrecoTabela.asFloat)
            else
                nPerDesc := 0;
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select gt.comissao, g.Descricao ' +
                'from gruposcomissoes g inner join gruposcomissoesdet gt on g.grupocomissao = gt.grupocomissao ' +
                'where g.grupocomissao = :gc and :vlr between gt.valorini and gt.valorfim ';
            Q_SQL.ParamByName('gc').AsInteger := C_Itens.FieldByName('i_grupocomissao').AsInteger;
            Q_SQL.ParamByName('vlr').AsCurrency := nPerDesc;
            Q_SQL.Open;
            if Q_SQL.RecordCount > 0 then
                begin
                    nPComissao := Q_SQL.FieldByName('comissao').AsCurrency;
                    sGrupoDesconto := Copy(Q_SQL.FieldByName('descricao').AsString, 1, 5);
                end
            else if (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ExcedGrCom', '', False,
                'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString + #13#10 + 'Desconto:' + FloatToStr(nSub), C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    raise Exception.Create('@@');
                    exit;
                end
            else
                DlgMsg.ShowMsg(8052);
            if (nPComissao < 0) and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ComissNIt', '', False,
                'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString + #13#10 + 'Desconto:' + FloatToStr(nSub), C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    raise Exception.Create('@@');
                    Exit;
                end;
        end;

    {Validando o Desconto}
    if C_ItensI_TIPOITEM.Value = 6 then
        begin
            if Sender.asCurrency > 0 then
                begin
                    Sender.asCurrency := -Sender.asCurrency;
                    exit;
                end;

            nVlMaxDesconto := TotalUsoTipoItem('cfValorMaxDesconto', C_ItensUSOTIPOITEM.Value);
            nSub := TotalUsoTipoItem('SubTotal', C_ItensUSOTIPOITEM.Value);

            if C_ItensI_PERCENTUAL.Value > 0 then
                begin
                    if (nSub > 0) and (ABS(C_ItensPRECO.Value) > (nVlMaxDesconto / nSub) * 100)
                        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := -(nVlMaxDesconto / nSub) * 100;
                            exit;
                        end;
                end
            else
                begin
                    if (ABS(C_ItensPRECO.Value) > (nVlMaxDesconto))
                        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100)
                        , C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := -nVlMaxDesconto;
                            exit;
                        end;
                end;

        end
    else if (C_ItensI_TIPOITEM.Value in [1, 2, 3]) and (C_ItensPrecoTabela.Value > 0) then
        begin
            // não é permitido diminuir o preco de um item em promocao
            if (C_ItensPromocao.Value = 'S') and (C_ItensPreco.asFloat < C_ItensPrecoTabela.asFloat) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;

                    DlgMsg.ShowMsg(8041);
                    raise Exception.Create('@@');
                end;

            // permissão p/ verificar se pode aumentar o preco
            if (C_ItensPreco.Value <> C_ItensOldPreco.Value) and (C_ItensPreco.asFloat > C_ItensPrecoTabela.Value + (0.001))
                and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'AUMENTPREC', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString, C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;
                    exit;
                end;

            // permissao p/ verificar se pode diminuir o preco
            if ((C_ItensPreco.Value <> C_ItensOldPreco.Value) and (C_ItensPreco.asFloat < C_ItensPrecoTabela.Value - (0.001)))
                and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'DIMINPREC', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                'Valor:' + C_ItensPreco.AsString + #13#10 +
                'Desconto:' + FloatToStr(nSub) + #13#10 +
                IIF(C_ItensOLDPRECO.AsCurrency > 0, 'Desconto %: ' + FloatToStr((C_Itenspreco.AsCurrency / C_ItensOLDPRECO.AsCurrency) * 100), 0),
                //'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                C_TabelaFAVORECIDO.AsInteger,
                'DlgSitCliente')) then
                begin
                    C_ItensPreco.Value := C_ItensOldPreco.Value;
                    exit;
                end;

            {Capturando o MaxDesconto que ainda pode ser concedido - pois o campo Desconto de C_Tabela já pode ter valor}
            bPodeDesconto := DMProjeto.LerPermissao(sForm, 'Perdescmax');

            nVlMaxDesconto := ValorMaxDesconto;

            nVlMaxDesconto := nVlMaxDesconto + C_TabelaDesconto.Value;
            nSub := C_ItensPreco.asFloat - C_ItensOldPreco.asFloat;

            nDif := ((C_ItensPrecoTabela.asFloat - C_ItensPreco.asFloat) / C_ItensPrecoTabela.asFloat) - C_ItensMaxDesconto.asFloat;

            {O Desconto Máximo já foi ultrapassado, não é possível dar mais descontos}
            if (nSub < 0) and ((nVlMaxDesconto - nSub < 0) or (nVlMaxDesconto < 0)) then
                begin
                    if bPodeDesconto then
                        DlgMsg.ShowMsg(2751,
                            [FormatCurr('##0.0# %', C_ItensMaxDesconto.Value * 100)],
                            'SemAlertarDescontoMax')
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := C_ItensOldPreco.Value;
                            exit;
                        end;
                end
            else if (nSub < 0) and (nDif > 0.00000001) then
                begin {Verificando alterações a menor no preço}
                    if bPodeDesconto then
                        begin
                            DlgMsg.ShowMsg(2750, [FormatCurr('##0.0# %', C_ItensMaxDesconto.Value * 100),
                                FormatCurr('#,##0.000', C_ItensPrecoTabela.asFloat * C_ItensMaxDesconto.Value)], 'SemAlertarDescontoMax');
                        end
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor Orig:' + C_ItensOldPreco.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString + #13#10 +
                        'Desconto:' + FloatToStr(nSub) + #13#10 +
                        'Desconto%:' + FloatToStr((C_ItensPreco.AsCurrency / C_ItensOldPreco.AsCurrency) * 100),
                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            C_ItensPreco.Value := C_ItensPrecoTabela.Value * (1 - C_ItensMaxDesconto.Value);
                            C_ItensPDesconto.OnChange := nil;
                            C_Itens.FieldByName('PDesconto').AsCurrency := (C_ItensMaxDesconto.Value * 100.00);
                            C_ItensPDesconto.OnChange := C_ItensPDescontoChange;

                            exit;
                        end;
                end;

        end;

    C_ItensOldPreco.Value := C_ItensPreco.Value;
    C_Itens.FieldByName('icPercComissao').AsCurrency := nPComissao;
    C_Itens.FieldByName('icGrupoDesconto').AsString := sGrupoDesconto;
    {Primeiro Valida o Desconto para poder ocorrer o PrecoChange da SuperClasse.}
    inherited;
end;

procedure TDMSaidas.C_TabelaDESCONTOChange(Sender: TField);
var
    nMax: Currency;
    bPodeDesconto: boolean;
begin
    {Obrigando que o Desconto seja sempre negativo}
    if Sender.asCurrency > 0 then
        begin
            Sender.asCurrency := -Sender.asCurrency;
            exit;
        end;

    inherited;

    {Verificando o MaxDesconto que pode ser dado.
     O MaxDesconto permitido considera também os Itens do Tipo Desconto
     que tenham sido colocados no grid}
    if (Sender.asCurrency < 0) and (Sender.asCurrency <> C_TabelaOldDesconto.asCurrency) then
        begin
            nMax := ValorMaxDesconto;
            nMax := IIF(nMax < 0, 0, nMax);

            if (ABS(Sender.asCurrency) - nMax > 0.009) then
                begin
                    bPodeDesconto := DMProjeto.LerPermissao(sForm, 'Perdescmax');

                    if bPodeDesconto then
                        DlgMsg.ShowMsg(2750,
                            [' ',
                            FormatCurr('#,##0.00', nMax)],
                                'SemAlertarDescontoMax')
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'Perdescmax', '', False,
                        'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Total Itens:' + C_TabelaTOTALITENS123.AsString + #13#10 +
                        'Desconto R$:' + Sender.AsString + #13#10 +
                        'Desconto  %:' + FormatCurr('0.00', Sender.Value / C_TabelaTOTALITENS123.Value * 100) + #13#10 +
                        'Total Final:' + C_TabelaTOTAL.AsString,

                        C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            //Sender.asCurrency := -nMax; //irá ocorrer o Change novamente, que atribuirá a OldDesconto.
                            Sender.asCurrency := 0; // Atribuir valor 0 (zero) quando desconto NÃO AUTORIZADO
                            exit;
                        end;
                end;

        end;

    C_TabelaOldDesconto.Value := Sender.asCurrency;

    CalcReducoesPorDesconto;

    AtualizaTotalFinal(True); //que chama CalcularImposto com atualizacao de IPI e Substituicao

end;

procedure TDMSaidas.CalcReducoesPorDesconto;
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
    C_TabelaReducoesBase.asCurrency := (C_TabelaBaseCalcICMSItens.asCurrency) * nProp;
end;

function TDMSaidas.ValorMaxDesconto;
var
    TempDS: TClientDataSet;
    nMaxDesconto, nDescontos: double;
begin

    TempDS := TClientDataSet.Create(self);
    with TempDS do
        begin
            CloneCursor(C_Itens, true);

            First;
            nDescontos := 0;
            nMaxDesconto := 0;

            while not EOF do
                begin
                    if FieldByName('I_TipoItem').asInteger = 6 then
                        nDescontos := nDescontos + FieldByName('SubTotal').asFloat;

                    nMaxDesconto := nMaxDesconto + FieldByName('cfValorMaxDesconto').asFloat;

                    Next;
                end;

            result := nMaxDesconto + nDescontos {os Descontos já são negativos};

        end;
    TempDS.Free;

end;

function TDMSaidas.BaixoEstoque;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select i.fator from itensunidades i where i.item = :item and i.unidade =:unidade ';
            params[0].asInteger := nItem;
            params[1].asString := sUnidade;
            Open;
            Result := (C_ItensI_Estoque.Value / iif(fields[0].Value <> null, fields[0].Value, 1) * C_ItensI_FATORUNDVENDA.Value) - C_ItensQuantidade.Value;
        end;

end;

{ Felipe - Criado para calcular icms substituicao para empresas do simples nacional
            e que fabricam seus produtos ou parte deles (03/03/2017) }

procedure TDMSaidas.CalcularIcmsSubstParaFabricante(aliqIcmsExterno: Currency);
begin
    C_ItensBASECALCICMSPROD.Value := 0;
    C_ItensALIQICMS.Value := 0;
    C_ItensVALORICMSPROD.Value := 0;

    if (C_TiposMovimentoCALCULAICMSSUBST.Value = 'S') and (C_TabelaF_PESSOA_FJ.Value = 'J') and (C_ItensTVA.Value > 0) then
        begin
            C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
            C_ItensVALORICMSSUBSTPROD.Value := (C_ItensBASECALCSUBSTPROD.Value * DMProjeto.nICMSInterno / 100) - (C_ItensSubTotal.Value * aliqIcmsExterno / 100);
        end
    else
        begin
            C_ItensBaseCalcSubstProd.Value := 0;
            C_ItensVALORICMSSUBSTPROD.Value := 0;
        end;

    if (C_TabelaF_PESSOA_FJ.Value = 'F') then
        C_ItensCST.Value := '500';
end;

procedure TDMSaidas.C_ItensBeforePost(DataSet: TDataSet);
var
    nMenorPV, precoItem: Currency;
    aliqIcmsInterno, aliqIcmsExterna: Currency;

begin;
    if (C_ItensQuantidade.asVariant = null) and (C_ItensI_TIPOITEM.Value in [1, 2]) then
        C_ItensQuantidade.Value := 0.00;
    if (C_ItensPreco.asVariant = null) and not (C_ItensI_TIPOITEM.Value in [4, 7]) then
        C_ItensPreco.Value := 0.00;

    aliqIcmsExterna := DMProjeto.AliquotaEstadoExterno(C_TabelaUFDestino.value);

    { Felipe - Truncando campos para a quantidade de casas de acordo com o parâmetro "CasasDecimais" (27/01/2016) }
    C_ItensPRECO.Value := Truncar(C_ItensPRECO.Value, DMProjeto.nCasasDecimais);
    C_ItensSUBTOTALITEM.Value := Truncar(C_ItensSUBTOTALITEM.Value, 2);

    inherited;
    // LegisFiscal
    C_ItensSubTotal.AsVariant := Truncar(C_ItensSubTotal.AsVariant, 2);

    if (TipoMovimento('CB_CSTPADRAO') = 'S') then
        C_ItensCST.Value := TipoMovimento('CST_PADRAO');

    if C_ItensSituacaoECF.value = 'T' then
        begin
            if (bDECRETO25905) then
                begin
                    if (C_TabelaPossuiICMS.value = 'S') then
                        if (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
                            begin
                                if C_ItensReducaoCST.value > 0 then
                                    C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant - ((C_ItensSubTotal.AsVariant * C_ItensReducaoCST.value) / 100)
                                else
                                    C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant;

                                if (C_TabelaPossuiICMS.value = 'S') then
                                    C_ItensValorICMSProd.value := ((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100);

                                if (DMProjeto.sTipoTributEmpresa = 'N') and (sTipoEmpresa = 'F') then
                                    CalcularIcmsSubstParaFabricante(aliqIcmsExterna)
                                else if (C_TiposMovimentoCALCULAICMSSUBST.Value = 'S') and (C_ItensTVA.Value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
                                        C_ItensVALORICMSSUBSTPROD.Value := (C_ItensBASECALCSUBSTPROD.Value * C_ItensALIQICMS.Value / 100) - (C_ItensSubTotal.Value * aliqIcmsExterna / 100);
                                    end;

                                {
                                if (C_ItensTVA.value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
                                        C_ItensVALORICMSSUBSTPROD.Value := (C_ItensBASECALCSUBSTPROD.Value * C_ItensALIQICMS.Value / 100) - (C_ItensSubTotal.Value * aliqIcmsExterna / 100);
                                        //C_ItensValorICMSSubstProd.value := (((C_ItensBaseCalcSubstProd.value * C_ItensAliqICMS.value) / 100) - C_ItensValorICMSProd.Value);
                                    end;
                                }
                            end
                        else
                            begin
                                if (C_TabelaPossuiICMS.value = 'S') then
                                    begin
                                        if C_ItensReducaoCST.value > 0 then
                                            C_ItensBaseCalcICMSProd.AsVariant := 0.00
                                    end;

                                if (DMProjeto.sTipoTributEmpresa = 'N') and (sTipoEmpresa = 'F') then
                                    CalcularIcmsSubstParaFabricante(aliqIcmsExterna)
                                else if (C_TiposMovimentoCALCULAICMSSUBST.Value = 'S') and (C_ItensTVA.Value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := 0.00;
                                        C_ItensValorICMSSubstProd.value := 0.00;
                                    end;

                                {
                                if (C_ItensTVA.value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := 0.00;
                                        C_ItensValorICMSSubstProd.value := 0.00;
                                    end;
                                }
                            end;
                end
            else
                begin
                    if (C_TabelaPossuiICMS.value = 'S') then
                        begin
                            if C_ItensReducaoCST.value > 0 then
                                C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant - ((C_ItensSubTotal.AsVariant * C_ItensReducaoCST.value) / 100)
                            else
                                C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant;

                            C_ItensValorICMSProd.value := ((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100);
                        end;

                    {Calculo do Item com Substituição}
                    if (DMProjeto.sTipoTributEmpresa = 'N') and (sTipoEmpresa = 'F') then
                        CalcularIcmsSubstParaFabricante(aliqIcmsExterna)
                    else if (C_TiposMovimentoCALCULAICMSSUBST.Value = 'S') and (C_ItensTVA.Value > 0) then
                        begin
                            C_ItensBaseCalcSubstProd.value := (C_ItensSubTotal.value + C_ItensVALORIPIPROD.Value) * ((100 + C_ItensTVA.value) / 100);
                            C_ItensVALORICMSSUBSTPROD.Value := (C_ItensBASECALCSUBSTPROD.Value * C_ItensALIQICMS.Value / 100) - (C_ItensSubTotal.Value * aliqIcmsExterna / 100);
                        end;

                    {
                    if (C_ItensTVA.value > 0) then
                        begin
                            C_ItensBaseCalcSubstProd.value := (C_ItensSubTotal.value + C_ItensVALORIPIPROD.Value) * ((100 + C_ItensTVA.value) / 100);
                            C_ItensVALORICMSSUBSTPROD.Value := (C_ItensBASECALCSUBSTPROD.Value * C_ItensALIQICMS.Value / 100) - (C_ItensSubTotal.Value * aliqIcmsExterna / 100);
                        end;
                    }
                end;
        end
    else if C_ItensSituacaoECF.value = 'F' then
        begin
            if (bDECRETO25905) then
                begin
                    if (C_TabelaPossuiICMS.value = 'S') and (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) and (C_TiposMovimentoCALCULAICMSSUBST.Value = 'S') then
                        //if (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
                        begin
                            C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value;
                            C_ItensValorICMSSubstProd.value := (((C_ItensBaseCalcSubstProd.value * 3.00) / 100));
                        end
                    else
                        begin
                            C_ItensBaseCalcSubstProd.value := 0.00;
                            C_ItensValorICMSSubstProd.value := 0.00;
                        end;
                end;
        end
    else if (C_ItensSituacaoECF.value = 'I') then
        C_ItensValorIsentasProd.value := C_ItensSubTotal.value;

    if ((C_TabelaPossuiIPI.value = 'S') and (C_ItensIPI.Value <> null)) then
        C_ItensValorIPIProd.value := Truncar((C_ItensSubTotal.value * C_ItensIPI.value) / 100, 2);

    C_ItensSubTotalItem.AsVariant := C_ItensSubTotal.AsVariant;

    if (C_ItensUsoTipoItem.Value <> '') and (C_ItensUsoTipoItem.Value[1] <> 'D') then
        C_ItensN_UsoTipoItem.Value := -StrToFloatDef(SeparaStrings(C_ItensUsoTipoItem.Value, '=', 2), 0);

    if (C_ItensPreco.Value <> 0) and (C_ItensItem.Value = 0) and (C_ItensDespesa.Value = 0) then
        begin
            DlgMsg.ShowMsg(2179);
            raise Exception.Create('@@');
        end;

    {Alertando a falta do preco
    if (C_ItensI_TipoItem.Value in [1,2,3]) and (C_ItensPreco.Value = 0) then
      DlgMsg.ShowMsg(2725);  }

//  Alertando para itens que estão sem estoque
//    if C_ItensI_TipoItem.Value = 1 then
//        C_ItenscfBaixoEstoque.Value := (C_ItensI_Estoque.Value * C_ItensI_FATORUNDVENDA.Value )  - C_ItensQuantidade.Value;
//    if C_ItensI_TipoItem.Value = 3 then
//        C_ItenscfBaixoEstoque.Value := 9999; {Para nao criticar quando Servico}

    if C_ItensI_TipoItem.Value = 1 then
        C_ItenscfBaixoEstoque.Value := BaixoEstoque(C_ItensItem.Value, C_ItensUNIDADE.Value);
    if C_ItensI_TipoItem.Value = 3 then
        C_ItenscfBaixoEstoque.Value := 9999; {Para nao criticar quando Servico}

    //Acrescentado para Bloqueio do Estoque para qtd maior que o Armazenado
    // Excluir para Venda Rapida, pois o controle vai ser no proprio form,
    // Para isso foi acrescentado o If (sForm <> 'FrmVendaRapida') Then Begin

    if (sForm <> 'FrmVendaRapida') then
        begin
            if (C_ItenscfBaixoEstoque.Value < 0) and (C_ItensI_TipoItem.Value <> 3) then
                begin
                    if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'LIBSEMESTQ', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString, C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            if not (C_Itens.State in [dsEdit, dsInsert]) then
                                C_Itens.Edit;
                            C_ItensQuantidade.Value := C_ItensI_ESTOQUE.Value;
                            C_ItenscfBaixoEstoque.Value := C_ItensI_ESTOQUE.Value;
                            // So permitir vender caso o item tenha estoque Maior que zero.
                            // C_ItensQuantidade.Value <= 0, antes estava apenas = 0.
                            if C_ItensQuantidade.Value <= 0 then
                                begin
                                    try C_Itens.Cancel;
                                    except {Tentando nao mostrar o erro}
                                        on e: exception do
                                            begin
                                                {Registrando Auditoria}
                                                DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                                                    + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                                                    C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                                                    C_TabelaIDMestre.Value, 34, 0);
                                            end;
                                    end;
                                end;
                            exit;
                        end;
                end;
        end;

    {Para o controle dos itens filhos e mesclados}
    C_ItensTrocouItem.Value := C_ItensITEM.Value <> C_ItensOldItem.Value;

    C_ItensOldItem.Value := C_ItensItem.Value;

    {Verificando prejuizo}
    if DMProjeto.Parametro('AlertarPrejuizoVenda') = 'S' then
        begin
            try
                nMenorPV := C_ItensI_CustoMedio.Value / C_ItensI_SemLucro.Value;
            except
                nMenorPV := 0;
            end;

            if (nMenorPV - C_ItensPreco.Value) > 0.01 then
                DlgMsg.ShowMsg(2710, [FormatCurr('#,##0.00#', nMenorPV)]);

        end;

    {Registrando o Desconto - Diferenca do Preço Tabela pelo Preço digitado. O valor do Desconto já ficará negativo}
    if (C_ItensI_TipoItem.Value in [1, 2, 3]) and (C_ItensPrecoTabela.Value > 0) and (C_TabelaTIPOPADRAO.value <> 6) then
        begin
            C_ItensDesconto.Value := -(C_ItensPrecoTabela.asFloat - C_ItensPreco.asFloat);
            if C_ItensDesconto.Value > 0 then
                C_ItensDesconto.Value := 0;
        end;

    // Felipe - Adicionado em 23/09/2014 (Calcula valor de Pis e Cofins e atribui valor para os campos de SaidasItens)
    if (C_TiposMovimentoCALCULAPISCOFINS.Value = 'S') then
        begin
            C_ItensVALORPISPROD.Value := Truncar((C_ItensSubTotal.Value * C_ItensALIQPIS.Value) / 100, 2);
            C_ItensVALORCOFINSPROD.Value := Truncar((C_ItensSubTotal.Value * C_ItensALIQCOFINS.Value) / 100, 2);
        end;

    if (C_ItensI_IDENTIFICACAO.Value = 'S') then
        begin
            DMProjeto.nIdItem := C_ItensI_ITEM.AsInteger;
            DMProjeto.nQuantItem := C_ItensQUANTIDADE.AsCurrency;
            DMProjeto.CriarForm('DlgItensIdentificacaoSaida', Self, True);
        end;

end;

procedure TDMSaidas.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
var
    SomaRateio: Currency;
begin
    inherited;

    {Felipe - Adicionado Funcao ABS para RATEIODESCONTO. Campo RATEIODESCONTO em SAIDASITENS precisa ficar positivo}
    sPerformance := sPerformance + Format(SChavesGravacao, [DateTimeToStr(Now)]) + #13;

    SomaRateio := 0.00;
    if (C_TabelaDesconto.Value <= 0) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIODESCONTO.Value := Truncar(Abs((C_TabelaDesconto.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value))), 2);
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

    SomaRateio := 0.00;
    if (C_TabelaOUTRASDESPESAS.Value > 0 ) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIODESPESAS.Value := Truncar((C_TabelaOUTRASDESPESAS.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value)), 2);
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

    SomaRateio := 0.00;
    if (C_TabelaVALORSEGURO.Value > 0 ) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIOSEGURO.Value := Truncar((C_TabelaVALORSEGURO.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value)), 2);
                    SomaRateio := SomaRateio + C_ItensRATEIOSEGURO.Value;
                    C_Itens.Post;
                    C_Itens.Next;
                end;
            SomaRateio := (C_TabelaVALORSEGURO.Value - SomaRateio);
            C_Itens.First;
            C_Itens.Edit;
            C_ItensRATEIOSEGURO.Value := (C_ItensRATEIOSEGURO.Value + SomaRateio);
            C_Itens.Post;
            C_Itens.EnableControls;
        end;

    SomaRateio := 0.00;
    if (C_TabelaFRETE.Value > 0 ) then
        begin
            C_Itens.DisableControls;
            C_Itens.First;
            while not C_Itens.EOF do
                begin
                    C_Itens.Edit;
                    C_ItensRATEIOFRETE.Value := Truncar((C_TabelaFRETE.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value)), 2);
                    SomaRateio := SomaRateio + C_ItensRATEIOFRETE.Value;
                    C_Itens.Post;
                    C_Itens.Next;
                end;
            SomaRateio := (C_TabelaFRETE.Value - SomaRateio);
            C_Itens.First;
            C_Itens.Edit;
            C_ItensRATEIOFRETE.Value := (C_ItensRATEIOFRETE.Value + SomaRateio);
            C_Itens.Post;
            C_Itens.EnableControls;
        end;

    {Está aqui para que possa pegar também a modificação do Número do Movimento}
    if C_Parcelas.RecordCount > 0 then
        begin
            {Garantindo atualização de campos da invoice: Cliente, Vendedor, Número da Nota, Títulos, etc.(POST)}
            C_Parcelas.DisableControls;
            C_Parcelas.First;
            while not C_Parcelas.EOF do
                begin
                    C_Parcelas.Edit;
                    C_ParcelasImportacao.Value := 0;

                    // Felipe - Retirado de RPT_DocCobranca e colocado no DMSaidas. Utilizado para dar auto incremento no nosso numero tabela de Carteiras e gerar nosso numero para tabela de TitulosaReceber.
                    if (bGeraBoleto) then
                        begin
                            if (sNumCarteira = '') then
                                sNumCarteira := SelectNossoNumero(C_TabelaCARTEIRA.AsInteger);

                            if (C_ParcelasNOSSONUMERO.Value = '') then
                                begin
                                    C_ParcelasNOSSONUMERO.Value := sNumCarteira;

                                    { Felipe - Verifica se boleto é para Bradesco}
                                    if (StrtoInt(C_CarteirasNUMEROCARTEIRA.Value) in [03, 06, 09]) then
                                        C_ParcelasDIGITONOSSONUMERO.Value := CalculaDVNossoNumeroBradesco(C_CarteirasNUMEROCARTEIRA.Value, C_ParcelasNOSSONUMERO.Value);

                                    sNumCarteira := IntToStr(StrtoInt64(sNumCarteira) + 1);
                                    UpdateNossoNumero(C_TabelaCARTEIRA.AsInteger);
                                end;
                        end;

                    C_Parcelas.Post;
                    C_Parcelas.Next
                end;
            C_Parcelas.First;
            C_Parcelas.EnableControls;
        end;

    sPerformance := sPerformance + Format(SCorrigeParcelasPost, [DateTimeToStr(Now)]) + #13;

end;

procedure TDMSaidas.ApagarItensFilhos;
begin
    if (C_ItensHasChildren.Value <> 'S') or (C_ItensTrocouItem.Value) then
        if not C_SaidasItensFilhosItem.IsNull then
            begin
                C_SaidasItensFilhos.first;
                while not C_SaidasItensFilhos.eof do
                    C_SaidasItensFilhos.delete;
            end;
end;

procedure TDMSaidas.CarregarItensFilhos;
var bCond1, bCond2: boolean;
    Q_SQL_X, Q_SqlSub: TIBQuery;
begin
    {Só é para carregar os Itens Filhos se:
        1- este é um item composto e não existem filhos carregados ainda;
        2- este item é composto e é diferente do OldItem que estava carregado (troca de item);}
    bCond1 := (C_ItensHasChildren.value = 'S') and (C_SaidasItensFilhosItem.IsNull) and not bMesclando and not bFaturandoOperacao;
    bCond2 := (C_ItensHasChildren.value = 'S') and (C_ItensTrocouItem.Value) and not bMesclando and not bFaturandoOperacao;
    Q_SQL_X := TIBQuery.Create(SELF);
    Q_SqlSub := TIBQuery.Create(Self);
    if bCond1 or bCond2 then
        begin
            Q_SQL_X.Database := DMProjeto.DB_Projeto;
            Q_SqlSub.DataBase := DMPRojeto.DB_Projeto;
            Q_SQL_X.Close;
            Q_SQL_X.SQL.text := 'select i.item,ii.quantidade,i.codigo,i.descricao,ii.unidade,ii.fator,i.customedio,i.custocontabil, i.haschildren, ii.subitem ' +
                'from itensfilhos ii, itens i where ii.item = :item and ii.subitem = i.item';
            Q_SQL_X.params[0].asinteger := C_ItensItem.value;
            Q_SQL_X.open;
            bPopulando := true; //para não ocorrer C_SaidasItensFilhosItemChange;
            while not Q_SQL_X.eof do
                begin
                    C_SaidasItensFilhos.Append;
                    C_SaidasItensFilhosQuantidade.value := Q_SQL_X.FieldByName('quantidade').value;
                    C_SaidasItensFilhosCodigo.value := Q_SQL_X.FieldByName('codigo').asstring;
                    C_SaidasItensFilhosDescricao.value := Q_SQL_X.FieldByName('descricao').asstring;
                    C_SaidasItensFilhosItem.value := Q_SQL_X.FieldByName('item').asinteger;
                    C_SaidasItensFilhosUnidade.value := Q_SQL_X.FieldByName('unidade').asstring;
                    C_SaidasItensFilhosFator.value := Q_SQL_X.FieldByName('fator').value;
                    C_SaidasItensFilhosCustoMedio.value := Q_SQL_X.FieldByName('CustoMedio').asCurrency;
                    C_SaidasItensFilhosCustoContabil.value := Q_SQL_X.FieldByName('CustoContabil').asCurrency;
                    C_SaidasItensFilhosPreco.value := DMProjeto.PrecoDireto(C_SaidasItensFilhosITEM.value, C_SaidasItensFilhosUnidade.value, C_TabelaTabelaPadrao.value);
                    C_SaidasItensFilhosEMPRESA.value := DMProjeto.nEmpresa;
                    C_SaidasItensFilhosPDV.Value := DMProjeto.nPDV;
                    C_SaidasItensFilhos.post;

                    if (Q_SQL_X.FieldByName('haschildren').AsString = 'S') then
                        begin
                            Q_SqlSub.close;
                            Q_SqlSub.Sql.Text := 'select i.item,ii.quantidade,i.codigo,i.descricao,ii.unidade,ii.fator,i.customedio,i.custocontabil, i.haschildren, ii.subitem  ' +
                                'from itensfilhos ii, itens i where ii.item = :item and ii.subitem = i.item';
                            Q_SqlSub.params[0].asinteger := Q_SQL_X.FieldByName('subitem').asinteger;
                            Q_SqlSub.open;
                            while not Q_SqlSub.eof do
                                begin
                                    C_SaidasItensFilhos.Append;
                                    C_SaidasItensFilhosQuantidade.value := Q_SqlSub.FieldByName('quantidade').value;
                                    C_SaidasItensFilhosCodigo.value := Q_SqlSub.FieldByName('codigo').asstring;
                                    C_SaidasItensFilhosDescricao.value := Q_SqlSub.FieldByName('descricao').asstring;
                                    C_SaidasItensFilhosItem.value := Q_SqlSub.FieldByName('item').asinteger;
                                    C_SaidasItensFilhosUnidade.value := Q_SqlSub.FieldByName('unidade').asstring;
                                    C_SaidasItensFilhosFator.value := Q_SqlSub.FieldByName('fator').value;
                                    C_SaidasItensFilhosCustoMedio.value := Q_SqlSub.FieldByName('CustoMedio').asCurrency;
                                    C_SaidasItensFilhosCustoContabil.value := Q_SqlSub.FieldByName('CustoContabil').asCurrency;
                                    C_SaidasItensFilhosPreco.value := DMProjeto.PrecoDireto(C_SaidasItensFilhosITEM.value, C_SaidasItensFilhosUnidade.value, C_TabelaTabelaPadrao.value);
                                    C_SaidasItensFilhos.post;
                                    Q_SqlSub.Next;
                                end;
                        end;
                    Q_SQL_X.next;
                end;
            Q_SQL_X.Close;
            bPopulando := False;
            C_SaidasItensFilhos.first;
        end;
end;

procedure TDMSaidas.C_ItensAfterPost(DataSet: TDataSet);
var
    TempDS: TClientDataSet;
    nTotalProdutos, nTotalItens, nTotal123, nBaseImposto, nBaseIncluso, nBaseCalcICMSProd: Currency;
    nBaseCalcICMS, nValorICMS, nValorIsentas, nValorOutrasICMS, nTotalServicos: currency;
    nUso, nJurosDescSub, nJurosDescBase, nJurosDescBaseSubs, nBasePeNota, nValorIPI, nBaseSubst, nValorICMSSubst, nRetidoICMS: Currency;
    nIDItem: Integer;
    nVolumes, nPesoBruto, nPesoLiquido, nDescProporcional: double;

begin
    inherited;

    if bDisableItensAfterPost then
        exit;

    TempDS := TClientDataSet.Create(self);

    with TempDS do
        begin
            CloneCursor(C_Itens, true);

            nTotalItens := 0;
            nTotalProdutos := 0;
            nBaseImposto := 0;
            nBaseIncluso := 0;
            nTotal123 := 0;

            nJurosDescSub := 0;
            nJurosDescBase := 0; //Para computar os Juros e Descontos Percentuais;
            nJurosDescBaseSubs := 0;

            nBasePeNota := 0;
            nVolumes := 0;

            nBaseCalcICMS := 0;
            nValorICMS := 0;
            nValorIsentas := 0;
            nValorOutrasICMS := 0;
            nTotalServicos := 0;
            nValorIPI := 0;
            nBaseSubst := 0;
            nValorICMSSubst := 0;
            nPesoBruto := 0;
            nPesoLiquido := 0;
            nRetidoICMS := 0;
            First;
            while not EOF do
                begin
                    if not (FieldByName('I_TipoItem').asInteger in [7]) then
                        nTotalItens := nTotalItens + FieldByName('SubTotal').asCurrency;
                    //nTotalItens := nTotalItens + IIF(FieldByName('situacao').AsString = 'N', Truncar(FieldByName('SubTotal').asCurrency, 3), 0);

                    if FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
                        nTotal123 := nTotal123 + FieldByName('SubTotal').asCurrency
                    else if (FieldByName('I_TipoItem').asInteger = 6) and (FieldByName('I_Percentual').asFloat = 0) then
                        nBasePeNota := nBasePeNota + FieldByName('SubTotal').asCurrency;

                    {Volumes}
                    {Se a unidade é inteira considera a quantidade, caso contrario, considera-se como um volume.
                     Isto ocorre por exemplo, com queijo, carne, etc. onde a unidade é kilo, mas o volume é um só.}
                    if FieldByName('I_TipoItem').asInteger = 1 then
                        nVolumes := nVolumes + IIF(FieldByName('UnidadeInteira').AsString = 'S', FieldByName('Quantidade').asFloat, 1);

                    {Reduzindo Desconto Percentual ou Acrescentando Juros Percentual}
                    if FieldByName('UsoTipoItem').asString <> '' then
                        begin
                            nUso := StrToFloatDef(SeparaStrings(FieldByName('UsoTipoItem').asString, '=', 2), 0);
                            nJurosDescSub := FieldByName('SubTotal').asCurrency * (nUso / 100);
                            nJurosDescBase := FieldByName('BaseCalcICMSProd').asCurrency * (nUso / 100);
                            nJurosDescBaseSubs := FieldByName('BaseCalcSubstProd').asCurrency * (nUso / 100);
                        end;

                    if (FieldByName('I_TipoItem').asInteger in [1, 2]) then
                        nTotalProdutos := nTotalProdutos + FieldByName('SubTotal').asCurrency + nJurosDescSub;

                    // LegisFiscal
                    if (C_TabelaPossuiICMS.value = 'S') then
                        begin
                            nBaseCalcICMSProd := FieldByName('BaseCalcICMSProd').asCurrency + nJurosDescBase;
                            nBaseCalcICMS := nBaseCalcICMS + nBaseCalcICMSProd;
                            nBaseSubst := nBaseSubst + FieldByName('BaseCalcSubstProd').asCurrency + nJurosDescBaseSubs;
                            nValorICMSSubst := nValorICMSSubst + FieldByName('VALORICMSSUBSTPROD').AsCurrency;
                        end;

                    if (C_TabelaPOSSUIIPI.Value = 'S') then
                        nValorIPI := nValorIPI + FieldByName('ValorIPIProd').asCurrency;

                    if FieldByName('SituacaoECF').AsString = 'I' then
                        nValorIsentas := nValorIsentas + FieldByName('SubTotal').asCurrency
                    else if FieldByName('SituacaoECF').AsString = 'S' then
                        nTotalServicos := nTotalServicos + FieldByName('SubTotal').asCurrency
                    else
                        begin
                            if (C_TabelaPossuiICMS.value = 'S') then
                                begin
                                    nValorOutrasICMS := nValorOutrasICMS + (FieldByName('SubTotal').asCurrency - nBaseCalcICMSProd);
                                    nValorICMS := nValorICMS + (nBaseCalcICMSProd * FieldByName('AliqICMS').asCurrency) / 100;
                                end;
                        end;

                    if DMProjeto.Parametro('CalculaPesoAutomatico') = 'S' then
                        begin
                            nPesoBruto := nPesoBruto +
                                (((FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat) /
                                IIF(FieldByName('I_FatorUndVenda').Value > 0, FieldByName('I_FatorUndVenda').Value, 1)) *
                                FieldByName('I_PesoBruto').asFloat);

                            nPesoLiquido := nPesoLiquido +
                                (((FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat) /
                                IIF(FieldByName('I_FatorUndVenda').Value > 0, FieldByName('I_FatorUndVenda').Value, 1)) *
                                FieldByName('I_PesoLiquido').asFloat);
                        end;

                    Next;
                end;

        end;
    TempDS.Free;

    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    C_TabelaTotalItens.asCurrency := nTotalItens;
    C_TabelaTotalProdutos.asCurrency := nTotalProdutos;
    C_TabelaTotalItens123.asCurrency := nTotal123;
    C_TabelaDescontoItens.asCurrency := nBasePeNota;

    if volumeEdit > 0 then
        nVolumes := volumeEdit;

    C_TabelaVolumes.asFloat := nVolumes;

    // LegisFiscal
    if (C_TabelaPossuiICMS.value = 'S') then
        begin
            C_TabelaBaseCalcICMSItens.value := nBaseCalcICMS;
            C_TabelaValorICMSItens.value := nValorICMS;
            C_TabelaValorOutrasICMS.value := nValorOutrasICMS;
        end;

    C_TabelaValorIsentas.value := nValorIsentas;
    C_TabelaTotalServicos.value := nTotalServicos;

    C_TabelaValorIPIItens.value := nValorIPI;

    C_TabelaBaseCalcSubstItens.value := nBaseSubst;
    C_TabelaVALORICMSSUBST.Value := nValorICMSSubst;

    if DMProjeto.Parametro('CalculaPesoAutomatico') = 'S' then
        begin
            C_TabelaPesoBruto.value := nPesoBruto;
            C_TabelaPesoLiquido.value := nPesoLiquido;
        end;

    // Desconto Padrão do Cliente...
    if (DMProjeto.Parametro('DescontoAuto') = 'S') and (C_TabelaF_PERCDESCONTO.Value > 0) then
        C_TabelaDESCONTO.Value := nTotalItens * C_TabelaF_PERCDESCONTO.Value / 100;

    CalcReducoesPorDesconto;

    AtualizaTotalFinal(True); //Com IPI e Substituicao recalculados

    {Ajustando Itens de Desconto - para que não fiquem com valor acima do maxdesconto.  Isto acontece
    quando o ítem de desconto já foi digitado e o usuário altera o preço de um item participante deste
    item de desconto}
    if (C_ItensI_TIPOITEM.Value in [1, 2, 3]) and (C_ItensPrecoTabela.Value > 0) and
        (C_ItensUsoTipoItem.Value <> '') then
        begin
            {Verificando alterações no preço}
            if ABS(C_ItensPrecoTabela.Value - C_ItensPreco.Value) > 0.009 then
                begin
                    nIDItem := C_ItensIDItem.Value;
                    while (C_ItensI_TIPOITEM.Value <> 6) and not C_Itens.EOF do
                        C_Itens.Next;

                    if (C_ItensI_TIPOITEM.Value = 6) then
                        begin
                            C_Itens.Edit;
                            C_ItensPreco.Value := -C_ItensPreco.Value;
                            C_Itens.Post; //Não gera recursividade por causa do if TipoItem in 1,2,3, pois neste post será 6.
                        end;

                    C_Itens.Locate('IDITEM', nIDItem, []);

                end;
        end;
    C_Itens.EnableControls;
end;

procedure TDMSaidas.C_TabelaFRETEChange(Sender: TField);
begin
    inherited;
    AtualizaTotalFinal(false); //Sem sobrepor o IPI E Substituição calculados ou definidos pelo usuário.
end;

procedure TDMSaidas.AtualizaTotalFinal;
var
    nOldTotal: Currency;
begin
    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    nOldTotal := C_TabelaTotal.asCurrency;

    bFromTotalFinal := true;

    try
        if not bNotCalcImposto then
            CalcularImposto(bCalc_IPI_ICMSSUBST);

        {Outras despesas não incluem os juros cobrados pelo plano de pgto, este valor agora é o campo Juros}

        if (C_TabelaTipoPadrao.value = 1) and (C_TabelaSerieNota.value = 'ECF') and (DMProjeto.Parametro('FaturaServico') <> 'S') then
            C_TabelaTOTAL.asCurrency := C_TabelaTOTALPRODUTOS.asCurrency +
                C_TabelaDESCONTO.asCurrency + {O Desconto é negativo}
            C_TabelaOUTRASDESPESAS.asCurrency +
                C_TabelaJUROS.asCurrency
        else
            C_TabelaTOTAL.asCurrency := C_TabelaTOTALITENS.asCurrency +
                C_TabelaValorIPI.asCurrency +
                C_TabelaValorICMSSubst.asCurrency +
                C_TabelaDESCONTO.asCurrency + {O Desconto é negativo}
            C_TabelaFRETE.asCurrency +
                C_TabelaVALORSEGURO.asCurrency +
                C_TabelaOUTRASDESPESAS.asCurrency +
                C_TabelaJUROS.asCurrency;

        C_TabelaTOTAL.AsCurrency := Truncar(C_TabelaTOTAL.AsCurrency, 2);

        {Recalculo automatico das parcelas}
        if (nOldTotal <> C_TabelaTotal.asCurrency) and (State = dmsNormal) and not bFromTotal and not bCalculandoParcelas and
            (C_TabelaPlanoPagamento.Value > 0) and (C_Parcelas.RecordCount > 0) then
            begin
                bFromTotal := true;
                try
                    if (C_TabelaPagoInvoice.Value > 0) or ExistemParcelasRenegociadas then
                        JurosParcelas
                    else
                        GerarParcelamento;
                finally
                    bFromTotal := false;
                end;
            end;
    finally
        bFromTotalFinal := false;
    end;
end;

function TDMSaidas.LocalizarTabelaItem(nItem, nTabela: Integer; sUnid: string): Boolean;
var
    xPreco: Currency;
begin
    C_ProdutosPreco.Close;
    Q_ProdutosPreco.Params[0].asInteger := nItem;
    Q_ProdutosPreco.Params[1].asString := sUnid;
    C_ProdutosPreco.Open;

    C_ProdutosPreco.Tag := 0;

    // Gerando tabelas de preço para a Unidade (calculando os precos)
    if C_ProdutosPreco.RecordCount = 0 then
        with Q_SQLi do
            begin
                Close;
                SQL.Text := 'Select  	pp.ProdutoPreco, pp.ITEM, pp.TABELAPRECO, pp.PRECO, pp.PRECOMANUAL, ' +
                    '         tp.DESCRICAO, tp.Baseada, tp.Percentual, pp.PrecoPromocao ' +
                    'From ProdutosPreco pp ' +
                    '     INNER JOIN TabelasPreco tp ON pp.TabelaPreco = tp.TabelaPreco ' +
                    'Where pp.ITEM  = :ITEM and pp.Unidade = :Unidade and tp.Desativado = ''N'' ' +
                    'Order by tp.Percentual, tp.TabelaPreco ';
                Params[0].asInteger := nItem;
                Params[1].asString := C_ItensI_Unidade.Value;
                Open;

                nSeqPP := 0;

                while not EOF do
                    begin
                        if FieldByName('PrecoPromocao').AsCurrency > 0 then
                            xPreco := FieldByName('PrecoPromocao').AsCurrency
                        else
                            xPreco := FieldByName('Preco').asCurrency;

                        xPreco := (xPreco / C_ItensI_FatorUndVenda.Value) * IIF(C_ItensFator.Value > 0, C_ItensFator.Value, 1);

                        dec(nSeqPP);
                        C_ProdutosPreco.Append;
                        C_ProdutosPrecoProdutoPreco.Value := nSeqPP;
                        C_ProdutosPrecoDescricao.Value := FieldByName('Descricao').asString;
                        C_ProdutosPrecoTabelaPreco.Value := FieldByName('TabelaPreco').asInteger;
                        C_ProdutosPrecoPercentual.Value := FieldByName('Percentual').asFloat;
                        C_ProdutosPrecoBaseada.Value := FieldByName('Baseada').asString;
                        C_ProdutosPrecoPrecoManual.Value := 'N';
                        C_ProdutosPrecoPreco_Normal.Value := xPreco; //O preço será proporcional ao da tabela zero, apenas convertendo o fator.

                        // C_ProdutosPrecoPreco.Value := xPreco;

                        Next;
                    end;

                C_ProdutosPreco.Tag := 1;

            end;

    C_ProdutosPreco.Filtered := true; {Para ativar bloqueio de tabelas de Preço conforme perfil}

    result := C_ProdutosPreco.Locate('TABELAPRECO', nTabela, []);

    if not Result then
        begin //Localizando a primeira tabela de preço que o usuário pode utilizar
            C_ProdutosPreco.First;
            while not C_ProdutosPreco.EOF do
                begin
                    if DMProjeto.PermissoesTabelasPreco(C_ProdutosPrecoTabelaPreco.asInteger, 'U') then
                        result := true;
                    C_ProdutosPreco.Next;
                end;
        end;

end;

procedure TDMSaidas.AlterarTabelaPadrao;
var
    sTab: string;
begin
    {Atualizando todos os itens informados}
    {A TabelaPadrão da Venda pode ser modificada em dois locais:
          - Pelo Cliente (tabela de preço específica);
          - O próprio usuário ao alterar no Grid de Itens;
    }
    if not C_Itens.IsEmpty then
        begin
            C_Itens.First;

            sTab := NomeTabelaPreco(C_TabelaTabelaPadrao.Value);

            if (C_Itens.RecordCount > 0) and (DlgMsg.ShowMsg(2318, [sTab]) = 100) then
                begin
                    while not C_Itens.EOF do
                        begin
                            if (C_ItensI_TIPOITEM.Value in [1, 2, 3]) then
                                AlterarTabelaItem(C_ItensIDITEM.Value, C_TabelaTabelaPadrao.asInteger, C_ItensUnidade.Value);
                            C_Itens.Next;
                        end;

                    if sTab <> '' then
                        DlgMsg.ShowMsg(2135, [sTab]); //aviso de alteração nos precos dos itens

                end;
        end;
end;

procedure TDMSaidas.AlterarTabelaItem(nIDItem, nTabela: Integer; sUnidade: string);
var Minimo, PrecoCusto: currency;
begin
    C_Itens.Locate('IDITEM', nIDItem, []);
    C_Itens.Edit;
    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
        begin
            C_ItensPreco.Value := DMProjeto.PrecoMultiUnidade(C_ItensITEM.Value {nIDItem}, nTabela, sUnidade, Minimo, PrecoCusto);
            C_ItensPrecoTabela.Value := C_ItensPreco.Value;
            C_ItensPromocao.Value := 'N';
            C_ItensPrecoSemPromocao.Value := C_ItensPreco.Value;
            if C_ItensPReco.Value > 0 then
                C_ItensMaxDesconto.Value := 1 - (Minimo / C_ItensPReco.Value)
            else
                C_ItensMaxDesconto.Value := 0;
        end
    else
        begin

            if LocalizarTabelaItem(C_ItensITEM.Value, nTabela, sUnidade) then
                begin
                    // Para forçar o CalcFields
                    C_ProdutosPreco.Edit;
                    C_ProdutosPreco.Post;
                    //
                    if C_ProdutosPrecoPrecoPromocao.Value > 0 then
                        begin
                            C_ItensPrecoTabela.Value := C_ProdutosPrecoPrecoPromocao.asCurrency;
                            C_ItensPromocao.Value := 'S';
                            C_ItensPrecoSemPromocao.Value := C_ProdutosPrecoPreco.asCurrency;
                        end
                    else
                        begin
                            C_ItensPrecoTabela.Value := C_ProdutosPrecoPreco.asCurrency;
                            C_ItensPromocao.Value := 'N';
                            C_ItensPrecoSemPromocao.Value := 0;
                        end;
                    C_ItensTabelaPreco.Value := C_ProdutosPrecoTabelaPreco.Value;
                    C_ItensPreco.Value := C_ItensPrecoTabela.Value;
                end
            else
                begin
                    C_ItensPrecoTabela.Value := 0;
                    C_ItensTabelaPreco.Value := 0;
                    C_ItensPreco.Value := 0;
                end;
        end;
    C_Itens.Post;
end;

function TDMSaidas.SomaParcelas;
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

function TDMSaidas.EstoqueItem(IDItem: Integer): string;
begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'Select Estoque, FATORUNDVENDA from Itens where ITEM = :IT ';
    Q_SQL.Params[0].asinteger := IDItem;
    Q_SQL.Open;

    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
        begin
            if Q_SQL.FieldByName('FATORUNDVENDA').asFloat > C_ItensFator.Value then
                Result := FormatCurr('#,##0.0##', (Q_SQL.FieldByName('Estoque').asFloat * Q_SQL.FieldByName('FATORUNDVENDA').asFloat))
            else
                Result := FormatCurr('#,##0.0##', (Q_SQL.FieldByName('Estoque').asFloat));
        end
    else
        Result := FormatCurr('#,##0.0##', (Q_SQL.FieldByName('Estoque').asFloat / C_ItensFator.Value));

    Q_SQL.Close;

end;

procedure TDMSaidas.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);

    function OldQuantidade(SaidaItem: Integer): double;
    begin
        if SaidaItem > 0 then
            begin
                Q_SQL.Close;
                Q_SQL.SQL.Text := 'Select Quantidade from SaidasItens where SaidaITEM = :IT ';
                Q_SQL.Params[0].asinteger := SAIDAITEM;
                Q_SQL.Open;

                Result := Q_SQL.FieldByName('Quantidade').asFloat;

                Q_SQL.Close;
            end
        else
            result := 0;
    end;

var
    i, nDow: Integer;
    s: string;
    bAlertar, bBaixoEstoque, bQtdZerada, bValido, bGrupoComissao: boolean;
    nEstoque: Double;
    nBalance, nFator, nDescItem,
        nRateio, nPerDesc, nPComissao, nValorComissao: Currency;
    aEstoque: TStringList;
    TmpDS: TClientDataSet;
begin
    if not ConsultaStatusSaida(C_TabelaIDMESTRE.AsInteger, C_TabelaEMPRESA.AsInteger, C_TabelaPDV.AsInteger) then
        begin
            DlgMsg.ShowMsg(50, ['A operação possui status que não permite salvar e/ou alterar. Favor reabrir novamente a operação.']);
            bSkip := true;
            Exit;
        end;

    bQtdZerada := False;
    inherited;
    if not (C_Tabela.State in [DsEdit, dsInsert]) then
        C_Tabela.Edit;
    C_TabelaLOCALENTREGA.Value := C_LocaisEntregaEntrega.Value;

    bAlertar := DMProjeto.Parametro('AlertasVenda') = 'S';
    try
        if C_Itens.Active and (C_Itens.State <> dsBrowse) then
            C_Itens.Post;
    except
        on e: exception do
            begin
                {Registrando Auditoria}
                DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                    + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                    C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                    C_TabelaIDMestre.Value, 34, 0);
            end;
    end;

    {Felipe - Bloqueio ao salvar operação sem Status informado}
    if ((C_TabelaSTATUS.Value = null) or (C_TabelaSTATUS.Value = '')) and (C_TiposMovimentoCB_STATUS.Value = 'S') then
        begin
            DlgMsg.ShowMsg(50, ['A operação não possui status informado. Preencher a informação para dar continuidade.']);
            bSkip := True;
            Exit;
        end;

    if (TipoMovimento('CB_VENDEDOR') = 'S') and (DMProjeto.Parametro('ObrigarVendedor') = 'S') and
        (C_TabelaVendedor.AsInteger <= 0) then
        begin
            DlgMsg.ShowMsg(929, ['o vendedor']);
            bSkip := True;
            Exit;
        end;

    if C_TabelaSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(2119);
            bSkip := true;
            exit;
        end;

    if (C_TabelaImpresso.value = 'S') and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ALTNOTAIMP', '', False, 'Nota:' + C_TabelaNumero.asString) then
        exit;

    if (C_TabelaTipoMovimento.Value = 0) or (C_TabelaTipoPadrao.Value = 0) then
        begin
            DlgMsg.ShowMsg(2159);
            bSkip := true;
            exit;
        end;

    if (C_Itens.RecordCount = 0) then
        begin
            DlgMsg.ShowMsg(2291);
            bSkip := true;
            exit;
        end;

    bGrupoComissao := DMProjeto.Parametro('GrupoComissao') = 'S';
    nValorComissao := 0;
    {Verificando se existem itens válidos => subtotal > 0}
    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Itens, true);
            First;
            while not EOF do
                begin
                    if (bGrupoComissao) and (C_TabelaCALCCOMISSAO.AsString = 'S') then
                        begin
                            if (TipoMovimento('CB_COMISSAO') = 'S') and (C_TabelaPCOMISSAO.Value > 0) then
                                nPComissao := C_TabelaPCOMISSAO.Value
                            else
                                begin
                                    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);
                                    // Cálculo do Rateio de Desconto por Item
                                    //nRateio := (C_TabelaDESCONTO.AsCurrency / C_TabelaTOTALITENS123.AsCurrency) * FieldByName('SUBTOTALITEM').AsCurrency;
                                    //nRateio := - Abs(nRateio);
                                    // Para os grupos de comissão, o rateio do desconto de pé de nota
                                    // não é considerado.
                                    nRateio := 0;
                                    // Somando o valor do desconto dado ao item com o rateio
                                    nDescItem := FieldByName('DESCONTO').ASCurrency + nRateio;
                                    // Calculando o percentual de desconto proporcional dado ao item
                                    nPerDesc := Abs((nDescItem * 100) / FieldByName('PRECOTABELA').AsCurrency);
                                    Q_SQL.Close;
                                    Q_SQL.SQL.Text := 'select comissao from gruposcomissoesdet ' +
                                        'where grupocomissao = :gc and :vlr between valorini and valorfim ';
                                    Q_SQL.ParamByName('gc').AsInteger := FieldByName('i_grupocomissao').AsInteger;
                                    Q_SQL.ParamByName('vlr').AsCurrency := nPerDesc;
                                    Q_SQL.Open;
                                    if Q_SQL.RecordCount > 0 then
                                        begin
                                            nPComissao := Q_SQL.FieldByName('comissao').AsCurrency;
                                        end
                                    else
                                        begin
                                            Q_SQL.Close;
                                            Q_SQL.SQL.Text := 'Select i.Comissao, i.TipoItem, g.Comissao as ComissGrupo, ' +
                                                'fu.Comissao as ComissVend, tp.Add_Comissao ' +
                                                'from Itens i ' +
                                                'LEFT JOIN Grupos g ON i.Grupo = g.Grupo ' +
                                                'LEFT JOIN Favorecidos fu ON fu.Favorecido = :v ' +
                                                'LEFT JOIN TabelasPreco tp ON tp.TabelaPreco = :tp ' +
                                                'Where i.item = :i ';
                                            Q_SQL.ParamByName('i').AsInteger := FieldByName('item').AsInteger;
                                            Q_SQL.ParamByName('tp').AsInteger := FieldByName('tabelapreco').AsInteger;
                                            Q_SQL.ParamByName('v').AsInteger := C_TabelaVENDEDOR.AsInteger;
                                            Q_SQL.Open;
                                            if C_PlanosPagamentoCOMISSAO.AsCurrency > 0 then
                                                nPComissao := C_PlanosPagamentoCOMISSAO.AsCurrency {Comissão do Plano de Pagamento }
                                            else if Q_SQL.FieldByName('Comissao').asCurrency >= 0 then
                                                nPComissao := Q_SQL.FieldByName('Comissao').asCurrency {Comissão no Produto}
                                            else if (Q_SQL.FieldByName('ComissGrupo').asCurrency >= 0) then
                                                nPComissao := Q_SQL.FieldByName('ComissGrupo').asCurrency {Comissão definida no Grupo}
                                            else if (Q_SQL.FieldByName('ComissVend').asCurrency > 0) then
                                                nPComissao := Q_SQL.FieldByName('ComissVend').asCurrency;
                                            {Adicionando a comissão da tabela de Precos}
                                            nPComissao := nPComissao + Q_SQL.FieldByName('Add_Comissao').asCurrency;
                                            // Dia da Semana
                                            nDOW := IIF(DMProjeto.IsFeriado(C_Tabela.FieldByName('Data').asDateTime), 8, DayOfWeek(C_Tabela.FieldByName('Data').asDateTime));
                                            nPComissao := nPComissao + DMProjeto.Comissao_Dia(C_Tabela.FieldByName('Vendedor').asInteger, nDoW);
                                        end;
                                    Q_SQL.Close;
                                end;
                            //
                            nValorComissao := nValorComissao + ((FieldByName('SubTotalItem').asCurrency + nRateio) * (nPComissao / 100));

                        end;

                    if FieldByName('Unidade').AsString = '' then
                        begin
                            DlgMsg.ShowMsg(929, ['a Unidade do Item "' + FieldByName('Descricao').AsString + '"']);
                            EnableControls;
                            bSkip := true;
                            Exit;
                        end
                    else if FieldByName('Fator').AsCurrency = 0 then
                        begin
                            nFator := DMProjeto.SetFator(FieldByName('Item').asInteger, FieldByName('Descricao').AsString, FieldByName('Unidade').AsString);
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
                    if (FieldByName('Quantidade').AsCurrency <= 0.00) or (FieldByName('Preco').AsCurrency <= 0.00) then
                        begin
                            bQtdZerada := True;
                        end;
                    Next;
                end;
        end;
    TmpDS.Free;

    if (bQtdZerada) then
        begin
            Application.MessageBox(pChar('Existem Itens Com a Quantidade ou Preço Zerado!' + #13 + #13 + 'SAÍDA NÃO SERÁ SALVA!'), 'Erro!', mb_ok);
            bSkip := true;
            Exit;
        end;

    if (bGrupoComissao) and (C_TabelaCALCCOMISSAO.AsString = 'S') and (nValorComissao < 0) then
        begin
            if (DMProjeto.Parametro('ComissaoNegativa') = 'S') then
                begin
                    if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ComissNega', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Valor:' + C_TabelaTOTAL.AsString + #13#10 + 'Vendedor:' + C_TabelalkVendedor.AsString +
                        #13#10 + 'Comissão:' + CurrToStr(nValorComissao), C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            bSkip := True;
                            Exit;
                        end;
                end
            else
                begin
                    DlgMsg.ShowMsg(8044);
                    bSkip := True;
                    Exit;
                end;
        end;

    if (bGrupoComissao) and (C_TabelaCALCCOMISSAO.AsString = 'S')
        and ((nValorComissao * 100) / C_TabelaTOTALITENS.AsCurrency <= 0) and
        not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ComissMini', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
        'Valor:' + C_TabelaTOTAL.AsString + #13#10 + 'Vendedor:' + C_TabelalkVendedor.AsString +
        #13#10 + 'Comissão:' + CurrToStr(nValorComissao), C_TabelaFAVORECIDO.AsInteger,
        'DlgSitCliente') then
        begin
            bSkip := True;
            Exit;
        end;

    {Bloquear envio para o caixa de movimentos que não baixam estoque
    quando a composição estiver habilitada (por causa das ordens de producao); }
    if (C_TabelaStatus.Value = 'X') and (C_TabelaBaixaEstoque.Value = 'N') and
        (DMProjeto.Parametro('Composicao') = 'S') and DMProjeto.bOrdemProducao then
        begin
            DlgMsg.ShowMsg(2749);
            bSkip := true;
            exit;
        end;

    {Existência de Parcelas}

  {  if (C_TabelaTipoPadrao.Value = 1) and (C_Parcelas.RecordCount = 0) then begin}
    if (C_TabelaTM_GERAFINANCEIRO.Value = 'S') and (C_Parcelas.RecordCount = 0) then
        begin
            C_Parcelas.Append;
            C_ParcelasValor.asCurrency := C_TabelaTotal.asCurrency;
            C_ParcelasVencimento.Value := C_TabelaData.Value;
            C_ParcelasParcela.Value := 1;
            C_Parcelas.Post;
        end;

    {Inexistência do Favorecido}
    if C_TabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543); //Faltou escolher o Cliente!
            bSkip := true;
            exit;
        end;

    sPerformance := Format(SInicioGravacao, [DateTimeToStr(Now), C_TabelalkTipoMovimento.asString]) + #13;

    {Bloquear se Atrasado}
    if (GetAtrasados > 0) and (TipoMovimento('BloquearSeAtrasado') = 'S')
        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'LIBSEATRAS', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
        'Valor:' + C_TabelaTOTAL.AsString, C_TabelaFAVORECIDO.AsInteger,
        'DlgSitCliente') then
        begin
            bSkip := true;
            exit;
        end;

    {Bloquear por Situação}
    if (C_TabelaF_SITUACAO.Value = 'B') and (TipoMovimento('BloquearPorSituacao') = 'S')
        and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'LIBSEBLOQ', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
        'Valor:' + C_TabelaTOTAL.AsString, C_TabelaFAVORECIDO.AsInteger,
        'DlgSitCliente') then
        begin
            bSkip := true;
            exit;
        end;

    {Bloquear se Atrasado}
    if (C_TabelaF_LIMITECREDITO.AsCurrency > 0) and (TipoMovimento('LimiteFavorecido') = 'S') then
        begin
            try
                if C_Itens.State <> dsBrowse then
                    C_Itens.Post;
            except
                on e: exception do
                    begin
                        {Registrando Auditoria}
                        DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                            + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                            C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                            C_TabelaIDMestre.Value, 34, 0);
                    end;
            end;

            {Capturando o Saldo}
           // with Q_SQL do
    //        begin
    //            Close;
    //            SQL.Text := 'Select (Select Sum(FaltaReceber) ' +
    //                '        From TitulosAReceber t where t.Cliente = f.Favorecido ' +
    //                '        and  t.Status > 0 and t.Status < 50) as PAReceber, ' +
    //                '       (Select Sum(Valor) from DepositosDoc dd, Depositos d, FormasPagamento Fp ' +
    //                '        Where dd.Deposito = d.Deposito and dd.FormaPagamento = Fp.FormaPagamento ' +
    //                '        and   d.Favorecido = f.Favorecido and dd.Status < 50 and Fp.Especie = 1 ' +
    //                '        and   dd.Vencimento > ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)) + ') ' +
    //                '        as ChqPre ' +
    //                'From Favorecidos f Where Favorecido = ' + C_TabelaFavorecido.asString;
    //            Open;
    //            nBalance := FieldByNAme('PAReceber').asCurrency +
    //                FieldByName('ChqPre').asCurrency;
    //            Close;
    //
    //        end;
            {Felipe - Correcao para consultar cheques pendentes}
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'Select (Select Sum(FaltaReceber) ' +
                        '        From TitulosAReceber t where t.Cliente = f.Favorecido ' +
                        '        and  t.Status > 0 and t.Status < 50) as PAReceber, ' +
                        '       (select sum(dd.valor) ' +
                        '       from formaspagamento fp inner join depositosdoc dd on fp.formapagamento = dd.formapagamento ' +
                        '       inner join depositos d on dd.deposito = d.deposito ' +
                        '       where d.favorecido = ' + C_TabelaFAVORECIDO.AsString + ' and dd.vencimento < ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)) + '' +
                        '       and dd.status < 50 and fp.especie = 1) as ChqPre ' +
                        '       From Favorecidos f Where Favorecido = ' + C_TabelaFAVORECIDO.AsString + '';
                    Open;
                    nBalance := FieldByNAme('PAReceber').asCurrency +
                        FieldByName('ChqPre').asCurrency;
                    Close;

                end;

            if (C_TabelaF_LIMITECREDITO.AsCurrency > 0) and
                (nBalance + (C_TabelaTotal.AsCurrency - C_TabelaTotalOld.asCurrency) > C_TabelaF_LIMITECREDITO.AsCurrency) then
                begin
                    if bAlertar and DMProjeto.LerPermissao(sForm, 'LIBSELIMIT') then
                        DlgMsg.ShowMsg(2755, [C_TabelaF_LIMITECREDITO.DisplayText,
                            FormatCurr('##,##0.00', C_TabelaF_LIMITECREDITO.AsCurrency - nBalance)])
                    else if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'LIBSELIMIT', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Valor:' + C_TabelaTOTAL.AsString, C_TabelaFAVORECIDO.AsInteger, 'DlgSitCliente') then
                        begin
                            bSkip := true;
                            exit;
                        end;
                end;

        end;

    sPerformance := sPerformance + Format(SLimiteCliente, [DateTimeToStr(Now)]) + #13;

    {Verificando Estoque e BloquearPorEstoque}
    sItensSemEstoque := '';
    if TipoMovimento('BloquearPorEstoque') = 'S' then
        begin
            aEstoque := TStringList.Create;
            try
                if C_Itens.State <> dsBrowse then
                    C_Itens.Post;
            except
                on e: exception do
                    begin
                        {Registrando Auditoria}
                        DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                            + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                            C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                            C_TabelaIDMestre.Value, 34, 0);
                    end;
            end;

            {Capturando Estoque Total para os Itens de Inventário}
            TmpDS := TClientDataSet.Create(self);
            with TmpDS do
                begin
                    CloneCursor(C_Itens, True);
                    First;
                    while not EOF do
                        begin
                            if FieldByName('I_TipoItem').asInteger = 1 then
                                begin
                                    nEstoque := FieldByName('Quantidade').asFloat - OldQuantidade(FieldByName('IDITEM').asInteger);

                                    if aEstoque.Values[FieldByName('ITEM').AsString] = '' then
                                        aEstoque.Add(FieldByName('ITEM').AsString + '=' + FloatToStr(nEstoque) + '*' +
                                            EstoqueItem(FieldByName('ITEM').asInteger))
                                    else
                                        begin
                                            nBalance := StrToFloatDef(SeparaStrings(aEstoque.Values[FieldByName('ITEM').AsString], '*', 1));
                                            nBalance := nBalance + nEstoque;

                                            aEstoque.Values[FieldByName('ITEM').AsString] := FloatToStr(nBalance) + '*' +
                                                SeparaStrings(aEstoque.Values[FieldByName('ITEM').AsString], '*', 2);
                                        end;
                                end;

                            Next;
                        end;

                    {Verificando OverFlow}
                    for i := 0 to aEstoque.Count - 1 do
                        begin
                            s := SeparaStrings(aEstoque[i], '=', 2);
                            nBalance := StrToFloatDef(SeparaStrings(s, '*', 1));
                            nEstoque := StrToFloatDef(SeparaStrings(s, '*', 2));
                            if nBalance > nEstoque then
                                begin
                                    s := SeparaStrings(aEstoque[i], '=', 1);

                                    sItensSemEstoque := CExp(sItensSemEstoque, ',') + s; {Item}
                                    bBaixoEstoque := true;

                                end;
                        end;
                end;
            TmpDS.Free;

            // Excluir para Venda Rapida, pois o controle vai ser no proprio form,
            // Para isso foi acrescentado o If (sForm <> 'FrmVendaRapida') Then Begin
            if (sForm <> 'FrmVendaRapida') and (C_ItensI_TipoItem.Value <> 3) then
                begin
                    if bBaixoEstoque and bAlertar and DMProjeto.LerPermissao(sForm, 'LIBSEMESTQ') and
                        (DlgMsg.ShowMsg(2106) = 200) then
                        begin
                            bSkip := true;
                            exit;
                        end
                    else if bBaixoEstoque and not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'LIBSEMESTQ', '', False, 'Cliente:' + C_TabelaF_NOME.AsString + #13#10 +
                        'Item:' + C_ItensDESCRICAO.AsString + #13#10 +
                        'Valor:' + C_ItensPreco.AsString, C_TabelaFAVORECIDO.AsInteger,
                        'DlgSitCliente') then
                        begin
                            bSkip := true;
                            exit;
                        end;
                end;
        end;

    sPerformance := sPerformance + Format(SEstoqueOk, [DateTimeToStr(Now)]) + #13;

    {Verificando Balance das Parcelas x Total Final}
    if C_Parcelas.RecordCount > 0 then
        begin

            //{Verificar se Parcelas tem Imposto Fonte.}
            if DMProjeto.Parametro('ParcelasSemImpostoFonte') = 'S' then
                nBalance := SomaParcelas + C_TabelaValorICMSSubst.value
            else
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

    if (TipoMovimento('CB_GERARNUM') <> 'S') and (C_TabelaNumero.Value = '') then
        begin
            DlgMsg.ShowMsg(2333);
            bSkip := true;
            exit;
        end;

    {Verificando Duplicidade}
    {Não permitindo número Duplicado}
    if ((TipoMovimento('CB_GERARNUM') <> 'S') or (bAlteracao)) and (TipoMovimento('SERIE') <> 'ECF') then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Count(saida) as Existentes from Saidas ' +
                    'where TipoMovimento = :TM and Numero = :N and Saida <> :S ';
                ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
                ParamByName('N').asString := C_TabelaNumero.Value;
                ParamByName('S').asInteger := C_TabelaIDMestre.asInteger;
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
    //(s.basecalcicms - s.totalitens) < .03 and (s.basecalcicms - s.totalitens) > .001)

    if (C_TabelaBaseCalcICMS.AsCurrency - C_Tabelatotalitens.AsCurrency < 0.04) and
        (C_TabelaBaseCalcICMS.AsCurrency - C_Tabelatotalitens.AsCurrency > 0.00) then
        begin
            if not (C_Tabela.State in [dsEdit]) then
                C_Tabela.edit;
            if (C_TabelaPossuiICMS.value = 'S') then
                C_TabelaBaseCalcICMS.AsCurrency := C_Tabelatotalitens.AsCurrency;
            C_Tabela.Post;
        end;

    sPerformance := sPerformance + Format(SValidaGravacao, [DateTimeToStr(Now)]) + #13;

    if (C_TabelaCARTEIRA.Value > 0) and (C_TabelaCOBRANCA.Value = 3) then
        bGeraBoleto := True
    else
        bGeraBoleto := False;

end;

procedure TDMSaidas.DMComponentGravar3_AposApply(Sender: TObject);
var
    nEstoque: double;
    xsaida, nCobranca: integer;
begin
    inherited;
    sPerformance := sPerformance + Format(SGravandoTabela, [DateTimeToStr(Now)]) + #13;
    if not (C_Tabela.State in [DsEdit, dsInsert]) then
        C_Tabela.Edit;
    C_TabelaMENSAGEMITEM.Value := MensagemItens(C_TabelaIDMESTRE.Value);

    {Atualizando o Endereço do Cliente}
    if C_TabelaFavorecido.Value > 1 then
        DMProjeto.AtualizarClienteVenda(C_TabelaFavorecido.Value,
            C_TabelaData.Value,
            C_TabelaTotal.Value,
            C_TabelaF_ENDERECO.Value,
            C_TabelaF_CIDADE.VAlue,
            C_TabelaF_UF.Value,
            C_TabelaF_CEP.Value,
            C_TabelaF_Fone1.Value,
            C_TabelaF_EMAIL.Value);

    sPerformance := sPerformance + Format(SGravandoCliente, [DateTimeToStr(Now)]) + #13;

    {Calculando a Comissão da Venda}
    if C_TabelaCalcComissao.Value = 'S' then
        begin

            DMProjeto.CalcularComissao(C_TabelaIDMestre.asString);
            sPerformance := sPerformance + Format(SCalculouComiss, [DateTimeToStr(Now)]) + #13;

        end;

    // Sera feito na hora da geracao do arquivo
    //  if (C_TabelaPossuiICMS.value = 'S') and (TipoMovimento('CB_CFOP') = 'S') then
    //  if (C_TabelaPossuiICMS.value = 'S') Then Begin
    //    with DMProjeto.StoreProcedure do begin
    //     StoredProcName := 'PP_SAIDASCFOP';
    //     ParamByName('nSaida').AsInteger := C_TabelaIDMestre.value;
    //     ExecProc;
    //    end;
    //  End; {if (C_TabelaPossuiICMS.value = 'S') Then Begin}

    C_Itens.First;
    C_Itens.DisableControls;
    while not C_Itens.eof do
        begin
            {Associando o Item com a Produção}
            if C_ItensProducao.Value <> 0 then
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'Update ProducoesFunc set SAIDAITEM = :SI where Producao = :PROD ';
                        Params[0].asInteger := C_ItensIDITEM.Value;
                        Params[1].asInteger := C_ItensProducao.Value;
                        ExecSQL;
                    end;
            {Associando o Item com a Despesa}
            if C_ItensDespesa.Value <> 0 then
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'Update ContasOperacao set SAIDAITEM = :SI where ContaOperacao = :C ';
                        Params[0].asInteger := C_ItensIDITEM.Value;
                        Params[1].asInteger := C_ItensDespesa.Value;
                        ExecSQL;
                    end;
            {Associando o Item com a EntradaItem}
            if C_ItensEntradaItem.Value <> 0 then
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'Update EntradasItens set SAIDAITEM = :SI where EntradaItem = :EI ';
                        Params[0].asInteger := C_ItensIDITEM.Value;
                        Params[1].asInteger := C_ItensEntradaItem.Value;
                        ExecSQL;
                    end;

            {Criação das Ordens de Produção}
            if DMProjeto.bOrdemProducao then
                begin
                    if (C_ItensBaixaEstoque.value = 'S') and (C_ItensHasChildren.value = 'S') and (C_ItensI_TipoItem.value = 1) then
                        begin
                            if (C_ItensOrdemMontagem.value = 'S') then
                                CriarOrdemProducao(C_ItensItem.value, C_ItensIDItem.value, C_ItensQuantidade.value * C_ItensFator.value)
                            else if (C_ItensOrdemMontagem.value = 'X') then
                                begin
                                    nEstoque := C_ItensI_Estoque.value / C_ItensFator.value;
                                    if nEstoque < 0 then
                                        nEstoque := 0;
                                    CriarOrdemProducao(C_ItensItem.value, C_ItensIDItem.value, (C_ItensQuantidade.value * C_ItensFator.value) - nEstoque);
                                end;
                        end;
                end;

            C_Itens.Next;
        end;
    C_Itens.EnableControls;

    sPerformance := sPerformance + Format(SUpdateAssociacoes, [DateTimeToStr(Now)]) + #13;

    {Atualizando Status das Mesclagens}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Execute procedure PP_StatusSaida :S , :E, :P ';
            params[0].asInteger := C_TabelaIDMestre.Value;
            params[1].asInteger := C_TabelaEMPRESA.Value;
            params[2].asInteger := C_TabelaPDV.Value;
            ExecSQL;
        end;

    sPerformance := sPerformance + Format(SAtualizaStatusMescla, [DateTimeToStr(Now)]) + #13;

    {Atualizando TransaçõesEstoque: Cliente, Data}
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Update TransacoesEstoque set Favorecido = :F, Data = :D ' +
                'where IDGerador = :SAIDA ';
            ParamByName('F').asInteger := C_TabelaFavorecido.Value;
            ParamByName('D').asDateTime := C_TabelaData.Value;
            ParamByName('SAIDA').asInteger := C_TabelaIDMestre.Value;
            ExecSQL;
        end;

    sPerformance := sPerformance + Format(STransacoesEstoque, [DateTimeToStr(Now)]) + #13;

    // Contabilizando
    if C_TabelaTipoPadrao.value in [1, 5, 6] then
        begin
            Contabiliza;

            if not DMContabil.Salvar(C_TabelaIDMestre.value) then
                raise Exception.Create(DMProjeto.GetMsg(3117));

            sPerformance := sPerformance + Format(SContabilidade, [DateTimeToStr(Now)]) + #13;

        end;
    ///////////////////////////

    {Atualizando Status das Mesclagens}
    if C_TabelaTipoPadrao.value = 8 then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'select saida_original from saidasitensmescla where saidaitem = :saidaitem';
                params[0].asInteger := C_ItensIDItem.value;
                open;
                if fieldbyname('saida_original').asinteger > 0 then
                    begin
                        xSaida := fieldbyname('saida_original').asinteger;
                        Close;
                        SQL.Text := 'select cobranca from saidas where saida = :saida';
                        params[0].asInteger := xSaida;
                        open;
                        nCobranca := fieldbyname('cobranca').asinteger;

                        Close;
                        SQL.Text := 'update saidas set nf_cupom = :numero where saida = :saida';
                        params[0].asstring := C_TabelaNumero.value;
                        params[1].asInteger := xSaida;
                        execsql;
                    end;

                if (nCobranca > 1) then
                    DMProjeto.ImprimirDocumentosSaida(xSaida, C_TabelaEMPRESA.Value, C_TabelaPDV.Value);
                //DMProjeto.ImprimirDocumentosSaida(xSaida);
            end;

end;

procedure TDMSaidas.C_TabelaPLANOPAGAMENTOChange(Sender: TField);

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

procedure TDMSaidas.C_TabelaPJUROSChange(Sender: TField);
begin
    inherited;
    if bFromPlanoPg then
        GerarParcelamento
    else
        JurosParcelas;
end;

procedure TDMSaidas.GerarParcelamento;

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

    nCentavos := 0;

    if C_TabelaPlanoPagamento.asVariant = null then
        begin
            LimparParcelas;
            C_Tabela.Edit;
            C_TabelaJuros.asCurrency := 0;

            exit;

        end;

    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    {Parametros do Parcelamento}
  //{aki diminuir Imposto Fonte das Parcelas.}
    if DMProjeto.Parametro('ParcelasSemImpostoFonte') = 'S' then
        nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency - C_TabelaValorICMSSubst.value
    else
        nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;

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

                if not bManterParcelas then
                    begin
                        C_ParcelasCompetencia.Value := C_TabelaData.Value;

                        C_ParcelasJurosPlano.asCurrency := 0;

                        C_ParcelasOrigem_AReceber.Value := StrToIntDef(TipoMovimento('TipoOrigem'), 0);
                    end;

                nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;
                try
                    C_ParcelasEMPRESA.Value := DMProjeto.nEmpresaLogada;
                    if not bManterParcelas then
                        C_Parcelas.Post
                    else
                        C_Parcelas.Next;
                except
                    on e: Exception do
                        MessageDlg(pChar(e.message), mtWarning, [mbOK], 0);
                end
            end;

        if sParcelas <> '' then
            begin
                slParcelas := TStringList.Create;
                slParcelas.SetText(PChar(sParcelas));
                nCentavos := 0.01 * (slParcelas.Count - 1);
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

                        if not bManterParcelas then
                            begin
                                C_ParcelasCompetencia.Value := C_TabelaData.Value;

                                C_ParcelasJurosPlano.asString := SeparaStrings(str, ';', 4);

                                if C_PlanosPagamentoPDesconto.Value > 0 then
                                    begin
                                        C_ParcelasVALORDESCANTECIPADO.asString := SeparaStrings(str, ';', 5);
                                        C_ParcelasDATAANTECIPACAO.asString := SeparaStrings(str, ';', 6);
                                    end;

                                C_ParcelasOrigem_AReceber.Value := StrToIntDef(TipoMovimento('TipoOrigem'), 0);
                            end;

                        nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;
                        C_ParcelasEMPRESA.Value := DMProjeto.nEmpresaLogada;
                        try
                            if not bManterParcelas then
                                C_Parcelas.Post
                            else
                                C_Parcelas.Next;
                        except
                            on e: Exception do
                                MessageDlg(pChar(e.message), mtWarning, [mbOK], 0);
                        end

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

procedure TDMSaidas.JurosParcelas;
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

{Aqui devem ser colocados todos os campos numéricos para que fique com
 valor diferente de null}

procedure TDMSaidas.C_ParcelasNewRecord(DataSet: TDataSet);
var sTipoCobPadrao, sJuros: string;
    nCarteira: integer;
    JurosParametrizado: currency;
begin
    inherited;
    if DMProjeto.Parametro('Juros') <> '' then
        begin
            sJuros := replace(DMProjeto.Parametro('Juros'), ',', decimalseparator);
            sJuros := replace(sJuros, '.', decimalseparator);
            JurosParametrizado := StrToFloat(sJuros);
        end
    else
        JurosParametrizado := 0;

    Dec(nSeqParcelas);
    C_ParcelasEMPRESA.Value := DMPRojeto.nEmpresaLogada;
    C_ParcelasIMPORTACAO.Value := 0;
    C_ParcelasID.Value := nSeqParcelas;
    C_ParcelasPDV.Value := C_TabelaPDV.Value; // Felipe       -       Pega o valor do PDV do registro de SAIDAS e coloca no PDV de Titulos
    C_ParcelasValor.Value := 0;
    C_ParcelasValorPago.Value := 0;
    C_ParcelasStatus.Value := 1;
    C_ParcelasVALORDESCANTECIPADO.Value := 0;
    C_ParcelasJUROSPLANO.Value := 0;
    C_ParcelasDESCONTOS.Value := 0;
    C_ParcelasJUROSRECEBIDOS.Value := 0;
    C_ParcelasVALORJUROSMORA.Value := 0;
    C_ParcelasVALORMULTA.Value := 0;
    C_ParcelasCREDITOGERADO.Value := 0;
    C_ParcelasCREDITOUTILIZADO.Value := 0;
    C_ParcelasPERCENTUALMORA.Value := JurosParametrizado;
    C_ParcelasPERCENTUALMULTA.Value := 0;
    C_ParcelasCARTEIRA.Value := C_TabelaCARTEIRA.Value; // Felipe - Pega o valor da Carteira do registro de SAIDAS e coloca no campo CARTEIRA de Titulos
    C_ParcelasTIPOCOBRANCA.Value := C_TabelaCOBRANCA.Value; // Felipe - Pega o valor de Cobranca do registro de SAIDAS e coloca no TIPOCOBRANCA de Titulos

    {   Felipe - Nao necessario o trecho abaixo, deixar comentado.

    sTipoCobPadrao := TipoMovimento('TIPOCOB_PADRAO');
    if (sTipoCobPadrao = '') or (sTipoCobPadrao = '0') then
        sTipoCobPadrao := '1';
    C_ParcelasTIPOCOBRANCA.value := strtoint(sTipoCobPadrao);

    if (C_ParcelasTipoCobranca.value = 3) then
        begin
            nCarteira := StrToIntDef(TipoMovimento('TIPO_CARTEIRA_PADRAO'), 0);
            if nCarteira > 0 then
                C_ParcelasCarteira.Value := nCarteira;
        end;
    }
end;

{O BeforePost das Parcelas serve para definir os campos que só podem ter seus
 valores conhecidos após os campos básicos terem seus valores.  A Codificação
 abaixo está subentendendo que não poderá haver modificações para parcelas que
 já receberam pagamentos e que a classe ao gravar irá fazer uma varredura nas
 parcelas para atribuição de cliente, vendedor, etc.}

procedure TDMSaidas.C_ParcelasBeforePost(DataSet: TDataSet);

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

    C_ParcelasCliente.Value := C_TabelaFavorecido.Value;
    C_ParcelasNotaFiscal.Value := C_TabelaNumero.Value;
    if C_ParcelasNOTAFISCAL.Value <> '' then
        C_ParcelasTITULO.Value := Adicionarstr(C_ParcelasNotaFiscal.Value, '0', 7) + '-' +
            C_ParcelasParcela.asString;
    {else   Não gerando pois a numeração é automática e será definida após a gravação.
      C_ParcelasTITULO.Value     := AdicionarStr(IntToStr(DMProjeto.NextID('Titulo')),'0',6) + '-' +
                                    C_ParcelasParcela.asString;}

    C_ParcelasVendedor.AsVariant := C_TabelaVENDEDOR.asVariant;
    C_ParcelasUSUARIO.Value := DMProjeto.nFuncionario;

    {Status}
  {  if C_TabelaTipoPadrao.Value <> 1 then}
    if C_TabelaTM_GERAFINANCEIRO.Value <> 'S' then
        C_ParcelasStatus.Value := -1 {Usa a tabela de Titulos a Receber apenas para armazenar acordo com o cliente}
    else if C_ParcelasValor.asCurrency <= C_ParcelasPgtos.asCurrency then
        C_ParcelasStatus.Value := 50
    else
        C_ParcelasStatus.Value := StatusTitulo(C_ParcelasVencimento.Value, C_ParcelasDATAATRASADO.Value);

    C_ParcelasOrigem_AReceber.Value := StrToIntDef(TipoMovimento('TipoOrigem'), 0);
end;

procedure TDMSaidas.C_TabelaNUMEROChange(Sender: TField);
var
    sNum: string;
begin
    inherited;
    {Verificando se o Número possui 7 digitos}

    sNum := CompleteCode(Sender.asString, 7);

    if sNum <> Sender.asString then
        Sender.asString := sNum;

end;

procedure TDMSaidas.C_ItensAfterDelete(DataSet: TDataSet);
begin
    inherited;
    //Para forçar o recálculo dos itens, descontos e impostos
    C_ItensAfterPost(DataSet);
end;

procedure TDMSaidas.DMComponentPesquisar4_Dados(Sender: TObject);
begin
    //Não precisa atualizar SubTotais, pois nesta instância ele não é campo calculado, mas DATA;
    C_LocaisEntrega.close;
    C_LocaisEntrega.Params.ParamByName('Favorecido').Value := C_TabelaFavorecido.Value;
    C_LocaisEntrega.open;
    if C_TabelaLOCALENTREGA.Value > 0 then
        C_LocaisEntrega.Locate('Entrega', C_TabelaLocalEntrega.Value, []);

end;

procedure TDMSaidas.C_SaidasItensFilhosNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqFilhos);

    C_SaidasItensFilhosSaidaItemFilho.value := nSeqFilhos;
    C_SaidasItensFilhosQtde.value := C_ItensQuantidade.value;
    C_SaidasItensFilhosPDV.Value := C_TabelaPDV.Value;
    C_SaidasItensFilhosIMPORTACAO.Value := 0;
end;

procedure TDMSaidas.RecalculaPreco;
var nCustoTotal, nPreco: currency;
    sTipoCalculo: string;
begin
    nCustoTotal := 0;
    nPreco := 0;

    sTipoCalculo := DMProjeto.Parametro('CalcPrecoSubItens');
    if sTipoCalculo = 'C' then
        begin
            C_SaidasItensFilhos.first;
            while not C_SaidasItensFilhos.eof do
                begin
                    nCustoTotal := nCustoTotal + (C_SaidasItensFilhosQuantidade.value * (C_SaidasItensFilhosCustoMedio.value * C_SaidasItensFilhosFator.value));
                    C_SaidasItensFilhos.next;
                end;

            nPreco := (100 - (C_ItensI_ComLucro.value)) / 100;
            if nPreco <= 0 then
                nPreco := 0.01;

            nPreco := nCustoTotal / nPreco;
        end
    else if sTipoCalculo = 'V' then
        begin
            nPreco := C_ItensPreco.value + nDiferenca;
        end;

    if not (C_Itens.state in [dsEdit, dsInsert]) then
        C_Itens.edit;
    C_ItensPreco.value := nPreco;
end;

procedure TDMSaidas.C_ItensQUANTIDADEChange(Sender: TField);
var
    nDif, nAcrescimo, nOldQtd, nMaxMescla: double;
begin
    if (Sender.asFloat < 0) or ((Sender.asVariant = null) and not (C_ItensI_TipoItem.Value in [0, 4..7])) then
        begin
            Sender.asFloat := 0;
            exit;
        end;

    inherited;

    nDif := (Sender.asFloat - C_ItensOldQuantidade.asFloat);

    nOldQtd := C_ItensOldQuantidade.asFloat;

    C_ItensOldQuantidade.asFloat := Sender.asFloat;

    {Verificando se precisa haver modificações na mesclagem}
    if not bMesclando and not bFaturandoOperacao and (nDif <> 0) and (C_ItensI_TipoItem.Value in [1, 2, 3]) and not (C_MesclagensIDITEM.Isnull) then
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
                                            FieldByName('Quantidade').asFloat := 0.00; //estes serão apagados na gravação;
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
                                begin
                                    if C_ItensBaixaEstoque.Value = C_TabelaBaixaEstoque.Value then //Implica que a qtd pode ser ultrapassada.
                                        DlgMsg.ShowMsg(2305)
                                    else
                                        begin
                                            DlgMsg.ShowMsg(2304);
                                            Sender.asFloat := Sender.asFloat - nDif; //Para que não ultrapasse a qtd máxima de mesclagem.*
                                        end;
                                end; {Quando o BaixaEstoque de Itens é diferente de C_Tabela, é porque o item já foi dado baixa, sendo assim
                            na mesclagem, a rotina se encarrega de informar que não precisa mais dar baixa neste item. Desta forma
                            a quantidade tem que ficar limitada à quantidade máxima para evitar que o usuário informe uma quantidade
                            a maior pensando que tudo será dado baixa. }

                        end;
                end; //with
        end;

    if C_ItensHasChildren.value = 'S' then
        begin
            C_SaidasItensFilhos.first;
            if not C_SaidasItensFilhosItem.isnull then
                begin
                    while not C_SaidasItensFilhos.eof do
                        begin
                            C_SaidasItensFilhos.edit;
                            C_SaidasItensFilhosQtde.value := C_ItensQuantidade.value;
                            C_SaidasItensFilhos.next;
                        end;
                end;
        end;

    if (nOldQtd <> C_ItensQuantidade.value) and DMProjeto.bOrdemProducao and not bMesclando then
        begin
            if (C_ItensBaixaEstoque.value = 'S') and (C_ItensHasChildren.value = 'S') and (C_ItensOrdemMontagem.value <> 'X') and (C_ItensOrdemMontagem.value <> 'S') and (C_ItensMesclado.value = 'N') and
                (C_ItensI_TipoItem.value = 1) and ((C_ItensQuantidade.value * C_ItensFator.value) > C_ItensI_Estoque.value) then
                begin
                    if (DMProjeto.Parametro('AutoOrdemProducao') = 'S') or (DlgMsg.ShowMsg(3110) = 100) then
                        begin
                            if not (C_Itens.state in [dsEdit, dsInsert]) then
                                C_Itens.edit;
                            C_ItensOrdemMontagem.value := 'X';
                        end
                    else
                        C_ItensOrdemMontagem.value := 'N';
                end;
        end;

    {Felipe - Zerando o totalizador do volume caso a quantidade de algum item seja digitada. Nesse caso o programa faz o calculo com base no total geral da coluna
    quantidade do grid de itens e/ou pelo total de produtos lancados no grid.  - 25/08/2015}
    volumeEdit := 0;
end;

procedure TDMSaidas.CriarOrdemProducao;
var nIDOrdem: integer;
begin
    nIDOrdem := DMProjeto.NextIDGlobal;
    DMProjeto.Q_SQL.SQL.text := 'insert into montagens(montagem,data,item,qtdesolic,qtdeproduzido,status,' +
        'tipo,urgente,saidaitem) values (:montagem,:data,:item,:qtdesolic,:qtdeproduzido,:status,:tipo,:urgente,:saidaitem)';
    DMProjeto.Q_SQL.parambyname('montagem').asinteger := nIDOrdem;
    DMProjeto.Q_SQL.parambyname('data').asdatetime := DMProjeto.dDataSistema;
    DMProjeto.Q_SQL.parambyname('item').asinteger := nItem;
    DMProjeto.Q_SQL.parambyname('qtdesolic').asfloat := nQtde;
    DMProjeto.Q_SQL.parambyname('qtdeproduzido').asfloat := 0;
    DMProjeto.Q_SQL.parambyname('status').asinteger := 1;
    DMProjeto.Q_SQL.parambyname('tipo').asstring := 'F';
    DMProjeto.Q_SQL.parambyname('urgente').asstring := 'S';
    DMProjeto.Q_SQL.parambyname('saidaitem').asinteger := nSaidaItem;
    DMProjeto.Q_SQL.ExecSQL;

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'insert into montagensfilhos(montagemfilho,montagem,item,quantidade,unidade,fator,qtde) ' +
        'values (:montagemfilho,:montagem,:item,:quantidade,:unidade,:fator,:qtde)';

    bPopulando := true;
    C_SaidasItensFilhos.first;
    while not C_SaidasItensFilhos.eof do
        begin
            DMProjeto.Q_SQL.close;
            DMProjeto.Q_SQL.parambyname('montagemfilho').asinteger := DMProjeto.NextIDGlobal;
            DMProjeto.Q_SQL.parambyname('montagem').asinteger := nIDOrdem;
            DMProjeto.Q_SQL.parambyname('item').asinteger := C_SaidasItensFilhosItem.value;
            DMProjeto.Q_SQL.parambyname('quantidade').asfloat := C_SaidasItensFilhosQuantidade.value;
            DMProjeto.Q_SQL.parambyname('unidade').asstring := C_SaidasItensFilhosUnidade.value;
            DMProjeto.Q_SQL.parambyname('fator').asfloat := C_SaidasItensFilhosFator.value;
            DMProjeto.Q_SQL.parambyname('qtde').asfloat := nQtde;
            DMProjeto.Q_SQL.ExecSQL;

            C_SaidasItensFilhos.next;
        end;
    bPopulando := false;
end;

procedure TDMSaidas.C_SaidasItensFilhosITEMChange(Sender: TField);
begin
    inherited;
    if not bPopulando then
        begin
            C_SaidasItensFilhoscodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').Asstring;
            C_SaidasItensFilhosdescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').Asstring;
            C_SaidasItensFilhosunidade.value := DMProjeto.C_LocalizarItens.FieldByName('unidade').Asstring;
            C_SaidasItensFilhosfator.value := DMProjeto.C_LocalizarItens.FieldByName('fatorundvenda').Asfloat;
            C_SaidasItensFilhosCustoMedio.value := DMProjeto.C_LocalizarItens.FieldByName('CustoMedio').asCurrency;
            C_SaidasItensFilhosCustoContabil.value := DMProjeto.C_LocalizarItens.FieldByName('CustoContabil').asCurrency;
            C_SaidasItensFilhosPreco.value := DMProjeto.PrecoDireto(C_SaidasItensFilhosITEM.value, C_SaidasItensFilhosUnidade.value, C_TabelaTabelaPadrao.value);
        end;
end;

procedure TDMSaidas.AgruparPorItem;
begin

end;

procedure TDMSaidas.C_TabelaVENDEDORChange(Sender: TField);
begin
    inherited;
    C_Vendedores.Locate('Favorecido', Sender.asInteger, []);
    C_TabelaPComissao.Value := C_VendedoresComissao.Value;
end;

function TDMSaidas.ItemChangeGetPreco: double;
begin
    {Para que este código funcione é preciso que o preçotabela e tabelapreço sejam atribuidos
     antes do inherited - no ItemChange}

    if (C_ItensUnidade.Value = C_ItensI_Unidade.Value) or bMesclando then
        Result := C_ItensPrecoTabela.asCurrency
    else if (C_ItensUnidade.asString <> '') then
        Result := DMProjeto.PrecoDireto(C_ItensItem.asInteger, C_ItensUnidade.asString, C_ItensTabelaPreco.Value)
    else
        Result := 0;
    if C_ItensI_TipoItem.Value < 8 then
        result := Arredondar(result, DMProjeto.nCasasDecimais);

end;

procedure TDMSaidas.DMComponentExclusao(Sender: TObject; var bSkip: Boolean);

    function CancelarParcelas(nInvoice: integer; empresa: integer; pdv: integer; Motivo: string; var sTitulos: string): string; //Retorna o valor gerado de créditos;
    var
        sDepositos: string;
        x: Integer;
    begin
        with Q_SQLi do
            begin
                {Parcelas afetadas}
                Close;
                SQL.Text := 'Select * from TitulosAReceber where Venda = :V and empresa = :E and pdv = :P and ((Status > 0))';
                params[0].asInteger := nInvoice;
                params[1].AsInteger := empresa;
                params[2].AsInteger := pdv;
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
                            DMFinanceiro.ApagarDeposito(StrToIntDef(SeparaStrings(sDepositos, ',', x), 0), false, False);

                    end;

                for x := 1 to ContaStrings(sTitulos, ',') do
                    begin
                        if not DMFinanceiro.CancelarTitulo(StrToIntDef(SeparaStrings(sTitulos, ',', x), 0), C_TabelaEMPRESA.Value, C_TabelaPDV.Value, Motivo, false, false, false) then
                            raise Exception.Create('@@')
                        else
                            DMFinanceiro.CancelarLancamentos(SeparaStrings(sTitulos, ',', x));
                    end;

                result := sDepositos;

            end;
    end;

    function ExisteRecebimentos(nInvoice: integer; empresa: integer; pdv: integer): Boolean;
    begin
        with Q_SQLi do
            begin
                Close;
                SQL.Text := 'Select * from TitulosAReceber t INNER JOIN DepositosTitulos dt ON t.ID = dt.Titulo ' +
                    'where t.Venda = :V and t.Empresa = :E and t.Pdv = :P and t.Status > 0 ';
                Params[0].asInteger := nInvoice;
                Params[1].AsInteger := empresa;
                Params[2].AsInteger := pdv;
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
    inherited;
    bSkip := true;

    if C_TabelaSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(2759);
            exit;
        end;

    {Verificando se há recebimentos e notificando ao usuário este fato}
  {  if (C_TabelaTipoPadrao.Value = 1) and ExisteRecebimentos(C_TabelaIDMestre.Value) then begin}
    if (C_TabelaTM_GERAFINANCEIRO.Value = 'S') and ExisteRecebimentos(C_TabelaIDMestre.Value, C_TabelaEMPRESA.Value, C_TabelaPDV.Value) then
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
    C_Tabela.UndoLastChange(False);

    sMotivo := '';
    while sMotivo = '' do
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    {Cancelando a Operação}
    try

        try
            with Q_SQL do
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
                            if C_ItensSITUACAO.Value <> 'C' then
                                begin
                                    Close;
                                    SQL.Text := 'update saidasitens set situacao = ''C'' where saidaitem = :ID and saida = :S and pdv = :P ';
                                    Params[0].AsInteger := C_ItensIDITEM.Value;
                                    Params[1].AsInteger := C_ItensIDMESTRE.Value;
                                    Params[2].AsInteger := C_ItensPDV.Value;
                                    ExecSQL;
                                end;

                            C_Itens.Next;
                        end;

                    {Cancelando as Parcelas}
                    {if C_TabelaTipoPadrao.Value <> 1 then begin}
                    if C_TabelaTM_GERAFINANCEIRO.Value <> 'S' then
                        begin
                            Close;
                            SQL.Text := 'Delete from TitulosAReceber where Venda = :V and empresa = :E and pdv = :P ';
                            Params[0].asInteger := C_TabelaIDMestre.Value;
                            Params[1].AsInteger := C_TabelaEMPRESA.Value;
                            Params[2].AsInteger := C_TabelaPDV.Value;
                            ExecSQL;
                        end
                    else
                        begin
                            {Cancela, altera recebimentos e gera créditos (se preciso for)}
                            sDepositosAfetados := CancelarParcelas(C_TabelaIDMestre.Value, C_TabelaEMPRESA.Value, C_TabelaPDV.Value, 'Canc. Vendas #' + C_TabelaNumero.asString + '; ' + sMotivo, xTitulos);

                            if sTipoExclusao = 'Operacao' then
                                for j := 1 to ContaStrings(xTitulos, ',') do
                                    DMFinanceiro.AjustaRecebimentoContas(StrToInt(SeparaStrings(xTitulos, ',', j)), sDepositosAfetados);
                        end;

                    {Cancelando a Operacao}
                    Close;
                    SQL.Text := 'Update Saidas set Situacao = ''C'', motivocancelamento = ''' + sMotivo + ''', funccancelamento = ' + IntToStr(DMPRojeto.nFuncionario) +
                        ', datacancelamento = current_date  where Saida = :S and Empresa = :E and Pdv = :P';
                    Params[0].asInteger := C_TabelaIDMestre.Value;
                    Params[1].AsInteger := C_TabelaEMPRESA.Value;
                    Params[2].AsInteger := C_TabelaPDV.Value;
                    ExecSQL;

                    {Cancelando a Comissão: Apagando para que ao somar no payroll o valor seja deduzido}
                    Close;
                    SQL.Text := 'Delete from Comissoes where Venda = :V ';
                    Params[0].asInteger := C_TabelaIDMestre.Value;
                    ExecSQL;

                    {Registrando Auditoria}
                    DMFinanceiro.AuditoriaFinanceira(38, 'Cancelamento da Venda #' + C_TabelaNumero.asString, 'Saidas',
                        C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                        C_TabelaIDMestre.Value, 34, 0);

                end;
        finally
            C_Itens.EnableControls;
        end;

        // Estorno dos Lancamentos Contabeis
        DMFinanceiro.CancelarLancamentos(C_TabelaIDMestre.AsString);

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        if C_Tabela.State = dsBrowse then
            C_Tabela.Edit;
        C_TabelaSituacao.Value := 'C';

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.Rollback;
                {Registrando Auditoria}
                DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                    + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                    C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                    C_TabelaIDMestre.Value, 34, 0);
                DlgMsg.ShowMsg(2199, e.message, '');
            end;
    end;

end;

function TDMSaidas.ContabilidadeAtivado;
begin
    result := DMContabil <> nil;
end;

procedure TDMSaidas.ContabilidadeDesativado;
begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
end;

procedure TDMSaidas.CriaContabilidade;
begin
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMSaidas.Contabiliza;
begin
    if C_TabelaTipoPadrao.value = 1 then
        DMContabil.ContabilizaInvoices(C_TabelaIDMestre.value, C_Tabela, C_Itens)
    else
        DMContabil.ContabilizaDevolucoesFornecedores(C_TabelaIDMestre.value, C_Tabela, C_Itens);
end;

procedure TDMSaidas.MostraContabilidade;
begin
    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
end;

procedure TDMSaidas.C_ParcelasVALORValidate(Sender: TField);
begin
    inherited;
    if (C_ParcelasPgtos.Value > 0) and (Sender.asCurrency - C_ParcelasPgtos.asCurrency < 0) then
        begin
            DlgMsg.ShowMsg(2139, [FormatCurr('##,##0.00', C_ParcelasPgtos.asCurrency)]);
            raise Exception.Create('@@');
        end;
end;

procedure TDMSaidas.ParcelasParaTotalFinal;
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

procedure TDMSaidas.RatearDifProxParcelas(nParcelaDif: Integer; nDiferenca: Currency);
var
    TmpDS: TClientDataSet;
    nQtdProx: Integer;
    nDifParcelas: Currency;
    nTotalParcelas, nDescontoLimpo, nValorVenda, nDif: Currency;
begin
    nTotalParcelas := 0;

    if C_Parcelas.State in [dsEdit, dsInsert] then
        C_Parcelas.Post;

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
        begin
            CloneCursor(C_Parcelas, true);
            First;
            if Locate('Parcela', nParcelaDif + 1, []) then
                begin
                    nTotalParcelas := 0;
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
                    nValorVenda := C_TabelaTotal.asCurrency;

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

procedure TDMSaidas.RefreshParcelas;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select * ' +
                'From TitulosAReceber Where Venda = :V and Status > 0 ';
            if bCancelados then
                SQL.Text := replace(SQL.Text, 'and Status > 0', '');

            Params[0].asInteger := C_TabelaIDMestre.Value;
            Open;

            try
                C_Parcelas.DisableControls;
                while not EOF do
                    begin
                        C_Parcelas.Locate('ID', FieldByName('ID').asInteger, []);
                        C_Parcelas.Edit;

                        C_Parcelas.FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency;
                        C_Parcelas.FieldByName('Saldo').asCurrency := FieldByName('FaltaReceber').asCurrency;
                        C_Parcelas.FieldByName('Pgtos').asCurrency := FieldByName('Valor').asCurrency -
                            FieldByName('FaltaReceber').asCurrency;
                        C_Parcelas.FieldByName('ValorPago').asCurrency := FieldByName('ValorPago').asCurrency;
                        C_Parcelas.FieldByName('CreditoGerado').asCurrency := FieldByName('CreditoGerado').asCurrency;
                        C_Parcelas.FieldByName('CreditoUtilizado').asCurrency := FieldByName('CreditoUtilizado').asCurrency;
                        C_Parcelas.FieldByName('Descontos').asCurrency := FieldByName('Descontos').asCurrency;
                        C_Parcelas.FieldByName('JurosRecebidos').asCurrency := FieldByName('JurosRecebidos').asCurrency;
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

procedure TDMSaidas.C_TabelaDATAChange(Sender: TField);
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

function TDMSaidas.GetMovimentos;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Count(*) as Movimentos from Saidas where TipoPadrao in (' + sTipo + ') ' +
                'and Situacao = ''N'' and Status in (''P'', ''L'', ''V'', ''X'') and Favorecido = :C ';
            if sSerie <> '' then
                SQL.Add(' and SerieNota = ' + QuotedStr(sSerie));
            if nTipoOp > 0 then
                SQL.Add(' and TipoMovimento = ' + IntToStr(nTipoOP));

            Params[0].asInteger := C_TabelaFavorecido.Value;
            Open;

            Result := FieldByName('Movimentos').asInteger;

            Close;
        end;
end;

procedure TDMSaidas.C_MesclagensNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqMescla);

    C_MesclagensSAIDAITEMMESCLA.Value := nSeqMescla;
    C_MesclagensQuantidade.Value := 0.00;
    //C_MesclagensPDV.Value := C_TabelaPDV.AsString;
end;

procedure TDMSaidas.C_ItensBeforeDelete(DataSet: TDataSet);
begin
    inherited;
    if C_ItensQtdFaturada.Value > 0 then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select s.Numero, t.Descricao as lkOperacao ' +
                    'from (((saidasitensmescla sim inner join saidasitens si on sim.saidaitem = si.saidaitem) ' +
                    '     inner join saidas s on s.saida = si.saida) ' +
                    '     inner join tiposmovimento t on t.tipomovimento = s.tipomovimento) ' +
                    'where sim.saidaitem_original = :s ';
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

    ApagarMesclagem;

    ApagarFilhos;

end;

procedure TDMSaidas.C_ItensNewRecord(DataSet: TDataSet);
begin
    inherited;
    //C_ItensFOrnecPreferencia.Value := -9;

    C_ItensBaseCalcICMSProd.value := 0;
    C_ItensBaseCalcSubstProd.value := 0;
    C_ItensValorICMSSubstProd.value := 0;
    C_ItensValorICMSProd.value := 0;
    C_ItensValorIPIProd.value := 0;
    C_ItensValorIsentasProd.value := 0;
    C_ItensCST.Value := '0';
    C_ItensCSTIPI.Value := '0';
    C_ItensCSTPISCOFINS.Value := '0';
    C_ItensVALORPISPROD.Value := 0;
    C_ItensVALORCOFINSPROD.Value := 0;
    C_ItensALIQPIS.Value := 0;
    C_ItensALIQCOFINS.Value := 0;
    C_ItensALIQIPI.Value := 0;
    C_ItensRATEIODESPESAS.Value := 0;
    inc(nOrdemDigItens);
    C_Itenssituacao.AsString := 'N';
    C_ItensEMPRESA.Value := DMPRojeto.nEmpresaLogada;
    C_ItensIMPORTACAO.Value := 0;
    C_ItensAlmoxarifado.Value := StrToIntDef(TipoMovimento('ALMOXPADRAO'), 0); {C_TabelaAlmoxPadrao.Value;}
    C_ItensBaixaEstoque.Value := C_TabelaBaixaEstoque.Value;
    C_ItensBaixaEstoqueFiscal.Value := C_TabelaBaixaEstoqueFiscal.Value;
    C_ItensOrdem.Value := nOrdemDigItens;

    if (C_TiposMovimentoCB_StatusItens.Value = 'S') and (C_TiposMovimentoStatusPadraoItens.Value <> '') then
        C_ItensStatus.Value := C_TiposMovimentoStatusPadraoItens.Value
    else
        C_ItensStatus.Value := 'P';
    if (C_TabelaPossuiICMS.value = 'S') then
        C_ItensAliqICMS.value := C_TabelaAliqICMSVenda.value;
    C_ItensCFOPNota.value := C_TabelaCFOPNota.value;
    C_ItensIPI.value := 0;
    C_ItensTVA.value := 0;

    C_ItensPDV.Value := C_TabelaPDV.Value; // Felipe       -       Pegar o valor do PDV do registro de Saidas e coloca no PDV de SAIDASITENS
    if (DMProjeto.C_LocalizarFav.FieldByName('DECRETO24755').AsString = 'S') then
        begin
            C_ItensCST.value := '040';
            C_ItensSituacaoECF.value := 'I';
        end;
    C_ItensPRECOCUSTOLICITACAO.Value := 0;
    C_ItensCalcSubTotalPrecoLicitacao.Value := 0;
    C_ItensDifSubTotalLicitacao.Value := 0;
    C_ItensPercLucroLicitacao.Value := '0';
end;

procedure TDMSaidas.AplicarStatusAosItens(Sender: string);
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

function TDMSaidas.PlanoPgtoComEntrada: Boolean;
begin
    result := false;
    if C_TabelaPlanoPagamento.asVariant = null then
        exit;

    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

    result := (C_PlanosPagamentoEsquemaParcelas.Value <> 'S');

end;

procedure TDMSaidas.C_TabelaSTATUSValidate(Sender: TField);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'ALTSTATUSO', '', False, 'Para:' + C_TabelalkStatus.AsString) then
        raise exception.create('@@');
end;

{Esta função de calcular imposto é chamada no Change de:
   ReducoesBase, AcrescimosBase e PossuiTax.

 ReducoesBase é recalculado sempre que houverem modificações em:
   BaseImposto, BaseIncluso, DescontoItens e Descontos}

procedure TDMSaidas.CalcularImposto;
var
    nBaseImposto, nReducoes: Currency;
    nProporcao, nPropReducoes: Double;
begin
    {Aplicando as Reducoes nas Bases de Calculo.
     Os acrescimos são sempre aplicados à baseimposto, visto que será um valor destacado}
    nReducoes := C_TabelaReducoesBase.asCurrency;
    nBaseImposto := C_TabelaBaseCalcICMSItens.asCurrency;

    {No Caso de Simples Remessa o Valor da Base de Calculo deverá Ser zerada}
    if C_TabelaTIPOPADRAO.Value = 40 then
        nBaseImposto := 0;

    if nBaseImposto > 0 then
        nProporcao := C_TabelaValorICMSItens.Value / nBaseImposto
    else
        nProporcao := 0;

    if C_TabelaBaseCalcICMSItens.asCurrency > 0 then
        nPropReducoes := nReducoes / C_TabelaBaseCalcICMSItens.asCurrency
    else
        nPropReducoes := 0;

    if nBaseImposto > C_TabelaReducoesBase.asCurrency then
        begin
            nBaseImposto := nBaseImposto - nReducoes;
            nReducoes := 0;
        end;

    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    {O Valor da Base de Calculo do ICMS so levara em consideração a variavel
    nBaseImposto, abaixo Codigo Original:}
    if (C_TabelaPossuiICMS.value = 'S') then
        C_TabelaBaseCalcICMS.value :=
            nBaseImposto +
            C_TabelaFrete.value +
            C_TabelaValorSeguro.value +
            C_TabelaOutrasDespesas.value +
            C_TabelaJuros.value;
    {(Motivo: O Valor adicional de boletos colocados no campo Despesas em Termos contabilizava em
             C_TabelaBaseCalcICMS.value,}
//    If C_TabelaValorICMSSubst.Value > 0 Then
//       C_TabelaBaseCalcICMS.value := nBaseImposto
//    Else
//       C_TabelaBaseCalcICMS.value := nBaseImposto + C_TabelaOutrasDespesas.value;

   //  C_TabelaValorICMS.value := Truncar((nBaseImposto * nProporcao),2) +
   //                             Truncar((((C_TabelaFrete.Value + C_TabelaOutrasDespesas.Value +
   //                     C_TabelaJuros.value + C_TabelaValorSeguro.value) * C_TabelaAliqICMSVenda.value)/100),2);

    if (C_TabelaPossuiICMS.value = 'S') then
        C_TabelaValorICMS.value := Truncar((nBaseImposto * nProporcao) +
            (((C_TabelaFrete.Value + C_TabelaOutrasDespesas.Value +
            C_TabelaJuros.value + C_TabelaValorSeguro.value) * C_TabelaAliqICMSVenda.value) / 100), 2);

    if bCalc_IPI_ICMSSUBST then
        begin
            if (bDECRETO25905) then
                begin
                    if (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
                        begin
                            C_TabelaBaseCalcSubst.Value := C_TabelaBaseCalcSubstItens.Value;

                            if (C_TabelaPossuiICMS.value = 'S') then
                                if C_TabelaBaseCalcSubst.Value > 0 then
                                    C_TabelaValorICMSSubst.Value := (C_TabelaBaseCalcSubstItens.Value * 0.03)
                                else
                                    C_TabelaValorICMSSubst.Value := 0;
                            C_TabelaValorIPI.Value := C_TabelaValorIPIItens.Value * (1 - nPropReducoes);
                        end
                    else
                        begin
                            C_TabelaBaseCalcSubst.Value := 0.00;

                            if (C_TabelaPossuiICMS.value = 'S') then
                                if C_TabelaBaseCalcSubst.Value > 0 then
                                    C_TabelaValorICMSSubst.Value := 0.00
                                else
                                    C_TabelaValorICMSSubst.Value := 0;

                            C_TabelaValorIPI.Value := C_TabelaValorIPIItens.Value * (1 - nPropReducoes);
                        end;
                end
            else
                begin
                    C_TabelaBaseCalcSubst.Value := C_TabelaBaseCalcSubstItens.Value * (1 - nPropReducoes);
                    C_TabelaValorIPI.Value := C_TabelaValorIPIItens.Value * (1 - nPropReducoes);

                    {
                    if (C_TabelaPossuiICMS.value = 'S') then
                        if C_TabelaBaseCalcSubst.Value > 0 then
                            C_TabelaValorICMSSubst.Value := ((C_TabelaBaseCalcSubst.value * DMProjeto.nICMSInterno) / 100) - C_TabelaValorICMS.Value
                        else
                            C_TabelaValorICMSSubst.Value := 0;
                    }
                end;
        end;

    if (C_TabelaTipoMovimento.Value = 1) and (C_TabelaFonte.value = 'S') then
        C_TabelaOBS.Value := DMProjeto.Parametro('MensagFonte') + ' Valor:' + FormatCurr('###,##0.00', C_TabelaValorICMSSubst.value);

    if (C_TabelaPossuiISS.value = 'S') and (C_TabelaTotalServicos.value > 0) then
        C_TabelaValorISS.Value := (C_TabelaTotalServicos.value * DMProjeto.nISS / 100) * (1 - nPropReducoes)
    else
        C_TabelaValorISS.Value := 0;

    { Este campo baseimposto está sendo usado para viusalização apenas dos outros valores que são adicionados
      ao total de uma venda, não sendo portando importante em nenhum contexto fiscal - do mesmo modo
      o BaseIncluso que está sendo utilizado para exibir a base de cálculo do ISS que será pago na nota. }
    C_TabelaBASEIMPOSTO.Value := C_TabelaValorIPI.value + C_TabelaValorSeguro.value + C_TabelaValorICMSSubst.value;
    C_TabelaBASEINCLUSO.Value := (C_TabelaTOTALSERVICOS.Value) - (C_TabelaTOTALSERVICOS.value * nPropReducoes);
    //    C_TabelaBASEINCLUSO.Value := DMProjeto.nISS; {*}

end;

procedure TDMSaidas.DMComponentGravar4_AposCommit(Sender: TObject);
var
    bOk: boolean;
    i, k: Integer;
    F: TextFile;
    sOBS: string;
begin
    inherited;
    {Gerando Número da Operacao}
    try
        if not bAlteracao and (TipoMovimento('CB_GERARNUM') = 'S') then
            with Q_SQL do
                begin
                    bOk := false;
                    if (TipoMovimento('CB_NOTAFISCAL') = 'S') then
                        begin
                            for k := 1 to 6 do
                                begin
                                    if (k <= 5) and (DMProjeto.GEN_ID('GENSIST_OKPARAGERARNF', true) = 1) then
                                        sleep(2000)
                                    else
                                        begin
                                            DMProjeto.SetOkParaGerarNF(1);
                                            sNumeroGerado := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7);
                                            Break;
                                        end;
                                end;
                        end
                    else
                        begin
                            sNumeroGerado := CExp(TipoMovimento('SIGLAINICIAL'), '-') + AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + C_TabelaTipoMovimento.asString)), '0', 7 - Length(TipoMovimento('SIGLAINICIAL')));
                        end;
                    {Verificando Duplicidade}
                    Close;
                    SQL.Text := 'Select Count(saida) as Existentes from Saidas ' +
                        'where TipoMovimento = :TM and Numero = :N and Saida <> :S ';
                    ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
                    ParamByName('N').asString := sNumeroGerado;
                    ParamByName('S').asInteger := C_TabelaIDMestre.asInteger;
                    Open;
                    i := FieldByName('Existentes').asInteger;
                    Close;
                    if (i > 0) then
                        sNumeroGerado := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7);
                    //Para Gerar novo número;
                    Close;
                    {Atribuindo o Número gerado}
                    SQL.Text := 'Update Saidas set Numero = :NG where Saida = :S and pdv = :pdv';
                    ParamByName('NG').asString := sNumeroGerado;
                    ParamByName('S').asInteger := C_TabelaIDMestre.asInteger;
                    ParamByName('pdv').AsInteger := C_TabelaPDV.AsInteger;

                    nTentativas := 0;
                    bGravouSaida := False;
                    repeat
                        try
                            ExecSQL;
                            Close;
                            nTentativas := 3;
                            bGravouSaida := True;
                        except
                            on e: Exception do
                                begin
                                    sErro := sErro + e.Message;
                                    Inc(nTentativas);
                                    Sleep(20);
                                end;
                        end;
                    until nTentativas = 3;
                    if not (bGravouSaida) then
                        begin
                            Beep.BeepFor(800, 1000);
                            Beep.BeepFor(500, 800);
                            DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + ' DMSaida Linha 4407 ' + #13 + #13 + sErro)]);
                        end;
                    SQL.Text := 'Update TitulosAReceber set NotaFiscal = :NF, Titulo = :TT || ''-'' || Parcela where Venda = :V and pdv = :pdv';
                    ParamByName('NF').asString := sNumeroGerado;
                    ParamByName('TT').asString := sNumeroGerado;
                    ParamByName('V').asInteger := C_TabelaIDMestre.asInteger;
                    ParamByName('pdv').AsInteger := C_TabelaPDV.AsInteger;
                    nTentativas := 0;
                    bGravouSaida := False;
                    repeat
                        try
                            ExecSQL;
                            Close;
                            nTentativas := 3;
                            bGravouSaida := True;
                        except
                            on e: Exception do
                                begin
                                    sErro := sErro + e.Message;
                                    Inc(nTentativas);
                                    Sleep(20);
                                end;
                        end;
                    until nTentativas = 3;
                    if not (bGravouSaida) then
                        begin
                            Beep.BeepFor(800, 1000);
                            Beep.BeepFor(500, 800);
                            DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + ' DMSaida Linha 4431 ' + #13 + #13 + sErro)]);
                        end;
                    DMProjeto.SetOkParaGerarNF(0);
                    bOk := true;

                    DMFinanceiro.AuditoriaFinanceira(39, 'Operação de Saída ' + sNumeroGerado + '. Cliente: ' + C_TabelaF_NOME.AsString, 'Saidas', C_TabelaIDMESTRE.AsInteger,
                        C_TabelaTOTAL.Value, C_TabelaIDMESTRE.Value, 34);

                    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                end; //if
        {Registrando Auditoria Caso Seja Alterado Dados na Saida}
        {O 1º Parametro é Relacionado com a Tabela TiposAuditorias}
        if bAlteracao then
            DMFinanceiro.AuditoriaFinanceira(40, 'Alterando Saida # ' + C_TabelaNumero.asString, 'Saidas',
                C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                C_TabelaIDMestre.Value, 34, 0);
        sPerformance := sPerformance + Format(SFimDeGravacao, [DateTimeToStr(Now)]) + #13;
        if (DMProjeto.Parametro('Lei1274112') = 'S') and (C_TiposMovimentoCB_NOTAFISCAL.Value = 'S') and  (C_TiposMovimentoCB_MENSAGEMTRIBUTOS.Value = 'S') then
            begin
                if (C_TabelaOBS.AsString <> null) then
                    begin
                        with Q_SQL do
                            begin
                                {Calculando o Imposto do Decreto }
                                try
                                    Close;
                                    SQL.Text := ' select coalesce(sum((coalesce(t.aliqnac,0) / 100.00) * si.subtotalitem),0) as TotalImpostos, s.obs as mensagemsaida ' +
                                        ' From itens i inner join ibpt t on i.clasfiscal = t.ncm inner join saidasitens si on si.item = i.item ' +
                                        ' inner join saidas s on si.saida = s.saida and si.pdv = s.pdv ' +
                                        ' where si.saida = :S ' +
                                        ' group by s.obs ';
                                    ParamByName('S').asInteger := C_TabelaIDMestre.asInteger;
                                    Open;

                                    if (RecordCount > 0)  then
                                        begin
                                            sOBS := 'Valor aprox. dos Tributos: ' + CurrToStrF(Fields[0].Value, ffCurrency, 2) + ' ('
                                                + CurrToStrF((Fields[0].Value / C_TabelaTOTAL.Value) * 100.00, ffFixed, 2) + '%) Fonte IBPT. ';
                                        end;
                                except
                                    sOBS := ' ';
                                end;

                                try
                                    Close;
                                    SQL.Text := 'Select Max(cast(coalesce(e.aliqcreditosn, 0) as numeric (15, 2))) as pCredSN_ICMS, ' +
                                        'Sum(cast(coalesce((e.aliqcreditosn * si.subtotalitem)/100.00, 0) as numeric (15, 2))) as vCredICMSSN_ICMS ' +
                                        'from saidasitens si inner join saidas s on s.saida = si.saida and s.pdv = si.pdv ' +
                                        'inner join itens i on i.item = si.item ' +
                                        'left join ibpt p on p.ncm = i.clasfiscal ' +
                                        'left join  itenslotes l on l.numerolote = si.numerolote, ' +
                                        'empresas e ' +
                                        'inner join favorecidos f on f.favorecido = e.favorecido ' +
                                        'inner join ufs u on f.uf = u.uf ' +
                                        'where e.favorecido = -1 and si.saida = :S and si.cst = ''101'' ' +
                                        'and s.tipomovimento in (select t.tipomovimento from tiposmovimento t where t.cb_notafiscal = ''S'') ' +
                                        'Group by si.saida ';
                                    ParamByName('S').AsInteger := C_TabelaIDMestre.asInteger;
                                    Open;

                                    if (RecordCount > 0) then
                                        begin
                                            sOBS := sOBS + 'Permite aproveitamento do Credito ICMS no valor de: ' + CurrtoStr(Fields[1].Value) + '. ' +
                                                'Correspondente a Aliquota de: ' + CurrtoStr(Fields[0].Value) + '%. Nos termos do Art. 23 ' +
                                                'da Lei Complementar N. 123, de 2006.';
                                        end;
                                except

                                end;

                                if (Length(sOBS) > 0) then
                                    sOBS := sOBS + ' - ' + C_TabelaOBS.AsString
                                else
                                    sOBS := C_TabelaOBS.AsString;

                                if (Length(sOBS) > 500) then
                                    sOBS := Copy(sOBS, 1, 500);

                                SQL.Text := 'Update Saidas set obs = :OBS where Saida = :S and Empresa = :E and Pdv = :P ';
                                ParamByName('S').asInteger := C_TabelaIDMestre.AsInteger;
                                ParamByName('E').AsInteger := C_TabelaEMPRESA.AsInteger;
                                ParamByName('P').AsInteger := C_TabelaPDV.AsInteger;
                                ParamByName('OBS').asString := sOBS;
                                ExecSQL;
                                Close;
                            end;
                    end;
            end;

        if (idOficina > 0) and (DMProjeto.bPermitirOficina) then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'update oficina f set f.idsaida = :idmestre where f.id = :idoficina';
                        ParamByName('idmestre').AsInteger := C_TabelaIDMESTRE.Value;
                        ParamByName('idoficina').AsInteger := idOficina;
                        ExecSQL;
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                    end;

            end;

        { Felipe - Update para faturar montagem de produto, e assim bloquear que a mesma seja faturada novamente (15/08/2016) }
        if (idMontagemProduto > 0) then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'update montagens m set m.status = 5 where m.montagem = :idMontagem';
                        ParamByName('idMontagem').AsInteger := idMontagemProduto;
                        ExecSQL;
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                    end;
            end;

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.Rollback;
                {Registrando Auditoria}
                DMFinanceiro.AuditoriaFinanceira(41, 'Erro Venda #' + C_TabelaNumero.asString
                    + ' ' + e.message + ' ' + DMProjeto.sLoginName, 'Saidas',
                    C_TabelaIDMestre.Value, C_TabelaTotalOld.Value,
                    C_TabelaIDMestre.Value, 34, 0);
                DlgMsg.ShowMsg(2334);
            end;
    end;

end;

procedure TDMSaidas.C_ItensNUMEROLOTEValidate(Sender: TField);
var
    nQtdLote: Currency;
begin
    inherited;
    if bAlteracao and (C_ItensQtdFaturada.Value > 0) then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select s.Numero, t.Descricao as lkOperacao ' +
                    'from (((saidasitensmescla sim inner join saidasitens si on sim.saidaitem = si.saidaitem) ' +
                    '     inner join saidas s on s.saida = si.saida) ' +
                    '     inner join tiposmovimento t on t.tipomovimento = s.tipomovimento) ' +
                    'where sim.saidaitem_original = :s ';
                params[0].asInteger := C_ItensIDITEM.Value;
                Open;

                if RecordCount > 0 then
                    begin
                        if (C_ItensQuantidade.Value < C_ItensQtdFaturada.Value) then
                            DlgMsg.ShowMsg(2312, [FieldByName('lkOperacao').asString, FieldByName('Numero').asString, C_ItensQtdFaturada.DisplayText])
                        else
                            DlgMsg.ShowMsg(2307, [FieldByName('lkOperacao').asString, FieldByName('Numero').asString]);

                        Close;
                        if DMProjeto.Parametro('ObrigarLoteCorreto') = 'S' then
                            raise Exception.Create('@@');
                    end;

                Close;
            end;

    if C_ItensNumeroLote.value <> '' then
        with Q_SQL do
            begin
                close;
                SQL.text := 'Select QtdEntradas, EstoqueLote, Validade ' +
                    'From ItensLotes where item = :item and numerolote = :lote ';
                params[0].asinteger := C_ItensItem.value;
                params[1].asstring := C_ItensNumeroLote.value;
                Open;

                nQtdLote := FieldByName('EstoqueLote').asCurrency / IIF(C_ItensFator.asCurrency > 0, C_ItensFator.asCurrency, 1);

                if FieldByName('QtdEntradas').asFloat <= 0 then
                    begin
                        DlgMsg.ShowMsg(6011);
                        if DMProjeto.Parametro('ObrigarLoteCorreto') = 'S' then
                            raise Exception.Create('@@');
                    end
                else if (C_ItensQuantidade.asCurrency - nQtdLote) > 0.01 then
                    begin
                        DlgMsg.ShowMsg(6012);
                        if DMProjeto.Parametro('ObrigarLoteCorreto') = 'S' then
                            raise Exception.Create('@@');
                    end;
            end;
end;

function TDMSaidas.ExistemParcelasRenegociadas: Boolean;
var
    bExiste: boolean;
begin
    bExiste := false;

    if C_Parcelas.Active and (C_Parcelas.RecordCount > 0) then
        with C_Parcelas do
            begin
                First;
                while not eof and not bExiste do
                    begin
                        bExiste := C_ParcelasStatus.Value = -2;
                        next;
                    end;
                First;
            end;

    result := bExiste;

end;

procedure TDMSaidas.DMComponentPesquisar1_Iniciar(Sender: TObject;
    var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    if pos('VENDEDOR', Where) > 0 then
        Where := replace(Where, 'VENDEDOR', 't.VENDEDOR');

    if pos('OBS', Where) > 0 then
        Where := replace(Where, 'OBS', 't.OBS');

    if (DMProjeto.nFuncionarioLogado > 0) and not DMProjeto.LerPermissao(sForm, 'FatLivreVnd') then
        Where := replace(Uppercase(Where), 'WHERE', ' where t.Vendedor = ' + IntToStr(DMProjeto.nFuncionarioLogado) + ' and ');

    if sWhereAdicional <> '' then
        Where := replace(Uppercase(Where), 'WHERE', ' where ' + sWhereAdicional);

end;

procedure TDMSaidas.IBEventos_SaidasEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
begin
    inherited;
    if EventName = 'EVENTO_PLANOSPAGAMENTO' then
        begin
            C_PlanosPagamento.close;
            C_PlanosPagamento.open;
        end
    else if EventName = 'EVENTO_TIPOSMOVIMENTO' then
        begin
            C_TiposMovimento.close;
            C_TiposMovimento.open;
        end
    else if EventName = 'EVENTO_FAVORECIDOS' then
        begin
            C_Vendedores.close;
            C_Vendedores.open;
        end;
end;

procedure TDMSaidas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    nTipoMovimento := 0;
    sForm := 'FrmSaidas';
    IBEventos_Saidas.RegisterEvents;
    bDECRETO25905 := (DMProjeto.Parametro('DECRETO25905') = 'S');
    { Felipe - Parâmetro criado para bloquear/desbloquear o combobox do vendedor nas operações de saída (12/07/2016) }
    bBloquearVendedor := (DMProjeto.Parametro('BloquearVendedor') = 'S');
    { Felipe - Parâmetro criado para informar o tipo (ramo) da empresa (03/03/2017) }
    sTipoEmpresa := DMProjeto.Parametro('TipoEmpresa');
    DMProjeto.slIdItensIdentificados := TStringList.Create;
    idOficina := 0;
    idMontagemProduto := 0;
end;

procedure TDMSaidas.DMComponentAposIniciar(Sender: TObject);
begin
    inherited;
    C_MensagensOperacoes.Open;
    C_TermosContratos.Open;
    sLiberarDiasAtraso := DMProjeto.Parametro('LiberarDiasAtraso');
    if sLiberarDiasAtraso = '' then
        sLiberarDiasAtraso := '0';
    bDECRETO25905 := (DMProjeto.Parametro('DECRETO25905') = 'S');

end;

procedure TDMSaidas.C_TabelaAfterScroll(DataSet: TDataSet);
var
    tmpds: TClientDataSet;
    nMaxOrdem, nMaxSeq: Integer;
begin
    inherited;
    if length(C_TabelaF_CPF_CNPJ.Text) = 11 then
        C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(C_TabelaF_CPF_CNPJ.Text) = 14 then
        C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';

    {  nMaxOrdem := 0;
      nMaxSeq := 0;

      if bAlteracao then begin
        tmpds := TClientDataSet.Create(self);
        with tmpds do begin
          CloneCursor(C_Itens, true);

          First;
          while not eof do begin
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
      end;}

end;

procedure TDMSaidas.C_ItensUNIDADEChange(Sender: TField);
var
    nNovoFator: double;
    Minimo, PrecoCusto: currency;
begin
    inherited;
    if (C_ItensI_Unidade.Value <> '') and (C_ItensUnidade.Value <> C_ItensOldUnidade.Value) then
        begin
            {Definindo o Fator da nova Unidade}
            nNovoFator := DMProjeto.GetFatorUnidade(C_ItensItem.Value, C_ItensUnidade.Value);

            if nNovoFator <= 0 then
                begin
                    C_ItensUnidade.Value := C_ItensOldUnidade.Value;
                    exit;
                end
            else
                C_ItensFator.Value := nNovoFator;

            if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
                begin
                    C_ItensPreco.Value := DMProjeto.PrecoMultiUnidade(C_ItensITEM.Value, C_ItensTabelaPreco.Value, Sender.asString, Minimo, PrecoCusto);
                    C_ItensPrecoTabela.Value := C_ItensPreco.Value;
                    C_ItensPromocao.Value := 'N';
                    C_ItensPrecoSemPromocao.Value := C_ItensPreco.Value;
                    if C_ItensPReco.Value > 0 then
                        C_ItensMaxDesconto.Value := 1 - (Minimo / C_ItensPReco.Value)
                    else
                        C_ItensMaxDesconto.Value := 0;
                end
            else
                begin
                    if (C_ItensI_TipoItem.Value in [1, 2, 3]) and
                        LocalizarTabelaItem(C_ItensITEM.Value, C_ItensTabelaPreco.Value, Sender.asString) then
                        begin
                            // Para forçar o CalcFields
                            C_ProdutosPreco.Edit;
                            C_ProdutosPreco.Post;
                            //
                            if C_ProdutosPrecoPrecoPromocao.Value > 0 then
                                begin
                                    C_ItensPrecoTabela.Value := C_ProdutosPrecoPrecoPromocao.asCurrency;
                                    C_ItensPromocao.Value := 'S';
                                    C_ItensPrecoSemPromocao.Value := C_ProdutosPrecoPreco.asCurrency;
                                end
                            else
                                begin
                                    C_ItensPrecoTabela.Value := C_ProdutosPrecoPreco.asCurrency;
                                    C_ItensPromocao.Value := 'N';
                                    C_ItensPrecoSemPromocao.Value := 0;
                                end;
                            C_ItensTabelaPreco.Value := C_ProdutosPrecoTabelaPreco.Value;
                        end
                    else
                        begin
                            C_ItensPrecoTabela.Value := 0;
                            C_ItensTabelaPreco.Value := 0;
                        end;
                    C_ItensPreco.Value := C_ItensPrecoTabela.Value;
                end;
        end;

    C_ItensOldUnidade.Value := C_ItensUnidade.Value;
end;

procedure TDMSaidas.DMComponentAntesDeApagar(Sender: TObject;
    var bCanDelete: Boolean);
begin
    inherited;
    sTipoExclusao := 'Operacao';

end;

function TDMSaidas.GetEstimates;
begin

    result := GetMovimentos('3', '', nTipoOp);

end;

function TDMSaidas.GetSalesOrders;
begin

    result := GetMovimentos('2', '', nTipoOp);

end;

procedure TDMSaidas.ApagarFilhos;
begin
    if C_ItensHasChildren.Value = 'S' then
        with C_SaidasItensFilhos do
            begin
                First;
                while not EOF do
                    Delete;
            end;
end;

procedure TDMSaidas.ApagarMesclagem;
begin
    if C_ItensMesclado.Value = 'S' then
        with C_Mesclagens do
            begin
                First;
                while not EOF do
                    Delete;
            end;
end;

procedure TDMSaidas.C_LotesCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_LotesicEstoqueLote.Value := C_LotesEstoqueLote.asCurrency / IIF(C_ItensFator.asCurrency > 0, C_ItensFator.asCurrency, 1);
end;

procedure TDMSaidas.C_TabelaBAIXAESTOQUEChange(Sender: TField);
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

procedure TDMSaidas.C_TabelaALMOXPADRAOChange(Sender: TField);
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

procedure TDMSaidas.C_SaidasItensFilhosUNIDADEChange(Sender: TField);
var nNovoFator: double;
begin
    inherited;
    if (C_SaidasItensFilhosUNIDADE.Value <> '') and (C_SaidasItensFilhosUNIDADE.Value <> C_SaidasItensFilhosUNIDADEOld.Value) then
        begin
            {Definindo o Fator da nova Unidade}
            {Definindo o Fator da nova Unidade}
            nNovoFator := DMProjeto.GetFatorUnidade(C_SaidasItensFilhosItem.Value, sender.asstring);

            if nNovoFator <= 0 then
                begin
                    C_SaidasItensFilhosUnidade.Value := C_SaidasItensFilhosUnidadeOld.Value;
                    exit;
                end
            else
                C_SaidasItensFilhosFator.Value := nNovoFator;

            //    C_SaidasItensFilhosFator.Value := DMProjeto.GetFatorUnidade( C_SaidasItensFilhosItem.Value, sender.asstring );

            C_SaidasItensFilhosPreco.Value := DMProjeto.PrecoDireto(C_SaidasItensFilhosItem.value, sender.asstring, C_ItensTabelaPreco.value);
        end;

    C_SaidasItensFilhosUnidadeOld.Value := C_SaidasItensFilhosUnidade.Value;
end;

procedure TDMSaidas.C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
    var Accept: Boolean);
begin
    inherited;
    Accept := DMProjeto.PermissoesTabelasPreco(DataSet.FieldByName('TabelaPreco').asInteger);
end;

function TDMSaidas.FirstUsefullTable(nTable: Integer): Integer;
begin
    result := -1;
    if DMProjeto.PermissoesTabelasPreco(nTable) and
        DMProjeto.PermissoesTabelasPreco(nTable, 'U') then
        Result := nTable
    else
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select TabelaPreco from TabelasPreco where Desativado = ''N'' ';
                Open;
                while not EOF do
                    begin
                        nTable := FieldByName('TabelaPreco').asInteger;
                        if DMProjeto.PermissoesTabelasPreco(nTable) and DMProjeto.PermissoesTabelasPreco(nTable, 'U') then
                            result := nTable;

                        Next;
                    end;
                Close;
            end;

    if result < 0 then
        DlgMsg.ShowMsg(2732);
end;

procedure TDMSaidas.C_ItensITEMValidate(Sender: TField);

begin
    inherited;

    if bAlteracao and (C_ItensQtdFaturada.Value > 0) then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select s.Numero, t.Descricao as lkOperacao ' +
                    'from (((saidasitensmescla sim inner join saidasitens si on sim.saidaitem = si.saidaitem) ' +
                    '     inner join saidas s on s.saida = si.saida) ' +
                    '     inner join tiposmovimento t on t.tipomovimento = s.tipomovimento) ' +
                    'where sim.saidaitem_original = :s ';
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

end;

procedure TDMSaidas.AtualizaItensFilhos;
begin
    {Apagando Itens Filhos, mesmo que este item não seja composto, pois pode ter sido uma alteração de um
     item que era composto.}
    ApagarItensFilhos;

    {Só é para carregar os Itens Filhos se:
        1- este é um item composto e não existem filhos carregados ainda;
        2- este item é composto e é diferente do OldItem que estava carregado (troca de item);}
    CarregarItensFilhos;
end;

function TDMSaidas.NomeTabelaPreco(nTable: Integer): string;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Descricao from TabelasPreco where TabelaPreco = :T ';
            Params[0].asInteger := nTable;
            Open;

            result := Fields[0].asString;

            Close;
        end;
end;

procedure TDMSaidas.C_TabelaALIQICMSVENDAChange(Sender: TField);
var
    nItem: integer;
    TmpDS: TClientDataSet;
begin
    inherited;
    if C_Itens.Active and (C_Itens.RecordCount > 0) then
        begin
            nItem := C_Itens.FieldByName('IDITEM').asInteger;
            TmpDS := TClientDataSet.Create(self);
            with TmpDS do
                begin
                    CloneCursor(C_Itens, true);
                    First;
                    while not EOF do
                        begin
                            if (FieldByName('I_TipoItem').asInteger in [1, 2]) and (FieldByName('SituacaoECF').asstring = 'T')
                                and (FieldByName('AliqICMS').asfloat <= DMProjeto.nICMSInterno) then
                                begin
                                    Edit;
                                    FieldByName('AliqICMS').asfloat := C_TabelaALIQICMSVENDA.value;
                                    Post;
                                end;
                            Next;
                        end;
                end;
            TmpDS.Free;

            C_Itens.Locate('IDITEM', nItem, []);

            C_ItensAfterPost(C_Itens);

        end;

end;

procedure TDMSaidas.C_TabelaF_CPF_CNPJValidate(Sender: TField);
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
            if ((FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1)) and (FieldByName('TipoFavorecido').asinteger = 1) then
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

procedure TDMSaidas.C_TabelaVALORIPIChange(Sender: TField);
begin
    inherited;
    if not bFromTotalFinal then
        begin
            bNotCalcImposto := true; //Para evitar que o sistema sobreponha algum valor digitado pelo usuário
            try
                AtualizaTotalFinal;
            finally
                bNotCalcImposto := false;
            end;
        end;
end;

procedure TDMSaidas.C_ItensUNIDADEValidate(Sender: TField);
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
                ParamByName('und').AsString := Sender.AsString;
                Open;
                if RecordCount < 1 then
                    begin
                        Close;
                        DlgMsg.ShowMsg(8027);
                        raise Exception.Create('@@');
                    end;
            end;
end;

procedure TDMSaidas.C_ProdutosPrecoCalcFields(DataSet: TDataSet);
begin
    inherited;
    if DataSet.FieldByName('PrecoPromocao').AsCurrency > 0 then
        DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('PrecoPromocao').AsCurrency
    else
        DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('Preco_Normal').AsCurrency;
    // Adicionando as cotações dos indexadores mais atualizados...
    if (C_Itens.Active) and (C_Itens.FieldByName('I_Indexador').AsVariant <> null) then
        begin
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'select valor from cotacoes ' +
                        'where data = (select max(data) from cotacoes where indexador = :i) ' +
                        'and indexador = :i ';
                    ParamByName('i').AsInteger := C_Itens.FieldByName('I_Indexador').AsInteger;
                    Open;
                    if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                        begin
                            DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('Preco').AsCurrency / Fields[0].AsFloat;
                            //        DataSet.FieldByName('icPrecoMinimo').AsCurrency := RoundTo( DataSet.FieldByName('icPrecoMinimo').AsCurrency / Fields[0].AsFloat, -2 );
                        end;
                    Close;
                end;
        end;

end;

procedure TDMSaidas.C_TabelaPCOMISSAOValidate(Sender: TField);
begin
    inherited;
    if (Sender.AsVariant <> null) and (Sender.Value > 0) and (not DMProjeto.DlgAutorizacao.ExecuteX(sForm, 'PComissao', '', False,
        'Cliente:' + C_TabelaF_NOME.AsString + #13#10,
        C_TabelaFAVORECIDO.AsInteger,
        'DlgSitCliente')) then
        raise Exception.Create('@@');
end;

procedure TDMSaidas.C_TabelaBAIXAESTOQUEFISCALChange(Sender: TField);
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

procedure TDMSaidas.C_ItensSITUACAOECFChange(Sender: TField);
begin
    inherited;
    if (DMProjeto.C_LocalizarFav.FieldByName('DECRETO24755').AsString = 'S') then
        begin
            C_ItensCST.value := '040';
        end
    else
        begin
            if C_ItensSituacaoECF.value = 'F' then
                begin
                    if (bDECRETO25905) then
                        C_ItensCST.value := '030'
                    else
                        C_ItensCST.value := '010';
                end
            else if C_ItensSituacaoECF.value = 'I' then
                C_ItensCST.value := '040'
            else if C_ItensSituacaoECF.value = 'N' then
                C_ItensCST.value := '040'
            else
                C_ItensCST.value := '000';

            if (C_TabelaPossuiICMS.value = 'S') then
                if ((C_ItensSituacaoECF.value <> 'T') and (C_ItensSituacaoECF.value <> 'S')) then
                    C_ItensAliqICMS.Value := 0
                else if C_ItensSituacaoECF.Value = 'T' then
                    C_ItensAliqICMS.Value := DMProjeto.nICMSInterno
                else if C_ItensSituacaoECF.Value = 'S' then
                    C_ItensAliqICMS.Value := DMProjeto.nISS;
        end;
end;

procedure TDMSaidas.C_TabelaIDMESTREChange(Sender: TField);
begin
    inherited;
    if C_TabelaLOCALENTREGA.Value > 0 then
        C_LocaisEntrega.Locate('Entrega', C_TabelaLocalEntrega.Value, []);
end;

function TDMSaidas.MensagemItens;
var Q_MensagemItem: TIBQuery;
    sMsg: string;
begin
    Q_MensagemItem := TIBQuery.Create(Self);
    Q_MensagemItem.Database := DMProjeto.DB_Projeto;
    with Q_MensagemItem do
        begin
            Close;
            Sql.Text := 'SELECT distinct m.descricao FROM  SaidasITENS si ' +
                ' inner join itens i on i.item = si.item ' +
                ' inner join mensagensoperacoes m on m.mensagemoperacao = i.mensagem ' +
                ' where si.saida = ' + IntToStr(Id);
            Open;
            while not Eof do
                begin
                    sMsg := sMsg + Fields[0].AsString + ',';
                    Next;
                end;
            Close;
            sMsg := Copy(sMsg, 1, Length(sMsg) - 1);
            sMsg := Copy(sMsg, 1, 2000);
            Result := sMsg;
            //    Sql.Text := 'update saidas s set s.mensagemitem = '''+sMsg+''' where s.saida = '+IntToStr(Id);
            //    Prepare;
            //    ExecSql;
        end;
end;

procedure TDMSaidas.DMComponentGravar5_Terminar(Sender: TObject);
begin
    inherited;
    if not (C_Tabela.State in [dsEdit, dsBrowse]) then
        C_Tabela.Edit;
    C_TabelaMENSAGEMITEM.Value := MensagemItens(C_TabelaIDMESTRE.Value);
    sNumCarteira := '';
    bGeraBoleto := False;

    if (DMProjeto.bMovimentarProdutoIdentificado) then
        DlgItensIdentificacaoSaida.FaturaItensSaida(C_TabelaIDMESTRE.Value, InttoStr(C_TabelaPDV.Value));

    DMProjeto.nIdItem := 0;
    DMProjeto.bMovimentarProdutoIdentificado := False;
    idOficina := 0;
    idMontagemProduto := 0;
end;

procedure TDMSaidas.C_ItensPDESCONTOChange(Sender: TField);
var nDesconto: double;
begin
    inherited;
    nDesconto := -(C_ItensPdesconto.Value / 100);
    //  C_ItensPreco.Value := C_ItensPrecoTabela.Value * (1 + nDesconto);
    C_ItensPreco.Value := C_ItensPreco.Value * (1 + nDesconto);
end;

procedure TDMSaidas.UpdateNossoNumero(carteira: integer);
var
    Q_SQL: TIBQuery;
    sNossoNumero: string;
    iNossoNumero: real;
begin
    Q_SQL := TIBQuery.Create(self);
    with Q_SQL do
        begin
            DataBase := DMProjeto.DB_Projeto;
            Close;
            SQL.Text := ' select nossonumero from carteiras where carteira = ' + inttostr(carteira);
            Open;
            sNossoNumero := Fields[0].AsString;
            Close;
            iNossoNumero := StrToFloat(sNossoNumero) + 1;
            SQL.clear;
            SQL.Text := ' update carteiras set nossonumero = ' + floattostr(iNossoNumero) + '  where carteira = ' + inttostr(carteira);
            Open;

        end;
    Q_SQL.Free;
end;

function TDMSaidas.SelectNossoNumero(carteira: integer): string;
var
    Q_SQL: TIBQuery;
    sNossoNumero: string;
begin
    Q_SQL := TIBQuery.Create(self);
    with Q_SQL do
        begin
            DataBase := DMProjeto.DB_Projeto;
            Close;
            SQL.Text := ' select nossonumero from carteiras where carteira = ' + inttostr(carteira);
            Open;
            sNossoNumero := Fields[0].AsString;
            Close;

            Result := sNossoNumero;

        end;
    Q_SQL.Free;
end;

{ Felipe -  Funcao que retorna o digito verificador do nosso numero. Utilizada somente para
            boletos do banco Bradesco. O digito verificador retornado é gravado no campo
            DIGITONOSSONUMERO da tabela de TITULOSARECEBER }

function TDMSaidas.CalculaDVNossoNumeroBradesco(carteira: string; nossonumero: string): string;
var
    bMultiplicador: integer;
    nResultado: integer;
    nParcial: integer;
    i: integer;
begin
    bMultiplicador := 2;
    nParcial := 0;

    while Length(nossonumero) < 11 do
        nossonumero := '0' + nossonumero;

    nossonumero := carteira + nossonumero;

    for i := Length(nossonumero) downto 1 do
        begin
            nParcial := nParcial + (StrtoInt(Copy(nossonumero, i, 1)) * bMultiplicador);

            if (bMultiplicador < 7) then
                Inc(bMultiplicador)
            else
                bMultiplicador := 2;
        end;

    nResultado := (nParcial mod 11);

    if (nResultado < 10) and (nResultado <> 1) and (nResultado <> 0) then
        Result := InttoStr(11 - nResultado)
    else if (nResultado = 1) then
        Result := 'P'
    else if (nResultado = 0) then
        Result := '0';
end;

{
        Felipe
                Verifica o StatusNfe.
                Se o usuário estiver em relatório de vendas ou pedidos, ao tentar abrir a saída, poderá ser exibido uma
                janela informando que a Tabela Padrão da operação foi alterada, e se deseja aplicar a alteração para os
                Itens daquela Saída.
                Contudo caso a Nota Fiscal esteja com STATUS 100, 101, 135 e 155 essa nota não poderá sofrer alterações
                já que está validada e autorizada pela Receita.

                Se a venda não atender nenhuma das condições, a mensagem é exibida, e daí fica a critério
                do usuário escolher se vai aplicar ou não a alteração para os Itens.

                Obs: Isso só ocorre para empresas que trabalham com mais de uma tabela de preço.
}

function TDMSaidas.ConsultaStatusSaida(idSaida, empresa, pdv: integer): boolean;
begin
    try
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'select rr.statusnfe ' +
                    ' from saidas s inner join recibosnfe rr on s.saida = rr.idmestre and s.tipopadrao = rr.tipopadrao ' +
                    ' where s.saida = :idSaida and s.empresa = :empresa and s.pdv = :pdv';
                ParamByName('idSaida').AsInteger := idSaida;
                ParamByName('empresa').AsInteger := empresa;
                ParamByName('pdv').AsInteger := pdv;
                Open;
                if RecordCount > 0 then
                    begin
                        if FieldByName('statusnfe').AsInteger in [100, 101, 135, 150, 155] then
                            Result := False
                        else
                            Result := True;
                    end
                else
                    Result := True;

                Close;
            end;
    except
        Application.MessageBox('Ocorreu um erro ao tentar consultar o Status da Saída, favor contactar o Suporte.', 'Erro', MB_ICONERROR);
        Result := True;
    end;
end;

end.

