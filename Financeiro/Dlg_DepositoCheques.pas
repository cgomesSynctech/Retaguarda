{
Autor: Rosil
Data de Criação   	:

- Historico de Alteracoes:

	11/01/2001	André	: Colocado ClientDataSet/CDBGrid com Interbase e MultiIdioma.

- Localização:

	No menu "Contas a Receber" escolha "Fazer Depósitos"

- Tabelas Principais:

	Transacoes, DepositosDoc

- Objetivo: 

	Transferir os cheques selecionados e/ou dinheiro do caixa para uma Conta-Banco.

- Funcionalidades:

	Caso a opção "Liquidar Cheques" esteja marcada os cheques selecionados ficarão com o 
	status 50 (Liquidado) senão status 3 (Aguardando Compensação)

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Somente Atenção.

-----------------------------------------------------------------------------------------------
}
unit Dlg_DepositoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls,
  TS_CheckBox, DBCtrls, TS_DBLookupComboBox, Mask, TS_DBEdit,
  TS_Bevel, TS_Label, TS_Shape, DB, Provider,
  DBClient, IBCustomDataSet, IBUpdateSQL, IBQuery,
  TS_LastDataObject, TS_MaxPanel, ppDB, ppDBPipe, ppDBBDE,
  ppCtrls, ppBands, ppVar, ppMemo, ppPrnabl, ppClass, ppStrtch, ppRegion,
  ppCache, ppComm, ppRelatv, ppProd, ppReport,
  TS_DBEditDate, dxExEdtr, dxEdLib, dxDBELib, dxEditor, dxDBEdtr, dxCntner,
  FormsComponent, TS_Image, dxfLabel, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_DBText, TS_BitBtn,
  TS_DBEditNumber, teCtrls, TS_EffectsPanel, TS_DBPopupEdit, Dlg_PopupContas, DM_Contabilidade, Variants,
  BTOdeum, Placemnt;

