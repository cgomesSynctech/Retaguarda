unit Dlg_DepositosInstantaneos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls, TS_CheckBox, ExtCtrls, TS_Shape, DBCtrls,
  TS_DBText, TS_DBEdit, TS_DBLookupComboBox, TS_Label,
  DlgMsg, Buttons, TS_SpeedButton,
  Db, DBClient,
  ActnList, TS_Edit, CheckLst, TS_CheckListBox,
  ComCtrls, TS_PageControl, MMSystem, 
  TS_DBLookupTipoFav, TS_Image, Variants,
  TS_LastDataObject, TS_DBEditFavorecido, TS_MaxPanel, 
  TS_DBEditDate, TS_DBEditNumber, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, dxDBEdtr, dxCntner, FormsComponent, jpeg,
  dxfLabel, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, TS_QDBGrid, 
  IBCustomDataSet, Dlg_PopupContas, TS_DBPopupEdit, teCtrls,
  TS_EffectsPanel, TS_DBRadioGroup, TS_DBSpinEdit, Menus, TS_PopupMenu,
  dxGrClEx, DM_Contabilidade, TransEff, 
  TS_DBMaskEdit, BTOdeum, Placemnt, TS_MaskEdit, DateUtils, TS_DBButtonEdit, teSlide,
  teTimed, teMasked, teRadial, TS_DBImageEdit, TS_Bevel, ZRCtrls, ZReport;

