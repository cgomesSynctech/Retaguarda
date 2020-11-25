unit DM_Itens;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
    IBQuery, DBClient, Provider, Variants, IBEvents, TS_LastDataObject;

type
    TDMItens = class(TDMManutencao)
        Q_TiposItens: TIBQuery;
        Q_Grupos: TIBQuery;
        Q_Unidades: TIBQuery;
        C_Grupos: TClientDataSet;
        P_TiposItens: TDataSetProvider;
        C_TiposItens: TClientDataSet;
        C_TiposItensTIPOITEM: TIntegerField;
        C_Unidades: TClientDataSet;
        P_Unidades: TDataSetProvider;
        C_TabelacmbUnidade: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_TiposItensDESCRICAO: TStringField;
        C_TabelaITEM: TIntegerField;
        C_TabelaTIPOITEM: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAOCOMPRA: TStringField;
        C_TabelaGRUPO: TIntegerField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaULTIMOFORNECEDOR: TIntegerField;
        C_TabelaDESATIVADO: TStringField;
        C_TabelaIMPORTACAO: TIntegerField;
        C_TabelaUNIDADE: TStringField;
        C_TabelaLOCALIZACAO: TStringField;
        C_TabelaPERCENTUAL: TBCDField;
        C_TabelaCOMISSAO: TBCDField;
        C_TabelaDESCONTOMAXIMO: TBCDField;
        C_TabelaCONTA_VENDA: TIntegerField;
        C_TabelaCONTA_CUSTO: TIntegerField;
        C_TabelaCONTA_INVENT: TIntegerField;
        C_UnidadesUNIDADE: TStringField;
        C_GruposDS: TDataSource;
        C_TiposItensDS: TDataSource;
        C_UnidadesDS: TDataSource;
        C_TabelacmbTipoItem: TStringField;
        Q_Contas: TIBQuery;
        P_Contas: TDataSetProvider;
        C_Contas: TClientDataSet;
        C_ContasCONTA: TIntegerField;
        C_ContasDESCRICAO: TStringField;
        C_ContasDESCTIPO: TStringField;
        C_TabelalkContaVenda: TStringField;
        C_TabelalkContaCusto: TStringField;
        C_TabelalkContaInvent: TStringField;
        C_ContasDS: TDataSource;
        C_TabelacfValorEstoqueTotal: TFloatField;
        Q_ProdutosPreco: TIBQuery;
        C_ProdutosPreco: TClientDataSet;
        C_ProdutosPrecoDS: TDataSource;
        Q_TabelasPreco: TIBQuery;
        Q_TabelasPrecoTABELAPRECO: TIntegerField;
        Q_TabelasPrecoDESCRICAO: TIBStringField;
        Q_TabelasPrecoPERCENTUAL: TIBBCDField;
        Q_TabelasPrecoDESATIVADO: TIBStringField;
        C_TabelasPreco: TClientDataSet;
        P_TabelasPreco: TDataSetProvider;
        C_TabelasPrecoTABELAPRECO: TIntegerField;
        C_TabelasPrecoDESCRICAO: TStringField;
        C_TabelasPrecoPERCENTUAL: TBCDField;
        U_ProdutosPreco: TIBUpdateSQL;
        C_ProdutosPrecoITEM: TIntegerField;
        C_ProdutosPrecoTABELAPRECO: TIntegerField;
        C_ProdutosPrecolkTabela: TStringField;
        C_ProdutosPrecoPRECOMANUAL: TStringField;
        C_GruposGRUPO: TIntegerField;
        C_GruposCODIGO: TStringField;
        C_GruposDESCRICAOGRUPO: TStringField;
        C_GruposTIPOITEM: TIntegerField;
        Q_Master2DS: TDataSource;
        Q_TiposItensTIPOITEM: TIntegerField;
        Q_TiposItensDESCRICAO: TIBStringField;
        C_TiposItensQ_Grupos: TDataSetField;
        C_TabelacmbGrupoItem: TStringField;
        Q_TabelasPrecoBASEADA: TIBStringField;
        C_TabelasPrecoDESATIVADO: TStringField;
        C_TabelasPrecoBASEADA: TStringField;
        C_TabelaQTDEMINIMO: TBCDField;
        C_TabelaQTDEMAXIMO: TBCDField;
        C_TabelaFABRICANTE: TIntegerField;
        Q_Fabricantes: TIBQuery;
        P_Fabricantes: TDataSetProvider;
        C_Fabricantes: TClientDataSet;
        C_FabricantesFABRICANTE: TIntegerField;
        C_FabricantesDESCRICAO: TStringField;
        C_TabelalkFabricante: TStringField;
        C_TabelaBALANCO: TStringField;
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
        C_TabelaESTOQUE: TBCDField;
        C_TabelaFOTO: TStringField;
        C_ProdutosPreco_icSelecionado: TIntegerField;
        C_ContasSALDO: TBCDField;
        C_ContasCONTAPAI: TIntegerField;
        C_TabelaPONTOPEDIDO: TBCDField;
        C_TabelaPROMOCAO: TStringField;
        C_TabelaHASCHILDREN: TStringField;
        C_TabelaREFERENCIA: TStringField;
        C_TabelaCUSTODESPESAS: TBCDField;
        Q_ItensFilhos: TIBQuery;
        C_ItensFilhos: TClientDataSet;
        C_ItensFilhosDS: TDataSource;
        U_ItensFilhos: TIBUpdateSQL;
        C_ItensFilhosIDFILHO: TIntegerField;
        C_ItensFilhosITEM: TIntegerField;
        C_ItensFilhosQUANTIDADE: TBCDField;
        C_ItensFilhosCODIGO: TStringField;
        C_ItensFilhosDESCRICAO: TStringField;
        C_ItensFilhosSUBITEM: TIntegerField;
        C_ContasTIPOCONTA: TIntegerField;
        C_TabelaPrecoCalc: TBCDField;
        C_ContasCODIGOREDUZIDO: TStringField;
        C_TabelaISITEMCOMPRA: TStringField;
        C_TabelaFATORLUCRO: TFloatField;
        C_TabelaDATACADASTRO: TDateField;
        C_TabelaPrecoCalcDescMax: TCurrencyField;
        C_TabelaMenorPrecoVenda: TCurrencyField;
        Q_SQL: TIBQuery;
        C_TabelaicDespesaFixa: TCurrencyField;
        C_GruposDESCONTOMAXIMO: TBCDField;
        C_GruposCOMISSAO: TBCDField;
        C_GruposCUSTODESPESAS: TBCDField;
        C_GruposFATORLUCRO: TBCDField;
        C_TabelaicFator: TFloatField;
        C_TabelaicEncargosCartoes: TCurrencyField;
        C_ProdutosPrecoPrecoMinimo: TCurrencyField;
        C_TabelaicCustoDespesas: TCurrencyField;
        C_TabelaicComissaoAplic: TCurrencyField;
        C_TabelaicComissao: TCurrencyField;
        C_TabelaicDescontoMaximo: TCurrencyField;
        C_TabelaicFatorMult: TCurrencyField;
        C_TabelaCONTROLEVALIDADE: TStringField;
        C_TabelaTEMPOMEDIOVALIDADE: TIntegerField;
        C_TabelaFORNECPREFERENCIA: TIntegerField;
        C_TabelaREVENDA: TStringField;
        C_TabelaULTIMACOMPRA: TDateField;
        C_TabelaCOMPENSACUSTO: TFloatField;
        IBEventos_Itens: TIBEvents;
        C_TabelaSEMLUCRO: TFloatField;
        C_TabelaCOMLUCRO: TFloatField;
        C_TabelaUNIDADEENTRADA: TStringField;
        C_TabelaUNIDADECARGA: TStringField;
        C_TabelaUNIDADEVAREJO: TStringField;
        C_TabelaUNIDADEMINIMA: TIntegerField;
        C_TabelalkUnidadeVarejo: TStringField;
        C_TabelalkUnidadeCompra: TStringField;
        C_TabelalkUnidadeCarga: TStringField;
        C_ItensUnidades: TClientDataSet;
        C_ItensUnidadesDS: TDataSource;
        Q_ItensUnidades: TIBQuery;
        C_ItensUnidadesITEMUNIDADE: TIntegerField;
        C_ItensUnidadesITEM: TIntegerField;
        C_ItensUnidadesUNIDADE: TStringField;
        C_ItensUnidadesFATOR: TFloatField;
        C_ItensUnidadeslkUnidade: TStringField;
        U_UnidadesItens: TIBUpdateSQL;
        C_ProdutosPrecoUNIDADE: TStringField;
        C_TabelaCUSTOMEDIO: TFloatField;
        C_TabelaPRECOCOMPRA: TFloatField;
        C_TabelaCUSTOCONTABIL: TFloatField;
        C_TabelaPRI_CUSTOMEDIO: TFloatField;
        C_TabelaPRI_CUSTOCONTABIL: TFloatField;
        C_TabelaPRI_PRECOCOMPRA: TFloatField;
        C_TabelaCUSTOPRODUTO: TFloatField;
        C_TabelaULTQTDECOMPRA: TBCDField;
        C_TabelaPRECO: TBCDField;
        C_ItensFilhosCUSTOMEDIO: TFloatField;
        C_ProdutosPrecoPRECO: TBCDField;
        C_TabelaicEstoque: TFloatField;
        C_TabelaicQtdeMinimo: TFloatField;
        C_TabelaicQtdeMaximo: TFloatField;
        C_TabelaicPontoPedido: TFloatField;
        C_TabelaFATORUNDVENDA: TFloatField;
        C_TabelaFATORUNDCOMPRA: TFloatField;
        C_TabelaicUltQtdeCompra: TFloatField;
        C_TabelaNOMEULTIMOFORNECEDOR: TStringField;
        C_TabelaNOMEFORNECPREFERENCIA: TStringField;
        C_ProdutosPrecoPERCENTUAL: TBCDField;
        C_ProdutosPrecoBASEADA: TStringField;
        C_TabelaicPrecoCompra: TFloatField;
        C_TabelaicCustoMedio: TFloatField;
        C_TabelaicCustoContabil: TFloatField;
        C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
        C_ProdutosPrecoTmp: TClientDataSet;
        IntegerField1: TIntegerField;
        IntegerField2: TIntegerField;
        IntegerField3: TIntegerField;
        IntegerField4: TIntegerField;
        StringField1: TStringField;
        CurrencyField1: TCurrencyField;
        StringField2: TStringField;
        BCDField1: TBCDField;
        BCDField2: TBCDField;
        StringField3: TStringField;
        StringField4: TStringField;
        C_ProdutosPrecoTmpicPrecoOriginal: TBCDField;
        C_TabelaicFatorLucro: TFloatField;
        P_ProdutosPreco: TDataSetProvider;
        P_ItensFilhos: TDataSetProvider;
        C_ItensFilhosUNIDADE: TStringField;
        C_ItensFilhosFATOR: TFloatField;
        C_ItensFilhoslkUnidade: TStringField;
        C_ItensFilhosicSubTotal: TCurrencyField;
        C_ItensFilhosPRECO: TBCDField;
        C_ItensFilhosicSubTotalPreco: TBCDField;
        C_ItensFilhosFatorUndPrecoVenda: TFloatField;
        C_ItensFilhosicPreco: TBCDField;
        C_ItensFilhosicCustoMedio: TBCDField;
        C_ItensFilhosOldFator: TFloatField;
        C_TabelaABC: TStringField;
        P_ItensUnidades: TDataSetProvider;
        Q_ItensAlmox: TIBQuery;
        U_ItensAlmox: TIBUpdateSQL;
        P_ItensAlmox: TDataSetProvider;
        C_ItensAlmox: TClientDataSet;
        C_ItensAlmoxDS: TDataSource;
        C_ItensAlmoxITEMALMOX: TIntegerField;
        C_ItensAlmoxITEM: TIntegerField;
        C_ItensAlmoxALMOXARIFADO: TIntegerField;
        C_ItensAlmoxESTOQUEALMOX: TBCDField;
        C_ItensAlmoxDESCRICAO: TStringField;
        C_ItensAlmoxicEstoqueAlmox: TBCDField;
        C_ItensFilhosUnidadeOld: TStringField;
        C_TabelaDESCRICAOCOMPLEMENTAR: TStringField;
        C_TabelaDESCRICAOTECNICA: TStringField;
        C_TabelaDESCRICAOOLD: TStringField;
        C_TabelaCST: TStringField;
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
        Q_CSTs: TIBQuery;
        P_CSTs: TDataSetProvider;
        C_CSTs: TClientDataSet;
        C_CSTsCST: TStringField;
        C_CSTsDESCRICAO: TStringField;
        C_CSTsDS: TDataSource;
        C_SitECF: TClientDataSet;
        C_SitECFSITUACAOECF: TStringField;
        C_SitECFDESCRICAO: TStringField;
        P_SitECF: TDataSetProvider;
        Q_SitECF: TIBQuery;
        C_TabelalkSitECF: TStringField;
        C_TabelalkCST: TStringField;
        C_TabelaicImpostosFederais: TCurrencyField;
        C_TabelaicICMSAPLICADO: TBCDField;
        C_TabelaicSituacaoECF: TStringField;
        C_TabelaicCST: TStringField;
        C_TabelaicTVA: TBCDField;
        C_TabelaicTVAFonte: TBCDField;
        C_TabelaicAliqICMS: TBCDField;
        C_TabelaicReducaoCST: TBCDField;
        C_GruposCST: TStringField;
        C_GruposREDUCAOCST: TBCDField;
        C_GruposALIQICMS: TBCDField;
        C_GruposSITUACAOECF: TStringField;
        C_GruposTVA: TBCDField;
        C_GruposTVAFONTE: TBCDField;
        C_TabelaULTIMAVENDA: TDateField;
        C_TabelaESTOQUEOLD: TBCDField;
        C_TabelaIDENTIFICACAO: TStringField;
        C_UnidadesCOMQTD: TStringField;
        C_TabelaCUSTOMEDIOOLD: TFloatField;
        C_TabelaCODIGOBARRAS: TStringField;
        C_TabelaENCERRANTE: TStringField;
        C_TabelaAGENDARCONTATO: TStringField;
        C_TabelaPISCOFINS: TStringField;
        C_TabelaREDUCAOCSTENTRADA: TBCDField;
    C_ItensUnidadesPERCENTUAL: TBCDField;
    C_ItensUnidadesPRECOMANUAL: TBCDField;
    Q_GruposUnidades: TIBQuery;
    U_GruposUnidades: TIBUpdateSQL;
    P_GruposUnidades: TDataSetProvider;
    C_GruposUnidades: TClientDataSet;
    C_GruposUnidadesGRUPOUNIDADE: TIntegerField;
    C_GruposUnidadesGRUPO: TIntegerField;
    C_GruposUnidadesUNIDADE: TStringField;
    C_GruposUnidadesPERCENTUAL: TBCDField;
    C_GruposUnidadesFATOR: TFloatField;
    C_GruposUnidadeslkDescUnidade: TStringField;
    C_GruposUnidadesDS: TDataSource;
    C_ItensUnidadesHERDADO: TStringField;
    C_ItensUnidadesPERCENTUALMINIMO: TBCDField;
    C_GruposUnidadesPERCENTUALMINIMO: TBCDField;
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure C_ProdutosPrecoBeforePost(DataSet: TDataSet);
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure C_TabelaDESCRICAOChange(Sender: TField);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_ItensFilhosNewRecord(DataSet: TDataSet);
        procedure C_ItensFilhosSUBITEMChange(Sender: TField);
        procedure C_TabelaTIPOITEMChange(Sender: TField);
        procedure C_TabelaCODIGOValidate(Sender: TField);
        procedure DMComponentAposIniciar(Sender: TObject);
        procedure C_TabelaGRUPOChange(Sender: TField);
        procedure C_TabelaPRECOCOMPRAChange(Sender: TField);
        procedure C_ProdutosPrecoCalcFields(DataSet: TDataSet);
        procedure C_TabelaBeforePost(DataSet: TDataSet);
        procedure IBEventos_ItensEventAlert(Sender: TObject; EventName: string;
            EventCount: Integer; var CancelAlerts: Boolean);
        procedure C_TabelaicFatorLucroValidate(Sender: TField);
        procedure C_ItensUnidadesNewRecord(DataSet: TDataSet);
        procedure C_TabelaUNIDADEChange(Sender: TField);
        procedure C_TabelaicPrecoCompraChange(Sender: TField);
        procedure C_TabelaicCustoMedioChange(Sender: TField);
        procedure C_TabelaicCustoContabilChange(Sender: TField);
        procedure C_TabelaicEstoqueChange(Sender: TField);
        procedure C_TabelaicQtdeMinimoChange(Sender: TField);
        procedure C_TabelaicQtdeMaximoChange(Sender: TField);
        procedure C_TabelaicPontoPedidoChange(Sender: TField);
        procedure C_TabelaUNIDADEENTRADAChange(Sender: TField);
        procedure C_TabelaUNIDADECARGAChange(Sender: TField);
        procedure C_TabelaUNIDADEVAREJOChange(Sender: TField);
        procedure DMComponentAntesDeApagar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure DMComponentApagar_AntesApply(Sender: TObject);
        procedure DMComponentAntesDeDesativar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure C_ItensFilhosAfterOpen(DataSet: TDataSet);
        procedure C_TabelaULTIMOFORNECEDORChange(Sender: TField);
        procedure C_TabelaFORNECPREFERENCIAChange(Sender: TField);
        procedure C_TabelaDESCRICAOCOMPRAChange(Sender: TField);
        procedure C_ProdutosPrecoNewRecord(DataSet: TDataSet);
        procedure C_TabelaPRECOChange(Sender: TField);
        procedure C_ProdutosPrecoPRECOChange(Sender: TField);
        procedure C_TabelaPERCENTUALChange(Sender: TField);
        procedure C_ItensUnidadesFATORChange(Sender: TField);
        procedure C_ItensUnidadesBeforeDelete(DataSet: TDataSet);
        procedure C_TabelaUNIDADEValidate(Sender: TField);
        procedure C_TabelaAfterScroll(DataSet: TDataSet);
        procedure C_ProdutosPrecoBeforeOpen(DataSet: TDataSet);
        procedure C_ItensFilhosCalcFields(DataSet: TDataSet);
        procedure C_ItensFilhosBeforeOpen(DataSet: TDataSet);
        procedure C_ItensFilhosUNIDADEChange(Sender: TField);
        procedure C_ItensUnidadesBeforeOpen(DataSet: TDataSet);
        procedure C_ItensUnidadesAfterOpen(DataSet: TDataSet);
        procedure C_ItensAlmoxicEstoqueAlmoxChange(Sender: TField);
        procedure C_ItensAlmoxCalcFields(DataSet: TDataSet);
        procedure C_ItensAlmoxBeforeOpen(DataSet: TDataSet);
        procedure C_TabelaSITUACAOECFChange(Sender: TField);
        procedure C_TabelaCSTChange(Sender: TField);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    private
        bCalcItens, bNotCalcFields: boolean;
        nSeq, nSeqFilhos: integer;

        function TipoConta(nConta: Integer): Integer;

    public
        bAlterandoProdutosPreco, bChangeUnidade, bChangeUnidadeCompra: boolean;
        nTipoItem: integer;
        yMaiorComissao, yDespesaFixa, yImpostosFederais, yEncargosCartoes, yLucroPadrao: Currency;

        nGrupo, nFabricante, nContaVenda, nContaCusto, nContaInventario, nFornecedor: Integer;
        sUnidade: string;

        nDescMaxUsuarios: Currency;

        procedure GravarItensUnidades;
        procedure GravarProdutosPreco;
        procedure GravarItensFilhos;
        //procedure GravarItensAlmox;

        function VerificaPreco(sUnidExiste: string): boolean;
        function VerificaUnidade(sUnidExiste: string): boolean;
        procedure CalcPrecoVenda;
        procedure AdicionaTabelaPreco(sUnidade: string; nPrecoUnidade: Currency = 0);
        procedure TrocarEmProdutosPreco(sUnidade: string);

        function ExisteProdutosPreco(sUnidade: string): boolean;
        procedure VisualizaTabelaPreco(sUnidade: string);

        function GetPrecoTabZero(DataSet: TDataSet; sUnidade: string): Currency;

        function ExistemOutrasTabZero: boolean;
        procedure CorrigirPrecosOutrasUnds(PrecoNovo, PrecoVelho: Currency);
        procedure ApagarPrecosUnd(sUnidade: string);
        procedure CalcularPercentualGrupo;
    end;

