{
---------------------------------------------------------------------------------------------
- Historico de Alteracoes:

 11/01/2001	André	: Mudança na interface e BD Interbase.

- Localização:

 No menu "Contas A Receber" escolha "Receber Pagamentos".
 No form FrmAReceber (botão direito).

- Tabelas Principais:

 TitulosAReceber, Depositos, DepositosDoc, FormaPagamentos, Contas, Transacoes.

- Objetivo:

 Baixar os Títulos em aberto dos Clientes. Lançar em Transações, Depositos, DepositosDoc,
 DepositosTitulos.

- Funcionalidades:

 Como Usar: Selecione o cliente, selecione os titulos a serem pagos e a forma de pagamento.
 Um título pode haver várias formas de pagamento ou vários títulos podem ter somente
 uma forma de pagamento.
 Quando a conta a creditar for Banco, só aceita a forma de pagamento Dinheiro ou Cheque.
 Para gerar crédito ao cliente, basta no grid de títulos na coluna Crédito Gerado informar
 o valor.
 Para utilizar o crédito do cliente, selecione o combobox "Utilizar Créditos do Cliente".

- Quais cuidados devem ser tomados por quem irá alterar a unit.

 Prestar bem a atenção do que está fazendo.

-----------------------------------------------------------------------------------------------
}

unit Dlg_Depositos;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, DlgMsg, Menus, Buttons,
    TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, Db, DBTables,
    DBCtrls, TS_Label, Mask, MMSystem, Variants,
    IBCustomDataSet, IBQuery, TS_DBText, TS_Shape, TS_DBEdit,
    TS_DBLookupComboBox, IBUpdateSQL, Provider, DBClient,
    TS_CheckBox, TS_Bevel, ActnList, TS_DBLookupTipoFav,
    ImgList, ComCtrls, TS_PageControl, CheckLst,
    TS_CheckListBox, TS_DBMemo, RXSplit,
    TS_Image, TS_LastDataObject, TS_DBEditFavorecido,
    TS_DBEditNumber, TS_DBTextEffect, TS_MaxPanel, dxExEdtr, dxEdLib,
    dxDBELib, TS_DBButtonEdit, dxCntner, dxEditor, dxDBEdtr, FormsComponent,
    dxfLabel, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, TS_QDBGrid,
    Dlg_PopupContas, TS_DBPopupEdit,
    teCtrls, TS_EffectsPanel, DBText, TS_DBSpinEdit, TS_DBRadioGroup, DM_Contabilidade,
    TS_PopupMenu, TransEff, teTimed, teMasked, teRadial, teSlide, teDiagon,
    teForm, TS_DBImageEdit, TS_DBMaskEdit, BTOdeum, Placemnt, TS_Edit, Math, Md5;