type
  TDlgDepositosInstantaneos = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    pnConta: TTS_Panel;
    Label1: TTS_Label;
    pnSacado: TTS_Panel;
    C_Depositos: TClientDataSet;
    C_DepositosDescConta: TStringField;
    C_DepositosDATA: TDateField;
    C_DepositosCONTA: TIntegerField;
    C_DepositosCLIENTE: TIntegerField;
    C_DepositosNOME: TStringField;
    C_DepositosCreditoRestante: TFloatField;
    C_DepositosDS: TDataSource;
    C_DepositosDescCartao: TStringField;
    C_Cheques: TClientDataSet;
    C_ChequesDescBanco: TStringField;
    C_ChequesDS: TDataSource;
    C_DepositosHISTORICO: TStringField;
    TS_Label8: TTS_Label;
    C_ChequesAgencia: TStringField;
    C_ChequesBanco: TIntegerField;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesValor: TFloatField;
    C_ChequesVencimento: TDateField;
    C_ChequesChequeNominal: TStringField;
    C_DepositosCreditoCliente: TFloatField;
    C_DepositosCreditoUtilizado: TFloatField;
    C_DepositosValorDinheiro: TFloatField;
    C_DepositosValorCheque: TFloatField;
    C_DepositosValorCartao: TFloatField;
    C_DepositosCartaoCredito: TIntegerField;
    C_DepositosNumCheque: TIntegerField;
    C_DepositosDataCheque: TDateField;
    C_DepositosBanco: TIntegerField;
    C_DepositosAgencia: TStringField;
    C_DepositosOutroValor: TFloatField;
    C_DepositosUSUARIO: TIntegerField;
    C_DepositosVALOR: TBCDField;
    C_DepositosOutraForma: TIntegerField;
    C_DepositosCompetencia: TDateField;
    dfCompetencia: TTS_DBEditDate;
    dfData: TTS_DBEditDate;
    C_DepositosContaOutro: TIntegerField;
    C_DepositosDescContaOutro: TStringField;
    C_DepositosContaTEF: TIntegerField;
    C_DepositosDescContaTEF: TStringField;
    C_DepositosValorTEF: TFloatField;
    cmbConta: TTS_DBPopupEdit;
    C_DepositosValorParcela: TCurrencyField;
    C_DepositosModoCartao: TIntegerField;
    C_DepositosNumParcelas: TIntegerField;
    C_DepositosTitulo: TStringField;
    btImprimir: TTS_SpeedButton;
    pgPrincipal: TTS_PageControl;
    tabFormaPagamento: TTS_TabSheet;
    tabContas: TTS_TabSheet;
    TS_Shape3: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape1: TTS_Shape;
    Label2: TTS_Label;
    dbtTotalForma: TTS_DBText;
    TS_Shape6: TTS_Shape;
    clbForma: TTS_CheckListBox;
    pgForma: TTS_PageControl;
    tabDinheiro: TTS_TabSheet;
    vg2Label1: TTS_Label;
    dfDinheiro: TTS_DBEditNumber;
    tabCheque: TTS_TabSheet;
    DBCheques: TTS_QDBGrid;
    DBChequesCampo: TdxDBGridMaskColumn;
    DBChequesNumCheque: TdxDBGridColumn;
    DBChequesVencimento: TdxDBGridDateColumn;
    DBChequesValor: TdxDBGridColumn;
    DBChequesDescBanco: TdxDBGridLookupColumn;
    DBChequesAgencia: TdxDBGridColumn;
    DBChequesBanco: TdxDBGridMaskColumn;
    DBChequesChequeNominal: TdxDBGridColumn;
    tabCartao: TTS_TabSheet;
    vg2Label2: TTS_Label;
    TS_Label1: TTS_Label;
    lbParcelas: TTS_Label;
    lbParcelasDe: TTS_Label;
    dbValorParcela: TTS_DBText;
    cmbCartao: TTS_DBLookupComboBox;
    dfCartao: TTS_DBEditNumber;
    dbNumParcelas: TTS_DBSpinEdit;
    tabCredito: TTS_TabSheet;
    vg2Label3: TTS_Label;
    vg2Label4: TTS_Label;
    TS_DBText1: TTS_DBText;
    dfUtilizarCredito: TTS_DBEditNumber;
    tabTEF: TTS_TabSheet;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    dfValorTEF: TTS_DBEditNumber;
    cmbContaTEF: TTS_DBPopupEdit;
    tabOutros: TTS_TabSheet;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    lbContaOutro: TTS_Label;
    cmbOutraForma: TTS_DBLookupComboBox;
    dfOutroValor: TTS_DBEditNumber;
    cmbContaOutro: TTS_DBPopupEdit;
    DBContas: TTS_QDBGrid;
    C_ContasOperacao: TClientDataSet;
    C_ContasOperacaoDS: TDataSource;
    C_ContasOperacaoConta: TIntegerField;
    C_ContasOperacaoDescConta: TStringField;
    C_ContasOperacaoValor: TCurrencyField;
    DBContasConta: TdxDBGridMaskColumn;
    DBContasMemo: TdxDBGridMaskColumn;
    DBContasValor: TdxDBGridCurrencyColumn;
    lbCompetencia: TTS_Label;
    DBContasDescConta: TdxDBGridPopupColumn;
    C_ContasOperacaoSequencial: TIntegerField;
    ppmCheques: TTS_PopupMenu;
    Incluirnovobanco1: TMenuItem;
    Salvar1: TMenuItem;
    Novo1: TMenuItem;
    N1: TMenuItem;
    Histrico1: TMenuItem;
    C_ContasOperacaoHistorico: TStringField;
    C_ChequesContaReceber: TIntegerField;
    C_DepositosContaCartao: TIntegerField;
    btContabilidade: TTS_SpeedButton;
    cbLockDate: TTS_CheckBox;
    C_ChequesID: TIntegerField;
    C_DepositosDescDinheiro: TStringField;
    C_DepositosDescCheque: TStringField;
    pnAlterar: TTS_Panel;
    dxfLabel1: TdxfLabel;
    TransitionList1: TTransitionList;
    TranShape: TRadialTransition;
    TranAlterar: TSlideTransition;
    pnCancelado: TdxfLabel;
    shpTroco: TTS_Shape;
    lbTroco: TTS_Label;
    dfTroco: TTS_DBEditNumber;
    C_DepositosTroco: TCurrencyField;
    C_DepositosValorRecebido: TCurrencyField;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    dfModoCartao: TTS_DBImageEdit;
    TS_Label9: TTS_Label;
    dfNumeroCartao: TTS_DBEdit;
    dfValidade: TTS_DBMaskEdit;
    btApenasUm: TTS_SpeedButton;
    btMaisCartoes: TTS_SpeedButton;
    C_Cartoes: TClientDataSet;
    C_CartoesCartao: TIntegerField;
    C_CartoesValor: TCurrencyField;
    C_CartoesNumParcelas: TIntegerField;
    C_CartoesValorParcela: TCurrencyField;
    C_CartoesID: TIntegerField;
    C_CartoesModoCartao: TIntegerField;
    C_CartoesContaCartao: TIntegerField;
    C_CartoesNumeroCartao: TStringField;
    C_CartoesValidade: TStringField;
    DBCartoes: TTS_QDBGrid;
    DBCartoesCartao: TdxDBGridMaskColumn;
    DBCartoesDescCartao: TdxDBGridLookupColumn;
    DBCartoesValor: TdxDBGridCurrencyColumn;
    DBCartoesNumParcelas: TdxDBGridSpinColumn;
    DBCartoesValorParcela: TdxDBGridCurrencyColumn;
    DBCartoesID: TdxDBGridMaskColumn;
    DBCartoesNumeroCartao: TdxDBGridColumn;
    DBCartoesValidade: TdxDBGridMaskColumn;
    DBCartoesTipo: TdxDBGridImageColumn;
    C_CartoesDS: TDataSource;
    ppmContas: TTS_PopupMenu;
    TS_Shape4: TTS_Shape;
    tabChequeEletronico: TTS_TabSheet;
    C_ChequesEletronico: TClientDataSet;
    C_ChequesEletronicoDS: TDataSource;
    DBChequesEletronico: TTS_QDBGrid;
    C_ChequesEletronicoID: TIntegerField;
    C_ChequesEletronicoValor: TCurrencyField;
    C_ChequesEletronicoObs: TStringField;
    C_ChequesEletronicoConvenio: TIntegerField;
    C_ChequesEletronicoDescConvenio: TStringField;
    DBChequesEletronicoValor: TdxDBGridCurrencyColumn;
    DBChequesEletronicoVencimento: TdxDBGridDateColumn;
    DBChequesEletronicoObs: TdxDBGridMaskColumn;
    DBChequesEletronicoDescConvenio: TdxDBGridLookupColumn;
    C_DepositosValorChequeEletronico: TCurrencyField;
    C_ChequesEletronicoContaReceber: TIntegerField;
    C_ChequesEletronicoVencimento: TDateTimeField;
    ppmChequesElet: TTS_PopupMenu;
    ckbPrePagamento: TTS_CheckBox;
    ckbImprimirRecibo: TTS_CheckBox;
    TS_Panel2: TTS_Panel;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfFavorecido: TTS_DBEditFavorecido;
    pnMemo: TTS_Panel;
    TS_Label4: TTS_Label;
    Label11: TTS_Label;
    dfMemo: TTS_DBEdit;
    dfRefNo: TTS_DBEdit;
    pnChequesDev: TTS_Panel;
    DBChequesDev: TTS_QDBGrid;
    TS_Label7: TTS_Label;
    DBChequesDevBANCO: TdxDBGridMaskColumn;
    DBChequesDevNUMCHEQUE: TdxDBGridMaskColumn;
    DBChequesDevDATA: TdxDBGridDateColumn;
    TS_Panel3: TTS_Panel;
    DBChequesDevDESPESAS: TdxDBGridMaskColumn;
    DBChequesDevTotalAPagar: TdxDBGridMaskColumn;
    lbMsg: TTS_Label;
    DBChequesDevENCARGOS: TdxDBGridPopupColumn;
    pnMulta: TTS_Panel;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    edDias: TTS_MaskEdit;
    edJuros: TTS_MaskEdit;
    EditarRecibo1: TMenuItem;
    ppmCartoes: TTS_PopupMenu;
    C_CartoesDescCartao: TStringField;
    C_DepositosCreditoGerado: TCurrencyField;
    TitulardoCheque1: TMenuItem;
    zrCredito: TZReport;
    ZRField125: TZRField;
    ZRField126: TZRField;
    ZRField127: TZRField;
    ZRField128: TZRField;
    ZRField129: TZRField;
    ZRField130: TZRField;
    ZRField131: TZRField;
    ZRField132: TZRField;
    ZRField133: TZRField;
    ZRField134: TZRField;
    ZRField135: TZRField;
    ZRField136: TZRField;
    ZRField137: TZRField;
    ZRField138: TZRField;
    ZRField139: TZRField;
    ZRField140: TZRField;
    ZRField141: TZRField;
    ZRField142: TZRField;
    ZRField143: TZRField;
    ZRField144: TZRField;
    ZRField145: TZRField;
    ZRField146: TZRField;
    ZRField147: TZRField;
    ZRField148: TZRField;
    ZRField149: TZRField;
    ZRField150: TZRField;
    ZRField151: TZRField;
    ZRField152: TZRField;
    ZRField153: TZRField;
    ZRBand27: TZRBand;
    zrCidade: TZRLabel;
    zrEndereco: TZRLabel;
    zrEmpresa: TZRLabel;
    zrFone: TZRLabel;
    ZRBand28: TZRBand;
    zrNomeCodigoCliente: TZRLabel;
    zrDataCredito: TZRLabel;
    ZRLabel247: TZRLabel;
    ZRLabel248: TZRLabel;
    zrVencimento: TZRLabel;
    ZRLabel249: TZRLabel;
    zrValorCredito: TZRLabel;
    zrExtenso: TZRLabel;
    ZRFrameLine8: TZRFrameLine;
    ckbImpCredito: TTS_CheckBox;
    ZRLabel1: TZRLabel;
    DBChequesDevVALOR: TdxDBGridCurrencyColumn;
    procedure C_DepositosNewRecord(DataSet: TDataSet);
    procedure dfFavorecidoExit(Sender: TObject);
    procedure C_DepositosCREDITOUTILIZADOChange(Sender: TField);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure clbFormaClickCheck(Sender: TObject);
    procedure C_DepositosCLIENTEChange(Sender: TField);
    procedure tabDinheiroShow(Sender: TObject);
    procedure DBChequesExit(Sender: TObject);
    procedure tabChequeShow(Sender: TObject);
    procedure C_ChequesAfterPost(DataSet: TDataSet);
    procedure tabCartaoShow(Sender: TObject);
    procedure tabTEFShow(Sender: TObject);
    procedure tabOutrosShow(Sender: TObject);
    procedure C_DepositosCONTAChange(Sender: TField);
    procedure C_DepositosDATAChange(Sender: TField);
    procedure C_DepositosCompetenciaChange(Sender: TField);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbContaTEFInitPopup(Sender: TObject);
    procedure cmbContaOutroInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure C_ChequesBancoChange(Sender: TField);
    procedure dbNumParcelasChange(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure DBChequesColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBContasDescContaInitPopup(Sender: TObject);
    procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure Incluirnovobanco1Click(Sender: TObject);
    procedure C_DepositosVALORChange(Sender: TField);
    procedure C_DepositosCartaoCreditoChange(Sender: TField);
    procedure C_DepositosOutraFormaChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure C_ChequesValorChange(Sender: TField);
    procedure TS_Label1SetParametrosForm(Sender: TObject);
    procedure TS_Label2SetParametrosForm(Sender: TObject);
    procedure btMaisCartoesClick(Sender: TObject);
    procedure btApenasUmClick(Sender: TObject);
    procedure C_CartoesNewRecord(DataSet: TDataSet);
    procedure DBCartoesExit(Sender: TObject);
    procedure DBCartoesNumParcelasChange(Sender: TObject);
    procedure DBCartoesValorChange(Sender: TObject);
    procedure DBCartoesEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure C_CartoesCartaoChange(Sender: TField);
    procedure C_CartoesAfterDelete(DataSet: TDataSet);
    procedure C_CartoesValorChange(Sender: TField);
    procedure tabCartaoHide(Sender: TObject);
    procedure cmbContaKeyPress(Sender: TObject; var Key: Char);
    procedure C_ChequesEletronicoNewRecord(DataSet: TDataSet);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure DBChequesDevTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure ckbPrePagamentoChange(Sender: TObject);
    procedure DBChequesDevENCARGOSCloseUp(Sender: TObject;
      var Text: String; var Accept: Boolean);
    procedure DBChequesDevENCARGOSInitPopup(Sender: TObject);
    procedure EditarRecibo1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TitulardoCheque1Click(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
    // Adriano
    DMContabil: TDMContabilidade;
  private
    { Private declarations }
    aIDDoc : array[0..1000] of integer;
    aIDDocAtualizado : array[0..1000] of char;
    nIDCheque, nConta, IDDeposito, DepositoHist, Favorecido, nNumCheque, nSeq, nContaReceitaPadrao : integer;
    NomeFavorecido : string;
    dtData, dtCompetencia,  dDataCheque : TDateTime;
    bModalResult : boolean;
    nVlParcelas, nCredito  : Currency;
    procedure getHistorico( Deposito : integer );
    function AtualizaTotalFormaPagamento : Currency;
		procedure SetFormaPagamento( nIndex : integer );
    function 	Validacoes(bMostrarMensagem:boolean) : boolean;
    function	Gravar : boolean;
    procedure	Novo;
    procedure LimpaArrayDoc;
    function  QtdeFormasPagamentoSel : integer;
    function getIndex(sEspecie: string): integer;
    function SetSaltos: string;
  public
    { Public declarations }
  end;

var
  DlgDepositosInstantaneos: TDlgDepositosInstantaneos;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade, TDM_Projeto, Util2{,dm_ECF};

{$R *.DFM}


procedure TDlgDepositosInstantaneos.Novo;
var i : integer;
		bDataCompetencia : boolean;
begin
  if DMContabil <> nil then
    DMContabil.Iniciar;

  pnChequesDev.Visible := false;
  pnMemo.Visible 	:= true;
  pnMemo.Align 		:= alClient;

  btComando1.Visible := false;
	btComando1.Enabled	:= true;
  btImprimir.Visible := false;
  pnCancelado.Visible:= false;
	btGravar.Caption 		:= 'Salvar';
  pnAlterar.Visible   := false;
  bDataCompetencia   := DMProjeto.Parametro('VisualizarDataCompetencia')='S';
  lbCompetencia.Visible := bDataCompetencia;
  dfCompetencia.Visible := bDataCompetencia;
	LimpaArrayDoc;
  clbForma.ItemIndex := -1;
  for i:=0 to clbForma.Items.Count-1 do begin
  	clbForma.Checked[i] := false;
		clbForma.ItemEnabled[i] := true;
  end;
  if pgForma.Visible then
  	for i:=0 to pgForma.PageCount-1 do
  		pgForma.HideTab(i);
  pgForma.Visible := false;
	C_Cheques.EmptyDataSet;
  C_ChequesEletronico.EmptyDataSet;
  C_Depositos.EmptyDataSet;
  C_ContasOperacao.EmptyDataSet;
 	C_Cartoes.EmptyDataSet;

  C_Depositos.Append;
  if cbLockDate.Checked then
  	C_DepositosData.Value := dtData
  else
  	C_DepositosData.Value := DMProjeto.dDataSistema;
  C_DepositosCompetencia.Value := dtCompetencia;
  C_DepositosConta.Value 	:= nConta;
  dtData := C_DepositosData.Value;
  Favorecido 			:= 0;
  NomeFavorecido 	:= '';
	dfFavorecido.ID := 0;
  DepositoHist		:= 0;
  nNumCheque			:= 0;
  nIDCheque       := 1;
  nSeq						:= 1;
  pgPrincipal.ActivePageIndex := 0;
  if ckbPrePagamento.Checked then
  	pgPrincipal.HideTab(1)
  else begin
  	pgPrincipal.ShowTab(1);
    pgPrincipal.ShowTab(0);
  end;
  try
   dfFavorecido.SetFocus;
  except
  end;
end;

procedure TDlgDepositosInstantaneos.LimpaArrayDoc;
var i : integer;
begin
	for i:=0 to 1000 do begin
  	aIDDoc[i] := 0;
    aIDDocAtualizado := '';
  end;
end;

function TDlgDepositosInstantaneos.getIndex(sEspecie : string) : integer;
var i : integer;
begin
	result := 0;
	for i:=1 to ContaStrings(clbForma.TagStr,',') do
  	if SeparaStrings( clbForma.TagStr, ',', i ) = sEspecie then begin
    	result := i-1;
      break;
    end;
end;

function TDlgDepositosInstantaneos.Validacoes;
var sCredito : string;
begin
	result := false;
  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;

  if C_ChequesEletronico.State in [dsEdit,dsInsert] then
  	C_ChequesEletronico.Post;

  if DMFinanceiro.C_ChequesDev.State in [dsEdit,dsInsert] then
  	DMFinanceiro.C_ChequesDev.Post;

  if C_Cartoes.State in [dsEdit,dsInsert] then
  	C_Cartoes.Post;

  if C_Depositos.State in [dsEdit,dsInsert] then
  	C_Depositos.UpdateRecord;

  if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;

  nCredito := 0;
	if pnChequesDev.Visible and (C_DepositosValor.AsCurrency > dbChequesDev.TotalSelecionado('Total')) then begin
		if DlgMsg.ShowMsg(960,[formatfloat('#,###,##0.00',C_DepositosValor.AsCurrency),
    											 formatfloat('#,###,##0.00',dbChequesDev.TotalSelecionado('Total')),
                           formatfloat('#,###,##0.00',C_DepositosValor.AsCurrency-dbChequesDev.TotalSelecionado('Total'))]) = 100 then
    	nCredito := C_DepositosValor.AsCurrency - dbChequesDev.TotalSelecionado('Total')
  end;

  if pnChequesDev.Visible and (C_DepositosValor.AsCurrency < dbChequesDev.TotalSelecionado('Total') ) then begin
    DlgMsg.ShowMsg(50, ['o Valor a receber não pode ser menor que o cheque!']);
    result := false;
    Exit;
  end Else Begin
   if (C_Depositos.State in [dsBrowse]) then
    	C_Depositos.Edit;
   if (pnChequesDev.Visible) Then Begin
     	C_DepositosHistorico.Value := 'Chq.Dev.'; //+formatfloat('###,###,##0.00',DBChequesDev.TotalSelecionado('Total'))
     	C_Depositos.Post;
   End;   
  End;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
   Exit;
  end;

  if cmbConta.Text = '' then begin
  	DlgMsg.ShowMsg(929, ['a Conta onde será creditado o recebimento'] );
    Exit;
  end;

  {A data de pagamento não pode ser muito antiga}
	if C_DepositosData.Value < EncodeDate(1990,1,1) then begin
    DlgMsg.ShowMsg( 214 );
    exit;
  end;

	AtualizaTotalFormaPagamento;
  dfFavorecido.SetFocus;

  if C_DepositosCliente.AsInteger = 0 then begin
    // ShowMessage('Faltou informar a Pessoa / Empresa de quem você está recebendo este pagamento!');
    DlgMsg.ShowMsg( 221 );
    ActiveControl := dfFavorecido;
    exit;
  end;

  if C_DepositosHistorico.Value = '' then begin
  	DlgMsg.ShowMsg(929,[' o Memo']);
    dfMemo.SetFocus;
    Exit;
  end;

  {Validando os Cheques informado}
	if clbForma.Checked[getIndex('1')] then begin
  	with C_Cheques do begin
    	First;
      while not EOF do begin
        if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then begin
        	DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
          Exit;
        end;
        if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then begin
        	DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
          Exit;
        end;
        if fieldbyname('Valor').Value < 0 then begin
       		DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
          Exit;
        end;
        C_Cheques.edit;
        C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0,C_DepositosData.value,C_ChequesVencimento.Value);
        if C_ChequesContaReceber.Value = 0 then
          C_ChequesContaReceber.Value := C_DepositosConta.value;
        C_Cheques.post;
      	next;
      end;
    end;
  end;

  {Validando os Cheques informado}
	if clbForma.Checked[getIndex('2')] then begin
  	with C_ChequesEletronico do begin
    	First;
      while not EOF do begin
        if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then begin
        	DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
          Exit;
        end;
        if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then begin
        	DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
          Exit;
        end;
        if fieldbyname('Valor').Value < 0 then begin
       		DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
          Exit;
        end;
        C_ChequesEletronico.edit;
        C_ChequesEletronicoContaReceber.Value := DMFinanceiro.getContaReceber(0,C_DepositosData.value,C_ChequesVencimento.Value);
        if C_ChequesEletronicoContaReceber.Value = 0 then
          C_ChequesEletronicoContaReceber.Value := C_DepositosConta.value;
        C_ChequesEletronico.post;
      	next;
      end;
    end;
  end;

  {Validando os Cartoes informado}
	if clbForma.Checked[getIndex('3')] then begin
  	with C_Cartoes do begin
    	First;
      while not EOF do begin
        if (fieldbyname('Valor').Value = 0) or (fieldbyname('ValorParcela').Value = 0) then begin
        	DlgMsg.ShowMsg(929, ['o Valor do Cartão']);
          Exit;
        end;
        if (fieldbyname('Valor').Value < 0) or (fieldbyname('ValorParcela').Value < 0) then begin
       		DlgMsg.ShowMsg(929, ['o Valor do Cartão. (Não pode ser negativo)']);
          Exit;
        end;
        if not DMFinanceiro.VerificaValidade(fieldbyname('Validade').AsString) then begin
        	DlgMsg.ShowMsg(805);
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
  if (DBCartoes.TotalGeral('Valor') > 0) and (cmbCartao.LookupKeyValue = null) then begin
  	DlgMsg.ShowMsg( 517 );
    Exit;
  end;

  if (DBCartoes.TotalGeral('Valor') > 0) and (C_DepositosValorParcela.Value < DMFinanceiro.getParcelaMinima(C_CartoesCartao.Value)) then begin
  	DlgMsg.ShowMsg( 936 );
    Exit;
  end;

	if C_DepositosCreditoUtilizado.Value > C_DepositosCreditoCliente.Value then begin
  	DlgMsg.ShowMsg( 519 );
    pgForma.ActivePage := tabCredito;
    if dfUtilizarCredito.CanFocus then
    	dfUtilizarCredito.SetFocus;
    Exit;
  end;

	if (C_DepositosTroco.Value >= C_DepositosValor.Value) then begin
  	DlgMsg.ShowMsg( 955 );
    Exit;
  end;

  if (C_DepositosValor.Value + C_DepositosCreditoUtilizado.Value) <= 0 then begin
    // ShowMessage('O Valor do Recebimento não é válido!');
    DlgMsg.ShowMsg(228);
    Exit;
  end;

	if (C_DepositosOutroValor.Value > 0) and (cmbOutraForma.LookupKeyValue = null) then begin
  	DlgMsg.ShowMsg( 524 );
    pgForma.ActivePage := tabOutros;
    if cmbOutraForma.CanFocus then
      cmbOutraForma.SetFocus;
    Exit;
  end;

	if (C_DepositosOutroValor.Value > 0) and (cmbContaOutro.Text = '') then begin
  	DlgMsg.ShowMsg( 921 );
    pgForma.ActivePage := tabOutros;
    if cmbOutraForma.CanFocus then
      cmbOutraForma.SetFocus;
    Exit;
  end;

	if (C_DepositosValorTEF.Value > 0) and (cmbContaTEF.Text = '') then begin
  	DlgMsg.ShowMsg( 920 );
    pgForma.ActivePage := tabTEF;
    if cmbContaTEF.CanFocus then
      cmbContaTEF.SetFocus;
    Exit;
  end;

  if (ckbPrePagamento.Checked) and (C_DepositosCliente.Value = 1) then begin
  	DlgMsg.ShowMsg(804);
    Exit;
  end;

  {Vericando contas}
  if (not ckbPrePagamento.Checked) and (DMProjeto.Parametro('HabilitarContabilidade')='S') then
  	if not DMFinanceiro.ValidaContas( C_ContasOperacao, DBContas.TotalGeral('Valor'), C_DepositosValor.value) then
  	  exit;

  sCredito := '';
  if C_DepositosCreditoUtilizado.Value > 0 then
  	sCredito := ', sendo '+currencystring+formatfloat('###,###,##0.00',C_DepositosCreditoUtilizado.Value)+ ' em utilização de crédito.';

  // sMsg := 'Confirma o Recebimento de R$ '+formatfloat('###,##0.00',C_DepositosValor.Value)+' na Conta "'+cmbConta.Text+'" referente a '+C_DepositosHistorico.Value+'?'
  if bMostrarMensagem then begin
    if DlgMsg.ShowMsg( 235, [currencystring+formatfloat('###,##0.00',C_DepositosValor.Value),iif((QtdeFormasPagamentoSel=1) and (clbForma.Checked[getIndex('20')]),cmbContaTEF.Text,cmbConta.Text),C_DepositosHistorico.AsString,sCredito,iif(nCredito>0,', sendo '+formatfloat('#,###,##0.00',nCredito)+ 'para gerar crédito','')]) = 200 then
      exit;
  end;
  result := true;
end;

function TDlgDepositosInstantaneos.Gravar;
var IDTitulo, i, j, xContaReceber, nOperacao : integer;
		dtVencimento : TDateTime;
    Titulo : string;
    nDiferencaParcelas : Currency;
begin
  IDTitulo := 0;
  {Início da Gravação}
	result := false;
	try

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if DepositoHist <> 0 then begin

  		{Verificando se o crédito já foi utilizado}
  		if (ckbPrePagamento.Checked) and (C_DepositosValor.Value < C_DepositosCreditoGerado.Value) then begin
  			if C_DepositosCreditoGerado.Value > DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, true) then begin
    			DlgMsg.ShowMsg(7003,['alterar']);
      		Exit;
    		end;
  		end;

  		if (not ckbPrePagamento.Checked) and (C_DepositosCreditoGerado.Value > 0) then begin
  			if C_DepositosCreditoGerado.Value > DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, true) then begin
    			DlgMsg.ShowMsg(7003,['alterar']);
      		Exit;
    		end;
  		end;

    	DMFinanceiro.ApagarDeposito( DepositoHist, ckbPrePagamento.Checked );
			with DMFinanceiro.Q_SQL2 do begin
      	close;
        sql.text := 'select o.operacao '+
        						'from operacoesfinanceiras o '+
                   	'where o.tipooperacao = 10 and o.contaorigem = :deposito '+
                   	'and o.situacao is null ';
        parambyname('deposito').AsInteger := DepositoHist;
        open;
        if fields[0].AsInteger <> 0 then
        	DMFinanceiro.CancelarOperacao( fields[0].AsString, 10 );
        close;
      end;
    end;
    {Gerando Titulo a Receber, se não for Pré-Pagamento}
    if not ckbPrePagamento.Checked then
      IDTitulo := DMFinanceiro.Conta_A_Receber( 1,
      					        C_DepositosValor.Value,
                                  	        C_DepositosData.Value,
                                                C_DepositosCompetencia.Value,
                                                C_DepositosHistorico.AsString,
                                  	        C_DepositosCliente.Value,
                                                0, // Venda
                                                C_DepositosTitulo.AsString,
                                                2);

    {Gravando o Depósito}
   	{O valor pode ser zero se o usuário estiver quitando um título apenas com crédito}
                                           // 2 - Depósito rápido
    IDDeposito := DMFinanceiro.ReceberRapido( DepositoHist, IDTitulo, C_DepositosCliente.Value, C_DepositosConta.Value,
    				   0, C_DepositosData.Value, C_DepositosCompetencia.Value,
                                   C_DepositosHistorico.AsString,
                                   C_DepositosValor.Value, 0, 0, C_DepositosCreditoUtilizado.Value, iif(ckbPrePagamento.Checked,C_DepositosValor.Value,0),0,
                                   iif(C_DepositosTroco.Value > C_DepositosValorDinheiro.Value,C_DepositosTroco.Value-C_DepositosValorDinheiro.Value, 0));


    with DMFinanceiro.Q_SQL do begin
    	close;
    	sql.text := 'update titulosareceber set idgerador_areceber = :idgerador where id = :id ';
    	parambyname('idgerador').asInteger := IDDeposito;
    	parambyname('id').asInteger := IDTitulo;
    	execsql;
    end;

    DepositoHist := IDDeposito; // *Adriano*
    {Lançamento em Dinheiro}
    if (C_DepositosValorDinheiro.Value > 0) and (C_DepositosValorDinheiro.Value > C_DepositosTroco.Value) then begin

      DMFinanceiro.ReceberDoc( aIDDoc[0], 2, IDDeposito, 1, C_DepositosValorDinheiro.Value - C_DepositosTroco.Value,C_DepositosData.Value, C_DepositosHistorico.value, 0, 0,'', 0 );
      aIDDocAtualizado[0] := 'S';
    end;

    {Lançamento em Cheques}
		if (C_Cheques.Active) and (DBCheques.TotalGeral('Valor') > 0) then begin
      C_Cheques.disablecontrols;
      C_Cheques.First;
      i := 10;
    	while not C_Cheques.EOF do begin

       	DMFinanceiro.ReceberDoc(aIDDoc[i], 2, IDDeposito, 2, C_ChequesValor.Value,C_ChequesVencimento.Value, C_DepositosHistorico.value, C_ChequesNumCheque.Value,
                             		C_ChequesBanco.Value, C_ChequesChequeNominal.Value, 0,0, C_ChequesContaReceber.Value );
        C_Cheques.Next;
        aIDDocAtualizado[i] := 'S';
        inc(i);
      end;
      C_Cheques.enablecontrols;

    end;

    {Lançamento em Cheques Eletrônico}
		if (C_ChequesEletronico.Active) and (DBChequesEletronico.TotalGeral('Valor') > 0) then begin
      with C_ChequesEletronico do begin
      	DisableControls;
      	First;
      	i := 40;
    		while not EOF do begin

       		DMFinanceiro.ReceberDoc(aIDDoc[i], 2, IDDeposito, 4, C_ChequesEletronicoValor.Value,
       											 			C_ChequesEletronicoVencimento.Value,
                                  iif(C_ChequesEletronicoObs.value='',C_DepositosHistorico.Value,C_ChequesEletronicoObs.value),
                                  0, 0, '', 0, 0, C_ChequesEletronicoContaReceber.Value );
        	aIDDocAtualizado[i] := 'S';
        	inc(i);
          Next;

        end;
        EnableControls;
      end;
    end;

    { Lançamento em Cartão de Crédito}
    if (C_Cartoes.Active) and (DBCartoes.TotalGeral('Valor') > 0) then begin

      C_Cartoes.DisableControls;
      C_Cartoes.First;
      i := 10;
      j := 70;
    	while not C_Cartoes.EOF do begin

    		dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, C_DepositosData.Value);

        nDiferencaParcelas := C_CartoesValor.AsCurrency-(C_CartoesNumParcelas.Value*(StrToFloat(formatfloat('#######0.00',C_CartoesValorParcela.Value))));

        for i := 1 to C_CartoesNumParcelas.Value do begin
          if (i = C_CartoesNumParcelas.Value) and (nDiferencaParcelas <> 0) then begin
            C_Cartoes.Edit;
            C_CartoesValorParcela.Value := C_CartoesValorParcela.Value + nDiferencaParcelas;
            C_Cartoes.Post;
          end;

       		DMFinanceiro.ReceberDoc( aIDDoc[j], 2, IDDeposito, C_CartoesCartao.Value,
                                   C_CartoesValorParcela.Value, dtVencimento,
                                   C_DepositosHistorico.value, 0, 0, '', 0,
                                   C_CartoesModoCartao.Value, C_CartoesContaCartao.Value,
                                   C_CartoesNumeroCartao.Value, C_CartoesValidade.Value );
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

    {Lançamentos TEF/Depósito Bancário}
    if (C_DepositosValorTEF.Value > 0) then begin

       	DMFinanceiro.ReceberDoc( aIDDoc[4], 2, IDDeposito, 20, C_DepositosValorTEF.Value,
       											 C_DepositosData.Value, C_DepositosHistorico.value, 0,0,'', C_DepositosContaTEF.Value );
        aIDDocAtualizado[4] := 'S';
    end;

    {Lançamento com outra forma de pagamento}
    if (C_DepositosOutroValor.Value > 0) then begin

       	DMFinanceiro.ReceberDoc( aIDDoc[5], 2, IDDeposito, C_DepositosOutraForma.Value, C_DepositosOutroValor.Value,
       											 C_DepositosData.Value, C_DepositosHistorico.value,0,0,'',0,0,C_DepositosContaOutro.Value );
        aIDDocAtualizado[5] := 'S';
    end;

    {Lançamento Utilização de Crédito}
    if (C_DepositosCreditoUtilizado.Value > 0) then begin

       	DMFinanceiro.ReceberDoc( aIDDoc[6], 2, IDDeposito, -1, C_DepositosCreditoUtilizado.Value,
          											 C_DepositosData.Value, C_DepositosHistorico.value,0,0,'',0,0 );
        aIDDocAtualizado[6] := 'S';
    end;

		{Acertando o Cheque}
    if pnChequesDev.Visible and (DBchequesDev.TotalSelecionado('Total')>0) then begin

      DBChequesDev.FirstSelected;
      for i:=1 to ContaStrings(DBChequesDev.Selecionados,',') do begin
    		DMFinanceiro.AcertarChequeDevolvido( DMFinanceiro.C_ChequesDevIDDoc.Value,
        																		 IDDeposito,	
        																		 DMFinanceiro.C_ChequesDevTotal.Value,
                                						 DMFinanceiro.C_ChequesDevEncargos.Value,
                                             DMFinanceiro.C_ChequesDevDespesas.Value,
                                             nOperacao);

    		// Adriano
    		DMContabil.ContabilizaAcertoCheque(0,C_DepositosCliente.Value,C_DepositosConta.Value,DMFinanceiro.C_ChequesDevIDDoc.Value,DMFinanceiro.C_ChequesDevValor.Value,DMFinanceiro.C_ChequesDevDespesas.Value+DMFinanceiro.C_ChequesDevEncargos.Value);

      	DBChequesDev.NextSelected;
      end;

    end;

    {Troco}
    if C_DepositosTroco.Value > C_DepositosValorDinheiro.Value then
    	DMFinanceiro.LancamentoDeTroco( C_DepositosConta.Value, C_DepositosData.Value, C_DepositosTroco.Value-C_DepositosValorDinheiro.Value, C_DepositosCliente.Value, IDDeposito, 2);

    {Apagar Documentos não Selecionados}
    for i:=0 to 1000 do
    	if (aIDDoc[i] <> 0) and (aIDDocAtualizado[i]<>'S') then
      	DMFinanceiro.ApagarDoc( aIDDoc[i], true );

    {Baixa do Titulo}
    DMFinanceiro.BaixarTitulo( IntToStr(IDTitulo) );

    {Atualizando Créditos}
    if C_DepositosCreditoUtilizado.Value > 0 then                                                                 // 'Crédito Utilizado em Depósito ('+C_DepositosHistorico.Value+')'
      DMFinanceiro.RegistrarCredito(C_DepositosCliente.Value, IDDeposito, 2, TRUE, C_DepositosCreditoUtilizado.Value, 0, format(DMProjeto.getMsg(239),[C_DepositosHistorico.AsString]) );

    if ckbPrePagamento.Checked then
    	DMFinanceiro.RegistrarCredito(C_DepositosCliente.Value, IDDeposito, 2, TRUE, 0, C_DepositosValor.Value-C_DepositosCreditoUtilizado.Value, C_DepositosHistorico.Value ); //format(DMProjeto.getMsg(240),[''])

    if (nCredito > 0) and (not ckbPrePagamento.Checked) then
    	DMFinanceiro.RegistrarCredito(C_DepositosCliente.Value, IDDeposito, 2, TRUE, 0, nCredito, C_DepositosHistorico.Value ); //format(DMProjeto.getMsg(240),[''])

    if (not ckbPrePagamento.Checked) then
    	DMFinanceiro.InserirContasOperacao( C_ContasOperacao, IDTitulo, 2);

    // Adriano
    DMContabil.ContabilizaReceberPagamentosRapido(DepositoHist,ckbPrePagamento.Checked,C_Depositos,C_ContasOperacao,C_Cheques,C_Cartoes,C_ChequesEletronico);

    xContaReceber := DMContabil.ContaFlag('AR');
    if not DMContabil.Salvar(DepositoHist) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

    // Adriano
    if (not ckbPrePagamento.Checked) then begin
      DMContabil.ContabilizaReceberParcelasRapido(IDTitulo,xContaReceber,C_Depositos,C_ContasOperacao);

      if not DMContabil.Salvar(IDTitulo) then
        raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////
    end;


    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    if fileexists(DMProjeto.SonsPath+'caixareg.wav') then
			sndplaysound(PChar(DMProjeto.SonsPath+'caixareg.wav'), SND_ASYNC);

    try
      SendLastDataObject(Self.Name, 'Depositos', 'Deposito',IDDeposito, false );
    except
    end;

    result := true;

  except
    on E: Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;

      // ShowMessage('Não foi possível gravar o Recebimento!  '+e.message);
      DlgMsg.ShowMsg( 242, e.message, '' );

      DMProjeto.GeraLog('Deposito',e.message);
    end;
  end;
