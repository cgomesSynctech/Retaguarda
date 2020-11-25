unit Frm_Saidas;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_ITENSMOVIMENTO, FormComponent, ImgList, TS_LastDataObject,
    DlgMsg, Menus, TS_PopupMenu, StdCtrls, Mask, DBCtrls,
    TS_DBEdit, TS_DBEditFavorecido, TS_DBLookupComboBox, TS_DBLookupTipoFav,
    TS_DBTextEffect, ExtCtrls, TS_Shape, TS_DBText,
    TS_Label, ComCtrls, Buttons, TS_BitBtn,
    TS_Bevel, TS_SpeedButton, TS_MaxPanel,
    TS_CheckBox, TS_DBCheckBox, TS_DBEditDate,
    TS_DBEditNumber, TS_DBMemo, TS_GroupBox, CheckLst, TS_CheckListBox,
    TS_Image, dxfLabel, TS_PageControl, dxExEdtr,
    dxEdLib, dxDBELib, TS_DBButtonEdit, dxCntner, dxEditor, dxDBEdtr, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
    dxfPictureButton, dxGrClEx, dxCalc, TS_ButtonEdit,
    TS_PopupEdit, DBText, tePush,
    teCtrls, TS_EffectsPanel, teFuse, teDrip, dxTLClms, Db, IBCustomDataSet,
    IBQuery, DM_Saidas, TS_DBImageEdit, TransEff, teTimed, Variants, BTOdeum,
    Placemnt, dxfProgressBar, TS_LookupComboBox, TS_DBComboBox, Qt;

const
    PM_PostItens = WM_User + 110;
    PM_Foco = WM_User + 130;

