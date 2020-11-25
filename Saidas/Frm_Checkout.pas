unit Frm_Checkout;
     
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FORM_PADRAO, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, FormCont, ComCtrls, TS_PageControl, ExtCtrls,
  teForm, teWipe, teDrip, teCircle, teWFall, TransEff, teTimed, teMasked,
  teIntrlc, TS_ModuloStyle, Dlg_Propaganda, DB, DBClient, dxExEdtr,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, TS_QDBGrid,
  dxEdLib, TS_CalcEdit, dxEditor, TS_ButtonEdit, TS_EditItem, StdCtrls,
  TS_Label, TS_Shape, teCtrls, TS_EffectsPanel, dxDBELib, TS_DBMaskEdit,
  TS_DBEdit, TS_DBImageEdit, TS_DBSpinEdit, TS_DBEditNumber, dxDBEdtr,
  TS_DBLookupComboBox, DBCtrls, TS_DBText, Buttons, TS_SpeedButton,
  dxfCheckBox, TS_DBCurrencyEdit, TypInfo, dxfLabel, DBText,
  TS_DBTextEffect, IBCustomDataSet, IBQuery, TS_Image, TS_CheckBox,
  Math, Provider, T_AutorizacaoDialog, TS_CurrencyEdit, T_TefDiscado;

const
  PM_SetFocus = WM_User + 25000;
  PM_FocusPr  = WM_User + 35000;
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
Type TMCartoes = Record
     Valor: Currency;
     Cartao:String;
