{
TradeSoft Ltda
Autor: Rosil/André
Data de Criação:

- Historico de Alteracoes:

	04/01/2001	-	André	-	Mudança de Classe, Interbase e MultiIdioma.

- Localização:

	No menu "Contas a Pagar" escolha "Pagamentos de Contas".

- Tabelas Principais:

	DuplicatasAPagar, RetiradasDoc, Retiradas, RetiradasDuplicatas, FormasPagamento, Favorecidos.

- Objetivo:

	Dar baixa nos títulos em aberto (Status >0 and <50).

- Funcionalidades:

	- Pode-se filtrar por fornecedor, por vencimento, duplicatas ou só em atraso (clique
	na seta vermelha apontando para baixo).
	- Selecione as duplicatas em que deseja baixar.
	- Caso as duplicatas seja de um único fornecedor pode-se selecionar múltiplas formas de
	pagamento (parte em dinheiro, parte em cheque,...)
	- Se for mais de um título do mesmo	fornecedor pode-se escolher para pagamentos em cheque
	  um único cheque ou vários cheques para cada duplicata.
	- Para os casos de pagamento a múltiplos fornecedores terá que ser escolhido uma única
	forma de pagamento.
	- Pode-se também gerar crédito ao fornecedor e também abater um crédito que a empresa tem
	  junto ao fornecedor.
	- Para gerar um crédito, basta na duplicata no campo "Pagamento" informar um valor superior
	ou no campo "Crédito Gerado" informar o valor.
	- Para utilizar um crédito que a empresa tem junto ao fornecedor, basta selecionar uma dupli
	  cata e marcar o checkbox "Utilizar Crédito".
	- Caso a conta a Retirar seja de "Conta-Caixa" pode selecionar "Cheques em Loja".

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	- Form muito complexo, testa várias vezes depois de fazer qualquer alteração.

-----------------------------------------------------------------------------------------------
}
unit Dlg_Sangria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, DBTables, Db,
  ComCtrls, TS_DateTimePicker, Mask,
  TS_DBEdit, TS_DBLookupComboBox, TS_Edit, TS_CheckBox, TS_Label, TS_Shape,
  DBCtrls, TS_DBText, IBCustomDataSet, IBUpdateSQL, IBQuery,
  Provider, DBClient, TS_RadioGroup, TS_DBLookupTipoFav,
  TS_PageControl, CheckLst, TS_CheckListBox,
  TS_DBMemo, TS_LastDataObject, TS_Bevel, TS_DBEditFavorecido,
  TS_MaxPanel, TS_DBEditNumber, MMSystem,
  TS_EditFavorecido, dxEdLib, TS_ButtonEdit, dxExEdtr,
  dxDBELib, TS_DBButtonEdit, dxCntner, dxEditor, dxDBEdtr, FormsComponent,
  jpeg, TS_Image, dxfLabel, RXSplit, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, TS_QDBGrid, TS_DBEditDate, TS_DBPopupEdit, Dlg_PopupContas,
  dxGrClEx, teCtrls, TS_EffectsPanel, TS_RadioButton, DM_Contabilidade,
  teRadial, teSlide, teDiagon, teForm, Math,
  GIFImage, TransEff, teTimed, teMasked, Variants, BTOdeum, TS_ComboBox,
  Placemnt, DBText, TS_DBTextEffect;