type
  TDlgDepositoCheques = class(TFrmModeloCadastros)
    TS_Shape5: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape2: TTS_Shape;
    Label2: TTS_Label;
    Label1: TTS_Label;
    Label3: TTS_Label;
    lbValorDinheiro: TTS_Label;
    lbConta: TTS_Label;
    lbSaldoDinheiro: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    lbTotalDinheiro: TTS_Label;
    lbTotalDepositar: TTS_Label;
    dfHistDep: TTS_DBEdit;
    dfSaldo: TTS_DBEdit;
    ckDinheiro: TTS_CheckBox;
    cbLiquidar: TTS_CheckBox;
    TS_Label2: TTS_Label;
    ppmGrid: TTS_PopupMenu;
    SignificadodasCores1: TMenuItem;
    Q_OperacoesDS: TDataSource;
    Q_ChequesDeposito: TIBQuery;
    Q_ChequesDepositoDS: TDataSource;
    C_ChequesDeposito: TClientDataSet;
    Q_ChequesDepositoProvider: TDataSetProvider;
    C_Operacoes: TClientDataSet;
    C_OperacoesOPERACAO: TIntegerField;
    C_OperacoesDATA: TDateField;
    C_OperacoesTIPOOPERACAO: TIntegerField;
    C_OperacoesRECEBIDO: TDateField;
    lbNomeConta: TTS_Label;
    C_OperacoesVALOROPERACAO: TBCDField;
    C_OperacoesCONTAORIGEM: TIntegerField;
    C_OperacoesCONTADESTINO: TIntegerField;
    C_OperacoesHISTORICO: TStringField;
    C_OperacoesVALORDINHEIRO: TBCDField;
    TS_Shape7: TTS_Shape;
    C_OperacoesSALDO: TBCDField;
    cmbContaBanco: TTS_DBPopupEdit;
    ckbBordero: TTS_CheckBox;
    ppRelatorio: TppReport;
    ppTituloRel: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppTitulo: TppMemo;
    ppPeriodo: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLblObs: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCliente: TppDBText;
    ppDBComplemento: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    lbDinheiro: TppLabel;
    ppDBText7: TppDBText;
    ppLine6: TppLine;
    ppDBText2: TppDBText;
    plMaster: TppDBPipeline;
    Q_Master: TIBQuery;
    Q_MasterDATA: TDateField;
    Q_MasterCONTADESTINO: TIBStringField;
    Q_MasterNOME: TIBStringField;
    Q_MasterNOMEBANCO: TIBStringField;
    Q_MasterVALOROPERACAO: TIBBCDField;
    Q_MasterNUMCHEQUE: TIntegerField;
    Q_MasterVALORDINHEIRO: TIBBCDField;
    Q_MasterVALOR: TIBBCDField;
    Q_MasterDATADEPOSITO: TDateField;
    Q_MasterDS: TDataSource;
    regCab: TppRegion;
    TS_Shape8: TTS_Shape;
    TS_Shape9: TTS_Shape;
    dfData: TTS_DBEditDate;
    Q_MasterHISTORICO: TIBStringField;
    DBCheques: TTS_QDBGrid;
    pnSelecionados: TTS_Panel;
    C_ChequesDeposito_icSelecionado: TIntegerField;
    DBChequesIDDOC: TdxDBGridMaskColumn;
    DBChequesDEPOSITO: TdxDBGridMaskColumn;
    DBChequesSTATUS: TdxDBGridMaskColumn;
    DBChequesNOME: TdxDBGridMaskColumn;
    DBChequesVALOR: TdxDBGridMaskColumn;
    DBChequesNUMCHEQUE: TdxDBGridMaskColumn;
    DBChequesTIPODEPOSITO: TdxDBGridMaskColumn;
    lbTotalSel: TTS_Label;
    DBChequesVencimento: TdxDBGridColumn;
    dbDinheiro: TTS_DBEditNumber;
    DBChequesFormaPagamento: TdxDBGridColumn;
    btCancelar: TTS_SpeedButton;
    C_OperacoesDescContaBanco: TStringField;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    btImprimir: TTS_SpeedButton;
    btContabilidade: TTS_SpeedButton;
    Depositar1: TMenuItem;
    N1: TMenuItem;
    Histrico1: TMenuItem;
    Depositar2: TMenuItem;
    Histrico2: TMenuItem;
    N2: TMenuItem;
    Novo1: TMenuItem;
    Novo2: TMenuItem;
    pnCancelado: TdxfLabel;
    Q_MasterLOGINNAME: TIBStringField;
    ppDBText1: TppDBText;
    DBChequesFAVORECIDO: TdxDBGridMaskColumn;
    C_ChequesDepositoIDDOC: TIntegerField;
    C_ChequesDepositoDEPOSITO: TIntegerField;
    C_ChequesDepositoVALOR: TBCDField;
    C_ChequesDepositoSTATUS: TIntegerField;
    C_ChequesDepositoNUMCHEQUE: TIntegerField;
    C_ChequesDepositoVENCIMENTO: TDateField;
    C_ChequesDepositoCONTARECEBER: TIntegerField;
    C_ChequesDepositoDESCLOCAL: TStringField;
    C_ChequesDepositoNOME: TStringField;
    C_ChequesDepositoFAVORECIDO: TIntegerField;
    C_ChequesDepositoTIPODEPOSITO: TIntegerField;
    C_ChequesDepositoFORMAPAGAMENTO: TIntegerField;
    procedure ckDinheiroClick(Sender: TObject);
    procedure cmbContaOrigemClick(Sender: TObject);
    procedure dbDinheiroChange(Sender: TObject);
    procedure dbDinheiroKeyPress(Sender: TObject;
  var Key: Char);
    procedure DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SignificadodasCores1Click(Sender: TObject);
    procedure C_OperacoesNewRecord(DataSet: TDataSet);
    procedure DBChequesDblClick(Sender: TObject);
    procedure DBChequesAfterSelection(Sender: TObject; bSelected: Boolean;
      QtdSel: Integer);
    procedure DBChequesHotTrackNode(Sender: TObject;
      AHotTrackInfo: TdxTreeListHotTrackInfo; var ACursor: TCursor);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure cmbContaBancoInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure DBChequesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  protected
  	DlgPopup : TDlgPopupContas;
    // Adriano
    DMContabil: TDMContabilidade;
  private
    { Private declarations }
    nConta, Operacao, OperacaoDinheiro, DepositoHist, DepositoDinHist : integer;
    sCheques, sSelecionados :String;
    nValorCheques : currency;
    procedure getHistorico( Operacao : integer );
		procedure Pesquisar( sChequesHist : string = '');
    procedure CalcularTotalDep;
		procedure ImprimirBordero( nDeposito : integer);
    procedure Novo;
    function  Gravar : boolean;
    function  Validacoes(bMostrarMensagem: boolean) : boolean;
  public
    { Public declarations }
  end;