var
    DMItens: TDMItens;

implementation
uses DM_Projeto, funcoes, TDM_PadraoManutencao;

{$R *.DFM}

procedure TDMItens.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaTipoItem.value := nTipoItem;

    C_TabelaPesoBruto.value := 0;
    C_TabelaPesoLiquido.value := 0;
    C_TabelaIPICompra.value := 0;
    C_TabelaIPIVenda.value := 0;

    C_TabelaIDENTIFICACAO.Value := 'N';
    C_TabelaBalanco.value := 'N';
    C_TabelaCustoMedio.value := 0;
    C_TabelaCustoContabil.value := 0;

    C_TabelaComissao.value := -999;
    C_TabelaDescontoMaximo.value := -999;
    C_TabelaCustoDespesas.value := -999;
    C_TabelaFatorLucro.value := -999;

    C_TabelaTVA.value := 0;
    C_TabelaTVAFonte.value := 0;
    C_TabelaSituacaoECF.value := 'T';
    C_TabelaCST.value := '00';

    C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;
    C_TabelaReducaoCST.value := 0;


    if DMProjeto.Parametro('ValorCompensaCusto') <> '' then
        C_TabelaCompensaCusto.value := StrToFloat(DMProjeto.Parametro('ValorCompensaCusto'))
    Else
        C_TabelaCompensaCusto.value := 0.00;

    C_TabelaPercentual.value := 0;
    C_TabelaEstoque.value := 0;
    C_TabelaPontoPedido.value := 0;
    C_TabelaQtdeMinimo.value := 0;
    C_TabelaQtdeMaximo.value := 0;
