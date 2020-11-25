unit Frm_Entradas;

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
    TS_PopupEdit, DBText,
    teCtrls, TS_EffectsPanel, dxTLClms, Db, IBCustomDataSet,
    IBQuery, TS_DBImageEdit, DM_Entradas, teMasked, teDiagon, teDrip,
    TransEff, teTimed, tePush, Variants, BTOdeum, Placemnt, dxfProgressBar;

const
    PM_PostItens = WM_User + 110;
    PM_Foco = WM_User + 130;

type
    TFrmEntradas = class(TFrmItensMovimento)
        btContabilidade: TTS_SpeedButton;
        pnFornecedor: TTS_Panel;
        dbtFornecedor: TTS_DBTextEffect;
        dbtObs: TTS_DBTextEffect;
        TS_Bevel1: TTS_Bevel;
        TS_Shape1: TTS_Shape;
        esVendas: TdxEditStyleController;
        DBEdit1: TDBEdit;
        dbgItensI_Percentual: TdxDBGridColumn;
        esEndereco: TdxEditStyleController;
        TransitionSaidas: TTransitionList;
        T_Termos: TPushTransition;
        T_Itens: TPushTransition;
        DBEdit3: TDBEdit;
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
        pnMensagem: TTS_Panel;
        dfObs: TTS_DBMemo;
        dbgParcelas: TTS_QDBGrid;
        dbgParcelasParcela: TdxDBGridColumn;
        dbgParcelasVencimento: TdxDBGridDateColumn;
        dbgParcelasValor: TdxDBGridCalcColumn;
        dbgParcelasSaldo: TdxDBGridColumn;
        dbgParcelasStatus: TdxDBGridColumn;
        cbPagar: TTS_CheckBox;
        ppmFornecedor: TTS_PopupMenu;
        ppmUltimo: TTS_PopupMenu;
        ppmOutros: TTS_PopupMenu;
        AbrirCadastro1: TMenuItem;
        N4: TMenuItem;
        QuadroGeral1: TMenuItem;
        ExtratodeParcelas1: TMenuItem;
        ltimasVendas1: TMenuItem;
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
        ppmParcelas: TTS_PopupMenu;
        NovaParcela1: TMenuItem;
        N8: TMenuItem;
        ExcluirParcela1: TMenuItem;
        dbgItensColuna1: TdxDBGridColumn;
        dbgItensColuna2: TdxDBGridColumn;
        dbgItensColuna3: TdxDBGridColumn;
        dbgItensColuna4: TdxDBGridColumn;
        N10: TMenuItem;
        PerformancedaGravao1: TMenuItem;
        RecebimentosdaParcela1: TMenuItem;
        N11: TMenuItem;
        Legenda1: TMenuItem;
        EstoqueItem: TMenuItem;
        EstatsticadeVendas1: TMenuItem;
        N12: TMenuItem;
        DBEdit5: TDBEdit;
        CancelarParcela1: TMenuItem;
        Q_SQLt: TIBQuery;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        dfCPF_CNPJ: TTS_DBEdit;
        dbgItensCliente: TdxDBGridButtonColumn;
        pnPrevisao: TTS_Panel;
        TS_Shape14: TTS_Shape;
        lbPrevisao: TTS_Label;
        TS_DBEditDate1: TTS_DBEditDate;
        pnHorizontal: TTS_Panel;
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
        TS_DBEditNumber1: TTS_DBEditNumber;
        pnTotalFinal: TTS_Panel;
        lbTotalFinal: TTS_Label;
        TS_DBEditNumber2: TTS_DBEditNumber;
        pnTermos: TTS_Panel;
        lbTermos: TTS_Label;
        cmbTermos: TTS_DBLookupComboBox;
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
        tsEntrega: TTS_TabSheet;
        pnLocalEntrega: TTS_Panel;
        lbLocalEntrega: TTS_Label;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        pnTipoEntrega: TTS_Panel;
        TS_Shape5: TTS_Shape;
        lbTipoEntrega: TTS_Label;
        cmbTipoEntrega: TTS_DBLookupComboBox;
        dfCliente: TTS_DBEditFavorecido;
        TS_Shape2: TTS_Shape;
        dbgItensAtualizaCusto: TdxDBGridColumn;
        dbgItensATUALIZOUPRECO: TdxDBGridColumn;
        dbgItensI_DescricaoCompra: TdxDBGridColumn;
        dbgItensReferencia: TdxDBGridButtonColumn;
        ttttttt: TDiagonalTransition;
        pnStatus: TTS_Panel;
        TS_Label2: TTS_Label;
        cmbTipoFavEntrega: TTS_DBLookupTipoFav;
        TS_DBText1: TTS_DBText;
        dfStatus: TTS_DBLookupComboBox;
        dbgItensCodigoForn: TdxDBGridButtonColumn;
        dbgItensStatus: TdxDBGridImageColumn;
        dbgItensNumeroLote: TdxDBGridColumn;
        dbgItensValidade: TdxDBGridDateColumn;
        lbExplicaEntrega: TTS_Label;
        OperaoNmero1: TMenuItem;
        N5: TMenuItem;
        Memorizar1: TMenuItem;
        cbEtiquetas: TTS_CheckBox;
        cbImprimir: TTS_CheckBox;
        dbgItensColumn26: TdxDBGridColumn;
        ComposiodeItens1: TMenuItem;
        Imprimir1: TMenuItem;
        Pedidos1: TMenuItem;
        OutrasOpes1: TMenuItem;
        AlterarAlmoxarifado1: TMenuItem;
        dbgMensagens: TTS_QDBGrid;
        dbgMensagensDESCRICAO: TdxDBGridMemoColumn;
        CadastrarNovoItem1: TMenuItem;
        N9: TMenuItem;
        N13: TMenuItem;
        N14: TMenuItem;
        MinimoItem: TMenuItem;
        PontoPedidoItem: TMenuItem;
        MaximoItem: TMenuItem;
        N15: TMenuItem;
        dbgItensColumn27: TdxDBGridColumn;
        dfMensagem: TTS_PopupEdit;
        TS_Label4: TTS_Label;
        dbgItensCST: TdxDBGridLookupColumn;
        dbgItensAliqICMS: TdxDBGridMaskColumn;
        dbgItensIPI: TdxDBGridMaskColumn;
        dbgItensTVA: TdxDBGridMaskColumn;
        dbgItensCFOP: TdxDBGridPopupColumn;
        dfBairro: TTS_DBEdit;
        TS_DBEdit7: TTS_DBEdit;
        dfInscricaoEst: TTS_DBEdit;
        dbgItensDesconto: TdxDBGridMaskColumn;
        dbgItensSitECF: TdxDBGridLookupColumn;
        dbgItensPDESCONTO: TdxDBGridMaskColumn;
        dbgItensCOMPENSACAOCUSTO: TdxDBGridMaskColumn;
        lbCancelado: TdxfLabel;
        AplicarCalculos1: TMenuItem;
        dbgItenslkAlmoxarifado: TdxDBGridLookupColumn;
        dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
        cbSemPreco: TTS_CheckBox;
        dbgItensFABRICACAO: TdxDBGridDateColumn;
        dbgItensCFOPCST: TdxDBGridColumn;
        dbgItensBASECALCICMSPROD: TdxDBGridColumn;
        dbgItensVALORICMSPROD: TdxDBGridColumn;
        dbgItensALIQPIS: TdxDBGridColumn;
        dbgItensALIQCOFINS: TdxDBGridColumn;
        dbgItensI_NCM: TdxDBGridColumn;
        dbgItensBASECALCSUBSTPROD: TdxDBGridColumn;
        dbgItensvaloricmssubstprod: TdxDBGridColumn;
        dbgItensFrete: TdxDBGridColumn;
        dbgItensSeguro: TdxDBGridColumn;
        dbgItensoutrasdespesas: TdxDBGridColumn;
        dbgItensVALORIPIPROD: TdxDBGridColumn;
        dbgItensPRECOVENDA: TdxDBGridColumn;
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
        procedure dbtFornecedorMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dxBarSituacaoClick(Sender: TObject);
        procedure dxBarExtratoFinanceiroClick(Sender: TObject);
        procedure dxBarUltimasVendasClick(Sender: TObject);
        procedure dfFavorecidoButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
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
        procedure ppmGridPopup(Sender: TObject);
        procedure FormComponentBeforeMoveRecord(Sender: TObject;
            var bSkip: Boolean);
        procedure PerformancedaGravao1Click(Sender: TObject);
        procedure dbgItensDESCRICAOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure RecebimentosdaParcela1Click(Sender: TObject);
        procedure Legenda1Click(Sender: TObject);
        procedure btItensUpClick(Sender: TObject);
        procedure btItensDownClick(Sender: TObject);
        procedure EstatsticadeVendas1Click(Sender: TObject);
        procedure cmbVendedorClick(Sender: TObject);
        procedure lbLocalEntregaSetParametrosForm(Sender: TObject);
        procedure dbgItensClick(Sender: TObject);
        procedure dxCalculator1KeyPress(Sender: TObject; var Key: Char);
        procedure DBEdit5Change(Sender: TObject);
        procedure CancelarParcela1Click(Sender: TObject);
        procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
            var CanDelete: Boolean);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dbgItensClienteButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure pgItensChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure pnFornecedorEnter(Sender: TObject);
        procedure pnFornecedorExit(Sender: TObject);
        procedure dbgParcelasEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure dbgParcelasEditing(Sender: TObject; Node: TdxTreeListNode;
            var Allow: Boolean);
        procedure dfCPF_CNPJDblClick(Sender: TObject);
        procedure tmInvoiceTimer(Sender: TObject);
        procedure dbgItensCodigoFornButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure OperaoNmero1Click(Sender: TObject);
        procedure Memorizar1Click(Sender: TObject);
        procedure ComposiodeItens1Click(Sender: TObject);
        procedure OutrasOpes1Click(Sender: TObject);
        procedure AlterarAlmoxarifado1Click(Sender: TObject);
        procedure ppmOutrosPopup(Sender: TObject);
        procedure dfMensagemCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dbgMensagensDblClick(Sender: TObject);
        procedure dbgItensTS_AposLocalizar(Sender: TObject);
        procedure CadastrarNovoItem1Click(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
        procedure dfCPF_CNPJExit(Sender: TObject);
        procedure dfCPF_CNPJEnter(Sender: TObject);
        procedure AplicarCalculos1Click(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure tsTermosShow(Sender: TObject);
    private
        { Private declarations }

    protected
        DMEntrada: TDMEntradas;

        bmpSeta: TBitmap;
        bOutroSalvar: Boolean;
        sItemsOut, sTipoAbertura, sProducoes: string;
        nToInvoice, nCliente, nChaveCliente, nTipoPadraoAbertura, nCodForm: Integer;
        nValorParcelaBE: currency; //Valor da Parcela antes de editar;

        nMovFaturar, nOpFaturamento: Integer;

        procedure Evento_AtualizaItensFilhos(var Msg: TMessage); message PM_PostItens;
        procedure Evento_Foco(var Msg: TMessage); message PM_Foco;

        function CampoGrid: string;
        function ConteudoGrid: string;
        function DataField(o: TWinControl): string; override;

        function Conteudo(o: TWinControl): string; override;
        function LastKeyFor(Tipo: string): string; virtual;
        procedure AtualizaDadosFornecedor; virtual;

        procedure DefinirTipoMovAbertura(nTipoPadrao: Integer; bChange: Boolean; bNovo: Boolean = False); virtual;
        procedure FaturarOperacao; virtual;

    public
        { Public declarations }

        procedure SetCorTitulos(nCor: Variant);

    end;

implementation
uses teBkgrnd, DM_Projeto, Funcoes, Frm_Contabilidade, teRender,
    Dlg_CoresParcelasVenda, Dlg_EstatVendasProduto,
    Dlg_EscolherItem, Rpt_PedidosCompra,
    DM_Financeiro, Frm_EntradasItensFilhos, Dlg_AlterarAlmoxarifado,
    Dlg_AplicarCalculos, Frm_DigitacaoItens, Frm_ItensFavorecido;

{$R *.DFM}

procedure TFrmEntradas.FormCreate(Sender: TObject);
begin
    DMEntrada := TDMEntradas(DMJanela);
    DMEntrada.CriaContabilidade;
    inherited;
    pgItens.UpdateVisibleTabs
end;

procedure TFrmEntradas.dbtObsMouseMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
begin
    inherited;
    if dbtObs.Hint <> dbtObs.Field.Text then
        dbtObs.Hint := dbtObs.Field.Text;
end;

procedure TFrmEntradas.dbgItensExit(Sender: TObject);
begin
    inherited;
    if btItensDown.Visible then
        btItensDownClick(self);

    if DMEntrada.C_Itens.Active and (DMEntrada.C_Itens.State <> dsBrowse) then
        DMEntrada.C_Itens.Post;
end;

procedure TFrmEntradas.cmbTipoMovimentoClick(Sender: TObject);
var
    R: TRect;
    sTmp: string;
begin
    inherited;

    {Verificando os Campos visiveis}
    with DMEntrada do
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
            cbPagar.Checked := ((bAlteracao) and (sTmp[1] in ['A', 'S'])) or
                (not (bAlteracao) and (sTmp[1] in ['I', 'S']));

            //dbtNumero.AllowEditOnClick := (C_TiposMovimentoCB_GERARNUM.Value = 'N');
            dbtNumero.NullValue := IIF((C_TiposMovimentoCB_GERARNUM.Value = 'N'), '', '- auto -');

            if (C_TiposMovimentoCB_INFOENTREGA.Value = 'S') then
                pgItens.ShowTab(2, false)
            else
                pgItens.HideTab(2);
            try
                pnDescontos.Visible := (C_TiposMovimentoCB_DESCONTOS.Value = 'S');
                pnDescontos.Left := StrToInt(pnDescontos.TagStr);
            except
            end;
            pnTipoEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
            pnTermos.Visible := (C_TiposMovimentoCB_TERMOS.Value = 'S');
            pnMensagem.Visible := (C_TiposMovimentoCB_MENSAGEM.Value = 'S');
            pnTotalItens.Visible := (C_TiposMovimentoCB_TOTALITENS.Value = 'S');

            pnFrete.Visible := (C_TiposMovimentoCB_FRETE.Value = 'S');
            pnDespesas.Visible := (C_TiposMovimentoCB_Despesas.Value = 'S');
            pnJuros.Visible := (C_TiposMovimentoCB_Juros.Value = 'S');
            pnTotalFinal.Visible := (C_TiposMovimentoCB_TOTALFINAL.Value = 'S');
            //pnStatus.Visible := (C_TiposMovimentoCB_Status.Value = 'S');

            pnTotalItens.Left := StrToInt(pnTotalItens.TagStr);

            pnFrete.Left := StrToInt(pnFrete.TagStr);
            pnDespesas.Left := StrToInt(pnDespesas.TagStr);
            pnJuros.Left := StrToInt(pnJuros.TagStr);

            pnCampo01.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
            pnCampo02.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
            pnCampo03.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
            pnCampo04.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

            dbgItensCODIGOForn.Visible := C_TiposMovimentoCB_CODIGOFORN.Value = 'S';
            dbgItensI_CODIGO.Visible := C_TiposMovimentoCB_CODIGO.Value = 'S';
            dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';
            dbgItensCliente.Visible := C_TiposMovimentoCB_FUNCIONARIO.Value = 'S'; {Aproveitado campo}
            dbgItensStatus.Visible := C_TiposMovimentoCB_StatusItens.Value = 'S';
            dbgItensPDESCONTO.Visible := C_TiposMovimentoCB_DescontoItem.Value = 'S';
            dbgItensDesconto.Visible := C_TiposMovimentoCB_DescontoItem.Value = 'S';
            dbgItensCOMPENSACAOCUSTO.Visible := C_TiposMovimentoCB_Compensacao.Value = 'S';
            dbgItensQUANTIDADEVOLUME.Visible := (DMProjeto.Parametro('QuantidadeVolume') = 'S');
            dbgItensPRECOVENDA.Visible := C_TiposMovimentoCB_PRECO.Value = 'S';

            // LegisFiscal
            dbgItensIPI.Visible := (C_TiposMovimentoCB_IPI.Value = 'S'); // and (C_TiposMovimentoPossuiIPI.Value = 'S');
            dbgItensAliqICMS.Visible := (C_TiposMovimentoCB_ICMS.Value = 'S'); //and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensCST.Visible := (C_TiposMovimentoCB_ICMS.Value = 'S'); // and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensSitECF.Visible := (C_TiposMovimentoCB_ICMS.Value = 'S'); // and (C_TiposMovimentoPossuiICMS.Value = 'S');
            dbgItensTVA.Visible := (C_TiposMovimentoCB_TVA.Value = 'S');
            //    dbgItensCFOP.Visible := (C_TiposMovimentoCB_CFOP.Value = 'S') and (C_TiposMovimentoPossuiICMS.Value = 'S');
                ///////////

            dbgItensColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
            dbgItensColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
            dbgItensColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
            dbgItensColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';

            //    dbgItensDesconto.Visible := (C_TiposMovimentoTipoPadrao.Value = 101);

                {Definindo ordem das colunas}
            with dbgItens do
                begin
                    if FindColumnByFieldName('_icSelecionado') <> nil then
                        tdxDBGridColumn(FindColumnByFieldName('_icSelecionado')).Index := 0;
                end;
            // COMENTADO POR CESAR/EVERTON ( 09.01.14) PARA A SEQUENCIA DOS CAMPOS SER COLOCADA NO PROPRIO GRID DO FRM
            dbgItensSequencia.Index := 1;
            dbgItensCodigoForn.Index := 2;
            dbgItensI_Codigo.Index := 3;
            dbgItensDescricao.Index := 4;
            dbgItensReferencia.Index := 5;
            dbgItensI_Unidade.Index := 6;
            dbgItensQuantidade.Index := 7;
            dbgItensQuantidadeVolume.Index := 8;
            dbgItensPreco.Index := 9;
            dbgItensSubTotal.Index := 10;
            //   dbgItensPRECOVENDA.Index   := 13;
            //    dbgItensPDESCONTO.Index    := 11;
            //    dbgItensDesconto.Index     := 12;
            //    dbgItensCOMPENSACAOCUSTO.Index := 14;
            //    dbgItensStatus.Index       := 15;
            //    dbgItensNumeroLote.Index   := 16;
            //    dbgItensValidade.Index     := 17;
            //    dbgItensFABRICACAO.Index   := 18;
            //    dbgItensCliente.Index      := 19;
            //    dbgItensColuna1.Index      := 20;
            //    dbgItensColuna2.Index      := 21;
            //    dbgItensColuna3.Index      := 22;
            //    dbgItensColuna4.Index      := 23;

            lbData.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATA').asString);
            lbNumero.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_NUMERO').asString);
            lbLocalEntrega.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_LOCALENTREGA').asString);
            lbTipoEntrega.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TIPOENTREGA').asString);
            lbTermos.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TERMOS').asString);
            dfMensagem.Text := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_MENSAGEM').asString);
            lbDescontos.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCONTOS').asString);
            lbFrete.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FRETE').asString);
            lbTotalFinal.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALFINAL').asString);
            lbTotalItens.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);
            lbDespesas.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESPESAS').asString);
            lbJuros.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_JUROS').asString);

            lbCampo01.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO1').asString);
            lbCampo02.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO2').asString);
            lbCampo03.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO3').asString);
            lbCampo04.Caption := (C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO4').asString);

            dbgItensCODIGOForn.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CODIGOFORN').asString;
            dbgItensI_CODIGO.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CODIGO').asString;
            dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCRICAO').asString;
            dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_REFERENCIA').asString;
            dbgItensI_Unidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_UNIDADE').asString;
            dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_QUANTIDADE').asString;
            dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PRECO').asString;
            dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_SUBTOTAL').asString;
            dbgItensCliente.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FUNCIONARIO').asString;

            // LegisFiscal
            dbgItensIPI.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_IPI').asString;
            dbgItensAliqICMS.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_ICMS').asString;
            dbgItensTVA.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TVA').asString;
            //    dbgItensCFOP.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CFOP').asString;

            dbgItensColuna1.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna1').asString;
            dbgItensColuna2.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna2').asString;
            dbgItensColuna3.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna3').asString;
            dbgItensColuna4.Caption := C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna4').asString;

            if tsEntrega.TabVisible then
                with DMEntrada do
                    begin
                        C_LocaisEntrega.Close;
                        C_LocaisEntrega.Open;
                    end;

            SetCorTitulos(C_TiposMovimento.FieldByName('CorTitulos').Value);
            if C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
                cmbTipoFav.LookupKeyValue := C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;

            cbEtiquetas.Visible := DMEntrada.C_TabelaTipoPadrao.Value in [101, 105];
        end;

end;

procedure TFrmEntradas.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMEntrada.C_TabelaTIPOMOVIMENTO.asVariant, DMEntrada.C_TabelaTIPOPadrao.asInteger]);
end;