End;
type
  TModelo = (Nenhuma,Bematech,Corisco,Schalter,Urano,Afrac,Elgin,Sweda,Daruma,Yanco,Sweda100,Quattro,ElginMFD);
  TFrmCheckout = class(TFormPadrao)
    TransitionList: TTransitionList;
    T_FormShow: TInterlacedTransition;
    T_ConsultaPreco: TWaterfallTransition;
    T_Cliente: TCircleTransition;
    T_Letras: TDripTransition;
    T_Termos: TWipeTransition;
    FormBkg: TFormTransitions;
    Timer1: TTimer;
    pgPrincipal: TTS_PageControl;
    tsPropaganda: TTS_TabSheet;
    CtnPropagandas: TFormContainer;
    tsOperacao: TTS_TabSheet;
    msVendaRapida: TTS_ModuloStyle;
    IniciarVenda1: TMenuItem;
    N1: TMenuItem;
    Salvar1: TMenuItem;
    N2: TMenuItem;
    ConsultarPrecos1: TMenuItem;
    N3: TMenuItem;
    TrocadeBobina1: TMenuItem;
    ComandosparaECF1: TMenuItem;
    AbrirGaveta1: TMenuItem;
    N4: TMenuItem;
    FazerRetirada1: TMenuItem;
    SuprimentodeCaixa1: TMenuItem;
    RecebimentodeParcelas1: TMenuItem;
    N5: TMenuItem;
    NomedoCliente1: TMenuItem;
    FecharaTela1: TMenuItem;
    CancelarOperaes1: TMenuItem;
    ReimprimirOperaes1: TMenuItem;
    N6: TMenuItem;
    CancelarVenda1: TMenuItem;
    C_MestreDS: TDataSource;
    C_Mestre: TClientDataSet;
    C_MestreData: TDateField;
    C_MestreTotal: TCurrencyField;
    C_MestreTotalItens: TCurrencyField;
    C_MestreVolumes: TCurrencyField;
    C_MestreFavorecido: TIntegerField;
    C_MestreF_Nome: TStringField;
    C_MestreVendedor: TIntegerField;
    C_MestreNomeVendedor: TStringField;
    C_MestreTabelaPadrao: TIntegerField;
    C_MestreNomeTabelaPadrao: TStringField;
    C_MestreDesconto: TCurrencyField;
    C_MestreObs: TStringField;
    C_VendaDS: TDataSource;
    C_Venda: TClientDataSet;
    C_VendaSequencia: TIntegerField;
    C_VendaCodigo: TStringField;
    C_VendaDescricao: TStringField;
    C_VendaReferencia: TStringField;
    C_VendaQuantidade: TCurrencyField;
    C_VendaUnidade: TStringField;
    C_VendaicX: TStringField;
    C_VendaPreco: TCurrencyField;
    C_VendaicIG: TStringField;
    C_VendaSubTotal: TCurrencyField;
    C_VendaStatus: TStringField;
    C_VendaIDItem: TIntegerField;
    C_VendaVolume: TIntegerField;
    C_VendaTipoItem: TIntegerField;
    C_VendaTabelaPreco: TIntegerField;
    pnItem: TTS_Panel;
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
    dfPreco: TTS_CalcEdit;
    pnPgtos: TTS_Panel;
    pnVenda: TTS_Panel;
    dbgItens: TTS_QDBGrid;
    dbgItensSequencia: TdxDBGridMaskColumn;
    dbgItensCodigo: TdxDBGridMaskColumn;
    dbgItensDescricao: TdxDBGridMaskColumn;
    dbgItensReferencia: TdxDBGridMaskColumn;
    dbgItensUnidade: TdxDBGridMaskColumn;
    dbgItensQuantidade: TdxDBGridCurrencyColumn;
    dbgItensicX: TdxDBGridMaskColumn;
    dbgItensPreco: TdxDBGridCurrencyColumn;
    dbgItensicIG: TdxDBGridMaskColumn;
    dbgItensSubTotal: TdxDBGridCurrencyColumn;
    dbgItensStatus: TdxDBGridMaskColumn;
    dbgItensNumeroLote: TdxDBGridMaskColumn;
    dbgItensIDItem: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    dfSubTotal: TTS_DBCurrencyEdit;
    LabelDesconto: TTS_Label;
    dfDesconto: TTS_DBCurrencyEdit;
    TS_Label4: TTS_Label;
    dfTotal: TTS_DBCurrencyEdit;
    cbDinheiro: TdxfCheckBox;
    cbCheque: TdxfCheckBox;
    cbChequeEletronico: TdxfCheckBox;
    cbCartao: TdxfCheckBox;
    pgForma: TTS_PageControl;
    tabDinheiro: TTS_TabSheet;
    vg2Label1: TTS_Label;
    dfDinheiro: TTS_CalcEdit;
    tabCheque: TTS_TabSheet;
    dbgCheques: TTS_QDBGrid;
    dbgChequesBanco: TdxDBGridMaskColumn;
    dbgChequesAgencia: TdxDBGridColumn;
    dbgChequesAgenciaDV: TdxDBGridMaskColumn;
    dbgChequesConta: TdxDBGridMaskColumn;
    dbgChequesContaDV: TdxDBGridMaskColumn;
    dbgChequesNumCheque: TdxDBGridColumn;
    dbgChequesChequeDV: TdxDBGridMaskColumn;
    dbgChequesVencimento: TdxDBGridDateColumn;
    dbgChequesValor: TdxDBGridColumn;
    dbgChequesChequeNominal: TdxDBGridColumn;
    dbgChequesDescBanco: TdxDBGridLookupColumn;
    dbgChequesCPF_CNPJ: TdxDBGridMaskColumn;
    tabChequeEletronico: TTS_TabSheet;
    dbgChequesEletronico: TTS_QDBGrid;
    dbgChequesEletronicoDescConvenio: TdxDBGridLookupColumn;
    dbgChequesEletronicoValor: TdxDBGridCurrencyColumn;
    dbgChequesEletronicoVencimento: TdxDBGridDateColumn;
    dbgChequesEletronicoObs: TdxDBGridMaskColumn;
    tabCartao: TTS_TabSheet;
    vg2Label2: TTS_Label;
    TS_Label5: TTS_Label;
    lbParcelas: TTS_Label;
    lbParcelasDe: TTS_Label;
    btMaisCartoes: TTS_SpeedButton;
    dbValorParcela: TTS_DBText;
    btUmCartao: TTS_SpeedButton;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    cmbCartao: TTS_DBLookupComboBox;
    dbgCartoes: TTS_QDBGrid;
    dbgCartoesIDCartao: TdxDBGridMaskColumn;
    dbgCartoeslkCartao: TdxDBGridLookupColumn;
    dbgCartoesCartao: TdxDBGridMaskColumn;
    dbgCartoesValor: TdxDBGridCurrencyColumn;
    dbgCartoesTipo: TdxDBGridImageColumn;
    dbgCartoesParcelas: TdxDBGridSpinColumn;
    dbgCartoesValorParcelas: TdxDBGridCurrencyColumn;
    dbgCartoesNumeroCartao: TdxDBGridColumn;
    dbgCartoesValidade: TdxDBGridMaskColumn;
    dfCartao: TTS_DBEditNumber;
    dfNumParcelas: TTS_DBSpinEdit;
    dfTipo: TTS_DBImageEdit;
    dfNumeroCartao: TTS_DBEdit;
    dfValidade: TTS_DBMaskEdit;
    TS_Label8: TTS_Label;
    dfPgtos: TTS_DBCurrencyEdit;
    TS_Label9: TTS_Label;
    dfTroco: TTS_DBCurrencyEdit;
    pnDescricao: TTS_Panel;
    dbtDescItem: TTS_DBTextEffect;
    dbtQuantidade: TTS_DBTextEffect;
    dbtPrecoUnit: TTS_DBTextEffect;
    lbIg: TdxfLabel;
    lbX: TdxfLabel;
    dbtSubTotal: TTS_DBTextEffect;
    pnInfo: TTS_Panel;
    lbCCliente: TTS_Label;
    lbCVendedor: TTS_Label;
    Q_SQL: TIBQuery;
    spPgtos: TTS_Shape;
    C_MestrePgtos: TCurrencyField;
    C_MestreTroco: TCurrencyField;
    lbCliente: TTS_DBTextEffect;
    lbVendedor: TTS_DBTextEffect;
    C_CartoesDS: TDataSource;
    C_Cartoes: TClientDataSet;
    C_CartoesIDCartao: TIntegerField;
    C_CartoesCartao: TIntegerField;
    C_CartoesValor: TCurrencyField;
    C_CartoesParcelas: TIntegerField;
    C_CartoesValorParcelas: TCurrencyField;
    C_CartoeslkCartao: TStringField;
    C_CartoesTipo: TIntegerField;
    C_CartoesContaCartao: TIntegerField;
    C_CartoesNumeroCartao: TStringField;
    C_CartoesValidade: TStringField;
    C_ChequesDS: TDataSource;
    C_Cheques: TClientDataSet;
    C_ChequesIDCheque: TIntegerField;
    C_ChequesVencimento: TDateField;
    C_ChequesValor: TCurrencyField;
    C_ChequesAgencia: TStringField;
    C_ChequesBanco: TIntegerField;
    C_ChequeslkBanco: TStringField;
    C_ChequesChequeNominal: TStringField;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesContaReceber: TIntegerField;
    C_ChequesConta: TStringField;
    C_ChequesAgenciaDV: TStringField;
    C_ChequesContaDV: TStringField;
    C_ChequesChequeDV: TStringField;
    C_ChequesCPF_CNPJ: TStringField;
    C_ChequeslkCodBanco: TStringField;
    C_ChequesEletronico: TClientDataSet;
    C_ChequesEletronicoID: TIntegerField;
    C_ChequesEletronicoValor: TCurrencyField;
    C_ChequesEletronicoObs: TStringField;
    C_ChequesEletronicoConvenio: TIntegerField;
    C_ChequesEletronicoDescConvenio: TStringField;
    C_ChequesEletronicoContaReceber: TIntegerField;
    C_ChequesEletronicoVencimento: TDateTimeField;
    C_ChequesEletronicoDS: TDataSource;
    imgRecebs: TTS_Image;
    dxfLabel1: TdxfLabel;
    ppmCheques: TTS_PopupMenu;
    IncluirNovoBanco1: TMenuItem;
    TitulardoCheque1: TMenuItem;
    ppmGridCartoes: TTS_PopupMenu;
    IncluirNovoCarto1: TMenuItem;
    UmCartoapenas1: TMenuItem;
    ppmChequesElet: TTS_PopupMenu;
    C_Titulos: TClientDataSet;
    C_TitulosID: TIntegerField;
    C_TitulosValorAReceber: TCurrencyField;
    C_TitulosPagamento: TCurrencyField;
    C_TitulosJuros: TCurrencyField;
    C_TitulosDescontos: TCurrencyField;
    C_VendaSituacaoECF: TStringField;
    C_VendaReducaoCST: TCurrencyField;
    C_VendaAliqICMS: TCurrencyField;
    C_VendaIPI: TCurrencyField;
    C_VendaCustoMedio: TCurrencyField;
    C_VendaCustoContabil: TCurrencyField;
    C_VendaCST: TStringField;
    C_VendaTVA: TCurrencyField;
    C_VendaContaVenda: TIntegerField;
    C_VendaFator: TFloatField;
    dxfLabel2: TdxfLabel;
    ppmGrid: TTS_PopupMenu;
    TS_SpeedButton1: TTS_SpeedButton;
    ppFontes: TTS_PopupMenu;
    FundoAzulLetraPreta1: TMenuItem;
    FundoAzulLetraBranca1: TMenuItem;
    N7: TMenuItem;
    FundoPretoLetraBranca1: TMenuItem;
    FundoPretoLetraAzul1: TMenuItem;
    N8: TMenuItem;
    CancelarSomenteTEF1: TMenuItem;
    C_VendaPrecoTabela: TCurrencyField;
    C_VendacfValorMaxDesconto: TFloatField;
    C_VendaMaxDesconto: TFloatField;
    C_MestreOldDesconto: TFloatField;
    C_VendaGrupoComissao: TIntegerField;
    IniciarDevoluo1: TMenuItem;
    msDevolucao: TTS_ModuloStyle;
    lbTroca: TdxfLabel;
    cbCredito: TdxfCheckBox;
    tabCredito: TTS_TabSheet;
    TS_Label3: TTS_Label;
    lbCreditoDisponivel: TTS_Label;
    TS_Label10: TTS_Label;
    dfCreditoUtilizado: TTS_CurrencyEdit;
    lbTipoEntrega: TTS_DBTextEffect;
    C_MestreF_TipoEntrega: TStringField;
    C_VendaidTribFederal: TIntegerField;
    TS_Label12: TTS_Label;
    dfPagamentos: TTS_DBTextEffect;
    TS_Label11: TTS_Label;
    C_MestreF_PlanoPGTO: TStringField;
    C_MestreF_CPF_CNPJ: TStringField;
    TEF2: TTEFDiscado;
    C_VendaCodigoBarras: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FecharaTela1Click(Sender: TObject);
    procedure TrocadeBobina1Click(Sender: TObject);
    procedure ComandosparaECF1Click(Sender: TObject);
    procedure AbrirGaveta1Click(Sender: TObject);
    procedure FazerRetirada1Click(Sender: TObject);
    procedure SuprimentodeCaixa1Click(Sender: TObject);
    procedure RecebimentodeParcelas1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dfItemIniciarLocalizar(Sender: TObject; var Value: String;
      var bSkip: Boolean);
    procedure dfItemSelecionou(Sender: TObject);
    procedure dfQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dfPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure Parametros1Click(Sender: TObject);
    procedure C_VendaBeforePost(DataSet: TDataSet);
    procedure C_VendaBeforeDelete(DataSet: TDataSet);
    procedure CancelarVenda1Click(Sender: TObject);
    procedure IniciarVenda1Click(Sender: TObject);
    procedure C_MestreDescontoChange(Sender: TField);
    procedure C_MestreTotalItensChange(Sender: TField);
    procedure NomedoCliente1Click(Sender: TObject);
    procedure lbClienteClick(Sender: TObject);
    procedure lbVendedorClick(Sender: TObject);
    procedure dfDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCartoesTS_AfterNewRecord(Sender: TObject);
    procedure btMaisCartoesClick(Sender: TObject);
    procedure btUmCartaoClick(Sender: TObject);
    procedure cbDinheiroClick(Sender: TObject);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure TitulardoCheque1Click(Sender: TObject);
    procedure IncluirNovoBanco1Click(Sender: TObject);
    procedure IncluirNovoCarto1Click(Sender: TObject);
    procedure TS_Label5SetParametrosForm(Sender: TObject);
    procedure C_CartoesNewRecord(DataSet: TDataSet);
    procedure dfDinheiroChange(Sender: TObject);
    procedure C_ChequesAfterPost(DataSet: TDataSet);
    procedure C_CartoesAfterPost(DataSet: TDataSet);
    procedure tabCartaoExit(Sender: TObject);
    procedure tabChequeExit(Sender: TObject);
    procedure dfNumParcelasChange(Sender: TObject);
    procedure dbgCartoesParcelasChange(Sender: TObject);
    procedure dbgCartoesValorChange(Sender: TObject);
    procedure dbgCartoesEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure dfCartaoChange(Sender: TObject);
    procedure dbgChequesColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure C_ChequesAfterDelete(DataSet: TDataSet);
    procedure C_CartoesCartaoChange(Sender: TField);
    procedure C_ChequesEletronicoNewRecord(DataSet: TDataSet);
    procedure tabChequeEletronicoExit(Sender: TObject);
    procedure dbgChequesEletronicoColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure C_ChequesEletronicoAfterPost(DataSet: TDataSet);
    procedure dfItemNaoAchou(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
      var CanDelete: Boolean);
    procedure ReimprimirOperaes1Click(Sender: TObject);
    procedure dfDescontoExit(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FundoAzulLetraPreta1Click(Sender: TObject);
    procedure FundoAzulLetraBranca1Click(Sender: TObject);
    procedure FundoPretoLetraBranca1Click(Sender: TObject);
    procedure FundoPretoLetraAzul1Click(Sender: TObject);
    procedure CancelarOperaes1Click(Sender: TObject);
    procedure ConsultarPrecos1Click(Sender: TObject);
    procedure CancelarSomenteTEF1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure C_VendaCalcFields(DataSet: TDataSet);
    procedure C_VendaIDItemChange(Sender: TField);
    procedure IniciarDevoluo1Click(Sender: TObject);
    procedure C_MestreCalcFields(DataSet: TDataSet);
    procedure dfQuantidadeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dfNumParcelasValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dfNumParcelasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dfNumParcelasSelectionChange(Sender: TObject);
  private
    { Private declarations }
    sF5: String;
    sSituacao: String;
    bPermitirGravarSemReceber, bDevolucao, bTroca, bPermitirVNF : Boolean;
    nMaxDesconto, nCreditoDevolucao, nCreditoCliente,
    nDescontoDevolucao : currency;
    nVlParcelas : Currency; //Para uso nos eventos do dbgCartoes;
    bQtdePrimeiro, bSolicitarQuantidade, bSolicitarPreco,
    SempreSolicitarQuantidade,
    SempreSolicitarPreco, OldSolicitarQtde, bConsulta,
    bECF, Inicio, bPostMestre, bCartaoTEF, bImpDOCCOBRANCA: boolean;
    nIDCliente, nIDVendedor, Seq, nIDFormas, nNumCheque, nLastBanco: integer;
    sObs, sItensDevolucao: string;
    sChequeNominal, sAgencia, sAgenciaDV, sConta,
    sContaDV, sChequeDV, sCPF_CNPJ, sNomeCliente, sNomeVendedor,
    NSU, RedeNSU, DataNSU, HoraNSU, sUFCliente: String;
    cLimiteCredito: Currency;
    DlgProps : TDlgPropaganda;
    Estado, sTipoEntrega, sSolicitarFormaPgtoCheckout, sFormaPgto: string;
    procedure EstadoInicial;
    procedure IniciarVenda;
    procedure IniciarDevolucao;
    procedure SetSolicitarQuantidade(Value : Boolean);
    procedure SetSolicitarPreco(Value : Boolean);
    procedure VerificaPainelInfo;
    function CancelarOperacao: boolean;
    procedure AdicionarItem;
    procedure AtualizaTotalFinal(bExecRecebido: boolean = true);
    procedure InformaCliente;
    procedure InformaVendedor;
    procedure SelecionarFPgto( Key : Word; nQtdVezes : Integer = 1; nValor : Currency = 0 );
    procedure AtualizarRecebido;
    procedure SetFormaPagamento(nIndex: integer);
    procedure ValoresPagos(var valores:array of currency; var HiperCard:boolean; Var MultCartao:array of TMCartoes);
    procedure CancelandoMultiplosCartoes;

    procedure CfgFonte(nOpcao: Integer);
    function FinalizaCupomTEF(sObs: string): boolean;
    function getMaxDesconto: currency;
    function ValorMaxDesconto: double;
    function VerificarComissao : boolean;
    function GetAtrasados: Currency;
    function GetDevolvidos: Currency;
    function TipoMovimento(FieldName: string): string;
  protected
    procedure PMSetFocus(var Msg:TMessage); message PM_SetFocus;
    procedure PMFocusPR(var Msg:TMessage); message PM_FocusPR;
  public
    { Public declarations }
    property SolicitarQuantidade : Boolean
      read bSolicitarQuantidade write SetSolicitarQuantidade;

    property SolicitarPreco : Boolean
      read bSolicitarPreco write SetSolicitarPreco;
  end;
var
  FrmCheckout: TFrmCheckout;
  MultCartao: array[0..7] of TMCartoes;
  MultCartoes: Array[0..7] of TMultiplosCartoes;
  {PAF}
  SubTotalECF: Currency;

const
formapgto: array[0..8] of String = ('DINHEIRO','CHEQUE','CHQ ELETRO','CARTAO','DEP BANC','CREDITO','OUTROS','DOC COBRANCA','InforPOP');
implementation

uses DM_Projeto, DM_ECF, Frm_MsgECF, DM_Financeiro, Dlg_VendedorVMR,
  Dlg_ClienteVR, Funcoes, Dlg_ImprimirOp, Dlg_ConsultaPrecos, Frm_MsgTEF,
  TDM_Projeto, ECF, FuncoesPAF;

const
  ScreenWidth: LongInt = 800; {tamanho da tela em tempo de projeto}
  ScreenHeight: LongInt = 600;
  AlturaForm:Longint = 600;
  LarguraForm:Longint = 800;

{$R *.dfm}


function TFrmCheckout.TipoMovimento;
begin
  result := '';
  With Q_SQL do begin
    Close;
    Sql.Text := 'select * From TiposMovimento where tipomovimento = '+iif(bECF,'7','700');
    Open;
    try
        result := Q_Sql.FieldByName(FieldName).asString;
    except
      on e:exception do begin
        result := '';
      end;
    end;
    Close;
  End
end;



function TFrmCheckout.GetAtrasados: Currency;
begin
    {Verificando Atrasos}
    with Q_SQL do
    begin
        Close;
        SQL.Text := 'Select Sum(FaltaReceber) as Atrasados from TitulosAReceber ' +
            'Where  Status = 3 and Cliente = :C ';
        params[0].asInteger := C_MestreFavorecido.AsInteger;
        Open;

        Result := FieldByName('Atrasados').asCurrency;

        Close;
    end;
end;

function TFrmCheckout.GetDevolvidos: Currency;
begin
    {Verificando Atrasos}
    with Q_SQL do
    begin
        Close;
        SQL.Text := 'Select Sum(dd.Valor) as Devolvidos ' +
            'from DepositosDoc dd inner join Depositos d on d.deposito = dd.deposito ' +
            'Where  dd.Status = 4 and d.Favorecido = :C ';
        params[0].asInteger := C_MestreFavorecido.AsInteger;
        Open;

        Result := FieldByName('Devolvidos').asCurrency;

        Close;
    end;
end;




procedure TFrmCheckout.FormShow(Sender: TObject);
begin
  inherited;
  try
    bPermitirVNF   := DMProjeto.Parametro('PermitirVNF') = 'S';
    bQtdePrimeiro  := DMProjeto.Parametro('QuantidadePrimeiroVR') = 'S';

    SolicitarQuantidade := DMProjeto.Parametro('SemprePedirNaVR')[1] in ['A','Q'];
    SolicitarPreco   := DMProjeto.Parametro('SemprePedirNaVR')[1] in ['A','P'];

    if DMProjeto.Parametro('SemDescontoNaVR') = 'S' then begin
      pnPreco.Visible := false;
    end;

    bPermitirGravarSemReceber := DMProjeto.Parametro('PermitirGravarSemReceber') = 'S';
    bImpDOCCOBRANCA := DMProjeto.Parametro('ImpDOCCOBRANCA') = 'S';




    SempreSolicitarQuantidade := SolicitarQuantidade;
    SempreSolicitarPreco := SolicitarPreco;

    FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;
    pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    CtnPropagandas.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnPgtos.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnDescricao.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnInfo.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pgForma.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnProduto.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnQuantidade.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnPreco.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    if bQtdePrimeiro then
      pnQuantidade.align := alLeft;
    if (DlgProps = nil) then begin
      DlgProps := TDlgPropaganda(CtnPropagandas.CreateForm(TDlgPropaganda));
      DlgProps.BitmapTela := FormBkg.Backgroundoptions.picture.bitmap;
      CtnPropagandas.ShowFormEx(DlgProps, true, nil, nil, fcfaClient);
    end;

    EstadoInicial;

    if XPClassMenu <> nil then with XPClassMenu do begin
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

procedure TFrmCheckout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DlgProps <> nil then begin
    DlgProps.Parar;
  end;
  if (bEcf) and ((DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') and (DMECF.ECF1.SubTotal <> 0)) then
     DMECF.ECF1.CancelaUltimoCupom;
  DlgProps := nil;
end;

procedure TFrmCheckout.FormCreate(Sender: TObject);
var
  proporcao:Longint;
  i:Integer;
begin
  inherited;
   Try
    DMProjeto.nCasasDecimais := StrToInt(DMProjeto.Parametro('CasasDecimais'));
    DMProjeto.sCasasDecimais := '######0.' + Copy('0000000000',1,DMProjeto.nCasasDecimais);
    sSolicitarFormaPgtoCheckout := DMProjeto.Parametro('SolicitarFormaPgtoCheckout');
    sFormaPgto := DMProjeto.Parametro('FormaPgtoVR');
  except
    DMProjeto.nCasasDecimais := 2;
    DMProjeto.sCasasDecimais := '######0.00';
  End;
  Inicio := True;
  (* Redimensionamento da Tela *)
  scaled := true;
  if (screen.width <> ScreenWidth) then
  begin
    scaleBy(screen.width, ScreenWidth);
    proporcao:=((Screen.width*100) div longint(screenwidth))-100;
    height:= AlturaForm+((AlturaForm*proporcao) div 100);
    width:= Larguraform+((larguraForm*proporcao) div 100);
  End;
  for i := componentCount - 1 downto 0 do
   with components[i] do
   begin
     if GetPropInfo(ClassInfo, 'font') <> nil then
        font.size := ( screen.width DIV ScreenWidth) * font.size;
  end;

  bSolicitarQuantidade := False;
  bSolicitarPreco   := False;

  With Q_SQL do begin
    Close;
    Sql.Text := 'select mo.descricao from mensagensoperacoes mo ' +
                'left join tiposmovimento tm on tm.mensagempadrao = mo.mensagemoperacao ' +
                'where tm.tipomovimento = 7 ';
    Open;
    sObs := Fields[0].AsString;
    Close;
  end;

  tabCheque.Color := tabDinheiro.Color;
  tabChequeEletronico.Color := tabDinheiro.Color;
  tabCartao.Color := tabDinheiro.Color;
  tabCredito.Color := tabDinheiro.Color;

  tsPropaganda.TabVisible := False;
  tsOperacao.TabVisible := False;
  bCartaoTEF := True;
end;

procedure TFrmCheckout.EstadoInicial;
begin
  Screen.Cursor := crDefault;

  IniciarVenda1.Enabled := True;
  IniciarDevoluo1.Enabled := True;
  CancelarVenda1.Enabled := False;
  Salvar1.Enabled := False;
  ConsultarPrecos1.Enabled := False;
  TrocadeBobina1.Enabled := True;
  ComandosparaECF1.Enabled := True;
  AbrirGaveta1.Enabled := True;
  FazerRetirada1.Enabled := True;
  SuprimentodeCaixa1.Enabled := True;
  RecebimentodeParcelas1.Enabled := True;
  NomedoCliente1.Enabled := False;
  CancelarOperaes1.Enabled := True;
  ReimprimirOperaes1.Enabled := True;

  Seq := 0;

  FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;

  pgPrincipal.SetPage(tsPropaganda);

  // Variáveis da troca...
  bDevolucao := False;
  bTroca := False;
  nCreditoCliente := 0;
  nCreditoDevolucao := 0;
  Estado := 'Propagandas';
  sF5 := 'Livre'; //Para liberar a gravação da venda.

  if DlgProps <> nil then begin
    if CtnPropagandas.Parent <> tsPropaganda then
      CtnPropagandas.Parent := tsPropaganda;
    DlgProps.Iniciar;
  end;

end;

procedure TFrmCheckout.IniciarVenda;
var nID: integer;
    sNome, sCodigo, sUF, sBloquearPorSituacao: string;
begin
(* Este estado representa quando se está na área de propagandas e tecla-se F8 para iniciar a venda *)


  SubTotalECF := 0.00;
  if Name <> 'FrmEmpresa' Then Begin
   if (DMProjeto.TipoSituacaoCliente = 2) Then Begin
      DlgMsg.ShowMsg(50,['O Período de Avaliação Expirou. Favor Registrar o Sistema SYNCLOJA.'+#13+
                         'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                         'nosso site www.synctech.com.br']);
     if DlgProps <> nil then begin
       DlgProps.Parar;
     end;
     DlgProps := nil;
     Exit;
   End Else if (DMProjeto.TipoSituacaoCliente = 4) Then Begin
      DlgMsg.ShowMsg(50,['Você deve atualizar o Acesso ao Sistema.'+#13+
                         'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                         'nosso site www.synctech.com.br']);
     if DlgProps <> nil then begin
       DlgProps.Parar;
     end;
     DlgProps := nil;
     Exit;

   End;
  End;
  try
    cLimiteCredito:=0;
    if (bECF) and ((TModelo(DMECF.ECF1.Modelo) <> Nenhuma) and (DMProjeto.bECFAtivo)) then begin
       if DMECF.ECF1.ChkECFAberto = 'ECF Fechado' then begin
          if DlgMsg.ShowMsg(6036) = 100 then begin
             DMECF.ECF1.AberturaDia('0,01', 'Dinheiro');
             if not (DMProjeto.nModeloECF in [1,10]) then
                 DMECF.ECF1.Sangria('0,00', DMProjeto.sLoginName);
             Exit;
           end  else Exit;
        end;
        if DMECF.ECF1.LeData <> FormatDateTime('ddmmyy', DMProjeto.dDataSistema) then begin
           DlgMsg.ShowMsg(6037);
           Exit;
        end;
        if (DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') and (DMECF.ECF1.SubTotal <> 0) then begin
          if not DMECF.ECF1.CancelaUltimoCupom then
             Exit;
        end;
    end;
    With Q_SQL do begin
      Close;
      Sql.Text := 'select tm.FAVORECIDOPADRAO from tiposmovimento tm where tm.tipomovimento = '+iif(bECF,'7','700');
      Open;
      nIDCliente := Fields[0].AsInteger;
      Close;
    end;

    With DMProjeto.Q_LocalizarFav do Begin
       Close;
       Sql.Text := 'select f.*, t.DESCRICAO as DescTipoEntrega from favorecidos f '+
                   ' left join TIPOSENTREGA t on f.TIPOENTREGA = t.TIPOENTREGA '+
                   ' where desativado =  ''N'' and f.favorecido = '+IntToStr(nIdCliente);
       DMProjeto.C_LocalizarFav.Close;
       DMProjeto.C_LocalizarFav.Filtered := false;
       DMProjeto.C_LocalizarFav.CommandText := DMProjeto.Q_LocalizarFav.Sql.Text;
       DMProjeto.C_LocalizarFav.FetchParams;
       DMProjeto.C_LocalizarFav.Open;
    End;
   Screen.Cursor := crHourGlass;
   if DlgProps <> nil then //Sem propagandas durante a venda.
     DlgProps.Parar;

    // ---- Movimentação ---- //
    if not C_Venda.Active then
      C_Venda.CreateDataSet
    else
      C_Venda.EmptyDataSet;
    if not C_Mestre.Active then
      C_Mestre.CreateDataSet
    else
      C_Mestre.EmptyDataSet;
    // ---- Pagamentos ---- //
    nIDFormas := 0;
    // Dinheiro
    dfDinheiro.Value := 0;
    // Cheques
    DMFinanceiro.C_Bancos.Close;
    DMFinanceiro.C_Bancos.Open;
    if not C_Cheques.Active then
      C_Cheques.CreateDataSet
    else
      C_Cheques.EmptyDataSet;
    // Cheque Eletrônico
    DMFinanceiro.C_ChequesElet.Close;
    DMFinanceiro.C_ChequesElet.Open;
    if not C_ChequesEletronico.Active then
      C_ChequesEletronico.CreateDataSet
    else
      C_ChequesEletronico.EmptyDataSet;
    // Cartões de Crédito
    DMFinanceiro.C_CartoesCred.Close;
    DMFinanceiro.C_CartoesCred.Open;
    if not C_Cartoes.Active then
      C_Cartoes.CreateDataSet
    else
      C_Cartoes.EmptyDataSet;

    NSU:=''; RedeNSU:='';DataNSU:='';HoraNSU:='';
    sUFCliente := '';

    cbDinheiro.Checked := false;
    cbCheque.Checked := false;
    cbChequeEletronico.Checked := false;
    cbCartao.Checked := false;

    cbDinheiro.Enabled := True;
    cbCheque.Enabled := True;
    cbChequeEletronico.Enabled := True;
    cbCartao.Enabled := True;


    C_Mestre.Append;
    C_MestreData.Value := DMProjeto.dDataSistema;
    C_MestreTotalItens.Value := 0;
    C_Mestre.Edit;
    C_MestreTotal.Value := 0;
    C_MestreVolumes.Value := 0;
    if bTroca then begin
      C_MestreFavorecido.Value := nIDCliente;
      C_MestreF_Nome.AsString := sNomeCliente;
    end
    else
      C_MestreFavorecido.Value := 1;



    sSituacao := '';
    if bTroca then begin
      C_MestreVendedor.Value := nIDVendedor;
      C_MestreNomeVendedor.AsString := sNomeVendedor;
    end
    else
      C_MestreVendedor.Value := 0;
    C_MestreTabelaPadrao.Value := 0;
    C_MestreObs.Value := sObs;
    C_Mestre.Post;
    C_Mestre.Edit;
    if (not bTroca) and (DMProjeto.Parametro('SolicitarClienteVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgClienteVR := TDlgClienteVR.Create(self);

      if DlgClienteVR.ShowModal = -1 then begin
        DlgClienteVR.Release;
        exit;
      end;
      if (Not (DlgClienteVR.SenhaValida)) Then Begin
         DlgMsg.ShowMsg(50, ['Senha do cliente não confere!']);
         Exit;
      End;

      nID := DlgClienteVR.Cliente;
      sNome := DlgClienteVR.sCliente;
      sCodigo := DlgClienteVR.sCodigo;
      sUF := DlgClienteVR.sUF;
      sTipoEntrega  :=  DlgClienteVR.sTipoEntrega;
      cLimiteCredito := DlgClienteVR.cLimiteCredito;
      sSituacao := DlgClienteVR.sSituacao;
      sCPF_CNPJ := DlgClienteVr.sCPF_CNPJ;
      DlgClienteVR.Release;
      C_MestreFavorecido.Value := nID;
      C_MestreF_Nome.Value := sCodigo +'-'+ sNome;
      C_MestreF_TipoEntrega.Value := sTipoEntrega;
      nCreditoCliente := DMFinanceiro.CreditoFavorecido( nID, true );
      sNomeCliente := sNome;
      sUFCliente := sUF;
      DMProjeto.Q_SQL.Close;
      DMProjeto.Q_SQL.Sql.Text := 'select tm.bloquearporsituacao from tiposmovimento tm where tm.tipomovimento = '+iif(bECF,'7','700');
      DMProjeto.Q_SQL.Open;
      sBloquearPorSituacao :=  DMProjeto.Q_SQL.fieldbyname('bloquearporsituacao').asString;
     {Bloquear se Bloqueado}
      if (sSituacao = 'B') and (sBloquearPorSituacao = 'S')
         and not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'LIBSEBLOQ','',False,'Cliente:'+C_MestreF_NOME.AsString+#13#10+
                                                'Total:'+C_MestreTotal.AsString) then begin
         exit;
      end;
     {Bloquear se Atrasado}
      if ((GetDevolvidos > 0) Or (GetAtrasados > 0)) and (TipoMovimento('BloquearSeAtrasado') = 'S')
        and not DMProjeto.DlgAutorizacao.ExecuteX('FrmCheckout', 'LIBSEATRAS','',False,
                                                 'Cliente:'+sNome+#13#10,nID,
                                                 'DlgSitCliente') then begin
        DlgMsg.ShowMsg(50, ['Permissão não autorizada, Configurado para o cliente padrão!']);
        C_MestreFavorecido.Value := nIDCliente;
        exit;
     end;
    end;

    if (not bTroca) and (C_MestreVendedor.Value = 0) and
       (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        exit;
      end;
      if C_Mestre.State in [dsInsert,dsEdit] then C_Mestre.Post;
      C_Mestre.Edit;
      C_MestreVendedor.Value := DlgVendedorVMR.nVendedor;
      C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      C_Mestre.Post;
      DlgVendedorVMR.Release;
    end;
    // Nomes do Cliente e Vendedor
    VerificaPainelInfo;


    //Ajustando o popup
    IniciarVenda1.Enabled := False;
    IniciarDevoluo1.Enabled := False;
    CancelarVenda1.Enabled := True;
    Salvar1.Enabled := True;
    ConsultarPrecos1.Enabled := True;
    TrocadeBobina1.Enabled := True;
    ComandosparaECF1.Enabled := True;
    AbrirGaveta1.Enabled := True;
    FazerRetirada1.Enabled := True;
    SuprimentodeCaixa1.Enabled := True;
    RecebimentodeParcelas1.Enabled := True;
    NomedoCliente1.Enabled := True;
    CancelarOperaes1.Enabled := False;
    ReimprimirOperaes1.Enabled := False;

    tabDinheiro.TabVisible := False;
    tabCheque.TabVisible := False;
    tabChequeEletronico.TabVisible := False;
    tabCartao.TabVisible := False;
    tabCredito.TabVisible := False;
    cbCredito.Checked := False;
    cbCredito.Enabled := False;
    lbCreditoDisponivel.Caption := '0.00';
    dfCreditoUtilizado.MaxValue := 0;
    If (nCreditoCliente + nCreditoDevolucao) > 0 Then Begin
      cbCredito.Enabled := True;
      lbCreditoDisponivel.Caption := FormatFloat( 'R$ #,###,###,###,##0.00', nCreditoCliente + nCreditoDevolucao);
      dfCreditoUtilizado.MaxValue := nCreditoCliente + nCreditoDevolucao;
    End;
// Para Iniciar com uma forma de pgto acionada, retirei pois quando iniciada
// Com uma seleção o sistema nao atualiza o valor a ser pago.
//    s := DMProjeto.Parametro('FormaPgtoVR');
//    SelecionarFPgto( ord(s[1]) );

// MOstrar ou nao o Desconto.

   LabelDesconto.Visible := (DMProjeto.nMaxDescontoFunc > 0);
   dfDesconto.Visible    := (DMProjeto.nMaxDescontoFunc > 0);

   FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;
   pnDescricao.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnItem.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnInfo.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnPgtos.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnProduto.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnQuantidade.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnPreco.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;

   lbTroca.Visible := bTroca;
   Application.ProcessMessages;

    Estado := 'Vendas';

    pgPrincipal.SetPage(tsOperacao);

    PostMessage(Self.Handle, PM_FocusPR, 0, 0);

  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCheckout.IniciarDevolucao;
var nID: integer;
    sNome,sCodigo, sUF: string;
begin
(* Este estado representa quando se está na área de propagandas e tecla-se CTRL+F8 para iniciar a venda *)
  try
   Screen.Cursor := crHourGlass;
   if DlgProps <> nil then //Sem propagandas durante a venda.
     DlgProps.Parar;

    // ---- Movimentação ---- //
    if not C_Venda.Active then
      C_Venda.CreateDataSet
    else
      C_Venda.EmptyDataSet;
    if not C_Mestre.Active then
      C_Mestre.CreateDataSet
    else
      C_Mestre.EmptyDataSet;
    // ---- Pagamentos ---- //
    nIDFormas := 0;
    // Dinheiro
    dfDinheiro.Value := 0;
    // Cheques
    DMFinanceiro.C_Bancos.Close;
    DMFinanceiro.C_Bancos.Open;
    if not C_Cheques.Active then
      C_Cheques.CreateDataSet
    else
      C_Cheques.EmptyDataSet;
    // Cheque Eletrônico
    DMFinanceiro.C_ChequesElet.Close;
    DMFinanceiro.C_ChequesElet.Open;
    if not C_ChequesEletronico.Active then
      C_ChequesEletronico.CreateDataSet
    else
      C_ChequesEletronico.EmptyDataSet;
    // Cartões de Crédito
    DMFinanceiro.C_CartoesCred.Close;
    DMFinanceiro.C_CartoesCred.Open;
    if not C_Cartoes.Active then
      C_Cartoes.CreateDataSet
    else
      C_Cartoes.EmptyDataSet;

    NSU:=''; RedeNSU:='';DataNSU:='';HoraNSU:='';
    sUFCliente := '';

    cbDinheiro.Checked := false;
    cbCheque.Checked := false;
    cbChequeEletronico.Checked := false;
    cbCartao.Checked := false;
    cbCredito.Checked := false;

    cbDinheiro.Enabled := False;
    cbCheque.Enabled := False;
    cbChequeEletronico.Enabled := False;
    cbCartao.Enabled := False;
    cbCredito.Enabled := False;

    C_Mestre.Append;
    C_MestreData.Value := DMProjeto.dDataSistema;
    C_MestreTotalItens.Value := 0;
    C_Mestre.Edit;
    C_MestreTotal.Value := 0;
    C_MestreVolumes.Value := 0;
    C_MestreFavorecido.Value := 1;
    sSituacao := '';
    C_MestreVendedor.Value := 0;
    C_MestreTabelaPadrao.Value := 0;
    C_MestreObs.Value := sObs;
    C_Mestre.Post;
    C_Mestre.Edit;
    if DMProjeto.Parametro('SolicitarClienteVR') = 'S' then begin
      Screen.Cursor := crDefault;
      DlgClienteVR := TDlgClienteVR.Create(self);

      if DlgClienteVR.ShowModal = -1 then begin
        DlgClienteVR.Release;
        exit;
      end;
      if (Not (DlgClienteVR.SenhaValida)) Then Begin
         DlgMsg.ShowMsg(50, ['Senha do cliente não confere!']);
         Exit;
      End;

      nID := DlgClienteVR.Cliente;
      sNome := DlgClienteVR.sCliente;
      sCodigo := DlgClienteVR.sCodigo;
      sUF := DlgClienteVR.sUF;
      cLimiteCredito := DlgClienteVR.cLimiteCredito;
      sTipoEntrega := DlgClienteVR.sTipoEntrega;
      sSituacao := DlgClienteVR.sSituacao;
      DlgClienteVR.Release;
      C_MestreFavorecido.Value := nID;
      C_MestreF_Nome.Value := sCodigo +'-'+sNome;
      C_MestreF_TipoEntrega.Value := sTipoEntrega;
      nCreditoCliente := DMFinanceiro.CreditoFavorecido( nID, true );
      sNomeCliente := sNome;
      sUFCliente := sUF;

    end;

    if (C_MestreVendedor.Value = 0) and
       (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        exit;
      end;
      if C_Mestre.State in [dsInsert,dsEdit] then C_Mestre.Post;
      C_Mestre.Edit;
      C_MestreVendedor.Value := DlgVendedorVMR.nVendedor;
      C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      C_Mestre.Post;
      DlgVendedorVMR.Release;
    end;
    // Nomes do Cliente e Vendedor
    VerificaPainelInfo;

    cbDinheiro.Checked := false;
    cbCheque.Checked := false;
    cbChequeEletronico.Checked := false;
    cbCartao.Checked := false;

    cbDinheiro.Enabled := False;
    cbCheque.Enabled := False;
    cbChequeEletronico.Enabled := False;
    cbCartao.Enabled := False;
    cbCredito.Enabled := False;

    //Ajustando o popup
    IniciarVenda1.Enabled := False;
    IniciarDevoluo1.Enabled := False;
    CancelarVenda1.Enabled := True;
    Salvar1.Enabled := True;
    ConsultarPrecos1.Enabled := True;
    TrocadeBobina1.Enabled := True;
    ComandosparaECF1.Enabled := True;
    AbrirGaveta1.Enabled := True;
    FazerRetirada1.Enabled := True;
    SuprimentodeCaixa1.Enabled := True;
    RecebimentodeParcelas1.Enabled := True;
    NomedoCliente1.Enabled := True;
    CancelarOperaes1.Enabled := False;
    ReimprimirOperaes1.Enabled := False;

    tabDinheiro.TabVisible := False;
    tabCheque.TabVisible := False;
    tabChequeEletronico.TabVisible := False;
    tabCartao.TabVisible := False;
    tabCredito.TabVisible := False;

// Para Iniciar com uma forma de pgto acionada, retirei pois quando iniciada
// Com uma seleção o sistema nao atualiza o valor a ser pago.
//    s := DMProjeto.Parametro('FormaPgtoVR');
//    SelecionarFPgto( ord(s[1]) );

// MOstrar ou nao o Desconto.

   LabelDesconto.Visible := (DMProjeto.nMaxDescontoFunc > 0);
   dfDesconto.Visible    := (DMProjeto.nMaxDescontoFunc > 0);

   FormBkg.Backgroundoptions.picture.Bitmap := msDevolucao.Textura;
   pnDescricao.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnItem.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnInfo.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnPgtos.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnProduto.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnQuantidade.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
   pnPreco.BackgroundOptions.Picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;

   Application.ProcessMessages;

    Estado := 'Vendas';

    // Esta variável controla se vai ser uma devolução...
    bDevolucao := True;
    bTroca := False;
    lbTroca.Visible := True;

    pgPrincipal.SetPage(tsOperacao);

    PostMessage(Self.Handle, PM_FocusPR, 0, 0);

  finally
    Screen.Cursor := crDefault;
  end;
end;

function TFrmCheckout.CancelarOperacao: boolean;
begin
  {PAF}
  If (DMProjeto.PAFObrigatorio) Then Begin
    DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
    FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
  End;
  Result := (Estado = 'Propagandas') or (C_MestreTotalItens.Value = 0) or (DlgMsg.ShowMsg(2700) = 100);
end;


procedure TFrmCheckout.FecharaTela1Click(Sender: TObject);
begin
  inherited;
  if CancelarOperacao and DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CanOpCorr' ) then Close;
end;

procedure TFrmCheckout.TrocadeBobina1Click(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg(6031) = 100 then begin
    FrmMsgECF := TFrmMsgECF.Create(Self);
    FrmMsgECF.LabelMsg.Caption := 'Aguarde...Emitindo Leitura X.';
    FrmMsgECF.Show;
    FrmMsgECF.BringToFront;
    FrmMsgECF.Repaint;
    if not DMECF.ECF1.LeituraX then begin
      FrmMsgECF.Free;
      Exit;
    end;
    FrmMsgECF.Free;
    if DlgMsg.ShowMsg(6028) = 100 then begin
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

procedure TFrmCheckout.ComandosparaECF1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmConfigECF',Self,True);
end;

procedure TFrmCheckout.AbrirGaveta1Click(Sender: TObject);
begin
  inherited;
  DMECF.ECF1.AbreGaveta;
end;

procedure TFrmCheckout.FazerRetirada1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgPgtoInstantaneo', self, true);
end;

procedure TFrmCheckout.SuprimentodeCaixa1Click(Sender: TObject);
var sValor: string;
    nValor: currency;
begin
  inherited;
  sValor := InputBox('Resuprimento de Caixa','Informe o valor recebido:','');
  if sValor = '' then Exit;
  try
    nValor := StrToFloat(sValor);
    if nValor < 0 then begin
      ShowMessage('Valor Inválido');
      Exit;
    end;
    if DlgMsg.ShowMsg( 235, [formatfloat(DMProjeto.sCasasDecimais,nValor), DMFinanceiro.sNomeContaPadrao, '','',''] ) = 100 then begin
      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
      DMFinanceiro.Transferir(1, DMFinanceiro.nContaPadrao, nValor, 'Resuprimento de Caixa: '+DMFinanceiro.Caixa_Nome, '',
                              '', -1, DMProjeto.dDataSistema  );
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      DMFinanceiro.AuditoriaFinanceira( 30, 'Resuprimento de Caixa: '+DMFinanceiro.Caixa_Nome, '', 0, nValor, 0, 0, DMFinanceiro.nContaPadrao );
    end;
  except
    ShowMessage('Valor Inválido');
  end;
end;

procedure TFrmCheckout.RecebimentodeParcelas1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgDepositos', self, true);
end;

procedure TFrmCheckout.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( Shift = [ssAlt]) and (Key = VK_F4) then
  	Key := 0;
  if ( Shift = [ssCtrl]) and (Key = VK_F4) then
     CancelarVenda1Click(Sender);
  if (Shift = [ssCtrl]) and (key = ord('O')) then
    ppmPadrao.PopupFromCursorPos;
  if Estado = 'Vendas' then begin
    Case Key of
      VK_F2 : SolicitarQuantidade := not SolicitarQuantidade;
      VK_F3 : SolicitarPreco := not SolicitarPreco;
    end;
    if (Shift = [ssCtrl]) and (key = ord('D')) then
      if dfDesconto.CanFocus then dfDesconto.SetFocus;
    if (ssCtrl in Shift) and (Key in [ord('1')..ord('5')]) then
      SelecionarFPgto(Key);
  end;
  // Iniciar Venda Para Testes;
{  ShiftF8
  if (Estado = 'Propagandas') and (Shift = [ssShift]) and (Key = VK_F8) then begin
    bECF := False;
    IniciarVenda;
  end;
}
  if (bPermitirVNF) Then Begin
    if (Estado = 'Propagandas') and (Shift = [ssCtrl]) and (key = ord('D')) then begin
      //Application.MessageBox(pChar('A impressora se encontra desligada ou não existe comunicação.'+#13+
      //                             'Favor chamar a assistência tecnica!!!'),pCHar('Erro: Impressora Desligada'),mb_ok);
      bECF := False;
      IniciarVenda;
    end;
  End;
end;

procedure TFrmCheckout.SetSolicitarQuantidade(Value : Boolean);
begin
  bSolicitarQuantidade := Value;

  if (not bSolicitarQuantidade) and (not SempreSolicitarQuantidade) then
    lbQuantidade.Font.Color := clWindowText
  else begin
    lbQuantidade.Font.Color := clRed;
    if dfItem.CanFocus then
    	dfItem.SetFocus;
    if bQtdePrimeiro then
      if dfQuantidade.CanFocus then
      	dfQuantidade.SetFocus;
  end;

end;

procedure TFrmCheckout.SetSolicitarPreco(Value : Boolean);
begin
  if not pnPreco.Visible then begin
    exit;
  end;
  bSolicitarPreco := Value;
  If pgprincipal.ActivePageIndex = 1 then begin
    if (not bSolicitarPreco) and (not SempreSolicitarPreco) then
      lbPreco.Font.Color := clWindowText
    else begin
      dfItem.SetFocus;
      lbPreco.Font.Color := clRed;
    end;
  end;
end;


procedure TFrmCheckout.VerificaPainelInfo;
begin
  pnInfo.Visible := (C_MestreFavorecido.Value > 1) or (C_MestreVendedor.Value > 0);
  pnInfo.Height  := iif(C_MestreVendedor.Value > 0, 54,44);
  lbCCliente.Visible := C_MestreFavorecido.Value > 1;
  lbCliente.Visible := lbCCliente.Visible;
  lbCVendedor.Visible := C_MestreVendedor.Value > 0;
  lbVendedor.Visible := lbCVendedor.Visible;
  cbCredito.Enabled := nCreditoCliente + nCreditoDevolucao > 0;
  lbCreditoDisponivel.Caption := FormatFloat( 'R$ #,###,###,###,##0.00', nCreditoCliente + nCreditoDevolucao );
  dfCreditoUtilizado.MaxValue := nCreditoCliente + nCreditoDevolucao;
end;

procedure TFrmCheckout.dfItemIniciarLocalizar(Sender: TObject;
  var Value: String; var bSkip: Boolean);
begin
  inherited;
  dfItem.TabelaPreco := C_MestreTabelaPadrao.Value;
end;


function TFrmCheckOut.ValorMaxDesconto;
var
    TempDS: TClientDataSet;
    nMaxDesconto, nDescontos: double;
begin

    TempDS := TClientDataSet.Create(self);
    with TempDS do
    begin
        CloneCursor(C_Venda, true);

        First;
        nDescontos := 0;
        nMaxDesconto := 0;

        while not EOF do
        begin
            if FieldByName('TipoItem').asInteger = 6 then
                nDescontos := nDescontos + FieldByName('SubTotal').asFloat;

            nMaxDesconto := nMaxDesconto + FieldByName('cfValorMaxDesconto').asFloat;

            Next;
        end;

        result := nMaxDesconto + nDescontos {os Descontos já são negativos};

    end;
    TempDS.Free;
end;

function TFrmCheckOut.getMaxDesconto: currency;
begin

{ Verificar o Codigo do If abaixo deveria ser utilizado And no local de Or...
        if (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value < 0) or
       (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value < 0) or
       (DMProjeto.nMaxDescontoFunc < 0) then
      nMaxDesconto := 0 {%}



  if DMProjeto.C_LocalizarItensTIPOITEM.Value in [1,2] then begin

    if (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value < 0) and
       (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value < 0) and
       (DMProjeto.nMaxDescontoFunc < 0) then
      nMaxDesconto := 0 {%}

    else if DMProjeto.nMaxDescontoFunc > 0 then
      nMaxDesconto := (DMProjeto.nMaxDescontoFunc/100) {%}

    else if DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value > 0 then
      nMaxDesconto := (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value/100) {%}

    else if DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value > 0 then
      nMaxDesconto := (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value/100) {%}

    else
      nMaxDesconto := 1 {=100%};
  end
  else
    nMaxDesconto := 0;

  result:= nMaxDesconto;
end;

procedure TFrmCheckout.dfItemSelecionou(Sender: TObject);
var nItem: integer;
    nPrecoTabela: currency;
begin
  inherited;
  if DMProjeto.C_LocalizarItensTipoItem.Value > 2 then
    exit;

  nItem := DMProjeto.C_LocalizarItensITEM.Value;

    if (DMProjeto.C_LocalizarItensTIPOITEM.Value in [0, 1]) and (DMProjeto.C_LocalizarItensEstoque.Value <= 0) then
    begin
      if (C_Venda.RecordCount > 0) and (C_VendaQuantidade.Value = 0) then
        C_Venda.delete;

//      if not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'LIBSEMESTQ', '', False, 'Item:' + DMProjeto.C_LocalizarItensDescricao.AsString,
//                                               nItem,'FrmItens') then begin
//        dfItem.Id := 0;
//        dfItem.Text := '';
//        dfPreco.Text := '0.00';
//        dfQuantidade.Text := '1';
//        exit;
//      end;
    end;


    getMaxDesconto;

  nPrecoTabela := DMProjeto.C_LocalizarItensicPreco.AsCurrency;

  if (nPrecoTabela = 0) and (DMProjeto.C_LocalizarItensTIPOITEM.Value IN [1,2]) then begin
    DlgMsg.ShowMsg(2725);
    exit;
  end;

  dfItem.Text := DMProjeto.C_LocalizarItensCodigo.Value;
  dfItem.SelectAll;
  dfPreco.Value := nPrecoTabela;

  {Adicionando na Operacao}
  if not bConsulta then
    AdicionarItem
  else begin
    // Colocar aki o procedimento para consulta de item
  end;

end;

procedure TFrmCheckout.AdicionarItem;
  procedure FinalizarInclusaoItem;
  begin
    dfItem.Clear;
    dfQuantidade.Value := 1;
    dfPreco.Value := 0;
  //Liberar-Teclado.
    try
      if bQtdePrimeiro then
        dfQuantidade.SetFocus
      else
        dfItem.SetFocus;
    except
    end;
  end;
var
  bMoreInfo : Boolean;
  nValorMaxDesconto, quantidade: Currency;
  sDescricao, sCodigoItem: String;
begin
  {Verificando se é o Momento de Adicionar}
  bMoreInfo := (SolicitarQuantidade or SolicitarPreco) or SempreSolicitarQuantidade or SempreSolicitarPreco;
  OldSolicitarQtde := SolicitarQuantidade;

  if (ActiveControl = dfItem) and bMoreInfo then begin
    if (SolicitarQuantidade or SempreSolicitarQuantidade) and (not bQtdePrimeiro) then begin
      SolicitarQuantidade := false;
      dfQuantidade.SetFocus;
      dfQuantidade.SelectAll;
      exit;
    end;

    if SolicitarPreco or SempreSolicitarPreco then begin
      SolicitarPreco := false;
      if pnPreco.Visible then begin
        if dfPreco.CanFocus then begin
          dfPreco.SetFocus;
          dfPreco.SelectAll;
        end;
        exit;
      end;
    end;
    end
  else if ActiveControl = dfQuantidade then begin
    if bQtdePrimeiro then begin
      SolicitarQuantidade := false;
      dfItem.SetFocus;
      dfItem.SelectAll;
      exit;
      end
    else if SolicitarPreco or SempreSolicitarPreco then begin
      SolicitarPreco := false;
      if pnPreco.Visible then begin
        if dfPreco.CanFocus then begin
          dfPreco.SetFocus;
          dfPreco.SelectAll;
        end;
        exit;
      end;
    end;
  end;

  {Considera-se que a última pesquisa é a do item que está sendo adicionado}
  if dfItem.Text = '' then
    exit;

  if dfQuantidade.Value <= 0 then begin
    DlgMsg.ShowMsg( 7008 );
    dfQuantidade.SetFocus;
    dfQuantidade.SelectAll;
    exit;
  end;

  if (dfPreco.Value <= 0) and (DMProjeto.C_LocalizarItensTIPOITEM.Value in [1,2]) then begin
		DlgMsg.ShowMsg( 7009 );
    if dfPreco.CanFocus then begin
    	dfPreco.SetFocus;
      dfPreco.SelectAll;
    end else begin
    	dfItem.SetFocus;
      dfItem.SelectAll;
    end;
    exit;
  end;


//Trava-Teclado.
  C_Venda.Append;
  Inc(Seq);
  C_VendaSequencia.Value := Seq;
  C_VendaTipoItem.Value := DMProjeto.C_LocalizarItensTipoItem.Value;
  C_VendaCodigo.Value := DMProjeto.C_LocalizarItensCODIGO.Value;
  C_VendaCodigoBarras.Value := DMProjeto.C_LocalizarItensCODIGOBarras.Value;  
  C_VendaDescricao.Value := DMProjeto.C_LocalizarItensDescricao.Value;
  C_VendaReferencia.Value := DMProjeto.C_LocalizarItensReferencia.Value;
  C_VendaCustoMedio.Value := DMProjeto.C_LocalizarItensCustoMedio.Value;
  C_VendaCustoContabil.Value := DMProjeto.C_LocalizarItensCustoContabil.Value;
  C_VendaContaVenda.Value := DMProjeto.C_LocalizarItensConta_Venda.value;
  C_VendaFator.Value := DMProjeto.C_LocalizarItensFatorItemUnd.AsFloat;
  C_VendaPrecoTabela.Value := DMProjeto.C_LocalizarItensicPreco.Value;
  C_VendaUnidade.Value := dfItem.sUltimaUnidade;
  C_VendaCST.value         := IIF(DMProjeto.C_LocalizarItensCST.value = '',
                                  DMProjeto.C_LocalizarItensCSTGrupo.value,
                                  DMProjeto.C_LocalizarItensCST.value);
  C_VendaGrupoComissao.Value := DMProjeto.C_LocalizarItensGRUPOCOMISSAO.Value;
  C_VendaIdTribFederal.Value := DMProjeto.C_LocalizarItensIdTribFederal.Value;
  if C_VendaCST.Value = '' then
    C_VendaCST.Value := '00';

  C_VendaSituacaoECF.Value := DMProjeto.C_LocalizarItensSituacaoECF.Value;
  if C_VendaSituacaoECF.Value = '' then
    C_VendaSituacaoECF.Value := 'T';

  if DMProjeto.C_LocalizarItensIPIVenda.value > 0 then
    C_VendaIPI.Value := DMProjeto.C_LocalizarItensIPIVenda.value;
  C_VendaReducaoCST.value  := IIF(DMProjeto.C_LocalizarItensReducaoCST.value = -999,
                                  DMProjeto.C_LocalizarItensReducaoCSTGrupo.value,
                                  DMProjeto.C_LocalizarItensReducaoCST.value);
  if C_VendaReducaoCST.Value < 0 then
    C_VendaReducaoCST.Value := 0;
  if C_VendaTipoItem.value in [1,2] then begin
    C_VendaAliqICMS.value := IIF(DMProjeto.C_LocalizarItensAliqICMS.value = -999,
                                 DMProjeto.C_LocalizarItensAliqICMSGrupo.value,
                                 DMProjeto.C_LocalizarItensAliqICMS.value);
  end else
    C_VendaAliqICMS.value := 0;
  C_VendaTVA.value := DMProjeto.C_LocalizarItensTVAFonte.value;

  if C_VendaSituacaoECF.value <> 'T' then
    C_VendaAliqICMS.AsVariant := 0;

  if (dfPreco.Value < DMProjeto.C_LocalizarItensPrecoPromocao.Value) then begin
    dfPreco.Value := DMProjeto.C_LocalizarItensPrecoPromocao.Value;
    DlgMsg.ShowMsg(8041);
//    raise Exception.Create('@@');
  end;

  //Verificando o desconto
  if (C_VendaPrecoTabela.Value - dfPreco.Value > nMaxDesconto * C_VendaPrecoTabela.Value) and
     (not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'Perdescmax','', False, 'Item:' + C_VendaDescricao.Value,
                                               DMProjeto.C_LocalizarItensItem.Value,'FrmItens')) then
  begin
    dfPreco.Value      := C_VendaPrecoTabela.Value;
    C_VendaPreco.Value := C_VendaPrecoTabela.Value;
  end
  else
    C_VendaPreco.Value := dfPreco.Value;


  if (C_VendaTipoItem.Value in [1, 2, 3]) and (C_VendaPrecoTabela.Value > 0) and
     (dfPreco.Value > C_VendaPrecoTabela.Value+(0.001)) and
     (not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'AUMENTPREC','',False,'Cliente:'+sNomeCliente+#13#10+
                                                       'Item:'+C_VendaDescricao.AsString+#13#10+'Preço:'+dfPreco.Text,C_MestreFavorecido.Value,'DlgSitCliente')) then
  begin
    dfPreco.Value      := C_VendaPrecoTabela.Value;
    C_VendaPreco.Value := C_VendaPrecoTabela.Value;
  end
  else begin
    C_VendaPreco.Value := dfPreco.Value;
  end;

  if (C_VendaTipoItem.Value in [1, 2, 3]) and (C_VendaPrecoTabela.Value > 0) and
     (dfPreco.Value < C_VendaPrecoTabela.Value-(0.001)) and
     (not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'DIMINPREC','',False,'Cliente:'+sNomeCliente+#13#10+
                                                       'Item:'+C_VendaDescricao.AsString+#13#10+'Preço:'+dfPreco.Text,C_MestreFavorecido.Value,'DlgSitCliente')) then
       C_VendaPreco.Value := C_VendaPrecoTabela.Value
  else
    C_VendaPreco.Value := dfPreco.Value;

  C_VendaicX.Value := 'X';
  C_VendaicIG.Value := '=';
  C_VendaTabelaPreco.Value := C_MestreTabelaPadrao.Value;
  C_VendaIdItem.Value := DMProjeto.C_LocalizarItensItem.Value;
  if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
     quantidade := DMProjeto.C_LocalizarItensicQuantidade.Value
  else
    quantidade := dfQuantidade.Value;


  if dfItem.QtdNoCodigo <> '' Then Begin
     quantidade :=  StrToFloat(dfItem.QtdNoCodigo);
     dfItem.QtdNoCodigo:='';
  End;


  if dfItem.Ean13Preco <> '' Then Begin
     If DMProjeto.Parametro('EAN13Quantidade') = 'S' Then Begin
       quantidade :=  1;
       dfPreco.Value := RoundTo((StrToCurr(dfItem.Ean13Preco)/100),-3);
       C_VendaPreco.Value := dfPreco.Value;
     End Else Begin
       quantidade :=  RoundTo((StrToCurr(dfItem.Ean13Preco)/100) / dfPreco.Value,-3);
     End;
     dfItem.Ean13Preco:='';
  End;

  if (DMProjeto.C_LocalizarItensicEstoqueVenda.Value < quantidade) then begin
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'LIBSEMESTQ', '', False, 'Item:' + C_VendaDescricao.AsString,
                                         DMProjeto.C_LocalizarItensItem.Value,'FrmItens') then begin
      C_Venda.Cancel;
      FinalizarInclusaoItem;
      Exit;
    end
    else
      C_VendaQUANTIDADE.Value := quantidade
  end
  else
    C_VendaQUANTIDADE.Value := quantidade;
  if Frac(quantidade) > 0 then C_VendaVOLUME.Value := 1
  else C_VendaVOLUME.Value := Trunc(quantidade);
  C_VendaSubTotal.Value := RoundTo(C_VendaQuantidade.Value * C_VendaPreco.Value,-2);
////////////
  if ((DMPRojeto.PAFObrigatorio) and (C_VendaCODIGOBARRAS.AsString <> '')) Then
    sCodigoItem := C_VendaCODIGOBARRAS.AsString
  Else
    sCodigoItem := C_VendaCODIGO.AsString;
  if bECF then begin
    if (DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') then begin
      if DMECF.ECF1.VendeItem(sCodigoItem,
                              RetiraAcentos(C_VendaDESCRICAO.AsString),
                              C_VendaSITUACAOECF.AsString,
                              iif((C_VendaREDUCAOCST.Value > 0),FormatFloat('00.00',RoundTo((100-C_VendaREDUCAOCST.Value)*C_VendaALIQICMS.Value/100,-2)),FormatFloat('00.00',C_VendaALIQICMS.Value)),
                              'F',
                              FormatFloat('0.000',C_VendaQUANTIDADE.Value),
                              DMProjeto.nCasasDecimais,
                              FormatFloat(DMProjeto.sCasasDecimais,C_VendaPRECO.Value),
                              '$',
                              '0000', Copy(C_VendaUnidade.AsString,1,2)) then Begin
        C_Venda.Post;
        SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
      End else
        C_Venda.Cancel;
      {PAF}
      DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
      FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
    end else begin
      if DMECF.ECF1.AbreCupom('') then begin
        if DMECF.ECF1.VendeItem(sCodigoItem,RetiraAcentos(C_VendaDESCRICAO.Value),C_VendaSITUACAOECF.Value,
           iif((C_VendaREDUCAOCST.Value > 0),FormatFloat('00.00',RoundTo((100-C_VendaREDUCAOCST.Value)*C_VendaALIQICMS.Value/100,-2)),FormatFloat('00.00',C_VendaALIQICMS.Value)),
             'F',FormatFloat('0.000',C_VendaQUANTIDADE.Value),DMProjeto.nCasasDecimais,FormatFloat(DMProjeto.sCasasDecimais,C_VendaPRECO.Value),'$','0000',Copy(C_VendaUnidade.AsString,1,2)) then Begin
          C_Venda.Post;
          SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
        End else
          C_Venda.Cancel;
        {PAF}
        DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
        FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
      end else
        C_Venda.Cancel;
    end;
  end;

  if (C_Venda.State in [dsInsert,dsEdit]) then C_Venda.Post;

  if not dbtDescItem.Visible then begin
    dbtDescItem.Visible := true;
    dbtQuantidade.Visible := true;
    dbtPrecoUnit.Visible := true;
    dbtSubTotal.Visible := true;
    lbX.Visible := true;
    lbIg.Visible := true;
  end;

  FinalizarInclusaoItem;

end;


procedure TFrmCheckout.dfQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0','1','2','3','4','5','6','7','8','9','+','-',#10,#13,DecimalSeparator,'.']) then
  	Key := #0;

  If (key in ['.',',']) Then
   Key := DecimalSeparator;

  if Key = #13 then
    if dfQuantidade.Value <= 0 then begin
       ShowMessage('A Quantidade dever ser Maior Que Zero!');
       dfQuantidade.SetFocus;
    end
    else
    If dfQuantidade.Value > 9999 Then Begin
       Beep.BeepFor(740, 80);
       Beep.BeepFor(880, 80);
       dfQuantidade.SetFocus;
    End
    Else
       AdicionarItem;
end;

procedure TFrmCheckout.dfPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0','1','2','3','4','5','6','7','8','9','+','-',#10,#13,DecimalSeparator]) then
  	Key := #0;
  if Key = #13 then
    AdicionarItem;
end;

procedure TFrmCheckout.Parametros1Click(Sender: TObject);
begin
  inherited;
  SempreSolicitarQuantidade := DMProjeto.Parametro('SemprePedirNaVR')[1] in ['A','Q'];
  SempreSolicitarPreco   := DMProjeto.Parametro('SemprePedirNaVR')[1] in ['A','P'];
  SolicitarQuantidade := SempreSolicitarQuantidade;
  SolicitarPreco := SempreSolicitarPreco;
  bQtdePrimeiro  := DMProjeto.Parametro('QuantidadePrimeiroVR') = 'S';
  if bQtdePrimeiro then
    pnQuantidade.align := alLeft
  else
  	pnQuantidade.align := alRight;
end;

procedure TFrmCheckout.C_VendaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_Venda.State = dsInsert then begin
    if C_Mestre.State in [dsInsert,dsEdit] then C_Mestre.Post;
    C_Mestre.Edit;
    C_MestreTotalItens.Value := C_MestreTotalItens.Value + C_VendaSubTotal.Value;
    C_Mestre.Edit;
    C_MestreVolumes.Value := C_MestreVolumes.Value + C_VendaVolume.Value;
    C_Mestre.Post;
  end;
end;

procedure TFrmCheckout.C_VendaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if C_Mestre.State in [dsInsert,dsEdit] then C_Mestre.Post;
  C_Mestre.Edit;
  C_MestreTotalItens.Value := C_MestreTotalItens.Value - C_VendaSubTotal.Value;
  C_Mestre.Edit;
  C_MestreVolumes.Value := C_MestreVolumes.Value - C_VendaVolume.Value;
  C_Mestre.Post;
end;

procedure TFrmCheckout.CancelarVenda1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CanOpCorr' ) then
    exit;

  if CancelarOperacao then begin
    if (C_MestreTOTALItens.Value <> 0) and (bECF) then
      DMECF.ECF1.CancelaUltimoCupom;
    EstadoInicial;
  end;
end;

procedure TFrmCheckout.IniciarVenda1Click(Sender: TObject);
begin
  inherited;
  bECF := DMProjeto.bECFAtivo;
  IniciarVenda;
end;

procedure TFrmCheckout.C_MestreDescontoChange(Sender: TField);
var
    nMax: Currency;
    bPodeDesconto: boolean;
begin
  if not bPostMestre then
    if Sender.asCurrency > 0 then begin
      Sender.asCurrency := -Sender.asCurrency;
      exit;
    end;
  inherited;
  {Verificando o MaxDesconto que pode ser dado.
   O MaxDesconto permitido considera também os Itens do Tipo Desconto
   que tenham sido colocados no grid}
  if (Sender.asCurrency < 0) and (Sender.asCurrency <> C_MestreOldDesconto.asCurrency) then begin
    nMax := ValorMaxDesconto;
    nMax := IIF(nMax < 0, 0, nMax);

    if (ABS(Sender.asCurrency) - nMax > 0.009) then begin
      bPodeDesconto := DMProjeto.LerPermissao(self.Name, 'Perdescmax');

      if bPodeDesconto then
          DlgMsg.ShowMsg(2750, [' ', FormatCurr('#,##0.00', nMax)], 'SemAlertarDescontoMax')
      else if not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'Perdescmax','',False,
                                                   'Cliente:'+C_MestreF_NOME.AsString+#13#10+
                                                   'Item:'+C_VendaDESCRICAO.AsString+#13#10+
                                                   'Valor:'+C_VendaPreco.AsString) then
      begin
          Sender.asCurrency := -nMax; //irá ocorrer o Change novamente, que atribuirá a OldDesconto.
          exit;
      end;
    end;
  end;

  C_MestreOldDesconto.Value := Sender.asCurrency;

  AtualizaTotalFinal(false);
end;

procedure TFrmCheckout.AtualizaTotalFinal;
begin
  if C_Mestre.State = dsBrowse then
  C_Mestre.Edit;
  C_MestreTOTAL.asCurrency :=  C_MestreTOTALITENS.asCurrency + C_MestreDESCONTO.asCurrency;  {O Desconto é negativo}
  if (bExecRecebido) then
    AtualizarRecebido;
end;

procedure TFrmCheckout.C_MestreTotalItensChange(Sender: TField);
begin
  inherited;
  AtualizaTotalFinal;
end;

procedure TFrmCheckout.NomedoCliente1Click(Sender: TObject);
begin
  inherited;
  InformaCliente;
end;

procedure TFrmCheckout.InformaCliente;
var nID: integer;
    sNome, sCodigo, sUF, sObs: string;
begin
  DlgClienteVR := TDlgClienteVR.Create(self);

  if DlgClienteVR.ShowModal = -1 then begin
    DlgClienteVR.Release;
    exit;
  end;
  if (Not (DlgClienteVR.SenhaValida)) Then Begin
    DlgMsg.ShowMsg(50, ['Senha do cliente não confere!']);
    Exit;
  End;


  nID := DlgClienteVR.Cliente;
  sNome := DlgClienteVR.sCliente;
  sCodigo := DlgClienteVR.sCodigo;
  sUF := DlgClienteVR.sUF;
  sTipoEntrega := DlgClienteVR.sTipoEntrega;
  cLimiteCredito := DlgClienteVR.cLimiteCredito;
  sSituacao := DlgClienteVR.sSituacao;
  sObs := DlgClienteVR.SObs;
  C_Mestre.Edit;
  C_MestreF_CPF_CNPJ.Value := DlgClienteVR.sCPF_CNPJ;
  DlgClienteVR.Release;

  if (sSituacao = 'B') then
    DlgMsg.ShowMsg(2152, [sObs]);

  if C_Mestre.State = dsBrowse then
    C_Mestre.Edit;
  C_MestreFavorecido.Value := nID;
  C_MestreF_Nome.Value := sCodigo +'-'+sNome;
  C_MestreF_TipoEntrega.Value := sTipoEntrega;
  sNomeCliente := sNome;
  sUFCliente := sUF;
  nCreditoCliente := DMFinanceiro.CreditoFavorecido( nID, true );

  {Bloquear se Atrasado}
   if ((GetDevolvidos > 0) Or (GetAtrasados > 0)) and (TipoMovimento('BloquearSeAtrasado') = 'S')
   and not DMProjeto.DlgAutorizacao.ExecuteX('FrmCheckout', 'LIBSEATRAS','',False,
                                                 'Cliente:'+sNome+#13#10,nID,
                                                 'DlgSitCliente') then begin
     C_MestreFavorecido.Value := nIDCliente;
     DlgMsg.ShowMsg(50, ['Permissão não autorizada, Configurado para o cliente padrão!']);
     exit;
   end;
  VerificaPainelInfo;
end;

procedure TFrmCheckout.lbClienteClick(Sender: TObject);
begin
  inherited;
  InformaCliente;
end;

procedure TFrmCheckout.InformaVendedor;
begin
  Screen.Cursor := crDefault;
  DlgVendedorVMR := TDlgVendedorVMR.Create(self);

  if DlgVendedorVMR.ShowModal = -1 then begin
    DlgVendedorVMR.Release;
    exit;
  end;
  if C_Mestre.State in [dsInsert,dsEdit] then C_Mestre.Post;
  C_Mestre.Edit;
  C_MestreVendedor.Value     := DlgVendedorVMR.nVendedor;
  C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
  C_Mestre.Post;
  DlgVendedorVMR.Release;
end;


procedure TFrmCheckout.lbVendedorClick(Sender: TObject);
begin
  inherited;
  InformaCliente;
end;

procedure TFrmCheckout.dfDescontoKeyPress(Sender: TObject; var Key: Char);
var nValor: Currency;
begin
  inherited;
  if Key = #13 then ActiveControl := nil;

end;

procedure TFrmCheckout.AtualizarRecebido;
var
  nVlCartoes, nRecebido, nTroco, nFaltaReceber : Currency;
begin
  try
    if dbgCartoes.Visible then begin
      if C_Cartoes.State <> dsBrowse then
        C_Cartoes.Post;
      nVlCartoes := dbgCartoes.TotalGeral('Valor');
      end
    else
      nVlCartoes := dfCartao.Value;

    if C_Cheques.State <> dsBrowse then
      C_Cheques.Post;

    if C_ChequesEletronico.State <> dsBrowse then
      C_ChequesEletronico.Post;

  except
    nVlCartoes := dfCartao.Value;
  end;

  nRecebido := dfDinheiro.Value +
               dbgCheques.TotalGeral('Valor') +
               dbgChequesEletronico.TotalGeral('Valor') +
               nVlCartoes + dfCreditoUtilizado.Value;

  nFaltaReceber := C_MestreTotal.Value - nRecebido;
  if nFaltaReceber < 0 then //Implica que o cliente está pagando a mais que o selecionado.
    nTroco := ABS(nFaltaReceber)
  else
    nTroco := 0;

  if not (C_Mestre.State in [dsEdit,dsInsert]) then C_Mestre.Edit;
  C_MestrePgtos.Value := nRecebido;
  C_MestreTroco.Value := nTroco;
  bPostMestre := True;
  C_Mestre.Post;
  bPostMestre := False;
end;


procedure TFrmCheckout.dbgCartoesTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgCartoes.TS_SelectedColumn := 'lkCartoes';
end;

procedure TFrmCheckout.btMaisCartoesClick(Sender: TObject);
begin
  inherited;
  dbgCartoes.Visible := true;
  dbgCartoes.BringToFront;
  dbgCartoes.Align   := alClient;
  nVlParcelas := C_CartoesValorParcelas.Value;
  btUmCartao.Visible := true;
  btMaisCartoes.Visible := false;

  try
    dbgCartoes.SetFocus;
  except
  end;
end;

procedure TFrmCheckout.btUmCartaoClick(Sender: TObject);
begin
  inherited;
  with C_Cartoes do begin
    First;
    Next;
    While RecordCount > 1 do
      Delete;
  end;

  dbgCartoes.Visible := false;
  btUmCartao.Visible := false;
  btMaisCartoes.Visible := True;

  try
    cmbCartao.SetFocus;
  except
  end;
end;

procedure TFrmCheckout.cbDinheiroClick(Sender: TObject);
var
  bSomeVisible : boolean;
  i : integer;
begin
  inherited;
  if cbCartao.Checked then begin
    cbChequeEletronico.Checked := False;
    cbChequeEletronico.Enabled := False;
  end
  else cbChequeEletronico.Enabled := True;
  if cbChequeEletronico.Checked then begin
    cbCartao.Checked := False;
    cbCartao.Enabled := False;
  end
  else cbCartao.Enabled := True;

  bSomeVisible := cbDinheiro.Checked or cbCheque.Checked or cbCartao.Checked or cbChequeEletronico.Checked or
                  cbCredito.Checked;

  {Se não está visível é pq nenhuma forma de pgto está marcada, logo...}
  {if not pgForma.Visible then
    nFaltaReceber := nValorAReceber;}

  pgForma.Visible := bSomeVisible;

  if TdxfCheckBox(Sender).Checked then begin
    pgForma.ShowTab(StrToInt(TdxfCheckBox(Sender).Hint));
    TdxfCheckBox(Sender).Font.Color := clRed;
    end
  else begin
  	pgForma.HideTab(StrToInt(TdxfCheckBox(Sender).Hint));
    TdxfCheckBox(Sender).Font.Color := clWindowText;
  end;

  Application.ProcessMessages;


  {Verifica se o valor total a receber está em uma forma de pagamento,
   Caso esteja, será desmarcado e colocado nesta nova forma de pagamento }
  if (C_MestreTotal.Value = C_MestrePgtos.Value) and (TdxfCheckBox(Sender).Checked) then
    for i:=0 to ComponentCount-1 do begin
      if Components[i] is TdxfCheckBox then
        if Components[i].Tag = 1 then
          if TComponent(Sender).Name <> Components[i].Name then
      			TdxfCheckBox(Components[i]).Checked := false;
    end;

  SetFormaPagamento( StrToInt(TTS_CheckBox(Sender).Hint ) );

  Application.ProcessMessages;


  if TdxfCheckBox(Sender).Checked then
    PostMessage(Self.Handle, PM_SetFocus, StrToInt(TTS_CheckBox(Sender).Hint), 0);

end;

procedure TFrmCheckout.SetFormaPagamento( nIndex : integer );
var sCampo : String;
    Control: TWinControl;
    nFaltaReceber: currency;
begin
  inherited;

  Case nIndex of
    0 : sCampo := 'dfDinheiro';
  end;

  nFaltaReceber := C_MestreTotal.Value - C_MestrePgtos.Value;
  if ((nFaltaReceber > -0.05) And (nFaltaReceber < 0.05)) Then nFaltaReceber := 0;
  if TTS_TabSheet(pgForma.Pages[nIndex]).TabVisible then begin
    if nIndex = 1 then begin
      C_Cheques.Append;
      C_ChequesVencimento.Value	:= DMProjeto.dDataSistema;
      C_Cheques.Post;
    end
    else if nIndex = 2 then begin
      C_ChequesEletronico.Append;
      C_ChequesEletronicoConvenio.Value		:= DMFinanceiro.C_ChequesEletFormaPagamento.Value;
      C_ChequesEletronicoVencimento.Value	:= DMProjeto.dDataSistema;
      C_ChequesEletronico.Post;
      end
    else if nIndex = 3 then begin
      C_Cartoes.Append;
      C_CartoesTipo.Value	:= StrToIntDef(DMProjeto.Parametro('ModoCartao'),1);
      C_Cartoes.Post;
    end else if nIndex = 4 then begin
      dfCreditoUtilizado.Value := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
    end else begin
      Control := TWinControl(FindComponent( sCampo ));
      if Control <> nil then begin
          TTS_CalcEdit(Control).Value := IIF(nFaltaReceber > 0, nFaltaReceber, 0)
      end;
    end;
  end else begin
    if nIndex = 1 then begin
	  	if C_Cheques.Active then
  	  	C_Cheques.EmptyDataSet;
      nNumCheque := 0;
      sChequeNominal := '';
      sAgencia := '';
      sAgenciaDV := '';
      sConta := '';
      sContaDV := '';
      sChequeDV := '';
      sCPF_CNPJ := '';
      AtualizarRecebido;
    end else if nIndex = 2 then begin
	  	if C_ChequesEletronico.Active then
  	  	C_ChequesEletronico.EmptyDataSet;
      AtualizarRecebido;
    end else if nIndex = 3 then begin
	  	if C_Cartoes.Active then
  	  	C_Cartoes.EmptyDataSet;
      AtualizarRecebido;
    end else if nIndex = 4 then begin
      dfCreditoUtilizado.Value := 0;
    end else begin
      Control := TWinControl(FindComponent( sCampo ));
      if Control <> nil then
        TTS_CalcEdit(Control).Value := 0;
    end;
  end;
end;

procedure TFrmCheckout.PMSetFocus(var Msg: TMessage);
var sCampo : String;
    Control: TWinControl;
begin
  inherited;
  try
    sCampo := '';
    Control := nil;

    Case Msg.wParam of
      0 : sCampo := 'dfDinheiro';
      1 : if dbgCheques.CanFocus then dbgCheques.SetFocus;
      2 : if dbgChequesEletronico.CanFocus then dbgChequesEletronico.SetFocus;
      3 : begin
            if dbgCartoes.Visible then begin
              if dbgCartoes.CanFocus then dbgCartoes.SetFocus;
            end else begin
              if cmbCartao.Canfocus then cmbCartao.SetFocus;
            end;
          end;
       4 : sCampo := 'dfCreditoUtilizado';   
    end;


    if sCampo <> '' then begin
      Control := TWinControl(FindComponent( sCampo ));

      if (Control <> nil) and TTS_CalcEdit(Control).CanFocus then begin
        TTS_CalcEdit(Control).SetFocus;
        TTS_CalcEdit(Control).SelectAll;
      end;

    end;

  except
  end;
end;

procedure TFrmCheckout.PMFocusPR(var Msg: TMessage);
begin
  ActiveControl := nil;
  if bQtdePrimeiro then begin
    if dfQuantidade.Canfocus then
      ActiveControl := dfQuantidade;
  end else ActiveControl := dfItem;
end;



procedure TFrmCheckout.C_ChequesNewRecord(DataSet: TDataSet);
var nFaltaReceber: currency;
begin
  inherited;
  Dec(nIDFormas);

  nFaltaReceber := C_MestreTotal.Value - C_MestrePgtos.Value;
  C_ChequesIDCheque.Value			  := nIDFormas;
  C_ChequesNumCheque.Value		  := nNumCheque;
  C_ChequesVencimento.Value		  := DMProjeto.dDataSistema;
  C_ChequesValor.Value          := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
  C_ChequesChequeNominal.Value  := sNomeCliente;
  C_ChequesAgencia.Value        := sAgencia;
  C_ChequesAgenciaDV.Value      := sAgenciaDV;
  C_ChequesConta.Value          := sConta;
  C_ChequesContaDV.Value        := sContaDV;
  C_ChequesChequeDV.Value       := sChequeDV;
  C_ChequesCPF_CNPJ.Value       := sCPF_CNPJ;

  if nLastBanco > 0 then
    C_ChequesBanco.Value := nLastBanco;

  C_ChequesChequeNominal.Value := sChequeNominal;
end;

procedure TFrmCheckout.C_ChequesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_ChequesNumCheque.AsInteger <> 0 then
    nNumCheque := C_ChequesNumCheque.AsInteger + 1
  else
    nNumCheque := 1;

  if C_ChequesBanco.Value > 0 then
    nLastBanco := C_ChequesBanco.Value
  else
    nLastBanco := 0;

  sChequeNominal := C_ChequesChequeNominal.Value;
  sAgencia := C_ChequesAgencia.Value;
  sAgenciaDV := C_ChequesAgenciaDV.Value;
  sConta := C_ChequesConta.Value;
  sContaDV := C_ChequesContaDV.Value;
  sChequeDV := C_ChequesChequeDV.Value;
  sCPF_CNPJ := C_ChequesCPF_CNPJ.Value;
end;

procedure TFrmCheckout.TitulardoCheque1Click(Sender: TObject);
begin
  inherited;
  TitularDoCheque1.Checked := not TitularDoCheque1.Checked;

  dbgChequesChequeNominal.Visible := TitularDoCheque1.Checked;
end;

procedure TFrmCheckout.IncluirNovoBanco1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmBancos',self,true);
  DMFinanceiro.C_Bancos.Close;
  DMFinanceiro.C_Bancos.Open;
  try
    C_Cheques.Edit;
    C_ChequesBanco.Value := LastDataObject.ObjectKey;
  except
  end;
end;

procedure TFrmCheckout.IncluirNovoCarto1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([cmbCartao.LookupKeyValue,3]);
  DMProjeto.CriarForm('FrmFormasPagamento',self,true);
end;

procedure TFrmCheckout.TS_Label5SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([cmbCartao.LookupKeyValue,3]);
end;

procedure TFrmCheckout.C_CartoesNewRecord(DataSet: TDataSet);
var nFaltaReceber: currency;
begin
  inherited;
  Dec(nIDFormas);
  nFaltaReceber := C_MestreTotal.Value - C_MestrePgtos.Value;
  C_CartoesIDCartao.Value			:= nIDFormas;
  C_CartoesTipo.Value		      := StrToIntDef(DMProjeto.Parametro('ModoCartao'),1);
  C_CartoesParcelas.Value			:= 1;
  C_CartoesValor.Value        := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
  nVlParcelas                 := C_CartoesValor.Value;  //Para não dar erro se o dbgCartoes estiver visivel.
  C_CartoesValorParcelas.Value:= C_CartoesValor.Value;
end;

procedure TFrmCheckout.dfDinheiroChange(Sender: TObject);
begin
  inherited;
  if Estado = 'Vendas' then AtualizarRecebido;
end;

procedure TFrmCheckout.C_ChequesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TFrmCheckout.C_CartoesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TFrmCheckout.tabCartaoExit(Sender: TObject);
begin
  inherited;
  if C_Cartoes.State <> dsBrowse then
    C_Cartoes.Post;
end;

procedure TFrmCheckout.tabChequeExit(Sender: TObject);
begin
  inherited;
  if C_Cheques.State <> dsBrowse then
    C_Cheques.Post;
end;

procedure TFrmCheckout.dfNumParcelasChange(Sender: TObject);
begin
  inherited;
  if ActiveControl = dfNumParcelas then begin
    if C_Cartoes.State = dsBrowse then
      C_Cartoes.Edit;

    if dfNumParcelas.Value > 0 then
      C_CartoesValorParcelas.Value := dfCartao.Value / dfNumParcelas.Value
    else
      C_CartoesValorParcelas.Value := 0;
  end;

end;

procedure TFrmCheckout.dbgCartoesParcelasChange(Sender: TObject);
begin
  inherited;
  if StrToIntDef(dbgCartoes.TS_Text,0) > 0 then
    nVlParcelas := dfCartao.Value / StrToIntDef(dbgCartoes.TS_Text,1)
  else
    nVlParcelas := 0;

  dbgCartoes.SetFieldValue(dbgCartoes.FocusedNode,'ValorParcelas', nVlParcelas);
end;

procedure TFrmCheckout.dbgCartoesValorChange(Sender: TObject);
begin
  inherited;
  if C_CartoesParcelas.Value > 0 then
    nVlParcelas := StrToFloatDef(dbgCartoes.TS_Text,0) / C_CartoesParcelas.Value
  else
    nVlParcelas := 0;

  dbgCartoes.SetFieldValue(dbgCartoes.FocusedNode,'ValorParcelas', nVlParcelas);
end;

procedure TFrmCheckout.dbgCartoesEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if C_Cartoes.State = dsBrowse then
    exit;

  if ( (UpperCase(dbgCartoes.TS_SelectedColumn) = 'PARCELAS') or (UpperCase(dbgCartoes.TS_SelectedColumn) = 'VALOR')) and
     (C_CartoesValorParcelas.Value <> nVlParcelas) then
    C_CartoesValorParcelas.asCurrency := nVlParcelas;
end;

procedure TFrmCheckout.dfCartaoChange(Sender: TObject);
begin
  inherited;
  if C_Cartoes.State = dsBrowse then
    C_Cartoes.Edit;

  if C_CartoesParcelas.Value > 0 then
    C_CartoesValorParcelas.Value := dfCartao.Value / C_CartoesParcelas.Value
  else
    C_CartoesValorParcelas.Value := 0;

  AtualizarRecebido;
end;

procedure TFrmCheckout.SelecionarFPgto;
begin
  Case key of
    ord('1') : if cbDinheiro.Enabled then begin
               cbDinheiro.Checked := not cbDinheiro.Checked;
               if nValor > 0 then
                 dfDinheiro.Value := nValor;
               end;
    ord('2') : if cbCheque.Enabled then begin
               cbCheque.Checked := not cbCheque.Checked;
               if nValor > 0 then begin
                 C_Cheques.Edit;
                 C_ChequesValor.asCurrency := nValor;
               end;
               end;
    ord('3') : if cbChequeEletronico.Enabled then begin
               cbChequeEletronico.Checked := not cbChequeEletronico.Checked;
               if nValor > 0 then begin
                 C_ChequesEletronico.Edit;
                 C_ChequesEletronicoValor.asCurrency := nValor;
               end;
               end;
    ord('4') : if cbCartao.Enabled then begin
               cbCartao.Checked := not cbCartao.Checked;
               C_Cartoes.Edit;
               if (Not cbCartao.Checked) Then
                  C_CartoesValor.Value := 0;
               if nValor > 0 then
                 C_CartoesValor.Value := nValor;
               if nQtdVezes > 1 then begin
                 C_CartoesParcelas.Value := nQtdVezes;
                 dfNumParcelasChange(self);
               end;
               end;
    ord('5') : if cbCredito.Enabled then begin
                 cbCredito.Checked := not cbCredito.Checked;
                 if nValor > 0 then
                   dfCreditoUtilizado.Value := nValor;
               end;
  end;
end;


procedure TFrmCheckout.dbgChequesColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if Column.FieldName = 'lkBanco' then begin
    IncluirNovoBanco1Click(Self);
  end;
	Allow := false;
end;

procedure TFrmCheckout.C_ChequesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TFrmCheckout.C_CartoesCartaoChange(Sender: TField);
begin
  inherited;
  bCartaoTEF := False;
  DMFinanceiro.C_CartoesCred.Locate('formapagamento',C_CartoesCartao.value,[]);
  bCartaoTEF := (DMFinanceiro.C_CartoesCredCARTAOTEF.AsString = 'S');
  C_CartoesContaCartao.value := DMFinanceiro.C_CartoesCredContaReceber.value;
  if C_CartoesContaCartao.value = 0 then
    C_CartoesContaCartao.value := 1;
end;

procedure TFrmCheckout.C_ChequesEletronicoNewRecord(DataSet: TDataSet);
var nFaltaReceber: currency;
begin
  inherited;
  nFaltaReceber := C_MestreTotal.Value - C_MestrePgtos.Value;
  Dec(nIDFormas);
  DataSet['ID'] := nIDFormas;
  DataSet['Vencimento'] := DMProjeto.dDataSistema;
  DataSet['Valor'] := iif(nFaltaReceber > 0,nFaltaReceber,0);
  dbgChequesEletronico.TS_SelectedColumn  := 'Valor';
end;

procedure TFrmCheckout.tabChequeEletronicoExit(Sender: TObject);
begin
  inherited;
  if C_ChequesEletronico.State <> dsBrowse then
    C_ChequesEletronico.Post;
end;

procedure TFrmCheckout.dbgChequesEletronicoColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
   if UpperCase(Column.FieldName) = 'DESCCONVENIO' then begin
  	Allow := false;
    DMProjeto.SetParametrosForm([null,2]);
    DMProjeto.CriarForm('FrmFormasPagamento',self,true);
   end;
end;

procedure TFrmCheckout.C_ChequesEletronicoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TFrmCheckout.dfItemNaoAchou(Sender: TObject);
begin
  inherited;
  dfItem.SetFocus;
  dfItem.SelectAll;
end;

procedure TFrmCheckout.Salvar1Click(Sender: TObject);
var Recebido, Total, Troco,
    Dinheiro, Cheque, ChqEletro, Cartao, Credito,
    nDiferencaParcelas, nCartao, nTotalCreditos : currency;
    cb_imprimirop, itens, num, numdev,
    NSU, RedeNSU, DataNSU, HoraNSU, {sObs,} sDeposito: string;
    i, j, IdMestre, Titulo, Deposito, IDDevolucao,nFormaPgto : integer;
    dtVencimento: TDateTime;
    bGravou: boolean;
    sBloquearPorSituacao : String;
begin

  inherited;

  ActiveControl := nil; //Para forçar confirmação de algum campo que esteja em edição;

  if cbCartao.Checked then begin
    If cmbCartao.Text = '' Then Begin
      DlgMsg.ShowMsg(50, ['Você deve escolher um cartão de credito!']);
      ActiveControl := cmbCartao;
      cmbCartao.DroppedDown := True;
      sF5 := 'Livre';
      Exit;
    End;
  End;

  if (C_Venda.State in [dsInsert,dsEdit]) then C_Venda.Post;

  if (C_Cheques.State in [dsInsert,dsEdit]) then C_ChequesEletronico.UpdateRecord;
  if (C_ChequesEletronico.State in [dsInsert,dsEdit]) then C_ChequesEletronico.UpdateRecord;
  if (C_Cartoes.State in [dsInsert,dsEdit]) then C_Cartoes.UpdateRecord;
  if (C_Mestre.State in [dsInsert,dsEdit]) then C_Mestre.UpdateRecord;
  nTotalCreditos := 0;
  Recebido := C_MestrePgtos.AsCurrency;
  Total := C_MestreTotal.AsCurrency;
// Bloqueio do Limite de Crédito Quando não for consumidor final
  if (cLimiteCredito > 0) Then Begin
    with Q_SQL do begin
         Close;
         SQL.Text := 'Select coalesce((Select Sum(FaltaReceber) ' +
             '        From TitulosAReceber t where t.Cliente = f.Favorecido ' +
             '        and  t.Status > 0 and t.Status < 50),0) as PAReceber, ' +
             '        coalesce((Select Sum(Valor) from DepositosDoc dd, Depositos d, FormasPagamento Fp ' +
             '        Where dd.Deposito = d.Deposito and dd.FormaPagamento = Fp.FormaPagamento ' +
             '        and   d.Favorecido = f.Favorecido and dd.Status < 50 and Fp.Especie = 1 ' +
             '        and   dd.Vencimento > ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)) + ') ' +
             '        ,0) as ChqPre ' +
             'From Favorecidos f Where Favorecido = ' + C_MestreFavorecido.AsString;
         Open;
         nTotalCreditos := FieldByNAme('PAReceber').asCurrency + FieldByName('ChqPre').asCurrency;
         Close;
    end;
    if ((Total + nTotalCreditos) > cLimiteCredito) then begin
      if DMProjeto.LerPermissao('FrmCheckout', 'LIBSELIMIT') then
         DlgMsg.ShowMsg(2755, [FormatCurr('##,##0.00',cLimiteCredito),FormatCurr('##,##0.00', cLimiteCredito - (Total + nTotalCreditos))])
      else if not DMProjeto.DlgAutorizacao.ExecuteX('FrmCheckout', 'LIBSELIMIT','',False,'Cliente:'+C_MestreF_Nome.AsString+#13#10+
          'Valor:'+FormatCurr('##,##0.00', Total),C_MestreFavorecido.AsInteger,'DlgSitCliente') then
        begin
          exit;
        end;
    end;
  End;
  if (C_Venda.RecordCount < 1) then begin
    DlgMsg.ShowMsg( 929, ['o item.']);
  end;

  if (bDevolucao) then begin
    sItensDevolucao := '';
    C_Venda.DisableControls;
    C_Venda.First;
    While not C_Venda.EOF do begin
      sItensDevolucao := sItensDevolucao + IntToStr(C_VendaIDItem.Value);
      sItensDevolucao := sItensDevolucao + ';' + C_VendaDescricao.Value;
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaQuantidade.Value);
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaPreco.Value);
      sItensDevolucao := sItensDevolucao + ';' + C_VendaUnidade.Value;
      sItensDevolucao := sItensDevolucao + ';' + IntToStr(C_VendaTipoItem.Value);
      sItensDevolucao := sItensDevolucao + ';' + IntToStr(C_VendaTabelaPreco.Value);
      sItensDevolucao := sItensDevolucao + ';' + C_VendaSituacaoECF.Value;
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaReducaoCST.Value);
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaAliqICMS.Value);
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaIPI.Value);
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaCustoMedio.Value);
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaCustoContabil.Value);
      sItensDevolucao := sItensDevolucao + ';' + C_VendaCST.Value;
      sItensDevolucao := sItensDevolucao + ';' + CurrToStr(C_VendaTVA.Value);
      sItensDevolucao := sItensDevolucao + ';' + IntToStr(C_VendaContaVenda.Value);
      sItensDevolucao := sItensDevolucao + ';' + FloatToStr(C_VendaFator.Value) + '||';
      C_Venda.Next;
    end;
    C_Venda.EnableControls;
    if Copy(sItensDevolucao,Length(sItensDevolucao)-2,2) = '||' then
         Delete(sItensDevolucao,Length(sItensDevolucao)-2,2);
    nIDCliente := C_MestreFavorecido.AsInteger;
    sNomeCliente := C_MestreF_Nome.AsString;
    nIDVendedor := C_MestreVendedor.AsInteger;
    sNomeVendedor := C_MestreNomeVendedor.AsString;
    nCreditoDevolucao := Total;
    nDescontoDevolucao := - Abs(C_MestreDesconto.Value);
    bDevolucao := False;
    bTroca := True;
    bECF := DMProjeto.bECFAtivo;
    IniciarVenda;
    exit;
  end;
  if (not bPermitirGravarSemReceber) and (Recebido < Truncar(Total, 2)) then begin
      DlgMsg.ShowMsg( 6048, [formatfloat('#,##0.00',Total - Recebido)] );
      SelecionarFPgto( ord(sFormaPgto[1]) );
      Exit;
  end;
  if C_MestreFavorecido.value < 1 then begin
     DlgMsg.ShowMsg( 929, ['o Cliente'] );
     Exit;
  end;
  if not VerificarComissao then Exit;
  //Verificando o desconto
  //nMaxDesconto
  {Bloquear por Situação}
  //Fabricio
  DMProjeto.Q_SQL.Close;
  DMProjeto.Q_SQL.Sql.Text := 'select tm.bloquearporsituacao from tiposmovimento tm where tm.tipomovimento = '+iif(bECF,'7','700');
  DMProjeto.Q_SQL.Open;
  sBloquearPorSituacao :=  DMProjeto.Q_SQL.fieldbyname('bloquearporsituacao').asString;
  if (sSituacao = 'B') and (sBloquearPorSituacao = 'S')
      and not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'LIBSEBLOQ','',False,'Cliente:'+C_MestreF_NOME.AsString+#13#10+
                                                'Total:'+C_MestreTotal.AsString) then begin
    exit;
  end;

  nFormaPgto:=1;
  If (Not ((cbDinheiro.Checked) Or (cbCheque.Checked) Or (cbChequeEletronico.Checked) Or (cbCartao.Checked)
           or (cbCredito.Checked))) Or (Recebido < Total) Then Begin
    nFormaPgto:=0;
    if (bPermitirGravarSemReceber) and (C_MestreFavorecido.value <= 1) Then Begin
       DlgMsg.ShowMsg( 929, ['o Cliente. Não pode ser Consumidor Final Para Vendas Com DOC DE COBRANÇA.!!!'] );
       Exit;
    End;
  End;

  if (not bPermitirGravarSemReceber) and (Recebido <= 0) then begin
	   DlgMsg.ShowMsg( 929, ['o Recebimento'] );
    Exit;
  end;

  if cbCredito.Checked then Credito := dfCreditoUtilizado.Value
  else Credito := 0;

  if (Credito < nCreditoDevolucao) then begin
    DlgMsg.ShowMsg( 8064, [FormatFloat('#,###,##0.00',nCreditoDevolucao)]);
    Exit;
  end;

  //Verificação da Tecla F5
  if sF5 = 'Gravando' then Exit;
  sF5 := 'Gravando';


  Troco := iif(Recebido - Total > 0, Recebido - Total, 0);

  // Formas de Pagamento
  if cbDinheiro.Checked then Dinheiro := dfDinheiro.Value
  else Dinheiro := 0;

  if cbCheque.Checked then Cheque := dbgCheques.TotalGeral('Valor')
  else Cheque := 0;

  if cbChequeEletronico.Checked then ChqEletro := dbgChequesEletronico.TotalGeral('Valor')
  else ChqEletro := 0;

  if cbCartao.Checked then begin
    try
      if dbgCartoes.Visible then Cartao := dbgCartoes.TotalGeral('Valor')
      else Cartao := dfCartao.Value;
    except
      Cartao := dfCartao.Value;
    end;
  end
  else Cartao := 0;

  // O crédito está acima...

  with Q_SQL do begin
    Close;
    SQL.Text := 'Select cb_imprimirop from tiposmovimento where tipomovimento = '+iif(bECF,'7','700');
    Open;
    cb_imprimirop := FieldByName('cb_imprimirop').AsString;
    Close;
  end;

  Screen.Cursor := crHourglass;

  (* Abrindo a gaveta de dinheiro... *)
  try
     if DMProjeto.Parametro('Gaveta') = 'G' then DMECF.ECF1.AbreGaveta;


    if Not (FinalizaCupomTef( sObs )) then begin
      Screen.Cursor := crDefault;
      sF5 := 'Livre';
      Exit;
    End;
//Erro Tef Comentar a proxima linha para retornar a situacao anterior.
//  if (FinalizaCupomTef( sObs )) then begin
    (* Gravação da Venda *)
    if bECF then Num := 'COO:' + DMECF.ECF1.COO else Num := '';

    itens := '';
    C_Venda.DisableControls;
    C_Venda.First;
    While not C_Venda.EOF do begin
      itens := itens + IntToStr(C_VendaIDItem.Value);
      itens := itens + ';' + C_VendaDescricao.Value;
      itens := itens + ';' + CurrToStr(C_VendaQuantidade.Value);
      itens := itens + ';' + CurrToStr(C_VendaPreco.Value);
      itens := itens + ';' + C_VendaUnidade.Value;
      itens := itens + ';' + IntToStr(C_VendaTipoItem.Value);
      itens := itens + ';' + IntToStr(C_VendaTabelaPreco.Value);
      itens := itens + ';' + C_VendaSituacaoECF.Value;
      itens := itens + ';' + CurrToStr(C_VendaReducaoCST.Value);
      itens := itens + ';' + CurrToStr(C_VendaAliqICMS.Value);
      itens := itens + ';' + CurrToStr(C_VendaIPI.Value);
      itens := itens + ';' + CurrToStr(C_VendaCustoMedio.Value);
      itens := itens + ';' + CurrToStr(C_VendaCustoContabil.Value);
      itens := itens + ';' + C_VendaCST.Value;
      itens := itens + ';' + CurrToStr(C_VendaTVA.Value);
      itens := itens + ';' + IntToStr(C_VendaContaVenda.Value);
      itens := itens + ';' + FloatToStr(C_VendaFator.Value) ;
      itens := itens + ';' + IntToStr(C_VendaIdTribFederal.Value)+ '||';
      C_Venda.Next;
    end;
    C_Venda.EnableControls;
    if Copy(itens,Length(itens)-2,2) = '||' then
       Delete(itens,Length(itens)-2,2);

    bGravou := False;

    if not DMProjeto.IBT_Projeto.InTransaction Then
      DMProjeto.IBT_Projeto.StartTransaction;
    for i := 1 to 6 do begin
      if (i <= 5) and (DMProjeto.GEN_ID('GENSIST_CONTROLTRANS',true) = 1) then
        sleep(2000)
      else begin
          DMProjeto.SetGeneratorTrans(1);
          (**********************)
          NumDev := '';
          if bTroca then begin
            IDDevolucao := DMProjeto.GerarDevolucao( NumDev,
                                                     C_MestreFavorecido.Value,
                                                     iif(C_MestreVendedor.Value = 0,(DMProjeto.nFuncionarioLogado),C_MestreVendedor.Value),
                                                     sItensDevolucao,
                                                     nDescontoDevolucao );
            DMFinanceiro.RegistrarCredito( C_MestreFavorecido.Value, IDDevolucao, 46, true, 0,
                                           nCreditoDevolucao, 'Devolução #' + NumDev );
          end;
          IdMestre := DMProjeto.GerarSaida( bECF,
                                            Num,
                                            iif(C_MestreFavorecido.Value = 1,nIDCliente,C_MestreFavorecido.Value),
                                            sUFCliente,
                                            (DMProjeto.dDataSistema),
                                            iif(C_MestreVendedor.Value = 0,(DMProjeto.nFuncionarioLogado),C_MestreVendedor.Value),
                                            iif(becf,7,700),
                                            itens,
                                            DMFinanceiro.nContaPadrao,
                                            - Abs(C_MestreDesconto.Value),
                                            C_MestreObs.Value, 0,
                                            bPermitirGravarSemReceber,
                                            nFormaPgto);

          With Q_SQL do begin
            Close;
            Sql.Text := 'select min(id) from titulosareceber where idgerador_areceber = :idmestre';
            ParamByName('idmestre').AsInteger := IdMestre;
            Open;
            Titulo := Fields[0].AsInteger;
          end;
          if (recebido > 0) then begin
            sDeposito := IntToStr(Titulo) + #13 +
                         '_icSelecionado|||ValorAReceber|||Pagamento|||Juros|||Descontos' + #13 +
                         '1|||' + CurrToStr(Recebido) + '|||' + CurrToStr(recebido) + '|||0|||0';

            Deposito := DMFinanceiro.ReceberTitulos(0, sDeposito, C_MestreFavorecido.Value, DMFinanceiro.nContaPadrao, DMProjeto.dDataSistema,
                        0,0,'Venda:'+Num,C_MestreVendedor.Value,iif(Troco >= Dinheiro, Troco-Dinheiro, 0));
            if (Dinheiro > 0) and (Dinheiro > Troco) then
              DMFinanceiro.ReceberDoc( 0, 1, Deposito, 1, Dinheiro - Troco, DMProjeto.dDataSistema, '');
            if (Cheque > 0) and (C_Cheques.Active) then begin
              C_Cheques.DisableControls;
              try
                C_Cheques.First;
                while not C_Cheques.EOF do begin

                  DMFinanceiro.ReceberDoc(0, 1, Deposito, 2, C_ChequesValor.Value,
                                          C_ChequesVencimento.Value, '', C_ChequesNumCheque.Value,
                                          C_ChequesBanco.Value, IIF(C_ChequesChequeNominal.Value = '', C_MestreF_Nome.Value, C_ChequesChequeNominal.Value),
                                          0,0,0,'','',';;;;'+C_ChequesConta.AsString+';'+C_ChequesContaDV.AsString+';'+C_ChequesAgencia.AsString+';'+
                                          C_ChequesAgenciaDV.AsString+';'+C_ChequesChequeDV.AsString+';'+C_ChequesCPF_CNPJ.AsString);

                  C_Cheques.Next;
                end;
              finally
                C_Cheques.EnableControls;
              end;
            end;
            if (ChqEletro > 0) and (C_ChequesEletronico.Active) then begin
              C_ChequesEletronico.DisableControls;
              try
                C_ChequesEletronico.First;
                while not C_ChequesEletronico.EOF do begin

                  DMFinanceiro.ReceberDoc(0, 1, Deposito, C_ChequesEletronicoConvenio.Value, C_ChequesEletronicoValor.Value,
                                          C_ChequesEletronicoVencimento.Value, '', 0,
                                          0, '', 0,0,0,'','',NSU+';'+RedeNSU+';'+DataNSU+';'+HoraNSU+';;;;;;');

                  C_ChequesEletronico.Next;
                end;
              finally
                C_ChequesEletronico.EnableControls;
              end;
            end;
            if (Cartao > 0) and (C_Cartoes.Active) then begin
              C_Cartoes.DisableControls;
              try
                C_Cartoes.First;
                while not C_Cartoes.EOF do begin
                  cartao := cartao + C_CartoesValor.Value;


                  dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, DMProjeto.dDataSistema);
                  nDiferencaParcelas := C_CartoesValor.asCurrency -(C_CartoesParcelas.Value*C_CartoesValorParcelas.asCurrency);

                  for j := 1 to C_CartoesParcelas.Value do begin
                    nCartao := C_CartoesValorParcelas.asCurrency;
                    if (i = C_CartoesParcelas.Value) and (nDiferencaParcelas <> 0) then
                      nCartao := C_CartoesValorParcelas.Value + nDiferencaParcelas;

                    //// Pegando o vencimento pelo intervalo entre parcelas....
                    dtVencimento := DMProjeto.dDataSistema + ( DMFinanceiro.IntervaloParcelas(C_CartoesCartao.Value) * i );

                    DMFinanceiro.ReceberDoc( 0, 1, Deposito, C_CartoesCartao.Value, nCartao,
                                             dtVencimento, '', 0, 0, '',0, C_CartoesTipo.Value,
                                             C_CartoesContaCartao.Value,'','',NSU+';'+RedeNSU+';'+DataNSU+';'+HoraNSU+';;;;;;');

                    if i <> C_CartoesParcelas.Value then
                      dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, dtVencimento);

                  end;
                  C_Cartoes.Next;
                end;
              finally
                C_Cartoes.EnableControls;
              end;
            end;
            {Utilização de Créditos}
            if (Credito > 0) then begin
              DMFinanceiro.ReceberDoc( 0, 1, Deposito, -1, Credito, DMProjeto.dDataSistema, '' );
            end;

            DMFinanceiro.BaixarTitulo(IntToStr(Titulo));
            if (Troco > Dinheiro) then
              DMFinanceiro.LancamentoDeTroco(DMFinanceiro.nContaPadrao,DMProjeto.dDataSistema,Troco-Dinheiro,C_MestreFavorecido.Value, Deposito, 1);
            {Atualizando Créditos Utilizado}
            if (Credito > 0) then            // 'Crédito Utilizado em Depósito
              DMFinanceiro.RegistrarCredito(C_MestreFavorecido.Value, Deposito, 1, TRUE, Credito, 0, Format(DMProjeto.getMsg( 239),['']) );
          end;
          bGravou := True;
          Break;
      end;
    end;
    DMProjeto.SetGeneratorTrans(0);
    if DMProjeto.IBT_Projeto.InTransaction then
      DMProjeto.IBT_Projeto.Commit;
    if not bGravou then begin
      Screen.Cursor := crDefault;
      sF5 := 'Livre';
      Exit;
    end;

    Application.ProcessMessages;

    Screen.Cursor := crDefault;

    if cb_imprimirop = '' then
      cb_imprimirop := 'N';
    if cb_imprimirop[1] in ['I','S'] then
      DMProjeto.ImprimirDocumentosSaida( IdMestre );
    EstadoInicial;
//Erro Tef
//  end else begin // Não finalizou o cupom TEF...
    Screen.Cursor := crDefault;
    sF5 := 'Livre';
    Exit;
//  end;
  except
    on e:exception do begin
      Screen.Cursor := crDefault;
      DlgMsg.ShowMsg( 50, ['ERRO' + #13#10 + e.message] );
    end;
  end;
end;

function TFrmCheckout.FinalizaCupomTEF(sObs: string): boolean;
var Msg, MsgTEF, rede, nsu, data, hora, sCliente,
    sVendedor, sEndereco: string;
    i, k, z, comprovante, PossuiTEF, NroCartoes : integer;
    aprovado, hipercard: boolean;
    valores: array[0..7] of Currency;
    Cupom: TStringList;
    nParcelas: currency;
begin
  Result := True;
  if (TModelo(DMECF.ECF1.Modelo) <> Nenhuma) and (bECF) then begin
    if Abs(C_MestreTOTAL.AsFloat - (DMECF.ECF1.SubTotal + C_MestreDesconto.AsFloat) ) > 0.03 then begin
      if DlgMsg.ShowMsg(6038) = 100 then begin
        DMECF.ECF1.CancelaUltimoCupom;
        Result := False;
      end;
    end;
    DMProjeto.bTimer := False;
    MsgTEF := '';
    rede := '';
    nsu := '';
    data := '';
    hora := '';
    comprovante := 0;
    aprovado := true;
    PossuiTEF := 0;
    Cupom := TStringList.Create;
    ValoresPagos(valores,hipercard, MultCartao);
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
    for i := 0 to 3 do nParcelas := nParcelas + valores[i];
    // Faltou considerar o desconto
    if (nParcelas < DMECF.ECF1.SubTotal + C_MestreDESCONTO.AsFloat) then
       valores[7] := DMECF.ECF1.SubTotal + C_MestreDESCONTO.AsFloat - nParcelas;
    If (DMProjeto.bTEF and bCartaoTEF) Then Begin
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
    if (DMProjeto.bTEF and bCartaoTEF) and (DMProjeto.ParametroTEF('ConsultaCheque') = 'S') and (Valores[2] > 0) then begin
      C_Cheques.First;
      dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
      dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
      While not C_Cheques.Eof do begin
        if dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then begin
          aprovado := dmECF.TEF1.Cheques(IntToStr(DMProjeto.NextID('TEF')),C_ChequesValor.AsCurrency,
          iif(Length(C_ChequesCPF_CNPJ.AsString) > 11, 'J', 'F'), C_ChequesCPF_CNPJ.AsString,FormatDateTime('ddmmyyyy',C_ChequesVencimento.AsDateTime),
          C_ChequeslkCodBanco.AsString, C_ChequesAgencia.AsString, C_ChequesAgenciaDV.AsString, C_ChequesConta.AsString, C_ChequesContaDV.AsString,
          IntToStr(C_ChequesNumCheque.AsInteger), C_ChequesChequeDV.AsString, Msg);
          if aprovado then begin
            ShowMessage(Msg);
          end
          else begin
            ShowMessage(Msg);
            Result := False;
            dmECF.TEF1.FinalizaTEF;
            DMProjeto.bTimer := True;
            Exit;
          end;
        end
        else begin
          Result := False;
          dmECF.TEF1.FinalizaTEF;
          ShowMessage('Gerenciador Padrão não está ativo.');
          DmProjeto.bTimer := True;
          Exit;
        end;
        dmECF.TEF1.FinalizaTEF;
        C_Cheques.Next;
      end;
      dmECF.TEF1.FinalizaTEF;
   end;
   If NroCartoes <= 1 Then Begin
    if (DMProjeto.bTEF and bCartaoTEF) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then begin
      dmProjeto.bTimer := False;
      if not dmECF.VerificaTEF(valores,aprovado,MsgTEF,Cupom, PossuiTEF, comprovante,hipercard) then begin
        Result := False;
        DMProjeto.bTimer := True;
        Exit;
      end;
      dmProjeto.bTimer := True;
      if PossuiTEF = 1 then begin
        // Colocar aki a criação da mensagem
        {if not (C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
        C_TabelaLabelMsg.Value := MsgTEF;
        C_Tabela.Post;
        SetForegroundWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'));
        ShowWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'),SW_MAXIMIZE);
        FormVenda.SetFocus;
        FormVenda.Repaint;}
      end;
    end;
    if DMProjeto.Parametro('ImprimeCliente') = 'S' then begin
        sCliente :=  iif(C_MestreF_Nome.Value<>'',C_MestreF_Nome.Value,'');
        sCliente := sCliente + iif(C_MestreF_CPF_CNPJ.Value<>'',' -- CPF/CNPJ:'+C_MestreF_CPF_CNPJ.Value,'');
    end
    else sCliente := '';
    if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
       sVendedor :=  C_MestreNomeVendedor.Value else sVendedor := '';
 {   if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
      sEndereco := C_TabelaF_Endereco.Value+' '+C_TabelaF_Bairro.value  else sEndereco := '';}
    sEndereco := '';
    if not dmECF.FechamentoCupomTEF(cupom,valores,FormaPgto,C_MestreDESCONTO.AsCurrency,sObs,sCliente,sVendedor,sEndereco,PossuiTEF) then begin
      Result := False;
      DMProjeto.bTimer := True;
      exit;
    end;
    if (bImpDOCCOBRANCA) Then Begin
        if (valores[7] > 0 ) Then Begin
           comprovante := 1;
           cupom.Clear();
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('Data/Hora.: '+FormatDateTime('dd/mm/yyyy',DMProjeto.getDataServidor));
           cupom.Add('Operador..: '+DMProjeto.sLoginName);
           cupom.Add('Valor.....: '+FloatToStr(Valores[7]));
           cupom.Add('Vencimento: '+FormatDateTime('dd/mm/yyyy',DMProjeto.getDataServidor + 30));
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('Reconheco que pagarei');
           cupom.Add('a importancia acima.');
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('-----------------------------------------------');
           cupom.Add(DMPRojeto.C_LocalizarFavCODIGO.AsString + '-'+DMPRojeto.C_LocalizarFavNOME.AsString);
           cupom.Add('C.P.F.: '+DMPRojeto.C_LocalizarFavCPF_CNPJ.AsString);
           cupom.Add(DMPRojeto.C_LocalizarFavENDERECO.AsString);
           cupom.Add(DMPRojeto.C_LocalizarFavBAIRRO.AsString);
           cupom.Add(DMPRojeto.C_LocalizarFavCIDADE.AsString + '-'+DMPRojeto.C_LocalizarFavUF.AsString);
           cupom.Add('                                               ');
           cupom.Add('                                               ');
           cupom.Add('                                               ');

           DMECF.ImprimeTEF(comprovante,cupom,valores,rede,nsu,data,hora) ;
        End else if not DMECF.ImprimeTEF(comprovante,cupom,valores,rede,nsu,data,hora) then
          Result := False;
    End;
//    else begin
//     { DlgPgtos.NSU := NSU;
//      DlgPgtos.RedeNSU := Rede;
//      DlgPgtos.DataNSU := Data;
//      DlgPgtos.HoraNSU := Hora;}
//    end;
    if PossuiTEF = 1 then begin
     {if not (C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
     C_TabelaLabelMsg.Value := '';
     C_Tabela.Post;}
//     DMECF.TEF1.InicializaTEF;
       DMECF.TEF1.FinalizaTEF;
    end;
    DMProjeto.bTimer := True;
    // Autenticação de Cheques...
    if (DMProjeto.Parametro('AutenticaCheques') = 'S') and (C_Cheques.RecordCount > 0) then begin
      C_Cheques.First;
      for i := 1 to 5 do begin
        if DlgMsg.ShowMsg( 8055, [C_ChequesNumCheque.AsString] ) = 100 then begin
          DMECF.ECF1.Autenticacao( C_ChequesValor.AsString, 'Cheque Num ' + C_ChequesNumCheque.AsString );
        end;
        C_Cheques.Next;
        if C_Cheques.EOF then Break;
      end;
    end;
   end Else Begin      //Multiplos Cartões Inicio.
      cupom.Clear;
      //Abaixo estou verificando TEF  Para Multiplos Cartoes
      if (DMProjeto.bTEF and bCartaoTEF) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then begin
          For k := 0 to (NroCartoes - 1) do Begin
           if not dmECF.VerificaTEF(MultCartoes[k].valores,
                                     MultCartoes[k].aprovado,
                                     MultCartoes[k].MsgTEF,
                                     MultCartoes[k].cupom,
                                     MultCartoes[k].PossuiTEF,
                                     MultCartoes[k].comprovante,
                                     MultCartoes[k].HiperCard) then begin
               sF5 := 'Livre';
               PossuiTEF := 0;
               NroCartoes := 0;
               C_Cartoes.EmptyDataSet;
               cbCartao.Checked := False;
               Application.MessageBox('Venda com multiplos cartões devera ser cancelada.','Aviso',mb_ok);
               CancelandoMultiplosCartoes;
               DMProjeto.bTimer := True;
               Result := False;
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
                for z:=0 to MultCartoes[k].cupom.Count - 1 do
                   cupom.Add(MultCartoes[k].cupom[z]);
              TEF2.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')),MultCartoes[k].rede,MultCartoes[k].nsu,MultCartoes[k].data,MultCartoes[k].hora);
            End;
          end;
          dmProjeto.bTimer := True;

          if PossuiTEF = 1 then begin
    //         if not (C_Tabela.State in [dsInsert, dsEdit]) then
    //             C_Tabela.Edit;
    //         C_TabelaLabelMsg.Value := MsgTEF;
    //         C_Tabela.Post;
    //         SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
    //         ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
    //         FormVenda.SetFocus;
    //         FormVenda.Repaint;
          end;
      End; //Fim da Verificação TEF Para Multiplos Cartoes
      if DMProjeto.Parametro('ImprimeCliente') = 'S' then begin
              sCliente :=  iif(C_MestreF_Nome.Value<>'',C_MestreF_Nome.Value,'');
              sCliente := sCliente + iif(C_MestreF_CPF_CNPJ.Value<>'',' -- CPF/CNPJ:'+C_MestreF_CPF_CNPJ.Value,'');
      end
      else sCliente := '';
      if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
             sVendedor :=  C_MestreNomeVendedor.Value else sVendedor := '';
       {   if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
            sEndereco := C_TabelaF_Endereco.Value+' '+C_TabelaF_Bairro.value  else sEndereco := '';}
          sEndereco := '';
        // Fechamento Cupon Iniciando o Tef
      if not dmECF.FechamentoCupomTEF(cupom, valores, FormaPgto, C_MestreDesconto.AsCurrency, C_MestreObs.Value, sCliente, sVendedor, sEndereco, PossuiTEF) then begin
            DMProjeto.bTimer := True;
            exit;
      end;
      comprovante :=1;
      if (DMProjeto.bTEF and bCartaoTEF) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or (not hipercard) ) then begin
        if DMECF.ImprimeTEF(comprovante, cupom, valores, rede, nsu, data, hora) then
  //        DlgPgtos.NSU := NSU;
  //        DlgPgtos.RedeNSU := Rede;
  //        DlgPgtos.DataNSU := Data;
  //        DlgPgtos.HoraNSU := Hora;
        end;
        if PossuiTEF = 1 then begin
  //        if not (C_Tabela.State in [dsInsert, dsEdit]) then
  //           C_Tabela.Edit;
  //        C_TabelaLabelMsg.Value := '';
  //        C_Tabela.Post;
          DMECF.TEF1.InicializaTEF;
        end;
      End;  
      DMProjeto.bTimer := True;

     End; //Multiplos Cartões Inicio.
end;


procedure TFrmCheckout.CancelandoMultiplosCartoes;
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

procedure TFrmCheckout.ValoresPagos;
var cheque, cartao, chqeletronico: currency;
k: Integer;
begin
  if (Pos('HIPERCARD',UpperCase(cmbCartao.Text))  > 0) then HiperCard := True else HiperCard := False;
  if dfDinheiro.Value >= 0 then valores[0] := dfDinheiro.Value
  else valores[0] := 0;
  cheque := 0;
  C_Cheques.First;
  while not C_Cheques.Eof do begin
    cheque := cheque + C_ChequesValor.Value;
    C_Cheques.Next;
  end;
  valores[1] := cheque;
  chqeletronico := 0;
  valores[2] := dbgChequesEletronico.TotalGeral('Valor');
  cartao := 0;
  C_Cartoes.First;
  k:=0;
  while not C_Cartoes.Eof do begin
    cartao := cartao + C_CartoesValor.Value;
    MultCartao[k].Valor  := C_CartoesValor.Value;
    MultCartao[k].Cartao := C_CartoeslkCartao.Asstring;
    Inc(k);
    C_Cartoes.Next;
  end;
  valores[3] := cartao;
  valores[4] := 0;
  valores[5] := dfCreditoUtilizado.Value;
  valores[6] := 0;
  valores[7] := 0;
end;

procedure TFrmCheckout.Timer1Timer(Sender: TObject);
var Arquivo : TextFile;
begin
  inherited;
  if DMProjeto.bTimer and (DMProjeto.bTEF ) then begin
    SetCurrentDir('C:\TEF_DIAL\RESP');
    if FileExists('ativo.001') then begin
      SetForegroundWindow(FindWindow('TFrmCheckout','FrmCheckout'));
      ShowWindow(FindWindow('TFrmCheckout','FrmCheckout'),SW_MAXIMIZE);
      Screen.ActiveForm.Show;
    end;
     if Inicio then  begin
       SetCurrentDir('C:\TEF_DISC\REQ');
       AssignFile(Arquivo, 'IntPos.tmp');
       Rewrite(Arquivo);
       Write(Arquivo, '000-000 = ATV'+#13+#10);
       Write(Arquivo, '001-000 = 001'+#13+#10);
       Write(Arquivo, '999-999 = 0'+#13+#10);
       CloseFile(Arquivo);
       RenameFile('IntPos.tmp','IntPos.001');
       Inicio := False;
    end
    else begin
       SetCurrentDir('C:\TEF_DISC\RESP');
         if FileExists('IntPos.Sts') then begin
           if not DeleteFile('IntPos.Sts') then ShowMessage('Arquivo de Status do Gerenciador Padrão não pôde ser excluído.');
           SetForegroundWindow(FindWindow('TFrmCheckout','FrmCheckout'));
           ShowWindow(FindWindow('TFrmCheckout','FrmCheckout'),SW_MAXIMIZE);
           Screen.ActiveForm.Show;
         end;
       Inicio := True;
    end;
  end;
end;

procedure TFrmCheckout.dbgItensTS_BeforeDeleteAll(Sender: TObject;
  var CanDelete: Boolean);
Var sCodigoItem:String;
begin
  inherited;
  CanDelete := DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CanItemVR', '', False, 'Item:' + C_VendaDescricao.AsString + #13#10 + 'Subtotal:' + C_VendaSubTotal.AsString );
  if CanDelete then begin
    if bECF then begin
      if ((DMPRojeto.PAFObrigatorio) and (C_VendaCODIGOBARRAS.AsString <> '')) Then
        sCodigoItem := C_VendaCODIGOBARRAS.AsString
      Else
        sCodigoItem := C_VendaCODIGO.AsString;
      if not DMECF.ECF1.CancelaItem(C_VendaSEQUENCIA.AsString,sCodigoItem,C_VendaSITUACAOECF.Value,FormatFloat(DMProjeto.sCasasDecimais,C_VendaALIQICMS.Value),
                 FormatFloat('0.000',C_VendaQUANTIDADE.Value),'$','0000',FormatFloat(DMProjeto.sCasasDecimais,C_VendaPRECO.Value)) then begin
        ShowMessage('Item não pode ser cancelado');
        CanDelete := false;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmCheckout.ReimprimirOperaes1Click(Sender: TObject);
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
      if DMProjeto.ImprimirCupom(nSaida, sCliente, sVendedor, sObs, nDesconto) then begin
        With DMProjeto.Q_Sql Do Begin
          Close;
          Sql.Text := 'Update Saidas s set TipoMovimento = 7 where s.saida = '+ IntToStr(nSaida);
          ExecSql;
          Sql.Text := 'Update SaidasItens s set BaixaEstoqueFiscal = ''S'' where s.saida = '+ IntToStr(nSaida);
          Close;
          ExecSql;
        End;
      End Else Begin
        if DlgMsg.ShowMsg(6042,['Ocorreu algum problema durante a reimpressão do cupom. Deseja cancelar o que foi lançado?']) = 100 then
           DMECF.ECF1.CancelaUltimoCupom;
      end;
  end;
end;

procedure TFrmCheckout.dfDescontoExit(Sender: TObject);
begin
  inherited;
  If (Abs(dfDesconto.Value)/C_MestreTOTALITENS.asCurrency) > (DMProjeto.nMaxDescontoFunc/100) Then Begin
     if Not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'Perdescmax', '', False, 'Cliente:' + C_MestreF_NOME.AsString + #13#10 + 'Desconto:' + dfDesconto.Text ) then begin
       C_Mestre.Edit;
       C_MestreDesconto.Value := 0;
       dfDesconto.Refresh;
       ActiveControl := dfDesconto;
       Exit;
     End;
  End;
end;

procedure TFrmCheckout.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ppFontes.PopupFromCursorPos;
end;

procedure TFrmCheckout.CfgFonte;
Begin
 Case nOpcao Of
 1: Begin
      dfItem.Color := $00F7EBDE;
      dfItem.Font.Color := clWindowText;
      dfQuantidade.Color := $00F7EBDE;
      dfQuantidade.Font.Color := clWindowText;
      dfPreco.Color := $00F7EBDE;
      dfPreco.Font.Color := clWindowText;
    End;
 2: Begin
      dfItem.Color := $00F7EBDE;
      dfItem.Font.Color := clWindow;
      dfQuantidade.Color := $00F7EBDE;
      dfQuantidade.Font.Color := clWindow;
      dfPreco.Color := $00F7EBDE;
      dfPreco.Font.Color := clWindow;

    End;
 3: Begin
      dfItem.Color := clBlack;
      dfItem.Font.Color := clWindow;
      dfQuantidade.Color := clBlack;
      dfQuantidade.Font.Color := clWindow;
      dfPreco.Color := clBlack;
      dfPreco.Font.Color := clWindow;
    End;
 4: Begin
      dfItem.Color := clBlack;
      dfItem.Font.Color := $00F7EBDE;
      dfQuantidade.Color := clBlack;
      dfQuantidade.Font.Color := $00F7EBDE;
      dfPreco.Color := clBlack;
      dfPreco.Font.Color := $00F7EBDE;
    End;
 End;
End;

procedure TFrmCheckout.FundoAzulLetraPreta1Click(Sender: TObject);
begin
  inherited;
  CfgFonte(1);
end;

procedure TFrmCheckout.FundoAzulLetraBranca1Click(Sender: TObject);
begin
  inherited;
  CfgFonte(2);
end;

procedure TFrmCheckout.FundoPretoLetraBranca1Click(Sender: TObject);
begin
  inherited;
  CfgFonte(3);
end;

procedure TFrmCheckout.FundoPretoLetraAzul1Click(Sender: TObject);
begin
  inherited;
  CfgFonte(4);
end;

procedure TFrmCheckout.CancelarOperaes1Click(Sender: TObject);
var
  nSaida : Integer;
  sNumero, sNSU, sRede, sData, sHora, sUltNum: string;
  fValor: Currency;
  bTemTef: boolean;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CanOpGrav' ) then
    exit;
  if DMProjeto.nModeloECF <> 0 then with DMProjeto.Q_ComandoSQL do begin
    close;
    SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and '+
    ' tipopadrao = 1 and serienota = ''ECF'' and pdv = :pdv and data = :dData';
    params[0].asinteger := DMProjeto.nPDV;
    params[1].asdatetime := DMProjeto.dDataSistema;
    open;
    nSaida := fieldbyname('IDSaida').asinteger;
    close;
    SQL.text := 'select numero from saidas where saida = :nSaida ';
    params[0].asinteger := nSaida;
    open;
    sNumero := FieldByName('numero').asstring;
  end
  else begin
    DMProjeto.SetParametrosForm([null, 1]);
    nSaida := DMProjeto.CriarForm('DlgEscolherOperacao',self,true);
  end;
  // Colocar aki o kancelamento do kupom
  if (DMProjeto.nModeloECF = 0) or (not DMProjeto.bECFAtivo) then begin
    if (nSaida > 0) and not (DlgMsg.ShowMsg(6042,['Deseja cancelar a venda '+sNumero+'?']) = 100) then Exit;
  end
  else begin
    bTemTef := False;
    // Cancelamento da Daruma...
    if (DMProjeto.nModeloECF = 8) then with DMProjeto.Q_ComandoSQL do begin
      close;
      SQL.Text := 'select dd.infoadicionais, fp.especie, dd.deposito ' +
              'from titulosareceber tr, depositostitulos dt, depositosdoc dd ' +
              'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
              'where tr.venda = :nSaida and tr.id = dt.titulo and dt.deposito = dd.deposito and tr.parcela = 1 ' +
              'and dd.infoadicionais is not null and (fp.especie = 2 or fp.especie = 3) and dd.status < 70';
      Params[0].AsInteger := nSaida;
      Open;
      sNSU := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 1);
      sRede := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 2);
      sData := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 3);
      sHora := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 4);
      bTemTef := (Trim(sNSU) <> '') and (Trim(sRede) <> '') and (Trim(sData) <> '') and (Trim(sHora) <> '');
    end;

    sUltNum := dmECF.ECf1.COO;
    // Se tem TEF deve verificar o último cupom...
    if bTemTef then
      sUltNum := Copy( sUltNum, 1, Length(sUltNum) - 1) + IntToStr(StrToIntDef(Copy(sUltNum, Length(sUltNum), 1),-1)-1);

    if (Copy(sNumero,5,Length(sNumero)-4) = sUltNum) then begin
      if DlgMsg.ShowMsg(6042,['Deseja cancelar o cupom '+sNumero+'?']) = 100 then begin
        if not dmECF.ECF1.CancelaUltimoCupom then Exit;
      end
      else Exit;
    end
    else begin
      DlgMsg.ShowMsg(50,['O número cadastrado ('+sNumero+') difere do número do ECF ('+dmECF.ECF1.COO+').']);
      Exit;
    end;
  end;
  //
  if nSaida > 0 then begin
    DMProjeto.ExcluirSaida( nSaida, sNumero );
  end;
end;

procedure TFrmCheckout.ConsultarPrecos1Click(Sender: TObject);
begin
  inherited;
  DlgConsultaPrecos := TDlgConsultaPrecos.create(self);
  DlgConsultaPrecos.ShowModal;
  DlgConsultaPrecos.Release;
end;

procedure TFrmCheckout.CancelarSomenteTEF1Click(Sender: TObject);
var
    nSaida, Especie, comprovante, nDeposito: Integer;
    sNumero, sNSU, sRede, sData, sHora, sValor, Msg: string;
    fValor: Currency;
    Cupom: TStringList;
    cv: boolean;
    rede, nsu, data, hora, valor: string;
begin
  inherited;
    if (DMProjeto.nModeloECF <> 0) and (DMProjeto.bECFAtivo) then
    begin
        with DMProjeto.Q_ComandoSQL do
        begin
            close;
            SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and tipopadrao = 1 and data = :dData';
            params[0].asdatetime := DMProjeto.dDataSistema;
            open;
            nSaida := fieldbyname('IDSaida').asinteger;
            close;
            SQL.text := 'select numero from saidas where saida = :nSaida';
            params[0].asinteger := nSaida;
            open;
            sNumero := FieldByName('numero').asstring;
            close;
            SQL.Text := 'select dd.infoadicionais, fp.especie, dd.deposito ' +
                'from titulosareceber tr, depositostitulos dt, depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where tr.venda = :nSaida and tr.id = dt.titulo and dt.deposito = dd.deposito and tr.parcela = 1 ' +
                'and dd.infoadicionais is not null and (fp.especie = 2 or fp.especie = 3) and dd.status < 70';
            Params[0].AsInteger := nSaida;
            Open;
            sNSU := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 1);
            sRede := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 2);
            sData := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 3);
            sHora := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 4);
            Especie := FieldByName('especie').AsInteger;
            nDeposito := FieldByName('deposito').AsInteger;
            close;
            SQL.Text := 'select sum(dd.valor) as fValor from depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where dd.deposito = :deposito and fp.especie = :especie ';
            Params[0].AsInteger := nDeposito;
            Params[1].AsInteger := Especie;
            Open;
            fValor := FieldByName('fValor').AsCurrency;
            sValor := FormatCurr('0.00', fValor);
        end;
        dmProjeto.bTimer := False;
        if (sNSU = '') or (Trim(UpperCase(sRede)) = 'HCARD') then
        begin
            DlgMsg.ShowMsg(50, ['Impossível cancelar última transação TEF.']);
            DMProjeto.bTimer := True;
            Exit;
        end;
        if (sNSU <> '') and (DlgMsg.ShowMsg(6041, [#13 + 'NSU: ' + sNSU, #13 + 'REDE: ' + sRede, #13 + 'DATA: ' + sData, #13 + 'HORA: ' + sHora]) = 100) then
        begin
            case Especie of
                2:
                    begin
                        dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
                        dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
                    end;
                3:
                    begin
                        dmECF.TEF1.diretorioreq := 'C:\TEF_DIAL\REQ';
                        dmECF.TEF1.diretorioresp := 'C:\TEF_DIAL\RESP';
                    end;
            else
                begin
                    DMProjeto.bTimer := True;
                    Exit;
                end;
            end;
            dmECF.TEF1.FinalizaTEF;
            if dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
            begin
                Cupom := TStringList.Create;
                comprovante := dmECF.TEF1.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), sValor, sRede, sNSU, sData, sHora, Cupom, Msg);
                if Trim(Msg) <> '' then
                begin
                    FrmMsgTEF := TFrmMsgTEF.Create(Self);
                    FrmMsgTEF.LabelMsg.Caption := Msg;
                    if comprovante = 1 then
                    begin
                        FrmMsgTEF.Show;
                        FrmMsgTEF.btMsgTEF.Visible := False;
                    end
                    else
                        FrmMsgTEF.ShowModal;
                    SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                    ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                    //          FrmMsgTEF.BringToFront;
                    //          FrmMsgTEF.Repaint;
                end;
                case comprovante of
                    1:
                        begin
                            cv := dmECF.ECF1.AbreRelatTEF;
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        dmECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMProjeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    dmECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.ImprimeRelatTEF(cupom, 2);
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                     if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        dmECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    dmECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);
                                    Cupom.Free;
                                    dmECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    BringToFront;
                                    application.ProcessMessages;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.FechaRelatTEF;
                            if cv then
                            begin
                                dmECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                DMProjeto.bTimer := True;
                            end;
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        dmECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    dmECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                        end;
                else
                    Cupom.Free;
                end;
                if Trim(Msg) <> '' then
                    if FrmMsgTEF <> nil then
                        FrmMsgTEF.Free;
                BringToFront;
                application.ProcessMessages;
                DMProjeto.bTimer := True;
            end
            else
            begin
                ShowMessage('Gerenciador Padrão não está ativo.');
                Exit;
                DMProjeto.bTimer := True;
            end;
        end;
    end;
