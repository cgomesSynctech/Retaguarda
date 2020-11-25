unit DM_Itens;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery, IBEvents;

type

    TDMItens = class(TDMManutencao)
        C_TabelaITEM: TIntegerField;
        C_TabelaTIPOITEM: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAOCOMPRA: TStringField;
        C_TabelaGRUPO: TIntegerField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaCUSTOMEDIO: TFloatField;
        C_TabelaULTIMOFORNECEDOR: TIntegerField;
        C_TabelaQTDEMINIMO: TBCDField;
        C_TabelaQTDEMAXIMO: TBCDField;
        C_TabelaPONTOPEDIDO: TBCDField;
        C_TabelaPERCENTUAL: TBCDField;
        C_TabelaDESATIVADO: TStringField;
        C_TabelaESTOQUE: TBCDField;
        C_TabelaIMPORTACAO: TIntegerField;
        C_TabelaCOMISSAO: TBCDField;
        C_TabelaDESCONTOMAXIMO: TBCDField;
        C_TabelaCONTA_VENDA: TIntegerField;
        C_TabelaCONTA_CUSTO: TIntegerField;
        C_TabelaCONTA_INVENT: TIntegerField;
        C_TabelaFABRICANTE: TIntegerField;
        C_TabelaBALANCO: TStringField;
        C_TabelaCAMPO01: TStringField;
        C_TabelaCAMPO02: TStringField;
        C_TabelaCAMPO03: TStringField;
        C_TabelaCAMPO04: TStringField;
        C_TabelaCAMPO05: TStringField;
        C_TabelaPRECOCOMPRA: TFloatField;
        C_TabelaCAMPO06: TStringField;
        C_TabelaCUSTOCONTABIL: TFloatField;
        C_TabelaISITEMCOMPRA: TStringField;
        C_TabelaCAMPO07: TStringField;
        C_TabelaCAMPO08: TStringField;
        C_TabelaCAMPO09: TStringField;
        C_TabelaCUSTODESPESAS: TBCDField;
        C_TabelaCAMPO10: TStringField;
        C_TabelaFOTO: TStringField;
        C_TabelaPROMOCAO: TStringField;
        C_TabelaFATORLUCRO: TFloatField;
        C_TabelaHASCHILDREN: TStringField;
        C_TabelaREFERENCIA: TStringField;
        C_TabelaSEMLUCRO: TFloatField;
        C_TabelaPRI_CUSTOMEDIO: TFloatField;
        C_TabelaPRI_CUSTOCONTABIL: TFloatField;
        C_TabelaPRI_PRECOCOMPRA: TFloatField;
        C_TabelaDATACADASTRO: TDateField;
        C_TabelaCUSTOPRODUTO: TFloatField;
        C_TabelaCONTROLEVALIDADE: TStringField;
        C_TabelaTEMPOMEDIOVALIDADE: TIntegerField;
        C_TabelaFORNECPREFERENCIA: TIntegerField;
        C_TabelaREVENDA: TStringField;
        C_TabelaULTIMACOMPRA: TDateField;
        C_TabelaCOMPENSACUSTO: TFloatField;
        C_TabelaCOMLUCRO: TFloatField;
        C_TabelaUNIDADEENTRADA: TStringField;
        C_TabelaUNIDADECARGA: TStringField;
        C_TabelaUNIDADEVAREJO: TStringField;
        C_TabelaULTQTDECOMPRA: TBCDField;
        C_TabelaUNIDADEMINIMA: TIntegerField;
        C_TabelaFATORUNDVENDA: TFloatField;
        C_TabelaFATORUNDCOMPRA: TFloatField;
        C_TabelaULTIMAVENDA: TDateField;
        C_TabelaABC: TStringField;
        C_TabelaDESCRICAOTECNICA: TStringField;
        C_TabelaREDUCAOCST: TBCDField;
        C_TabelaIPICOMPRA: TBCDField;
        C_TabelaIPIVENDA: TBCDField;
        C_TabelaPESOBRUTO: TBCDField;
        C_TabelaPESOLIQUIDO: TBCDField;
        C_TabelaALIQICMS: TBCDField;
        C_TabelaSITUACAOECF: TStringField;
        C_TabelaTVA: TBCDField;
        C_TabelaTVAFONTE: TBCDField;
        C_TabelaCLASFISCAL: TStringField;
        C_TabelaLEITURAATUAL: TBCDField;
        C_TabelaLEITURAMAXIMA: TBCDField;
        C_TabelaIDENTIFICACAO: TStringField;
        C_TabelaENCERRANTE: TStringField;
        C_TabelaAGENDARCONTATO: TStringField;
        C_TabelaPISCOFINS: TStringField;
        C_TabelaREDUCAOCSTENTRADA: TBCDField;
        C_TabelaPRECO: TBCDField;
        C_TabelaNOMEULTIMOFORNECEDOR: TStringField;
        C_TabelaNOMEFORNECPREFERENCIA: TStringField;
        Q_Contas: TIBQuery;
        P_Contas: TDataSetProvider;
        C_Contas: TClientDataSet;
        C_ContasCONTA: TIntegerField;
        C_ContasDESCRICAO: TStringField;
        C_ContasDESCTIPO: TStringField;
        C_ContasSALDO: TBCDField;
        C_ContasCONTAPAI: TIntegerField;
        C_ContasTIPOCONTA: TIntegerField;
        C_ContasCODIGOREDUZIDO: TStringField;
        Q_Unidades: TIBQuery;
        P_Unidades: TDataSetProvider;
        C_Unidades: TClientDataSet;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_UnidadesCOMQTD: TStringField;
        Q_Fabricantes: TIBQuery;
        P_Fabricantes: TDataSetProvider;
        C_Fabricantes: TClientDataSet;
        C_FabricantesFABRICANTE: TIntegerField;
        C_FabricantesDESCRICAO: TStringField;
        Q_TiposItens: TIBQuery;
        Q_TiposItensTIPOITEM: TIntegerField;
        Q_TiposItensDESCRICAO: TIBStringField;
        P_TiposItens: TDataSetProvider;
        C_TiposItens: TClientDataSet;
        C_TiposItensTIPOITEM: TIntegerField;
        C_TiposItensDESCRICAO: TStringField;
        Q_TiposItensDS: TDataSource;
        Q_Grupos: TIBQuery;
        C_Grupos: TClientDataSet;
        C_GruposGRUPO: TIntegerField;
        C_GruposCODIGO: TStringField;
        C_GruposDESCRICAOGRUPO: TStringField;
        C_GruposTIPOITEM: TIntegerField;
        C_GruposDESCONTOMAXIMO: TBCDField;
        C_GruposCOMISSAO: TBCDField;
        C_GruposCUSTODESPESAS: TBCDField;
        C_GruposFATORLUCRO: TBCDField;
        C_GruposCST: TStringField;
        C_GruposREDUCAOCST: TBCDField;
        C_GruposALIQICMS: TBCDField;
        C_GruposSITUACAOECF: TStringField;
        C_GruposTVA: TBCDField;
        C_GruposTVAFONTE: TBCDField;
        C_GruposDS: TDataSource;
        C_TiposItensQ_Grupos: TDataSetField;
        C_TabelalkTipoItem: TStringField;
        C_TabelalkGrupoItem: TStringField;
        C_TabelalkFabricante: TStringField;
        C_TabelalkContaVenda: TStringField;
        C_TabelalkContaCusto: TStringField;
        C_TabelalkContaInvent: TStringField;
        C_TabelalkUnidadeVarejo: TStringField;
        C_TabelalkUnidadeCompra: TStringField;
        C_TabelalkUnidadeCarga: TStringField;
        Q_ProdutosPreco: TIBQuery;
        C_TabelaQ_ProdutosPreco: TDataSetField;
        C_ProdutosPreco: TClientDataSet;
        C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
        C_ProdutosPrecoITEM: TIntegerField;
        C_ProdutosPrecoTABELAPRECO: TIntegerField;
        C_ProdutosPrecoPRECO: TBCDField;
        C_ProdutosPrecoPRECOMANUAL: TStringField;
        C_ProdutosPrecoTIPOUPDATE: TStringField;
        C_ProdutosPrecoUNIDADE: TStringField;
        C_ProdutosPrecoID_ALTPRECO: TStringField;
        C_ProdutosPrecoHORA_ALTPRECO: TTimeField;
        C_ProdutosPrecoPRECOPROMOCAO: TBCDField;
        C_ProdutosPrecoEXPORTACAO: TStringField;
        C_ProdutosPrecoPERCENTUAL: TBCDField;
        C_ProdutosPrecoBASEADA: TStringField;
        U_ProdutosPreco: TIBUpdateSQL;
        Q_ItensUnidades: TIBQuery;
        C_ItensUnidades: TClientDataSet;
        C_ItensUnidadesEXPORTACAO: TStringField;
        C_ItensUnidadesFATOR: TFloatField;
        C_ItensUnidadesHERDADO: TStringField;
        C_ItensUnidadesITEM: TIntegerField;
        C_ItensUnidadesITEMUNIDADE: TIntegerField;
        C_ItensUnidadesPERCENTUAL: TBCDField;
        C_ItensUnidadesPERCENTUALMINIMO: TBCDField;
        C_ItensUnidadesPRECOMANUAL: TBCDField;
        C_ItensUnidadesUNIDADE: TStringField;
        C_ProdutosPrecoDS: TDataSource;
        U_ItensUnidades: TIBUpdateSQL;
        C_ItensUnidadesDS: TDataSource;
        IBEventos_Itens: TIBEvents;
        Q_TabelasPreco: TIBQuery;
        Q_TabelasPrecoTABELAPRECO: TIntegerField;
        Q_TabelasPrecoDESCRICAO: TIBStringField;
        Q_TabelasPrecoPERCENTUAL: TIBBCDField;
        Q_TabelasPrecoDESATIVADO: TIBStringField;
        Q_TabelasPrecoBASEADA: TIBStringField;
        P_TabelasPreco: TDataSetProvider;
        C_TabelasPreco: TClientDataSet;
        C_TabelasPrecoTABELAPRECO: TIntegerField;
        C_TabelasPrecoDESCRICAO: TStringField;
        C_TabelasPrecoPERCENTUAL: TBCDField;
        C_TabelasPrecoDESATIVADO: TStringField;
        C_TabelasPrecoBASEADA: TStringField;
        Q_CSTs: TIBQuery;
        P_CSTs: TDataSetProvider;
        C_CSTs: TClientDataSet;
        C_CSTsCST: TStringField;
        C_CSTsDESCRICAO: TStringField;
        C_SitECF: TClientDataSet;
        C_SitECFSITUACAOECF: TStringField;
        C_SitECFDESCRICAO: TStringField;
        P_SitECF: TDataSetProvider;
        Q_SitECF: TIBQuery;
        C_TabelaicValorEstoqueTotal: TFloatField;
        C_TabelaicDespesaFixa: TCurrencyField;
        C_TabelaicImpostosFederais: TCurrencyField;
        C_TabelaicEncargosCartoes: TCurrencyField;
        C_TabelaicCustoDespesas: TCurrencyField;
        C_TabelaicComissaoAplic: TCurrencyField;
        C_TabelaicComissao: TCurrencyField;
        C_TabelaicDescontoMaximo: TCurrencyField;
        C_TabelaicFatorLucro: TFloatField;
        C_TabelaicICMSAplicado: TBCDField;
        C_TabelaicSituacaoECF: TStringField;
        C_TabelaicCST: TStringField;
        C_TabelaicTVA: TBCDField;
        C_TabelaicTVAFonte: TBCDField;
        C_TabelaicAliqICMS: TBCDField;
        C_TabelaicReducaoCST: TBCDField;
        C_TabelalkSitECF: TStringField;
        C_TabelalkCST: TStringField;
        C_ProdutosPrecolkTabelaPreco: TStringField;
        C_ItensUnidadeslkUnidade: TStringField;
        Q_SQL: TIBQuery;
        C_ProdutosPrecoicPrecoMinimo: TCurrencyField;
        C_ProdutosPreco_icSelecionado: TIntegerField;
        C_TabelaicPrecoCalc: TBCDField;
        C_TabelaicPrecoCalcDescMax: TBCDField;
        C_TabelaicFator: TFloatField;
        C_TabelaicFatorMult: TCurrencyField;
        C_TabelaicMenorPrecoVenda: TCurrencyField;
        C_ContasDS: TDataSource;
        C_TabelaUNIDADE: TStringField;
        C_TabelalkUnidade: TStringField;
        C_UnidadesDS: TDataSource;
        Q_OutrasUnds: TIBQuery;
        P_OutrasUnds: TDataSetProvider;
        C_OutrasUnds: TClientDataSet;
        StringField1: TStringField;
        StringField2: TStringField;
        StringField3: TStringField;
        C_OutrasUndsDS: TDataSource;
        Q_ItensFilhos: TIBQuery;
        U_ItensFilhos: TIBUpdateSQL;
        C_ItensFilhos: TClientDataSet;
        C_ItensFilhoslkUnidade: TStringField;
        C_ItensFilhosicSubTotalPreco: TBCDField;
        C_ItensFilhosicSubTotal: TCurrencyField;
        C_ItensFilhosicPreco: TBCDField;
        C_ItensFilhosicCustoMedio: TBCDField;
        C_ItensFilhosDS: TDataSource;
        C_TabelaQ_ItensFilhos: TDataSetField;
        C_ItensFilhosIDFILHO: TIntegerField;
        C_ItensFilhosITEM: TIntegerField;
        C_ItensFilhosSUBITEM: TIntegerField;
        C_ItensFilhosQUANTIDADE: TBCDField;
        C_ItensFilhosUNIDADE: TStringField;
        C_ItensFilhosFATOR: TFloatField;
        C_ItensFilhosCODIGO: TStringField;
        C_ItensFilhosDESCRICAO: TStringField;
        C_ItensFilhosCUSTOMEDIO: TFloatField;
        C_ItensFilhosFATORUNDPRECOVENDA: TFloatField;
        C_ItensFilhosPRECO: TBCDField;
        C_ItensFilhosOLDFATOR: TFloatField;
        C_ItensFilhosUNIDADEOLD: TStringField;
        C_TabelaDATA_HORA_ALTERACAO: TDateTimeField;
        Q_Master2DS: TDataSource;
        C_TabelaQ_ItensUnidades: TDataSetField;
        C_TabelaicCusto: TBCDField;
        Q_ItensAlmox: TIBQuery;
        C_TabelaQ_ItensAlmox: TDataSetField;
        C_ItensAlmox: TClientDataSet;
        C_ItensAlmoxITEMALMOX: TIntegerField;
        C_ItensAlmoxITEM: TIntegerField;
        C_ItensAlmoxALMOXARIFADO: TIntegerField;
        C_ItensAlmoxESTOQUEALMOX: TBCDField;
        C_ItensAlmoxDESCRICAO: TStringField;
        U_ItensAlmox: TIBUpdateSQL;
        C_ItensAlmoxDS: TDataSource;
        C_TabelaGRUPOCOMISSAO: TIntegerField;
        Q_GruposComissoes: TIBQuery;
        P_GruposComissoes: TDataSetProvider;
        C_GruposComissoes: TClientDataSet;
        C_GruposComissoesGRUPOCOMISSAO: TIntegerField;
        C_GruposComissoesDESCRICAO: TStringField;
        C_TabelalkGruposComissoes: TStringField;
        C_TabelaINDEXADOR: TIntegerField;
        Q_Index: TIBQuery;
        P_Index: TDataSetProvider;
        C_Index: TClientDataSet;
        C_IndexINDEXADOR: TIntegerField;
        C_IndexDESCRICAO: TStringField;
        C_TabelalkIndexador: TStringField;
        C_TabelaLOCALIZACAO: TIntegerField;
        Q_Localizacoes: TIBQuery;
        P_Localizacoes: TDataSetProvider;
        C_Localizacoes: TClientDataSet;
        C_LocalizacoesLOCALIZACAO: TIntegerField;
        C_LocalizacoesDESCRICAO: TStringField;
        C_TabelalkLocalizacao: TStringField;
        C_TabelaESTOQUEFISCAL: TBCDField;
        C_TabelaicDIFESTOQUE: TFloatField;
        C_TabelaCUSTOMANUAL: TBCDField;
        Q_TabelasGrupos: TIBQuery;
        Q_TribFederal: TIBQuery;
        P_TribFederal: TDataSetProvider;
        C_TribFederal: TClientDataSet;
        C_TribFederalIDTRIBFEDERAL: TIntegerField;
        C_TribFederalDESCRICAO: TStringField;
        C_TabelaIDTRIBFEDERAL: TIntegerField;
        C_TribFederalDs: TDataSource;
        C_ItensUnidadesQTDEMBALAGEM: TFloatField;
        C_TabelaQTDMINGONDOLA: TBCDField;
        C_TabelaESTOQUEVOLUME: TBCDField;
        Q_ServicosPreco: TIBQuery;
        C_ServicosPreco: TClientDataSet;
        IntegerField1: TIntegerField;
        U_ServicosPreco: TIBUpdateSQL;
        C_ServicosPrecoDs: TDataSource;
        C_TabelaQ_ServicosPreco: TDataSetField;
        C_ServicosPrecoSERVICOPRECO: TIntegerField;
        C_ServicosPrecoITEM: TIntegerField;
        C_ServicosPrecoSERVICO: TIntegerField;
        C_ServicosPrecoPRECO: TBCDField;
        Q_Servicos: TIBQuery;
        C_Servicos: TClientDataSet;
        C_ServicosDs: TDataSource;
        P_Servicos: TDataSetProvider;
        C_ServicosITEM: TIntegerField;
        C_ServicosDESCRICAO: TStringField;
        C_ServicosPrecolkpServico: TStringField;
        P_Grupos: TDataSetProvider;
        Q_CstPisCofins: TIBQuery;
        P_CstPisCofins: TDataSetProvider;
        C_CstPisCofins: TClientDataSet;
        StringField5: TStringField;
        Q_CstsIPI: TIBQuery;
        P_CstsIPI: TDataSetProvider;
        C_CstsIPI: TClientDataSet;
        StringField4: TStringField;
        C_CstsIPICSTIPI: TStringField;
        Q_Generos: TIBQuery;
        P_Generos: TDataSetProvider;
        C_Generos: TClientDataSet;
        StringField6: TStringField;
        C_GenerosGENERO: TStringField;
        Q_Origem: TIBQuery;
        P_Origem: TDataSetProvider;
        C_Origem: TClientDataSet;
        StringField7: TStringField;
        C_OrigemORIGEMMERCADORIA: TIntegerField;
        Q_MODALIDADESBCICMS: TIBQuery;
        P_MODALIDADESBCICMS: TDataSetProvider;
        C_MODALIDADESBCICMS: TClientDataSet;
        StringField8: TStringField;
        C_MODALIDADESBCICMSMODALIDADEBCICMS: TIntegerField;
        Q_MODALIDADESBCICMSST: TIBQuery;
        P_MODALIDADESBCICMSST: TDataSetProvider;
        C_MODALIDADESBCICMSST: TClientDataSet;
        StringField9: TStringField;
        C_MODALIDADESBCICMSSTMODALIDADEBCICMSST: TIntegerField;
        C_TabelaORIGEMMERCADORIA: TIntegerField;
        C_TabelaMODALIDADEBCICMS: TIntegerField;
        C_TabelaMODALIDADEBCICMSST: TIntegerField;
        C_TabelaALIQPIS: TBCDField;
        C_TabelaALIQCOFINS: TBCDField;
        C_TabelaCSTIPI: TStringField;
        C_TabelaGENERO: TStringField;
        C_TabelalkCSTPISCONFINS: TStringField;
        C_TabelalkCSTSIPI: TStringField;
        C_TabelalkGeneros: TStringField;
        C_TabelalkOrigem: TStringField;
        C_TabelalkModalidadeICMS: TStringField;
        C_CstPisCofinsCSTPISCOFINS: TStringField;
        C_TabelaCSTPISCOFINS: TStringField;
        C_TabelalkModaledadeICMSST: TStringField;
        C_TabelaALIQIR: TBCDField;
        C_TabelaALIQSS: TBCDField;
        C_Msn: TClientDataSet;
        P_Msn: TDataSetProvider;
        Q_Msn: TIBQuery;
        C_MsnMENSAGEMOPERACAO: TIntegerField;
        C_MsnDESCRICAO: TStringField;
        C_MsnTIPO: TStringField;
        C_TabelaMENSAGEM: TIntegerField;
        C_TabelalkMensagem: TStringField;
        Q_PropagaGrupo: TIBQuery;
        Q_PropagaGrupoDs: TDataSource;
        Q_PropagaGrupoGRUPO: TIntegerField;
        Q_PropagaGrupoGRUPOPAI: TIntegerField;
        Q_PropagaGrupoCODIGO: TIBStringField;
        Q_PropagaGrupoDESCRICAOGRUPO: TIBStringField;
        Q_PropagaGrupoTIPOITEM: TIntegerField;
        Q_PropagaGrupoIMPORTACAO: TIntegerField;
        Q_PropagaGrupoFOTO: TIBStringField;
        Q_PropagaGrupoDESCONTOMAXIMO: TIBBCDField;
        Q_PropagaGrupoCOMISSAO: TIBBCDField;
        Q_PropagaGrupoTAXINCLUSO: TIBStringField;
        Q_PropagaGrupoPTAXINCLUSO: TIBBCDField;
        Q_PropagaGrupoCUSTODESPESAS: TIBBCDField;
        Q_PropagaGrupoFATORLUCRO: TIBBCDField;
        Q_PropagaGrupoTAXAVEL: TIBStringField;
        Q_PropagaGrupoDESATIVADO: TIBStringField;
        Q_PropagaGrupoREDUCAOCST: TIBBCDField;
        Q_PropagaGrupoALIQICMS: TIBBCDField;
        Q_PropagaGrupoSITUACAOECF: TIBStringField;
        Q_PropagaGrupoTVA: TIBBCDField;
        Q_PropagaGrupoTVAFONTE: TIBBCDField;
        Q_PropagaGrupoDTHALTERACAO: TDateTimeField;
        Q_PropagaGrupoMODALIDADEBCICMS: TIntegerField;
        Q_PropagaGrupoMODALIDADEBCICMSST: TIntegerField;
        Q_PropagaGrupoCSTPISCOFINS: TIBStringField;
        Q_PropagaGrupoALIQPIS: TIBBCDField;
        Q_PropagaGrupoALIQCOFINS: TIBBCDField;
        Q_PropagaGrupoCSTIPI: TIBStringField;
        Q_PropagaGrupoGENERO: TIBStringField;
        Q_PropagaGrupoALIQIR: TIBBCDField;
        Q_PropagaGrupoALIQSS: TIBBCDField;
        Q_PropagaGrupoIDTRIBFEDERAL: TIntegerField;
        Q_PropagaGrupoORIGEMMERCADORIA: TIntegerField;
        Q_PropagaGrupoIPICOMPRA: TIBBCDField;
        Q_PropagaGrupoIPIVENDA: TIBBCDField;
        Q_ExportacaoMabel: TIBQuery;
        Q_PrincipioAtivo: TIBQuery;
        Q_PrincipioAtivoDs: TDataSource;
        C_TabelaPRINCIPIOATIVO: TIntegerField;
        C_PrincipioAtivo: TClientDataSet;
        P_PrincipioAtivo: TDataSetProvider;
        C_PrincipioAtivoPRINCIPIOATIVO: TIntegerField;
        C_PrincipioAtivoDESCRICAO: TStringField;
        C_TabelalkPrincipioAtivo: TStringField;
        Q_TabelaServicos: TIBQuery;
        P_TabelaServicos: TDataSetProvider;
        C_TabelaServicos: TClientDataSet;
        C_TabelaServicosDs: TDataSource;
        C_TabelaServicosSERVICO: TIntegerField;
        C_TabelaServicosDESCRICAO: TStringField;
        C_TabelaTIPOSERVICO: TIntegerField;
        C_TabelalkTipoServico: TStringField;
        C_TabelaIPPT: TStringField;
        C_TabelaCODIGOBARRAS: TStringField;
        C_TabelaIAT: TStringField;
        C_TabelaCST: TStringField;
        Q_PropagaGrupoCST: TIBStringField;
        C_TabelaCSTPISCOFINSSAIDA: TStringField;
        C_TabelaNATURAZARECEITAPISCOFINS: TIntegerField;
        C_TabelaALIQPISSAIDA: TFloatField;
        C_TabelaALIQCOFINSSAIDA: TFloatField;
        C_TabelaVINCULOCREDITOPISCOFINS: TStringField;
        C_TabelaBASECREDITOPISCOFINS: TStringField;
        Q_CstPisCofinsSAIDA: TIBQuery;
        P_CstPisCofinsSAIDA: TDataSetProvider;
        C_CstPisCofinsSAIDA: TClientDataSet;
        Q_VinculoCreditoPisCofins: TIBQuery;
        P_VinculoCreditoPisCofins: TDataSetProvider;
        C_VinculoCreditoPisCofins: TClientDataSet;
        Q_BaseCreditoPisCofins: TIBQuery;
        P_BaseCreditoPisCofins: TDataSetProvider;
        C_BaseCreditoPisCofins: TClientDataSet;
        C_BaseCreditoPisCofinsCODIGO: TStringField;
        C_BaseCreditoPisCofinsDESCRICAO: TStringField;
        C_VinculoCreditoPisCofinsCODIGO: TStringField;
        C_VinculoCreditoPisCofinsDESCRICAO: TStringField;
        C_CstPisCofinsSAIDACSTPISCOFINS: TStringField;
        C_CstPisCofinsSAIDADESCRICAO: TStringField;
        Q_NaturezaReceitaPisCofins: TIBQuery;
        P_NaturezaReceitaPisCofins: TDataSetProvider;
        C_NaturezaReceitaPisCofins: TClientDataSet;
        C_TabelalkVinculoCreditPisCofins: TStringField;
        C_TabelalkBaseCreditoPisCofins: TStringField;
        C_TabelalkNaturezaReceitaPisCofins: TStringField;
        C_CstPisCofinsSAIDADs: TDataSource;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelalkCSTPISCOFINSSAIDA: TStringField;
        C_NaturezaReceitaPisCofinsID: TIntegerField;
        C_NaturezaReceitaPisCofinsDESCRICAO: TStringField;
        C_NaturezaReceitaPisCofinsCST: TStringField;
        Q_PropagaGrupoCSTPISCOFINSSAIDA: TIBStringField;
        Q_PropagaGrupoNATURAZARECEITAPISCOFINS: TIntegerField;
        Q_PropagaGrupoALIQPISSAIDA: TFloatField;
        Q_PropagaGrupoALIQCOFINSSAIDA: TFloatField;
        C_GenerosCODDESC: TStringField;
        C_MODALIDADESBCICMSCODDESC: TStringField;
        C_MODALIDADESBCICMSSTCODDESC: TStringField;
        C_CstsIPICODDESC: TStringField;
        C_TabelaCODIF: TStringField;
        C_TabelaCODANP: TStringField;
        C_TabelaPESAVEL: TStringField;
        C_TabelaITEMMVA: TIntegerField;
        Q_MVA: TIBQuery;
        C_MVA: TClientDataSet;
        C_MVADS: TDataSource;
        P_MVA: TDataSetProvider;
        C_MVANCMSH: TStringField;
        C_MVADESCRICAO: TStringField;
        C_MVAMVAORIGINAL: TBCDField;
        C_MVAMVA4: TBCDField;
        C_MVAMVA7: TBCDField;
        C_MVAMVA12: TBCDField;
        C_MVAITEMMVA: TIntegerField;
        C_TabelalkMva: TStringField;
        Q_ItensCodigos: TIBQuery;
        C_ItensCodigos: TClientDataSet;
        U_ItensCodigos: TIBUpdateSQL;
        C_ItensCodigosDS: TDataSource;
        C_TabelaQ_ItensCodigos: TDataSetField;
        C_ItensCodigosITEM: TIntegerField;
        C_ItensCodigosCODIGO: TStringField;
        C_ItensCodigosUNIDADE: TStringField;
        C_ItensCodigoslkUnidade: TStringField;
        C_GruposGRUPOPAI: TIntegerField;
        C_GruposIMPORTACAO: TIntegerField;
        C_GruposFOTO: TStringField;
        C_GruposTAXINCLUSO: TStringField;
        C_GruposPTAXINCLUSO: TBCDField;
        C_GruposTAXAVEL: TStringField;
        C_GruposDESATIVADO: TStringField;
        C_GruposDTHALTERACAO: TDateTimeField;
        C_GruposMODALIDADEBCICMS: TIntegerField;
        C_GruposMODALIDADEBCICMSST: TIntegerField;
        C_GruposCSTPISCOFINS: TStringField;
        C_GruposALIQPIS: TBCDField;
        C_GruposALIQCOFINS: TBCDField;
        C_GruposCSTIPI: TStringField;
        C_GruposGENERO: TStringField;
        C_GruposALIQIR: TBCDField;
        C_GruposALIQSS: TBCDField;
        C_GruposIDTRIBFEDERAL: TIntegerField;
        C_GruposORIGEMMERCADORIA: TIntegerField;
        C_GruposIPICOMPRA: TBCDField;
        C_GruposIPIVENDA: TBCDField;
        C_GruposCSTPISCOFINSSAIDA: TStringField;
        C_GruposNATURAZARECEITAPISCOFINS: TIntegerField;
        C_GruposALIQPISSAIDA: TFloatField;
        C_GruposALIQCOFINSSAIDA: TFloatField;
        C_GruposVINCULOCREDITOPISCOFINS: TStringField;
        C_GruposBASECREDITOPISCOFINS: TStringField;
        C_GruposPISCOFINS: TStringField;
        C_GruposDESPESASFIXAS: TBCDField;
        C_GruposENCARGOSCARTOES: TBCDField;
        C_GruposCOMISSAOAPLICADA: TBCDField;
        C_GruposIMPOSTOSFEDERAIS: TBCDField;
        C_GruposMENORVALORVENDA: TBCDField;
        Q_MateriaPrima: TIBQuery;
        P_MateriaPrima: TDataSetProvider;
        C_MateriaPrima: TClientDataSet;
        C_MateriaPrimaMATERIAPRIMA: TIntegerField;
        C_MateriaPrimaDESCRICAO: TStringField;
        C_TabelaTIPOMATERIAPRIMA: TIntegerField;
        C_TabelalkMateriaPrima: TStringField;
        C_ItensUnidadesCODIGO: TStringField;
        C_ItensUnidadesTABELAPRECO: TIntegerField;
        C_ItensUnidadeslkTabelaPreco: TStringField;
        C_TabelaCODIGOVENDA: TStringField;
        C_TabelaCSTIPIENTRADA: TStringField;
        C_TabelaCENQIPICOMPRA: TStringField;
        C_TabelaCENQIPIVENDA: TStringField;
        Q_CstsIPIEntrada: TIBQuery;
        C_CstsIPIEntrada: TClientDataSet;
        P_CstsIPIEntrada: TDataSetProvider;
        C_CstsIPIEntradaCSTIPIENTRADA: TStringField;
        C_CstsIPIEntradaDESCRICAO: TStringField;
        C_TabelalkCSTSIPIEntrada: TStringField;
        C_ItensFilhosCUSTOMANUAL: TBCDField;
        C_ItensFilhosCUSTOCONTABIL: TFloatField;
        C_ItensFilhosPRECOCOMPRA: TFloatField;
        C_TabelaCEST_OPC: TStringField;
        C_ItensFilhosTABELAPRECO1: TBCDField;
        C_ItensFilhosTABELAPRECO2: TBCDField;
        C_ItensFilhosTABELAPRECO3: TBCDField;
        C_ItensFilhosicSubTotalTabela1: TCurrencyField;
        C_ItensFilhosicSubTotalTabela2: TCurrencyField;
        C_ItensFilhosicSubTotalTabela3: TCurrencyField;
    C_ItensFilhosFABRICANTE: TStringField;
    C_TabelaFABRICACAOPROPRIA: TStringField;
    C_TabelaDESCRICAOANP: TStringField;
    C_TabelaPGNV: TBCDField;
    C_TabelaPGLP: TBCDField;
    C_TabelaDESCRICAOCOMPLEMENTAR: TStringField;

        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure IBEventos_ItensEventAlert(Sender: TObject; EventName: string;
            EventCount: Integer; var CancelAlerts: Boolean);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure DMComponentAposIniciar(Sender: TObject);
        procedure C_ProdutosPrecoNewRecord(DataSet: TDataSet);
        procedure C_ItensUnidadesNewRecord(DataSet: TDataSet);
        procedure C_TabelasPrecoAfterOpen(DataSet: TDataSet);
        procedure C_TabelaUNIDADEValidate(Sender: TField);
        procedure C_ProdutosPrecoCalcFields(DataSet: TDataSet);
        procedure C_TabelaTIPOITEMChange(Sender: TField);
        procedure C_ProdutosPrecoPRECOChange(Sender: TField);
        procedure C_TabelaPRECOChange(Sender: TField);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_TabelaCODIGOValidate(Sender: TField);
        procedure C_TabelaGRUPOChange(Sender: TField);
        procedure C_TabelaPRECOCOMPRAChange(Sender: TField);
        procedure C_TabelaSITUACAOECFChange(Sender: TField);
        procedure C_TabelaCSTChange(Sender: TField);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure C_TabelaUNIDADEENTRADAValidate(Sender: TField);
        procedure C_TabelaUNIDADECARGAValidate(Sender: TField);
        procedure C_TabelaUNIDADEVAREJOValidate(Sender: TField);
        procedure C_TabelaUNIDADEChange(Sender: TField);
        procedure DMComponentAntesDeDesativar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure DMComponentApagar_AntesApply(Sender: TObject);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure DMComponentAntesDeApagar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure C_TabelaicFatorLucroValidate(Sender: TField);
        procedure C_ItensFilhosNewRecord(DataSet: TDataSet);
        procedure C_ItensFilhosSUBITEMChange(Sender: TField);
        procedure C_ItensFilhosAfterOpen(DataSet: TDataSet);
        procedure C_ItensFilhosCalcFields(DataSet: TDataSet);
        procedure C_ItensFilhosUNIDADEValidate(Sender: TField);
        procedure DMComponentPesquisar2_SQLFinal(Sender: TObject;
            var SelectFinal: string);
        procedure C_ServicosPrecoNewRecord(DataSet: TDataSet);
        procedure C_TabelalkBaseCreditoPisCofinsChange(Sender: TField);
        procedure C_TabelaAfterScroll(DataSet: TDataSet);
        procedure C_TabelaCSTPISCOFINSSAIDAChange(Sender: TField);
        procedure C_ItensCodigosNewRecord(DataSet: TDataSet);
        procedure C_ItensCodigosCODIGOValidate(Sender: TField);
        procedure C_CSTsBeforeOpen(DataSet: TDataSet);
        procedure C_ItensUnidadesCODIGOValidate(Sender: TField);
        function VerificaExistenciaCodigoVenda(codigo: string = ''): Boolean;
        procedure Q_ItensFilhosBeforeOpen(DataSet: TDataSet);
        procedure AtualizaPrecoItemPai(idItem: integer; itemPai: boolean = false);
    private
        { Private declarations }
        bCalcItens: boolean;
        function TipoConta(nConta: Integer): Integer;
        procedure CalcPrecoVenda;
    public
        { Public declarations }
        nSeq, nSeqFilhos: integer;
        nGrupo, nFabricante, nContaVenda, nContaCusto,
            nContaInventario, nFornecedor, nTipoItem: Integer;
        sUnidade: string;
        yMaiorComissao, yDespesaFixa, yImpostosFederais, yEncargosCartoes, yLucroPadrao,
            nDescMaxUsuarios: Currency;
        bAlterandoProdutosPreco, bMedicamentos, bNaoPermitirItemDuplicado: boolean;
        function VerificaUnidade(sUnidExiste: string): boolean;
        function VerificaItensFilhosDuplicado(nItem: Integer): Boolean;
        procedure AtualizaFatores;
        procedure AtualizaPeloGrupo;
        procedure ExportacaoMabel(AnoMes: string; Fabricante: Integer);
    end;