type
  TDlgSangria = class(TFrmModeloCadastros)
    Label5: TTS_Label;
    pnlFormaPag: TTS_Panel;
    pnContas: TTS_Panel;
    SpeedButton1: TTS_SpeedButton;
    TS_Panel5: TTS_Panel;
    pnlPesqAvan: TTS_Panel;
    Label3: TTS_Label;
    lbVencimento: TTS_Label;
    Label6: TTS_Label;
    EdDuplicata: TTS_Edit;
    cbkEmAtraso: TTS_CheckBox;
    pnlSelecionados: TTS_Panel;
    C_RetiradaDS: TDataSource;
    Q_Titulos: TIBQuery;
    C_TitulosDS: TDataSource;
    C_Titulos: TClientDataSet;
    P_Titulos: TDataSetProvider;
    C_Retirada: TClientDataSet;
    C_TitulosID: TIntegerField;
    C_TitulosTITULO: TStringField;
    C_TitulosVENCIMENTO: TDateField;
    C_TitulosFORNECEDOR: TIntegerField;
    C_TitulosNOME: TStringField;
    C_RetiradaDATA: TDateField;
    C_RetiradaHISTORICO: TStringField;
    C_Cheques: TClientDataSet;
    C_ChequesDS: TDataSource;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesValor: TFloatField;
    C_ChequesVencimento: TDateField;
    C_ChequesChequeNominal: TStringField;
    C_TitulosVALORPAGO: TBCDField;
    C_TitulosVALORNOMINAL: TBCDField;
    C_RetiradaCreditoEmpresa: TFloatField;
    C_RetiradaCreditoUtilizado: TFloatField;
    C_RetiradaNome: TStringField;
    C_RetiradaVALOR: TBCDField;
    C_RetiradaValorDinheiro: TFloatField;
    C_RetiradaValorCartao: TFloatField;
    C_RetiradaOutroValor: TFloatField;
    C_RetiradaValorChequeEmLoja: TFloatField;
    lblObs: TTS_Label;
    dfMemo: TTS_DBMemo;
    C_TitulosPagamento: TFloatField;
    C_TitulosJuros: TFloatField;
    C_RetiradaCartaoCredito: TIntegerField;
    C_RetiradaOutraForma: TIntegerField;
    C_TitulosValorAPagar: TFloatField;
    C_ChequesConta: TIntegerField;
    C_ChequesDescConta: TStringField;
    C_RetiradaFavorecido: TIntegerField;
    C_RetiradaCreditoGerado: TFloatField;
    C_RetiradaContaCaixa: TIntegerField;
    C_ChequesFavorecido: TIntegerField;
    C_ChequesNome: TStringField;
    C_TitulosPgtoJaPago: TFloatField;
    C_TitulosDescontos: TFloatField;
    C_TitulosCREDITOSJAREALIZADO: TBCDField;
    C_TitulosDESCONTOSJAREALIZADO: TBCDField;
    pcAbas: TTS_PageControl;
    tabFormaPagamento: TTS_TabSheet;
    clbForma: TTS_CheckListBox;
    pgForma: TTS_PageControl;
    tabDinheiro: TTS_TabSheet;
    lbCaixa: TTS_Label;
    TS_Label9: TTS_Label;
    dfValorDinheiro: TTS_DBEditNumber;
    tabCheque: TTS_TabSheet;
    tabCartao: TTS_TabSheet;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    dfValorCartao: TTS_DBEditNumber;
    tabChqLoja: TTS_TabSheet;
    tabCredito: TTS_TabSheet;
    lbCredito: TTS_Label;
    TS_Label7: TTS_Label;
    dfUtilizarCredito: TTS_DBEditNumber;
    tabOutros: TTS_TabSheet;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    dfOutroValor: TTS_DBEditNumber;
    TS_Label2: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_DBTextEffect2: TTS_DBText;
    TS_Shape5: TTS_Shape;
    dbtCreditoDisp: TTS_DBText;
    TS_Label4: TTS_Label;
    tabTEF: TTS_TabSheet;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    dfValorTEF: TTS_DBEditNumber;
    C_RetiradaDescContaTEF: TStringField;
    C_RetiradaContaTEF: TIntegerField;
    C_RetiradaValorTEF: TFloatField;
    C_RetiradaDescOutraForma: TStringField;
    lbConta: TTS_Label;
    C_RetiradaContaOutro: TIntegerField;
    C_RetiradaDescContaOutro: TStringField;
    cbTodos: TTS_CheckBox;
    dtVencIni: TTS_DateTimePicker;
    dtVencFim: TTS_DateTimePicker;
    cmbCartao: TTS_DBLookupComboBox;
    cmbOutraForma: TTS_DBLookupComboBox;
    C_Titulos_icSelecionado: TIntegerField;
    DBCheques: TTS_QDBGrid;
    DBChequesNumCheque: TdxDBGridColumn;
    DBChequesConta: TdxDBGridMaskColumn;
    DBChequesVencimento: TdxDBGridDateColumn;
    DBChequesValor: TdxDBGridCalcColumn;
    DBChequesLoja: TTS_QDBGrid;
    DBChequesLojaIDDOC: TdxDBGridMaskColumn;
    DBChequesLojaNOME: TdxDBGridMaskColumn;
    DBChequesLojaVALOR: TdxDBGridMaskColumn;
    DBChequesLojaNUMCHEQUE: TdxDBGridMaskColumn;
    DBChequesLojaNOMEBANCO: TdxDBGridMaskColumn;
    lbData: TTS_Label;
    dfData: TTS_DBEditDate;
    ckImprimirRecibo: TTS_CheckBox;
    C_RetiradaCreditoFavorecido: TFloatField;
    RxSplitter1: TRxSplitter;
    cmbContaTEF: TTS_DBPopupEdit;
    DBChequesDescConta: TdxDBGridPopupColumn;
    cmbCaixa: TTS_DBPopupEdit;
    C_RetiradaDescContaCaixa: TStringField;
    cmbConta: TTS_DBPopupEdit;
    DBChequesNome: TdxDBGridButtonColumn;
    dfFavorecido: TTS_DBEditFavorecido;
    DBTitulos: TTS_QDBGrid;
    DBTitulosID: TdxDBGridMaskColumn;
    DBTitulosTITULO: TdxDBGridMaskColumn;
    DBTitulosVENCIMENTO: TdxDBGridDateColumn;
    DBTitulosFORNECEDOR: TdxDBGridMaskColumn;
    DBTitulosNOME: TdxDBGridMaskColumn;
    DBTitulosVALORPAGO: TdxDBGridMaskColumn;
    DBTitulosValorAPagar: TdxDBGridColumn;
    DBTitulosPagamento: TdxDBGridColumn;
    DBTitulosJuros: TdxDBGridColumn;
    DBTitulosDescontos: TdxDBGridColumn;
    DBTitulosCREDITOSJAREALIZADO: TdxDBGridMaskColumn;
    DBTitulosDESCONTOSJAREALIZADO: TdxDBGridMaskColumn;
    DBTitulosSTATUS: TdxDBGridMaskColumn;
    C_RetiradaDescCartaoBus: TStringField;
    C_RetiradaValorCheque: TCurrencyField;
    TS_Shape3: TTS_Shape;
    C_ChequesSequencial: TIntegerField;
    DBChequesLojaVENCIMENTO: TdxDBGridColumn;
    btCancelar: TTS_SpeedButton;
    C_TitulosVALOR: TBCDField;
    TS_Bevel2: TTS_Bevel;
    btImprimir: TTS_SpeedButton;
    btContabilidade: TTS_SpeedButton;
    C_RetiradaContaCartao: TIntegerField;
    C_TitulosCOMPRA: TIntegerField;
    TS_Panel3: TTS_Panel;
    pnNumeracaoCheque: TTS_Panel;
    rgAutomatico: TTS_RadioButton;
    rgIndividual: TTS_RadioButton;
    ppmCheques: TTS_PopupMenu;
    RecalcularCheques1: TMenuItem;
    Salvar1: TMenuItem;
    Novo1: TMenuItem;
    N1: TMenuItem;
    Pesquisar1: TMenuItem;
    Histrico1: TMenuItem;
    C_ChequesContaPagar: TIntegerField;
    cbLockDate: TTS_CheckBox;
    shpTitulos: TShape;
    shpFormaPagamento: TShape;
    TransitionList1: TTransitionList;
    TranShape: TRadialTransition;
    C_TitulosCONTAPAGAMENTO: TIntegerField;
    C_TitulosJUROSPAGOS: TBCDField;
    Gerarumchequeparacadaconta1: TMenuItem;
    DBChequesSequencial: TdxDBGridColumn;
    DBTitulosOBS: TdxDBGridColumn;
    imgFormaPagamentos: TTS_Image;
    C_TitulosOBS: TStringField;
    edClienteRef: TTS_EditFavorecido;
    TS_Shape4: TTS_Shape;
    ppmGrid: TTS_PopupMenu;
    C_RetiradaCreditoAbatido: TCurrencyField;
    pnAlterar: TTS_Panel;
    dxfLabel1: TdxfLabel;
    TranAlterar: TSlideTransition;
    C_TitulosCREDITOGERADO: TBCDField;
    C_RetiradaDescDinheiro: TStringField;
    C_RetiradaDescCheque: TStringField;
    C_ContasOperacao: TClientDataSet;
    C_ContasOperacaoDS: TDataSource;
    Q_TitulosDS: TDataSource;
    U_Titulos: TIBUpdateSQL;
    dbtAbaterCredito: TTS_DBText;
    ckbAbaterCredito: TTS_CheckBox;
    lbSaldoDinheiro: TTS_Label;
    spSaldoDinheiroLabel: TTS_Shape;
    spSaldoDinheiroValor: TTS_Shape;
    dfSaldoDinheiro: TTS_DBText;
    C_TitulosFALTAPAGAR: TBCDField;
    btVerPgto: TTS_SpeedButton;
    C_TitulosSTATUS: TStringField;
    menuVerPgto: TMenuItem;
    pnCancelado: TdxfLabel;
    dxfLabel2: TdxfLabel;
    DBTitulosicValorNominal: TdxDBGridColumn;
    pnSplit: TTS_Panel;
    TS_Panel1: TTS_Panel;
    lbFechar: TTS_Label;
    lbSplit: TTS_Label;
    DBSplit: TTS_QDBGrid;
    DBSplitCONTAOPERACAO: TdxDBGridMaskColumn;
    DBSplitCONTA: TdxDBGridMaskColumn;
    DBSplitIDGERADOR: TdxDBGridMaskColumn;
    DBSplitORIGEM: TdxDBGridMaskColumn;
    DBSplitHISTORICO: TdxDBGridMaskColumn;
    DBSplitCLIENTEREF: TdxDBGridMaskColumn;
    DBSplitDescConta: TdxDBGridColumn;
    DBSplitVALOR: TdxDBGridMaskColumn;
    Image1: TImage;
    btImprimirCheque: TTS_SpeedButton;
    C_TitulosTIPOFAVORECIDO: TIntegerField;
    DBTitulosDataAtrasado: TdxDBGridColumn;
    C_TitulosDATAATRASADO: TDateField;
    C_RetiradaIDDocLoja: TStringField;
    C_TitulosORIGEM_APAGAR: TIntegerField;
    C_TitulosIDGERADOR_APAGAR: TIntegerField;
    dfTroco: TTS_DBEditNumber;
    lbTroco: TTS_Label;
    C_RetiradaTroco: TCurrencyField;
    C_RetiradaValorPago: TCurrencyField;
    cmbImprimir: TTS_ComboBox;
    DBChequesObs: TdxDBGridColumn;
    C_ChequesObs: TStringField;
    EditarRecibo1: TMenuItem;
    C_TitulosINDEXADOR: TIntegerField;
    C_TitulosDESCINDEX: TStringField;
    DBTitulosDESCINDEX: TdxDBGridMaskColumn;
    lbIndexador: TTS_DBTextEffect;
    Q_SQL: TIBQuery;
    C_TitulosicValorNominal: TCurrencyField;
    C_TitulosicValorPago: TCurrencyField;
    C_TitulosicCreditosJaRealizado: TCurrencyField;
    C_TitulosicDescontosJaRealizado: TCurrencyField;
    C_TitulosicPgtoJaPago: TCurrencyField;
    C_TitulosicFaltaPagar: TCurrencyField;
    DBTitulosVALORNOMINAL: TdxDBGridCurrencyColumn;
    tsDespesas: TTS_TabSheet;
    DBContasOperacao: TTS_QDBGrid;
    DBContasOperacaoConta: TdxDBGridMaskColumn;
    DBContasOperacaoDescConta: TdxDBGridPopupColumn;
    DBContasOperacaoHistorico: TdxDBGridColumn;
    DBContasOperacaoValor: TdxDBGridColumn;
    DBContasOperacaoNomeClienteRef: TdxDBGridButtonColumn;
    C_ContasOperacaoConta: TIntegerField;
    C_ContasOperacaoValor: TFloatField;
    C_ContasOperacaoDescConta: TStringField;
    C_ContasOperacaoID: TIntegerField;
    C_ContasOperacaoHistorico: TStringField;
    C_ContasOperacaoClienteRef: TIntegerField;
    C_ContasOperacaoNomeClienteRef: TStringField;
    ppmDBContasOperacao: TTS_PopupMenu;
    C_TitulosCONTADESPESAS: TIntegerField;
    C_RetiradaEmpresaOrigem: TStringField;
    TS_Empresa: TTS_ComboBox;
    procedure cmbTipoFavClick(Sender: TObject);
    procedure DBTitulosKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure C_TitulosCalcFields(DataSet: TDataSet);
    procedure C_RetiradaNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure Label2Click(Sender: TObject);
    procedure cbTodosClick(Sender: TObject);
    procedure dfDataExit(Sender: TObject);
    procedure tabOutrosShow(Sender: TObject);
    procedure tabCreditoShow(Sender: TObject);
    procedure tabCartaoShow(Sender: TObject);
    procedure tabDinheiroShow(Sender: TObject);
    procedure C_RetiradaValorDinheiroChange(Sender: TField);
    procedure C_ChequesDSUpdateData(Sender: TObject);
    procedure clbFormaClickCheck(Sender: TObject);
    procedure DBChequesExit(Sender: TObject);
    procedure pgFormaChange(Sender: TObject);
    procedure DtVencFimChange(Sender: TObject);
    procedure DtVencIniChange(Sender: TObject);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure tabTEFShow(Sender: TObject);
    procedure tabChequeShow(Sender: TObject);
    procedure DBTitulosTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure DBChequesLojaTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cbTodosChange(Sender: TObject);
    procedure cbkEmAtrasoChange(Sender: TObject);
    procedure dtVencIniDateChange(Sender: TObject);
    procedure EdDuplicataChange(Sender: TObject);
    procedure edClienteRefSelecionou(Sender: TObject);
    procedure cmbContaTEFInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBChequesDescContaInitPopup(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure cmbCaixaInitPopup(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure dfFavorecidoChange(Sender: TObject);
    procedure edClienteRefChange(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure rgIndividualClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure C_RetiradaCartaoCreditoChange(Sender: TField);
    procedure RecalcularCheques1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_RetiradaDATAChange(Sender: TField);
    procedure Gerarumchequeparacadaconta1Click(Sender: TObject);
    procedure C_ChequesAfterPost(DataSet: TDataSet);
    procedure TS_Label5SetParametrosForm(Sender: TObject);
    procedure TS_Label10SetParametrosForm(Sender: TObject);
    procedure DBTitulosCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure dbtCreditoDispClick(Sender: TObject);
    procedure C_TitulosVALORNOMINALValidate(Sender: TField);
    procedure ckbAbaterCreditoClick(Sender: TObject);
    procedure C_RetiradaOutraFormaChange(Sender: TField);
    procedure btVerPgtoClick(Sender: TObject);
    procedure C_TitulosAfterScroll(DataSet: TDataSet);
    procedure ppmGridPopup(Sender: TObject);
    procedure lbFecharClick(Sender: TObject);
    procedure btImprimirChequeClick(Sender: TObject);
    procedure DBTitulosDblClick(Sender: TObject);
    procedure C_TitulosJurosChange(Sender: TField);
    procedure DBTitulosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_TitulosPagamentoChange(Sender: TField);
    procedure DBTitulosExit(Sender: TObject);
    procedure cmbImprimirChange(Sender: TObject);
    procedure EditarRecibo1Click(Sender: TObject);
    procedure C_TitulosDescontosChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBContasOperacaoDescContaInitPopup(Sender: TObject);
    procedure DBContasOperacaoExit(Sender: TObject);
    procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
  protected
    DlgPopup: TDlgPopupContas;
    DMContabil: TDMContabilidade;
  private
    { Private declarations }

    bTrazerPagamentos: Boolean;

    aIDDoc : array[0..200] of integer;
    aIDDocAtualizado : array[0..200] of char;
		//marca : TBookMarkStr;
    slFornSel, slForn, slValor : TStringList;
    bForm , bOK, bSelecionou 	: boolean;
    IDRetirada, RetiradaHist, nFavorecido, nSeq, nSeqNeg, nContaBancoPadrao,
    nContaDespesaPadrao : integer;
    dData, dDataCheque : TDateTime;
    CreditoUtilizadoHist, CreditoGeradoHist, ValorHistorico : currency;
    sIDDoc, sDuplicatasHist : string;
    procedure GerarUmChequeParaCadaConta;
    function  Corrigir : boolean;
    function  getFormaSelecionada : integer;
    function  getQtdeFormasSelecionada : integer;
    function  getContas : string;
    procedure getHistorico( Retirada : integer );
    function  IsMultiplosFornecedores : boolean;
    procedure Novo( bPesquisar : boolean = true);
    function  Validacoes(bMostrarMensagem:boolean) : boolean;
    function  Gravar : boolean;
    procedure SelecionarDuplicatas( sDuplicatasHist : string = '' );
    procedure PreparaPagamento( sSelecionados : string = ''; Favorecido : integer = 0);
    function  getValor : currency;
    function  getValorAPagar : currency;
    function  getPagamentos : currency;
    procedure SetFormaPagamento( nIndex : integer );
    procedure RecalculaCheques;
    procedure LimpaArrayDoc;
    function getInvoices: string;
  public
    { Public declarations }
  end;

var
  DlgSangria: TDlgSangria;
  Editor: TdxInplaceEdit;

implementation

uses funcoes, Util2, Util2Ingles, DM_Projeto,
  Dlg_EmissaoCheques, DM_Financeiro, Frm_Contabilidade{,dm_ECF};

{$R *.DFM}

(*¢¢*)procedure TDlgSangria.LimpaArrayDoc;
var i : integer;
begin
	for i:=0 to 200 do begin
  	aIDDoc[i] := 0;
    aIDDocAtualizado[i] := ' ';
  end;
end;

// Captura os parâmetros do Form Origem: Ex: FrmAPagar
(*¢¢*)procedure TDlgSangria.PreparaPagamento;
var i, nContas, Especie : integer;
begin
  Novo( false );
  dfFavorecido.OnSelecionou := nil;
  dfFavorecido.ID	:= Favorecido;
  dfFavorecido.OnSelecionou := dfFavorecidoSelecionou;
  SelecionarDuplicatas( sSelecionados );
  DBTitulos.SetFocus;
  C_RetiradaCreditoEmpresa.Value 	  := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false);
  C_RetiradaCreditoUtilizado.Value  := 0;
  if (C_Titulos.Active) and (sSelecionados<>'') then begin
    if DMProjeto.Parametro('SelecionarUmaConta')='S' then
    	nContas := 1
    else
    	nContas := ContaStrings(sSelecionados,',');
    for i:=1 to nContas do
    	if C_Titulos.Locate('ID', SeparaStrings(sSelecionados,',',i), []) then
    		DBTitulos.SelecionarLinha;
  end else if (C_Titulos.Active) and (C_Titulos.RecordCount > 0) then
    DBTitulos.SelecionarLinha;
  bForm := true;
  {Selecionando a Forma de Pagamento Padrão}
  Especie  := StrToIntDef(DMProjeto.Parametro('EspeciePadraoPagamentos'),0);
  if Especie <> 0 then begin
		if Especie = 5 then begin {Dinheiro}
    	clbForma.Checked[0] := true;
    	clbForma.ItemIndex 	:= 0;
    end else if Especie = 1 then begin {Cheque}
    	clbForma.Checked[1] := true;
    	clbForma.ItemIndex 	:= 1;
    end else  if Especie = 3 then begin {Cartão}
    	clbForma.Checked[2] := true;
    	clbForma.ItemIndex 	:= 2;
    end else  if Especie = 20 then begin {TEF}
    	clbForma.Checked[5] := true;
    	clbForma.ItemIndex 	:= 5;
    end;
    clbFormaClickCheck(clbForma);
  end;
end;


{Pesquisar as duplicatas em aberto}
(*¢¢*)procedure TDlgSangria.SelecionarDuplicatas;
var
  sWhere : String;
begin
  C_Titulos.Close;
  C_Titulos.Params.Clear;
  C_Titulos.CommandText :='Select d.ID, d.Titulo, d.Valor, d.ValorPago, '+
                          'd.CreditoUtilizado as CreditosJaRealizado, d.CreditoGerado, '+
                          'd.ValorPago, d.JurosPagos, d.Obs, d.Descontos '+
                          'as DescontosJaRealizado, f.Nome, f.ContaPagamento, '+
                          'd.Valor as ValorNominal, d.Vencimento, d.NotaFiscal, '+
                          'd.Fornecedor, d.Valor, d.compra, d.faltapagar, '+
                          'sd.Descricao as Status, f.tipofavorecido, d.dataatrasado, '+
                          'd.origem_apagar, d.idgerador_apagar, d.indexador,  '+
                          'idx.descricao as descindex, '+
                          'case when c.conta is not null then c.conta else f.contadespesas end as contadespesas ' +
                          'From DuplicatasAPagar d ' +
                          'inner join favorecidos f on d.fornecedor = f.favorecido ' +
                          'inner join statusdoc sd on d.status = sd.status '+
                          ':ContasOperacao ' +
                          ' left join indexadores idx on d.indexador = idx.indexador ' +
                          ' left JOIN CONTASOPERACAO C ON d.id = c.idgerador '+
                          'Where ';

  sWhere := '';
  if not cbTodos.Checked then begin
    if (DtVencIni.Date<>0) and (not cbkEmAtraso.Checked) then
    	sWhere := sWhere + ' d.Vencimento >= :DI ';
    if (DtVencFim.Date<>0) then
    	sWhere := sWhere + iif(not cbkEmAtraso.Checked,' and ','')+' d.Vencimento <= :DF ';
    if dfFavorecido.ID <> 0 then
    	sWhere := sWhere + ' and d.Fornecedor = '+IntToStr(dfFavorecido.ID);
    if EdDuplicata.Text <> '' then
    	sWhere := sWhere + ' and d.Titulo like ''%'+EdDuplicata.Text+'%''';
    if EdClienteRef.ID <> 0 then begin
      C_Titulos.CommandText := Replace(C_Titulos.CommandText,':ContasOperacao','inner join contasoperacao co on d.id = co.idgerador ');
      sWhere := sWhere + ' and co.ClienteRef = '+IntToStr(edClienteRef.ID);
    end else
    	C_Titulos.CommandText := Replace(C_Titulos.CommandText,':ContasOperacao','');
  end else
    C_Titulos.CommandText := Replace(C_Titulos.CommandText,':ContasOperacao','');

  if sDuplicatasHist <> '' then
    C_Titulos.CommandText := C_Titulos.CommandText + '  (d.ID in ('+sDuplicatasHist+')) '
  else
    C_Titulos.CommandText := C_Titulos.CommandText + iif(Trim(sWhere)='',' d.id > 0 and (d.Status > 0 and d.Status < 50)',sWhere+' and (d.Status > 0 and d.Status < 50) and d.PayRollFunc is null ');

  C_Titulos.CommandText := C_Titulos.CommandText + ' Order by d.Vencimento, d.id ';

  if (Pos(':DI', sWhere ) > 0) and (sDuplicatasHist='') then begin
  	//C_Titulos.Params.CreateParam( ftDateTime, 'DI', ptInput);
  	C_Titulos.Params.ParambyName('DI').asDateTime := DtVencIni.Date;
  end;
  if (Pos(':DF', sWhere ) > 0) and (sDuplicatasHist='') then begin
    //C_Titulos.Params.CreateParam( ftDateTime, 'DF', ptInput);
	  C_Titulos.Params.ParambyName('DF').asDateTime := DtVencFim.Date;
  end;

  C_Titulos.Open;
end;

// Gravação Geral do Pagamento Realizado.
{}function TDlgSangria.Gravar : boolean;
var
   i, j, k, Favorecido, nNumCheque, ID : integer;
   sRetiradaDoc, sSelecionados, sFornecedores, sForn, sFornNovo : string;
   nDiferenca, Valor, Troco : currency;
begin
  result := false;
  try

  if not (DMProjeto.DB_Projeto.DefaultTransaction.InTransaction) then
  	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if RetiradaHist > 0 then begin
		  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltPgConta' ) then
  			exit;
      DMFinanceiro.ApagarRetirada( RetiradaHist );
    end;

    {Cálculo para totalizar por Fornecedor}
  	sFornecedores := '';
    DBTitulos.FirstSelected;
  	for j:=1 to DBTitulos.QuantidadeSelecionada do begin
    	if pos(C_TitulosNome.Value, sFornecedores) = 0 then
    		sFornecedores :=sFornecedores + ';' + C_TitulosFornecedor.AsString + ' = ' +
                     		C_TitulosNome.Value + ' = ' + FloatToStr(C_TitulosPagamento.Value)
    	else begin
    		for i := 1 to ContaStrings(sFornecedores,';') do begin
      		sForn := SeparaStrings(sFornecedores, ';', i);
        	if SeparaStrings(sForn, ' = ', 1) = C_TitulosFornecedor.AsString then begin
        		Valor := StrToFloat(SeparaStrings(sForn, ' = ', 3)) + C_TitulosPagamento.Value;
          	sFornNovo := replace( sForn, SeparaStrings(sForn, ' = ', 3), FloatToStr( Valor ) );
          	sFornecedores := replace(sFornecedores, sForn, sFornNovo);
          	Break;
        	end;
      	end;
    	end;
    	{Verificando se o valor nominal foi alterado}
      {
    	if C_TitulosValor.Value <> C_TitulosValorNominal.Value then begin
        with DMFinanceiro.Q_SQL2 do begin
        	close;
          sql.text := 'update duplicatasapagar '+
          						'set valor = :valor '+
                      'where id = :id';
          params[0].AsCurrency := C_TitulosValorNominal.Value;
          params[1].AsInteger	 := C_TitulosID.Value;
          execsql;
        	close;
          sql.text := 'update contasoperacao '+
          						'set valor = :valor '+
                      'where idgerador = :id';
          params[0].AsCurrency := C_TitulosValorNominal.Value;
          params[1].AsInteger	 := C_TitulosID.Value;
          execsql;
          close
        end;
      end;
      }
      DBTitulos.NextSelected;
 	 	end;
    if length(sFornecedores) > 0 then
    	sFornecedores[1] := ' ';

  	if C_Titulos.ChangeCount > 0 then
    	C_Titulos.ApplyUpdates(0);

    {Gravando a Retirada}
    IDRetirada := DMFinanceiro.PagarDuplicatas( RetiradaHist, DBTitulos.ItensSelecionados, C_RetiradaData.Value,
    															C_RetiradaCreditoUtilizado.Value,
                                  C_RetiradaCreditoGerado.Value,
                                  C_RetiradaHistorico.Value, C_RetiradaCreditoAbatido.Value,
                                  iif(C_RetiradaTroco.Value > C_RetiradaValorDinheiro.Value,C_RetiradaTroco.Value-C_RetiradaValorDinheiro.Value,0),TS_Empresa.Text );

    RetiradaHist := IDRetirada; // *Adriano*
    {Varredura por Fornecedor/Total}
    Troco := C_RetiradaTroco.Value;
    For i := 1 to ContaStrings(sFornecedores,';') do begin
      if SeparaStrings(sFornecedores, ' = ', 3) = '' then
      	Continue;
	sForn 		:= SeparaStrings(sFornecedores, ';', i);
        Favorecido 	:= StrToInt(SeparaStrings(sForn,' = ',1));
        Valor		:= StrToFloat(SeparaStrings(sForn,' = ',3));

    	{Pagamento em Dinheiro}
    	if (C_RetiradaValorDinheiro.Value > 0) then begin
        if IsMultiplosFornecedores then begin
   				DMFinanceiro.PagarDoc( aIDDoc[0], 3, IDRetirada, DMFinanceiro.C_ContasCxConta.Value, Favorecido, 1,
     								Valor, C_RetiradaData.Value, 0, '', 0, C_RetiradaHistorico.Value )
        end else
          if C_RetiradaValorDinheiro.Value > Troco then
    				DMFinanceiro.PagarDoc( aIDDoc[0], 3, IDRetirada, DMFinanceiro.C_ContasCxConta.Value, Favorecido, 1,
      								C_RetiradaValorDinheiro.Value - Troco, C_RetiradaData.Value,
                      0, '', 0, C_RetiradaHistorico.Value );
        aIDDocAtualizado[0] := 'S';
      end;

    	{Pagamento no Cartão}
    	if C_RetiradaValorCartao.Value > 0 then begin
        if IsMultiplosFornecedores then
    			DMFinanceiro.PagarDoc( aIDDoc[1], 3, IDRetirada, DMFinanceiro.C_CartoesBusContaLiberacao.Value, Favorecido, DMFinanceiro.C_CartoesBusFormaPagamento.Value,
      												Valor, C_RetiradaData.Value, 0,'', C_RetiradaContaCartao.Value, C_RetiradaHistorico.Value )
    		else
        	DMFinanceiro.PagarDoc( aIDDoc[1], 3, IDRetirada, DMFinanceiro.C_CartoesBusContaLiberacao.Value, Favorecido, DMFinanceiro.C_CartoesBusFormaPagamento.Value,
      												C_RetiradaValorCartao.Value, C_RetiradaData.Value, 0,'', C_RetiradaContaCartao.Value, C_RetiradaHistorico.Value );
      	aIDDocAtualizado[1] := 'S';
      end;

    	{Pagamento em TEF}
    	if C_RetiradaValorTEF.Value > 0 then begin
        if IsMultiplosFornecedores then
    			DMFinanceiro.PagarDoc( aIDDoc[2], 3, IDRetirada, C_RetiradaContaTEF.Value, Favorecido, 20,
      							Valor, C_RetiradaData.Value, 0, '', 0, C_RetiradaHistorico.Value )
        else
    			DMFinanceiro.PagarDoc( aIDDoc[2], 3, IDRetirada, C_RetiradaContaTEF.Value, Favorecido, 20,
      							C_RetiradaValorTEF.Value, C_RetiradaData.Value, 0, '', 0, C_RetiradaHistorico.Value );
        aIDDocAtualizado[2] := 'S';
      end;

    	{Pagamento com Outra Forma}
 			if C_RetiradaOutroValor.Value > 0 then begin
      	if IsMultiplosFornecedores then
    			DMFinanceiro.PagarDoc( aIDDoc[3], 3, IDRetirada, C_RetiradaContaOutro.Value, Favorecido, C_RetiradaOutraForma.Value,
      												Valor, C_RetiradaData.Value, 0, '', C_RetiradaContaOutro.Value, C_RetiradaHistorico.Value )
        else
    			DMFinanceiro.PagarDoc( aIDDoc[3], 3, IDRetirada, C_RetiradaContaOutro.Value, Favorecido, C_RetiradaOutraForma.Value,
      												C_RetiradaOutroValor.Value, C_RetiradaData.Value, 0, '', C_RetiradaContaOutro.Value, C_RetiradaHistorico.Value );
        aIDDocAtualizado[3] := 'S';
      end;

    	{Pagamento utilizando crédito}
    	if (C_RetiradaCreditoUtilizado.Value > 0) then begin
        if IsMultiplosFornecedores then begin
   				DMFinanceiro.PagarDoc( aIDDoc[6], 3, IDRetirada, DMFinanceiro.C_ContasCxConta.Value, Favorecido, -1,
     								Valor, C_RetiradaData.Value, 0, '', 0, C_RetiradaHistorico.Value )
        end else
          if C_RetiradaValorDinheiro.Value > Troco then
    				DMFinanceiro.PagarDoc( aIDDoc[6], 3, IDRetirada, DMFinanceiro.C_ContasCxConta.Value, Favorecido, -1,
      								C_RetiradaCreditoUtilizado.Value, C_RetiradaData.Value,0, '', 0, C_RetiradaHistorico.Value );
        aIDDocAtualizado[6] := 'S';
      end;
      Troco := 0;
    end;

    {Pagamento de Cheques em Loja}
    if DMFinanceiro.C_ChequesLoja.Active then
     	sSelecionados := DBChequesLoja.Selecionados
    else
     	sSelecionados := '';

    {Em caso de alteração de cheques em loja, apagar os desselecionados}
    for k:=1 to ContaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',') do begin
        if pos(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',',k),sSelecionados)=0 then begin
					DMFinanceiro.ApagarDoc( StrToInt(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',',k)), false );
          DMFinanceiro.ApagarDoc( StrToInt(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',2),',',k)), true );
        end else
       		sSelecionados := DeleteString(sSelecionados,',',k);
    end;

    if (C_RetiradaValorChequeEmLoja.Value > 0) and (sSelecionados<>'') then begin
       DMFinanceiro.C_ChequesLoja.DisableControls;
       for k:=1 to ContaStrings(sSelecionados,',') do begin
          DMFinanceiro.C_ChequesLoja.Locate('iddoc',StrToInt(SeparaStrings(sSelecionados,',',k)),[]);
    			ID := DMFinanceiro.PagarDoc( 0, 4, IDRetirada, C_RetiradaContaCaixa.Value, C_RetiradaFavorecido.Value, -2,
      					      		DMFinanceiro.C_ChequesLojaValor.Value, DMFinanceiro.Conta_DataMov(C_RetiradaContaCaixa.Value),
                          0, '', 0, C_RetiradaHistorico.Value);
          sRetiradaDoc := sRetiradaDoc + IntToStr( ID ) + ',';
       end;
       DMFinanceiro.C_ChequesLoja.EnableControls;
       sRetiradaDoc := Copy(sRetiradaDoc,1,length(sRetiradaDoc)-1);
       DMFinanceiro.PagarChequesEmLoja( 3, IDRetirada, sSelecionados, C_RetiradaFavorecido.Value, sRetiradaDoc );
    end;

    {Pagamento em Cheques}
    C_Cheques.disablecontrols;
    C_Cheques.First;
    k := 10;
    while not C_Cheques.EOF do begin

    	if rgAutomatico.checked then
       	nNumCheque := DMFinanceiro.ProximoCheque( C_ChequesConta.Value)
      else if rgIndividual.Checked then
       	nNumCheque := C_ChequesNumCheque.Value
      else
       	nNumCheque := 0;

    	DMFinanceiro.PagarDoc( aIDDoc[k], 3, IDRetirada, C_ChequesConta.Value, C_ChequesFavorecido.Value, 2,
     						C_ChequesValor.Value, C_ChequesVencimento.Value, nNumCheque,
                C_ChequesChequeNominal.AsString, C_ChequesContaPagar.Value,
                iif(C_ChequesObs.AsString='',C_RetiradaHistorico.Value,C_ChequesObs.AsString) );
     	C_Cheques.Next;
      aIDDocAtualizado[k] := 'S';
      inc(k);
    end;
    C_Cheques.enablecontrols;

    {Troco}
    if C_RetiradaTroco.Value > C_RetiradaValorDinheiro.Value then
    	DMFinanceiro.LancamentoDeTroco( C_RetiradaContaCaixa.Value, C_RetiradaData.Value, iif(IsMultiplosFornecedores,C_RetiradaTroco.Value-Valor,C_RetiradaTroco.Value-C_RetiradaValorDinheiro.Value), C_RetiradaFavorecido.Value, IDRetirada, 3, false);

    {Apagar Documentos não Selecionados}
    for i:=0 to 100 do
    	if (aIDDoc[i] <> 0) and (aIDDocAtualizado[i]<>'S') then
      	DMFinanceiro.ApagarDoc( aIDDoc[i], true );

    DMFinanceiro.BaixarDuplicata( DBTitulos.Selecionados );

    if (DBTitulos.QuantidadeSelecionada = 1) and (C_ContasOperacao.RecordCount > 0) then begin
      with Q_SQL do begin
        Close;
        SQL.Text := 'delete from contasoperacao where idgerador = ' + IntToStr(IDRetirada);
        ExecSQL;
      end;
      DMFinanceiro.InserirContasOperacao( C_ContasOperacao, IDRetirada, 3);
    end;

    {Abater Crédito}
    if ckbAbaterCredito.Checked then
      DMFinanceiro.RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 4, true, C_RetiradaCreditoAbatido.Value, 0, format(DMProjeto.getMsg(369),[IntToStr(IDRetirada)]));

  	{Utilizando Créditos}
  	if (C_RetiradaCreditoUtilizado.Value > 0) then
    		DMFinanceiro.RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 3, false, C_RetiradaCreditoUtilizado.Value, 0, format(DMProjeto.getMsg(239),[C_RetiradaHistorico.AsString]) );

    {Gerando Créditos}
  	if (C_RetiradaCreditoGerado.Value > 0) then
    	DMFinanceiro.RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 3, false, 0, iif(ckbAbaterCredito.Checked,C_RetiradaCreditoGerado.Value-nDiferenca,C_RetiradaCreditoGerado.Value), format(DMProjeto.getMsg(241),[C_RetiradaHistorico.AsString]) );

    DMContabil.ContabilizaPagamentoContas(RetiradaHist,C_Retirada,C_Titulos,C_Cheques,DMFinanceiro.C_ChequesLoja);

    if not DMContabil.Salvar(RetiradaHist) then
      raise Exception.Create(DMProjeto.GetMsg(3117));

    DMContabil.SangriaAjustaValorNominal(C_Titulos,C_ContasOperacao);
    ///////////////////////////

 		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
 			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    if fileexists(DMProjeto.SonsPath+'caixareg.wav') then
			sndplaysound(PChar(DMProjeto.SonsPath+'caixareg.wav'), SND_ASYNC);

    try
      SendLastDataObject(Self.Name, 'Retiradas', 'Retirada',IDRetirada,
                         false );
    except
    end;

  	result := true;
  except
    on E: Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;

      // ShowMessage('Não foi possível gravar a Retirada!  '+e.message);
      DlgMsg.ShowMsg( 359, '  '+e.message, '' );

      DMProjeto.GeraLog('Retirada',e.message);

    end;
  end;
