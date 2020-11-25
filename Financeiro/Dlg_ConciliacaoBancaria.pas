unit Dlg_ConciliacaoBancaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, TS_SpeedButton, TS_MaxPanel,
  StdCtrls, Mask, DBCtrls,
  TS_DBEdit, TS_DBLookupComboBox, TS_Label, TS_Panel, TS_DBText, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient, TS_Edit, TS_Shape,
  ppMemo, ppCtrls, ppPrnabl,
  ppClass, ppStrtch, ppRegion, ppBands, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppArchiv, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  FormsComponent, TS_Image, dxfLabel, dxEdLib, TS_DateTimePicker,
  TS_CalcEdit, RXSplit, TS_LookupComboBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxDBTLCl, dxGrClms, teCtrls, TS_EffectsPanel, Buttons,
  TS_PopupEdit, Dlg_PopupContas, dxGrClEx, ppSubRpt, ppDB, ppDBPipe, DM_Contabilidade,
  Menus, TS_PopupMenu, Variants, ppDevice, ppFilDev, BTOdeum, Placemnt;

type
  TDlgConciliacaoBancaria = class(TFrmModeloCadastros)
    pnCab: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    C_Depositos: TClientDataSet;
    P_Depositos: TDataSetProvider;
    C_Pagamentos: TClientDataSet;
    P_Pagamentos: TDataSetProvider;
    Q_Depositos: TIBQuery;
    Q_Pagamentos: TIBQuery;
    C_DepositosDS: TDataSource;
    C_PagamentosDS: TDataSource;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Shape1: TTS_Shape;
    lbSaldoConciliado: TStaticText;
    lbDiferenca: TStaticText;
    C_Ajustes: TClientDataSet;
    C_AjustesDS: TDataSource;
    C_AjustesTipo: TStringField;
    C_AjustesMemo: TStringField;
    C_AjustesValor: TFloatField;
    C_AjustesConta: TIntegerField;
    C_AjustesDescConta: TStringField;
    C_AjustesData: TDateField;
    TS_Label6: TTS_Label;
    lbUltimaConciliacao: TStaticText;
    AbrirRel: TppArchiveReader;
    dtData: TTS_DateTimePicker;
    edSaldoBanco: TTS_CalcEdit;
    pnRecPag: TTS_Panel;
    pnRecebimentos: TTS_Panel;
    TS_Label4: TTS_Label;
    cmbConta: TTS_PopupEdit;
    DBDepositos: TTS_QDBGrid;
    DBDepositosDATA: TdxDBGridDateColumn;
    DBDepositosVALOR: TdxDBGridMaskColumn;
    DBDepositosNUMCHEQUE: TdxDBGridMaskColumn;
    DBDepositosHISTORICO: TdxDBGridMaskColumn;
    DBDepositosNOME: TdxDBGridMaskColumn;
    DBDepositosID: TdxDBGridMaskColumn;
    DBDepositosTIPOOPERACAO: TdxDBGridMaskColumn;
    DBDepositosIDDOC: TdxDBGridMaskColumn;
    DBDepositosIDGERADOR: TdxDBGridMaskColumn;
    RxSplitter1: TRxSplitter;
    C_Pagamentos_icSelecionado: TIntegerField;
    C_Depositos_icSelecionado: TIntegerField;
    C_PagamentosID: TIntegerField;
    C_PagamentosDATA: TDateField;
    C_PagamentosVALOR: TBCDField;
    C_PagamentosNUMCHEQUE: TIntegerField;
    C_PagamentosHISTORICO: TStringField;
    C_PagamentosNOME: TStringField;
    C_PagamentosTIPOOPERACAO: TIntegerField;
    C_PagamentosIDGERADOR: TIntegerField;
    C_PagamentosTIPO: TStringField;
    C_DepositosID: TIntegerField;
    C_DepositosDATA: TDateField;
    C_DepositosVALOR: TBCDField;
    C_DepositosNUMCHEQUE: TIntegerField;
    C_DepositosHISTORICO: TStringField;
    C_DepositosNOME: TStringField;
    C_DepositosTIPOOPERACAO: TIntegerField;
    C_DepositosIDGERADOR: TIntegerField;
    C_DepositosTIPO: TStringField;
    lbTotalRecebimentos: TTS_Label;
    pnInferior: TTS_Panel;
    pnPagamentos: TTS_Panel;
    TS_Label5: TTS_Label;
    lbTotalPagamentos: TTS_Label;
    DBPagamentos: TTS_QDBGrid;
    DBPagamentosDATA: TdxDBGridDateColumn;
    DBPagamentosNOME: TdxDBGridMaskColumn;
    DBPagamentosNUMCHEQUE: TdxDBGridMaskColumn;
    DBPagamentosHISTORICO: TdxDBGridMaskColumn;
    DBPagamentosID: TdxDBGridMaskColumn;
    DBPagamentosVALOR: TdxDBGridMaskColumn;
    DBPagamentosTIPOOPERACAO: TdxDBGridMaskColumn;
    DBPagamentosIDDOC: TdxDBGridMaskColumn;
    DBPagamentosIDGERADOR: TdxDBGridMaskColumn;
    pnAjuste: TTS_Panel;
    TS_Label3: TTS_Label;
    DBAjustes: TTS_QDBGrid;
    DBAjustesData: TdxDBGridDateColumn;
    DBAjustesTipo: TdxDBGridPickColumn;
    DBAjustesMemo: TdxDBGridMaskColumn;
    DBAjustesValor: TdxDBGridMaskColumn;
    DBAjustesConta: TdxDBGridMaskColumn;
    RxSplitter2: TRxSplitter;
    DBPagamentosTIPO: TdxDBGridColumn;
    DBDepositosTIPO: TdxDBGridColumn;
    ppConciliacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape8: TppShape;
    RegCabecalho: TppRegion;
    ppLabel1: TppLabel;
    lbData: TppLabel;
    lbConta: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    lbUltCon: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    regNaoConciliados: TppRegion;
    ppShape4: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    lbItemsDep2: TppLabel;
    ppLabel16: TppLabel;
    lbTotalDep2: TppLabel;
    lbItemsPag2: TppLabel;
    ppLabel19: TppLabel;
    lbTotalPag2: TppLabel;
    ppRegion6: TppRegion;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppShape6: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    lbUltCon2: TppLabel;
    lbRecebimentos: TppLabel;
    lbPagamentos: TppLabel;
    lbSaldoConciliado2: TppLabel;
    ppLine4: TppLine;
    lbAjustes: TppLabel;
    ppLabel8: TppLabel;
    ppFooterBand1: TppFooterBand;
    DBAjustesDescConta: TdxDBGridPopupColumn;
    subDepositos: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLblObs: TppLabel;
    ppLabel27: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppdbDepositos: TppDBPipeline;
    ppdbPagamentos: TppDBPipeline;
    ppdbAjustes: TppDBPipeline;
    subPagamentos: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLblObs2: TppLabel;
    ppLabel32: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    subAjustes: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape10: TppShape;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLblObs3: TppLabel;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    btContabilidade: TTS_SpeedButton;
    Conciliar1: TMenuItem;
    N1: TMenuItem;
    Ajustar1: TMenuItem;
    N2: TMenuItem;
    ltimoRelatrio1: TMenuItem;
    ppmGridDeposito: TTS_PopupMenu;
    Conciliar2: TMenuItem;
    VerOperaoOriginada1: TMenuItem;
    C_DepositosCONTARECEBER: TIntegerField;
    C_AjustesSequencial: TIntegerField;
    DBAjustesSequencial: TdxDBGridColumn;
    ppmAjustes: TTS_PopupMenu;
    TS_Shape2: TTS_Shape;
    ppmGridPagamento: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure edSaldoBancoChange(Sender: TObject);
    procedure DBDepositosAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer; TotalGeral,
      TotalSelecionado: array of Double);
    procedure DBPagamentosAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer; TotalGeral,
      TotalSelecionado: array of Double);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure C_AjustesNewRecord(DataSet: TDataSet);
    procedure DBPagamentosDblClick(Sender: TObject);
    procedure DBDepositosDblClick(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure DBChequesTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C_AjustesTipoChange(Sender: TField);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBAjustesDescContaInitPopup(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure VerOperaoOriginada1Click(Sender: TObject);
    procedure dtDataDateChange(Sender: TObject);
    procedure C_AjustesAfterPost(DataSet: TDataSet);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSeq : integer;
    SaldoConciliado : Currency;
    procedure Imprimir;
		function 	AtualizaSaldo  : currency;
		function 	Validacoes(bMostrarMensagem:boolean) : boolean;
    function 	Gravar : boolean;
		procedure Pesquisar;
		function 	GerarArquivo(Arquivo : string; Report : TppReport) : string;
  public
    { Public declarations }
  end;

var
  DlgConciliacaoBancaria: TDlgConciliacaoBancaria;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgConciliacaoBancaria.Pesquisar;
begin
  edSaldoBanco.SetFocus;
  edSaldoBanco.SelectAll;
  with C_Depositos do begin
  	Close;
  	Params.ParamByName('DataI').AsDate 		:= 0; //DMFinanceiro.C_ContasBcDataConciliacao.Value;
  	Params.ParamByName('DataF').AsDate 		:= dtData.Date;
  	Params.ParamByName('Conta').AsInteger := cmbConta.LookUpKeyValue;
    Open;
  end;
  with C_Pagamentos do begin
  	Close;
  	Params.ParamByName('DataI').AsDate 		:= 0;//DMFinanceiro.C_ContasBcDataConciliacao.Value;
  	Params.ParamByName('DataF').AsDate 		:= dtData.Date;
  	Params.ParamByName('Conta').AsInteger := cmbConta.LookUpKeyValue;
    Open;
  end;
end;


function TDlgConciliacaoBancaria.AtualizaSaldo;
var Saldo : currency;
begin
  Saldo := SaldoConciliado;
  if C_Depositos.Active then
     Saldo := Saldo + DBDepositos.ValorSelecionado('Valor');
  if C_Pagamentos.Active then
     Saldo := Saldo + DBPagamentos.ValorSelecionado('Valor');
  lbSaldoConciliado.Caption:= formatfloat('###,###,##0.00',Saldo);
  if (C_Ajustes.Active) and (C_Ajustes.RecordCount>0) then
    Saldo := Saldo + DBAjustes.TotalGeral('Valor','Tipo = ''Creditar''') - DBAjustes.TotalGeral('Valor','Tipo = ''Debitar''');
  result := edSaldoBanco.Value - Saldo;
  lbDiferenca.Caption := formatfloat('###,###,##0.00',result);
  if result < 0 then
  	lbDiferenca.Font.Color := clRed
  else if result > 0 then
  	lbDiferenca.Font.Color := clBlue
  else
  	lbDiferenca.Font.Color := clGreen;
end;

procedure TDlgConciliacaoBancaria.edSaldoBancoChange(Sender: TObject);
begin
  inherited;
	AtualizaSaldo;
  btLimpar.Down := false;
  btLimpar.Click;
{
	if AtualizaSaldo <> 0 then
  	if (C_Ajustes.Active) and (C_Ajustes.RecordCount>0) then begin
    	C_Ajustes.Edit;
      C_AjustesValor.Value := AtualizaSaldo;
    end;
}
end;

procedure TDlgConciliacaoBancaria.DBDepositosAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer; TotalGeral,
  TotalSelecionado: array of double);
begin
  inherited;
	if AtualizaSaldo <> 0 then
  	if (C_Ajustes.Active) and (C_Ajustes.RecordCount>0) then begin
    	C_Ajustes.Edit;
      C_AjustesValor.Value := AtualizaSaldo;
    end;
end;

procedure TDlgConciliacaoBancaria.DBPagamentosAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer; TotalGeral,
  TotalSelecionado: array of double);