//    C_TabelaCompensaCusto.value := 0;
    C_TabelaDesativado.value := 'N';
    C_TabelaHasChildren.value := 'N';
    C_TabelaControleValidade.value := 'N';
    C_TabelaRevenda.Value := 'S';

    if DMProjeto.Parametro('UnidadePadrao') <> '' then
        C_TabelaUnidade.Value := DMProjeto.Parametro('UnidadePadrao')
    else
        C_TabelaUnidade.Value := 'Und';

    C_TabelaPreco.value := 0;

    if C_TabelaTipoItem.Value = 1 then
    begin
        C_TabelaConta_Invent.value := IIF(nContaInventario > 0, nContaInventario, DMProjeto.ContaPadrao(6));
        C_TabelaConta_Custo.value := IIF(nContaCusto > 0, nContaCusto, DMProjeto.ContaPadrao(7));
        C_TabelaConta_Venda.value := IIF(nContaVenda > 0, nContaVenda, DMProjeto.ContaPadrao(8));
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

end;

procedure TDMItens.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMItens := self;
    IBEventos_Itens.RegisterEvents;
end;

procedure TDMItens.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nTipoItem := 1;
    nSeq := -1;
    nSeqFilhos := -1;
end;

procedure TDMItens.C_ProdutosPrecoBeforePost(DataSet: TDataSet);
begin
    inherited;
    if DataSet['TabelaPreco'] = null then
        abort;
end;

procedure TDMItens.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    bNotCalcFields := false;
    C_ItensUnidades.Close;
    C_ItensFilhos.Close;
    C_ItensAlmox.Close;
end;

procedure TDMItens.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
    inherited;
    C_TabelasPreco.Open;
    C_ItensUnidades.Open;
    C_ProdutosPreco.Close;
    C_ProdutosPreco.Open;
end;

procedure TDMItens.DMComponentGravar4_AposCommit(Sender: TObject);
var nValor: integer;
begin
    inherited;
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
end;

procedure TDMItens.C_TabelaDESCRICAOChange(Sender: TField);
begin
    inherited;
    if Trim(Sender.asString) <> Sender.asString then
        Sender.asString := Trim(Sender.asString)
    else if C_TabelaDescricaoCompra.IsNull then
        C_TabelaDescricaoCompra.value := C_TabelaDescricao.value
    else if C_TabelaDescricaoCompra.value = C_TabelaDescricaoold.value then
        C_TabelaDescricaoCompra.value := C_TabelaDescricao.value;

    C_TabelaDescricaoOld.value := C_TabelaDescricao.value;
end;

procedure TDMItens.C_TabelaCalcFields(DataSet: TDataSet);
var
    nFatorUndVenda, nFatorUndCompra: double;
begin
    inherited;
    if bNotCalcFields then
        exit;

    bCalcItens := true;

    try
        {Setando grupos correto}
        if (C_TabelaGrupo.Value > 0) then
            C_Grupos.Locate('Grupo', C_TabelaGrupo.Value, []);

        C_TabelaicComissao.Value := IIF(C_TabelaComissao.Value > -999, C_TabelaComissao.Value,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposComissao.Value > -999), C_GruposComissao.Value, yMaiorComissao));

        C_TabelaicComissaoAplic.Value := IIF(C_TabelaicComissao.Value >= 0, C_TabelaicComissao.Value, yMaiorComissao);

        C_TabelaicDespesaFixa.Value := yDespesaFixa;

        C_TabelaicImpostosFederais.Value := yImpostosFederais;

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

        C_TabelacfValorEstoqueTotal.Value := C_TabelaEstoque.value * C_TabelaCustoMedio.value;

        {Convertendo campos afetados pela multi - unidade}
        nFatorUndVenda := IIF((C_TabelaFatorUndVenda.Value = 0) or (C_TabelaTipoItem.Value > 1), 1, C_TabelaFatorUndVenda.Value);
        nFatorUndCompra := IIF((C_TabelaFatorUndCompra.Value = 0) or (C_TabelaTipoItem.Value > 1), 1, C_TabelaFatorUndCompra.Value);

        C_TabelaicEstoque.Value := C_TabelaEstoque.Value / nFatorUndVenda;
        C_TabelaicQtdeMinimo.Value := C_TabelaQtdeMinimo.Value / nFatorUndVenda;
        C_TabelaicQtdeMaximo.Value := C_TabelaQtdeMaximo.Value / nFatorUndVenda;
        C_TabelaicPontoPedido.Value := C_TabelaPontoPedido.Value / nFatorUndVenda;
        C_TabelaicUltQtdeCompra.Value := C_TabelaUltQtdeCompra.Value / nFatorUndVenda;

        C_TabelaicPrecoCompra.asFloat := C_TabelaPrecoCompra.asFloat * nFatorUndCompra;
        C_TabelaicCustoMedio.asFloat := C_TabelaCustoMedio.asFloat * nFatorUndVenda;
        C_TabelaicCustoContabil.asFloat := C_TabelaCustoContabil.asFloat * nFatorUndVenda;

        {.}

    finally

        bCalcItens := false;

    end;

    CalcPrecoVenda;
end;

procedure TDMItens.DMComponentGravar3_AposApply(Sender: TObject);
var
    nAjuste: integer;
begin
    inherited;

    //if not bAlteracao and
        //(not C_ProdutosPreco.Active or (C_ProdutosPreco.RecordCount = 0)) then
    AdicionaTabelaPreco(C_TabelaUnidade.Value, C_TabelaPreco.Value);

    GravarItensUnidades;

    GravarProdutosPreco;

    GravarItensFilhos;

    //GravarItensAlmox;

//    nTipoItem := C_TabelaTipoItem.value;
//   if not bAlteracao then
//    begin
//        if (nTipoItem = 1) and {(C_TabelaCustoMedio.value > 0) and}(C_TabelaEstoque.value > 0) then
//        begin
//           {Passando icEstoque pois o trigger de Transacoes estoque já multiplica a quantidade pelo fator}
//            nAjuste := DMProjeto.AjusteItem(DMProjeto.dDataSistema, C_TabelaItem.value, C_TabelaUnidade.Value, DMProjeto.ContaPadrao(5),
//                C_TabelaicEstoque.value, C_TabelaCustoMedio.value, '', 'EST.INICIAL', DMProjeto.dDataSistema + 5);
//
//            DMProjeto.Contabiliza(18, DMProjeto.dDataSistema, nAjuste, 0, C_TabelaConta_Invent.value, DMProjeto.ContaPadrao(5),
//                (C_TabelaEstoque.value * C_TabelaCustoMedio.value), '', 'Open Balance: ' + C_TabelaDescricao.value);
//        end;
//    end
//    else if bAlteracao then
//    begin
//        if (nTipoItem = 1) and
//            ((C_TabelaEstoque.value <> C_TabelaEstoqueOld.Value) or (C_TabelaCustoMedio.value <> C_TabelaCustoMedioOld.Value)) then
//            with Q_SQL do
//            begin
//                Close;
//                SQL.Text := 'Select ai.* From AjustesItens ai inner join Contas c ON ai.Conta = c.Conta ' +
//                    'where ai.Item = :I and c.TipoConta = 12 ';
//                Params[0].asInteger := C_TabelaItem.Value;
//                Open;
//                Last;
//
//                if (RecordCount > 0) then
//                begin
//                    nAjuste := FieldByName('AjusteItem').Value;
//                    Close;
//                    SQL.Text := 'Delete from AjustesItens where AjusteItem = :A';
//                    Params[0].asInteger := nAjuste;
//                    ExecSQL;
//
//                    DMProjeto.CancelarLancamentos(IntToStr(nAjuste));
//
//                end;
//
//                nAjuste := DMProjeto.AjusteItem(DMProjeto.dDataSistema, C_TabelaItem.value, C_TabelaUnidade.Value, DMProjeto.ContaPadrao(5),
//                    C_TabelaicEstoque.value, C_TabelaCustoMedio.value, '', 'EST.INICIAL', DMProjeto.dDataSistema + 5);
//
//                DMProjeto.Contabiliza(18, DMProjeto.dDataSistema, nAjuste, 0, C_TabelaConta_Invent.value, DMProjeto.ContaPadrao(5),
//                    (C_TabelaEstoque.value * C_TabelaCustoMedio.value), '', 'Open Balance: ' + C_TabelaDescricao.value);
//
//            end;
//    end;
//    
end;

