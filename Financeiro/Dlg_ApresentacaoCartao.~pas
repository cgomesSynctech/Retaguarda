{
TradeSoft Ltda
Autor: Rosil
Data de Criação   	:

- Historico de Alteracoes:

	09/01/2001	-	André	- Mudança de Classe,Interbase e MultiIdioma.

- Localização: 

	No menu "Contas a Receber" escolha "Apresentação de Cartão".

- Tabelas Principais:

	DepositosDoc, Depositos, OperacoesTitulos,  OperacoesTitulosDet

- Objetivo: 

	Colocar o documento apresentado como fora da empresa e o status do documento como apresen
	tado.

- Funcionalidades:

	Selecione o Cartão. E em seguida selecione os títulos. Clique no botão "Salvar".

- Quais cuidados devem ser tomados por quem irá alterar a unit.

-----------------------------------------------------------------------------------------------
}
unit Dlg_ApresentacaoCartao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn,
  TS_CheckBox, DBCtrls, Mask, TS_DBText, Provider,
  Db, DBClient, IBCustomDataSet, IBUpdateSQL, IBQuery, TS_DBLookupComboBox,
  TS_DBEdit, TS_Label, TS_LastDataObject,
  TS_Bevel, TS_MaxPanel, TS_Memo, TS_Edit, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppVar, ppMemo, ppPrnabl, ppClass, ppStrtch,
  ppRegion, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxExEdtr, dxEdLib,
  dxCntner, dxEditor, dxDBEdtr, dxDBELib, FormsComponent, TS_Image,
  dxfLabel, TS_DateTimePicker, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, TS_LookupComboBox, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, Variants, BTOdeum, Placemnt;