type
    TFrmSaidas = class(TFrmItensMovimento)
        btContabilidade: TTS_SpeedButton;
        pnLocalEntrega: TTS_Panel;
        lbLocalEntrega: TTS_Label;
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
        pnCliente: TTS_Panel;
        dbtCliente: TTS_DBTextEffect;
        dbtObs: TTS_DBTextEffect;
        pnHorizontal: TTS_Panel;
        pnVendedor: TTS_Panel;
        lbVendedor: TTS_Label;
        cmbVendedor: TTS_DBLookupComboBox;
        pnDataEntrega: TTS_Panel;
        lbDataEntrega: TTS_Label;
        dfDataEntrega: TTS_DBEditDate;
        pnPedido: TTS_Panel;
        lbPedido: TTS_Label;
        dfPOCliente: TTS_DBEdit;
        pnTipoEntrega: TTS_Panel;
        lbTipoEntrega: TTS_Label;
        cmbTipoEntrega: TTS_DBLookupComboBox;
        pnComissao: TTS_Panel;
        lbComissao: TTS_Label;
        dfComissao: TTS_DBEdit;
        TS_Bevel1: TTS_Bevel;
        pnTotItens: TTS_Panel;
        lbTotItens: TTS_Label;
        TS_Shape1: TTS_Shape;
        esVendas: TdxEditStyleController;
        TS_DBText1: TTS_DBText;
        DBEdit1: TDBEdit;
        dbgItensI_Percentual: TdxDBGridColumn;
        TS_Shape2: TTS_Shape;
        TS_Shape3: TTS_Shape;
        TS_Shape4: TTS_Shape;
        TS_Shape5: TTS_Shape;
        TS_Shape6: TTS_Shape;
        esEndereco: TdxEditStyleController;
        DBEdit2: TDBEdit;
        dbgTabelasPreco: TTS_QDBGrid;
        dbgTabelasPrecoITEM: TdxDBGridMaskColumn;
        dbgTabelasPrecoTABELAPRECO: TdxDBGridMaskColumn;
        dbgTabelasPrecoPRECO: TdxDBGridMaskColumn;
        dbgTabelasPrecoPRECOMANUAL: TdxDBGridMaskColumn;
        dbgTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
        dbgItensBaixoEstoque: TdxDBGridColumn;
        cbClienteTaxavel: TTS_DBCheckBox;
        TransitionSaidas: TTransitionList;
        T_Termos: TPushTransition;
        T_Itens: TPushTransition;
        DBEdit3: TDBEdit;
        T_FotoClienteOff: TPushTransition;
        T_FotoClienteOn: TPushTransition;
        pnFotoCliente: TTS_Panel;
        DBEdit4: TDBEdit;
        T_StatusInvoice: TDripTransition;
        GridNUMERO: TdxDBGridMaskColumn;
        GridDATA: TdxDBGridDateColumn;
        GridTOTAL: TdxDBGridMaskColumn;
        GridOBS: TdxDBGridMaskColumn;
        GridIMPRESSO: TdxDBGridCheckColumn;
        GridF_NOME: TdxDBGridMaskColumn;
        GridF_FONE1: TdxDBGridMaskColumn;
        GridF_FAX: TdxDBGridMaskColumn;
        GridDESCONTO: TdxDBGridMaskColumn;
        GridFRETE: TdxDBGridMaskColumn;
        GridDATAENTREGA: TdxDBGridDateColumn;
        GridPEDIDO_CLIENTE: TdxDBGridMaskColumn;
        GridOUTRASDESPESAS: TdxDBGridMaskColumn;
        GridJUROS: TdxDBGridMaskColumn;
        GridlkTipoMovimento: TdxDBGridLookupColumn;
        GridSALDOINVOICE: TdxDBGridMaskColumn;
        btOutros: TTS_SpeedButton;
        dbgItensUsoTipoItem: TdxDBGridColumn;
        tsTermos: TTS_TabSheet;
        TS_Shape12: TTS_Shape;
        pnTermos: TTS_Panel;
        lbTermos: TTS_Label;
        cmbTermos: TTS_DBLookupComboBox;
        pnMensagem: TTS_Panel;
        dfObs: TTS_DBMemo;
        dfMensagem: TTS_PopupEdit;
        pnTotalFinal: TTS_Panel;
        lbTotalFinal: TTS_Label;
        dbtTotalFinal: TTS_DBTextEffect;
        pnSomaTotal: TTS_Panel;
        pnFrete: TTS_Panel;
        TS_Shape8: TTS_Shape;
        lbFrete: TTS_Label;
        dfFrete: TTS_DBEditNumber;
        pnDescontos: TTS_Panel;
        TS_Shape9: TTS_Shape;
        lbDescontos: TTS_Label;
        dfDesconto: TTS_DBEditNumber;
        pnTotalItens: TTS_Panel;
        TS_Shape10: TTS_Shape;
        lbTotalItens: TTS_Label;
        TS_DBText5: TTS_DBText;
        pnDespesas: TTS_Panel;
        TS_Shape11: TTS_Shape;
        lbDespesas: TTS_Label;
        dfDespesas: TTS_DBEditNumber;
        pnJuros: TTS_Panel;
        TS_Shape13: TTS_Shape;
        lbJuros: TTS_Label;
        TS_DBText7: TTS_DBText;
        dbgParcelas: TTS_QDBGrid;
        dbgParcelasParcela: TdxDBGridColumn;
        dbgParcelasVencimento: TdxDBGridDateColumn;
        dbgParcelasValor: TdxDBGridCalcColumn;
        dbgParcelasSaldo: TdxDBGridColumn;
        dbgParcelasStatus: TdxDBGridColumn;
        cbReceber: TTS_CheckBox;
        ppmCliente: TTS_PopupMenu;
        ppmUltimo: TTS_PopupMenu;
        ppmOutros: TTS_PopupMenu;
        AbrirCadastro1: TMenuItem;
        N4: TMenuItem;
        QuadroGeral1: TMenuItem;
        ExtratodeParcelas1: TMenuItem;
        ltimasVendas1: TMenuItem;
        N5: TMenuItem;
        Limite: TMenuItem;
        EmAberto: TMenuItem;
        SaldoCompra: TMenuItem;
        UltimoGravado: TMenuItem;
        N6: TMenuItem;
        ltimoparaoCliente1: TMenuItem;
        ltimoparaaData1: TMenuItem;
        ltimoparaOperao1: TMenuItem;
        N7: TMenuItem;
        ltimoCancelado1: TMenuItem;
        ReceberPagamento1: TMenuItem;
        VerPagamentos1: TMenuItem;
        tmInvoice: TTimer;
        ppmGrid: TTS_PopupMenu;
        ComposiodoItem1: TMenuItem;
        AgruparporItem1: TMenuItem;
        dbgItensFuncProducao: TdxDBGridLookupColumn;
        ppmParcelas: TTS_PopupMenu;
        NovaParcela1: TMenuItem;
        N8: TMenuItem;
        ExcluirParcela1: TMenuItem;
        dbgItensColuna1: TdxDBGridColumn;
        dbgItensColuna2: TdxDBGridColumn;
        dbgItensColuna3: TdxDBGridColumn;
        dbgItensColuna4: TdxDBGridColumn;
        N9: TMenuItem;
        InvoicescomProduesExcludas1: TMenuItem;
        dbgItensColumn19: TdxDBGridColumn;
        dbgItensColumn20: TdxDBGridColumn;
        pnValidade: TTS_Panel;
        TS_Shape14: TTS_Shape;
        lbValidade: TTS_Label;
        TS_DBEditDate1: TTS_DBEditDate;
        N10: TMenuItem;
        PerformancedaGravao1: TMenuItem;
        RecebimentosdaParcela1: TMenuItem;
        N11: TMenuItem;
        Legenda1: TMenuItem;
        EstoqueItem: TMenuItem;
        cbImprimir: TTS_CheckBox;
        EstatsticadeVendas1: TMenuItem;
        dfFoto: TTS_Image;
        TS_Shape15: TTS_Shape;
        N12: TMenuItem;
        AlterarTabelaPadro1: TMenuItem;
        DBEdit5: TDBEdit;
        CancelarParcela1: TMenuItem;
        Q_SQLt: TIBQuery;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        dfBairro: TTS_DBEdit;
        lbCancelado: TdxfLabel;
        AlterarJuros1: TMenuItem;
        N13: TMenuItem;
        RecalcularParcelas1: TMenuItem;
        Atualizar1: TMenuItem;
        N14: TMenuItem;
        dbgItensReferencia: TdxDBGridButtonColumn;
        N15: TMenuItem;
        CopiarItensdaOperao1: TMenuItem;
        N16: TMenuItem;
        dbgItensMesclado: TdxDBGridColumn;
        dbgItensUltrapassouMesclagem: TdxDBGridColumn;
        pnStatus: TTS_Panel;
        TS_Label1: TTS_Label;
        dbgItensStatus: TdxDBGridImageColumn;
        dbgParcelasDoc: TdxDBGridColumn;
        ConsultadePreos1: TMenuItem;
        ConsultadePreos2: TMenuItem;
        dfStatus: TTS_DBLookupComboBox;
        OperaoNmero1: TMenuItem;
        dbgMensagens: TTS_QDBGrid;
        dbgMensagensDESCRICAO: TdxDBGridMemoColumn;
        pnVolumes: TTS_Panel;
        TS_Label2: TTS_Label;
        dbgItensNumeroLote: TdxDBGridPopupColumn;
        tsContrato: TTS_TabSheet;
        TS_Panel1: TTS_Panel;
        TS_DBMemo1: TTS_DBMemo;
        dfContrato: TTS_PopupEdit;
        dbgContratos: TTS_QDBGrid;
        pnLotes: TTS_Panel;
        dbgLotes: TTS_QDBGrid;
        dxDBGridMaskColumn1: TdxDBGridMaskColumn;
        dxDBGridMaskColumn2: TdxDBGridMaskColumn;
        dxDBGridMaskColumn3: TdxDBGridMaskColumn;
        dxDBGridMaskColumn4: TdxDBGridMaskColumn;
        dxDBGridMemoColumn1: TdxDBGridColumn;
        dbgItensI_Descricao: TdxDBGridColumn;
        N17: TMenuItem;
        Memorizar1: TMenuItem;
        btLembrete: TTS_SpeedButton;
        TS_DBEdit6: TTS_DBEdit;
        dbgTabelasPrecoColumn7: TdxDBGridColumn;
        SempreAgruparporItem1: TMenuItem;
        dbgItensQtdFaturada: TdxDBGridMaskColumn;
        dbgItensPromocao: TdxDBGridColumn;
        AlterarAlmoxarifado1: TMenuItem;
        TS_Panel2: TTS_Panel;
        TS_Label3: TTS_Label;
        lbTabelaPadrao: TTS_Label;
        dbgItensBaixaEstoque: TdxDBGridColumn;
        N18: TMenuItem;
        N19: TMenuItem;
        Legenda2: TMenuItem;
        dbgItensAliqICMS: TdxDBGridMaskColumn;
        dbgItensIPI: TdxDBGridMaskColumn;
        dbgItensTVA: TdxDBGridMaskColumn;
        dbgItensNumeroItem: TdxDBGridColumn;
        dbgItensRegistro: TdxDBGridColumn;
        TS_Label4: TTS_Label;
        dbgItensCFOP: TdxDBGridPopupColumn;
        dfCPF_CNPJ: TTS_DBEdit;
        dfInscricaoEst: TTS_DBEdit;
        lbTipoCobranca: TTS_Label;
        lbCarteira: TTS_Label;
        cmbTipoCobranca: TTS_DBLookupComboBox;
        cmbCarteira: TTS_DBLookupComboBox;
        dbgItensSitECF: TdxDBGridLookupColumn;
        PreoBase1: TMenuItem;
        lbMenorPreco: TTS_Label;
        ExibirMenorPreo1: TMenuItem;
        dbgItenslkAlmox: TdxDBGridLookupColumn;
        GrupodeComisses1: TMenuItem;
        EstoquePorAlmoxarifado1: TMenuItem;
        lcbLocaisEntrega: TTS_LookupComboBox;
        dfVolumes: TTS_DBEditNumber;
        dbgItensicPercComissao: TdxDBGridColumn;
        dbgItensicGrupoDesconto: TdxDBGridColumn;
        dbgItensPRECOTABELA: TdxDBGridColumn;
        dbgItensPDESCONTO: TdxDBGridCalcColumn;
        dbgItenscfopcst: TdxDBGridColumn;
        dbgItensALIQCOFINS: TdxDBGridColumn;
        dbgItensALIQIPI: TdxDBGridColumn;
        dbgItensALIQPIS: TdxDBGridColumn;
        dbgItensVALORIPIPROD: TdxDBGridColumn;
        dbgItensVALORCOFINSPROD: TdxDBGridColumn;
        dbgItensVALORPISPROD: TdxDBGridColumn;
        dbgItensVALORICMSSUBSTPROD: TdxDBGridMaskColumn;
        dbgItensVALORICMSPROD: TdxDBGridMaskColumn;
        dbgItensBASECALCICMSPROD: TdxDBGridMaskColumn;
        dbgItensBASECALCSUBSTPROD: TdxDBGridMaskColumn;
        dbgItensI_CLASFISCAL: TdxDBGridColumn;
        dbgItensSITUACAO: TdxDBGridMaskColumn;
        dbgItensCST: TdxDBGridLookupColumn;
        dbgItensCSTIPI: TdxDBGridLookupColumn;
        dbgItensCSTPISCOFINS: TdxDBGridLookupColumn;
        procedure FormCreate(Sender: TObject);
        procedure dbtObsMouseMove(Sender: TObject; Shift: TShiftState; X,
            Y: Integer);
        procedure dbgItensExit(Sender: TObject);
        procedure cmbTipoMovimentoClick(Sender: TObject);
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure lbOperacaoClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
        procedure dbgItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure cmbTipoEntregaMouseEnter(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure dbtClienteMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dxBarSituacaoClick(Sender: TObject);
        procedure dxBarExtratoFinanceiroClick(Sender: TObject);
        procedure dxBarUltimasVendasClick(Sender: TObject);
        procedure dfFavorecidoButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure DBEdit2Change(Sender: TObject);
        procedure dbgTabelasPrecoChangeNode(Sender: TObject; OldNode,
            Node: TdxTreeListNode);
        procedure dbgItensPRECOPopup(Sender: TObject; const EditText: string);
        procedure dbgItensPRECOCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dbgItensPRECOInitPopup(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure btContabilidadeClick(Sender: TObject);
        procedure dxBarUltimoClick(Sender: TObject);
        procedure dxBarUltParaClienteClick(Sender: TObject);
        procedure dxBarUltParaDataClick(Sender: TObject);
        procedure dxBarUltParaOperacaoClick(Sender: TObject);
        procedure dxBarUltCanceladoClick(Sender: TObject);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure ppmParcelasPopup(Sender: TObject);
        procedure dxBarCadastroClienteClick(Sender: TObject);
        procedure dbgParcelasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure pgItensChange(Sender: TObject);
        procedure lbTermosSetParametrosForm(Sender: TObject);
        procedure ppmClientePopup(Sender: TObject);
        procedure pnFotoClienteClick(Sender: TObject);
        procedure DBEdit3Change(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dbtTotalFinalAfterEdit(Sender: TObject);
        procedure T_TermosAfterTransition(Sender: TObject);
        procedure FormComponentGravou(Sender: TObject);
        procedure DBEdit4Change(Sender: TObject);
        procedure dxBarExcluirClick(Sender: TObject);
        procedure dxBarIncluirClick(Sender: TObject);
        procedure lbDesativadoDblClick(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure dxBarReceberPgtoClick(Sender: TObject);
        procedure dxBarVerPagamentosClick(Sender: TObject);
        procedure dbgItensEditing(Sender: TObject; Node: TdxTreeListNode;
            var Allow: Boolean);
        procedure FormComponentLayoutChange(Sender: TObject; LayoutGrid: Boolean;
            var bSkip: Boolean);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure tmInvoiceTimer(Sender: TObject);
        procedure AgruparporItem1Click(Sender: TObject);
        procedure ppmGridPopup(Sender: TObject);
        procedure dbgItensCustomDrawColumnHeader(Sender: TObject;
            AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
            var AText: string; var AColor: TColor; AFont: TFont;
            var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
            var ADone: Boolean);
        procedure InvoicescomProduesExcludas1Click(Sender: TObject);
        procedure FormComponentBeforeMoveRecord(Sender: TObject;
            var bSkip: Boolean);
        procedure PerformancedaGravao1Click(Sender: TObject);
        procedure lbVendedorSetParametrosForm(Sender: TObject);
        procedure lbVendedorMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dbgItensDESCRICAOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure RecebimentosdaParcela1Click(Sender: TObject);
        procedure Legenda1Click(Sender: TObject);
        procedure dbgTabelasPrecoDblClick(Sender: TObject);
        procedure btItensUpClick(Sender: TObject);
        procedure btItensDownClick(Sender: TObject);
        procedure EstatsticadeVendas1Click(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure cmbVendedorClick(Sender: TObject);
        procedure lbLocalEntregaSetParametrosForm(Sender: TObject);
        procedure dbgTabelasPrecoClick(Sender: TObject);
        procedure dbgItensClick(Sender: TObject);
        procedure dxCalculator1KeyPress(Sender: TObject; var Key: Char);
        procedure AlterarTabelaPadro1Click(Sender: TObject);
        procedure DBEdit5Change(Sender: TObject);
        procedure CancelarParcela1Click(Sender: TObject);
        procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
            var CanDelete: Boolean);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure pnClienteEnter(Sender: TObject);
        procedure pnClienteExit(Sender: TObject);
        procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dbgParcelasEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure dbgParcelasEditing(Sender: TObject; Node: TdxTreeListNode;
            var Allow: Boolean);
        procedure RecalcularParcelas1Click(Sender: TObject);
        procedure Atualizar1Click(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure ComposiodoItem1Click(Sender: TObject);
        procedure cmbTermosMouseEnter(Sender: TObject);
        procedure dfStatusValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure ConsultadePreos2Click(Sender: TObject);
        procedure lbLocalEntregaClick(Sender: TObject);
        procedure FormComponentAntesDeApagar(Sender: TObject;
            var bCanDelete: Boolean);
        procedure dbgItensTS_AposLocalizar(Sender: TObject);
        procedure FormComponentInclusao(Sender: TObject);
        procedure OperaoNmero1Click(Sender: TObject);
        procedure dbgMensagensDblClick(Sender: TObject);
        procedure dbgMensagensKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dfMensagemCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dfContratoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dbgContratosDblClick(Sender: TObject);
        procedure dbgContratosKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure pgItensChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure dbgItensNumeroLoteInitPopup(Sender: TObject);
        procedure dbgItensNumeroLotePopup(Sender: TObject;
            const EditText: string);
        procedure CopiarItensdaOperao1Click(Sender: TObject);
        procedure Memorizar1Click(Sender: TObject);
        procedure btLembreteClick(Sender: TObject);
        procedure dbgTabelasPrecoCustomDrawColumnHeader(Sender: TObject;
            AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
            var AText: string; var AColor: TColor; AFont: TFont;
            var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
            var ADone: Boolean);
        procedure dbgTabelasPrecoCustomDrawCell(Sender: TObject;
            ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
            AColumn: TdxTreeListColumn; ASelected, AFocused,
            ANewItemRow: Boolean; var AText: string; var AColor: TColor;
            AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
        procedure dbgLotesDblClick(Sender: TObject);
        procedure SempreAgruparporItem1Click(Sender: TObject);
        procedure dbgItensKeyPress(Sender: TObject; var Key: Char);
        procedure AlterarAlmoxarifado1Click(Sender: TObject);
        procedure ppmOutrosPopup(Sender: TObject);
        procedure dbgItensEnter(Sender: TObject);
        procedure dbgTabelasPrecoKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure Legenda2Click(Sender: TObject);
        procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
        procedure btPesquisarClick(Sender: TObject);
        procedure dfCPF_CNPJEnter(Sender: TObject);
        procedure dfCPF_CNPJExit(Sender: TObject);
        procedure cmbTipoCobrancaChange(Sender: TObject);
        procedure cmbCarteiraChange(Sender: TObject);
        procedure dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
            Conteudo: string);
        procedure btGravarClick(Sender: TObject);
        procedure dfFotoDblClick(Sender: TObject);
        procedure PreoBase1Click(Sender: TObject);
        procedure ExibirMenorPreo1Click(Sender: TObject);
        procedure GrupodeComisses1Click(Sender: TObject);
        procedure EstoquePorAlmoxarifado1Click(Sender: TObject);
        procedure FormComponentPesquisar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure dbgItensKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure ApagarDadosClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure dbgItensDESCRICAOValidate(Sender: TObject;
            var ErrorText: string; var Accept: Boolean);
    private
        { Private declarations }
        sFoto: string;
        bDescontonoGrid: Boolean;

    protected
        DMSaida: TDMSaidas;
        bmpSeta: TBitmap;
        bOutroSalvar: Boolean;
        sItemsOut, sTipoAbertura, sProducoes: string;
        nToInvoice, nCliente, nChaveCliente, nTipoPadraoAbertura: Integer;
        nMovFaturar, nOpFaturamento, nCodForm: Integer;

        nValorParcelaBE: currency; //Valor da Parcela antes de editar;

        function CampoGrid: string;
        function ConteudoGrid: string;
        function DataField(o: TWinControl): string; override;
        function Conteudo(o: TWinControl): string; override;
        procedure Evento_AtualizaItensFilhos(var Msg: TMessage); message PM_PostItens;
        procedure Evento_Foco(var Msg: TMessage); message PM_Foco;
        procedure ImprimirDocs; virtual;
        procedure ReceberPgtos; virtual;
        procedure AtualizaDadosCliente; virtual;
        function LastKeyFor(Tipo: string): string; virtual;

        procedure TrocarItensInvoice; virtual;
        procedure AdicionarProducao; virtual;
        procedure GerarInvoiceDeChaveCliente; virtual;
        procedure GerarInvoiceDeProducoes; virtual;
        procedure DefinirTipoMovAbertura(nTipoPadrao: Integer; bChange: Boolean; bNovo: Boolean = False); virtual;
        procedure FaturarOperacao; virtual;
        procedure UpdateProducoes; virtual;
    public
        { Public declarations }

        bNAOPermitirAlterarItemVenda: Boolean;
        bNAOPermitirItemDuplicado: Boolean;
        bPermitirSalvar: Boolean;
        procedure SetCorTitulos(nCor: Variant); virtual;

    end;

implementation
uses teRender, teBkgrnd, DM_Projeto, Funcoes, {Rpt_Invoices,} Frm_Contabilidade,
    Dlg_CoresParcelasVenda, Dlg_EstatVendasProduto, Dlg_AlterarTabelaPadrao,
    DM_Financeiro, Dlg_Reembolsos, Frm_SaidasItensFilhos, Dlg_ConsultaPrecos,
    Rpt_Invoices, Dlg_AlterarAlmoxarifado, Dlg_LegendaGridVendas,
    DLG_VisialuzadorImagem, TDM_Projeto, Frm_DigitacaoItens, FRM_PADRAO; {, Dlg_VendedorVR;}

{$R *.DFM}

procedure TFrmSaidas.FormCreate(Sender: TObject);
begin

    DMSaida := TDMSaidas(DMJanela);

    DMSaida.sForm := Self.Name;

    DMSaida.CriaContabilidade;

    inherited;
    pgItens.UpdateVisibleTabs;

    nCodForm := DMProjeto.TipoOrigem(self.name);
    //FrmSaidas := Self;
end;

procedure TFrmSaidas.dbtObsMouseMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
begin
    inherited;
    if dbtObs.Hint <> dbtObs.Field.Text then
        dbtObs.Hint := dbtObs.Field.Text;
end;

procedure TFrmSaidas.dbgItensExit(Sender: TObject);
begin
    inherited;
    if btItensDown.Visible then
        btItensDownClick(self);

    if DMSaida.C_Itens.Active and (DMSaida.C_Itens.State <> dsBrowse) then
        DMSaida.C_Itens.Post;
end;

procedure TFrmSaidas.cmbTipoMovimentoClick(Sender: TObject);
var
    R: TRect;
    sTmp: string;
begin
    inherited;

    {Verificando os Campos visiveis}
    with DMSaida do
        begin
            if not C_TiposMovimento.Active then
                exit;

            C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

            FormComponent.Caption := cmbTipoMovimento.Text;

            sTmp := C_TiposMovimentoCB_ImprimirOP.Value;
            if sTmp = '' then
                sTmp := 'N';
            cbImprimir.Checked := ((bAlteracao) and (sTmp[1] in ['A', 'S'])) or
                (not (bAlteracao) and (sTmp[1] in ['I', 'S']));

            sTmp := C_TiposMovimentoCB_Pgtos.Value;
            if sTmp = '' then
                sTmp := 'N';
            cbReceber.Checked := ((bAlteracao) and (sTmp[1] in ['A', 'S'])) or
                (not (bAlteracao) and (sTmp[1] in ['I', 'S']));

            //        dbtNumero.AllowEditOnClick := (C_TiposMovimentoCB_GERARNUM.Value = 'N');
            dbtNumero.NullValue := IIF(C_TiposMovimentoCB_GERARNUM.Value = 'N', '', '- auto -');

            pnVendedor.Visible := (C_TiposMovimentoCB_VENDEDOR.Value = 'S');
            pnLocalEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
            pnDataEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
            pnTipoEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
            pnComissao.Visible := pnVendedor.Visible and (C_TiposMovimentoCB_COMISSAO.Value = 'S');
            pnPedido.Visible := (C_TiposMovimentoCB_PEDIDO.Value = 'S');
            pnValidade.Visible := (C_TiposMovimentoTipoPadrao.Value in [3, 4]);
            pnTermos.Visible := (C_TiposMovimentoCB_TERMOS.Value = 'S');
            pnMensagem.Visible := (C_TiposMovimentoCB_MENSAGEM.Value = 'S');
            pnTotalItens.Visible := (C_TiposMovimentoCB_TOTALITENS.Value = 'S');
            pnDescontos.Visible := (C_TiposMovimentoCB_DESCONTOS.Value = 'S');
            pnFrete.Visible := (C_TiposMovimentoCB_FRETE.Value = 'S');
            pnDespesas.Visible := (C_TiposMovimentoCB_Despesas.Value = 'S');
            pnJuros.Visible := (C_TiposMovimentoCB_Juros.Value = 'S');
            //    pnValorTax.Visible := (C_TiposMovimentoCB_VALORTAX.Value = 'S');
            pnTotalFinal.Visible := (C_TiposMovimentoCB_TOTALFINAL.Value = 'S');
            pnStatus.Visible := (C_TiposMovimentoCB_Status.Value = 'S');
            if (C_TiposMovimentoCB_Contrato.Value = 'S') then
                pgItens.ShowTab(2, false)
            else
                pgItens.HideTab(2);

            pnTotalItens.Left := StrToInt(pnTotalItens.TagStr);
            pnDescontos.Left := StrToInt(pnDescontos.TagStr);
            pnFrete.Left := StrToInt(pnFrete.TagStr);
            pnDespesas.Left := StrToInt(pnDespesas.TagStr);
            pnJuros.Left := StrToInt(pnJuros.TagStr);
            //    pnValorTax.Left := StrToInt(pnValorTax.TagStr);

            pnCampo01.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
            pnCampo02.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
            pnCampo03.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
            pnCampo04.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

            dbgItensI_Codigo.Visible := C_TiposMovimentoCB_Codigo.Value = 'S';
            dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';
            dbgItensicPercComissao.Visible := C_TiposMovimentoCB_COMISSAO.Value = 'S';
            // LegisFiscal
            dbgItensIPI.Visible := (C_TiposMovimentoCB_IPI.Value = 'S') and (C_TiposMovimentoPossuiIPI.Value = 'S');
            //dbgItensAliqICMS.Visible := (C_TiposMovimentoCB_ICMS.Value = 'S') and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensSitECF.Visible := (C_TiposMovimentoCB_ICMS.Value = 'S') and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensTVA.Visible := (C_TiposMovimentoCB_TVA.Value = 'S');
            //dbgItensCFOP.Visible := (C_TiposMovimentoCB_CFOP.Value = 'S') and (C_TiposMovimentoPossuiICMS.Value = 'S');
            //dbgItenscfopcst.Visible := (C_TiposMovimentoCB_CFOP.Value = 'S') and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensNumeroItem.Visible := (C_TiposMovimentoCB_NUMEROITEM.Value = 'S');
            dbgItensRegistro.Visible := (C_TiposMovimentoCB_REGISTRO.Value = 'S');
            ///////////
            dbgItensFuncProducao.Visible := C_TiposMovimentoCB_FUNCIONARIO.Value = 'S';
            //    dbgItensTaxavel.Visible := C_TiposMovimentoCB_TAX.Value = 'S';
            dbgItensStatus.Visible := C_TiposMovimentoCB_StatusItens.Value = 'S';
            dbgItensQtdFaturada.Visible := dbgItensStatus.Visible and DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value in [2, 3]);
            if dbgItensQtdFaturada.Visible then
                dbgItensQtdFaturada.ColIndex := dbgItensQuantidade.ColIndex;

            dbgParcelasDoc.Visible := C_TiposMovimentoCB_DocsGarantia.Value = 'S';

            // Felipe -   Comentado trechos abaixo para possibilitar das colunas 1 a 4 nao ficarem visiveis no grid. Necessario para construir layout
            //            de impressao para Up Distribuidora (Produtos Licitacao) - Alterado em 19/09/2014

    //        dbgItensColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
    //        dbgItensColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
    //        dbgItensColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
    //        dbgItensColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';

            // Livros fiscais visible false
            //dbgItensCFOP.Visible := C_TiposMovimentoLIVROFISCAL.Value = 'S';

            //Caso Desconto Itens Esteja Marcado

            dbgItensPDESCONTO.Visible := C_TiposMovimentoCB_DESCONTOITEM.Value = 'S';
            dbgItensPRECOTABELA.Visible := dbgItensPDESCONTO.Visible;
            dbgItensPRECOTABELA.ReadOnly := True;
            dbgItensPRECOTABELA.TabStop := False;

            // Felipe - Comentado para permitir usuário escolher quais campos devem estar visíveis ou não (14/10/2014)
            //dbgItensNumeroLote.visible := DMProjeto.bControleValidade and not DMProjeto.bControleValidadeAut and (C_TabelaTipoPadrao.Value <> 3);

            {Definindo ordem das colunas}
            with dbgItens do
                begin
                    if FindColumnByFieldName('_icSelecionado') <> nil then
                        tdxDBGridColumn(FindColumnByFieldName('_icSelecionado')).Index := 0;
                end;

            dbgItensSequencia.Index := 1;
            dbgItensFuncProducao.Index := 2;
            dbgItensI_Codigo.Index := 3;
            dbgItensDescricao.Index := 4;
            dbgItensReferencia.Index := 5;
            dbgItensI_Unidade.Index := 6;
            dbgItensQuantidade.Index := 7;
            dbgItensPRECOTABELA.Index := 8;
            dbgItensPreco.Index := 9;
            dbgItensPDesconto.Index := 10;
            dbgItensSubTotal.Index := 11;
            dbgItensStatus.Index := 12;
            //dbgItensNumeroLote.Index := 13;

            // Felipe -   Comentado trechos abaixo para possibilitar das colunas 1 a 4 nao ficarem visiveis no grid. Necessario para construir layout
            //            de impressao para Up Distribuidora (Produtos Licitacao) - Alterado em 19/09/2014

    //        dbgItensColuna1.Index := 14;
    //        dbgItensColuna2.Index := 15;
    //        dbgItensColuna3.Index := 16;
    //        dbgItensColuna4.Index := 17;

            if not (C_TiposMovimentoFoto.Value = 'S') then
                begin
                    dfFoto.Visible := false;
                    dbgItens.Height := tsItens.Height - 24;
                    dbgItens.Width := tsItens.Width - 2;
                    pnTotItens.Top := tsItens.Height - 21;
                    pnTotItens.Height := 20;
                    pnVolumes.Top := pnTotItens.Top;
                    pnVolumes.Height := 20;
                    pnVolumes.Left := dbgItens.Left;

                    if (dbgItens.ColumnsRect.Values['SUBTOTAL'] <> '') then
                        begin
                            R := StrToRect(dbgItens.ColumnsRect.Values['SubTotal']);
                            pnTotItens.Left := R.Left;
                            pnTotItens.Width := R.Right - R.Left;
                        end;
                end
            else
                begin
                    dbgItens.Height := tsItens.Height;
                    dbgItens.Width := tsItens.Width - 109;
                    pnTotItens.Top := tsItens.Height - 39;
                    pnTotItens.Height := 39;
                    pnTotItens.Left := dfFoto.Left;
                    pnTotItens.Width := dfFoto.Width;
                    pnVolumes.Top := pnTotItens.Top - 43;
                    pnVolumes.Height := 39;
                    pnVolumes.Left := pnTotItens.Left;
                    dfFoto.Visible := True;
                end;
            lbTipoCobranca.visible := dbgParcelas.visible;
            cmbTipoCobranca.visible := dbgParcelas.visible;
            lbCarteira.visible := dbgParcelas.visible;
            cmbCarteira.visible := dbgParcelas.visible;
            //Pegar em TiposMovimentos os titulos dos campos, por conta do multidioma
            lbData.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATA').asString);
            lbNumero.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_NUMERO').asString);
            lbVendedor.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_VENDEDOR').asString);
            lbLocalEntrega.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_LOCALENTREGA').asString);
            lbDataEntrega.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATAENTREGA').asString);
            lbTipoEntrega.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TIPOENTREGA').asString);
            lbPedido.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PEDIDO').asString);
            lbComissao.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_COMISSAO').asString);
            lbTermos.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TERMOS').asString);
            //    lbValorTax.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_VALORTAX').asString);
            dfMensagem.Text := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_MENSAGEM').asString);
            lbDescontos.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCONTOS').asString);
            lbFrete.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FRETE').asString);
            lbTotalFinal.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALFINAL').asString);
            lbTotalItens.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);
            lbDespesas.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESPESAS').asString);
            lbJuros.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_JUROS').asString);
            lbValidade.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_VALIDADE').asString);
            lbTotItens.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);

            lbCampo01.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO1').asString);
            lbCampo02.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO2').asString);
            lbCampo03.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO3').asString);
            lbCampo04.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO4').asString);

            dbgItensI_Codigo.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Codigo').asString;
            dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Referencia').asString;
            dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCRICAO').asString;
            dbgItensI_Unidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_UNIDADE').asString;
            dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_QUANTIDADE').asString;
            dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PRECO').asString;
            dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_SUBTOTAL').asString;
            // LegisFiscal
            dbgItensIPI.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_IPI').asString;
            dbgItensAliqICMS.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_ICMS').asString;
            dbgItensTVA.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TVA').asString;
            dbgItensCFOP.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CFOP').asString;
            //
            dbgItensFuncProducao.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FUNCIONARIO').asString;
            //    dbgItensTaxavel.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TAX').asString;

            dbgItensColuna1.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna1').asString;
            dbgItensColuna2.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna2').asString;
            dbgItensColuna3.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna3').asString;
            dbgItensColuna4.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna4').asString;

            if pnLocalEntrega.Visible then
                with DMSaida do
                    begin
                        C_LocaisEntrega.Close;
                        C_LocaisEntrega.Open;
                    end;

            SetCorTitulos(C_TiposMovimento.FieldByName('CorTitulos').Value);
            if C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
                cmbTipoFav.LookupKeyValue := C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;

        end;

end;

procedure TFrmSaidas.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaTIPOMOVIMENTO.asVariant]);
end;

