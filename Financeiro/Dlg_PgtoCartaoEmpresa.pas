{
-----------------------------------------------------------------------------------------------
TradeSoft Ltda
Nome do Autor..: Rosil
Data de Criação:

- Historico de Alteracoes:

	12/01/2001	-	André	-	Conversão para Interbase, MultiIdioma

- Localização:

	No menu "Contas a Pagar", escolha "Pagamento do Cartão de Crédito".

- Tabelas Principais:

	Retiradas, RetiradasDoc, FormasPagamento

- Objetivo:

	Liquidar o status do documento (retiradasdoc) e Gerar um título a pagar para o fornecedor do cartão.

- Funcionalidades:

	Selecione o cartão para pagamento e em seguida selecione os títulos para efetuar o pagamento.
  Em caso de haver títulos atrasados do fornecedor deste cartão será mostrado para selecionar
  e será cancelado este título com o novo título que será gerado.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Só será filtrado de acordo com a data de vencimento.
-----------------------------------------------------------------------------------------------
}

unit Dlg_PgtoCartaoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, ExtCtrls,
  TS_Shape, ComCtrls, TS_DateTimePicker, StdCtrls, TS_Edit, DBCtrls,
  TS_DBLookupComboBox, TS_Label, DlgMsg, Menus, Buttons,
  TS_SpeedButton, IBCustomDataSet, IBQuery, Provider,
  DBClient, TS_DBText, TS_LastDataObject,
  TS_Bevel, dxEdLib, Dlg_PopupContas,
  dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, FormsComponent,
  TS_Image, dxfLabel, TS_MaxPanel, TS_CalcEdit, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_LookupComboBox, TS_PopupMenu,
  TS_CheckBox, teCtrls, TS_EffectsPanel, dxGrClEx, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppStrtch,
  ppRegion, ppBands, ppCache, ppSubRpt, DM_Contabilidade, Variants, BTOdeum,
  Placemnt;