procedure TFrmEntradas.lbOperacaoClick(Sender: TObject);
begin
    inherited;
    cmbTipoMovimentoClick(self);
end;

procedure TFrmEntradas.FormShow(Sender: TObject);
var
    sTmp: string;
begin

    inherited;

    if (DMProjeto.Parametro('DiretoParaItensEnt') <> 'N') then
        pgItens.TabOrder := dfFavorecido.TabOrder + 1;

    {A esta altura o Tipo de Mov. Padrão já foi definido}
    //dbtNumero.AllowEditOnClick := (DMEntrada.C_TiposMovimentoCB_GERARNUM.Value = 'N');
    dbtNumero.NullValue := IIF((DMEntrada.C_TiposMovimentoCB_GERARNUM.Value = 'N'), '', '- auto -');

    {Desabilitando os controles que não são visíveis para este Tipo de Movimento}
    if DMEntrada.C_TiposMovimentoCB_INFOENTREGA.Value = 'N' then
        pgItens.HideTab(2);

    try
     DesabilitarControle(pnDescontos, DMEntrada.C_TiposMovimentoCB_DESCONTOS.Value = 'N');
    except
    end;


    DesabilitarControle(pnTipoEntrega, DMEntrada.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
    DesabilitarControle(pnTermos, DMEntrada.C_TiposMovimentoCB_TERMOS.Value = 'N');
    DesabilitarControle(pnMensagem, DMEntrada.C_TiposMovimentoCB_MENSAGEM.Value = 'N');
    DesabilitarControle(pnTotalItens, DMEntrada.C_TiposMovimentoCB_TotalItens.Value = 'N');
    DesabilitarControle(pnFrete, DMEntrada.C_TiposMovimentoCB_FRETE.Value = 'N');
    DesabilitarControle(pnDespesas, DMEntrada.C_TiposMovimentoCB_DESPESAS.Value = 'N');
    DesabilitarControle(pnJuros, DMEntrada.C_TiposMovimentoCB_JUROS.Value = 'N');
    DesabilitarControle(pnTotalFinal, DMEntrada.C_TiposMovimentoCB_TOTALFINAL.Value = 'N');
    //DesabilitarControle( pnStatus, DMEntrada.C_TiposMovimentoCB_Status.Value = 'N');
    DesabilitarControle(cbEtiquetas, not (DMEntrada.C_TabelaTipoPadrao.Value in [101, 105]));

    {Campos Adicionais}
    DesabilitarControle(pnCampo01, DMEntrada.C_TiposMovimentoCB_CAMPO01.Value <> 'S');
    DesabilitarControle(pnCampo02, DMEntrada.C_TiposMovimentoCB_CAMPO02.Value <> 'S');
    DesabilitarControle(pnCampo03, DMEntrada.C_TiposMovimentoCB_CAMPO03.Value <> 'S');
    DesabilitarControle(pnCampo04, DMEntrada.C_TiposMovimentoCB_CAMPO04.Value <> 'S');

    sTmp := DMEntrada.C_TiposMovimentoCB_ImprimirOP.Value;
    if sTmp = '' then
        sTmp := 'N';
    cbImprimir.Checked := ((DMEntrada.bAlteracao) and (sTmp[1] in ['A', 'S'])) or
        (not (DMEntrada.bAlteracao) and (sTmp[1] in ['I', 'S']));

    sTmp := DMEntrada.C_TiposMovimentoCB_Pgtos.Value;
    if sTmp = '' then
        sTmp := 'N';
    cbPagar.Checked := ((DMEntrada.bAlteracao) and (sTmp[1] in ['A', 'S'])) or
        (not (DMEntrada.bAlteracao) and (sTmp[1] in ['I', 'S']));

    if not pnCampo03.Visible and pnCampo01.Visible then
        pnCampo01.Width := pnAdicionais.Width - 4;

    if not pnCampo04.Visible and pnCampo02.Visible then
        pnCampo02.Width := pnAdicionais.Width - 4;

    dbgItensCODIGOFORN.Visible := DMEntrada.C_TiposMovimentoCB_CODIGOFORN.Value = 'S';
    dbgItensI_CODIGO.Visible := DMEntrada.C_TiposMovimentoCB_CODIGO.Value = 'S';
    dbgItensReferencia.Visible := DMEntrada.C_TiposMovimentoCB_Referencia.Value = 'S';
    dbgItensCliente.Visible := DMEntrada.C_TiposMovimentoCB_FUNCIONARIO.Value = 'S';
    dbgItensStatus.Visible := DMEntrada.C_TiposMovimentoCB_StatusItens.Value = 'S';

    dbgItensColuna1.Visible := DMEntrada.C_TiposMovimentoCB_Coluna1.Value = 'S';
    dbgItensColuna2.Visible := DMEntrada.C_TiposMovimentoCB_Coluna2.Value = 'S';
    dbgItensColuna3.Visible := DMEntrada.C_TiposMovimentoCB_Coluna3.Value = 'S';
    dbgItensColuna4.Visible := DMEntrada.C_TiposMovimentoCB_Coluna4.Value = 'S';

    lbData.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DATA').asString);
    lbNumero.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_NUMERO').asString);
    lbLocalEntrega.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_LOCALENTREGA').asString);
    lbTipoEntrega.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TIPOENTREGA').asString);
    lbTermos.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TERMOS').asString);
    dfMensagem.Text := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_MENSAGEM').asString);
    lbDescontos.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCONTOS').asString);
    lbFrete.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FRETE').asString);
    lbTotalFinal.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALFINAL').asString);
    lbTotalItens.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_TOTALITENS').asString);
    lbDespesas.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESPESAS').asString);
    lbJuros.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_JUROS').asString);

    lbCampo01.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO1').asString);
    lbCampo02.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO2').asString);
    lbCampo03.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO3').asString);
    lbCampo04.Caption := (DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CAMPO4').asString);

    dbgItensCODIGOForn.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CODIGOFORN').asString;
    dbgItensI_CODIGO.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_CODIGO').asString;
    dbgItensDescricao.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_DESCRICAO').asString;
    dbgItensReferencia.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_REFERENCIA').asString;
    dbgItensI_Unidade.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_UNIDADE').asString;
    dbgItensQuantidade.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_QUANTIDADE').asString;
    dbgItensPreco.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_PRECO').asString;
    dbgItensSubTotal.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_SUBTOTAL').asString;
    dbgItensCliente.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_FUNCIONARIO').asString;

    dbgItensColuna1.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna1').asString;
    dbgItensColuna2.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna2').asString;
    dbgItensColuna3.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna3').asString;
    dbgItensColuna4.Caption := DMEntrada.C_TiposMovimento.FieldByName('TIT' + IntToStr(DMProjeto.nIdiomaPadrao) + '_Coluna4').asString;

    FormComponent.Caption := cmbTipoMovimento.Text;

    SetCorTitulos(DMEntrada.C_TiposMovimento.FieldByName('CorTitulos').Value);

    if DMEntrada.C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
        cmbTipoFav.LookupKeyValue := DMEntrada.C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;

    DMEntrada.C_MensagensOperacoes.Open;
end;

procedure TFrmEntradas.SetCorTitulos;
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
    dbgItens.HeaderColor := nCor;
    dbgParcelas.HeaderColor := nCor;
    dbgParcelas.BandColor := nCor;
    pnData.Color := nCor;
    cbLockDate.Color := nCor;

end;

procedure TFrmEntradas.DBEdit1Change(Sender: TObject);
begin
    inherited;
    cmbTipoMovimentoClick(Self);
    // Adriano
    if not (DMEntrada.C_TabelaTipoPadrao.value in [101, 106]) then
        btContabilidade.enabled := false
    else
        btContabilidade.enabled := true;
    /////////////////////////////
end;

procedure TFrmEntradas.dbgItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var
    sDescOriginal: string;
    sDescItem: string;
begin
    inherited;
    {Identificando Item Mesclado}
    if (dbgItens.GetFieldValue(ANode, 'Mesclado', 'N') = 'S') then
        AColor := $00FBE7E6;

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
            sDescOriginal := dbgItens.GetFieldValue(ANode, 'I_DESCRICAOCOMPRA', '');
            sDescItem := dbgItens.GetFieldValue(ANode, 'DESCRICAO', '');
            if (sDescOriginal <> sDescItem) and (sDescOriginal <> '') then
                AFont.Color := clBlue;
        end;

    if (dbgItens.GetFieldValue(ANode, 'BaixaEstoque', 'N') = 'N') and (DMEntrada.C_TabelaBaixaEstoque.Value = 'S') then
        AFont.Style := AFont.Style + [fsItalic];

end;

procedure TFrmEntradas.cmbTipoEntregaMouseEnter(Sender: TObject);
begin
    inherited;
    if TWinControl(Sender).Height < 19 then
        TWinControl(Sender).Height := 19;
end;

procedure TFrmEntradas.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    bDadosModificados := true;

end;

procedure TFrmEntradas.AtualizaDadosFornecedor;
var
    N: Currency;
begin
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    if DMEntrada.C_TabelaF_CREDITO.Value > 0 then
        begin
            dfFavorecido.Hint := 'Crédito: ' + FormatCurr('##,##0.00', DMEntrada.C_TabelaF_CREDITO.Value);
            dfFavorecido.Buttons[2].Visible := true;
        end
    else
        begin
            dfFavorecido.Hint := '';
            dfFavorecido.Buttons[2].Visible := False;
        end;

    if tsEntrega.TabVisible then
        with DMEntrada do
            begin
                {Locais de Entrega}
                C_LocaisEntrega.Close;
                C_LocaisEntrega.Open;
            end;

end;

procedure TFrmEntradas.dbtFornecedorMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmFornecedor.PopupFromCursorPos;
end;

procedure TFrmEntradas.dxBarSituacaoClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'QDROGERAL', '', False,
        'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString) then
        exit;
    DMProjeto.SetParametrosForm([DMEntrada.C_TabelaFAVORECIDO.Value, cmbTipoFav.LookupKeyValue]);
    DMProjeto.CriarForm('DlgSitFornecedor', Self, true);
end;

procedure TFrmEntradas.dxBarExtratoFinanceiroClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'EXTPARCELA', '', False,
        'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString) then
        exit;
    DMProjeto.SetParametrosForm([DMEntrada.C_TabelaFAVORECIDO.Value, DMEntrada.C_TabelaF_NOME.AsString, '' {Status}, cmbTipoFav.LookupKeyValue {TipoFav}]);
    DMProjeto.CriarForm('DlgExtFinFornecedor', Self, True);
end;

procedure TFrmEntradas.dxBarUltimasVendasClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'ULTCOMPRA', '', False,
        'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString) then
        exit;
    DMProjeto.SetParametrosForm([DMEntrada.C_TabelaFAVORECIDO.Value, DMEntrada.C_TabelaF_NOME.AsString, cmbTipoFav.LookupKeyValue {TipoFav}]);
    DMProjeto.CriarForm('DlgUltVendasFornecedor', Self, True);
end;

procedure TFrmEntradas.dfFavorecidoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 2 then
        DMProjeto.ImprimirRelatorioFavorecido(self, 'CREDITO', DMEntrada.C_TabelaFavorecido.Value);
end;

procedure TFrmEntradas.dbgItensPRECOPopup(Sender: TObject;
    const EditText: string);
begin
    inherited;
    {Abrindo Popup do Preco}
    dxCalcDisplay.Text := EditText;

end;

procedure TFrmEntradas.dbgItensPRECOCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;

    DMEntrada.C_Itens.Edit;

    DMEntrada.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);

    DMEntrada.C_Itens.Post;

    Accept := true;

end;

procedure TFrmEntradas.dbgItensPRECOInitPopup(Sender: TObject);
begin
    inherited;
    dbgItensPRECO.PopupControl := nil;

    pnOutros.Visible := false;
    pnPreco.Height := 169;

    dbgItensPRECO.PopupControl := pnPreco;
end;

procedure TFrmEntradas.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    dbtFornecedor.Hint := '';
    dbtFornecedor.Font.Color := clBlack;
    btComando1.Font.Color := clBlack;

    btComando2.Visible := False;

    pgItens.ActivePage := tsItens;
    cmbTipoMovimento.ReadOnly := False;
    dbgParcelasSaldo.Visible := False;

    cbEtiquetas.Visible := DMEntrada.C_TabelaTipoPadrao.Value in [101, 105];

end;

procedure TFrmEntradas.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'CONTABILID') then
        exit;

    if not (DMEntrada.C_TabelaTipoPadrao.value in [101, 106]) then
        begin
            DlgMsg.ShowMsg(3093);
            exit;
        end;
    DMEntrada.Contabiliza;

    DMEntrada.MostraContabilidade;
