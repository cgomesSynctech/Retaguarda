unit Dlg_Transferencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DBTables, Db, DBCtrls, TS_DBLookupComboBox,
  StdCtrls, Mask, TS_DBEdit, ExtCtrls, TS_Bevel, TS_Label, DlgMsg, Menus,
  Buttons, TS_SpeedButton,
  IBCustomDataSet, IBUpdateSQL, IBQuery, TS_LastDataObject,
  TS_Image, TS_DBEditDate,
  TS_DBEditNumber, TS_Shape, RxGIF, DBClient,
  Provider, TS_Memo, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, FormsComponent, dxfLabel, TS_MaxPanel, TS_DateTimePicker,
  TS_CalcEdit, TS_LookupComboBox, teCtrls, TS_EffectsPanel, GIFImage,
  TS_PopupEdit, Dlg_PopupContas, DM_Contabilidade, TS_PopupMenu, ppCtrls,
  ppPrnabl, ppClass, ppStrtch, ppRegion, ppBands, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppMemo, TS_CheckBox, BTOdeum, Placemnt;

type
  TDlgTransferencias = class(TFrmModeloCadastros)
    DlgMsg1: TDlgMsg;
    Label9: TTS_Label;
    lblObs: TTS_Label;
    Label1: TTS_Label;
    Label2: TTS_Label;
    Q_ContasDestino: TIBQuery;
    Q_ContasOrigem: TIBQuery;
    lbSaldoLabelOrig: TTS_Label;
    lblSaldoOrigem: TStaticText;
    TS_Label2: TTS_Label;
    C_ContaOrigemDS: TDataSource;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    C_ContasOrigem: TClientDataSet;
    C_ContasDestino: TClientDataSet;
    P_ContasDestino: TDataSetProvider;
    P_ContasOrigem: TDataSetProvider;
    C_ContasDestinoCONTA: TIntegerField;
    C_ContasDestinoDESCRICAO: TStringField;
    C_ContasOrigemCONTA: TIntegerField;
    C_ContasOrigemDESCRICAO: TStringField;
    C_ContasDestinoDS: TDataSource;
    lblSaldoDestino: TStaticText;
    lbSaldoLabelDest: TTS_Label;
    Memo: TTS_Memo;
    Q_SQL: TIBQuery;
    dtData: TTS_DateTimePicker;
    cmbConta: TTS_PopupEdit;
    cmbContaDep: TTS_PopupEdit;
    C_ContasOrigemTIPOCONTA: TIntegerField;
    C_ContasDestinoTIPOCONTA: TIntegerField;
    C_ContasOrigemMOVIMENTOCORRENTE: TDateField;
    C_ContasOrigemDESCTIPO: TStringField;
    C_ContasOrigemCONTAPAI: TIntegerField;
    C_ContasOrigemSALDO: TBCDField;
    C_ContasDestinoDESCTIPO: TStringField;
    C_ContasDestinoCONTAPAI: TIntegerField;
    C_ContasDestinoSALDO: TBCDField;
    Valor: TTS_CalcEdit;
    Image1: TImage;
    btContabilidade: TTS_SpeedButton;
    Transferir1: TMenuItem;
    Novo1: TMenuItem;
    Histrico1: TMenuItem;
    N1: TMenuItem;
    Image2: TImage;
    pnCancelado: TdxfLabel;
    ppTransferencia: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    lbData: TppLabel;
    lbOrigem: TppLabel;
    lbDestino: TppLabel;
    lbValor: TppLabel;
    lbUsuario: TppLabel;
    ckbComprovante: TTS_CheckBox;
    ppLabel7: TppLabel;
    mMemo: TppMemo;
    btImprimir: TTS_SpeedButton;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbContaClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure cmbContaDepClick(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbContaDepInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSaldo : currency;
    OperacaoHist : integer;
		procedure getHistorico( Operacao : integer );
    function 	Validacoes(bMostrarMensagem:boolean) : boolean;
    function 	Gravar : boolean;
    procedure Novo;
    procedure Imprimir;
  public
    { Public declarations }
  end;

var
  DlgTransferencias: TDlgTransferencias;

implementation

uses DM_Projeto, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

function TDlgTransferencias.Validacoes;
begin
	result := false;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if cmbContaDep.Text = '' then begin
    // ShowMessage('Escolha uma conta para depósito!');
    DlgMsg.ShowMsg( 262 );
    exit;
  end;

  {Verificando se estão transferindo para a mesma conta}
  if C_ContasOrigemConta.AsInteger = C_ContasDestinoConta.AsInteger then begin
  	DlgMsg.ShowMsg( 482 );
    Exit;
  end;

  if (C_ContasOrigemTipoConta.value = 2) and (DMProjeto.Parametro('SaldoNegativoContaBanco')='N') then
  	if nSaldo < Valor.Value then begin
  		DlgMsg.ShowMsg( 457 );
    	Exit;
  	end;

  if (C_ContasOrigemTipoConta.value = 1) and (DMProjeto.Parametro('SaldoNegativoContaCaixa')='N') then
  	if nSaldo < Valor.Value then begin
  		DlgMsg.ShowMsg( 457 );
    	Exit;
  	end;


  if Valor.Value <= 0 then begin
    // ShowMessage('O Valor da transferencia não é válido!');
    DlgMsg.ShowMsg( 261 );
    exit;
  end;

  if trunc(dtData.Date) > trunc(C_ContasOrigemMovimentoCorrente.Value) then begin
     DlgMsg.ShowMsg( 901 );
    exit;
  end;

  if DlgMsg.ShowMsg( 567, [currencystring+formatfloat('###,##0.00',Valor.Value),
                          cmbConta.Text,cmbContaDep.Text] ) = 200 then
  	Exit;
  result := true;
end;

function TDlgTransferencias.Gravar;
begin
	result := false;

  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if OperacaoHist <> 0 then
      DMFinanceiro.CancelarOperacao( IntToStr(OperacaoHist) , 8 );
    {Gravando a Transferência}
    OperacaoHist := DMFinanceiro.Transferir(C_ContasOrigemConta.Value, C_ContasDestinoConta.Value,
                         Valor.Value, Memo.lines.Text,
                         '', '', DMProjeto.nFavEmpresa, dtData.Date );
    if OperacaoHist > 0 then begin
      // Adriano
      DMContabil.ContabilizaTransferencias(OperacaoHist,trunc(dtData.date),C_ContasOrigemConta.Value,C_ContasDestinoConta.Value,Valor.Value, Memo.lines.text);

      if not DMContabil.Salvar(OperacaoHist) then
        raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////
    end;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DMProjeto.GeraLog('Transferencias',e.message);
    end;
  end;

  try
    SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', OperacaoHist,
                       false );
  except
  end;

  result := true;
