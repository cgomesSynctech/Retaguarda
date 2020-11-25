unit Frm_PedidoRapido;

interface

uses
    Windows, FORM_PADRAO, dxExEdtr, teFuse, tePush, TransEff, teTimed,
    teMasked, teBlock, StdCtrls, Mask, DBCtrls, dxDBELib, TS_DBEditNumber,
    FormCont, dxDBTLCl, dxGrClms, TS_DBButtonEdit, TS_DBEditFavorecido,
    dxDBEdtr, TS_DBLookupTipoFav, dxEdLib, TS_CalcEdit, dxCntner, dxEditor,
    TS_ButtonEdit, TS_EditItem, dxDBGrid, dxTL, dxDBCtrl, TS_QDBGrid,
    Graphics, TS_DBText, TS_Label, DBText, TS_DBTextEffect, ExtCtrls,
    TS_Image, dxfClock, Controls, teCtrls, TS_EffectsPanel, dxfLabel,
    TS_Shape, ComCtrls, TS_PageControl, BTOdeum, Provider, teForm, Menus,
    TS_PopupMenu, TS_LastDataObject, Classes, DlgMsg, Forms, DM_PedidoRapido, SysUtils, db,
    Placemnt, Dlg_Propaganda, jpeg, teBmpMsk, dxfCheckBox, TS_ModuloStyle,
    dxGrClEx, TS_DBMemo, TS_DBEdit, TS_GroupBox, TS_DBEditDate, TS_DBMaskEdit,
    teWFall, teIntrlc, TS_LookupComboBox, teCircle, Buttons, TS_SpeedButton,
    TS_DBImageEdit, TS_DBLookupComboBox, TS_DBPopupEdit, TS_Bevel,
    TS_PopupEdit, Dlg_CFOPs, teRoll, IBCustomDataSet, IBQuery, dxCalc;

type

    TFrmPedidoRapido = class(TFormPadrao)
        pgPrincipal: TTS_PageControl;
        tsPropaganda: TTS_TabSheet;
        tsOperacao: TTS_TabSheet;
        pgOperacao: TTS_PageControl;
        tsItens: TTS_TabSheet;
        tsTermos: TTS_TabSheet;
        TS_Label3: TTS_Label;
        dd_mm_yyyy: TTS_DBText;
        imgFoto: TTS_Image;
        spFoto: TTS_Shape;
        spTotalFinal: TTS_Shape;
        dbtTotalFinal: TTS_DBTextEffect;
        lbTotalFinal: TTS_Label;
        FormBkg: TFormTransitions;
        TransitionList: TTransitionList;
        N1: TMenuItem;
        pmIniciarVenda: TMenuItem;
        pmInformarItens: TMenuItem;
        pmInformarTermos: TMenuItem;
        pmGravar: TMenuItem;
        N3: TMenuItem;
        pmCancelarOperacao: TMenuItem;
        pmConsultadePrecos: TMenuItem;
        pmInformarNomedoCliente: TMenuItem;
        pmFecharTela: TMenuItem;
        P_Saidas: TDataSetProvider;
        TS_Shape9: TTS_Shape;
        TS_DBText2: TTS_DBText;
        pnProduto: TTS_Panel;
        TS_Shape4: TTS_Shape;
        TS_Label1: TTS_Label;
        dfItem: TTS_EditItem;
        pnQuantidade: TTS_Panel;
        TS_Shape5: TTS_Shape;
        lbQuantidade: TTS_Label;
        dfQuantidade: TTS_CalcEdit;
        pnPreco: TTS_Panel;
        TS_Shape7: TTS_Shape;
        lbPreco: TTS_Label;
        pnItem: TTS_Panel;
        imgLogo: TTS_Image;
        ppmItens: TTS_PopupMenu;
        pnCliente: TTS_Panel;
        pnStatus: TTS_Panel;
        CtnPropagandas: TFormContainer;
        TS_Image2: TTS_Image;
        MostrarCabealho1: TMenuItem;
        CancelarOperaes1: TMenuItem;
        N4: TMenuItem;
        pmPercorrerItens: TMenuItem;
        pnConsultaPrecos: TTS_Panel;
        lbDescricaoConsulta: TTS_Label;
        spConsultaPrecos: TTS_Shape;
        lbPrecoConsulta: TTS_Label;
        pmComprarItemdaConsulta: TMenuItem;
        N5: TMenuItem;
        pnsMaisOpcoes: TTS_Panel;
        lbKey8: TTS_Label;
        lbTit8: TTS_Label;
        pnsConsultarPrecos: TTS_Panel;
        lbKey7: TTS_Label;
        lbTit7: TTS_Label;
        pnsFecharTela: TTS_Panel;
        lbKey6: TTS_Label;
        lbTit6: TTS_Label;
        pnsSalvar: TTS_Panel;
        lbKey5: TTS_Label;
        lbTit5: TTS_Label;
        pnsNomeCliente: TTS_Panel;
        lbKey4: TTS_Label;
        lbTit4: TTS_Label;
        pnsInformarTermos: TTS_Panel;
        lbKey3: TTS_Label;
        lbTit3: TTS_Label;
        pnsInformarItens: TTS_Panel;
        lbKey2: TTS_Label;
        lbTit2: TTS_Label;
        pnsIniciarVenda: TTS_Panel;
        lbKey1: TTS_Label;
        lbTit1: TTS_Label;
        pnsPercorrerItens: TTS_Panel;
        lbKey9: TTS_Label;
        lbTit9: TTS_Label;
        TS_Shape8: TTS_Shape;
        TS_Shape15: TTS_Shape;
        TS_Shape18: TTS_Shape;
        TS_Shape19: TTS_Shape;
        TS_Shape21: TTS_Shape;
        TS_Shape22: TTS_Shape;
        TS_Shape23: TTS_Shape;
        TS_Shape24: TTS_Shape;
        NomostrarAtalhos1: TMenuItem;
        TS_Shape2: TTS_Shape;
        TS_Label5: TTS_Label;
        pnTermos: TTS_Panel;
        TS_Shape11: TTS_Shape;
        lbTermos: TTS_Label;
        TS_Shape12: TTS_Shape;
        TS_Shape13: TTS_Shape;
        spPlano: TTS_Shape;
        TS_DBTextEffect6: TTS_DBTextEffect;
        dbgPlanos: TTS_QDBGrid;
        dbgPlanosPlanoPagamento: TdxDBGridColumn;
        dbgPlanosDESCRICAO: TdxDBGridMaskColumn;
        dbgParcelas: TTS_QDBGrid;
        dbgParcelasParcela: TdxDBGridColumn;
        dbgParcelasVencimento: TdxDBGridDateColumn;
        dbgParcelasValor: TdxDBGridCalcColumn;
        dbgParcelasSaldo: TdxDBGridColumn;
        dbgParcelasStatus: TdxDBGridColumn;
        dbgParcelasDoc: TdxDBGridColumn;
        dbgParcelasColumn8: TdxDBGridColumn;
        dbgParcelasColumn9: TdxDBGridColumn;
        dbgParcelasColumn10: TdxDBGridColumn;
        dbgParcelasColumn11: TdxDBGridColumn;
        pnRecebimento: TTS_Panel;
        lbRecebimentos: TTS_Label;
        TS_Panel1: TTS_Panel;
        TS_Shape14: TTS_Shape;
        spFormas: TTS_Shape;
        cb1: TdxfCheckBox;
        cb2: TdxfCheckBox;
        cb4: TdxfCheckBox;
        cb5: TdxfCheckBox;
        cb6: TdxfCheckBox;
        cb7: TdxfCheckBox;
        cb3: TdxfCheckBox;
        df1: TTS_CalcEdit;
        msPedidoRapido: TTS_ModuloStyle;
        esPedidoRapido: TdxEditStyleController;
        df2: TTS_CalcEdit;
        df3: TTS_CalcEdit;
        df4: TTS_CalcEdit;
        df5: TTS_CalcEdit;
        dfVezes: TTS_CalcEdit;
        TS_Label6: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Label8: TTS_Label;
        TS_Label9: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label11: TTS_Label;
        dbgParcelasTipoCobranca: TdxDBGridLookupColumn;
        dbgItens: TTS_QDBGrid;
        dbgItensTipoItem: TdxDBGridColumn;
        dbgItensSEQUENCIA: TdxDBGridMaskColumn;
        dbgItensUsoTipoItem: TdxDBGridColumn;
        dbgItensMesclado: TdxDBGridColumn;
        dbgItensI_Percentual: TdxDBGridColumn;
        dbgItensBaixoEstoque: TdxDBGridColumn;
        dbgItensQUANTIDADE: TdxDBGridMaskColumn;
        dbgItensUltrapassouMesclagem: TdxDBGridColumn;
        dbgItensSubTotal: TdxDBGridColumn;
        dbgItensStatus: TdxDBGridImageColumn;
        dbgItensColuna1: TdxDBGridColumn;
        dbgItensColuna2: TdxDBGridColumn;
        dbgItensColuna3: TdxDBGridColumn;
        dbgItensColuna4: TdxDBGridColumn;
        dbgItensNumeroLote: TdxDBGridPopupColumn;
        dbgItensI_Descricao: TdxDBGridColumn;
        dbgItensQtdFaturada: TdxDBGridMaskColumn;
        dbgItensPromocao: TdxDBGridColumn;
        dbgItensBaixaEstoque: TdxDBGridColumn;
        dbgItensAliqICMS: TdxDBGridMaskColumn;
        dbgItensIPI: TdxDBGridMaskColumn;
        dbgItensTVA: TdxDBGridMaskColumn;
        dbgItensNumeroItem: TdxDBGridColumn;
        dbgItensRegistro: TdxDBGridColumn;
        dbgItensCFOP: TdxDBGridPopupColumn;
        dbgItensI_CODIGO: TdxDBGridMaskColumn;
        dbgItensDESCRICAO: TdxDBGridMaskColumn;
        dbgItensReferencia: TdxDBGridMaskColumn;
        dbgItensX: TdxDBGridColumn;
        dbgItensIG: TdxDBGridColumn;
        dbgItensPRECO: TdxDBGridMaskColumn;
        dbgItensColumn34: TdxDBGridColumn;
        dfCondicoesPgto: TTS_DBMemo;
        pnOrcamento: TTS_Panel;
        TS_Label14: TTS_Label;
        TS_Label15: TTS_Label;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        dfTratar: TTS_DBMemo;
        TS_DBMemo3: TTS_DBMemo;
        TS_DBEdit7: TTS_DBEdit;
        TS_DBMemo5: TTS_DBMemo;
        TS_DBEdit8: TTS_DBEdit;
        lbCondicoesPgto: TTS_Label;
        gbLicitacao: TTS_GroupBox;
        TS_Label18: TTS_Label;
        TS_Label19: TTS_Label;
        TS_Label20: TTS_Label;
        TS_Label21: TTS_Label;
        TS_Label22: TTS_Label;
        TS_DBEdit9: TTS_DBEdit;
        TS_DBEdit10: TTS_DBEdit;
        TS_DBEdit11: TTS_DBEdit;
        TS_DBEdit12: TTS_DBEdit;
        TS_DBEditNumber1: TTS_DBEditNumber;
        pnAdicionais: TTS_Panel;
        pnCampo01: TTS_Panel;
        lbCampo01: TTS_Label;
        dfAdd1: TTS_DBEdit;
        pnCampo02: TTS_Panel;
        lbCampo02: TTS_Label;
        dfAdd2: TTS_DBEdit;
        pnCampo04: TTS_Panel;
        lbCampo04: TTS_Label;
        dfAdd4: TTS_DBEdit;
        pnCampo03: TTS_Panel;
        lbCampo03: TTS_Label;
        dfAdd3: TTS_DBEdit;
        pnOperacao: TTS_Panel;
        TS_Shape1: TTS_Shape;
        dbtNomeCliente: TTS_DBTextEffect;
        TS_DBTextEffect9: TTS_DBTextEffect;
        pnTitulo: TTS_Panel;
        lbEmpresa: TdxfLabel;
        TS_Panel4: TTS_Panel;
        dxfClock: TdxfClock;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit3: TDBEdit;
        TS_Label12: TTS_Label;
        TS_Label13: TTS_Label;
        TS_DBEditDate1: TTS_DBEditDate;
        pnProdutoEscolhido: TTS_Panel;
        TS_Shape16: TTS_Shape;
        spItens: TTS_Shape;
        dbtPrecoUnit: TTS_DBTextEffect;
        TS_Shape3: TTS_Shape;
        dbtQuantidade: TTS_DBTextEffect;
        dbtDescItem: TTS_DBTextEffect;
        lbX: TdxfLabel;
        lbIg: TdxfLabel;
        dbtSubTotal: TTS_DBTextEffect;
        TS_Shape10: TTS_Shape;
        TS_DBTextEffect5: TTS_DBTextEffect;
        TS_Shape6: TTS_Shape;
        TS_DBTextEffect3: TTS_DBTextEffect;
        TS_Label2: TTS_Label;
        TS_Label4: TTS_Label;
        dbgItensColumn35: TdxDBGridColumn;
        lbPedidoCliente: TdxfLabel;
        dfPedidoCliente: TTS_DBMaskEdit;
        dbtStatus: TTS_DBTextEffect;
        dbgItensI_UNIDADE: TdxDBGridLookupColumn;
        dbtTabelaPadrao: TTS_DBTextEffect;
        pnAtalhoAdicionais: TTS_Panel;
        TS_Label23: TTS_Label;
        T_FormShow: TInterlacedTransition;
        T_ConsultaPreco: TWaterfallTransition;
        TS_Shape17: TTS_Shape;
        ppmParcelas: TTS_PopupMenu;
        cmbTipoCobranca: TTS_DBLookupComboBox;
        lbTipoCobranca: TTS_Label;
        pnInfoCliente: TTS_Panel;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        TS_DBEdit5: TTS_DBEdit;
        TS_DBEdit6: TTS_DBEdit;
        cmbTipoFav: TTS_DBLookupTipoFav;
        dfFavorecido: TTS_DBEditFavorecido;
        TS_DBEdit13: TTS_DBEdit;
        TS_DBEdit14: TTS_DBEdit;
        TS_DBEdit15: TTS_DBEdit;
        TS_DBEdit16: TTS_DBEdit;
        dbtObs: TTS_DBTextEffect;
        T_Cliente: TCircleTransition;
        btLembrete: TTS_SpeedButton;
        pmAproveitarOperacoes: TMenuItem;
        pnsAproveitar: TTS_Panel;
        lbKey10: TTS_Label;
        lbTit10: TTS_Label;
        TS_Shape20: TTS_Shape;
        pnAlteracao: TTS_Panel;
        lbCarteira: TTS_Label;
        cmbCarteira: TTS_DBLookupComboBox;
        pmComposicao: TMenuItem;
        pmDescricao: TMenuItem;
        N2: TMenuItem;
        pmAlterarTabela: TMenuItem;
        pmStatus: TMenuItem;
        pnsTipoMov: TTS_Panel;
        lbKey11: TTS_Label;
        lbTit11: TTS_Label;
        TS_Shape25: TTS_Shape;
        pmTipoMov: TMenuItem;
        pnsDescricao: TTS_Panel;
        lbKey12: TTS_Label;
        lbTit12: TTS_Label;
        TS_Shape26: TTS_Shape;
        pnsComposicao: TTS_Panel;
        lbKey13: TTS_Label;
        lbTit13: TTS_Label;
        TS_Shape27: TTS_Shape;
        AlterarTabeladoItem1: TMenuItem;
        ppmCliente: TTS_PopupMenu;
        AbrirCadastro1: TMenuItem;
        MenuItem1: TMenuItem;
        QuadroGeral1: TMenuItem;
        ExtratodeParcelas1: TMenuItem;
        ltimasVendas1: TMenuItem;
        MenuItem2: TMenuItem;
        Limite: TMenuItem;
        EmAberto: TMenuItem;
        SaldoCompra: TMenuItem;
        pmAlterarOperacao: TMenuItem;
        pnsAlterarOperacao: TTS_Panel;
        lbKey14: TTS_Label;
        lbTit14: TTS_Label;
        TS_Shape28: TTS_Shape;
        pnFiscal: TTS_Panel;
        TS_Label24: TTS_Label;
        TS_Label25: TTS_Label;
        TS_Bevel2: TTS_Bevel;
        TS_Label26: TTS_Label;
        pnBaseCalcICMS: TTS_Panel;
        TS_Label27: TTS_Label;
        dfBaseCalculo: TTS_DBEditNumber;
        pnValorICMS: TTS_Panel;
        TS_Label29: TTS_Label;
        dfValorICMS: TTS_DBEditNumber;
        pnBaseCalcICMSSubst: TTS_Panel;
        TS_Label30: TTS_Label;
        dfBaseCalcSubst: TTS_DBEditNumber;
        pnValorFrete: TTS_Panel;
        TS_Label31: TTS_Label;
        dfValorFrete: TTS_DBEditNumber;
        pnValorSeguro: TTS_Panel;
        TS_Label32: TTS_Label;
        dfValorSeguro: TTS_DBEditNumber;
        pnOutrasDespesas: TTS_Panel;
        TS_Label33: TTS_Label;
        dfOutrasDespesas: TTS_DBEditNumber;
        pnValorIPI: TTS_Panel;
        TS_Label34: TTS_Label;
        dfValorIPI: TTS_DBEditNumber;
        pnTotalNota: TTS_Panel;
        TS_Label35: TTS_Label;
        dfTotal: TTS_DBEditNumber;
        pnValorICMSSubst: TTS_Panel;
        TS_Label36: TTS_Label;
        dfValorICMSSubst: TTS_DBEditNumber;
        pnTotalProdutos: TTS_Panel;
        TS_Label37: TTS_Label;
        dfTotalProdutos: TTS_DBEditNumber;
        dfSerie: TTS_DBEdit;
        dfCFOPNota: TTS_DBPopupEdit;
        dfModelo: TTS_DBEdit;
        pnTransportadora: TTS_Panel;
        TS_Label38: TTS_Label;
        cmbTransportadora: TTS_DBLookupComboBox;
        pnCIF_FOB: TTS_Panel;
        TS_Label39: TTS_Label;
        dfCIF_FOB: TTS_DBImageEdit;
        pnPlaca: TTS_Panel;
        TS_Label40: TTS_Label;
        dfPlaca: TTS_DBEdit;
        pnEspecie: TTS_Panel;
        TS_Label41: TTS_Label;
        dfEspecie: TTS_DBEdit;
        pnMarca: TTS_Panel;
        TS_Label42: TTS_Label;
        dfMarca: TTS_DBEdit;
        pnPesoBruto: TTS_Panel;
        TS_Label43: TTS_Label;
        dfPesoBruto: TTS_DBEditNumber;
        pnPesoLiquido: TTS_Panel;
        TS_Label44: TTS_Label;
        dfPesoLiquido: TTS_DBEditNumber;
        dfAliqICMS: TTS_DBEditNumber;
        TS_Label45: TTS_Label;
        pnLocalEntrega: TTS_Panel;
        TS_Panel2: TTS_Panel;
        lbLocalEntrega: TTS_Label;
        cmbLocalEntrega: TTS_DBLookupComboBox;
        pnDataEntrega: TTS_Panel;
        lbDataEntrega: TTS_Label;
        dfDataEntrega: TTS_DBEditDate;
        pnTipoEntrega: TTS_Panel;
        lbTipoEntrega: TTS_Label;
        cmbTipoEntrega: TTS_DBLookupComboBox;
        dxfLabel1: TdxfLabel;
        pnMensagem: TTS_Panel;
        dfObs: TTS_DBMemo;
        dfMensagem: TTS_PopupEdit;
        dbgMensagens: TTS_QDBGrid;
        dbgMensagensDESCRICAO: TdxDBGridMemoColumn;
        T_Alteracao: TRollTransition;
        pnTotais: TTS_Panel;
        pnTotalItens: TTS_Panel;
        spTotalItens: TTS_Shape;
        dbtTotalItens: TTS_DBTextEffect;
        lbTotalItens: TTS_Label;
        pnTotalServicos: TTS_Panel;
        TS_Shape29: TTS_Shape;
        TS_DBTextEffect1: TTS_DBTextEffect;
        TS_Label28: TTS_Label;
        pnDescontoPe: TTS_Panel;
        spDescontoPe: TTS_Shape;
        lbDescontoPe: TTS_Label;
        dfDescontoPe: TTS_DBEditNumber;
        pnFrete: TTS_Panel;
        TS_Shape30: TTS_Shape;
        TS_Label46: TTS_Label;
        dfFrete: TTS_DBEditNumber;
        pmCopiarItens: TMenuItem;
        Q_SQLt: TIBQuery;
        pmLegenda: TMenuItem;
        pmEstatisticasItem: TMenuItem;
        pmDevolucao: TMenuItem;
        lbEstoque: TTS_Label;
        lbCusto: TTS_Label;
        lbMPV: TTS_Label;
        lbGrupo: TTS_Label;
        lbFabricante: TTS_Label;
        dbtEstoque: TTS_DBTextEffect;
        dbtGrupo: TTS_DBTextEffect;
        dbtFabricante: TTS_DBTextEffect;
        dbtCusto: TTS_DBTextEffect;
        dbtMPV: TTS_DBTextEffect;
        TS_Label47: TTS_Label;
        TS_DBEdit17: TTS_DBEdit;
    lbMenorPreco: TTS_Label;
    pmExibirMenorPreco: TMenuItem;
    pnPreco2: TPanel;
    pnCalc: TPanel;
    dxCalculator1: TdxCalculator;
    dxCalcDisplay: TdxCalcDisplay;
    pnOutros: TPanel;
    dbgTabelasPreco: TTS_QDBGrid;
    dbgTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
    dbgTabelasPrecoPRECO: TdxDBGridMaskColumn;
    dbgTabelasPrecoITEM: TdxDBGridMaskColumn;
    dbgTabelasPrecoTABELAPRECO: TdxDBGridMaskColumn;
    dbgTabelasPrecoPRECOMANUAL: TdxDBGridMaskColumn;
    dbgTabelasPrecoColumn7: TdxDBGridColumn;
    TS_Panel3: TTS_Panel;
    TS_Label48: TTS_Label;
    lbDescItem: TTS_DBTextEffect;
    dfPreco: TdxPopupEdit;
        procedure FormShow(Sender: TObject);
        procedure pgPrincipalChange(Sender: TObject);
        procedure pgOperacaoChange(Sender: TObject);
        procedure pmIniciarVendaClick(Sender: TObject);
        procedure pmInformarItensClick(Sender: TObject);
        procedure pmInformarTermosClick(Sender: TObject);
        procedure pmCancelarOperacaoClick(Sender: TObject);
        procedure pgOperacaoChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure pgPrincipalChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure pmFecharTelaClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dfItemSelecionou(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure FormCreate(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
        procedure dfPrecoKeyPress(Sender: TObject; var Key: Char);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dbgParcelasTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure dbgItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure dbgPlanosDblClick(Sender: TObject);
        procedure dfDescontoPeExit(Sender: TObject);
        procedure pmInformarNomedoClienteClick(Sender: TObject);
        procedure pmConsultadePrecosClick(Sender: TObject);
        procedure pmGravarClick(Sender: TObject);
        procedure lbEmpresaClick(Sender: TObject);
        procedure ppmItensPopup(Sender: TObject);
        procedure MostrarCabealho1Click(Sender: TObject);
        procedure dbgParcelasEditing(Sender: TObject; Node: TdxTreeListNode;
            var Allow: Boolean);
        procedure dbgParcelasEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure CancelarOperaes1Click(Sender: TObject);
        procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
            var CanDelete: Boolean);
        procedure pmPercorrerItensClick(Sender: TObject);
        procedure pmComprarItemdaConsultaClick(Sender: TObject);
        procedure DBEdit3Change(Sender: TObject);
        procedure NomostrarAtalhos1Click(Sender: TObject);
        procedure dfQuantidadeKeyPress(Sender: TObject; var Key: Char);
        procedure dbgPlanosTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure pnClienteExit(Sender: TObject);
        procedure dfPedidoClienteKeyPress(Sender: TObject; var Key: Char);
        procedure dfAdd1KeyPress(Sender: TObject; var Key: Char);
        procedure dfAdd2KeyPress(Sender: TObject; var Key: Char);
        procedure dfAdd3KeyPress(Sender: TObject; var Key: Char);
        procedure dfAdd4KeyPress(Sender: TObject; var Key: Char);
        procedure pnQuantidadeExit(Sender: TObject);
        procedure pnPrecoExit(Sender: TObject);
        procedure TS_DBTextEffect9Click(Sender: TObject);
        procedure dbtTabelaPadraoClick(Sender: TObject);
        procedure dfItemIniciarLocalizar(Sender: TObject; var Value: string;
            var bSkip: Boolean);
        procedure dbgItensEnter(Sender: TObject);
        procedure cb1Click(Sender: TObject);
        procedure df4KeyPress(Sender: TObject; var Key: Char);
        procedure cmbTipoCobrancaChange(Sender: TObject);
        procedure pmAproveitarOperacoesClick(Sender: TObject);
        procedure pmTipoMovClick(Sender: TObject);
        procedure pmDescricaoClick(Sender: TObject);
        procedure pmComposicaoClick(Sender: TObject);
        procedure pmAlterarTabelaClick(Sender: TObject);
        procedure pmStatusClick(Sender: TObject);
        procedure AlterarTabeladoItem1Click(Sender: TObject);
        procedure dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
            Conteudo: string);
        procedure ppmClientePopup(Sender: TObject);
        procedure dbtStatusClick(Sender: TObject);
        procedure pmAlterarOperacaoClick(Sender: TObject);
        procedure dfMensagemCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dfDescontoPeKeyPress(Sender: TObject; var Key: Char);
        procedure dfFreteKeyPress(Sender: TObject; var Key: Char);
        procedure dfCFOPNotaInitPopup(Sender: TObject);
        procedure dfCFOPNotaKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure AbrirCadastro1Click(Sender: TObject);
        procedure TS_DBEdit5DblClick(Sender: TObject);
        procedure QuadroGeral1Click(Sender: TObject);
        procedure ExtratodeParcelas1Click(Sender: TObject);
        procedure ltimasVendas1Click(Sender: TObject);
        procedure pmCopiarItensClick(Sender: TObject);
        procedure pmLegendaClick(Sender: TObject);
        procedure pmDevolucaoClick(Sender: TObject);
        procedure lbTermosClick(Sender: TObject);
        procedure dbgPlanosKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure imgFotoDblClick(Sender: TObject);
    procedure pmExibirMenorPrecoClick(Sender: TObject);
    procedure dfPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dfPrecoInitPopup(Sender: TObject);
    procedure dfPrecoPopup(Sender: TObject; const EditText: String);
    procedure dbgTabelasPrecoChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dbgTabelasPrecoClick(Sender: TObject);
    procedure dbgTabelasPrecoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dbgTabelasPrecoCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure dbgTabelasPrecoDblClick(Sender: TObject);
    procedure dbgTabelasPrecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCalculator1KeyPress(Sender: TObject; var Key: Char);
    private
        { Private declarations }
        sFoto: string;
        DlgCFOPs: TDlgCFOPs;
        DMSaida: TDMPedidoRapido;

        DrawBitmap: TBitmap;

        sIdentificacao: string;
        bPromocao, bMenuTipoCobranca, bSelecionou : Boolean;

        DlgProps: TDlgPropaganda;

        nItem, nTabelaPreco: Integer;
        nValorParcelaBE: currency; //Valor da Parcela antes de editar;

        CorEditores, CorLinhas, CorHeaders, CorConsulta: TColor;

        nPrecoTabela, nAliqICMS, nMaxDesconto: Currency;

        procedure EstadoInicial;
        procedure IniciarVenda;
        procedure AlterarVenda;
        procedure EstadoItens;
        procedure EstadoTermos;
        function CancelarOperacao: Boolean;
        procedure AdicionarItem;
        procedure AtualizarCores;
        procedure ConfiguracoesTipoMov;

        procedure SelecionarPlanoPgto( bTabela : boolean = False );
        procedure ImprimirDocs;
        procedure NovoItem;
        function EscolherTipoMovimento(bIniciando: Boolean = false): Boolean;
        procedure ppmTipoCobrancaClick(Sender: TObject);
        procedure AlterarStatus;

    public
        Estado: string;
        bNAOPermitirItemDuplicado : Boolean;
        { Public declarations }
        constructor Create(AOwner: TComponent); override;

        procedure SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);
        procedure EmAlteracao(sNum: string);

    end;