end;

(*¢¢*)function TDlgSangria.IsMultiplosFornecedores : boolean;
var
		i, nFornec : integer;
begin
  result 	:= false;
  if slFornSel.Count > 1 then begin
  	nFornec   := StrToInt(slFornSel[0]);
  	for i:=1 to slFornSel.Count-1 do
  		if StrToInt(slFornSel[i]) <> nFornec then
    		result := true;
  end;
end;

(*¢¢*)procedure TDlgSangria.cmbTipoFavClick(Sender: TObject);
begin
  if dfFavorecido.CanFocus then begin
  	dfFavorecido.SetFocus;
  	dfFavorecido.SelectAll;
  end;
end;

(*¢¢*)procedure TDlgSangria.DBTitulosKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',','.'] then
    Key := Decimalseparator;
end;

(*¢¢*)procedure TDlgSangria.Novo;
var i : integer;
begin
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
	LimpaArrayDoc;
	cbTodos.Enabled 		:= true;
  pnCancelado.Visible := false;
	btCancelar.Enabled	:= true;
  btCancelar.Visible  := false;
	btGravar.Caption 		:= 'Salvar';
  pnAlterar.Visible   := false;
  btImprimir.Visible  := false;
  btImprimir.Enabled  := true;
  btImprimirCheque.Enabled	:= true;
  btImprimirCheque.Visible  := false;
  DBChequesNumCheque.Visible:= false;
  pnlPesqAvan.Visible := btComando2.Down;
  pnSplit.Top				  := DBTitulos.Top-1;
  pnSplit.Height			:= DBTitulos.Height;
  edDuplicata.text    := '';
  edClienteRef.text   := '';
  cbkEmAtraso.Checked := true;
  cbTodos.Checked     := false;
	btGravar.Enabled 		:= true;
	shpTitulos.Visible  := false;
  shpFormaPagamento.Visible  := false;
  pcAbas.ActivePage := tabFormaPagamento;
  for i:=0 to clbForma.Items.Count-1 do begin
  	clbForma.Checked[i] := false;
		clbForma.ItemEnabled[i] := true;
  end;

  if pgForma.Visible then
   for i:=0 to pgForma.PageCount-1 do
    	pgForma.HideTab(i);

  pgForma.Visible := false;
  clbForma.ItemIndex := -1;
  nSeq := 0;
  nSeqNeg := -1;
  RetiradaHist := 0;

  if not C_Cheques.Active then begin
  	C_Cheques.CreateDataSet;
    C_Cheques.Open;
  end else begin
    // C_Cheques.First;
    C_Cheques.EmptyDataSet;
  end;

  if DMFinanceiro.C_ChequesLoja.Active then
  	if DBChequesLoja.Selecionados <> '' then
  		DBChequesLoja.LimparSelecionados;

  ckbAbaterCredito.Checked  := false;
	ckbAbaterCredito.ReadOnly := true;
  ckbAbaterCredito.State    := cbsGrayed;

  sDuplicatasHist := '';
  slFornSel := TStringList.Create;
  slFornSel.Clear;
  C_Retirada.EmptyDataSet;
  C_Retirada.Append;
  if not C_ContasOperacao.Active then
    C_ContasOperacao.CreateDataSet
  else
    C_ContasOperacao.EmptyDataSet;
  {Saldo em Dinheiro}
  with DMFinanceiro.C_ContasCx do begin
    DisableControls;
  	First;
    while not EOF do begin
      Edit;
    	FieldByName('Saldo').AsCurrency := DMFinanceiro.SaldoConta( fieldbyname('Conta').AsInteger, DMProjeto.dDataSistema, '5' );
      Next;
    end;
    Locate('Conta',DMFinanceiro.nContaPadrao,[]);
    EnableControls;
  end;

  if bPesquisar then
    SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.btLimparClick(Sender: TObject);
begin
  Novo(bTrazerPagamentos);
  if dfFavorecido.CanFocus then
  	dfFavorecido.SetFocus;
end;

(*¢¢*)function TDlgSangria.Corrigir : boolean;
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
  if DlgMsg.ShowMsg(941) = 200 then
     	exit;
  result := true;
end;

(*¢¢*)function TDlgSangria.Validacoes;
var i, nResp, nIndex, nFormasSel : integer;
		sCredito : string;
    nDiferenca, nAbaterCredito, nTotalValor, nTotalPagamento, nTotalSel : currency;
