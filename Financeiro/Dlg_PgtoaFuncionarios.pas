unit Dlg_PgtoaFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, ComCtrls, TS_PageControl, RXSplit, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib, TS_CheckBox,
  dxDBELib, TS_DBEditDate, DBText, TS_DBTextEffect, TS_DBButtonEdit,
  TS_DBEditFavorecido, dxEditor, TS_DBEditNumber, dxCntner, TS_DBEdit,
  DBCtrls, TS_DBText, TS_Shape, TS_DBPopupEdit, TS_DBMemo, Db, Provider,
  IBCustomDataSet, IBQuery, DBClient, TS_PopupEdit, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, TS_LookupComboBox,
  TS_CalcEdit, Dlg_PopupContas, ImgList, TS_ComboBox, dxDBEdtr,
  DM_Contabilidade, Variants, BTOdeum, Placemnt, TS_ButtonEdit,
  TS_EditPayroll;

type
  TDlgPgtoAFuncionarios = class(TFrmModeloCadastros)
    pnInferior: TTS_Panel;
    pnSuperior: TTS_Panel;
    RxSplitter1: TRxSplitter;
    pgFuncionarios: TTS_PageControl;
    tsIndividual: TTS_TabSheet;
    tsColetivo: TTS_TabSheet;
    pnCheque: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Label2: TTS_Label;
    dfFuncionario: TTS_DBEditFavorecido;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dfData: TTS_DBEditDate;
    dfValor: TTS_DBEditNumber;
    TS_Label1: TTS_Label;
    dbtExtenso: TTS_DBText;
    lbMoeda: TTS_Label;
    TS_Shape4: TTS_Shape;
    TS_Label6: TTS_Label;
    dfMemo: TTS_DBMemo;
    TS_Label7: TTS_Label;
    dfNominal: TTS_DBEdit;
    lbNumCheque: TTS_Label;
    DF_Foto: TdxGraphicEdit;
    dfNumCheque: TTS_DBEdit;
    C_APagar: TClientDataSet;
    Q_APagar: TIBQuery;
    P_APagar: TDataSetProvider;
    C_APagarDS: TDataSource;
    C_APagarID: TIntegerField;
    C_APagarVALOR: TBCDField;
    C_APagarFORNECEDOR: TIntegerField;
    C_APagarNOME: TStringField;
    C_APagarNOMINAL: TStringField;
    C_APagarExtenso: TStringField;
    C_APagarLOGOTIPO: TStringField;
    DBFuncionarios: TTS_QDBGrid;
    pnTotal: TTS_Panel;
    C_APagarVENCIMENTO: TDateField;
    C_APagarDATA: TDateField;
    DBFuncionariosID: TdxDBGridMaskColumn;
    DBFuncionariosVALOR: TdxDBGridMaskColumn;
    DBFuncionariosFORNECEDOR: TdxDBGridMaskColumn;
    DBFuncionariosNOME: TdxDBGridMaskColumn;
    DBFuncionariosNOMINAL: TdxDBGridMaskColumn;
    DBFuncionariosExtenso: TdxDBGridColumn;
    DBFuncionariosLOGOTIPO: TdxDBGridMaskColumn;
    DBFuncionariosVENCIMENTO: TdxDBGridDateColumn;
    DBFuncionariosDATA: TdxDBGridDateColumn;
    C_APagar_icSelecionado: TIntegerField;
    C_APagarNumCheque: TIntegerField;
    C_APagarCONTAPAGAMENTO: TIntegerField;
    TS_Panel4: TTS_Panel;
    TS_Label9: TTS_Label;
    Q_Menos: TIBQuery;
    C_Menos: TClientDataSet;
    C_MenosDS: TDataSource;
    C_MaisDS: TDataSource;
    Q_Mais: TIBQuery;
    C_Mais: TClientDataSet;
    dbgMais: TTS_QDBGrid;
    dbgMaislkPayItem: TdxDBGridLookupColumn;
    dbgMaisVALOR: TdxDBGridMaskColumn;
    dbgMenos: TTS_QDBGrid;
    dxDBGridLookupColumn1: TdxDBGridLookupColumn;
    dxDBGridCalcColumn1: TdxDBGridCalcColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    RxSplitter2: TRxSplitter;
    C_APagarPAYROLLFUNC: TIntegerField;
    lbPago: TdxfLabel;
    Q_APagarDS: TDataSource;
    C_APagarQ_Mais: TDataSetField;
    C_APagarQ_Menos: TDataSetField;
    DBFuncionariosPago: TdxDBGridImageColumn;
    C_APagarVALORPAGO: TBCDField;
    C_APagarPago: TStringField;
    ImageList1: TImageList;
    C_APagarIndice: TIntegerField;
    lbNavegador: TTS_Label;
    ppmGrid: TTS_PopupMenu;
    C_APagarMemo: TStringField;
    C_APagarVALORDINHEIRO: TBCDField;
    dfDinheiro: TTS_DBEditNumber;
    C_APagarVALORNOMINAL: TBCDField;
    cmbConta: TTS_DBPopupEdit;
    C_APagarCONTA: TIntegerField;
    C_APagarDescConta: TStringField;
    TS_Bevel2: TTS_Bevel;
    btCancelar: TTS_SpeedButton;
    TS_Bevel3: TTS_Bevel;
    cmbVisualizar: TTS_ComboBox;
    TS_Label8: TTS_Label;
    ppmImprimir: TTS_PopupMenu;
    ImprimirCheques1: TMenuItem;
    ReciboIndividual1: TMenuItem;
    ReciboColetivo1: TMenuItem;
    C_APagarRETIRADAHIST: TIntegerField;
    DBFuncionariosRetiradaHist: TdxDBGridColumn;
    TS_Label10: TTS_Label;
    C_MaisVALOR: TBCDField;
    C_MaisDESCRICAO: TStringField;
    C_MaisPAYROLLPAYITEM: TIntegerField;
    C_MenosPAYROLLPAYITEM: TIntegerField;
    C_MenosVALOR: TBCDField;
    C_MenosDESCRICAO: TStringField;
    ckbImprimirCheque: TTS_CheckBox;
    TS_Panel1: TTS_Panel;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    btContabilidade: TTS_SpeedButton;
    DBFuncionariosColumn13: TdxDBGridMaskColumn;
    cmbContaColetivo: TTS_PopupEdit;
    lbContaColetivo: TTS_Label;
    DBFuncionariosNumCheque: TdxDBGridMaskColumn;
    C_APagarREFCLIENTE: TIntegerField;
    C_APagarCONTACLIENTE: TIntegerField;
    edPayroll: TTS_EditPayroll;
    DBFuncionariosColumn15: TdxDBGridColumn;
    procedure C_APagarAfterScroll(DataSet: TDataSet);
    procedure C_APagarCalcFields(DataSet: TDataSet);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure dfDinheiroChange(Sender: TObject);
    procedure cmbVisualizarChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dfFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
    procedure btComando2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ReciboIndividual1Click(Sender: TObject);
    procedure ReciboColetivo1Click(Sender: TObject);
    procedure ImprimirCheques1Click(Sender: TObject);
    procedure C_APagarVALORDINHEIROValidate(Sender: TField);
    procedure btContabilidadeClick(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dfFuncionarioButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DBFuncionariosDblClick(Sender: TObject);
    procedure pgFuncionariosChange(Sender: TObject);
    procedure cmbContaColetivoInitPopup(Sender: TObject);
    procedure cmbContaColetivoChange(Sender: TObject);
    procedure edPayrollSelecionou(Sender: TObject);
  protected
    DlgPopup: TDlgPopupContas;
    // Adriano
    DMContabil: TDMContabilidade;
  private
    nConta, nTotalFunc  : integer;
    sAPagar : string;
    dtDataInicio, dtDataFim, dDataPagamento : TDateTime;
    procedure Pesquisar;
    function 	Gravar : boolean;
    function 	Validacoes(bMostrarMensagem:boolean): boolean;
    function getNumCheque(Retirada: integer): integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgPgtoAFuncionarios: TDlgPgtoAFuncionarios;

implementation

uses DM_Projeto, DM_Financeiro, Funcoes, Util2, Dlg_EmissaoCheques, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgPgtoAFuncionarios.C_APagarAfterScroll(DataSet: TDataSet);
begin
  inherited;
    if (nTotalFunc > 0) and (not C_APagar.IsEmpty) then
    	lbNavegador.caption := C_APagarIndice.AsString+' / '+IntToStr(nTotalFunc)
    else
    	lbNavegador.caption := '';

    lbPago.Visible := C_APagarValorPago.value > 0;
    btCancelar.Visible := lbPago.Visible;
    if (C_APagarFornecedor.value > 0) and (C_APagarLogotipo.Value<>'') then begin
      if FileExists(DMProjeto.ImgPath+C_APagarLogotipo.Value) then
        DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath+C_APagarLogotipo.Value)
      else DF_Foto.ClearPicture;
    end else begin
      DF_Foto.ClearPicture;
    end;
