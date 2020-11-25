{
-----------------------------------------------------------------------------------------------
TradeSoft Ltda
Nome do Autor..: Rosil/André
Data de Criação: 20/02/2001

- Historico de Alteracoes:

- Localização:

	No menu "Contas a Pagar", escolha "Cheques pendentes para Impressão".

- Tabelas Principais:

	RetiradasDoc e Contas.

- Objetivo:

	Imprimir os cheques pendentes de impressão, cancelar cheques e alterar o banco dos cheques.

- Funcionalidades:

	Pode selecionar vários cheques. Tanto para imprimir, cancelar e altera banco.
  Alterar o Vencimento, Memo e Nominal a...
  Para caso o pagamento for efetuado com pagamento rápido, pode alterar o valor.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

-----------------------------------------------------------------------------------------------
}

unit Dlg_ChequesPendentesImpressao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn,
  Mask, DBCtrls, IBCustomDataSet, IBQuery,
  TS_CheckBox, TS_DBEdit, TS_Label, IBUpdateSQL,
  Provider, DBClient, TS_DBText, TS_Shape, TS_LastDataObject,
  TS_Bevel, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, TS_LookupComboBox, Db, Menus,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_PopupEdit, Dlg_PopupContas, DM_Contabilidade,
  TS_PopupMenu, TS_DBLookupTipoFav, TS_RadioButton, TS_ButtonEdit,
  TS_EditFavorecido, Variants, BTOdeum, Placemnt;

