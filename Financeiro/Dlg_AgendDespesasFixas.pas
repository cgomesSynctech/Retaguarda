 {
-----------------------------------------------------------------------------------------------
TradeSoft Ltda
Nome do Autor..: Rosil
Data de Criação:

- Historico de Alteracoes:

- Localização:

	No menu "Contas a Pagar", escolha "Agendamento de Despesas Fixas".

- Tabelas Principais:

	DuplicatasAPagar

- Objetivo:

	Gerar Títulos a Pagar para despesas fixas.

- Funcionalidades:

	Selecione o Favorecido, Valor, Qtde de Parcelas, nº parcela inicial, a partir do dia,
  Natureza, e a periodicidade.

- Quais cuidados devem ser tomados por quem irá alterar a unit.


-----------------------------------------------------------------------------------------------
}

unit Dlg_AgendDespesasFixas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, IBCustomDataSet, IBQuery, Mask, DBCtrls,
  TS_DBLookupComboBox, StdCtrls, TS_Edit, ExtCtrls, TS_RadioGroup,
  ComCtrls, TS_DateTimePicker, TS_Label, DlgMsg, Menus,
  Buttons, TS_SpeedButton, TS_BitBtn, TS_CheckBox,
  TS_LastDataObject, TS_Bevel, TS_MaxPanel,
  TS_EditFavorecido, TS_DBLookupTipoFav,
  TS_ComboBox, DBClient, Provider, dxExEdtr,
  dxEdLib, dxDBEdtr, dxDBELib, dxEditor, TS_ButtonEdit, dxCntner,
  FormsComponent, TS_Image, dxfLabel, TS_DBButtonEdit,
  TS_DBEditFavorecido, TS_CalcEdit, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, Dlg_PopupContas, dxGrClEx, teCtrls,
  TS_EffectsPanel, TS_SpinEdit, TS_Memo, TS_PopupMenu, TS_PopupEdit,
  BTOdeum, Placemnt;

type
  TDlgAgendDespesasFixas = class(TFrmModeloCadastros)
    Label1: TTS_Label;
    Label2: TTS_Label;
    Label3: TTS_Label;
    Label4: TTS_Label;
    dfQtde: TTS_SpinEdit;
    dfParcInicial: TTS_SpinEdit;
    cbkDataCompetencia: TTS_CheckBox;
    rgPeriodicidade: TTS_ComboBox;
    TS_Label1: TTS_Label;
    C_ContasOperacao: TClientDataSet;
    C_ContasOperacaoDS: TDataSource;
    C_ContasOperacaoConta: TIntegerField;
    C_ContasOperacaoValor: TFloatField;
    C_ContasOperacaoDescConta: TStringField;
    dtData: TTS_DateTimePicker;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfForn: TTS_EditFavorecido;
    dfValor: TTS_CalcEdit;
    DBContasOperacao: TTS_QDBGrid;
    DBContasOperacaoConta: TdxDBGridMaskColumn;
    DBContasOperacaoValor: TdxDBGridMaskColumn;
    DBContasOperacaoDescConta: TdxDBGridPopupColumn;
    C_ContasOperacaoHistorico: TStringField;
    C_ContasOperacaoClienteRef: TIntegerField;
    C_ContasOperacaoNomeClienteRef: TStringField;
    DBContasOperacaoHistorico: TdxDBGridColumn;
    DBContasOperacaoNomeClienteRef: TdxDBGridButtonColumn;
    TS_Label2: TTS_Label;
    dfRefNo: TTS_Edit;
    lbObs: TTS_Label;
    dfObs: TTS_Memo;
    Agendar1: TMenuItem;
    N1: TMenuItem;
    Histrico1: TMenuItem;
    Q_Contas: TIBQuery;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasSALDO: TBCDField;
    C_ContasDESCTIPO: TStringField;
    C_ContasCODIGOREDUZIDO: TStringField;
    P_Contas: TDataSetProvider;
    C_ContasDS: TDataSource;
    procedure Label7Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure dfFornKeyPress(Sender: TObject; var Key: Char);
    procedure DBContasOperacaoDescContaInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure dfFornSelecionou(Sender: TObject);
    procedure dfValorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure dbContaAPagarInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    Operacao: integer;
  	DlgPopup : TDlgPopupContas;
  private
    function  Validacoes(bMostrarMensagem:boolean) : boolean;
    function  Gravar : boolean;
    procedure Novo;
  public
    { Public declarations }
  end;