begin
  inherited;
	if AtualizaSaldo <> 0 then
  	if (C_Ajustes.Active) and (C_Ajustes.RecordCount>0) then begin
    	C_Ajustes.Edit;
      C_AjustesValor.Value := AtualizaSaldo + DBAjustes.TotalGeral('Valor','Tipo = ''Creditar''') -
    									 												DBAjustes.TotalGeral('Valor','Tipo = ''Debitar''');
    end;
end;

function TDlgConciliacaoBancaria.Gravar;
var i : integer;
		sCheques : string;
begin
	result := false;
	with DMProjeto do begin
    try
      if not DB_Projeto.DefaultTransaction.InTransaction then
        DB_Projeto.DefaultTransaction.StartTransaction;

      sCheques := DBPagamentos.Selecionados( 'Tipo = ''CP''');
      for i:=1 to ContaStrings(sCheques,',') do begin
        C_Pagamentos.Locate('Id',SeparaStrings(sCheques,',',i),[]);
        with Q_SQL do begin
          close;
          sql.text := 'update retiradasdoc '+
                      'set numcheque = :numcheque '+
                      'where iddoc = :iddoc';
          parambyname('numcheque').asInteger := C_PagamentosNumCheque.AsInteger;
          parambyname('iddoc').asInteger := C_PagamentosID.AsInteger;
          execSQL;
        end;
      end;

      DMFinanceiro.ConciliarConta( dtData.Date, DMFinanceiro.C_ContasBcConta.Value,
                                   edSaldoBanco.Value, DBDepositos.Selecionados,
                                   DBPagamentos.Selecionados,
                                   DBPagamentos.Selecionados( 'Tipo = ''CP'''),
                                   C_Ajustes );

      DMContabil.ContabilizaConciliacao(-1,cmbConta.LookUpKeyValue,C_Ajustes,C_Depositos);

      if not DMContabil.Salvar(-1) then
        raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////

      if DB_Projeto.DefaultTransaction.InTransaction then
        DB_Projeto.DefaultTransaction.CommitRetaining;
    except
      On e:Exception do begin
        DlgMsg.ShowMsg( 2 );
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DMProjeto.GeraLog('Conciliacao Bancaria',e.message);
      end;
    end;
  end;
  result := true;