var
    FrmPedidoRapido: TFrmPedidoRapido;

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, teRender, teBkgrnd,
    Dlg_ConsultaPrecos, Rpt_Invoices, Rpt_DocCobranca, Dlg_ClienteVR,
    Dlg_VendedorVR, Variants, Dialogs, DM_Saidas, Dlg_TipoMovimentoPR,
    Dlg_AlterarTabelaPadrao, Dlg_MesclarMovimentos, Dlg_DescricaoComplementar,
    Frm_SaidasItensFilhos, Dlg_AlterarStatus, Dlg_LegendaGridVendas,
    Dlg_MesclarEntradas, Dlg_MetaVR, Dlg_MedicoVR, DLG_VisialuzadorImagem,
  TDM_Projeto;

{$R *.DFM}

constructor TFrmPedidoRapido.Create(AOwner: TComponent);
var
    DMClass: TComponentClass;
    sDMName: string;
    i: integer;
    bExiste: Boolean;
begin
    sDMName := 'TDMPedidoRapido';

    bExiste := false;

    DMClass := TComponentClass(GetClass(sDMName));
    if Assigned(DMClass) then
    begin
        for i := 0 to Screen.DataModuleCount - 1 do
            if uppercase(Screen.DataModules[i].ClassName) = UpperCase(sDMName) then
            begin
                bExiste := true;
                break;
            end;
        if not bExiste then
            DMSaida := TDMPedidoRapido(TComponentClass(DMClass).Create(Application))
        else
            DMSaida := TDMPedidoRapido(Screen.DataModules[i]);
    end;

    if DMProjeto.GetParametrosForm(1) <> null then
        DMSaida.nTipoMovimentoPadrao := DMProjeto.GetParametrosForm(1)
    else
        DMSaida.nTipoMovimentoPadrao := 2;

    if DMSaida.C_TiposMovimento.Active then
    begin
        DMSaida.C_TiposMovimento.Close;
        DMSaida.C_TiposMovimento.Open;
    end;

    inherited Create(AOwner);
end;

procedure TFrmPedidoRapido.FormCreate(Sender: TObject);
var
    sImagemTela: string;