type
    TDlgDepositos = class(TFrmModeloCadastros)
        pnConta: TTS_Panel;
        Label1: TTS_Label;
        pnSacado: TTS_Panel;
        pnTitulos: TTS_Panel;
        C_DepositosDS: TDataSource;
        Q_Titulos: TIBQuery;
        Q_TitulosProvider: TDataSetProvider;
        C_Titulos: TClientDataSet;
        C_Depositos: TClientDataSet;
        C_TitulosID: TIntegerField;
        C_TitulosTITULO: TStringField;
        C_TitulosVENCIMENTO: TDateField;
        C_TitulosValorAReceber: TFloatField;
        C_DepositosDescConta: TStringField;
        C_DepositosDATA: TDateField;
        C_DepositosCONTA: TIntegerField;
        C_DepositosCLIENTE: TIntegerField;
        C_DepositosHISTORICO: TStringField;
        C_DepositosNOME: TStringField;
        C_DepositosCreditoRestante: TFloatField;
        C_DepositosDescCartao: TStringField;
        C_Cheques: TClientDataSet;
        C_ChequesDS: TDataSource;
        C_TitulosCOMPETENCIA: TDateField;
        C_TitulosPagamento: TFloatField;
        C_TitulosJuros: TFloatField;
        C_TitulosDescontos: TFloatField;
        C_TitulosVALORNOMINAL: TBCDField;
        C_TitulosVALORPAGO: TBCDField;
        C_ChequesAgencia: TStringField;
        C_ChequesBanco: TIntegerField;
        C_ChequesNumCheque: TIntegerField;
        C_ChequesValor: TFloatField;
        C_ChequesVencimento: TDateField;
        C_DepositosVALOR: TBCDField;
        C_DepositosUSUARIO: TIntegerField;
        C_DepositosCreditoCliente: TFloatField;
        C_DepositosCreditoUtilizado: TFloatField;
        C_DepositosValorDinheiro: TFloatField;
        C_DepositosValorCheque: TFloatField;
        C_DepositosValorCartao: TFloatField;
        C_DepositosNumCheque: TIntegerField;
        C_DepositosDataCheque: TDateField;
        C_DepositosBanco: TIntegerField;
        C_DepositosAgencia: TStringField;
        C_DepositosOutroValor: TFloatField;
        C_DepositosCartaoCredito: TIntegerField;
        C_TitulosCREDITOUTILIZADO: TBCDField;
        ImageList1: TImageList;
        pnFormapPag: TTS_Panel;
        dbtTotalForma: TTS_DBText;
        clbForma: TTS_CheckListBox;
        lblObs: TTS_Label;
        Memo: TTS_DBMemo;
        C_TitulosDS: TDataSource;
        C_ChequesDescBanco: TStringField;
        RxSplitter1: TRxSplitter;
        C_DepositosCreditoGerado: TFloatField;
        C_DepositosOutraForma: TIntegerField;
        C_TitulosPgtoRecebido: TFloatField;
        TS_Shape2: TTS_Shape;
        pgForma: TTS_PageControl;
        tabDinheiro: TTS_TabSheet;
        vg2Label1: TTS_Label;
        tabCheque: TTS_TabSheet;
        tabCartao: TTS_TabSheet;
        TS_Label5: TTS_Label;
        vg2Label2: TTS_Label;
        tabCredito: TTS_TabSheet;
        vg2Label3: TTS_Label;
        vg2Label4: TTS_Label;
        tabOutros: TTS_TabSheet;
        vg2Label5: TTS_Label;
        cmbCartao: TTS_DBLookupComboBox;
        dbTipoFav: TTS_DBLookupTipoFav;
        cmbOutraForma: TTS_DBLookupComboBox;
        TS_Panel1: TTS_Panel;
        TS_Label6: TTS_Label;
        TS_Panel2: TTS_Panel;
        C_TitulosDESCONTOSRECEBIDOS: TBCDField;
        dfDinheiro: TTS_DBEditNumber;
        dfCartao: TTS_DBEditNumber;
        dfOutroValor: TTS_DBEditNumber;
        dfUtilizarCredito: TTS_DBEditNumber;
        TS_Shape3: TTS_Shape;
        dfData: TTS_DBTextEffect;
        TS_DBText1: TTS_DBText;
        TS_Shape7: TTS_Shape;
        TS_Label1: TTS_Label;
        tabTEF: TTS_TabSheet;
        TS_Label13: TTS_Label;
        TS_Label14: TTS_Label;
        dfValorTEF: TTS_DBEditNumber;
        C_DepositosDescContaOutros: TStringField;
        C_DepositosContaOutro: TIntegerField;
        C_DepositosContaTEF: TIntegerField;
        C_DepositosDescContaTEF: TStringField;
        C_DepositosValorTEF: TFloatField;
        C_DepositosDescOutraForma: TStringField;
        lbContaOutro: TTS_Label;
        TS_Shape1: TTS_Shape;
        TS_Label3: TTS_Label;
        dxfLabel1: TdxfLabel;
        lbSelecione: TTS_Label;
        TS_Shape5: TTS_Shape;
        pnSelecionados: TTS_Panel;
        DBTitulos: TTS_QDBGrid;
        DBTitulosID: TdxDBGridMaskColumn;
        DBTitulosTITULO: TdxDBGridMaskColumn;
        DBTitulosVENCIMENTO: TdxDBGridDateColumn;
        DBTitulosValorAReceber: TdxDBGridColumn;
        DBTitulosCOMPETENCIA: TdxDBGridDateColumn;
        DBTitulosPagamento: TdxDBGridColumn;
        DBTitulosJuros: TdxDBGridColumn;
        DBTitulosDescontos: TdxDBGridColumn;
        DBTitulosVALORNOMINAL: TdxDBGridMaskColumn;
        DBTitulosCREDITOUTILIZADO: TdxDBGridMaskColumn;
        DBTitulosVALORPAGO: TdxDBGridMaskColumn;
        DBTitulosCreditoGerado: TdxDBGridColumn;
        DBTitulosPgtoRecebido: TdxDBGridColumn;
        DBTitulosDESCONTOSRECEBIDOS: TdxDBGridMaskColumn;
        C_Titulos_icSelecionado: TIntegerField;
        DBCheques: TTS_QDBGrid;
        DBChequesAgencia: TdxDBGridColumn;
        DBChequesBanco: TdxDBGridMaskColumn;
        DBChequesNumCheque: TdxDBGridColumn;
        DBChequesVencimento: TdxDBGridDateColumn;
        DBChequesValor: TdxDBGridMaskColumn;
        DBChequesCampo: TdxDBGridMaskColumn;
        DBChequesDescBanco: TdxDBGridLookupColumn;
        DBTitulosNome: TdxDBGridColumn;
        C_TitulosNOME: TStringField;
        cmbConta: TTS_DBPopupEdit;
        cmbContaTEF: TTS_DBPopupEdit;
        cmbContaOutro: TTS_DBPopupEdit;
        C_TitulosNOTAFISCAL: TStringField;
        dfFavorecido: TTS_DBEditFavorecido;
        lbParcelas: TTS_Label;
        dbNumParcelas: TTS_DBSpinEdit;
        lbParcelasDe: TTS_Label;
        C_DepositosNumParcelas: TIntegerField;
        C_DepositosValorParcela: TCurrencyField;
        dbValorParcela: TTS_DBText;
        C_DepositosModoCartao: TIntegerField;
        C_TitulosDATAANTECIPACAO: TDateField;
        C_TitulosVALORDESCANTECIPADO: TBCDField;
        C_TitulosVENDA: TIntegerField;
        TS_Bevel2: TTS_Bevel;
        btCancelar: TTS_SpeedButton;
        ckbImprimirRecibo: TTS_CheckBox;
        btImprimir: TTS_SpeedButton;
        btContabilidade: TTS_SpeedButton;
        C_TitulosCLIENTE: TIntegerField;
        C_DepositosContaCartao: TIntegerField;
        C_ChequesContaReceber: TIntegerField;
        ppmGrid: TTS_PopupMenu;
        InserirParcelasdeOutrosClientes: TMenuItem;
        ppmCheques: TTS_PopupMenu;
        UmchequeparacadaInvoice1: TMenuItem;
        Incluirnovobanco1: TMenuItem;
        Salvar1: TMenuItem;
        Novo1: TMenuItem;
        N1: TMenuItem;
        Histrico1: TMenuItem;
        shpFormaPagamento: TShape;
        shpTitulos: TShape;
        cbLockDate: TTS_CheckBox;
        C_TitulosJUROSRECEBIDOS: TBCDField;
        esData: TdxEditStyleController;
        TS_Shape4: TTS_Shape;
        DBTitulosCliente: TdxDBGridColumn;
        pnAlterar: TTS_Panel;
        dxfLabel2: TdxfLabel;
        TransitionList1: TTransitionList;
        TranShape: TRadialTransition;
        TranAlterar: TSlideTransition;
        C_TitulosCREDITOGERADO: TBCDField;
        C_DepositosDescDinheiro: TStringField;
        C_DepositosDescCheque: TStringField;
        TS_Image1: TTS_Image;
        C_TitulosFALTARECEBER: TBCDField;
        menuVerPgto: TMenuItem;
        C_ChequesSequencial: TIntegerField;
        DBChequesSequencial: TdxDBGridColumn;
        pnCancelado: TdxfLabel;
        C_TitulosDATAATRASADO: TDateField;
        DBTitulosDataAtrasado: TdxDBGridColumn;
        lbTroco: TTS_Label;
        dfTroco: TTS_DBEditNumber;
        C_DepositosTroco: TCurrencyField;
        C_DepositosValorRecebido: TCurrencyField;
        C_TitulosTIPOFAVORECIDO: TIntegerField;
        dfModoCartao: TTS_DBImageEdit;
        TS_Label4: TTS_Label;
        DBCartoes: TTS_QDBGrid;
        btMaisCartoes: TTS_SpeedButton;
        C_Cartoes: TClientDataSet;
        C_CartoesDS: TDataSource;
        C_CartoesCartao: TIntegerField;
        C_CartoesValor: TCurrencyField;
        C_CartoesNumParcelas: TIntegerField;
        C_CartoesValorParcela: TCurrencyField;
        C_CartoesDescCartao: TStringField;
        C_CartoesID: TIntegerField;
        DBCartoesCartao: TdxDBGridMaskColumn;
        DBCartoesValor: TdxDBGridCurrencyColumn;
        DBCartoesValorParcela: TdxDBGridCurrencyColumn;
        DBCartoesDescCartao: TdxDBGridLookupColumn;
        DBCartoesID: TdxDBGridMaskColumn;
        DBCartoesNumParcelas: TdxDBGridSpinColumn;
        C_CartoesModoCartao: TIntegerField;
        DBCartoesTipo: TdxDBGridImageColumn;
        btApenasUm: TTS_SpeedButton;
        ppmCartoes: TTS_PopupMenu;
        C_CartoesContaCartao: TIntegerField;
        TS_Label7: TTS_Label;
        dfNumeroCartao: TTS_DBEdit;
        TS_Label8: TTS_Label;
        dfValidade: TTS_DBMaskEdit;
        C_CartoesNumeroCartao: TStringField;
        C_CartoesValidade: TStringField;
        DBCartoesNumeroCartao: TdxDBGridColumn;
        DBCartoesValidade: TdxDBGridMaskColumn;
        C_ChequesEletronico: TClientDataSet;
        C_ChequesEletronicoID: TIntegerField;
        C_ChequesEletronicoValor: TCurrencyField;
        C_ChequesEletronicoVencimento: TDateField;
        C_ChequesEletronicoObs: TStringField;
        C_ChequesEletronicoConvenio: TIntegerField;
        C_ChequesEletronicoDescConvenio: TStringField;
        C_ChequesEletronicoContaReceber: TIntegerField;
        C_ChequesEletronicoDS: TDataSource;
        tabChequeEletronico: TTS_TabSheet;
        DBChequesEletronico: TTS_QDBGrid;
        DBChequesEletronicoDescConvenio: TdxDBGridLookupColumn;
        DBChequesEletronicoValor: TdxDBGridCurrencyColumn;
        DBChequesEletronicoVencimento: TdxDBGridDateColumn;
        DBChequesEletronicoObs: TdxDBGridMaskColumn;
        ppmChequesElet: TTS_PopupMenu;
        EditarRecibo1: TMenuItem;
        TS_Label2: TTS_Label;
        dfNotaPedido: TTS_Edit;
        C_TitulosTIPOPADRAO: TIntegerField;
        C_TitulosPERCENTUALMORA: TBCDField;
        C_TitulosVALORJUROSMORA: TBCDField;
        C_TitulosDATAPAGO: TDateField;
        C_ChequesTitular: TStringField;
        DBChequesTitular: TdxDBGridColumn;
        TitulardoCheque1: TMenuItem;
        C_Autenticacao: TClientDataSet;
        C_AutenticacaoTITULO: TStringField;
        C_AutenticacaoVALOR: TCurrencyField;
        C_AutenticacaoVENCIMENTO: TDateField;
        C_AutenticacaoMD5: TStringField;
        C_AutenticacaoDs: TDataSource;
        C_AutenticacaoDtpgto: TStringField;
        DBTitulosPercentualMora: TdxDBGridMaskColumn;
        procedure dfFavorecidoExit(Sender: TObject);
        procedure DBTitulosExit(Sender: TObject);
        procedure dfDataKeyPress(Sender: TObject; var Key: Char);
        procedure C_TitulosCalcFields(DataSet: TDataSet);
        procedure C_DepositosNewRecord(DataSet: TDataSet);
        procedure C_TitulosBeforeDelete(DataSet: TDataSet);
        procedure C_DepositosCREDITOUTILIZADOChange(Sender: TField);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure C_TitulosBeforeInsert(DataSet: TDataSet);
        procedure C_ChequesNewRecord(DataSet: TDataSet);
        procedure C_ChequesBeforePost(DataSet: TDataSet);
        procedure C_DepositosDATAChange(Sender: TField);
        procedure clbFormaClickCheck(Sender: TObject);
        procedure C_TitulosPagamentoChange(Sender: TField);
        procedure DBChequesExit(Sender: TObject);
        procedure C_ChequesDSUpdateData(Sender: TObject);
        procedure tabCreditoShow(Sender: TObject);
        procedure dbTipoFavClick(Sender: TObject);
        procedure tabDinheiroShow(Sender: TObject);
        procedure tabChequeShow(Sender: TObject);
        procedure tabOutrosShow(Sender: TObject);
        procedure tabCartaoShow(Sender: TObject);
        procedure C_TitulosDescontosChange(Sender: TField);
        procedure tabTEFShow(Sender: TObject);
        procedure C_DepositosCONTAChange(Sender: TField);
        procedure DBTitulosTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure cmbContaInitPopup(Sender: TObject);
        procedure cmbContaTEFInitPopup(Sender: TObject);
        procedure cmbContaOutroInitPopup(Sender: TObject);
        procedure C_ChequesBancoChange(Sender: TField);
        procedure ChequesParaCadaInvoiceClick(Sender: TObject);
        procedure dbNumParcelasChange(Sender: TObject);
        procedure C_TitulosAfterScroll(DataSet: TDataSet);
        procedure btComando1Click(Sender: TObject);
        procedure DBChequesColumnSorting(Sender: TObject;
            Column: TdxDBTreeListColumn; var Allow: Boolean);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure DBTitulosDblClick(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btCancelarClick(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btContabilidadeClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure InserirParcelasdeOutrosClientesClick(Sender: TObject);
        procedure Incluirnovobanco1Click(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure DBTitulosCustomDrawColumnHeader(Sender: TObject;
            AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
            var AText: string; var AColor: TColor; AFont: TFont;
            var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
            var ADone: Boolean);
        procedure ppmGridPopup(Sender: TObject);
        procedure TS_DBText1Click(Sender: TObject);
        procedure TS_Label5SetParametrosForm(Sender: TObject);
        procedure TS_Label1SetParametrosForm(Sender: TObject);
        procedure C_DepositosOutraFormaChange(Sender: TField);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure DBTitulosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure C_TitulosJurosChange(Sender: TField);
        procedure btMaisCartoesClick(Sender: TObject);
        procedure btApenasUmClick(Sender: TObject);
        procedure C_CartoesNewRecord(DataSet: TDataSet);
        procedure DBCartoesExit(Sender: TObject);
        procedure DBCartoesNumParcelasChange(Sender: TObject);
        procedure DBCartoesValorChange(Sender: TObject);
        procedure DBCartoesEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure C_CartoesCartaoChange(Sender: TField);
        procedure tabCartaoExit(Sender: TObject);
        procedure dfCartaoExit(Sender: TObject);
        procedure C_CartoesAfterPost(DataSet: TDataSet);
        procedure C_ChequesAfterPost(DataSet: TDataSet);
        procedure cmbContaKeyPress(Sender: TObject; var Key: Char);
        procedure C_ChequesEletronicoNewRecord(DataSet: TDataSet);
        procedure tabChequeEletronicoShow(Sender: TObject);
        procedure C_ChequesEletronicoAfterPost(DataSet: TDataSet);
        procedure DBChequesEletronicoExit(Sender: TObject);
        procedure EditarRecibo1Click(Sender: TObject);
        procedure dfNotaPedidoKeyPress(Sender: TObject; var Key: Char);
        procedure clbFormaClick(Sender: TObject);
        procedure TitulardoCheque1Click(Sender: TObject);
        procedure clbFormaMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
    protected
        DlgPopup: TDlgPopupContas;
        DMContabil: TDMContabilidade;
    private
        { Private declarations }
        sAutenticacao: Boolean;
        aIDDoc: array[0..100] of integer;
        aIDDocAtualizado: array[0..100] of char;
        nDesconto, nTotalSel, xMaxPermitido: currency;
        sTitulosHist, sTitulosSelecionados: string;
        nSeq, nConta, nNumCheque, DepositoHist: integer;
        nValorCheque, nVlParcelas: Currency;
        dtData, dDataCheque: TDateTime;
        JurosParametrizado: Currency;
        Favorecido, Venda: integer;
        NomeFavorecido, Historico: string;
        bParametro, bModalResult, bOperacaoPadraoTroco: boolean;
        nCreditoGerado: currency;
        Valor, ValorNominal, A_Descontar: currency;
        Vencimento: TDateTime;
        Deposito, nMsg: Integer;
        // Pega as informações vindas de outro form (ex: FrmAReceber)
        procedure LimpaArrayDoc;
        procedure PreparaRecebimento;
        // Utilizado a cada novo depósito, inicialização...
        procedure Novo;
        // Antes de efetuar a gravação tem que passar por esta rotina de validação. (Crítica)
        function Validacoes(bMostrarMensagem: boolean): boolean;
        // Gravação da Operação
        function Gravar: boolean;
        function getInvoices: string;
        procedure getHistorico(Deposito: integer);
        procedure AbrirTitulos(sItensHist: string = ''; sFavorecidos: string = ''; bSomenteSelecionadas: boolean = false; sSaidas: string = ''; sPDV: string = '');
        function getTotalEmFormaPagamento(bAlteraTroco: boolean = true): currency;
        function getTotalEmTitulos: currency;
        procedure SetFormaPagamento(nIndex: integer);
        procedure DesabilitaFormaPagamento(Indice: integer);
        function getQtdeFormasSelecionada: integer;
        procedure ChequeParaCadaParcela;
        function QtdeFormasPagamentoSel: integer;
        function Corrigir(FormaPagamento, ValorParcelas, ValorFaltaReceber: Currency): boolean;
        function getIndex(sEspecie: string): integer;
        function PermiteDesconto(): string; {"OK"-Permitido , "U"-Ultrapassou Desconto Maximo, "V"-Vencimento Ultrapassado, "X"-Ambos}
        procedure GeraDescontoProporcional(nValor: currency);
    public
        { Public declarations }
    end;

var
    DlgDepositos: TDlgDepositos;

implementation

uses funcoes, DM_Projeto, DM_Financeiro, {dm_ECF,} frm_MSGTEF, TDM_Projeto; {, Frm_Contabilidade;}

{$R *.DFM}

function TDlgDepositos.PermiteDesconto(): string; {ATRASADO, DESCMAX}
var MaxPermitido, MaxFuncionario: Currency;
    sV, sD: string;
begin
    sV := '';
    sD := '';
    C_Titulos.DisableControls;
    C_Titulos.First;
    //    DMPRojeto.Q_SQL.SQL.Text := ' select SUM(COALESCE(si.rateiodesconto + (si.DESCONTO * -1),0)) as Desconto, '+
    //                                ' COALESCE(MAX(S.TOTAL-S.DESCONTO),0) as TotalVenda,  '+
    //                                ' Case '+
    //                                ' When Sum(Si.QUANTIDADE * SI.PRECOTABELA) - (SUM(COALESCE(si.rateiodesconto + (si.DESCONTO * -1),0)) + max(s.DESCONTO * -1)) < 0 '+
    //                                '   Then 0 '+
    //                                ' When Sum(Si.QUANTIDADE * SI.PRECOTABELA) - (SUM(COALESCE(si.rateiodesconto + (si.DESCONTO * -1),0)) + max(s.DESCONTO * -1)) = 0 '+
    //                                '   Then Sum(Si.QUANTIDADE * SI.PRECOTABELA) * Max(si.MAXDESCONTO) '+
    //                                ' Else '+
    //                                '   Sum(Si.QUANTIDADE * SI.PRECOTABELA) * Max(si.MAXDESCONTO) - '+
    //                                '   (SUM(COALESCE(si.rateiodesconto + (si.DESCONTO * -1),0)) + max(s.DESCONTO * -1)) '+
    //                                ' End as MaxPermitido '+
    //                                ' from saidasitens si   Left join saidas s on s.saida = si.saida '+
    //                                ' where si.saida = :Venda ';

    DMPRojeto.Q_SQL.SQL.Text := ' select SUM(COALESCE(si.rateiodesconto + (si.DESCONTO * -1),0)) as Desconto, COALESCE(MAX(S.TOTAL-S.DESCONTO),0) as TotalVenda,  ' +
        'Case ' +
        ' When SUM(COALESCE((si.rateiodesconto*si.quantidade) + (si.DESCONTO*si.Quantidade * -1),0)) >= ' +
        ' Sum(Si.QUANTIDADE * SI.PRECOTABELA) * Max(si.MAXDESCONTO) Then 0 ' +
        ' When SUM(COALESCE((si.rateiodesconto*si.quantidade) + (si.DESCONTO*si.Quantidade * -1),0)) < ' +
        ' Sum(Si.QUANTIDADE * SI.PRECOTABELA) * Max(si.MAXDESCONTO)  Then SUM(COALESCE((si.rateiodesconto*si.quantidade) + ' +
        ' (si.DESCONTO*si.Quantidade * -1),0)) - Sum(Si.QUANTIDADE * SI.PRECOTABELA) * Max(si.MAXDESCONTO) ' +
        'End as MaxPermitido ' +
        ' from saidasitens si   Inner join saidas s on s.saida = si.saida ' +
        ' where si.saida = :Venda ';
    MaxPermitido := 0;
    while not (C_Titulos.Eof) do
        begin
            if (C_Titulos_icSelecionado.Value = 1) then
                begin
                    with DMPRojeto.Q_Sql do
                        begin
                            Close;
                            Params[0].Value := C_TitulosVENDA.Value;
                            Open;
                            if (DMPRojeto.Q_Sql.RecordCount > 0) then
                                begin
                                    try
                                        MaxPermitido := MaxPermitido + IIF(FieldByName('MaxPermitido').IsNull, 0, ABS(FieldByName('MaxPermitido').Value));
                                    except
                                        MaxPermitido := MaxPermitido;
                                    end;
                                end;
                        end;
                    if MaxPermitido = 0 then
                        MaxPermitido := MaxPermitido + C_TitulosFALTARECEBER.Value * (DMProjeto.nMaxDescontoFunc / 100)
                    else if (C_TitulosFALTARECEBER.Value * (DMProjeto.nMaxDescontoFunc / 100) - MaxPermitido) > 0 then
                        MaxPermitido := C_TitulosFALTARECEBER.Value * (DMProjeto.nMaxDescontoFunc / 100) - MaxPermitido;

                    if C_TitulosVencimento.AsDateTime < DMProjeto.dDataSistema then
                        sV := 'ATRASADO';
                end;
            C_Titulos.Next;
        end;
    if MaxPermitido < DBTitulos.TotalSelecionado('Descontos') then
        sD := 'DESCMAX';
    C_Titulos.First;
    C_Titulos.EnableControls;
    xMaxPermitido := MaxPermitido;
    Result := sV + sD;
end;

procedure TDlgDepositos.LimpaArrayDoc;
var i: integer;
begin
    for i := 0 to 100 do
        begin
            aIDDoc[i] := 0;
            aIDDocAtualizado[i] := ' ';
        end;
end;

procedure TDlgDepositos.PreparaRecebimento;
var i, nParcelas, Especie: integer;
    sSaidas, pdv: string;
begin
    if not DMProjeto.ExisteParametrosForm then
        exit;

    with DMProjeto do
        begin
            dfFavorecido.ID := getParametrosForm(1);
            sTitulosSelecionados := getParametrosForm(2);
            if QtdParametrosForm > 3 then
                sSaidas := IIF(getParametrosForm(3) <> null, GetParametrosForm(3), '')
            else
                sSaidas := '';

            pdv := IIF(GetParametrosForm(4) <> null, GetParametrosForm(4), '');
        end;
    {Abrindo a Consulta}
    AbrirTitulos(sTitulosSelecionados, '', (sTitulosSelecionados <> '') or (sSaidas <> ''), sSaidas, pdv);
    {Selecionando as Parcelas}
    if (C_Titulos.Active) and (C_Titulos.RecordCount > 0) and ((sTitulosSelecionados <> '') or (sSaidas <> '')) then
        begin
            if DMProjeto.Parametro('SelecionarUmaParcela') = 'S' then
                nParcelas := 1
            else
                nParcelas := ContaStrings(sTitulosSelecionados, ',');
            for i := 1 to nParcelas do
                begin
                    if (sTitulosSelecionados <> '') then
                        if C_Titulos.Locate('ID', SeparaStrings(sTitulosSelecionados, ',', i), []) then
                            DBTitulos.SelecionarLinha;
                end;
        end;
    clbForma.Enabled := (C_Titulos.Active) and (C_Titulos.RecordCount > 0) and (DBTitulos.Selecionados <> '');
    {Selecionando a Forma de Pagamento Padrão}
    Especie := StrToIntDef(DMProjeto.Parametro('EspeciePadraoInvoice'), 0);
    if (Especie <> 0) and (C_DepositosCreditoUtilizado.Value < DBTitulos.TotalSelecionado('Pagamento')) then
        begin
            clbForma.Checked[getIndex(IntToStr(Especie))] := true;
            clbForma.ItemIndex := getIndex(IntToStr(Especie));
            clbFormaClickCheck(clbForma);
            if (Especie = 1) and (DMProjeto.Parametro('SelecionarUmaParcela') <> 'S') then
                ChequeParaCadaParcela;
        end
    else if C_Titulos.Active and (DBTitulos.TotalSelecionado('Pagamento') < C_DepositosCreditoCliente.Value) then
        C_DepositosCreditoUtilizado.Value := DBTitulos.TotalSelecionado('Pagamento');
end;

procedure TDlgDepositos.Novo;
var i: integer;
begin
    nSeq := 0;
    if DMContabil <> nil then
        DMContabil.Iniciar;
    btComando1.visible := false;
    btCancelar.visible := false;
    btCancelar.Enabled := true;
    btImprimir.visible := false;
    pnCancelado.visible := false;
    shpTitulos.Visible := false;
    shpFormaPagamento.Visible := false;
    btGravar.Caption := 'Salvar';
    btGravar.Enabled := True;
    pnAlterar.Visible := false;
    LimpaArrayDoc;
    if not C_Cheques.Active then
        C_Cheques.CreateDataSet
    else
        C_Cheques.EmptyDataSet;

    if not C_ChequesEletronico.Active then
        C_ChequesEletronico.CreateDataSet
    else
        C_ChequesEletronico.EmptyDataSet;

    if not C_Cartoes.Active then
        C_Cartoes.CreateDataSet
    else
        C_Cartoes.EmptyDataSet;

    nNumCheque := 0;
    DBTitulosNome.Visible := false;
    if not C_Depositos.Active then
        C_Depositos.CreateDataSet
    else
        C_Depositos.EmptyDataSet;

    for i := 0 to clbForma.Items.Count - 1 do
        begin
            clbForma.Checked[i] := false;
            clbForma.ItemEnabled[i] := true;
            if pgForma.Visible then
                pgForma.HideTab(i);
        end;
    clbForma.ItemIndex := -1;
    pgForma.Visible := false;
    clbForma.Enabled := false;
    DepositoHist := 0;
    sTitulosSelecionados := '';
    Valor := 0;
    ValorNominal := 0;
    dfNotaPedido.Text := '';
    if dfFavorecido.ID <> 0 then
        dfFavorecido.ID := 0;
    C_Depositos.Append;
//    if cbLockDate.Checked then
//        C_DepositosData.Value := dtData
//    else
        C_DepositosData.Value := DMProjeto.dDataSistema;

//    dtData := C_DepositosData.Value;
//    dtData := DMFinanceiro.Conta_DataMov(DMFinanceiro.nContaPadrao);
    nConta := DMFinanceiro.nContaPadrao; {Para quando retornar de Historico, toranar a conta padrao original}
    C_DepositosConta.OnChange := nil;
    C_DepositosConta.Value := nConta;
    C_DepositosConta.OnChange := C_DepositosContaChange;
    if C_Titulos.Active then
        C_Titulos.Close;
    sTitulosHist := '';
    try
        dfFavorecido.SetFocus;
    except
    end;
end;

// Obtem a descricao dos títulos pagos
// Ex: Pagto referente aos títulos: #002332, #002333

function TDlgDepositos.getInvoices: string;
var sInvoices, sSelecionados: string;
    i: integer;
    Marca: TBookMarkStr;
begin
    result := C_DepositosHistorico.Value;
    sInvoices := '';
    if C_Titulos.Active then
        begin
            C_Titulos.DisableControls;
            Marca := C_Titulos.BookMark;
            with DBTitulos do
                begin
                    sSelecionados := DBTitulos.Selecionados;
                    for i := 1 to DbTitulos.QuantidadeSelecionada do
                        begin
                            if (C_TitulosTitulo.Value <> '') and (C_Titulos.Locate('ID', SeparaStrings(DBTitulos.Selecionados, ',', i), [])) then
                                sInvoices := sInvoices + C_TitulosTitulo.AsString + ',';
                            nextselected;
                        end;
                    C_Titulos.BookMark := Marca;
                end;
            sInvoices := trim(Copy(sInvoices, 1, length(sInvoices) - 1));
            if sInvoices <> '' then
                result := 'Receb.Parcelas # ' + sInvoices
            else
                result := 'Recebimento de Parcela';
            C_Titulos.EnableControls;
            {    if DbTitulos.QuantidadeSelecionada = 1 then
                  result := format( DMProjeto.getMsg(222), [sInvoices])
                else if DbTitulos.QuantidadeSelecionada > 1 then
                  result := format( DMProjeto.getMsg(223), [sInvoices]); }
        end;
end;

procedure TDlgDepositos.AbrirTitulos;
begin
    with C_Titulos do
        begin
            Close;
            Params.Clear;
            CommandText := 'Select t.ID, t.Titulo, t.NotaFiscal, t.Vencimento, ' +
                't.CreditoUtilizado, f.nome, t.Valor as ValorNominal, ' +
                't.ValorPago, t.Competencia, t.CreditoGerado, ' +
                't.Descontos as DescontosRecebidos, t.DataAntecipacao, ' +
                't.JurosRecebidos, t.ValorDescAntecipado, t.Venda, t.cliente, ' +
                't.faltareceber, t.dataatrasado, f.tipofavorecido, s.tipopadrao, ' +
                't.percentualmora, t.valorjurosmora, t.datapago ' +
                'From TitulosAReceber t ' +
                'left join Favorecidos f on t.cliente = f.favorecido ' +
                'left join Saidas s on t.venda = s.saida and t.pdv = s.pdv ' +
                'Where ';
            if not bSomenteSelecionadas then
                begin
                    CommandText := CommandText + '(t.Cliente = :C :OutroCliente and ( (t.Status > 0 and t.Status < 50 ) ';
                    params.parambyname('C').asInteger := C_DepositosCliente.Value;
                end;
            if sItensHist <> '' then
                begin
                    if not bSomenteSelecionadas then
                        CommandText := CommandText + ' or (t.ID in (' + sItensHist + '))'
                    else
                        begin
                            CommandText := CommandText + ' ((t.ID in (' + sItensHist + ') )'
                        end;
                end;
            if sSaidas <> '' then
                CommandText := CommandText + iif(not bSomenteSelecionadas, ' and ', '') + '( t.venda IN (' + sSaidas + ') ';

            if sPDV <> '' then
                CommandText := CommandText + ' and t.pdv = ' + sPDV + ' ';

            if sFavorecidos <> '' then
                CommandText := Replace(CommandText, ':OutroCliente', ' or t.Cliente IN (' + sFavorecidos + '))')
            else
                CommandText := Replace(CommandText, ':OutroCliente', ')');

            CommandText := CommandText + ') ';
            if (dfNotaPedido.Text <> '') then
                begin
                    CommandText := CommandText + ' AND (s.numero like :NUMEROPEDIDO AND (t.Status > 0 and t.Status < 50 )) ';
                    params.paramByName('NUMEROPEDIDO').AsString := UpperCase(dfNotaPedido.Text);
                end;

            CommandText := CommandText + ' order by t.vencimento, t.titulo';
            Open;
        end;
    DBTitulosNome.Visible := ContaStrings(DBTitulos.Distinct('Nome'), ',') > 1;

    if not ((dfFavorecido.IdParcela = '') or (dfFavorecido.IdParcela = Null)) then
        begin
            C_Titulos.First;
            while not C_Titulos.Eof do
                begin
                    if C_Titulos.FieldByName('Id').Value = StrToInt(dfFavorecido.IdParcela) then
                        begin
                            DBTitulos.Selecionar;
                            DBTitulosTS_OnAfterSelection(Self, True, 1);
                        end;
                    C_titulos.Next;
                end;
        end;
    DBTitulos.TabStop := C_Titulos.Active;
end;

procedure TDlgDepositos.dfFavorecidoExit(Sender: TObject);
begin
    if (C_DepositosCliente.AsVariant = null) and (dfFavorecido.Text <> '') then
        begin
            // ShowMessage('O Nome da pessoa/empresa que está efetuando este pagamento não foi informado corretamente!');
            DlgMsg.ShowMsg(221);
            C_Depositos.Edit;
            C_DepositosNome.asVariant := null;
            dfFavorecido.SetFocus;
        end
    else if (C_DepositosNome.Value = '') and not C_DepositosCliente.Isnull then
        begin
            C_Depositos.Edit;
            C_DepositosCliente.asVariant := null;
            C_DepositosNome.asVariant := null;
            C_DepositosCreditoCliente.Value := 0;
            C_DepositosCreditoUtilizado.Value := 0;
        end;
end;

procedure TDlgDepositos.DBTitulosExit(Sender: TObject);
begin
    if C_Titulos.Active then
        begin
            if C_Titulos.State in [dsEdit] then
                C_Titulos.Post;
            C_Titulos.First;
        end;
end;

procedure TDlgDepositos.dfDataKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        dfFavorecido.SetFocus;
end;

procedure TDlgDepositos.C_TitulosCalcFields(DataSet: TDataSet);
begin
    if Pos(C_TitulosID.AsString, sTitulosHist) <= 0 then
        C_TitulosValorAReceber.Value := C_TitulosFaltaReceber.Value
    else
        C_TitulosValorAReceber.Value := C_TitulosValorNominal.Value -
            C_TitulosValorPago.Value -
            C_TitulosCreditoUtilizado.Value +
            C_TitulosPgtoRecebido.Value;
end;

procedure TDlgDepositos.C_DepositosNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_DepositosDescDinheiro.value := clbForma.Items[getIndex('5')];
    C_DepositosDescCheque.value := clbForma.Items[getIndex('1')];
    if DMProjeto.nFuncionario > 0 then
        C_DepositosUsuario.Value := DMProjeto.nFuncionario;
    C_DepositosValor.Value := 0;
    C_DepositosValorRecebido.Value := 0;
    C_DepositosTroco.Value := 0;
    C_DepositosCreditoCliente.Value := 0;
    C_DepositosCreditoUtilizado.Value := 0;
    C_DepositosCreditoGerado.Value := 0;
    C_DepositosNumParcelas.Value := 1;
    C_DepositosValorParcela.Value := 0;
    C_DepositosCliente.Value := 0;
    if DMProjeto.Parametro('ModoCartao') = '2' then
        C_DepositosModoCartao.Value := 2
    else
        C_DepositosModoCartao.Value := 1;
end;

function TDlgDepositos.getTotalEmTitulos: currency;
begin
    result := DBTitulos.ValorSelecionado('Pagamento');
end;

function TDlgDepositos.getTotalEmFormaPagamento;
var Recebido, TotalTitulos: Currency;
begin
    if not (C_Depositos.State in [dsEdit, dsInsert]) then
        C_Depositos.Edit;
    Recebido := C_DepositosValorDinheiro.Value +
        DBCheques.TotalGeral('Valor') +
        DBChequesEletronico.TotalGeral('Valor') +
        DBCartoes.TotalGeral('Valor') +
        C_DepositosCreditoUtilizado.Value +
        C_DepositosOutroValor.Value +
        C_DepositosValorTEF.Value;
    if (bAlteraTroco) and (bOperacaoPadraoTroco) then
        begin
            TotalTitulos := getTotalEmTitulos;
            if (TotalTitulos > 0) and (TotalTitulos < Recebido) then
                C_DepositosTroco.Value := Recebido - getTotalEmTitulos
            else
                C_DepositosTroco.Value := 0;
        end;
    C_DepositosValor.Value := Recebido - C_DepositosTroco.Value;
    C_DepositosValorRecebido.Value := C_DepositosValor.Value + C_DepositosTroco.Value;
    result := C_DepositosValor.Value;
end;

function TDlgDepositos.getQtdeFormasSelecionada: integer;
var i: integer;
begin
    result := 0;
    for i := 0 to clbForma.Items.Count - 1 do
        if clbForma.Checked[i] then
            inc(result);
end;

function TDlgDepositos.Corrigir;
var
    sParcelas: string;
begin
    result := false;
    TranShape.Prepare(shpTitulos.Parent, shpTitulos.BoundsRect);
    try
        shpTitulos.Visible := true;
        if TranShape.Prepared then
            TranShape.Execute;
    finally
        TranShape.UnPrepare;
    end;
    TranShape.Prepare(shpFormaPagamento.Parent, shpFormaPagamento.BoundsRect);
    try
        shpFormaPagamento.Visible := true;
        if TranShape.Prepared then
            TranShape.Execute;
    finally
        TranShape.UnPrepare;
    end;
    sParcelas := dbtitulos.Selecionados;
    {Verifica Atrasados}
    if FormaPagamento <= ValorParcelas then
        begin
            if (abs(FormaPagamento - ValorParcelas) > 0.04) and (DlgMsg.ShowMsg(8053) = 100) then
                begin
                    GeraDescontoProporcional((ValorParcelas - FormaPagamento) / ValorParcelas);
                    Exit;
                end
            else if (abs(FormaPagamento - ValorParcelas) > 0.04) then
                begin
                    DlgMsg.ShowMsg(8047);
                    Exit;
                end
            else if (abs(FormaPagamento - ValorParcelas) > 0.04) and (ValorParcelas > ValorFaltaReceber) then
                begin
                    if DlgMsg.ShowMsg(943) = 200 then
                        exit;
                end
            else
                begin
                    if (abs(FormaPagamento - ValorParcelas) > 0.04) then
                        begin
                            DlgMsg.ShowMsg(8047);
                            exit;
                        end;
                end;
        end;
    result := true;
end;

function TDlgDepositos.Validacoes;
var ValorAnterior, TotalFormaPagamento, Troco: currency;
    i, nResp: integer;
    sSelecionados, sPagParcial, sCredito, sDesconto: string;
    bMensa: boolean;
begin
    result := false;

    if C_Depositos.State in [dsEdit, dsInsert] then
        C_Depositos.UpdateRecord;

    {Atualizando dados dos cheques}
    if C_Cheques.State in [dsEdit, dsInsert] then
        begin
            C_Cheques.AfterPost := nil;
            C_Cheques.UpdateRecord;
            if C_ChequesValor.Value > 0 then
                C_Cheques.Post;
            C_Cheques.AfterPost := C_ChequesAfterPost;
        end;

    {Atualizando dados dos cheques}
    if C_ChequesEletronico.State in [dsEdit, dsInsert] then
        begin
            C_ChequesEletronico.AfterPost := nil;
            C_ChequesEletronico.UpdateRecord;
            C_ChequesEletronico.Post;
            C_ChequesEletronico.AfterPost := C_ChequesEletronicoAfterPost;
        end;

    {Atualizando dados dos cartoes}
    if C_Cartoes.State in [dsEdit, dsInsert] then
        begin
            C_Cartoes.AfterPost := nil;
            C_Cartoes.UpdateRecord;
            C_Cartoes.Post;
            C_Cartoes.AfterPost := C_CartoesAfterPost;
        end;

    if pnCancelado.Visible then
        begin
            DlgMsg.ShowMsg(940);
            Exit;
        end;
    {
    if (DMFinanceiro.C_ContasCxBc.Locate('Conta',C_DepositosConta.value,[])) and
       Copy(DMFInanceiro.C_ContasCxBcSituacao.Value,1,1)='F' then begin
    }

    if cmbConta.Text = '' then
        begin
            DlgMsg.ShowMsg(929, ['a Conta onde será creditado o recebimento.']);
            Exit;
        end;

    {Verifica se o cliente está informado}
    if (C_DepositosCliente.Isnull) or (dfFavorecido.ID = 0) then
        begin
            // ShowMessage('Faltou informar a Pessoa / Empresa de quem você está recebendo este pagamento!');
            DlgMsg.ShowMsg(221);
            ActiveControl := dfFavorecido;
            exit;
        end;

    if C_DepositosData.Value > DMProjeto.dDataSistema then
        begin
            DlgMsg.ShowMsg(901);
            exit;
        end;

    {A data de pagamento não pode ser muito antiga}
    if C_DepositosData.Value < EncodeDate(1990, 1, 1) then
        begin
            DlgMsg.ShowMsg(214);
            exit;
        end;

    if (C_DepositosConta.IsNull) or (C_DepositosConta.AsInteger = 0) then
        begin
            DlgMsg.ShowMsg(929, ['a Conta']);
            exit;
        end;

    {Verifica se existe alguma parcela selecionada}
  {  if (not C_Titulos.Active) or (DBTitulos.Selecionados = '') then begin
      DlgMsg.ShowMsg(227);
      exit;
    end; }

    sSelecionados := DBTitulos.FirstSelected;
    for i := 1 to ContaStrings(sSelecionados, ',') do
        begin
            if (C_TitulosPagamento.IsNull) or ((C_TitulosPagamento.AsCurrency = 0) and (C_TitulosDescontos.AsCurrency = 0)) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor do Recebimento']);
                    exit;
                end;
            if (C_TitulosPagamento.AsCurrency < 0) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor do Recebimento. (Não pode ser Negativo)']);
                    exit;
                end;
            if (C_TitulosDescontos.IsNull) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor do Desconto não pode está vazio.']);
                    exit;
                end;
            if (C_TitulosJuros.IsNull) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor dos Juros não pode está vazio.']);
                    exit;
                end;
            if (C_TitulosDescontos.AsCurrency < 0) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor do Desconto. (Não pode ser Negativo)']);
                    exit;
                end;
            if (C_TitulosJuros.AsCurrency < 0) then
                begin
                    DlgMsg.ShowMsg(929, ['o valor de Juros. (Não pode ser Negativo)']);
                    exit;
                end;
            DBTitulos.NextSelected;
        end;

    {Validando os Cheques informado}
    if (clbForma.Checked[getIndex('1')]) then
        begin
            with C_Cheques do
                begin
                    First;
                    C_Cheques.AfterPost := nil;
                    while not EOF do
                        begin
                            if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
                                    Exit;
                                end;
                            if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
                                    Exit;
                                end;
                            if fieldbyname('Valor').Value < 0 then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
                                    Exit;
                                end;

                            C_Cheques.edit;
                            C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0, C_DepositosData.value, C_ChequesVencimento.Value);
                            if C_ChequesContaReceber.Value = 0 then
                                C_ChequesContaReceber.Value := C_DepositosConta.value;

                            Troco := C_DepositosTroco.Value;
                            C_Cheques.Post;
                            if C_Depositos.State in [dsBrowse] then
                                C_Depositos.Edit;
                            C_DepositosTroco.Value := Troco;
                            next;
                        end;
                end;
            C_Cheques.AfterPost := C_ChequesAfterPost;
        end;

    {Validando os Cheques Eletronico informado}
    if (clbForma.Checked[getIndex('2')]) then
        begin
            with C_ChequesEletronico do
                begin
                    First;
                    C_ChequesEletronico.AfterPost := nil;
                    while not EOF do
                        begin
                            if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
                                    Exit;
                                end;
                            if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
                                    Exit;
                                end;
                            if fieldbyname('Valor').Value < 0 then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
                                    Exit;
                                end;

                            if fieldbyname('Convenio').AsInteger = 0 then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Convênio do Cheque Eletrônico']);
                                    Exit;
                                end;

                            C_ChequesEletronico.edit;
                            C_ChequesEletronicoContaReceber.Value := DMFinanceiro.getContaReceber(0, C_DepositosData.value, C_ChequesEletronicoVencimento.Value);
                            if C_ChequesEletronicoContaReceber.Value = 0 then
                                C_ChequesEletronicoContaReceber.Value := C_DepositosConta.value;

                            Troco := C_DepositosTroco.Value;
                            C_ChequesEletronico.Post;
                            if C_Depositos.State in [dsBrowse] then
                                C_Depositos.Edit;
                            C_DepositosTroco.Value := Troco;
                            next;
                        end;
                    C_ChequesEletronico.AfterPost := C_ChequesEletronicoAfterPost;
                end;
        end;

    {Validando os Cartoes informado}
    if (clbForma.Checked[getIndex('3')]) then
        begin
            with C_Cartoes do
                begin
                    First;
                    while not EOF do
                        begin
                            if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cartão']);
                                    Exit;
                                end;
                            if fieldbyname('Valor').Value < 0 then
                                begin
                                    DlgMsg.ShowMsg(929, ['o Valor do Cartão. (Não pode ser negativo)']);
                                    Exit;
                                end;
                            {
                            C_Cartoes.edit;
                            C_CartoesContaReceber.Value := DMFinanceiro.getContaReceber(0,C_DepositosData.value,C_CartoesVencimento.Value);
                            if C_CartoesContaReceber.Value = 0 then
                              C_CartoesContaReceber.Value := C_DepositosConta.value;
                            C_Cartoes.post;
                            }
                            next;
                        end;
                end;
        end;

    {Caso pagamento em cartão, verifica se o cartão foi selecionado}
    if (DBCartoes.TotalGeral('Valor') > 0) and (cmbCartao.LookupKeyValue = null) then
        begin
            DlgMsg.ShowMsg(517);
            Exit;
        end;

    if (DBCartoes.TotalGeral('Valor') > 0) and (C_DepositosValorParcela.Value < DMFinanceiro.getParcelaMinima(C_CartoesCartao.Value)) then
        begin
            DlgMsg.ShowMsg(936);
            Exit;
        end;

    if (C_DepositosCreditoUtilizado.Value > 0) and (C_DepositosCreditoUtilizado.Value > C_DepositosCreditoCliente.Value) then
        begin
            DlgMsg.ShowMsg(519);
            if dfUtilizarCredito.CanFocus then
                dfUtilizarCredito.SetFocus;
            Exit;
        end;

    if (C_DepositosCreditoUtilizado.Value > 0) and
        (DBTitulos.TotalSelecionado('Pagamento') + DBTitulos.TotalSelecionado('Juros') = 0) then
        begin
            DlgMsg.ShowMsg(507);
            if dfUtilizarCredito.CanFocus then
                dfUtilizarCredito.SetFocus;
            Exit;
        end;

    if (C_DepositosOutroValor.Value > 0) and (cmbOutraForma.LookupKeyValue = null) then
        begin
            DlgMsg.ShowMsg(524);
            if cmbOutraForma.CanFocus then
                cmbOutraForma.SetFocus;
            Exit;
        end;

    if (C_DepositosOutroValor.Value > 0) and (DMFinanceiro.getEspecieID(Integer(cmbOutraForma.LookUpKeyValue)) = 40) and (cmbContaOutro.Text = '') then
        begin
            DlgMsg.ShowMsg(921);
            if cmbOutraForma.CanFocus then
                cmbOutraForma.SetFocus;
            Exit;
        end;

    if (C_DepositosValorTEF.Value > 0) and (cmbContaTEF.Text = '') then
        begin
            DlgMsg.ShowMsg(920);
            if cmbOutraForma.CanFocus then
                cmbOutraForma.SetFocus;
            Exit;
        end;

    if (DBTitulos.TotalSelecionado('Pagamento') + DBTitulos.TotalSelecionado('Juros') > 0) and
        (C_DepositosCreditoCliente.Value > 0) and
        (C_DepositosCreditoUtilizado.Value = 0) then
        begin
            if bMostrarMensagem then
                begin
                    if DlgMsg.ShowMsg(575, [currencystring + formatfloat('###,###,##0.00', C_DepositosCreditoCliente.Value), C_DepositosNome.Value]) = 100 then
                        Exit;
                end;
        end;

    {Verificando se existe alguma forma de pagamento seleciona, exceto se for desconto total}
    if (getTotalEmFormaPagamento(false) = 0) and (DBTitulos.ValorSelecionado('Descontos') <= 0) then
        begin
            DlgMsg.ShowMsg(524);
            Exit;
        end;

    if (C_DepositosTroco.Value > 0) and ((C_DepositosTroco.Value) >= (C_DepositosValor.Value + C_DepositosTroco.Value)) then
        begin
            DlgMsg.ShowMsg(955);
            Exit;
        end;

    if C_Titulos.Active and (C_Titulos.State <> dsBrowse) then
        begin
            C_Titulos.Post;
            DBTitulos.FirstSelected;
        end;

    TotalFormaPagamento := getTotalEmFormaPagamento(false);
    {Verificando se o Depósito está balanceado}
    if (C_Titulos.Active) and (DBTitulos.Selecionados <> '') and (TotalFormaPagamento <> getTotalEmTitulos) then
        begin
            C_Titulos.Edit;
            {Caso forma de pagamento maior que as parcelas}
            if not Corrigir(TotalFormaPagamento, getTotalEmTitulos, DBTitulos.TotalSelecionado('ValorAReceber')) then
                exit;
            if TotalFormaPagamento > getTotalEmTitulos then
                begin
                    {Pagando a mais apenas de uma parcela}
                    if DBTitulos.QuantidadeSelecionada = 1 then
                        begin
                            DBTitulos.FirstSelected;
                            C_Titulos.Edit;
                            ValorAnterior := C_TitulosPagamento.Value;
                            //        if (C_TitulosPagamento.Value) = C_TitulosValorAReceber.Value then
                            C_TitulosPagamento.OnChange := nil;
                            C_TitulosPagamento.Value := TotalFormaPagamento;
                            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
                            C_DepositosCreditoGerado.Value := TotalFormaPagamento - getTotalEmTitulos;
                            {Pagando a mais e mais de uma parcela selecionada}
                        end
                    else
                        begin
                            DBTitulos.FirstSelected;
                            nTotalSel := TotalFormaPagamento;
                            sSelecionados := DBTitulos.Selecionados;
                            for i := 1 to ContaStrings(sSelecionados, ',') do
                                begin
                                    if nTotalSel <= 0 then
                                        DBTitulos.RemoverLinha
                                    else if i = ContaStrings(sSelecionados, ',') then
                                        begin
                                            C_Titulos.Edit;
                                            C_TitulosDescontos.OnChange := nil;
                                            C_TitulosPagamento.OnChange := nil;
                                            C_TitulosPagamento.Value := nTotalSel;
                                            C_TitulosDescontos.OnChange := C_TitulosDescontosChange;
                                            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
                                        end;
                                    nTotalSel := nTotalSel - C_TitulosPagamento.Value;
                                    DBTitulos.NextSelected;
                                end;
                        end;
                    {Pagando a menos}
                end
            else
                begin
                    if DBTitulos.QuantidadeSelecionada = 1 then
                        begin
                            DBTitulos.FirstSelected;
                            C_Titulos.Edit;
                            ValorAnterior := C_TitulosPagamento.Value;
                            C_TitulosPagamento.OnChange := nil;
                            C_TitulosPagamento.Value := TotalFormaPagamento;
                            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
                            C_TitulosJuros.Value := 0;
                        end
                    else
                        begin
                            sSelecionados := DBTitulos.FirstSelected;

                            nTotalSel := TotalFormaPagamento;
                            for i := 1 to ContaStrings(sSelecionados, ',') do
                                begin
                                    if nTotalSel <= 0 then
                                        DBTitulos.RemoverLinha
                                    else if nTotalSel < C_TitulosPagamento.Value then
                                        begin
                                            nDesconto := C_TitulosDescontos.Value;
                                            C_Titulos.Edit;
                                            C_TitulosDescontos.OnChange := nil;
                                            C_TitulosPagamento.OnChange := nil;
                                            C_TitulosPagamento.Value := nTotalSel - C_TitulosJuros.Value;
                                            C_TitulosDescontos.Value := nDesconto;
                                            C_TitulosDescontos.OnChange := C_TitulosDescontosChange;
                                            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
                                            C_Titulos.Post;
                                        end;
                                    nTotalSel := nTotalSel - C_TitulosPagamento.Value - C_TitulosJuros.Value;
                                    DBTitulos.NextSelected;
                                end;
                        end;
                end;
        end;
    if C_Titulos.State in [dsedit] then
        C_Titulos.Post;

    C_Depositos.Edit;
    C_DepositosCreditoGerado.Value := 0;
    if (DBTitulos.ValorSelecionado('Pagamento') - DBTitulos.ValorSelecionado('Juros') + DBTitulos.ValorSelecionado('Descontos')) > DBTitulos.ValorSelecionado('ValorAReceber') then
        C_DepositosCreditoGerado.Value := (DBTitulos.ValorSelecionado('Pagamento') - DBTitulos.ValorSelecionado('Juros')) - DBTitulos.ValorSelecionado('ValorAReceber')
    else if TotalFormaPagamento > DBTitulos.ValorSelecionado('Pagamento') then
        C_DepositosCreditoGerado.Value := TotalFormaPagamento - C_DepositosCreditoUtilizado.Value - DBTitulos.ValorSelecionado('Pagamento') - DBTitulos.ValorSelecionado('Juros');

    if (C_DepositosCreditoGerado.Value > 0) and (C_DepositosCliente.Value = 1) then
        begin
            DlgMsg.ShowMsg(804);
            Exit;
        end;

    getTotalEmFormaPagamento(false);
    C_Depositos.Post;

    {Confirmação de Gravação}
    sCredito := '';
    if C_DepositosCreditoGerado.Value > 0 then
        sCredito := 'sendo ' + currencystring + formatfloat('###,###,##0.00', C_DepositosCreditoGerado.Value) + ' para gerar crédito';

    if C_DepositosCreditoUtilizado.Value > 0 then
        sCredito := sCredito + iif(sCredito = '', '', ', ') + 'sendo ' + currencystring + formatfloat('###,###,##0.00', C_DepositosCreditoUtilizado.Value) + ' em utilização de crédito';

    if C_DepositosTroco.Value > 0 then
        sCredito := sCredito + iif(sCredito = '', '', ', ') + 'sendo ' + currencystring + formatfloat('###,###,##0.00', C_DepositosTroco.Value) + ' em troco';

    sDesconto := '';
    if DBTitulos.ValorSelecionado('Descontos') > 0 then
        sDesconto := iif(sCredito = '', '', ', ') + 'sendo ' + formatfloat('###,###,##0.00', DBTitulos.ValorSelecionado('Descontos')) + ' em Descontos ';

    if DBTitulos.ValorSelecionado('Juros') > 0 then
        sDesconto := sDesconto + iif(sDesconto <> '', ', ', iif(sCredito = '', '', ', ')) + 'sendo ' + formatfloat('###,###,##0.00', DBTitulos.ValorSelecionado('Juros')) + ' de Juros ';

    sPagParcial := '';
    if DBTitulos.TotalSelecionado('Pagamento') + DBTitulos.TotalSelecionado('Descontos') < DBTitulos.TotalSelecionado('ValorAReceber') then
        sPagParcial := '(Pagamento Parcial)';
    if (DMPRojeto.Parametro('BloquearDescontoRecebimento') = 'S') and (DBTitulos.TotalSelecionado('Descontos') > 0) then
        begin
            if (C_TitulosVENDA.Value > 0) then
                begin
                    if Pos('ATRASADO', PermiteDesconto()) > 0 then
                        begin {Titulo em Atraso}
                            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'LIBSEATRAS') then
                                Exit;
                        end;
                    if (TotalFormaPagamento < DBTitulos.TotalSelecionado('FaltaReceber')) and
                        (Pos('DESCMAX', PermiteDesconto()) > 0) then
                        begin
                            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'Perdescmax', 'Recebimento', false, 'Cliente: ' + dfFavorecido.Text + #13#10 +
                                'Valor :' + FloatToStr(DBTitulos.TotalSelecionado('FaltaReceber')) + #13#10 +
                                'Desconto R$: ' + C_TitulosDescontos.AsString, dfFavorecido.ID, 'DlgDepositos') then
                                begin
                                    dlgMsg.ShowMsg(50, ['O Valor do Desconto não pode ultrapassar o permitido, desconto máximo de: ' + CurrToStrf(xMaxPermitido, ffCurrency, 2)]);
                                    Exit;
                                end;
                        end;
                end;
        end;

    try
        if DMProjeto.Parametro('Confirmacao') <> 'N' then
            begin
                bMensa := false;
                if bMostrarMensagem then
                    bMensa := (DlgMsg.ShowMsg(235, [currencystring + formatfloat('###,##0.00', C_DepositosValor.Value), iif((QtdeFormasPagamentoSel = 1) and (clbForma.Checked[getIndex('20')]), cmbContaTEF.Text, cmbConta.Text) + iif((sPagParcial <> '') or (sCredito <> '') or (sDesconto <> ''), '', ''), sPagParcial, sCredito, sDesconto]) = 200);
                if bMensa then
                    begin
                        if (C_Titulos.Active) and (DBTitulos.QuantidadeSelecionada = 1) and (ValorAnterior <> 0) then
                            begin
                                C_Titulos.Edit;
                                C_TitulosPagamento.Value := ValorAnterior;
                                C_Titulos.Post;
                            end;
                        shpTitulos.Visible := false;
                        shpFormaPagamento.Visible := false;
                        exit;
                    end;
            end;
        Result := true;
        //Paulo Remoção do DMECF 22/08/2012
        //    if (DMPRojeto.PAFObrigatorio) Then Begin
        //      if (DMECF.ECF1.Suprimento(FormatFloat('0.00',C_DepositosValor.Value-C_DepositosCreditoUtilizado.Value), 'Recebimento')) Then Begin
        //         if C_Titulos.Active and (C_Titulos.State <> dsBrowse) then
        //            C_Titulos.Post;
        //         DMProjeto.ReducaoZ_R06('CN')
        //      End Else Begin
        //         Result := False;
        //         raise Exception.Create('Impressora Desligada.'+#13+'O recebimento não será efetuado pelo sistema.');
        //      End;
        //    End;

    except on E: Exception do
            MessageDlg(pChar(e.Message), mtInformation, [mbOK], 0);
    end;