type
  TDlgPgtoCartaoEmpresa = class(TFrmModeloCadastros)
    DlgMsg1: TDlgMsg;
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    EdtNotaFiscal: TTS_Edit;
    pnlFaturasAtraso: TTS_Panel;
    pnlCaptionAtraso: TTS_Panel;
    TS_Panel4: TTS_Panel;
    Q_Cartoes: TIBQuery;
    Q_CartoesDs: TDataSource;
    Q_FaturasAtraso: TIBQuery;
    Q_FaturasAtrasoDS: TDataSource;
    C_Cartoes: TClientDataSet;
    Q_CartoesProvider: TDataSetProvider;
    C_FaturasAtraso: TClientDataSet;
    Q_FaturasAtrasoProvider: TDataSetProvider;
    C_CartoesRETIRADA: TIntegerField;
    C_CartoesFAVORECIDODOC: TIntegerField;
    C_CartoesNOME: TStringField;
    C_CartoesIDDOC: TIntegerField;
    C_FaturasAtrasoID: TIntegerField;
    C_FaturasAtrasoTITULO: TStringField;
    C_FaturasAtrasoPARCELA: TIntegerField;
    C_FaturasAtrasoVENCIMENTO: TDateField;
    C_CartoesVALOR: TBCDField;
    C_FaturasAtrasoVALOR: TBCDField;
    TS_Label2: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Shape3: TTS_Shape;
    lbDiferenca: TTS_Label;
    TS_Shape4: TTS_Shape;
    C_CartoesDATA: TDateField;
    pnAjuste: TTS_Panel;
    TS_Panel6: TTS_Panel;
    TS_Panel3: TTS_Panel;
    pnCompras: TTS_Panel;
    C_Ajuste: TClientDataSet;
    C_AjusteDS: TDataSource;
    C_AjusteConta: TIntegerField;
    C_AjusteValor: TFloatField;
    C_AjusteDescConta: TStringField;
    C_FaturasAtrasoNOME: TStringField;
    C_CartoesTIPORETIRADA: TIntegerField;
    DataI: TTS_DateTimePicker;
    edValorFatura: TTS_CalcEdit;
    DBAberto: TTS_QDBGrid;
    DBPagto: TTS_QDBGrid;
    DBAjustes: TTS_QDBGrid;
    DBAbertoID: TdxDBGridMaskColumn;
    DBAbertoPARCELA: TdxDBGridMaskColumn;
    DBAbertoVENCIMENTO: TdxDBGridDateColumn;
    DBAbertoVALOR: TdxDBGridMaskColumn;
    DBAbertoNOME: TdxDBGridMaskColumn;
    DBPagtoRETIRADA: TdxDBGridMaskColumn;
    DBPagtoFAVORECIDODOC: TdxDBGridMaskColumn;
    DBPagtoNOME: TdxDBGridMaskColumn;
    DBPagtoIDDOC: TdxDBGridMaskColumn;
    DBPagtoVALOR: TdxDBGridMaskColumn;
    DBPagtoDATA: TdxDBGridDateColumn;
    DBPagtoTIPORETIRADA: TdxDBGridMaskColumn;
    DBAjustesConta: TdxDBGridMaskColumn;
    DBAjustesValor: TdxDBGridMaskColumn;
    cmbCartao: TTS_LookupComboBox;
    lbCartoesSel: TTS_Label;
    lbAberto: TTS_Label;
    C_Cartoes_icSelecionado: TIntegerField;
    C_FaturasAtraso_icSelecionado: TIntegerField;
    ckbPagar: TTS_CheckBox;
    DBAjustesDescConta: TdxDBGridPopupColumn;
    btCancelar: TTS_SpeedButton;
    ppFaturaCartao: TppReport;
    dbCartoes: TppDBPipeline;
    dbAtrasado: TppDBPipeline;
    dbAjuste: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    lbCartao: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lbFatura: TppLabel;
    lbVencimento: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel2: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBCalc1: TppDBCalc;
    C_FaturasAtrasoCOMPETENCIA: TDateField;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand4: TppSummaryBand;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    lbTotalFatura: TppLabel;
    lbCompras: TppLabel;
    lbEncargos: TppLabel;
    ckbImprimir: TTS_CheckBox;
    TS_Bevel2: TTS_Bevel;
    btImprimir: TTS_SpeedButton;
    btContabilidade: TTS_SpeedButton;
    C_CartoesCONTAPAGAR: TIntegerField;
    C_FaturasAtrasoFORNECEDOR: TIntegerField;
    C_FaturasAtrasoCOMPRA: TIntegerField;
    C_AjusteMemo: TStringField;
    DBAjustesMemo: TdxDBGridColumn;
    pnCancelado: TdxfLabel;
    C_AjusteID: TIntegerField;
    DBPagtoHistorico: TdxDBGridColumn;
    C_CartoesHISTORICO: TStringField;
    procedure cmbCartaoClick(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure EdtOutrosKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure DataIAcceptDate(Sender: TObject; var DateTime: TDateTime;
      var Accept: Boolean);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure DBPagtoAfterSelection(Sender: TObject; bSelected: Boolean;
      QtdSel: Integer; TotalGeral, TotalSelecionado: array of Double);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure edValorFaturaChange(Sender: TObject);
    procedure C_AjusteValorChange(Sender: TField);
    procedure DBPagtoDblClick(Sender: TObject);
    procedure DBAbertoTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure DBPagtoTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure DBAbertoDblClick(Sender: TObject);
    procedure DBAjustesDescContaInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure C_AjusteNewRecord(DataSet: TDataSet);
    procedure TS_Label1SetParametrosForm(Sender: TObject);
  protected
    DlgPopup: TDlgPopupContas;
    // Adriano
    DMContabil: TDMContabilidade;
  private
    { Private declarations }
    Encargos,Valor,Total: currency;
    Operacao, nSeq : integer;
    function 	Calcula( bAjuste : boolean = true ) : currency;
		procedure getHistorico( OperacaoHist : integer );
		procedure Novo;
    procedure Pesquisar( sCartoes : string = ''; sDupAtrasos : string = '');
    function 	Validacoes(bMostrarMensagem:boolean) : boolean;
    procedure Imprimir;
  public
    { Public declarations }
  end;

var
  DlgPgtoCartaoEmpresa: TDlgPgtoCartaoEmpresa;

implementation

uses funcoes, DM_Projeto, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgPgtoCartaoEmpresa.cmbCartaoClick(Sender: TObject);
begin
  inherited;
 pnCompras.Caption := 'Compras efetuadas com o cartão: '+UpperCase(cmbCartao.Text);
	Pesquisar;
end;

procedure TDlgPgtoCartaoEmpresa.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;


function TDlgPgtoCartaoEmpresa.Validacoes;
Var
  nTotalSel:Integer;
begin
	result := false;
  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if (DBPagto.Selecionados = '') and (DBAberto.Selecionados = '') then begin
  	// ShowMessage('Você não Selecionou nenhum título para ser pago.');
    DlgMsg.ShowMsg(386);
    Exit;
  end;
  Encargos := 0;
  if C_Ajuste.Active then
  	Encargos  := DBAjustes.TotalGeral('Valor');
  Valor   	:= DBPagto.TotalSelecionado('Valor');
  nTotalSel	:= DBPagto.QuantidadeSelecionada;
  if pnlFaturasAtraso.Visible then begin
    Valor   := Valor + DBAberto.TotalSelecionado('Valor');
    nTotalSel:= nTotalSel + DBAberto.QuantidadeSelecionada;
  end;
  Total   := Encargos + Valor;
  {If Application.MessageBox(pchar('Gerar pagamento de '+inttostr(nTotalSel)+' contas selecionadas '+#13+
                                  'dando um valor total de '+FormatCurr('###,###,##0.00',cTotal)+#13+
                                  'deseja continuar?'),'Confirmação ',mb_yesno+mb_iconquestion) = id_yes Then }
  if bMostrarMensagem then begin
    if DlgMsg.ShowMsg(387,[inttostr(nTotalSel),'',FormatCurr('###,###,##0.00',Total),'']) = 200 then
   		exit;
  end;    
  result := true;
end;

procedure TDlgPgtoCartaoEmpresa.btGravarClick(Sender: TObject);
var i, IDDuplicata : integer;
begin
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
 		exit;
 	if (Operacao<>0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
 		exit;

  if edValorFatura.Value <= 0 then begin
  	DlgMsg.ShowMsg(929,['o valor da fatura']);
    edValorFatura.SetFocus;
    Exit;
  end;

  if Calcula <> 0 then begin
  	DlgMsg.ShowMsg(584,[formatfloat('###,###,##0.00',Calcula)]);
    exit;
  end;

  if (C_Cartoes.Active) then
    if DBPagto.ValorSelecionado('Valor') > edValorFatura.value then begin
      DlgMsg.ShowMsg(913);
    	exit;
    end;
  if DMProjeto.Parametro('Confirmacao') <> 'N' then
  	if DlgMsg.ShowMsg(918) = 200 then
  		exit;
  Try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

		if Operacao <> 0 then begin
 			if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltPgCarta' ) then
  				exit;
    	DMFinanceiro.CancelarOperacao( IntToStr(Operacao), 15 );
      Operacao := 0;
    end;

		Operacao := DMProjeto.NextIDGlobal;

  	IDDuplicata := DMFinanceiro.Conta_A_Pagar( 1,
     																					 edValorFatura.Value,
                                               DataI.Date, DMProjeto.dDataSistema,
                                               'Ref. #'+EdtNotaFiscal.Text,
                      			 									 0, // Natureza
                                               DMFinanceiro.C_CartoesBusFornecedor.AsInteger,
                                               0, // IDCompra
                                               EdtNotaFiscal.Text,
                                               15,
                                               Operacao );

    with DMFinanceiro.Q_SQL do begin
      SQL.Text := 'Insert into OperacoesFinanceiras ( '+
      						'Operacao, TipoOperacao, Data, ValorOperacao, ValorJuros, ContaOrigem, ValorDinheiro, Historico, Titulo, FormaPagamento) '+
                  'Values ( '+
                  ':Operacao, 15, Current_Date,:Valor,:Encargos, :ContaOrigem, 0,:Hist,:Titulo, :FormaPagamento)';
      ParamByName('Operacao').AsInteger 	:= Operacao;
			ParamByName('Valor').AsCurrency 		:= edValorFatura.Value;
      ParamByName('Encargos').AsCurrency 	:= C_AjusteValor.AsCurrency;
      ParamByName('FormaPagamento').AsInteger := cmbCartao.LookUpKeyValue;
      ParamByName('Contaorigem').AsInteger:= C_AjusteConta.AsInteger;
      ParamByName('Titulo').AsInteger 		:= IDDuplicata;
      ParamByName('Hist').AsString	 			:= EdtNotaFiscal.Text+';'+DBAberto.Selecionados;
      ExecSQL;
      DBPagto.FirstSelected;
      for i:=1 to ContaStrings(DBPagto.Selecionados,',') do begin
      	Close;
      	SQL.Text := 'Insert into OperacoesFinanceirasDet '+
      							'(OpDoc, Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc) '+
                 		'values '+
                 		'(:OpDoc, :Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc) ';
      	ParamByName('OpDoc').AsInteger 			:= DMProjeto.NextIDGlobal;
      	ParamByName('Operacao').AsInteger	 	:= Operacao;
      	ParamByName('NumCheque').AsInteger	:= 0;
      	ParamByName('Vencimento').AsDateTime:= C_CartoesData.Value;
      	ParamByName('Valor').AsCurrency			:= C_CartoesValor.Value;
      	ParamByName('Favorecido').AsInteger	:= C_CartoesFavorecidoDoc.Value;
      	ParamByName('IDDoc').AsInteger			:= C_CartoesIDDoc.Value;
      	ExecSQL;
        DBPagto.NextSelected;
      end;
    end;

    if DBPagto.Selecionados <> '' then begin
    	with DMFinanceiro.Q_SQL do begin
    		Close;
      	Sql.Clear;
      	Sql.Add('Update retiradasdoc set status = 50 Where iddoc in ('+DBPagto.Selecionados+')');
      	ExecSql;
    	end;
    end;

    if (pnlFaturasAtraso.Visible) and (DBAberto.Selecionados <> '')  then begin
      DBAberto.FirstSelected;
      for i:=1 to ContaStrings(DbAberto.Selecionados,',') do begin
    		with DMFinanceiro.Q_SQL do begin
      		Close;
        	Sql.Clear;
        	Sql.Add('Update DuplicatasAPagar set status = 50, ');
        	Sql.Add('DataPago = :Data, Descontos = :Valor ');
        	Sql.Add('Where id = '+SeparaStrings(DBAberto.Selecionados,',',i));
        	parambyname('data').asDateTime := DMProjeto.dDataSistema;
        	parambyname('valor').AsCurrency	 := C_FaturasAtrasoValor.Value;
        	ExecSql;
      	end;
        DBAberto.NextSelected;
      end;
    end;

    // Adriano
    DMContabil.ContabilizaPgtoCartaoEmpresa(Operacao,EdtNotaFiscal.text,cmbCartao.text,cmbCartao.LookupKeyValue,edValorFatura.value,C_Cartoes,C_FaturasAtraso,C_Ajuste);

    if not DMContabil.Salvar(Operacao) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
       DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    if ckbImprimir.Checked then
    	Imprimir;

    if ckbPagar.Checked then begin
    	with DMProjeto do begin
    	 SetParametrosForm( [null,
                         	 DMFinanceiro.C_CartoesBusFornecedor.Value,
                         	 IntToStr(IDDuplicata)] );
       CriarForm( 'DlgSangria', self, true );
       LimparParametrosForm;
    	end;
    end;

    	try
      	SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', Operacao, false );
    	except
    	end;

	  // Pesquisar;
    Novo;

  except
    on E:Exception do begin
       DlgMsg.ShowMsg(2,e.message, '');
    	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.EdtOutrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key in [',','.'] then
  	key := DecimalSeparator;
end;

procedure TDlgPgtoCartaoEmpresa.Novo;
begin
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
	btGravar.Caption	 := 'Salvar';
  pnCancelado.Visible := false;
	btCancelar.Enabled	:= true;
  btCancelar.Visible := false;
  btImprimir.Visible := false;
  lbCartoesSel.Caption := DMProjeto.SetZero;
  lbAberto.Caption := DMProjeto.SetZero;
  EdtNotaFiscal.Text 	:= '';
  EdValorFatura.Value	:= 0;
  C_Ajuste.EmptyDataSet;
  Calcula;
  cmbCartao.SetFocus;
  Operacao := 0;
  nSeq := 1;
  if C_Cartoes.Active then
  	DBPagto.LimparSelecionados;
  if C_FaturasAtraso.Active then
  	DBAberto.LimparSelecionados;
  btComando1.Down := false;
  btComando1.Click;
  Pesquisar;
end;

procedure TDlgPgtoCartaoEmpresa.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
end;

procedure TDlgPgtoCartaoEmpresa.Pesquisar;
begin
  if not DMFinanceiro.C_CartoesBus.Active then
  	Exit;
	with C_Cartoes do begin
    Close;
    CommandText := 	'SELECT r.Retirada, r.TipoRetirada, r.Data, rd.FavorecidoDoc, '+
    								'f.Nome, rd.Valor, rd.iddoc, rd.contapagar, r.historico '+
										'FROM Retiradas  r '+
                    'INNER JOIN RetiradasDoc rd ON r.Retirada = rd.Retirada '+
                    'INNER JOIN Favorecidos f ON rd.FavorecidoDoc = f.Favorecido '+
                    'WHERE '+
                    'rd.FormaPagamento = :FormaPg and '+
                    'rd.Status = 7 ';

    if sCartoes <> '' then
      CommandText := CommandText + 'or (rd.IDDoc IN ('+sCartoes+')) ';

    CommandText := CommandText + 'Order By r.Data';
    FetchParams;
    Params.ParamByName('FormaPg').AsInteger := DMFinanceiro.C_CartoesBusFormaPagamento.AsInteger;
    Open;
  end;
  with C_FaturasAtraso do begin
    Close;
    CommandText := 'select d.ID, d.Titulo, d.Parcela, d.Valor, d.Vencimento, f.Nome, d.Competencia, d.fornecedor, d.compra '+
    							 'from DuplicatasAPagar d LEFT JOIN Favorecidos f on d.fornecedor = f.favorecido '+
                	 'where (d.status IN (1,2,3) and d.Fornecedor = :Fornecedor and d.vencimento <= current_date) ';
    if sDupAtrasos <> '' then
    	CommandText := CommandText + 'or d.ID in ('+sDupAtrasos+') ';

    CommandText := CommandText + 'order by d.vencimento';
    FetchParams;
    Params.ParamByName('Fornecedor').AsInteger:= DMFinanceiro.C_CartoesBusFornecedor.AsInteger;
    Open;
    pnlFaturasAtraso.Visible 		:= Recordcount > 0;
    pnlCaptionAtraso.Visible 		:= pnlFaturasAtraso.Visible;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.DataIAcceptDate(Sender: TObject;
 var DateTime: TDateTime; var Accept: Boolean);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgPgtoCartaoEmpresa.TS_SpeedButton3Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
 		exit;
	with DMProjeto do begin
		SetParametrosForm([15,'Histórico de Pagamentos com Cartão',true]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
    if nResult = 1 then begin
  		if ExisteParametrosForm then
      	getHistorico( getParametrosForm(0) );
    end else if nResult = 3 then
    	Pesquisar;
    LimparParametrosForm;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.getHistorico;
var i, nResult, nContaOrigem : integer;
    sCartoes, sDupAtrasos : string;
    nValorJuros : Currency;
begin
	{Dados do Cabeçalho}
  Operacao := OperacaoHist;
	btCancelar.Visible := true;
  btImprimir.Visible := true;
  btGravar.Caption	 := 'Alterar';
  with DMFinanceiro.Q_SQL2 do begin
  	close;
    sql.text := 'select * from operacoesfinanceiras where operacao = '+IntToStr(OperacaoHist);
    open;
   	DataI.Date	:= fieldbyname('data').asDatetime;
    cmbCartao.LookupKeyValue := fieldbyname('FormaPagamento').AsInteger;
		edValorFatura.Value := fieldbyname('ValorOperacao').AsCurrency;
    EdtNotaFiscal.Text := SeparaStrings(fieldbyname('historico').AsString,';',1);
    sDupAtrasos := SeparaStrings(fieldbyname('historico').AsString,';',2);
    sCartoes 		:= DMFinanceiro.getOperacaoDet(IntToStr(OperacaoHist));
    nContaOrigem:= fieldbyname('ContaOrigem').AsInteger;
    nValorJuros := fieldbyname('ValorJuros').AsCurrency;
    pnCancelado.Visible := fieldbyname('Situacao').asString='C';
    btCancelar.Enabled  := not pnCancelado.Visible;
    btImprimir.Enabled  := not pnCancelado.Visible;
    if nValorJuros > 0 then begin
    	with C_Ajuste do begin
    		EmptyDataSet;
      	Append;
      	fieldbyname('Conta').AsInteger 	:= nContaOrigem;
				fieldbyname('Valor').AsCurrency := nValorJuros;
      	Post;
    	end;
    end;
    pnAjuste.Visible := C_Ajuste.RecordCount>0;
    Pesquisar(sCartoes,sDupAtrasos);
		{Selecionando os Duplicatas em atraso}
		for i:=1 to ContaStrings(sDupAtrasos,',') do
			if C_FaturasAtraso.Locate('ID',StrToInt(SeparaStrings(sDupAtrasos,',',i)),[]) then
      	DBAberto.Selecionar;

    {Selecionando os Fornecedores pagos com o cartão}
    for i:=1 to ContaStrings(sCartoes,',') do
			if C_Cartoes.Locate('IDDoc',StrToInt(SeparaStrings(sCartoes,',',i)),[]) then
      	DBPagto.Selecionar;

    Calcula;
    close;
	end;
end;


procedure TDlgPgtoCartaoEmpresa.DBPagtoAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer; TotalGeral,
  TotalSelecionado: array of double);
var Valor : currency;
begin
  inherited;
  Valor := Calcula(false);
	if Valor <> 0 then
  	if (C_Ajuste.Active) and (C_Ajuste.RecordCount>0) then begin
    	C_Ajuste.Edit;
      C_AjusteValor.Value := Valor;
    end;
end;

function TDlgPgtoCartaoEmpresa.Calcula;
var ValorAjuste : currency;
begin
  ValorAjuste := 0;
  if (C_FaturasAtraso.Active) then
  	ValorAjuste := ValorAjuste + DBAberto.ValorSelecionado('Valor');
  if (C_Cartoes.Active) then
  	ValorAjuste := ValorAjuste + DBPagto.ValorSelecionado('Valor');
 if bAjuste then
 	if C_Ajuste.Active then
  	ValorAjuste := ValorAjuste + DBAjustes.TotalGeral('Valor');
  result := edValorFatura.Value - ValorAjuste;
  lbDiferenca.Caption := formatfloat('###,###,##0.00', result );
end;

procedure TDlgPgtoCartaoEmpresa.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnAjuste.Visible := btComando1.Down;

  if not pnAjuste.Visible then begin
  	C_Ajuste.EmptyDataSet;
    Calcula;
    Exit;
  end;

  with C_Ajuste do begin
    EmptyDataSet;
  	Append;
    FieldByName('Conta').AsInteger 	:= DMProjeto.ContaPadrao(15);
    FieldByName('Valor').AsCurrency		:= Calcula;
    Post;
		Calcula;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.edValorFaturaChange(Sender: TObject);
var Valor : currency;
begin
  inherited;
  Valor := Calcula(false);
	if Valor <> 0 then
  	if (C_Ajuste.Active) and (C_Ajuste.RecordCount>0) then begin
    	C_Ajuste.Edit;
      C_AjusteValor.Value := Valor;
    end;
end;

procedure TDlgPgtoCartaoEmpresa.C_AjusteValorChange(Sender: TField);
begin
  inherited;
  if (C_Ajuste.State in [dsEdit]) then
	  C_Ajuste.Post;
	Calcula;
end;

procedure TDlgPgtoCartaoEmpresa.DBPagtoDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_CartoesRetirada.Value]);
    CriarForm(getTelaGeradora(C_CartoesTipoRetirada.Value),self,true);
    LimparParametrosForm;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.DBAbertoTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