procedure TDMItens.GravarItensUnidades;
var Registro : integer;
begin
    if C_ItensUnidades.Active and (C_ItensUnidades.ChangeCount > 0) then
        with C_ItensUnidades do
        begin
            First;
            while not EOF do
            begin
                if FieldByName('Item').asinteger <= 0 then
                begin
                    Edit;
                    FieldByName('ITEM').asInteger := C_TabelaItem.Value;
                    Post;
                end;
                Next;
            end;
            //if C_ItensUnidades.State in ([dsEdit, dsBrowse]) then
                if ApplyUpdates(0) > 0 then
                    raise Exception.Create('Não foi possível gravar os Fatores de Conversão das Unidades!')
                 else begin
                   // Para que o ChangeCount volte a zero...
                   C_ItensUnidades.Close;
                   C_ItensUnidades.Open;
                 end;
        end;
end;

procedure TDMItens.GravarProdutosPreco;
var
    sFilter: string;
begin
    if C_ProdutosPreco.Active and (C_ProdutosPreco.ChangeCount > 0) then
        with C_ProdutosPreco do
        begin
            if Filtered then
                sFilter := Filter;

            try
                Filtered := false;

                First;
                while not EOF do
                begin
                    if FieldByName('Item').asinteger <= 0 then
                    begin
                        Edit;
                        FieldByName('ITEM').asInteger := C_TabelaItem.Value;
                        Post;
                    end;

                    Next;
                end;
                if ApplyUpdates(0) > 0 then
                    raise Exception.Create('Não foi possível gravar o(s) Preço(s)!')
               else begin
                 // Para que o ChangeCount volte a zero...
                 C_ProdutosPreco.Close;
                 C_ProdutosPreco.Open;
               end;
            finally
                if sFilter <> '' then
                    Filtered := true;
            end;
        end;
end;

procedure TDMItens.GravarItensFilhos;
begin

    if C_ItensFilhos.Active and (C_ItensFilhos.ChangeCount > 0) then
        with C_ItensFilhos do
        begin
            First;
            while not EOF do
            begin
                if FieldByName('Item').asinteger <= 0 then
                begin
                    Edit;
                    FieldByName('ITEM').asInteger := C_TabelaItem.Value;
                end;

                Next;
            end;

            if ApplyUpdates(0) > 0 then
                raise Exception.Create('Não foi possível gravar os Sub Itens do Produto!');

            C_ItensFilhos.Close;

        end;
end;
{
procedure TDMItens.GravarItensAlmox;
begin

  if C_ItensAlmox.Active and (C_ItensAlmox.ChangeCount > 0) then with C_ItensAlmox do begin
    First;
    while not EOF do begin
      if FieldByName('Item').asinteger <= 0 then begin
        Edit;
        FieldByName('ITEM').asInteger := C_TabelaItem.Value;
      end;

      Next;
    end;

    if ApplyUpdates(0) > 0 then
      raise Exception.Create('Não foi possível gravar os Almoxarifados do Produto!');

    C_ItensAlmox.Close;

  end;
end;
}

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

    if (pos('CAMPO', where) > 0) then
        where := replace(where, 'CAMPO', 'i.campo');

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

function TDMItens.VerificaUnidade(sUnidExiste: string): boolean;
var bExiste: boolean;
begin
    bExiste := false;
    with C_ItensUnidades do
    begin
        if not Active then
            Open;
        DisableControls;
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

function TDMItens.VerificaPreco(sUnidExiste: string): boolean;
var bExiste: boolean;
    C_Tmp: TClientDataset;
begin
    bExiste := false;
    C_Tmp := TClientDataSet.Create(self);
    with C_Tmp do
    begin
        CloneCursor(C_ProdutosPreco, true);
        DisableControls;
        if Locate('TabelaPreco;Unidade', VarArrayOf([0, sUnidExiste]), []) then
            //       if fieldbyname('Preco').asCurrency = 0 then
            bExiste := true;
        Free;
    end;
    result := not bExiste;
end;

procedure TDMItens.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if DMProjeto.Parametro('NaoObrigarItensDesc') <> 'S' then
    begin
        if not bAlteracao and DMProjeto.VerificaExistenciaItem(C_TabelaItem.value, 'D', C_TabelaDescricao.value) then
        begin
            DlgMsg.ShowMsg(5001, ['Item']);
            bSkip := true;
            Exit;
        end;
    end;

    if not bAlteracao then
    begin
        C_Tabela.Edit;
        C_TabelaCustoContabil.value := C_TabelaCustoMedio.value;

        if C_TabelaTIPOITEM.value = 3 then Begin
            C_TabelaAliqICMS.value := DMProjeto.nISS;
            C_TabelaSITUACAOECF.AsString := 'S';
            C_TabelaIsItemCompra.Value := 'N';
            C_TabelaConta_Custo.AsVariant := null;
            C_TabelaConta_Venda.asvariant := DMProjeto.ContaPadrao(30);
        End;
    end;

    { Verificando necessidade de se chamar as gravações de Precos e SubItens }
    { Isto faz-se necessário quando o Changecount de C_Tabela é zero (ou seja, nada foi modificando no principal) e
      o changecounte de ProdutosPreco ou ItensFilhos é maior que zero. }
    if bAlteracao and (C_Tabela.ChangeCount = 0) then
    begin
        GravarItensUnidades;
        GravarProdutosPreco;
        GravarItensFilhos;
        //GravarItensAlmox;
    end;
end;

procedure TDMItens.C_ItensFilhosNewRecord(DataSet: TDataSet);
begin
    inherited;
    dec(nSeqFilhos);
    C_ItensFilhosIDFilho.value := nSeqFilhos;
    C_ItensFilhosQuantidade.value := 1;
    C_ItensFilhosITEM.Value := C_TabelaItem.Value;
end;

procedure TDMItens.C_ItensFilhosSUBITEMChange(Sender: TField);
begin
    inherited;
    C_ItensFilhosCodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').asstring;
    C_ItensFilhosDescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').asstring;
    C_ItensFilhosUnidade.Value := DMProjeto.C_LocalizarItens.FieldByName('Unidade').asstring;
    C_ItensFilhosFator.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;
    C_ItensFilhosCustoMedio.value := DMProjeto.C_LocalizarItens.FieldByName('customedio').asFloat;
    C_ItensFilhosPreco.value := DMProjeto.C_LocalizarItens.FieldByName('Preco').asCurrency;
    C_ItensFilhosFatorUndPrecoVenda.value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').asFloat;

    try
        C_ItensFilhosQuantidade.FocusControl;
    except
    end;

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

procedure TDMItens.C_TabelaCODIGOValidate(Sender: TField);
begin
    inherited;
    if DMProjeto.VerificaExistenciaItem(C_TabelaItem.value, 'C', C_TabelaCODIGO.value) then
    begin
        DlgMsg.ShowMsg(5001, ['Item']);
        raise Exception.Create('@@');
    end;
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

    DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);
end;

procedure TDMItens.CalcPrecoVenda;
var
    nPercCusto, nPercTotal: double;
    nDescMax, nCusto: Currency;
begin
    nPercCusto := C_TabelaicCustoDespesas.value +
        C_TabelaicDespesaFixa.Value +
        C_TabelaicImpostosFederais.Value +
        C_TabelaicComissaoAplic.Value +
        C_TabelaicEncargosCartoes.Value +
        C_TabelaicICMSAplicado.Value +
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

    nCusto := C_TabelaicCustoMedio.Value * (1 + C_TabelaCompensaCusto.Value / 100);

    {Menor Preço de Venda}
    C_TabelaMenorPrecoVenda.Value := nCusto / nPercCusto;

    {Desconto Máximo}
    nDescMax := C_TabelaicDescontoMaximo.Value;

    C_TabelaPrecoCalcDescMax.Value := ((nCusto / nPercTotal) * (1 - (nDescMax / 100)));

    {Preço de Venda - Por motivos de eventos sobre o preco mínimo acima calculado, esta atribuição é a última}
    C_TabelaPrecoCalc.value := Arredondar(nCusto / nPercTotal, 2);

    {Fator Multiplicador}
    if C_TabelaicCustoMedio.Value > 0 then
        C_TabelaicFatorMult.Value := C_TabelaPrecoCalc.Value / C_TabelaicCustoMedio.Value
    else
        C_TabelaicFatorMult.Value := 0;

end;

