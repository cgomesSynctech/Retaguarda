{
-----------------------------------------------------------------------------------------------
- Tabelas Principais:

	Retiradas, RetiradasDoc, Contas.

- Objetivo:

	Esta tela tem vários objetivos, tais como:
  	-Compensar Cheques
    -Pesquisar Cheques
    -Emitir Relatório
    -Alterar Vencimento e o Nominal a
    -Cancelar Cheques
    -Alterar Banco.

- Funcionalidades:

	Ao Clicar,Alterar,Tecla Enter no Painel Superior (Filtro) já executa o pesquisar.
  Pode selecionar vários cheques de uma vez para efetuar a operação.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

-----------------------------------------------------------------------------------------------
}

unit Dlg_ChequesEmitidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, Db, DBTables,
  Mask, DBCtrls, IBCustomDataSet, IBQuery,
  TS_CheckBox, TS_DBEdit, TS_DBLookupComboBox, TS_Label, IBUpdateSQL,
  Provider, DBClient, TS_DBText, TS_Edit, 
  TS_DBLookupTipoFav, TS_LastDataObject, TS_Bevel, TS_EditFavorecido,
  TS_RadioButton, TS_Shape, dxDBELib, dxDBEdtr, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, dxCntner, FormsComponent, TS_Image,
  dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_LookupComboBox, Menus,
  teCtrls, TS_EffectsPanel, TS_PopupEdit, Dlg_PopupContas, TS_PopupMenu, DM_Contabilidade,
  BTOdeum, Placemnt;