end;

function TDlgPgtoAFuncionarios.getNumCheque( Retirada : integer ) : integer;
begin
	with DMFinanceiro.Q_SQL2 do begin
  	close;
    sql.text := 'select max(numcheque) from retiradasdoc where retirada = '+IntToStr(Retirada);
    open;
    result := fields[0].AsInteger;
    close;
  end;
end;

procedure TDlgPgtoAFuncionarios.C_APagarCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ApagarExtenso.Value := PrimeiraLetraMaiuscula(Util2.Extenso( C_APagarValor	.Value ));
  C_ApagarPago.Value    := iif(C_APagarValorPago.Value>0,'S','N');
  if (C_APagarValorPago.Value > 0) then
  	C_ApagarNumCheque.Value := getNumCheque( C_APagarRetiradaHist.Value );
end;

procedure TDlgPgtoAFuncionarios.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if C_APagar.Active then	C_APagar.Prior;
end;

procedure TDlgPgtoAFuncionarios.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, true);
  {Abertura de Querys}
  DMFinanceiro.C_ContasBc.Open;
  {Valores Padrão}
  nConta := DMFinanceiro.getContaBancoPadrao;
  cmbContaColetivo.OnChange:= nil;
  cmbContaColetivo.LookUpKeyValue := nConta;
  cmbContaColetivo.OnChange:= cmbContaColetivoChange;
  if DMProjeto.ExisteParametrosForm then begin
    edPayRoll.ID := DMProjeto.getParametrosForm( 1 );
    // Pesquisar;
    pgFuncionarios.ActivePageIndex := 1;
    cmbVisualizar.ItemIndex := 1;
    DBFuncionarios.SelectAll;
  end else begin
    cmbVisualizar.ItemIndex := 1;
  end;
  if not DMProjeto.LerPermissao(self.name,'ImpCheque') then begin
  	ckbImprimirCheque.Checked := false;
    ckbImprimirCheque.Readonly:= true;
  end;