end;

procedure TDlgDepositosInstantaneos.C_DepositosNewRecord(
  DataSet: TDataSet);
var dData : TDateTime;
begin
  inherited;
  C_DepositosDescDinheiro.value := clbForma.Items[getIndex('5')];
  C_DepositosDescCheque.value := clbForma.Items[getIndex('1')];
  if DMProjeto.nFuncionario > 0 then
    C_DepositosUsuario.Value := DMProjeto.nFuncionario;
  C_DepositosValor.Value := 0;
  C_DepositosValorRecebido.Value := 0;
  C_DepositosCreditoCliente.Value 	:= 0;
  C_DepositosCreditoUtilizado.Value := 0;
  C_DepositosOutroValor.Value 			:= 0;
  C_DepositosValorDinheiro.Value 		:= 0;
  C_DepositosValorCheque.Value 			:= 0;
  C_DepositosValorCartao.Value 			:= 0;
  C_DepositosValorTEF.Value 				:= 0;
  C_DepositosNumParcelas.Value   		:= 1;
  C_DepositosValorParcela.Value   	:= 0;
  C_DepositosTroco.Value   					:= 0;
  C_DepositosCliente.Value   				:= 0;
  C_DepositosData.Value  				    := dtData;
  if DMProjeto.Parametro('ModoCartao') = '2' then
  	C_DepositosModoCartao.Value   	:= 2
  else
    C_DepositosModoCartao.Value   	:= 1;

  if ckbPrePagamento.Checked then
  	C_DepositosHistorico.Value				:= 'Pré-Pagamento';