var
    DMItens: TDMItens;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDMItens.ExportacaoMabel(AnoMes: string; Fabricante: Integer);
var
    myFile: TextFile;
    Linha: string;
begin

    with Q_ExportacaoMabel do
        begin
            Close;
            Sql.Text := 'Select  f.codigo,  i.campo01, i.descricaocompra,i.campo02, i.campo03, si.quantidade, s.vendedor ' +
                ' From saidas s inner join favorecidos f on f.favorecido = s.favorecido ' +
                ' inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv)' +
                ' inner Join itens i on i.item = si.item ' +
                ' where (extract(year from s.data) = ' + Copy(AnoMes, 1, 4) +
                ') and (extract(month from s.data) = ' + Copy(AnoMes, 5, 2) + ') and i.fabricante = ' + C_TabelaFABRICANTE.AsString;
            Open;
            AssignFile(myFile, 'C:\Vendas.Txt');
            ReWrite(myFile);
            while not eof do
                begin
                    Linha := AnoMes +
                        SoNumeros(FieldByName('Codigo').AsString, 6) +
                        PreencherStr(FieldByName('Campo01').AsString, ' ', 10) +
                        PreencherStr(Copy(FieldByName('descricaocompra').AsString, 1, 40), ' ', 40) +
                        SoNumeros(FieldByName('Campo02').AsString, 6) +
                        SoNumeros(FieldByName('Campo03').AsString, 3) +
                        SoNumeros(FieldByName('Quantidade').AsString, 8) +
                        SoNumeros(FieldByName('Vendedor').AsString, 8);
                    WriteLn(myFile, linha);
                    Next;
                end;
            CloseFile(myFile);
            Close;
            Sql.Text := ' Select  distinct f.codigo, f.nome, f.razao, f.endereco, f.bairro, F.cidade, f.UF, f.cep, f.cpf_cnpj, ' +
                ' f.inscricao_est, f.fone1, f.fax, f.email, f.pessoa_fj, f.inscricao_mun, ' +
                ' f.datacadastro, f.campo01, f.campo02 ' +
                ' From saidas s inner join favorecidos f on f.favorecido = s.favorecido ' +
                ' inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                ' inner Join itens i on i.item = si.item ' +
                ' where (extract(year from s.data) = ' + Copy(AnoMes, 1, 4) +
                ') and (extract(month from s.data) = ' + Copy(AnoMes, 5, 2) + ') and i.fabricante = ' + C_TabelaFABRICANTE.AsString;
            Open;
            AssignFile(myFile, 'C:\Clientes.Txt');
            ReWrite(myFile);
            while not eof do
                begin
                    Linha :=
                        SoNumeros(FieldByName('Codigo').AsString, 6) +
                        PreencherStr(Copy(FieldByName('Razao').AsString, 1, 50), ' ', 50) +
                        PreencherStr(Copy(FieldByName('Nome').AsString, 1, 50), ' ', 50) +
                        PreencherStr(Copy(FieldByName('Endereco').AsString, 1, 40), ' ', 40) +
                        PreencherStr(Copy(FieldByName('Bairro').AsString, 1, 30), ' ', 30) +
                        SoNumeros(FieldByName('Campo01').AsString, 6) +
                        PreencherStr(Copy(FieldByName('UF').AsString, 1, 02), ' ', 02) +
                        PreencherStr(Copy(FieldByName('CEP').AsString, 1, 09), ' ', 09) +
                        PreencherStr(Copy(FieldByName('CPF_CNPJ').AsString, 1, 19), ' ', 19) +
                        PreencherStr(Copy(FieldByName('inscricao_est').AsString, 1, 15), ' ', 15) +
                        PreencherStr(Copy(FieldByName('Fone1').AsString, 1, 16), ' ', 16) +
                        PreencherStr(Copy(FieldByName('FAX').AsString, 1, 16), ' ', 16) +
                        PreencherStr(Copy(FieldByName('email').AsString, 1, 35), ' ', 35) +
                        PreencherStr(Copy(FieldByName('inscricao_mun').AsString, 1, 19), ' ', 19) +
                        PreencherStr(Copy(FieldByName('Pessoa_FJ').AsString, 1, 01), ' ', 01) +
                        PreencherStr(Copy(FormatDateTime('DD/MM/YYYY', FieldByName('datacadastro').AsDateTime), 1, 10), ' ', 10) +
                        SoNumeros(FieldByName('Campo02').AsString, 2);
                    WriteLn(myFile, linha);
                    Next;
                end;
            CloseFile(myFile);
            Close;
        end;