procedure TFrmSaidas.lbOperacaoClick(Sender: TObject);
begin
    inherited;
    cmbTipoMovimentoClick(self);
end;

procedure TFrmSaidas.FormShow(Sender: TObject);
var
    sTmp: string;
begin
    inherited;
    bDescontonoGrid := (DMProjeto.Parametro('DescontoNoGrid') = 'S');

    if ((DMProjeto.Parametro('GrupoComissao') = 'S') and (DMSaida.C_TabelaCALCCOMISSAO.AsString = 'S')) then
        begin
            dbgItensicPercComissao.Visible := True;
            dbgItensPDesconto.Visible := True;
            dbgItensicGrupoDesconto.Visible := True;
            dbgItensPRECOTABELA.Visible := True;
            dbgItensicPercComissao.ReadOnly := True;
            dbgItensPDesconto.ReadOnly := True;
            dbgItensicGrupoDesconto.ReadOnly := True;
            dbgItensPRECOTABELA.ReadOnly := True;
        end
    else
        begin
            if bDescontonoGrid then
                begin
                    dbgItensPDesconto.Visible := True;
                    dbgItensPRECO.ReadOnly := True;
                    dbgItensPRECO.TabStop := False;
                    dbgItensI_UNIDADE.TabStop := True;
                end
            else
                begin
                    dbgItensPRECO.ReadOnly := False;
                    dbgItensPRECO.TabStop := True;
                    dbgItensI_UNIDADE.TabStop := False;
                end;
        end;

    if (DMProjeto.Parametro('DiretoParaItens') <> 'N') then
        pgItens.TabOrder := dfFavorecido.TabOrder + 1;

    {A esta altura o Tipo de Mov. Padrão já foi definido}
//    dbtNumero.AllowEditOnClick := (DMSaida.C_TiposMovimentoCB_GERARNUM.Value = 'N');
    dbtNumero.NullValue := IIF(DMSaida.C_TiposMovimentoCB_GERARNUM.Value = 'N', '', '- auto -');

    {Desabilitando os controles que não são visíveis para este Tipo de Movimento}
    DesabilitarControle(pnComissao, (DMSaida.C_TiposMovimentoCB_COMISSAO.Value = 'N') or
        (DMSaida.C_TiposMovimentoCB_VENDEDOR.Value = 'N'));
    DesabilitarControle(pnVendedor, DMSaida.C_TiposMovimentoCB_VENDEDOR.Value = 'N');
    DesabilitarControle(pnLocalEntrega, DMSaida.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
    DesabilitarControle(pnDataEntrega, DMSaida.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
    DesabilitarControle(pnTipoEntrega, DMSaida.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
    DesabilitarControle(pnPedido, DMSaida.C_TiposMovimentoCB_PEDIDO.Value = 'N');
    DesabilitarControle(pnTermos, DMSaida.C_TiposMovimentoCB_TERMOS.Value = 'N');
    DesabilitarControle(pnMensagem, DMSaida.C_TiposMovimentoCB_MENSAGEM.Value = 'N');
    DesabilitarControle(pnTotalItens, DMSaida.C_TiposMovimentoCB_TotalItens.Value = 'N');
    DesabilitarControle(pnDescontos, DMSaida.C_TiposMovimentoCB_DESCONTOS.Value = 'N');
    DesabilitarControle(pnFrete, DMSaida.C_TiposMovimentoCB_FRETE.Value = 'N');
    DesabilitarControle(pnDespesas, DMSaida.C_TiposMovimentoCB_DESPESAS.Value = 'N');
    DesabilitarControle(pnJuros, DMSaida.C_TiposMovimentoCB_JUROS.Value = 'N');
    //  DesabilitarControle( pnValorTax, DMSaida.C_TiposMovimentoCB_VALORTAX.Value = 'N');
    DesabilitarControle(pnTotalFinal, DMSaida.C_TiposMovimentoCB_TOTALFINAL.Value = 'N');
    DesabilitarControle(pnValidade, not DMSaida.C_TiposMovimentoTipoPadrao.Value in [3, 4]);
    DesabilitarControle(pnStatus, DMSaida.C_TiposMovimentoCB_Status.Value = 'N');

    {Campos Adicionais}
    DesabilitarControle(pnCampo01, DMSaida.C_TiposMovimentoCB_CAMPO01.Value <> 'S');
    DesabilitarControle(pnCampo02, DMSaida.C_TiposMovimentoCB_CAMPO02.Value <> 'S');
    DesabilitarControle(pnCampo03, DMSaida.C_TiposMovimentoCB_CAMPO03.Value <> 'S');
    DesabilitarControle(pnCampo04, DMSaida.C_TiposMovimentoCB_CAMPO04.Value <> 'S');

    if (DMSaida.C_TiposMovimentoCB_Contrato.Value = 'S') then
        pgItens.ShowTab(2, false)
    else
        pgItens.HideTab(2);

    sTmp := DMSaida.C_TiposMovimentoCB_ImprimirOP.Value;
    if sTmp = '' then
        sTmp := 'N';
    cbImprimir.Checked := ((DMSaida.bAlteracao) and (sTmp[1] in ['A', 'S'])) or
        (not (DMSaida.bAlteracao) and (sTmp[1] in ['I', 'S']));

    sTmp := DMSaida.C_TiposMovimentoCB_Pgtos.Value;
    if sTmp = '' then
        sTmp := 'N';
    cbReceber.Checked := ((DMSaida.bAlteracao) and (sTmp[1] in ['A', 'S'])) or
        (not (DMSaida.bAlteracao) and (sTmp[1] in ['I', 'S']));

    if not pnCampo03.Visible and pnCampo01.Visible then
        pnCampo01.Width := pnAdicionais.Width - 7;

    if not pnCampo04.Visible and pnCampo02.Visible then
        pnCampo02.Width := pnAdicionais.Width - 7;

    dbgItensI_Codigo.Visible := DMSaida.C_TiposMovimentoCB_Codigo.Value = 'S';
    dbgItensReferencia.Visible := DMSaida.C_TiposMovimentoCB_Referencia.Value = 'S';
    dbgItensFuncProducao.Visible := DMSaida.C_TiposMovimentoCB_FUNCIONARIO.Value = 'S';
    //  dbgItensTaxavel.Visible := DMSaida.C_TiposMovimentoCB_TAX.Value = 'S';
    dbgItensStatus.Visible := DMSaida.C_TiposMovimentoCB_StatusItens.Value = 'S';
    dbgItensQtdFaturada.Visible := dbgItensStatus.Visible and DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value in [2, 3]);
    if dbgItensQtdFaturada.Visible then
        dbgItensQtdFaturada.ColIndex := dbgItensQuantidade.ColIndex;

    dbgParcelasDoc.Visible := DMSaida.C_TiposMovimentoCB_DocsGarantia.Value = 'S';

    // Felipe -   Comentado trechos abaixo para possibilitar das colunas 1 a 4 nao ficarem visiveis no grid. Necessario para construir layout
    //            de impressao para Up Distribuidora (Produtos Licitacao) - Alterado em 19/09/2014

//    dbgItensColuna1.Visible := DMSaida.C_TiposMovimentoCB_Coluna1.Value = 'S';
//    dbgItensColuna2.Visible := DMSaida.C_TiposMovimentoCB_Coluna2.Value = 'S';
//    dbgItensColuna3.Visible := DMSaida.C_TiposMovimentoCB_Coluna3.Value = 'S';
//    dbgItensColuna4.Visible := DMSaida.C_TiposMovimentoCB_Coluna4.Value = 'S';

    lbData.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATA').asString);
    lbNumero.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_NUMERO').asString);
    lbVendedor.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_VENDEDOR').asString);
    lbLocalEntrega.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_LOCALENTREGA').asString);
    lbDataEntrega.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATAENTREGA').asString);
    lbTipoEntrega.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TIPOENTREGA').asString);
    lbPedido.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PEDIDO').asString);
    lbComissao.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_COMISSAO').asString);
    lbTermos.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TERMOS').asString);
    //  lbValorTax.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_VALORTAX').asString);
    dfMensagem.Text := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_MENSAGEM').asString);
    lbDescontos.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCONTOS').asString);
    lbFrete.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FRETE').asString);
    lbTotalFinal.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALFINAL').asString);
    lbTotalItens.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);
    lbDespesas.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESPESAS').asString);
    lbJuros.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_JUROS').asString);
    lbValidade.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_VALIDADE').asString);
    lbTotItens.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);

    lbCampo01.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO1').asString);
    lbCampo02.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO2').asString);
    lbCampo03.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO3').asString);
    lbCampo04.Caption := (DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO4').asString);

    dbgItensI_Codigo.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Codigo').asString;
    dbgItensReferencia.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Referencia').asString;
    dbgItensDescricao.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCRICAO').asString;
    dbgItensI_Unidade.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_UNIDADE').asString;
    dbgItensQuantidade.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_QUANTIDADE').asString;
    dbgItensPreco.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PRECO').asString;
    dbgItensSubTotal.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_SUBTOTAL').asString;
    dbgItensFuncProducao.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FUNCIONARIO').asString;
    //  dbgItensTaxavel.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TAX').asString;

    dbgItensColuna1.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna1').asString;
    dbgItensColuna2.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna2').asString;
    dbgItensColuna3.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna3').asString;
    dbgItensColuna4.Caption := DMSaida.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna4').asString;

    FormComponent.Caption := cmbTipoMovimento.Text;

    SetCorTitulos(DMSaida.C_TiposMovimento.FieldByName('CorTitulos').Value);

    if DMSaida.C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
        cmbTipoFav.LookupKeyValue := DMSaida.C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;

end;

procedure TFrmSaidas.SetCorTitulos;
var
    i: Integer;
begin
    if nCor = null then
        nCor := FormComponent.BarEndColor;

    for i := 0 to ComponentCount - 1 do
        begin
            if (Components[i] is TTS_Label) and ((Components[i] as TTS_Label).TagStr = 'Titulos') then
                (Components[i] as TTS_Label).Color := nCor;

            if (Components[i] is TTS_DBText) and ((Components[i] as TTS_DBText).TagStr = 'Titulos') then
                (Components[i] as TTS_DBText).Color := nCor;

            if (Components[i] is TTS_DBTextEffect) and ((Components[i] as TTS_DBTextEffect).TagStr = 'Titulos') then
                (Components[i] as TTS_DBTextEffect).Color := nCor;

        end;

    dfMensagem.Color := nCor;
    dfContrato.Color := nCor;
    dbgItens.HeaderColor := nCor;
    dbgParcelas.HeaderColor := nCor;
    dbgParcelas.BandColor := nCor;
    pnData.Color := nCor;
    cbLockDate.Color := nCor;

end;

procedure TFrmSaidas.DBEdit1Change(Sender: TObject);
begin
    inherited;
    cmbTipoMovimentoClick(Self);
    // Adriano
    if not (DMSaida.C_TabelaTipoPadrao.value in [1, 6]) then
        btContabilidade.enabled := false
    else
        btContabilidade.enabled := true;
    /////////////////////////////
end;

procedure TFrmSaidas.dbgItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var
    sDescOriginal: string;
    sDescItem: string;
begin
    //Paulo 18102012
    if not (DMsaida.C_Itens.State in [dsInsert, dsEdit]) then
        DMsaida.C_Itens.Edit;
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
                begin
                    AColor := $00D5DBF7;

                end;

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

    if (dbgItens.GetFieldValue(ANode, 'ChaveProducaoFunc', 0) = 0) and
        (dbgItens.GetFieldValue(ANode, 'Producao', 0) <> 0) and DMSaida.bAlteracao then
        AColor := $00B8DCB8;

    if UpperCase(TdxDBGridColumn(AColumn).FieldName) = 'DESCRICAO' then
        begin
            sDescOriginal := dbgItens.GetFieldValue(ANode, 'I_DESCRICAO', '');
            sDescItem := dbgItens.GetFieldValue(ANode, 'DESCRICAO', '');
            if (sDescOriginal <> sDescItem) and (sDescOriginal <> '') then
                begin
                    AFont.Color := clPurple;
                    {
                    if bNaoPermitirAlterarItemVenda then
                        begin
                            dbgItensDESCRICAO.Field.Text := sDescOriginal;
                            sDescItem := sDescOriginal;
                        end;
                    }
                end;
        end;

    if (dbgItens.GetFieldValue(ANode, 'BaixaEstoque', 'N') = 'N') and (DMSaida.C_TabelaBaixaEstoque.Value = 'S') then
        AFont.Style := AFont.Style + [fsItalic];

    if (dbgItens.GetFieldValue(ANode, 'Situacao', 'N') = 'C') then
        begin
            AFont.Color := clRed;
            AFont.Style := [fsStrikeOut];
        end;

end;

procedure TFrmSaidas.cmbTipoEntregaMouseEnter(Sender: TObject);
begin
    inherited;
    if TWinControl(Sender).Height < 19 then
        TWinControl(Sender).Height := 19;
end;

procedure TFrmSaidas.dfFavorecidoSelecionou(Sender: TObject);
var
    N, D: Currency;
    sMsg: string;
    NF, DF: Integer;
begin
    inherited;
    bDadosModificados := true;
    btLembrete.visible := false;
    if dfFavorecido.ID > 0 then
        btLembrete.visible := DMProjeto.ChecaLembretes(dfFavorecido.ID);
    if DMProjeto.Parametro('AlertasVenda') = 'S' then
        begin
            if not DMSaida.bAlteracao and (DMJanela.nOpenKey = null) then
                begin
                    if (DMSaida.C_TabelaTipoPadrao.Value = 3) and (DMSaida.GetEstimates > 0) and
                        (DlgMsg.ShowMsg(2757, [DMSaida.TipoMovimento('DescTipoPadrao')]) = 100) then //Estimate
                        Localizar('', ' where t.Favorecido = ' + DMSaida.C_TabelaFavorecido.asString)
                    else if (DMSaida.C_TabelaTipoPadrao.Value = 2) and (DMSaida.GetSalesOrders > 0) and
                        (DlgMsg.ShowMsg(2757, [DMSaida.TipoMovimento('DescTipoPadrao')]) = 100) then //Estimate
                        Localizar('', ' where t.Favorecido = ' + DMSaida.C_TabelaFavorecido.asString);
                end;

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
                                DMProjeto.CriarForm('RptInvoicesEmAtraso', self, false);
                                NF := DMProjeto.FormExiste('RptInvoicesEmAtraso');
                            end;

                        if D > 0 then
                            begin
                                DMProjeto.SetParametrosForm([dfFavorecido.ID]);
                                DMProjeto.CriarForm('RptChequesDevolvidos', self, false);
                                DF := DMProjeto.FormExiste('RptChequesDevolvidos');
                            end;

                        if (N > 0) and (D > 0) then
                            begin
                                Screen.Forms[NF].Top := 0;
                                Screen.Forms[DF].Top := (DMProjeto.MDIClientHeight - Screen.Forms[DF].Height) - 3;
                            end;
                    end;
        end;
        if ((dfFavorecido.ID > 0)) then
           try
             dbgItens.SetFocus;
           Except
           End;  
end;

procedure TFrmSaidas.AtualizaDadosCliente;
var
    N, D: Currency;
    TP: Integer;
begin
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    dbtCliente.Hint := '';
    dbtCliente.Font.Color := clBlack;

    if DMSaida.C_TabelaFavorecido.Value <> 1 then
        begin
            if DMSaida.C_TabelaFavorecido.Value <> 0 then
                lbLocalEntrega.LinkTo := 'FrmLocaisEntrega'
            else
                begin
                    lbLocalEntrega.LinkTo := '';
                    TP := IIF(DMSaida.TipoMovimento('TabelaPadrao') <> '', StrToIntDef(DMSaida.TipoMovimento('TabelaPadrao'), 0), DMProjeto.nTabelaPadraoFunc);
                    if not DMSaida.bAlteracao and (DMSaida.C_Tabela.Active) and (TP <> DMSaida.C_TabelaTabelaPadrao.Value) then
                        begin
                            DMSaida.C_Tabela.Edit;
                            DMSaida.C_TabelaTabelaPadrao.Value := TP;
                        end;
                end;

            if DMSaida.C_TabelaF_CREDITO.Value > 0 then
                begin
                    dfFavorecido.Hint := 'Crédito: ' + FormatCurr('##,##0.00', DMSaida.C_TabelaF_CREDITO.Value);
                    dfFavorecido.Buttons[2].Visible := true;
                end
            else
                begin
                    dfFavorecido.Hint := '';
                    dfFavorecido.Buttons[2].Visible := False;
                end;

            N := DMSaida.GetAtrasados;
            if N > 0 then
                begin
                    dbtCliente.Hint := 'Cliente com Parcelas atrasadas no valor de ' + FormatCurr('##,##0.00', N) + #13;
                    dbtCliente.Font.Color := clRed;
                end;

            D := DMSaida.GetDevolvidos;
            if D > 0 then
                begin
                    dbtCliente.Hint := dbtCliente.Hint + 'Cliente com Cheques Devolvidos no valor de ' + FormatCurr('##,##0.00', D);
                    dbtCliente.Font.Color := clRed;
                end;

            if DMSaida.GetReembolsos > 0 then
                btComando1.Font.Color := clRed
            else
                btComando1.Font.Color := clBlack;

            pnFotoCliente.Visible := (DMSaida.C_TabelaF_Logotipo.Value <> '');

            if not DMSaida.bAlteracao and (DMSaida.C_TabelaF_Situacao.Value = 'B') then
                DlgMsg.ShowMsg(2152, [DMSaida.C_TabelaF_OBS.Value]);

            if pnLocalEntrega.Visible then
                with DMSaida do
                    begin
                        C_LocaisEntrega.Close;
                        C_LocaisEntrega.Open;
                    end;
        end;

end;

procedure TFrmSaidas.dbtClienteMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmCliente.PopupFromCursorPos;
end;

procedure TFrmSaidas.dxBarSituacaoClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaFAVORECIDO.Value, cmbTipoFav.LookupKeyValue]);
    DMProjeto.CriarForm('DlgSitCliente', Self, True);
end;

procedure TFrmSaidas.dxBarExtratoFinanceiroClick(Sender: TObject);
begin
    inherited;
    DMProjeto.ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTO', DMSaida.C_TabelaFAVORECIDO.Value);
end;

procedure TFrmSaidas.dxBarUltimasVendasClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaFAVORECIDO.Value, DMSaida.C_TabelaF_NOME.AsString, cmbTipoFav.LookupKeyValue {TipoFav}]);
    DMProjeto.CriarForm('DlgUltimasVendas', Self, True);
end;

procedure TFrmSaidas.dfFavorecidoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 2 then
        DMProjeto.ImprimirRelatorioFavorecido(Self, 'CREDITO', DMSaida.C_TabelaFavorecido.Value);
end;