end;

procedure TDlgDepositosInstantaneos.dfFavorecidoExit(Sender: TObject);
begin
  if (C_DepositosCliente.AsVariant = null ) and (dfFavorecido.Text <> '') then begin
    // ShowMessage('O Nome da pessoa/empresa a quem está pagando não foi informado corretamente!');
    DlgMsg.ShowMsg( 344 );
    C_Depositos.Edit;
    C_DepositosNome.asVariant := null;
    end
  else if (C_DepositosNome.Value = '') and not C_DepositosCliente.Isnull then begin
    C_Depositos.Edit;
    C_DepositosCliente.asVariant := null;
    C_DepositosNome.asVariant := null;
  end;
end;

function TDlgDepositosInstantaneos.AtualizaTotalFormaPagamento;
begin
  if not (C_Depositos.State in [dsEdit,dsInsert]) then
  	C_Depositos.Edit;
  C_DepositosValorCheque.Value := DBCheques.TotalGeral('Valor');
  C_DepositosValorCartao.Value := DBCartoes.TotalGeral('Valor');
  C_DepositosValorChequeEletronico.Value := DBChequesEletronico.TotalGeral('Valor');
  C_DepositosValor.Value := C_DepositosValorDinheiro.Value +
                           	C_DepositosValorCheque.Value +
                            C_DepositosValorChequeEletronico.Value +
                           	C_DepositosValorCartao.Value +
                            C_DepositosCreditoUtilizado.Value +
                            C_DepositosOutroValor.Value+
                            C_DepositosValorTEF.Value-
                            C_DepositosTroco.Value;
  C_DepositosValorRecebido.Value := C_DepositosValorDinheiro.Value +
                           	C_DepositosValorCheque.Value +
                            C_DepositosValorChequeEletronico.Value +
                           	C_DepositosValorCartao.Value +
                            C_DepositosCreditoUtilizado.Value +
                            C_DepositosOutroValor.Value+
                            C_DepositosValorTEF.Value;
  result := C_DepositosValor.Value;