end;

procedure TDMItens.AtualizaPeloGrupo;
begin
    with Q_PropagaGrupo do
        begin
            Close;
            Params[0].Value := C_GruposGRUPO.Value;
            Open;
            if (not (C_Tabela.state in [dsEdit, dsInsert])) then
                C_Tabela.Edit;
            C_TabelaSITUACAOECF.Value := Q_PropagaGrupoSITUACAOECF.Value;
            C_TabelaCST.Value := Q_PropagaGrupoCST.Value;
            C_TabelaMODALIDADEBCICMS.Value := Q_PropagaGrupoMODALIDADEBCICMS.Value;
            C_TabelaMODALIDADEBCICMSST.Value := Q_PropagaGrupoMODALIDADEBCICMSST.Value;
            C_TabelaCSTPISCOFINS.Value := Q_PropagaGrupoCSTPISCOFINS.Value;
            C_TabelaALIQPIS.Value := Q_PropagaGrupoALIQPIS.Value;
            C_TabelaALIQCOFINS.Value := Q_PropagaGrupoALIQCOFINS.Value;
            C_TabelaCSTIPI.Value := Q_PropagaGrupoCSTIPI.Value;
            C_TabelaGENERO.Value := Q_PropagaGrupoGENERO.Value;
            C_TabelaALIQIR.Value := Q_PropagaGrupoALIQIR.Value;
            C_TabelaALIQSS.Value := Q_PropagaGrupoALIQSS.Value;
            C_TabelaIDTRIBFEDERAL.Value := Q_PropagaGrupoIDTRIBFEDERAL.Value;
            C_TabelaORIGEMMERCADORIA.Value := Q_PropagaGrupoORIGEMMERCADORIA.Value;
            C_TabelaIPICOMPRA.Value := Q_PropagaGrupoIPICOMPRA.Value;
            C_TabelaIPIVENDA.Value := Q_PropagaGrupoIPIVENDA.Value;
            C_TabelaTVA.Value := Q_PropagaGrupoTVA.Value;
            C_TabelaTVAFONTE.Value := Q_PropagaGrupoTVAFONTE.Value;
            C_TabelaREDUCAOCST.Value := Q_PropagaGrupoREDUCAOCST.Value;
            C_TabelaNATURAZARECEITAPISCOFINS.Value := 0;
            with DMProjeto.Q_Auxiliar do
                begin
                    Close;
                    SQL.Text := 'select n.id, n.codigo, n.cst, n.descricao from naturazareceitapiscofins n where n.codigo = :codigo and n.cst = :cst ';
                    ParamByName('codigo').AsInteger := Q_PropagaGrupoNATURAZARECEITAPISCOFINS.Value;
                    ParamByName('cst').AsString := Q_PropagaGrupoCSTPISCOFINSSAIDA.Value;
                    open;
                    while not eof do
                        begin
                            C_TabelaNATURAZARECEITAPISCOFINS.Value := Fieldbyname('id').AsInteger;
                            next;
                        end;
                end;
            C_TabelaALIQPISSAIDA.value := Q_PropagaGrupoALIQPISSAIDA.value;
            C_TabelaALIQCOFINSSAIDA.value := Q_PropagaGrupoALIQCOFINSSAIDA.value;
            C_TabelaCSTPISCOFINSSAIDA.Value := Q_PropagaGrupoCSTPISCOFINSSAIDA.Value;
            C_Tabela.Post;
        end;