begin
    inherited;

    bMenuTipoCobranca := false;
    bNAOPermitirItemDuplicado := (DMProjeto.Parametro('PermitirItemDuplicado') = 'N');

    {Definindo características visuais da tela}
    sImagemTela := DMProjeto.Parametro('ImagemPR');

    lbMenorPreco.Caption := '';

    if (sImagemTela <> '') and FileExists(DMProjeto.ImgPath + sImagemTela) then
        msPedidoRapido.Textura.LoadFromFile(DMProjeto.ImgPath + sImagemTela);

    // Adriano
    DMSaida.CriaContabilidade;

    DMSaida.Iniciar;

    if screen.width > 800 then
    begin
        imgFoto.width := trunc(imgFoto.width * 1.3);
        imgFoto.height := trunc(imgFoto.Height * 1.3);
        spFoto.width := trunc(spFoto.width * 1.3);
        spFoto.height := trunc(spFoto.Height * 1.3);

        lbEstoque.Top := trunc(lbEstoque.Top * 1.3);
        dbtEstoque.Top := trunc(dbtEstoque.Top * 1.3);
        lbGrupo.Top := trunc(lbGrupo.Top * 1.3);
        dbtGrupo.Top := trunc(dbtGrupo.Top * 1.3);
        lbFabricante.Top := trunc(lbFabricante.Top * 1.3);
        dbtFabricante.Top := trunc(dbtFabricante.Top * 1.3);
        lbCusto.Top := trunc(lbCusto.Top * 1.3);
        dbtCusto.Top := trunc(dbtCusto.Top * 1.3);
        lbMPV.Top := trunc(lbMPV.Top * 1.3);
        dbtMPV.Top := trunc(dbtMPV.Top * 1.3);
    end;

end;

procedure TFrmPedidoRapido.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    if DlgProps <> nil then
    begin
        DlgProps.Parar;
    end;

    DMSaida.Fechar;

    dlgProps := nil;

    DlgCFOPs.Release;
    DlgCFOPs := nil;

    // Adriano
    if DMSaida.ContabilidadeAtivado then
        DMSaida.ContabilidadeDesativado;

end;

procedure TFrmPedidoRapido.FormShow(Sender: TObject);
begin
    inherited;

    DlgCFOPs := TDlgCFOPs.Create(Self, DMSaida.C_CFOPsDS, nil);

    DMSaida.pEmAlteracao := EmAlteracao;

    if not DMProjeto.LerPermissao(self.name, 'CP_CUSTOS') then
    begin
        lbCusto.visible := false;
        lbMPV.Visible := false;
        dbtCusto.Visible := false;
        dbtMPV.Visible := false;
    end;

    try
        dbgItensI_UNIDADE.DisableEditor := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';
        
        if DMProjeto.Logo <> nil then
        begin
            imgLogo.Picture.Graphic := TGraphic(DMProjeto.Logo);
        end;

        FormBkg.Backgroundoptions.picture.Bitmap := msPedidoRapido.Textura;

        pnCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnInfoCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsItens.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsTermos.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnStatus.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnRecebimento.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTermos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTitulo.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnOperacao.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnOrcamento.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnAdicionais.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnCampo01.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnCampo02.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnCampo03.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnCampo04.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnAlteracao.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnLocalEntrega.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnFiscal.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTotais.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTotalItens.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTotalServicos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnDescontoPe.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnFrete.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;

        gbLicitacao.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;

        if DMProjeto.nPerfil = 1 then
        begin //Administrador
            lbEmpresa.Cursor := crHandPoint;
            lbEmpresa.OnClick := lbEmpresaClick;
        end;

        lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
        lbEmpresa.AutoSize := true;
        Application.ProcessMessages;

        lbEmpresa.Left := StrToInt(lbEmpresa.Hint);
        lbEmpresa.Width := lbEmpresa.Width + 20;

        pnAlteracao.Visible := false;

        {Corrigindo cores da tela}
        AtualizarCores;

        //lbCaixa.Caption := lbCaixa.Caption + DMFinanceiro.sNomeContaPadrao;

        if (DlgProps = nil) then
        begin
            DlgProps := TDlgPropaganda(CtnPropagandas.CreateForm(TDlgPropaganda));
            DlgProps.BitmapTela := FormBkg.Backgroundoptions.picture.bitmap;
            CtnPropagandas.ShowFormEx(DlgProps, true, nil, nil, fcfaClient);
        end;

        EstadoInicial;

        if XPClassMenu <> nil then
            with XPClassMenu do
            begin
                Gradient := true;
                DrawSelect := true;
                FlatMenu := true;
                SelectColor := $00F5EBDE;
                SelectBorderColor := $00E2BE92;
                UseSystemColors := false;
                IconBackColor := $00E2BE92;
                Active := not (DMProjeto.Parametro('MenuPadraoWindows') = 'S');
            end;

    finally
        DMProjeto.LimparParametrosForm;
    end;

end;

procedure TFrmPedidoRapido.pgPrincipalChangingToTab(Sender: TObject;
    tab: Integer; var AllowChange: Boolean);
var
    R: TRect;
begin
    inherited;
    {
      R.TopLeft :=
        ControlScreenToClient( pgPrincipal.Parent,
                               ControlClientToScreen( pgPrincipal.ActivePage,
                                                      pgPrincipal.ActivePage.ClientRect.TopLeft));
      R.BottomRight :=
        ControlScreenToClient( pgPrincipal.Parent,
                               ControlClientToScreen(pgPrincipal.ActivePage,
                                                     pgPrincipal.ActivePage.ClientRect.BottomRight));
      if pgPrincipal.ActivePage = tsPropaganda then
        T_Iniciar.Prepare( pgPrincipal.Parent, r )
      else if pgPrincipal.ActivePage = tsOperacao then
        T_Terminar.Prepare( pgPrincipal.Parent, r );
    }
end;

procedure TFrmPedidoRapido.pgPrincipalChange(Sender: TObject);
begin
    inherited;
    {  try
        if T_Iniciar.Prepared then
          T_Iniciar.Execute;
        if T_Terminar.Prepared then
          T_Terminar.Execute;
      finally
        if T_Iniciar.Prepared then
          T_Iniciar.unPrepare;
        if T_Terminar.Prepared then
          T_Terminar.unPrepare;
      end;     }
end;

procedure TFrmPedidoRapido.pgOperacaoChangingToTab(Sender: TObject;
    tab: Integer; var AllowChange: Boolean);
var
    R: TRect;
begin
    inherited;
    {
      R.TopLeft :=
        ControlScreenToClient( pgOperacao.Parent,
                               ControlClientToScreen( pgOperacao.ActivePage,
                                                      pgOperacao.ActivePage.ClientRect.TopLeft));
      R.BottomRight :=
        ControlScreenToClient( pgOperacao.Parent,
                               ControlClientToScreen(pgOperacao.ActivePage,
                                                     pgOperacao.ActivePage.ClientRect.BottomRight));

      T_ItensTermos.Prepare( pgOperacao.Parent, r );
     }
end;

procedure TFrmPedidoRapido.pgOperacaoChange(Sender: TObject);
begin
    inherited;
    {  try
        if T_ItensTermos.Prepared then
          T_ItensTermos.Execute;
      finally
        if T_ItensTermos.Prepared then
          T_ItensTermos.unPrepare;
      end;
    }
    if pgOperacao.ActivePage = tsTermos then
    begin
        if dbgPlanos.Canfocus then
            ActiveControl := dbgPlanos
    end
    else
    begin
        if dfItem.Canfocus then
            NovoItem;
    end;

end;

procedure TFrmPedidoRapido.pmIniciarVendaClick(Sender: TObject);
begin
    inherited;
    if Estado = 'Propagandas' then
        IniciarVenda
    else if CancelarOperacao then
        EstadoInicial;
end;

procedure TFrmPedidoRapido.pmInformarItensClick(Sender: TObject);
begin
    inherited;
    EstadoItens;
end;

procedure TFrmPedidoRapido.pmInformarTermosClick(Sender: TObject);
begin
    inherited;
    EstadoTermos;
end;

procedure TFrmPedidoRapido.pmCancelarOperacaoClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX('FrmSaidas', 'CanOpCorr') then
        exit;

    if CancelarOperacao then
        EstadoInicial;
end;

procedure TFrmPedidoRapido.pmFecharTelaClick(Sender: TObject);
begin
    inherited;
    if CancelarOperacao then
        Close;
end;

function TFrmPedidoRapido.CancelarOperacao;
begin
    result := (DMSaida.C_TabelaTotal.Value = 0) or (DlgMsg.ShowMsg(2700) = 100);
end;

procedure TFrmPedidoRapido.EstadoInicial;
begin
    Screen.Cursor := crDefault;

    btLembrete.Enabled := false;
    pnAlteracao.Visible := false;

    dbtDescItem.Visible := false;
    dbtQuantidade.Visible := false;
    dbtPrecoUnit.Visible := false;
    dbtSubTotal.Visible := false;
    lbX.Visible := false;
    lbIg.Visible := false;

    pgPrincipal.SetPage(tsPropaganda); //Propagandas
    pgOperacao.ActivePageIndex := 0; //Itens

    {True}
    SetEnableMenu(true, pmIniciarVenda);
    SetEnableMenu(true, pmAlterarOperacao);

    {False}
    SetEnableMenu(false, pmInformarItens);
    SetEnableMenu(false, pmInformarTermos);
    SetEnableMenu(false, pmInformarNomedoCliente);
    SetEnableMenu(false, pmAproveitarOperacoes);
    SetEnableMenu(false, pmGravar);
    SetEnableMenu(false, pmCancelarOperacao);
    SetEnableMenu(false, pmPercorrerItens);
    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(false, pmAlterarTabela);
    SetEnableMenu(false, pmDescricao);
    SetEnableMenu(false, pmTipoMov);
    SetEnableMenu(false, pmStatus);
    SetEnableMenu(false, pmComposicao);
    SetEnableMenu(false, pmEstatisticasItem);
    SetEnableMenu(false, pmCopiarItens);
    SetEnableMenu(false, pmLegenda);
    SetEnableMenu(false, pmDevolucao);
    SetEnableMenu(false, pmExibirMenorPreco);

    if Self.Visible then
    begin //=> que o form já está criado e que uma operação foi gravada.
        DMSaida.Modo_Inclusao; //para nao deixar sugeira da operacao anterior;
        dbgPlanos.LimparSelecionados;

        cb1.Checked := false;
        cb2.Checked := false;
        cb3.Checked := false;
        cb4.Checked := false;
        cb5.Checked := false;
        cb6.Checked := false;
        cb7.Checked := false;

    end;

    Estado := 'Propagandas';

    if DlgProps <> nil then
    begin
        if CtnPropagandas.Parent <> tsPropaganda then
            CtnPropagandas.Parent := tsPropaganda;
        DlgProps.Iniciar(True);
    end;

end;

procedure TFrmPedidoRapido.EstadoItens;
var
    sTipoPropaganda: string;
begin
    SetEnableMenu(true, pmIniciarVenda);
    SetEnableMenu(true, pmInformarTermos);
    SetEnableMenu(true, pmInformarNomedoCliente);
    SetEnableMenu(true, pmCancelarOperacao);
    SetEnableMenu(true, pmPercorrerItens);
    SetEnableMenu(true, pmAlterarTabela);
    SetEnableMenu(true, pmDescricao);
    SetEnableMenu(not DMSaida.bAlteracao, pmTipoMov);
    SetEnableMenu(true, pmComposicao);
    SetEnableMenu(true, pmEstatisticasItem);
    SetEnableMenu(true, pmCopiarItens);
    SetEnableMenu(true, pmLegenda);
    SetEnableMenu(true, pmDevolucao);
    SetEnableMenu(true,  pmExibirMenorPreco);

    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(false, pmGravar);
    SetEnableMenu(false, pmInformarItens);
    SetEnableMenu(false, pmAlterarOperacao);

    pgOperacao.SetPage(tsItens); //Itens

    if DlgProps <> nil then
        DlgProps.Parar;

    try
        if dfItem.CanFocus then
            dfItem.SetFocus;
    except
    end;

    Estado := 'Itens';

end;

procedure TFrmPedidoRapido.EstadoTermos;
var
    s: string;
begin
    if DMSaida.C_TabelaTotal.Value = 0 then
    begin
        DlgMsg.ShowMsg(2291);
        exit;
    end;

    DMSaida.C_Tabela.Edit;
    DMSaida.C_TabelaDesconto.Value := 0;
    DMSaida.C_Tabela.Post;

    NovoItem; //Para garantir que será postado

    {Atribuindo o Plano de Pagamento Padrão do Cliente - se existir}
    if (DMSaida <> nil) and not DMSaida.bAlteracao then
    begin
        if (DMSaida.C_TabelaPlanoPagamento.Value = 0) and
            (DMSaida.C_TabelaF_PLANOPAGAMENTO.Value <> 0) then
        begin
            DMSaida.C_Tabela.Edit;
            DMSaida.C_PlanosPagamento.Locate('PlanoPagamento', DMSaida.C_TabelaF_PLANOPAGAMENTO.Value, []);
            SelecionarPlanoPgto;
        end;
    end;

    SetEnableMenu(true, pmCancelarOperacao);
    SetEnableMenu(true, pmGravar);
    SetEnableMenu(true, pmInformarItens);
    SetEnableMenu(not DMSaida.bAlteracao, pmTipoMov);
    SetEnableMenu(true, pmDevolucao);

    SetEnableMenu(false, pmAlterarOperacao);
    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(false, pmIniciarVenda);
    SetEnableMenu(false, pmInformarTermos);
    SetEnableMenu(false, pmInformarNomedoCliente);
    SetEnableMenu(false, pmAproveitarOperacoes);
    SetEnableMenu(false, pmPercorrerItens);
    SetEnableMenu(false, pmAlterarTabela);
    SetEnableMenu(false, pmDescricao);
    SetEnableMenu(false, pmComposicao);
    SetEnableMenu(false, pmEstatisticasItem);
    SetEnableMenu(false, pmCopiarItens);
    SetEnableMenu(false, pmLegenda);
    SetEnableMenu(true, pmExibirMenorPreco);

    pnTotalServicos.Visible := (DMSaida.C_TabelaTotalServicos.Value > 0);

    {Atualizando o resumo dos planos de pagamento}
    DMPedidoRapido.AtualizarResumoPlanos;

    pgOperacao.SetPage(tsTermos); //Termos

    Estado := 'Termos';

end;

procedure TFrmPedidoRapido.dfItemSelecionou(Sender: TObject);
begin
    inherited;


    If (bNAOPermitirItemDuplicado) Then Begin
      if (DMSaida.VerificaItemDuplicado(DMProjeto.C_LocalizarItensITEM.Value)) Then Begin
        DlgMsg.ShowMsg(50, ['O Sistema Foi Configurado Para Não Permitir Item Duplicado Nas Telas de Saidas.']);
        dfItem.Text := '';
        dfItem.SetFocus;
        Exit;
      End;
    End;
    nItem := DMProjeto.C_LocalizarItensITEM.Value;
    sIdentificacao := DMProjeto.C_LocalizarItensIDENTIFICACAO.Value;

    bSelecionou := True;
    nAliqICMS    := DMProjeto.C_LocalizarItensAliqICMS.Value;
    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then begin
      nPrecoTabela := DMProjeto.C_LocalizarItensicPreco.Value;
      bPromocao := DMProjeto.C_LocalizarItensicEmPromocao.Value;
    end
    else begin
      if (DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3]) and
          DMSaida.LocalizarTabelaItem(nItem, DMSaida.C_TabelaTabelaPadrao.Value, DMProjeto.C_LocalizarItensUNIDADE.Value) then
      begin