end;

function TDlgDepositos.Gravar;
var i, j: Integer;
    dtVencimento: TDateTime;
    nCreditoUtilizado, nDiferencaParcelas: currency;
    Msg, MsgTEF, rede, nsu, data, hora: string;
    comprovante, PossuiTEF: integer;
    aprovado, hipercard: boolean;
    valores: array[0..7] of Currency;
    Cupom: TStringList;
    nParcelas: currency;
begin
    result := false;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        {Apagando depósito do histório, caso o usuário queira alterar um depósito}
        if DepositoHist <> 0 then
            begin

                {Verificando se o crédito já foi utilizado}
                if nCreditoGerado > 0 then
                    begin
                        if (nCreditoGerado - C_DepositosCreditoGerado.Value) > DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, true) then
                            begin
                                DlgMsg.ShowMsg(7003, ['alterar']);
                                Exit;
                            end;
                    end;
                DMFinanceiro.ApagarDeposito(DepositoHist);
            end;
        {Gravando o Depósito}
        Deposito := DMFinanceiro.ReceberTitulos(DepositoHist, DBTitulos.ItensSelecionados, C_DepositosCliente.Value, C_DepositosConta.Value,
            C_DepositosData.Value, C_DepositosCreditoUtilizado.Value, C_DepositosCreditoGerado.Value, C_DepositosHistorico.Value, 0,
            iif(C_DepositosTroco.Value > C_DepositosValorDinheiro.Value, C_DepositosTroco.Value - C_DepositosValorDinheiro.Value, 0));
        DepositoHist := Deposito;
        {Depositos Forma}
        if (C_DepositosValorDinheiro.Value > 0) and (C_DepositosValorDinheiro.Value > (C_DepositosTroco.Value)) then
            begin

                DMFinanceiro.ReceberDoc(aIDDoc[0], 1, Deposito, 1, C_DepositosValorDinheiro.Value - C_DepositosTroco.Value,
                    C_DepositosData.Value, C_DepositosHistorico.value);
                aIDDocAtualizado[0] := 'S';
            end;

        {Lançamento em Cheques}
        if (C_Cheques.Active) and (DBCheques.TotalGeral('Valor') > 0) then
            begin

                C_Cheques.DisableControls;
                C_Cheques.First;
                i := 10;
                while not C_Cheques.EOF do
                    begin

                        DMFinanceiro.ReceberDoc(aIDDoc[i], 1, Deposito, 2, C_ChequesValor.Value,
                            C_ChequesVencimento.Value, C_DepositosHistorico.value, C_ChequesNumCheque.Value,
                            C_ChequesBanco.Value, C_ChequesTitular.AsString {C_DepositosNome.Value}, 0, 0, C_ChequesContaReceber.Value);
                        aIDDocAtualizado[i] := 'S';
                        inc(i);
                        C_Cheques.Next;
                    end;
                C_Cheques.EnableControls;

            end;
        {Lançamento em Cheques Eletronico}
        if (C_ChequesEletronico.Active) and (DBChequesEletronico.TotalGeral('Valor') > 0) then
            begin
                C_ChequesEletronico.DisableControls;
                C_ChequesEletronico.First;
                i := 40;
                while not C_ChequesEletronico.EOF do
                    begin
                        DMFinanceiro.ReceberDoc(aIDDoc[i], 1, Deposito, C_ChequesEletronicoConvenio.Value, C_ChequesEletronicoValor.Value,
                            C_ChequesEletronicoVencimento.Value,
                            iif(C_ChequesEletronicoObs.value = '', C_DepositosHistorico.Value, C_ChequesEletronicoObs.value),
                            0, 0, C_DepositosNome.Value, 0, 0, C_ChequesEletronicoContaReceber.Value);
                        aIDDocAtualizado[i] := 'S';
                        inc(i);
                        C_ChequesEletronico.Next;
                    end;
                C_ChequesEletronico.EnableControls;

            end;

        { Lançamento em Cartão de Crédito}
        if (C_Cartoes.Active) and (DBCartoes.TotalGeral('Valor') > 0) then
            begin

                C_Cartoes.DisableControls;
                C_Cartoes.First;
                i := 10;
                j := 70;
                while not C_Cartoes.EOF do
                    begin
                        dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, C_DepositosData.Value);
                        nDiferencaParcelas := C_CartoesValor.AsCurrency - (C_CartoesNumParcelas.Value * (StrToFloat(formatfloat('#######0.00', C_CartoesValorParcela.Value))));

                        for i := 1 to C_CartoesNumParcelas.Value do
                            begin
                                if (i = C_CartoesNumParcelas.Value) and (nDiferencaParcelas <> 0) then
                                    begin
                                        C_Cartoes.Edit;
                                        C_CartoesValorParcela.Value := C_CartoesValorParcela.Value + nDiferencaParcelas;
                                        C_Cartoes.Post;
                                    end;

                                //// Pegando o vencimento pelo intervalo entre parcelas....
                                dtVencimento := C_DepositosData.Value + (DMFinanceiro.IntervaloParcelas(C_CartoesCartao.Value) * i);

                                DMFinanceiro.ReceberDoc(aIDDoc[j], 1, Deposito, C_CartoesCartao.Value,
                                    C_CartoesValorParcela.Value, dtVencimento,
                                    C_DepositosHistorico.value, 0, 0, '', 0,
                                    C_CartoesModoCartao.Value, C_CartoesContaCartao.Value,
                                    C_CartoesNumeroCartao.Value, C_CartoesValidade.Value);
                                if i <> C_CartoesNumParcelas.Value then
                                    dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, dtVencimento);
                                aIDDocAtualizado[j] := 'S';
                                inc(j);
                            end;
                        C_Cartoes.Next;
                    end;
                C_Cartoes.First;
                C_Cartoes.EnableControls;
            end;

        {Lançamento com outra forma de pagamento}
        if (C_DepositosOutroValor.Value > 0) then
            begin

                DMFinanceiro.ReceberDoc(aIDDoc[5], 1, Deposito, C_DepositosOutraForma.Value, C_DepositosOutroValor.Value,
                    C_DepositosData.Value, C_DepositosHistorico.value, 0, 0, '', 0, 0, C_DepositosContaOutro.Value);
                aIDDocAtualizado[5] := 'S';
            end;

        {Lançamentos TEF}
        if (C_DepositosValorTEF.Value > 0) then
            begin
                //if getQtdeFormasSelecionada = 1 then
                DMFinanceiro.ReceberDoc(aIDDoc[4], 1, Deposito, 20, C_DepositosValorTEF.Value,
                    C_DepositosData.Value, C_DepositosHistorico.value, 0, 0, '', C_DepositosContaTEF.Value);
                aIDDocAtualizado[4] := 'S';
            end;

        {Lançamento Utilização de Crédito}
        if (C_DepositosCreditoUtilizado.Value > 0) then
            begin

                DMFinanceiro.ReceberDoc(aIDDoc[6], 1, Deposito, -1, C_DepositosCreditoUtilizado.Value,
                    C_DepositosData.Value, C_DepositosHistorico.value, 0, 0, '', 0, 0);
                aIDDocAtualizado[6] := 'S';
            end;

        {Troco}
        if C_DepositosTroco.Value > C_DepositosValorDinheiro.Value then
            DMFinanceiro.LancamentoDeTroco(C_DepositosConta.Value, C_DepositosData.Value, C_DepositosTroco.Value - C_DepositosValorDinheiro.Value, C_DepositosCliente.Value, Deposito, 1);

        {Apagar Documentos não Selecionados}
        for i := 0 to 100 do
            if (aIDDoc[i] <> 0) and (aIDDocAtualizado[i] <> 'S') then
                DMFinanceiro.ApagarDoc(aIDDoc[i], true);

        {Baixa do Titulo}
        DMFinanceiro.BaixarTitulo(DBTitulos.Selecionados);

        {Atualizando Créditos Utilizado}
        if C_DepositosCreditoUtilizado.Value > 0 then // 'Crédito Utilizado em Depósito ('+C_DepositosHistorico.Value+')'
            DMFinanceiro.RegistrarCredito(C_DepositosCliente.Value, Deposito, 1, TRUE, C_DepositosCreditoUtilizado.Value, 0, format(DMProjeto.getMsg(239), [C_DepositosHistorico.AsString]));

        {Gerando Crédito}
        if C_DepositosCreditoGerado.Value > 0 then
            DMFinanceiro.RegistrarCredito(C_DepositosCliente.Value, Deposito, 1, TRUE, 0, C_DepositosCreditoGerado.Value, iif(DBTitulos.Selecionados = '', 'Pré-Pagamento', format(DMProjeto.getMsg(241), [C_DepositosHistorico.AsString])));

        DMContabil.ContabilizaReceberPagamentos(DepositoHist, C_Depositos, C_Titulos, C_Cheques, C_Cartoes, C_ChequesEletronico);

        if not DMContabil.Salvar(DepositoHist) then
            raise Exception.Create(DMProjeto.GetMsg(3117));
        ///////////////////////////

        sTitulosHist := '';
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        result := true;

        // Fazendo a transação de CHQ Eletrônico....

    //Paulo Remoção do DMECF 22/08/2012

        //if (DMProjeto.bCaixa) and (DMProjeto.ParametroTEF('TEFTECBAN') = 'S') and (C_ChequesEletronico.Active) and (DBChequesEletronico.TotalGeral('Valor') > 0) then begin
    //      DMECF.Administrativa( 'TECBAN' );
    //    end;
        // Fazendo a transação de Cartão de Crédito...
    //    if (C_Cartoes.Active) and (DBCartoes.TotalGeral('Valor') > 0) then begin
    //      If DMProjeto.bTEF Then Begin
    //        MsgTEF := '';
    //        rede := '';
    //        nsu := '';
    //        data := '';
    //        hora := '';
    //        comprovante := 0;
    //        aprovado := true;
    //        PossuiTEF := 0;
    //        Cupom := TStringList.Create;
    //        Valores[3] := DBCartoes.TotalGeral('Valor') ;
    //        dmECF.TEF1.diretorioreq := 'C:\TEF_DIAL\REQ';
    //        dmECF.TEF1.diretorioresp := 'C:\TEF_DIAL\RESP';
    //        dmECF.TEF1.FinalizaTEF;
    //        dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
    //        dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
    //        dmECF.TEF1.FinalizaTEF;
    //        dmECF.TEF1.diretorioreq := 'C:\HiperTEF\req';
    //        dmECF.TEF1.diretorioresp := 'C:\HiperTEF\resp';
    //        dmECF.TEF1.FinalizaTEF;
    //        dmECF.TEF1.diretorioreq := '';
    //        dmECF.TEF1.diretorioresp := '';
    //      End;
    //      if (Pos('HIPERCARD',UpperCase(cmbCartao.Text))  > 0) and (DMProjeto.ParametroTEF('TEFHIPER') = 'S') then
    //         HiperCard := True
    //      else
    //         HiperCard := False;
    //      if dmECF.VerificaTEF(valores,aprovado,MsgTEF,Cupom, PossuiTEF, comprovante,hipercard) then Begin
    //         DMECF.ECF1.AbreRelatTEF;
    //
    //         FrmMsgTEF := TFrmMsgTEF.Create(Self);
    //         FrmMsgTEF.LabelMsg.Caption := MsgTEF;
    //         FrmMsgTEF.btMsgTEF.Visible := False;
    //         FrmMsgTEF.Show;
    //
    //         DMECF.ECF1.ImprimeRelatTEF(Cupom,2,false);
    //         DMECF.ECF1.FechaRelatTEF;
    //         dmECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
    //         DMECF.TEF1.FinalizaTEF;
    //         FrmMsgTEF.Free;
    //         Cupom.Free;
    //      End Else Exit;
    //    end;
        if fileexists(DMProjeto.SonsPath + 'caixareg.wav') then
            sndplaysound(PChar(DMProjeto.SonsPath + 'caixareg.wav'), SND_ASYNC);

        (* Abrindo a gaveta de dinheiro... *)
      {		if DMProjeto.Parametro('Gaveta') = 'S' then
         AbrirGaveta;}
        try
            SendLastDataObject(Self.Name, 'Depositos', 'Deposito', Deposito, false);
        except
        end;

        //Autenticacao do documento.
        if ((sAutenticacao) and (sTitulosSelecionados = '')) then
            begin
                if not C_Autenticacao.Active then
                    C_Autenticacao.CreateDataSet
                else
                    C_Autenticacao.EmptyDataSet;
                C_Autenticacao.Close;
                C_Autenticacao.Open;
                C_Titulos.First;
                while not C_Titulos.Eof do
                    begin
                        if (C_Titulos.FieldByName('_icSelecionado').Value = 1) then
                            begin
                                C_Autenticacao.Append;
                                C_Autenticacao.FieldByName('Titulo').AsString := C_Titulos.FieldByName('Titulo').AsString;
                                C_Autenticacao.FieldByName('Valor').AsString := C_Titulos.FieldByName('Pagamento').AsString;
                                C_Autenticacao.FieldByName('Vencimento').AsString := C_Titulos.FieldByName('Vencimento').AsString;
                                C_Autenticacao.FieldByName('Md5').AsString :=
                                    LowerCase(MD5.MD5Print(MD5.MD5String(Trim(C_Autenticacao.FieldByName('Titulo').AsString) +
                                    Trim(C_Autenticacao.FieldByName('Valor').AsString) +
                                    Trim(C_Autenticacao.FieldByName('Vencimento').AsString))));
                                C_Autenticacao.FieldByName('Dtpgto').AsString := FormatDateTime('DD/MM/YYYY', Now);
                                C_Autenticacao.Post;
                            end;
                        C_titulos.Next;
                    end;
                C_Autenticacao.First;
                DMProjeto.CriarForm('dlgAutenticacaoTitulos', Self, True);
            end;

        if sTitulosSelecionados <> '' then
            bModalResult := true;
    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
                DlgMsg.ShowMsg(242, e.message, '');
                DMProjeto.GeraLog('Deposito', e.message);
            end;
    end;
