{
-----------------------------------------------------------------------------------------------
- Tabelas Principais:

	Retiradas, RetiradasDoc, DuplicatasAPagar.

- Objetivo:

	Realizar pagamentos sem títulos, na gravação será gerado um título com o pagamento efetuado.

- Funcionalidades:

	Informa o Favorecido (Fornecedor,Cliente,Funcionario...), referente e a natureza.
  Na forma de pagamento pode selecionar várias formas de pagamento, inclusive utilizando
  o crédito que a empresa tem junto ao fornecedor.

- Quais cuidados devem ser tomados por quem irá alterar a unit.


-----------------------------------------------------------------------------------------------
}
unit Dlg_PgtoInstantaneo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, DBTables, Db,
  TS_DBEdit, TS_CheckBox, TS_DBText, TS_Label, TS_Shape, DBCtrls, Mask,
  IBCustomDataSet, IBUpdateSQL, IBQuery, TS_DBLookupComboBox,
  Provider, DBClient, TS_Bevel, TS_Edit, TS_DBLookupTipoFav, ComCtrls,
  TS_PageControl, MMSystem,
  CheckLst, TS_CheckListBox, ImgList, TS_DBMemo,
  TS_LastDataObject, TS_DBTextEffect, TS_DBEditFavorecido, TS_MaxPanel,
  TS_DBEditNumber, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBButtonEdit, dxCntner, dxEditor, dxDBEdtr, FormsComponent, jpeg,
  TS_Image, dxfLabel, TS_DBEditDate, dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, TS_QDBGrid, dxGrClEx, Dlg_PopupContas,
  TS_DBPopupEdit, teCtrls, TS_EffectsPanel, TS_RadioButton, DM_Contabilidade,
  teSlide, TransEff, teTimed, teMasked, teRadial, teDiagon, teForm, Variants,
  BTOdeum, TS_ComboBox, Placemnt;