end;

function TDlgConciliacaoBancaria.Validacoes(bMostrarMensagem:boolean) : boolean;
var sCheques : string;
		i : integer;
    bOK: boolean;
begin
	result := false;
  if cmbConta.LookupKeyValue = 0 then begin
  	DlgMsg.ShowMsg(260);
    exit;
  end;
  if AtualizaSaldo <> 0 then begin
  	DlgMsg.ShowMsg(584,[formatfloat('###,###,##0.00',AtualizaSaldo)]);
    exit;
  end;
  if (DBDepositos.Selecionados = '') and (C_Ajustes.IsEmpty) and (DBPagamentos.Selecionados = '') then begin
  	DlgMsg.ShowMsg(953);
    Exit;
  end;
  sCheques := DBPagamentos.Selecionados( 'Tipo = ''CP''' );
  if sCheques<>'' then begin
    for i:=1 to ContaStrings(sCheques,',') do begin
  		C_Pagamentos.Locate('ID', SeparaStrings(sCheques,',',i),[]);
      if C_PagamentosNumCheque.AsInteger = 0 then begin
      	DlgMsg.ShowMsg(929,['# Cheque']);
        Exit;
      end;
    end;
  end;

  bOK := true;
  C_Ajustes.first;
  while not C_Ajustes.eof do begin
    if C_AjustesConta.IsNull then begin
      bOK := false;
			DlgMsg.ShowMsg( 929, ['a conta de ajuste']);
      break;
    end;
    C_Ajustes.next;
  end;
  if not bOK then
    exit;
  result := true;