end;

procedure TDlgDepositos.C_TitulosBeforeDelete(DataSet: TDataSet);
begin
    inherited;
    Abort;
end;

procedure TDlgDepositos.C_DepositosCREDITOUTILIZADOChange(Sender: TField);
var nTotalSel: Currency;
begin
    inherited;
    getTotalEmFormaPagamento;
    {  if DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T' then begin
       if C_Titulos.Active then
        nTotalSel := getTotalEmTitulos;
       if ((C_DepositosValor.Value+C_DepositosTroco.Value) > nTotalSel) and (nTotalSel > 0) then
        C_DepositosTroco.Value := (C_DepositosValor.Value+C_DepositosTroco.Value) - nTotalSel;
      end;}
end;

procedure TDlgDepositos.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    {	for i:=0 to ComponentCount-1 do
       if Components[i] is TDataSet then
         TDataSet(Components[i]).Close; }
    inherited;
    DlgPopup.Free;
    if DMContabil <> nil then
        begin
            DMContabil.FechaDatasets;
            DMContabil.Free;
        end;
    DMProjeto.LimparParametrosForm;
end;

procedure TDlgDepositos.C_TitulosBeforeInsert(DataSet: TDataSet);
begin
    inherited;
    Abort;
end;

procedure TDlgDepositos.C_ChequesNewRecord(DataSet: TDataSet);
begin
    inherited;
    inc(nSeq);
    C_ChequesSequencial.Value := nSeq;
    C_ChequesNumCheque.Value := nNumCheque;
    //  C_ChequesVencimento.Value		:= dtData;
    C_ChequesAgencia.Value := C_DepositosAgencia.Value;
    C_ChequesBanco.Value := C_DepositosBanco.Value;
    C_ChequesValor.Value := DBTitulos.ValorSelecionado('Pagamento') - getTotalEmFormaPagamento;
    //  C_ChequesContaReceber.Value	:= DMFinanceiro.getContaReceber(0,C_ChequesVencimento.Value);