var Valor : currency;
begin
  inherited;
  Valor := Calcula(false);
	if Valor <> 0 then
  	if (C_Ajuste.Active) and (C_Ajuste.RecordCount>0) then begin
    	C_Ajuste.Edit;
      C_AjusteValor.Value := Valor;
    end;
	lbAberto.caption := formatfloat('###,###,##0.00', DBAberto.ValorSelecionado('Valor'));
end;

procedure TDlgPgtoCartaoEmpresa.DBPagtoTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
var Valor : currency;
begin
  inherited;
  Valor := Calcula(false);
	if Valor <> 0 then
  	if (C_Ajuste.Active) and (C_Ajuste.RecordCount>0) then begin
    	C_Ajuste.Edit;
      C_AjusteValor.Value := Valor;
    end;
  lbCartoesSel.Caption := formatfloat('###,###,##0.00',DBPagto.ValorSelecionado('Valor'));
end;

procedure TDlgPgtoCartaoEmpresa.DBAbertoDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm( [C_FaturasAtrasoID.Value] );
    CriarForm( 'FrmA_Pagar', self, true );
    LimparParametrosForm;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.DBAjustesDescContaInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
  DlgPopup.SetTipo(9);
end;

procedure TDlgPgtoCartaoEmpresa.FormsComponentBeforeClearParams(
  Sender: TObject);