begin
  result := false;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if DBTitulos.Selecionados<>'' then
  	DBTitulos.FirstSelected;

  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;

  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;

  C_RetiradaCreditoGerado.Value := 0;

  if C_Retirada.State in [dsEdit,dsInsert] then
  	C_Retirada.UpdateRecord;

	if C_RetiradaData.Value > DMProjeto.dDataSistema then begin
    DlgMsg.ShowMsg( 901 );
    exit;
  end;

	if C_RetiradaData.Value < EncodeDate(1990,1,1) then begin
    DlgMsg.ShowMsg( 214 );
    exit;
  end;

  if C_RetiradaCreditoEmpresa.Value < C_RetiradaCreditoUtilizado.Value then begin
  	DlgMsg.ShowMsg( 526 );
    Exit;
  end;

	if (not ckbAbaterCredito.Checked) and (DBTitulos.QuantidadeSelecionada = 0) then begin
  	// ShowMessage('Não existe nenhum título Selecionado para Pagamento.');
    DlgMsg.ShowMsg( 354 );
    Exit;
  end;

  if (getValorAPagar = 0) and (DBTitulos.TotalSelecionado('Descontos')<=0) then begin
  	// ShowMessage('Forma de Pagamento precisa ser definida.');
    DlgMsg.ShowMsg( 355 );
    Exit;
  end;

	if (C_RetiradaTroco.Value > 0) and ((C_RetiradaTroco.Value) >= (C_RetiradaValor.Value+C_RetiradaTroco.Value)) then begin
  	DlgMsg.ShowMsg( 955 );
    Exit;
  end;

  {Validando retirada em dinheiro dos caixas}
  if (C_RetiradaValorDinheiro.Value > 0) and (cmbCaixa.Text='') then begin
  	DlgMsg.ShowMsg(929, ['o Caixa para o pagamento em dinheiro'] );
    pgForma.ShowTab(0);
    if cmbCaixa.CanFocus then
    	cmbCaixa.SetFocus;
    Exit;
  end;

  {Permite saldo negativo no caixa}
  if DMProjeto.Parametro('SaldoNegativoContaCaixa')<>'S' then
   if (C_RetiradaValorDinheiro.Value > 0) and (C_RetiradaValorDinheiro.Value > DMFinanceiro.C_ContasCxSaldo.Value) then begin
    // ShowMessage('ATENÇÃO: O Saldo em Dinheiro não é suficiente para a Retirada solicitada!');
    DlgMsg.ShowMsg( 348 );
    Exit;
   end;

  if (clbForma.Checked[1]) then begin
  	with C_Cheques do begin
      disablecontrols;
    	First;
      while not EOF do begin
      	if (fieldbyname('Conta').AsInteger = 0) or (fieldbyname('Conta').IsNull) or (fieldbyname('DescConta').AsString='') then begin
        	DlgMsg.ShowMsg( 931 );
          enablecontrols;
          Exit;
        end;
        if fieldbyname('Valor').AsCurrency = 0 then begin
        	DlgMsg.ShowMsg( 929, ['o Valor.'] );
          enablecontrols;
          Exit;
        end;
        if fieldbyname('Valor').AsCurrency < 0 then begin
        	DlgMsg.ShowMsg( 929, ['o Valor. (não pode ser negativo)'] );
          enablecontrols;
          Exit;
        end;
        if (fieldbyname('Vencimento').AsVariant = null) or (fieldbyname('Vencimento').AsDateTime < EncodeDate(1990,1,1)) then begin
        	DlgMsg.ShowMsg( 929, ['o Vencimento.'] );
          enablecontrols;
          Exit;
        end;
        if rgIndividual.Checked then begin
        	if (fieldbyname('NumCheque').AsVariant = null) or (fieldbyname('NumCheque').AsInteger <= 0) then begin
        	 DlgMsg.ShowMsg( 929, ['o Nº do Cheque.'] );
           enablecontrols;
           Exit;
          end;
        end;
        C_Cheques.edit;
        C_ChequesContaPagar.Value := DMFinanceiro.getContaPagar(0,C_RetiradaData.value,C_ChequesVencimento.Value);
        if C_ChequesContaPagar.Value = 0 then
          C_ChequesContaPagar.Value := C_ChequesConta.value;
        C_Cheques.post;
        Next;
      end;
      enablecontrols;
    end;
  end;

  if (getQtdeFormasSelecionada > 1) and (IsMultiplosFornecedores) then begin
    DlgMsg.ShowMsg( 356 );
    Exit;
  end;

  if (clbForma.Checked[2]) and (cmbCartao.Text = '') then begin
    DlgMsg.ShowMsg( 357 );
    if cmbCartao.CanFocus then
    	cmbCartao.SetFocus;
    Exit;
  end;

  if (clbForma.Checked[5]) and (cmbContaTEF.Text = '') then begin
    DlgMsg.ShowMsg( 929, ['a conta-banco do TEF'] );
    if cmbContaTEF.CanFocus then
    	cmbContaTEF.SetFocus;
    Exit;
  end;

  if (clbForma.Checked[6]) and (cmbOutraForma.Text = '') then begin
  	// ShowMessage('Falta definir o nome do cartão!');
    DlgMsg.ShowMsg( 929,['a forma de pagamento'] );
    if cmbOutraForma.CanFocus then
    	cmbOutraForma.SetFocus;
    Exit;
  end;

  if (clbForma.Checked[6]) and (cmbConta.Text = '') then begin
    DlgMsg.ShowMsg( 929,['a conta'] );
    if cmbConta.Canfocus then
    	cmbConta.SetFocus;
    Exit;
  end;

  if (DBTitulos.QuantidadeSelecionada > 1) and (C_ContasOperacao.RecordCount > 0) then begin
    if DlgMsg.ShowMsg( 8054 ) <> 100 then Exit;
  end;

  if (C_ContasOperacao.RecordCount > 0) then if not DMFinanceiro.ValidaContas( C_ContasOperacao, DBContasOperacao.TotalGeral('Valor'),DBTitulos.TotalSelecionado('Pagamento') ,'a Conta de Despesa') then begin
    pcAbas.ShowTab(1);
    DBContasOperacao.SetFocus;
  	exit;
  end;

  // Validação do Plano de Contas...
  if (DMProjeto.Parametro('ValidarPlanoContas') = 'S') then begin
    if (DBTitulos.QuantidadeSelecionada <> 1) then begin
      DlgMsg.ShowMsg( 8058 );
      Exit;
    end;
    //
    if (C_ContasOperacao.RecordCount <= 0) then begin
      DlgMsg.ShowMsg( 8059 );
      pcAbas.ShowTab(1);
      DBContasOperacao.SetFocus;
      Exit;
    end
    else if (DBContasOperacao.TotalGeral('VALOR') <> DBTitulos.TotalSelecionado('Pagamento')) then begin
      DlgMsg.ShowMsg( 8059 );
      pcAbas.ShowTab(1);
      DBContasOperacao.SetFocus;
      Exit;
    end;
  end;

  nTotalValor 		:= getValorAPagar;
  nTotalPagamento := getPagamentos;
  {
	if ckbAbaterCredito.checked then
    nAbaterCredito := C_RetiradaCreditoFavorecido.Value
  else
  	nAbaterCredito := 0;
  }
  {Verificando se existe diferença entre o total das duplicatas e o total em forma de pagamento}
  if (DBTitulos.QuantidadeSelecionada<>0) and (nTotalValor <> (nTotalPagamento+C_RetiradaCreditoAbatido.Value)) then begin
    {Pergunta se deseja que o sistema faça a correção automática}
    if not Corrigir then
      exit;
    {Pagando a Menos}
    if nTotalValor < (nTotalPagamento+C_RetiradaCreditoAbatido.Value) then begin
        {Em caso de apenas uma duplicata}
        if DBTitulos.QuantidadeSelecionada = 1 then begin
        	C_Titulos.Locate('ID', StrToInt(SeparaStrings(DBTitulos.Selecionados,',',1)),[]);
        	C_Titulos.Edit;
          if (nTotalValor-C_RetiradaCreditoAbatido.Value)<0 then
          	C_TitulosPagamento.Value := 0
      		else
            C_TitulosPagamento.Value := nTotalValor-C_RetiradaCreditoAbatido.Value;
        end else begin
        	DBTitulos.FirstSelected;
        	nTotalSel := nTotalValor - C_RetiradaCreditoAbatido.Value;
        	for i:=1 to ContaStrings(DBTitulos.Selecionados,',') do begin
            if nTotalSel <= 0 then
               DBTitulos.RemoverLinha
            else if (nTotalSel - C_TitulosJuros.Value - C_TitulosDescontos.Value) < C_TitulosPagamento.Value then begin
               C_Titulos.Edit;
               C_TitulosPagamento.Value 	:= nTotalSel - C_TitulosJuros.Value - C_TitulosDescontos.Value;
               C_Titulos.Post;
            end;
            nTotalSel := nTotalSel - C_TitulosPagamento.Value - C_TitulosJuros.Value - C_TitulosDescontos.Value;
            DBTitulos.NextSelected;
        	end;
        end;
    end else begin
    		{Pagando a Mais}
        if DBTitulos.QuantidadeSelecionada = 1 then begin
        	DBTitulos.FirstSelected;
        	C_Titulos.Edit;
          if (nTotalValor - C_RetiradaCreditoAbatido.Value) < 0 then
          	C_TitulosPagamento.Value := 0
          else
      			C_TitulosPagamento.Value := getValorAPagar;// C_TitulosValorAPagar.Value - C_RetiradaCreditoAbatido.Value;
          C_Titulos.Post;
        end else begin
          {Em caso de mais de uma duplicata}
        	DBTitulos.FirstSelected;
        	nTotalSel := nTotalValor+C_RetiradaTroco.Value - C_RetiradaCreditoAbatido.Value;
        	for i:=1 to DBTitulos.QuantidadeSelecionada do begin
            if nTotalSel <= 0 then
               DBTitulos.RemoverLinha
            else if i = DBTitulos.QuantidadeSelecionada then begin
               C_Titulos.Edit;
               C_TitulosPagamento.Value 	 := nTotalSel;
               C_Titulos.Post;
            end;
            nTotalSel := nTotalSel - C_TitulosPagamento.Value;
            DBTitulos.NextSelected;
        	end;
        end;
       	C_Retirada.Edit;
        if (DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T') then
        	C_RetiradaTroco.Value := nTotalValor+C_RetiradaTroco.Value-DBTitulos.TotalSelecionado('Pagamento')+DBTitulos.TotalSelecionado('Juros') - nAbaterCredito
        else
     			C_RetiradaCreditoGerado.Value := nTotalValor+C_RetiradaTroco.Value-nTotalPagamento+DBTitulos.TotalSelecionado('Juros') - nAbaterCredito;
    end;
  end;

  {Confirmação de Gravação}
  {sMsg := 'Confirma o Pagamento de R$ '+FormatCurr('###,###,##0.00', nTotalPagamento ) +
          ' na Conta "'+cmbConta.Text+'" referente a '+C_RetiradaHistorico.Value+'?';}
  C_Retirada.Edit;

  if C_RetiradaCreditoAbatido.Value > 0 then begin
    nDiferenca := getValorAPagar - getPagamentos;
    if nDiferenca > C_RetiradaCreditoFavorecido.Value then
     	nDiferenca := C_RetiradaCreditoFavorecido.Value;
    C_RetiradaCreditoAbatido.Value := nDiferenca;
  end;

  {Crédito Gerado}
  C_RetiradaCreditoGerado.Value := 0;
  if DBTitulos.QuantidadeSelecionada > 0 then begin
    if (DBTitulos.TotalSelecionado('Pagamento')+C_RetiradaCreditoAbatido.Value) > (DBTitulos.TotalSelecionado('ValorAPagar')) then
      C_RetiradaCreditoGerado.Value := DBTitulos.TotalSelecionado('Pagamento')-DBTitulos.TotalSelecionado('Juros')-DBTitulos.TotalSelecionado('ValorAPagar') - C_RetiradaCreditoAbatido.Value
    else if (getValorAPagar > (DBTitulos.TotalSelecionado('Pagamento')+C_RetiradaCreditoAbatido.Value)) then
     C_RetiradaCreditoGerado.Value := getValorAPagar-DBTitulos.TotalSelecionado('Pagamento')-DBTitulos.TotalSelecionado('Juros') - C_RetiradaCreditoAbatido.Value;
  end;
  if IsMultiplosFornecedores and (C_RetiradaCreditoGerado.Value>0) then begin
     DlgMsg.ShowMsg(579);
		 shpTitulos.Visible  := false;
  	 shpFormaPagamento.Visible  := false;
     Exit;
  end;

  C_Retirada.Post;
  sCredito := '';

  if DBTitulos.TotalSelecionado('Pagamento')+DBTitulos.TotalSelecionado('Descontos') < DBTitulos.TotalSelecionado('ValorAPagar') then
  	sCredito := '(Pagamento Parcial)';

  if C_RetiradaCreditoGerado.Value > 0 then
  	sCredito := sCredito + iif(sCredito='','',', ')+'sendo '+currencystring+formatfloat('###,###,##0.00',C_RetiradaCreditoGerado.Value)+ ' para gerar crédito';

  if C_RetiradaCreditoUtilizado.Value > 0 then
  	sCredito := sCredito+iif(sCredito='','',', ')+'sendo '+currencystring+formatfloat('###,###,##0.00',C_RetiradaCreditoUtilizado.Value)+ ' em utilização de crédito.';

  if DBTitulos.TotalSelecionado('Juros') > 0 then
		sCredito := sCredito+iif(sCredito='','',', ')+'sendo '+currencystring+formatfloat('###,###,##0.00',DBTitulos.TotalSelecionado('Juros'))+ ' de Juros';

  if DBTitulos.TotalSelecionado('Descontos') > 0 then
		sCredito := sCredito+iif(sCredito='','',', ')+'sendo '+currencystring+formatfloat('###,###,##0.00',DBTitulos.TotalSelecionado('Descontos'))+ ' em Descontos';

  if C_RetiradaTroco.Value > 0 then
		sCredito := sCredito+iif(sCredito='','',', ')+'sendo '+currencystring+formatfloat('###,###,##0.00',C_RetiradaTroco.Value)+ ' de Troco';
  if C_Titulos.Active and (C_Titulos.State <> dsBrowse) then begin
    C_Titulos.Post;
    DBTitulos.FirstSelected;
  end;

  if bMostrarMensagem then begin
    if (DlgMsg.ShowMsg( 350,[currencystring+formatfloat('###,###,##0.00', nTotalValor+C_RetiradaTroco.Value ),sCredito,C_RetiradaHistorico.Value] ) = 200) then begin
      shpTitulos.Visible  := false;
      shpFormaPagamento.Visible  := false;
      exit;
    end;
  end;
  result := true;
//Paulo Remoção do DMECF 22/08/2012

//  Try
//    if (DMPRojeto.PAFObrigatorio) Then Begin
//      if (DMECF.ECF1.Suprimento(FormatFloat('0.00',nTotalValor+C_RetiradaTroco.Value), 'Pagamento')) Then
//         result := true
//      else Begin
//         result := false;
//         raise Exception.Create('Impressora Desligada.'+#13+'O pagamento não será efetuado pelo sistema.');
//      End;
//    End else result := true;
//  Except on E:Exception do
//    MessageDlg(pChar(e.Message), mtInformation, [mbOK], 0);
//  End;

end;

(*¢¢*)function TDlgSangria.getInvoices : string;
var sInvoices, sSelecionados : string;
		i : integer;
    Marca : TBookMarkStr;
begin
  result 		:= C_RetiradaHistorico.Value;
	sInvoices := '';
  if C_Titulos.Active then begin
    C_Titulos.DisableControls;
    Marca := C_Titulos.BookMark;
    with DBTitulos do begin
      sSelecionados := DBTitulos.Selecionados;
      for i:=1 to DbTitulos.QuantidadeSelecionada do begin
        if (C_TitulosTitulo.Value <> '') and (C_Titulos.Locate('ID',SeparaStrings(DBTitulos.Selecionados,',',i),[])) then
           sInvoices := sInvoices + Trim(C_TitulosTitulo.AsString)+',';
        nextselected;
      end;
      C_Titulos.BookMark := Marca;
    end;
    sInvoices := trim(Copy(sInvoices,1,length(sInvoices)-1));
    if sInvoices <> '' then
    	result := 'Pgto.Parcelas # '+sInvoices
    else
    	result := 'Pagamento de Conta';
    C_Titulos.EnableControls;
{    if DbTitulos.QuantidadeSelecionada = 1 then
      result := format( DMProjeto.getMsg(222), [sInvoices])
    else if DbTitulos.QuantidadeSelecionada > 1 then
      result := format( DMProjeto.getMsg(223), [sInvoices]); }
  end;
end;

// Validação e Gravação dos dados
(*¢¢*)procedure TDlgSangria.btGravarClick(Sender: TObject);
var sContas, sCheques, sContasImpressao : string;
		i : integer;
begin
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
     C_RetiradaEmpresaOrigem.Value := TS_Empresa.Text;

  if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;

  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
  	exit;
  if (RetiradaHist<>0) and (not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'A')) then
    exit;

  if cmbImprimir.ItemIndex = 1 then begin
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpCheque' ) then
  		exit;
  end;

  if ckImprimirRecibo.Checked then begin
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpRecibo' ) then
  		exit;
  end;

  if not Validacoes(true) then
  	Exit;
  if Gravar then begin
  	{Imprimir Cheque}
    if cmbImprimir.ItemIndex = 1 then begin
      if C_RetiradaValorCheque.Value > 0 then begin
        sContas := DBCheques.Distinct('Conta');
        sContasImpressao := '';
        for i:=1 to ContaStrings(sContas,',') do begin
        	sCheques := DMFinanceiro.ChequesDaRetirada( IntToStr(IDRetirada), StrToInt(SeparaStrings(sContas,',',i)) );
        	sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
        end;
        sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
    		dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
    		dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao );
        dlgEmissaoCheques.ShowModal;
      	dlgEmissaoCheques.Release;
  		end;
    end;
    {Imprimir Recibo}
    if ckImprimirRecibo.Checked then begin
      if C_RetiradaValor.Value-C_RetiradaCreditoUtilizado.Value>0 then begin
  			DMProjeto.ImprimirRecibo(1,'','',':retirada='+IntToStr(IDRetirada));
      end;
    end;
    {Caso aberto de outro form, ex: Frm_APagar}
    if bForm then begin
    	ModalResult := mrOk;
      bForm := false;
    end else
       Novo(bTrazerPagamentos);
    dfFavorecido.SetFocus;
  end;