type
  TDlgPgtoInstantaneo = class(TFrmModeloCadastros)
    DlgMsg1: TDlgMsg;
    C_RetiradaDS: TDataSource;
    C_Retirada: TClientDataSet;
    C_RetiradaDescCartao: TStringField;
    C_Cheques: TClientDataSet;
    C_ChequesDS: TDataSource;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesValor: TFloatField;
    C_ChequesVencimento: TDateField;
    C_ChequesChequeNominal: TStringField;
    C_ChequesCampoTeste: TStringField;
    C_RetiradaValorDinheiro: TFloatField;
    C_RetiradaValorChequesLoja: TFloatField;
    C_RetiradaValorCartao: TFloatField;
    C_RetiradaCartaoCredito: TIntegerField;
    C_RetiradaNumCheque: TIntegerField;
    C_RetiradaDataCheque: TDateField;
    C_RetiradaNominal: TStringField;
    C_RetiradaCreditoUtilizado: TFloatField;
    C_RetiradaOutroValor: TFloatField;
    C_RetiradaNome: TStringField;
    C_RetiradaFavorecido: TIntegerField;
    C_RetiradaDATA: TDateField;
    C_RetiradaVALOR: TBCDField;
    C_RetiradaHISTORICO: TStringField;
    C_RetiradaUSUARIO: TIntegerField;
    C_RetiradaContaCaixa: TIntegerField;
    C_RetiradaContaBanco: TIntegerField;
    C_RetiradaDescContaCx: TStringField;
    C_RetiradaDescContaBc: TStringField;
    C_RetiradaValorCheque: TFloatField;
    C_ChequesBanco: TIntegerField;
    C_RetiradaOutraForma: TIntegerField;
    C_ChequesConta: TIntegerField;
    C_ChequesDescConta: TStringField;
    C_RetiradaCreditoEmpresa: TFloatField;
    pgPrincipal: TTS_PageControl;
    tabFormaPagamento: TTS_TabSheet;
    tabDespesas: TTS_TabSheet;
    pgForma: TTS_PageControl;
    tabDinheiro: TTS_TabSheet;
    lbDinheiro: TTS_Label;
    lbCaixa: TTS_Label;
    dfValorDinheiro: TTS_DBEditNumber;
    tabCheque: TTS_TabSheet;
    tabCartao: TTS_TabSheet;
    dfValorCartao: TTS_DBEditNumber;
    tabChqLoja: TTS_TabSheet;
    tabOutros: TTS_TabSheet;
    lbOutro: TTS_Label;
    dfOutroValor: TTS_DBEditNumber;
    clbForma: TTS_CheckListBox;
    TS_Label1: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_DBTextEffect1: TTS_DBText;
    TS_Shape2: TTS_Shape;
    C_ContasOperacao: TClientDataSet;
    C_RetiradaContaOperacao: TIntegerField;
    C_RetiradaDescConta: TStringField;
    C_ContasOperacaoDS: TDataSource;
    C_ContasOperacaoConta: TIntegerField;
    C_ContasOperacaoValor: TFloatField;
    C_ContasOperacaoDescConta: TStringField;
    tabCredito: TTS_TabSheet;
    lbDisponivel: TTS_Label;
    lbCredito: TTS_Label;
    dfUtilizarCredito: TTS_DBEditNumber;
    TS_Shape5: TTS_Shape;
    TS_DBText1: TTS_DBText;
    tabTEF: TTS_TabSheet;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    dfValorTEF: TTS_DBEditNumber;
    C_RetiradaDescContaTEF: TStringField;
    C_RetiradaContaTEF: TIntegerField;
    C_RetiradaValorTEF: TFloatField;
    TS_Label6: TTS_Label;
    lbCartao: TTS_Label;
    TS_Label8: TTS_Label;
    lbContaSer: TTS_Label;
    C_RetiradaDescContaOutro: TStringField;
    C_RetiradaContaOutro: TIntegerField;
    TS_Panel1: TTS_Panel;
    lblObs: TTS_Label;
    lbCompetencia: TTS_Label;
    lbData: TTS_Label;
    cmbTipoFav: TTS_DBLookupTipoFav;
    dfMemo: TTS_DBMemo;
    dfData: TTS_DBEditDate;
    dfCompetencia: TTS_DBEditDate;
    cmbFormaPag: TTS_DBLookupComboBox;
    cmbCartao: TTS_DBLookupComboBox;
    TS_Shape3: TTS_Shape;
    C_RetiradaCOMPETENCIA: TDateField;
    DBContasOperacao: TTS_QDBGrid;
    DBContasOperacaoConta: TdxDBGridMaskColumn;
    DBContasOperacaoValor: TdxDBGridColumn;
    DBCheques: TTS_QDBGrid;
    DBChequesNumCheque: TdxDBGridColumn;
    DBChequesChequeNominal: TdxDBGridColumn;
    DBChequesSequencial: TdxDBGridMaskColumn;
    DBChequesConta: TdxDBGridMaskColumn;
    DBChequesVencimento: TdxDBGridDateColumn;
    DBChequesLoja: TTS_QDBGrid;
    DBChequesLojaIDDOC: TdxDBGridMaskColumn;
    DBChequesLojaVENCIMENTO: TdxDBGridDateColumn;
    DBChequesLojaNOME: TdxDBGridMaskColumn;
    DBChequesLojaVALOR: TdxDBGridMaskColumn;
    DBChequesLojaNUMCHEQUE: TdxDBGridMaskColumn;
    DBChequesLojaNOMEBANCO: TdxDBGridMaskColumn;
    ckbImprimirRecibo: TTS_CheckBox;
    C_RetiradaCreditoFavorecido: TFloatField;
    DBChequesDescConta: TdxDBGridPopupColumn;
    DBChequesValor: TdxDBGridCalcColumn;
    DBContasOperacaoDescConta: TdxDBGridPopupColumn;
    cmbCaixa: TTS_DBPopupEdit;
    cmbContaSer: TTS_DBPopupEdit;
    cmbContaTEF: TTS_DBPopupEdit;
    dfForn: TTS_DBEditFavorecido;
    C_ChequesSequencial: TIntegerField;
    C_ContasOperacaoID: TIntegerField;
    C_ContasOperacaoHistorico: TStringField;
    C_ContasOperacaoClienteRef: TIntegerField;
    C_ContasOperacaoNomeClienteRef: TStringField;
    DBContasOperacaoHistorico: TdxDBGridColumn;
    DBContasOperacaoNomeClienteRef: TdxDBGridButtonColumn;
    C_RetiradaConta: TIntegerField;
    TS_Label2: TTS_Label;
    dfRefNo: TTS_DBEdit;
    C_RetiradaTitulo: TStringField;
    btImprimir: TTS_SpeedButton;
    TS_Bevel2: TTS_Bevel;
    pnNumeracaoCheque: TTS_Panel;
    rgAutomatico: TTS_RadioButton;
    rgIndividual: TTS_RadioButton;
    TS_Panel3: TTS_Panel;
    C_RetiradaContaCartao: TIntegerField;
    C_ChequesContaPagar: TIntegerField;
    Salvar1: TMenuItem;
    Novo1: TMenuItem;
    Histrico1: TMenuItem;
    N1: TMenuItem;
    btContabilidade: TTS_SpeedButton;
    cbLockDate: TTS_CheckBox;
    ckbPrePagamento: TTS_CheckBox;
    ppmCheques: TTS_PopupMenu;
    C_RetiradaDescDinheiro: TStringField;
    C_RetiradaDescCheque: TStringField;
    C_RetiradaCreditoAbatido: TCurrencyField;
    TS_DBText2: TTS_DBText;
    ckbAbaterCredito: TTS_CheckBox;
    spSaldoDinheiroLabel: TTS_Shape;
    lbSaldoDinheiro: TTS_Label;
    spSaldoDinheiroValor: TTS_Shape;
    dfSaldoDinheiro: TTS_DBText;
    TransitionList1: TTransitionList;
    TranShape: TRadialTransition;
    TranAlterar: TSlideTransition;
    pnAlterar: TTS_Panel;
    dxfLabel1: TdxfLabel;
    pnCancelado: TdxfLabel;
    btImprimirCheque: TTS_SpeedButton;
    ppmChqLoja: TTS_PopupMenu;
    C_RetiradaIDDocLoja: TStringField;
    dfTroco: TTS_DBEditNumber;
    lbTroco: TTS_Label;
    shpTroco: TTS_Shape;
    C_RetiradaTroco: TCurrencyField;
    C_RetiradaValorRecebido: TCurrencyField;
    cmbImprimir: TTS_ComboBox;
    EditarRecibo1: TMenuItem;
    TS_Empresa: TTS_ComboBox;
    procedure dfDataKeyPress(Sender: TObject;
  var Key: Char);
    procedure dfFornExit(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure C_RetiradaValorDinheiroChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_RetiradaNewRecord(DataSet: TDataSet);
    procedure DBChequesExit(Sender: TObject);
    procedure tabCreditoShow(Sender: TObject);
    procedure tabCartaoShow(Sender: TObject);
    procedure tabDinheiroShow(Sender: TObject);
    procedure tabOutrosShow(Sender: TObject);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure clbFormaClickCheck(Sender: TObject);
    procedure tabChequeShow(Sender: TObject);
    procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
    procedure tabTEFShow(Sender: TObject);
    procedure DBChequesLojaTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure DBContasOperacaoExit(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dfFornSelecionou(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBChequesDescContaInitPopup(Sender: TObject);
    procedure DBContasOperacaoDescContaInitPopup(Sender: TObject);
    procedure cmbCaixaInitPopup(Sender: TObject);
    procedure cmbContaSerInitPopup(Sender: TObject);
    procedure cmbContaTEFInitPopup(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure rgIndividualClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure C_RetiradaCartaoCreditoChange(Sender: TField);
    procedure btComando2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure C_RetiradaDATAChange(Sender: TField);
    procedure C_ChequesContaChange(Sender: TField);
    procedure TS_Label6SetParametrosForm(Sender: TObject);
    procedure TS_Label8SetParametrosForm(Sender: TObject);
    procedure C_RetiradaOutraFormaChange(Sender: TField);
    procedure btImprimirChequeClick(Sender: TObject);
    procedure cmbTipoFavChange(Sender: TObject);
    procedure cmbImprimirChange(Sender: TObject);
    procedure ckbPrePagamentoChange(Sender: TObject);
    procedure ckbAbaterCreditoChange(Sender: TObject);
    procedure EditarRecibo1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  protected
    DlgPopup: TDlgPopupContas;
    DMContabil: TDMContabilidade;
  private
    { Private declarations }
    aIDDoc : array[0..200] of integer;
    aIDDocAtualizado : array[0..200] of char;
    FModalResult : boolean;
    bPrePagamento: boolean;
    nSeq : integer;
    nSaldoDinheiro : currency;
    nSaldoConta : currency;
    nChequeTotal: currency;
    nContaDespesaPadrao : integer;
    nContaBancoPadrao : integer;
    IDRetirada, RetiradaHist, nNumCheque, nContaCaixa : integer;
    dData, dDataCheque: TDateTime;
 		sIDDoc : string;
    procedure getHistorico( Retirada : integer );
		procedure SetFormaPagamento( nIndex : integer );
		function 	AtualizaTotal : currency;
    procedure Novo;
    function 	Validacoes(bMostrarMensagem:boolean) : boolean;
    function 	Gravar : boolean;
    procedure LimpaArrayDoc;
    procedure PreparaPagamento( Favorecido : integer );
  public
    { Public declarations }
    Favorecido : Integer;
    NomeFavorecido, Historico : string;
    Natureza : Integer;
  end;

var
  DlgPgtoInstantaneo: TDlgPgtoInstantaneo;

implementation

uses funcoes, DM_Projeto, Util2, Util2Ingles,
  Dlg_EmissaoCheques, DM_Financeiro, Frm_Contabilidade{,dm_ECF};

{$R *.DFM}

procedure TDlgPgtoInstantaneo.PreparaPagamento;
var Especie : integer;
begin
  Novo;
  dfForn.ID	:= Favorecido;
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

procedure TDlgPgtoInstantaneo.dfDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then begin
    try
      ActiveControl := dfForn;
    except
    end;
  end;
end;

procedure TDlgPgtoInstantaneo.dfFornExit(Sender: TObject);
begin
  if (C_RetiradaFavorecido.AsVariant = null ) and (dfForn.Text <> '') then begin
    // ShowMessage('O Nome da pessoa/empresa a quem está pagando não foi informado corretamente!');
    DlgMsg.ShowMsg( 344 );
    C_Retirada.Edit;
    C_RetiradaNome.asVariant := null;
    end
  else if (C_RetiradaNome.Value = '') and not C_RetiradaFavorecido.Isnull then begin
    C_Retirada.Edit;
    C_RetiradaFavorecido.asVariant := null;
    C_RetiradaNome.asVariant := null;
  end;
end;

procedure TDlgPgtoInstantaneo.LimpaArrayDoc;
var i : integer;
begin
	for i:=0 to 200 do begin
  	aIDDoc[i] := 0;
    aIDDocAtualizado[i] := ' ';
  end;
end;

procedure TDlgPgtoInstantaneo.Novo;
var i : integer;
		bDataCompetencia : boolean;
begin
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
	btGravar.Caption 		:= 'Salvar';
	pnAlterar.Visible   := false;
	btComando1.Enabled	:= true;
	btComando1.Visible 	:= false;
  btImprimir.Visible 	:= false;
  btImprimirCheque.Visible 	:= false;
  pnCancelado.Visible	:= false;
//  DBChequesNumCheque.Visible:= false;
  bDataCompetencia   	:= DMProjeto.Parametro('VisualizarDataCompetencia')='S';
  lbCompetencia.Visible := bDataCompetencia;
  dfCompetencia.Visible := bDataCompetencia;
  LimpaArrayDoc;

  for i:=0 to clbForma.Items.Count-1 do begin
  	clbForma.Checked[i] := false;
		clbForma.ItemEnabled[i] := true;
  end;
  if pgForma.Visible then
   	for i:=0 to pgForma.PageCount-1 do
  		pgForma.HideTab(i);
  clbForma.ItemIndex := -1;
  pgForma.Visible := false;

  if not C_Cheques.Active then begin
  	C_Cheques.CreateDataSet;
    C_Cheques.Open;
  end else
  	C_Cheques.EmptyDataSet;

  if (ckbPrePagamento.Checked) or (ckbAbaterCredito.Checked) then
  	pgPrincipal.HideTab(1)
  else begin
  	pgPrincipal.ShowTab(1);
    pgPrincipal.ShowTab(0);
  end;

	C_ContasOperacao.EmptyDataSet;
  C_Retirada.EmptyDataset;
  C_Retirada.Append;
  C_RetiradaCompetencia.Value := DMProjeto.dDataSistema;

  {Saldo em Dinheiro}
  with DMFinanceiro.C_ContasCx do begin
    DisableControls;
  	First;
    while not EOF do begin
      Edit;
    	FieldByName('Saldo').AsCurrency := DMFInanceiro.SaldoConta( fieldbyname('Conta').AsInteger, DMProjeto.dDataSistema, '5' );
      Next;
    end;
    Locate('Conta',DMFinanceiro.nContaPadrao,[]);
    EnableControls;
  end;

  if DMFinanceiro.C_ChequesLoja.Active then
  	if DBChequesLoja.Selecionados <> '' then
  		DBChequesLoja.LimparSelecionados;
  DMFinanceiro.C_ChequesLoja.Close;
  sIDDoc 			:= '';
  RetiradaHist:= 0;
  nSeq 				:= 1;
  Favorecido 	:= 0;
	pgPrincipal.ActivePageIndex := 0;

  ckbAbaterCredito.Checked  := false;
  ckbPrePagamento.Checked  	:= bPrePagamento;
	ckbAbaterCredito.ReadOnly := true;
  ckbAbaterCredito.State    := cbsGrayed;

  if dfForn.CanFocus then
  	dfForn.SetFocus;
	Application.ProcessMessages;
end;

procedure TDlgPgtoInstantaneo.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
  dfForn.SetFocus;
end;

function TDlgPgtoInstantaneo.Validacoes;
begin
	result := false;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;

  if ckbAbaterCredito.Checked then
  	C_RetiradaCreditoAbatido.Value := iif(C_RetiradaValor.Value > C_RetiradaCreditoFavorecido.Value,C_RetiradaCreditoFavorecido.Value,C_RetiradaValor.Value);

  if C_Retirada.State in [dsEdit,dsInsert] then
 	  C_Retirada.UpdateRecord;

  if C_ContasOperacao.State in [dsEdit,dsInsert] then
 	  C_ContasOperacao.Post;

  dfForn.SetFocus;

  {Verificando se foi informado o favorecido}
  if (C_RetiradaFavorecido.IsNull) or (C_RetiradaFavorecido.Value=0) then begin
    DlgMsg.ShowMSg( 344 );
    exit;
  end;

  {Memo}
  if (C_RetiradaHistorico.Value = '') then begin
  	DlgMsg.ShowMsg(929, ['o Memo']);
    dfMemo.SetFocus;
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

  {Verificando se o crédito utilizado está maior que o crédito que a empresa tem.}
  if C_RetiradaCreditoEmpresa.Value < C_RetiradaCreditoUtilizado.Value then begin
  	DlgMsg.ShowMsg( 526 );
    Exit;
  end;

  {A data de pagamento não pode está maior que a data do sistema}
	if C_RetiradaData.Value > DMProjeto.dDataSistema then begin
    DlgMsg.ShowMsg( 901 );
    exit;
  end;

  {A data de pagamento não pode ser muito antiga}
	if C_RetiradaData.Value < EncodeDate(1990,1,1) then begin
    DlgMsg.ShowMsg( 214 );
    exit;
  end;

  {Validação para pagamentos em cheque}
  if (C_RetiradaValorCheque.Value > 0) then begin
  	with C_Cheques do begin
      disablecontrols;
    	First;
      while not EOF do begin
      	if C_ChequesConta.AsInteger = 0 then begin
        	DlgMsg.ShowMsg( 931 );
          enablecontrols;
          Exit;
        end;
        if fieldbyname('Valor').AsCurrency = 0 then begin
        	DlgMsg.ShowMsg( 929, ['o Valor'] );
          enablecontrols;
          Exit;
        end;
        if (fieldbyname('Vencimento').AsVariant = null)  or (fieldbyname('Vencimento').AsDateTime < EncodeDate(1990,1,1)) then begin
        	DlgMsg.ShowMsg( 929, ['o Vencimento'] );
          enablecontrols;
          Exit;
        end;
        if rgIndividual.Checked then begin
        	if (fieldbyname('NumCheque').AsVariant = null) or (fieldbyname('NumCheque').AsInteger<=0) then begin
        	 DlgMsg.ShowMsg( 929, ['o Nº do Cheque'] );
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

  {O Valor da retirada não pode igual ou menor que zero.}
  if (C_RetiradaValor.Value) <= 0 then begin
    // ShowMessage('O Valor do Pagamento não é válido!');
    DlgMsg.ShowMSg( 345 );
    exit;
  end;

  {Verificando se o cartão foi informado}
  if (C_RetiradaValorCartao.Value > 0) and (cmbCartao.Text = '') then begin
    // ShowMessage('Faltou informar o cartão utilizado para o pagamento!');
    DlgMsg.ShowMSg( 357 );
    ActiveControl := cmbCartao;
    exit;
  end;

  {Verificando se a conta de serviço/fornecedor foi informada}
  if (clbForma.Checked[6]) and (cmbContaSer.Text = '') then begin
  	// ShowMessage('Falta definir o nome do cartão!');
    DlgMsg.ShowMsg( 513,['a conta'] );
    cmbContaSer.SetFocus;
    Exit;
  end;

  {Validando retirada em dinheiro dos caixas}
   if (C_RetiradaValorDinheiro.Value > 0) and (cmbCaixa.Text = '') then begin
    DlgMsg.ShowMSg( 929, ['a Conta Caixa'] );
    exit;
   end;

  if DMProjeto.Parametro('SaldoNegativoContaCaixa')<>'S' then
   if (C_RetiradaValorDinheiro.Value > 0) and (DMFinanceiro.C_ContasCx.Locate('Conta',C_RetiradaContaCaixa.Value,[])) and (C_RetiradaValorDinheiro.Value > DMFinanceiro.C_ContasCxSaldo.Value) then begin
    //ShowMessage('ATENÇÃO: O Saldo em Dinheiro não é suficiente para fazer o Pagamento!');
    DlgMsg.ShowMsg( 348 );
    exit;
   end;

	if (C_RetiradaTroco.Value >= C_RetiradaValor.Value) then begin
  	DlgMsg.ShowMsg( 955 );
    Exit;
  end;

  {Vericando contas}
  if ((not ckbPrePagamento.Checked) and (not ckbAbaterCredito.Checked)) and (DMProjeto.Parametro('HabilitarContabilidade')='S') then
  	if not DMFinanceiro.ValidaContas( C_ContasOperacao, DBContasOperacao.TotalGeral('Valor'),C_RetiradaValor.value,'a Conta de Despesa') then begin
      pgPrincipal.ShowTab(1);
      DBContasOperacao.SetFocus;
  	  exit;
    end;

  // Validação do Plano de Contas...
  if (DMProjeto.Parametro('ValidarPlanoContas') = 'S') then begin
    if (C_ContasOperacao.RecordCount <= 0) then begin
      DlgMsg.ShowMsg( 8059 );
      pgPrincipal.ShowTab(1);
      DBContasOperacao.SetFocus;
      Exit;
    end
    else if (DBContasOperacao.TotalGeral('VALOR') <> C_RetiradaValor.Value) then begin
      DlgMsg.ShowMsg( 8059 );
      pgPrincipal.ShowTab(1);
      DBContasOperacao.SetFocus;
      Exit;
    end;
  end;

  {Confirmação de Gravação}
  if bMostrarMensagem then begin
    if (DlgMsg.ShowMsg( 350,[FormatCurr('##,##0.00',C_RetiradaValor.Value),'',C_RetiradaHistorico.Value] ) = 200) then
      exit;
  end;
  result := true;
end;

function TDlgPgtoInstantaneo.Gravar : boolean;
var
   IDDuplic, k : integer;
   Titulo, sSelecionados, sRetiradaDoc : string;
   ID, xContaPagar, nNumCheque: integer;
begin
	IDDuplic:= 0;
  result 	:= false;
  try
  	with DMFinanceiro do begin
  		if not (DMProjeto.DB_Projeto.DefaultTransaction.InTransaction) then
  			DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      if RetiradaHist > 0 then
      	ApagarRetirada( RetiradaHist );

  		{Gerando a Conta a Pagar se não for Pré-Pagamento}
    	if (not ckbPrePagamento.Checked) then
  			IDDuplic := Conta_A_Pagar(1, C_RetiradaValor.Value,
      				C_RetiradaData.Value, C_RetiradaCompetencia.Value,
                                C_RetiradaHistorico.Value,
                                0, // Natureza
                                C_RetiradaFavorecido.Value,
                                0, // IDCompra
                                C_RetiradaTitulo.Value,
                                4);

    	{Gravando a Retirada}
    	IDRetirada := PagarRapido( RetiradaHist, IDDuplic, 0, //Natureza
      				 C_RetiradaData.Value, C_RetiradaCompetencia.Value,
                                 C_RetiradaHistorico.Value,
                                 C_RetiradaValor.Value, 0, 0, C_RetiradaCreditoUtilizado.Value,
                                 iif(ckbPrePagamento.Checked,C_RetiradaValor.Value,0),
                                 C_RetiradaCreditoAbatido.Value,
                                 4,
                                 iif(C_RetiradaTroco.Value > C_RetiradaValorDinheiro.Value,C_RetiradaTroco.Value-C_RetiradaValorDinheiro.Value,0),
                                 TS_Empresa.Text );

      with DMFinanceiro.Q_SQL do begin
      	close;
      	sql.text := 'update duplicatasapagar '+
      		    'set idgerador_apagar = :idgerador '+
                    'where id = :id ';
      	parambyname('idgerador').asInteger := IDRetirada;
      	parambyname('id').asInteger := IDDuplic;
      	execsql;
      end;

      RetiradaHist := IDRetirada; //
      {Pagamento em Dinheiro} {Cash}
    	if (C_RetiradaValorDinheiro.Value > 0) and (C_RetiradaValorDinheiro.Value > C_RetiradaTroco.Value) then begin
{Para Pegar a Data do Dia do Pagamento}
{           PagarDoc( aIDDoc[0], 4, IDRetirada, C_RetiradaContaCaixa.Value, C_RetiradaFavorecido.Value, 1,
      						C_RetiradaValorDinheiro.Value-C_RetiradaTroco.Value, Conta_DataMov(C_RetiradaContaCaixa.Value),
                  0, '', 0, C_RetiradaHistorico.Value);
}
           PagarDoc( aIDDoc[0], 4, IDRetirada, C_RetiradaContaCaixa.Value, C_RetiradaFavorecido.Value, 1,
      						C_RetiradaValorDinheiro.Value-C_RetiradaTroco.Value, C_RetiradaDATA.VALUE,
                  0, '', 0, C_RetiradaHistorico.Value);

      	aIDDocAtualizado[0] := 'S';
      end;

      {Pagamento em TEF - Transferência Eletrônica}
    	if C_RetiradaValorTEF.Value > 0 then begin
    		PagarDoc( aIDDoc[2], 4, IDRetirada, C_RetiradaContaTEF.Value, C_RetiradaFavorecido.Value, 20,
      											C_RetiradaValorTEF.Value, Conta_DataMov(C_RetiradaContaTEF.Value),
                            0, '', 0, C_RetiradaHistorico.Value);
      	aIDDocAtualizado[2] := 'S';
      end;
      {Pagamento em Cheque}
    	if C_RetiradaValorCheque.Value > 0 then begin
        C_Cheques.disablecontrols;
				C_Cheques.First;
        k := 10;
      	while not C_Cheques.EOF do begin

          if C_ChequesNumCheque.Value <> 0 then
          	nNumCheque := C_ChequesNumCheque.Value
          else if rgAutomatico.Checked then
          	nNumCheque := ProximoCheque( C_ChequesConta.Value)
          else if rgIndividual.Checked then
          	nNumCheque := C_ChequesNumCheque.Value
          else
          	nNumCheque := 0;

    			PagarDoc( aIDDoc[k], 4, IDRetirada, C_ChequesConta.Value, C_RetiradaFavorecido.Value, 2,
          					C_ChequesValor.Value, C_ChequesVencimento.Value, nNumCheque,
                    C_ChequesChequeNominal.Value, C_ChequesContaPagar.Value,
                    C_RetiradaHistorico.Value );

        	C_Cheques.Next;
          aIDDocAtualizado[k] := 'S';
          inc(k);
      	end;
        C_Cheques.enablecontrols;
    	end;

      {Pagamento no Cartão}
      if C_RetiradaValorCartao.Value > 0 then begin
    		PagarDoc( aIDDoc[1], 4, IDRetirada, DMFinanceiro.nContaPadrao{DMFinanceiro.getContaFormaPagamento(C_RetiradaCartaoCredito.Value)}, C_RetiradaFavorecido.Value, C_RetiradaCartaoCredito.Value,
                  C_RetiradaValorCartao.Value, C_RetiradaData.Value, 0, '', C_RetiradaContaCartao.Value, C_RetiradaHistorico.Value );
      	aIDDocAtualizado[1] := 'S';
      end;

      {Pagamento com Outra Forma}
 			if C_RetiradaOutroValor.Value > 0 then begin

    		PagarDoc( aIDDoc[3], 4, IDRetirada, DMFinanceiro.nContaPadrao{DMFinanceiro.getContaFormaPagamento(C_RetiradaOutraForma.Value)}, C_RetiradaFavorecido.Value, C_RetiradaOutraForma.Value,
      						C_RetiradaOutroValor.Value, C_RetiradaData.Value, 0,'', C_RetiradaContaOutro.Value, C_RetiradaHistorico.Value );
        aIDDocAtualizado[3] := 'S';

      end;

    	if (C_RetiradaCreditoUtilizado.Value > 0) then begin
    		PagarDoc( aIDDoc[6], 4, IDRetirada, C_RetiradaContaCaixa.Value, C_RetiradaFavorecido.Value, -1,
      						C_RetiradaCreditoUtilizado.Value, Conta_DataMov(C_RetiradaContaCaixa.Value),
                  0, '', 0, C_RetiradaHistorico.Value);
      	aIDDocAtualizado[6] := 'S';
      end;

      if DMFinanceiro.C_ChequesLoja.Active then
       	sSelecionados := DBChequesLoja.Selecionados
      else
       	sSelecionados := '';

    	{Troco}
    	if C_RetiradaTroco.Value > C_RetiradaValorDinheiro.Value then
    		DMFinanceiro.LancamentoDeTroco( C_RetiradaConta.Value, C_RetiradaData.Value, C_RetiradaTroco.Value-C_RetiradaValorDinheiro.Value, C_RetiradaFavorecido.Value, IDRetirada, 4, false);

      {Em caso de alteração de cheques em loja, apagar os desselecionados}
      sRetiradaDoc := SeparaStrings(C_RetiradaIDDocLoja.Value,';',2);
      for k:=1 to ContaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',') do begin
        if pos(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',',k),sSelecionados)=0 then begin
					DMFinanceiro.ApagarDoc( StrToInt(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',1),',',k)), false );
          DMFinanceiro.ApagarDoc( StrToInt(SeparaStrings(SeparaStrings(C_RetiradaIDDocLoja.Value,';',2),',',k)), true );
          sRetiradaDoc  := DeleteString(sRetiradaDoc,',',k);
        end else
        	sSelecionados := DeleteString(sSelecionados,',',k);
      end;

      {Pagamento de Cheques em Loja}
    	if (clbForma.Checked[3]) and (DBChequesLoja.TotalSelecionado('Valor') > 0) then begin
        DMFinanceiro.C_ChequesLoja.DisableControls;
        for k:=1 to ContaStrings(sSelecionados,',') do begin
          DMFinanceiro.C_ChequesLoja.Locate('iddoc',StrToInt(SeparaStrings(sSelecionados,',',k)),[]);
    			ID := PagarDoc( 0, 4, IDRetirada, 0 {C_RetiradaContaCaixa.Value}, C_RetiradaFavorecido.Value, -2,
      					      		DMFinanceiro.C_ChequesLojaValor.Value, Conta_DataMov(C_RetiradaContaCaixa.Value),
                          0, '', 0, C_RetiradaHistorico.Value);
					sRetiradaDoc := IntToStr( ID ) + ',' + sRetiradaDoc;
        end;
        if (sRetiradaDoc<>'') and (sRetiradaDoc[length(sRetiradaDoc)]=',') then
        	sRetiradaDoc := Copy(sRetiradaDoc,1,length(sRetiradaDoc)-1);
        // Eliminação da duplicidade quando pgto em dinheiro e cheques em loja
        // If (C_RetiradaValorDinheiro.Value = 0) Then
       	PagarChequesEmLoja( 4, IDRetirada, DBChequesLoja.Selecionados, C_RetiradaFavorecido.Value, sRetiradaDoc );
       DMFinanceiro.C_ChequesLoja.EnableControls;
      end;

  		{Atualizando Créditos}
  		if C_RetiradaCreditoUtilizado.Value > 0 then
      	RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 4, false, C_RetiradaCreditoUtilizado.Value, 0, format(DMProjeto.getMsg(369),[IntToStr(IDRetirada)]));

      if ckbPrePagamento.Checked then
      	DMFinanceiro.RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 4, false, 0, C_RetiradaValor.Value, format(DMProjeto.getMsg( 240),[C_RetiradaHistorico.AsString]) );

      {Abater Crédito}
      if ckbAbaterCredito.Checked then begin
        if C_RetiradaValor.Value >= C_RetiradaCreditoFavorecido.Value then
					RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 4, true, C_RetiradaCreditoFavorecido.Value, 0, format(DMProjeto.getMsg(369),[IntToStr(IDRetirada)]))
        else
          RegistrarCredito(C_RetiradaFavorecido.Value, IDRetirada, 4, true, C_RetiradaValor.Value, 0, format(DMProjeto.getMsg(369),[IntToStr(IDRetirada)]));
      end;

    	{Apagar Documentos não Selecionados}
    	for k:=0 to 200 do
    		if (aIDDoc[k] <> 0) and (aIDDocAtualizado[k]<>'S') then
      		DMFinanceiro.ApagarDoc( aIDDoc[k], true );

      {Liquidar Conta}
      BaixarDuplicata( IntToStr(IDDuplic) );

      if (not ckbPrePagamento.Checked) then
      	InserirContasOperacao( C_COntasOperacao, IDRetirada, 4);


     DMContabil.ContabilizaPagamentoContasRapido(RetiradaHist,ckbPrePagamento.checked,C_Retirada,C_ContasOperacao,C_Cheques,DMFinanceiro.C_ChequesLoja);

      xContaPagar := DMContabil.ContaFlag('AP');
      if not DMContabil.Salvar(RetiradaHist) then
        raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////

      if not ckbPrePagamento.checked and (C_RetiradaCreditoAbatido.value <= 0) then begin
        DMContabil.ContabilizaPagarParcelasRapido(IDDuplic,xContaPagar,C_Retirada,C_ContasOperacao);

        if not DMContabil.Salvar(IDDuplic) then
          raise Exception.Create(DMProjeto.GetMsg(3117));
      end;
      ///////////////////////////

  		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    	if fileexists(DMProjeto.SonsPath+'caixareg.wav') then
				sndplaysound(PChar(DMProjeto.SonsPath+'caixareg.wav'), SND_ASYNC);

			(* Abrindo a gaveta de dinheiro... *)
{ 			if DMProjeto.Parametro('Gaveta') = 'S' then
 				AbrirGaveta;}

      try
        SendLastDataObject(Self.Name, 'Retiradas', 'Retirada',IDRetirada,
                           false );
      except
      end;

  		result := true;

    end;
  except
  	on E:Exception do begin
    	DlgMsg.ShowMsg( 359, e.Message, '' );
		  if (DMProjeto.DB_Projeto.DefaultTransaction.InTransaction) then
 			  DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;
end;

procedure TDlgPgtoInstantaneo.btGravarClick(Sender: TObject);
var sContas, sCheques, sContasImpressao : string;
		i : integer;
begin
  inherited;
  try
//Paulo Remoção do DMECF 22/08/2012

//      if (DMPRojeto.PAFObrigatorio) Then Begin
//        if (DMECF.ECF1.Sangria(FormatFloat('0.00',C_RetiradaValor.Value-C_RetiradaCreditoUtilizado.Value), 'Pagamento')) Then
//           DMProjeto.ReducaoZ_R06('CN')
//        Else
//           raise Exception.Create('Impressora Desligada.'+#13+'O pagamento não será efetuado pelo sistema.');
//      End;

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

      if not Validacoes(true) then
            Exit;
      if Gravar then begin

        if cmbImprimir.ItemIndex = 1 then begin

            if C_RetiradaValorCheque.Value > 0 then begin
            C_Cheques.First;
            sContas := DBCheques.Distinct('Conta');
            sContasImpressao := '';
            for i:=1 to ContaStrings(sContas,',') do begin
                    sCheques := DMFinanceiro.ChequesDaRetirada( IntToStr(IDRetirada), StrToInt(SeparaStrings(sContas,',',i)) );
                    sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
            end;
            sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
                    dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
                    dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao, C_ChequesNumCheque.AsString );
            dlgEmissaoCheques.ShowModal;
            dlgEmissaoCheques.Release;
            dlgEmissaoCheques := nil;
                    end;

        end;
        if ckbImprimirRecibo.Checked then begin
          if (C_RetiradaValor.Value-C_RetiradaCreditoUtilizado.Value>0) then begin
            if DMProjeto.Parametro('TipoRecibo') = '40' then begin
                                    DMProjeto.ImprimirRecibo(100,'','',':retirada='+IntToStr(IDRetirada));
            end else begin
                                    DMProjeto.ImprimirRecibo(1,'','',':retirada='+IntToStr(IDRetirada));
            end;
                            end;
        end;
            Novo;
        dfForn.SetFocus;
      end;
   Except on E:Exception do
     MessageDlg(pChar(e.Message), mtWarning, [mbOK], 0);
   End;
