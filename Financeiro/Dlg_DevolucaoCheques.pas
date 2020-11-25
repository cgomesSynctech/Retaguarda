{
TradeSoft Ltda
Autor: Rosil
Data de Criação:

- Historico de Alteracoes:

	05/01/2001	- André	-	Mudança de Classe/Interbase/MultiIdioma.

- Localização: 

	No menu "Contas a Receber" escolha "Devolução/Acertos de Cheques"

- Tabelas Principais:

	DepositosDoc, Depositos, Transacoes.

- Objetivo: 

	Marcar o cheque como Devolvido.
	Imprimir a Carta de Cobrança.
	Resgatar Cheques do Banco.
	Acertar o Cheque com o Cliente.

- Funcionalidades: 

	Devolução de Cheques: Selecione o Cheque e clique no botão "Devolução". Com isso, o status
	do documento será 4 (devolução). Se "Resgatar do Banco" esteja selecionado, o local do 
	cheque ficará como "Caixa Principal".
	
	Resgatar Cheque: Caso o cheque já esteja na Empresa. Clique para o local do cheque fique
	"Caixa Principal".

	Acertar Cheque : Coloca o status do Cheque devolvido como cancelado e insere um novo docu
	mento (DepositosDoc) com o valor acordado. Atualiza Titulos A Receber (DataPag, ValorPago)
	Atualiza Transacoes.

	Carta Cobrança: Emissão da Cartão apenas quando o Status do Cheque está Devolvido.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Atenção na rotina de "Acertar Cheques", pois faz diversas operações:
		-> Coloca Documento como Cancelado (DepositosDoc -> Status=70)
		-> Estorna o Cheque em Transações Debitando o Crédito anteriormente.
		-> Insere em DepositosDoc o novo pagamento.
		-> Insere em Transações o novo pagamento.
		-> Atualiza Titulos A Receber (Valor,DataPag,ValorPago)
		-> Atualiza Depositos (Valor)
		-> Atualiza DepositosTitulos

-----------------------------------------------------------------------------------------------
}
unit Dlg_DevolucaoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, Db, DBTables,
  IBCustomDataSet, IBQuery, TS_Shape,
  TS_DBLookupComboBox, TS_Label, DBClient, Provider, TS_DBText,
  TS_Edit, TS_DBLookupTipoFav, TS_LastDataObject,
  TS_Bevel, TS_MaxPanel, TS_CheckBox, TS_EditFavorecido, dxExEdtr, dxEdLib,
  dxDBELib, TS_ButtonEdit, dxCntner, dxEditor, dxDBEdtr, FormsComponent,
  TS_Image, dxfLabel, TS_LookupComboBox, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, Menus, teCtrls, TS_EffectsPanel,
  TS_PopupEdit, Dlg_PopupContas, TS_PopupMenu, IBUpdateSQL, BTOdeum,
  Placemnt;