end;

procedure TDlgPgtoAFuncionarios.Pesquisar;
var i : integer;
begin
	with C_APagar do begin
  	close;
    Filtered := false;
		commandText := 'Select d.id, (d.valor-d.jurosplano) as Valor, d.valor as valornominal, d.vencimento, d.competencia as data, '+
    							 'd.fornecedor, f.nome, f.nome as Nominal, f.logotipo, f.contapagamento, '+
                   'd.payrollfunc, d.valorpago, (d.jurosplano) as ValorDinheiro, '+
                   'd.banco as Conta, r.retirada as RetiradaHist, d.RefCliente, '+
                   'ff.contapagamento as contacliente '+
									 'From DuplicatasaPagar d '+
                   'inner join Favorecidos f on d.fornecedor = f.favorecido '+
                   'left join RetiradasDuplicatas r on d.id = r.duplicata '+
                   'left join Favorecidos ff on d.refcliente = ff.favorecido '+
                   'left join PayRollsFunc p on d.payrollfunc = p.payrollfunc '+
									 'Where '+iif(edPayRoll.ID<>0,'d.PayRollFunc is not null and p.PayRoll = '+VarToStr(edPayRoll.ID)+' ','d.PayRollFunc is not null ')+
                   'and d.status > 0 '+
									 'Order by f.nome, d.competencia ';
    open;
    if cmbVisualizar.ItemIndex = 0 then begin
    	disablecontrols;
    	i := 1;
    	while not eof do begin
      	C_APagar.Edit;
    		C_APagarIndice.value := i;
      	inc(i);
      	Next;
    	end;
    	nTotalFunc := RecordCount;
    	first;
    	enablecontrols;
    	if nTotalFunc > 0 then begin
    		lbNavegador.caption := C_APagarIndice.AsString+' / '+IntToStr(nTotalFunc);
        pnCheque.Enabled := true;
    	end else begin
    		lbNavegador.caption := '';
        pnCheque.Enabled := false;
      end;
    end else
    	cmbVisualizarChange(self);
  end;