end;

procedure TDMItens.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMItens := Self;
    nSeq := -1;
    IBEventos_Itens.RegisterEvents;
    bMedicamentos := (DMProjeto.Parametro('TipoEmpresa') = 'H');
    bNaoPermitirItemDuplicado := (DMProjeto.Parametro('PermitirItemDuplicado') = 'N');
end;

procedure TDMItens.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    if C_TabelaCODIGOBARRAS.Value = '' then
        C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        C_TabelaCODIGOBARRAS.ReadOnly := true;

    C_TabelaEMPRESA.Value := DMProjeto.nEmpresaLogada;

    C_TabelaFORNECPREFERENCIA.value := -9;
    C_TabelaULTIMOFORNECEDOR.value := -9;
    C_TabelaGRUPO.value := -9;

    C_TABELAEMPRESA.VALUE := DMProjeto.nEmpresaLogada;

    // Para inserir uma linha em ProdutosPreco...
    C_ProdutosPreco.Append;
    C_ProdutosPreco.Post;

    // Para inserir uma linha em ItensUnidades...
    C_ItensUnidades.Append;
    C_ItensUnidades.Post;

    // Para adicionar as outras tabelas de preço...
    C_TabelasPreco.Close;
    C_TabelasPreco.Open;

    C_TabelaTipoItem.value := nTipoItem;

    C_TabelaFatorUndVenda.Value := 1;

    C_TabelaPesoBruto.value := 0;
    C_TabelaPesoLiquido.value := 0;
    C_TabelaIPICompra.value := 0;
    C_TabelaIPIVenda.value := 0;
    C_TabelaALIQPIS.Value := 0;
    C_TabelaALIQCOFINS.Value := 0;
    C_TabelaALIQPISSAIDA.Value := 0;
    C_TabelaALIQCOFINSSAIDA.Value := 0;
    C_TabelaALIQIR.Value := 0;
    C_TabelaALIQSS.Value := 0;
    C_TabelaREDUCAOCSTENTRADA.Value := 0;

    C_TabelaIDENTIFICACAO.Value := 'N';
    C_TabelaBalanco.value := 'N';
    C_TabelaPISCOFINS.Value := 'S';

    C_TabelaCustoMedio.value := 0;
    C_TabelaCustoContabil.value := 0;

    {Felipe - Setado valor 0 (zero) para os campos que recebiam valor -999. }
    C_TabelaComissao.value := 0;
    C_TabelaDescontoMaximo.value := 0;
    C_TabelaCustoDespesas.value := 0;
    C_TabelaFatorLucro.value := 0;
    if (DMProjeto.Parametro('AtualizaPeloGrupo') = 'S') then
        begin
            if DMProjeto.Parametro('PadraoTVA') <> '' then
                C_TabelaTVA.value := StrTOInt(DMProjeto.Parametro('PadraoTVA'))
            else
                C_TabelaTVA.value := 0;
            if DMProjeto.Parametro('PadraoTVAFonte') <> '' then
                C_TabelaTVAFonte.value := StrTOInt(DMProjeto.Parametro('PadraoTVAFonte'))
            else
                C_TabelaTVAFonte.value := 0;
            if DMProjeto.Parametro('PadraoSituacaoECF') <> '' then
                C_TabelaSituacaoECF.value := DMProjeto.Parametro('PadraoSituacaoECF')
            else
                C_TabelaSituacaoECF.value := 'T';
            if DMProjeto.Parametro('PadraoCST') <> '' then
                C_TabelaCST.value := DMProjeto.Parametro('PadraoCST')
            else
                C_TabelaCST.value := '00';
            if DMProjeto.Parametro('PadraoAliqICMS') <> '' then
                C_TabelaAliqICMS.value := StrToFloat(DMProjeto.Parametro('PadraoAliqICMS'))
            else
                C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;

            if DMProjeto.Parametro('PadraoReducaoCST') <> '' then
                C_TabelaReducaoCST.value := StrToFloat(DMProjeto.Parametro('PadraoReducaoCST'))
            else
                C_TabelaReducaoCST.value := 0;
            if DMProjeto.Parametro('ValorCompensaCusto') <> '' then
                C_TabelaCompensaCusto.value := StrToFloat(DMProjeto.Parametro('ValorCompensaCusto'))
            else
                C_TabelaCompensaCusto.Value := 0;
        end;

    C_TabelaIPPT.Value := 'T';
    C_TabelaIAT.Value := 'T';

    C_TabelaPercentual.value := 0;
    C_TabelaEstoque.value := 0;
    C_TabelaEstoqueVolume.value := 0;
    C_TabelaPontoPedido.value := 0;
    C_TabelaQtdeMinimo.value := 0;
    C_TabelaQtdeMaximo.value := 0;
    C_TabelaQtdMinGondola.value := 0;
    C_TabelaDesativado.value := 'N';
    C_TabelaHasChildren.value := 'N';
    C_TabelaControleValidade.value := 'N';
    C_TabelaRevenda.Value := 'S';

    if DMProjeto.Parametro('UnidadePadrao') <> '' then
        C_TabelaUnidade.Value := DMProjeto.Parametro('UnidadePadrao')
    else
        C_TabelaUnidade.Value := 'Un';

    C_TabelaPreco.value := 0;

    if C_TabelaTipoItem.Value = 1 then
        begin
            C_TabelaConta_Invent.value := IIF(nContaInventario > 0, nContaInventario, DMProjeto.ContaPadrao(6));
            C_TabelaConta_Custo.value := IIF(nContaCusto > 0, nContaCusto, DMProjeto.ContaPadrao(7));
            C_TabelaConta_Venda.value := IIF(nContaVenda > 0, nContaVenda, DMProjeto.ContaPadrao(8));
        end;

    if C_TabelaTIPOITEM.Value = 3 then
        begin
            C_TabelaCLASFISCAL.Value := '00';
        end;

    C_TabelaPrecoCompra.value := 0;

    if (nGrupo > 0) and C_Grupos.Locate('Grupo', nGrupo, []) then
        C_TabelaGrupo.Value := nGrupo;

    if nFabricante > 0 then
        C_TabelaFabricante.Value := nFabricante;

    if nFornecedor > 0 then
        C_TabelaULTIMOFORNECEDOR.Value := nFornecedor;

    if sUnidade <> '' then
        C_TabelaUnidade.Value := sUnidade;
    C_TabelaIDTRIBFEDERAL.Value := iif(DMProjeto.sTipoTributEmpresa = 'R', 1, 2);
    C_TabelaORIGEMMERCADORIA.AsInteger := 0;
    C_TabelaSITUACAOECF.AsString := 'T';
    C_TabelaCST.AsString := '000';
    C_TabelaMODALIDADEBCICMS.Value := 1;
    C_TabelaMODALIDADEBCICMSST.Value := 0;
    C_TabelaCSTPISCOFINS.Value := '50';
    C_TabelaCSTPISCOFINSSAIDA.Value := '01';
    C_TabelaCSTIPI.Value := '02';

end;

procedure TDMItens.IBEventos_ItensEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
begin
    inherited;
    if EventName = 'EVENTO_FABRICANTES' then
        begin
            C_Fabricantes.close;
            C_Fabricantes.open;
        end
    else if EventName = 'EVENTO_GRUPOS' then
        begin
            C_Grupos.close;
            C_Grupos.open;
        end
    else if EventName = 'EVENTO_UNIDADES' then
        begin
            C_Unidades.close;
            C_Unidades.open;
        end
    else if EventName = 'EVENTO_TABELASPRECO' then
        begin
            C_TabelasPreco.close;
            C_TabelasPreco.open;
        end
    else if EventName = 'EVENTO_CONTAS' then
        begin
            C_Contas.close;
            C_Contas.open;
        end;

end;