end;

procedure TDlgConciliacaoBancaria.Imprimir;
var i : integer;
begin
  lbData.Caption 		:= DateToStr(DtData.Date);
  lbConta.Caption	  := cmbConta.Text;
  lbUltCon.Caption  := lbUltimaConciliacao.Caption;
  C_Depositos.Filtered := false;
  C_Depositos.Filter   := '_icSelecionado = 1';
  C_Depositos.Filtered := true;

  C_Pagamentos.Filtered := false;
  C_Pagamentos.Filter   := '_icSelecionado = 1';
  C_Pagamentos.Filtered := true;

  {Depositos Selecionados}
  lbRecebimentos.Caption:= DMProjeto.SetZero;
	lbTotalDep2.Caption := formatfloat('###,###,##0.00', DBDepositos.TotalGeral('Valor'));
  if (C_Depositos.Active) and (C_Depositos.RecordCount>0) and (DBDepositos.Selecionados <> '') then begin
	  lbTotalDep2.Caption := formatfloat('###,###,##0.00', DBDepositos.TotalGeral('Valor')-DBDepositos.ValorSelecionado('Valor'));
	  lbRecebimentos.Caption:= formatfloat('###,###,##0.00', DBDepositos.ValorSelecionado('Valor'));
  end;
  {Pagamentos Selecionados}
  lbPagamentos.Caption	:= DMProjeto.SetZero;
	lbTotalPag2.Caption  	:= formatfloat('###,###,##0.00', DBPagamentos.TotalGeral('Valor'));

  if (C_Pagamentos.Active) and (C_Pagamentos.RecordCount>0) and (DBPagamentos.Selecionados <> '') then begin

    lbTotalPag2.Caption  	:= formatfloat('###,###,##0.00', DBPagamentos.TotalGeral('Valor')-DBPagamentos.ValorSelecionado('Valor'));
	  lbPagamentos.Caption	:= formatfloat('###,###,##0.00', DBPagamentos.ValorSelecionado('Valor'));
  end;

  {Ajustes}
  lbItemsDep2.Caption 	:= IntToStr(C_Depositos.RecordCount -DBDepositos.QuantidadeSelecionada);
  lbItemsPag2.Caption 	:= IntToStr(C_Pagamentos.RecordCount-DBPagamentos.QuantidadeSelecionada);
  lbUltCon2.Caption     := formatfloat('###,###,##0.00', SaldoConciliado );
  lbAjustes.Caption			:= formatfloat('###,###,##0.00', DBAjustes.TotalGeral('Valor','Tipo = ''Creditar''')-DBAjustes.TotalGeral('Valor','Tipo = ''Debitar'''));
  lbSaldoConciliado2.Caption := formatfloat('###,###,##0.00',edSaldoBanco.Value);
  DMProjeto.ImprimirCabecalho(regCabecalho);
  ppConciliacao.Print;
  {Salvar para Arquivo}
  GerarArquivo( DMProjeto.RelPath+'\Conta '+IntToStr(cmbConta.LookupKeyValue)+'.raf',ppConciliacao);
  C_Depositos.Filtered := false;
  C_Pagamentos.Filtered := false;