var
  DlgDepositoCheques: TDlgDepositoCheques;

implementation

uses DM_Projeto, funcoes, Dlg_CoresStatus, DM_Financeiro, Frm_Contabilidade;


{$R *.DFM}

procedure TDlgDepositoCheques.ImprimirBordero;
begin
  ppDBComplemento.Visible := false;

  With Q_Master do begin
    Close;
    Params[0].asInteger := nDeposito;
    Open;
  end;

  ppPeriodo.Caption := FormatDateTime(ShortDateFormat,Q_Master['DataDeposito']);

  DMProjeto.ImprimirCabecalho(regCab);
  ppRelatorio.Print;
end;

function TDlgDepositoCheques.Validacoes;
var sMsg1, sMsg2 : string;
begin
	  result := false;
    if C_Operacoes.State in [dsBrowse] then
       C_Operacoes.Edit;

    C_Operacoes.UpdateRecord;
    if C_OperacoesData.Value > DMProjeto.dDataSistema then begin
      DlgMsg.ShowMsg( 901 );
    	exit;
    end;

  	if pnCancelado.Visible then begin
  		DlgMsg.ShowMsg( 940 );
    	Exit;
  	end;

  	if (DBCheques.QuantidadeSelecionada = 0) and (C_OperacoesValorDinheiro.Value=0) then begin
    	// ShowMessage('Não existem valores a serem depositados!');
       DlgMsg.ShowMsg( 246 );
    	exit;
  	end;
    if (C_OperacoesValorDinheiro.Value > 0) and
       (C_OperacoesValorDinheiro.Value > C_OperacoesSaldo.Value) then begin
      // ShowMessage('O Valor em Dinheiro solicitado para depósito está superior ao saldo disponível na Conta escolhida!');
      DlgMsg.ShowMsg( 248 );
      exit;
    end;
  {  if C_OperacoesValorOperacao.Value = 0 then begin
      // ShowMessage('A Soma não é válida para Depósito!');
      DlgMsg.ShowMsg( 249 );
      exit;
    end; }
    if cmbContaBanco.Text = '' then begin
      // ShowMessage('Não foi informada a Conta para Depósito!');
      DlgMsg.ShowMsg( 250 );
      exit;
    end;
  	sMsg1 	:= '';
  	if DBCheques.QuantidadeSelecionada > 0 then
    	sMsg1:= format( DMProjeto.getMsg( 251 ), [formatfloat('##,###,##0.00',nValorCheques)]);
  	sMsg2 	:= '';
  	if C_OperacoesValorDinheiro.Value > 0 then
  		sMsg2:= format( DMProjeto.getMsg( 252 ), [formatfloat('##,###,##0.00',C_OperacoesValorDinheiro.Value)]);

  	if DlgMsg.ShowMsg( 253, [sMsg1,sMsg2,cmbContaBanco.Text]) = 200 then
  		Exit;
    result := true;
end;