end;
procedure TDlgPgtoAFuncionarios.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol 		:= DlgPopup.pnPopup;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgPgtoAFuncionarios.dfDinheiroChange(Sender: TObject);
begin
  inherited;
  if C_APagar.State in [dsBrowse] then
  	C_APagar.Edit;
  C_APagarValor.Value := C_APagarValorNominal.Value - dfDinheiro.Value;
 	C_ApagarExtenso.Value := PrimeiraLetraMaiuscula(Util2.Extenso( C_APagarValor.Value ));
end;

procedure TDlgPgtoAFuncionarios.cmbVisualizarChange(Sender: TObject);
var i : integer;
begin
  inherited;
  if not C_APagar.Active then
  	Exit;
  DBFuncionarios.LimparSelecionados;
  lbContaColetivo.Enabled := false;
  cmbContaColetivo.Enabled := false;
	with C_APagar do begin
    DisableControls;
    if cmbVisualizar.ItemIndex = 0 then
 	  	Filtered := false
    else if cmbVisualizar.ItemIndex = 1 then begin
 	  	Filtered := false;
      Filter	 := 'ValorPago = 0';
      Filtered := true;
      lbContaColetivo.Enabled := true;
      cmbContaColetivo.Enabled := true;
    end else if cmbVisualizar.ItemIndex = 2 then begin
 	  	Filtered := false;
      Filter	 := 'ValorPago > 0';
      Filtered := true;
    end;
    First;
    i := 1;
    while not eof do begin
      Edit;
    	C_APagarIndice.value := i;
        if (not C_APagarRefCliente.IsNull) and (not C_APagarContaCliente.IsNull) then
          C_APagarConta.Value := C_APagarContaCliente.Value
    		else if (not C_APagarContaPagamento.IsNull) and (C_APagarConta.IsNull) and (C_APagarValorPago.Value = 0) then
    			C_APagarConta.Value := C_APagarContaPagamento.Value
    		else if (C_APagarConta.IsNull) then
    			C_APagarConta.Value := nConta;
        if (edPayRoll.ID<>0) and (C_APagarMemo.IsNull)  and (C_APagarValorPago.Value = 0) then begin
          if DMProjeto.Parametro('DescricaoPayRollMemoCheque')='S' then
      			C_APagarMemo.Value := edPayRoll.Text;
          if DMProjeto.Parametro('PeriodoPayRollMemoCheque')='S' then
      			C_APagarMemo.Value := iif(DMProjeto.Parametro('DescricaoPayRollMemoCheque')='S',edPayRoll.Text+#13#10+'Period of '+DateToStr(dtDataInicio)+' to '+DateToStr(dtDataFim),'Period of '+DateToStr(dtDataInicio)+' to '+DateToStr(dtDataFim));
        end;
      inc(i);
      Next;
    end;
    First;
    EnableControls;
    nTotalFunc := RecordCount;
    if nTotalFunc > 0 then
    	lbNavegador.caption := C_APagarIndice.AsString+' / '+IntToStr(nTotalFunc)
    else
    	lbNavegador.caption := '';
  end;
  DBFuncionarios.LimparSelecionados;  
end;

function TDlgPgtoAFuncionarios.Gravar;
var Retirada, nCheque, nDinheiro, i : integer;
		sAPagar, sContas, sCheques, sRetiradas, sContasImpressao : string;
begin
  result := false;
	with DMFinanceiro do begin

    try
      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      C_APagar.DisableControls;

      sAPagar := DBFuncionarios.FirstSelected;
      sRetiradas := '';
  		sContas := DBFuncionarios.Distinct('Conta', true);
      for i:=1 to ContaStrings(sAPagar,',') do begin
        C_APagar.Locate('ID',StrToInt(SeparaStrings(sAPagar,',',i)),[]);
        if C_APagarRetiradaHist.Value <> 0 then begin
          if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' ) then begin
          	C_APagar.EnableControls;
            Exit;
          end;
          ApagarRetirada( C_APagarRetiradaHist.Value, true );
        end;

        Retirada	:= PagarRapido( C_APagarRetiradaHist.Value, C_APagarID.Value, C_APagarPayrollFunc.Value, C_APagarVencimento.Value, C_APagarData.Value, C_APagarMemo.Value,
                                  C_APagarValor.Value+C_APagarValorDinheiro.Value, 0, 0, 0, 0, 0, 6 );

        sRetiradas:= sRetiradas+IntToStr(Retirada)+',';
        if C_APagarValor.Value > 0 then
          nCheque    := PagarDoc( 0, 6, Retirada, C_APagarConta.Value, C_APagarFornecedor.Value, 2, C_APagarValor.Value, C_APagarVencimento.Value, C_APagarNumCheque.Value, C_APagarNominal.value );

        if C_APagarValorDinheiro.Value > 0 then
          nDinheiro  := PagarDoc( 0, 6, Retirada, 1, C_APagarFornecedor.Value, 1, C_APagarValorDinheiro.Value, C_APagarVencimento.Value, 0, '' );

        BaixarDuplicata( C_APagarID.AsString, Retirada, C_APagarValorDinheiro.Value, C_APagarConta.value );

        with Q_SQL do begin
        	Close;
        	SQL.Text := 'update payrollsfunc '+
          						'set valorpago = :valor '+
                      'where payrollfunc = :pf ';
          ParamByName('Valor').AsCurrency := C_APagarValor.Value+C_APagarValorDinheiro.Value;
          ParamByName('Pf').AsInteger 		:= C_APagarPayrollFunc.Value;
          ExecSQL;
        end;

        //Contabilidade
        DMContabil.ContabilizaPagtoPayroll(C_APagarID.value,edPayroll.ID,dDataPagamento,C_APagar);

        if not DMContabil.Salvar(C_APagarID.value) then
          raise Exception.Create(DMProjeto.GetMsg(3117));
        ///////////////////////////

        C_APagar.Edit;
        C_APagarRetiradaHist.Value := Retirada;
        C_APagarValorPago.Value 	 := C_APagarValor.Value+C_APagarValorDinheiro.Value;
        C_APagar.Post;
      end;
      sRetiradas := Copy(sRetiradas,1,length(sRetiradas)-1);
      C_APagar.EnableControls;


      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    except
      On e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DMProjeto.GeraLog('Pagamento de Funcionarios',e.message);
      end;
    end;

    if ckbImprimirCheque.Checked then begin

  		sContasImpressao := '';
  		for i:=1 to ContaStrings(sContas,',') do begin
    		sCheques := DMFinanceiro.ChequesDaRetirada( sRetiradas , StrToInt(SeparaStrings(sContas,',',i)) );
  			sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
  		end;
      sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
  		dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
  		dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao, C_APagarNumCheque.AsString, true );
  		dlgEmissaoCheques.ShowModal;
  		dlgEmissaoCheques.Release;

    end;

    try
      SendLastDataObject(Self.Name, 'RETIRADAS', 'Retirada', Retirada, false );
    except
    end;

  end;
  DBFuncionarios.LimparSelecionados;
  result := true;