end;

procedure TDlgDepositosInstantaneos.C_DepositosCREDITOUTILIZADOChange(
  Sender: TField);
begin
  inherited;
	AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.C_ChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
    C_ChequesID.Value						:= nIDCheque;
    C_ChequesNumCheque.Value		:= nNumCheque;
  	C_ChequesVencimento.Value		:= dtData;
  	C_ChequesBanco.Value				:= C_DepositosBanco.Value;
  	C_ChequesChequeNominal.Value:= C_DepositosNome.Value;
    DBCheques.TS_SelectedColumn := 'Valor';
    inc(nIDCheque);
end;

procedure TDlgDepositosInstantaneos.C_ChequesBeforePost(DataSet: TDataSet);
begin
  inherited;
	if C_Cheques.State in [dsInsert,dsEdit] then begin
    if C_ChequesNumCheque.AsInteger <> 0 then
  	   nNumCheque := C_ChequesNumCheque.AsInteger+1
    else
    	 nNumCheque := 1;
    {
    if DMProjeto.Parametro('DiasParaCadaCheque') = '30' then
    	dDataCheque:= DateAdd( 'MM',1,C_ChequesVencimento.AsDateTime)
    else
			dDataCheque:= C_ChequesVencimento.AsDateTime+StrToIntDef(DMProjeto.Parametro('DiasParaCadaCheque'),0);
    }
  end;
end;

procedure TDlgDepositosInstantaneos.SetFormaPagamento( nIndex : integer );
var nValor : currency;
		sCampo : string;
begin
  inherited;
  if DMFinanceiro.C_ChequesDev.State in [dsEdit,dsInsert] then
		DMFinanceiro.C_ChequesDev.Post;
	if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '5' then
		sCampo := 'ValorDinheiro'
  else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '6' then
  	sCampo := 'CreditoUtilizado'
  else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '20' then
  	sCampo := 'ValorTEF'
  else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '0' then
  	sCampo := 'OutroValor';
  C_Depositos.Edit;
  if clbForma.Checked[nIndex] then begin
  	{Cheque}
    if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '1' then begin
      C_Cheques.Append;
      C_ChequesVencimento.Value	:= dtData;
      if pnChequesDev.Visible and (DBChequesDev.TotalSelecionado('Total') > 0) then
      	C_ChequesValor.Value := DBChequesDev.TotalSelecionado('Total');
      C_Cheques.Post;
			AtualizaTotalFormaPagamento;
    	DBCheques.TS_SelectedColumn := 'NumCheque';
    {Cheque Eletrônico}
    end else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '2' then begin
      C_ChequesEletronico.Append;
      C_ChequesEletronicoConvenio.Value := DMFinanceiro.C_ChequesEletFormaPagamento.Value;
      C_ChequesEletronicoVencimento.Value	:= dtData;
      if pnChequesDev.Visible and (DBChequesDev.TotalSelecionado('Total') > 0) then
      	C_ChequesEletronicoValor.Value := DBChequesDev.TotalSelecionado('Total');
      C_ChequesEletronico.Post;
			AtualizaTotalFormaPagamento;
    	DBChequesEletronico.TS_SelectedColumn := 'Valor';
    end else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '3' then begin
      C_Cartoes.Append;
      if pnChequesDev.Visible and (DBChequesDev.TotalSelecionado('Total') > 0) then
      	C_CartoesValor.Value := DBChequesDev.TotalSelecionado('Total');
      C_Cartoes.Post;
      AtualizaTotalFormaPagamento
    end else if not (StrToInt(SeparaStrings(clbForma.TagStr,',',nIndex+1)) in [1,2]) then begin
      if pnChequesDev.Visible and (DBChequesDev.TotalSelecionado('Total') > 0) then
     		C_Depositos.FieldByName(sCampo).Value := DBChequesDev.TotalSelecionado('Total');
      C_Depositos.FieldByName(sCampo).FocusControl;
    end;
  end else begin
		if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '1' then begin
	  	if C_Cheques.Active then
  	  	C_Cheques.EmptyDataSet;
		end else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '2' then begin
	  	if C_ChequesEletronico.Active then
  	  	C_ChequesEletronico.EmptyDataSet;
    end else if SeparaStrings(clbForma.TagStr,',',nIndex+1) = '3' then begin
	  	if C_Cartoes.Active then
  	  	C_Cartoes.EmptyDataSet;
    end else if not (StrToInt(SeparaStrings(clbForma.TagStr,',',nIndex+1)) in [1,2]) then
  		C_Depositos.FieldByName(sCampo).Value := 0;
    AtualizaTotalFormaPagamento;
  end;
end;

procedure TDlgDepositosInstantaneos.clbFormaClickCheck(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to clbForma.Items.Count-1 do
		if clbForma.Checked[i] then begin
      pgForma.Visible := true;
      break;
    end;

  if clbForma.Checked[clbForma.ItemIndex] then
    pgForma.ShowTab(clbForma.ItemIndex)
  else
  	pgForma.HideTab(clbForma.ItemIndex);
  SetFormaPagamento( clbForma.ItemIndex );
  Application.ProcessMessages;
end;

procedure TDlgDepositosInstantaneos.C_DepositosCLIENTEChange(
  Sender: TField);
begin
  inherited;
    if Sender.AsInteger <> 0 then begin
    	C_DepositosCreditoCliente.Value := DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, True);
   		clbForma.ItemEnabled[getIndex('6')] := (C_DepositosCreditoCliente.Value > 0) and (not ckbPrePagamento.Checked);
    	C_DepositosCreditoUtilizado.Value := 0;
      if not clbForma.ItemEnabled[getIndex('6')] then
      	pgForma.HideTab(4);
  	end;
end;

procedure TDlgDepositosInstantaneos.getHistorico( Deposito : integer );
var CreditoUtilizado, CreditoGerado, Troco : currency;
		i, j, k, IDTitulo : integer;