procedure TDlgDepositoCheques.Pesquisar;
begin
  C_ChequesDeposito.Close;

  C_ChequesDeposito.CommandText :=
                       'select dd.iddoc, dd.deposito, dd.valor, dd.status, ' +
                       'dd.numcheque, dd.vencimento, dd.contareceber, ' +
                       'dd.localtitulo as DescLocal, dd.formapagamento, f.Nome, '+
                       'd.Favorecido, d.TipoDeposito ' +
                       'from  DepositosDoc dd ' +
                       'inner join Depositos d on (dd.empresa = d.empresa and dd.Deposito = d.Deposito and dd.pdv = d.pdv) ' +
                       'inner join Favorecidos f on d.Favorecido = f.Favorecido ' +
                       'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                       'where dd.Vencimento <= current_date and dd.ContaAtual = 1 ' +
                       'and (dd.Status < 70 and fp.Especie = 1 and   dd.ForaDaEmpresa = ''N'') ';


//       'Select dd.*, dd.localtitulo as DescLocal, sd.Descricao as DescStatus, f.Nome, '+
//       '       b.Nome as NomeBanco, d.Favorecido, d.TipoDeposito '+
//       'From  (((DepositosDoc dd INNER JOIN StatusDoc sd ON dd.Status = sd.Status) '+
//       '      INNER JOIN Depositos d ON dd.Deposito = d.Deposito) '+
//       '      INNER JOIN Favorecidos f ON d.Favorecido = f.Favorecido) '+
//       '      LEFT JOIN  Favorecidos b ON b.Favorecido = dd.Banco '+
//       '      INNER JOIN FormasPagamento fp ON dd.formapagamento = fp.formapagamento '+
//       'Where dd.Vencimento <= CURRENT_DATE and dd.ContaAtual = 1 and (dd.Status < 70 and fp.Especie = 1 '+
//       'and   dd.ForaDaEmpresa = ''N'' )';

  if sChequesHist<>'' then
	  C_ChequesDeposito.CommandText := C_ChequesDeposito.CommandText + 'or (dd.IDDoc IN ('+sChequesHist+')) ';

  C_ChequesDeposito.CommandText := C_ChequesDeposito.CommandText + 'order by dd.Vencimento ';

  C_ChequesDeposito.Open;

end;

procedure TDlgDepositoCheques.Novo;
begin
	btGravar.Caption   := 'Salvar';
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
  Pesquisar;
  pnCancelado.Visible:= false;
	btCancelar.Enabled	:= true;
  btCancelar.Visible := false;
  btImprimir.Visible := false;
  C_Operacoes.EmptyDataSet;
  C_Operacoes.Append;

  DMFinanceiro.C_ContasBc.Locate('Conta',nConta,[]);
  C_OperacoesContaDestino.Value := DMFinanceiro.C_ContasBcConta.Value;

  if C_ChequesDeposito.Active then
  	DBCheques.LimparSelecionados;

  lbTotalDinheiro.caption := DMProjeto.SetZero;
  lbTotalDepositar.caption := DMProjeto.SetZero;
  ckDinheiro.Checked := false;
  DepositoHist := 0; DepositoDinHist := 0;
end;

procedure TDlgDepositoCheques.CalcularTotalDep;
var nDinheiro : currency;
begin
     nValorCheques := 0;
     nValorCheques := DBCheques.TotalSelecionado('Valor');
     nDinheiro := 0;
     if dbDinheiro.Text <> '' then
       nDinheiro     := StrToFloat(dbDinheiro.Text);
     lbTotalSel.Caption       := formatfloat('###,###,##0.00', nValorCheques );
     lbTotalDinheiro.Caption	:= formatfloat('###,###,##0.00', nDinheiro );
     lbTotalDepositar.Caption := formatfloat('###,###,##0.00', nValorCheques+nDinheiro);
     if C_Operacoes.State in [dsEdit,dsInsert] then
     	C_OperacoesValorOperacao.Value 	:= nValorCheques+nDinheiro;
end;