type
  TDlgChequesEmitidos = class(TFrmModeloCadastros)
    Label6: TTS_Label;
    Panel1: TTS_Panel;
    Q_Retiradas: TIBQuery;
    C_RetiradasDS: TDataSource;
    C_Retiradas: TClientDataSet;
    P_Retiradas: TDataSetProvider;
    C_RetiradasVENCIMENTO: TDateField;
    U_Retiradas: TIBUpdateSQL;
    C_RetiradasIDDOC: TIntegerField;
    C_RetiradasRETIRADA: TIntegerField;
    C_RetiradasDESCCONTA: TStringField;
    C_RetiradasNUMCHEQUE: TIntegerField;
    C_RetiradasVALOR: TBCDField;
    C_RetiradasNOME: TStringField;
    C_RetiradasDESCSTATUS: TStringField;
    C_RetiradasHISTORICO: TStringField;
    C_RetiradasSTATUS: TIntegerField;
    C_RetiradasCONTA: TIntegerField;
    C_RetiradasCHEQUENOMINAL: TStringField;
    lbConta: TTS_Label;
    TS_Label1: TTS_Label;
    EdDias: TTS_Edit;
    cmbTipoFav: TTS_DBLookupTipoFav;
    TS_SpeedButton4: TTS_SpeedButton;
    ckbDias: TTS_CheckBox;
    rbCompensados: TTS_RadioButton;
    rbACompensar: TTS_RadioButton;
    rbCancelados: TTS_RadioButton;
    C_RetiradasVALORORIGINAL: TBCDField;
    C_RetiradasTIPORETIRADA: TIntegerField;
    edFavorecido: TTS_EditFavorecido;
    DBCheques: TTS_QDBGrid;
    Nome: TdxDBGridColumn;
    NumCheque: TdxDBGridColumn;
    Valor: TdxDBGridColumn;
    Vencimento: TdxDBGridDateColumn;
    DescStatus: TdxDBGridColumn;
    Memo: TdxDBGridColumn;
    ChequeNominal: TdxDBGridColumn;
    cmbConta: TTS_PopupEdit;
    C_Retiradas_icSelecionado: TIntegerField;
    DBChequesStatus: TdxDBGridColumn;
    DBChequesDataCompensacao: TdxDBGridColumn;
    C_RetiradasDATACOMPENSACAO: TDateField;
    C_RetiradasDATA: TDateField;
    DBChequesData: TdxDBGridColumn;
    C_RetiradasFAVORECIDO: TIntegerField;
    N1: TMenuItem;
    CompensarCheques: TMenuItem;
    Historico: TMenuItem;
    N3: TMenuItem;
    AlterarConta: TMenuItem;
    DBChequesColumn12: TdxDBGridColumn;
    C_RetiradasTIPOFAVORECIDO: TIntegerField;
    procedure Alterar1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure CompensarCheques1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VerCoresdosStatus1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure rbACompensarClick(Sender: TObject);
    procedure rbCompensadosClick(Sender: TObject);
    procedure AlteraraContadosCheques1Click(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdDiasChange(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure ckbDiasClick(Sender: TObject);
    procedure TS_SpeedButton4Click(Sender: TObject);
    procedure C_RetiradasNewRecord(DataSet: TDataSet);
    procedure DBChequesExit(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure C_RetiradasHISTORICOChange(Sender: TField);
    procedure DBChequesDblClick(Sender: TObject);
    procedure DBChequesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_RetiradasAfterScroll(DataSet: TDataSet);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AlterarConta1Click(Sender: TObject);
    procedure AlterarContaClick(Sender: TObject);
    procedure CompensarChequesClick(Sender: TObject);
    procedure ppmPadraoPopup(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure C_RetiradasAfterPost(DataSet: TDataSet);
	protected
  	DlgPopup : TDlgPopupContas;
  private
    // Adriano
    DMContabil: TDMContabilidade;
    sCheques, sRetirada : string;
    Status, Conta : integer;
    sMensagem : String;
    procedure AtualizaDados;
    procedure Pesquisar;
    procedure SetRadioButton( radio : TRadioButton );
  public
    { Public declarations }
  end;

var
  DlgChequesEmitidos: TDlgChequesEmitidos;

implementation

uses funcoes, DM_Projeto, Dlg_EmissaoCheques,
  Dlg_CoresStatus, Dlg_Data, DM_Financeiro;

{$R *.DFM}

procedure TDlgChequesEmitidos.AtualizaDados;
var nDuplicata : integer;
begin
  inherited;
  if not C_Retiradas.Active then
  	Exit;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ALTDADOSCH' ) then
  	Exit;
  if C_Retiradas.State in [dsEdit,dsInsert] then
     C_Retiradas.Post;

   {
   C_Retiradas.DisableControls;
   C_Retiradas.First;
   while not C_Retiradas.EOF do begin
   	if C_Retiradas.UpdateStatus = usModified then begin
   		with DMFinanceiro.Q_SQL do begin
      end;
    end;
    C_Retiradas.Next;
   end;
	 C_Retiradas.EnableControls;
   }

  if C_Retiradas.ChangeCount > 0 then
   	C_Retiradas.ApplyUpdates(0);

   if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

procedure TDlgChequesEmitidos.Pesquisar;
var
  sWhere, sValor : String;
begin
  if C_Retiradas.State in [dsEdit] then
  	C_Retiradas.Post;
  sRetirada := 'Select r.Data, r.Retirada, ct.Descricao as DescConta, rd.NumCheque, rd.Valor, rd.IDDOC, '+
               '       rd.Vencimento, f.Nome, sd.Descricao as DescStatus, r.Historico, rd.Status, rd.Conta, f.favorecido, f.tipofavorecido, '+
               '       rd.ChequeNominal, r.TipoRetirada, rd.Valor as ValorOriginal '+
               iif(rbCompensados.Checked,', (select max(data) from OperacoesDoc where iddoc = rd.iddoc and tipooperacao = 12) as DataCompensacao ',', r.data as DataCompensacao ')+
               'From   (((Retiradas r INNER JOIN RetiradasDoc rd ON r.Retirada = rd.Retirada) '+
               '       LEFT  JOIN Favorecidos f ON f.Favorecido = rd.FavorecidoDoc) '+
               '       INNER JOIN Contas ct ON ct.Conta = rd.Conta) '+
               '       INNER JOIN StatusDoc sd ON sd.Status = rd.Status '+
               '       INNER JOIN FormasPagamento fp ON fp.FormaPagamento = rd.FormaPagamento '+
               'Where fp.Especie = 1 ';
  sWhere := '';
  if ckbDias.Checked then
  	sWhere := ' and rd.Vencimento >= '''+formatdatetime('mm/dd/yyyy',(DMProjeto.dDataSistema-StrToIntDef(EdDias.Text,0)))+'''';
	if sCheques <> '' then
  	sWhere := sWhere + ' and rd.iddoc in ('+sCheques+')';
  if cmbConta.LookUpKeyValue <> 0 then
    sWhere := sWhere + ' and rd.Conta = '+IntToStr(cmbConta.LookUpKeyValue);
  if edFavorecido.ID <> 0 then
    sWhere := sWhere + ' and rd.FavorecidoDoc = '+IntToStr(edFavorecido.ID);
  if rbACompensar.Checked then
  	sWhere := sWhere + ' and rd.Status = 3 '
  else if rbCompensados.Checked then
  	sWhere := sWhere + ' and rd.Status = 50 '
  else
  	sWhere := sWhere + ' and rd.Status = 70 ';
	DBChequesDataCompensacao.Visible := rbCompensados.Checked;
  C_Retiradas.Close;
  C_Retiradas.CommandText := sRetirada + sWhere + ' order by rd.Vencimento ';
  C_Retiradas.Open;

	with DBCheques do begin
    TS_ReportTitle := 'Cheques Pagos';
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(iif(rbACompensar.Checked,rbACompensar.Caption,iif(rbCompensados.Checked,rbCompensados.Caption,rbCancelados.Caption)));
    if cmbConta.Text <> '' then
    	TS_ReportFilter.Add(lbConta.Caption+' '+cmbConta.Text);
    if (edFavorecido.ID <> 0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    if ckbDias.Checked then
    	TS_ReportFilter.Add('Cheques de até '+edDias.Text+' dias atrás.');
  end;

end;

procedure TDlgChequesEmitidos.SetRadioButton( radio : TRadioButton );
var i : integer;
begin
	for i:=0 to Panel1.ControlCount-1 do
  	if (Panel1.Controls[i] is TRadioButton) and (Panel1.Controls[i].Name <> radio.Name) then
    	TRadioButton(Panel1.Controls[i]).Checked := false;
  Pesquisar;
end;

procedure TDlgChequesEmitidos.Alterar1Click(Sender: TObject);
var
  Nome: String;
  ID : Integer;
begin
  if (not C_Retiradas.Active) or (C_Retiradas.RecordCount<=0) then
  	Exit;

  if C_RetiradasStatus.Value >= 50 then begin
    // ShowMessage('Só é possível alterar o vencimento de Retiradas que não foram Compensados!');
    DlgMsg.ShowMsg( 371 );
    exit;
  end;

  if DBCheques.Selecionados = '' then
    DBCheques.SelecionarLinha;

  with DMProjeto.Q_SQL do begin
    ID := C_RetiradasIDDoc.Value;

    Nome := Inputbox(DMProjeto.getMsg(372),DmProjeto.getMsg(373)+':', C_RetiradasChequeNominal.Value);

    Close;
    SQL.Text := 'Update RetiradasDoc set ChequeNominal = :N where IDDoc = :ID ';
    ParamByName('N').asString   := Nome;
    ParamByName('ID').asInteger := ID;
    ExecSQL;

    //ShowMessage('Destinatário alterado com sucesso!');
    DlgMsg.ShowMsg( 374 );

    btPesquisarClick(Self);

    C_Retiradas.Locate('IDDoc', ID, []);

  end;
end;

procedure TDlgChequesEmitidos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TDlgChequesEmitidos.btPesquisarClick(Sender: TObject);
begin
  ActiveControl := nil;
  Pesquisar;
end;

procedure TDlgChequesEmitidos.CompensarCheques1Click(Sender: TObject);
var
  sCheques : String;
  i : integer;
  dtData : TDateTime;
begin
	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'COMPCHEQUE' ) then
   	exit;

  if (not C_Retiradas.Active) or (C_Retiradas.RecordCount<=0) then
  	Exit;

  sCheques := DBCheques.Selecionados;

  if sCheques = '' then begin
  	DBCheques.Selecionar;
    sCheques := DBCheques.Selecionados;
  end;

  for i:=1 to ContaStrings(sCheques,',') do begin
    C_Retiradas.Locate('IDDoc',SeparaStrings(sCheques,',',i),[]);
    if C_RetiradasNumCheque.AsInteger = 0 then begin
    	DlgMsg.ShowMsg(573);
      exit;
    end;
  end;

  DlgData := TDlgData.Create(self);
  DlgData.Data := DMProjeto.dDataSistema;
  if DlgData.ShowModal = mrOk then begin
    dtData := DlgData.Data;
    DlgData.Release;
  end else begin
    DlgData.Release;
   	Exit;
  end;

  try

  	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                                                                      // Total Selecionado
  	AtualizaDados;
  	DMFinanceiro.CompensarCheques( Integer(cmbConta.LookUpKeyValue), sCheques, DBCheques.TotalSelecionado('Valor'), dtData );

  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  		DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    try
      SendLastDataObject(Self.Name, 'Retiradas', 'IDDoc',C_RetiradasIDDoc.AsInteger, false );
    except
    end;
  except
  	on E:Exception do begin
    	DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    	DlgMsg.ShowMsg( 255, e.message, '' );
    end;
  end;
  // Pesquisar;

end;

procedure TDlgChequesEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AtualizaDados;
  inherited;
  DlgPopup.Free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
	DlgChequesEmitidos := nil;
end;

procedure TDlgChequesEmitidos.VerCoresdosStatus1Click(Sender: TObject);
begin
  inherited;
  DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Release;
end;

procedure TDlgChequesEmitidos.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key = #13 then
  	Pesquisar;
end;

procedure TDlgChequesEmitidos.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgChequesEmitidos.rbACompensarClick(Sender: TObject);
begin
  inherited;
	SetRadioButton(TRadioButton(Sender));
  btGravar.Enabled := not rbCompensados.Checked;
end;

procedure TDlgChequesEmitidos.rbCompensadosClick(Sender: TObject);
begin
  inherited;
  SetRadioButton(TRadioButton(Sender));
  btGravar.Enabled := false;
end;

procedure TDlgChequesEmitidos.AlteraraContadosCheques1Click(
  Sender: TObject);
var sSelecionados, sRetiradas : string;
    nContaNova: integer;
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltConta' ) then
  	Exit;
  if (not C_Retiradas.Active) or (C_Retiradas.RecordCount<=0) then
  	Exit;

  AtualizaDados;

  try

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

	sSelecionados	:= DBCheques.Selecionados;
  if sSelecionados = '' then begin
  	DBCheques.Selecionar;
    sSelecionados	:= DBCheques.Selecionados;
  end;
//  	sSelecionados := C_RetiradasIDDoc.AsString;

  nContaNova := DMFinanceiro.AlterarContaCheques( Integer(cmbConta.LookupKeyValue), sSelecionados );
  if nContaNova > 0 then begin
    // Adriano
    DMContabil.ContabilizaAlterarContaCheques(0,Integer(cmbConta.LookupKeyValue),nContaNova,C_Retiradas);

    if not DMContabil.Salvar(0) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////
    try
      SendLastDataObject(Self.Name, 'Retiradas', 'IDDoc',C_RetiradasIDDoc.AsInteger,
                           false );
    except
    end;
  	// Pesquisar;
  end;

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  except
    on E : Exception do begin
  		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  			DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    	DlgMsg.ShowMsg(1, e.Message, '');
    end;
  end;
end;

procedure TDlgChequesEmitidos.TS_SpeedButton3Click(Sender: TObject);
var
		i : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CANCHEQUES' ) then
    	exit;
  if (not C_Retiradas.Active) or (C_Retiradas.RecordCount<=0) then
  	Exit;
  with DMProjeto do begin
  	if DBCheques.Selecionados = '' then
  		DBCheques.Selecionar;                                                              // Total Selecionado
		if DlgMsg.ShowMsg( 535,[DBCheques.QuantidadeSelecionada,formatfloat('###,###,##0.00',DBCheques.TotalSelecionado('Valor'))]) = 200 then
  		Exit;
  	for i:=1 to ContaStrings(DBCheques.Selecionados,',') do
  		DMFinanceiro.CancelarRetiradaDoc( StrToInt( SeparaStrings(DBCheques.Selecionados,',',i)),'',true,true);
  end;
  try
     SendLastDataObject(Self.Name, 'RetiradasDoc', 'IDDoc',C_RetiradasIDDoc.AsInteger,
      									 false );
  except
  end;

  Pesquisar;
end;

procedure TDlgChequesEmitidos.TS_SpeedButton1Click(Sender: TObject);
var
		i : integer;
begin
  inherited;
  if (not C_Retiradas.Active) or (C_Retiradas.RecordCount<=0) then
  	Exit;

  with DMProjeto do begin

  	if DBCheques.Selecionados = '' then
  		DBCheques.Selecionar;                                                              // Total Sel
		if DlgMsg.ShowMsg( 580, [DBCheques.QuantidadeSelecionada,formatfloat('#,###,##0.00', DBCheques.TotalSelecionado('Valor') )]) = 200 then
  		Exit;

 		DMFinanceiro.ApagarRetiradaDoc( DBCheques.Selecionados );
  end;

  Pesquisar;
end;

procedure TDlgChequesEmitidos.edFavorecidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key = #13 then
  	Pesquisar;
end;

procedure TDlgChequesEmitidos.EdDiasChange(Sender: TObject);
begin
  inherited;
  if (ckbDias.Checked) and (EdDias.Text <> '') then
  	Pesquisar;
end;

procedure TDlgChequesEmitidos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
    Pesquisar;
end;

procedure TDlgChequesEmitidos.ckbDiasClick(Sender: TObject);
begin
  inherited;
 	Pesquisar;
end;

procedure TDlgChequesEmitidos.TS_SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HistCompen' ) then
    	exit;

	with DMProjeto do begin
		SetParametrosForm([12,'Histórico de Compensação de Cheques',false]);
    if CriarForm('DlgHistoricoOperacoes',self,true) = 3 then begin
			try
      	SendLastDataObject(Self.Name, 'RetiradasDoc', 'IDDoc',C_RetiradasIDDoc.AsInteger,
                           false );
    	except
    	end;
    	Pesquisar;
    end;
		LimparParametrosForm;    
  end;
end;

procedure TDlgChequesEmitidos.C_RetiradasNewRecord(DataSet: TDataSet);
begin
  inherited;
	Abort;
end;

procedure TDlgChequesEmitidos.DBChequesExit(Sender: TObject);
begin
  inherited;
  if C_Retiradas.State in [dsEdit] then
  	C_Retiradas.Post;
end;

procedure TDlgChequesEmitidos.cmbContaChange(Sender: TObject);
begin
  inherited;
	AtualizaDados;
	Pesquisar;
end;

procedure TDlgChequesEmitidos.C_RetiradasHISTORICOChange(Sender: TField);
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

procedure TDlgChequesEmitidos.DBChequesDblClick(Sender: TObject);
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

procedure TDlgChequesEmitidos.DBChequesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
	if not Anode.HasChildren then begin
  	AFont.Color := DMProjeto.CorPadrao( DBCheques.GetFieldValue( ANode, 'Status', 0) );
  	if DBCheques.GetFieldValue( ANode, 'Status', 0) = 70 then
    	AFont.Style := [fsStrikeout];
  end;
end;

procedure TDlgChequesEmitidos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
  DMFinanceiro.C_ContasBc.Open;
  if DMProjeto.ExisteParametrosForm then begin
    cmbConta.LookUpKeyValue := DMProjeto.getparametrosForm(2);
    if (DMProjeto.QtdParametrosForm>3) and (DMProjeto.getparametrosForm(3) = 'C') then
    	rbCompensados.Checked := true;
    if C_Retiradas.Locate('iddoc',DMProjeto.getparametrosForm(1),[]) then
    	DBCheques.Selecionar;
  end else begin
    sCheques 	:= '';
    Conta 		:= DMFinanceiro.getContaBancoPadrao;
    DMProjeto.getparametrosForm(2);
  	if Conta <> 0 then
  		cmbConta.LookUpKeyValue := Conta
  	else
  		cmbConta.LookUpKeyValue := DMFinanceiro.C_ContasBcConta.Value;
  end;
end;

procedure TDlgChequesEmitidos.C_RetiradasAfterScroll(DataSet: TDataSet);
begin
  inherited;
	btLimpar.Enabled := rbACompensar.Checked;
//  btComando1.Enabled := rbACompensar.Checked;
//  btComando2.Enabled := rbACompensar.Checked;
end;

procedure TDlgChequesEmitidos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'RETIRADAS;RETIRADASDOC;OPERACOESFINANCEIRAS')>0 then
  	Pesquisar
  else if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TDlgChequesEmitidos.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TDlgChequesEmitidos.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    Memo.caption := 'Obs.';
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgChequesEmitidos.AlterarConta1Click(Sender: TObject);
begin
  inherited;
	btLimpar.Click;
end;

procedure TDlgChequesEmitidos.AlterarContaClick(Sender: TObject);
begin
  inherited;
	btLimpar.Click;
end;

procedure TDlgChequesEmitidos.CompensarChequesClick(Sender: TObject);
begin
  inherited;
	btGravar.Click;
end;

procedure TDlgChequesEmitidos.ppmPadraoPopup(Sender: TObject);
begin
  inherited;
	CompensarCheques.Enabled := btGravar.Enabled;
  Historico.Enabled 			 := TS_SpeedButton4.Enabled;
  AlterarConta.Enabled 		 := btLimpar.Enabled;
end;

procedure TDlgChequesEmitidos.btComando2Click(Sender: TObject);
var
  sCheque, sTipoFavorecidos : String;
  nControle : integer;
  bFuncionario : boolean;
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpCheque' ) then
    	exit;
	if (not C_Retiradas.Active) or (C_Retiradas.RecordCount=0) then
  	exit;

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

procedure TDlgChequesEmitidos.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgChequesEmitidos.C_RetiradasAfterPost(DataSet: TDataSet);
begin
  inherited;
   with DMFinanceiro.Q_SQL do begin
  		close;
   		sql.text := 'update transacoes set numcheque = :numcheque ' +
               		'where iddoc = :iddoc';
      parambyname('numcheque').asInteger := C_RetiradasNumCheque.AsInteger;
      parambyname('iddoc').asInteger 		 := C_RetiradasIDDoc.AsInteger;
      execsql;
   end;
end;

end.