//          if DMSaida.C_ProdutosPrecoPrecoPromocao.Value > 0 then begin
//            nPrecoTabela := DMSaida.C_ProdutosPrecoPrecoPromocao.asCurrency;
//            bPromocao := true;
//          end
//          else begin
//            nPrecoTabela := DMSaida.C_ProdutosPrecoPreco.asCurrency;
//            bPromocao := false;
//          end;
           //............
          nPrecoTabela := DMProjeto.C_LocalizarItensicPreco.Value;
          bPromocao := DMProjeto.C_LocalizarItensicEmPromocao.Value;
          //..............
          nTabelaPreco := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
          nPrecoTabela := Arredondar(nPrecoTabela, 2);
      end
      else begin
        nPrecoTabela := 0;
        nTabelaPreco := 0;
      end;
    end;
    if nPrecoTabela = 0 then begin
      DlgMsg.ShowMsg(2725);
      bSelecionou := False;
      exit;
    end;

    dfItem.Text := DMProjeto.C_LocalizarItensCodigo.Value;
    if (DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3]) then
        dfPreco.Text := CurrToStr(Arredondar(nPrecoTabela, 2))
    else
        dfPreco.Text := CurrToStr(nPrecoTabela);
    dfPreco.ReadOnly := bPromocao;

    {Foto do Item}
    sFoto := DMProjeto.C_LocalizarItensFoto.asString;
    if sFoto = '' then
        sFoto := DMProjeto.C_LocalizarItensFotoGrupo.asString;

    if (sFoto <> '') and FileExists(DMProjeto.ImgPath + sFoto) then
    begin
        try
            imgFoto.Picture.LoadFromFile(DMProjeto.ImgPath + sFoto);
        except
            imgFoto.Picture := nil;
        end;
    end
    else
    begin
        if fileexists(DMProjeto.ProgPath + 'Logo.bmp') then
            imgFoto.Picture.LoadFromFile(DMProjeto.ProgPath + 'Logo.bmp')
        else
            imgFoto.Picture := nil;
    end;

    Application.ProcessMessages;

    if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
        dfQuantidade.Value := DMProjeto.C_LocalizarItensicQuantidade.Value;

    {Adicionando na Operacao}
    if pnConsultaPrecos.Visible then
    begin
        pnConsultaPrecos.Caption := '';
        spConsultaPrecos.Visible := true;

        lbDescricaoConsulta.Caption := DMProjeto.C_LocalizarItensDescricao.Value;
        lbPrecoConsulta.Caption := FormatCurr('#,###,##0.00', nPrecoTabela);

        lbDescricaoConsulta.Visible := true;
        lbPrecoConsulta.Visible := true;
        bSelecionou := False;
    end
    else
    begin
        lbMenorPreco.Caption := FormatFloat('#,###,###,#0.00', DMProjeto.C_LocalizarItensicPrecoMinimo.Value );
        AdicionarItem;
        if dfQuantidade.CanFocus then
            dfQuantidade.SetFocus;
    end;

end;

procedure TFrmPedidoRapido.FormKeyPress(Sender: TObject; var Key: Char);
var
    nValor: Currency;