procedure TDMItens.C_TabelaCalcFields(DataSet: TDataSet);
begin
    inherited;
    try
        bCalcItens := True;
        {Setando grupos correto}
        if (C_TabelaGrupo.Value > 0) then
            C_Grupos.Locate('Grupo', C_TabelaGrupo.Value, []);

        C_TabelaicComissao.Value := IIF(C_TabelaComissao.Value > -999, C_TabelaComissao.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposComissao.Value > -999), C_GruposComissao.Value, yMaiorComissao));

        C_TabelaicComissaoAplic.Value := IIF(C_TabelaicComissao.Value >= 0, C_TabelaicComissao.Value, yMaiorComissao);

        C_TabelaicDespesaFixa.Value := yDespesaFixa;
        if C_TribFederalIDTRIBFEDERAL.Value = 2 then
            C_TabelaicImpostosFederais.Value := 0
        else
            C_TabelaicImpostosFederais.Value := yImpostosFederais + (C_TabelaALIQIR.Value + C_TabelaAliqSS.Value + C_TabelaALIQPIS.Value + C_TabelaALIQCOFINS.Value);

        C_TabelaicEncargosCartoes.Value := yEncargosCartoes;

        C_TabelaicDescontoMaximo.Value := IIF(C_TabelaDescontoMaximo.Value > -999, C_TabelaDescontoMaximo.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposDescontoMaximo.Value > -999), C_GruposDescontoMaximo.Value, nDescMaxUsuarios));

        C_TabelaicFatorLucro.Value := IIF(C_TabelaFatorLucro.Value > -999, C_TabelaFatorLucro.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposFatorLucro.Value > -999), C_GruposFatorLucro.Value, yLucroPadrao));

        C_TabelaicCustoDespesas.Value := IIF(C_TabelaCustoDespesas.Value > -999, C_TabelaCustoDespesas.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposCustoDespesas.Value > 0), C_GruposCustoDespesas.Value, 0));

        C_TabelaicSituacaoECF.Value := IIF(C_TabelaSituacaoECF.Value <> '', C_TabelaSituacaoECF.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposSituacaoECF.Value <> ''), C_GruposSituacaoECF.Value, 'T'));

        C_TabelaicCST.Value := IIF(C_TabelaCST.Value <> '', C_TabelaCST.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposCST.Value <> ''), C_GruposCST.Value, '00'));

        C_TabelaicTVA.Value := IIF(C_TabelaTVA.Value > -999, C_TabelaTVA.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposTVA.Value > 0), C_GruposTVA.Value, 0));

        C_TabelaicTVAFonte.Value := IIF(C_TabelaTVAFonte.Value > -999, C_TabelaTVAFonte.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposTVAFonte.Value > 0), C_GruposTVAFonte.Value, 0));

        C_TabelaicReducaoCST.Value := IIF(C_TabelaReducaoCST.Value > -999, C_TabelaReducaoCST.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposReducaoCST.Value > 0), C_GruposReducaoCST.Value, 0));

        C_TabelaicAliqICMS.Value := IIF(C_TabelaAliqICMS.Value > -999, C_TabelaAliqICMS.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposAliqICMS.Value > 0), C_GruposAliqICMS.Value, 0));

        if (C_TabelaicCST.Value <> '') and (C_TabelaicCST.Value[2] = '2') and (C_TabelaicReducaoCST.Value > 0) then
            C_TabelaicICMSAplicado.Value := Arredondar((1 - (C_TabelaicReducaoCST.Value / 100)) * C_TabelaicAliqICMS.Value, 2)
        else
            C_TabelaicICMSAplicado.Value := C_TabelaicAliqICMS.Value;

        C_TabelaicValorEstoqueTotal.Value := C_TabelaEstoque.value * C_TabelaCustoMedio.value;
        C_TabelaicDIFESTOQUE.Value := C_TabelaEstoque.value - C_TabelaEstoqueFiscal.value;
    finally
        bCalcItens := False;
    end;

    CalcPrecoVenda;

end;

procedure TDMItens.DMComponentAposIniciar(Sender: TObject);
begin
    inherited;
    nGrupo := 0;
    nFabricante := 0;
    nContaVenda := 0;
    nContaCusto := 0;
    nContaInventario := 0;
    nFornecedor := 0;

    sUnidade := '';

    with Q_SQL do
        begin
            close;
            SQL.Text := 'Select Max(DescontoMaximo) as DesctMax from Usuarios where Desativado = ''N'' ';
            Open;
            nDescMaxUsuarios := FieldByName('DesctMax').asCurrency;
            Close;
        end;
    C_TribFederal.Open;
    DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);

end;

procedure TDMItens.C_ProdutosPrecoNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeq);
    DataSet['ProdutoPreco'] := nSeq;
    DataSet['TabelaPreco'] := 0;
    DataSet['Preco'] := 0;
    DataSet['PrecoManual'] := 'N';
    DataSet['Unidade'] := C_TabelaUNIDADE.Value;
    if DataSet['Unidade'] = '' then
        begin
            if DMProjeto.Parametro('UnidadePadrao') <> '' then
                DataSet['Unidade'] := DMProjeto.Parametro('UnidadePadrao')
            else
                DataSet['Unidade'] := 'Und';
        end;
end;

procedure TDMItens.C_ItensUnidadesNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeq);
    DataSet['ItemUnidade'] := nSeq;
    if DMProjeto.Parametro('UnidadePadrao') <> '' then
        DataSet['Unidade'] := DMProjeto.Parametro('UnidadePadrao')
    else
        DataSet['Unidade'] := 'Und';
    DataSet['Fator'] := 1;
    DataSet['Percentual'] := 0;
    DataSet['PrecoManual'] := 0;
    DataSet['TabelaPreco'] := 0;
    DataSet['PercentualMinimo'] := 0;
end;

procedure TDMItens.C_TabelasPrecoAfterOpen(DataSet: TDataSet);
var C_Tmp: TClientDataSet;
begin
    inherited;
    // Verificando as tabelas de preco e se existem em ProdutosPreco...
    if (C_ProdutosPreco.Active) then
        begin
            C_Tmp := TClientDataSet.Create(Self);
            C_Tmp.CloneCursor(C_TabelasPreco, True);
            C_Tmp.First;
            while not C_Tmp.EOF do
                begin
                    if not C_ProdutosPreco.Locate('TABELAPRECO', C_Tmp.FieldByName('TABELAPRECO').Value, []) then
                        begin
                            C_ProdutosPreco.Append;
                            C_ProdutosPrecoTABELAPRECO.Value := C_Tmp.FieldByName('TABELAPRECO').Value;
                            C_ProdutosPrecoBASEADA.Value := C_Tmp.FieldByName('BASEADA').Value;
                            if (C_ProdutosPrecoBASEADA.Value = 'N') and (C_Tmp.FieldByName('TABELAPRECO').AsInteger <> 0) then
                                C_ProdutosPrecoPRECO.asCurrency := 0
                            else
                                C_ProdutosPrecoPRECO.AsCurrency := C_TabelaPRECO.AsCurrency;
                            C_ProdutosPrecoPRECOMANUAL.Value := iif(C_Tmp.FieldByName('BASEADA').Value = 'S', 'N', 'S');
                            C_ProdutosPreco.Post;
                        end;
                    C_Tmp.Next;
                end;
            C_Tmp.Free;
        end;
end;

procedure TDMItens.C_TabelaUNIDADEValidate(Sender: TField);
var nNewFator, nOldFator: currency;
begin
    inherited;
    if not C_ItensUnidades.Locate('UNIDADE', Sender.Value, []) then
        begin
            DlgMsg.ShowMsg(8028);
            raise Exception.Create('@@');
        end
    else
        begin
            // Modificando em ProdutosPreco a Unidade
            C_ProdutosPreco.First;
            while not C_ProdutosPreco.EOF do
                begin
                    C_ProdutosPreco.Edit;
                    C_ProdutosPrecoUNIDADE.Value := Sender.Value;
                    C_ProdutosPreco.Post;
                    C_ProdutosPreco.Next;
                end;
            nNewFator := C_ItensUnidadesFATOR.Value;
            nOldFator := C_TabelaFATORUNDVENDA.Value;
            // Valores de Quantidades...
            C_TabelaESTOQUE.Value := (C_TabelaESTOQUE.Value / nNewFator) * nOldFator;
            C_TabelaQTDEMAXIMO.Value := (C_TabelaQTDEMAXIMO.Value / nNewFator) * nOldFator;
            C_TabelaQTDEMINIMO.Value := (C_TabelaQTDEMINIMO.Value / nNewFator) * nOldFator;
            C_TabelaPONTOPEDIDO.Value := (C_TabelaPONTOPEDIDO.Value / nNewFator) * nOldFator;
            // Valores Monetários...
            C_TabelaCUSTOMEDIO.Value := (C_TabelaCUSTOMEDIO.Value / nOldFator) * nNewFator;
            C_TabelaCUSTOCONTABIL.Value := (C_TabelaCUSTOCONTABIL.Value / nOldFator) * nNewFator;
            C_TabelaPRECOCOMPRA.Value := (C_TabelaPRECOCOMPRA.Value / nOldFator) * nNewFator;
            C_TabelaPRECO.Value := (C_TabelaPRECO.Value / nOldFator) * nNewFator;
            // O Fator em si...
            C_TabelaFATORUNDVENDA.Value := nNewFator;
        end;
end;

procedure TDMItens.C_ProdutosPrecoCalcFields(DataSet: TDataSet);
var nDescMax: currency;
begin
    inherited;
    if DataSet.FieldByName('PrecoManual').asString = 'S' then
        DataSet.FieldByName('_icSelecionado').asInteger := 1
    else
        DataSet.FieldByName('_icSelecionado').asInteger := 0;

    {Desconto Máximo}
    nDescMax := C_TabelaicDescontoMaximo.Value;

    if nDescMax > 0 then
        DataSet.FieldByName('icPrecoMinimo').asCurrency := (DataSet.FieldByName('Preco').asCurrency * (1 - (nDescMax / 100)))
    else
        DataSet.FieldByName('icPrecoMinimo').asCurrency := 0;

end;

procedure TDMItens.C_TabelaTIPOITEMChange(Sender: TField);
begin
    inherited;
    if not bAlteracao then
        begin
            C_TabelaGrupo.asVariant := null;

            case C_TabelaTipoItem.Value of
                1:
                    begin
                        C_TabelaSituacaoECF.value := 'T';
                        C_TabelaIsItemCompra.Value := 'S';
                        C_TabelaConta_Invent.value := DMProjeto.ContaPadrao(6);
                        C_TabelaConta_Custo.value := DMProjeto.ContaPadrao(7);
                        C_TabelaConta_Venda.value := DMProjeto.ContaPadrao(8);
                    end;
                2:
                    begin
                        C_TabelaSituacaoECF.value := 'T';
                        C_TabelaIsItemCompra.Value := 'N';
                        C_TabelaConta_Custo.AsVariant := null;
                        C_TabelaConta_Venda.asvariant := DMProjeto.ContaPadrao(31);
                    end;
                3:
                    begin
                        C_TabelaSituacaoECF.value := 'S';
                        C_TabelaIsItemCompra.Value := 'N';
                        C_TabelaCLASFISCAL.Value := '00';
                        C_TabelaConta_Custo.AsVariant := null;
                        C_TabelaConta_Venda.asvariant := DMProjeto.ContaPadrao(30);
                    end;
                4:
                    begin
                        C_TabelaSituacaoECF.value := '';
                        C_TabelaIsItemCompra.Value := 'N';
                    end;
                5:
                    begin
                        C_TabelaSituacaoECF.value := '';
                        C_TabelaIsItemCompra.Value := 'S';
                        C_TabelaConta_Venda.value := DMProjeto.ContaPadrao(4);
                        C_TabelaConta_Custo.value := DMProjeto.ContaPadrao(15);
                    end;
                6:
                    begin
                        C_TabelaSituacaoECF.value := '';
                        C_TabelaIsItemCompra.Value := 'S';
                        C_TabelaConta_Venda.value := DMProjeto.ContaPadrao(1);
                        C_TabelaConta_Custo.value := DMProjeto.ContaPadrao(27);
                    end;
                7:
                    begin
                        C_TabelaSituacaoECF.value := '';
                        C_TabelaIsItemCompra.Value := 'S';
                    end;
            end;
        end;
end;

procedure TDMItens.C_ProdutosPrecoPRECOChange(Sender: TField);
var xPreco, xPercentual: Currency;
    C_Tmp, DataSet: TClientDataSet;
begin
    inherited;
    DataSet := TClientDataSet(Sender.DataSet);

    {Se a alteração de preço ocorreu na tabela Zero, os demais preços derivados devem
     ser atualizados}
    if (DataSet.FieldByName('TabelaPreco').asInteger = 0) then
        begin

            {Se também foi na unidade de venda, o Preco de C_Tabela deve ser atualizado para
             visualização do usuário}
            if (DataSet.FieldByName('Unidade').asString = C_TabelaUnidade.Value) and
                (C_TabelaPreco.asCurrency <> DataSet.FieldByName('Preco').asCurrency) then
                begin
                    bAlterandoProdutosPreco := true;
                    C_Tabela.Edit;
                    C_TabelaPreco.Value := DataSet.FieldByName('Preco').asCurrency;
                    C_Tabela.Post;
                    bAlterandoProdutosPreco := false;
                end;

            xPreco := DataSet.FieldByName('Preco').asCurrency;

            C_Tmp := TClientDataSet.Create(self);
            with C_Tmp do
                begin
                    CloneCursor(DataSet, true);
                    First;
                    while not Eof do
                        begin
                            if FieldByName('TabelaPreco').AsInteger <> 0 then
                                begin
                                    C_TabelasPreco.Locate('TabelaPreco', FieldByName('TabelaPreco').AsInteger, []);
                                    if (FieldByName('PrecoManual').value = 'N') and (C_TabelasPrecoBaseada.AsString = 'S') then
                                        begin
                                            // Verificando se existe um percentual diferenciado da tabela de preço
                                            // para o grupo do item...
                                            Q_TabelasGrupos.Close;
                                            Q_TabelasGrupos.ParamByName('g').AsInteger := C_TabelaGRUPO.AsInteger;
                                            Q_TabelasGrupos.ParamByName('tp').AsInteger := FieldByName('TabelaPreco').AsInteger;
                                            Q_TabelasGrupos.Open;
                                            if Q_TabelasGrupos.RecordCount > 0 then
                                                xPercentual := Q_TabelasGrupos.Fields[0].AsCurrency
                                            else
                                                xPercentual := C_TabelasPrecoPercentual.value;
                                            Q_TabelasGrupos.Close;
                                            Edit;
                                            if C_TabelasPrecoPercentual.value > 0 then
                                                FieldByName('Preco').value := xPreco + ((xPreco * xPercentual) / 100)
                                            else
                                                FieldByName('Preco').value := xPreco - ((xPreco * abs(xPercentual)) / 100);
                                        end;
                                end
                            else
                                begin
                                    Edit;
                                    FieldByName('Preco').value := xPreco;
                                end;
                            Next;
                        end;
                end;
            C_Tmp.Free;
        end
    else if (DataSet.FieldByName('Baseada').asString = 'S') then //Não é a tabela Zero que está sendo modificado o preço.
        DataSet.FieldByName('PrecoManual').asString := 'S';