procedure TFrmSaidas.DBEdit2Change(Sender: TObject);
begin
    inherited;
    sFoto := DMSaida.C_Itens.FieldByName('icFoto').asString;

    if sFoto <> '' then
        begin
            try
                dfFoto.Picture.LoadFromFile(DMProjeto.ImgPath + sFoto);
            except
                //dfFoto.Picture.
            end;
        end
    else
        begin
            if fileexists(DMProjeto.ProgPath + 'TSLogo.bmp') then
                dfFoto.Picture.LoadFromFile(DMProjeto.ProgPath + 'TSLogo.bmp')
            else
                dfFoto.Picture := nil;
        end;
end;

procedure TFrmSaidas.dbgTabelasPrecoChangeNode(Sender: TObject; OldNode,
    Node: TdxTreeListNode);
begin
    inherited;
    dxCalcDisplay.Text := VarToStr(dbgTabelasPreco.GetFieldValue(Node, 'Preco', '0', true));
end;

procedure TFrmSaidas.dbgItensPRECOPopup(Sender: TObject;
    const EditText: string);
begin
    inherited;
    {Abrindo Popup do Preco}

    {Filtrando ProdutosPreco}
    if DMSaida.C_ItensI_TIPOITEM.Value in [1, 2, 3] then
        begin
            DMSaida.LocalizarTabelaItem(DMSaida.C_ItensITEM.asInteger, DMSaida.C_ItensTabelaPreco.Value, DMSaida.C_ItensUnidade.Value);

            DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_TabelaTabelaPadrao.Value, []);
            lbTabelaPadrao.Caption := DMSaida.C_ProdutosPrecoDescricao.Value;

            DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_ItensTabelaPreco.Value, []);

        end;

    dxCalcDisplay.Text := EditText;

end;

procedure TFrmSaidas.dbgItensPRECOCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;

    dbgTabelasPreco.DataSource := nil;

    Accept := true;

end;

procedure TFrmSaidas.dbgItensPRECOInitPopup(Sender: TObject);
begin
    inherited;

    dbgItensPRECO.PopupControl := nil;

    dbgTabelasPreco.DataSource := DMSaida.C_ProdutosPrecoDS;

    if (DMSaida.C_ItensI_TIPOITEM.Value in [1, 2, 3]) then
        begin
            pnPreco.Height := 278;
            pnOutros.Visible := True;
        end
    else
        begin
            pnOutros.Visible := false;
            pnPreco.Height := 169;
        end;

    dbgItensPRECO.PopupControl := pnPreco;
end;

procedure TFrmSaidas.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    bPermitirSalvar := True;
    btLembrete.visible := false;
    dbtCliente.Hint := '';
    dbtCliente.Font.Color := clBlack;
    btComando1.Font.Color := clBlack;

    pgItens.ActivePage := tsItens;
    cmbTipoMovimento.ReadOnly := False;
    dbgParcelasSaldo.Visible := False;

    btComando2.Visible := false;

    if (bmpSeta <> nil) and not bmpSeta.Empty then
        pnFotoCliente.BackGroundOptions.Picture.Bitmap.Assign(bmpSeta);
    pnFotoCliente.Width := 9;
    pnFotoCliente.Height := 83;

    //    if DMProjeto.Parametro('SolicitarVendedorPV') = 'S' then begin
    //       Screen.Cursor := crDefault;
    //       DlgVendedorVR := TDlgVendedorVR.Create(self);
    //
    //       DlgVendedorVR.DM := DMSaida;
    //       if DlgVendedorVR.ShowModal = -1 then begin
    //          DlgVendedorVR.Release;
    //          exit;
    //       end;
    //       DlgVendedorVR.Release;
    //       DlgVendedorVR := nil;
    //    End;

end;

procedure TFrmSaidas.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'CONTABILID') then
        exit;

    if not (DMSaida.C_TabelaTipoPadrao.value in [1, 6]) then
        begin
            DlgMsg.ShowMsg(3093);
            exit;
        end;

    DMSaida.Contabiliza;

    DMSaida.MostraContabilidade;
    ////////////////
end;

procedure TFrmSaidas.dxBarUltimoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Saida = ' + LastKeyFor('Last'));
end;

procedure TFrmSaidas.dxBarUltParaClienteClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Saida = ' + LastKeyFor('Client'));
end;

procedure TFrmSaidas.dxBarUltParaDataClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Saida = ' + LastKeyFor('Date'));
end;

procedure TFrmSaidas.dxBarUltParaOperacaoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Saida = ' + LastKeyFor('Mov'));
end;

procedure TFrmSaidas.dxBarUltCanceladoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Saida = ' + LastKeyFor('Void'));
end;

function TFrmSaidas.LastKeyFor(Tipo: string): string;
begin
    with Q_SQLt do
        begin
            Close;
            // Felipe - Ocorria erro em operações com tipo padrão diferente do Tipo Padrão de Abertura - 13/10/2014
            //SQL.Text := 'Select max(Saida) as LastKey from Saidas where tipopadrao = ' + IntToStr(nTipoPadraoAbertura) + ' and ';

            SQL.Text := 'Select max(Saida) as LastKey from Saidas where ';
            if Tipo = 'Last' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' '
            else if Tipo = 'Client' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and Favorecido = ' + IntToStr(dfFavorecido.ID)
            else if Tipo = 'Date' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and Data = :Data'
            else if Tipo = 'Mov' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and TipoMovimento = ' + DMSaida.C_TabelaTIPOMOVIMENTO.AsString
            else if Tipo = 'Void' then
                SQL.Text := SQL.Text + ' Situacao = ''C'' ';

            if Tipo = 'Date' then
                Params[0].asDateTime := DMSaida.C_TabelaData.Value;

            try
                Open;
                Result := FieldByName('LastKey').asString;

                if Result = '' then
                    Result := '0';
            except
                Result := '0';
            end;

            Close;

        end;

end;

procedure TFrmSaidas.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    bPermitirSalvar := True;
    btComando2.Visible := True;
    btComando2.Top := bv3.Top + 2;

    {  if DMSaida.C_TabelaTipoPadrao.Value = 1 then}
    if DMSaida.C_TabelaTM_GERAFINANCEIRO.Value = 'S' then
        dbgParcelasSaldo.Visible := True;

    cmbTipoMovimento.ReadOnly := true;

end;

procedure TFrmSaidas.ppmParcelasPopup(Sender: TObject);
begin
    inherited;

    DMSaida.C_PlanosPagamento.Locate('PlanoPagamento', DMSaida.C_TabelaPlanoPagamento.Value, []);

    ExcluirParcela1.Visible := DMSaida.C_ParcelasPgtos.Value = 0;
    CancelarParcela1.Visible := DMSaida.C_ParcelasPgtos.Value > 0;
    Atualizar1.Caption := 'Atualizar: ' + lbTotalFinal.Caption;
end;

procedure TFrmSaidas.dxBarCadastroClienteClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_TabelaFavorecido.Value <> 0 then
        DMProjeto.SetParametrosForm([DMSaida.C_TabelaFavorecido.Value]);

    DMProjeto.C_TipoFav.Locate('TipoFavorecido', cmbTipoFav.LookupKeyValue, []);

    DMProjeto.CriarForm(DMProjeto.C_TipoFavFORM.Value, Self, true);
end;

procedure TFrmSaidas.dbgParcelasCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var
    nStatus: Integer;
begin
    inherited;
    nStatus := dbgParcelas.GetFieldValue(ANode, 'Status', 0);

    if (nStatus = -1) then {Não é Invoice}
        AColor := $00CAF4FF
    else if (nStatus = 0) then
        begin
            AFont.Color := clRed;
            AFont.Style := [fsStrikeOut];
        end
    else if (nStatus = 3) then {Atraso}
        AFont.Color := clRed
    else if (nStatus >= 50) then {Liquidado}
        AFont.Color := clBlue
    else if (dbgParcelas.GetFieldValue(ANode, 'Pgtos', 0) > 0) and
        (dbgParcelas.GetFieldValue(ANode, 'Pgtos', 0) < dbgParcelas.GetFieldValue(ANode, 'Valor', 0)) then {Pgto Parcial}
        AFont.Color := clNavy;
end;

procedure TFrmSaidas.pgItensChangingToTab(Sender: TObject; tab: Integer;
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

    if (pgitens.Pages[Tab].PageIndex > pgItens.ActivePageIndex) then
        T_Termos.Prepare(pgItens.Parent, r)
    else if (pgitens.Pages[Tab].PageIndex < pgItens.ActivePageIndex) then
        T_Itens.Prepare(pgItens.Parent, r);

end;

procedure TFrmSaidas.pgItensChange(Sender: TObject);
begin
    inherited;
    if pgItens.LastTab = tsItens then
        begin
            if DMSaida.C_Itens.Active and (DMSaida.C_Itens.State <> dsBrowse) then
                DMSaida.C_Itens.Post;
        end
    else if pgItens.LastTab = tsTermos then
        begin
            if DMSaida.C_Parcelas.Active and (DMSaida.C_Parcelas.State <> dsBrowse) then
                DMSaida.C_Parcelas.Post;
        end;

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

    {Atribuindo o Plano de Pagamento Padrão do Cliente - se existir}
    if DMSaida = nil then
        exit;

    if (DMSaida <> nil) and not DMSaida.bAlteracao and (pgItens.ActivePage = tsTermos) then
        if (DMSaida.C_TabelaPlanoPagamento.Value = 0) and
            (DMSaida.C_TabelaF_PLANOPAGAMENTO.Value <> 0) then
            begin
                DMSaida.C_Tabela.Edit;
                DMSaida.C_TabelaPlanoPagamento.Value := DMSaida.C_TabelaF_PLANOPAGAMENTO.Value;
            end;

    cbReceber.Visible := cbReceber.Visible and (DMSaida.C_TabelaStatus.Value <> 'X');
    if not cbReceber.Visible then
        cbReceber.Checked := false;

end;

procedure TFrmSaidas.lbTermosSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaPlanoPagamento.asVariant, 'S']);
end;

procedure TFrmSaidas.ppmClientePopup(Sender: TObject);
var
    nBalance: Currency;
begin
    inherited;
    {Saldos e Limites}
    Limite.Caption := SeparaStrings(Limite.Caption, ':', 1) + ':  ' +
        DMSaida.C_TabelaF_LIMITECREDITO.DisplayText;

    with Q_SQLt do
        begin
            Close;
            SQL.Text := 'Select (Select Sum(FaltaReceber) ' +
                '        From TitulosAReceber t where (t.empresa = :empresa) and t.Cliente = f.Favorecido ' +
                '        and  t.Status > 0 and t.Status < 50) as PAReceber, ' +
                '       (Select Sum(Valor) from DepositosDoc dd, Depositos d, FormasPagamento Fp ' +
                '        Where (dd.empresa = :empresa) and dd.Deposito = d.Deposito and dd.FormaPagamento = Fp.FormaPagamento ' +
                '        and   d.Favorecido = f.Favorecido and dd.Status < 50 and Fp.Especie = 1 ' +
                '        and   dd.Vencimento > ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)) + ') ' +
                '        as ChqPre ' +
                'From Favorecidos f Where Favorecido = ' + DMSaida.C_TabelaFavorecido.asString;
            Open;
            parambyname('Empresa').AsInteger := DMProjeto.nEmpresaLogada;
            nBalance := FieldByNAme('PAReceber').asCurrency +
                FieldByName('ChqPre').asCurrency;
            Close;

            EmAberto.Caption := SeparaStrings(EmAberto.Caption, ':', 1) + ':  ' +
                FormatCurr('##,##0.00', nBalance);
        end;

    SaldoCompra.Caption := SeparaStrings(SaldoCompra.Caption, ':', 1) + ':  ' +
        FormatCurr('##,##0.00', DMSaida.C_TabelaF_LIMITECREDITO.asCurrency - nBalance);
end;

procedure TFrmSaidas.pnFotoClienteClick(Sender: TObject);
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
                pnFotoCliente.BackGroundOptions.Picture.LoadFromFile(DMProjeto.ImgPath + DMSaida.C_TabelaF_Logotipo.Value);
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

procedure TFrmSaidas.DBEdit3Change(Sender: TObject);
begin
    inherited;
    AtualizaDadosCliente;
end;

procedure TFrmSaidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    if bmpSeta <> nil then
        bmpSeta.Free;
    if DMSaida.ContabilidadeAtivado then
        DMSaida.ContabilidadeDesativado;
    ////////////////////
end;

procedure TFrmSaidas.dbtTotalFinalAfterEdit(Sender: TObject);
var
    nDif: Currency;
begin
    inherited;
    if DMProjeto.Parametro('ParcelasSemImpostoFonte') = 'S' then Exit;

    {Atualizando os Campos Despesas ou Descontos conforme valor digitado pelo usuário}
    nDif := DMSaida.C_TabelaTOTALITENS.asCurrency +
        DMSaida.C_TabelaDESCONTO.asCurrency + {O Desconto é negativo}
    DMSaida.C_TabelaFRETE.asCurrency +
        DMSaida.C_TabelaIMPOSTO.asCurrency +
        DMSaida.C_TabelaOUTRASDESPESAS.asCurrency +
        DMSaida.C_TabelaJUROS.asCurrency;

    {Novo Total Digitado}
    nDif := DMSaida.C_TabelaTotal.asCurrency - nDif;

    if nDif <> 0 then
        begin
            DMSaida.C_Tabela.Edit;

            if nDif > 0 then {=> + Despesas}
                DMSaida.C_TabelaOUTRASDESPESAS.asCurrency := DMSaida.C_TabelaOUTRASDESPESAS.asCurrency + nDif
            else {=> Desconto}
                DMSaida.C_TabelaDESCONTO.asCurrency := DMSaida.C_TabelaDESCONTO.asCurrency + nDif;

        end;

end;

procedure TFrmSaidas.T_TermosAfterTransition(Sender: TObject);
begin
    inherited;
    dfObs.Invalidate;
    cmbTermos.Invalidate;
    cbReceber.Invalidate;
    pnDescontos.Invalidate;
    dfDesconto.Invalidate;
end;

procedure TFrmSaidas.ReceberPgtos;

    function PagoInvoice(INVOICE: Integer): Currency;
    begin
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Select Sum( Valor - FaltaReceber) as Pgtos ' +
                    'From TitulosAReceber where Status > 0 and empresa = :empresa and Venda = :S ';
                Params[0].asInteger := DmProjeto.nEmpresaLogada;
                Params[1].AsInteger := INVOICE;
                Open;

                result := FieldByName('Pgtos').asCurrency;

                Close;

            end;
    end;
var
    sIDsTitulos: string;
begin
    {  if cbReceber.Checked and (DMSaida.C_TabelaTipoPadrao.Value = 1) and
         (DMSaida.C_Parcelas.RecordCount > 0) then begin}
    if cbReceber.Checked and (DMSaida.C_TabelaTM_GERAFINANCEIRO.Value = 'S') and
        (DMSaida.C_Parcelas.RecordCount > 0) then
        begin

            DMProjeto.FecharForm('DlgDepositos');
            sIDsTitulos := dbgParcelas.Distinct('ID');
            DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFavorecido.Value, sIDsTitulos]);
            DMProjeto.CriarForm('DlgDepositos', self, true);

            if DMSaida.bAlteracao then
                begin
                    DMSaida.RefreshParcelas;
                    DMSaida.C_Tabela.Edit;
                    DMSaida.C_TabelaPagoInvoice.asCurrency := PagoInvoice(DMSaida.C_TabelaIDMEstre.Value);
                    DBEdit4Change(Self); //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
                end;
        end
    else if cbReceber.Checked then
        begin
            DMProjeto.FecharForm('DlgDepositosInstantaneos');
            DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFavorecido.Value]);
            DMProjeto.CriarForm('DlgDepositosInstantaneos', self, true);
        end;
end;

procedure TFrmSaidas.FormComponentGravou(Sender: TObject);
begin
    inherited;

    {Recebendo Pagamentos para o Movimento gravado}
    if not bOutroSalvar then
        begin
            ReceberPgtos; //Este método já verifica se o CheckBox está marcado.
        end;

    if cbImprimir.Checked then
        ImprimirDocs;

    if DMSaida.bAlteracao then
        AtualizaDadosCliente;

end;

procedure TFrmSaidas.DBEdit4Change(Sender: TObject);
begin
    inherited;
    cmbTermos.ReadOnly := False;
    lbDesativado.Visible := false;
    if DMSaida.bAlteracao then
        begin
            if (DMSaida.C_TabelaPagoInvoice.asCurrency > 0) or (DMSaida.ExistemParcelasRenegociadas) then
                cmbTermos.ReadOnly := True
            else
                cmbTermos.ReadOnly := false;

            {    if DMSaida.C_TabelaTipoPadrao.Value = 1 then begin}
            if DMSaida.C_TabelaTM_GERAFINANCEIRO.Value = 'S' then
                begin
                    if (DMSaida.C_TabelaPagoInvoice.asCurrency > 0) and
                        (truncar(DMSaida.C_TabelaPagoInvoice.asCurrency, 2) < truncar(DMSaida.C_TabelaTotal.asCurrency, 2)) then
                        begin
                            bPermitirSalvar := false;
                            lbDesativado.Caption := 'Pgto. Parcial';
                            lbDesativado.Font.Color := clNavy;
                            T_StatusInvoice.Prepare(lbDesativado.Parent, lbDesativado.BoundsRect);
                            try
                                lbDesativado.Visible := true;
                                if T_StatusInvoice.Prepared then
                                    T_StatusInvoice.Execute;
                            finally
                                T_StatusInvoice.unPrepare;
                            end;

                        end
                    else if truncar(DMSaida.C_TabelaPagoInvoice.asCurrency, 2) >= truncar(DMSaida.C_TabelaTotal.asCurrency, 2) then
                        begin
                            bPermitirSalvar := false;
                            lbDesativado.Caption := 'Liquidado';
                            lbDesativado.Font.Color := clBlue;
                            lbDesativado.Visible := true;
                        end;
                end;
        end; //TipoPadrao

end;

procedure TFrmSaidas.dxBarExcluirClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_Parcelas.Active and (DMSaida.C_Parcelas.RecordCount > 0) and
        DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'EXCLUIPARC') then
        begin
            with Q_SQLt do
                begin
                    SQL.Text := 'Select (Valor - FaltaReceber) as Pgtos ' +
                        'From TitulosAReceber where ID = :ID and Empresa = :Empresa';
                    Params[0].asInteger := DMSaida.C_ParcelasID.Value;
                    Params[1].asInteger := DmProjeto.nEmpresaLogada;
                    Open;

                    if FieldByName('Pgtos').asCurrency > 0 then
                        begin
                            Close;
                            DlgMsg.ShowMsg(2151);
                            Exit;
                        end;
                    Close;

                end;
            DMSaida.C_Parcelas.Delete;
        end;
end;