end;

procedure TFrmEntradas.dxBarUltimoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Entrada = ' + LastKeyFor('Last'));
end;

procedure TFrmEntradas.dxBarUltParaClienteClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Entrada = ' + LastKeyFor('Client'));
end;

procedure TFrmEntradas.dxBarUltParaDataClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Entrada = ' + LastKeyFor('Date'));
end;

procedure TFrmEntradas.dxBarUltParaOperacaoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Entrada = ' + LastKeyFor('Mov'));
end;

procedure TFrmEntradas.dxBarUltCanceladoClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Entrada = ' + LastKeyFor('Void'));
end;

function TFrmEntradas.LastKeyFor(Tipo: string): string;
begin
    with Q_SQLt do
        begin
            Close;
            SQL.Text := 'Select max(Entrada) as LastKey from Entradas where ';

            // Felipe - Ocorria erro em operações com tipo padrão diferente do Tipo Padrão de Abertura - 13/10/2014
            //SQL.Text := 'Select max(Entrada) as LastKey from Entradas where tipopadrao = '+IntToStr(nTipoPadraoAbertura)+' and ';
            if Tipo = 'Last' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' '
            else if Tipo = 'Client' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and Favorecido = ' + IntToStr(dfFavorecido.ID)
            else if Tipo = 'Date' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and Data = :Data'
            else if Tipo = 'Mov' then
                SQL.Text := SQL.Text + ' Situacao = ''N'' and TipoMovimento = ' + DMEntrada.C_TabelaTIPOMOVIMENTO.AsString
            else if Tipo = 'Void' then
                SQL.Text := SQL.Text + ' Situacao = ''C'' ';

            if Tipo = 'Date' then
                Params[0].asDateTime := DMEntrada.C_TabelaData.Value;

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