end;

procedure TFrmCheckout.FormKeyPress(Sender: TObject; var Key: Char);
var nValor : currency;
begin
  inherited;
  if (Key = '%') and (ActiveControl = dfDesconto) then begin
    Key := #0;
    nValor := dfDesconto.Value;
    dfDesconto.Value := Truncar((C_MestreTotalItens.Value) * (nValor / 100), 2);
  end;
end;

procedure TFrmCheckout.C_VendaCalcFields(DataSet: TDataSet);
var
    nQtd: double;
begin
  inherited;
  if not(DataSet.State = dsInternalCalc) then exit;

  if DataSet.FieldByName('Quantidade').Value = null then
    nQtd := 0
  else
    nQtd := DataSet.FieldByName('Quantidade').asFloat;


  if DataSet.FieldByName('PrecoTabela').asCurrency > 0 then begin
    if DataSet.FieldByName('MaxDesconto').asFloat > 0 then begin
      DataSet.FieldByName('cfValorMaxDesconto').asCurrency :=
        ((nQtd * DataSet.FieldByName('PrecoTabela').asCurrency) * DataSet.FieldByName('MaxDesconto').asFloat) -
        (nQtd * (DataSet.FieldByName('PrecoTabela').asCurrency - DataSet.FieldByName('Preco').asFloat)); //Desc. o Preço diretamente

      if DataSet.FieldByName('cfValorMaxDesconto').asCurrency < 0 then
        DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;

    end
    else
      DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;
  end
  else if DataSet.FieldByName('TipoItem').asInteger in [1, 2, 3] then
    DataSet.FieldByName('cfValorMaxDesconto').asCurrency := (DataSet.FieldByName('SubTotal').asCurrency)
  else
    DataSet.FieldByName('cfValorMaxDesconto').asCurrency := 0;