begin
    inherited;

    if (Key = '%') and ((ActiveControl = dfPreco)) then
    begin
        Key := #0;
        nValor := TTS_CalcEdit(ActiveControl).Value;
        TTS_CalcEdit(ActiveControl).Value := Truncar(nPrecoTabela * (1 + nValor / 100), 2);
    end;

    if (key = #13) and (ActiveControl = dbgPlanos) then
        SelecionarPlanoPgto;

    if (Key = '%') and ((ActiveControl = dfDescontoPe)) then
    begin
        Key := #0;
        nValor := TTS_DBEditNumber(ActiveControl).Value;
        TTS_DBEditNumber(ActiveControl).Value := Truncar((DMSaida.C_TabelaTotalItens.Value + DMSaida.C_TabelaTotalServicos.Value) * (nValor / 100), 2);
    end;

    if (key = '+') and (activecontrol = dbgItens) then
    begin
        Key := #0;
        NovoItem;
    end;

end;

procedure TFrmPedidoRapido.DBEdit1Change(Sender: TObject);
begin
    inherited;
    ConfiguracoesTipoMov;
end;

procedure TFrmPedidoRapido.dfQuantidadeKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if (key in ['+', #10]) then
    begin
        Key := #0;
        NovoItem;
    end
    else if (Key = #13) then
    begin
        if pnPreco.Visible and dfPreco.Canfocus then
            dfPreco.SetFocus
        else
            NovoItem;
    end;
end;

procedure TFrmPedidoRapido.dfPrecoKeyPress(Sender: TObject;
    var Key: Char);
var
    bGrid: Boolean;
begin
    inherited;
    if Key in ['.',','] then Key := DecimalSeparator;
    if (key in ['+', #10]) then
    begin
      Key := #0;
      NovoItem;
    end
    else if (Key = #13) then
    begin
      bGrid := (sIdentificacao = 'S') and (DMProjeto.Parametro('Identificacao') <> 'S') and
          dbgItensColuna1.Visible;
      if ((DMProjeto.Parametro('EnterGridPR') = 'S') or bGrid) and dbgItens.Canfocus then
          dbgItens.SetFocus
      else
          NovoItem;
    end
    else if not (Key in ['0'..'9',DecimalSeparator]) then Key := #0;
end;

procedure TFrmPedidoRapido.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;

    if (Shift = [ssCtrl]) and (key = ord('O')) then
        ppmPadrao.PopupFromCursorPos;

    if (Shift = [ssCtrl]) and (key = ord('F')) then
    begin
        if pnRecebimento.Visible and cb1.CanFocus then
            cb1.SetFocus;

        if pnFiscal.Visible and dfCFOPNota.CanFocus then
            dfCFOPNota.SetFocus;

        if pnOrcamento.Visible and dfTratar.CanFocus then
            dfTratar.SetFocus;
    end;

    if (Shift = [ssCtrl, ssAlt, ssShift]) and (Key = Ord('P')) then
    begin
        Key := 0;
        ShowMessage(DMSaida.sPerformance);
        exit;
    end;

    if (Shift = [ssCtrl, ssShift]) and (Key = Ord('T')) and (pnFiscal.Visible) then
    begin
        if cmbTransportadora.CanFocus then
            cmbTransportadora.SetFocus;
    end;

    if (Shift = [ssCtrl, ssShift]) and (Key = Ord('E')) and (pnLocalEntrega.Visible) then
    begin
        if cmbLocalEntrega.CanFocus then
            cmbLocalEntrega.SetFocus;
    end;

    if (Shift = [ssCtrl, ssShift]) and (Key = Ord('M')) and (pnMensagem.Visible) then
    begin
        if dfObs.CanFocus then
            dfObs.SetFocus;
    end;

    if (Shift = [ssCtrl, ssShift]) and (Key = Ord('D')) and (pnAdicionais.Visible) then
    begin
        if dfAdd1.CanFocus then
            dfAdd1.SetFocus;
    end;

    if (Estado = 'Termos') then
    begin
        if (Key = VK_F3) then
        begin
            ActiveControl := nil;
            if (dfDescontoPe.CanFocus) then
                dfDescontoPe.SetFocus;
        end;
    end;

    if (ssCtrl in Shift) and (Key in [ord('1')..ord('7')]) then
    begin
        ActiveControl := nil;
        if pnRecebimento.Visible then
        begin
            tdxfCheckBox(FindComponent('cb' + chr(key))).Checked := not tdxfCheckBox(FindComponent('cb' + chr(key))).Checked;
            if (FindComponent('df' + chr(key)) <> nil) and TTS_CalcEdit(FindComponent('df' + chr(key))).CanFocus then
            begin
                TTS_CalcEdit(FindComponent('df' + chr(key))).Value := 0;
                TTS_CalcEdit(FindComponent('df' + chr(key))).SetFocus;
            end;
        end;
        Key := 0;
    end;

    if (Shift = [ssCtrl]) and (key = ord('T')) and dbgPlanos.CanFocus then
    begin
        dbgPlanos.SetFocus;
        Key := 0;
    end;

end;

procedure TFrmPedidoRapido.NovoItem;
begin
    bSelecionou := False;
    try
        dfItem.SetFocus;
    except
    end;

    dfItem.Clear;
    dfQuantidade.Value := 1;
    dfPreco.Text := '0';

    if DMSaida.C_Itens.State in [dsEdit, dsInsert] then
        DMSaida.C_Itens.Post;

end;

procedure TFrmPedidoRapido.AdicionarItem;
var
    bMoreInfo: Boolean;
    nValorMaxDesconto: Currency;
begin
    {Considera-se que a última pesquisa é a do item que está sendo adicionado}
    if dfItem.Text = '' then
        exit;

    with DMSaida do
    begin
        C_Itens.Append;
        C_ItensITEM.Value := nItem;
        C_ItensQuantidade.Value := dfQuantidade.Value;
        C_ItensTabelaPreco.Value := nTabelaPreco;
        C_ItensPrecoTabela.Value := nPrecoTabela;
        C_ItensPreco.Value := StrToFloatDef(dfPreco.Text,0);
        C_ItensUNIDADE.Value := dfItem.sUltimaUnidade;
        C_ItensALIQICMS.Value := nAliqICMS;
        dfPreco.Text := CurrToStr(C_ItensPreco.Value);
        //C_Itens.Post;
    end;

    if not dbtDescItem.Visible then
    begin
        dbtDescItem.Visible := true;
        dbtQuantidade.Visible := true;
        dbtPrecoUnit.Visible := true;
        dbtSubTotal.Visible := true;
        lbX.Visible := true;
        lbIg.Visible := true;
    end;

end;

procedure TFrmPedidoRapido.SelecionarPlanoPgto;
begin
    {Gerando o Plano de Pagamento}
    with DMSaida do
    begin
        C_Tabela.Edit;
        if bTabela then
          C_TabelaPlanoPagamento.Value := C_TabelaPlanoPagamento.Value
        else
          C_TabelaPlanoPagamento.Value := dbgPlanos.GetFieldValue(dbgplanos.FocusedNode, 'PlanoPagamento', C_TabelaPlanoPagamento.Value);

        {Selecionando todas as Parcelas que se venceram}
        with C_Parcelas do
        begin
            First;
            while not EOF do
            begin
                if C_ParcelasVencimento.Value <= C_TabelaData.Value then
                    dbgParcelas.SelecionarLinha;

                Next;
            end;
            First;
        end;

    end;

end;

procedure TFrmPedidoRapido.dbgParcelasTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
begin
    inherited;
    DMSaida.nSelecParcs := dbgParcelas.TotalSelecionado('Valor');

    if DMSaida.C_Parcelas.State = dsBrowse then
        DMSaida.C_Parcelas.Edit;

    if bSelected then
        DMSaida.C_Parcelas['Pagamento'] := DMSaida.C_ParcelasValor.Value
    else
        DMSaida.C_Parcelas['Pagamento'] := 0;

end;

procedure TFrmPedidoRapido.dbgPlanosDblClick(Sender: TObject);
begin
    inherited;
    SelecionarPlanoPgto;
end;

procedure TFrmPedidoRapido.dfDescontoPeExit(Sender: TObject);
begin
    inherited;
    if DMSaida.C_Parcelas.RecordCount > 0 then
    begin
        SelecionarPlanoPgto( True );
    end;
end;

procedure TFrmPedidoRapido.pmInformarNomedoClienteClick(Sender: TObject);
begin
    inherited;
    if pgOperacao.ActivePage <> tsItens then
        exit;

    pmInformarNomedoCliente.Checked := not pmInformarNomedoCliente.Checked;

    if pmInformarNomedoCliente.Checked then
        T_Cliente.Prepare(pnCliente.Parent, pnCliente.BoundsRect);

    pnCliente.Visible := pmInformarNomedoCliente.Checked;

    if T_Cliente.Prepared then
    begin
        T_Cliente.Execute;
        T_Cliente.unPrepare;
    end;

    if pnCliente.Visible then
    begin
        ActiveControl := dfFavorecido;
        SetEnableMenu(false, pmInformarTermos);
        SetEnableMenu(false, pmIniciarVenda);
    end
    else
    begin
        ActiveControl := dfItem;
        SetEnableMenu(true, pmInformarTermos);
        SetEnableMenu(true, pmIniciarVenda);
    end;

end;

procedure TFrmPedidoRapido.pmConsultadePrecosClick(Sender: TObject);
var
    nItemSelec: integer;
begin
    inherited;
    if Estado <> 'Itens' then
    begin
        DMProjeto.SetParametrosForm([DMSaida.C_TabelaTabelaPadrao.Value, DMSaida.C_TabelaFavorecido.asVariant]);

        DlgConsultaPrecos := TDlgConsultaPrecos.create(self);
        nItemSelec := DlgConsultaPrecos.ShowModal;
        DlgConsultaPrecos.Release;

        if nItemSelec > 0 then
        begin
            if Estado = 'Propagandas' then
                IniciarVenda;

            if Estado = 'Itens' then
                dfItem.ID := nItemSelec;
        end;
    end
    else if Estado = 'Itens' then
    begin
        pmConsultadePrecos.Checked := not pmConsultadePrecos.Checked;

        if pmConsultadePrecos.Checked then
        begin
            pnConsultaPrecos.Caption := pnConsultaPrecos.Hint;

            T_ConsultaPreco.Prepare(pnConsultaPrecos.Parent, pnConsultaPrecos.BoundsRect);
            pnConsultaPrecos.Visible := true;

            if T_ConsultaPreco.Prepared then
            begin
                T_ConsultaPreco.Execute;
                T_ConsultaPreco.UnPrepare;
            end;

            SetEnableMenu(true, pmComprarItemdaConsulta);

            ActiveControl := dfItem;
        end
        else
        begin
            pnConsultaPrecos.Visible := false;
            lbDescricaoConsulta.Visible := false;
            lbPrecoConsulta.Visible := false;
            spConsultaPrecos.Visible := false;
            SetEnableMenu(false, pmComprarItemdaConsulta);

            ActiveControl := dfItem;
        end;
    end;

end;

procedure TFrmPedidoRapido.pmGravarClick(Sender: TObject);
var sTmp: string;
    bGravou, bCond: Boolean;
begin
  if Name <> 'FrmEmpresa' Then Begin
   if (DMProject.TipoSituacaoCliente = 2) Then Begin
      DlgMsg.ShowMsg(50,['O Período de Avaliação Expirou. Favor Registrar o Sistema SYNCLOJA.'+#13+
                         'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                         'nosso site www.synctech.com.br']);
      Exit;
   End Else if (DMProject.TipoSituacaoCliente = 4) Then Begin
      DlgMsg.ShowMsg(50,['Você deve atualizar o Acesso ao Sistema.'+#13+
                         'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                         'nosso site www.synctech.com.br']);
      Exit;
   End;
  End;

    inherited;
    ActiveControl := nil; //Para forçar confirmação de algum campo que esteja em edição;

    {A Gravacao do recebimento ja esta sendo chamada no GravarAposApply da classe (Interceptado mais acima)}
    DMSaida.dbgParcelasForm := dbgParcelas;

    Screen.Cursor := crHourglass;

    {Compondo CondicoesPgto para o Caixa}
    if pnRecebimento.Visible then
    begin
        bCond := cb1.Checked or cb2.Checked or cb3.Checked or cb4.Checked or cb5.Checked or cb6.Checked or cb7.Checked;

        if bCond then
        begin
            sTmp := '';
            if cb1.Checked then
                sTmp := CExp(sTmp, '|') + '1;1;' + FloatToStr(df1.Value);
            if cb2.Checked then
                sTmp := CExp(sTmp, '|') + '2;1;' + FloatToStr(df2.Value);
            if cb3.Checked then
                sTmp := CExp(sTmp, '|') + '3;1;' + FloatToStr(df3.Value);
            if cb4.Checked then
                sTmp := CExp(sTmp, '|') + '4;' + IIF(dfVezes.Value > 0, FloatToStr(dfVezes.Value), '1') + ';' + FloatToStr(df4.Value);
            if cb5.Checked then
                sTmp := CExp(sTmp, '|') + '5;1;' + FloatToStr(df5.Value);
            if cb6.Checked then
                sTmp := CExp(sTmp, '|') + '6;1;0';
            if cb7.Checked then
                sTmp := CExp(sTmp, '|') + '7;1;0';

            DMSaida.C_Tabela.Edit;
            DMSaida.C_TabelaCondicoesPgto.Value := sTmp;
            DMSaida.C_Tabela.Post;

        end;

    end;

    try
        bGravou := false;
        if DMSaida.Gravar then begin
            bGravou := true;

            DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

            Screen.Cursor := crDefault;

            sTmp := DMSaida.C_TiposMovimentoCB_ImprimirOP.Value;
            if sTmp = '' then
                sTmp := 'N';

            if sTmp[1] <> 'N' then
                ImprimirDocs;

            EstadoInicial;
        end  else begin
        end;
    finally
        Screen.Cursor := crDefault;
    end;

end;

procedure TFrmPedidoRapido.ImprimirDocs;
begin
    // Felipe   -       Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos    
    DMProjeto.ImprimirDocumentosSaida(DMsaida.C_TabelaIDMestre.Value, DMSaida.C_TabelaEMPRESA.Value, DMSaida.C_TabelaPDV.Value);
end;

procedure TFrmPedidoRapido.lbEmpresaClick(Sender: TObject);
var
    DlgFont: TFontDialog;
begin
    inherited;

    DlgFont := TFontDialog.Create(self);
    DlgFont.Font.Assign(lbEmpresa.Font);

    if DlgFont.Execute then
    begin
        lbEmpresa.Font.Assign(DlgFont.Font);
        lbEmpresa.AutoSize := true;
        lbEmpresa.width := lbEmpresa.width + 20;
    end;

    DlgFont.Free;

end;

procedure TFrmPedidoRapido.ppmItensPopup(Sender: TObject);
begin
    inherited;
    MostrarCabealho1.Visible := DMProjeto.nPerfil = 1;
end;

procedure TFrmPedidoRapido.MostrarCabealho1Click(Sender: TObject);
begin
    inherited;
    MostrarCabealho1.Checked := not MostrarCabealho1.Checked;

    dbgItens.ShowHeader := MostrarCabealho1.Checked;

end;

procedure TFrmPedidoRapido.dbgParcelasEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
begin
    inherited;
    nValorParcelaBE := dbgParcelas.GetFieldValue(Node, 'Valor', 0);
end;

procedure TFrmPedidoRapido.dbgParcelasEdited(Sender: TObject;
    Node: TdxTreeListNode);
var
    nParcela: Integer;
    nVenc: TDateTime;
    nValor: Currency;
begin
    inherited;
    nParcela := dbgParcelas.GetFieldValue(Node, 'Parcela', -1);
    nVenc := dbgParcelas.GetFieldValue(Node, 'Vencimento', DMProjeto.dDataSistema);
    nValor := StrToFloatDef(dbgParcelas.GetFieldValue(Node, 'Valor', 0, true), nValorParcelaBE);

    if nValor <> nValorParcelaBE then
    begin
        if (nParcela = 1) and DMSaida.PlanoPgtoComEntrada then //Alterou a entrada
            DMSaida.GerarParcelamento(nValor, true)
        else
            DMSaida.RatearDifProxParcelas(nParcela, nValorParcelaBE - nValor)
    end;

end;

procedure TFrmPedidoRapido.ConfiguracoesTipoMov;
begin

    if not DMSaida.C_TiposMovimento.Active then
        exit;

    DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

    with DMSaida do
    begin
        cmbTipoFav.TipoFavorecido := IIF(C_TiposMovimentoTIPOFAVPADRAO.Value > 0, C_TiposMovimentoTIPOFAVPADRAO.Value, 1);

        cmbTipoCobranca.LookupKeyValue := C_TiposMovimento.FieldByName('TipoCob_Padrao').asInteger;
        if cmbTipoCobranca.LookupKeyValue = 0 then
            cmbTipoCobranca.LookupKeyValue := 1;

        if C_TiposMovimento.FieldByName('CB_Descontos').asString <> 'S' then
        begin
            pnPreco.Enabled := false;
            pnDescontoPe.Visible := false;
        end
        else
        begin
            pnPreco.Enabled := true;
            pnDescontoPe.Visible := true;
        end;

        pnFrete.Visible := (C_TiposMovimento.FieldByName('CB_Frete').asString = 'S');
        pnTotalServicos.Visible := (C_TiposMovimentoPossuiISS.Value = 'S');

        if pnTotalServicos.Visible then
            pnTotalServicos.Left := 160;

        if pnDescontoPe.Visible then
            pnDescontoPe.Left := 300;

        if pnFrete.Visible then
            pnFrete.Left := 431;

        if C_TiposMovimentoTipoPadrao.Value = 2 then
        begin
            lbTit10.Caption := 'Aproveitar Orçamentos'
        end
        else if C_TiposMovimentoTipoPadrao.Value = 1 then
        begin
            lbTit10.Caption := 'Aproveitar Pedidos'
        end;

        pmAproveitarOperacoes.Caption := lbTit10.Caption;

        pnFiscal.Visible := (C_TiposMovimentoPossuiICMS.Value = 'S');
        pnLocalEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S') and (C_TiposMovimentoTipoPadrao.Value <> 3);

        pnMensagem.Visible := (C_TiposMovimentoCB_Mensagem.Value = 'S') and (C_TiposMovimentoTipoPadrao.Value <> 3);

        pnTermos.Visible := (C_TiposMovimentoCB_Termos.Value = 'S');

        lbPedidoCliente.Visible := (C_TiposMovimentoCB_PEDIDO.Value = 'S');
        dfPedidoCliente.Visible := (C_TiposMovimentoCB_PEDIDO.Value = 'S');

        dbtStatus.Visible := (C_TiposMovimentoCB_Status.Value = 'S');

        pnCampo01.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
        pnCampo02.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
        pnCampo03.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
        pnCampo04.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

        pnRecebimento.Visible := (C_TiposMovimentoTipoPadrao.Value = 2) and (C_TiposMovimentoStatusPadrao.Value = 'X');

        pnOrcamento.Visible := (C_TiposMovimentoTipoPadrao.Value in [3]);
        dbgPlanos.TS_MultiSelection := (C_TiposMovimentoTipoPadrao.Value in [3, 4]);
        dbgPlanos.TS_ShowSelectionColumn := (C_TiposMovimentoTipoPadrao.Value in [3, 4]);

        dfCondicoesPgto.Visible := (C_TiposMovimentoTipoPadrao.Value in [3, 4]);
        lbCondicoesPgto.Visible := (C_TiposMovimentoTipoPadrao.Value in [3, 4]);

        lbTipoCobranca.Visible := not (C_TiposMovimentoTipoPadrao.Value in [3, 4]);
        cmbTipoCobranca.Visible := lbTipoCobranca.Visible;

        dbgParcelas.Visible := not pnOrcamento.Visible;

        gbLicitacao.Visible := (C_TiposMovimentoTipoPadrao.Value = 3) and (C_TiposMovimentoCB_Licitacao.Value = 'S');

        pnAdicionais.Visible := pnCampo01.Visible or pnCampo02.Visible or pnCampo03.Visible or pnCampo04.Visible;
        pnAdicionais.Height := IIF(pnAdicionais.Visible, 40, 1);

        dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';
        dbgItensStatus.Visible := C_TiposMovimentoCB_StatusItens.Value = 'S';
        dbgItensQtdFaturada.Visible := dbgItensStatus.Visible and DMSaida.bAlteracao and
            (DMSaida.C_TabelaTipoPadrao.Value in [2, 3]);

        dbgItensColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
        dbgItensColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
        dbgItensColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
        dbgItensColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';

        SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);
        SetEnableMenu(dbtStatus.Visible, pmStatus);

        dbgItens.HeaderPanelRowCount := IIF(dbgItensColuna1.Visible or dbgItensColuna2.Visible or
            dbgItensColuna3.Visible or dbgItensColuna4.Visible, 3, 2);

        dbgItensNumeroLote.visible := DMProjeto.bControleValidade and not DMProjeto.bControleValidadeAut and
            (C_TabelaTipoPadrao.Value <> 3);

        lbLocalEntrega.Caption := (C_TiposMovimento.FieldByName('TIT1_LOCALENTREGA').asString + ' (Ctrl+Shift+E)');
        lbDataEntrega.Caption := (C_TiposMovimento.FieldByName('TIT1_DATAENTREGA').asString);
        lbTipoEntrega.Caption := (C_TiposMovimento.FieldByName('TIT1_TIPOENTREGA').asString);

        lbCampo01.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO1').asString);
        lbCampo02.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO2').asString);
        lbCampo03.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO3').asString);
        lbCampo04.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO4').asString);

        dbgItensI_Codigo.Caption := C_TiposMovimento.FieldByName('TIT1_Codigo').asString;
        dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT1_Referencia').asString;
        dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT1_DESCRICAO').asString;
        dbgItensI_Unidade.Caption := C_TiposMovimento.FieldByName('TIT1_UNIDADE').asString;
        dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT1_QUANTIDADE').asString;
        dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT1_PRECO').asString;
        dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT1_SUBTOTAL').asString;

        dbgItensColuna1.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna1').asString;
        dbgItensColuna2.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna2').asString;
        dbgItensColuna3.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna3').asString;
        dbgItensColuna4.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna4').asString;

        if pnLocalEntrega.Visible then
            with DMSaida do
            begin
                C_LocaisEntrega.Close;
                C_LocaisEntrega.Open;
            end;

    end;

    {Capturando Posições Originais dos paineis}
    if pnFiscal.TagStr = '' then
        pnFiscal.TagStr := IntToStr(pnFiscal.Top + pnAdicionais.Height);

    if pnRecebimento.TagStr = '' then
        pnRecebimento.TagStr := IntToStr(pnRecebimento.Top + pnAdicionais.Height);

    if pnOrcamento.TagStr = '' then
        pnOrcamento.TagStr := IntToStr(pnOrcamento.Top + pnAdicionais.Height);

    if pnLocalEntrega.TagStr = '' then
        pnLocalEntrega.TagStr := IntToStr(pnLocalEntrega.Top + pnAdicionais.Height);

    if pnMensagem.TagStr = '' then
        pnMensagem.TagStr := IntToStr(pnMensagem.Top + pnAdicionais.Height);

    {Ajustando posições dos paineis visiveis para uma melhor visualização}
    if pnLocalEntrega.Visible then
    begin
        if not pnTermos.Visible then
            pnLocalEntrega.Top := 90
        else
            pnLocalEntrega.Top := StrToInt(pnLocalEntrega.TagStr) - pnAdicionais.Height;

        if not pnFiscal.Visible and not pnRecebimento.Visible then
            pnLocalEntrega.Left := 0
        else
            pnLocalEntrega.Left := 561;

    end;

    if pnMensagem.Visible then
    begin
        if not pnTermos.Visible then
            pnMensagem.Top := 186
        else
            pnMensagem.Top := StrToInt(pnMensagem.TagStr) - pnAdicionais.Height;

        if pnFiscal.Visible or pnRecebimento.Visible then
            pnMensagem.Left := 367
        else if pnLocalEntrega.Visible then
            pnMensagem.Left := pnLocalEntrega.Width + 2
        else
            pnMensagem.Left := 0;

    end;

    if pnRecebimento.Visible then
    begin
        if not pnTermos.Visible then
            pnRecebimento.Top := pnTermos.Top + 6
        else
            pnRecebimento.Top := StrToInt(pnRecebimento.TagStr) - pnAdicionais.Height;
    end;

    if pnFiscal.Visible then
    begin
        if not pnTermos.Visible then
            pnFiscal.Top := pnTermos.Top + 6
        else
            pnFiscal.Top := StrToInt(pnFiscal.TagStr) - pnAdicionais.Height;
    end;

    if pnOrcamento.Visible then
    begin
        if not pnTermos.Visible then
            pnOrcamento.Top := pnTermos.Top + 6
        else
            pnOrcamento.Top := StrToInt(pnOrcamento.TagStr) - pnAdicionais.Height;
    end;

    AtualizarCores;

    Application.ProcessMessages;
end;

procedure TFrmPedidoRapido.AtualizarCores;
var
    i: Integer;
begin
    CorHeaders := msPedidoRapido.CaptionShadow;

    if DMSaida.C_TiposMovimento.Active then
    begin
        DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

        try
            CorHeaders := DMSaida.C_TiposMovimentoCORTITULOS.Value;
        except
            CorHeaders := msPedidoRapido.CaptionShadow;
        end;
    end;

    CorLinhas := msPedidoRapido.BarEndColor;
    CorEditores := msPedidoRapido.BarStartColor;
    CorConsulta := msPedidoRapido.FormColor;

    esPedidoRapido.BorderColor := CorLinhas;

    dfMensagem.Color := CorHeaders;
    spPlano.Brush.Color := CorHeaders;
    spPlano.Pen.Color := CorLinhas;
    spItens.Brush.Color := CorEditores;
    spItens.Pen.Color := CorLinhas;

    dbgItens.Color := clWindow;
    dbgItens.HeaderColor := CorHeaders;
    dbgItens.HighLightColor := CorEditores;
    dbgItens.TS_AnotherColor := dbgItens.Color;

    dbgMensagens.HighLightColor := CorEditores;
    dbgMensagens.Color := CorHeaders;
    dbgMensagens.TS_AnotherColor := CorHeaders;

    dbgPlanos.Color := clWindow;
    dbgPlanos.HighLightColor := CorEditores;
    dbgPlanos.HeaderColor := CorHeaders;
    dbgPlanos.TS_AnotherColor := dbgPlanos.Color;

    dbgParcelas.HeaderColor := CorHeaders;
    dbgParcelas.HighLightColor := CorEditores;
    dbgParcelas.BandColor := CorHeaders;

    pnProdutoEscolhido.Color := CorEditores;

    dfItem.Color := CorEditores;
    dfQuantidade.Color := CorEditores;
    dfPreco.Color := CorEditores;
    dfDescontoPe.Color := CorEditores;

    for i := 0 to ComponentCount - 1 do
    begin
        if (Components[i] is TTS_Shape) and ((Components[i] as TTS_Shape).TagStr = 'CV') then
            (Components[i] as TTS_Shape).Pen.Color := CorLinhas;
        if (Components[i] is TTS_Label) and ((Components[i] as TTS_Label).TagStr = 'CV') then
            (Components[i] as TTS_Label).Color := CorHeaders;
    end;

    {}

end;

procedure TFrmPedidoRapido.dbgItensTS_BeforeDeleteAll(Sender: TObject;
    var CanDelete: Boolean);
begin
    inherited;
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX('FrmSaidas', 'CanItemVR', '', False, 'Item:' + DMSaida.C_ItensDescricao.AsString + #13#10 + 'Preço:' + DMSaida.C_ItensPreco.AsString );
end;

procedure TFrmPedidoRapido.pmPercorrerItensClick(Sender: TObject);
begin
    inherited;

    if pgOperacao.ActivePage = tsItens then
    begin

        pmPercorrerItens.Checked := not pmPercorrerItens.Checked;

        if pmPercorrerItens.Checked then
        begin
            if dbgItens.CanFocus then
                dbgItens.SetFocus;
        end
        else
        begin
            if dfItem.CanFocus then
                dfItem.SetFocus;
        end;

    end;

end;

procedure TFrmPedidoRapido.pmComprarItemdaConsultaClick(Sender: TObject);
begin
    inherited;
    {Desabilitando Modo Consulta}
    pmConsultadePrecos.Checked := false;
    pnConsultaPrecos.Visible := false;
    lbDescricaoConsulta.Visible := false;
    lbPrecoConsulta.Visible := false;
    spConsultaPrecos.Visible := false;
    ActiveControl := dfItem;

    AdicionarItem;

end;

procedure TFrmPedidoRapido.SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);

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

begin
    oMenu.Enabled := bEnable;

    if oMenu.Hint <> '' then
    begin
        TTS_Label(GetKeyLabel(TTS_Panel(FindComponent(oMenu.Hint)))).Enabled := bEnable;
        TTS_Label(GetTitLabel(TTS_Panel(FindComponent(oMenu.Hint)))).Enabled := bEnable;
    end;

end;

procedure TFrmPedidoRapido.DBEdit3Change(Sender: TObject);
begin
    inherited;
    dbtNomeCliente.Visible := DMSaida.C_TabelaFavorecido.Value <> 1;
end;

procedure TFrmPedidoRapido.NomostrarAtalhos1Click(Sender: TObject);
begin
    inherited;
    NomostrarAtalhos1.Checked := not NomostrarAtalhos1.Checked;
    if NomostrarAtalhos1.Checked then
        pnStatus.Visible := false;
end;

procedure TFrmPedidoRapido.dbgPlanosTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
begin
    inherited;
    {Se mais de um plano de pagamento é selecionado, o grid de parcelas desaparece dando lugar ao memo
     que irá mostrar os vários resumos para os planos escolhidos - ao teclar enter apenas o plano corrente
     ficará selecionado}

    with DMSaida do
    begin
        C_Tabela.Edit;
        C_TabelaCondicoesPagto.Value := replace(replace(dbgPlanos.Distinct('icResumo', true, ''), '","', #13), '"', '');
    end; 

end;

procedure TFrmPedidoRapido.dbgItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var
    sDescOriginal: string;
    sDescItem: string;
begin
    inherited;
    {Destacando a promoção}
    if (dbgItens.GetFieldValue(ANode, 'Promocao', 'N') = 'S') then
    begin
        AFont.Color := clBlue;
        if UpperCase(TdxDBGridColumn(aColumn).FieldName) = 'PRECO' then
            AFont.Style := [fsBold];
    end;

    {Identificando Item Mesclado}
    if (dbgItens.GetFieldValue(ANode, 'Mesclado', 'N') = 'S') then
        AColor := $00FBE7E6;

    if UpperCase(TdxDBGridColumn(aColumn).FieldName) = 'QUANTIDADE' then
    begin
        {Se ultrapassou qtd máxima mesclada}
        if (dbgItens.GetFieldValue(ANode, 'UltrapassouMesclagem', False) = true) then
            AFont.Style := [fsBold];

        {Identificando estoque insuficiente}
        if (dbgItens.GetFieldValue(ANode, 'cfBaixoEstoque', 0) < 0) then
            AColor := $00D5DBF7;

        if (IndiceString(DMSaida.sItensSemEstoque, ',', dbgItens.GetFieldValue(ANode, 'ITEM', 0, true)) > 0) then
            AColor := $00D5DBF7;

    end;

    {Verificando se o Preço é um Percentual para mostrar o Simbolo %}
    if UpperCase(TdxDBGridColumn(AColumn).FieldName) = 'PRECO' then
    begin
        if dbgItens.GetFieldValue(ANode, 'I_Percentual', 0) > 0 then
            AText := AText + ' %';

        if dbgItens.GetFieldValue(ANode, 'Preco', 0) = 0 then
            AFont.Color := clRed;
    end;

    if UpperCase(TdxDBGridColumn(AColumn).FieldName) = 'DESCRICAO' then
    begin
        sDescOriginal := dbgItens.GetFieldValue(ANode, 'I_DESCRICAO', '');
        sDescItem := dbgItens.GetFieldValue(ANode, 'DESCRICAO', '');
        if (sDescOriginal <> sDescItem) and (sDescOriginal <> '') then
            AFont.Color := clPurple;
    end;

    if (dbgItens.GetFieldValue(ANode, 'BaixaEstoque', 'N') = 'N') and (DMSaida.C_TabelaBaixaEstoque.Value = 'S') then
        AFont.Style := AFont.Style + [fsItalic];

    if DMSaida.C_Itens.State in [dsInsert, dsEdit] then
    begin
        if dbgItens.GetFieldValue(ANode, 'IDItem', 0) = DMSaida.C_ItensIDItem.Value then
            AColor := CorEditores;
    end;

end;

procedure TFrmPedidoRapido.dfFavorecidoSelecionou(Sender: TObject);
var
    N, D: Currency;
    sMsg: string;
    NF, DF, nSaida: Integer;
begin
    dbtNomeCliente.Hint := '';
    dbtNomeCliente.Font.Color := clBlack;

    btLembrete.Enabled := false;

    if DMSaida.C_TabelaFavorecido.Value <> 1 then
    begin
        if dfFavorecido.ID > 0 then
            btLembrete.Enabled := DMProjeto.ChecaLembretes(dfFavorecido.ID);

        if not DMSaida.bAlteracao then
        begin
            if (DMSaida.C_TabelaTipoPadrao.Value = 3) and (DMSaida.GetEstimates(DMSaida.nTipoMovimentoPadrao) > 0) and
                (DlgMsg.ShowMsg(2757, [DMSaida.TipoMovimento('DescTipoPadrao')]) = 100) then
            begin //Orcamentos existentes

                DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao, 'para Alterar']);
                nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

                if nSaida > 0 then
                    DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nSaida));

            end
            else if (DMSaida.C_TabelaTipoPadrao.Value = 2) and (DMSaida.GetSalesOrders(DMSaida.nTipoMovimentoPadrao) > 0) and
                (DlgMsg.ShowMsg(2757, [DMSaida.TipoMovimento('DescTipoPadrao')]) = 100) then
            begin //Pedidos existentes

                DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao, 'para Alterar']);
                nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

                if nSaida > 0 then
                    DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nSaida));

            end;
        end;

        if DMSaida.C_TabelaF_CREDITO.Value > 0 then
        begin
            dbtNomeCliente.Hint := 'Crédito: ' + FormatCurr('##,##0.00', DMSaida.C_TabelaF_CREDITO.Value) + #13;
        end
        else
        begin
            dbtNomeCliente.Hint := '';
        end;

        N := DMSaida.GetAtrasados;
        if N > 0 then
        begin
            dbtNomeCliente.Hint := dbtNomeCliente.Hint + 'Cliente com Parcelas atrasadas no valor de ' + FormatCurr('##,##0.00', N) + #13;
            dbtNomeCliente.Font.Color := clRed;
        end;

        D := DMSaida.GetDevolvidos;
        if D > 0 then
        begin
            dbtNomeCliente.Hint := dbtNomeCliente.Hint + 'Cliente com Cheques Devolvidos no valor de ' + FormatCurr('##,##0.00', D);
            dbtNomeCliente.Font.Color := clRed;
        end;
        {
          if DMSaida.GetReembolsos > 0 then
            btComando1.Font.Color := clRed
          else
            btComando1.Font.Color := clBlack;

          pnFotoCliente.Visible := (DMSaida.C_TabelaF_Logotipo.Value <> '');
        }
        if not DMSaida.bAlteracao and (DMSaida.C_TabelaF_Situacao.Value = 'B') then
            DlgMsg.ShowMsg(2152, [DMSaida.C_TabelaF_OBS.Value]);

        if pnLocalEntrega.Visible then
            with DMSaida do
            begin
                {Locais de Entrega}
                C_LocaisEntrega.Close;
                C_LocaisEntrega.Open;
            end;

        if DMProjeto.Parametro('AlertasVenda') = 'S' then
        begin
            sMsg := '';
            N := DMSaida.GetAtrasados;
            if N > 0 then
            begin
                sMsg := '-> Cliente possui Parcelas atrasadas totalizando o valor de ' + FormatCurr('##,##0.00', N) + #13;
            end;

            D := DMSaida.GetDevolvidos;
            if D > 0 then
            begin
                sMsg := sMsg + '-> Cliente possui Cheques Devolvidos totalizando o valor de ' + FormatCurr('##,##0.00', D);
            end;

            if sMsg <> '' then
                if DlgMsg.ShowMsg(2756, [sMsg]) = 200 then
                begin
                    if N > 0 then
                    begin
                        DMProjeto.SetParametrosForm([null, null, dfFavorecido.ID]);
                        DMProjeto.CriarForm('RptInvoicesEmAtraso', self, true);
                        NF := DMProjeto.FormExiste('RptInvoicesEmAtraso');
                    end;

                    if D > 0 then
                    begin
                        DMProjeto.SetParametrosForm([dfFavorecido.ID]);
                        DMProjeto.CriarForm('RptChequesDevolvidos', self, true);
                        DF := DMProjeto.FormExiste('RptChequesDevolvidos');
                    end;
                end;
        end;

        {Verificando se o cliente possui Estimates em aberto para aproveitamente}
        {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
         já deve indicar se existem ou não - dispensando uma nova consulta}
        if not DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value = 2) and (DMSaida.GetEstimates > 0) then
        begin
            if DlgMsg.ShowMsg(2185) = 100 then
            begin
                SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);
                pmAproveitarOperacoesClick(self);
            end;
        end;

        {Verificando se o cliente possui Estimates em aberto para aproveitamente}
        {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
         já deve indicar se existem ou não - dispensando uma nova consulta}
        if not DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value = 1) and (DMSaida.GetSalesOrders > 0) then
        begin
            if DlgMsg.ShowMsg(2186) = 100 then
            begin
                SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);
                pmAproveitarOperacoesClick(self);
            end;
        end;

        if dfPedidoCliente.Visible and dfPedidoCliente.CanFocus then
            dfPedidoCliente.SetFocus;


    end;
    DMSaida.C_TabelaFAVORECIDOChange(DMSaida.C_TabelaTabelaPadrao);    