end;

procedure TDlgConciliacaoBancaria.btGravarClick(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
 		exit;
  if not Validacoes(true) then
  	Exit;
	if Gravar then
  	Imprimir;
  Close;
end;

procedure TDlgConciliacaoBancaria.btLimparClick(Sender: TObject);
begin
  inherited;
  if AtualizaSaldo = 0 then
  	exit;
 	pnAjuste.Visible := btLimpar.Down;
  rxSplitter2.Top  := 130;
  if not pnAjuste.Visible then begin
  	C_Ajustes.EmptyDataSet;
    AtualizaSaldo;
  	exit;
  end;
  DMFinanceiro.C_Contas.Open;
	with C_Ajustes do begin
  	EmptyDataSet;
  	Append;
	  if AtualizaSaldo < 0 then begin
      FieldByName('Tipo').AsString 	 := 'Debitar';
      FieldByName('Conta').AsInteger := DMProjeto.ContaPadrao(15);
    	FieldByName('Valor').AsCurrency:= Abs(AtualizaSaldo);
    end else begin
      FieldByName('Tipo').AsString 	 := 'Creditar';
//      FieldByName('Conta').AsInteger := DMProjeto.ContaPadrao(24);
    	FieldByName('Valor').AsCurrency:= Abs(AtualizaSaldo);
    end;
    Post;
		AtualizaSaldo;
  end;
  DBAjustes.SetFocus;
end;

procedure TDlgConciliacaoBancaria.C_AjustesNewRecord(DataSet: TDataSet);
begin
  inherited;
  inc(nSeq);
  C_AjustesSequencial.Value := nSeq;
	C_AjustesData.Value := dtData.Date;
end;

procedure TDlgConciliacaoBancaria.DBPagamentosDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_PagamentosIDGerador.value]);
 		CriarForm(getTelaGeradora(C_PagamentosTipoOperacao.Value),self,true);
    LimparParametrosForm;
  end;
  AtualizaSaldo;