procedure TFrmSaidas.dxBarIncluirClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_Parcelas.Active then
        DMSaida.C_Parcelas.Append;
end;

procedure TFrmSaidas.lbDesativadoDblClick(Sender: TObject);
begin
    {Mostrar Pagamentos}
end;

procedure TFrmSaidas.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
var
    s: string;
begin
    inherited;

    if (LastDataObject.TableName = 'PLANOSPAGAMENTO') and cmbTermos.ReadOnly then
        bSkip := true;

    DMProjeto.C_TipoFav.Locate('TipoFavorecido', cmbTipoFav.LookupKeyValue, []);
    s := DMProjeto.C_TipoFavForm.Value;

    if (LastDataObject.TableName = 'FAVORECIDOS') and (LastDataObject.FormName = UpperCase(s)) and
        (ActiveControl = dfFavorecido) and (LastDataObject.ObjectKey <> null) then
        dfFavorecido.ID := LastDataObject.ObjectKey
    else if (LastDataObject.TableName = 'ITENS') then
        begin
            bSkip := true;
        end;

    if UpperCase(LastDataObject.TableName) = 'TERMOSCONTRATOS' then
        begin
            DMSaida.C_TermosContratos.Close;
            DMSaida.C_TermosContratos.Open;
        end;
end;

procedure TFrmSaidas.btImprimirClick(Sender: TObject);
begin
    inherited;

    ImprimirDocs;

end;

procedure TFrmSaidas.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    bDadosModificados := False;
end;

procedure TFrmSaidas.dxBarReceberPgtoClick(Sender: TObject);

    function PagoInvoice(INVOICE: Integer): Currency;
    begin
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Select Sum( Valor - FaltaReceber) as Pgtos ' +
                    'From TitulosAReceber where Status > 0 and Venda = :S and Empresa = :Empresa';
                Params[0].asInteger := INVOICE;
                Params[1].asInteger := DMProjeto.nEmpresaLogada;

                Open;

                result := FieldByName('Pgtos').asCurrency;

                Close;

            end;
    end;
var
    sIDsTitulos: string;
begin
    inherited;
    {  if (DMSaida.C_TabelaTipoPadrao.Value = 1) and
         (DMSaida.C_Parcelas.RecordCount > 0) then begin}
    if (DMSaida.C_TabelaTM_GERAFINANCEIRO.Value = 'S') and
        (DMSaida.C_Parcelas.RecordCount > 0) then
        begin
            sIDsTitulos := dbgParcelas.Distinct('ID');
            //DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFavorecido.Value, sIDsTitulos]);
            DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFavorecido.Value, sIDsTitulos, null, InttoStr(DMSaida.C_TabelaPDV.Value)]);
            DMProjeto.CriarForm('DlgDepositos', self, true);

            {Fazendo o Refresh nas Parcelas}
            DMSaida.RefreshParcelas;

            DMSaida.C_Tabela.Edit;
            DMSaida.C_TabelaPagoInvoice.asCurrency := PagoInvoice(DMSaida.C_TabelaIDMEstre.Value);
            DBEdit4Change(Self); //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
        end
    else
        begin
            DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFavorecido.Value]);
            DMProjeto.CriarForm('DlgDepositosInstantaneos', self, true);
        end;

end;

procedure TFrmSaidas.dxBarVerPagamentosClick(Sender: TObject);
begin

    DMProjeto.VerRecebimentos(-1, DMSaida.C_TabelaIDMestre.Value, DMSaida.C_TabelaF_Nome.Value);

end;

procedure TFrmSaidas.dbgItensEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
var
    I: Variant;
    Col: Integer;
begin
    inherited;
    if not Allow then
        exit;

    I := Node.Values[dbgItens.FindColumnByFieldName('I_TIPOITEM').Index];
    if I = null then
        I := 1;

    Col := dbgItens.GetAbsoluteColumnIndex(dbgItens.FocusedColumn);

    {  case I of
        4: Begin
             Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
           end;
        5: if dbgItens.GetFieldValue(Node,'I_Percentual', 0) > 0 then begin
             Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
           end;
        6: Begin
             Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
           end;
        7: Begin
             Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
           end;
      end;}

    if (UpperCase(dbgItens.Columns[Col].FieldName) = 'LKUNIDADE') and (
        ((DMSaida.C_ItensMesclado.Value = 'S') or (DMSaida.C_ItensQtdFaturada.Value > 0)) or
        (DMSaida.C_ItensHasChildren.value = 'S')) then
        Allow := false;

end;

procedure TFrmSaidas.FormComponentLayoutChange(Sender: TObject; LayoutGrid: Boolean;
    var bSkip: Boolean);
begin
    inherited;
    if FormatoTabela.Checked then
        begin
            if bDadosModificados then
                begin
                    DMSaida.C_Tabela.UndoLastChange(false);
                end;
        end;
end;

procedure TFrmSaidas.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    bNaoPermitirAlterarItemVenda := (DMPRojeto.Parametro('PermitirAlterarItemVenda') = 'N');
    bNAOPermitirItemDuplicado := (DMProjeto.Parametro('PermitirItemDuplicado') = 'N');
    dfVolumes.DataSource := DMSaida.C_TabelaDS;
    lcbLocaisEntrega.ListSource := DMSaida.C_LocaisEntregaDS;
    lcbLocaisEntrega.ListFieldName := 'Descricao';
    lcbLocaisEntrega.KeyFieldName := 'Entrega';
    {Setando as Permissões}
    dfStatus.ReadOnly := not DMProjeto.LerPermissao(Self.Name, 'ALTSTATUSO');
    TS_Label1.Enabled := not dfStatus.ReadOnly;
    {Alterar Comissão}
    dfComissao.ReadOnly := not DMProjeto.LerPermissao(Self.Name, 'ALTCOM');

    dbtData.Enabled := DMProjeto.LerPermissao(Self.Name, 'ALTDATAMOV');

    lbComissao.Enabled := not dfComissao.ReadOnly;
    {Alterar Preço do Item}
    dbgItensPreco.DisableEditor := not DMProjeto.LerPermissao(Self.Name, 'ALTPRECO');
    //    dbgItensSubTotal.DisableEditor := dbgItensPreco.DisableEditor;
    dbgItensSubTotal.DisableEditor := True;
    {}
    dbgItensI_UNIDADE.DisableEditor := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';

    nTipoPadraoAbertura := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), 1);

    DMSaida.nTipoMovimento := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), 0);

    dbgItenslkAlmox.DisableCustomizing := DMProjeto.Parametro('MultiAlmox') <> 'S';
    dbgItenslkAlmox.Visible := (DMProjeto.Parametro('MultiAlmox') = 'S') and (DMProjeto.Parametro('AlmoxSaida') = 'S');
    EstoquePorAlmoxarifado1.Visible := dbgItenslkAlmox.Visible;
    try
        if DMSaida.C_TiposMovimento.Locate('TipoPadrao', nTipoPadraoAbertura, []) then
            DMSaida.nTipoMovPadrao := DMSaida.C_TiposMovimentoTipoMovimento.Value;
    except
        DMSaida.nTipoMovPadrao := DMSaida.C_TiposMovimentoTipoMovimento.Value;
    end;

    sTipoAbertura := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), '');

    {Interfaceando com Producoes por Cliente}
    {O timer é utilizado para que os comandos sejam executados sob a visualização do usuário}
    if sTipoAbertura = 'TROCA DE INVOICE' then
        begin
            sItemsOut := DMProjeto.GetParametrosForm(3);
            nToInvoice := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    if sTipoAbertura = 'ADICIONAR NA INVOICE' then
        begin
            sProducoes := DMProjeto.GetParametrosForm(3);
            tmInvoice.Enabled := true;
        end;

    if sTipoAbertura = 'GERAR INVOICE' then
        begin
            nCliente := DMProjeto.GetParametrosForm(3);
            sProducoes := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    if sTipoAbertura = 'GERAR INVOICE NP' then
        begin
            nCliente := DMProjeto.GetParametrosForm(3);
            nChaveCliente := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    if sTipoAbertura = 'UPDATE PRODUCOES' then
        begin
            nCliente := DMProjeto.GetParametrosForm(3);
            sProducoes := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    if sTipoAbertura = 'FATURAR OPERACAO' then
        begin
            nMovFaturar := DMProjeto.GetParametrosForm(3);
            nOpFaturamento := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    DefinirTipoMovAbertura(IIF(nTipoPadraoAbertura <> 0, nTipoPadraoAbertura, 1),
        DMSaida.bAlteracao and (DMProjeto.GetParametrosForm(0) = null),
        (Esquerda(sTipoAbertura, 5) = 'GERAR'));

    try
        DMProjeto.nCasasDecimais := StrToInt(DMProjeto.Parametro('CasasDecimais'));
        DMProjeto.sCasasDecimais := '#,###,##0.' + Copy('0000000000', 1, DMProjeto.nCasasDecimais);
    except
        DMProjeto.nCasasDecimais := 2;
        DMProjeto.sCasasDecimais := '##,##0.00';
    end;

end;

procedure TFrmSaidas.tmInvoiceTimer(Sender: TObject);
begin
    inherited;
    tmInvoice.Enabled := false;

    if sTipoAbertura = 'TROCA DE INVOICE' then
        begin
            TrocarItensInvoice;
            dbgItensFuncProducao.Visible := true;
        end
    else if sTipoAbertura = 'ADICIONAR NA INVOICE' then
        begin
            AdicionarProducao;
            dbgItensFuncProducao.Visible := true;
        end
    else if sTipoAbertura = 'FATURAR OPERACAO' then
        begin
            FaturarOperacao;
        end
    else if sTipoAbertura = 'UPDATE PRODUCOES' then
        begin
            bProcessamento := false;
            UpdateProducoes;
            dbgItensFuncProducao.Visible := true;
        end
    else if sTipoAbertura = 'GERAR INVOICE' then
        begin
            bProcessamento := true;
            GerarInvoiceDeProducoes;
            dbgItensFuncProducao.Visible := true;
        end
    else if sTipoAbertura = 'GERAR INVOICE NP' then
        begin
            bProcessamento := true;
            GerarInvoiceDeChaveCliente;
            dbgItensFuncProducao.Visible := true;
        end;

end;

procedure TFrmSaidas.TrocarItensInvoice;
var
    i: Integer;
    asItems: TStringList;
begin
    asItems := TStringList.Create;

    cbReceber.Checked := false;

    for i := 1 to ContaStrings(sItemsOut, ',') do
        with DMSaida do
            begin
                if C_Itens.Locate('IDITEM', StrToIntDef(SeparaStrings(sItemsOut, ',', i), 0), []) then
                    begin
                        {Salvando - Item}
                        asItems.Add(C_ItensItem.asString + ';' + C_ItensQuantidade.asString + ';' +
                            C_ItensPreco.asString + ';' + C_ItensDescricao.asString + ';' +
                            C_ItensProducao.asString + ';' + // C_ItensTaxavel.asString + ';' +
                            C_ItensFuncProducao.asString);

                        {Apagando}
                        C_Itens.Delete;
                    end;
            end;

    DMSaida.JurosParcelas; //Para não fazer a pergunta sobre diferenças entre soma de parcelas e o total;
    if not DMSaida.Gravar then
        exit;

    if DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nToInvoice)) <= 0 then
        exit;

    for i := 0 to asItems.Count - 1 do
        with DMSaida do
            begin
                C_Itens.Append;
                dbgItens.TS_ID := StrToIntDef(SeparaStrings(asItems[i], ';', 1), 0); //Localiza o Item

                C_ItensDescricao.Value := SeparaStrings(asItems[i], ';', 4);
                C_ItensQuantidade.Value := StrToFloatDef(SeparaStrings(asItems[i], ';', 2), 0);
                C_ItensPreco.Value := StrToFloatDef(SeparaStrings(asItems[i], ';', 3), 0);
                C_ItensProducao.Value := StrToIntDef(SeparaStrings(asItems[i], ';', 5), 0);
                //    C_ItensTaxavel.Value := SeparaStrings( asItems[i], ';', 6);
                C_ItensFuncProducao.Value := StrToIntDef(SeparaStrings(asItems[i], ';', 6), 0);

                C_Itens.Post;

            end;

    DMSaida.Gravar;

end;

procedure TFrmSaidas.AdicionarProducao;
begin
    if sProducoes = '' then
        exit;

    if not dbgItensFuncProducao.Visible then
        dbgItensFuncProducao.Visible := true;

    with DMSaida do
        begin
            Q_SQLt.Close;
            Q_SQLt.SQL.Text := 'Select pf.*, f.Nome ' +
                'from ProducoesFunc pf INNER JOIN Favorecidos F ON f.Favorecido = pf.Funcionario ' +
                'Where pf.Producao in (' + sProducoes + ') order by f.Nome ';
            Q_SQLt.Open;

            while not Q_SQLt.EOF do
                begin
                    C_Itens.Append;
                    dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item

                    C_ItensQuantidade.Value := Q_SQLt.FieldByName('QtdHoras').asFloat;
                    C_ItensPreco.Value := Q_SQLt.FieldByName('ValorContrato').asCurrency;
                    C_ItensProducao.Value := Q_SQLt.FieldByName('Producao').asInteger;
                    C_ItensFuncProducao.Value := Q_SQLt.FieldByName('Funcionario').asInteger;

                    Q_SQLt.Next;
                end;

            C_Itens.Post;

            Q_SQLt.Close;

            if C_TabelaF_AgruparPorItem.Value = 'S' then
                AgruparPorItem;

            JurosParcelas; //Para ajustar as parcelas automaticamente, sem questionar o usuário;
            Gravar;

        end;
end;

procedure TFrmSaidas.GerarInvoiceDeChaveCliente;
var
    nGrupo: Integer;
    Despesas: Currency;