procedure TDMItens.C_TabelaGRUPOChange(Sender: TField);
begin
    inherited;
    if not C_Grupos.Locate('Grupo', Sender.asInteger, []) then
        exit;

    //Para que os do grupo sejam considerados
    if not bAlteracao and (Sender.asVariant <> null) then  begin
        C_TabelaFatorLucro.Value := -999;
        C_TabelaCustoDespesas.Value := -999;
        C_TabelaSituacaoECF.asVariant := null;
        C_TabelaCST.asVariant := null;
        C_TabelaTVA.value := -999;
        C_TabelaTVAFonte.value := -999;
        C_TabelaAliqICMS.value := -999;
        C_TabelaReducaoCST.value := -999;
        if C_TabelaTipoItem.Value = 3 then Begin
           C_TabelaSituacaoECF.Value := 'S';
           C_TabelaAliqICMS.value := DMProjeto.nISS;
           C_TabelaISITEMCOMPRA.value := 'N';
        End;
    end
    else if not bAlteracao then begin
        C_TabelaFatorLucro.Value := -999;
        C_TabelaCustoDespesas.Value := -999;
        C_TabelaTVA.value := 0;
        C_TabelaTVAFonte.value := 0;
        C_TabelaSituacaoECF.value := 'T';
        C_TabelaCST.value := '00';
        C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;
        C_TabelaReducaoCST.value := 0;
        if C_TabelaTipoItem.Value = 3 then Begin
           C_TabelaSituacaoECF.Value := 'S';
           C_TabelaAliqICMS.value := DMProjeto.nISS;
           C_TabelaISITEMCOMPRA.value := 'N';
        End;
    end;
    DMItens.CalcularPercentualGrupo;
end;

procedure TDMItens.C_ProdutosPrecoCalcFields(DataSet: TDataSet);
var
    nDescMax: Currency;
begin
    inherited;
    if DataSet.FieldByName('PrecoManual').asString = 'S' then
        DataSet.FieldByName('_icSelecionado').asInteger := 1
    else
        DataSet.FieldByName('_icSelecionado').asInteger := 0;

    {Desconto Máximo}
    nDescMax := C_TabelaicDescontoMaximo.Value;
    {  if nDescMax = 0 then
        nDescMax := nDescMaxUsuarios;}

    if nDescMax > 0 then
        DataSet.FieldByName('PrecoMinimo').asCurrency := (DataSet.FieldByName('Preco').asCurrency * (1 - (nDescMax / 100)))
    else
        DataSet.FieldByName('PrecoMinimo').asCurrency := 0;

end;

procedure TDMItens.C_TabelaBeforePost(DataSet: TDataSet);
begin
    inherited;

    {Sincronizando o preço calculado}
    if (DMProjeto.Parametro('PrecosAutomaticos') = 'S') and not bExcluindo then
    begin
        if (C_TabelaPrecoCalc.Value > 0) and (ABS(C_TabelaPrecoCalc.Value - C_TabelaPreco.Value) > 0.01) and
            (DlgMsg.ShowMsg(2455) <> 100) then
        begin
            exit;
        end;

        if C_TabelaPrecoCalc.Value > 0 then
            C_TabelaPreco.Value := Arredondar(C_TabelaPrecoCalc.Value, 2);
    end;

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

procedure TDMItens.C_TabelaicFatorLucroValidate(Sender: TField);
var
    nSemLucro: double;
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

procedure TDMItens.C_ItensUnidadesNewRecord(DataSet: TDataSet);
begin
    inherited;
    DataSet['ItemUnidade'] := nSeq;
    if DMProjeto.Parametro('UnidadePadrao') <> '' then
        DataSet['Unidade'] := DMProjeto.Parametro('UnidadePadrao')
    else
        DataSet['Unidade'] := 'Und';
    DataSet['Fator'] := 1;
    DataSet['Percentual']  := 0;
    DataSet['PrecoManual'] := 0;
    DataSet['PercentualMinimo'] := 0;
    dec(nSeq);
end;

procedure TDMItens.C_TabelaPRECOCOMPRAChange(Sender: TField);
begin
    inherited;
    if C_TabelaTipoItem.Value = 1 then
    begin
        {O Preço de Compra já está na unidade mínima, pois veio da atribuição de icPrecoCompra que já faz a conversão}
        if (C_TabelaicCustoMedio.Value <= 0) or not bAlteracao then
        begin
            C_TabelaCustoMedio.Value := Sender.asFloat;
            C_TabelaCustoContabil.Value := Sender.asFloat;
        end;

        if (C_TabelaCustoContabil.Value <= 0) or not bAlteracao then
            C_TabelaCustoContabil.Value := Sender.asFloat;

    end
    else if C_TabelaTipoItem.Value in [2, 3] then
    begin
        C_TabelaCustoMedio.Value := Sender.asFloat;
        C_TabelaCustoContabil.Value := Sender.asFloat;
    end;

end;

procedure TDMItens.C_TabelaicPrecoCompraChange(Sender: TField);
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            C_TabelaPrecoCompra.asFloat := C_TabelaicPrecoCompra.Value /
                IIF((C_TabelaFatorUndCompra.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndCompra.Value, 1);
        finally
            bNotCalcFields := false;
            C_TabelaCalcFields(C_Tabela);
        end;
    end;

end;

procedure TDMItens.C_TabelaicCustoMedioChange(Sender: TField);
var
    nFatorAjuste: double;
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            {O Customédio já está na unidade de venda, pois ele só pode ser modificado numa alteracao com um duplo click}
            nFatorAjuste := IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1);
            C_TabelaCustoMedio.Value := C_TabelaicCustoMedio.Value / nFatorAjuste;
        finally
            bNotCalcFields := false;
            C_TabelaCalcFields(C_Tabela);
        end;
    end;

end;

procedure TDMItens.C_TabelaicCustoContabilChange(Sender: TField);
var
    nFatorAjuste: double;
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            nFatorAjuste := IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1) /
                IIF((C_TabelaFatorUndCompra.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndCompra.Value, 1);
            C_TabelaCustoContabil.Value := C_TabelaicCustoContabil.Value * nFatorAjuste;
        finally
            bNotCalcFields := false;
        end;
    end;
end;

procedure TDMItens.C_TabelaicEstoqueChange(Sender: TField);
begin
    inherited;
//Marcos    
{    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            C_TabelaEstoque.Value := C_TabelaicEstoque.Value *
                IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1);
        finally
            bNotCalcFields := false;
        end;
    end;
 }   
end;

procedure TDMItens.C_TabelaicQtdeMinimoChange(Sender: TField);
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            C_TabelaQtdeMinimo.Value := C_TabelaicQtdeMinimo.Value *
                IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1);
        finally
            bNotCalcFields := false;
        end;
    end;

end;

procedure TDMItens.C_TabelaicQtdeMaximoChange(Sender: TField);
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            C_TabelaQtdeMaximo.Value := C_TabelaicQtdeMaximo.Value *
                IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1);
        finally
            bNotCalcFields := false;
        end;
    end;
end;

procedure TDMItens.C_TabelaicPontoPedidoChange(Sender: TField);
begin
    inherited;
    if not bCalcItens then
    begin
        bNotCalcFields := true;
        try
            C_TabelaPontoPedido.Value := C_TabelaicPontoPedido.Value *
                IIF((C_TabelaFatorUndVenda.Value > 0) and (C_TabelaTipoItem.Value = 1), C_TabelaFatorUndVenda.Value, 1);
        finally
            bNotCalcFields := false;
        end;
    end;
end;

procedure TDMItens.C_TabelaUNIDADEChange(Sender: TField);
var
    xPreco: Currency;
    nFator, nFatorOld: Double;
begin
    inherited;

    bChangeUnidade := true;

    try

        if not C_ItensUnidades.Active then
            C_ItensUnidades.Open;

        nFatorOld := IIF(C_TabelaFatorUndVenda.Value > 0, C_TabelaFatorUndVenda.Value, 1);

        C_Unidades.Locate('Unidade', Sender.asString, [loCaseInsensitive]);

        if C_ItensUnidades.Locate('Unidade', C_TabelaUnidade.Value, [loCaseInsensitive]) then
        begin
            C_ItensUnidades.Edit;
            C_ItensUnidadesFator.Value := C_ItensUnidadesFator.Value; //Para que ocorra o change do campo;
            C_ItensUnidades.Post;

            C_TabelaFatorUndVenda.Value := C_ItensUnidadesFator.Value;
        end
        else if C_TabelaUnidade.Value <> '' then
        begin
            if not C_ItensUnidades.Active then
                C_ItensUnidades.Open;
            C_ItensUnidades.Append;
            C_ItensUnidadesUnidade.Value := C_TabelaUnidade.Value;
            nFator := IIF(ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value) > 0, ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value), 1);

            if (nFator <= 1) and (C_UnidadesComQtd.Value = 'S') and (nFatorOld > 0) then
                nFator := DMProjeto.SetFator(C_TabelaItem.Value, C_TabelaDescricao.Value, Sender.asString, false);

            C_ItensUnidadesFator.Value := IIF(nFator >= 1, nFator, 1);
            C_ItensUnidades.Post;

            C_TabelaFatorUndVenda.Value := C_ItensUnidadesFator.Value;
        end;

        C_TabelaUnidadeVarejo.Value := C_TabelaUnidade.Value;
        C_TabelaUnidadeCarga.Value := C_TabelaUnidade.Value;

        if not bAlteracao then
        begin
            C_TabelaUnidadeEntrada.Value := C_TabelaUnidade.Value;

            TrocarEmProdutosPreco(Sender.asString);
        end
        else if bAlteracao then
        begin
            xPreco := (C_TabelaPreco.asCurrency / nFatorOld) * C_TabelaFatorUndVenda.Value;
            AdicionaTabelaPreco(Sender.asString, xPreco);
        end;
    finally
        bChangeUnidade := false;
    end;

end;

procedure TDMItens.C_TabelaUNIDADEENTRADAChange(Sender: TField);
var
    nFator, nFatorOld: Double;