end;

function TDlgPgtoAFuncionarios.Validacoes;
var i : integer;
begin
	result := false;

  if not C_APagar.Active then
  	exit;

	if (C_APagar.RecordCount = 0) then
  	exit;

  if edPayroll.ID = 0 then begin
  	DlgMsg.ShowMsg( 929, ['a Folha'] );
    edPayroll.SetFocus;
    Exit;
  end;

  if DBFuncionarios.Selecionados = '' then
		DBFuncionarios.Selecionar;

  sAPagar := DBFuncionarios.FirstSelected;
  C_APagar.DisableControls;
  for i:=0 to ContaStrings(sAPagar,',') do begin

  	if C_APagarConta.Value = 0 then begin
  		DlgMsg.ShowMsg(929,['a conta de pagamento']);
      C_APagar.EnableControls;
    	Exit;
  	end;

		if (C_APagarNominal.value = '') and (C_APagarValor.Value>0) then begin
  		DlgMsg.ShowMsg(949,['Cheque Nominal a']);
      C_APagar.EnableControls;
    	Exit;
  	end;

		if (dfData.Date < EncodeDate(1990,1,1)) then begin
  		DlgMsg.ShowMsg(214);
      C_APagar.EnableControls;
    	Exit;
  	end;

    DBFuncionarios.NextSelected;
  end;
  C_APagar.EnableControls;
  result := true;