procedure TFrmEntradas.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if DMEntrada.C_TabelaTipoPadrao.Value = 101 then
        dbgParcelasSaldo.Visible := True;

    cmbTipoMovimento.ReadOnly := true;

    cbEtiquetas.Visible := DMEntrada.C_TabelaTipoPadrao.Value in [101, 105];

    btComando2.Visible := True;
    btComando2.Top := bv3.Top + 2;
end;

procedure TFrmEntradas.ppmParcelasPopup(Sender: TObject);
begin
    inherited;

    DMEntrada.C_PlanosPagamento.Locate('PlanoPagamento', DMEntrada.C_TabelaPlanoPagamento.Value, []);

    ExcluirParcela1.Visible := DMEntrada.C_ParcelasPgtos.Value = 0;
    CancelarParcela1.Visible := DMEntrada.C_ParcelasPgtos.Value > 0;

end;

procedure TFrmEntradas.dxBarCadastroClienteClick(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_TabelaFavorecido.Value <> 0 then
        DMProjeto.SetParametrosForm([DMEntrada.C_TabelaFavorecido.Value]);

    DMProjeto.C_TipoFav.Locate('TipoFavorecido', cmbTipoFav.LookupKeyValue, []);

    DMProjeto.CriarForm(DMProjeto.C_TipoFavFORM.Value, Self, true);
end;

procedure TFrmEntradas.dbgParcelasCustomDrawCell(Sender: TObject;
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

procedure TFrmEntradas.pgItensChangingToTab(Sender: TObject; tab: Integer;
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

procedure TFrmEntradas.pgItensChange(Sender: TObject);
begin
    inherited;
    if pgItens.LastTab = tsItens then
        begin
            if DMEntrada.C_Itens.Active and (DMEntrada.C_Itens.State <> dsBrowse) then
                DMEntrada.C_Itens.Post;
        end
    else if pgItens.LastTab = tsTermos then
        begin
            if DMEntrada.C_Parcelas.Active and (DMEntrada.C_Parcelas.State <> dsBrowse) then
                DMEntrada.C_Parcelas.Post;
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

    if DMEntrada = nil then
        exit;

    {Atribuindo o Plano de Pagamento Padrão do Cliente - se existir}
    if not DMEntrada.bAlteracao and (pgItens.ActivePage = tsTermos) then
        if (DMEntrada.C_TabelaPlanoPagamento.Value = 0) and
            (DMEntrada.C_TabelaF_PLANOPAGAMENTO.Value <> 0) then
            begin
                DMEntrada.C_Tabela.Edit;
                DMEntrada.C_TabelaPlanoPagamento.Value := DMEntrada.C_TabelaF_PLANOPAGAMENTO.Value;
            end;

end;

procedure TFrmEntradas.lbTermosSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMEntrada.C_TabelaPlanoPagamento.asVariant, 'E']);
end;

procedure TFrmEntradas.DBEdit3Change(Sender: TObject);
begin
    inherited;
    AtualizaDadosFornecedor;
end;

procedure TFrmEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    if bmpSeta <> nil then
        bmpSeta.Free;
    // Adriano
    if DMEntrada.ContabilidadeAtivado then
        DMEntrada.ContabilidadeDesativado;
    ////////////////////
end;

procedure TFrmEntradas.dbtTotalFinalAfterEdit(Sender: TObject);
var
    nDif: Currency;
begin
    inherited;
    {Atualizando os Campos Despesas ou Descontos conforme valor digitado pelo usuário}
    nDif := DMEntrada.C_TabelaTOTALITENS.asCurrency +
        DMEntrada.C_TabelaDESCONTO.asCurrency + {O Desconto é negativo}
    DMEntrada.C_TabelaFRETE.asCurrency +
        DMEntrada.C_TabelaIMPOSTO.asCurrency +
        DMEntrada.C_TabelaOUTRASDESPESAS.asCurrency +
        DMEntrada.C_TabelaJUROS.asCurrency;

    {Novo Total Digitado}
    nDif := DMEntrada.C_TabelaTotal.asCurrency - nDif;

    if nDif <> 0 then
        begin
            DMEntrada.C_Tabela.Edit;

            if nDif > 0 then {=> + Despesas}
                DMEntrada.C_TabelaOUTRASDESPESAS.asCurrency := DMEntrada.C_TabelaOUTRASDESPESAS.asCurrency + nDif
            else {=> Desconto}
                DMEntrada.C_TabelaDESCONTO.asCurrency := DMEntrada.C_TabelaDESCONTO.asCurrency + nDif;

        end;

end;

procedure TFrmEntradas.T_TermosAfterTransition(Sender: TObject);
begin
    inherited;
    dfObs.Invalidate;
    cmbTermos.Invalidate;
    cbPagar.Invalidate;
    pnDescontos.Invalidate;
    dfDesconto.Invalidate;
    cmbTipoFavEntrega.Invalidate;
end;

procedure TFrmEntradas.FormComponentGravou(Sender: TObject);
    function PagoInvoice(INVOICE: Integer): Currency;
    begin
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Select Sum( Valor - FaltaPagar) as Pgtos ' +
                    'From DuplicatasAPagar where Status > 0 and Compra = :C ';
                Params[0].asInteger := INVOICE;
                Open;

                result := FieldByName('Pgtos').asCurrency;

                Close;

            end;
    end;
var
    sIDsTitulos: string;
    sItems: string;
begin
    inherited;

    {Recebendo Pagamentos para o Movimento gravado}
    if not bOutroSalvar then
        begin
            if cbPagar.Checked and (DMEntrada.C_TabelaTipoPadrao.Value = 101) and
                (DMEntrada.C_Parcelas.RecordCount > 0) then
                begin
                    DMProjeto.FecharForm('DlgSangria');
                    sIDsTitulos := dbgParcelas.Distinct('ID');
                    DMProjeto.SetParametrosForm([null, DMEntrada.C_TabelaFavorecido.Value, sIDsTitulos]);
                    DMProjeto.CriarForm('DlgSangria', self, true);

                    if DMEntrada.bAlteracao then
                        begin
                            DMEntrada.RefreshParcelas;
                            DMEntrada.C_Tabela.Edit;
                            DMEntrada.C_TabelaPagoInvoice.asCurrency := PagoInvoice(DMEntrada.C_TabelaIDMEstre.Value);
                            DBEdit4Change(Self); //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
                        end;
                end;
        end;

    if not FormatoTabela.Checked then
        begin
            if cbImprimir.Checked then
                begin
                    RptPedidosCompra := TRptPedidosCompra.Create(self);

                    if (DMEntrada.C_TiposMovimentoTIPOIMPRESSAO_OP.Value = '40') then
                        RptPedidosCompra.Imprimir40Colunas(DMEntrada.C_TabelaIDMESTRE.Value, DMEntrada.C_TabelaPDV.Value)
                    else
                        RptPedidosCompra.ImprimePedidoCompra(DMEntrada.C_TabelaIDMestre.Value, cbSemPreco.Checked);

                    RptPedidosCompra.free;
                end;
        end;

    if DMEntrada.bAlteracao then
        AtualizaDadosFornecedor;

    if not FormatoTabela.Checked then
        begin
            if cbEtiquetas.Checked then
                begin
                    DMProjeto.SetParametrosForm([cmbTipoMovimento.Text, '', 'I', 'ENTRADAS;' + DMEntrada.C_TabelaIDMestre.AsString + ';ID']);
                    DMProjeto.CriarForm('DlgEtiquetas', self, true);
                end;
        end;

end;

procedure TFrmEntradas.DBEdit4Change(Sender: TObject);
begin
    inherited;
    cmbTermos.ReadOnly := False;
    lbDesativado.Visible := false;

    if DMEntrada.bAlteracao then
        begin
            if DMEntrada.C_TabelaPagoInvoice.asCurrency > 0 then
                cmbTermos.ReadOnly := True
            else
                cmbTermos.ReadOnly := false;

            if DMEntrada.C_TabelaTipoPadrao.Value = 101 then
                begin
                    if (DMEntrada.C_TabelaPagoInvoice.asCurrency > 0) and
                        (DMEntrada.C_TabelaPagoInvoice.asCurrency < DMEntrada.C_TabelaTotal.asCurrency) then
                        begin
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
                    else if DMEntrada.C_TabelaPagoInvoice.asCurrency >= DMEntrada.C_TabelaTotal.asCurrency then
                        begin
                            lbDesativado.Caption := 'Liquidado';
                            lbDesativado.Font.Color := clBlue;
                            lbDesativado.Visible := true;
                        end;
                end;
        end; //TipoPadrao

end;

procedure TFrmEntradas.dxBarExcluirClick(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_Parcelas.Active and (DMEntrada.C_Parcelas.RecordCount > 0) and
        DMProjeto.DlgAutorizacao.ExecuteX('FrmEntradas', 'EXCLUIPARC', '', False,
        'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString) then
        begin
            with Q_SQLt do
                begin
                    SQL.Text := 'Select (Valor - FaltaPagar) as Pgtos ' +
                        'From DuplicatasAPagar where ID = :ID ';
                    Params[0].asInteger := DMEntrada.C_ParcelasID.Value;
                    Open;

                    if FieldByName('Pgtos').asCurrency > 0 then
                        begin
                            Close;
                            DlgMsg.ShowMsg(2151);
                            Exit;
                        end;
                    Close;

                end;
            DMEntrada.C_Parcelas.Delete;
        end;
end;

procedure TFrmEntradas.dxBarIncluirClick(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_Parcelas.Active then
        DMEntrada.C_Parcelas.Append;
end;

procedure TFrmEntradas.lbDesativadoDblClick(Sender: TObject);
begin
    {Mostrar Pagamentos}
end;

procedure TFrmEntradas.FormComponentRefresh(Sender: TObject;
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
        dfFavorecido.ID := LastDataObject.ObjectKey;
end;

procedure TFrmEntradas.btImprimirClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'IMP', '', False, 'Cliente:' + DMEntrada.C_TabelaF_NOME.AsString + #13#10 +
        'Num.Oper.:' + DMEntrada.C_TabelaNUMERO.AsString) then
        exit;
    bOutroSalvar := true;
    try
        btGravarClick(self);
    finally
        bOutroSalvar := false;
    end;
    if not cbImprimir.Checked and (LastDataObject.ObjectKey <> null) and (UpperCase(LastDataObject.TableName) = 'ENTRADAS') then
        begin
            RptPedidosCompra := TRptPedidosCompra.Create(self);

            if (DMEntrada.C_TiposMovimentoTIPOIMPRESSAO_OP.Value = '40') then
                RptPedidosCompra.Imprimir40Colunas(DMEntrada.C_TabelaIDMESTRE.Value, DMEntrada.C_TabelaPDV.Value)
            else
                RptPedidosCompra.ImprimePedidoCompra(DMEntrada.C_TabelaIDMestre.Value, cbSemPreco.Checked);

            RptPedidosCompra.Release;
            RptPedidosCompra := nil;
        end;
end;

procedure TFrmEntradas.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    bDadosModificados := False;
end;

procedure TFrmEntradas.dxBarReceberPgtoClick(Sender: TObject);
    function PagoInvoice(INVOICE: Integer): Currency;
    begin
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Select Sum( Valor - FaltaPagar) as Pgtos ' +
                    'From DuplicatasAPagar where Status > 0 and Compra = :C ';
                Params[0].asInteger := INVOICE;
                Open;

                result := FieldByName('Pgtos').asCurrency;

                Close;

            end;
    end;
var
    sIDsTitulos: string;
begin
    inherited;
    if (DMEntrada.C_TabelaTipoPadrao.Value = 101) and
        (DMEntrada.C_Parcelas.RecordCount > 0) then
        begin
            DMProjeto.FecharForm('DlgSangria');
            sIDsTitulos := dbgParcelas.Distinct('ID');
            DMProjeto.SetParametrosForm([null, DMEntrada.C_TabelaFavorecido.Value, sIDsTitulos]);
            DMProjeto.CriarForm('DlgSangria', self, true);

            {Fazendo o Refresh nas Parcelas}
            DMEntrada.RefreshParcelas;

            DMEntrada.C_Tabela.Edit;
            DMEntrada.C_TabelaPagoInvoice.asCurrency := PagoInvoice(DMEntrada.C_TabelaIDMEstre.Value);
            DBEdit4Change(Self); //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
        end
    else
        begin
            DMProjeto.FecharForm('DlgPgtoInstantaneo');
            DMProjeto.SetParametrosForm([null, DMEntrada.C_TabelaFavorecido.Value]);
            DMProjeto.CriarForm('DlgPgtoInstantaneo', self, true);
        end;

end;

procedure TFrmEntradas.dxBarVerPagamentosClick(Sender: TObject);
begin

    DMProjeto.VerPagamentos(0, DMEntrada.C_TabelaIDMestre.Value, DMEntrada.C_TabelaF_Nome.Value);

end;

procedure TFrmEntradas.dbgItensEditing(Sender: TObject;
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
        ((DMEntrada.C_ItensMesclado.Value = 'S') or (DMEntrada.C_ItensQtdRecebida.Value > 0)) or
        (DMEntrada.C_ItensHasChildren.value = 'S')) then
        Allow := false;

end;

procedure TFrmEntradas.FormComponentLayoutChange(Sender: TObject; LayoutGrid: Boolean;
    var bSkip: Boolean);
begin
    inherited;
    if FormatoTabela.Checked then
        begin
            if bDadosModificados then
                begin
                    DMEntrada.C_Tabela.UndoLastChange(false);
                end;
        end;
end;

procedure TFrmEntradas.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    dfStatus.ReadOnly := not DMProjeto.LerPermissao('FrmEntradas', 'ALTSTATUSO');
    TS_Label2.Enabled := not dfStatus.ReadOnly;
    cbSemPreco.Checked := false;
    nTipoPadraoAbertura := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), 101);
    try
        if DMEntrada.C_TiposMovimento.Locate('TipoPadrao', nTipoPadraoAbertura, []) then
            DMEntrada.nTipoMovPadrao := DMEntrada.C_TiposMovimentoTipoMovimento.Value;
    except
        DMEntrada.nTipoMovPadrao := DMEntrada.C_TiposMovimentoTipoMovimento.Value;
    end;

    sTipoAbertura := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), '');

    dbgItenslkAlmoxarifado.DisableCustomizing := DMProjeto.Parametro('MultiAlmox') <> 'S';
    dbgItenslkAlmoxarifado.Visible := (DMProjeto.Parametro('MultiAlmox') = 'S') and (DMProjeto.Parametro('AlmoxEntrd') = 'S');
    dbtData.Enabled := DMProjeto.LerPermissao(Self.Name, 'ALTDATAMOV');

    {O timer é utilizado para que os comandos sejam executados sob a visualização do usuário}
    if sTipoAbertura = 'FATURAR OPERACAO' then
        begin
            nMovFaturar := DMProjeto.GetParametrosForm(3);
            nOpFaturamento := DMProjeto.GetParametrosForm(4);
            tmInvoice.Enabled := true;
        end;

    DefinirTipoMovAbertura(IIF(nTipoPadraoAbertura <> 0, nTipoPadraoAbertura, 101),
        DMEntrada.bAlteracao and (DMProjeto.GetParametrosForm(0) = null),
        (Esquerda(sTipoAbertura, 5) = 'GERAR'));

    dbgItensNumeroLote.visible := DMProjeto.bControleValidade;
    dbgItensValidade.visible := DMProjeto.bControleValidade;
    dbgItensFABRICACAO.visible := DMProjeto.bControleValidade;