end;

procedure TFrmPedidoRapido.pnClienteExit(Sender: TObject);
begin
    inherited;
    if pmInformarNomedoCliente.Checked then
        pmInformarNomedoClienteClick(self);
end;

procedure TFrmPedidoRapido.dfPedidoClienteKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if (Key = #13) and pmInformarNomedoCliente.Checked then
        pmInformarNomedoClienteClick(self);
end;

procedure TFrmPedidoRapido.dfAdd1KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = #13 then
    begin
        if dfAdd2.CanFocus then
            dfAdd2.SetFocus
        else if dfItem.CanFocus then
            dfItem.SetFocus
        else if dbgPlanos.CanFocus then
            dbgPlanos.SetFocus;
    end;
end;

procedure TFrmPedidoRapido.dfAdd2KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = #13 then
    begin
        if dfAdd3.CanFocus then
            dfAdd3.SetFocus
        else if dfItem.CanFocus then
            dfItem.SetFocus
        else if dbgPlanos.CanFocus then
            dbgPlanos.SetFocus;
    end;
end;

procedure TFrmPedidoRapido.dfAdd3KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = #13 then
    begin
        if dfAdd4.CanFocus then
            dfAdd4.SetFocus
        else if dfItem.CanFocus then
            dfItem.SetFocus
        else if dbgPlanos.CanFocus then
            dbgPlanos.SetFocus;
    end;
end;

procedure TFrmPedidoRapido.dfAdd4KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = #13 then
    begin
        if dfItem.CanFocus then
            dfItem.SetFocus
        else if dbgPlanos.CanFocus then
            dbgPlanos.SetFocus;
    end;
end;

procedure TFrmPedidoRapido.pnQuantidadeExit(Sender: TObject);
begin
    inherited;
    if dfQuantidade.Value > 0 then
    begin
        DMSaida.C_Itens.Edit;
        DMSaida.C_ItensQuantidade.Value := dfQuantidade.Value;
    end;
end;

procedure TFrmPedidoRapido.pnPrecoExit(Sender: TObject);
begin
    inherited;
    if StrToFloatDef(dfPreco.Text,0) > 0 then
    begin
        DMSaida.C_Itens.Edit;
        DMSaida.C_ItensTabelaPreco.Value := nTabelaPreco;
        DMSaida.C_ItensPrecoTabela.Value := nPrecoTabela;
        DMSaida.C_ItensPreco.Value := StrToFloatDef(dfPreco.Text,0);
    end;
end;

function TFrmPedidoRapido.EscolherTipoMovimento;
begin
    if not bIniciando and not pmTipoMov.Enabled then
        exit;

    if not DMSaida.bAlteracao then
    begin

        if DMProjeto.nTipoMovPRFunc > 0 then
            DMSaida.C_TiposMovimento.locate('TipoMovimento', DMProjeto.nTipoMovPRFunc, []);

        DlgTipoMovimentoPR := TDlgTipoMovimentoPR.Create(self);

        result := (DlgTipoMovimentoPR.ShowModal > 0);

        DlgTipoMovimentoPR.Release;
        DlgTipoMovimentoPR := nil;

        if Result then
        begin
            DMSaida.C_Tabela.Edit;
            DMSaida.C_TabelaTipoMovimento.Value := DMSaida.C_TiposMovimentoTipoMovimento.Value;
            if DMSaida.C_TabelaTipoPadrao.value = 1 then
                DMSaida.sForm := 'FrmInvoices'
            else if DMSaida.C_TabelaTipoPadrao.value = 2 then
                DMSaida.sForm := 'FrmSalesOrder';
        end;
    end;
end;

procedure TFrmPedidoRapido.TS_DBTextEffect9Click(Sender: TObject);
begin
    inherited;
    EscolherTipoMovimento;
end;

procedure TFrmPedidoRapido.dbtTabelaPadraoClick(Sender: TObject);
begin
    inherited;
    pmAlterarTabelaClick(self);
end;

procedure TFrmPedidoRapido.dfItemIniciarLocalizar(Sender: TObject;
    var Value: string; var bSkip: Boolean);
begin
    inherited;
    dfItem.TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value;
    DMSaida.sPerformance := '';
end;

procedure TFrmPedidoRapido.dbgItensEnter(Sender: TObject);
begin
    inherited;
    if dbgItens.HeaderPanelRowCount = 3 then
        dbgItens.TS_SelectedColumn := 'COLUNA1';
end;

procedure TFrmPedidoRapido.cb1Click(Sender: TObject);
var
    i: Integer;
begin
    inherited;

    for i := 0 to ComponentCount - 1 do
    begin
        if (components[i] is TTS_Label) and (TTS_Label(Components[i]).TagStr = TdxfCheckBox(Sender).Name) then
            TTS_Label(Components[i]).Visible := TdxfCheckBox(Sender).Checked;

        if (components[i] is TTS_CalcEdit) and (TTS_CalcEdit(Components[i]).TagStr = TdxfCheckBox(Sender).Name) then
            TTS_CalcEdit(Components[i]).Visible := TdxfCheckBox(Sender).Checked;
    end;

end;

procedure TFrmPedidoRapido.ppmTipoCobrancaClick(Sender: TObject);
begin
    inherited;
    with DMSaida.C_Parcelas do
    begin
        First;
        while not EOF do
        begin
            Edit;
            FieldByName('TipoCobranca').asInteger := TMenuItem(Sender).Tag;
            Next;
        end;
        First;
    end;
end;

procedure TFrmPedidoRapido.df4KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if Key = #13 then
        dfVezes.SetFocus;
end;

procedure TFrmPedidoRapido.cmbTipoCobrancaChange(Sender: TObject);
begin
    inherited;

    lbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);
    cmbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);

    if (ActiveControl = cmbTipoCobranca) then
        with DMSaida.C_Parcelas do
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