begin
	Novo;
  DepositoHist := Deposito;
	pnCancelado.Visible:= DMFinanceiro.GetSituacaoDeposito(Deposito)='C';
  btComando1.Visible := true;
  btImprimir.Visible := true;
  btComando1.Enabled := not pnCancelado.Visible;
  btImprimir.Enabled := not pnCancelado.Visible;
  with DMFinanceiro do begin
  	Favorecido	:= getFavorecidoDeposito( DepositoHist );
    with Q_ComandoSQL do begin
      Close;
      SQL.Text := 'select dd.IDDoc, dd.Deposito, dd.ContaAtual, d.Data, d.Conta, dt.titulo, '+
      						'd.Historico, dd.FormaPagamento, fp.Especie, dd.Vencimento, '+
                  'dd.Valor, dd.NumCheque, dd.Banco, dd.ContaReceber, d.CreditoGerado, '+
                  'dd.Tipo, dd.NumeroCartao, dd.Validade, d.CreditoUtilizado, d.CreditoGerado, d.Troco, dd.obs  '+
       						'from DepositosDoc dd '+
                  'inner join Depositos d on d.deposito = dd.deposito '+
                  'inner join FormasPagamento fp on fp.formapagamento = dd.formapagamento '+
                  'left join depositostitulos dt on dt.deposito = d.deposito '+
       						'where dd.Deposito = :Dep ';
      ParamByName('Dep').AsInteger := DepositoHist;
      Open;
      disablecontrols;
      First;
      C_Depositos.Edit;
      CreditoGerado		:= fieldbyname('CreditoGerado').AsCurrency;
     	CreditoUtilizado:= fieldbyname('CreditoUtilizado').AsCurrency;
      IDTitulo := fieldbyname('titulo').asInteger;
      Troco := fieldbyname('Troco').AsCurrency;
      C_DepositosNumParcelas.Value  := 0;
      dfFavorecido.ID 					:= Favorecido;
      C_DepositosTroco.Value 		:= Troco;
      C_DepositosData.Value 		:= fieldbyname('Data').AsDateTime;
      C_DepositosHistorico.Value:= fieldbyname('Historico').AsString;
      C_DepositosConta.Value 		:= fieldbyname('Conta').AsInteger;
      C_DepositosCreditoGerado.Value := CreditoGerado;
      ckbPrePagamento.Checked   := fieldbyname('CreditoGerado').AsCurrency > 0;
      if not ckbPrePagamento.Checked then begin
          with DMFinanceiro do begin
            C_ChequesDev.Close;
            C_ChequesDev.Open;
          	with Q_SQL2 do begin
          		close;
            	sql.text := 'select od.iddoc, od.valor, od.vencimento, od.numcheque, '+
                        	'o.valorjuros as Encargos, o.percentualjuros as Despesas '+
            							'from operacoesfinanceiras o '+
                        	'inner join operacoesfinanceirasdet od on od.operacao = o.operacao '+
                        	'where o.tipooperacao = 10 and o.contaorigem = :deposito '+
                        	'and o.situacao is null ';
            	parambyname('deposito').AsInteger := DepositoHist;
            	open;
            	while not eof do begin
                C_ChequesDev.Append;
                C_ChequesDevIDDoc.Value 		:= fieldbyname('iddoc').AsInteger;
                C_ChequesDevValor.Value 		:= fieldbyname('valor').AsCurrency;
                C_ChequesDevData.Value			:= fieldbyname('vencimento').AsDateTime;
                C_ChequesDevNumCheque.Value := fieldbyname('numcheque').AsInteger;
                C_ChequesDevDespesas.Value 	:= fieldbyname('despesas').AsCurrency;
                C_ChequesDevEncargos.Value 	:= fieldbyname('encargos').AsCurrency;
                C_ChequesDev_icSelecionado.Value := 1;
                C_ChequesDev.Post;
                Next;
                if not pnChequesDev.Visible then begin
  								pnMemo.Visible := false;
    							pnChequesDev.Visible 	:= true;
    							pnChequesDev.Align 		:= alClient;
								lbMsg.Caption := 'Há '+IntToStr(DMFinanceiro.C_ChequesDev.RecordCount)+
    						 		 				  ' cheque(s) devolvidos no total de '+formatfloat('#,###,##0.00',dbChequesDev.TotalGeral('Total'));
                end;
            	end;
              close;
            end;
          end;
      end;
      DMContabil.SetPrePagamentoDep(ckbPrePagamento.Checked);
      C_Cheques.EmptyDataSet;
      C_Cheques.DisableControls;
      C_ChequesEletronico.EmptyDataSet;
      C_ChequesEletronico.DisableControls;
      C_Cartoes.DisableControls;
      pgForma.Visible := true;
      LimpaArrayDoc;
      i := 10; // Cheques
      k := 40; // Cheques Eletronico
      j := 70; // Cartao

      while not EOF do begin
      	if fieldbyname('Especie').AsInteger = 5 then begin // Dinheiro
          aIDDoc[0] := fieldbyname('IDDoc').AsInteger;
        	clbForma.Checked[getIndex('5')] := true;
          clbForma.ItemIndex 	:= getIndex('5');
          pgForma.ShowTab(0);
          C_DepositosValorDinheiro.Value := fieldByname('Valor').AsCurrency;
        end else if fieldbyname('Especie').AsInteger = 1 then begin // Cheques
          clbForma.Checked[getIndex('1')] 		:= true;
          clbForma.ItemIndex := getIndex('1');
          pgForma.ShowTab(1);
          C_Cheques.Append;
          C_ChequesNumCheque.Value 	:= fieldbyname('numcheque').asInteger;
          C_ChequesBanco.Value			:= fieldbyname('banco').asInteger;
          C_ChequesValor.Value			:= fieldbyname('valor').AsCurrency;
          C_ChequesVencimento.Value	:= fieldbyname('vencimento').asdatetime;
          C_ChequesContaReceber.Value := fieldbyname('contareceber').asInteger;
          C_Cheques.Post;
          aIDDoc[i] := fieldbyname('IDDoc').AsInteger;
          inc(i);
        end else if fieldbyname('Especie').AsInteger = 2 then begin // Cheques Eletrônico
          clbForma.Checked[getIndex('2')] 		:= true;
          clbForma.ItemIndex := getIndex('2');
          pgForma.ShowTab(2);
          C_ChequesEletronico.Append;
          C_ChequesEletronicoConvenio.Value 		:= fieldbyname('formapagamento').AsInteger;
          C_ChequesEletronicoValor.Value				:= fieldbyname('valor').AsCurrency;
          C_ChequesEletronicoVencimento.Value		:= fieldbyname('vencimento').AsDatetime;
          C_ChequesEletronicoContaReceber.Value := fieldbyname('contareceber').AsInteger;
          C_ChequesEletronicoObs.Value 					:= fieldbyname('obs').AsString;
          C_ChequesEletronico.Post;
          aIDDoc[k] := fieldbyname('IDDoc').AsInteger;
          inc(k);
        end else if fieldbyname('Especie').AsInteger = 3 then begin {Cartão de Crédito}
          clbForma.Checked[getIndex('3')]	:= true;
          clbForma.ItemIndex	:= getIndex('3');
          aIDDoc[j] := fieldbyname('IDDoc').AsInteger;
          inc(j);
          tabCartao.OnShow 		:= nil;
          pgForma.ShowTab(3);
          tabCartao.OnShow 		:= tabCartaoShow;
          if C_CartoesCartao.Value <> fieldByname('formapagamento').AsInteger then begin
            C_Cartoes.Append;
            C_CartoesNumParcelas.Value  := 0;
          end else
            C_Cartoes.Edit;
          C_CartoesCartao.OnChange 		:= nil;
          C_CartoesCartao.Value		 		:= fieldByname('formapagamento').AsInteger;
          C_CartoesCartao.OnChange 		:= C_CartoesCartaoChange;
          C_CartoesValor.Value 		 		:= C_CartoesValor.Value + fieldByname('Valor').AsCurrency;
          C_CartoesNumParcelas.Value  := C_CartoesNumParcelas.Value + 1;
          C_CartoesContaCartao.Value	:= fieldByname('contareceber').AsInteger;
          if fieldbyname('Tipo').asInteger in [1,2] then
            C_CartoesModoCartao.Value := fieldbyname('Tipo').AsInteger;
          if C_CartoesValorParcela.Value = 0 then
            C_CartoesValorParcela.Value := fieldByname('Valor').AsCurrency;
          C_CartoesNumeroCartao.Value		:= fieldbyname('NumeroCartao').AsString;
          C_CartoesValidade.Value				:= fieldbyname('Validade').AsString;
          C_Cartoes.Post;
        end else if fieldbyname('Especie').AsInteger = 6 then begin {Utilização Crédito}
          aIDDoc[6] := fieldbyname('IDDoc').AsInteger;
         	clbForma.Checked[getIndex('6')] := true;
         	clbForma.ItemIndex 	:= getIndex('6');
         	pgForma.ShowTab(4);
        	C_DepositosCreditoUtilizado.Value := fieldByname('Valor').AsCurrency;
        end else if fieldbyname('Especie').AsInteger = 20 then begin {TEF}
	        aIDDoc[4] := fieldbyname('IDDoc').AsInteger;
          clbForma.Checked[getIndex('20')] 		:= true;
          clbForma.ItemIndex 			:= getIndex('20');
          pgForma.ShowTab(5);
          C_DepositosContaTEF.Value	:= fieldByname('contaatual').AsInteger;
          C_DepositosValorTEF.Value := fieldByname('Valor').AsCurrency;
        end else if fieldbyname('Especie').AsInteger IN [10,40] then begin {Outros,Serviços}
          aIDDoc[5] := fieldbyname('IDDoc').AsInteger;
          clbForma.Checked[getIndex('0')] := true;
          clbForma.ItemIndex 	:= getIndex('0');
          pgForma.ShowTab(6);
          C_DepositosOutraForma.Value		:= fieldByname('formapagamento').AsInteger;
          C_DepositosContaOutro.Value		:= fieldByname('contareceber').AsInteger;
          C_DepositosOutroValor.Value 	:= fieldByname('Valor').AsCurrency;
        end;
        Next;
      end;
      enablecontrols;

			CarregarContasOperacao( C_ContasOperacao, IDTitulo );
      {
      if CreditoUtilizado > 0 then begin
         clbForma.Checked[3] 			:= true;
         clbForma.ItemIndex 			:= 3;
         pgForma.ShowTab(3);
         C_DepositosCreditoUtilizado.Value := CreditoUtilizado;
      end else begin
         clbForma.Checked[3] := false;
         pgForma.HideTab(3);
      end;
      }
      C_DepositosCreditoCliente.Value   := C_DepositosCreditoCliente.Value + CreditoUtilizado;
      Application.ProcessMessages;
      if not clbForma.Checked[getIndex('3')] then
      	C_DepositosNumParcelas.Value  := 1;
      C_Depositos.Post;
    end;
    DMProjeto.LimparParametrosForm;
  end;
  if C_Cartoes.RecordCount > 1 then
   	btMaisCartoes.Click;
  C_Cheques.EnableControls;
  C_ChequesEletronico.EnableControls;
  C_Cartoes.EnableControls;

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

procedure TDlgDepositosInstantaneos.tabDinheiroShow(Sender: TObject);
begin
  inherited;
	dfDinheiro.SetFocus;
end;

procedure TDlgDepositosInstantaneos.DBChequesExit(Sender: TObject);
begin
  inherited;
  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;
  if C_Cheques.Active then
		AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.tabChequeShow(Sender: TObject);
begin
  inherited;
  DBCheques.TS_SelectedColumn := 'NumCheque';
  DBCheques.SetFocus;
end;

procedure TDlgDepositosInstantaneos.C_ChequesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.tabCartaoShow(Sender: TObject);
begin
  inherited;
{  if C_Depositos.Active then begin
  	if C_Depositos.State in [dsBrowse] then
  		C_Depositos.Edit;
  	//C_DepositosCartaoCredito.Value := DMFinanceiro.C_CartoesCredFormaPagamento.value;
  	//cmbCartao.LookupKeyValue := DMFinanceiro.C_CartoesCredFormaPagamento.value;
  	dfCartao.SetFocus;
  	//dfCartao.SelectAll;
  end;}
  cmbCartao.SetFocus;