end;

procedure TDMItens.C_TabelaPRECOChange(Sender: TField);
begin
    inherited;
    if (C_TabelaTipoItem.Value in [5, 6]) and (C_TabelaPercentual.Value > 0) and (Sender.asCurrency > 0) then
        C_TabelaPercentual.Value := 0;

    if not bAlterandoProdutosPreco then
        begin
            {Apenas confirmando se a tabela corrente é a Zero!}
            if C_ProdutosPrecoTabelaPreco.Value <> 0 then
                C_ProdutosPreco.Locate('tabelapreco;unidade', vararrayof([0, C_TabelaUnidade.Value]), []);

            {Atribuindo o Preço digitado para C_ProdutosPreco.Preco}
            {Isto fará com que as outras tabelas de preço sejam atualizadas no change de preco em C_ProdutosPreco}
            if C_ProdutosPrecoPreco.asCurrency <> Sender.asCurrency then
                begin
                    C_ProdutosPreco.Edit;
                    C_ProdutosPrecoPreco.asCurrency := Sender.asCurrency;
                    C_ProdutosPreco.Post;
                end;
        end;

end;

procedure TDMItens.DMComponentPesquisar1_Iniciar(Sender: TObject;
    var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    if C_TabelaTipoItem.asstring <> '' then
        begin
            where := replace(where, 'preco', 'pp.preco');
            if pos('I.TIPOITEM', uppercase(Where)) = 0 then
                begin
                    if pos('order by', where) > 0 then
                        insert(' and i.tipoitem = ' + C_TabelaTipoItem.asstring + ' ', where, pos('order by', where))
                    else
                        where := replace(where, ' where ', ' where i.tipoitem = ' + C_TabelaTipoItem.asstring + ' and ');
                end;
        end;

    //  if (pos('CAMPO', where) > 0) then
    //    where := replace(where, 'CAMPO', 'i.campo');
    if (pos('ITENS.', where) > 0) then
        where := Replace(where, 'ITENS.', 'i.');

    if pos('CODIGO', where) > 0 then
        begin
            where := replace(where, 'CODIGO', 'i.Codigo');
            {Otimizando Consulta por Código}
            where := replace(where, 'upper(', '');
            where := replace(where, ') like', '=');
            where := replace(where, '%', '');
        end;

    if pos('NOMEULTIMOFORNECEDOR', where) > 0 then
        begin
            where := replace(where, '(NOME)', '(uf.Nome)');
            where := replace(where, 'NOMEULTIMOFORNECEDOR', 'uf.Nome');
        end;

    if pos('NOMEFORNECPREFERENCIA', where) > 0 then
        begin
            where := replace(where, '(NOME)', '(fp.Nome)');
            where := replace(where, 'NOMEFORNECPREFERENCIA', 'fp.Nome');
        end;

end;

procedure TDMItens.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
    function VerificaExistenciaCodigoItem(nItem: integer; sTexto: string): boolean;
    begin
        DMProjeto.Q_ComandoSQL.close;
        DMProjeto.Q_ComandoSQL.SQL.text := 'select item from itens where item <> :nItem and desativado = ''N'' and ((codigo = :cod) Or (codigobarras = :cod))';
        DMProjeto.Q_ComandoSQL.params[0].asinteger := nItem;
        DMProjeto.Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
        DMProjeto.Q_ComandoSQL.open;
        result := DMProjeto.Q_ComandoSQL.FieldByName('item').asinteger <> 0;
        DMProjeto.Q_ComandoSQL.close;
    end;

    function VerificaExistenciaReferenciaItem(nItem: integer; sTexto: string): boolean;
    begin
        DMProjeto.Q_ComandoSQL.close;
        DMProjeto.Q_ComandoSQL.SQL.text := 'select item from itens where item <> :nItem and desativado = ''N'' and upper(referencia) = :refer';
        DMProjeto.Q_ComandoSQL.params[0].asinteger := nItem;
        DMProjeto.Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
        DMProjeto.Q_ComandoSQL.open;
        result := DMProjeto.Q_ComandoSQL.FieldByName('item').asinteger <> 0;
        DMProjeto.Q_ComandoSQL.close;
    end;
begin
    inherited;

    if VerificaExistenciaCodigoVenda(C_TabelaCODIGOVENDA.Value) then
        raise Exception.Create('O Código informado no campo "Código de Venda" já existe para outro produto. Verifique!');

    // Descrição
    if DMProjeto.Parametro('NaoObrigarItensDesc') <> 'S' then
        begin
            if not bAlteracao and DMProjeto.VerificaExistenciaItem(C_TabelaItem.value, 'D', C_TabelaDescricao.value) then
                begin
                    DlgMsg.ShowMsg(5001, ['Item']);
                    bSkip := true;
                    Exit;
                end;
        end;

    // Referência
    if (C_TabelaREFERENCIA.AsString <> '') and (DMProjeto.Parametro('NaoObrigarItensRefer') <> 'S') then
        begin
            if VerificaExistenciaReferenciaItem(C_TabelaItem.value, C_TabelaREFERENCIA.value) then
                begin
                    DlgMsg.ShowMsg(8029);
                    bSkip := true;
                    Exit;
                end;
        end;

    // Codigo
    if (C_TabelaCODIGO.AsString <> '') and (DMProjeto.Parametro('NaoObrigarItensCodigo') <> 'S') then
        begin
            if VerificaExistenciaCodigoItem(C_TabelaItem.value, C_TabelaCodigo.value) then
                begin
                    DlgMsg.ShowMsg(8081);
                    bSkip := true;
                    Exit;
                end;
        end;
    // Codigo Barras
    if (C_TabelaCODIGO.AsString <> '') and (DMProjeto.Parametro('NaoObrigarItensCodigo') <> 'S') then
        begin
            if VerificaExistenciaCodigoItem(C_TabelaItem.value, C_TabelaCODIGOBARRAS.value) then
                begin
                    DlgMsg.ShowMsg(8081);
                    bSkip := true;
                    Exit;
                end;
        end;
    if not bAlteracao then
        begin
            C_Tabela.Edit;
            C_TabelaCustoContabil.value := C_TabelaCustoMedio.value;
            if C_TabelaTIPOITEM.value = 3 then
                begin
                    C_TabelaAliqICMS.value := DMProjeto.nISS;
                    C_TabelaSITUACAOECF.AsString := 'S';
                    C_TabelaIsItemCompra.Value := 'N';
                    C_TabelaConta_Custo.AsVariant := null;
                    C_TabelaConta_Venda.asvariant := DMProjeto.ContaPadrao(30);
                end;
        end;
    C_Tabela.Edit;

    if ((C_TabelaCODIGOVENDA.Value = '') or (C_TabelaCODIGOVENDA.Value = null)) then
        C_TabelaCODIGOVENDA.Value := C_TabelaCODIGO.Value;

    if C_TabelaTIPOITEM.Value = 3 then
        C_TabelaCLASFISCAL.Value := '00';

    C_TabelaDATA_HORA_ALTERACAO.AsDateTime := Now;
    C_Tabela.Post;

end;

function TDMItens.VerificaExistenciaCodigoVenda(codigo: string = ''): Boolean;
begin
    with DMProjeto.Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'select item from itens where codigovenda = :codigovenda';
            Params[0].AsString := codigo;
            Open;

            if (DMProjeto.Q_ComandoSQL.RecordCount > 0) then
                Result := not (FieldByName('item').AsInteger = C_TabelaITEM.Value)
            else
                Result := False;
        end;

end;

procedure TDMItens.C_TabelaCODIGOValidate(Sender: TField);
begin
    inherited;
    if DMProjeto.VerificaExistenciaItem(C_TabelaItem.value, 'C', C_TabelaCODIGO.value) then
        begin
            DlgMsg.ShowMsg(5001, ['Item']);
            raise Exception.Create('@@');
        end;
    if C_TabelaItem.value = -8888 then
        begin
            C_ItensCodigos.Edit;
            C_ItensCodigosCODIGO.Value := C_TabelaCODIGO.value;
            C_ItensCodigositem.Value := C_Tabelaitem.value;
        end;
end;

procedure TDMItens.C_TabelaGRUPOChange(Sender: TField);
begin
    inherited;
    if not C_Grupos.Locate('Grupo', Sender.asInteger, []) then
        exit;
    if (DMProjeto.Parametro('AtualizaPeloGrupo') = 'S') then
        begin
            {Felipe - Setado valor 0 (zero) para os campos que recebiam valor -999. }
            //Para que os do grupo sejam considerados
            if not bAlteracao and (Sender.asVariant <> null) then
                begin
                    C_TabelaFatorLucro.Value := 0;
                    C_TabelaCustoDespesas.Value := 0;
                    C_TabelaSituacaoECF.asVariant := null;
                    C_TabelaCST.asVariant := null;
                    C_TabelaTVA.value := 0;
                    C_TabelaTVAFonte.value := 0;
                    C_TabelaAliqICMS.value := 0;
                    C_TabelaReducaoCST.value := 0;
                    if C_TabelaTipoItem.Value = 3 then
                        begin
                            C_TabelaSituacaoECF.Value := 'S';
                            C_TabelaCLASFISCAL.Value := '00';
                            C_TabelaAliqICMS.value := DMProjeto.nISS;
                            C_TabelaISITEMCOMPRA.value := 'N';
                        end;
                end
            else if not bAlteracao then
                begin
                    C_TabelaFatorLucro.Value := 0;
                    C_TabelaCustoDespesas.Value := 0;
                    C_TabelaTVA.value := 0;
                    C_TabelaTVAFonte.value := 0;
                    C_TabelaSituacaoECF.value := 'T';
                    C_TabelaCST.value := '00';
                    C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;
                    C_TabelaReducaoCST.value := 0;
                    if C_TabelaTipoItem.Value = 3 then
                        begin
                            C_TabelaSituacaoECF.Value := 'S';
                            C_TabelaCLASFISCAL.Value := '00';
                            C_TabelaAliqICMS.value := DMProjeto.nISS;
                            C_TabelaISITEMCOMPRA.value := 'N';
                        end;
                end;
        end;
    //  CalcularPercentualGrupo;

end;

procedure TDMItens.C_TabelaPRECOCOMPRAChange(Sender: TField);
begin
    inherited;
    //  if C_TabelaTipoItem.Value = 1 then begin
    //    {O Preço de Compra já está na unidade mínima, pois veio da atribuição de icPrecoCompra que já faz a conversão}
    //    if (C_TabelaicCustoMedio.Value <= 0) or not bAlteracao then begin
    //      C_TabelaCustoMedio.Value := Sender.asFloat;
    //      C_TabelaCustoContabil.Value := Sender.asFloat;
    //    end;
    //    if (C_TabelaCustoContabil.Value <= 0) or not bAlteracao then
    //      C_TabelaCustoContabil.Value := Sender.asFloat;
    //  end
    //  else if C_TabelaTipoItem.Value in [2, 3] then begin
    //    C_TabelaCustoMedio.Value := Sender.asFloat;
    //    C_TabelaCustoContabil.Value := Sender.asFloat;
    //  end;
end;

procedure TDMItens.C_TabelaSITUACAOECFChange(Sender: TField);
begin
    inherited;
    if C_TabelaSituacaoECF.value = 'F' then
        C_TabelaCST.value := '010'
    else if C_TabelaSituacaoECF.value = 'I' then
        C_TabelaCST.value := '040'
    else if C_TabelaSituacaoECF.value = 'N' then
        C_TabelaCST.value := '040'
    else
        C_TabelaCST.value := '000';

    if ((C_TabelaSituacaoECF.value <> 'T') and (C_TabelaSituacaoECF.value <> 'S')) then
        C_TabelaAliqICMS.Value := 0
    else if C_TabelaSituacaoECF.Value = 'T' then
        C_TabelaAliqICMS.Value := DMProjeto.nICMSInterno
    else if C_TabelaSituacaoECF.Value = 'S' then
        C_TabelaAliqICMS.Value := DMProjeto.nISS;

end;

procedure TDMItens.C_TabelaCSTChange(Sender: TField);
begin
    inherited;
    {Felipe - Setado valor 0 (zero) para os campos que recebiam valor -999. }
    if Sender.AsString = '' then
        C_TabelaReducaoCST.Value := 0
    else if Sender.asString[2] <> '2' then
        C_TabelaReducaoCST.Value := 0;
end;

procedure TDMItens.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nTipoItem := 1;
    nSeq := -1;
    nSeqFilhos := -1;
    C_GruposComissoes.Close;
    C_GruposComissoes.Open;

    C_Localizacoes.Close;
    C_Localizacoes.Open;

    //C_ServicosPreco.Close;
    //C_ServicosPreco.Open;
end;

procedure TDMItens.C_TabelaUNIDADEENTRADAValidate(Sender: TField);
begin
    inherited;
    if not C_ItensUnidades.Locate('UNIDADE', Sender.Value, []) then
        begin
            DlgMsg.ShowMsg(8028);
            raise Exception.Create('@@');
        end;
end;

procedure TDMItens.C_TabelaUNIDADECARGAValidate(Sender: TField);
begin
    inherited;
    if not C_ItensUnidades.Locate('UNIDADE', Sender.Value, []) then
        begin
            DlgMsg.ShowMsg(8028);
            raise Exception.Create('@@');
        end;
end;

procedure TDMItens.C_TabelaUNIDADEVAREJOValidate(Sender: TField);
begin
    inherited;
    if not C_ItensUnidades.Locate('UNIDADE', Sender.Value, []) then
        begin
            DlgMsg.ShowMsg(8028);
            raise Exception.Create('@@');
        end;
end;

function TDMItens.VerificaUnidade(sUnidExiste: string): boolean;
var bExiste: boolean;
begin
    bExiste := false;
    with C_ItensUnidades do
        begin
            First;
            while not eof do
                begin
                    if (fieldbyname('Unidade').AsString = sUnidExiste) then
                        begin
                            bExiste := true;
                            break;
                        end;
                    Next;
                end;
            EnableControls;
        end;
    result := bExiste;
end;

procedure TDMItens.C_TabelaUNIDADEChange(Sender: TField);
begin
    inherited;
    C_TabelaUnidadeVarejo.Value := Sender.Value;
    C_TabelaUnidadeCarga.Value := Sender.Value;
    if not bAlteracao then C_TabelaUnidadeEntrada.Value := Sender.Value;
end;

procedure TDMItens.DMComponentAntesDeDesativar(Sender: TObject;
    var bCanDelete: Boolean);
begin
    inherited;
    {Verificando se o Item possui estoque}
    if (C_TabelaTipoItem.Value = 1) and (C_TabelaEstoque.Value <> 0) then
        begin
            DlgMsg.ShowMsg(3154, [C_TabelaEstoque.DisplayText, C_TabelaUnidade.Value, C_TabelaicValorEstoqueTotal.DisplayText]); //Informando que o estoque não eatá zerado.
            bCanDelete := false;
        end;
end;

procedure TDMItens.DMComponentApagar_AntesApply(Sender: TObject);
begin
    inherited;
    {Apagando Ajuste e Lançamentos Contábeis que existam}
    if DMComponent.Tag > 49 then
        with Q_SQL do
            begin
                {Apagando Lançamentos}
                DMProjeto.CancelarLancamentos(IntToStr(DMComponent.Tag));
                DMProjeto.CancelarLancamentos(C_TabelaItem.asString); //Para apagar lançamentos outros como a troca da conta inventário.

                {Apagando AjusteItens, o Trigger já apaga TransacoesEstoque e ItensLotes}
                Close;
                SQL.Text := 'Delete from AjustesItens where AjusteItem = :A';
                Params[0].asInteger := DMComponent.Tag;
                ExecSQL;
            end;

end;

procedure TDMItens.DMComponentGravar4_AposCommit(Sender: TObject);
var nValor: integer;
begin
    inherited;
    if not DMProjeto.VerificaExistenciaItensCodigos(C_TabelaCODIGOBARRAS.value) then
        begin
            with DMProjeto.Q_SQL do
                begin
                    Close;
                    SQL.Text := 'INSERT INTO ITENSCODIGOS (ITEM, CODIGO) VALUES (:ITEM,:CODIGO);';
                    ParamByName('ITEM').AsInteger := C_TabelaITEM.Value;
                    ParamByName('CODIGO').AsString := C_TabelaCODIGOBARRAS.value;
                    ExecSql;
                end;
            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;
    if pos('-', C_TabelaCodigo.value) > 0 then
        begin
            nValor := 1;
            try
                nValor := StrToIntDef(Direita(C_TabelaCodigo.value, length(C_TabelaCodigo.value) - pos('-', C_TabelaCodigo.value)), 0);
            except
            end;
            if DMProjeto.LastID(copy(C_TabelaCodigo.value, 1, pos('-', C_TabelaCodigo.value) - 1)) < nValor then
                DMProjeto.SetLastID(copy(C_TabelaCodigo.value, 1, pos('-', C_TabelaCodigo.value) - 1), nValor);
        end;

    AtualizaPrecoItemPai(C_TabelaITEM.Value, C_TabelaHASCHILDREN.Value = 'S');
end;

{   Felipe - Método criado para atualizar o preço de Item quando SubItens tiverem seus valores alterados. Criado para atender implantação
            da empresa Center Bike  (04/02/2016)    }

procedure TDMItens.AtualizaPrecoItemPai(idItem: integer; itemPai: boolean = false);
var
    idItemPai, i, qtdTabelas: integer;
    precoAtual: Currency;
    sTabelas: string;
begin
    // Verifica se o Parâmetro está ativo. Utilizado para montagens de produto.
    if DMProjeto.Parametro('Composicao') = 'S' then
        begin
            // Atribuindo a "sTabelas" a Tabela 0 (Padrão) e as outras tabelas configuradas no parâmetro.
            //sTabelas := '0;' + DMProjeto.sTabelasPreco;
            sTabelas := AllTrim(DMProjeto.sTabelasPreco);

            sTabelas := IIF(Length(sTabelas) > 0, '0;' + sTabelas, '0');
            qtdTabelas := ContaStrings(sTabelas, ';');

            with DMProjeto.Q_SQL2 do
                begin
                    // Verifica se o item alterado é subitem de outro. Se for captura o ID do Item Pai
                    DMProjeto.Q_SQL2.Close;
                    if (not itemPai) then
                        begin
                            DMProjeto.Q_SQL2.SQL.Text := 'select distinct ff.item as itempai from itensfilhos ff where ff.subitem = :itemalterado';
                            DMProjeto.Q_SQL2.ParamByName('itemalterado').AsInteger := C_TabelaITEM.Value;
                        end
                    else
                        begin
                            DMProjeto.Q_SQL2.SQL.Text := 'select distinct ff.item as itempai from itensfilhos ff where ff.item = :itemalterado';
                            DMProjeto.Q_SQL2.ParamByName('itemalterado').AsInteger := C_TabelaITEM.Value;
                        end;

                    DMProjeto.Q_SQL2.Open;

                    //qtdTabelas := ContaStrings(sTabelas, ';');

                    if (qtdTabelas > 4) then
                        qtdTabelas := 4;

                    while not DMProjeto.Q_SQL2.Eof do
                        begin
                            idItemPai := DMProjeto.Q_SQL2.FieldByName('itempai').AsInteger;

                            for i := 1 to qtdTabelas do
                                begin
                                if DMProjeto.Parametro('PrecoVendaManualProducao') <> 'S' then
                                   begin
                                    with DMProjeto.Q_SQL3 do
                                        begin
                                            // Captura o valor total dos subItens de um Item Pai
                                            DMProjeto.Q_SQL3.Close;
                                            DMProjeto.Q_SQL3.SQL.Text := 'select cast(sum(ff.quantidade * pp.preco) as numeric (15, 3)) as precoatual ' +
                                                'from itensfilhos ff inner join produtospreco pp on ff.subitem = pp.item ' +
                                                'where ff.item = :itempai and pp.tabelapreco = :tabela';
                                            DMProjeto.Q_SQL3.ParamByName('itempai').AsInteger := idItemPai;
                                            DMProjeto.Q_SQL3.ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(sTabelas, ';', i));

                                            DMProjeto.Q_SQL3.Open;

                                            precoAtual := DMProjeto.Q_SQL3.FieldByName('precoatual').AsCurrency;

                                            // Executa comando para Atualizar o preço do Item Pai para cada uma das tabelas existentes
                                            DMProjeto.Q_SQL3.Close;
                                            DMProjeto.Q_SQL3.SQL.Text := 'update produtospreco pp set pp.preco = :precoatual where pp.item = :itempai and pp.tabelapreco = :tabela';
                                            DMProjeto.Q_SQL3.ParamByName('precoatual').AsCurrency := precoAtual;
                                            DMProjeto.Q_SQL3.ParamByName('itempai').AsInteger := idItemPai;
                                            DMProjeto.Q_SQL3.ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(sTabelas, ';', i));
                                            DMProjeto.Q_SQL3.ExecSQL;
                                         end;
                                  end ;
                                end;

                            DMProjeto.Q_SQL2.Next;
                        end;
                end;

            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
            Localizar('', ' where i.item = ' + InttoStr(C_TabelaITEM.Value));
        end
    else
        Exit;