end;

(*¢¢*)procedure TDlgSangria.C_TitulosCalcFields(DataSet: TDataSet);
var Cotacao : Double;
begin
  C_TitulosicValorNominal.OnValidate := nil;
  //
  DataSet.FieldByName('icValorNominal').AsVariant := DataSet.FieldByName('VALORNOMINAL').AsCurrency;
  DataSet.FieldByName('icValorPago').AsVariant := DataSet.FieldByName('VALORPAGO').AsCurrency;
  DataSet.FieldByName('icCreditosJaRealizado').AsVariant := DataSet.FieldByName('CREDITOSJAREALIZADO').AsCurrency;
  DataSet.FieldByName('icDescontosJaRealizado').AsVariant := DataSet.FieldByName('DESCONTOSJAREALIZADO').AsCurrency;
  DataSet.FieldByName('icPgtoJaPago').AsVariant := DataSet.FieldByName('PGTOJAPAGO').AsCurrency;
  DataSet.FieldByName('icFaltaPagar').AsVariant := DataSet.FieldByName('FALTAPAGAR').AsCurrency;
  //
  if (DataSet.FieldByName('Indexador').AsVariant <> null) then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      DataSet.FieldByName('icValorNominal').AsVariant := RoundTo( DataSet.FieldByName('VALORNOMINAL').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icValorPago').AsVariant := RoundTo( DataSet.FieldByName('VALORPAGO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icCreditosJaRealizado').AsVariant := RoundTo( DataSet.FieldByName('CREDITOSJAREALIZADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icDescontosJaRealizado').AsVariant := RoundTo( DataSet.FieldByName('DESCONTOSJAREALIZADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icPgtoJaPago').AsVariant := RoundTo( DataSet.FieldByName('PGTOJAPAGO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icFaltaPagar').AsVariant := RoundTo( DataSet.FieldByName('FALTAPAGAR').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
    end;
    Q_SQL.Close;
  end;
  //
  if Pos(C_TitulosID.AsString,sDuplicatasHist)<=0 then
  	C_TitulosValorAPagar.Value :=   C_TitulosicFaltaPagar.Value
  else
  	C_TitulosValorAPagar.Value :=   C_TitulosicValorNominal.Value -
                                  	C_TitulosicValorPago.Value -
                                    C_TitulosicCreditosJaRealizado.Value -
                                    C_TitulosicDescontosJaRealizado.Value +
                                    C_TitulosicPgtoJaPago.Value;
  //
  C_TitulosicValorNominal.OnValidate := C_TitulosVALORNOMINALValidate;
end;

(*¢¢*)procedure TDlgSangria.C_RetiradaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_RetiradaDescDinheiro.value := clbForma.Items[0];
  C_RetiradaDescCheque.value := clbForma.Items[1];
  if cbLockDate.Checked then
  	C_RetiradaData.Value := dData
  else
  	C_RetiradaData.Value := DMProjeto.dDataSistema;
  dData := C_RetiradaData.Value;
  C_RetiradaValor.Value 					:= 0;
  C_RetiradaValorDinheiro.Value		:= 0;
  C_RetiradaValorCartao.Value			:= 0;
  C_RetiradaOutroValor.Value			:= 0;
  C_RetiradaValorTEF.Value				:= 0;
  C_RetiradaCreditoUtilizado.Value:= 0;
  C_RetiradaCreditoAbatido.Value	:= 0;
  C_RetiradaCreditoGerado.Value		:= 0;
  C_RetiradaTroco.Value						:= 0;
  C_RetiradaValorPago.Value				:= 0;
end;

(*¢¢*)procedure TDlgSangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DlgPopup.free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
  C_Retirada.Close;
  C_Titulos.Close;
	DlgSangria := nil;
end;

(*¢¢*)function TDlgSangria.getValor : currency;
begin
	result := getPagamentos - getValorAPagar + iif(ckbAbaterCredito.Checked,C_RetiradaCreditoFavorecido.Value,0);
  if result < 0 then
  	result := 0;
  {
  if DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T' then begin
  	C_RetiradaTroco.OnChange := nil;
    C_RetiradaTroco.Value    := result;
    C_RetiradaTroco.OnChange := C_RetiradaValorDinheiroChange;
  end;
  }
end;

(*¢¢*)function TDlgSangria.getPagamentos;
begin
  if C_Titulos.State in [dsEdit,dsInsert] then
  	C_Titulos.Post;
	result := DBTitulos.TotalSelecionado('Pagamento');
end;

(*¢¢*)function TDlgSangria.getValorAPagar;
var nSoma : currency;
begin
  nSoma := 0;
  if C_retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  nSoma  :=  C_RetiradaValorDinheiro.Value+
             C_RetiradaValorCartao.Value+
             C_RetiradaCreditoUtilizado.Value+
             C_RetiradaOutroValor.Value+
             C_RetiradaValorTEF.Value;

  if C_Cheques.Active then begin
  	nSoma := nSoma + DBCheques.TotalGeral('Valor');
    C_RetiradaValorCheque.Value := DBCheques.TotalGeral('Valor');
  end;

  if (DMFinanceiro.C_ChequesLoja.Active) then begin
    C_RetiradaValorChequeEmLoja.Value := DBChequesLoja.TotalSelecionado('Valor');
  	nSoma := nSoma + DBChequesLoja.TotalSelecionado('Valor');
  end;
  C_RetiradaValor.Value := nSoma - C_RetiradaTroco.Value;
  C_RetiradaValorPago.Value := nSoma;

  if C_ContasOperacao.RecordCount = 1 then begin
  	C_ContasOperacao.Edit;
    C_ContasOperacaoValor.Value := nSoma;
    C_ContasOperacao.Post;
  end;

  result := C_RetiradaValor.Value; // nSoma
end;

(*¢¢*)procedure TDlgSangria.C_ChequesNewRecord(DataSet: TDataSet);
var nFalta : Currency;
begin
  inherited;
  nFalta := getPagamentos-getValorAPagar;
  inc(nSeq);
  C_ChequesSequencial.Value		:= nSeq;
  C_ChequesVencimento.Value		:= dDataCheque;
  C_ChequesConta.Value				:= nContaBancoPadrao;
  C_ChequesValor.Value				:= iif(nFalta<0,0,nFalta);
  C_ChequesFavorecido.Value   := C_RetiradaFavorecido.AsInteger;
end;

(*¢¢*)procedure TDlgSangria.Label2Click(Sender: TObject);
begin
  inherited;
	pnlPesqAvan.Visible := not pnlPesqAvan.Visible;
end;

(*¢¢*)procedure TDlgSangria.cbTodosClick(Sender: TObject);
begin
  inherited;
  if cbTodos.Checked then begin
		DtVencIni.Date := 0;
  	DtVencFim.Date := 0;
  end else begin
  	DtVencIni.Date 	 := FirstMonthDay( DMProjeto.dDataSistema );
  	DtVencFim.Date	 := FirstMonthDay( DMProjeto.dDataSistema )+40;
  end;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.dfDataExit(Sender: TObject);
begin
  inherited;
	dfFavorecido.SetFocus;
end;

(*¢¢*)procedure TDlgSangria.tabOutrosShow(Sender: TObject);
var nConta : integer;
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
	C_RetiradaOutraForma.AsInteger := DMFinanceiro.C_OutrasFormaFormaPagamento.Value;
  if cmbOutraForma.CanFocus then
 		cmbOutraForma.SetFocus;
end;

(*¢¢*)procedure TDlgSangria.tabCreditoShow(Sender: TObject);
begin
  inherited;
  if dfUtilizarCredito.CanFocus then begin
		dfUtilizarCredito.SetFocus;
  	dfUtilizarCredito.SelectAll;
  end;
end;

(*¢¢*)procedure TDlgSangria.tabCartaoShow(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaCartaoCredito.Value := DMFinanceiro.C_CartoesBusFormaPagamento.value;
  cmbCartao.LookUpKeyValue := DMFinanceiro.C_CartoesBusFormaPagamento.Value;
  if dfValorCartao.CanFocus then begin
		dfValorCartao.SetFocus;
  	dfValorCartao.SelectAll;
  end;
end;

(*¢¢*)procedure TDlgSangria.tabDinheiroShow(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaContaCaixa.Value := DMFinanceiro.nContaPadrao;
  if dfValorDinheiro.CanFocus then begin
  	dfValorDinheiro.SetFocus;
  	dfValorDinheiro.SelectAll;
  end;
end;

(*¢¢*)procedure TDlgSangria.C_RetiradaValorDinheiroChange(Sender: TField);
var nTotalSel : Currency;
begin
  inherited;
  getValorAPagar;
  {
  if DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T' then begin
  	if C_Titulos.Active then
  		nTotalSel := DBTitulos.TotalSelecionado('Pagamento');
  	if (nTotalSel > 0) and ((C_RetiradaValor.Value+C_RetiradaTroco.Value) > nTotalSel) then begin
      C_RetiradaTroco.OnChange := nil;
  		C_RetiradaTroco.Value := (C_RetiradaValor.Value+C_RetiradaTroco.Value) - nTotalSel;
      C_RetiradaTroco.OnChange := C_RetiradaValorDinheiroChange;
    end;
  end;
  }
end;

(*¢¢*)procedure TDlgSangria.C_ChequesDSUpdateData(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaValor.Value := getValorAPagar;
end;

(*¢¢*)procedure TDlgSangria.RecalculaCheques;
var sFornecedores, sForn, sFornNovo : string;
    i,j : integer;
    Valor : currency;
begin
			// Totalizar por Fornecedor as Duplicatas Selecionadas
  		sFornecedores := '';
      C_Titulos.DisableControls;
      DBTitulos.FirstSelected;
  		for j:=1 to DBTitulos.QuantidadeSelecionada do begin
    		if pos(C_TitulosNome.Value, sFornecedores) = 0 then
    			sFornecedores := sFornecedores + ';' +
          								 C_TitulosFornecedor.AsString + ' = ' +
                       		 C_TitulosNome.Value + ' = ' +
                           FloatToStr(C_TitulosPagamento.Value) + ' = ' +
                           IntToStr(C_TitulosContaPagamento.AsInteger) + ' = ' +
                           C_TitulosTitulo.AsString
    		else begin
    			for i := 1 to ContaStrings(sFornecedores,';') do begin
      			sForn := SeparaStrings(sFornecedores, ';', i);
        		if SeparaStrings(sForn, ' = ', 1) = C_TitulosFornecedor.AsString then begin
        			Valor := StrToFloat(SeparaStrings(sForn, ' = ', 3)) + C_TitulosPagamento.Value;
          		sFornNovo := replace( sForn, SeparaStrings(sForn, ' = ', 3), FloatToStr( Valor ) );
          		sFornecedores := replace(sFornecedores, sForn, sFornNovo);
          		Break;
        		end;
      		end;
    		end;
        DBTitulos.NextSelected;
 	 		end;
      DBTitulos.FirstSelected;
      C_Titulos.EnableControls;
      if sFornecedores <> '' then
        sFornecedores[1] := ' ';
      C_Cheques.DisableControls;
      C_Cheques.EmptyDataSet;
      For i := 1 to ContaStrings(sFornecedores,';') do begin
				if SeparaStrings(sFornecedores, ' = ', 3) = '' then
       		Continue;
	      sForn := SeparaStrings(sFornecedores, ';', i);
        C_Cheques.Append;
        C_ChequesFavorecido.Value := StrToInt(SeparaStrings(sForn, ' = ', 1));
        C_ChequesConta.Value 			:= iif(StrToIntDef(SeparaStrings(sForn, ' = ', 4),0)=0,nContaBancoPadrao,StrToInt(SeparaStrings(sForn, ' = ', 4)));
        if i = 1 then
        	C_ChequesValor.Value 		:= iif((StrToFloat(SeparaStrings(sForn, ' = ', 3))-getValorAPagar)<0,0,StrToFloat(SeparaStrings(sForn, ' = ', 3))-getValorAPagar)
        else
        	C_ChequesValor.Value 		:= iif(StrToFloat(SeparaStrings(sForn, ' = ', 3))<0,0,StrToFloat(SeparaStrings(sForn, ' = ', 3)));
        C_ChequesVencimento.Value := C_RetiradaData.Value;
        C_ChequesNome.Value				:= SeparaStrings(sForn, ' = ', 2);
        C_ChequesObs.Value				:= SeparaStrings(sForn, ' = ', 5);
        C_Cheques.Post;
      end;
      C_Cheques.EnableControls;
	if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaValor.Value := getValorAPagar;
  DBChequesNome.Visible := IsMultiplosFornecedores;
  if DBChequesNome.Visible then
 		DBChequesDescConta.Width := 127
  else
		DBChequesDescConta.Width := 260;
end;

(*¢¢*)procedure TDlgSangria.SetFormaPagamento( nIndex : integer );
var nValor : currency;
 		sCampo : string;
    sFornecedores, sForn, sFornNovo : string;
    i, j : integer;
begin
  inherited;
	if nIndex = 0 then
    sCampo := 'ValorDinheiro'
  else if nIndex = 2 then
  	sCampo := 'ValorCartao'
  else if nIndex = 4 then
  	sCampo := 'CreditoUtilizado'
  else if nIndex = 5 then
  	sCampo := 'ValorTEF'
  else if nIndex = 6 then
  	sCampo := 'OutroValor';
  if clbForma.Checked[nIndex] then begin
    if nIndex in [0,2,5,6] then
      C_Retirada.FieldByName(sCampo).AsCurrency := C_Retirada.FieldByName(sCampo).AsCurrency+getValor+C_RetiradaTroco.Value
    else if nIndex = 4 then begin
    	if getValor < C_RetiradaCreditoEmpresa.Value then
      	C_Retirada.FieldByName(sCampo).AsCurrency := C_Retirada.FieldByName(sCampo).AsCurrency+getValor
      else
      	C_Retirada.FieldByName(sCampo).AsCurrency := C_RetiradaCreditoEmpresa.Value;
    end else if nIndex = 1 then begin  // Cheques
      dDataCheque := C_RetiradaData.Value;
      if DBTitulos.QuantidadeSelecionada = 0 then begin
      	C_Cheques.EmptyDataSet;
        C_Cheques.Append;
        C_ChequesConta.Value 			:= nContaBancoPadrao;
       	C_ChequesValor.Value 		  := 0;
        C_ChequesVencimento.Value := dDataCheque;
        C_Cheques.Post;
        DBCheques.TS_SelectedColumn := 'Valor';
      end else
      	RecalculaCheques;
      getValorAPagar;
  	end else begin
      DMFinanceiro.getChequesEmLoja;
    end;
    if (DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T') and (C_Titulos.Active) and (DBTitulos.TotalSelecionado('Pagamento')>0) then begin
   		C_RetiradaTroco.Value := (C_RetiradaValor.Value+C_RetiradaTroco.Value) - DBTitulos.TotalSelecionado('Pagamento');
    	if C_RetiradaTroco.Value < 0 then
    		C_RetiradaTroco.value := 0;
    end;
  end else begin
    if nIndex in [0,2,4,5,6] then begin
  		C_Retirada.FieldByName(sCampo).Value := 0;
    end else if nIndex = 1 then begin
      DBChequesNome.Visible := false;
	  	if C_Cheques.Active then
  	  	C_Cheques.EmptyDataSet;
      getValorAPagar;
    end else begin
      if DMFinanceiro.C_ChequesLoja.Active then
      	DBChequesLoja.LimparSelecionados;
      C_RetiradaValorChequeEmLoja.Value := 0;
      getValorAPagar;
    end;
    if DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T' then begin
      if DBTitulos.TotalSelecionado('Pagamento') > 0 then begin
   			C_RetiradaTroco.Value := (C_RetiradaValor.Value+C_RetiradaTroco.Value) - DBTitulos.TotalSelecionado('Pagamento');
    		if C_RetiradaTroco.Value < 0 then
    			C_RetiradaTroco.value := 0;
      end;
    end;
  end;
end;

(*¢¢*)procedure TDlgSangria.clbFormaClickCheck(Sender: TObject);
var i : integer;
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
   	C_Retirada.Edit;
	pgForma.Visible := clbForma.Checked[0] or clbForma.Checked[1] or clbForma.Checked[2] or clbForma.Checked[3] or clbForma.Checked[4] or clbForma.Checked[5] or clbForma.Checked[6];
  if (pgForma.Pages[clbForma.ItemIndex].TabVisible) and (clbForma.Checked[clbForma.ItemIndex]) then
     pgForma.HideTab(clbForma.ItemIndex);
  if IsMultiplosFornecedores then begin
    if TComponent(Sender).Name = clbForma.Name then
    	for i:=0 to clbForma.Items.Count-1 do
     		if (clbForma.Checked[i]) and (i <> clbforma.ItemIndex) then begin
    			pgForma.HideTab(i);
        	clbForma.Checked[i] := false;
        	SetFormaPagamento(i);
     		end;
     SetFormaPagamento( clbForma.ItemIndex );
     if clbForma.Checked[clbForma.ItemIndex] then
     		pgForma.ShowTab(clbForma.ItemIndex)
     else
     		pgForma.HideTab(clbForma.ItemIndex)
  end else begin

  	{Verifica se o valor total a receber está em uma forma de pagamento,
   	 Caso esteja, será desmarcado e colocado nesta nova forma de pagamento }
 	  if (DBTitulos.ValorSelecionado('Pagamento') = (getValorAPagar)) and
  	   (clbForma.Checked[clbForma.ItemIndex]) then
  		 for i:=0 to clbForma.Items.Count-1 do
			 	 if i <> clbForma.Itemindex then begin
         	 clbForma.Checked[i] := false;
           SetFormaPagamento( i );
  			   pgForma.HideTab(i);
       end;

     SetFormaPagamento( clbForma.ItemIndex );
     if clbForma.Checked[clbForma.ItemIndex] then
     		pgForma.ShowTab(clbForma.ItemIndex)
     else
     		pgForma.HideTab(clbForma.ItemIndex)
  end;
  if pgForma.ActivePageIndex  <> clbForma.ItemIndex then
  	if clbForma.Checked[clbForma.ItemIndex] then
    	pgForma.ActivePage := pgForma.Pages[clbforma.ItemIndex];
	btGravar.Enabled := not ((IsMultiplosFornecedores) and (getQtdeFormasSelecionada>1));
  if not btGravar.Enabled then
  	DlgMsg.ShowMsg(356);
end;

(*¢¢*)procedure TDlgSangria.DBChequesExit(Sender: TObject);
var nTotalSel : Currency;
begin
  inherited;
  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;
  getValorAPagar;
	if (C_Titulos.Active) and (DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')='T') then begin
 		nTotalSel := DBTitulos.TotalSelecionado('Pagamento');
  	if (nTotalSel > 0) and ((C_RetiradaValor.Value+C_RetiradaTroco.Value) > nTotalSel) then
  		C_RetiradaTroco.Value := (C_RetiradaValor.Value+C_RetiradaTroco.Value) - nTotalSel;
	end;
end;

{}procedure TDlgSangria.getHistorico( Retirada : integer );
var CreditoUtilizado, CreditoGerado, CreditoAbatido : currency;
    i, j, k : integer;
    Pagamento, Juros, Descontos, Valor, Troco: currency;
    sRetiradaDoc : string;
    Cotacao : double;
begin
  Novo(bTrazerPagamentos);
	btCancelar.Visible  := true;
  btImprimir.Visible  := true;
  RetiradaHist := Retirada;
  with DMFinanceiro.Q_SQL do begin
  	close;
    sql.text := 'select CreditoUtilizado, CreditoGerado, CreditoAbatido, Troco '+
     		'from Retiradas '+
                'where Retirada = '+IntToStr(RetiradaHist);
    Open;
    Troco	    := fieldbyname('Troco').AsCurrency;
    CreditoGerado   := fieldbyname('CreditoGerado').AsCurrency;
    CreditoUtilizado:= fieldbyname('CreditoUtilizado').AsCurrency;
    CreditoAbatido	:= fieldbyname('CreditoAbatido').AsCurrency;
    CreditoUtilizadoHist := CreditoUtilizado;

    sDuplicatasHist:= DMFinanceiro.getDuplicatas( RetiradaHist );
    SelecionarDuplicatas( sDuplicatasHist );
   	if sDuplicatasHist <> '' then begin
       for j:=1 to ContaStrings(sDuplicatasHist,',') do begin
         	with DMProjeto.Q_SQL2 do begin
          		{
              close;
            	sql.text := 'Select ValorPago '+
            						'from DuplicatasAPagar '+
                        'where ID = '+SeparaStrings(sDuplicatasHist,',',j);
            	open;
              Valor := fieldbyname('valor').AsCurrency;
              }
            	close;
            	sql.text := 'select Duplicata, Valor, Descontos, Juros, CreditoUtilizado, CreditoGerado, Cotacao '+
            		    'from RetiradasDuplicatas '+
                            'where Retirada = '+IntToStr(RetiradaHist)+' and Duplicata = '+SeparaStrings(sDuplicatasHist,',',j);
          		Open;

              Cotacao := FieldByName('Cotacao').AsFloat;
        			Pagamento     	:= (fieldbyname('Valor').AsCurrency + fieldbyname('CreditoUtilizado').AsCurrency) * Cotacao;
              ValorHistorico  := Pagamento;
        			Descontos				:= (fieldbyname('Descontos').AsCurrency) * Cotacao;
        			Juros						:= (fieldbyname('Juros').AsCurrency) * Cotacao;
        			CreditoUtilizado:= (fieldbyname('CreditoUtilizado').AsCurrency) * Cotacao;
        			CreditoGerado		:= (fieldbyname('CreditoGerado').AsCurrency) * Cotacao;
            	C_Titulos.Locate('ID',StrToInt(SeparaStrings(sDuplicatasHist,',',j)),[]);
            	DBTitulos.SelecionarLinha;
              C_TitulosPagamento.OnChange := nil;
              C_TitulosJuros.OnChange := nil;
            	C_Titulos.Edit;
            	C_TitulosPagamento.Value		:= Pagamento;
            	C_TitulosDescontos.Value		:= Descontos;
            	C_TitulosJuros.Value				:= Juros;
              C_TitulosPgtoJaPago.Value   := Pagamento;
            	C_Titulos.Post;
              C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
              C_TitulosJuros.OnChange 		:= C_TitulosJurosChange;
         	end;
       end;
    end;
    Close;
    {
    SQL.Text := 'select rd.IDDoc, r.Retirada, r.Data, r.Situacao, rd.FavorecidoDoc, rd.Conta, r.Historico, rd.FormaPagamento, fp.Especie, rd.Vencimento, rd.Valor, rd.NumCheque, rd.ContaPagar '+
     						'from RetiradasDoc rd, Retiradas r, FormasPagamento fp '+
     						'where rd.Retirada = :Ret and rd.Retirada = r.Retirada and rd.FormaPagamento = fp.formapagamento';
    }
    SQL.Text := 'select rd.IDDoc, r.Retirada, rd.favorecidodoc as favorecido, r.Data, '+
    		'       r.Situacao, rd.Conta, r.Historico, rd.FormaPagamento, fp.Especie, '+
                '       rd.Vencimento, rd.Valor, rd.NumCheque, rd.ContaPagar, r.CreditoGerado, '+
                '       r.CreditoUtilizado, r.CreditoAbatido, rd.Obs '+
     		'from RetiradasDoc rd '+
                'inner join Retiradas r on (rd.empresa = r.empresa and rd.retirada = r.retirada and rd.pdv = r.pdv)'+
                'inner join FormasPagamento fp on rd.formapagamento = fp.formapagamento '+
     		'where rd.Retirada = :Ret ';
                {
                'UNION '+
                'select rcl.iddoc, r.Retirada, rcl.favorecido, r.Data, r.Situacao, 0 , r.Historico, 0, 0, current_date, 0.00, 0, 0, r.CreditoGerado, r.CreditoUtilizado, r.CreditoAbatido '+
								'from RetiradasChequesCaixa rcl '+
                'inner join Retiradas r on rcl.retirada = r.retirada '+
                'where rcl.Retirada = :Ret';
                }
    ParamByName('Ret').AsInteger := RetiradaHist;
    Open;
    disablecontrols;
    First;
    C_Retirada.Edit;
    C_RetiradaData.Value      := fieldbyname('Data').AsDateTime;
    C_RetiradaHistorico.Value := fieldbyname('Historico').AsString;
    C_RetiradaTroco.Value			:= Troco;
    pnCancelado.Visible				:= fieldbyname('Situacao').AsString='C';
    btCancelar.Enabled				:= not pnCancelado.Visible;
    btImprimir.Enabled				:= not pnCancelado.Visible;
    btImprimirCheque.Enabled	:= not pnCancelado.Visible;
    C_Cheques.EmptyDataSet;
    pgForma.Visible := true;
    k := 10;
    sIDDoc := '';
    while not EOF do begin
       if fieldbyname('Especie').AsInteger = 5 then begin // Dinheiro
          aIDDoc[0] := fieldbyname('IDDoc').asInteger;
          clbForma.Checked[0] := true;
          clbForma.ItemIndex 	:= 0;
          pgForma.ShowTab(0);
          C_RetiradaContaCaixa.Value    := fieldByname('Conta').AsInteger;
          C_RetiradaValorDinheiro.Value := C_RetiradaValorDinheiro.Value + fieldByname('Valor').AsCurrency;
       end else if fieldbyname('Especie').AsInteger = 1 then begin // Cheques
          aIDDoc[k] := fieldbyname('IDDoc').asInteger;
          clbForma.Checked[1] 		:= true;
          clbForma.ItemIndex 			:= 1;
          pgForma.ShowTab(1);
          DBChequesNumCheque.Visible:= fieldbyname('numcheque').asInteger > 0;
          C_Cheques.Append;
          C_ChequesNumCheque.Value 	:= fieldbyname('numcheque').asInteger;
          C_ChequesConta.Value			:= fieldbyname('Conta').asInteger;
          C_ChequesValor.Value			:= fieldbyname('valor').AsCurrency;
          C_ChequesVencimento.Value	:= fieldbyname('vencimento').asdatetime;
          C_ChequesNome.Value				:= DMFinanceiro.getFavorecido( fieldbyname('Favorecido').asInteger );
          C_ChequesFavorecido.Value := fieldbyname('Favorecido').asInteger;
          C_ChequesContaPagar.Value := fieldbyname('ContaPagar').asInteger;
          C_ChequesObs.Value				:= fieldbyname('Obs').asString;
          C_Cheques.Post;
          DBChequesNumCheque.Visible:= fieldbyname('numcheque').asInteger > 0;
          inc(k);
       end else if fieldbyname('Especie').AsInteger = 6 then begin // Utilizando Crédito
          aIDDoc[6] := fieldbyname('IDDoc').asInteger;
    			clbForma.Checked[4] := true;
      		clbForma.ItemIndex 	:= 4;
      		pgForma.ShowTab(4);
      		C_RetiradaCreditoEmpresa.Value   := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false)+CreditoUtilizado-CreditoGerado;
      		C_RetiradaCreditoUtilizado.Value := CreditoUtilizado;
       end else if fieldbyname('Especie').AsInteger = 50 then begin //Cartão Empresa
          aIDDoc[1] := fieldbyname('IDDoc').asInteger;
          clbForma.Checked[2] 		   := true;
          clbForma.ItemIndex 			   := 2;
          pgForma.ShowTab(2);
          C_RetiradaCartaoCredito.Value := fieldByname('formapagamento').AsInteger;
          C_RetiradaValorCartao.Value 	:= C_RetiradaValorCartao.Value + fieldByname('Valor').AsCurrency;
          C_RetiradaContaCartao.Value		:= fieldbyname('ContaPagar').asInteger;
       end else if fieldbyname('Especie').AsInteger in [10,30,40] then begin // Outra forma
          aIDDoc[3] := fieldbyname('IDDoc').asInteger;
          clbForma.Checked[6]        := true;
          clbForma.ItemIndex 	       := 6;
          pgForma.ShowTab(6);
          C_RetiradaOutraForma.Value := fieldByname('formapagamento').AsInteger;
          C_RetiradaOutroValor.Value := C_RetiradaOutroValor.Value + fieldByname('Valor').AsCurrency;
          C_RetiradaContaOutro.Value := fieldbyname('ContaPagar').asInteger;
       end else if fieldbyname('Especie').AsInteger = 20 then begin // TEF
       		aIDDoc[2] := fieldbyname('IDDoc').asInteger;
          clbForma.Checked[5]        := true;
          clbForma.ItemIndex 	       := 5;
          pgForma.ShowTab(5);
          C_RetiradaContaTEF.Value := fieldByname('Conta').AsInteger;
          C_RetiradaValorTEF.Value := C_RetiradaValorTEF.Value + fieldByname('Valor').AsCurrency;
       end;
       Next;
    end;

    DMFinanceiro.CarregarContasOperacao(C_ContasOperacao, RetiradaHist );

    enablecontrols;
    {Utilização de Crédito}
    {
    if CreditoUtilizado > 0 then begin
    	clbForma.Checked[4] := true;
      clbForma.ItemIndex 	:= 4;
      pgForma.ShowTab(4);
      C_RetiradaCreditoEmpresa.Value   := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false)+CreditoUtilizado-CreditoGerado;
      C_RetiradaCreditoUtilizado.Value := CreditoUtilizado;
    end else begin
      clbForma.Checked[4] := false;
      pgForma.HideTab(4);
    end;
    }
    {Crédito Abatido}
    if CreditoAbatido > 0 then begin
    	C_RetiradaCreditoFavorecido.Value	:= CreditoAbatido;
      C_RetiradaCreditoAbatido.Value		:= CreditoAbatido;
  		ckbAbaterCredito.ReadOnly := false;
    	ckbAbaterCredito.State    := cbsChecked;
    end;

    {Cheques em Loja}
    Close;
    SQL.Text := 'select iddoc, retiradadoc from retiradaschequescaixa '+
    						'where retirada = :retirada';
    ParambyName('Retirada').AsInteger := Retirada;
    Open;
    sIDDoc := '';
    sRetiradaDoc := '';
    while not EOF do begin
    	sIDDoc := sIDDoc + fieldbyname('IDDoc').AsString + ',';
      sRetiradaDoc := sRetiradaDoc + fieldbyname('retiradadoc').AsString + ',';
      Next;
    end;
    Close;
    sIDDoc := Copy(sIDDoc,1,length(sIDDoc)-1);
    sRetiradaDoc := Copy(sRetiradaDoc,1,length(sRetiradaDoc)-1);
    if sIDDoc <> '' then begin
       DMFinanceiro.getChequesEmLoja( sIDDoc );
       for i:=1 to ContaStrings(sIDDoc,',') do begin
          if DMFinanceiro.C_ChequesLoja.Locate('IDDoc',SeparaStrings(sIDDoc,',',i),[]) then
          	DBChequesLoja.Selecionar;
       end;
       clbForma.Checked[3] 			:= true;
       clbForma.ItemIndex 			:= 3;
       pgForma.ShowTab(3);
       //C_RetiradaValorChequeEmLoja.Value := dbtTotalChequeLoja.Field.Value;
       C_RetiradaValor.Value := getValorAPagar;
    end else begin
       clbForma.Checked[3] := false;
       pgForma.HideTab(3);
    end;
    C_RetiradaValor.Value := getValorAPagar;
		C_RetiradaIDDocLoja.Value := sIDDoc+';'+sRetiradaDoc;
    C_Retirada.Post;
  end;
  DMProjeto.LimparParametrosForm;
	TranAlterar.Prepare(pnAlterar.Parent, pnAlterar.BoundsRect);
  try
  	pnAlterar.Visible := true;
    if TranAlterar.Prepared then
    	TranAlterar.Execute;
  finally
  	TranAlterar.UnPrepare;
  end;
  btGravar.Caption := 'Alterar';
end;

(*¢¢*)procedure TDlgSangria.pgFormaChange(Sender: TObject);
begin
  inherited;
	if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaValor.Value := getValorAPagar;
end;

(*¢¢*)function TDlgSangria.getContas : string;
var sInvoices : string;
		i : integer;
    Marca : TBookMarkStr;
begin
  result 	:= C_RetiradaHistorico.Value;
	sInvoices := '';
  if C_Titulos.Active then begin
    Marca := C_Titulos.BookMark;
    with DBTitulos do begin
      firstselected;
      for i:=1 to DbTitulos.QuantidadeSelecionada do begin
        //if C_Titulos.Locate('ID',SeparaStrings(DBTitulos.Selecionados,',',i),[]) then
        sInvoices := sInvoices + C_TitulosTitulo.AsString+',';
        nextselected;
      end;
      C_Titulos.BookMark := Marca;
    end;
    sInvoices := Copy(sInvoices,1,length(sInvoices)-1);
    result := 'Ref.'+sInvoices;
{    if DbTitulos.QuantidadeSelecionada = 1 then
      result := format( DMProjeto.getMsg(222), [sInvoices])
    else if DbTitulos.QuantidadeSelecionada > 1 then
      result := format( DMProjeto.getMsg(223), [sInvoices]); }
  end;
end;

(*¢¢*)procedure TDlgSangria.DtVencFimChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.DtVencIniChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.C_ChequesBeforePost(DataSet: TDataSet);
begin
  inherited;
	if C_Cheques.State in [dsInsert] then
    dDataCheque:= DateAdd( 'MM',1,C_ChequesVencimento.AsDateTime);
end;

(*¢¢*)procedure TDlgSangria.tabTEFShow(Sender: TObject);
begin
  inherited;
	if pgForma.ActivePageIndex = 5 then begin
    if C_Retirada.State in [dsBrowse] then
    	C_Retirada.Edit;
    C_RetiradaContaTEF.Value := nContaBancoPadrao;
    if dfValorTEF.CanFocus then begin
  		dfValorTEF.SetFocus;
  		dfValorTEF.SelectAll;
  	end;
  end;
end;

(*¢¢*)procedure TDlgSangria.tabChequeShow(Sender: TObject);
begin
  inherited;
  if DBCheques.CanFocus then
  	DBCheques.SetFocus;
	DBCheques.TS_SelectedColumn := 'Valor';
end;

(*¢¢*)function TDlgSangria.getFormaSelecionada : integer;
var i : integer;
begin
	for i:=0 to clbForma.Items.Count-1 do
  	if clbForma.Checked[i] then begin
    	result := i;
      break;
    end;
end;

(*¢¢*)function TDlgSangria.getQtdeFormasSelecionada : integer;
var nFormas, i : integer;
begin
  nFormas := 0;
	for i:=0 to clbForma.Items.Count-1 do
  	if clbForma.Checked[i] then
    	inc(nFormas);
  result := nFormas;
end;

(*¢¢*)procedure TDlgSangria.DBTitulosTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  C_Titulos.Edit;
  if bSelected then begin
    // Inclui o fornecedor marcado no StringList (funcao IsMultiplosFornecedores)
    //if slFornSel.IndexOf(C_TitulosFornecedor.AsString) < 0 then
    slFornSel.Add( C_TitulosFornecedor.AsString );
    C_TitulosPagamento.Value 			:= C_TitulosValorAPagar.Value;
    C_TitulosJuros.Value					:= 0;
    C_TitulosDescontos.Value			:= 0;
    if C_Retirada.State in [dsBrowse] then
    	C_Retirada.Edit;
    C_RetiradaFavorecido.Value 	  := C_TitulosFornecedor.Value;
  end
  else begin
    // Exclui o fornecedor desmarcado do StringList (funcao IsMultiplosFornecedores)
    if slFornSel.IndexOf(C_TitulosFornecedor.AsString) >= 0 then
      slFornSel.Delete( slFornSel.IndexOf(C_TitulosFornecedor.AsString) );
    C_TitulosJuros.Value					:= 0;
    C_TitulosDescontos.Value			:= 0;
    C_TitulosPagamento.Value			:= 0;
//    C_TitulosValorNominal.OnValidate := nil;
    C_TitulosValorNominal.Value		:= C_TitulosValor.Value;
//    C_TitulosFaltaPagar  .Value      := C_TitulosValor.Value;
//    C_TitulosValorNominal.OnValidate := C_TitulosValorNominalValidate;
  end;
  C_Titulos.Post;
  if IsMultiplosFornecedores then begin
    //Disabilita Cheques em Loja
    clbForma.Checked[3] := false;
    clbForma.ItemIndex  := 3;
    clbFormaClickCheck(Sender);
    clbForma.ItemEnabled[3] 	:= false;
    // SetFormaPagamento( 3 );
    clbForma.ItemEnabled[4] 	:= false; //Disabilita Crédito
    clbForma.Checked[4] := false;
    SetFormaPagamento( 4 );
    //clbForma.ItemIndex := 4;
  end else begin
    clbForma.ItemEnabled[3] 	:= true;
    clbForma.ItemEnabled[4] 	:= true;
    C_Retirada.Edit;
    if slFornSel.Count > 0 then begin
      C_RetiradaCreditoEmpresa.Value := DMFinanceiro.CreditoFavorecido(StrToInt(slFornSel[0]), false);
    	clbForma.ItemEnabled[4] 	:= C_RetiradaCreditoEmpresa.Value > 0;
    end;
  end;
  //DBTitulos.TS_SelectedColumn := 'Pagamento';
  btGravar.Enabled := not ((IsMultiplosFornecedores) and (getQtdeFormasSelecionada>1));
  if getQtdeFormasSelecionada > 0 then
  	SetFormaPagamento(getFormaSelecionada);

	if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaHistorico.Value := getInvoices;

  if (C_TitulosCONTADESPESAS.AsInteger > 0) then begin
  	C_ContasOperacao.Edit;
 		C_ContasOperacaoConta.Value := C_TitulosCONTADESPESAS.AsInteger;
  end;

end;

(*¢¢*)procedure TDlgSangria.DBChequesLojaTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  getValorAPagar;
end;

{}procedure TDlgSangria.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  cbTodos.Checked := false;
  cbTodos.Enabled := false;
  SelecionarDuplicatas;
  sDuplicatasHist := '';
  C_RetiradaCreditoEmpresa.Value := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false);
  if C_RetiradaCreditoEmpresa.Value > 0 then
   	clbForma.ItemEnabled[4] := true
  else
  	clbForma.ItemEnabled[4] := false;
  C_RetiradaCreditoFavorecido.Value := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, true);
  if C_RetiradaCreditoFavorecido.Value = 0 then begin
  	ckbAbaterCredito.ReadOnly := true;
    ckbAbaterCredito.State    := cbsGrayed;
  end else begin
  	ckbAbaterCredito.ReadOnly := false;
    ckbAbaterCredito.State    := cbsUnChecked;
  end;
  if not C_Titulos.IsEmpty then begin
   	DBTitulos.SetFocus;
   	DBTitulos.TS_SelectedColumn := '_icSelecionado';
  end;
  nContaBancoPadrao := DMFinanceiro.getContaBancoPadrao( dfFavorecido.ID );
end;

(*¢¢*)procedure TDlgSangria.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  nContaDespesaPadrao := DMProjeto.ContaPadrao(25);
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, true);
  C_Retirada.CreateDataSet;

  if not C_ContasOperacao.Active then
    C_ContasOperacao.CreateDataSet
  else
    C_ContasOperacao.EmptyDataSet;
  with DMFinanceiro do begin
  	C_OutrasForma.Close;
  	C_OutrasForma.Open;
    C_ContasCx.Close;
  	C_ContasCx.Open;
    C_ContasBc.Close;
  	C_ContasBc.Open;
  end;

  DtVencIni.OnDateChange := nil;
  DtVencFim.OnDateChange := nil;
  DtVencIni.Date 	 			 := FirstMonthDay( DMProjeto.dDataSistema );
  DtVencFim.Date	 			 := FirstMonthDay( DMProjeto.dDataSistema )+10;
  DtVencIni.OnDateChange := DtVencIniDateChange;
  DtVencFim.OnDateChange := DtVencIniDateChange;
  nContaBancoPadrao 		 := DMFinanceiro.getContaBancoPadrao;

  dfData.Enabled 				 := not DMProjeto.bCaixa;
  cmbCaixa.Enabled 			 := dfData.Enabled;
  lbData.Enabled    		 := dfData.Enabled;
  lbCaixa.Enabled    		 := dfData.Enabled;

  if DMProjeto.Parametro('OperacaoPadraoPagamentoAMaior')<>'T' then begin
  	lbTroco.Visible := false;
    dfTroco.Visible := false;
//    shpTroco.Visible := false;
  end;

  with DMProjeto do begin
     if Parametro('ImprimirCheque')='T' then
    	cmbImprimir.ItemIndex := 0
    else if Parametro('ImprimirCheque')='S' then
    	cmbImprimir.ItemIndex := 1
    else
    	cmbImprimir.ItemIndex := 2;
    ckImprimirRecibo.Checked := Parametro('ImprimirReciboDePagamento')='S';
  end;

  if DMProjeto.ExisteParametrosForm then begin
    if DMProjeto.getParametrosForm(0)<>null then
    	getHistorico(DMProjeto.getParametrosForm(0))
    else
  	PreparaPagamento( DMProjeto.GetParametrosForm(2), DMProjeto.GetParametrosForm(1) );
  end else
  Novo(bTrazerPagamentos);
  imgFormaPagamentos.Transparent := false;
  imgFormaPagamentos.Transparent := true;
  if not DMProjeto.LerPermissao(self.name,'ImpRecibo') then begin
  	ckImprimirRecibo.Checked := false;
    ckImprimirRecibo.ReadOnly := true;
  end;
  btComando2.Down := True;
  btComando2Click(self);
end;

(*¢¢*)procedure TDlgSangria.cbTodosChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.cbkEmAtrasoChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
  lbVencimento.Enabled := not cbkEmAtraso.Checked;
  dtVencIni.Enabled := not cbkEmAtraso.Checked;
end;

(*¢¢*)procedure TDlgSangria.dtVencIniDateChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.EdDuplicataChange(Sender: TObject);
begin
  inherited;
  SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.edClienteRefSelecionou(Sender: TObject);
begin
  inherited;
	SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.cmbContaTEFInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

(*¢¢*)procedure TDlgSangria.FormActivate(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('Empresa') = 'Synctech' then
    TS_Empresa.Visible := True ;
  dbChequesDescConta.popupcontrol 				:= DlgPopup.pnPopup;
  cmbCaixa.popupcontrol 		:= DlgPopup.pnPopup;
  cmbContaTEF.popupcontrol 	:= DlgPopup.pnPopup;
  cmbConta.popupcontrol 	:= DlgPopup.pnPopup;
  DBContasOperacaoDESCCONTA.PopupControl := DlgPopup.pnPopup;
end;

(*¢¢*)procedure TDlgSangria.DBChequesDescContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
end;

(*¢¢*)procedure TDlgSangria.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

(*¢¢*)procedure TDlgSangria.cmbCaixaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasCxDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

(*¢¢*)procedure TDlgSangria.btComando2Click(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'PesqAvan' ) then
  	exit;
  pnlPesqAvan.Visible := TTS_SpeedButton(Sender).Down;
  pnSplit.Top := DBTitulos.Top-1;
  pnSplit.Height := DBTitulos.Height;
end;

(*¢¢*)procedure TDlgSangria.dfFavorecidoChange(Sender: TObject);
begin
  inherited;
  if dfFavorecido.text = '' then begin
    cbTodos.Enabled := true;
  	SelecionarDuplicatas;
  end;
end;

(*¢¢*)procedure TDlgSangria.edClienteRefChange(Sender: TObject);
begin
  inherited;
  if edClienteRef.text = '' then
  	SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
  	exit;
  with DMProjeto do begin
	  SetParametrosForm([3,'Histórico de Pagamentos de Contas',true]); // Pagamento de Contas
  	if CriarForm('DlgHistoricoRetiradas',self,true) = 1 then begin
      if ExisteParametrosForm then
    		getHistorico( getParametrosForm(0) );
    end;
    LimparParametrosForm;
  end;
end;

{}procedure TDlgSangria.btCancelarClick(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
 		exit;

  if DlgMsg.ShowMsg( 577, ['este pagamento ?']) = 100 then begin

 		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

		DMFinanceiro.CancelarRetirada( IntToStr(RetiradaHist),'',true,true);

 		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    try
      SendLastDataObject(Self.Name, 'Retiradas', 'Retirada', RetiradaHist, false);
    except
    end;
    Novo(bTrazerPagamentos);
  end;
end;

(*¢¢*)procedure TDlgSangria.rgIndividualClick(Sender: TObject);
begin
  inherited;
	DBChequesNumCheque.Visible := rgIndividual.Checked;
end;

(*¢¢*)procedure TDlgSangria.btImprimirClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'ImpRecibo') then
    exit;
	if C_RetiradaValor.Value-C_RetiradaCreditoUtilizado.Value>0 then begin
  	DMProjeto.ImprimirRecibo(1,'','',':retirada='+IntToStr(RetiradaHist));
  end;
end;

(*¢¢*)procedure TDlgSangria.FormCreate(Sender: TObject);
begin
  inherited;
  DMContabil := TDMContabilidade.Create(self);
  spSaldoDinheiroValor.Visible := True;
  spSaldoDinheiroLabel.Visible := True;
  lbSaldoDinheiro.Visible := True;
  dfSaldoDinheiro.Visible := True;

  bTrazerPagamentos := (DMProjeto.Parametro('TrazerContasAPagar') = 'S');

  if DMProjeto.Parametro('VisualizarSaldoDinheiro')<>'S' then Begin
     lbSaldoDinheiro.Visible := False;
     dfSaldoDinheiro.Visible := False;
     spSaldoDinheiroValor.Visible := False;
     spSaldoDinheiroLabel.Visible := False;
  End;
end;

(*¢¢*)procedure TDlgSangria.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;
  if not Validacoes(false) then
    Exit;
  DMContabil.ContabilizaPagamentoContas(RetiradaHist,C_Retirada,C_Titulos,C_Cheques,DMFinanceiro.C_ChequesLoja);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

(*¢¢*)procedure TDlgSangria.C_RetiradaCartaoCreditoChange(Sender: TField);
begin
  inherited;
  DMFinanceiro.C_CartoesBus.Locate('formapagamento',C_RetiradaCartaoCredito.value,[]);
  C_RetiradaContaCartao.value := DMFinanceiro.C_CartoesBusContaPagar.value;
end;

(*¢¢*)procedure TDlgSangria.RecalcularCheques1Click(Sender: TObject);
begin
  inherited;
	RecalculaCheques;
end;

(*¢¢*)procedure TDlgSangria.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then begin
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
  end else if (pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;OPERACOESFINANCEIRAS;RETIRADAS')>0)
              and (LastDataObject.FormName<>Self.Name) then
		SelecionarDuplicatas;
end;

(*¢¢*)procedure TDlgSangria.C_RetiradaDATAChange(Sender: TField);
begin
  inherited;
	dData := C_RetiradaData.Value;
end;

(*¢¢*)procedure TDlgSangria.Gerarumchequeparacadaconta1Click(Sender: TObject);
begin
  inherited;
  GerarUmChequeParaCadaConta;
end;

(*¢¢*)procedure TDlgSangria.GerarUmChequeParaCadaConta;
var sSelecionados, sNumero : string;
		i, nNumeroCheque : integer;
begin
  inherited;
  sSelecionados := DBTitulos.Selecionados;
  if sSelecionados = '' then
    exit;
  nNumeroCheque := 0;
  if rgIndividual.Checked then begin
  	sNumero := InputBox('Número do Cheque','Informe o Nº do primeiro cheque:','');
  	if sNumero = '' then
  		exit;
  end;
  nNumeroCheque := StrToIntDef(sNumero,1);
  C_Cheques.EmptyDataSet;
  DBTitulos.FirstSelected;
	for i:=1 to ContaStrings(sSelecionados,',') do begin
		C_Cheques.Append;
    C_ChequesNumCheque.AsInteger 		:= nNumeroCheque;
    C_ChequesFavorecido.AsInteger 	:= C_TitulosFornecedor.AsInteger;
    C_ChequesConta.AsInteger				:= nContaBancoPadrao;
    C_ChequesVencimento.AsDateTime 	:= C_TitulosVencimento.AsDateTime;
    {Verificando se está pagando também com outra forma de pagamento (Abate na primeira duplicata)}
    if (i=1) and (getValorAPagar <> 0) then
    	C_ChequesValor.AsCurrency			:= iif((C_TitulosPagamento.AsCurrency-getValorAPagar)<0,0,C_TitulosPagamento.AsCurrency-getValorAPagar)
    else
      C_ChequesValor.AsCurrency			:= C_TitulosPagamento.AsCurrency;
    C_ChequesNome.Value							:= C_TitulosNome.Value;
    C_Cheques.Post;
    DBTitulos.NextSelected;
    inc(nNumeroCheque);
  end;
end;

(*¢¢*)procedure TDlgSangria.C_ChequesAfterPost(DataSet: TDataSet);
begin
  inherited;
	getValorAPagar;
end;

(*¢¢*)procedure TDlgSangria.TS_Label5SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([C_RetiradaCartaoCredito.AsVariant,50]);
end;

(*¢¢*)procedure TDlgSangria.TS_Label10SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([C_RetiradaOutraForma.AsVariant,10]);
end;

(*¢¢*)procedure TDlgSangria.DBTitulosCustomDrawColumnHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
var ColRect : TRect;
begin
  inherited;
  if shpTitulos.Visible then begin
  	Colrect := StrToRect( DBTitulos.ColumnsRect.Values['Pagamento'] );
  	shpTitulos.Left 	:= ColRect.Left;
  	shpTitulos.Width 	:= ColRect.Right-ColRect.Left+10;
  end;
end;

(*¢¢*)procedure TDlgSangria.dbtCreditoDispClick(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  C_RetiradaCreditoUtilizado.Value := C_RetiradaCreditoEmpresa.Value;
end;

(*¢¢*)procedure TDlgSangria.C_TitulosVALORNOMINALValidate(Sender: TField);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ALTVLNOM' ) then
		raise Exception.Create('@@');
  {Proveniente de uma Invoice}
  if C_TitulosCompra.Value <> 0 then begin
    DlgMsg.ShowMsg(944);
    raise Exception.Create('@@');
  end;

  {Já foi realizado pagamentos}
  if C_TitulosValorPago.Value <> 0 then begin
    DlgMsg.ShowMsg(946);
    raise Exception.Create('@@');
  end;

  {Não está selecionado}
  if C_Titulos_icSelecionado.Value = 0 then begin
    DlgMsg.ShowMsg(947);
  	raise Exception.Create('@@');
  end;

  pnSplit.Visible := (C_ContasOperacao.RecordCount > 1) and (DBSplit.TotalGeral('Valor')<>C_TitulosicValorNominal.AsCurrency);
	if pnSplit.Visible then begin
 		lbSplit.Caption := 'Split: '+formatfloat('###,###,##0.00',C_TitulosValorNominal.AsCurrency);
   	ActiveControl := DBSplit;
 	end;

  if C_ContasOperacao.RecordCount = 1 then begin
  	C_ContasOperacao.Edit;
    C_ContasOperacaoValor.Value := C_TitulosicValorNominal.Value;
    C_ContasOperacao.Post;
  end;

  C_Titulos.OnCalcFields := nil;
  //
	C_TitulosicFaltaPagar.Value:= C_TitulosicValorNominal.Value;
	C_TitulosPagamento.Value := C_TitulosicValorNominal.Value;

  // Modificando o valor nominal para o indexador corrente...
  C_TitulosVALORNOMINAL.Value := C_TitulosicValorNominal.Value;
  C_TitulosFALTAPAGAR.Value := C_TitulosicFaltaPagar.Value;
  if (C_Titulos.FieldByName('Indexador').AsVariant <> null) then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := C_Titulos.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      C_Titulos.FieldByName('VALORNOMINAL').AsVariant := RoundTo( C_Titulos.FieldByName('icValorNominal').AsCurrency * Q_SQL.Fields[0].AsFloat, -2);
      C_Titulos.FieldByName('FALTAPAGAR').AsVariant := RoundTo( C_Titulos.FieldByName('icFaltaPagar').AsCurrency * Q_SQL.Fields[0].AsFloat, -2);
    end;
    Q_SQL.Close;
  end;
  C_Titulos.OnCalcFields := C_TitulosCalcFields;
  //
end;

{}procedure TDlgSangria.ckbAbaterCreditoClick(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;

  if ckbAbaterCredito.Checked then
  	C_RetiradaCreditoAbatido.Value := C_RetiradaCreditoFavorecido.Value
  else
		C_RetiradaCreditoAbatido.Value := 0;
end;

(*¢¢*)procedure TDlgSangria.C_RetiradaOutraFormaChange(Sender: TField);
begin
  inherited;
  DMFinanceiro.C_OutrasForma.Locate('formapagamento',C_RetiradaOutraForma.value,[]);
  if C_RetiradaContaOutro.value = 0 then
    C_RetiradaContaOutro.value := DMFinanceiro.C_OutrasFormaContaPagar.value;
end;

{}procedure TDlgSangria.btVerPgtoClick(Sender: TObject);
begin
  inherited;
  DMProjeto.VerPagamentos( C_TitulosID.AsInteger, 0, C_TitulosNome.AsString );
end;

(*¢¢*)procedure TDlgSangria.C_TitulosAfterScroll(DataSet: TDataSet);
begin
  inherited;
	btVerPgto.Visible := C_TitulosValorAPagar.AsCurrency <> C_TitulosicValorNominal.AsCurrency;
end;

(*¢¢*)procedure TDlgSangria.ppmGridPopup(Sender: TObject);
begin
  inherited;
	menuVerPgto.Enabled := C_TitulosValorAPagar.AsCurrency <> C_TitulosicValorNominal.AsCurrency;
end;

(*¢¢*)procedure TDlgSangria.lbFecharClick(Sender: TObject);
begin
  inherited;
  if C_Titulos.State in [dsEdit,dsInsert] then
  	C_Titulos.Post;
  if C_TitulosicValorNominal.Value <> DBSplit.TotalGeral('Valor') then begin
		DlgMsg.ShowMsg( 938, [formatfloat('###,##0.00',C_TitulosicValorNominal.Value-DBSplit.TotalGeral('Valor'))]);
    exit;
  end;
  pnSplit.Visible := false;
end;

(*¢¢*)procedure TDlgSangria.btImprimirChequeClick(Sender: TObject);
var sContas, sContasImpressao, sCheques : string;
		i : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpCheque' ) then
    exit;
  if C_RetiradaValorCheque.Value > 0 then begin
    sContas := DBCheques.Distinct('Conta');
    sContasImpressao := '';
    for i:=1 to ContaStrings(sContas,',') do begin
      sCheques := DMFinanceiro.ChequesDaRetirada( IntToStr(RetiradaHist), StrToInt(SeparaStrings(sContas,',',i)) );
      sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
    end;
    sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
    C_Cheques.First;

    dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
    dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao, C_ChequesNumCheque.AsString );
    dlgEmissaoCheques.ShowModal;
    dlgEmissaoCheques.Release;
  end;

end;

(*¢¢*)procedure TDlgSangria.DBTitulosDblClick(Sender: TObject);
begin
  inherited;
  if DBTitulos.TS_SelectedColumn = 'NOME' then begin
    DMProjeto.SetParametrosForm([C_TitulosFornecedor.Value]);
    DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_TitulosTipoFavorecido.Value),self,true);
  end else if (C_TitulosCompra.Value <> 0) and (not C_TitulosCompra.IsNull) then begin
    DMProjeto.SetParametrosForm([C_TitulosCompra.Value]);
    DMProjeto.CriarForm('FrmCompras',self,true);
  end else begin
    DMProjeto.SetParametrosForm([C_TitulosID.Value]);
    DMProjeto.CriarForm('FrmA_Pagar',self,true);
  end;
  DMProjeto.LimparParametrosForm;
end;

(*¢¢*)procedure TDlgSangria.C_TitulosJurosChange(Sender: TField);
begin
  inherited;
	C_TitulosPagamento.OnChange := nil;
  C_TitulosPagamento.Value  	:= C_TitulosValorAPagar.Value-C_TitulosDescontos.Value+C_TitulosJuros.Value;
  C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
end;

(*¢¢*)procedure TDlgSangria.DBTitulosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ANode.HasChildren then begin
		if DBTitulos.getFieldValue( ANode, 'DataAtrasado',0 ) < DMProjeto.dDataSistema then
  		AFont.Color := clRed
    else if DBTitulos.getFieldValue( ANode, 'Vencimento',0 ) = DMProjeto.dDataSistema then
      AFont.Color := clGreen
  	else
  		AFont.Color := clBlack;
  end;
end;

(*¢¢*)procedure TDlgSangria.C_TitulosPagamentoChange(Sender: TField);
begin
  inherited;
	C_TitulosJuros.OnChange := nil;

  if (C_TitulosPagamento.Value > C_TitulosValorAPagar.Value) and
     (C_TitulosDataAtrasado.Value < C_RetiradaData.Value) then
	  C_TitulosJuros.Value 	:= C_TitulosPagamento.Value - C_TitulosValorAPagar.Value
  else if (C_TitulosPagamento.Value = C_TitulosValorAPagar.Value) then begin
  	C_TitulosJuros.Value	:= 0;
    C_TitulosDescontos.Value := 0;
  end;

  C_TitulosJuros.OnChange := C_TitulosJurosChange;
end;

(*¢¢*)procedure TDlgSangria.DBTitulosExit(Sender: TObject);
begin
  inherited;
	if C_Titulos.State in [dsEdit,dsInsert] then
  	C_Titulos.Post;
end;

(*¢¢*)procedure TDlgSangria.cmbImprimirChange(Sender: TObject);
begin
  inherited;
  if cmbImprimir.ItemIndex = 0 then begin
    rgAutomatico.checked 		 := false;
    rgAutomatico.enabled 		 := false;
    rgIndividual.checked 		 := false;
    rgIndividual.enabled 		 := false;
    pnNumeracaoCheque.Visible:= false;
  end else if cmbImprimir.ItemIndex = 1 then begin
    rgAutomatico.checked 		 := false;
    rgAutomatico.enabled 		 := false;
    rgIndividual.checked 		 := false;
    rgIndividual.enabled 		 := false;
    pnNumeracaoCheque.Visible:= false;
  end else begin
    pnNumeracaoCheque.Visible:= true;
    rgAutomatico.checked 		 := true;
    rgAutomatico.enabled 		 := true;
    rgIndividual.checked 		 := false;
    rgIndividual.enabled 		 := true;
  end;

  if RetiradaHist <> 0 then
			DBChequesNumCheque.Visible := true
  else
  	DBChequesNumCheque.Visible := false;

end;

(*¢¢*)procedure TDlgSangria.EditarRecibo1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm( [1] );
    CriarForm( 'FrmTextos', self, true );
  end;
end;

(*¢¢*)procedure TDlgSangria.C_TitulosDescontosChange(Sender: TField);
var nDesconto : Currency;
begin
  inherited;
  if C_TitulosDescontos.Value > 0 then begin

  	if C_TitulosDescontos.Value > C_TitulosValorAPagar.Value then
    	C_TitulosDescontos.Value := C_TitulosValorAPagar.Value;

    C_TitulosPagamento.OnChange := nil;
  	C_TitulosPagamento.Value := C_TitulosValorAPagar.Value - C_TitulosDescontos.Value + C_TitulosJuros.Value;
    C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
  end else if C_TitulosDescontos.Value = 0 then begin
    C_TitulosPagamento.OnChange := nil;
		C_TitulosPagamento.Value := C_TitulosValorAPagar.Value + C_TitulosJuros.Value - C_TitulosDescontos.Value;
    C_TitulosPagamento.OnChange := C_TitulosPagamentoChange;
  end else
  	C_TitulosDescontos.Value := 0;
end;

(*¢¢*)procedure TDlgSangria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var nIndex : integer;
begin
  inherited;
  if clbForma.Enabled and ((ssAlt in Shift) and (Key in [ord('1')..ord('7')])) then begin
    nIndex := StrtoInt(Chr(Ord(Key)))-1;
    clbForma.ItemIndex := nIndex;
    clbForma.Checked[nIndex] := not clbForma.Checked[nIndex];
    clbFormaClickCheck(sender);
  end;
end;

procedure TDlgSangria.DBContasOperacaoDescContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
  DlgPopup.SetTipo( 15 );
end;

procedure TDlgSangria.DBContasOperacaoExit(Sender: TObject);
begin
  inherited;
	if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;
end;

procedure TDlgSangria.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ContasOperacaoID.Value := nSeqNeg;
  Dec(nSeqNeg);
  if C_ContasOperacao.RecordCount = 0 then begin
    C_ContasOperacaoConta.Value := nContaDespesaPadrao;
  	C_ContasOperacaoValor.Value := DBTitulos.TotalSelecionado('Pagamento');
  end;
end;

end.