end;

procedure TDlgConciliacaoBancaria.DBDepositosDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_DepositosIDGerador.value]);
 		CriarForm(getTelaGeradora(C_DepositosTipoOperacao.Value),self,true);
    LimparParametrosForm;
  end;
  AtualizaSaldo;
end;

procedure TDlgConciliacaoBancaria.cmbContaChange(Sender: TObject);
begin
  inherited;
  if DMFinanceiro.C_ContasBcDataConciliacao.IsNull then
     edSaldoBanco.Value := DMFinanceiro.getSaldoBeginBalance( DMFinanceiro.C_ContasBcConta.AsInteger )
  else
     edSaldoBanco.Value := DMFinanceiro.C_ContasBcSaldoConciliacao.Value;

  SaldoConciliado := edSaldoBanco.Value;

  lbUltimaConciliacao.Caption := iif( DMFinanceiro.C_ContasBcDataConciliacao.IsNull,' Primeira vez',formatfloat('###,###,##0.00',SaldoConciliado)+' em '+DMFinanceiro.C_ContasBcDataConciliacao.AsString);
  lbSaldoConciliado.Caption   := formatfloat('###,###,##0.00', SaldoConciliado );

  Pesquisar;
  btLimpar.Down := false;
  btLimpar.Click;
  lbTotalRecebimentos.caption := '';
  lbTotalPagamentos.caption 	:= '';
  AtualizaSaldo;
  edSaldoBanco.SetFocus;
  edSaldoBanco.SelectAll;
end;

procedure TDlgConciliacaoBancaria.DBChequesTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  lbTotalRecebimentos.caption := formatfloat('###,###,##0.00', DBDepositos.ValorSelecionado('Valor'));
  lbTotalPagamentos.caption := formatfloat('###,###,##0.00',   DBPagamentos.ValorSelecionado('Valor'));
	if AtualizaSaldo <> 0 then
  	if (C_Ajustes.Active) and (C_Ajustes.RecordCount>0) then begin
    	C_Ajustes.Edit;
      C_AjustesValor.Value := AtualizaSaldo + DBAjustes.TotalGeral('Valor','Tipo = ''Creditar''') -
    									 												DBAjustes.TotalGeral('Valor','Tipo = ''Debitar''');
    end;
end;

procedure TDlgConciliacaoBancaria.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
  dtData.OnDateChange := nil;
	dtData.Date := DMProjeto.dDataSistema;
  dtData.OnDateChange := dtDataDateChange; 
  DMFinanceiro.C_ContasBc.Close;
	DMFinanceiro.C_ContasBc.Open;
  C_Ajustes.CreateDataSet;
 	pnAjuste.Visible := false;
  rxSplitter2.Top  := 130;
  nSeq := 0;
end;

procedure TDlgConciliacaoBancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	cmbConta.OnChange := nil;
  inherited;
  DlgPopup.Free;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgConciliacaoBancaria.C_AjustesTipoChange(Sender: TField);