end;

procedure TDlgDepositos.C_ChequesBeforePost(DataSet: TDataSet);
begin
    inherited;
    if C_Cheques.State in [dsInsert, dsEdit] then
        begin
            if C_ChequesNumCheque.AsInteger <> 0 then
                nNumCheque := C_ChequesNumCheque.AsInteger + 1;
            if (C_ChequesTitular.IsNull) then
                C_ChequesTitular.AsString := dfFavorecido.Text;

            {
            if DMProjeto.Parametro('DiasParaCadaCheque') = '30' then
             dDataCheque:= DateAdd( 'MM',1,C_ChequesVencimento.AsDateTime)
            else
           dDataCheque:= C_ChequesVencimento.AsDateTime+StrToIntDef(DMProjeto.Parametro('DiasParaCadaCheque'),0);
            }
        end;
end;

procedure TDlgDepositos.C_DepositosDATAChange(Sender: TField);
begin
    inherited;
    dtData := C_DepositosData.Value;
end;

procedure TDlgDepositos.SetFormaPagamento(nIndex: integer);
var nValor: currency;
    sCampo: string;
begin
    inherited;
    if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '5' then
        sCampo := 'ValorDinheiro'
    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '6' then
        sCampo := 'CreditoUtilizado'
    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '20' then
        sCampo := 'ValorTEF'
    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '0' then
        sCampo := 'OutroValor';
    C_Depositos.Edit;
    if clbForma.Checked[nIndex] then
        begin
            if (C_Titulos.Active) then
                begin
                    nValor := DBTitulos.ValorSelecionado('Pagamento') - (getTotalEmFormaPagamento + C_DepositosTroco.Value);
                    if nValor < 0 then
                        nValor := 0;
                    {Cheques}
                    if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '1' then
                        begin
                            if DMProjeto.Parametro('ChequeParaCadaParcela') = 'S' then
                                ChequeParaCadaParcela
                            else
                                begin
                                    nValorCheque := nValor;
                                    C_Cheques.Append;
                                    C_ChequesValor.Value := nValorCheque;
                                    C_ChequesVencimento.Value := dtData;
                                    C_Cheques.Post;
                                    getTotalEmFormaPagamento;
                                end;
                            {Cheques Eletrônico}
                        end
                    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '2' then
                        begin
                            nValorCheque := nValor;
                            C_ChequesEletronico.Append;
                            C_ChequesEletronicoConvenio.Value := DMFinanceiro.C_ChequesEletFormaPagamento.Value;
                            C_ChequesEletronicoValor.Value := nValorCheque;
                            C_ChequesEletronicoVencimento.Value := dtData;
                            C_ChequesEletronico.Post;
                            getTotalEmFormaPagamento;
                            {Cartão de Crédito}
                        end
                    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '3' then
                        begin
                            C_Cartoes.Append;
                            C_CartoesValor.Value := nValor;
                            C_CartoesValorParcela.Value := nValor;
                            C_Cartoes.Post;
                            getTotalEmFormaPagamento;
                        end
                    else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '6' then
                        C_Depositos.FieldByName(sCampo).Value := C_DepositosCreditoCliente.Value
                    else if not (StrToInt(SeparaStrings(clbForma.TagStr, ',', nIndex + 1)) in [1, 2]) then
                        begin
                            C_Depositos.FieldByName(sCampo).Value := nValor;
                            if nIndex = 3 then
                                begin //Crédito Utilizado
                                    if nValor >= C_DepositosCreditoCliente.Value then
                                        C_Depositos.FieldByName(sCampo).Value := C_DepositosCreditoCliente.Value
                                    else
                                        C_Depositos.FieldByName(sCampo).Value := nValor;
                                end;
                        end;
                end;
        end
    else
        begin
            if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '1' then
                begin
                    if C_Cheques.Active then
                        C_Cheques.EmptyDataSet;
                    getTotalEmFormaPagamento;
                end
            else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '2' then
                begin
                    if C_ChequesEletronico.Active then
                        C_ChequesEletronico.EmptyDataSet;
                    getTotalEmFormaPagamento;
                end
            else if SeparaStrings(clbForma.TagStr, ',', nIndex + 1) = '3' then
                begin
                    if C_Cartoes.Active then
                        C_Cartoes.EmptyDataSet;
                    getTotalEmFormaPagamento;
                end
            else
                C_Depositos.FieldByName(sCampo).Value := 0;
        end;