procedure TDlgDepositoCheques.ckDinheiroClick(Sender: TObject);
var i : integer;
begin
  inherited;
    lbConta.enabled := (Sender as TTS_CheckBox).Checked;
    lbSaldoDinheiro.enabled := (Sender as TTS_CheckBox).Checked;
    lbValorDinheiro.enabled := (Sender as TTS_CheckBox).Checked;
    dfSaldo.enabled := (Sender as TTS_CheckBox).Checked;
    dbDinheiro.enabled := (Sender as TTS_CheckBox).Checked;
    if ((Sender as TTS_CheckBox).Checked) and (C_OperacoesSaldo.Value<=0) then begin
      (Sender as TTS_CheckBox).Checked := false;
    	Abort;
    end;
    if (Sender as TTS_CheckBox).Checked then begin
      dbDinheiro.Enabled := true;
    	dbDinheiro.SetFocus;
    end else begin
      dbDinheiro.Enabled := false;
    	C_OperacoesValorDinheiro.Value:= 0;
    end;
end;

procedure TDlgDepositoCheques.cmbContaOrigemClick(Sender: TObject);
begin
  inherited;
	dbDinheiro.SetFocus;
end;

procedure TDlgDepositoCheques.dbDinheiroChange(Sender: TObject);
begin
  inherited;
	if C_Operacoes.State in [dsEdit,dsInsert] then
	  CalcularTotalDep;
end;

procedure TDlgDepositoCheques.dbDinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in [',','.'] then
    Key := DecimalSeparator;
end;

procedure TDlgDepositoCheques.DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
  inherited;
    NewFont.Color := DMProjeto.CorPadrao( C_ChequesDepositoStatus.value );
    if C_ChequesDepositoStatus.value = 70 then
      NewFont.Style := [fsStrikeout];
end;

function TDlgDepositoCheques.Gravar;
var nOperacao: integer;
begin
	result := false;
  Operacao := 0;

  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

		if DepositoHist <> 0  then
    	DMFinanceiro.CancelarOperacao( IntToStr(DepositoHist), 7);

    if DepositoDinHist <> 0 then
    	DMFinanceiro.CancelarOperacao( IntToStr(DepositoDinHist), 8);

    {Depósito em Dinheiro}
    OperacaoDinheiro := 0;
    if C_OperacoesValorDinheiro.Value > 0 then
      OperacaoDinheiro := DMFinanceiro.Transferir(1, C_OperacoesContaDestino.Value,
                           C_OperacoesValorDinheiro.Value, C_OperacoesHistorico.Value,
                           '', 'N', DMFinanceiro.getBancoConta(C_OperacoesContaDestino.Value), C_OperacoesData.Value,'',7);

    {Deposito em Cheques e atualização dos Flags (Status, LocalTitulo e ForaDaEmpresa) em DepositosDoc}
     if C_OperacoesValorOperacao.Value <> C_OperacoesValorDinheiro.Value then
    	Operacao := DMFinanceiro.DepositarCheques( C_OperacoesContaDestino.Value, C_OperacoesData.Value, C_OperacoesValorOperacao.Value, C_OperacoesValorDinheiro.Value,
                                 							C_OperacoesHistorico.Value, cbLiquidar.Checked, DBCheques.ItensSelecionados, OperacaoDinheiro  );

    if Operacao > 0 then
      nOperacao := Operacao
    else
      nOperacao := OperacaoDinheiro;

    // Adriano
    DMContabil.ContabilizaDepositoCheques(nOperacao,C_Operacoes,C_ChequesDeposito);

    if not DMContabil.Salvar(nOperacao) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    try
      SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', Operacao, false );
    except
    end;

    result := true;
    if ckbBordero.Checked then
    	ImprimirBordero( iif(Operacao=0,OperacaoDinheiro,Operacao) );

    Pesquisar;
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg( 255,'Erro: '+e.message, '');
    end;
  end;
end;