end;

function TDlgPgtoInstantaneo.AtualizaTotal : currency;
var nValor : currency;
begin
  inherited;
  nValor := C_RetiradaValorDinheiro.Value +
  					C_RetiradaOutroValor.Value +
            C_RetiradaValorCartao.Value +
            C_RetiradaCreditoUtilizado.Value +
            C_RetiradaValorTEF.Value -
            C_RetiradaTroco.Value;
  C_Retirada.Edit;
  if C_Cheques.Active then begin
    C_RetiradaValorCheque.Value := DBCheques.TotalGeral('Valor');
  	nValor := nValor + C_RetiradaValorCheque.Value;
  end;
  if DMFinanceiro.C_ChequesLoja.Active then begin
    C_RetiradaValorChequesLoja.Value := DBChequesLoja.TotalSelecionado('Valor');
  	nValor := nValor + C_RetiradaValorChequesLoja.Value;
  end;
  C_RetiradaValor.Value := nValor;

  C_RetiradaValorRecebido.Value := nValor + C_RetiradaTroco.Value;

  if C_ContasOperacao.RecordCount = 1 then begin
  	C_ContasOperacao.Edit;
    C_ContasOperacaoValor.Value := nValor;
    C_ContasOperacao.Post;
  end;

  result := nValor;
  with C_ContasOperacao do begin
  	if RecordCount = 0 then begin
    	Edit;
      FieldByName('Valor').AsCurrency := nValor;
      Post;
    end;
  end;