type
  TDlgChequesPendentesImpressao = class(TFrmModeloCadastros)
    Q_Retiradas: TIBQuery;
    C_RetiradasDS: TDataSource;
    C_Retiradas: TClientDataSet;
    P_Retiradas: TDataSetProvider;
    C_RetiradasIDDOC: TIntegerField;
    C_RetiradasRETIRADA: TIntegerField;
    C_RetiradasDESCCONTA: TStringField;
    C_RetiradasNOME: TStringField;
    C_RetiradasHISTORICO: TStringField;
    C_RetiradasSTATUS: TIntegerField;
    C_RetiradasCONTA: TIntegerField;
    C_RetiradasCHEQUENOMINAL: TStringField;
    C_RetiradasVENCIMENTO: TDateField;
    TS_Panel2: TTS_Panel;
    TS_Label1: TTS_Label;
    U_RetiradasDoc: TIBUpdateSQL;
    C_RetiradasNUMCHEQUE: TIntegerField;
    C_RetiradasVALOR: TBCDField;
    C_RetiradasTIPORETIRADA: TIntegerField;
    DBCheques: TTS_QDBGrid;
    pnlSelecionados: TTS_Panel;
    Nome: TdxDBGridColumn;
    Valor: TdxDBGridColumn;
    Vencimento: TdxDBGridDateColumn;
    Historico: TdxDBGridColumn;
    ChequeNominal: TdxDBGridColumn;
    C_Retiradas_icSelecionado: TIntegerField;
    cmbConta: TTS_PopupEdit;
    DBChequesStatus: TdxDBGridColumn;
    C_RetiradasFAVORECIDO: TIntegerField;
    Imprimir1: TMenuItem;
    AlterarConta1: TMenuItem;
    N1: TMenuItem;
    Legenda1: TMenuItem;
    ppmGrid: TTS_PopupMenu;
    VisualizarBarradeTotalizacao: TMenuItem;
    rgImpressos: TTS_RadioButton;
    rgPendentes: TTS_RadioButton;
    NumCheque: TdxDBGridColumn;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_RetiradasDATA: TDateField;
    Data: TdxDBGridColumn;
    ReinserirComoPendente: TMenuItem;
    C_RetiradasTIPOFAVORECIDO: TIntegerField;
    procedure cmbContasClick(Sender: TObject);
    procedure DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VerCoresdosStatus1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure TS_DBLookupComboBox1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBChequesColEnter(Sender: TObject);
    procedure C_RetiradasBeforeClose(DataSet: TDataSet);
    procedure C_RetiradasHISTORICOChange(Sender: TField);
    procedure cmbContaChange(Sender: TObject);
    procedure DBChequesDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure VisualizarBarradeTotalizacaoClick(Sender: TObject);
    procedure rgPendentesClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure ReinserirComoPendenteClick(Sender: TObject);
    procedure ppmGridPopup(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
	protected
  	DlgPopup : TDlgPopupContas;
  private
    // Adriano
    DMContabil: TDMContabilidade;
    sCheques, sRetirada, sCristal : string;
    Conta : integer;
    procedure Pesquisar;
    procedure AtualizaDados;
  public
    { Public declarations }
  end;

var
  DlgChequesPendentesImpressao: TDlgChequesPendentesImpressao;

implementation

uses funcoes, DM_Projeto, Dlg_EmissaoCheques, Dlg_CoresStatus,
  DM_Financeiro;

{$R *.DFM}

procedure TDlgChequesPendentesImpressao.Pesquisar;
var
  sWhere : String;
begin
  if not DMFinanceiro.C_ContasBc.Active then
  	Exit;

  with C_Retiradas do begin
    Close;
  	CommandText := 	'Select r.Retirada, r.Data, ct.Descricao as DescConta, rd.NumCheque, rd.Valor, rd.IDDOC, '+
               			'rd.Vencimento, f.Nome, f.TipoFavorecido, rd.Obs as Historico, rd.Status, rd.Conta, '+
               			'rd.ChequeNominal, r.TipoRetirada, f.favorecido '+
               			'From   ((((Retiradas r INNER JOIN RetiradasDoc rd ON r.Retirada = rd.Retirada) '+
               			'LEFT  JOIN Favorecidos f ON f.Favorecido = rd.FavorecidoDoc) '+
               			'INNER JOIN Contas ct ON ct.Conta = rd.Conta) '+
       				 			'INNER JOIN FormasPagamento fp on rd.Formapagamento = fp.formapagamento) '+
               			'Where rd.Status IN (3,50) and fp.Especie = 1 and '+
                    iif(rgPendentes.Checked,'rd.NumCheque is null ','rd.NumCheque > 0 ');
  	if cmbConta.LookupKeyValue <> 0 then
  		CommandText := CommandText + ' and rd.Conta = '+IntToStr(cmbConta.LookupKeyValue);

  	if edFavorecido.ID <> 0 then begin
      if cmbTipoFav.LookupKeyValue <> 1 then
  			CommandText := CommandText + ' and rd.FavorecidoDoc = '+IntToStr(edFavorecido.ID)
      else
       	CommandText := CommandText +
        							 ' and (rd.FavorecidoDoc = '+IntToStr(edFavorecido.ID)+') '+
                       ' or (exists( select d.id from retiradasduplicatas rdd  '+
                       ' inner join duplicatasapagar d on d.id = rdd.duplicata '+
                       ' where rdd.retirada = rd.retirada and d.refcliente = '+IntToStr(edFavorecido.ID)+
                       ' )) ';
    end;

		CommandText := CommandText + ' Order by rd.NumCheque, rd.Vencimento ';
  	Open;
  end;
end;


procedure TDlgChequesPendentesImpressao.cmbContasClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
  NewFont.Color := DMProjeto.CorPadrao( C_RetiradasStatus.Value );
  if C_RetiradasStatus.Value = 70 then
    NewFont.Style := [fsStrikeout];
end;

procedure TDlgChequesPendentesImpressao.AtualizaDados;
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ALTDADOSCH' ) then
    	exit;
  with C_Retiradas do begin
    if State in [dsEdit] then
    	Post;
  	if ChangeCount > 0 then begin
  	 	ApplyUpdates(0);
  		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    end;
  end;
end;

procedure TDlgChequesPendentesImpressao.FormClose(Sender: TObject;
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
	DlgChequesPendentesImpressao := nil;
end;

procedure TDlgChequesPendentesImpressao.VerCoresdosStatus1Click(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Release;
end;

procedure TDlgChequesPendentesImpressao.btGravarClick(Sender: TObject);
var
  sCheque, sTipoFavorecidos : String;
  nControle : integer;
  bFuncionario : boolean;
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpCheque' ) then
    	exit;
	if (not C_Retiradas.Active) or (C_Retiradas.RecordCount=0) then
  	exit;

	AtualizaDados;

  if DBCheques.Selecionados = '' then
  		DBCheques.Selecionar;

  sTipoFavorecidos := DBCheques.Distinct('TipoFavorecido',true);
  if ContaStrings(sTipoFavorecidos,',') > 1 then
  	if pos('3',sTipoFavorecidos) > 0 then begin
    	if DlgMsg.ShowMsg(810) = 200 then
      	exit;
    end;

  bFuncionario := sTipoFavorecidos = '3';
  if DBCheques.Selecionados <> '' then begin
    dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
    dlgEmissaoCheques.Iniciar(DBCheques.Selecionados,C_RetiradasConta.AsString+' = '+IntToStr(ContaStrings(DBCheques.Selecionados,','))+' = '+DBCheques.Selecionados,'0',bFuncionario);
    if dlgEmissaoCheques.ShowModal = mrOk then begin
      try
        SendLastDataObject(Self.Name, 'Retiradas', 'IDDoc',C_RetiradasIDDoc.AsInteger, false );
      except
      end;
      // Pesquisar;
    end;

    dlgEmissaoCheques.Release;

  end;
end;

procedure TDlgChequesPendentesImpressao.TS_DBLookupComboBox1Click(
  Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.btLimparClick(Sender: TObject);
//var sSelecionados : string;
//		i : integer;
begin
  inherited;
{
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CANCHEQUE' ) then
   	exit;

  with DMProjeto do begin
  	sSelecionados	:= DBCheques.Selecionados;

  	if sSelecionados = '' then
  		sSelecionados := C_RetiradasIDDoc.AsString;

    if sSelecionados = '' then
    	exit;

		if DlgMsg.ShowMsg( 535, [DBCheques.QuantidadeSelecionada,formatfloat('###,###,##0.00',DBCheques.TotalSelecionado('Valor'))] ) = 200 then
  		Exit;

  	for i:=1 to ContaStrings(sSelecionados,',') do
  		DMFinanceiro.CancelarRetiradaDoc( StrToInt( SeparaStrings(sSelecionados,',',i)),'',true,true);
    try
      SendLastDataObject(Self.Name, 'RetiradasDoc', 'IDDoc',C_RetiradasIDDoc.AsInteger,
       									 false );
    except
    end;
  end;
  Pesquisar;
  }
end;

procedure TDlgChequesPendentesImpressao.DBChequesColEnter(Sender: TObject);
begin
  inherited;
	if UpperCase(DBCheques.FocusedField.FieldName) = 'VALOR' then
    if C_RetiradasTipoRetirada.Value <> 4 then
  		DBCheques.Columns[1].ReadOnly := true
  	else
  		DBCheques.Columns[1].ReadOnly := false;
end;

procedure TDlgChequesPendentesImpressao.C_RetiradasBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
	AtualizaDados;
end;

procedure TDlgChequesPendentesImpressao.C_RetiradasHISTORICOChange(
  Sender: TField);
begin
  inherited;
	with DMFinanceiro.Q_SQL do begin
  	close;
    SQL.Text := 'update Retiradas '+
          			'set Historico = :Historico ' +
                'where  Retirada = :retirada';
    ParamByName('Historico').AsString := C_RetiradasHistorico.AsString;
    ParamByName('Retirada').AsInteger := C_RetiradasRetirada.AsInteger;
    ExecSQL;
  end;
end;

procedure TDlgChequesPendentesImpressao.cmbContaChange(Sender: TObject);
begin
  inherited;
	Pesquisar; 
end;

procedure TDlgChequesPendentesImpressao.DBChequesDblClick(Sender: TObject);
begin
  inherited;
	if DBCheques.TS_SelectedColumn <> '_icSelecionado' then begin
  	with DMProjeto do begin
			SetParametrosForm([C_RetiradasRetirada.AsInteger]);
    	CriarForm(getTelaGeradora(C_RetiradasTipoRetirada.AsInteger),self,true);
      LimparParametrosForm;
  	end;
  end;
end;

procedure TDlgChequesPendentesImpressao.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
  if DMProjeto.ExisteParametrosForm then begin
    sCheques := DMPRojeto.getparametrosForm(0);
  	Conta := DMPRojeto.getparametrosForm(1);
  end else begin
    sCheques := '';
    Conta := DMFinanceiro.getContaBancoPadrao;
  end;
  DMFinanceiro.C_ContasBc.Open;
  DMFinanceiro.C_ContasBc.Locate('Conta',Conta,[]);
  cmbConta.LookupKeyValue := Conta;
  for i:=1 to ContaStrings(sCheques,',') do
  	if C_Retiradas.Locate('IDDoc',SeparaStrings(sCheques,',',i),[]) then
    	DBCheques.Selecionar;
end;

procedure TDlgChequesPendentesImpressao.FormsComponentRefresh(
  Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),UpperCase('Retiradas;RetiradasDoc;OperacoesFinanceiras'))>0 then
  	Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
	DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgChequesPendentesImpressao.FormActivate(Sender: TObject);
begin
  inherited;
	cmbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgChequesPendentesImpressao.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    Historico.caption := 'Obs.';
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgChequesPendentesImpressao.btComando2Click(Sender: TObject);
  var sSelecionados : string;
  nContaNova: integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltConta' ) then
    	exit;

	sSelecionados	:= DBCheques.Selecionados;
  if sSelecionados = '' then
  	sSelecionados := C_RetiradasIDDoc.AsString;

  if sSelecionados <> '' then begin
    try
      nContaNova := DMFinanceiro.AlterarContaCheques( Integer(cmbConta.LookupKeyValue), sSelecionados );
      if nContaNova > 0 then begin
        // Adriano
        DMContabil.ContabilizaAlterarContaCheques(0,Integer(cmbConta.LookupKeyValue),nContaNova,C_Retiradas);

        if not DMContabil.Salvar(0) then
          raise Exception.Create(DMProjeto.GetMsg(3117));
        ///////////////////////////

        try
          SendLastDataObject(Self.Name, 'RetiradasDoc', 'IDDoc',C_RetiradasIDDoc.AsInteger,
                           false );
        except
        end;
      end;
    except
      On e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DMProjeto.GeraLog('Alterar conta',e.message);
      end;
    end;
    Pesquisar;
  end;
end;

procedure TDlgChequesPendentesImpressao.VisualizarBarradeTotalizacaoClick(
  Sender: TObject);
begin
  inherited;
	VisualizarBarradeTotalizacao.Checked := not VisualizarBarradeTotalizacao.Checked;
  pnlSelecionados.Visible := VisualizarBarradeTotalizacao.Checked;
end;

procedure TDlgChequesPendentesImpressao.rgPendentesClick(Sender: TObject);
begin
  inherited;
	NumCheque.Visible := rgImpressos.Checked;
  Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.edFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.ReinserirComoPendenteClick(
  Sender: TObject);
var sSelecionados : string;
		i : integer;
begin
  inherited;
  if DBCheques.Selecionados = '' then
  	DBCheques.Selecionar;

  sSelecionados := DBCheques.FirstSelected;
  for i:=1 to ContaStrings(sSelecionados,',') do begin
    C_Retiradas.Edit;
		C_RetiradasNumCheque.AsVariant := null;
    C_Retiradas.Post;
    DBCheques.NextSelected;
  end;

	AtualizaDados;
  Pesquisar;
end;

procedure TDlgChequesPendentesImpressao.ppmGridPopup(Sender: TObject);
begin
  inherited;
	ReinserirComoPendente.Enabled := (rgImpressos.Checked) and (C_Retiradas.RecordCount>0);
end;

procedure TDlgChequesPendentesImpressao.edFavorecidoChange(
  Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
    Pesquisar;
end;

end.