var
  DlgAgendDespesasFixas: TDlgAgendDespesasFixas;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgAgendDespesasFixas.Label7Click(Sender: TObject);
begin
  DMProjeto.sParametrosForm := '';
end;

function TDlgAgendDespesasFixas.Validacoes;
begin
	result := false;
	if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;

  if dfValor.Value <= 0 then begin
    // ShowMessage('Falta informar o valor!');
    DlgMsg.ShowMsg(325);
    exit;
  end;
  if trim(dfParcInicial.text) = '' then begin
    // ShowMessage('Falta informar a parcela inicial!');
    DlgMsg.ShowMsg(492);
    exit;
  end;
  if trim(dfQtde.text) = '' then begin
    // ShowMessage('Falta informar a qtde. de parcelas!');
    DlgMsg.ShowMsg(493);
    exit;
  end;
  if dfForn.getID < 0 then begin
    // ShowMessage('Falta informar o Fornecedor!');
    DlgMsg.ShowMsg(324);
    exit;
  end;
  {Vericando contas}
  if DMProjeto.Parametro('HabilitarContabilidade')='S' then
   if not DMFinanceiro.ValidaContas( C_ContasOperacao, DBContasOperacao.TotalGeral('Valor'),dfValor.value) then
  	exit;

  result := true;
end;

function TDlgAgendDespesasFixas.Gravar;
var dData,dDtComp: TDatetime;
    Duplicata, nContador, nParcela: integer;