end;

procedure TFrmEntradas.ppmGridPopup(Sender: TObject);
begin
    inherited;
    ComposiodeItens1.Enabled := DMEntrada.C_ItensHasChildren.value = 'S';

    {Estoque}
    EstoqueItem.Visible := (DMEntrada.C_ItensI_TipoItem.Value = 1);
    MinimoItem.Visible := EstoqueItem.Visible;
    PontoPedidoItem.Visible := EstoqueItem.Visible;
    MaximoItem.Visible := EstoqueItem.Visible;
    if EstoqueItem.Visible then
        begin
            EstoqueItem.Caption := SeparaStrings(EstoqueItem.Caption, ':', 1) + ': ' +
                DMEntrada.EstoqueItem(DMEntrada.C_ItensITEM.Value) + ' (' +
                DMEntrada.C_ItensUnidade.Value + ')';

            MinimoItem.Caption := SeparaStrings(MinimoItem.Caption, ':', 1) + ': ' +
                FormatCurr('#,##0.0##', DMEntrada.C_ItensI_QtdeMinimo.Value / DMEntrada.C_ItensFator.Value) + ' (' +
                DMEntrada.C_ItensUnidade.Value + ')';

            PontoPedidoItem.Caption := SeparaStrings(PontoPedidoItem.Caption, ':', 1) + ': ' +
                FormatCurr('#,##0.0##', DMEntrada.C_ItensI_PontoPedido.Value / DMEntrada.C_ItensFator.Value) + ' (' +
                DMEntrada.C_ItensUnidade.Value + ')';

            MaximoItem.Caption := SeparaStrings(MaximoItem.Caption, ':', 1) + ': ' +
                FormatCurr('#,##0.0##', DMEntrada.C_ItensI_QtdeMaximo.Value / DMEntrada.C_ItensFator.Value) + ' (' +
                DMEntrada.C_ItensUnidade.Value + ')';
        end;