end;

procedure TDlgDepositosInstantaneos.tabTEFShow(Sender: TObject);
begin
  inherited;
  if C_Depositos.Active then begin
  	if C_Depositos.State in [dsBrowse] then
  		C_Depositos.Edit;
  	C_DepositosContaTEF.Value := DMFinanceiro.getContaBancoPadrao;
  	dfValorTEF.SetFocus;
  	dfValorTEF.SelectAll;
  end;
end;

procedure TDlgDepositosInstantaneos.tabOutrosShow(Sender: TObject);
begin
  inherited;
  if C_Depositos.Active then begin
  	if C_Depositos.State in [dsBrowse] then
  		C_Depositos.Edit;
  	C_DepositosOutraForma.Value 	:= DMFinanceiro.C_OutrasFormaFormaPagamento.Value;
  	cmbOutraForma.LookupKeyValue 	:= DMFinanceiro.C_OutrasFormaFormaPagamento.Value;
  	dfOutroValor.SetFocus;
  	dfOutroValor.SelectAll;
  end;
end;

procedure TDlgDepositosInstantaneos.C_DepositosCONTAChange(Sender: TField);
begin
  inherited;
  nConta := C_DepositosConta.Value;
  dtData := DMFinanceiro.C_ContasCxBcMovimentoCorrente.Value;
end;

procedure TDlgDepositosInstantaneos.C_DepositosDATAChange(Sender: TField);
begin
  inherited;
  C_DepositosCompetencia.Value := C_DepositosData.Value;
	dtData := C_DepositosData.Value;
end;

procedure TDlgDepositosInstantaneos.C_DepositosCompetenciaChange(
  Sender: TField);
begin
  inherited;
  dtCompetencia := C_DepositosCompetencia.Value;
end;

procedure TDlgDepositosInstantaneos.FormsComponentBeforeClearParams(
  Sender: TObject);
var bParcelarCartao : boolean;
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);

  bParcelarCartao    		:= DMProjeto.Parametro('ParcelarCartao')<>'N';
  lbParcelas.Visible 		:= bParcelarCartao;
  dbNumParcelas.Visible := bParcelarCartao;
  lbParcelasDe.Visible 	:= bParcelarCartao;
  dbValorParcela.Visible:= bParcelarCartao;

  pgPrincipal.UpdateVisibleTabs;
  nContaReceitaPadrao := DMProjeto.ContaPadrao(8);
  C_ContasOperacao.CreateDataSet;
  C_Depositos.CreateDataSet;
 	C_Cheques.CreateDataSet;
  C_ChequesEletronico.CreateDataSet;
  C_Cartoes.CreateDataSet;
  with DMFinanceiro do begin
    C_Contas.Open;
  	C_Bancos.Open;
  	C_OutrasForma.Open;
  	C_CartoesCred.Open;
  	C_ContasCxBc.Open;
  	C_ContasCxBc.Locate('Conta', DMFinanceiro.nContaPadrao , [] );
  	nConta := nContaPadrao;
  	dtData := C_ContasCxBcMovimentoCorrente.value;
  end;
  dtCompetencia := dtData;
  bModalResult 	:= false;
  cmbConta.ReadOnly  		:= DMProjeto.bCaixa or (not DMProjeto.LerPermissao(self.name,'AltContaDp'));
  dfData.ReadOnly	 	 		:= cmbConta.ReadOnly;
  dfCompetencia.ReadOnly:= cmbConta.ReadOnly;
  if cmbConta.ReadOnly then begin
  	cmbConta.Color   		:= $00EEEEEE;
    dfData.Color   			:= $00EEEEEE;
    dfCompetencia.Color := $00EEEEEE;
    cmbConta.PopupControl := nil;
    cmbConta.OnInitPopup:= nil;
    cmbConta.HideEditCursor := true;
  end;
  cbLockDate.Checked := DMProjeto.bCaixa;
  cbLockDate.ReadOnly:= DMProjeto.bCaixa;
  ckbImprimirRecibo.Checked := DMProjeto.Parametro('ImprimirReciboDeRecebimento')='S';
  with DMProjeto do begin
  	if ExisteParametrosForm then begin
      if getParametrosForm(0) <> null then begin
      	getHistorico( getParametrosForm(0) );
        bModalResult := true;
      end else if (QtdParametrosForm > 1) and (getParametrosForm(1) <> null) then begin
      	Novo;
        dfFavorecido.ID := getParametrosForm(1);
				if DMFinanceiro.C_ChequesDev.Active and (DMFinanceiro.C_ChequesDev.RecordCount>0) then
        	dbChequesDev.SelecionarLinha;
        bModalResult := true;
      end;
    end else
    	Novo;
  end;
  if not DMProjeto.LerPermissao(self.name,'ImpRecibo') then begin
  	ckbImprimirRecibo.Checked := false;
    ckbImprimirRecibo.ReadOnly:= true;
  end;
end;

procedure TDlgDepositosInstantaneos.cmbContaTEFInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgDepositosInstantaneos.cmbContaOutroInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgDepositosInstantaneos.FormActivate(Sender: TObject);
begin
  inherited;
  cmbContaOutro.popupcontrol 	:= DlgPopup.pnPopup;
  cmbContaTEF.popupcontrol 	:= DlgPopup.pnPopup;
  cmbConta.popupcontrol 	:= DlgPopup.pnPopup;
  DBContasDescConta.popupcontrol 	:= DlgPopup.pnPopup;
end;

procedure TDlgDepositosInstantaneos.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasCxBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgDepositosInstantaneos.C_ChequesBancoChange(Sender: TField);
begin
  inherited;
  if C_Depositos.State in [dsBrowse] then
  	C_Depositos.Edit;
	C_DepositosBanco.Value := C_ChequesBanco.Value;
end;

procedure TDlgDepositosInstantaneos.dbNumParcelasChange(Sender: TObject);
begin
  inherited;
  if dbNumParcelas.Value > 0 then
		C_CartoesValorParcela.Value := dfCartao.Value/dbNumParcelas.Value;
end;

procedure TDlgDepositosInstantaneos.btComando2Click(Sender: TObject);
var CreditoUtilizado, CreditoGerado  : currency;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
  	exit;
  with DMProjeto do begin
	  SetParametrosForm([2,'Recebimento Rápido',true]);
  	if CriarForm('DlgHistoricoDepositos',self,true) = 1 then begin
  		if ExisteParametrosForm then
      	getHistorico( getParametrosForm(0) );
    end else if (DMProjeto.QtdParametrosForm>1) and (pos(IntToStr(DepositoHist),DMProjeto.getParametrosForm(1))>0) then
    	Novo;
    LimparParametrosForm;
  end;
end;

procedure TDlgDepositosInstantaneos.DBChequesColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
   if Column.FieldName = 'DescBanco' then
    DMProjeto.CriarForm('FrmBancos',self,true);
	Allow := false;
end;