begin
    inherited;

    bChangeUnidadeCompra := true;

    try
        if not C_ItensUnidades.Active then
            C_ItensUnidades.Open;

        nFatorOld := IIF(C_TabelaFatorUndCompra.Value > 0, C_TabelaFatorUndCompra.Value, 1);

        C_Unidades.Locate('Unidade', Sender.asString, [loCaseInsensitive]);

        if C_ItensUnidades.Locate('Unidade', C_TabelaUnidadeEntrada.Value, [loCaseInsensitive]) then
        begin
            C_ItensUnidades.Edit;
            C_ItensUnidadesFator.Value := C_ItensUnidadesFator.Value; //Para que ocorra o change do campo;
            C_ItensUnidades.Post;

            C_TabelaFatorUndCompra.Value := C_ItensUnidadesFator.Value;
        end
        else if C_TabelaUnidade.Value <> '' then
        begin
            if not C_ItensUnidades.Active then
                C_ItensUnidades.Open;
            C_ItensUnidades.Append;
            C_ItensUnidadesUnidade.Value := C_TabelaUnidadeEntrada.Value;
            nFator := IIF(ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value) > 0, ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value), 1);

            if (nFator <= 1) and (C_UnidadesComQtd.Value = 'S') and (nFatorOld > 0) then
                nFator := DMProjeto.SetFator(C_TabelaItem.Value, C_TabelaDescricao.Value, Sender.asString, false);

            C_ItensUnidadesFator.Value := IIF(nFator >= 1, nFator, 1);
            C_ItensUnidades.Post;

            C_TabelaFatorUndCompra.Value := C_ItensUnidadesFator.Value;

        end;
    finally
        bChangeUnidadeCompra := false;
    end;

end;

procedure TDMItens.C_TabelaUNIDADECARGAChange(Sender: TField);
var
    nFator: Double;
begin
    inherited;
    if not C_ItensUnidades.Active then
        C_ItensUnidades.Open;

    C_Unidades.Locate('Unidade', Sender.asString, [loCaseInsensitive]);

    if not C_ItensUnidades.Locate('Unidade', C_TabelaUnidadeCarga.Value, [loCaseInsensitive]) then
    begin
        if C_TabelaUnidade.Value <> '' then
        begin
            if not C_ItensUnidades.Active then
                C_ItensUnidades.Open;
            C_ItensUnidades.Append;
            C_ItensUnidadesUnidade.Value := C_TabelaUnidadeCarga.Value;
            nFator := IIF(ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value) > 0, ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value), 1);

            if (nFator <= 1) and (C_UnidadesComQtd.Value = 'S') then
                nFator := DMProjeto.SetFator(C_TabelaItem.Value, C_TabelaDescricao.Value, Sender.asString, false);

            C_ItensUnidadesFator.Value := IIF(nFator >= 1, nFator, 1);
        end;
    end;

end;

procedure TDMItens.C_TabelaUNIDADEVAREJOChange(Sender: TField);
var
    nFator: Double;
begin
    inherited;

    if not C_ItensUnidades.Active then
        C_ItensUnidades.Open;

    C_Unidades.Locate('Unidade', Sender.asString, [loCaseInsensitive]);

    if not C_ItensUnidades.Locate('Unidade', C_TabelaUnidadeVarejo.Value, [loCaseInsensitive]) then
    begin
        if C_TabelaUnidade.Value <> '' then
        begin
            if not C_ItensUnidades.Active then
                C_ItensUnidades.Open;
            C_ItensUnidades.Append;
            C_ItensUnidadesUnidade.Value := C_TabelaUnidadeVarejo.Value;
            nFator := IIF(ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value) > 0, ExtractNumFromStr(C_ItensUnidadeslkUnidade.Value), 1);

            if (nFator <= 1) and (C_UnidadesComQtd.Value = 'S') then
                nFator := DMProjeto.SetFator(C_TabelaItem.Value, C_TabelaDescricao.Value, Sender.asString, false);

            C_ItensUnidadesFator.Value := IIF(nFator >= 1, nFator, 1);
        end;
    end;

end;

procedure TDMItens.DMComponentAntesDeApagar(Sender: TObject;
    var bCanDelete: Boolean);
var
    nOp: Integer;
    bSkip: Boolean;
    sItens: string;
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

    {Apagando em ProdutosPreco, pois o Filter para a Unidade impede que todos os registros sejam excluidos
    with Q_SQL do begin
      Close;
      SQL.Text := 'Delete from ProdutosPreco where Item = :I';
      Params[0].asInteger := C_TabelaItem.Value;
      ExecSQL;
    end;
  }
end;

procedure TDMItens.DMComponentAntesDeDesativar(Sender: TObject;
    var bCanDelete: Boolean);
begin
    inherited;
    {Verificando se o Item possui estoque}
    if (C_TabelaTipoItem.Value = 1) and (C_TabelaEstoque.Value <> 0) then
    begin
        DlgMsg.ShowMsg(3154, [C_TabelaicEstoque.DisplayText, C_TabelaUnidade.Value, C_TabelacfValorEstoqueTotal.DisplayText]); //Informando que o estoque não eatá zerado.
        bCanDelete := false;
    end;
end;

procedure TDMItens.C_ItensFilhosAfterOpen(DataSet: TDataSet);
begin
    inherited;
    sStartPerformance := sStartPerformance + Format('[%s] - Abriu ' + DataSet.Name, [TimeToStr(Now)]) + #13;
end;

procedure TDMItens.C_TabelaULTIMOFORNECEDORChange(Sender: TField);
begin
    inherited;
    if Sender.asVariant <> null then
        C_TabelaNomeUltimoFornecedor.Value := DMProjeto.C_LocalizarFav.FieldByName('Nome').asString;

end;

procedure TDMItens.C_TabelaFORNECPREFERENCIAChange(Sender: TField);
begin
    inherited;
    if Sender.asVariant <> null then
        C_TabelaNomeFornecPreferencia.Value := DMProjeto.C_LocalizarFav.FieldByName('Nome').asString;

end;

procedure TDMItens.C_TabelaDESCRICAOCOMPRAChange(Sender: TField);
begin
    inherited;
    if Trim(Sender.asString) <> Sender.asString then
        Sender.asString := Trim(Sender.asString);
end;

procedure TDMItens.C_ProdutosPrecoNewRecord(DataSet: TDataSet);
begin
    inherited;
    DataSet['ProdutoPreco'] := nSeq;
    dec(nSeq);
end;

procedure TDMItens.C_TabelaPRECOChange(Sender: TField);
begin
    inherited;
    if (C_TabelaTipoItem.Value in [5, 6]) and (C_TabelaPercentual.Value > 0) and (Sender.asCurrency > 0) then
        C_TabelaPercentual.Value := 0;

    if not bAlterandoProdutosPreco then
    begin
        {Seleciona a Tabela de Preco ZERO para a Unidade corrente de venda}
        AdicionaTabelaPreco(C_TabelaUnidade.Value);

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

    if bAlteracao and not bAlterandoProdutosPreco and ExistemOutrasTabZero {and (DlgMsg.ShowMsg(3158) = 100)} then
        CorrigirPrecosOutrasUnds(Sender.asCurrency, C_TabelaPreco.OldValue);

end;

procedure TDMItens.AdicionaTabelaPreco;
var
    bUnidadeGerada: boolean; xUnidade: String;
begin

    bUnidadeGerada := false;

    if not C_ProdutosPreco.Active then
        C_ProdutosPreco.Open;

    C_ProdutosPreco.Filtered := False;

    try
        C_TabelasPreco.Close;
        C_TabelasPreco.Open;

        C_ItensUnidades.DisableControls;

        if not C_ItensUnidades.Active then
          C_ItensUnidades.Open;

        C_ItensUnidades.First;

        while not C_ItensUnidades.EOF do
        begin
            C_TabelasPreco.First;
            while not C_TabelasPreco.EOF do
            begin
//                if not C_ProdutosPreco.Locate('Unidade;TabelaPreco',VarArrayOf([C_ItensUnidadesUnidade.Value,C_TabelasPrecoTabelaPreco.asInteger]), []) then
                if not C_ProdutosPreco.Locate('Item;Unidade;TabelaPreco',VarArrayOf([C_TabelaItem.asInteger,C_ItensUnidadesUnidade.Value,C_TabelasPrecoTabelaPreco.asInteger]), []) then
                begin
                    C_ProdutosPreco.Append;
                    C_ProdutosPrecoUnidade.Value     := C_ItensUnidadesUnidade.Value;
                    C_ProdutosPrecoTabelaPreco.Value := C_TabelasPrecoTabelaPreco.asInteger;
                    C_ProdutosPrecoPercentual.Value  := C_TabelasPrecoPercentual.Value;
                    C_ProdutosPrecoBaseada.Value     := C_TabelasPrecoBaseada.Value;

                    if (C_ProdutosPrecoBaseada.Value = 'N') and (C_TabelasPrecoTabelaPreco.asInteger <> 0) then
                        C_ProdutosPrecoPreco.asCurrency := 0;

                    C_ProdutosPrecoPrecoManual.Value := 'N';
                    C_ProdutosPreco.Post;
                end;
                C_TabelasPreco.Next;
            end;

            bUnidadeGerada := true;
            C_ItensUnidades.Next;
        end;
    finally
        C_ItensUnidades.EnableControls;
        C_ProdutosPreco.Filter := 'Unidade = ' + QuotedStr(sUnidade);
        C_ProdutosPreco.Filtered := True;
        C_ProdutosPreco.First;
        C_ProdutosPreco.Locate('TabelaPreco', 0, []);

        if nPrecoUnidade > 0 then
        begin
            C_ProdutosPreco.Edit;
            if C_ProdutosPrecoTABELAPRECO.AsVariant = null then
              C_ProdutosPrecoTABELAPRECO.Value := 0;

            C_ProdutosPrecoPreco.asCurrency := nPrecoUnidade; //O change já se encarrega de atualizar as demais tabelas de preço.

            if C_ProdutosPreco.State in [dsEdit, dsInsert] then
                C_ProdutosPreco.Post;
        end;

        C_ProdutosPrecoDS.DataSet := C_ProdutosPreco;
        //C_ProdutosPreco.ApplyUpdates(0);
    end;
end;

procedure TDMItens.TrocarEmProdutosPreco(sUnidade: string);
var
    TmpDS: TClientDataSet;