end;

procedure TDlgPgtoAFuncionarios.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'S') then
    exit;
	if Validacoes(true) then
  	Gravar;
end;

procedure TDlgPgtoAFuncionarios.dfFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
end;

procedure TDlgPgtoAFuncionarios.btCancelarClick(Sender: TObject);
var sSelecionados : string;
		i : integer;
begin
  inherited;
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
    	exit;

  	if not C_APagar.Active then
  		exit;

  	if C_APagar.RecordCount <= 0 then
  		exit;

		if DBFuncionarios.Selecionados = '' then
      DBFuncionarios.Selecionar;

		if DlgMsg.ShowMsg( 577, ['o Pagamento deste(s) funcionário(s)']) = 100 then begin

      sSelecionados := DBFuncionarios.FirstSelected;

      try

      C_APagar.DisableControls;

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      for i:=1 to ContaStrings(sSelecionados,',') do begin

				DMFinanceiro.ApagarRetirada( C_APagarRetiradaHist.AsInteger, true );

      	with C_APagar do begin
      		Edit;
        	lbPago.Visible:= false;
        	C_APagarRetiradaHist.Value 	:= 0;
        	C_APagarValorPago.Value 		:= 0;
        	C_APagar_icSelecionado.Value:= 0;
        	Post;
      	end;
        DBFuncionarios.NextSelected;
      end;

      C_APagar.EnableControls;


      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

   		try
     		SendLastDataObject(Self.Name, 'Retiradas', 'Retirada', 0, false);
   		except
   		end;

     except
    	on E : Exception do begin
 	      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      		DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(2, e.message, '');
      end;
     end;
    end;
    DBFuncionarios.LimparSelecionados;
end;

procedure TDlgPgtoAFuncionarios.btComando2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xy : TPoint;
begin
  inherited;
    xy.x := X;
    xy.Y := Y;
    xy:= btComando2.ClientToScreen(xy);
    ppmImprimir.Popup(xy.X-(X), xy.Y-(Y)+btComando2.Height);
end;

procedure TDlgPgtoAFuncionarios.ReciboIndividual1Click(Sender: TObject);
var sRetiradas : string;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'ImpRecibo') then
    exit;

  if not C_APagar.Active then
  	exit;

  if C_APagar.RecordCount <= 0 then
  	exit;

  if DBFuncionarios.Selecionados = '' then
  	DBFuncionarios.Selecionar;

	sRetiradas := DBFuncionarios.Distinct('RetiradaHist',true);
  if sRetiradas = '' then
  	exit;
  DMProjeto.ImprimirRecibo(22,'','',':retirada='+sRetiradas);
  DBFuncionarios.LimparSelecionados;
end;

procedure TDlgPgtoAFuncionarios.ReciboColetivo1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([null,edPayRoll.ID]);
    CriarForm('RptReciboColetivo',self,false);
    LimparParametrosForm;
  end;
end;