begin
  inherited;
  if Copy(C_AjustesTipo.AsString,1,1) = 'D' then begin
      C_Ajustes.FieldByName('Conta').AsInteger := 23;
      C_Ajustes.FieldByName('Memo').AsString 	 := DMFinanceiro.Conta_Nome(23);
  end else begin
      C_Ajustes.FieldByName('Conta').AsInteger := 10;
      C_Ajustes.FieldByName('Memo').AsString 	 := DMFinanceiro.Conta_Nome(10);
  end;
end;

procedure TDlgConciliacaoBancaria.FormsComponentRefresh(Sender: TObject);
var sSelRecebimentos, sSelPagamentos : string;
begin
  inherited;
  sSelRecebimentos := DBDepositos.Selecionados;
  sSelPagamentos   := DBPagamentos.Selecionados;
  if pos(LastDataObject.TableName,'Depositos;DepositosDoc;Operacoes;Retiradas;RetiradasDoc')>0 then begin
  	Pesquisar;
    DBDepositos.SetSelecionados( sSelRecebimentos );
    DBPagamentos.SetSelecionados( sSelPagamentos );
  end;
end;

procedure TDlgConciliacaoBancaria.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
	DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgConciliacaoBancaria.FormActivate(Sender: TObject);
begin
  inherited;
	cmbConta.popupcontrol := DlgPopup.pnPopup;
  DBAjustesDescConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgConciliacaoBancaria.DBAjustesDescContaInitPopup(
  Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
end;

procedure TDlgConciliacaoBancaria.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaConciliacao(-1,cmbConta.LookUpKeyValue,C_Ajustes,C_Depositos);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgConciliacaoBancaria.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    ppLblObs.caption := 'Obs.';
    ppLblObs2.caption := 'Obs.';
    ppLblObs3.caption := 'Obs.';
    DBDepositosHISTORICO.caption := 'Obs.';
    DBPagamentosHISTORICO.caption := 'Obs.';
    DBAjustesMemo.caption := 'Obs.';
  end;

  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgConciliacaoBancaria.btComando2Click(Sender: TObject);
var sArq : string;
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ULTREL' ) then
 		exit;
	sArq := DMProjeto.RelPath+'Conta '+DMFinanceiro.C_ContasBcConta.AsString+'.raf';
	if not fileexists(sArq) then begin
		DlgMsg.ShowMsg(917);
    Exit;
  end;
  with AbrirRel do begin
  	ArchiveFileName := sArq;
    Print;
  end;

end;

procedure TDlgConciliacaoBancaria.VerOperaoOriginada1Click(
  Sender: TObject);
begin
  inherited;
  if TTS_QDBGrid(Sender).Name = 'DBDepositos' then
  	DBDepositosDblClick(Sender)
  else
  	DBPagamentosDblClick(Sender);
end;

procedure TDlgConciliacaoBancaria.dtDataDateChange(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

function TDlgConciliacaoBancaria.GerarArquivo;
var
  lDeviceClass: TppDeviceClass;
  lFileDevice: TppFileDevice;
  liIndex, nIndice: Integer;
  sArq : string;
begin
  result := '';
  sArq := Arquivo;
  {get the device class}
  lDeviceClass := ppDeviceClassForName('ArchiveFile');

  {create the file device}
  lFileDevice  := TppFileDevice(lDeviceClass.Create(Self));
{  nIndice := Salvar.FilterIndex*2;
  if pos('.',sArq) <= 0 then
  	sArq := sArq + '.'+SeparaStrings(SeparaStrings(Salvar.Filter,'|',nIndice),'.',2); }

  lFileDevice.Publisher := TppReport(Report).Publisher;
  lFileDevice.FileName := sArq;
  TppReport(Report).PrintToDevices;
  lFileDevice.Free;
  result := sArq;
end;

procedure TDlgConciliacaoBancaria.C_AjustesAfterPost(DataSet: TDataSet);
begin
  inherited;
	AtualizaSaldo;
end;


initialization
  RegisterClass(TDlgConciliacaoBancaria);

finalization
  unRegisterClass(TDlgConciliacaoBancaria);

end.