begin
    {Esta função deve ser chamada apenas se for inclusão}

    with C_ProdutosPreco do
    begin
        if not Active then
            exit;

        Filtered := False;
    end;

    TmpDS := TClientDataSet.Create(self);

    with TmpDS do
    begin
        CloneCursor(C_ProdutosPreco, true);

        First;
        while not EOF do
        begin
            Edit;
            FieldByName('Unidade').asString := sUnidade;
            Post;

            Next;
        end;

    end;

    TmpDS.Free;

    with C_ProdutosPreco do
    begin

        Filter := 'Unidade = ' + QuotedStr(sUnidade);
        Filtered := True;
        First;
        Locate('TabelaPreco', 0, []);

    end;

end;

procedure TDMItens.C_ProdutosPrecoPRECOChange(Sender: TField);
var xPreco: Currency;
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
            bAlterandoProdutosPreco := false;
        end;

        xPreco := DataSet.FieldByName('Preco').asCurrency;

        C_Tmp := TClientDataSet.Create(self);
        with C_Tmp do
        begin
            CloneCursor(DataSet, true);
            if DataSet.Filtered then
            begin
                Filter := DataSet.Filter;
                Filtered := true;
            end;

            First;
            while not Eof do
            begin
                if FieldByName('TabelaPreco').AsInteger <> 0 then
                begin
                    C_TabelasPreco.Locate('TabelaPreco', FieldByName('TabelaPreco').AsInteger, []);

                    if (FieldByName('PrecoManual').value = 'N') and (C_TabelasPrecoBaseada.AsString = 'S') then
                    begin
                        Edit;
                        if C_TabelasPrecoPercentual.value > 0 then
                            FieldByName('Preco').value := xPreco + ((xPreco * C_TabelasPrecoPercentual.value) / 100)
                        else
                            FieldByName('Preco').value := xPreco - ((xPreco * abs(C_TabelasPrecoPercentual.value)) / 100);
                    end;

                end
                else
                begin
                    Edit;
                    FieldByName('Preco').value := xPreco;
                end;

                Next;
            end;
            Filtered := false;

        end;
        C_Tmp.Free;

    end
    else if (DataSet.FieldByName('Baseada').asString = 'S') then //Não é a tabela Zero que está sendo modificado o preço.
        DataSet.FieldByName('PrecoManual').asString := 'S';
end;

function TDMItens.ExisteProdutosPreco(sUnidade: string): boolean;
begin
    {Verifica se a unidade existe definida em ProdutosPreco,
     e em existindo, já a deixa selecionada}

    result := false;

    with C_ProdutosPreco do
    begin
        if not Active then
            Open;

        Filtered := False;

        if Locate('Unidade', sUnidade, []) then
        begin
            Filter := 'Unidade = ' + QuotedStr(sUnidade);
            Filtered := True;
            First;
            Locate('TabelaPreco', 0, []);

            C_ProdutosPrecoDS.DataSet := C_ProdutosPreco;

            result := true;
        end
        else if Filter <> '' then
            Filtered := true;

    end;
end;

procedure TDMItens.VisualizaTabelaPreco(sUnidade: string);
var
    nFatorUndVendaCorrente, nFatorNovaUnidade: double;
    xPreco: currency;
begin
    {Constroi e calcula os preços para uma determinada unidade
    que ainda não está definida em produtospreco. Esta unidade
    só será lançada para a Tabela ProdutosPreco se o preço for
    diferente do preço calculado pela aplicação dos fatores das
    unidades envolvidas, o que implica que o usuário definiu o
    preço manualmente}
    if not C_ItensUnidades.Active then
        C_ItensUnidades.Open;

    if not C_ProdutosPrecoTmp.Active then
        C_ProdutosPrecoTmp.CreateDataSet
    else
        C_ProdutosPrecoTmp.EmptyDataSet;

    {Capturando o Fator da Unidade de venda atual}
    C_ItensUnidades.Locate('Unidade', C_TabelaUnidade.Value, []);
    nFatorUndVendaCorrente := IIF(C_ItensUnidadesFator.Value > 0, C_ItensUnidadesFator.Value, 1);

    {Capturando o Fator da nova unidade solicitada pelo usuário}
    if C_ItensUnidades.Locate('Unidade', sUnidade, []) then
        nFatorNovaUnidade := IIF(C_ItensUnidadesFator.Value > 0, C_ItensUnidadesFator.Value, 1)
    else
    begin
        {Neste caso a unidade ainda não foi configurada pelo usuário.
        Será solicitado então uma confirmação do fator da unidade}
        nFatorNovaUnidade := DMProjeto.SetFator(C_TabelaItem.Value, C_TabelaDescricao.Value, sUnidade, false);

        if nFatorNovaUnidade <= 0 then
            nFatorNovaUnidade := 1;
    end;

    xPreco := C_TabelaPreco.asCurrency; //Preco na unidade de venda atual;

    {Calculando o Preco na Nova Unidade}
    xPreco := (xPreco / nFatorUndVendaCorrente) * nFatorNovaUnidade;

    {Gerando ProdutosPrecoTmp}
    C_TabelasPreco.First;
    while not C_TabelasPreco.EOF do
    begin
        C_ProdutosPrecoTmp.Append;
        C_ProdutosPrecoTmp.FieldByName('Unidade').Value := sUnidade;
        C_ProdutosPrecoTmp.FieldByName('TabelaPreco').Value := C_TabelasPrecoTabelaPreco.asInteger;
        C_ProdutosPrecoTmp.FieldByName('Percentual').Value := C_TabelasPrecoPercentual.Value;
        C_ProdutosPrecoTmp.FieldByName('Baseada').Value := C_TabelasPrecoBaseada.Value;
        C_ProdutosPrecoTmp.FieldByName('PrecoManual').Value := 'N';

        C_TabelasPreco.Next;
    end;

    C_ProdutosPrecoTmp.Locate('TabelaPreco', 0, []);
    C_ProdutosPrecoTmp.Edit;
    C_ProdutosPrecoTmpicPrecoOriginal.Value := xPreco;
    C_ProdutosPrecoTmp.FieldByName('Preco').asCurrency := xPreco; //O change já se encarrega de atualizar as demais tabelas de preço.

    C_ProdutosPrecoTmp.Post;

    C_ProdutosPrecoDS.DataSet := C_ProdutosPrecoTmp;

end;

function TDMItens.GetPrecoTabZero;
var
    TmpDS: TClientDataSet;
begin
    result := 0;

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
    begin
        CloneCursor(TClientDataSet(DataSet), True);

        if Locate('TabelaPreco;Unidade', vararrayof([0, sUnidade]), []) then
            result := FieldByName('Preco').asCurrency;

    end;
    TmpDS.Free;
end;

procedure TDMItens.CorrigirPrecosOutrasUnds(PrecoNovo,
    PrecoVelho: Currency);
var
    TmpDS: TClientDataSet;
    nProp: double;
begin
    if (PrecoNovo = PrecoVelho) or (PrecoVelho = 0) then
        exit;

    nProp := IIF(PrecoVelho > 0, PrecoNovo / PrecoVelho, 0);

    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
    begin
        CloneCursor(C_ProdutosPreco, True);

        Filter := 'Unidade <> ' + QuotedStr(C_TabelaUnidade.Value);
        Filtered := true;

        while not EOF do
        begin
            Edit;
            FieldByName('Preco').asCurrency := FieldByName('Preco').asCurrency * nProp;
            Post;

            Next;
        end;
        Filtered := false;

    end;
    TmpDS.Free;

end;

function TDMItens.ExistemOutrasTabZero: boolean;
var
    TmpDS: TClientDataSet;
begin
    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
    begin
        CloneCursor(C_ProdutosPreco, True);

        Filter := 'TabelaPreco = 0';
        Filtered := true;

        result := recordcount > 1;

        Filtered := false;
    end;
    TmpDS.Free;

end;

procedure TDMItens.ApagarPrecosUnd(sUnidade: string);
begin
    if sUnidade = C_TabelaUnidade.Value then
    begin
        DlgMsg.ShowMsg(3159, [C_TabelacmbUnidade.Value]);
        exit;
    end;

    if ExisteProdutosPreco(sUnidade) then
        with C_ProdutosPreco do
        begin
            DisableControls;
            try
                First;
                while not EOF do
                    Delete;
            finally
                EnableControls;
            end;
        end;

end;

procedure TDMItens.C_TabelaPERCENTUALChange(Sender: TField);
begin
    inherited;
    if (C_TabelaTipoItem.Value in [5, 6]) and (C_TabelaPreco.Value > 0) and (Sender.asCurrency > 0) then
        C_TabelaPreco.Value := 0;
end;

procedure TDMItens.C_ItensUnidadesFATORChange(Sender: TField);
var
    nOldFator, nPC, nCM, nCC: double;
begin
    inherited;
    {A alteração do Fator de Quantidade, não deve alterar as quantidades informadas para Estoque, Custos e Preços}
    if C_ItensUnidadesUnidade.Value = C_TabelaUnidade.Value then
    begin
        bNotCalcFields := true;
        try
            C_Tabela.Edit;
            nOldFator := C_TabelaFatorUndVenda.Value;

            C_TabelaFatorUndVenda.Value := C_ItensUnidadesFator.Value;

            {Convertendo quantidade em estoque para que se ajuste ao novo fator da unidade}
            if nOldFator > 0 then
            begin
                C_TabelaicEstoque.Value := (C_TabelaEstoque.Value / nOldFator) * C_TabelaFatorUndVenda.Value;