type
  TDlgDevolucaoCheques = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    Label11: TTS_Label;
    Q_Cheques: TIBQuery;
    C_ChequesDS: TDataSource;
    Q_ChequesProvider: TDataSetProvider;
    C_Cheques: TClientDataSet;
    C_ChequesIDDOC: TIntegerField;
    C_ChequesDEPOSITO: TIntegerField;
    C_ChequesFORMAPAGAMENTO: TIntegerField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesSTATUS: TIntegerField;
    C_ChequesLOCALTITULO: TStringField;
    C_ChequesFORADAEMPRESA: TStringField;
    C_ChequesTITULARCHEQUE: TStringField;
    C_ChequesAVISTA: TStringField;
    C_ChequesCONTAATUAL: TIntegerField;
    C_ChequesNOME: TStringField;
    cmbTipoFav: TTS_DBLookupTipoFav;
    C_ChequesVALOR: TBCDField;
    C_ChequesBANCO: TIntegerField;
    C_ChequesNUMCHEQUE: TIntegerField;
    TS_Label1: TTS_Label;
    C_ChequesDESCSTATUS: TStringField;
    ckbDevolvido: TTS_CheckBox;
    C_ChequesFAVORECIDO: TIntegerField;
    C_ChequesENDERECO: TStringField;
    C_ChequesCIDADE: TStringField;
    C_ChequesUF: TStringField;
    C_ChequesFONE1: TStringField;
    C_ChequesNOMECONTA: TStringField;
    C_ChequesNOMEBANCO: TStringField;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_SpeedButton4: TTS_SpeedButton;
    TS_SpeedButton5: TTS_SpeedButton;
    edFavorecido: TTS_EditFavorecido;
    dbBanco: TTS_LookupComboBox;
    cmbConta: TTS_PopupEdit;
    DBCheques: TTS_QDBGrid;
    pnlFooter: TTS_Panel;
    DBChequesNome: TdxDBGridColumn;
    DBChequesVencimento: TdxDBGridColumn;
    DBChequesValor: TdxDBGridColumn;
    DBChequesNumCheque: TdxDBGridColumn;
    DBChequesNomeBanco: TdxDBGridColumn;
    DBChequesDescStatus: TdxDBGridColumn;
    C_Cheques_icSelecionado: TIntegerField;
    DBChequesFavorecido: TdxDBGridColumn;
    DBChequesIDDoc: TdxDBGridColumn;
    DBChequesContaAtual: TdxDBGridColumn;
    DBChequesDeposito: TdxDBGridColumn;
    DBChequesStatus: TdxDBGridColumn;
    Legenda1: TMenuItem;
    U_Cheques: TIBUpdateSQL;
    C_ChequesTIPODEPOSITO: TIntegerField;
    DBChequesNomeConta: TdxDBGridColumn;
    N1: TMenuItem;
    ppmDevolver: TMenuItem;
    ppmAcertar: TMenuItem;
    ppmCarta: TMenuItem;
    TS_Bevel2: TTS_Bevel;
    procedure DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure btGravarClick(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SignificadodasCores1Click(Sender: TObject);
    procedure cmbTipoFavClick(Sender: TObject);
    procedure C_ChequesAfterScroll(DataSet: TDataSet);
    procedure ppVariavelDataCalc(Sender: TObject; var Value: Variant);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton4Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure TS_SpeedButton5Click(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure dbBancoChange(Sender: TObject);
    procedure DBChequesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure DBChequesDblClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure ckbDevolvidoChange(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
	protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
    sWhere : string;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgDevolucaoCheques: TDlgDevolucaoCheques;

implementation

uses DM_Projeto, funcoes,
  Dlg_CoresStatus, Dlg_Campos, DM_Financeiro;

{$R *.DFM}

procedure TDlgDevolucaoCheques.Pesquisar;
begin
  sWhere := '';
  With C_Cheques do Begin
	  if State in [dsEdit,dsInsert] then
  	 	Post;

    if ChangeCount > 0 then
    	ApplyUpdates(0);
    Close;
    CommandText := 'Select dd.*, d.TipoDeposito, d.Favorecido, f.Nome, s.Descricao as DescStatus, f.Endereco, f.Cidade, f.Uf, f.Fone1, c.Descricao as NomeConta, b.nome as NomeBanco '+
            			 'From DepositosDoc dd inner join Depositos d on dd.Deposito = d.Deposito '+
                   '     left join Favorecidos f on d.Favorecido = f.Favorecido '+
                   '     left join Favorecidos b on dd.Banco = b.Favorecido '+
                   '     inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento '+
                   '     inner join StatusDoc s on dd.Status = s.Status '+
                   '     inner join Contas c on dd.ContaAtual = c.Conta '+
            			 'Where '+
            			 'fp.Especie = 1 '+
                   'and (dd.Status in (3,4,50)) ';
    if cmbConta.lookupkeyvalue <> 0 then
      CommandText := CommandText + ' and dd.ContaAtual = '+IntToStr(cmbConta.lookupkeyvalue);
    if dbBanco.Text <> '' then
			CommandText := CommandText + ' and dd.Banco = '+DMFinanceiro.C_BancosFavorecido.AsString;
    if edFavorecido.getID <> 0 then
      CommandText := CommandText + ' and d.Favorecido = '+IntToStr(edFavorecido.getID);
    if ckbDevolvido.Checked then
    	CommandText := CommandText + ' and dd.Status = 4 ';

    CommandText := CommandText + ' order by d.data desc';
    Open;
  end;
end;

procedure TDlgDevolucaoCheques.DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
    NewFont.Color := DMProjeto.CorPadrao( C_ChequesStatus.Value );
    if C_ChequesStatus.Value = 70 then
      NewFont.Style := [fsStrikeout];
end;

procedure TDlgDevolucaoCheques.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'DevCheque' ) then
   		exit;
  if not (C_ChequesStatus.Value in [3,50]) then begin
    // ShowMessage('Para marcar um cheque como devolvido é preciso que ele tenha sido depositado!');
    DlgMsg.ShowMsg( 263 );
    exit;
  end;

  if ContaStrings(DBCheques.Selecionados,',') > 1 then begin
  	DlgMsg.ShowMsg( 483 );
    Exit;
  end;

  if DBCheques.Selecionados <> '' then
    DBCheques.FirstSelected
  else
  	DBCheques.Selecionar;

  with DMProjeto do begin
  	SetParametrosForm([DBCheques.ItensSelecionados]);
  	if CriarForm('DlgMarcarDevolvido',self,true) = mrOk then begin
    	try
      	SendLastDataObject(Self.Name, 'Depositos', 'IDDoc', C_ChequesIDDoc.AsInteger, false );
    	except
    	end;
			Pesquisar;
    end;
    LimparParametrosForm;
  end;
end;

procedure TDlgDevolucaoCheques.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
(*
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ACERCHEQUE' ) then
 		exit;

  if DBCheques.Selecionados <> '' then begin
    if DBCheques.QuantidadeSelecionada <> 1 then begin
    	// ShowMessage('Para acertar o cheque apenas 1 cheque deve ser selecionado por vez.');
       DlgMsg.ShowMsg( 269 );
       Exit;
    end;
  	DBCheques.FirstSelected;
  end else
  	DBCheques.Selecionar;

  with DMProjeto do begin
		SetParametrosForm([DBCheques.Selecionados]);
  	CriarForm('DlgAcertarCheque',self,true);
    LimparParametrosForm;
  end;
*)
end;

procedure TDlgDevolucaoCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if C_Cheques.State in [dsEdit,dsInsert] then
   	C_Cheques.Post;

  if C_Cheques.ChangeCount > 0 then
   	C_Cheques.ApplyUpdates(0);
  inherited;
  DlgPopup.free;
  DlgDevolucaoCheques := nil;
end;

procedure TDlgDevolucaoCheques.SignificadodasCores1Click(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Free;
end;

procedure TDlgDevolucaoCheques.cmbTipoFavClick(Sender: TObject);
begin
  inherited;
	edFavorecido.SetFocus;
end;

procedure TDlgDevolucaoCheques.C_ChequesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btGravar.Enabled			   	:= (C_ChequesStatus.Value<>4) and (C_ChequesForadaEmpresa.Value='S');
//  btComando2.Enabled	 			:= C_ChequesStatus.Value=4;
  TS_SpeedButton2.Enabled	 	:= C_ChequesStatus.Value=4;
  ppmDevolver.Enabled				:= btGravar.Enabled;
//  ppmAcertar.Enabled				:= btComando2.Enabled;
  ppmCarta.Enabled					:= C_ChequesStatus.Value=4;
end;

procedure TDlgDevolucaoCheques.ppVariavelDataCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := DMProjeto.dDataSistema;
end;

procedure TDlgDevolucaoCheques.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
{  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HistAcerto' ) then
  	exit;

	with DMProjeto do begin
		SetParametrosForm([10,'Histórico de Acertos de Cheques Devolvidos',false]);
    if CriarForm('DlgHistoricoOperacoes',self,true) = 3 then
      Pesquisar;
    LimparParametrosForm;
  end;}
end;

procedure TDlgDevolucaoCheques.TS_SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HistDev' ) then
   		exit;
	with DMProjeto do begin
		SetParametrosForm([9,'Histórico de Devoluções de Cheques',false]);
    if CriarForm('DlgHistoricoOperacoes',self,true) = 3 then
    	Pesquisar;
    LimparParametrosForm;
  end;
end;

procedure TDlgDevolucaoCheques.TS_SpeedButton2Click(Sender: TObject);
var Total, Despesas : single;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CartaCob' ) then
  	exit;
  if DBCheques.Selecionados = '' then
  	DBCheques.Selecionar;
  DlgCampos := TDlgCampos.Create(self);
  //Despesas := DMFinanceiro.getDespesasDev(C_ChequesDeposito.value);
  //Total    := C_ChequesValor.Value + Despesas;
  DlgCampos.Imprimir( 20,'','',':IDDoc='+DBCheques.Selecionados,'');
  DlgCampos.Free;
end;

procedure TDlgDevolucaoCheques.TS_SpeedButton5Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
		SetParametrosForm([14,'Histórico de Resgate de Cheques',false]);
    if CriarForm('DlgHistoricoOperacoes',self,true) = 3 then
    	Pesquisar;
    LimparParametrosForm;
  end;
end;

procedure TDlgDevolucaoCheques.cmbContaChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgDevolucaoCheques.dbBancoChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgDevolucaoCheques.DBChequesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
	if not ANode.HasChildren then begin
  	AFont.Color := DMProjeto.CorPadrao( DBCheques.GetFieldValue( ANode, 'Status', 0) );
  	if DBCheques.GetFieldValue( ANode, 'Status', 0) = 70 then
    	AFont.Style := [fsStrikeout];
  end;
end;

procedure TDlgDevolucaoCheques.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;DEPOSITOSDOC;OPERACOESFINANCEIRAS')>0 then
  	Pesquisar
  else if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TDlgDevolucaoCheques.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
	DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgDevolucaoCheques.FormActivate(Sender: TObject);
begin
  inherited;
	cmbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgDevolucaoCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
  DMFinanceiro.C_Bancos.Open;
  DMFinanceiro.C_ContasCxBc.Open;

  dbBanco.OnChange := nil;
  cmbConta.OnChange := nil;
  ckbDevolvido.OnChange := nil;

  if DMProjeto.ExisteParametrosForm then begin
    with DMProjeto do begin
      cmbConta.LookupKeyValue := 1; // Caixa principal
      ckbDevolvido.Checked := True;
      edFavorecido.ID := GetParametrosForm(0);
    end;
  end else begin
    edFavorecido.ID := 0;
    cmbConta.LookUpKeyValue := DMFinanceiro.getContaBancoPadrao;
    Pesquisar;
  end;

  dbBanco.OnChange := dbBancoChange;
  cmbConta.OnChange := cmbContaChange;
  ckbDevolvido.OnChange := ckbDevolvidoChange;
end;

procedure TDlgDevolucaoCheques.DBChequesDblClick(Sender: TObject);
begin
  inherited;
	if DBCheques.TS_SelectedColumn <> '_icSelecionado' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ChequesDeposito.Value]);
    	CriarForm(getTelaGeradora(C_ChequesTipoDeposito.value),self,true);
      LimparParametrosForm;
  	end;
  end;
end;

procedure TDlgDevolucaoCheques.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgDevolucaoCheques.ckbDevolvidoChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgDevolucaoCheques.btLimparClick(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('DlgCadastroCheques',self,true);
  Pesquisar;
end;

end.