begin
	result := false;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  try
  Operacao := DMProjeto.NextIDGlobal;
	with DMFinanceiro.Q_SQL do begin
  	close;
    SQL.Text := 'Insert into OperacoesFinanceiras ( '+
     						'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ContaDestino, ContaOrigem, ValorDinheiro, Historico, Titulo, Usuario) '+
                'Values ( '+
                ':Operacao, 29, :Favorecido, :Data ,:Valor,:Conta, :ContaOrigem, 0,'''+DMProjeto.getMsg(318)+''',:Titulo,:Usuario)';
    ParamByName('Operacao').AsInteger 	:= Operacao;
    ParamByName('Favorecido').AsInteger := dfForn.ID;
    ParamByName('Data').AsDateTime		 	:= dtData.Date;
		ParamByName('Valor').AsCurrency 		:= dfValor.Value*dfQtde.Value;
    ParamByName('Conta').AsInteger 			:= trunc(dfQtde.Value);
    ParamByName('Contaorigem').AsInteger:= trunc(dfParcInicial.Value);
    ParamByName('Titulo').AsInteger 		:= rgPeriodicidade.ItemIndex;
    ParamByName('Usuario').AsInteger 		:= DMProjeto.nFuncionario;
    ExecSQL;

  	dData := trunc(dtData.date);

  	nContador := 1;
  	nParcela := strtoint(dfParcInicial.text);
  	while true do begin
  		if cbkDataCompetencia.Checked then
  			dDtComp := dData
    	else
    		dDtComp := Trunc(dtData.Date);

    	Duplicata := DMFinanceiro.Conta_A_Pagar( nParcela,
                                               dfValor.Value,
                                               dData, dDtComp,
                                               dfObs.Lines.Text,
    														 							 0, // Natureza
                                               dfForn.ID,
                                               0, // IDCompra
                                               dfRefNo.Text,
                                               29,
                                               Operacao,
                                               -3 ); //Status

      DMFinanceiro.InserirContasOperacao( C_ContasOperacao, Duplicata, 29 );
    	if rgPeriodicidade.ItemIndex = 0 then
      	dData := DateAdd('MM',1,dData)
    	else if rgPeriodicidade.ItemIndex = 1 then
      	dData := DateAdd('MM',2,dData)
    	else if rgPeriodicidade.ItemIndex = 2 then
      	dData := DateAdd('MM',3,dData)
    	else if rgPeriodicidade.ItemIndex = 3 then
      	dData := DateAdd('QZ',1,dData)
    	else if rgPeriodicidade.ItemIndex = 4 then
      	dData := DateAdd('SM',1,dData)
    	else if rgPeriodicidade.ItemIndex = 5 then
      	dData := DateAdd('DD',1,dData);


    	Close;
      SQL.Text := 'Insert into OperacoesFinanceirasDet '+
      						'(OpDoc, Operacao, Vencimento, Valor, Favorecido, IDDoc) '+
                 	'values '+
                 	'(:OpDoc, :Operacao, :Vencimento, :Valor, :Favorecido, :IDDoc) ';
      ParamByName('OpDoc').AsInteger 			:= DMProjeto.NextIDGlobal;
      ParamByName('Operacao').AsInteger	 	:= Operacao;
      ParamByName('Vencimento').AsDateTime:= dData;
      ParamByName('Valor').AsCurrency			:= dfValor.Value;
      ParamByName('Favorecido').AsInteger	:= nParcela;
      ParamByName('IDDoc').AsInteger			:= Duplicata;
      ExecSQL;

    	inc(nContador);
    	inc(nParcela);

    	if nContador > dfQtde.Value then
      	break;

  	end;
  end;


  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  		DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  	result := true;

    try
      SendLastDataObject(Self.Name, 'DuplicatasAPagar', 'ID', Duplicata,
                           false );
    except
    end;

  except
	  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  		DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
  end;

end;

procedure TDlgAgendDespesasFixas.btGravarClick(Sender: TObject);
begin
  if not Validacoes(true) then
  	Exit;
  if Gravar then
  	Novo;
  dfForn.SetFocus;
end;

procedure TDlgAgendDespesasFixas.Novo;
begin
	dfForn.Text := '';
  dfValor.Value := 0;
  dfQtde.Text := '1';
  dfParcInicial.Text := '1';
  dfObs.Lines.Clear;
  dtData.Date := DMProjeto.dDataSistema;
	dfRefNo.Text := '';
  btComando2.Visible := false;
  C_ContasOperacao.EmptyDataSet;
end;

procedure TDlgAgendDespesasFixas.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
  dfForn.SetFocus;
end;

procedure TDlgAgendDespesasFixas.dfFornKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key = #13 then
  	showMessage(dfForn.Selecionados);
end;

procedure TDlgAgendDespesasFixas.DBContasOperacaoDescContaInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
  DlgPopup.SetTipo( 15 );
end;

procedure TDlgAgendDespesasFixas.FormActivate(Sender: TObject);
begin
  inherited;
	DBContasOperacaoDescConta.popupcontrol 	:= DlgPopup.pnPopup;
end;

procedure TDlgAgendDespesasFixas.btComando1Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CANDESPFIX' ) then
  	exit;
	with DMProjeto do begin
		SetParametrosForm([29,'Histórico de '+FormsComponent.Caption,false]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
    LimparParametrosForm;
  end;
end;

procedure TDlgAgendDespesasFixas.dfFornSelecionou(Sender: TObject);
begin
  inherited;
 	C_ContasOperacao.Edit;
 	C_ContasOperacaoConta.Value := DMProjeto.C_LocalizarFavContaDespesas.Value;
end;

procedure TDlgAgendDespesasFixas.dfValorChange(Sender: TObject);
begin
  inherited;
 	C_ContasOperacao.Edit;
 	C_ContasOperacaoValor.Value := dfValor.Value;
end;

procedure TDlgAgendDespesasFixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
end;

procedure TDlgAgendDespesasFixas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TDlgAgendDespesasFixas.dbContaAPagarInitPopup(Sender: TObject);
begin
  inherited;
{  dbContaAPagar.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
  DlgPopup.SetTipo( 8 );}
end;

procedure TDlgAgendDespesasFixas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Contas.Open;
  C_ContasOperacao.CreateDataSet;
	DlgPopup := TDlgPopupContas.Create(self, C_ContasDS, nil, true);
  dtData.Date := DMProjeto.dDataSistema;
  rgPeriodicidade.ItemIndex := 0;
  Novo;
end;

procedure TDlgAgendDespesasFixas.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
   lbObs.caption := 'Obs.:';
   DBContasOperacaoHistorico.caption := 'Obs.';
  end;
end;

end.