end;

procedure TFrmCheckout.C_VendaIDItemChange(Sender: TField);
begin
  inherited;

    {MaxDesconto - para apresentação quando solicitado pelo usuário}
    {Representa o Percentual Máximo de Desconto permitido para o Item}
    {Prioridade:  DescontoMaximo do Produto;
                  DescontoMáximo do Usuário;}
    if DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3] then begin
      if DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value > 0 then
        C_VendaMaxDesconto.Value := (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value / 100) {%}
      else if DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value > 0 then
        C_VendaMaxDesconto.Value := (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value / 100) {%}
      else if DMProjeto.nMaxDescontoFunc > 0 then
        C_VendaMaxDesconto.Value := (DMProjeto.nMaxDescontoFunc / 100) {%}
      else
        C_VendaMaxDesconto.Value := 0;
    end
    else
        C_VendaMaxDesconto.Value := 0;
end;

function TFrmCheckout.VerificarComissao : boolean;
var bGrupoComissao, bCalcComissao : boolean;
    nValorComissao, nRateio, nDescItem, nPerDesc,
    nPComissao, nPComissaoPlano : currency;
    TmpDS : TClientDataSet;
    nDOW : integer;
begin
  Result := False;
  bGrupoComissao := DMProjeto.Parametro('GrupoComissao') = 'S';
  With Q_SQL do begin
    Close;
    SQL.Text := 'Select calccomissao from tiposmovimento where tipomovimento = 7 ';
    Open;
    bCalcComissao := FieldByName('calccomissao').AsString = 'S';
    Close;
  end;

  With Q_SQL do begin
    Close;
    SQL.Text := 'Select comissao from planospagamento where planopagamento = 1 ';
    Open;
    nPComissaoPlano := FieldByName('comissao').AsCurrency;
    Close;
  end;

  nValorComissao := 0;
  {Verificando se existem itens válidos => subtotal > 0}
  if (bGrupoComissao) and (bCalcComissao) then begin
    TmpDS := TClientDataSet.Create(self);
    with TmpDS do
    begin
        CloneCursor(C_Venda, true);
        First;
        while not EOF do
        begin
          // Cálculo do Rateio de Desconto por Item
          //nRateio := (C_MestreDESCONTO.AsCurrency / C_MestreTOTALITENS.AsCurrency) * FieldByName('SUBTOTAL').AsCurrency;
          //nRateio := - Abs(nRateio);
          nRateio := 0;
          // Somando o valor do desconto dado ao item com o rateio
           // nDescItem := FieldByName('DESCONTO').ASCurrency + nRateio; // -> Não existe desconto de item no Checkout
          // Calculando o percentual de desconto proporcional dado ao item
          nPerDesc := Abs((nDescItem * 100) / FieldByName('PRECOTABELA').AsCurrency);
          Q_SQL.Close;
          Q_SQL.SQL.Text := 'select comissao from gruposcomissoesdet ' +
                            'where grupocomissao = :gc and :vlr between valorini and valorfim ' ;
          Q_SQL.ParamByName('gc').AsInteger := FieldByName('grupocomissao').AsInteger;
          Q_SQL.ParamByName('vlr').AsCurrency := nPerDesc;
          Q_SQL.Open;
          if Q_SQL.RecordCount > 0 then begin
            nPComissao := Q_SQL.FieldByName('comissao').AsCurrency;
          end
          else begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'Select i.Comissao, i.TipoItem, g.Comissao as ComissGrupo, '+
                              'fu.Comissao as ComissVend, tp.Add_Comissao ' +
                              'from Itens i ' +
                              'LEFT JOIN Grupos g ON i.Grupo = g.Grupo ' +
                              'LEFT JOIN Favorecidos fu ON fu.Favorecido = :v ' +
                              'LEFT JOIN TabelasPreco tp ON tp.TabelaPreco = :tp ' +
                              'Where i.item = :i ';
            Q_SQL.ParamByName('i').AsInteger := FieldByName('iditem').AsInteger;
            Q_SQL.ParamByName('tp').AsInteger := FieldByName('tabelapreco').AsInteger;
            Q_SQL.ParamByName('v').AsInteger := C_MestreVENDEDOR.AsInteger;
            Q_SQL.Open;
            if nPComissaoPlano > 0 then
              nPComissao := nPComissaoPlano  {Comissão do Plano de Pagamento}
            else if Q_SQL.FieldByName('Comissao').asCurrency >= 0 then
                nPComissao := Q_SQL.FieldByName('Comissao').asCurrency {Comissão no Produto}
            else if (Q_SQL.FieldByName('ComissGrupo').asCurrency >= 0) then
                nPComissao := Q_SQL.FieldByName('ComissGrupo').asCurrency {Comissão definida no Grupo}
            else if (Q_SQL.FieldByName('ComissVend').asCurrency > 0) then
                nPComissao := Q_SQL.FieldByName('ComissVend').asCurrency;
           {Adicionando a comissão da tabela de Precos}
            nPComissao := nPComissao + Q_SQL.FieldByName('Add_Comissao').asCurrency;
           // Dia da Semana
           nDOW := IIF(DMProjeto.IsFeriado(C_Mestre.FieldByName('Data').asDateTime), 8, DayOfWeek(C_Mestre.FieldByName('Data').asDateTime));
           nPComissao := nPComissao + DMProjeto.Comissao_Dia(C_Mestre.FieldByName('Vendedor').asInteger, nDoW);
          end;
          Q_SQL.Close;
          //
          nValorComissao := nValorComissao + ((FieldByName('SubTotal').asCurrency + nRateio) * (nPComissao / 100));
          Next;
        end;
    end;
    TmpDS.Free;

    if (nValorComissao < 0) then begin
      if (DMProjeto.Parametro('ComissaoNegativa') = 'S') then begin
        if not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'ComissNega','',False,'Cliente:'+C_MestreF_NOME.AsString+#13#10+
                                                         'Valor:'+C_MestreTOTAL.AsString + #13#10 + 'Vendedor:' + C_MestreNomeVendedor.AsString+
                                                         #13#10 + 'Comissão:' + CurrToStr(nValorComissao),C_MestreFAVORECIDO.AsInteger,
                                                         'DlgSitCliente') then begin
          Exit;
        end;
      end
      else begin
        DlgMsg.ShowMsg( 8044 );
        Exit;
      end;
    end;

    if ((nValorComissao*100)/C_MestreTOTALITENS.AsCurrency < 1) and
       not DMProjeto.DlgAutorizacao.ExecuteX(self.Name, 'ComissMini','',False,'Cliente:'+C_MestreF_NOME.AsString+#13#10+
                                                         'Valor:'+C_MestreTOTAL.AsString + #13#10 + 'Vendedor:' + C_MestreNomeVendedor.AsString+
                                                         #13#10+'Comissão:' + CurrToStr(nValorComissao),C_MestreFAVORECIDO.AsInteger,
                                                         'DlgSitCliente') then begin
      Exit;
    end;

    Result := True;
  end
  else
    Result := True;