end;

procedure TDlgPgtoInstantaneo.C_RetiradaValorDinheiroChange(
  Sender: TField);
begin
	AtualizaTotal;
end;

procedure TDlgPgtoInstantaneo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
	DlgPgtoInstantaneo := nil;
end;

procedure TDlgPgtoInstantaneo.C_ChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
    C_ChequesSequencial.Value		:= nSeq;
    C_ChequesNumCheque.Value		:= nNumCheque;
  	 C_ChequesVencimento.Value		:= C_RetiradaData.Value;
  	 C_ChequesChequeNominal.Value:= C_RetiradaNome.Value;
    C_ChequesConta.Value        := nContaBancoPadrao;
    C_ChequesValor.Value				:= 0;
    inc(nSeq);
end;

procedure TDlgPgtoInstantaneo.C_RetiradaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_RetiradaDescDinheiro.value := clbForma.Items[0];
  C_RetiradaDescCheque.value := clbForma.Items[1];
  if cbLockDate.Checked then
  	C_RetiradaData.Value := dData
  else
  	C_RetiradaData.Value := DMProjeto.dDataSistema;
  dData := C_RetiradaData.Value;

  if DMProjeto.nFuncionario > 0 then
    C_RetiradaUsuario.Value := DMProjeto.nFuncionario;

  C_RetiradaValor.Value 						:= 0;
  C_RetiradaCreditoEmpresa.Value 		:= 0;
  C_RetiradaCreditoAbatido.Value 		:= 0;
  C_RetiradaValorDinheiro.Value 		:= 0;
  C_RetiradaValorCheque.Value 			:= 0;
  C_RetiradaValorChequesLoja.Value 	:= 0;
  C_RetiradaValorCartao.Value 			:= 0;
  C_RetiradaValorTEF.Value 					:= 0;
  C_RetiradaCreditoUtilizado.Value 	:= 0;
  C_RetiradaTroco.Value							:= 0;
  if ckbPrePagamento.Checked then
 		C_RetiradaHistorico.Value	:= ckbPrePagamento.Caption;