//Marcos                C_TabelaEstoque.Value := (C_TabelaEstoque.Value / nOldFator) * C_TabelaFatorUndVenda.Value;
                C_TabelaPontoPedido.Value := (C_TabelaPontoPedido.Value / nOldFator) * C_TabelaFatorUndVenda.Value;
                C_TabelaQtdeMaximo.Value := (C_TabelaQtdeMaximo.Value / nOldFator) * C_TabelaFatorUndVenda.Value;
                C_TabelaQtdeMinimo.Value := (C_TabelaQtdeMinimo.Value / nOldFator) * C_TabelaFatorUndVenda.Value;

                C_TabelaCustoMedio.Value := (C_TabelaCustoMedio.Value * nOldFator) / C_TabelaFatorUndVenda.Value;
                C_TabelaCustoContabil.Value := (C_TabelaCustoContabil.Value * nOldFator) / C_TabelaFatorUndVenda.Value;
            end;

        finally
            bNotCalcFields := false;
            C_TabelaCalcFields(C_Tabela);
        end;
    end;

    if (C_ItensUnidadesUnidade.Value = C_TabelaUnidadeEntrada.Value) then
    begin
        bNotCalcFields := true;
        try
            C_Tabela.Edit;
            nOldFator := C_TabelaFatorUndCompra.Value;
            C_TabelaFatorUndCompra.Value := C_ItensUnidadesFator.Value;

            {Convertendo quantidade em estoque para que se ajuste ao novo fator da unidade}
            if nOldFator > 0 then
            begin
                C_TabelaPrecoCompra.Value := (C_TabelaPrecoCompra.Value * nOldFator) / C_TabelaFatorUndCompra.Value;
            end;

        finally
            bNotCalcFields := false;
            C_TabelaCalcFields(C_Tabela);
        end;
    end;

end;

procedure TDMItens.C_ItensUnidadesBeforeDelete(DataSet: TDataSet);
begin
    inherited;
    if (C_ItensUnidadesUnidade.Value <> C_TabelaUnidade.Value) and
        (C_ItensUnidadesUnidade.Value <> C_TabelaUnidadeEntrada.Value) then
        ApagarPrecosUnd(C_ItensUnidadesUnidade.Value);

end;

procedure TDMItens.C_TabelaUNIDADEValidate(Sender: TField);
begin
    inherited;
    if (C_TabelaBalanco.Value = 'S') then
        raise Exception.Create('@O Item está em processo de contagem (balanço), não é possível alterar sua unidade de venda neste momento!');
end;

procedure TDMItens.C_TabelaAfterScroll(DataSet: TDataSet);
begin
    inherited;
    if C_ItensUnidades.Active and bAlteracao then
        C_ItensUnidades.Close;

    if C_ProdutosPreco.Active and bAlteracao then
        C_ProdutosPreco.Close;

    if C_ItensFilhos.Active and bAlteracao then
        C_ItensFilhos.Close;

    if C_ItensAlmox.Active and bAlteracao then
        C_ItensAlmox.Close;
end;

procedure TDMItens.C_ProdutosPrecoBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_ProdutosPreco.FetchParams;
    C_ProdutosPreco.Params[0].asInteger := IIF(bAlteracao, C_TabelaItem.Value, -1);
    C_ProdutosPrecoPreco.DisplayFormat := DMProjeto.sCasasDecimais;
end;

procedure TDMItens.C_ItensFilhosCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ItensFilhosicCustoMedio.Value := C_ItensFilhosCustoMedio.Value * C_ItensFilhosFator.Value;

    C_ItensFilhosicSubTotal.Value := (C_ItensFilhosQuantidade.Value * C_ItensFilhosicCustoMedio.Value);

    C_ItensFilhosicPreco.Value := (C_ItensFilhosPreco.Value / IIF(C_ItensFilhosFatorUndPrecoVenda.Value > 0, C_ItensFilhosFatorUndPrecoVenda.Value, 1)) *
        C_ItensFilhosFator.Value;

    C_ItensFilhosicSubTotalPreco.Value := (C_ItensFilhosQuantidade.Value * C_ItensFilhosicPreco.Value);

end;

procedure TDMItens.C_ItensFilhosBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_ItensFilhos.FetchParams;
    C_ItensFilhos.Params[0].asInteger := IIF(bAlteracao, C_TabelaItem.Value, -1);
end;

procedure TDMItens.C_ItensFilhosUNIDADEChange(Sender: TField);
var
    nNovoFator: Double;
begin
    inherited;
    nNovoFator := DMProjeto.getFatorUnidade(C_ItensFilhosSubItem.Value, Sender.asString);
    if nNovoFator <= 0 then
    begin
        C_ItensFilhosUnidade.Value := C_ItensFilhosUnidadeOld.Value;
        Exit;
    end
    else
        C_ItensFilhosFator.Value := nNovoFator;

    C_ItensFilhosUnidadeOld.Value := C_ItensFilhosUnidade.Value;
end;

procedure TDMItens.C_ItensUnidadesBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_ItensUnidades.FetchParams;
    C_ItensUnidades.Params[0].asInteger := IIF(bAlteracao, C_TabelaItem.Value, -1);
end;

procedure TDMItens.C_ItensUnidadesAfterOpen(DataSet: TDataSet);
begin
    inherited;
    {Ajustando o FatorUndVenda que pode ter sido modificado sem querer e ao passar de um registro para outro
     C_Itens pode ser perdido, ficando assim incoerente o fator que ficou modificado }
    if bAlteracao then
    begin
        C_ItensUnidades.Locate('Unidade', C_TabelaUnidade.Value, []);
        if (C_TabelaFatorUndVenda.Value <> C_ItensUnidadesFator.Value) and not bChangeUnidade then
        begin
            C_Tabela.Edit;
            C_TabelaFatorUndVenda.Value := C_ItensUnidadesFator.Value;
        end;
        C_ItensUnidades.Locate('Unidade', C_TabelaUnidadeEntrada.Value, []);
        if (C_TabelaFatorUndCompra.Value <> C_ItensUnidadesFator.Value) and not bChangeUnidadeCompra then
        begin
            C_Tabela.Edit;
            C_TabelaFatorUndCompra.Value := C_ItensUnidadesFator.Value;
        end;
    end;
end;

procedure TDMItens.C_ItensAlmoxicEstoqueAlmoxChange(Sender: TField);
var
    nEstoque: Currency;
begin
    inherited;

    nEstoque := Sender.asCurrency * C_TabelaFatorUndVenda.Value;

    if C_ItensAlmoxEstoqueAlmox.Value <> nEstoque then
        C_ItensAlmoxEstoqueAlmox.Value := nEstoque;

end;

procedure TDMItens.C_ItensAlmoxCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ItensAlmoxicEstoqueAlmox.Value := C_ItensAlmoxEstoqueAlmox.Value / C_TabelaFatorUndVenda.Value;
end;

procedure TDMItens.C_ItensAlmoxBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_ItensAlmox.FetchParams;
    C_ItensAlmox.Params[0].asInteger := IIF(bAlteracao, C_TabelaItem.Value, -1);
end;

procedure TDMItens.C_TabelaSITUACAOECFChange(Sender: TField);
begin
    inherited;
     if C_TabelaSituacaoECF.value = 'F' then
        C_TabelaCST.value := '01'
    else if C_TabelaSituacaoECF.value = 'I' then
        C_TabelaCST.value := '04'
    else if C_TabelaSituacaoECF.value = 'N' then
        C_TabelaCST.value := '04'
    else C_TabelaCST.value := '00';

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
    if sender.asstring = '' then
        C_TabelaReducaoCST.Value := -999
    else if Sender.asString[2] <> '2' then
        C_TabelaReducaoCST.Value := 0;
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

procedure TDMItens.CalcularPercentualGrupo;
begin
    if (DMItens.C_TabelaGrupo.Value > 0) then
    begin
            //apaga todas as unidades do item, que foram herdadas do grupo
            //anterior, exceto aquelas que foram introduzidas manualmente
            with DMItens.C_ItensUnidades do
            begin
                if not Active then
                    Active := true;
                First;

                while not EOF do
                begin
                    if FieldByName('HERDADO').AsString = 'S' then
                        Delete
                    else
                        Next;
                end;
            end;

            with DMItens.C_GruposUnidades do
            begin
                if not Active then
                    Active := true;

                Filtered := false;
                Filter := 'Grupo = ' + DMItens.C_TabelaGrupo.AsString;
                Filtered := true;
                First;

                while not EOF do
                begin
                    if not DMItens.C_ItensUnidades.Locate('Unidade', FieldByName('Unidade').Value, []) then
                        DMItens.C_ItensUnidades.Append
                    else
                        DMItens.C_ItensUnidades.Edit;

                    DMItens.C_ItensUnidadesUnidade.Value := DMItens.C_GruposUnidadesUnidade.Value;
                    DMItens.C_ItensUnidadesFator.Value := DMItens.C_GruposUnidadesFator.Value;
                    DMItens.C_ItensUnidadesPercentual.Value := DMItens.C_GruposUnidadesPercentual.Value;
                    DMItens.C_ItensUnidadesPercentualMinimo.Value := DMItens.C_GruposUnidadesPercentualMinimo.Value;
                    DMItens.C_ItensUnidadesPrecoManual.Value := 0;
                    DMItens.C_ItensUnidadesHerdado.Value := 'S';
                    DMItens.C_ItensUnidades.Post;
                    Next;
                end;
            end;
        end;
end;

procedure TDMItens.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if C_ItensUnidades.State in ([dsEdit, dsInsert]) then C_ItensUnidades.Post;
  if C_ProdutosPreco.State in ([dsEdit, dsInsert]) then C_ProdutosPreco.Post;
  if C_ItensFilhos.State in ([dsEdit, dsInsert]) then C_ItensFilhos.Post;

  With DMProjeto.Q_Sql do Begin
    Sql.Text := 'delete from Produtospreco p where p.item = :ITEM and p.produtopreco not in '+
                ' (select min(pp.produtopreco) from produtospreco pp where pp.item = p.item '+
                ' group by pp.item,  pp.tabelapreco, pp.unidade) ';
    Params[0].Value := C_TabelaItem.value;
    Prepare;
    ExecSql;
  End;

end;

end.