procedure TDlgPgtoAFuncionarios.ImprimirCheques1Click(Sender: TObject);
var sContas, sCheques, sContasImpressao : string;
		i : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'ImpCheque') then
    exit;

  if not C_APagar.Active then
  	exit;

  if C_APagar.RecordCount <= 0 then
  	exit;

  if DBFuncionarios.Selecionados = '' then
  	DBFuncionarios.Selecionar;

  sContas := DBFuncionarios.Distinct('Conta', true);
  sContasImpressao := '';
  for i:=1 to ContaStrings(sContas,',') do begin
    sCheques := DMFinanceiro.ChequesDaRetirada( DBFuncionarios.Distinct('RetiradaHist',true) , StrToInt(SeparaStrings(sContas,',',i)) );
  	sContasImpressao := sContasImpressao + SeparaStrings(sContas,',',i)+' = '+IntToStr(ContaStrings(sCheques,','))+' = '+sCheques+';';
  end;
  sContasImpressao := Copy( sContasImpressao, 1, length(sContasImpressao)-1);
  if sCheques = '' then
  	exit;
  dlgEmissaoCheques := TdlgEmissaoCheques.Create(Self);
  dlgEmissaoCheques.Iniciar(sCheques, sContasImpressao, DBFuncionarios.Distinct('NumCheque',true), true );
  dlgEmissaoCheques.ShowModal;
  dlgEmissaoCheques.Release;
  DBFuncionarios.LimparSelecionados;
  Pesquisar;
end;

procedure TDlgPgtoAFuncionarios.C_APagarVALORDINHEIROValidate(
  Sender: TField);
begin
  inherited;
  if C_APagarValorDinheiro.Value > C_APagarValorNominal.Value then begin
  	DlgMsg.ShowMsg(950);
    raise Exception.Create('@@');
  end;
end;

procedure TDlgPgtoAFuncionarios.btContabilidadeClick(Sender: TObject);
var xIDPagar: integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;

  xIDPagar := C_APagarID.value;

	if not Validacoes(false) then
  	Exit;

  // Adriano
  C_APagar.locate('id',xIDPagar,[]);
  DMContabil.ContabilizaPagtoPayroll(xIDPagar,edPayroll.ID,dDataPagamento,C_APagar);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////

end;

procedure TDlgPgtoAFuncionarios.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if C_APagar.Active then	C_APagar.Next;
end;

procedure TDlgPgtoAFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

procedure TDlgPgtoAFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgPgtoAFuncionarios.dfFuncionarioButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
//  inherited;
  if AbsoluteIndex = 0 then begin
  	DMProjeto.SetParametrosForm([C_APagarFornecedor.Value]);
    DMProjeto.CriarForm('FrmFuncionarios',self,true);
  end;
end;

procedure TDlgPgtoAFuncionarios.DBFuncionariosDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_APagarFornecedor.Value]);
    CriarForm('FrmFuncionarios',self,true);
  end;
end;

procedure TDlgPgtoAFuncionarios.pgFuncionariosChange(Sender: TObject);
begin
  inherited;
	if pgFuncionarios.ActivePageIndex = 0 then
  	DBFuncionarios.LimparSelecionados;
end;

procedure TDlgPgtoAFuncionarios.cmbContaColetivoInitPopup(Sender: TObject);
begin
  inherited;
  cmbContaColetivo.popupcontrol 		:= DlgPopup.pnPopup;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
	DlgPopup.SetEventos( TdxPopupEdit(Sender) );
end;

procedure TDlgPgtoAFuncionarios.cmbContaColetivoChange(Sender: TObject);
begin
  inherited;
	with C_APagar do begin
  	DisableControls;
    First;
    while not eof do begin
    	if (C_APagarValorPago.Value = 0) then begin {Selecionado}
      	Edit;
        C_APagarConta.Value := cmbContaColetivo.LookupKeyValue;
        Post;
      end;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TDlgPgtoAFuncionarios.edPayrollSelecionou(Sender: TObject);
begin
  inherited;
  dtDataInicio   := DMProjeto.C_PayrollsDataInicio.Value;
  dtDataFim      := DMProjeto.C_PayrollsDataFim.Value;
  dDataPagamento := DMProjeto.C_PayrollsDataPagamento.Value;
	Pesquisar;
//  if DMProjeto.C_PayrollsStatus.Value = 'F' then
//  	cmbVisualizar.ItemIndex := 2;
end;

end.