type
  TDlgApresentacaoCartao = class(TFrmModeloCadastros)
    pnlSelecionados: TTS_Panel;
    Q_Cartoes: TIBQuery;
    C_CartoesDS: TDataSource;
    C_Cartoes: TClientDataSet;
    C_CartoesIDDOC: TIntegerField;
    C_CartoesDEPOSITO: TIntegerField;
    C_CartoesFORMAPAGAMENTO: TIntegerField;
    C_CartoesVENCIMENTO: TDateField;
    C_CartoesSTATUS: TIntegerField;
    C_CartoesLOCALTITULO: TStringField;
    C_CartoesDESCLOCAL: TStringField;
    C_CartoesNOME: TStringField;
    P_Cartoes: TDataSetProvider;
    TS_Panel2: TTS_Panel;
    lbEspecie: TTS_Label;
    Label2: TTS_Label;
    C_CartoesVALOR: TBCDField;
    C_CartoesNUMCHEQUE: TIntegerField;
    C_CartoesFAVORECIDO: TIntegerField;
    Q_TipoCartao: TIBQuery;
    C_TipoCartaoDS: TDataSource;
    C_TipoCartao: TClientDataSet;
    P_TipoCartao: TDataSetProvider;
    C_TipoCartaoFORMAPAGAMENTO: TIntegerField;
    C_TipoCartaoDESCRICAO: TStringField;
    C_TipoCartaoCONTALIBERACAO: TIntegerField;
    lblObs: TTS_Label;
    C_CartoesDATA: TDateField;
    Memo: TTS_Edit;
    Q_SQL: TIBQuery;
    ppRelatorio: TppReport;
    ppTituloRel: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppTitulo: TppMemo;
    ppPeriodo: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCliente: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    plMaster: TppDBPipeline;
    Q_Master: TIBQuery;
    Q_MasterDS: TDataSource;
    regCab: TppRegion;
    Q_MasterOPDOC: TIntegerField;
    Q_MasterOPERACAO: TIntegerField;
    Q_MasterNUMCHEQUE: TIntegerField;
    Q_MasterVENCIMENTO: TDateField;
    Q_MasterVALOR: TIBBCDField;
    Q_MasterJUROS: TIBBCDField;
    Q_MasterVALORPAGO: TIBBCDField;
    Q_MasterBANCO: TIntegerField;
    Q_MasterFAVORECIDO: TIntegerField;
    Q_MasterIDDOC: TIntegerField;
    Q_MasterOBS: TIBStringField;
    Q_MasterNOME: TIBStringField;
    Q_MasterQTDDIAS: TIntegerField;
    Q_MasterVENDEDOR: TIntegerField;
    Q_MasterDATA: TDateField;
    Q_MasterNOMECLIENTE: TIBStringField;
    ppLine12: TppLine;
    ppLine13: TppLine;
    lbVenc: TTS_Label;
    ckbBordero: TTS_CheckBox;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    dtData: TTS_DateTimePicker;
    dtVencimento: TTS_DateTimePicker;
    DBCartoes: TTS_QDBGrid;
    DBCartoesIDDOC: TdxDBGridMaskColumn;
    DBCartoesDEPOSITO: TdxDBGridMaskColumn;
    DBCartoesFORMAPAGAMENTO: TdxDBGridMaskColumn;
    DBCartoesVENCIMENTO: TdxDBGridDateColumn;
    DBCartoesSTATUS: TdxDBGridMaskColumn;
    DBCartoesLOCALTITULO: TdxDBGridMaskColumn;
    DBCartoesDESCLOCAL: TdxDBGridMaskColumn;
    DBCartoesNOME: TdxDBGridMaskColumn;
    DBCartoesVALOR: TdxDBGridMaskColumn;
    DBCartoesNUMCHEQUE: TdxDBGridMaskColumn;
    DBCartoesFAVORECIDO: TdxDBGridMaskColumn;
    DBCartoesDATA: TdxDBGridDateColumn;
    cmbCartao: TTS_LookupComboBox;
    C_Cartoes_icSelecionado: TIntegerField;
    TS_Label1: TTS_Label;
    edApresentacao: TTS_Edit;
    TS_Bevel2: TTS_Bevel;
    C_CartoesTIPODEPOSITO: TIntegerField;
    btCancelar: TTS_SpeedButton;
    btImprimir: TTS_SpeedButton;
    Apresentar1: TMenuItem;
    N1: TMenuItem;
    Histrico1: TMenuItem;
    ppmGrid: TTS_PopupMenu;
    Apresentar2: TMenuItem;
    N2: TMenuItem;
    VerRecebimento1: TMenuItem;
    Histrico2: TMenuItem;
    btNovo: TTS_SpeedButton;
    pnCancelado: TdxfLabel;
    TS_Label3: TTS_Label;
    btGravarVenc: TTS_SpeedButton;
    C_CartoesicEncargos: TCurrencyField;
    C_CartoesENCARGOS: TBCDField;
    DBCartoesicEncargos: TdxDBGridColumn;
    C_ContasOperacao: TClientDataSet;
    C_ContasOperacaoConta: TIntegerField;
    C_ContasOperacaoID: TIntegerField;
    C_ContasOperacaoHistorico: TStringField;
    C_ContasOperacaoClienteRef: TIntegerField;
    C_ContasOperacaoNomeClienteRef: TStringField;
    C_ContasOperacaoDS: TDataSource;
    C_TipoCartaoCONTAPAGAR: TIntegerField;
    Q_MasterDESCRICAOCONTA: TIBStringField;
    plMasterppField16: TppField;
    C_ContasOperacaoDescConta: TStringField;
    C_ContasOperacaoValor: TCurrencyField;
    C_CartoesicValorLiquido: TCurrencyField;
    DBCartoesicValorLiquido: TdxDBGridColumn;
    TS_Label2: TTS_Label;
    dfDataIni: TTS_DateTimePicker;
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btLimparClick(Sender: TObject);
    procedure cmbCartaoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure CoresClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure DBCartoesDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure lbEspecieSetParametrosForm(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGravarVencClick(Sender: TObject);
    procedure dfDataIniExit(Sender: TObject);
    procedure dtDataExit(Sender: TObject);
  private
    { Private declarations }
    OperacaoHist, Liquidado : integer;
    TipoDoc, Especie : integer;
    procedure getHistorico( Operacao : integer );
    procedure ImprimirBordero(Apresentacao: Integer);
    procedure Pesquisar( sCartoesHist : string = '');
    function  Validadas : boolean;
    function  Gravar : boolean;
    procedure Novo;
    procedure AtualizaVencimentos;
  public
    { Public declarations }
  end;

var
  DlgApresentacaoCartao: TDlgApresentacaoCartao;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Dlg_CoresStatus;

{$R *.DFM}

procedure TDlgApresentacaoCartao.Pesquisar;
begin
   with C_Cartoes do begin
    Close;
    CommandText :=  'Select dd.*, d.Data, dd.localtitulo as DescLocal, f.Nome, d.Favorecido, d.TipoDeposito, '+
                    'fp.encargos ' +
                    'From  DepositosDoc dd, Favorecidos f, Depositos d, Formaspagamento fp '+
                    'Where :CartoesHist '+
                    '(dd.FormaPagamento = :FormaPag and '+
                    'dd.ContaAtual = 1 and '+
                    'dd.Status = 1 and '+
                    'dd.ForaDaEmpresa = ''N'' and dd.Tipo = :Modo)) and '+
                    'dd.FormaPagamento = fp.formapagamento and '+
                    'dd.Deposito = d.Deposito and '+
                    'd.Favorecido = f.Favorecido and '+
                    '(d.data >= '':dataini'' and d.data <= '':dfdata'') '+
                    'order by dd.Vencimento ';
    CommandText := replace(CommandText,':dataini',FormatDateTime('dd.mm.yyyy', dfDataIni.Date));
    CommandText := replace(CommandText,':dfdata',FormatDateTime('dd.mm.yyyy', dtData.Date));
    if sCartoesHist <> '' then
    	CommandText := replace(CommandText,':CartoesHist','((dd.IDDoc IN ('+sCartoesHist+')) or ')
    else
    	CommandText := replace(CommandText,':CartoesHist','(');
    if C_TipoCartaoFormaPagamento.AsString <> '' then
			CommandText := replace(CommandText,':FormaPag',QuotedStr(C_TipoCartaoFormaPagamento.AsString));
    if TipoDoc = 11 then begin
			if btLimpar.Down then
				CommandText := replace(CommandText,':Modo', '1')
    	else
    		CommandText := replace(CommandText,':Modo', '2');
    end else
    	CommandText := replace(CommandText,'and dd.Tipo = :Modo','');
    Open;
  end;
  // Calculando os encargos...
  try
    C_Cartoes.DisableControls;
    C_Cartoes.First;
    while not C_Cartoes.EOF do begin
      C_Cartoes.Edit;
      C_CartoesicEncargos.Value := C_CartoesValor.Value - (C_CartoesValor.Value * (1- C_CartoesEncargos.Value / 100));
      C_CartoesicValorLiquido.Value := C_CartoesValor.Value - C_CartoesicEncargos.Value;
      C_Cartoes.Post;
      C_Cartoes.Next;
    end;
    C_Cartoes.First;
  finally
    C_Cartoes.EnableControls;
  end;
end;

procedure TDlgApresentacaoCartao.ImprimirBordero;
begin

  With Q_Master do begin
    Close;
    Params[0].asInteger := Apresentacao;
    Open;
  end;

  ppPeriodo.Caption := 'Nº '+edApresentacao.Text+'  -  '+Q_Master.fieldbyname('Data').AsString;
	ppTitulo.Lines.Clear;
  ppTitulo.Lines.Add('Apresentação de '+lbEspecie.Caption);
  ppTitulo.Lines.Add(cmbCartao.Text);
  DMProjeto.ImprimirCabecalho( regCab );
  ppRelatorio.Print;

end;

function TDlgApresentacaoCartao.Validadas : boolean;
var sCartao : string;
begin
	result := false;
  if C_Cartoes.RecordCount = 0 then
  	Exit;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if DBCartoes.Selecionados = '' then
  	DBCartoes.Selecionar;

 if (TipoDoc <> 11) and (dtVencimento.Date <= 0) then begin
 	DlgMsg.ShowMsg(929,['o vencimento']);
  Exit;
 end;

 if DBCartoes.QuantidadeSelecionada > 1 then
  	sCartao := DMProjeto.getMsg( 283 )
  else
  	sCartao := DMProjeto.getMsg( 284 );

  if DMProjeto.Parametro('Confirmacao') <> 'N' then
    if DlgMsg.ShowMsg( 285, [IntToStr(DBCartoes.QuantidadeSelecionada)+' '+sCartao,formatfloat('###,##0.00', DBCartoes.TotalSelecionado('Valor'))]) = 200 then
    	exit;
  result := true;
end;

function TDlgApresentacaoCartao.Gravar : boolean;
var Operacao, Apresentacao : integer;
begin
  if not C_ContasOperacao.Active then
     C_ContasOperacao.CreateDataSet
  else
     C_ContasOperacao.EmptyDataSet;
  result := false;
  try

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    // Alterando os vencimento dos cartões que poderão
    // ser modificados pelo usuário
    AtualizaVencimentos;
    //

    if OperacaoHist <> 0 then begin
      if Liquidado <> 0 then
      	DMFinanceiro.CancelarOperacao(IntToStr(Liquidado), 13);

     	DMFinanceiro.CancelarOperacao(IntToStr(OperacaoHist),TipoDoc);
    end;
    {Retirada, Deposito e atualização dos Flags (Status, LocalTitulo e ForaDaEmpresa) em DepositosDoc}
    if TipoDoc = 11 then Begin
       //Operacao := DMFinanceiro.ApresentarCartoes(DBCartoes.ItensSelecionados,C_TipoCartaoFormaPagamento.Value, C_TipoCartaoContaLiberacao.Value, dtData.Date, Memo.Text+iif(edApresentacao.Text<>'','# '+edApresentacao.Text,''), DBCartoes.ValorSelecionado('Valor'), DBCartoes.ValorSelecionado('icEncargos'));
       Apresentacao := DMFinanceiro.ApresentarCartoes(DBCartoes.ItensSelecionados,C_TipoCartaoFormaPagamento.Value, C_TipoCartaoContaLiberacao.Value, dtData.Date, Memo.Text+iif(edApresentacao.Text<>'','# '+edApresentacao.Text,''), DBCartoes.ValorSelecionado('Valor'), DBCartoes.ValorSelecionado('icEncargos'));
       C_ContasOperacao.Edit;
       C_ContasOperacaoConta.Value := C_TipoCartaoContapagar.Value;
       C_ContasOperacaoValor.Value := DBCartoes.ValorSelecionado('icEncargos');
       C_ContasOperacaoDescConta.Value := C_TipoCartaoDESCRICAO.Value;
       C_ContasOperacaoID.Value := -1;
       C_ContasOperacaoHistorico.AsString := 'Apresentação de Cartão de Credito';
       C_ContasOperacaoClienteRef.Value := -1;
       C_ContasOperacaoNomeClienteRef.AsString := C_TipoCartaoDESCRICAO.Value;
       C_ContasOperacao.Post;

       Operacao := DMFinanceiro.PagarRapido( DMProjeto.NextIDGlobal,
                                 Apresentacao,
                                  0,
                                  dtData.Date,dtData.Date,
                                  'Apresentação Cartão',
                                  C_ContasOperacaoValor.Value, 0, 0, 0, 0, 0,
                                  4,
                                  0 );
       DMFinanceiro.InserirContasOperacao(C_ContasOperacao, Operacao, 11 );

    End else if TipoDoc = 16 then
      Apresentacao := DMFinanceiro.ApresentarTicket(DBCartoes.ItensSelecionados,C_TipoCartaoFormaPagamento.Value, dtVencimento.Date, dtData.Date, Memo.Text+iif(edApresentacao.Text<>'','# '+edApresentacao.Text,''), DBCartoes.ValorSelecionado('Valor'))
    else
      Apresentacao := DMFinanceiro.ApresentarConveniado(DBCartoes.ItensSelecionados,C_TipoCartaoFormaPagamento.Value, dtVencimento.Date, dtData.Date, Memo.Text+iif(edApresentacao.Text<>'','# '+edApresentacao.Text,''), DBCartoes.ValorSelecionado('Valor'));

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    if ckbBordero.Checked then
    	ImprimirBordero(Apresentacao);

  edApresentacao.Text := '';

  result := true;
  try
      SendLastDataObject(Self.Name, 'DepositosDoc', 'IDDoc', C_CartoesIDDoc.Value, false );
    except
    end;

	except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      	 DlgMsg.ShowMsg( 255,'Erro: '+e.message, '');
    end;
 end;
end;

procedure TDlgApresentacaoCartao.btGravarClick(Sender: TObject);
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
     exit;
  if (OperacaoHist<>0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
     exit;
  if not Validadas then
     exit;
  if Gravar then begin
     Novo;
     Pesquisar;
  end;
  OperacaoHist := 0;
end;

procedure TDlgApresentacaoCartao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cmbCartao.OnChange := nil;
  inherited;
	DlgApresentacaoCartao := nil;
end;

procedure TDlgApresentacaoCartao.getHistorico;
var i, nResult : integer;
    sCartoes : string;
begin
  OperacaoHist := Operacao;
	pnCancelado.Visible:= DMFinanceiro.getSituacaoOperacao(Operacao)='C';
  btCancelar.Visible := true;
  btImprimir.Visible := true;
  btCancelar.Enabled := not pnCancelado.Visible;
  btImprimir.Enabled := not pnCancelado.Visible;
	{Dados do Cabeçalho}
  with Q_SQL do begin
  	close;
    sql.text := 'select * from operacoesfinanceiras where operacao = '+IntToStr(Operacao);
    open;
    if TipoDoc = 11 then
   		dtData.Date	 				:= fieldbyname('data').asDatetime
    else
    	dtVencimento.Date	 	:= fieldbyname('data').asDatetime;
    Liquidado							:= fieldbyname('floating').asInteger;
    edApresentacao.Text 	:= SeparaStrings(fieldbyname('historico').asString,'#',2);
    Memo.Text 						:= SeparaStrings(fieldbyname('historico').asString,'#',1);
    cmbCartao.LookupKeyValue 	:= fieldbyname('FormaPagamento').AsInteger;
    close;
    {Selecionando os Cheques}
    sCartoes 		:= DMFinanceiro.getOperacaoDet(IntToStr(OperacaoHist));
    Pesquisar(sCartoes);
    DBCartoes.SetSelecionados(sCartoes);
	end;
end;

procedure TDlgApresentacaoCartao.Novo;
begin
  pnCancelado.Visible:= false;
	btCancelar.Enabled := true;
	btCancelar.Visible := false;
  btImprimir.Visible := false;
	edApresentacao.Text:= '';
  OperacaoHist:= 0;
  Liquidado 	:= 0;
  Pesquisar;
end;

procedure TDlgApresentacaoCartao.btLimparClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgApresentacaoCartao.cmbCartaoChange(Sender: TObject);
begin
  inherited;
  Memo.Text := 'Apresentação '+cmbCartao.Text;
  Pesquisar;
end;

procedure TDlgApresentacaoCartao.FormsComponentBeforeClearParams(
  Sender: TObject);
var Cartao : integer;
begin
  inherited;
  btCancelar.Visible := false;
  btImprimir.Visible := false;
  if DMProjeto.QtdParametrosForm > 1 then
    TipoDoc := DMProjeto.getParametrosForm(1);
  Cartao := 0;
  if DMProjeto.QtdParametrosForm > 2 then
    Cartao := DMProjeto.getParametrosForm(2);

  if (TipoDoc = 17) then begin
  	Especie := 30;
    lbEspecie.Caption := 'Convênios';
    Ajuda1.HelpContext := 477;
  end else if TipoDoc = 16 then begin
  	Especie := 10;
    lbEspecie.Caption := 'Tickets';
    Ajuda1.HelpContext := 476;
  end else begin
  	Especie := 3;
    lbEspecie.Caption := 'Cartão de Crédito';
    Ajuda1.HelpContext := 259;
  end;
  lbVenc.Enabled			:= TipoDoc <> 11;
  dtVencimento.Enabled:= TipoDoc <> 11;
  btLimpar.Visible		:= TipoDoc = 11;
  btComando1.Visible	:= TipoDoc = 11;
  FormsComponent.Caption := 'Apresentar '+lbEspecie.Caption;
  lbEspecie.Caption := lbEspecie.Caption+':';
  dtData.Date := DMProjeto.dDataSistema;
  dfDataIni.Date := DMProjeto.dDataSistema;
  with C_TipoCartao do begin
  	Close;
    CommandText := 'Select FormaPagamento,Descricao,ContaLiberacao, contapagar '+
                   'from FormasPagamento where Especie = :E order by Descricao ';
    FetchParams;
    Params.ParamByName('E').AsInteger := Especie;
    Open;
  end;

  if Cartao <> 0 then
  	cmbCartao.LookupKeyValue := Cartao
  else
  	cmbCartao.LookupKeyValue := C_TipoCartaoFormaPagamento.Value;
  cmbCartaoChange(sender);
  with DMProjeto do begin
  	if ExisteParametrosForm then begin
      if getParametrosForm(0) <> null then
      	getHistorico( getParametrosForm(0) );
    end;
  end;
  if not DMProjeto.LerPermissao(self.name,'IMP') then begin
  	ckbBordero.Checked := false;
    ckbBordero.ReadOnly:= true;
  end;
end;

procedure TDlgApresentacaoCartao.CoresClick(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Release;
end;

procedure TDlgApresentacaoCartao.btComando1Click(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgApresentacaoCartao.DBCartoesDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_CartoesDeposito.AsInteger]);
    CriarForm(getTelaGeradora(C_CartoesTipoDeposito.AsInteger),self,true);
    LimparParametrosForm;
  end;
end;

procedure TDlgApresentacaoCartao.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(LastDataObject.TableName,'Depositos;DepositosDoc;OperacoesFinanceiras')>0 then
  	Pesquisar;
end;

procedure TDlgApresentacaoCartao.btCancelarClick(Sender: TObject);
begin
  inherited;
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
    	exit;

		if DlgMsg.ShowMsg( 577, ['esta Apresentação '+edApresentacao.text]) = 100 then begin

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      DMFinanceiro.CancelarOperacao( IntToStr(OperacaoHist), TipoDoc );

      if Liquidado <> 0 then
      	DMFinanceiro.CancelarOperacao( IntToStr(Liquidado), 13 );

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    	Novo;
    	try
        SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao',0, false );
    	except
    	end;
    end;
end;

procedure TDlgApresentacaoCartao.btImprimirClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'IMP' ) then
   		exit;
	ImprimirBordero( OperacaoHist );
end;

procedure TDlgApresentacaoCartao.btComando2Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
  	exit;
	with DMProjeto do begin
		SetParametrosForm([TipoDoc,'Histórico de '+FormsComponent.Caption,true]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
    if nResult = 1 then begin
  		if ExisteParametrosForm then
      	getHistorico( getParametrosForm(0) );
    end else if nResult = 3 then
    	Pesquisar;
    LimparParametrosForm;
  end;
end;

procedure TDlgApresentacaoCartao.btNovoClick(Sender: TObject);
begin
  inherited;
	Novo;
end;

procedure TDlgApresentacaoCartao.lbEspecieSetParametrosForm(
  Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([cmbCartao.LookUpKeyValue,Especie]);
    CriarForm('FrmFormasPagamento',self,true);
  end;
end;

procedure TDlgApresentacaoCartao.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    lblObs.caption := 'Obs.:';
    pnCancelado.caption := 'Canc.';
  end;
end;

procedure TDlgApresentacaoCartao.btGravarVencClick(Sender: TObject);
begin
  inherited;
  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    AtualizaVencimentos;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Novo;
    Pesquisar;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg( 255, 'ERRO' + #13#10 + e.message, ''  );
    end;
  end;
end;

procedure TDlgApresentacaoCartao.AtualizaVencimentos;
begin
  // Alterando os vencimento dos cartões que poderão
  // ser modificados pelo usuário
  if C_Cartoes.State = dsEdit then C_Cartoes.Post;
  C_Cartoes.First;
  while not C_Cartoes.EOF do begin
    if C_Cartoes_icSelecionado.AsInteger = 1 then begin
      with Q_SQL do begin
        Close;
        SQL.Text := 'update depositosdoc set vencimento = :venc '+
                    'where iddoc = :id ';
        ParamByName('venc').AsDateTime := C_CartoesVENCIMENTO.AsDateTime;
        ParamByName('id').AsInteger := C_CartoesIDDOC.AsInteger;
        ExecSQL;
      end;
    end;
    C_Cartoes.Next;
  end;
  //
end;

procedure TDlgApresentacaoCartao.dfDataIniExit(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgApresentacaoCartao.dtDataExit(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

end.