end;

procedure TDlgDepositos.clbFormaClickCheck(Sender: TObject);
var i: integer;
begin
    inherited;
    for i := 0 to clbForma.Items.Count - 1 do
        if clbForma.Checked[i] then
            begin
                pgForma.Visible := true;
                break;
            end;
    if (pgForma.Pages[clbForma.ItemIndex].TabVisible) and (clbForma.Checked[clbForma.ItemIndex]) then
        pgForma.HideTab(clbForma.ItemIndex);

    {Verifica se o valor total a receber está em uma forma de pagamento,
     Caso esteja, será desmarcado e colocado nesta nova forma de pagamento }
    if (DBTitulos.ValorSelecionado('Pagamento') = (getTotalEmFormaPagamento + C_DepositosTroco.Value)) and
        (clbForma.Checked[clbForma.ItemIndex]) then
        for i := 0 to clbForma.Items.Count - 1 do
            if i <> clbForma.Itemindex then
                begin
                    clbForma.Checked[i] := false;
                    SetFormaPagamento(i);
                    pgForma.HideTab(i);
                end;

    SetFormaPagamento(clbForma.ItemIndex);
    if clbForma.Checked[clbForma.ItemIndex] then
        begin
            pgForma.ShowTab(clbForma.ItemIndex);
        end
    else
        pgForma.HideTab(clbForma.ItemIndex);
    Application.ProcessMessages;
end;

procedure TDlgDepositos.C_TitulosPagamentoChange(Sender: TField);
var nPagamento: currency;
begin
    inherited;
    nPagamento := C_TitulosPagamento.Value;
    //  if nPagamento = C_TitulosValorAReceber.Value then begin
    //    C_TitulosJuros.OnChange := nil;
    //  	C_TitulosJuros.Value 		:= 0;
    //    C_TitulosJuros.OnChange := C_TitulosJurosChange;
    //    C_TitulosDescontos.Value := 0;
    //  end else
    if nPagamento > C_TitulosValorAReceber.AsCurrency then
        begin
            C_TitulosJuros.OnChange := nil;
            C_TitulosJuros.Value := nPagamento - C_TitulosValorAReceber.AsCurrency;
            C_TitulosJuros.OnChange := C_TitulosJurosChange;
        end;
end;

procedure TDlgDepositos.DBChequesExit(Sender: TObject);
var nTotalSel: Currency;
begin
    inherited;
    if C_Cheques.State in [dsEdit, dsInsert] then
        C_Cheques.Post;
    getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.C_ChequesDSUpdateData(Sender: TObject);
begin
    inherited;
    C_Depositos.Edit;
    C_DepositosValor.Value := getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.tabCreditoShow(Sender: TObject);
begin
    inherited;
    if dfUtilizarCredito.CanFocus then
    try
        dfUtilizarCredito.SetFocus;
        dfUtilizarCredito.SelectAll;
    except
    end;
end;

procedure TDlgDepositos.getHistorico(Deposito: integer);
var
    i, j, k, nFav: integer;
    Pagamento, Descontos, Juros, CreditoUtilizado, CreditoGerado: currency;
    sFavorecidos: string;
begin
    with DMFinanceiro do
        begin
            Novo;
            DepositoHist := Deposito;
            with Q_SQL do
                begin
                    close;
                    sql.text := 'select conta, favorecido, data, creditoutilizado, creditogerado, troco ' +
                        'from depositos where deposito = ' + IntToStr(Deposito);
                    open;
                    Favorecido := fieldbyname('favorecido').AsInteger;
                    C_DepositosConta.Value := fieldbyname('conta').AsInteger;
                    C_DepositosData.Value := fieldbyname('data').AsDateTime;
                    C_DepositosTroco.Value := fieldbyname('troco').AsCurrency;
                    CreditoUtilizado := fieldbyname('CreditoUtilizado').AsCurrency;
                    CreditoGerado := fieldbyname('CreditoGerado').AsCurrency;
                    C_DepositosCreditoGerado.Value := CreditoGerado;
                    nCreditoGerado := CreditoGerado;
                    close;
                end;
            dfFavorecido.OnSelecionou := nil;
            dfFavorecido.ID := Favorecido;
            dfFavorecido.OnSelecionou := dfFavorecidoSelecionou;
            sTitulosHist := getTitulos(DepositoHist);
            for i := 1 to ContaStrings(sTitulosHist, ',') do
                begin
                    nFav := getFavorecidoParcela(StrToInt(SeparaStrings(sTitulosHist, ',', i)));
                    if pos(IntToStr(nFav), sFavorecidos) = 0 then
                        sFavorecidos := sFavorecidos + IntToStr(nFav) + ',';
                end;
            sFavorecidos := Copy(sFavorecidos, 1, length(sFavorecidos) - 1);
            AbrirTitulos(sTitulosHist, sFavorecidos);
            clbForma.Enabled := (C_Titulos.Active) and (C_Titulos.RecordCount > 0) and (DBTitulos.Selecionados <> '');
            if sTitulosHist <> '' then
                begin
                    for j := 1 to ContaStrings(sTitulosHist, ',') do
                        begin
                            with Q_SQL2 do
                                begin
                                    close;
                                    sql.text := 'select Titulo, Valor, Descontos, Juros, CreditoUtilizado ' +
                                        'from DepositosTitulos dt ' +
                                        'where Deposito = ' + IntToStr(DepositoHist) + ' and Titulo = ' + SeparaStrings(sTitulosHist, ',', j);
                                    Open;

                                    Pagamento := fieldbyname('Valor').AsCurrency + fieldbyname('CreditoUtilizado').AsCurrency;
                                    Descontos := fieldbyname('Descontos').AsCurrency;
                                    Juros := fieldbyname('Juros').AsCurrency;

                                    if C_Titulos.Locate('ID', StrToInt(SeparaStrings(sTitulosHist, ',', j)), []) then
                                        begin
                                            DBTitulos.SelecionarLinha;
                                            C_Titulos.Edit;
                                            C_TitulosDescontos.OnChange := nil;
                                            C_TitulosPagamento.OnChange := nil;
                                            C_TitulosJuros.OnChange := nil;
                                            C_TitulosDescontos.Value := Descontos;
                                            C_TitulosPagamento.Value := Pagamento;
                                            C_TitulosJuros.Value := Juros;
                                            C_TitulosPgtoRecebido.Value := Pagamento;
                                            C_TitulosDescontos.OnChange := C_TitulosDescontosChange;
                                            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
                                            C_TitulosJuros.OnChange := C_TitulosJurosChange;
                                            C_Titulos.Post;
                                        end;
                                end;
                        end;
                end;
            with Q_SQL2 do
                begin
                    Close;
                    SQL.Text := 'select dd.IDDoc, dd.Deposito, dd.FormaPagamento, fp.Especie, ' +
                        'dd.Vencimento, dd.ContaAtual, dd.Valor, dd.NumCheque, dd.Banco, ' +
                        'dd.ContaReceber, dd.Tipo, dd.NumeroCartao, dd.Validade, dd.obs, dd.TitularCheque ' +
                        'from DepositosDoc dd, FormasPagamento fp ' +
                        'where dd.Deposito = :Dep and dd.FormaPagamento = fp.formapagamento';
                    ParamByName('Dep').AsInteger := DepositoHist;
                    Open;
                    disablecontrols;
                    First;
                    C_Cheques.EmptyDataSet;
                    C_ChequesEletronico.EmptyDataSet;
                    C_Cartoes.EmptyDataSet;
                    C_Cheques.DisableControls;
                    C_ChequesEletronico.DisableControls;
                    C_Cartoes.DisableControls;
                    C_Depositos.Edit;
                    pgForma.Visible := true;
                    LimpaArrayDoc;
                    i := 10;
                    k := 40;
                    j := 70;
                    while not EOF do
                        begin
                            if fieldbyname('Especie').AsInteger = 5 then
                                begin // Dinheiro
                                    aIDDoc[0] := fieldbyname('IDDoc').AsInteger;
                                    clbForma.Checked[getIndex('5')] := true;
                                    clbForma.ItemIndex := getIndex('5');
                                    pgForma.ShowTab(0);
                                    C_DepositosValorDinheiro.Value := fieldByname('Valor').AsCurrency;
                                end
                            else if fieldbyname('Especie').AsInteger = 1 then
                                begin // Cheques
                                    clbForma.Checked[getIndex('1')] := true;
                                    clbForma.ItemIndex := getIndex('1');
                                    pgForma.ShowTab(1);
                                    C_Cheques.Append;
                                    C_ChequesNumCheque.Value := fieldbyname('numcheque').asInteger;
                                    C_ChequesBanco.Value := fieldbyname('banco').asInteger;
                                    C_ChequesValor.Value := fieldbyname('valor').AsCurrency;
                                    C_ChequesVencimento.Value := fieldbyname('vencimento').asdatetime;
                                    C_ChequesContaReceber.Value := fieldbyname('contareceber').asInteger;
                                    C_ChequesTitular.Value := fieldbyname('TitularCheque').AsString;
                                    C_Cheques.Post;
                                    aIDDoc[i] := fieldbyname('IDDoc').AsInteger;
                                    inc(i);
                                end
                            else if fieldbyname('Especie').AsInteger = 2 then
                                begin // Cheques Eletronico
                                    clbForma.Checked[getIndex('2')] := true;
                                    clbForma.ItemIndex := getIndex('2');
                                    pgForma.ShowTab(2);
                                    C_ChequesEletronico.Append;
                                    C_ChequesEletronicoConvenio.Value := fieldbyname('formapagamento').asInteger;
                                    C_ChequesEletronicoValor.Value := fieldbyname('valor').AsCurrency;
                                    C_ChequesEletronicoVencimento.Value := fieldbyname('vencimento').asdatetime;
                                    C_ChequesEletronicoContaReceber.Value := fieldbyname('contareceber').asInteger;
                                    C_ChequesEletronicoObs.Value := fieldbyname('obs').asString;
                                    C_ChequesEletronico.Post;
                                    aIDDoc[k] := fieldbyname('IDDoc').AsInteger;
                                    inc(k);
                                end
                            else if fieldbyname('Especie').AsInteger = 3 then
                                begin // Cartao de Crédito
                                    aIDDoc[j] := fieldbyname('IDDoc').AsInteger;
                                    inc(j);
                                    clbForma.Checked[getIndex('3')] := true;
                                    clbForma.ItemIndex := getIndex('3');
                                    tabCartao.OnShow := nil;
                                    pgForma.ShowTab(3);
                                    tabCartao.OnShow := tabCartaoShow;
                                    if C_CartoesCartao.Value <> fieldByname('formapagamento').AsInteger then
                                        begin
                                            C_Cartoes.Append;
                                            C_CartoesNumParcelas.Value := 0;
                                        end
                                    else
                                        C_Cartoes.Edit;
                                    C_CartoesCartao.OnChange := nil;
                                    C_CartoesCartao.Value := fieldByname('formapagamento').AsInteger;
                                    C_CartoesCartao.OnChange := C_CartoesCartaoChange;
                                    C_CartoesValor.Value := C_CartoesValor.Value + fieldByname('Valor').AsCurrency;
                                    C_CartoesNumParcelas.Value := C_CartoesNumParcelas.Value + 1;
                                    C_CartoesContaCartao.Value := fieldByname('contareceber').AsInteger;
                                    if fieldbyname('Tipo').asInteger in [1, 2] then
                                        C_CartoesModoCartao.Value := fieldbyname('Tipo').AsInteger;
                                    if C_CartoesValorParcela.Value = 0 then
                                        C_CartoesValorParcela.Value := fieldByname('Valor').AsCurrency;
                                    C_CartoesNumeroCartao.Value := fieldbyname('NumeroCartao').AsString;
                                    C_CartoesValidade.Value := fieldbyname('Validade').AsString;
                                    C_Cartoes.Post;
                                end
                            else if fieldbyname('Especie').AsInteger = 6 then
                                begin {Utilização Crédito}
                                    aIDDoc[6] := fieldbyname('IDDoc').AsInteger;
                                    clbForma.Checked[getIndex('6')] := true;
                                    clbForma.ItemIndex := getIndex('6');
                                    pgForma.ShowTab(4);
                                    C_DepositosCreditoUtilizado.Value := fieldByname('Valor').AsCurrency;
                                end
                            else if fieldbyname('Especie').AsInteger = 20 then
                                begin {Deposito Bancario}
                                    aIDDoc[4] := fieldbyname('IDDoc').AsInteger;
                                    clbForma.Checked[getIndex('20')] := true;
                                    clbForma.ItemIndex := getIndex('20');
                                    pgForma.ShowTab(5);
                                    C_DepositosContaTEF.Value := fieldByname('contaatual').AsInteger;
                                    C_DepositosValorTEF.Value := fieldByname('Valor').AsCurrency;
                                end
                            else
                                begin {Outras Formas de Pagamento}
                                    aIDDoc[5] := fieldbyname('IDDoc').AsInteger;
                                    clbForma.Checked[getIndex('0')] := true;
                                    clbForma.ItemIndex := getIndex('0');
                                    pgForma.ShowTab(6);
                                    C_DepositosOutraForma.Value := fieldByname('formapagamento').AsInteger;
                                    C_DepositosOutroValor.Value := fieldByname('Valor').AsCurrency;
                                    C_DepositosContaOutro.Value := fieldByname('ContaReceber').AsInteger;
                                end;
                            Next;
                        end;
                    EnableControls;

                    C_DepositosCreditoCliente.Value := CreditoFavorecido(C_DepositosCliente.Value, true) + CreditoUtilizado - CreditoGerado;
                    if not clbForma.Checked[getIndex('3')] then
                        C_DepositosNumParcelas.Value := 1;
                    C_Depositos.Post;
                end;
            getTotalEmFormaPagamento;
            clbForma.ItemIndex := -1;
            pnCancelado.Visible := getSituacaoDeposito(Deposito) = 'C';
            btCancelar.Visible := true;
            btImprimir.visible := true;
            btCancelar.enabled := not pnCancelado.Visible;
            btImprimir.enabled := not pnCancelado.Visible;
            if C_Cartoes.RecordCount > 1 then
                btMaisCartoes.Click;

            C_Cheques.EnableControls;
            C_ChequesEletronico.EnableControls;
            C_Cartoes.EnableControls;

            DMProjeto.LimparParametrosForm;
        end;
    TranAlterar.Prepare(pnAlterar.Parent, pnAlterar.BoundsRect);
    try
        pnAlterar.Visible := true;
        if TranAlterar.Prepared then
            TranAlterar.Execute;
    finally
        TranAlterar.UnPrepare;
    end;
    btGravar.Caption := 'Alterar';
    btGravar.Enabled := False;
end;

procedure TDlgDepositos.dbTipoFavClick(Sender: TObject);
begin
    inherited;
    lbSelecione.Caption := 'Parcelas em Aberto para o ' + dbTipoFav.Text + '. Selecione os que deseja liquidar:';
end;

procedure TDlgDepositos.tabDinheiroShow(Sender: TObject);
begin
    inherited;
    dfDinheiro.SetFocus;
    dfDinheiro.SelectAll;
end;

procedure TDlgDepositos.tabChequeShow(Sender: TObject);
begin
    inherited;
    DBCheques.SetFocus;
    DBCheques.TS_SelectedColumn := 'NumCheque';
end;

procedure TDlgDepositos.tabOutrosShow(Sender: TObject);
begin
    inherited;
    if C_Depositos.Active then
        begin
            if C_Depositos.State in [dsBrowse] then
                C_Depositos.Edit;
            C_DepositosOutraForma.Value := DMFinanceiro.C_OutrasFormaFormaPagamento.Value;
            cmbOutraForma.SetFocus;
        end;