procedure TDlgDepositosInstantaneos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if UpperCase(LastDataObject.FormName) = 'FRMBANCOS' then begin
    DMFinanceiro.C_Bancos.Close;
    DMFinanceiro.C_Bancos.Open;
  	C_Cheques.Edit;
    C_ChequesBanco.AsInteger := LastDataObject.ObjectKey;
  end else if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_DBEditFavorecido then
    	TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TDlgDepositosInstantaneos.cmbContaChange(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ALTCONTADP' ) then
    	abort;
end;

function TDlgDepositosInstantaneos.QtdeFormasPagamentoSel: integer;
var i : integer;
begin
  result := 0;
	for i:=0 to clbForma.Items.Count-1 do
  	if clbForma.Checked[i] then
    	inc(result);
end;

procedure TDlgDepositosInstantaneos.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
    	exit;

  {Verificando se o crédito já foi utilizado}
  if C_DepositosCreditoGerado.Value > 0 then begin
  	if C_DepositosCreditoGerado.Value > DMFinanceiro.CreditoFavorecido(C_DepositosCliente.Value, true) then begin
    	DlgMsg.ShowMsg(7003,['cancelar']);
      Exit;
    end;
  end;

  if DlgMsg.ShowMsg( 577, ['este Recebimento ?']) = 100 then begin

  	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

		if DMFinanceiro.CancelarDeposito( IntToStr(DepositoHist),'',true,true) then
    	Novo;

  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     	DMProjeto.DB_Projeto.DefaultTransaction.Commit;

  end;
end;

procedure TDlgDepositosInstantaneos.btImprimirClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpRecibo' ) then
 		exit;
  if C_DepositosValor.Value-C_DepositosCreditoUtilizado.Value > 0 then begin
  	DMProjeto.ImprimirRecibo(21,'','',':deposito='+IntToStr(DepositoHist));
  end;
end;

procedure TDlgDepositosInstantaneos.DBContasDescContaInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
end;

procedure TDlgDepositosInstantaneos.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_ContasOperacaoSequencial.Value := nSeq;
  C_ContasOperacaoConta.Value := nContaReceitaPadrao;
  inc(nSeq);
end;


function TDlgDepositosInstantaneos.SetSaltos: string;
var nSalto, i: integer;
    sSaltos: string;
begin
    nSalto := StrToIntDef(DMProjeto.Parametro('SaltoLinhas'), 3);
    sSaltos := '';
    for i := 1 to nSalto do
        sSaltos := sSaltos + #10#13;
    result := sSaltos;
end;


procedure TDlgDepositosInstantaneos.btGravarClick(Sender: TObject);
begin
  inherited;
  Try
//Paulo Remoção do DMECF 22/08/2012

//      if (DMPRojeto.PAFObrigatorio) Then Begin
//        if (DMECF.ECF1.Suprimento(FormatFloat('0.00',C_DepositosValor.Value-C_DepositosCreditoUtilizado.Value), 'Recebimento')) Then
//           DMProjeto.ReducaoZ_R06('CN')
//        Else
//           raise Exception.Create('Impressora Desligada.'+#13+'O deposito não será efetuado pelo sistema.');
//      End;

      if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
                    exit;
      if (DepositoHist <> 0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
                    exit;
      if not Validacoes(DMProjeto.Parametro('Confirmacao') = 'S') then
            Exit;
            if Gravar then begin
        if ckbPrePagamento.Checked and ckbImpCredito.Checked Then Begin
           zrEmpresa.Caption  := DMProjeto.sNomeEmpresa;
           zrEndereco.Caption := DMProjeto.sEnderecoEmpresa;
           zrCidade.Caption   := DMProjeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
           zrFone.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
           zrNomeCodigoCliente.Caption := dfFavorecido.Text;
           zrValorCredito.Caption := FormatCurr('R$ ###,##0.00', C_DepositosValor.Value);
           zrVencimento.Caption := FormatDateTime('DD/MM/YYYY',C_DepositosData.AsDateTime);
           zrDataCredito.Caption := FormatDateTime('DD/MM/YYYY',dfCompetencia.Date);
           zrExtenso.Caption := '(' + LowerCase(Util2.Extenso(C_DepositosValor.Value)) + ').';
           zrCredito.Options.Escapes.ReportFinish := SetSaltos;
           zrCredito.Preview;
        End;

        if ckbImprimirRecibo.Checked then begin
                            if C_DepositosValor.Value-C_DepositosCreditoUtilizado.Value > 0 then begin
                            DMProjeto.ImprimirRecibo(21,'','',':deposito='+IntToStr(IDDeposito));
          end;
        end;
        if bModalResult then
            ModalResult := mrOk
        else begin
                    Novo;
                    dfFavorecido.SetFocus;
        end;
      end;
   Except on E:Exception do
     MessageDlg(pChar(e.Message), mtWarning, [mbOK], 0);
   End;
end;

procedure TDlgDepositosInstantaneos.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
  dfFavorecido.SetFocus;
end;

procedure TDlgDepositosInstantaneos.Incluirnovobanco1Click(
  Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('FrmBancos',self,true);
end;

procedure TDlgDepositosInstantaneos.C_DepositosVALORChange(Sender: TField);
begin
  inherited;
  if C_ContasOperacao.RecordCount <= 1 then begin
  	C_ContasOperacao.Edit;
  	C_ContasOperacaoValor.Value := C_DepositosValor.Value;
  end;
end;

procedure TDlgDepositosInstantaneos.C_DepositosCartaoCreditoChange(
  Sender: TField);
begin
  inherited;
  DMFinanceiro.C_CartoesCred.Locate('formapagamento',C_DepositosCartaoCredito.value,[]);
  C_DepositosContaCartao.value := DMFinanceiro.C_CartoesCredContaReceber.value;
  if C_DepositosContaCartao.value = 0 then
    C_DepositosContaCartao.value := 1;
end;

procedure TDlgDepositosInstantaneos.C_DepositosOutraFormaChange(
  Sender: TField);
begin
  inherited;
  DMFinanceiro.C_OutrasForma.Locate('formapagamento',C_DepositosOutraForma.value,[]);
  if C_DepositosContaOutro.value = 0 then
    C_DepositosContaOutro.value := DMFinanceiro.C_OutrasFormaContaReceber.value;
end;

procedure TDlgDepositosInstantaneos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	DMFinanceiro.C_ChequesDev.Close;
  DlgPopup.Free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgDepositosInstantaneos.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    //btContabilidade.visible := false;
    pnCancelado.caption := 'Canc.';
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgDepositosInstantaneos.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONTABILID' ) then
   		exit;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaReceberPagamentosRapido(DepositoHist,ckbPrePagamento.Checked,C_Depositos,C_ContasOperacao,C_Cheques,C_Cartoes,C_ChequesEletronico);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgDepositosInstantaneos.C_ChequesValorChange(Sender: TField);
begin
  inherited;
  AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.TS_Label1SetParametrosForm(
  Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_CartoesCartao.AsVariant,3]);
end;

procedure TDlgDepositosInstantaneos.TS_Label2SetParametrosForm(
  Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([C_DepositosOutraForma.AsVariant,10]);
end;

procedure TDlgDepositosInstantaneos.btMaisCartoesClick(Sender: TObject);
begin
  inherited;
	DBCartoes.Visible := true;
  DBCartoes.Align		:= alClient;
  btApenasUm.Visible:= true;
  btMaisCartoes.Visible:= false;
end;

procedure TDlgDepositosInstantaneos.btApenasUmClick(Sender: TObject);
begin
  inherited;
  if C_Cartoes.RecordCount > 1 then begin
  	DlgMsg.ShowMsg( 803 );
    Exit;
  end;
	DBCartoes.Visible := false;
  btApenasUm.Visible:= false;
  btMaisCartoes.Visible:= true;
end;

procedure TDlgDepositosInstantaneos.C_CartoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  inc(nSeq);
	C_CartoesID.Value := nSeq;
  C_CartoesNumParcelas.Value	:= 1;
  C_CartoesModoCartao.Value 	:= 1;
  C_CartoesValor.Value := 0;
  C_CartoesValorParcela.Value := 0;
end;

procedure TDlgDepositosInstantaneos.DBCartoesExit(Sender: TObject);
begin
  inherited;
	if not (C_Cartoes.State in [dsBrowse]) then
  	C_Cartoes.Post;
end;

procedure TDlgDepositosInstantaneos.DBCartoesNumParcelasChange(
  Sender: TObject);
begin
  inherited;
  if StrToIntDef(DBCartoes.TS_Text,0) > 0 then
    nVlParcelas := dfCartao.Value / StrToIntDef(DBCartoes.TS_Text,1)
  else
    nVlParcelas := 0;

  DBCartoes.SetFieldValue(DBCartoes.FocusedNode,'ValorParcela', nVlParcelas);
end;

procedure TDlgDepositosInstantaneos.DBCartoesValorChange(Sender: TObject);
begin
  inherited;
  if C_CartoesNumParcelas.Value > 0 then
    nVlParcelas := StrToFloatDef(DBCartoes.TS_Text,0) / C_CartoesNumParcelas.Value
  else
    nVlParcelas := 0;

  DBCartoes.SetFieldValue(DBCartoes.FocusedNode,'ValorParcela', nVlParcelas);
end;

procedure TDlgDepositosInstantaneos.DBCartoesEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if C_Cartoes.State = dsBrowse then
    exit;

  if ( (UpperCase(DBCartoes.TS_SelectedColumn) = 'NUMPARCELAS') or (UpperCase(DBCartoes.TS_SelectedColumn) = 'VALOR')) and
     (C_CartoesValorParcela.Value <> nVlParcelas) then
    C_CartoesValorParcela.asCurrency := nVlParcelas;

end;

procedure TDlgDepositosInstantaneos.C_CartoesCartaoChange(Sender: TField);
begin
  inherited;
  DMFinanceiro.C_CartoesCred.Locate('formapagamento',C_CartoesCartao.value,[]);
  C_CartoesContaCartao.value := DMFinanceiro.C_CartoesCredContaReceber.value;
  if C_CartoesContaCartao.value = 0 then
    C_CartoesContaCartao.value := 1;
end;

procedure TDlgDepositosInstantaneos.C_CartoesAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
	AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.C_CartoesValorChange(Sender: TField);
begin
  inherited;
	AtualizaTotalFormaPagamento;
end;

procedure TDlgDepositosInstantaneos.tabCartaoHide(Sender: TObject);
begin
  inherited;
	if C_Cartoes.State in [dsEdit,dsInsert] then
  	C_Cartoes.Post;
end;

procedure TDlgDepositosInstantaneos.cmbContaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if DMProjeto.bCaixa then
  	Key := #0;
end;

procedure TDlgDepositosInstantaneos.C_ChequesEletronicoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
	DataSet['ID'] := nSeq;
  DataSet['Vencimento'] := C_DepositosData.Value;
  DataSet['Valor'] := 0;
  inc(nSeq);
end;

procedure TDlgDepositosInstantaneos.dfFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
	if DMFinanceiro.ExisteChequeDevolvido( dfFavorecido.ID ) then begin
  	pnMemo.Visible := false;
    pnChequesDev.Visible 	:= true;
    pnChequesDev.Align 		:= alClient;
		lbMsg.Caption := 'Há '+IntToStr(DMFinanceiro.C_ChequesDev.RecordCount)+
    						 		 ' cheque(s) devolvidos no total de '+formatfloat('#,###,##0.00',dbChequesDev.TotalGeral('Total'));
  	edJuros.Text := DMProjeto.Parametro('Juros');
  end else begin
  	pnMemo.Visible 	:= true;
    pnMemo.Align 		:= alClient;
    pnChequesDev.Visible := false;
  end;
end;

procedure TDlgDepositosInstantaneos.DBChequesDevTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
	ckbPrePagamento.Checked := QtdSel = 0;
  ckbPrePagamento.Enabled := QtdSel = 0;
end;

procedure TDlgDepositosInstantaneos.ckbPrePagamentoChange(Sender: TObject);
begin
  inherited;
  if C_Depositos.State in [dsBrowse] then
  	C_Depositos.Edit;
  if ckbPrePagamento.Checked then begin
    if C_DepositosHistorico.Value = '' then
			C_DepositosHistorico.Value := 'Pré-Pagamento';
    pgPrincipal.HideTab(1);
    pgPrincipal.ShowTab(0, false);
  end else begin
    C_DepositosHistorico.Value := replace(C_DepositosHistorico.Value,'Pré-Pagamento','');
    pgPrincipal.ShowTab(1, false);
  end;
	clbForma.ItemEnabled[getIndex('6')] := (C_DepositosCreditoCliente.Value > 0) and (not ckbPrePagamento.Checked);  
end;

procedure TDlgDepositosInstantaneos.DBChequesDevENCARGOSCloseUp(
  Sender: TObject; var Text: String; var Accept: Boolean);
begin
  inherited;
	with DMFinanceiro.C_ChequesDev do begin
    if recordcount = 0 then
    	exit;
  	Edit;
    FieldByName('Encargos').AsCurrency := ((StrToIntDef(Trim(edDias.Text),0)*(StrToFloatDef(Trim(edJuros.Text),0)/100/30))*Fieldbyname('Valor').AsCurrency);
    Post;
  end;
end;

procedure TDlgDepositosInstantaneos.DBChequesDevENCARGOSInitPopup(
  Sender: TObject);
begin
  inherited;
	edDias.Text := IntToStr(DaysBetween(Date,DMFinanceiro.C_ChequesDevData.Value));
end;

procedure TDlgDepositosInstantaneos.EditarRecibo1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm( [21] );
    CriarForm( 'FrmTextos', self, true );
  end;
end;

procedure TDlgDepositosInstantaneos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TDlgDepositosInstantaneos.TitulardoCheque1Click(Sender: TObject);
begin
  inherited;
  TitularDoCheque1.Checked := not TitularDoCheque1.Checked;

  DBChequesChequeNominal.Visible := TitularDoCheque1.Checked;
end;

end.