end;

procedure TFrmEntradas.DefinirTipoMovAbertura;
begin
    {Operacao}
    if (DMEntrada.C_TabelaTipoPadrao.Value <> nTipoPadrao) or bNovo then
        begin

            if bChange then
                Estado_Inicial;

            if DMEntrada.C_TiposMovimento.Locate('TipoPadrao', nTipoPadrao, []) then
                begin
                    DMEntrada.C_Tabela.Edit;
                    DMEntrada.C_TabelaTipoMovimento.Value := DMEntrada.C_TiposMovimentoTipoMovimento.Value;
                    if bChange then
                        cmbTipoMovimento.OnChange(Self);
                end;

        end;

end;

procedure TFrmEntradas.FaturarOperacao;
var
    nDesconto, nFrete, nDespesa, nPJuros, nJuros: Currency;
    nPlano: Integer;
    sMessage: string;
    Q_Filhos: TIBQuery;
begin

    with DMEntrada do
        begin
            bFaturandoOperacao := true;

            try
                {Operacao}
                C_Tabela.Edit;

                if C_TiposMovimento.Locate('TipoPadrao', 101, []) then
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
                Q_SQLt.SQL.Text := 'Select * from Entradas where Entrada = :E ';
                Q_SQLt.Params[0].asInteger := nMovFaturar;
                Q_SQLt.Open;

                {Cliente}
                dfFavorecido.ID := Q_SQLt.FieldByName('Favorecido').asInteger;

                {Outros dados}
                C_TabelaCAMPO01.asVariant := Q_SQLt.FieldByName('Campo01').Value;
                C_TabelaCAMPO02.asVariant := Q_SQLt.FieldByName('Campo02').Value;
                C_TabelaCAMPO03.asVariant := Q_SQLt.FieldByName('Campo03').Value;
                C_TabelaCAMPO04.asVariant := Q_SQLt.FieldByName('Campo04').Value;
                C_TabelaTIPOENTREGA.asVariant := Q_SQLt.FieldByName('TipoEntrega').Value;
                C_TabelaLOCALENTREGA.asVariant := Q_SQLt.FieldByName('LocalEntrega').Value;
                C_TabelaDATAENTREGA.asVariant := Q_SQLt.FieldByName('DataEntrega').Value;

                nDesconto := Q_SQLt.FieldByName('Desconto').asCurrency;
                nFrete := Q_SQLt.FieldByName('Frete').asCurrency;
                nDespesa := Q_SQLt.FieldByName('OutrasDespesas').asCurrency;

                nPlano := Q_SQLt.FieldByName('PlanoPagamento').asInteger;
                nPJuros := Q_SQLt.FieldByName('PJuros').asCurrency;
                nJuros := Q_SQLt.FieldByName('Juros').asCurrency;
                sMessage := Q_SQLt.FieldByName('OBS').asString;

                {***Itens da Operação - Mesclando}
                Q_SQLt.Close;
                Q_SQLt.SQL.Text := 'Select * from EntradasItens where Entrada = :E ';
                Q_SQLt.Params[0].asInteger := nMovFaturar;
                Q_SQLt.Open;

                while not Q_SQLt.EOF do
                    begin
                        C_Itens.Append;
                        dbgItens.TS_ID := Q_SQLt.FieldByName('Item').asInteger; //Localiza o Item.

                        C_ItensMESCLADO.Value := 'S';

                        C_ItensPreco.asFloat := Q_SQLt.FieldByName('Preco').asFloat;

                        C_ItensQuantidade.Value := Q_SQLt.FieldByName('Quantidade').asFloat;

                        C_ItensDESCRICAO.Value := Q_SQLt.FieldByName('DESCRICAO').asString;
                        C_ItensUSOTIPOITEM.asVariant := Q_SQLt.FieldByName('USOTIPOITEM').Value;

                        C_ItensCOLUNA1.asVariant := Q_SQLt.FieldByName('COLUNA1').Value;
                        C_ItensCOLUNA2.asVariant := Q_SQLt.FieldByName('COLUNA2').Value;
                        C_ItensCOLUNA3.asVariant := Q_SQLt.FieldByName('COLUNA3').Value;
                        C_ItensCOLUNA4.asVariant := Q_SQLt.FieldByName('COLUNA4').Value;

                        C_ItensClienteRef.asVariant := Q_SQLt.FieldByName('ClienteRef').Value;
                        C_ItensHASCHILDREN.Value := Q_SQLt.FieldByName('HASCHILDREN').asString;

                        {Copiando os Filhos
                        if (C_ItensHASCHILDREN.VAlue = 'S') then begin
                          if Q_Filhos = nil then begin
                            Q_Filhos := TIBQuery.Create(self);
                            Q_Filhos.Database := DMProjeto.DB_Projeto;
                            Q_Filhos.Transaction := DMProjeto.IBT_Projeto;
                            Q_Filhos.SQL.Text := 'select si.*, i.codigo, i.descricao '+
                                                 'from saidasitensfilhos si, itens i '+
                                                 'where si.item = i.item and si.saidaitem = :IDITEM ';
                          end;
                          Q_Filhos.Close;
                          Q_Filhos.Params[0].asInteger := Q_SQLt.FieldByName('SAIDAITEM').asInteger;
                          Q_Filhos.Open;

                          Q_Filhos.First;
                          bPopulando := true;  // para não ocorrer o change.
                          while not Q_Filhos.EOF do begin
                            C_SaidasItensFilhos.Append;
                            C_SaidasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;

                            C_SaidasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
                            C_SaidasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
                            C_SaidasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
                            C_SaidasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
                            C_SaidasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;

                            C_SaidasItensFilhos.Post;

                            Q_Filhos.Next;
                          end;
                          bPopulando := False;
                        end;
                        }
                        C_Itens.Post;

                        C_Mesclagens.Append;
                        C_Mesclagens.FieldByName('ENTRADAITEM_ORIGINAL').asInteger := Q_SQLt.FieldByName('ENTRADAITEM').asInteger;
                        C_Mesclagens.FieldByName('ENTRADA_ORIGINAL').asInteger := Q_SQLt.FieldByName('ENTRADA').asInteger;
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

                {***Parcelas da Operação - Mesclando}
                Q_SQLt.Close;
                Q_SQLt.SQL.Text := 'Select * from DuplicatasAPagar where Compra = :E ';
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