end;

procedure TDlgPgtoInstantaneo.DBChequesExit(Sender: TObject);
begin
  inherited;
  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;
  if C_Retirada.Active and C_Cheques.Active then
		AtualizaTotal;
end;

procedure TDlgPgtoInstantaneo.tabCreditoShow(Sender: TObject);
begin
  inherited;
  dfUtilizarCredito.SelectAll;
  dfUtilizarCredito.Setfocus;
end;

procedure TDlgPgtoInstantaneo.tabCartaoShow(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsEdit,dsInsert] then begin
		cmbCartao.LookUpKeyValue 			:= DMFinanceiro.C_CartoesBusFormaPagamento.Value;
  	C_RetiradaCartaoCredito.Value := DMFinanceiro.C_CartoesBusFormaPagamento.Value;
  end;
  dfValorCartao.SelectAll;
	dfValorCartao.SetFocus;
end;

procedure TDlgPgtoInstantaneo.tabDinheiroShow(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsEdit,dsInsert] then
  	C_RetiradaContaCaixa.Value := DMFinanceiro.nContaPadrao;
  dfValorDinheiro.SelectAll;
	dfValorDinheiro.SetFocus;
end;

procedure TDlgPgtoInstantaneo.tabOutrosShow(Sender: TObject);
var nConta : integer;
begin
  inherited;
  if not (C_Retirada.State in [dsBrowse]) then
  	C_Retirada.Edit;
  C_RetiradaOutraForma.AsInteger := DMFinanceiro.C_OutrasFormaFormaPagamento.Value;
 	cmbFormaPag.SetFocus;
end;

procedure TDlgPgtoInstantaneo.C_ChequesBeforePost(DataSet: TDataSet);
begin
  inherited;
	if C_Cheques.State in [dsInsert] then begin
    if C_ChequesNumCheque.AsInteger <> 0 then
  	   nNumCheque := C_ChequesNumCheque.AsInteger+1;
    dDataCheque:= DateAdd( 'MM',1,C_ChequesVencimento.AsDateTime);
  end;
end;

procedure TDlgPgtoInstantaneo.SetFormaPagamento( nIndex : integer );
var nValor : currency;
		sCampo : string;