end;

procedure TDMItens.DMComponentAntesDeApagar(Sender: TObject;
    var bCanDelete: Boolean);
var sItens: string;
    bSkip: boolean;
    nOp: integer;
begin
    inherited;
    {Verificando se o Item pode ser deletado. Para isto, não pode haver movimentações em
     SaidasItens, EntradasItens, SaidasItensFilhos e BalancoFichasItens. Em AjusteItens,
     pode existir apenas uma ocorrência, indicando que foi gerado pelo próprio ato de
     cadastrar o item, desde que a conta de contrapartida seja do tipo Equity. Neste
     caso, o Item pode ser apagado e todos os lançamentos serão apagados também.}

    {Se este evento chegar a ocorrer é porque o DeleteValidate não restringiu a deleção,
     indicando que falta verificar apenas em AjusteItens se a condição acima ocorre, e
     se afirmativo, apagar então o Item deixando o CanDelete = true}

    {Também deverá ser verificado se o Item está sendo utilizado em alguma composição,
     neste caso, o usuário terá que apagar primeiro o item da composição ou o item composto por completo}

    with Q_SQL do
        begin
            {Composição}
            Close;
            SQL.Text := 'Select Distinct Item From ItensFilhos where SubItem = :I ';
            Params[0].asInteger := C_TabelaItem.Value;
            Open;

            sItens := '';
            First;
            while not EOF do
                begin
                    sItens := CExp(sItens, ',') + FieldByName('Item').asString;
                    Next;
                end;

            if sItens <> '' then
                begin
                    bCanDelete := false;

                    if DlgMsg.ShowMsg(2731) = 200 then
                        begin
                            Localizar('', ' where i.Item in (' + sItens + ') ');
                            exit;
                        end;
                end;

            {AjusteItens}
            if bCanDelete then
                begin
                    Close;
                    SQL.Text := 'Select * From AjustesItens where Item = :I';
                    Params[0].asInteger := C_TabelaItem.Value;
                    Open;

                    Last;

                    if (RecordCount = 0) then
                        DMComponent.Tag := 0
                    else if (RecordCount = 1) and (TipoConta(FieldByName('Conta').asInteger) = 12) then
                        {Atribuindo a chave do ajuste ao tag para que o próximo evento (antesdoapply) possa pegar esta informação
                         e apagar os lançamentos derivados deste item}
                        DMComponent.Tag := FieldByName('AjusteItem').Value
                    else
                        begin
                            nOp := DlgMsg.ShowMsg(DMComponent.Tag);
                            if (DMComponent.Tag = 48) and (nOp = 100) then
                                begin
                                    if C_Tabela.State = dsBrowse then
                                        C_Tabela.Edit;

                                    try
                                        bSkip := True;
                                        if Assigned(DMComponent.AntesDeDesativar) then
                                            DMComponent.AntesDeDesativar(self, bSkip); //CanDelete

                                        if not bSkip then
                                            begin
                                                bCanDelete := false;
                                                exit;
                                            end;

                                        bExcluindo := True;
                                        C_Tabela.FieldByName('Desativado').asString := 'S';
                                        Gravar;
                                    finally
                                        bExcluindo := False;
                                    end;
                                    bCanDelete := false;
                                end
                            else if (DMComponent.Tag = 49) or (DMComponent.Tag = 48) then
                                begin
                                    bCanDelete := false;
                                end;
                        end;

                    Close;

                end;

        end;

end;

function TDMItens.TipoConta(nConta: Integer): Integer;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Select TipoConta from Contas where Conta = :C';
            Params[0].asInteger := nConta;
            Open;

            result := FieldByName('TipoConta').asInteger;
            Close;
        end;
end;

procedure TDMItens.CalcPrecoVenda;
var
    nPercCusto, nPercTotal: double;
    nDescMax, nICMS, nCusto, nImpostosFederais: Currency;