procedure TFrmEntradas.FormComponentBeforeMoveRecord(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if (DMEntrada.C_Tabela.State <> dsBrowse) then
        DMEntrada.C_Tabela.Post;
    if bDadosModificados and (DlgMsg.ShowMsg(2103) = 100) then
        begin
            bOutroSalvar := true;
            btGravarClick(self);
            bOutroSalvar := false;
        end
    else if bDadosModificados then
        begin
            DMEntrada.C_Tabela.UndoLastChange(false);
        end;
end;

procedure TFrmEntradas.PerformancedaGravao1Click(Sender: TObject);
begin
    inherited;
    DlgMsg.ShowMsg(2105, [DMEntrada.sPerformance]);
end;

procedure TFrmEntradas.dbgItensDESCRICAOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 1 then
        begin
            DMProjeto.SetParametrosForm([DMEntrada.C_ItensITEM.asVariant]);
            DMProjeto.CriarForm('FrmItens', self, true);
            if (DMEntrada.C_Itens.State in [dsInsert, dsEdit]) then
                dbgItens.TS_ID := LastDataObject.ObjectKey;
        end;
end;

procedure TFrmEntradas.RecebimentosdaParcela1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.VerPagamentos(DMEntrada.C_ParcelasID.asInteger, 0, dfFavorecido.Text);
end;

procedure TFrmEntradas.Legenda1Click(Sender: TObject);
begin
    inherited;
    DlgCoresParcelasVendas := TDlgCoresParcelasVendas.Create(self);
    DlgCoresParcelasVendas.ShowModal;
    DlgCoresParcelasVendas.Release;
    DlgCoresParcelasVendas := nil;
end;

procedure TFrmEntradas.btItensUpClick(Sender: TObject);
begin
    inherited;
    cbImprimir.Visible := false;
    cbEtiquetas.Visible := false;
    cbSemPreco.Visible := false;
end;

procedure TFrmEntradas.btItensDownClick(Sender: TObject);
begin
    inherited;
    cbImprimir.Visible := true;
    cbEtiquetas.Visible := true;
    cbSemPreco.Visible := true;
end;

procedure TFrmEntradas.EstatsticadeVendas1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX('FrmEntradas', 'EV', '', False, 'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString + #13#10 +
        'Item:' + DMEntrada.C_ItensDESCRICAO.AsString) then
        exit;

    DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self, DMEntrada.C_ItensItem.value, DMEntrada.C_TabelaFavorecido.Value, DMEntrada.C_ItensDescricao.Value);
    DlgEstatVendasProduto.free;
    DlgEstatVendasProduto := nil;
end;

procedure TFrmEntradas.cmbVendedorClick(Sender: TObject);
begin
    inherited;
    bDadosModificados := true;
end;