begin
  inherited;
	if nIndex = 0 then
    sCampo := 'ValorDinheiro'
  else if nIndex = 2 then
  	sCampo := 'ValorCartao'
  else if nIndex = 5 then
  	sCampo := 'ValorTEF'
  else if nIndex = 6 then
  	sCampo := 'OutroValor'
  else if nIndex = 4 then
  	sCampo := 'CreditoUtilizado';
  C_Retirada.Edit;
  if clbForma.Checked[clbForma.ItemIndex] then begin
    if nIndex = 1 then begin
      dDataCheque := DMProjeto.dDataSistema;
      DBCheques.TS_SelectedColumn := 'Valor';
      C_Cheques.Append;
  	end else if nIndex = 3 then
  	  DMFinanceiro.getChequesEmLoja( sIDDoc );
  end else begin
    if nIndex in [0,2,4,5,6] then
  		C_Retirada.FieldByName(sCampo).Value := 0
    else if nIndex = 1 then begin
	  	if C_Cheques.Active then
  	  	C_Cheques.EmptyDataSet;
      AtualizaTotal;
    end else begin
      DBChequesLoja.LimparSelecionados;
      C_RetiradaValorChequesLoja.Value := 0;
      AtualizaTotal;
    end;
  end;
end;

procedure TDlgPgtoInstantaneo.clbFormaClickCheck(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to clbForma.Items.Count-1 do
		if clbForma.Checked[i] then begin
      pgForma.Visible := true;
      break;
    end;
  if (pgForma.Pages[clbForma.ItemIndex].TabVisible) and (clbForma.Checked[clbForma.ItemIndex]) then
     pgForma.HideTab(clbForma.ItemIndex);

  SetFormaPagamento( clbForma.ItemIndex );
  if clbForma.Checked[clbForma.ItemIndex] then
    pgForma.ShowTab(clbForma.ItemIndex)
  else
  	pgForma.HideTab(clbForma.ItemIndex);

  Application.ProcessMessages;
end;

procedure TDlgPgtoInstantaneo.getHistorico( Retirada : integer );
var CreditoUtilizado, CreditoGerado, CreditoAbatido  : currency;
    IDDuplic, i, k : integer;
    sRetiradaDoc, sContas : String;
begin
	Novo;
	btComando1.Visible := true;
  btImprimir.Visible := true;

  //Favorecido   := DMFinanceiro.getFavorecidoRetirada( Retirada );
  RetiradaHist := Retirada;
  with DMProjeto.Q_ComandoSQL do begin
    Close;
    SQL.Text := 'select rd.duplicata from retiradasduplicatas rd, duplicatasapagar d '+
     						'where rd.retirada = :ret and rd.duplicata = d.id';
    ParambyName('ret').AsInteger := RetiradaHist;
    Open;
    IDDuplic 			:= Fields[0].AsInteger;

    Close;
    SQL.Text := 'select rd.IDDoc, r.Retirada, rd.favorecidodoc as favorecido, r.Data, '+
    						'r.Situacao, rd.Conta, r.Historico, rd.FormaPagamento, fp.Especie, '+
                'rd.Vencimento, rd.Valor, rd.NumCheque, rd.ContaPagar, r.CreditoGerado, '+
                'r.CreditoUtilizado, r.CreditoAbatido, r.troco '+
     						'from RetiradasDoc rd '+
                'inner join Retiradas r on rd.retirada = r.retirada '+
                'inner join FormasPagamento fp on rd.formapagamento = fp.formapagamento '+
     						'where rd.Retirada = :Ret ';
{
                'UNION '+
                'select rcl.iddoc, r.Retirada, rcl.favorecido, r.Data, r.Situacao, 0 , r.Historico, 0, 0, current_date, 0.00, 0, 0, r.CreditoGerado, r.CreditoUtilizado, r.CreditoAbatido, r.troco '+
								'from RetiradasChequesCaixa rcl '+
                'inner join Retiradas r on rcl.retirada = r.retirada '+
                'where rcl.Retirada = :Ret'; }
    ParamByName('Ret').AsInteger := RetiradaHist;
    Open;
    First;
    C_Retirada.Edit;
    Favorecido := fieldbyname('Favorecido').AsInteger;
    dfForn.ID := Favorecido;
    C_RetiradaData.Value      := fieldbyname('Data').AsDateTime;
    C_RetiradaTroco.Value 		:= fieldbyname('Troco').AsCurrency;
		pnCancelado.Visible 			:= fieldbyname('Situacao').AsString='C';
    CreditoGerado							:= fieldbyname('CreditoGerado').AsCurrency;
    CreditoUtilizado					:= fieldbyname('CreditoUtilizado').AsCurrency;
    CreditoAbatido  					:= fieldbyname('CreditoAbatido').AsCurrency;
		ckbPrePagamento.Checked   := CreditoGerado > 0;
    ckbAbaterCredito.Checked  := CreditoAbatido > 0;
		C_RetiradaHistorico.Value := fieldbyname('Historico').AsString;
    cmbTipoFavChange(self);

    if (ckbPrePagamento.Checked) then
			pgPrincipal.HideTab(1)
    else begin
      pgPrincipal.ShowTab(1, false);
    	DMFinanceiro.CarregarContasOperacao(C_ContasOperacao, IDDuplic );
    end;

    DMContabil.SetPrePagamentoRet(ckbPrePagamento.Checked);

    btComando1.Enabled				:= not pnCancelado.Visible;
    btImprimir.Enabled				:= not pnCancelado.Visible;
    btImprimircheque.Enabled	:= not pnCancelado.Visible;

    C_Cheques.EmptyDataSet;
    C_Cheques.DisableControls;

    pgForma.Visible := true;
    disablecontrols;
    k := 10;
    sIDDoc := '';
    while not EOF do begin
       if fieldbyname('Especie').AsInteger = 5 then begin // Dinheiro
          aIDDoc[0] := fieldbyname('IDDoc').AsInteger;
          clbForma.Checked[0] := true;
          clbForma.ItemIndex 	:= 0;
          pgForma.ShowTab(0);
          C_RetiradaContaCaixa.Value     	:= fieldByname('Conta').AsInteger;
          C_RetiradaValorDinheiro.Value 	:= fieldByname('Valor').AsCurrency;
          DMFinanceiro.C_ContasCx.Edit;
          DMFinanceiro.C_ContasCxSaldo.Value := DMFinanceiro.C_ContasCxSaldo.Value + fieldByname('Valor').AsCurrency;
       end else if fieldbyname('Especie').AsInteger = 1 then begin // Cheques
          clbForma.Checked[1] 		:= true;
          clbForma.ItemIndex 			:= 1;
          pgForma.ShowTab(1);
          DBChequesNumCheque.Visible:= fieldbyname('numcheque').asInteger > 0;
          C_Cheques.Append;
          C_ChequesVencimento.AsDateTime	:= fieldbyname('vencimento').asdatetime;
          C_ChequesNumCheque.Value 	:= fieldbyname('numcheque').asInteger;
          C_ChequesConta.Value			:= fieldbyname('Conta').asInteger;
          C_ChequesValor.Value			:= fieldbyname('valor').AsCurrency;
          C_ChequesContaPagar.Value := fieldbyname('ContaPagar').asInteger;
          C_Cheques.Post;
          aIDDoc[k] := fieldbyname('IDDoc').AsInteger;
          inc(k);
          btImprimirCheque.Visible 	:= true;
       end else if fieldbyname('Especie').AsInteger = 50 then begin //Cartão Empresa
          clbForma.Checked[2] 		   := true;
          clbForma.ItemIndex 			   := 2;
          pgForma.ShowTab(2);
          C_RetiradaCartaoCredito.Value := fieldByname('formapagamento').AsInteger;
          C_RetiradaValorCartao.Value 	:= fieldByname('Valor').AsCurrency;
          C_RetiradaContaCartao.Value		:= fieldByname('contapagar').AsInteger;
          aIDDoc[1] := fieldbyname('IDDoc').AsInteger;
       end else if fieldbyname('Especie').AsInteger IN [10,30,40] then begin // Outra forma
          clbForma.Checked[6]        := true;
          clbForma.ItemIndex 	       := 6;
          pgForma.ShowTab(6);
          C_RetiradaOutraForma.Value := fieldByname('formapagamento').AsInteger;
          C_RetiradaOutroValor.Value := fieldByname('Valor').AsCurrency;
          C_RetiradaContaOutro.Value := fieldByname('contapagar').AsInteger;
          aIDDoc[3] := fieldbyname('IDDoc').AsInteger;
       end else if fieldbyname('Especie').AsInteger = 20 then begin // TEF
          clbForma.Checked[5]        := true;
          clbForma.ItemIndex 	       := 5;
          pgForma.ShowTab(5);
          C_RetiradaContaTEF.Value := fieldByname('conta').AsInteger;
          C_RetiradaValorTEF.Value := fieldByname('Valor').AsCurrency;
          aIDDoc[2] := fieldbyname('IDDoc').AsInteger;
       end else if fieldbyname('Especie').AsInteger = 6 then begin // Crédito
    			clbForma.Checked[4] := true;
      		clbForma.ItemIndex 	:= 4;
      		pgForma.ShowTab(4);
      		C_RetiradaCreditoUtilizado.Value := CreditoUtilizado;
          aIDDoc[6] := fieldbyname('IDDoc').AsInteger;
       end;
       Next;
    end;
    enablecontrols;
    C_Cheques.EnableControls;
    {Utilização de Crédito}
    {
    if CreditoUtilizado > 0 then begin
    	clbForma.Checked[4] := true;
      clbForma.ItemIndex 	:= 4;
      pgForma.ShowTab(4);
      C_RetiradaCreditoUtilizado.Value := CreditoUtilizado;
    end else begin
      clbForma.Checked[4] := false;
      pgForma.HideTab(4);
    end;
    }
    C_RetiradaCreditoEmpresa.Value   := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false)+CreditoUtilizado-CreditoGerado;
    {Crédito Abatido}
    if CreditoAbatido > 0 then begin
    	C_RetiradaCreditoFavorecido.Value:= CreditoAbatido;
      C_RetiradaCreditoAbatido.Value   := CreditoAbatido;
  		ckbAbaterCredito.ReadOnly := false;
    	ckbAbaterCredito.State    := cbsChecked;
    end;
    {Cheques em Loja}
    Close;
    SQL.Text := 'select iddoc, retiradadoc, conta from retiradaschequescaixa '+
    						'where retirada = :retirada';
    ParambyName('Retirada').AsInteger := Retirada;
    Open;
    sContas := '';
    sIDDoc 	:= '';
    sRetiradaDoc := '';
    while not EOF do begin
    	sIDDoc 	:= sIDDoc + fieldbyname('IDDoc').AsString + ',';
      sContas := sContas + fieldbyname('Conta').AsString + ',';
      sRetiradaDoc := sRetiradaDoc + fieldbyname('retiradadoc').AsString + ',';
      Next;
    end;
    Close;
    sRetiradaDoc  := Copy(sRetiradaDoc,1,length(sRetiradaDoc)-1);
    sIDDoc 			 := Copy(sIDDoc,1,length(sIDDoc)-1);
    sContas			 := Copy(sContas,1,length(sContas)-1);
    if sIDDoc <> '' then begin
       DMFinanceiro.getChequesEmLoja( sIDDoc );
       for i:=1 to ContaStrings(sIDDoc,',') do begin
          if DMFinanceiro.C_ChequesLoja.Locate('IDDoc',SeparaStrings(sIDDoc,',',i),[]) then begin
          	 DMFinanceiro.C_ChequesLoja.Edit;
            DMFinanceiro.C_ChequesLojaContaAtual.Value := StrToInt(SeparaStrings(sContas,',',i));
            DMFinanceiro.C_ChequesLoja.Post;
            DBChequesLoja.Selecionar;
          end;
       end;
       clbForma.Checked[3] 	:= true;
       clbForma.ItemIndex 	  := 3;
       pgForma.ShowTab(3);
       C_RetiradaValorChequesLoja.Value := DBChequesLoja.TotalSelecionado('Valor');
       AtualizaTotal;
    end else begin
       clbForma.Checked[3] := false;
       pgForma.HideTab(3);
    end;
    C_RetiradaIDDocLoja.Value := sIDDoc+';'+sRetiradaDoc;
    C_Retirada.Post;
  end;

	AtualizaTotal;
	TranAlterar.Prepare(pnAlterar.Parent, pnAlterar.BoundsRect);
  try
  	pnAlterar.Visible := true;
    if TranAlterar.Prepared then
    	TranAlterar.Execute;
  finally
  	TranAlterar.UnPrepare;
  end;
  btGravar.Caption := 'Alterar';
  DMProjeto.LimparParametrosForm;