end;

procedure TDlgDepositos.tabCartaoShow(Sender: TObject);
begin
    inherited;
    //if C_Cartoes.State in [dsBrowse] then
    //	C_Cartoes.Edit;
    //C_CartoesCartao.Value 	:= DMFinanceiro.C_CartoesCredFormaPagamento.value;
   //cmbCartao.LookupKeyValue:= DMFinanceiro.C_CartoesCredFormaPagamento.value;
    cmbCartao.SetFocus;
    //  dfCartao.SelectAll;
end;

procedure TDlgDepositos.C_TitulosDescontosChange(Sender: TField);
var nDesconto: Currency;
begin
    inherited;
    if C_TitulosDescontos.Value > 0 then
        begin
            if DMProjeto.nMaxDescontoFunc > 0 then
                nDesconto := ((C_TitulosDescontos.Value - C_TitulosValorDescAntecipado.Value) / C_TitulosPagamento.Value) * 100;
            if nDesconto > DMProjeto.nMaxDescontoFunc then
                if not (DMPRojeto.Parametro('BloquearDescontoRecebimento') = 'S') then
                    begin
                        if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'Perdescmax', 'Recebimento', false, 'Cliente: ' + dfFavorecido.Text + #13#10 +
                            'Valor :' + FloatToStr(DBTitulos.TotalSelecionado('FaltaReceber')) + #13#10 +
                            'Desconto R$: ' + C_TitulosDescontos.AsString, dfFavorecido.ID, 'DlgDepositos') then
                            raise Exception.Create('@@');
                    end;
            if C_TitulosDescontos.Value > C_TitulosValorAReceber.Value then
                C_TitulosDescontos.Value := C_TitulosValorAReceber.Value;
            C_TitulosPagamento.OnChange := nil;
            C_TitulosPagamento.Value := C_TitulosValorAReceber.Value - C_TitulosDescontos.Value + C_TitulosJuros.Value;
            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
        end
    else if C_TitulosDescontos.Value = 0 then
        begin
            C_TitulosPagamento.OnChange := nil;
            C_TitulosPagamento.Value := C_TitulosValorAReceber.Value + C_TitulosJuros.Value - C_TitulosDescontos.Value;
            C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
        end
    else
        C_TitulosDescontos.Value := 0;
end;

procedure TDlgDepositos.tabTEFShow(Sender: TObject);
begin
    inherited;
    if C_Depositos.Active then
        begin
            if C_Depositos.State in [dsBrowse] then
                C_Depositos.Edit;
            C_DepositosContaTEF.Value := DMFinanceiro.getContaBancoPadrao;
            dfValorTEF.SetFocus;
            dfValorTEF.SelectAll;
        end;
end;

procedure TDlgDepositos.DesabilitaFormaPagamento(Indice: integer);
begin
    clbForma.Checked[indice] := false;
    clbForma.ItemIndex := indice;
    clbForma.ItemEnabled[indice] := false;
    SetFormaPagamento(indice);
    clbForma.ItemIndex := -1;
end;

procedure TDlgDepositos.C_DepositosCONTAChange(Sender: TField);
begin
    inherited;
    nConta := C_DepositosConta.Value;
    if DMFinanceiro.C_ContasCxBcTipoConta.Value = 2 then
        begin
            DesabilitaFormaPagamento(getIndex('3'));
            DesabilitaFormaPagamento(getIndex('0'));
        end
    else
        begin
            clbForma.ItemEnabled[getIndex('3')] := true;
            clbForma.ItemEnabled[getIndex('0')] := true;
        end;
end;

procedure TDlgDepositos.DBTitulosTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
var i: integer;
    vJuros: Currency;
begin
    inherited;
    C_Titulos.Edit;
    if bSelected then
        begin
            C_TitulosJuros.Value := 0;
            C_TitulosDescontos.Value := 0;
            if C_TitulosPagamento.AsCurrency = 0 then
                C_TitulosPagamento.Value := C_TitulosValorAReceber.Value;
            if C_DepositosData.Value <= C_TitulosDataAntecipacao.Value then
                begin
                    C_TitulosPagamento.Value := C_TitulosValorAReceber.Value - C_TitulosValorDescAntecipado.Value;
                    C_TitulosDescontos.Value := C_TitulosValorDescAntecipado.Value;
                end;
            vJuros := 0;
            if (C_TitulosPERCENTUALMORA.Value > 0) then
                vJuros := C_TitulosPERCENTUALMORA.Value
            else if (JurosParametrizado > 0) then
                vJuros := JurosParametrizado;

            if (C_TitulosDataAtrasado.Value < C_DepositosData.Value) and (vJuros > 0) then
                begin
                    C_TitulosJuros.Value := DMFinanceiro.CalculaJuros(C_TitulosPagamento.Value,
                        vJuros,
                        iif(C_TitulosDATAPAGO.AsVariant = null,
                        Trunc(C_DepositosData.Value - C_TitulosDataAtrasado.Value),
                        Trunc(C_DepositosData.Value - C_TitulosVencimento.Value)));
                    //Trunc(C_DepositosData.Value-C_TitulosDataPago.Value)));
                end;
        end
    else
        begin
            {Zerando o Valor Pago}
            C_TitulosJuros.Value := 0;
            C_TitulosDescontos.Value := 0;
            C_TitulosPagamento.Value := 0;
        end;
    C_Titulos.Post;
    if C_Depositos.State in [dsBrowse] then
        C_Depositos.Edit;
    C_DepositosHistorico.Value := getInvoices;

    if DBTitulos.Selecionados = '' then
        begin
            for i := 0 to clbForma.Items.Count - 1 do
                clbForma.Checked[i] := False;
            clbForma.Enabled := False;
            pgForma.Visible := False;
        end
    else
        begin
            clbForma.Enabled := True;
        end;

end;

procedure TDlgDepositos.FormsComponentBeforeClearParams(Sender: TObject);
var bParcelarCartao: boolean;
    sJuros: string;
begin
    inherited;
    pgForma.UpdateVisibleTabs;
    bOperacaoPadraoTroco := DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior') = 'T';
    if DMProjeto.Parametro('Juros') <> '' then
        begin
            sJuros := replace(DMProjeto.Parametro('Juros'), ',', decimalseparator);
            sJuros := replace(sJuros, '.', decimalseparator);
            JurosParametrizado := StrToFloat(sJuros);
        end
    else
        JurosParametrizado := 0;

    if not bOperacaoPadraoTroco then
        begin
            lbTroco.Visible := false;
            dfTroco.Visible := false;
            //    shpTroco.Visible := false;
        end;

    sAutenticacao := DMProjeto.Parametro('AutenticarTitulo') <> 'N';
    bParcelarCartao := DMProjeto.Parametro('ParcelarCartao') <> 'N';
    lbParcelas.Visible := bParcelarCartao;
    dbNumParcelas.Visible := bParcelarCartao;
    lbParcelasDe.Visible := bParcelarCartao;
    dbValorParcela.Visible := bParcelarCartao;

    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
    nConta := DMFinanceiro.nContaPadrao;
    dtData := DMFinanceiro.Conta_DataMov(DMFinanceiro.nContaPadrao);
    DMFinanceiro.C_OutrasForma.Open;
    ckbImprimirRecibo.Checked := DMProjeto.Parametro('ImprimirReciboDeRecebimento') = 'S';
    // Definindo Layout da Janela (Títulos ou Forma de Pagamento em cima
    if DMProjeto.Parametro('LayoutRecebimento') <> 'F' then
        begin
            pnTitulos.Top := 50;
            pnTitulos.TabOrder := 2;
        end
    else
        begin
            pnTitulos.Top := 300;
            pnTitulos.TabOrder := 3;
        end;

    bParametro := false;
    bModalResult := false;

    cmbConta.ReadOnly := DMProjeto.bCaixa or (not DMProjeto.LerPermissao(self.name, 'AltContaDp'));
    dfData.AllowEditOnClick := not cmbConta.ReadOnly;
    if cmbConta.ReadOnly then
        begin
            cmbConta.Color := $00EEEEEE;
            dfData.Color := $00EEEEEE;
            cmbConta.PopupControl := nil;
            cmbConta.OnInitPopup := nil;
            cmbConta.HideEditCursor := true;
        end;
    cbLockDate.Checked := DMProjeto.bCaixa;
    //  cbLockDate.ReadOnly	:= DMProjeto.bCaixa;
    if DMProjeto.ExisteParametrosForm then
        begin
            bParametro := true;
            if DMProjeto.getParametrosForm(0) <> null then
                getHistorico(DMProjeto.getParametrosForm(0))
            else
                begin
                    Novo;
                    PreparaRecebimento;
                end;
            bModalResult := true;
            DMProjeto.LimparParametrosForm;
        end
    else
        Novo;

    if not DMProjeto.LerPermissao(self.name, 'ImpRecibo') then
        begin
            ckbImprimirRecibo.Checked := false;
            ckbImprimirRecibo.ReadOnly := true;
        end;
end;

procedure TDlgDepositos.cmbContaInitPopup(Sender: TObject);
begin
    inherited;
    cmbConta.PopupControl := DlgPopup.pnPopUp;
    DlgPopup.SetDs(DMFinanceiro.C_ContasCxBcDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TDlgDepositos.cmbContaTEFInitPopup(Sender: TObject);
begin
    inherited;
    cmbContaTEF.PopupControl := DlgPopup.pnPopUp;
    DlgPopup.SetDs(DMFinanceiro.C_ContasBcDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TDlgDepositos.cmbContaOutroInitPopup(Sender: TObject);
begin
    inherited;
    cmbContaOutro.PopupControl := DlgPopup.pnPopUp;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TDlgDepositos.C_ChequesBancoChange(Sender: TField);
begin
    inherited;
    if C_Depositos.State in [dsBrowse] then
        C_Depositos.Edit;
    C_DepositosBanco.Value := C_ChequesBanco.Value;
end;

procedure TDlgDepositos.ChequeParaCadaParcela;
var sSelecionados, sNumero: string;
    i, nNumeroCheque: integer;
begin
    inherited;
    sSelecionados := DBTitulos.Selecionados;
    if sSelecionados = '' then
        exit;
    sNumero := InputBox('Número do Cheque', 'Informe o Nº do primeiro cheque:', '');
    if sNumero = '' then
        exit;
    nNumeroCheque := StrToIntDef(sNumero, 1);
    C_Cheques.EmptyDataSet;
    DBTitulos.FirstSelected;
    for i := 1 to ContaStrings(sSelecionados, ',') do
        begin
            C_Cheques.Append;
            C_ChequesNumCheque.AsInteger := nNumeroCheque;
            C_ChequesVencimento.AsDateTime := C_TitulosVencimento.AsDateTime;
            if (i = 1) and (getTotalEmFormaPagamento <> 0) then
                C_ChequesValor.AsCurrency := C_TitulosPagamento.AsCurrency - getTotalEmFormaPagamento
            else
                C_ChequesValor.AsCurrency := C_TitulosPagamento.AsCurrency;
            C_Cheques.Post;
            DBTitulos.NextSelected;
            inc(nNumeroCheque);
        end;
    nNumCheque := nNumCheque + 1;
end;

procedure TDlgDepositos.ChequesParaCadaInvoiceClick(Sender: TObject);
begin
    ChequeParaCadaParcela;
end;

procedure TDlgDepositos.dbNumParcelasChange(Sender: TObject);
begin
    inherited;
    if dbNumParcelas.Value > 0 then
        C_CartoesValorParcela.Value := dfCartao.Value / dbNumParcelas.Value;
end;

procedure TDlgDepositos.C_TitulosAfterScroll(DataSet: TDataSet);
begin
    inherited;
    btComando1.Visible := C_TitulosValorAReceber.AsCurrency <> C_TitulosValorNominal.AsCurrency;
end;

procedure TDlgDepositos.btComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.VerRecebimentos(C_TitulosID.AsInteger, 0, dfFavorecido.Text);
end;

procedure TDlgDepositos.DBChequesColumnSorting(Sender: TObject;
    Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
    inherited;
    if UpperCase(Column.FieldName) = 'DESCBANCO' then
        begin
            Allow := false;
            DMProjeto.CriarForm('FrmBancos', self, true);
        end;
end;

procedure TDlgDepositos.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if LastDataObject.FormName = 'FRMBANCOS' then
        begin
            DMFinanceiro.C_Bancos.Close;
            DMFinanceiro.C_Bancos.Open;
            C_Cheques.Edit;
            C_ChequesBanco.AsInteger := LastDataObject.ObjectKey;
        end
    else if pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0 then
        begin
            if ActiveControl is TTS_DBEditFavorecido then
                TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
        end
    else if pos(UpperCase(LastDataObject.TableName), 'CANCELADODEPOSITO') > 0 then
        Novo
    else if (UpperCase(LastDataObject.TableName) = 'DEPOSITOS') and
        (UpperCase(LastDataObject.FormName) <> 'DLGDEPOSITOS') then
        begin
            if C_Titulos.Active then
                begin
                    C_Titulos.Close;
                    C_Titulos.Open;
                end;
        end;
end;

procedure TDlgDepositos.DBTitulosDblClick(Sender: TObject);
begin
    inherited;
    if DBTitulos.TS_SelectedColumn = 'NOME' then
        begin
            DMProjeto.SetParametrosForm([C_TitulosCliente.Value]);
            DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_TitulosTipoFavorecido.Value), self, true);
        end
    else if (C_TitulosVenda.Value <> 0) and (not C_TitulosVenda.IsNull) then
        begin
            DMProjeto.SetParametrosForm([C_TitulosVenda.Value]);
            case C_TitulosTIPOPADRAO.Value of
                1: DMProjeto.CriarForm('FrmInvoices', self, true);
                2: DMProjeto.CriarForm('FrmSalesOrder', self, true);
            end;
        end
    else
        begin
            DMProjeto.SetParametrosForm([C_TitulosID.Value]);
            DMProjeto.CriarForm('FrmA_Receber', self, true);
        end;
    {
      if (sTitulosSelecionados = '') and (C_TitulosVenda.Value <> 0) then begin
       with DMProjeto do begin
         SetParametrosForm([C_TitulosID.AsInteger]);
          CriarForm('FrmInvoices',self,false);
        end;
      end;
    }
end;

function TDlgDepositos.QtdeFormasPagamentoSel: integer;
var i: integer;
begin
    result := 0;
    for i := 0 to clbForma.Items.Count - 1 do
        if clbForma.Checked[i] then
            inc(result);
end;

procedure TDlgDepositos.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    if DMFinanceiro.ExisteChequeDevolvido(dfFavorecido.ID) then
        begin
            if DlgMsg.ShowMsg(961) = 100 then
                begin
                    DMProjeto.SetParametrosForm([null, dfFavorecido.ID]);
                    DMProjeto.CriarForm('DlgDepositosInstantaneos', self, true);
                end;
        end;
    if not bParametro then
        AbrirTitulos;
    clbForma.Enabled := (C_Titulos.Active) and (C_Titulos.RecordCount > 0) and (DBTitulos.Selecionados <> '');
    if not C_Titulos.IsEmpty then
        begin
            DBTitulos.SetFocus;
            DBTitulos.TS_SelectedColumn := '_icSelecionado';
        end;
    C_DepositosCreditoCliente.Value := DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, True);
    if C_DepositosCreditoCliente.Value > 0 then
        begin
            clbForma.ItemEnabled[getIndex('6')] := true;
            clbForma.Checked[getIndex('6')] := true;
            clbForma.ItemIndex := getIndex('6');
            clbFormaClickCheck(sender);
        end
    else
        begin
            clbForma.ItemEnabled[getIndex('6')] := false;
            clbForma.Checked[getIndex('6')] := false;
            clbForma.ItemIndex := getIndex('6');
            clbFormaClickCheck(sender);
        end;
    clbForma.ItemIndex := -1;
    //C_DepositosCreditoUtilizado.Value := C_DepositosCreditoCliente.Value;
    dfFavorecido.Text := dfFavorecido.Text + ' - ' + (DMPRojeto.C_LocalizarFav.FieldByName('Codigo').AsString);
    dfFavorecido.SetFocus;
    if C_Titulos.IsEmpty then
        begin
            dfFavorecido.SelectAll;
        end;
    bParametro := false;
end;