Var
  Dia,Mes,Ano: Word;
begin
  inherited;
  DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasDS, nil, true);
  C_Ajuste.CreateDataSet;
  C_Ajuste.Open;

  DMFinanceiro.C_CartoesBus.Close;
  DMFinanceiro.C_CartoesBus.Open;
  cmbCartao.LookupKeyValue := DMFinanceiro.C_CartoesBusFormaPagamento.Value;
  DecodeDate(DMProjeto.dDataSistema,Ano,Mes,Dia);
  Dia := DMFinanceiro.C_CartoesBusCarenciaCredito.AsInteger;
  if Dia <= 0 then
  	Dia := 1;
  if DMFinanceiro.C_CartoesBusCarenciaCredito.AsInteger > Dia then
     DataI.Date := EncodeDate(Ano,Mes,Dia)
  else
    begin
      if Mes = 12 then
        Mes := 1
      else
        Inc(Mes);
      if (Mes = 2) and (Dia > 28) then
      	 Dia := StrToInt(formatdatetime( 'dd' , LastMonthDay(EncodeDate(Ano,Mes,1))));
      DataI.Date := EncodeDate(Ano,Mes,Dia);
    end;
  with DMProjeto do begin
  	if ExisteParametrosForm then begin
      if QtdParametrosForm = 1 then
      	getHistorico( getParametrosForm(0) );
  		LimparParametrosForm;
    end else
      Novo;
  end;
  if not DMProjeto.LerPermissao(self.name,'IMP') then begin
  	ckbImprimir.Checked := false;
    ckbImprimir.ReadOnly:= true;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.FormActivate(Sender: TObject);