end;


procedure TFrmCheckout.IniciarDevoluo1Click(Sender: TObject);
begin
  inherited;
  bECF := False;
  IniciarDevolucao;
end;

procedure TFrmCheckout.C_MestreCalcFields(DataSet: TDataSet);
begin
  inherited;
  With Q_SQL do begin
    Close;
    SQL.Text := 'Select Descricao from planospagamento where planopagamento =  '+
          iif(DMPRojeto.C_LocalizarFavPLANOPAGAMENTO.IsNull, '1', DMPRojeto.C_LocalizarFavPLANOPAGAMENTO.AsString);
    Open;
    DataSet.FieldByName('F_PlanoPGTO').Value :=  FieldByName('DESCRICAO').Value;
    Close;
  end;

end;

procedure TFrmCheckout.dfQuantidadeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    If dfQuantidade.Value > 9999 Then Begin
       Beep.BeepFor(740, 80);
       Beep.BeepFor(880, 80);
       Accept := False;
       dfQuantidade.SetFocus;
       ErrorText:='A Quantidade Informada Ultrapassa o Limite Permitido!';
    End
end;

procedure TFrmCheckout.dfNumParcelasValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
  dfNumParcelasChange(self);
end;

procedure TFrmCheckout.dfNumParcelasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dfNumParcelasChange(self);
end;

procedure TFrmCheckout.dfNumParcelasSelectionChange(Sender: TObject);
begin
  inherited;
  dfNumParcelasChange(self);
end;

end.