procedure TDlgDepositos.btCancelarClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'CAN') then
        Exit;
    {Verificando se o crédito já foi utilizado}
    if C_DepositosCreditoGerado.Value > 0 then
        begin
            if C_DepositosCreditoGerado.Value > DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, true) then
                begin
                    DlgMsg.ShowMsg(7003, ['cancelar']);
                    Exit;
                end;
        end;

    if DlgMsg.ShowMsg(577, ['este Recebimento ?']) = 100 then
        begin

            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

            if DMFinanceiro.CancelarDeposito(IntToStr(DepositoHist), '', true, true) then
                Novo;

            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;

            try
                SendLastDataObject(Self.Name, 'Depositos', 'Cancelado', DepositoHist, false);
            except
            end;
        end;
end;

procedure TDlgDepositos.btImprimirClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'ImpRecibo') then
        exit;
    if pnCancelado.Visible then
        begin
            DlgMsg.ShowMsg(940);
            Exit;
        end;
    if (C_DepositosValor.Value - C_DepositosCreditoUtilizado.Value) > 0 then
        begin
            if DMProjeto.Parametro('TipoRecibo') = '40' then
                begin
                    DMProjeto.ImprimirRecibo(101, '', '', ':deposito=' + IntToStr(DepositoHist));
                end
            else
                begin
                    DMProjeto.ImprimirRecibo(21, '', '', ':deposito=' + IntToStr(DepositoHist));
                end;
        end;
end;

procedure TDlgDepositos.FormCreate(Sender: TObject);
begin
    inherited;
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgDepositos.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    {
      if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONTABILID' ) then
         exit;
     if not Validacoes(false) then
       Exit;
      // Adriano
      DMContabil.ContabilizaReceberPagamentos(DepositoHist,C_Depositos,C_Titulos,C_Cheques,C_Cartoes,C_ChequesEletronico);

      FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
      FrmContabilidade.ShowModal;
      FrmContabilidade.Release;
      }
      ////////////////
end;

procedure TDlgDepositos.btGravarClick(Sender: TObject);
begin
    inherited;

    { Bloqueando a operação de alteração. Quando houver necessidade de alterar, deve-se cancelar e depois fazer um novo recebimento.
        O botão gravar fica desativado quando um recebimento é consultado. }
    if not (btGravar.Enabled) then
        exit;

    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'S') then
        exit;
    if (DepositoHist <> 0) and (not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'A')) then
        exit;

    if not Validacoes(true) then
        Exit;
    if Gravar then
        begin
            if (ckbImprimirRecibo.Checked) then
                begin
                    if (C_DepositosValor.Value - C_DepositosCreditoUtilizado.Value) > 0 then
                        begin
                            if DMProjeto.Parametro('TipoRecibo') = '40' then
                                begin
                                    DMProjeto.ImprimirRecibo(101, '', '', ':deposito=' + IntToStr(Deposito));
                                end
                            else
                                begin
                                    DMProjeto.ImprimirRecibo(21, '', '', ':deposito=' + IntToStr(Deposito));
                                end;
                        end;
                end;
            if bModalResult then
                ModalResult := mrOk
            else
                Novo;
        end;
end;

procedure TDlgDepositos.btLimparClick(Sender: TObject);
begin
    inherited;
    Novo;
end;

procedure TDlgDepositos.InserirParcelasdeOutrosClientesClick(
    Sender: TObject);
var sSelecionados, sFavorecidos: string;
begin
    inherited;
    with DMProjeto do
        begin
            if C_Titulos.Active then
                begin
                    sFavorecidos := DBTitulos.Distinct('Cliente');
                    DeleteString(sFavorecidos, ',', IndiceString(sFavorecidos, ',', IntToStr(dfFavorecido.ID)));
                    DMProjeto.SetParametrosForm(['', sFavorecidos, -1]);
                end
            else
                DMProjeto.SetParametrosForm(['', '', -1]);
            CriarForm('DlgEscolheFavorecidos', self, true);
            if ExisteParametrosForm then
                begin
                    sSelecionados := '';
                    if C_Titulos.Active then
                        sSelecionados := DBTitulos.Selecionados;
                    AbrirTitulos('', getParametrosForm(0));
                    if sSelecionados <> '' then
                        DBTitulos.SetSelecionados(sSelecionados);
                    LimparParametrosForm;
                end;
        end;
end;

procedure TDlgDepositos.Incluirnovobanco1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmBancos', self, true);
end;

procedure TDlgDepositos.btComando2Click(Sender: TObject);
var nBotao: integer;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'HISTORICO') then
        exit;
    with DMProjeto do
        begin
            SetParametrosForm([1, 'Histórico de Recebimentos de Contas', true, DepositoHist]);
            nBotao := CriarForm('DlgHistoricoDepositos', self, true);
            if nBotao = 1 then
                begin
                    if ExisteParametrosForm then
                        getHistorico(DMProjeto.getParametrosForm(0))
                end
            else if (DMProjeto.QtdParametrosForm >= 2) and (pos(IntToStr(DepositoHist), DMProjeto.getParametrosForm(1)) > 0) then
                Novo;
            LimparParametrosForm;
        end;
end;

procedure TDlgDepositos.DBTitulosCustomDrawColumnHeader(Sender: TObject;
    AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
    var ADone: Boolean);
var ColRect: TRect;
begin
    inherited;
    if shpTitulos.Visible then
        begin
            Colrect := StrToRect(DBTitulos.ColumnsRect.Values['Pagamento']);
            shpTitulos.Left := ColRect.Left;
            shpTitulos.Width := ColRect.Right - ColRect.Left + 10;
        end;
end;

procedure TDlgDepositos.ppmGridPopup(Sender: TObject);
begin
    inherited;
    InserirParcelasDeOutrosClientes.Enabled := dfFavorecido.ID <> 0;
    menuVerPgto.Enabled := C_TitulosValorAReceber.AsCurrency <> C_TitulosValorNominal.AsCurrency;
end;

procedure TDlgDepositos.TS_DBText1Click(Sender: TObject);
begin
    inherited;
    if C_Depositos.State in [dsBrowse] then
        C_Depositos.Edit;
    C_DepositosCreditoUtilizado.Value := C_DepositosCreditoCliente.Value;
end;

procedure TDlgDepositos.TS_Label5SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_CartoesCartao.AsVariant, 3]);
end;

procedure TDlgDepositos.TS_Label1SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_DepositosOutraForma.AsVariant, 10]);
end;

procedure TDlgDepositos.C_DepositosOutraFormaChange(Sender: TField);
begin
    inherited;
    DMFinanceiro.C_OutrasForma.Locate('formapagamento', C_DepositosOutraForma.value, []);
    if C_DepositosContaOutro.value = 0 then
        C_DepositosContaOutro.value := DMFinanceiro.C_OutrasFormaContaReceber.value;
end;

procedure TDlgDepositos.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var nIndex: integer;
begin
    inherited;
    {Gravar}
    if Key = VK_F5 then
        if btGravar.Enabled then
            btGravar.Click;
    {Novo}
    if key = VK_F8 then
        btLimpar.Click;
    if clbForma.Enabled and ((ssAlt in Shift) and (Key in [ord('1')..ord('7')])) then
        begin
            nIndex := StrtoInt(Chr(Ord(Key))) - 1;
            clbForma.ItemIndex := nIndex;
            clbForma.Checked[nIndex] := not clbForma.Checked[nIndex];
            clbFormaClickCheck(sender);
        end;
end;

procedure TDlgDepositos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = '%' then
        begin
            if DBTitulos.TS_SelectedColumn = 'Descontos' then
                begin
                    if C_Titulos.State in [dsEdit, dsInsert] then
                        C_Titulos.Post;
                    C_Titulos.Edit;
                    C_TitulosDescontos.Value := Trunc((C_TitulosDescontos.Value / 100) * C_TitulosValorAReceber.Value) +
                        Trunc(Frac((C_TitulosDescontos.Value / 100) * C_TitulosValorAReceber.Value) * 100) / 100;
                    if C_TitulosDescontos.Value < 0 then
                        C_TitulosDescontos.Value := 0;
                    Key := #0;
                end
            else if DBTitulos.TS_SelectedColumn = 'Juros' then
                begin
                    if C_Titulos.State in [dsEdit, dsInsert] then
                        C_Titulos.Post;
                    C_Titulos.Edit;
                    C_TitulosJuros.Value := DMFinanceiro.CalculaJuros(C_TitulosPagamento.Value, JurosParametrizado,
                        iif(C_TitulosDATAPAGO.AsVariant = null, Trunc(C_DepositosData.Value - C_TitulosDataAtrasado.Value),
                        Trunc(C_DepositosData.Value - C_TitulosDataPago.Value)));
                    if C_TitulosJuros.Value < 0 then
                        C_TitulosJuros.Value := 0;
                    Key := #0;
                end;
        end;
end;

procedure TDlgDepositos.DBTitulosCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if not ANode.HasChildren then
        begin
            if DBTitulos.getFieldValue(ANode, 'DataAtrasado', 0) < DMProjeto.dDataSistema then
                AFont.Color := clRed
            else if DBTitulos.getFieldValue(ANode, 'Vencimento', 0) = DMProjeto.dDataSistema then
                AFont.Color := clGreen
            else
                AFont.Color := clBlack;
        end;
end;

procedure TDlgDepositos.C_TitulosJurosChange(Sender: TField);
begin
    inherited;
    C_TitulosPagamento.OnChange := nil;
    C_TitulosPagamento.Value := C_TitulosValorAReceber.value + C_TitulosJuros.Value - C_TitulosDescontos.Value;
    C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
end;

procedure TDlgDepositos.btMaisCartoesClick(Sender: TObject);
begin
    inherited;
    DBCartoes.Visible := true;
    DBCartoes.Align := alClient;
    btApenasUm.Visible := true;
    btMaisCartoes.Visible := false;
end;

procedure TDlgDepositos.btApenasUmClick(Sender: TObject);
begin
    inherited;
    if C_Cartoes.RecordCount > 1 then
        begin
            DlgMsg.ShowMsg(803);
            Exit;
        end;
    DBCartoes.Visible := false;
    btApenasUm.Visible := false;
    btMaisCartoes.Visible := true;
end;

procedure TDlgDepositos.C_CartoesNewRecord(DataSet: TDataSet);
begin
    inherited;
    inc(nSeq);
    C_CartoesID.Value := nSeq;
    C_CartoesNumParcelas.Value := 1;
    C_CartoesModoCartao.Value := 1;
    C_CartoesValor.Value := 0;
    C_CartoesValorParcela.Value := 0;
end;

procedure TDlgDepositos.DBCartoesExit(Sender: TObject);
begin
    inherited;
    if not (C_Cartoes.State in [dsBrowse]) then
        C_Cartoes.Post;
end;

procedure TDlgDepositos.DBCartoesNumParcelasChange(Sender: TObject);
begin
    inherited;

    if StrToIntDef(DBCartoes.TS_Text, 0) > 0 then
        nVlParcelas := dfCartao.Value / StrToIntDef(DBCartoes.TS_Text, 1)
    else
        nVlParcelas := 0;

    DBCartoes.SetFieldValue(DBCartoes.FocusedNode, 'ValorParcela', nVlParcelas);

end;

procedure TDlgDepositos.DBCartoesValorChange(Sender: TObject);
begin
    inherited;

    if C_CartoesNumParcelas.Value > 0 then
        nVlParcelas := StrToFloatDef(DBCartoes.TS_Text, 0) / C_CartoesNumParcelas.Value
    else
        nVlParcelas := 0;

    DBCartoes.SetFieldValue(DBCartoes.FocusedNode, 'ValorParcela', nVlParcelas);

end;

procedure TDlgDepositos.DBCartoesEdited(Sender: TObject;
    Node: TdxTreeListNode);
begin
    inherited;

    if C_Cartoes.State = dsBrowse then
        exit;

    if ((UpperCase(DBCartoes.TS_SelectedColumn) = 'NUMPARCELAS') or (UpperCase(DBCartoes.TS_SelectedColumn) = 'VALOR')) and
        (C_CartoesValorParcela.Value <> nVlParcelas) then
        C_CartoesValorParcela.asCurrency := nVlParcelas;

end;

procedure TDlgDepositos.C_CartoesCartaoChange(Sender: TField);
begin
    inherited;
    DMFinanceiro.C_CartoesCred.Locate('formapagamento', C_CartoesCartao.value, []);
    C_CartoesContaCartao.value := DMFinanceiro.C_CartoesCredContaReceber.value;
    if C_CartoesContaCartao.value = 0 then
        C_CartoesContaCartao.value := 1;
end;

procedure TDlgDepositos.tabCartaoExit(Sender: TObject);
begin
    inherited;
    if C_Cartoes.State in [dsEdit, dsInsert] then
        C_Cartoes.Post;
end;

procedure TDlgDepositos.dfCartaoExit(Sender: TObject);
begin
    inherited;
    if C_Cartoes.State in [dsEdit, dsInsert] then
        C_Cartoes.Post;
end;

procedure TDlgDepositos.C_CartoesAfterPost(DataSet: TDataSet);
begin
    inherited;
    getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.C_ChequesAfterPost(DataSet: TDataSet);
begin
    inherited;
    getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.cmbContaKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if DMProjeto.bCaixa then
        Key := #0;
end;

procedure TDlgDepositos.C_ChequesEletronicoNewRecord(DataSet: TDataSet);
begin
    inherited;
    DataSet['ID'] := nSeq;
    DataSet['Vencimento'] := C_DepositosData.Value;
    DataSet['Valor'] := 0;
    inc(nSeq);
end;

procedure TDlgDepositos.tabChequeEletronicoShow(Sender: TObject);
begin
    inherited;
    DBChequesEletronico.TS_SelectedColumn := 'Valor';
    DBChequesEletronico.SetFocus;
end;

function TDlgDepositos.getIndex(sEspecie: string): integer;
var i: integer;
begin
    result := 0;
    for i := 1 to ContaStrings(clbForma.TagStr, ',') do
        if SeparaStrings(clbForma.TagStr, ',', i) = sEspecie then
            begin
                result := i - 1;
                break;
            end;
end;

procedure TDlgDepositos.C_ChequesEletronicoAfterPost(DataSet: TDataSet);
begin
    inherited;
    getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.DBChequesEletronicoExit(Sender: TObject);
begin
    inherited;
    if C_ChequesEletronico.State in [dsEdit, dsInsert] then
        C_ChequesEletronico.Post;
    getTotalEmFormaPagamento;
end;

procedure TDlgDepositos.EditarRecibo1Click(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm([21]);
            CriarForm('FrmTextos', self, true);
        end;
end;

procedure TDlgDepositos.dfNotaPedidoKeyPress(Sender: TObject;
    var Key: Char);
var
    nResult: Integer;
begin
    inherited;
    if (key = #13) then
        begin
            DMProjeto.Q_Sql.Close;
            DMProjeto.Q_Sql.Sql.Text := 'select f.favorecido from favorecidos f inner join saidas s on f.favorecido = s.favorecido ' +
                'where s.numero = :NUMERO';
            DMProjeto.Q_Sql.ParamByName('NUMERO').AsString := UpperCase(dfNotaPedido.Text);
            DMProjeto.Q_Sql.Open;
            nResult := DMProjeto.Q_Sql.Fields[0].AsInteger;
            if (nResult > 0) then
                dfFavorecido.id := nResult;
            //    AbrirTitulos;
            if not C_Titulos.IsEmpty then
                begin
                    clbForma.Enabled := (C_Titulos.Active) and (C_Titulos.RecordCount > 0) and (DBTitulos.Selecionados <> '');
                    DBTitulos.SetFocus;
                    DBTitulos.TS_SelectedColumn := '_icSelecionado';
                end;
        end;
end;

procedure TDlgDepositos.clbFormaClick(Sender: TObject);
begin
    inherited;
    if not clbForma.Enabled then DlgMsg.ShowMsg(50, ['Selecione uma parcela.']);
end;

procedure TDlgDepositos.GeraDescontoProporcional(nValor: currency);
var i: integer;
begin
    DBTitulos.FirstSelected;
    for i := 1 to DBTitulos.QuantidadeSelecionada do
        begin
            C_Titulos.Edit;
            C_TitulosDescontos.Value := RoundTo(C_TitulosPagamento.Value * nValor, -2);
            C_Titulos.Post;
            DBTitulos.NextSelected;
        end;
end;

procedure TDlgDepositos.TitulardoCheque1Click(Sender: TObject);
begin
    inherited;
    TitularDoCheque1.Checked := not TitularDoCheque1.Checked;

    DBChequesTitular.Visible := TitularDoCheque1.Checked;

end;

procedure TDlgDepositos.clbFormaMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    clbForma.ItemEnabled[3] := true;
end;

end.