begin
    if not dbgItensFuncProducao.Visible then
        dbgItensFuncProducao.Visible := true;

    cbReceber.Checked := false;

    with DMSaida do
        begin
            Q_SQLt.Close;
            Q_SQLt.SQL.Text := 'Select pf.*, f.Nome, c.metodopgto ' +
                'from ProducoesFunc pf ' +
                'INNER JOIN Favorecidos F ON f.Favorecido = pf.Funcionario ' +
                'LEFT JOIN ContratosFav c on pf.contrato = c.contrato ' +
                'Where pf.ChaveCliente = :CC Order by pf.Agrupamento, f.Nome ';
            Q_SQLt.Params[0].asInteger := nChaveCliente;
            Q_SQLt.Open;

            nGrupo := -1;

            {Items de Producao}
            while not Q_SQLt.EOF do
                begin
                    if nGrupo <> Q_SQLt.FieldByName('Agrupamento').asInteger then
                        begin

                            if nGrupo <> -1 then
                                begin //Implica que já é a segunda vez, logo os itens já foram informados.
                                    if C_TabelaF_AgruparPorItem.Value = 'S' then
                                        AgruparPorItem;

                                    if Despesas > 0 then
                                        begin
                                            if DMProjeto.Parametro('ItemDescontoPayroll') = '' then
                                                begin
                                                    C_Tabela.Edit;
                                                    C_TabelaDesconto.Value := Despesas
                                                end
                                            else
                                                begin
                                                    C_Itens.Append;
                                                    dbgItens.TS_ID := StrToIntDef(DMProjeto.Parametro('ItemDescontoPayroll'), 0);
                                                    C_ItensQuantidade.Value := 1;
                                                    C_ItensPreco.Value := Despesas;
                                                    C_Itens.Post;
                                                end;
                                        end;

                                    inherited btGravarClick(self); //Finalizando a invoice para o grupo e entrando no estado inicial.
                                    Estado_Inicial;
                                end;

                            Despesas := 0;

                            {Cliente}
                            dfFavorecido.ID := Q_SQLt.FieldByName('Favorecido').asInteger;

                            {Operacao}
                            if C_TiposMovimento.Locate('TipoPadrao', 1, []) then
                                begin
                                    C_Tabela.Edit;
                                    C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;
                                    cmbTipoMovimento.OnChange(Self);
                                end;

                            {Periodo}
                            C_Tabela.Edit;
                            C_TabelaCAMPO01.Value := 'Period de ' + FormatDateTime(shortdateformat, Q_SQLt.FieldByName('DataInicio').asDateTime) + ' to ' +
                                FormatDateTime(shortdateformat, Q_SQLt.FieldByName('DataFim').asDateTime);
                            C_TabelaOBS.Value := CExp(C_TabelaOBS.Value, #13) +
                                'Period de ' + FormatDateTime(shortdateformat, Q_SQLt.FieldByName('DataInicio').asDateTime) + ' to ' +
                                FormatDateTime(shortdateformat, Q_SQLt.FieldByName('DataFim').asDateTime);

                            {Capturando Grupo}
                            nGrupo := Q_SQLt.FieldByName('Agrupamento').asInteger;

                        end;

                    C_Itens.Append;
                    dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item

                    if Q_SQLt.FieldByName('MetodoPgto').asString = 'V' then
                        C_ItensQuantidade.Value := 1.00
                    else
                        C_ItensQuantidade.Value := Q_SQLt.FieldByName('QtdHoras').asCurrency;

                    C_ItensPreco.Value := Q_SQLt.FieldByName('ValorContrato').asCurrency;
                    C_ItensProducao.Value := Q_SQLt.FieldByName('Producao').asInteger;
                    C_ItensFuncProducao.Value := Q_SQLt.FieldByName('Funcionario').asInteger;

                    Despesas := Despesas + Q_SQLt.FieldByName('Despesas').asCurrency;

                    C_Itens.Post;

                    Q_SQLt.Next;

                end;

            Q_SQLt.Close;

            if Despesas > 0 then
                begin
                    if DMProjeto.Parametro('ItemDescontoPayroll') = '' then
                        begin
                            C_Tabela.Edit;
                            C_TabelaDesconto.Value := Despesas
                        end
                    else
                        begin
                            C_Itens.Append;
                            dbgItens.TS_ID := StrToIntDef(DMProjeto.Parametro('ItemDescontoPayroll'), 0);
                            C_ItensQuantidade.Value := 1.00;
                            C_ItensPreco.Value := Despesas;
                            C_Itens.Post;
                        end;
                end;

            if C_TabelaF_AgruparPorItem.Value = 'S' then
                AgruparPorItem;

        end;
end;

procedure TFrmSaidas.UpdateProducoes;
var nSaida, nSaidaItem: Integer;
    Despesas: Currency;
    sProdsInvoice: string;
begin
    if sProducoes = '' then
        exit;

    cbReceber.Checked := false;

    if not dbgItensFuncProducao.Visible then
        dbgItensFuncProducao.Visible := true;

    with DMSaida do
        begin
            Q_SQLt.Close;
            {Capturando a Saida}
            Q_SQLt.SQL.Text := 'Select Min(Saida) from SaidasItens ' +
                'where SaidaItem in (select SaidaItem from ProducoesFunc where producao in (' + sProducoes + ') ) ';
            Q_SQLt.Open;
            nSaida := Q_SQLt.Fields[0].asInteger;

            Q_SQLt.Close;

            if nSaida <= 0 then
                exit
            else
                Localizar('', ' where t.Saida = ' + IntToStr(nSaida));

            if not DMSaida.bAlteracao then
                exit;

            Q_SQLt.SQL.Text := 'Select pf.*, f.Nome, c.MetodoPgto ' +
                'from ProducoesFunc pf ' +
                'INNER JOIN Favorecidos F ON f.Favorecido = pf.Funcionario ' +
                'LEFT JOIN ContratosFav c on pf.contrato = c.contrato ' +
                'Where pf.Producao in (' + sProducoes + ') order by f.Nome ';
            Q_SQLt.Open;

            {Items de Producao}
            while not Q_SQLt.EOF do
                begin
                    nSaidaItem := Q_SQLt.FieldByName('SAIDAITEM').asInteger;

                    if (nSaidaItem > 0) and (C_Itens.Locate('IDITEM', nSaidaItem, [])) then
                        begin
                            C_Itens.Edit;
                            if Q_SQLt.FieldByName('MetodoPgto').asString <> 'V' then
                                C_ItensQuantidade.Value := Q_SQLt.FieldByName('QtdHoras').asFloat
                            else
                                C_ItensQuantidade.Value := 1.00;

                            C_ItensPreco.Value := Q_SQLt.FieldByName('ValorContrato').asCurrency;

                        end
                    else if (nSaidaItem = 0) then
                        begin
                            C_Itens.Append;
                            dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item

                            if Q_SQLt.FieldByName('MetodoPgto').asString <> 'V' then
                                C_ItensQuantidade.Value := Q_SQLt.FieldByName('QtdHoras').asFloat
                            else
                                C_ItensQuantidade.Value := 1.00;

                            C_ItensPreco.Value := Q_SQLt.FieldByName('ValorContrato').asCurrency;
                            C_ItensProducao.Value := Q_SQLt.FieldByName('Producao').asInteger;
                            C_ItensFuncProducao.Value := Q_SQLt.FieldByName('Funcionario').asInteger;
                        end;

                    C_Itens.Post;

                    Q_SQLt.Next;
                end;

            Q_SQLt.Close;

            Despesas := 0;

            {Atualizando o Desconto}
            if (C_TabelaDesconto.Value <> 0) or (DMProjeto.Parametro('ItemDescontoPayroll') <> '') then
                begin
                    sProdsInvoice := dbgItens.Distinct('Producao');

                    if sProdsInvoice <> '' then
                        begin
                            Q_SQLt.SQL.Text := 'Select Sum(Despesas) from ProducoesFunc where Producao in (' + sProdsInvoice + ') ';
                            Q_SQLt.Open;

                            Despesas := Q_SQLt.Fields[0].asCurrency;
                        end;

                    Q_SQLt.Close;
                end;

            if C_TabelaF_AgruparPorItem.Value = 'S' then
                AgruparPorItem;

            if Despesas > 0 then
                begin
                    if DMProjeto.Parametro('ItemDescontoPayroll') = '' then
                        begin
                            C_Tabela.Edit;
                            C_TabelaDesconto.Value := Despesas;
                        end
                    else if C_Itens.Locate('ITEM', StrToIntDef(DMProjeto.Parametro('ItemDescontoPayroll'), 0), []) then
                        begin
                            C_Itens.Edit;
                            C_ItensPreco.Value := Despesas;
                            C_Itens.Post;
                        end;
                end;

            {Para ajustar automaticamente as parcelas}
            JurosParcelas;

        end;
end;

procedure TFrmSaidas.GerarInvoiceDeProducoes;
var Despesas: Currency;
begin
    if sProducoes = '' then
        exit;

    cbReceber.Checked := false;

    if not dbgItensFuncProducao.Visible then
        dbgItensFuncProducao.Visible := true;

    with DMSaida do
        begin
            Q_SQLt.Close;
            Q_SQLt.SQL.Text := 'Select pf.*, f.Nome, c.MetodoPgto ' +
                'from ProducoesFunc pf ' +
                'INNER JOIN Favorecidos F ON f.Favorecido = pf.Funcionario ' +
                'LEFT JOIN ContratosFav c on pf.contrato = c.contrato ' +
                'Where pf.Producao in (' + sProducoes + ') order by f.Nome ';
            Q_SQLt.Open;

            {Cliente}
            dfFavorecido.ID := nCliente;

            {Operacao}
            if C_TiposMovimento.Locate('TipoPadrao', 1, []) then
                begin
                    C_Tabela.Edit;
                    C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;
                    cmbTipoMovimento.OnChange(Self);
                end;

            Despesas := 0;
            {Items de Producao}
            while not Q_SQLt.EOF do
                begin
                    C_Itens.Append;
                    dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item

                    if Q_SQLt.FieldByName('MetodoPgto').asString <> 'V' then
                        C_ItensQuantidade.Value := Q_SQLt.FieldByName('QtdHoras').asFloat
                    else
                        C_ItensQuantidade.Value := 1.00;
                    C_ItensPreco.Value := Q_SQLt.FieldByName('ValorContrato').asCurrency;
                    C_ItensProducao.Value := Q_SQLt.FieldByName('Producao').asInteger;
                    C_ItensFuncProducao.Value := Q_SQLt.FieldByName('Funcionario').asInteger;

                    C_Itens.Post;

                    Despesas := Despesas + Q_SQLt.FieldByName('Despesas').asCurrency;

                    Q_SQLt.Next;

                end;

            Q_SQLt.Close;

            if C_TabelaF_AgruparPorItem.Value = 'S' then
                AgruparPorItem;

            if Despesas > 0 then
                begin
                    if DMProjeto.Parametro('ItemDescontoPayroll') = '' then
                        begin
                            C_Tabela.Edit;
                            C_TabelaDesconto.Value := Despesas;
                        end
                    else
                        begin
                            C_Itens.Append;
                            dbgItens.TS_ID := StrToIntDef(DMProjeto.Parametro('ItemDescontoPayroll'), 0);
                            C_ItensQuantidade.Value := 1.00;
                            C_ItensPreco.Value := Despesas;
                            C_Itens.Post;
                        end;
                end;
        end;
end;

procedure TFrmSaidas.ppmGridPopup(Sender: TObject);
begin
    inherited;
    ComposiodoItem1.Enabled := DMSaida.C_ItensHasChildren.value = 'S';
    SempreAgruparporItem1.Checked := DMSaida.C_TabelaF_AgruparPorItem.Value = 'S';
    AgruparPorItem1.Checked := (DMSaida.C_TabelaTipoImpressao.Value = 'G') or (SempreAgruparporItem1.Checked);

    {Estoque}
    EstoqueItem.Visible := (DMSaida.C_ItensI_TipoItem.Value = 1);
    if EstoqueItem.Visible then
        begin
            if DMSaida.C_ItenscfBaixoEstoque.Value < 0 then
                EstoqueItem.Caption := SeparaStrings(EstoqueItem.Caption, ':', 1) + ': ' +
                    DMSaida.EstoqueItem(DMSaida.C_ItensITEM.Value) + ' (' +
                    DMSaida.C_ItensUnidade.Value + ')'
            else
                EstoqueItem.Caption := SeparaStrings(EstoqueItem.Caption, ':', 1) + ': ' +
                    FormatCurr('#,##0.0##', (DMSaida.C_ItensI_Estoque.Value / DMSaida.C_ItensFator.Value)) + ' (' +
                    DMSaida.C_ItensUnidade.Value + ')';
        end;
    GrupodeComisses1.Visible := (DMProjeto.Parametro('GrupoComissao') = 'S') and (DMSaida.C_TabelaCALCCOMISSAO.AsString = 'S');
    {Almox}
    EstoquePorAlmoxarifado1.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';

    { Felipe - Opção de CopiarItens habilitada somente quando não houver nenhuma montagem importada para o grid (15/08/2016) }
    CopiarItensdaOperao1.Enabled := DMSaida.idMontagemProduto <= 0;

end;

procedure TFrmSaidas.DefinirTipoMovAbertura;
begin
    {Operacao}
    if (DMSaida.C_TabelaTipoPadrao.Value <> nTipoPadrao) or bNovo then
        begin

            if bChange then
                Estado_Inicial;

            if DMSaida.C_TiposMovimento.Locate('TipoPadrao', nTipoPadrao, []) then
                begin
                    DMSaida.C_Tabela.Edit;
                    DMSaida.C_TabelaTipoMovimento.Value := DMSaida.C_TiposMovimentoTipoMovimento.Value;
                    if bChange then
                        cmbTipoMovimento.OnChange(Self);
                end;

        end;

end;

procedure TFrmSaidas.dbgItensCustomDrawColumnHeader(Sender: TObject;
    AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
    var ADone: Boolean);
var
    R: TRect;
begin
    inherited;
    {Ajustando pnTotItens para simular o rowfooter}
    if not dfFoto.Visible and (dbgItens.ColumnsRect.Values['SUBTOTAL'] <> '') then
        begin
            R := StrToRect(dbgItens.ColumnsRect.Values['SUBTOTAL']);

            pnTotItens.Left := R.Left;
            pnTotItens.Width := R.Right - R.Left;

        end;
end;

procedure TFrmSaidas.InvoicescomProduesExcludas1Click(Sender: TObject);
var
    sSaidas: string;
begin
    inherited;
    sSaidas := '';
    with Q_SQLt do
        begin
            Close;
            SQL.Text := 'Select distinct si.Saida ' +
                'from SaidasItens si INNER JOIN Saidas s ON s.empresa = si.empresa and s.Saida = si.Saida and s.pdv = si.pdv ' +
                'where s.Data > :SeisMeses and si.Producao > 0 and si.Producao not in (' +
                '  Select Producao From ProducoesFunc) ';
            ParamByName('SeisMeses').asDateTime := DateAdd('MM', -6, DMProjeto.dDataSistema);
            Open;

            while not EOF do
                begin
                    sSaidas := CExp(sSaidas, ',') + FieldByName('Saida').asString;
                    NExt;
                end;

            Close;
        end;

    if sSaidas <> '' then
        Localizar('', ' where t.Saida in (' + sSaidas + ') ')
    else
        DlgMsg.ShowMsg(2136); //Não há!

end;

procedure TFrmSaidas.FormComponentBeforeMoveRecord(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if (DMSaida.C_Tabela.State <> dsBrowse) then
        DMSaida.C_Tabela.Post;
    if bDadosModificados and (DlgMsg.ShowMsg(2103) = 100) then
        begin
            bOutroSalvar := true;
            btGravarClick(self);
            bOutroSalvar := false;
        end
    else if bDadosModificados then
        begin
            DMSaida.C_Tabela.UndoLastChange(false);
        end;
end;

procedure TFrmSaidas.PerformancedaGravao1Click(Sender: TObject);
begin
    inherited;
    ShowMessage(DMSaida.sPerformance);
end;

procedure TFrmSaidas.lbVendedorSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaVendedor.asVariant, 'V']);
end;

procedure TFrmSaidas.lbVendedorMouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ActiveControl := cmbVendedor;
end;

procedure TFrmSaidas.dbgItensDESCRICAOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 1 then
        begin
            DMProjeto.SetParametrosForm([DMSaida.C_ItensITEM.asVariant]);
            DMProjeto.CriarForm('FrmItens', self, true);
            if (DMSaida.C_Itens.State in [dsInsert, dsEdit]) then
                dbgItens.TS_ID := LastDataObject.ObjectKey;
        end;
end;

procedure TFrmSaidas.RecebimentosdaParcela1Click(Sender: TObject);
begin
    inherited;

    DMProjeto.VerRecebimentos(DMSaida.C_ParcelasID.asInteger, 0, dfFavorecido.Text);

end;

procedure TFrmSaidas.Legenda1Click(Sender: TObject);
begin
    inherited;
    DlgCoresParcelasVendas := TDlgCoresParcelasVendas.Create(self);
    DlgCoresParcelasVendas.ShowModal;
    DlgCoresParcelasVendas.Release;
    DlgCoresParcelasVendas := nil;
end;

procedure TFrmSaidas.dbgTabelasPrecoDblClick(Sender: TObject);
begin
    {Felipe - Adicionado para solicitar autorização ao alterar a tabela de preço (17/02/2016)}
    if (not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTTABPRE')) then
        begin
            Exit;
        end;

    inherited;
    if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value)
        and DMProjeto.PermissoesTabelasPreco(DMSaida.C_ProdutosPrecoTabelaPreco.Value, 'U', true) then
        begin
            DMSaida.C_Itens.Edit;

            DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
            DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;

            DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);

            DMSaida.C_Itens.Post;
        end;

    dbgItensPRECO.TreeList.CloseEditor;
end;

procedure TFrmSaidas.btItensUpClick(Sender: TObject);
begin
    inherited;
    cbImprimir.Visible := false;
    if pnStatus.Visible then
        begin
            pnStatus.Visible := false;
            pnStatus.TagStr := '1'
        end
    else
        pnStatus.TagStr := '';
end;

procedure TFrmSaidas.btItensDownClick(Sender: TObject);
begin
    inherited;
    cbImprimir.Visible := true;
    if pnStatus.TagStr = '1' then
        pnStatus.Visible := true;
end;

procedure TFrmSaidas.EstatsticadeVendas1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'EV') then
        exit;

    DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self, DMSaida.C_ItensItem.value, DMSaida.C_TabelaFavorecido.Value, DMSaida.C_ItensDescricao.Value);
    DlgEstatVendasProduto.free;
    DlgEstatVendasProduto := nil;
end;

procedure TFrmSaidas.btComando1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'REEMBOLSOS') then
        exit;

    if DMSaida.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMSaida.C_tabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

    DlgReembolsos := TDlgReembolsos.Create(self);
    DlgReembolsos.DM := DMSaida;
    DlgReembolsos.GridItens := dbgItens;
    DlgReembolsos.ShowModal;
    DlgReembolsos.Release;
end;

procedure TFrmSaidas.cmbVendedorClick(Sender: TObject);
begin
    inherited;
    bDadosModificados := true;
end;

procedure TFrmSaidas.lbLocalEntregaSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMSaida.C_TabelaLocalEntrega.asVariant,
        DMSaida.C_TabelaFavorecido.Value]);
end;

procedure TFrmSaidas.dbgTabelasPrecoClick(Sender: TObject);
begin
    inherited;
    dxCalcDisplay.Text := DMSaida.C_ProdutosPrecoPreco.asString;
end;

procedure TFrmSaidas.dbgItensClick(Sender: TObject);
begin
    inherited;
    if DMSaida.C_Itens.IsEmpty then
        begin
            try
                DMSaida.C_Itens.Append;
            except
            end;
        end;
end;

procedure TFrmSaidas.dxCalculator1KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if Key = #13 then
        begin
            if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value) and
                DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTERATAB') then
                begin
                    DMSaida.C_Itens.Edit;

                    DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
                    DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;

                    DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);

                    DMSaida.C_Itens.Post;
                end;

            dbgItensPRECO.TreeList.CloseEditor;
        end;
end;

procedure TFrmSaidas.AlterarTabelaPadro1Click(Sender: TObject);
begin
    inherited;
    if DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTERATAB') then
        begin
            DlgAlterarTabelaPadrao := TDlgAlterarTabelaPadrao.Create(self);
            DlgAlterarTabelaPadrao.DM := DMSaida;
            DlgAlterarTabelaPadrao.ShowModal;
            DlgAlterarTabelaPadrao.Release;
            DlgAlterarTabelaPadrao := nil;

            dbgItens.TS_TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value;

        end;
end;

procedure TFrmSaidas.DBEdit5Change(Sender: TObject);
begin
    inherited;
    {Situacao}
    lbCancelado.Visible := (DMSaida.C_TabelaSituacao.Value = 'C');
    dbgItens.Enabled := not lbCancelado.Visible;
end;

procedure TFrmSaidas.CancelarParcela1Click(Sender: TObject);
begin
    inherited;
    if DMSaida.C_Parcelas.Active and (DMSaida.C_Parcelas.RecordCount > 0) and
        DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'CanParcela') then
        begin
            with Q_SQLt do
                begin
                    SQL.Text := 'Select (Valor - FaltaReceber) as Pgtos ' +
                        'From TitulosAReceber where ID = :ID and empresa = :empresa';
                    Params[0].asInteger := DMSaida.C_ParcelasID.Value;
                    Params[1].asInteger := DMProjeto.nEmpresaLogada;
                    Open;

                    if FieldByName('Pgtos').asCurrency > 0 then
                        begin
                            Close;
                            if DlgMsg.ShowMsg(2196) <> 100 then
                                Exit;
                        end;
                    Close;
                end;

            DMFinanceiro.CancelarTitulo(DMSaida.C_ParcelasID.Value, null, null, '', true, true);

            {Refresh}
            DMSaida.RefreshParcelas;

        end;
end;

procedure TFrmSaidas.dbgItensTS_BeforeDeleteAll(Sender: TObject; var CanDelete: Boolean);
begin
    inherited;
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'EXCLUIITEM', '', False, 'Item:' + DMSaida.C_ItensDESCRICAO.AsString,
        DMSaida.C_ItensIDITEM.Value, 'FrmItens');
end;

procedure TFrmSaidas.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
    sMesc: string;