begin
  inherited;
  DBAjustesDescConta.popupcontrol 		:= DlgPopup.pnPopup;
end;

procedure TDlgPgtoCartaoEmpresa.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(UpperCase(LastDataObject.TableName),UpperCase('Retiradas,RetiradasDoc,OperacoesFinanceiras'))>0 then
  	Pesquisar;
end;

procedure TDlgPgtoCartaoEmpresa.btCancelarClick(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
 		exit;
	if DlgMsg.ShowMsg( 577, ['esta fatura ?']) = 100 then begin

 		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    DMFinanceiro.CancelarOperacao( IntToStr(Operacao), 15 );

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

   	try
       SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao',0, false );
   	except
   	end;
   	Novo;
  end;
end;

procedure TDlgPgtoCartaoEmpresa.Imprimir;
begin
	with C_FaturasAtraso do begin
  	Filtered := false;
    Filter := '_icSelecionado = 1';
    Filtered := true;
  end;
	with C_Cartoes do begin
  	Filtered := false;
    Filter := '_icSelecionado = 1';
    Filtered := true;
  end;
  lbCartao.Caption := cmbCartao.Text;
  lbFatura.Caption := EdtNotaFiscal.Text;
  lbVencimento.Caption := DataI.Text;
  lbTotalFatura.Caption:= formatfloat('###,###,##0.00',edValorFatura.Value);
  lbCompras.Caption		 := formatfloat('###,###,##0.00',DBPagto.TotalSelecionado('Valor'));
  lbEncargos.Caption	 := formatfloat('###,###,##0.00',DBAjustes.TotalGeral('Valor'));
  DMProjeto.ImprimirCabecalho( regCab );
  ppFaturaCartao.Print;
  C_Cartoes.Filtered := false;
  C_FaturasAtraso.Filtered := false;
end;

procedure TDlgPgtoCartaoEmpresa.btImprimirClick(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'IMP' ) then
 		exit;
	Imprimir;
end;

procedure TDlgPgtoCartaoEmpresa.FormClose(Sender: TObject;
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
end;

procedure TDlgPgtoCartaoEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    pnCancelado.caption := 'Canc.';
    btContabilidade.visible := false;
    DBAjustesMemo.caption := 'Obs.';
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgPgtoCartaoEmpresa.btContabilidadeClick(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONTABILID' ) then
 		exit;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaPgtoCartaoEmpresa(Operacao,EdtNotaFiscal.text,cmbCartao.text,cmbCartao.LookupKeyValue,edValorFatura.value,C_Cartoes,C_FaturasAtraso,C_Ajuste);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgPgtoCartaoEmpresa.C_AjusteNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_AjusteID.Value := nSeq;
  inc(nSeq);
end;

procedure TDlgPgtoCartaoEmpresa.TS_Label1SetParametrosForm(
  Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([DMFinanceiro.C_CartoesbusFormaPagamento.AsVariant,50]);
end;

end.