begin
    //    if DMProjeto.sTipoTributEmpresa = 'R' then
    //        nImpostosFederais := C_TabelaicImpostosFederais.Value
    //    else
    //        nImpostosFederais := 0;
    nImpostosFederais := C_TabelaicImpostosFederais.Value;
    if DMProjeto.sTipoTributEmpresa = 'N' then
        nICMS := 0
    else
        nICMS := C_TabelaicICMSAplicado.Value;

    if (DMProjeto.Parametro('CustoCalcPreco') = 'CC') then
        C_TabelaicCusto.Value := C_TabelaCUSTOCONTABIL.Value
    else
        C_TabelaicCusto.Value := C_TabelaCUSTOMEDIO.Value;

    nPercCusto := C_TabelaicCustoDespesas.value +
        C_TabelaicDespesaFixa.Value +
        nImpostosFederais +
        C_TabelaicComissaoAplic.Value +
        C_TabelaicEncargosCartoes.Value +
        nICMS +
        C_TabelaIPIVenda.Value;

    nPercTotal := nPercCusto + C_TabelaicFatorLucro.Value;

    if nPercCusto >= 100 then
        nPercCusto := 99.9;

    if nPercTotal >= 100 then
        nPercTotal := 99.9;

    nPercCusto := (100 - nPercCusto) / 100;
    nPercTotal := (100 - nPercTotal) / 100;

    {Se o Fator é o mesmo que já está definido, não há necessidade de calcular o preço de venda
    if ((C_TabelaicCustoMedio.value / nPercTotal) = C_TabelaPrecoCalc.asFloat) then
      exit;

    {Fator}
    C_TabelaicFator.Value := nPercTotal;

    //    nCusto := C_TabelaCUSTOMEDIO.Value * (1 + C_TabelaCOMPENSACUSTO.Value / 100);
    nCusto := C_TabelaicCusto.Value * (1 + C_TabelaCOMPENSACUSTO.Value / 100);

    {Menor Preço de Venda}
    C_TabelaicMenorPrecoVenda.Value := nCusto / nPercCusto;

    {Desconto Máximo}
    nDescMax := C_TabelaicDescontoMaximo.Value;

    C_TabelaicPrecoCalcDescMax.Value := ((nCusto / nPercTotal) * (1 - (nDescMax / 100)));

    {Preço de Venda - Por motivos de eventos sobre o preco mínimo acima calculado, esta atribuição é a última}
    //C_TabelaicPrecoCalc.value := Arredondar(nCusto / nPercTotal, 2);

    {Fator Multiplicador}
    if C_TabelaicCusto.Value > 0 then
        C_TabelaicFatorMult.Value := C_TabelaicPrecoCalc.Value / C_TabelaicCusto.Value
    else
        C_TabelaicFatorMult.Value := 0;
    {
        if C_TabelaCUSTOMEDIO.Value > 0 then
            C_TabelaicFatorMult.Value := C_TabelaicPrecoCalc.Value / C_TabelaCUSTOMEDIO.Value
        else
            C_TabelaicFatorMult.Value := 0;
    }
end;

procedure TDMItens.C_TabelaicFatorLucroValidate(Sender: TField);
var nSemLucro: double;
begin
    inherited;
    {O fator de Lucro não pode ser maior que o complemento (para 100%)}
    if not bCalcItens then
        begin
            nSemLucro := C_TabelaicCustoDespesas.value +
                C_TabelaicDespesaFixa.Value +
                C_TabelaicImpostosFederais.Value +
                C_TabelaicComissaoAplic.Value +
                C_TabelaicEncargosCartoes.Value +
                C_TabelaicICMSAplicado.Value +
                C_TabelaIPIVenda.Value;

            if Sender.asFloat > (100 - nSemLucro) then
                begin
                    Dlgmsg.ShowMsg(2730);
                    raise Exception.Create('@@');
                end;
        end;

end;

procedure TDMItens.C_ItensFilhosNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nSeqFilhos);
    C_ItensFilhosIDFilho.value := nSeqFilhos;
    C_ItensFilhosQuantidade.value := 1;
    C_ItensFilhosUNIDADE.Value := C_TabelaUNIDADE.Value;
    if C_ItensFilhosUNIDADE.Value = '' then
        begin
            if DMProjeto.Parametro('UnidadePadrao') <> '' then
                C_ItensFilhosUNIDADE.Value := DMProjeto.Parametro('UnidadePadrao')
            else
                C_ItensFilhosUNIDADE.Value := 'Und';
        end;

end;

procedure TDMItens.C_ItensFilhosSUBITEMChange(Sender: TField);
var
    i: integer;
begin
    inherited;

    C_ItensFilhosCodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').asstring;
    C_ItensFilhosDescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').asstring;
    C_ItensFilhosUnidade.Value := DMProjeto.C_LocalizarItens.FieldByName('Unidade').asstring;
    C_ItensFilhosFator.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;
    C_ItensFilhosCustoMedio.value := DMProjeto.C_LocalizarItens.FieldByName('customedio').asFloat;
    C_ItensFilhosPRECOCOMPRA.Value := DMProjeto.C_LocalizarItens.FieldByName('precocompra').AsFloat;
    C_ItensFilhosCUSTOCONTABIL.Value := DMProjeto.C_LocalizarItens.FieldByName('custocontabil').AsFloat;
    C_ItensFilhosCUSTOMANUAL.Value := DMProjeto.C_LocalizarItens.FieldByName('customanual').AsFloat;
    C_ItensFilhosPreco.value := DMProjeto.C_LocalizarItens.FieldByName('Preco').asCurrency;
    C_ItensFilhosFatorUndPrecoVenda.value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;

    { Felipe - Implementações para Montagens de Produto (03/02/2016) }
    for i := 1 to ContaStrings(DMProjeto.sTabelasPreco, ';') do
        begin
            with DMProjeto.Q_SQL2 do
                begin
                    Close;
                    SQL.Text := 'select cast(pp.preco as numeric(15, 3)) as preco from produtospreco pp where pp.item = :item and pp.tabelapreco = :tabela';
                    ParamByName('item').AsInteger := DMProjeto.C_LocalizarItens.FieldByName('ITEM').AsInteger;
                    ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(DMProjeto.sTabelasPreco, ';', i));
                    Open;

                    while not Eof do
                        begin
                            case i of
                                1: C_ItensFilhosTABELAPRECO1.Value := FieldByName('preco').AsCurrency;
                                2: C_ItensFilhosTABELAPRECO2.Value := FieldByName('preco').AsCurrency;
                                3: C_ItensFilhosTABELAPRECO3.Value := FieldByName('preco').AsCurrency;
                            else
                            end;
                            Next;
                        end;
                end;
        end;

    { Fim de Implementações para Montagens de Produto }

    try
        C_ItensFilhosQuantidade.FocusControl;
    except
    end;

end;

{ Felipe - Criado método para bloquear duplicidade de itens na tela de SubItens (ItensFilhos)
            quando o parâmetro "permitiritemduplicado" possuir valor "N". (12/04/2016) }

function TDMItens.VerificaItensFilhosDuplicado(nItem: Integer): Boolean;
var
    TempDS: TClientDataSet;
    Achou: Boolean;
begin
    Achou := False;
    TempDS := TClientDataSet.Create(self);
    TempDS.CloneCursor(C_ItensFilhos, true);
    TempDS.First;
    if TempDS.Locate('SUBITEM', nItem, []) then
        begin
            Achou := True;
        end;
    TempDS.Free;
    Result := Achou;
end;

procedure TDMItens.C_ItensFilhosAfterOpen(DataSet: TDataSet);
begin
    inherited;
    sStartPerformance := sStartPerformance + Format('[%s] - Abriu ' + DataSet.Name, [TimeToStr(Now)]) + #13;
end;

procedure TDMItens.C_ItensFilhosCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ItensFilhosicCustoMedio.Value := C_ItensFilhosCustoMedio.Value * C_ItensFilhosFator.Value;

    C_ItensFilhosicSubTotal.Value := (C_ItensFilhosQuantidade.Value * C_ItensFilhosicCustoMedio.Value);

    C_ItensFilhosicPreco.Value := (C_ItensFilhosPreco.Value / IIF(C_ItensFilhosFatorUndPrecoVenda.Value > 0, C_ItensFilhosFatorUndPrecoVenda.Value, 1)) *
        C_ItensFilhosFator.Value;

    C_ItensFilhosicSubTotalPreco.Value := (C_ItensFilhosQuantidade.Value * C_ItensFilhosicPreco.Value);

    // Felipe - Calcular SubTotal para as Tabelas Adicionais (Parâmetro VisualizarTabelasPrecos)

    C_ItensFilhosicSubTotalTabela1.Value := C_ItensFilhosTABELAPRECO1.Value * C_ItensFilhosQUANTIDADE.Value;
    C_ItensFilhosicSubTotalTabela2.Value := C_ItensFilhosTABELAPRECO2.Value * C_ItensFilhosQUANTIDADE.Value;
    C_ItensFilhosicSubTotalTabela3.Value := C_ItensFilhosTABELAPRECO3.Value * C_ItensFilhosQUANTIDADE.Value;

end;

procedure TDMItens.C_ItensFilhosUNIDADEValidate(Sender: TField);
begin
    inherited;
    if not C_ItensUnidades.Locate('UNIDADE', Sender.Value, []) then
        begin
            DlgMsg.ShowMsg(8028);
            raise Exception.Create('@@');
        end;
end;

procedure TDMItens.DMComponentPesquisar2_SQLFinal(Sender: TObject;
    var SelectFinal: string);
var s: string;
begin
    inherited;
    if Pos('order by', SelectFinal) > 0 then
        begin
            s := Copy(SelectFinal, 1, Pos('order by', SelectFinal) - 1);
            SelectFinal := s + ' order by descricao';
        end
    else
        SelectFinal := SelectFinal + ' order by descricao ';
end;

procedure TDMItens.C_ServicosPrecoNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nSeq);
    DataSet['ServicoPreco'] := nSeq;
    DataSet['ITEM'] := C_Tabela.FieldByName('ITEM').Value;
    DataSet['PRECO'] := 0.00;
end;

procedure TDMItens.AtualizaFatores;
begin
    DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);
    //yImpostosFederais := yImpostosFederais + (C_TabelaAliqIR.Value + C_TabelaAliqss.Value + C_TabelaALIQPIS.Value + C_TabelaALIQCOFINS.Value);
end;

procedure TDMItens.C_TabelalkBaseCreditoPisCofinsChange(Sender: TField);
begin
    inherited;
    with DMItens do
        begin
            C_NaturezaReceitaPisCofins.Close;
            Q_NaturezaReceitaPisCofins.Params[0].AsString := C_CstPisCofinsSAIDACSTPISCOFINS.AsString;
            C_NaturezaReceitaPisCofins.FetchParams;
            C_NaturezaReceitaPisCofins.Open;
            //    if (C_CstPisCofinsSAIDACSTPISCOFINS.AsInteger < 4) then Begin
            //      if C_NaturezaReceitaPisCofins.RecordCount <= 0 Then
            //         C_TabelaNATURAZARECEITAPISCOFINS.Value := 0;
            //    end;
        end;
end;

procedure TDMItens.C_TabelaAfterScroll(DataSet: TDataSet);
begin
    inherited;
    //  C_NaturezaReceitaPisCofins.Close;
    //  Q_NaturezaReceitaPisCofins.Params[0].AsString := C_TabelaCSTPISCOFINSSAIDA.AsString;
    //  C_NaturezaReceitaPisCofins.FetchParams;
    //  C_NaturezaReceitaPisCofins.Open;
    //  C_TabelalkNaturezaReceitaPisCofins.RefreshLookupList;
end;

procedure TDMItens.C_TabelaCSTPISCOFINSSAIDAChange(Sender: TField);
begin
    inherited;
    //  C_NaturezaReceitaPisCofins.Close;
    //  Q_NaturezaReceitaPisCofins.Params[0].AsString := C_TabelaCSTPISCOFINSSAIDA.AsString;
    //  C_NaturezaReceitaPisCofins.FetchParams;
    //  C_NaturezaReceitaPisCofins.Open;
    //  C_TabelalkNaturezaReceitaPisCofins.RefreshLookupList;
end;

procedure TDMItens.C_ItensCodigosNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ItensCodigosUNIDADE.Value := C_TabelaUNIDADE.value;
end;

procedure TDMItens.C_ItensCodigosCODIGOValidate(Sender: TField);
begin
    inherited;
    if ((Sender.AsVariant <> null) and (Length(Sender.Value) < 12) and (C_TabelaITEM.Value <> -8888)) then
        begin
            DlgMsg.ShowMsg(50, [pChar('Código de Barras Invalido!')]);
            raise Exception.Create('@@');
        end;
    if DMProjeto.VerificaExistenciaItensCodigos(C_ItensCodigosCODIGO.Value) then
        begin
            DlgMsg.ShowMsg(50, [pChar('Código de Barras Existente!')]);
            raise Exception.Create('@@');
        end;
end;

procedure TDMItens.C_ItensUnidadesCODIGOValidate(Sender: TField);
var
    i: integer;
begin
    inherited;

    for i := 1 to Length(C_ItensUnidadesCODIGO.AsString) do
        begin
            if not (C_ItensUnidadesCODIGO.AsString[i] in ['0'..'9']) then
                raise Exception.Create('Digitar somente números para o código!');
        end;

    if DMProjeto.ValidarCodigoItensUnidades(C_ItensUnidadesCODIGO.AsString) then
        raise Exception.Create('O Código informado já existe. Não será possível adicionar/alterar. Verifique!');

end;

procedure TDMItens.C_CSTsBeforeOpen(DataSet: TDataSet);
var
    tipotributacao: string;
begin
    inherited;
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'select f.favorecido, coalesce(f.tipoempresa, ''N'') as tipoempresa from favorecidos f where f.favorecido = -1';
            Open;
            tipotributacao := FieldByName('tipoempresa').AsString;
        end;

    with Q_CSTs do
        begin
            if (tipotributacao <> 'N') then
                begin
                    ParamByName('cstI').AsString := '000';
                    ParamByName('cstF').AsString := '090';
                end
            else
                begin
                    ParamByName('cstI').AsString := '101';
                    ParamByName('cstF').AsString := '900';
                end;
        end;

end;

procedure TDMItens.Q_ItensFilhosBeforeOpen(DataSet: TDataSet);
var
    i, qtdTabelas: integer;
    index: string;
begin
    inherited;

    qtdTabelas := ContaStrings(DMProjeto.sTabelasPreco, ';');

    if (qtdTabelas > 3) then
        qtdTabelas := 3;

    for i := 1 to qtdTabelas do
        begin
            with Q_ItensFilhos do
                begin
                    index := IntToStr(i);
                    Close;
                    SQL.Text := Replace(SQL.Text, PreencherStr(index, index, 3), SeparaStrings(DMProjeto.sTabelasPreco, ';', i));
                end;
        end;

end;

end.