begin
    inherited;
    if (Shift = [ssCtrl, ssAlt]) and (Key = Ord('P')) then
        DlgMsg.ShowMsg(2105, [DMSaida.sPerformance]);

    if (Shift = [ssCtrl, ssAlt]) and (Key = Ord('M')) then
        begin
            if (DMSaida.C_Mesclagens.Active) and (DMSaida.C_Mesclagens.RecordCount > 0) then
                with DMSaida.C_Mesclagens do
                    begin
                        First;
                        sMesc := 'IDMesc - SIOriginal - SIMestre - Qtd';
                        while not EOF do
                            begin
                                sMesc := CExp(sMesc, #13) + FieldByName('SAIDAITEMMESCLA').asString + ' - ' +
                                    FieldByName('SAIDAITEM_ORIGINAL').asString + ' - ' +
                                    FieldByName('IDITEM').asString + ' - ' +
                                    FieldByName('QUANTIDADE').asString + ';';
                                Next;
                            end;
                    end;
            DlgMsg.ShowMsg(2105, [sMesc]);
        end;

end;

procedure TFrmSaidas.pnClienteEnter(Sender: TObject);
var
    i: Integer;
begin
    inherited;
    for i := 0 to ComponentCount - 1 do
        begin
            if (Components[i] is TTS_DBEdit) and (TWinControl(Components[i]).Parent = pnCliente) then
                (Components[i] as TTS_DBEdit).TabStop := true;
        end;
end;

procedure TFrmSaidas.pnClienteExit(Sender: TObject);
var
    i: Integer;
begin
    inherited;
    for i := 0 to ComponentCount - 1 do
        begin
            if (Components[i] is TTS_DBEdit) and (TWinControl(Components[i]).Parent = pnCliente) then
                (Components[i] as TTS_DBEdit).TabStop := false;
        end;
end;

procedure TFrmSaidas.btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmSaidas.dbgParcelasEdited(Sender: TObject;
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

procedure TFrmSaidas.dbgParcelasEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
begin
    inherited;
    nValorParcelaBE := dbgParcelas.GetFieldValue(Node, 'Valor', 0);
end;

procedure TFrmSaidas.RecalcularParcelas1Click(Sender: TObject);
begin
    inherited;
    DMSaida.GerarParcelamento;
end;

procedure TFrmSaidas.Atualizar1Click(Sender: TObject);
begin
    inherited;
    DMSaida.ParcelasParaTotalFinal;
end;

procedure TFrmSaidas.FormKeyPress(Sender: TObject; var Key: Char);
var
    nValor: double;
begin
    inherited;
    if (Key = '%') and
        ((ActiveControl = dfDesconto) or (ActiveControl = dfFrete) or
        (ActiveControl = dfDespesas)) then
        begin
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar(DMSaida.C_TabelaTotalItens.Value * (nValor / 100), 2);
        end;

//if ((ActiveControl <> dfFavorecido) and (ActiveControl <> dbgItens) and (Key = #13)) then
//begin
//Perform (CM_DialogKey, VK_TAB, 0);
//Key := #0;
//end;

end;

procedure TFrmSaidas.ComposiodoItem1Click(Sender: TObject);
var nop: integer;
    nPrecoAnterior, nPrecoAtual: currency;
begin
    inherited;

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
    FrmSaidasItensFilhos.DM := TDMSaidas(DMJanela);
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

procedure TFrmSaidas.FaturarOperacao;
var
    nDesconto, nFrete, nDespesa, nPJuros, nJuros: Currency;
    nPlano, nCobranca: Integer;
    sMessage: string;
    Q_Filhos: TIBQuery;
begin
    //  cbReceber.Checked := false;

    with DMSaida do
        begin
            bFaturandoOperacao := true;

            try
                {Operacao}
                C_Tabela.Edit;

                if C_TiposMovimento.Locate('TipoPadrao', 1, []) then
                    begin
                        if nOpFaturamento > 0 then
                            begin
                                C_TiposMovimento.Locate('TipoMovimento', nOpFaturamento, []);
                                C_TabelaTipoMovimento.Value := nOpFaturamento;
                            end
                        else
                            C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;

                        cmbTipoMovimento.OnChange(Self);
                    end;

                {*** Dados da Invoice - Cabecalho}
                Q_SQLt.Close;
                Q_SQLt.SQL.Text := 'Select * from Saidas where Saida = :S and empresa = :empresa ';
                Q_SQLt.Params[0].asInteger := nMovFaturar;
                Q_SQLt.Params[1].asInteger := DMPRojeto.nEmpresaLogada;
                Q_SQLt.Open;

                {Cliente}
                dfFavorecido.ID := Q_SQLt.FieldByName('Favorecido').asInteger;

                {Outros dados}
                C_TabelaCAMPO01.asVariant := Q_SQLt.FieldByName('Campo01').Value;
                C_TabelaCAMPO02.asVariant := Q_SQLt.FieldByName('Campo02').Value;
                C_TabelaCAMPO03.asVariant := Q_SQLt.FieldByName('Campo03').Value;
                C_TabelaCAMPO04.asVariant := Q_SQLt.FieldByName('Campo04').Value;
                C_TabelaTabelaPadrao.Value := Q_SQLt.FieldByName('TabelaPadrao').asInteger;
                //      C_TabelaTAX.asVariant     := Q_SQLt.FieldByName('Tax').Value;
                //      C_TabelaPercentualTax.Value   := Q_SQLt.FieldByName('PercentualTax').asFloat;
                C_TabelaTIPOENTREGA.asVariant := Q_SQLt.FieldByName('TipoEntrega').Value;
                C_TabelaLOCALENTREGA.asVariant := Q_SQLt.FieldByName('LocalEntrega').Value;
                C_TabelaDATAENTREGA.asVariant := Q_SQLt.FieldByName('DataEntrega').Value;
                C_TabelaVendedor.AsVariant := Q_SQLt.FieldByName('Vendedor').Value;
                C_TabelaPCOMISSAO.asVariant := Q_SQLt.FieldByName('PComissao').Value;

                nDesconto := Q_SQLt.FieldByName('Desconto').asCurrency;
                nFrete := Q_SQLt.FieldByName('Frete').asCurrency;
                nDespesa := Q_SQLt.FieldByName('OutrasDespesas').asCurrency;

                nPlano := Q_SQLt.FieldByName('PlanoPagamento').asInteger;
                nCobranca := Q_SQLt.FieldByName('COBRANCA').asInteger;
                nPJuros := Q_SQLt.FieldByName('PJuros').asCurrency;
                nJuros := Q_SQLt.FieldByName('Juros').asCurrency;
                sMessage := Q_SQLt.FieldByName('OBS').asString;

                {***Itens da Operação - Mesclando}
                Q_SQLt.Close;
                Q_SQLt.SQL.Text := 'Select * from SaidasItens where Saida = :S and empresa = :empresa';
                Q_SQLt.Params[0].asInteger := nMovFaturar;
                Q_SQLt.Params[0].asInteger := DMProjeto.nEmpresaLogada;
                Q_SQLt.Open;

                while not Q_SQLt.EOF do
                    begin
                        C_Itens.Append;
                        dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item.

                        C_ItensMESCLADO.Value := 'S';
                        C_ItensTabelaPreco.Value := Q_SQLt.FieldByName('TabelaPreco').AsInteger;
                        C_ItensPrecoTabela.Value := Q_SQLt.FieldByName('PrecoTabela').asCurrency;

                        C_ItensCustoContabil.Value := Q_SQLt.FieldByName('CustoContabil').asCurrency;
                        C_ItensCustoMedio.Value := Q_SQLt.FieldByName('CustoMedio').asCurrency;

                        C_ItensPreco.asFloat := Q_SQLt.FieldByName('Preco').asFloat;

                        C_ItensQuantidade.Value := Q_SQLt.FieldByName('Quantidade').asFloat;

                        C_ItensDESCRICAO.Value := Q_SQLt.FieldByName('DESCRICAO').asString;
                        C_ItensUSOTIPOITEM.asVariant := Q_SQLt.FieldByName('USOTIPOITEM').Value;
                        C_ItensProducao.asVariant := Q_SQLt.FieldByName('Producao').Value;
                        C_ItensDespesa.asVariant := Q_SQLt.FieldByName('Despesa').Value;
                        C_ItensEntradaItem.asVariant := Q_SQLt.FieldByName('EntradaItem').Value;

                        C_ItensCOLUNA1.asVariant := Q_SQLt.FieldByName('COLUNA1').Value;
                        C_ItensCOLUNA2.asVariant := Q_SQLt.FieldByName('COLUNA2').Value;
                        C_ItensCOLUNA3.asVariant := Q_SQLt.FieldByName('COLUNA3').Value;
                        C_ItensCOLUNA4.asVariant := Q_SQLt.FieldByName('COLUNA4').Value;

                        C_ItensFUNCPRODUCAO.asVariant := Q_SQLt.FieldByName('FUNCPRODUCAO').Value;
                        C_ItensHASCHILDREN.Value := Q_SQLt.FieldByName('HASCHILDREN').asString;
                        C_ItensCONTAVENDA.Value := Q_SQLt.FieldByName('CONTAVENDA').asInteger;

                        {Copiando os Filhos}
                        if (C_ItensHASCHILDREN.VAlue = 'S') then
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
                                bPopulando := true; // para não ocorrer o change.
                                while not Q_Filhos.EOF do
                                    begin
                                        C_SaidasItensFilhos.Append;
                                        C_SaidasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
                                        C_SaidasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
                                        C_SaidasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
                                        C_SaidasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
                                        C_SaidasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;
                                        C_SaidasItensFilhosUNIDADE.Value := Q_Filhos.FieldByName('unidade').asstring;
                                        C_SaidasItensFilhosFATOR.Value := Q_Filhos.FieldByName('Fator').asFloat;
                                        C_SaidasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;

                                        C_SaidasItensFilhos.Post;

                                        Q_Filhos.Next;
                                    end;
                                bPopulando := False;
                            end;

                        C_Itens.Post;

                        C_Mesclagens.Append;
                        C_Mesclagens.FieldByName('SAIDAITEM_ORIGINAL').asInteger := Q_SQLt.FieldByName('SAIDAITEM').asInteger;
                        C_Mesclagens.FieldByName('SAIDA_ORIGINAL').asInteger := Q_SQLt.FieldByName('SAIDA').asInteger;
                        C_Mesclagens.FieldByName('Quantidade').asFloat := C_ItensQuantidade.Value;
                        C_Mesclagens.FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value;
                        C_Mesclagens.Post;

                        Q_SQLt.Next;

                    end;

                {***Rodapé da Operação}
                C_TabelaDesconto.Value := nDesconto;
                C_TabelaFrete.Value := nFrete;
                C_TabelaOutrasDespesas.Value := nDespesa;
                C_TabelaJuros.Value := nJuros;
                C_TabelaOBS.Value := sMessage;

                if nPlano > 0 then
                    begin
                        C_PlanosPagamento.Locate('PlanoPagamento', nPlano, []);
                        C_TabelaPlanoPagamento.Value := nPlano;
                        C_TabelaPJuros.Value := nPJuros; //Não gera as Parcelas (bFaturandoOperacao = true).
                    end;

                if nCobranca > 0 then
                    begin
                        C_TiposCobranca.Locate('TipoCobranca', nCobranca, []);
                        C_TabelaCobranca.Value := nCobranca;
                    end;

                {***Parcelas da Operação - Mesclando}
                Q_SQLt.Close;
                Q_SQLt.SQL.Text := 'Select * from TitulosAReceber where Venda = :S ';
                Q_SQLt.Params[0].asInteger := nMovFaturar;
                Q_SQLt.Open;

                while not Q_SQLt.EOF do
                    begin
                        C_Parcelas.Append;
                        C_ParcelasParcela.asInteger := Q_SQLt.FieldByName('Parcela').asInteger;

                        //Data do Vencimento
                        C_ParcelasVencimento.Value := Q_SQLt.FieldByName('Vencimento').asDateTime;

                        //Valor da Parcela
                        C_ParcelasValor.asCurrency := Q_SQLt.FieldByName('Valor').asCurrency;

                        C_ParcelasCompetencia.Value := Q_SQLt.FieldByName('Competencia').asDateTime;

                        C_ParcelasJurosPlano.asCurrency := Q_SQLt.FieldByName('JurosPlano').asCurrency;

                        C_ParcelasDATAANTECIPACAO.asVariant := Q_SQLt.FieldByName('DataAntecipacao').Value;
                        C_ParcelasVALORDESCANTECIPADO.asCurrency := Q_SQLt.FieldByName('ValorDescAntecipado').asCurrency;

                        C_Parcelas.Post;

                        Q_SQLt.Next;
                    end;

            finally

                bFaturandoOperacao := false;
                if Q_Filhos <> nil then
                    Q_Filhos.Free;

                Q_SQLt.Close;

            end; //try

        end; //with
end;

procedure TFrmSaidas.cmbTermosMouseEnter(Sender: TObject);
begin
    inherited;
    if cmbTermos.Width <> pnTermos.Width - 3 then
        cmbTermos.Width := pnTermos.Width - 3;
end;

procedure TFrmSaidas.dfStatusValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
begin
    inherited;
    Accept := DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTSTATUS');

    if Accept and (dfStatus.Text = 'V') then
        Accept := DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'STATUS_V');

    if Accept and (dfStatus.Text = 'E') then
        Accept := DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'STATUS_E');

    if Accept and (dfStatus.Text = 'F') then
        Accept := DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'STATUS_F');

end;

procedure TFrmSaidas.ConsultadePreos2Click(Sender: TObject);
var nItemSelec: integer;
begin
    inherited;

    DMProjeto.SetParametrosForm([DMSaida.C_TabelaTabelaPadrao.Value, DMSaida.C_TabelaFavorecido.asVariant]);

    DlgConsultaPrecos := TDlgConsultaPrecos.create(self);
    nItemSelec := DlgConsultaPrecos.ShowModal;
    DlgConsultaPrecos.Release;

    if nItemSelec > 0 then
        with DMSaida do
            begin
                C_Itens.Append;
                dbgItens.TS_ID := nItemSelec; //Localiza o Item.
                C_Itens.Post;
            end;
end;

procedure TFrmSaidas.ImprimirDocs;
begin
    // Felipe   -       Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
    DMProjeto.ImprimirDocumentosSaida(DMSaida.C_TabelaIDMestre.Value, DMSaida.C_TabelaEMPRESA.Value, DMSaida.C_TabelaPDV.Value);
end;

procedure TFrmSaidas.lbLocalEntregaClick(Sender: TObject);
begin
    inherited;
    {Atribuindo LocalEntrega cadastrado à Operacao}
    if LastDataObject.TableName = 'FAVORECIDOSENTREGA' then
        with DMSaida do
            begin
                C_Tabela.Edit;
                C_TabelaLocalEntrega.asVariant := LastDataObject.ObjectKey;
            end;
end;

procedure TFrmSaidas.FormComponentAntesDeApagar(Sender: TObject;
    var bCanDelete: Boolean);
begin
    inherited;
    if DMSaida.ExistemParcelasRenegociadas then
        begin
            bCanDelete := false;
            DlgMsg.ShowMsg(2470);
        end;
end;

procedure TFrmSaidas.dbgItensTS_AposLocalizar(Sender: TObject);
begin
    inherited;
    if (bNAOPermitirItemDuplicado) then
        begin
            if (DMSaida.VerificaItemDuplicado(DMSaida.C_ItensItem.AsInteger)) then
                begin
                    DlgMsg.ShowMsg(50, ['O Sistema foi Configurado Para Não Permitir Item Duplicado nas Telas de Saídas.']);
                    DMSaida.C_Itens.Delete;
                end;
        end;

    if bDescontonoGrid then
        dbgItens.TS_SelectedColumn := 'lkUNIDADE'
    else
        dbgItens.TS_SelectedColumn := 'Quantidade';

    dbgItens.ShowEditor;
    PostMessage(Handle, PM_PostItens, 0, 0);
end;

procedure TFrmSaidas.FormComponentInclusao(Sender: TObject);
begin
    inherited;
    {Definindo Operacao Padrão da tela, o Cliente Padrao e a Mensagem Padrao}
    with DMSaida do
        begin
            //C_TiposMovimento.Locate('TipoMovimento', StrToIntDef(DMProjeto.Parametro('TipoMovVendaRapida'),1), []);
                {Cliente - Padrao}
            if C_TiposMovimentoFavorecidoPadrao.Value <> 0 then
                dfFavorecido.ID := C_TiposMovimentoFavorecidoPadrao.Value;

            {Mensagem - Padrao}
            if C_TiposMovimentoMensagemPadrao.Value > 0 then
                begin
                    C_Tabela.Edit;
                    C_MensagensOperacoes.Locate('MensagemOperacao', C_TiposMovimentoMensagemPadrao.Value, []);
                    C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
                end;

            {Contrato - Padrao}
            if C_TiposMovimentoTermoContrato.Value > 0 then
                begin
                    C_Tabela.Edit;
                    C_TermosContratos.Locate('TermoContrato', C_TiposMovimentoTermoContrato.Value, []);
                    C_TabelaTermoContrato.Value := C_TermosContratosDescricao.Value;
                end;
        end;
end;

procedure TFrmSaidas.OperaoNmero1Click(Sender: TObject);
var
    nOp: Integer;
begin
    inherited;
    DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaTipoPadrao.Value]);
    nOP := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);

    {Realizando a Pesquisa}
    if nOp > 0 then
        begin
            Localizar('', ' where t.Saida = ' + IntToStr(nOp));
        end;

end;

procedure TFrmSaidas.dbgMensagensDblClick(Sender: TObject);
begin
    inherited;
    (GetParentForm(dbgMensagens) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TFrmSaidas.dbgMensagensKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if Key = VK_RETURN then
        dbgMensagensDblClick(nil);
end;

procedure TFrmSaidas.dfMensagemCloseUp(Sender: TObject; var Text: string;
    var Accept: Boolean);
begin
    inherited;
    Accept := true;

    with DMSaida do
        begin
            C_Tabela.Edit;
            C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
        end;

end;

procedure TFrmSaidas.dfContratoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Accept := true;

    with DMSaida do
        begin
            C_Tabela.Edit;
            C_TabelaTermoContrato.Value := C_TermosContratosDescricao.Value;
        end;
end;

procedure TFrmSaidas.dbgContratosDblClick(Sender: TObject);
begin
    inherited;
    (GetParentForm(dbgContratos) as TdxPopupEditForm).ClosePopup(True);

end;

procedure TFrmSaidas.dbgContratosKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if Key = VK_RETURN then
        dbgContratosDblClick(nil);
end;

procedure TFrmSaidas.dbgItensNumeroLoteInitPopup(Sender: TObject);
begin
    inherited;
    dbgItensNUMEROLOTE.PopupControl := nil;
    dbgLotes.DataSource := DMSaida.C_LotesDS;
    dbgItensNUMEROLOTE.PopupControl := pnLotes;
end;

procedure TFrmSaidas.dbgItensNumeroLotePopup(Sender: TObject;
    const EditText: string);
begin
    inherited;
    DMSaida.C_Lotes.Close;
    DMSaida.Q_Lotes.Params[0].asInteger := DMSaida.C_ItensItem.value;
    DMSaida.C_Lotes.Open;

    if not DMSaida.C_Lotes.Locate('NUMEROLOTE', DMSaida.C_ItensNumeroLote.value, []) then
        DMSaida.C_Lotes.first;
end;

procedure TFrmSaidas.CopiarItensdaOperao1Click(Sender: TObject);
var
    nOp: Integer;
    Q_Filhos: TIBQuery;
    bValorPorCusto: boolean; { Felipe - Variável para indicar que o preço do item deve ser o custo contábil (sem imposto) para emitir Nota de Reclassificação)
    Implementação para Center Bike (01/12/2016) }