procedure TFrmPedidoRapido.pmAproveitarOperacoesClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMSaida.C_TabelaTipoPadrao.Value <> 6 then
    begin
        if DMSaida.C_tabelaFavorecido.Value in [0, 1] then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

        DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
        DlgMesclarMovimentos.sTipos := IIF(DMSaida.C_TabelaTipoPadrao.Value = 2, '3', '2,3');
        DlgMesclarMovimentos.DM := DMSaida;
        DlgMesclarMovimentos.GridItens := dbgItens;
        DlgMesclarMovimentos.ShowModal;
        DlgMesclarMovimentos.Release;
        DlgMesclarMovimentos := nil;
    end
    else
    begin
        if DMSaida.C_TabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(643);
            exit;
        end;

        DlgMesclarEntradas := TDlgMesclarEntradas.Create(self);
        DlgMesclarEntradas.sTipos := '101';
        DlgMesclarEntradas.DM := DMSaida;
        DlgMesclarEntradas.GridItens := dbgItens;
        DlgMesclarEntradas.ShowModal;
        DlgMesclarEntradas.Release;
    end;

    //Para Atualizar Ordem de digitação e sequencial;
    DMSaida.C_TabelaAfterScroll(DMSaida.C_Tabela);

end;

procedure TFrmPedidoRapido.EmAlteracao(sNum: string);
begin
    dbgItens.Color := $00DDEEFF;
    dbgItens.TS_AnotherColor := $00DDEEFF;
    dbgPlanos.Color := $00DDEEFF;
    dbgPlanos.TS_AnotherColor := $00DDEEFF;

    T_Alteracao.Prepare(pnAlteracao.Parent, pnAlteracao.BoundsRect);

    pnAlteracao.Visible := true;

    if T_Alteracao.Prepared then
    begin
        T_Alteracao.Execute;
        T_Alteracao.unPrepare;
    end;

end;

procedure TFrmPedidoRapido.pmTipoMovClick(Sender: TObject);
begin
    inherited;
    EscolherTipoMovimento;
end;

procedure TFrmPedidoRapido.pmStatusClick(Sender: TObject);
begin
    inherited;
    if not pmStatus.Enabled then
        exit;
    AlterarStatus;
end;

procedure TFrmPedidoRapido.pmDescricaoClick(Sender: TObject);
begin
    inherited;
    if not pmDescricao.Enabled then
        exit;

    DlgDescricaoComplementar := TDlgDescricaoComplementar.Create(self);
    DlgDescricaoComplementar.DM := DMSaida;
    DlgDescricaoComplementar.ShowModal;
    DlgDescricaoComplementar.Release;
    DlgDescricaoComplementar := nil;
end;

procedure TFrmPedidoRapido.pmComposicaoClick(Sender: TObject);
var nop: integer;
    nPrecoAnterior, nPrecoAtual: currency;
begin
    inherited;
    if not pmComposicao.Enabled or (DMSaida.C_ItensHasChildren.Value <> 'S') then
        exit;

    try
        if DMSaida.C_Itens.State <> dsbrowse then
            DMSaida.C_Itens.Post;
    except
    end;

    nPrecoAnterior := 0;

    with DMSaida do
    begin
        C_SaidasItensFilhos.first;
        while not C_SaidasItensFilhos.eof do
        begin
            nPrecoAnterior := nPrecoAnterior + (C_SaidasItensFilhosQuantidade.value * C_SaidasItensFilhosPreco.value);
            C_SaidasItensFilhos.next;
        end;
    end;

    FrmSaidasItensFilhos := TFrmSaidasItensFilhos.Create(self);
    FrmSaidasItensFilhos.DM := DMSaida;
    nop := FrmSaidasItensFilhos.ShowModal;
    FrmSaidasItensFilhos.Release;
    FrmSaidasItensFilhos := nil;

    nPrecoAtual := 0;

    with DMSaida do
    begin
        C_SaidasItensFilhos.first;
        while not C_SaidasItensFilhos.eof do
        begin
            nPrecoAtual := nPrecoAtual + (C_SaidasItensFilhosQuantidade.value * C_SaidasItensFilhosPreco.value);
            C_SaidasItensFilhos.next;
        end;
    end;

    if (nop = 1) and (DMSaida.C_ItensI_TipoItem.value = 1) then
    begin
        if DMSaida.C_SaidasItensFilhos.ChangeCount > 0 then
        begin
            if (DMProjeto.Parametro('AutoRecalcPrecoSubItens') = 'S') or (DlgMsg.ShowMsg(3108) = 100) then
                DMSaida.RecalculaPreco(nPrecoAtual - nPrecoAnterior);

            if (DMSaida.C_ItensOrdemMontagem.value <> 'S') then
            begin
                if (DMProjeto.Parametro('AutoOrdemProducao') = 'S') or (
                    (DMProjeto.Parametro('AutoOrdemProducao') = 'N') and (DlgMsg.ShowMsg(3109) = 100)) then
                begin
                    if not (DMSaida.C_Itens.state in [dsEdit, dsInsert]) then
                        DMSaida.C_Itens.edit;
                    DMSaida.C_ItensOrdemMontagem.value := 'S';
                end;
            end;
        end;
    end;

end;

procedure TFrmPedidoRapido.pmAlterarTabelaClick(Sender: TObject);
begin
    inherited;
    if not pmAlterarTabela.Enabled then
        exit;

    if DMProjeto.DlgAutorizacao.ExecuteX('FrmSaidas', 'ALTERATAB') then
    begin
        DlgAlterarTabelaPadrao := TDlgAlterarTabelaPadrao.Create(self);
        DlgAlterarTabelaPadrao.DM := DMSaida;
        DlgAlterarTabelaPadrao.ShowModal;
        DlgAlterarTabelaPadrao.Release;
        DlgAlterarTabelaPadrao := nil;
    end;
end;

procedure TFrmPedidoRapido.AlterarStatus;
begin
    if not pmStatus.Enabled then
        exit;

    DlgAlterarStatus := TDlgAlterarStatus.Create(self);
    DlgAlterarStatus.DM := DMSaida;
    DlgAlterarStatus.ShowModal;
    DlgAlterarStatus.Release;
    DlgAlterarStatus := nil;

end;

procedure TFrmPedidoRapido.AlterarTabeladoItem1Click(Sender: TObject);
begin
    inherited;
    if not pmAlterarTabela.Enabled then
        exit;

    if DMProjeto.DlgAutorizacao.ExecuteX('FrmSaidas', 'ALTERATAB') then
    begin
        DlgAlterarTabelaPadrao := TDlgAlterarTabelaPadrao.Create(self);
        DlgAlterarTabelaPadrao.DM := DMSaida;
        DlgAlterarTabelaPadrao.rbItemCorrente.Checked := true;
        DlgAlterarTabelaPadrao.ShowModal;
        DlgAlterarTabelaPadrao.Release;
        DlgAlterarTabelaPadrao := nil;
    end;
end;

procedure TFrmPedidoRapido.dbgItensTS_BeforeLocalizar(Sender: TObject;
    var Campo, Conteudo: string);
begin
    inherited;
    dbgItens.TS_TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value
end;

procedure TFrmPedidoRapido.ppmClientePopup(Sender: TObject);
var
    nBalance: Currency;
begin
    inherited;
    {Saldos e Limites}
    Limite.Caption := SeparaStrings(Limite.Caption, ':', 1) + ':  ' +
        DMSaida.C_TabelaF_LIMITECREDITO.DisplayText;

    with DMPedidoRapido.Q_SQLi do
    begin
        Close;
        SQL.Text := 'Select (Select Sum(FaltaReceber) ' +
            '        From TitulosAReceber t where t.Cliente = f.Favorecido ' +
            '        and  t.Status > 0 and t.Status < 50) as PAReceber, ' +
            '       (Select Sum(Valor) from DepositosDoc dd, Depositos d, FormasPagamento Fp ' +
            '        Where dd.Deposito = d.Deposito and dd.FormaPagamento = Fp.FormaPagamento ' +
            '        and   d.Favorecido = f.Favorecido and dd.Status < 50 and Fp.Especie = 1 ' +
            '        and   dd.Vencimento > ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)) + ') ' +
            '        as ChqPre ' +
            'From Favorecidos f Where Favorecido = ' + DMSaida.C_TabelaFavorecido.asString;
        Open;
        nBalance := FieldByNAme('PAReceber').asCurrency +
            FieldByName('ChqPre').asCurrency;
        Close;

        EmAberto.Caption := SeparaStrings(EmAberto.Caption, ':', 1) + ':  ' +
            FormatCurr('##,##0.00', nBalance);
    end;

    SaldoCompra.Caption := SeparaStrings(SaldoCompra.Caption, ':', 1) + ':  ' +
        FormatCurr('##,##0.00', DMSaida.C_TabelaF_LIMITECREDITO.asCurrency - nBalance);

end;

procedure TFrmPedidoRapido.dbtStatusClick(Sender: TObject);
begin
    inherited;
    AlterarStatus;
end;

procedure TFrmPedidoRapido.CancelarOperaes1Click(Sender: TObject);
var
    nSaida: Integer;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX('FrmSaidas', 'CanOpGrav') then
        exit;

    DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao, 'para Cancelar']);
    nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

    if nSaida > 0 then
    begin
        DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nSaida));
        DMSaida.Excluir;
    end;

end;

procedure TFrmPedidoRapido.pmAlterarOperacaoClick(Sender: TObject);
var
    nSaida: Integer;
begin
    inherited;
    DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao, 'para Alterar']);
    nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

    if nSaida > 0 then
    begin
        DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nSaida));
        AlterarVenda;
    end;
end;

procedure TFrmPedidoRapido.IniciarVenda;
var
    xCliente, xMedico: Integer;
    aMenu: TMenuItem;
begin
    try
        Screen.Cursor := crHourGlass;

        imgFoto.Picture := nil;

        DMSaida.Modo_Inclusao;
        dbgPlanos.LimparSelecionados;

        if not bMenuTipoCobranca then
        begin
            bMenuTipoCobranca := true;

            with DMSaida.C_TiposCobranca do
            begin
                if not Active then
                    Open;

                aMenu := TMenuItem.Create(ppmParcelas);
                aMenu.Caption := '-';
                ppmParcelas.Items.Add(aMenu);

                First;
                while not EOF do
                begin
                    aMenu := TMenuItem.Create(ppmParcelas);
                    aMenu.Caption := FieldByName('Descricao').asString;
                    aMenu.Tag := FieldByName('TipoCobranca').asInteger;
                    aMenu.OnClick := ppmTipoCobrancaClick;
                    ppmParcelas.Items.Add(aMenu);

                    Next;
                end;

            end;
        end;

        if DMProjeto.Parametro('SolicitarTipoMovPR') = 'S' then
        begin
            Screen.Cursor := crDefault;

            if not EscolherTipoMovimento(true) then
                exit;

        end;

        if DMProjeto.Parametro('SolicitarClienteVR') = 'S' then
        begin
            Screen.Cursor := crDefault;
            DlgClienteVR := TDlgClienteVR.Create(self);

            if DlgClienteVR.ShowModal <> -999 then
                dfFavorecido.ID := DlgClienteVR.Cliente;
            DlgClienteVR := nil;
//            DlgClienteVR.Release;

        end;

        xMedico := 0;
        if (DMProjeto.Parametro('SolicitarMedicoVR') = 'S') and (xCliente <> -1) then
        begin
            Screen.Cursor := crDefault;
            DlgMedicoVR := TDlgMedicoVR.Create(self);
            if DlgMedicoVR.ShowModal = -1 then
            begin
                DlgMedicoVR.Release;
                exit;
            end;
            xMedico := DlgMedicoVR.Medico;
            DlgMedicoVR.Release;
        end;

        if (DMSaida.C_TabelaVendedor.Value = 0) and
            (DMProjeto.Parametro('SolicitarVendedorPR') = 'S') then
        begin
            Screen.Cursor := crDefault;
            DlgVendedorVR := TDlgVendedorVR.Create(self);
            DlgVendedorVR.DM := DMSaida;

            if DlgVendedorVR.ShowModal = -1 then
            begin
                DlgVendedorVR.Release;
                exit;
            end;

            DlgVendedorVR.Release;
            DlgVendedorVR := nil;

            if (DMProjeto.Parametro('MetasFaturamento') = 'S') and (DMProjeto.Parametro('MetasTela') = 'S') then
            begin
                Screen.Cursor := crDefault;
                DlgMetaVR := TDlgMetaVR.Create(Self);
                DlgMetaVR.DM := DMSaida;
                if DlgMetaVR.ShowModal = -1 then
                begin
                    DlgMetaVR.Release;
                    Exit;
                end;
                DlgMetaVR.Release;
                DlgMetaVR := nil;
            end;
        end;

        {Definindo Operacao Padrão da tela, o Cliente Padrao e a Mensagem Padrao}
        with DMSaida do
        begin
            if DMProjeto.Parametro('SolicitarTipoMovPR') <> 'S' then
            begin
                C_TiposMovimento.Locate('TipoMovimento', DMSaida.nTipoMovimentoPadrao, []);
                C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;
            end;

            {Cliente - Padrao}
            if DMProjeto.Parametro('SolicitarClienteVR') <> 'S' then
            begin
                if C_TiposMovimentoFavorecidoPadrao.Value <> 0 then Begin
                   dfFavorecido.ID := C_TiposMovimentoFavorecidoPadrao.Value;
                   dfFavorecido.writeID(C_TiposMovimentoFavorecidoPadrao.Value);
                   DMSaida.C_TabelaTABELAPADRAO.Value := DMProjeto.C_LocalizarFavTABELAPRECO.Value;
                End;
            end;

            if xMedico > 0 then
                C_TabelaMEDICO.value := xMedico;

            {Mensagem - Padrao}
            if C_TiposMovimentoMensagemPadrao.Value > 0 then
            begin
                C_MensagensOperacoes.Locate('MensagemOperacao', C_TiposMovimentoMensagemPadrao.Value, []);
                C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
            end;

        end;

        Screen.Cursor := crHourGlass;

        pgPrincipal.SetPage(tsOperacao); //Operacao

        EstadoItens;

        if dfFavorecido.ID = 0 then
            pmInformarNomedoClienteClick(self);

        DMProjeto.AtualizaParametros;

        DMSaida.C_TabelaFAVORECIDOChange(DMSaida.C_TabelaTabelaPadrao);
    finally
        Screen.Cursor := crDefault;
    end;
end;

procedure TFrmPedidoRapido.AlterarVenda;
var
    i, nQtd: integer;
    sForma, sFPg: string;
    nVlr: Currency;
    aMenu: TMenuItem;
    aKey: Word;