procedure TDlgDepositoCheques.btGravarClick(Sender: TObject);
begin
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
  	exit;
	if (DepositoHist<>0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
  	exit;
  if not Validacoes(true) then
  	Exit;
  Gravar;
  if DepositoHist <> 0 then begin
    Novo;
  	ModalResult := mrOk;
  end else begin
  	Novo;
    Pesquisar;
  end;
  DepositoHist  := 0;
  DBCheques.SetFocus;
end;

procedure TDlgDepositoCheques.btLimparClick(Sender: TObject);
begin
  inherited;
  Novo;
  DBCheques.SetFocus;
end;

procedure TDlgDepositoCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_ChequesDeposito.Close;
  C_Operacoes.Close;
  DlgPopup.Free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
	DlgDepositoCheques := nil;
end;

procedure TDlgDepositoCheques.SignificadodasCores1Click(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Release;
end;

procedure TDlgDepositoCheques.C_OperacoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_OperacoesOperacao.AsInteger	:= -888;
  C_Operacoes['ContaOrigem'] 		:= 1;
  C_Operacoes['Data'] 					:= DMProjeto.dDataSistema;
  C_Operacoes['ValorOperacao'] 	:= 0;
  C_Operacoes['Historico'] 	:= 'Depósito de Valores';
  C_OperacoesSaldo.Value := DMFinanceiro.SaldoConta( 1, DMProjeto.dDataSistema, '5' );
end;

procedure TDlgDepositoCheques.getHistorico;
var i, nResult : integer;
    sCheques : string;
begin
	Novo;
  DepositoHist := Operacao;
	pnCancelado.Visible:= DMFinanceiro.getSituacaoOperacao(Operacao)='C';
	btCancelar.Enabled := not pnCancelado.Visible;
  btImprimir.Enabled := not pnCancelado.Visible;
	btCancelar.Visible := true;
  btImprimir.Visible := true;
  btGravar.Caption   := 'Alterar';
  {Selecionando os Cheques}
  sCheques 		:= DMFinanceiro.getOperacaoDet(IntToStr(Operacao));
  Pesquisar(sCheques);
  for i:=1 to ContaStrings(sCheques,',') do
		if C_ChequesDeposito.Locate('IDDoc',StrToInt(SeparaStrings(sCheques,',',i)),[]) then
    	DBCheques.Selecionar;

  {Dados do Cabeçalho}
	with DMFinanceiro.Q_SQL do begin
  	close;
    SQL.text := 'select * from operacoesfinanceiras where operacao = '+IntToStr(Operacao);
    open;
    DepositoDinHist := fieldbyname('Titulo').asInteger;
  	C_OperacoesData.Value 		 		:= fieldbyname('Data').asDateTime;
  	C_OperacoesHistorico.Value 		:= fieldbyname('Historico').asString;
  	C_OperacoesContaDestino.Value := fieldbyname('ContaDestino').asInteger;
  	C_OperacoesValorDinheiro.Value:= fieldbyname('ValorDinheiro').AsCurrency;
  	C_OperacoesSaldo.Value     		:= C_OperacoesSaldo.Value + C_OperacoesValorDinheiro.Value;
  	ckDinheiro.Checked := C_OperacoesValorDinheiro.Value > 0;
    close;
  end;
  CalcularTotalDep;
end;

procedure TDlgDepositoCheques.DBChequesDblClick(Sender: TObject);
begin
  inherited;
	if DBCheques.TS_SelectedColumn <> '_icSelecionado' then begin
  	with DMProjeto do begin
			SetParametrosForm([C_ChequesDepositoDeposito.AsInteger]);
    	CriarForm(getTelaGeradora(C_ChequesDepositoTipoDeposito.AsInteger),self,true);
      LimparParametrosForm;
  	end;
  end;
end;

procedure TDlgDepositoCheques.DBChequesAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
	CalcularTotalDep;
end;

procedure TDlgDepositoCheques.DBChequesHotTrackNode(Sender: TObject;
  AHotTrackInfo: TdxTreeListHotTrackInfo; var ACursor: TCursor);
begin
  inherited;
  if AHotTrackInfo.Column = 0 then
  	ACursor := crHandPoint;
end;

procedure TDlgDepositoCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
var sCheques : string;
		i : integer;
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
  C_Operacoes.CreateDataSet;
  DMFinanceiro.C_ContasBc.Open;
  nConta := DMFinanceiro.getContaBancoPadrao;
  lbNomeConta.Caption := DMFinanceiro.Conta_Nome( 1 ); // Caixa Principal;
  if DMProjeto.ExisteParametrosForm then begin
    if varType(DMProjeto.getParametrosForm(0)) = varInteger then
  		getHistorico(DMProjeto.getParametrosForm(0))
    else begin
    	Novo;
      sCheques := DMProjeto.getParametrosForm(0);
      for i:=1 to ContaStrings(sCheques,',') do
       	if C_ChequesDeposito.Locate('iddoc',SeparaStrings(sCheques,',',i),[]) then
         	DBCheques.SelecionarLinha;
    end;
  end else begin
  	Novo;
  end;
  if not DMProjeto.LerPermissao(self.name,'IMP') then begin
  	ckbBordero.Checked := false;
    ckbBordero.ReadOnly:= true;
  end;
end;

procedure TDlgDepositoCheques.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if (pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;OPERACOESFINANCEIRAS,RETIRADAS')>0) and
     (LastDataObject.FormName <> Self.Name) then begin
  	Pesquisar;
    if C_Operacoes.State in [dsBrowse] then
    	C_Operacoes.Edit;
    C_OperacoesSaldo.Value := DMFinanceiro.SaldoConta( 1, DMProjeto.dDataSistema, '5' );
  end;
end;

procedure TDlgDepositoCheques.btCancelarClick(Sender: TObject);
begin
  inherited;
	  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
    	exit;
		if DlgMsg.ShowMsg( 577, ['este depósito em banco ?']) = 100 then begin

    	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      DMFinanceiro.CancelarOperacao( IntToStr(DepositoHist), 7 );
			DMFinanceiro.CancelarOperacao( IntToStr(DMFinanceiro.getTituloOperacao(DepositoHist)), 8 ); {Cancelar Transferência de Dinheiro}

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    	try
        SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao',0, false );
    	except
    	end;
     	Novo;
    end;
end;

procedure TDlgDepositoCheques.cmbContaBancoInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TTS_DBPopupEdit(Sender) );
end;

procedure TDlgDepositoCheques.FormActivate(Sender: TObject);
begin
  inherited;
	cmbContaBanco.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgDepositoCheques.btComando1Click(Sender: TObject);
var i : integer;
begin
  inherited;
  if DBCheques.Selecionados = '' then
  	DBCheques.Selecionar;
  if C_ChequesDeposito.RecordCount >0 then begin
  	if DlgMsg.ShowMsg( 577, ['os cheques selecionados ?']) = 100 then begin
    	for i:=1 to ContaStrings(DBCheques.Selecionados,',') do
				DMFinanceiro.CancelarDepositoDoc( StrToInt(SeparaStrings(DBCheques.Selecionados,',',i)),'',true,true);
  		Pesquisar;
  	end else
  		DBCheques.LimparSelecionados;
  end;
end;

procedure TDlgDepositoCheques.btImprimirClick(Sender: TObject);
begin
  inherited;
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'IMP' ) then
  	exit;
  ImprimirBordero( DepositoHist );
end;

procedure TDlgDepositoCheques.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    btContabilidade.visible := false;
    pnCancelado.caption := 'Canc.';
    ppLblObs.caption := 'Obs.';
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgDepositoCheques.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONTABILID' ) then
  	exit;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaDepositoCheques(DepositoHist,C_Operacoes,C_ChequesDeposito);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgDepositoCheques.btComando2Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
    	exit;

	with DMProjeto do begin
		SetParametrosForm([7,'Histórico de Depósito de Cheques',true]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
    if nResult = 1 then begin
  		if ExisteParametrosForm then begin
     		getHistorico( getParametrosForm(0) )
      end;
    end else if nResult = 3 then
    	Pesquisar;
    LimparParametrosForm;
  end;
end;

procedure TDlgDepositoCheques.DBChequesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Color := DMProjeto.CorPadrao( DBCheques.GetFieldValue( ANode, 'Status', 0) );
  if DBCheques.GetFieldValue( ANode, 'Status', 0) = 70 then
    AFont.Style := [fsStrikeout];
end;

end.