procedure TFrmEntradas.lbLocalEntregaSetParametrosForm(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_TabelaLocalCliente.Value = 0 then
        DMProjeto.SetParametrosForm([DMEntrada.C_TabelaLocalEntrega.asVariant,
            -1 {Locais da Propria Empresa}])
    else
        DMProjeto.SetParametrosForm([DMEntrada.C_TabelaLocalEntrega.asVariant,
            DMEntrada.C_TabelaLocalCliente.Value]);
end;

procedure TFrmEntradas.dbgItensClick(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_Itens.IsEmpty then
        begin
            try
                DMEntrada.C_Itens.Append;
            except
            end;
        end;
end;

procedure TFrmEntradas.dxCalculator1KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if Key = #13 then
        dbgItensPRECO.TreeList.CloseEditor;
end;

procedure TFrmEntradas.DBEdit5Change(Sender: TObject);
begin
    inherited;
    {Situacao}
    lbCancelado.Visible := (DMEntrada.C_TabelaSituacao.Value = 'C');
end;

procedure TFrmEntradas.CancelarParcela1Click(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_Parcelas.Active and (DMEntrada.C_Parcelas.RecordCount > 0) and
        DMProjeto.DlgAutorizacao.ExecuteX('FrmEntradas', 'CanParcela', '', False, 'Fornecedor:' + DMEntrada.C_TabelaF_NOME.AsString) then
        begin
            with Q_SQLt do
                begin
                    SQL.Text := 'Select (Valor - FaltaPagar) as Pgtos ' +
                        'From DuplicatasAPagar where ID = :ID ';
                    Params[0].asInteger := DMEntrada.C_ParcelasID.Value;
                    Open;

                    if FieldByName('Pgtos').asCurrency > 0 then
                        begin
                            Close;
                            if DlgMsg.ShowMsg(2296) <> 100 then
                                Exit;
                            Exit;
                        end;
                    Close;
                end;

            DMFinanceiro.CancelarTitulo(DMEntrada.C_ParcelasID.Value, null, null, '', true, true);

            {Refresh}
            DMEntrada.RefreshParcelas;

        end;
end;

procedure TFrmEntradas.dbgItensTS_BeforeDeleteAll(Sender: TObject; var CanDelete: Boolean);
begin
    inherited;
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX('FrmEntradas', 'EXCLUIITEM', '', False, 'Item:' + DMEntrada.C_ItensDESCRICAO.AsString);
end;

procedure TFrmEntradas.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if (Shift = [ssCtrl, ssAlt]) and (Key = Ord('P')) then
        DlgMsg.ShowMsg(2105, [DMEntrada.sPerformance]);
end;

procedure TFrmEntradas.dbgItensClienteButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    {Localizando o Cliente}
    if AbsoluteIndex = 0 then
        dbgItens.LocalizarFavorecidoEx(dbgItens.TS_Text, 'ClienteRef', '1', 'Nome', DMProjeto.C_LocalizarFav)
    else if AbsoluteIndex = 1 then
        begin
            if (DMEntrada.C_ItensClienteRef.Value <> 0) and (dbgItens.TS_Text <> '') then
                DMProjeto.SetParametrosForm([DMEntrada.C_ItensClienteRef.Value]);

            DMProjeto.CriarForm('FrmClientes', self, true);
        end;
end;

procedure TFrmEntradas.btOutrosMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmEntradas.pnFornecedorEnter(Sender: TObject);
var
    i: Integer;
begin
    inherited;
    for i := 0 to ComponentCount - 1 do
        begin
            if (Components[i] is TTS_DBEdit) and (TWinControl(Components[i]).Parent = pnFornecedor) then
                (Components[i] as TTS_DBEdit).TabStop := true;
        end;
end;

procedure TFrmEntradas.pnFornecedorExit(Sender: TObject);
var
    i: Integer;
begin
    inherited;
    for i := 0 to ComponentCount - 1 do
        begin
            if (Components[i] is TTS_DBEdit) and (TWinControl(Components[i]).Parent = pnFornecedor) then
                (Components[i] as TTS_DBEdit).TabStop := false;
        end;
end;

procedure TFrmEntradas.dbgParcelasEdited(Sender: TObject;
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
            if (nParcela = 1) and DMEntrada.PlanoPgtoComEntrada then //Alterou a entrada
                DMEntrada.GerarParcelamento(nValor, true)
            else
                DMEntrada.RatearDifProxParcelas(nParcela, nValorParcelaBE - nValor)
        end;

end;

procedure TFrmEntradas.dbgParcelasEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
begin
    inherited;
    nValorParcelaBE := dbgParcelas.GetFieldValue(Node, 'Valor', 0);
end;

procedure TFrmEntradas.dfCPF_CNPJDblClick(Sender: TObject);
begin
    inherited;
    if DMEntrada.C_TabelaF_Email.Value <> '' then
        SendMail('', '', '', '', '', DMEntrada.C_TabelaF_Nome.Value, DMEntrada.C_TabelaF_Email.Value);
end;

procedure TFrmEntradas.tmInvoiceTimer(Sender: TObject);
begin
    inherited;
    tmInvoice.Enabled := false;

    if sTipoAbertura = 'FATURAR OPERACAO' then
        begin
            FaturarOperacao;
        end;

end;

procedure TFrmEntradas.dbgItensCodigoFornButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
var
    sCodigo: string;
    nOp: Integer;
begin
    inherited;
    sCodigo := dbgItens.TS_Text;

    if DMEntrada.C_TabelaFavorecido.asInteger = 0 then
        begin
            DlgMsg.ShowMsg(2324);
            exit;
        end;

    if sCodigo <> '' then
        with Q_SQLt do
            begin
                Close;
                SQL.Text := 'Select ITEM from ItensForn where Fornecedor = :F and CodigoForn = :CF ';
                ParamByName('F').asInteger := DMEntrada.C_TabelaFavorecido.asInteger;
                ParamByName('CF').asString := sCodigo;
                Open;

                if FieldByName('ITEM').asInteger <> 0 then
                    begin
                        dbgItens.TS_ID := FieldByName('ITEM').asInteger;
                        dbgItens.TS_SelectedColumn := 'QUANTIDADE';
                    end
                else
                    begin
                        Close;
                        if (DMEntrada.C_TabelaTipoPadrao.Value in [101, 105]) and (DlgMsg.ShowMsg(2323) = 100) then
                            begin

                                DlgEscolherItem := TDlgEscolherItem.Create(self);
                                nOp := DlgEscolherItem.ShowModal;
                                if nOp <> -1 then
                                    begin {no Trigger de EntradasItens este código será registrado em ItensForn}
                                        dbgItens.TS_ID := nOp;
                                        dbgItens.TS_SelectedColumn := 'QUANTIDADE';
                                    end;
                                DlgEscolherItem.Release;

                            end;
                    end;

                DMEntrada.C_Itens.Edit;
                DMEntrada.C_ItensCodigoForn.Value := sCodigo;

                Close;
            end;
end;

procedure TFrmEntradas.OperaoNmero1Click(Sender: TObject);
var
    nOp: Integer;
begin
    inherited;
    DMProjeto.SetParametrosForm([null, DMEntrada.C_TabelaTipoPadrao.Value]);
    nOP := DMProjeto.CriarForm('DlgEscolherOperacaoEntrada', self, true);

    {Realizando a Pesquisa}
    if nOp > 0 then
        begin
            Localizar('', ' where t.Entrada = ' + IntToStr(nOp));
        end;

end;

procedure TFrmEntradas.Memorizar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(Self, nCodForm, DMEntrada.C_TabelaIDMestre.Value,
        DMEntrada.C_TabelaNUMERO.Value, DMEntrada.C_TabelaF_NOME.Value, 0, DMEntrada.C_TabelaFavorecido.value);
end;

procedure TFrmEntradas.ComposiodeItens1Click(Sender: TObject);
var nop: integer;
begin
    inherited;
    try
        if DMEntrada.C_Itens.State <> dsbrowse then
            DMEntrada.C_Itens.Post;
    except
    end;

    FrmEntradasItensFilhos := TFrmEntradasItensFilhos.Create(self);
    FrmEntradasItensFilhos.DM := TDMEntradas(DMJanela);
    nop := FrmEntradasItensFilhos.ShowModal;
    FrmEntradasItensFilhos.Release;
    FrmEntradasItensFilhos := nil;

    if nop = 1 then
        begin
            if DMEntrada.C_EntradasItensFilhos.ChangeCount > 0 then
                begin
                    if DMEntrada.C_ItensI_Estoque.value <> 0 then
                        DlgMsg.ShowMsg(6045);
                end;
        end;
end;

procedure TFrmEntradas.OutrasOpes1Click(Sender: TObject);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmEntradas.AlterarAlmoxarifado1Click(Sender: TObject);
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
            DMEntrada.C_Tabela.Edit;
            DMEntrada.C_TabelaAlmoxPadrao.Value := nAlmox;
        end;

end;

procedure TFrmEntradas.ppmOutrosPopup(Sender: TObject);
begin
    inherited;
    AlterarAlmoxarifado1.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';
end;

procedure TFrmEntradas.dfMensagemCloseUp(Sender: TObject; var Text: string;
    var Accept: Boolean);
begin
    inherited;
    Accept := true;

    with DMEntrada do
        begin
            C_Tabela.Edit;
            C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
        end;
end;

procedure TFrmEntradas.dbgMensagensDblClick(Sender: TObject);
begin
    inherited;
    (GetParentForm(dbgMensagens) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TFrmEntradas.Evento_AtualizaItensFilhos(var Msg: TMessage);
begin
    DMEntrada.AtualizaItensFilhos;
end;

procedure TFrmEntradas.Evento_Foco(var Msg: TMessage);
begin
    dbtNumero.SetFocus;
end;

procedure TFrmEntradas.dbgItensTS_AposLocalizar(Sender: TObject);
begin
    inherited;
    PostMessage(Handle, PM_PostItens, 0, 0);
    dbgItens.TS_SelectedColumn := 'Quantidade';
end;

procedure TFrmEntradas.CadastrarNovoItem1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmItens', self, true);
    if (DMEntrada.C_Itens.State in [dsInsert, dsEdit]) then
        dbgItens.TS_ID := LastDataObject.ObjectKey;
end;

function TFrmEntradas.Conteudo;
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

function TFrmEntradas.CampoGrid: string;
var
    sFieldName: string;
begin
    result := '';

    sFieldName := dbgItens.TS_SelectedColumn;

    if sFieldName <> '' then
        result := DMEntrada.C_Itens.FieldByName(sFieldName).Origin;

end;

function TFrmEntradas.ConteudoGrid: string;
var
    sText, sWhere, sFieldName: string;
    oField: TField;
begin
    result := '';

    sFieldName := dbgItens.TS_SelectedColumn;
    sText := dbgItens.TS_Text;

    if sFieldName <> '' then
        begin
            oField := TField(DMEntrada.C_Itens.FindField(sFieldName));

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

procedure TFrmEntradas.btPesquisarClick(Sender: TObject);
begin
    DMEntrada.sWhereAdicional := '';

    {Verificando se foi informado algo no item para ser pesquisado também}
    if DMEntrada.C_Itens.Active and (DMEntrada.C_Itens.RecordCount <= 1) and not DMEntrada.bAlteracao and
        (dbgItens.TS_Text <> '') then
        with DMEntrada.Q_SQLi do
            begin
                Close;
                SQL.Text := 'Select Distinct t.Entrada ' +
                    'from	 ((ENTRADASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM) ' +
                    '      left join UNIDADES u on I.Unidade = u.Unidade) ' +
                    '      left join FAVORECIDOS fa on fa.FAVORECIDO = t.CLIENTEREF ';

                SQL.Text := SQL.Text +
                    'where ' + ConteudoGrid; //já retorna o campo + operador + conteudo.

                try
                    Open;

                    DMEntrada.sWhereAdicional := '';
                    while not EOF do
                        begin
                            DMEntrada.sWhereAdicional := CExp(DMEntrada.sWhereAdicional, ',') + FieldByName('Entrada').asString;
                            Next;
                        end;

                    Close;

                    if DMEntrada.sWhereAdicional <> '' then
                        DMEntrada.sWhereAdicional := ' t.Entrada in (' + DMEntrada.sWhereAdicional + ') ' +
                            IIF(ActiveControl = dbgItens, ' ', ' and ');

                except
                    Close;
                end;
            end;

    inherited;
end;

function TFrmEntradas.DataField(o: TWinControl): string;
begin
    if ActiveControl = dbgItens then
        result := 'REDEFINED'
    else
        result := inherited DataField(o);
end;

procedure TFrmEntradas.dfCPF_CNPJExit(Sender: TObject);
begin
    inherited;
    if length(TTS_DBEdit(Sender).Text) = 11 then
        DMEntrada.C_TabelaF_CPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(TTS_DBEdit(Sender).Text) = 14 then
        DMEntrada.C_TabelaF_CPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmEntradas.dfCPF_CNPJEnter(Sender: TObject);
begin
    inherited;
    DMEntrada.C_TabelaF_CPF_CNPJ.EditMask := '';
end;

procedure TFrmEntradas.AplicarCalculos1Click(Sender: TObject);
begin
    inherited;
    DlgAplicarCalculos := TDlgAplicarCalculos.Create(self);
    DlgAplicarCalculos.C_Itens := DMEntrada.C_Itens;
    DlgAplicarCalculos.ShowModal;
    DlgAplicarCalculos.Release;
    DlgAplicarCalculos := nil;
end;

procedure TFrmEntradas.FormKeyPress(Sender: TObject; var Key: Char);
var nValor: double;
begin
    inherited;
    if (Key = '%') and
        ((ActiveControl = dfDesconto) or (ActiveControl = dfFrete) or
        (ActiveControl = dfDespesas)) then
        begin
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar(DMEntrada.C_TabelaTotalItens.Value * (nValor / 100), 2);
        end;
end;

procedure TFrmEntradas.tsTermosShow(Sender: TObject);
begin
    inherited;
    DMEntrada.AtualizaTotalFinal;
end;

end.