begin
    try
        Screen.Cursor := crHourGlass;

        imgFoto.Picture := nil;

        //dbgPlanos.LimparSelecionados;

        if not bMenuTipoCobranca then
        begin
            bMenuTipoCobranca := true;

            with DMSaida.C_TiposCobranca do
            begin
                if not Active then
                    Open;

                aMenu := TMenuItem.Create(ppmParcelas);
                aMenu.Caption := '-';
                ppmParcelas.Items.Add(aMenu);

                First;
                while not EOF do
                begin
                    aMenu := TMenuItem.Create(ppmParcelas);
                    aMenu.Caption := FieldByName('Descricao').asString;
                    aMenu.Tag := FieldByName('TipoCobranca').asInteger;
                    aMenu.OnClick := ppmTipoCobrancaClick;
                    ppmParcelas.Items.Add(aMenu);

                    Next;
                end;

            end;
        end;

        Screen.Cursor := crHourGlass;

        pgPrincipal.SetPage(tsOperacao); //Operacao

        EstadoItens;

        if pnRecebimento.Visible and (DMSaida.C_TabelaCondicoesPgto.Value <> '') then
            with DMSaida do
            begin
                for i := 1 to ContaStrings(C_TabelaCondicoesPgto.Value, '|') do
                begin
                    sForma := SeparaStrings(C_TabelaCondicoesPgto.Value, '|', i);
                    sFPg := SeparaStrings(sForma, ';', 1);
                    nQtd := StrToIntDef(SeparaStrings(sForma, ';', 2), 1);
                    nVlr := StrToFloatDef(SeparaStrings(sForma, ';', 3), 0);

                    try

                        aKey := ord(sFPg[1]);
                        FormKeyDown(Self, aKey, [ssCtrl]);

                        if (nVlr > 0) and (FindComponent('df' + sFPg) <> nil) then
                            TTS_CalcEdit(FindComponent('df' + sFPg)).Value := nVlr;

                        if (nQtd > 1) then
                            dfVezes.Value := nQtd;

                    except
                    end;

                end;
            end;
    finally
        Screen.Cursor := crDefault;
    end;
end;

procedure TFrmPedidoRapido.dfMensagemCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Accept := true;

    with DMSaida do
    begin
        C_Tabela.Edit;
        C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
    end;
end;

procedure TFrmPedidoRapido.dfDescontoPeKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if (Key = #13) then
    begin
        if dfFrete.Visible and dfFrete.CanFocus then
            dfFrete.SetFocus
        else if dbgPlanos.CanFocus then
            dbgPlanos.SetFocus;
    end;
end;

procedure TFrmPedidoRapido.dfFreteKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if (key = #13) and dbgPlanos.CanFocus then
        dbgPlanos.SetFocus;
end;

procedure TFrmPedidoRapido.dfCFOPNotaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmPedidoRapido.dfCFOPNotaKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    inherited;
    if Key in [VK_Down, VK_Up] then
        dfCFOPNota.DroppedDown := true;

end;

procedure TFrmPedidoRapido.AbrirCadastro1Click(Sender: TObject);
begin
    inherited;
    if DMSaida.C_TabelaFavorecido.Value <> 0 then
        DMProjeto.SetParametrosForm([DMSaida.C_TabelaFavorecido.Value]);

    DMProjeto.C_TipoFav.Locate('TipoFavorecido', cmbTipoFav.LookupKeyValue, []);

    DMProjeto.CriarForm(DMProjeto.C_TipoFavFORM.Value, Self, true);
end;

procedure TFrmPedidoRapido.TS_DBEdit5DblClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_TabelaF_Email.Value <> '' then
        SendMail('', '', '', '', '', DMSaida.C_TabelaF_Nome.Value, DMSaida.C_TabelaF_Email.Value);
end;

procedure TFrmPedidoRapido.QuadroGeral1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaFAVORECIDO.Value, cmbTipoFav.LookupKeyValue]);
    DMProjeto.CriarForm('DlgSitCliente', Self, True);
end;

procedure TFrmPedidoRapido.ExtratodeParcelas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTO', DMSaida.C_TabelaFAVORECIDO.Value);
end;

procedure TFrmPedidoRapido.ltimasVendas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaFAVORECIDO.Value, DMSaida.C_TabelaF_NOME.AsString, cmbTipoFav.LookupKeyValue {TipoFav}]);
    DMProjeto.CriarForm('DlgUltimasVendas', Self, True);
end;

procedure TFrmPedidoRapido.pmCopiarItensClick(Sender: TObject);
var
    nOp: Integer;
    Q_Filhos: TIBQuery;
begin
    inherited;
    {Escolhendo a operação}

    DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao, 'para Copiar Itens']);
    nOP := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

    if nOP > 0 then
        with Q_SQLt do
        begin
            Close;
            SQL.Text := 'Select * from SaidasItens where Saida = :s ';
            Params[0].asInteger := nOp;
            Open;

            if RecordCount > 0 then
            begin
                {***Itens da Operação***}
                try
                    DMSaida.bMesclando := true;

                    DMSaida.C_Itens.DisableControls;

                    dbgItens.DataSource := nil;

                    while not EOF do
                    begin
                        //DMSaida.C_Itens.Append;
                        dfItem.ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item.

                        DMSaida.C_ItensTabelaPreco.Value := Q_SQLt.FieldByName('TabelaPreco').AsInteger;
                        DMSaida.C_ItensPrecoTabela.Value := Q_SQLt.FieldByName('PrecoTabela').asCurrency;

                        DMSaida.C_ItensCustoContabil.Value := Q_SQLt.FieldByName('CustoContabil').asCurrency;
                        DMSaida.C_ItensCustoMedio.Value := Q_SQLt.FieldByName('CustoMedio').asCurrency;

                        DMSaida.C_ItensPreco.asFloat := Q_SQLt.FieldByName('Preco').asFloat;

                        DMSaida.C_ItensQuantidade.Value := Q_SQLt.FieldByName('Quantidade').asFloat;

                        DMSaida.C_ItensDESCRICAO.Value := Q_SQLt.FieldByName('DESCRICAO').asString;
                        DMSaida.C_ItensUSOTIPOITEM.asVariant := Q_SQLt.FieldByName('USOTIPOITEM').Value;
                        DMSaida.C_ItensProducao.asVariant := Q_SQLt.FieldByName('Producao').Value;
                        DMSaida.C_ItensDespesa.asVariant := Q_SQLt.FieldByName('Despesa').Value;
                        DMSaida.C_ItensEntradaItem.asVariant := Q_SQLt.FieldByName('EntradaItem').Value;

                        DMSaida.C_ItensCOLUNA1.asVariant := Q_SQLt.FieldByName('COLUNA1').Value;
                        DMSaida.C_ItensCOLUNA2.asVariant := Q_SQLt.FieldByName('COLUNA2').Value;
                        DMSaida.C_ItensCOLUNA3.asVariant := Q_SQLt.FieldByName('COLUNA3').Value;
                        DMSaida.C_ItensCOLUNA4.asVariant := Q_SQLt.FieldByName('COLUNA4').Value;

                        DMSaida.C_ItensFUNCPRODUCAO.asVariant := Q_SQLt.FieldByName('FUNCPRODUCAO').Value;
                        DMSaida.C_ItensHASCHILDREN.Value := Q_SQLt.FieldByName('HASCHILDREN').asString;
                        DMSaida.C_ItensCONTAVENDA.Value := Q_SQLt.FieldByName('CONTAVENDA').asInteger;

                        {Copiando os Filhos}
                        if (DMSaida.C_ItensHASCHILDREN.VAlue = 'S') then
                        begin
                            if Q_Filhos = nil then
                            begin
                                Q_Filhos := TIBQuery.Create(self);
                                Q_Filhos.Database := DMProjeto.DB_Projeto;
                                Q_Filhos.Transaction := DMProjeto.IBT_Projeto;
                                Q_Filhos.SQL.Text := 'select si.*, i.codigo, i.descricao ' +
                                    'from saidasitensfilhos si, itens i ' +
                                    'where si.item = i.item and si.saidaitem = :IDITEM ';
                            end;
                            Q_Filhos.Close;
                            Q_Filhos.Params[0].asInteger := Q_SQLt.FieldByName('SAIDAITEM').asInteger;
                            Q_Filhos.Open;

                            Q_Filhos.First;
                            DMSaida.bPopulando := true; // para não ocorrer o change.
                            while not Q_Filhos.EOF do
                            begin
                                DMSaida.C_SaidasItensFilhos.Append;
                                DMSaida.C_SaidasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
                                DMSaida.C_SaidasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
                                DMSaida.C_SaidasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
                                DMSaida.C_SaidasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
                                DMSaida.C_SaidasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;
                                DMSaida.C_SaidasItensFilhosUNIDADE.Value := Q_Filhos.FieldByName('unidade').asstring;
                                DMSaida.C_SaidasItensFilhosFATOR.Value := Q_Filhos.FieldByName('Fator').asFloat;

                                DMSaida.C_SaidasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;

                                DMSaida.C_SaidasItensFilhos.Post;

                                Q_Filhos.Next;
                            end;
                            DMSaida.bPopulando := False;
                        end;

                        DMSaida.C_Itens.Post;

                        Next; //Q_SQLt

                    end;
                finally
                    DMSaida.bMesclando := false;
                    DMSaida.C_Itens.EnableControls;
                    dbgItens.DataSource := DMSaida.C_ItensDS;
                end;
            end;

            Close;

        end;

end;

procedure TFrmPedidoRapido.pmLegendaClick(Sender: TObject);
begin
    inherited;
    DlgLegendaGridVendas := TDlgLegendaGridVendas.Create(self);
    DlgLegendaGridVendas.ShowModal;
    DlgLegendaGridVendas.Release;
    DlgLegendaGridVendas := nil;
end;

procedure TFrmPedidoRapido.pmDevolucaoClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 106]);
    DMProjeto.CriarForm('FrmDevolucoesClientes', Self, true);
end;

procedure TFrmPedidoRapido.lbTermosClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaPlanoPagamento.asVariant]);
    DMProjeto.CriarForm('FrmPlanos_Pagamento', self, true);
end;

procedure TFrmPedidoRapido.dbgPlanosKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if Key = VK_F7 then
        lbTermosClick(self);

end;

procedure TFrmPedidoRapido.imgFotoDblClick(Sender: TObject);
begin
    inherited;
    DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + sFoto, DMPedidoRapido.C_ItensI_DescricaoTecnica.AsString);
    DLGVisialuzadorImagem.Free;
end;

procedure TFrmPedidoRapido.pmExibirMenorPrecoClick(Sender: TObject);
var Minimo, Custo : currency;
begin
  inherited;
  if (DMSaida.C_Itens.Active) and (DMSaida.C_Itens.RecordCount > 0) then begin
    DMProjeto.PrecoMultiUnidade( DMSaida.C_ItensITEM.Value,
                                 DMSaida.C_ItensTABELAPRECO.Value, DMSaida.C_ItensUNIDADE.Value,
                                 Minimo, Custo );
    lbMenorPreco.Caption := FormatFloat( '0.00#', Minimo );
    lbMenorPreco.Visible := pmExibirMenorPreco.Checked;
  end
  else lbMenorPreco.Visible := False;
  dbtNomeCliente.Visible := not lbMenorPreco.Visible;
end;

procedure TFrmPedidoRapido.dfPrecoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  DMSaida.C_Precos.Close;

  dbgTabelasPreco.DataSource := nil;
  lbDescItem.DataSource := nil;

  Accept := true;
end;

procedure TFrmPedidoRapido.dfPrecoInitPopup(Sender: TObject);
begin
  inherited;
  dfPreco.PopupControl := nil;

  dbgTabelasPreco.DataSource := DMSaida.C_PrecosDS;
  lbDescItem.DataSource := DMSaida.C_PrecosDS;

  if (bSelecionou) and DMProjeto.LerPermissao(Self.Name,'ALTERATAB') then begin
    DMSaida.C_Precos.Close;
    DMSaida.Q_Precos.Params[0].asInteger := nItem;
    DMSaida.Q_Precos.Params[1].asString := dfItem.sUltimaUnidade;
    DMSaida.C_Precos.Open;
    pnPreco2.Height := 278;
    pnOutros.Visible := True;
  end
  else begin
    pnOutros.Visible := false;
    pnPreco2.Height := 169;
  end;

  dfPreco.PopupControl := pnPreco2;
end;

procedure TFrmPedidoRapido.dfPrecoPopup(Sender: TObject;
  const EditText: String);
begin
  inherited;
  {Abrindo Popup do Preco}

  {Filtrando ProdutosPreco}
//  if DMSaida.C_ItensI_TIPOITEM.Value in [1, 2, 3] then
//  begin
//      DMSaida.LocalizarTabelaItem(DMSaida.C_ItensITEM.asInteger, DMSaida.C_ItensTabelaPreco.Value, DMSaida.C_ItensUnidade.Value);
//
//      DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_TabelaTabelaPadrao.Value, []);
//      lbTabelaPadrao.Caption := DMSaida.C_ProdutosPrecoDescricao.Value;
//
//      DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_ItensTabelaPreco.Value, []);
//
//  end;

  dxCalcDisplay.Text := EditText;
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  dxCalcDisplay.Text := VarToStr(dbgTabelasPreco.GetFieldValue(Node, 'Preco', '0', true));
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoClick(Sender: TObject);
begin
  inherited;
  dxCalcDisplay.Text := DMSaida.C_PrecosPreco.asString;
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
//    if (dbgTabelasPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = DMSaida.C_ItensTabelaPreco.Value) then
//        AFont.Style := [fsBold];
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoCustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
//    if (DMSaida.C_ProdutosPreco.Tag = 0) then
//        AColor := $00EBEBEB
//    else
//        AColor := $00BFFFFF;
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoDblClick(Sender: TObject);
begin
  inherited;
//  if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value)
//      and DMProjeto.PermissoesTabelasPreco(DMSaida.C_ProdutosPrecoTabelaPreco.Value, 'U', true) then
//  begin
//      DMSaida.C_Itens.Edit;
//
//      DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
//      DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
//
//      DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);
//
//      DMSaida.C_Itens.Post;
//  end;


  if (DMSaida.C_Precos.Active) and (DMSaida.C_Precos.RecordCount > 0) and
     DMProjeto.PermissoesTabelasPreco(DMSaida.C_PrecosTabelaPreco.Value, 'U', true) then begin
    nTabelaPreco := DMSaida.C_PrecosTABELAPRECO.Value;
    nPrecoTabela := DMSaida.C_PrecosPRECO.Value;
  end;

  dfPreco.Text := dxCalcDisplay.Text;

  dfPreco.SetFocus;
end;

procedure TFrmPedidoRapido.dbgTabelasPrecoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = vk_return then
        dbgTabelasPrecoDblClick(self);
end;

procedure TFrmPedidoRapido.dxCalculator1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
//      if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value) and
//          DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTERATAB') then
//      begin
//          DMSaida.C_Itens.Edit;
//
//          DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
//          DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
//
//          DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);
//
//          DMSaida.C_Itens.Post;
//      end;
//
//      dbgItensPRECO.TreeList.CloseEditor;
    if (DMSaida.C_Precos.Active) and (DMSaida.C_Precos.RecordCount > 0) and
       DMProjeto.PermissoesTabelasPreco(DMSaida.C_PrecosTabelaPreco.Value, 'U', true) then begin
      nTabelaPreco := DMSaida.C_PrecosTABELAPRECO.Value;
      nPrecoTabela := DMSaida.C_PrecosPRECO.Value;
    end;

    dfPreco.Text := dxCalcDisplay.Text;

    dfPreco.SetFocus;
  end;
end;

end.