end;

procedure TDlgPgtoInstantaneo.tabChequeShow(Sender: TObject);
begin
  inherited;
  DBCheques.TS_SelectedColumn := 'Valor';
  DBCheques.SetFocus;
end;

procedure TDlgPgtoInstantaneo.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ContasOperacaoID.Value := nSeq;
  inc(nSeq);
  if C_ContasOperacao.RecordCount = 0 then begin
    C_ContasOperacaoConta.Value := nContaDespesaPadrao;
  	C_ContasOperacaoValor.Value := C_RetiradaValor.Value;
  end;
end;

procedure TDlgPgtoInstantaneo.tabTEFShow(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsEdit,dsInsert] then
  	C_RetiradaContaTEF.Value   := nContaBancoPadrao;
  dfValorTEF.SetFocus;
	dfValorTEF.SelectAll;
end;

procedure TDlgPgtoInstantaneo.DBChequesLojaTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  AtualizaTotal;
end;

procedure TDlgPgtoInstantaneo.DBContasOperacaoExit(Sender: TObject);
begin
  inherited;
	if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;
end;

procedure TDlgPgtoInstantaneo.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	nContaDespesaPadrao := DMProjeto.ContaPadrao(25);
  DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, true);
	pgPrincipal.UpdateVisibleTabs;
  with DMFinanceiro do begin
  	with C_ContasCx do begin
  		Open;
    	disablecontrols;
    	First;
    	while not EOF do begin
    		Edit;
				FieldByName('Saldo').AsCurrency := DMFinanceiro.SaldoConta( DMFinanceiro.C_ContasCxConta.Value, DMProjeto.dDataSistema, '5' );
      	Post;
      	Next;
    	end;
    	enablecontrols;
  	end;
		C_Contas.Open;
  	C_ContasBc.Open;
  	C_OutrasForma.Open;
 		C_ContasOperacao.CreateDataSet;
  	C_Retirada.CreateDataSet;
  end;
  dfData.Enabled 				:= not DMProjeto.bCaixa;
  dfCompetencia.Enabled	:= dfData.Enabled;
  cmbCaixa.Enabled 			:= dfData.Enabled;
  lbData.Enabled    		:= dfData.Enabled;
  lbCompetencia.Enabled := dfData.Enabled;
  lbCaixa.Enabled    		:= dfData.Enabled;
  bPrePagamento := false;

  with DMProjeto do begin

		if Parametro('ImprimirCheque')='T' then
    	cmbImprimir.ItemIndex := 0
    else if Parametro('ImprimirCheque')='S' then
    	cmbImprimir.ItemIndex := 1
    else
    	cmbImprimir.ItemIndex := 2;

			ckbImprimirRecibo.Checked := Parametro('ImprimirReciboDePagamento')='S';

  	if ExisteParametrosForm then begin
      if getParametrosForm(0) <> null then
      	getHistorico( getParametrosForm(0) )
      else if getParametrosForm(1) <> null then
      	PreparaPagamento( getParametrosForm(1) )
      else begin
        Novo;
      	cmbTipoFav.LookUpKeyValue := 3;
        cmbTipoFavChange(sender);
        bPrePagamento := getParametrosForm(4);
        ckbPrePagamento.Checked   := bPrePagamento;
        clbForma.ItemEnabled[4] := not bPrePagamento;
        if bPrePagamento and (cmbTipoFav.TipoFavorecido = 3) then
        	nContaDespesaPadrao := DMProjeto.ContaPadrao(12);
      end;
    end else
      Novo;
  end;
	if not DMProjeto.LerPermissao(self.name,'ImpRecibo') then begin
  	ckbImprimirRecibo.Checked := false;
    ckbImprimirRecibo.Readonly:= true;
  end;
end;

procedure TDlgPgtoInstantaneo.dfFornSelecionou(Sender: TObject);
begin
  inherited;
  C_RetiradaCreditoEmpresa.Value 		:= DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, false);
	C_RetiradaCreditoFavorecido.Value := DMFinanceiro.CreditoFavorecido(C_RetiradaFavorecido.Value, true);
  if (C_RetiradaCreditoEmpresa.Value > 0) and (RetiradaHist = 0) and (not ckbPrePagamento.Checked) then begin
     clbForma.ItemEnabled[4] := true;
     clbForma.Checked[4] 	:= true;
     clbForma.ItemIndex 	:= 4;
     clbFormaClickCheck(sender);
  end else begin
     clbForma.ItemEnabled[4] := false;
     C_RetiradaCreditoUtilizado.Value := 0;
     pgForma.HideTab( 4 );
  end;
  if C_RetiradaCreditoFavorecido.Value = 0 then begin
  	ckbAbaterCredito.ReadOnly := true;
//    ckbAbaterCredito.State    := cbsGrayed;
  end else begin
  	ckbAbaterCredito.ReadOnly := false;
//    ckbAbaterCredito.State    := cbsUnChecked;
  end;

  clbForma.ItemEnabled[4] := not ckbPrePagamento.Checked;

  C_Retirada.Edit;
  C_RetiradaConta.Value  			:= DMProjeto.C_LocalizarFavConta.Value;
  nContaBancoPadrao	   			  := DMFinanceiro.getContaBancoPadrao( dfForn.ID );

  if (DMProjeto.C_LocalizarFavContaDespesas.asInteger > 0) then begin
  	C_ContasOperacao.Edit;
 		C_ContasOperacaoConta.Value := DMProjeto.C_LocalizarFavContaDespesas.Value;
  end;