end;


procedure TDlgTransferencias.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
  	exit;
  if (OperacaoHist<>0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
  	exit;
  if not Validacoes(true) then
  	Exit;
  if Gravar then begin
    if ckbComprovante.Checked then
    	Imprimir;
  	Novo;
  end;
  cmbContaClick(sender);
  cmbContaDep.SetFocus;
end;

procedure TDlgTransferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
	DlgTransferencias := nil;
end;

procedure TDlgTransferencias.cmbContaClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltOrigem' ) then
  	exit;

  if C_ContasOrigemTipoConta.value = 1 then
  	nSaldo := DMFinanceiro.SaldoConta( C_ContasOrigemConta.AsInteger, DMProjeto.dDataSistema, '5' )
  else
  	nSaldo := DMFinanceiro.SaldoConta( C_ContasOrigemConta.AsInteger, DMProjeto.dDataSistema );
	lblSaldoOrigem.Caption := formatfloat('###,###,##0.00', nSaldo );
	Memo.Lines.Text := format(DMProjeto.getMsg(930),[cmbConta.Text, cmbContaDep.Text]);  
end;

procedure TDlgTransferencias.Novo;
var nConta : integer;
begin
	btGravar.Caption   := 'Transferir';
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
	btComando1.Visible 	:= false;
  btImprimir.Visible 	:= false;
  btImprimir.Enabled 	:= true;
  btComando1.Enabled	:= true;
  pnCancelado.Visible	:= false;
  nSaldo := 0;
  cmbContaDep.LookupKeyValue := 0;
  cmbContaDep.Text := '';
  Valor.Value := 0;
  dtData.Date := DMProjeto.dDataSistema;
  Memo.Lines.Text := '';
  lblSaldoDestino.caption := DMProjeto.SetZero;
  OperacaoHist := 0;
  nConta := C_ContasOrigemConta.AsInteger;
  C_ContasOrigem.Locate('Conta',nConta,[]);
  cmbConta.LookupKeyValue := nConta;
  cmbContaClick(Self);
end;

procedure TDlgTransferencias.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
  cmbContaDep.SetFocus;
end;

procedure TDlgTransferencias.cmbContaDepClick(Sender: TObject);
begin
  inherited;
  if C_ContasDestinoTipoConta.value = 1 then
		lblSaldoDestino.Caption := formatfloat('###,###,##0.00', DMFinanceiro.SaldoConta( C_ContasDestinoConta.AsInteger,DMProjeto.dDataSistema, '5' ) )
  else
  	lblSaldoDestino.Caption := formatfloat('###,###,##0.00', DMFinanceiro.SaldoConta( C_ContasDestinoConta.AsInteger, DMProjeto.dDataSistema ) );
  Memo.Lines.Text := format(DMProjeto.getMsg(930),[cmbConta.Text, cmbContaDep.Text]);
end;

procedure TDlgTransferencias.getHistorico( Operacao : integer );
var nSaldoConta : currency;
begin
  Novo;
	OperacaoHist 	:= Operacao;
	btComando1.Visible := true;
  btImprimir.Visible := true;
  btGravar.Caption   := 'Alterar';
  with Q_SQL do begin
  	close;
    SQL.Text := 'select ContaOrigem, ContaDestino, Data, Historico, ValorOperacao, Situacao '+
    						'from OperacoesFinanceiras '+
                'where Operacao = '+IntToStr(Operacao);
    open;

    if recordcount > 0 then begin
    	cmbConta.LookupKeyValue 		:= fieldbyname('contaorigem').AsInteger;
      cmbContaDep.LookupKeyValue 	:= fieldbyname('contadestino').AsInteger;
      dtData.Date 					:= fieldbyname('data').AsDateTime;
      Valor.Text						:= fieldbyname('valoroperacao').AsString;
      Memo.Lines.Text				:= fieldbyname('historico').AsString;
      if DMFinanceiro.Conta_TipoConta( fieldbyname('contaorigem').AsInteger ) = 1 then
      	nSaldo := DMFinanceiro.SaldoConta( fieldbyname('contaorigem').AsInteger,DMProjeto.dDataSistema, '5' ) + fieldbyname('valoroperacao').AsCurrency
      else
      	nSaldo := DMFinanceiro.SaldoConta( fieldbyname('contaorigem').AsInteger, DMProjeto.dDataSistema ) + fieldbyname('valoroperacao').AsCurrency;
      lblSaldoOrigem.Caption  := formatfloat('###,###,##0.00', nSaldo);

      if DMFinanceiro.Conta_TipoConta( fieldbyname('contadestino').AsInteger ) = 1 then
      	nSaldoConta := DMFinanceiro.SaldoConta( fieldbyname('contadestino').AsInteger, DMProjeto.dDataSistema, '5' )
      else
      	nSaldoConta := DMFinanceiro.SaldoConta( fieldbyname('contadestino').AsInteger, DMProjeto.dDataSistema );

   		lblSaldoDestino.Caption := formatfloat('###,###,##0.00', nSaldoConta - fieldbyname('valoroperacao').AsCurrency);
			pnCancelado.Visible			:= fieldbyname('situacao').AsString = 'C';
      btComando1.Enabled			:= not pnCancelado.Visible;
      btImprimir.Enabled    	:= not pnCancelado.Visible;
      close;
    end;
  end;
end;

procedure TDlgTransferencias.TS_SpeedButton3Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
  	exit;
	with DMProjeto do begin
		SetParametrosForm([8,'Histórico de Transferências de Dinheiro',true]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
  		if ExisteParametrosForm then
      	getHistorico( getParametrosForm( 0 ) )
      else
      	Novo;
    LimparParametrosForm;
  end;
end;

procedure TDlgTransferencias.btComando1Click(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
 		exit;
	if DlgMsg.ShowMsg( 577, ['esta transferência ?']) = 100 then begin

 		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

     DMFinanceiro.CancelarOperacao( IntToStr(OperacaoHist), 8 );

 		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

   	try
       SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao',0, false );
   	except
   	end;
   	Novo;
  end;
end;

procedure TDlgTransferencias.FormsComponentBeforeClearParams(
  Sender: TObject);
var bSaldo : boolean;
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, C_ContaOrigemDS, nil, false);
  bSaldo := DMProjeto.DlgAutorizacao.ExecuteX( owner.name, 'VerSaldo' );
  lblSaldoOrigem.Visible 		:= bSaldo;
  lbSaldoLabelOrig.Visible 	:= bSaldo;
  lblSaldoDestino.Visible 	:= bSaldo;
  lbSaldoLabelDest.Visible 	:= bSaldo;
  C_ContasOrigem.Open;
  C_ContasOrigem.Locate('Conta',DMFinanceiro.nContaPadrao,[]);
  cmbConta.LookupKeyValue := DMFinanceiro.nContaPadrao;
  C_ContasDestino.Open;
  dtData.Date := DMProjeto.dDataSistema;

  with DMProjeto do begin
  	if ExisteParametrosForm then begin
      if getParametrosForm(0) <> 0 then
      	getHistorico( getParametrosForm(0) );
  		LimparParametrosForm;
    end else
      Novo;
  end;
  if not DMProjeto.LerPermissao(self.name,'IMP') then begin
  	ckbComprovante.Checked := false;
    ckbComprovante.ReadOnly:= true;
  end;
end;

procedure TDlgTransferencias.cmbContaDepInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs(C_ContasDestinoDS);
	DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgTransferencias.FormActivate(Sender: TObject);
begin
  inherited;
	cmbConta.popupcontrol := DlgPopup.pnPopup;
  cmbContaDep.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgTransferencias.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
	DlgPopup.SetDs(C_ContaOrigemDS);
  DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgTransferencias.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONATBILID' ) then
  	exit;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaTransferencias(OperacaoHist,trunc(dtData.date),C_ContasOrigemConta.Value,C_ContasDestinoConta.Value,Valor.Value,Memo.lines.text);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgTransferencias.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    btContabilidade.visible := false;
    lblObs.caption := 'Obs.:';
    pnCancelado.caption := 'Canc.';
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgTransferencias.Imprimir;
begin
  lbData.Caption 		:= dtData.Text;
  lbOrigem.Caption 	:= cmbConta.Text;
  lbDestino.Caption := cmbContaDep.Text;
  lbValor.caption   := formatfloat('###,###,##0.00',Valor.Value);
  mMemo.Lines.Text  := Memo.Lines.Text;
  lbUsuario.Caption := DMProjeto.sLoginName;
  DMProjeto.ImprimirCabecalho( regCab );
  ppTransferencia.Print;
end;

procedure TDlgTransferencias.btImprimirClick(Sender: TObject);
begin
  inherited;
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'IMP' ) then
  	exit;
  if OperacaoHist <> 0 then
  	Imprimir;
end;

end.