begin
    inherited;
    {Escolhendo a operação}

    bValorPorCusto := False;

    DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaTipoPadrao.Value]);
    nOP := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);
    bValorPorCusto := IIF(DMProjeto.GetParametrosForm(0) <> null, DMProjeto.GetParametrosForm(0), False);

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
                        //DMSaida.C_Itens.DisableControls;
                        while not EOF do
                            begin
                                DMSaida.C_Itens.Append;
                                dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item.

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
                        //DMSaida.C_Itens.EnableControls;

                    end;

                Close;

                { Felipe (12/08/2016) - Implementação para importação da Composição Final (Montagem de Produto) }
                SQL.Text := 'select mf.item, 0 as tabelapreco, pp.preco as precotabela, ii.custocontabil, ii.customedio, ' +
                    'pp.preco as preco, mf.quantidadetotal as quantidade, ii.descricao, null as usotipoitem, ' +
                    'null as producao, null as despesa, null as entradaitem, null as coluna1, ' +
                    'null as coluna2, null as coluna3, null as coluna4, null as funcproducao, ' +
                    '''N'' as haschildren, 19 as contavenda ' +
                    'from montagens m inner join montagensfilhos mf on m.montagem = mf.montagem ' +
                    'inner join itens ii on mf.item = ii.item ' +
                    'inner join produtospreco pp on ii.item = pp.item ' +
                    'where m.montagem = :idMontagem and pp.tabelapreco = 0';
                ParamByName('idMontagem').AsInteger := nOp;
                Open;

                if RecordCount > 0 then
                    begin
                        {***Itens da Operação***}
                        //DMSaida.C_Itens.DisableControls;

                        DMSaida.idMontagemProduto := nOp;

                        while not EOF do
                            begin
                                DMSaida.C_Itens.Append;
                                dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item.

                                DMSaida.C_ItensTabelaPreco.Value := Q_SQLt.FieldByName('TabelaPreco').AsInteger;
                                DMSaida.C_ItensPrecoTabela.Value := Q_SQLt.FieldByName('PrecoTabela').asCurrency;

                                DMSaida.C_ItensCustoContabil.Value := Q_SQLt.FieldByName('CustoContabil').asCurrency;
                                DMSaida.C_ItensCustoMedio.Value := Q_SQLt.FieldByName('CustoMedio').asCurrency;

                                { Felipe - Atribui o valor do custo contábil (sem imposto) para emitir Nota de Reclassificação (01/12/2016) }
                                if (bValorPorCusto) then
                                    DmSaida.C_ItensPreco.AsFloat := Q_SQLt.FieldByName('CustoContabil').AsFloat
                                else
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

                                DMSaida.C_Itens.Post;

                                Next; //Q_SQLt para Importação

                            end;
                    end; { Fim RecordCount Composição de Itens }
            end;

end;

procedure TFrmSaidas.Memorizar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(Self, nCodForm, DMSaida.C_TabelaIDMestre.Value,
        DMSaida.C_TabelaNUMERO.Value, DMSaida.C_TabelaF_NOME.Value, 0, DMSaida.C_TabelaFavorecido.value);
end;

procedure TFrmSaidas.btLembreteClick(Sender: TObject);
begin
    inherited;
    DMProjeto.Lembrete(Self, dfFavorecido.ID, 1, 543);
end;

procedure TFrmSaidas.dbgTabelasPrecoCustomDrawColumnHeader(Sender: TObject;
    AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
    var ADone: Boolean);
begin
    inherited;
    if (DMSaida.C_ProdutosPreco.Tag = 0) then
        AColor := $00EBEBEB
    else
        AColor := $00BFFFFF;
end;

procedure TFrmSaidas.dbgTabelasPrecoCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if (dbgTabelasPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = DMSaida.C_ItensTabelaPreco.Value) then
        AFont.Style := [fsBold];

end;

procedure TFrmSaidas.dbgLotesDblClick(Sender: TObject);
begin
    inherited;
    DMSaida.C_Itens.Edit;

    try
        DMSaida.C_ItensNumeroLote.Value := DMSaida.C_LotesNumeroLote.Value;
        DMSaida.C_Itens.Post;
        dbgLotes.DataSource := nil;
    except
    end;

end;

procedure TFrmSaidas.AgruparporItem1Click(Sender: TObject);
var
    t: string;
begin
    inherited;
    AgruparporItem1.Checked := not AgruparporItem1.Checked;

    t := IIF(AgruparporItem1.Checked, 'G', 'P');

    if DMSaida.bAlteracao then
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Update Saidas set TipoImpressao = :t where Saida = :S ';
                params[0].asString := t;
                params[1].asInteger := DMSaida.C_TabelaIDMestre.Value;
                ExecSQL;
            end;

    if DMSaida.C_Tabela.State = dsBrowse then
        DMSaida.C_Tabela.Edit;
    DMSaida.C_TabelaTipoImpressao.Value := t;

end;

procedure TFrmSaidas.SempreAgruparporItem1Click(Sender: TObject);
var
    s: string;
begin
    inherited;
    AgruparporItem1Click(AgruparporItem1);
    SempreAgruparporItem1.Checked := AgruparporItem1.Checked;

    s := IIF(SempreAgruparporItem1.Checked, 'S', 'N');

    if (DMSaida.C_TabelaFavorecido.Value <> 0) then
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Update Favorecidos set AgruparPorItem = :A where Favorecido = :F ';
                Params[0].asString := s;
                Params[1].asInteger := DMSaida.C_TabelaFavorecido.Value;
                ExecSQL;

                DMSaida.C_TabelaF_AgruparPorItem.Value := s;
            end;
end;

procedure TFrmSaidas.dbgItensKeyPress(Sender: TObject; var Key: Char);
var
    nDesconto: double;
begin
    inherited;
    if (Key in ['%', 'M', 'm']) and (UpperCase(dbgItens.FocusedField.FieldName) = 'PRECO') then
        with DMSaida do
            begin
                if Key = '%' then
                    nDesconto := StrToFloatDef(dbgItens.TS_Text, 0) / 100;

                if (Key <> '%') then //Desconto Máximo permitido
                    nDesconto := -C_ItensMaxDesconto.Value;

                C_ItensPreco.Value := C_ItensPrecoTabela.Value * (1 + nDesconto);
            end;
end;

procedure TFrmSaidas.AlterarAlmoxarifado1Click(Sender: TObject);
var
    nAlmox: Integer;
begin
    inherited;
    DlgAlterarAlmoxarifado := TDlgAlterarAlmoxarifado.Create(self);
    nAlmox := DlgAlterarAlmoxarifado.ShowModal;
    DlgAlterarAlmoxarifado.Release;
    DlgAlterarAlmoxarifado := nil;

    if nAlmox >= 0 then
        begin
            DMSaida.C_Tabela.Edit;
            DMSaida.C_TabelaAlmoxPadrao.Value := nAlmox;
        end;

end;

procedure TFrmSaidas.ppmOutrosPopup(Sender: TObject);
begin
    inherited;
    AlterarAlmoxarifado1.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';
end;

procedure TFrmSaidas.dbgItensEnter(Sender: TObject);
begin
    inherited;
    if DMSaida.bAlteracao and (DMSaida.C_TabelaStatus.Value <> '') and
        (DMSaida.C_TabelaStatus.Value[1] in ['H', 'F']) then
        dbgItens.OptionsDB := dbgItens.OptionsDB - [edgoCanAppend, edgoCanInsert]
    else
        dbgItens.OptionsDB := dbgItens.OptionsDB + [edgoCanAppend, edgoCanInsert];

end;

procedure TFrmSaidas.Evento_AtualizaItensFilhos(var Msg: TMessage);
begin
    DMSaida.AtualizaItensFilhos;
end;

procedure TFrmSaidas.Evento_Foco(var Msg: TMessage);
begin
    dbtNumero.SetFocus;
end;

procedure TFrmSaidas.dbgTabelasPrecoKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if key = vk_return then
        dbgTabelasPrecoDblClick(self);
end;

procedure TFrmSaidas.Legenda2Click(Sender: TObject);
begin
    inherited;
    DlgLegendaGridVendas := TDlgLegendaGridVendas.Create(self);
    DlgLegendaGridVendas.ShowModal;
    DlgLegendaGridVendas.Release;
    DlgLegendaGridVendas := nil;
end;

procedure TFrmSaidas.FormComponentBeforeSave(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;

    {  if (DMSaida.C_TabelaTipoPadrao.Value = 1) and (dfFavorecido.ID = 1) then begin//Consumidor Final}
    if (DMSaida.C_TabelaTM_GERAFINANCEIRO.Value = 'S') and (dfFavorecido.ID = 1) then
        begin
            DlgMsg.Showmsg(2298);
            bSkip := True;
        end;

    if not DMSaida.C_Tabela.ChangeCount = 0 then
        begin
            dlgmsg.ShowMsg(2299);
            bSkip := true;
        end
    else
        bProcessamento := false; //Habilita fechar a tela (que é desabilitada pela geração de invoice para produçào do funcionario.

end;

function TFrmSaidas.Conteudo;
var
    sNum: string;
begin
    if (o <> nil) and (DataField(o) = 'NUMERO') then
        begin
            sNum := TTS_DBEdit(o).Text;
            sNum := CompleteCode(sNum, 7);

            result := sNum;
        end
    else
        result := inherited Conteudo(o);

end;

function TFrmSaidas.CampoGrid: string;
var
    sFieldName: string;
begin
    result := '';

    sFieldName := dbgItens.TS_SelectedColumn;

    if sFieldName <> '' then
        result := DMSaida.C_Itens.FieldByName(sFieldName).Origin;

end;

function TFrmSaidas.ConteudoGrid: string;
var
    sText, sWhere, sFieldName: string;
    oField: TField;
begin
    result := '';

    sFieldName := dbgItens.TS_SelectedColumn;
    sText := dbgItens.TS_Text;

    if sFieldName <> '' then
        begin
            oField := TField(DMSaida.C_Itens.FindField(sFieldName));

            if oField.DataType in [ftString, ftMemo] then
                begin
                    sWhere := sWhere + 'upper(' + CampoGrid + ') like ' + QuotedStr(uppercase(sText + '%'));
                end
            else if oField.DataType in [ftDate..ftDateTime] then
                begin
                    sWhere := sWhere + CampoGrid + ' = ' + QuotedStr(MesDiaAno(StrToDate(sText)));
                end
            else if oField.DataType in [ftSmallint..ftBCD] then
                begin
                    sText := replace(sText, ThousandSeparator, '');
                    sText := replace(sText, ',', '.');
                    sWhere := sWhere + CampoGrid + ' = ' + sText;
                end;

            result := replace(replace(sWhere, 'I_', ''), '*', '%');

        end;

end;

procedure TFrmSaidas.btPesquisarClick(Sender: TObject);
begin
    DMSaida.sWhereAdicional := '';
    DMSaida.idOficina := 0;
    DMSaida.idMontagemProduto := 0;

    {Verificando se foi informado algo no item para ser pesquisado também}
    if DMSaida.C_Itens.Active and (DMSaida.C_Itens.RecordCount <= 1) and not DMSaida.bAlteracao and
        (dbgItens.TS_Text <> '') then
        with DMSaida.Q_SQLi do
            begin
                Close;
                SQL.Text := 'Select Distinct t.Saida ' +
                    'from	 (((SAIDASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM) ' +
                    '      left join UNIDADES u on I.Unidade = u.Unidade) ' +
                    '      left join GRUPOS g on g.Grupo = i.Grupo) ' +
                    '      left join PRODUCOESFUNC pdf on pdf.SAIDAITEM = t.SAIDAITEM ';

                SQL.Text := SQL.Text +
                    'where ' + ConteudoGrid; //já retorna o campo + operador + conteudo.

                try
                    Open;

                    DMSaida.sWhereAdicional := '';
                    while not EOF do
                        begin
                            DMSaida.sWhereAdicional := CExp(DMSaida.sWhereAdicional, ',') + FieldByName('Saida').asString;
                            Next;
                        end;

                    Close;

                    if DMSaida.sWhereAdicional <> '' then
                        DMSaida.sWhereAdicional := ' t.Saida in (' + DMSaida.sWhereAdicional + ') ' +
                            IIF(ActiveControl = dbgItens, ' ', ' and ');

                except
                    Close;
                end;
            end;

    inherited;
end;

function TFrmSaidas.DataField(o: TWinControl): string;
begin
    if ActiveControl = dbgItens then
        result := 'REDEFINED'
    else
        result := inherited DataField(o);
end;

procedure TFrmSaidas.dfCPF_CNPJEnter(Sender: TObject);
begin
    inherited;
    DMSaida.C_TabelaF_CPF_CNPJ.EditMask := '';
end;

procedure TFrmSaidas.dfCPF_CNPJExit(Sender: TObject);
begin
    inherited;
    if length(TTS_DBEdit(Sender).Text) = 11 then
        DMSaida.C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(TTS_DBEdit(Sender).Text) = 14 then
        DMSaida.C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmSaidas.cmbTipoCobrancaChange(Sender: TObject);
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
                        if cmbCarteira.LookupKeyValue <> null then
                            FieldByName('Carteira').asInteger := cmbCarteira.LookupKeyValue;
                        Next;
                    end;
                First;
            end;
end;

procedure TFrmSaidas.cmbCarteiraChange(Sender: TObject);
begin
    inherited;
    if (ActiveControl = cmbCarteira) then
        with DMSaida.C_Parcelas do
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

procedure TFrmSaidas.dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
    Conteudo: string);
begin
    inherited;
    dbgItens.TS_TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value;
end;

procedure TFrmSaidas.btGravarClick(Sender: TObject);
begin
    if Name <> 'FrmEmpresa' then
        begin
            if (DMProject.TipoSituacaoCliente = 2) then
                begin
                    DlgMsg.ShowMsg(50, ['O Período de Avaliação Expirou. Favor Registrar o Sistema SYNCLOJA.' + #13 +
                        'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo' + #13 +
                            'nosso site www.synctech.com.br']);
                    Exit;
                end
            else if (DMProject.TipoSituacaoCliente = 4) then
                begin
                    DlgMsg.ShowMsg(50, ['Você deve atualizar o Acesso ao Sistema.' + #13 +
                        'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo' + #13 +
                            'nosso site www.synctech.com.br']);
                    Exit;
                end;
        end;
    if (DMProjeto.Parametro('ObrigarPlanoPgto') = 'S') then
        begin
            if (pnTermos.Visible) and (cmbTermos.Text = '') then
                begin
                    DlgMsg.ShowMsg(8037);
                    pgItens.ActivePage := tsTermos;
                    ActiveControl := cmbTermos;
                    cmbTermos.DroppedDown := True;
                    Exit;
                end;
        end;
    if not (bPermitirSalvar) then
        begin
            DlgMsg.ShowMsg(50, ['Existem operações com status de Liquidado/Liquidado Parcial,' + #13 +
                'o sistema não poderá salvar as modificações.']);
            Exit;
        end;
    dmsaida.volumeEdit := dfVolumes.Value;

    inherited;

end;

procedure TFrmSaidas.dfFotoDblClick(Sender: TObject);
begin
    inherited;
    DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + sFoto, DMSaida.C_ItensI_DescricaoTecnica.AsString);
    DLGVisialuzadorImagem.Free;
end;

procedure TFrmSaidas.PreoBase1Click(Sender: TObject);
begin
    inherited;
    if (DMSaida.C_Itens.Active) and (DMSaida.C_ItensITEM.AsInteger > 0) then
        DlgMsg.ShowMsg(50, [CurrTOStr(DMProjeto.PrecoDireto(DMSaida.C_ItensITEM.AsInteger,
                DMSaida.C_ItensUNIDADE.AsString, DMSaida.C_ItensTABELAPRECO.AsInteger))]);
end;

procedure TFrmSaidas.ExibirMenorPreo1Click(Sender: TObject);
var Minimo, Custo: currency;
begin
    inherited;
    if (DMSaida.C_Itens.Active) and (DMSaida.C_Itens.RecordCount > 0) then
        begin
            DMProjeto.PrecoMultiUnidade(DMSaida.C_ItensITEM.Value,
                DMSaida.C_ItensTABELAPRECO.Value, DMSaida.C_ItensUNIDADE.Value,
                Minimo, Custo);
            lbMenorPreco.Caption := FormatFloat('0.00#', Minimo);
            lbMenorPreco.Visible := ExibirMenorPreo1.Checked;
        end
    else
        lbMenorPreco.Visible := False;
end;

procedure TFrmSaidas.GrupodeComisses1Click(Sender: TObject);
begin
    inherited;
    if (DMSaida.C_TabelaCALCCOMISSAO.AsString = 'S') and (DMSaida.C_ItensI_GRUPOCOMISSAO.AsInteger > 0)
        and (DMProjeto.Parametro('GrupoComissao') = 'S') then
        begin
            DMProjeto.SetParametrosForm([Null, DMSaida.C_ItensI_GRUPOCOMISSAO.AsInteger, DMSaida.C_ItensSubTotal.Value,
                DMSaida.C_ItensDESCRICAO.AsString,
                    Abs((-(DMSaida.C_ItensPrecoTabela.asFloat - DMSaida.C_ItensPreco.asFloat) * 100) /
                    DMSaida.C_ItensPrecoTabela.asFloat)]);
            DMProjeto.CriarForm('DlgGruposComissoes', Self, True);
        end;
end;

procedure TFrmSaidas.EstoquePorAlmoxarifado1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, DMSaida.C_ItensITEM.asInteger]);
    DMProjeto.CriarForm('DlgQtdAlmoxarifado', Self, True);
end;

procedure TFrmSaidas.FormComponentPesquisar(Sender: TObject; var Select,
    Where: string; var bSkip: Boolean);
begin
    inherited;
    lcbLocaisEntrega.LookupKeyValue := DMSaida.C_LocaisEntregaEntrega.Value;
end;

procedure TFrmSaidas.dbgItensKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
    nDesconto: double;
begin
    inherited;
    //    if (Key = 13) and (UpperCase(dbgItens.FocusedField.FieldName) = 'PDESCONTO') then Begin
    //        with DMSaida do begin
    //            //nDesconto := -StrToFloatDef(dbgItens.TS_Text, 0) / 100;
    //            nDesconto := -(C_ItensPdesconto.Value/100);
    //            C_ItensPreco.Value := C_ItensPrecoTabela.Value * (1 + nDesconto);
    //        end;
    //    End;

end;

procedure TFrmSaidas.ApagarDadosClick(Sender: TObject);
begin
    inherited;
    {Teste}
end;

procedure TFrmSaidas.btLimparClick(Sender: TObject);
begin
    inherited;
    bNAOPermitirItemDuplicado := (DMProjeto.Parametro('PermitirItemDuplicado') = 'N');
    DMSaida.volumeEdit := 0;
    DMSaida.idOficina := 0;
    DMSaida.idMontagemProduto := 0;
end;

procedure TFrmSaidas.dbgItensDESCRICAOValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
var
    sDescOriginal, sDescItem: string;
begin
    inherited;
    if (bNAOPermitirAlterarItemVenda) then
        begin
            dbgItensDESCRICAO.Field.Text := DMSaida.C_ItensI_DESCRICAO.AsString;
        end;
end;

end.