end;

procedure TDlgPgtoInstantaneo.FormActivate(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('Empresa') = 'Synctech' then
    TS_Empresa.Visible := True ;
  dbchequesDescConta.popupcontrol 				:= DlgPopup.pnPopup;
  dbcontasoperacaoDescConta.popupcontrol 	:= DlgPopup.pnPopup;
  cmbCaixa.popupcontrol 	:= DlgPopup.pnPopup;
  cmbContaSer.popupcontrol 	:= DlgPopup.pnPopup;
  cmbContaTEF.popupcontrol 	:= DlgPopup.pnPopup;
end;

procedure TDlgPgtoInstantaneo.DBChequesDescContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
end;

procedure TDlgPgtoInstantaneo.DBContasOperacaoDescContaInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
  DlgPopup.SetTipo( 15 );
end;

procedure TDlgPgtoInstantaneo.cmbCaixaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasCxDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgPgtoInstantaneo.cmbContaSerInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgPgtoInstantaneo.cmbContaTEFInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgPgtoInstantaneo.btComando1Click(Sender: TObject);
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
    Novo;
  end;

end;

procedure TDlgPgtoInstantaneo.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then 
  	if ActiveControl is TTS_DBEditFavorecido then
    	TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;

end;

procedure TDlgPgtoInstantaneo.rgIndividualClick(Sender: TObject);
begin
  inherited;
	DBChequesNumCheque.Visible := rgIndividual.Checked;
end;

procedure TDlgPgtoInstantaneo.btImprimirClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'ImpRecibo') then
    exit;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if (C_RetiradaValor.Value-C_RetiradaCreditoUtilizado.Value)>0 then begin
   	if DMProjeto.Parametro('TipoRecibo') = '40' then begin
			DMProjeto.ImprimirRecibo(100,'','',':retirada='+IntToStr(RetiradaHist));
    end else begin
			DMProjeto.ImprimirRecibo(1,'','',':retirada='+IntToStr(RetiradaHist));
    end;
  end;

end;

procedure TDlgPgtoInstantaneo.C_RetiradaCartaoCreditoChange(
  Sender: TField);
begin
  inherited;
  DMFinanceiro.C_CartoesBus.Locate('formapagamento',C_RetiradaCartaoCredito.value,[]);
  C_RetiradaContaCartao.value := DMFinanceiro.C_CartoesBusContaPagar.value;
  if C_RetiradaContaCartao.value = 0 then
    C_RetiradaContaCartao.value := 1;
end;

procedure TDlgPgtoInstantaneo.btComando2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
  	exit;

  with DMProjeto do begin
	  SetParametrosForm([4,'Histórico de Pagamentos Rápido',true]); // Pagamento Rápido
  	if CriarForm('DlgHistoricoRetiradas',self,true) = 1 then begin
      if ExisteParametrosForm then
    		getHistorico( getParametrosForm(0) );
    end;
  end;
end;

procedure TDlgPgtoInstantaneo.FormCreate(Sender: TObject);
begin
  inherited;
  DMContabil := TDMContabilidade.Create(self);
  spSaldoDinheiroValor.Visible := True;
  spSaldoDinheiroLabel.Visible := True;
  lbSaldoDinheiro.Visible := True;
  dfSaldoDinheiro.Visible := True;
  if DMProjeto.Parametro('VisualizarSaldoDinheiro')<>'S' then Begin
     lbSaldoDinheiro.Visible := False;
     dfSaldoDinheiro.Visible := False;
     spSaldoDinheiroValor.Visible := False;
     spSaldoDinheiroLabel.Visible := False;
  End;
end;

procedure TDlgPgtoInstantaneo.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;
	if not Validacoes(false) then
  	Exit;
  DMContabil.ContabilizaPagamentoContasRapido(RetiradaHist,ckbPrePagamento.checked,C_Retirada,C_ContasOperacao,C_Cheques,DMFinanceiro.C_ChequesLoja);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgPgtoInstantaneo.C_RetiradaDATAChange(Sender: TField);
begin
  inherited;
	dData := C_RetiradaData.Value;
end;

procedure TDlgPgtoInstantaneo.C_ChequesContaChange(Sender: TField);
begin
  inherited;
  nContaBancoPadrao := C_ChequesConta.Value;
end;

procedure TDlgPgtoInstantaneo.TS_Label6SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_RetiradaCartaoCredito.AsVariant,50]);
end;

procedure TDlgPgtoInstantaneo.TS_Label8SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([C_RetiradaOutraForma.AsVariant,10]);
end;

procedure TDlgPgtoInstantaneo.C_RetiradaOutraFormaChange(Sender: TField);
begin
  inherited;
  DMFinanceiro.C_OutrasForma.Locate('formapagamento',C_RetiradaOutraForma.value,[]);
  if C_RetiradaContaOutro.value = 0 then
    C_RetiradaContaOutro.value := DMFinanceiro.C_OutrasFormaContaPagar.value;
end;

procedure TDlgPgtoInstantaneo.btImprimirChequeClick(Sender: TObject);
var sContas, sCheques, sContasImpressao : string;
		i : integer;
begin
  inherited;

  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpCheque' ) then
  	exit;

  C_Cheques.First;
  if C_RetiradaValorCheque.Value > 0 then begin
  	sContas := DBCheques.Distinct('Conta');
    sContasImpressao := '';
    for i:=1 to ContaStrings(sContas,',') do begin
    	sCheques := DMFinanceiro.ChequesDaRetirada( IntToStr(RetiradaHist), StrToInt(SeparaStrings(sContas,',',i)) );
      sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
    end;
    sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
    dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
    dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao, C_ChequesNumCheque.AsString );
    dlgEmissaoCheques.ShowModal;
    dlgEmissaoCheques.Release;
  end;
end;

procedure TDlgPgtoInstantaneo.cmbTipoFavChange(Sender: TObject);
begin
  inherited;
  if cmbTipoFav.LookUpKeyValue <> 3 then
  	ckbPrePagamento.Caption := 'Pré-Pagamento'
  else
	  ckbPrePagamento.Caption := 'Adiantamento';
end;

procedure TDlgPgtoInstantaneo.cmbImprimirChange(Sender: TObject);
begin
  inherited;
  if C_Cheques.State in [dsInsert] then
  	C_Cheques.Post;
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
    rgAutomatico.checked 		 := false;
    rgAutomatico.enabled 		 := true;
    rgIndividual.checked 		 := true;
    rgIndividual.enabled 		 := true;
    rgIndividualClick(Self);
    DBCheques.Refresh;
  end;
//  if RetiradaHist <> 0 then
//			DBChequesNumCheque.Visible := true
//  else
//  	DBChequesNumCheque.Visible := false;
end;

procedure TDlgPgtoInstantaneo.ckbPrePagamentoChange(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  if ckbPrePagamento.Checked then begin
    if pos(ckbPrePagamento.Caption,C_RetiradaHistorico.Value)<=0 then
			C_RetiradaHistorico.Value := ckbPrePagamento.Caption;
    pgPrincipal.HideTab(1);
  end else begin
  	C_RetiradaHistorico.Value := replace(C_RetiradaHistorico.Value,ckbPrePagamento.Caption,'');
    pgPrincipal.ShowTab(1, false);
  end;
  clbForma.ItemEnabled[4] := not ckbPrePagamento.Checked;

	 if ckbPrePagamento.Checked then begin
     ckbAbaterCredito.OnChange	:= nil;
  	 ckbAbaterCredito.Checked 	:= false;
     ckbAbaterCredito.OnChange	:= ckbAbaterCreditoChange;
     if cmbTipoFav.TipoFavorecido = 3 then
     	nContaDespesaPadrao := DMProjeto.ContaPadrao(12);
  end;
end;

procedure TDlgPgtoInstantaneo.ckbAbaterCreditoChange(Sender: TObject);
begin
  inherited;
  if C_Retirada.State in [dsBrowse] then
  	C_Retirada.Edit;
  if ckbAbaterCredito.Checked then begin
    C_RetiradaCreditoAbatido.Value := C_RetiradaCreditoFavorecido.Value;
    C_RetiradaHistorico.Value := '';
    //pgPrincipal.HideTab(1);
  end else begin
    C_RetiradaCreditoAbatido.Value := 0;
    pgPrincipal.ShowTab(1, false);
  end;

  if ckbAbaterCredito.Checked then begin
    ckbPrePagamento.OnChange:= nil;
    ckbPrePagamento.Checked := false;
    ckbPrePagamento.OnChange:= ckbPrePagamentoChange;
  end;
end;

procedure TDlgPgtoInstantaneo.EditarRecibo1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm( [1] );
    CriarForm( 'FrmTextos', self, true );
  end;
end;

procedure TDlgPgtoInstantaneo.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
