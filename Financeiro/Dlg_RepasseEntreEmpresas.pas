unit Dlg_RepasseEntreEmpresas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls, dxfLabel, TS_LastDataObject,
  DlgMsg, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, Db,
  IBCustomDataSet, IBQuery, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxDBTLCl, dxGrClms, Provider, DBClient, TS_Shape, TS_Label,
  DBCtrls, TS_DBText, FormsComponent, TS_Image,
  TS_MaxPanel, TS_QDBGrid, Menus, teCtrls, TS_EffectsPanel,
  TS_CalcEdit, TS_PopupMenu, DM_Contabilidade,
  ppReport, ppSubRpt, ppCtrls, ppPrnabl, ppClass,
  ppStrtch, ppRegion, ppBands, ppCache, ppComm, ppRelatv, ppProd,
  TS_CheckBox, ppDB, ppDBPipe, Placemnt, BTOdeum, dxDBEdtr,
  TS_LookupComboBox;

type
  TDlgRepasseEntreEmpresas = class(TFrmModeloCadastros)
    Q_Cheques: TIBQuery;
    C_ChequesDS: TDataSource;
    C_Cheques: TClientDataSet;
    P_Cheques: TDataSetProvider;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesFORMAPAGAMENTO: TIntegerField;
    C_ChequesDESCRICAO: TStringField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesVALOR: TBCDField;
    C_ChequesNOME: TStringField;
    C_ChequesCONTAATUAL: TIntegerField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    lbCaixaDin: TStaticText;
    TS_Shape9: TTS_Shape;
    TS_Shape10: TTS_Shape;
    TS_Shape11: TTS_Shape;
    TS_Shape12: TTS_Shape;
    C_ChequesIDDOC: TIntegerField;
    DBCheques: TTS_QDBGrid;
    DBChequesNUMCHEQUE: TdxDBGridMaskColumn;
    DBChequesFORMAPAGAMENTO: TdxDBGridMaskColumn;
    DBChequesDESCRICAO: TdxDBGridMaskColumn;
    DBChequesVENCIMENTO: TdxDBGridDateColumn;
    DBChequesVALOR: TdxDBGridMaskColumn;
    DBChequesNOME: TdxDBGridMaskColumn;
    DBChequesCONTAATUAL: TdxDBGridMaskColumn;
    DBChequesIDDOC: TdxDBGridMaskColumn;
    edFicarei: TTS_CalcEdit;
    edRepassar: TTS_CalcEdit;
    C_Cheques_icSelecionado: TIntegerField;
    DBChequesParaRepassar: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridMaskColumn7: TdxDBGridMaskColumn;
    TS_Shape1: TTS_Shape;
    C_ChequesParaRepassar: TClientDataSet;
    C_ChequesRepassarDS: TDataSource;
    C_ChequesParaRepassarNumCheque: TIntegerField;
    C_ChequesParaRepassarFormaPagamento: TIntegerField;
    C_ChequesParaRepassarDescricao: TStringField;
    C_ChequesParaRepassarVencimento: TDateField;
    C_ChequesParaRepassarValor: TCurrencyField;
    C_ChequesParaRepassarNome: TStringField;
    C_ChequesParaRepassarContaAtual: TIntegerField;
    C_ChequesParaRepassarIDDoc: TIntegerField;
    C_ChequesParaRepassar_icSelecionado: TIntegerField;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_SpeedButton3: TTS_SpeedButton;
    TS_SpeedButton4: TTS_SpeedButton;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    lbChequesNoCaixa: TStaticText;
    lbChequesParaRepassar: TStaticText;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    lbCaixa: TTS_Label;
    lbCaixa2: TTS_Label;
    btContabilidade: TTS_SpeedButton;
    C_ChequesFAVORECIDO: TIntegerField;
    C_ChequesParaRepassarFavorecido: TIntegerField;
    TS_Image1: TTS_Image;
    TS_Image2: TTS_Image;
    ckbImprimir: TTS_CheckBox;
    ppRepasse: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    dbNaoRepassados: TppDBPipeline;
    dbRepassados: TppDBPipeline;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLine17: TppLine;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine18: TppLine;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport4: TppChildReport;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppSummaryBand3: TppSummaryBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    TS_Label10: TTS_Label;
    lbEmpresaOrigem: TTS_Label;
    TS_Image3: TTS_Image;
    TS_Label12: TTS_Label;
    cmbEmpresa: TTS_LookupComboBox;
    procedure RepassarTodos1Click(Sender: TObject);
    procedure NoRepassar1Click(Sender: TObject);
    procedure edFicareiChange(Sender: TObject);
    procedure edRepassarChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure DBChequesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBChequesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure TS_SpeedButton4Click(Sender: TObject);
    procedure DBChequesDblClick(Sender: TObject);
    procedure DBChequesParaRepassarDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure DBChequesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBChequesParaRepassarMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btComando1Click(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSaldoDin, nSaldoCheque : currency;
    nEmpresa, ID : integer;
    procedure Repassar(bTodos: boolean);
    procedure NaoRepassar(bTodos: boolean);
    function Validacoes(bMostrarMensagem: boolean):boolean;
    procedure Carregar;
  public
    { Public declarations }
  end;

var
  DlgRepasseEntreEmpresas: TDlgRepasseEntreEmpresas;

implementation

uses DM_Projeto, DM_Financeiro, funcoes, Frm_Contabilidade, Variants;

{$R *.DFM}

function TDlgRepasseEntreEmpresas.Validacoes;
var nTotalCheques : Currency;
begin
  result := false;
  if cmbEmpresa.LookupKeyValue = null then begin
  	DlgMsg.ShowMsg( 929, ['a Empresa Destino'] );
    cmbEmpresa.Setfocus;
    Exit;
  end;
  if cmbEmpresa.LookupKeyValue = -1 then begin
  	DlgMsg.ShowMsg( 8015 );
    cmbEmpresa.Setfocus;
    Exit;
  end;
  nTotalCheques := DBChequesParaRepassar.TotalGeral('Valor');
  if edRepassar.Value > nSaldoDin then begin
  	DlgMsg.ShowMsg( 934, [lbCaixa.Caption] );
    Exit;
  end;
  if (edRepassar.Value = 0) and (nTotalCheques=0) then begin
  	DlgMsg.ShowMsg( 951 );
    Exit;
  end;
  if DlgMsg.ShowMsg( 952, [iif(edRepassar.Value>0,currencystring+formatfloat('###,###,##0.00',edRepassar.Value)+' em Dinheiro',''),
                           iif(nTotalCheques>0,currencystring+formatfloat('###,###,##0.00',nTotalCheques)+' em Cheques','')] ) = 200 then
    Exit;
  result := true;
end;

procedure TDlgRepasseEntreEmpresas.RepassarTodos1Click(Sender: TObject);
begin
  inherited;
  with Q_Cheques do begin
    disablecontrols;
  	first;
    while not Eof do begin
    	Edit;
      fieldbyname('repassar').asString := 'S';
      Next;
    end;
    enablecontrols;
  end;
end;

procedure TDlgRepasseEntreEmpresas.NoRepassar1Click(Sender: TObject);
begin
  inherited;
  with Q_Cheques do begin
    disablecontrols;
  	first;
    while not Eof do begin
    	Edit;
      fieldbyname('repassar').asString := 'N';
      Next;
    end;
    enablecontrols;
  end;

end;

procedure TDlgRepasseEntreEmpresas.edFicareiChange(Sender: TObject);
begin
  inherited;
	edRepassar.Value := nSaldoDin - edFicarei.Value;
end;

procedure TDlgRepasseEntreEmpresas.edRepassarChange(Sender: TObject);
begin
  inherited;
  edFicarei.Value 		:= nSaldoDin - edRepassar.Value;
end;

procedure TDlgRepasseEntreEmpresas.btGravarClick(Sender: TObject);
var sIDDoc : string;
begin
  inherited;
  if not Validacoes(true) then
    exit;

  nEmpresa := cmbEmpresa.LookUpKeyValue;

	with DMFinanceiro do begin
   try
  	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    sIDDoc := DBChequesParaRepassar.Distinct( 'IDDoc' );

    RepasseEntreEmpresas( edRepassar.Value, DBChequesParaRepassar.TotalGeral('Valor'), sIDDoc, nEmpresa);

    // Adriano
    //DMContabil.ContabilizaRepasse(-1,DMFinanceiro.nContaPadrao,1,edRepassar.Value,C_ChequesParaRepassar);

    //if not DMContabil.Salvar(-1) then
    //  raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    if ckbImprimir.Checked then begin
    	DMProjeto.ImprimirCabecalho( regCab );
      ppRepasse.Print;
    end;

    try
      SendLastDataObject(Self.Name, 'OPERACOESFINANCEIRAS', 'OPERACAO',0, false );
    except
    end;

   	Close;
   except
    on E: Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
       DlgMsg.ShowMsg( 479 , e.message, '' );
      DMProjeto.GeraLog('Repasse',e.message);
    end;
   end;
  end;
end;

procedure TDlgRepasseEntreEmpresas.DBChequesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Node: TdxTreeListNode;
  I, J: Integer;
  AFieldName: string;
  AValue: Variant;
  SourceGrid, TargetGrid: TTS_QDBGrid;
  SourceData, TargetData: TDataSet;
begin
  SourceGrid := Source as TTS_QDBGrid;
  TargetGrid := Sender as TTS_QDBGrid;
  if SourceGrid.Name = TargetGrid.Name then
  	exit;
  if (SourceGrid.QuantidadeSelecionada = 0) then 
		Sourcegrid.SetSelecionados( IntToStr(ID) );
  if SourceGrid.Name = 'DBCheques' then
  	Repassar(false)
  else
  	NaoRepassar(false);
end;

procedure TDlgRepasseEntreEmpresas.DBChequesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TTS_QDBGrid);
end;

procedure TDlgRepasseEntreEmpresas.Carregar;
begin
  lbCaixa.Caption := DMFinanceiro.Conta_Nome( 1 );
  lbCaixa2.Caption:= lbCaixa.Caption;
	with C_Cheques do begin
  	close;
    open;
  end;
  C_ChequesParaRepassar.EmptyDataSet;
  nSaldoCheque:= DBCheques.TotalGeral('Valor');
  nSaldoDin := DMFinanceiro.SaldoConta( 1, DMProjeto.dDataSistema, '5');
  lbChequesNoCaixa.caption := formatfloat('###,###,##0.00', nSaldoCheque);
  lbChequesParaRepassar.caption := formatfloat('###,###,##0.00', DBChequesParaRepassar.TotalGeral('Valor'));
  lbCaixaDin.Caption := formatfloat('###,###,##0.00', nSaldoDin );
  edRepassar.Value    := 0;
end;


procedure TDlgRepasseEntreEmpresas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  lbEmpresaOrigem.Caption := DMProjeto.sNomeEmpresa;
	C_ChequesParaRepassar.CreateDataSet;
  Carregar;
  if DMProjeto.ExisteParametrosForm then
     ckbImprimir.Checked := false;
end;

procedure TDlgRepasseEntreEmpresas.Repassar( bTodos : boolean );
var sSelecionados : string;
		i : integer;
begin
  inherited;
  if C_Cheques.RecordCount <= 0 then
  	Exit;
  if bTodos then begin
    DBCheques.SelectAll;
    sSelecionados := DBCheques.Selecionados;
  end else begin
  	if DBCheques.Selecionados = '' then
  		DBCheques.Selecionar;
  	sSelecionados := DBCheques.Selecionados;
  end;
  DBCheques.FirstSelected;
	for i:=1 to ContaStrings(sSelecionados,',') do begin
  	C_ChequesParaRepassar.Append;
    C_ChequesParaRepassarNumCheque.AsInteger 			:= C_ChequesNumCheque.AsInteger;
    C_ChequesParaRepassarFormaPagamento.AsInteger := C_ChequesFormaPagamento.AsInteger;
    C_ChequesParaRepassarDescricao.AsString 			:= C_ChequesDescricao.AsString;
    C_ChequesParaRepassarVencimento.Value 				:= C_ChequesVencimento.Value;
    C_ChequesParaRepassarValor.Value 							:= C_ChequesValor.Value;
    C_ChequesParaRepassarNome.Value 							:= C_ChequesNome.Value;
    C_ChequesParaRepassarContaAtual.Value 				:= C_ChequesContaAtual.Value;
    C_ChequesParaRepassarIDDoc.Value 							:= C_ChequesIDDoc.Value;
    C_ChequesParaRepassarFavorecido.Value 				:= C_ChequesFavorecido.Value;
    C_ChequesParaRepassar.Post;
    DBCheques.NextSelected;
  end;
	for i:=1 to ContaStrings(sSelecionados,',') do begin
     if C_Cheques.locate('iddoc',SeparaStrings(sSelecionados,',',i),[]) then
     	C_Cheques.Delete;
  end;
  lbChequesNoCaixa.caption 			:= formatfloat('###,###,##0.00', DBCheques.TotalGeral('Valor'));
  lbChequesParaRepassar.caption := formatfloat('###,###,##0.00', DBChequesParaRepassar.TotalGeral('Valor'));
end;

procedure TDlgRepasseEntreEmpresas.NaoRepassar( bTodos : boolean );
var sSelecionados : string;
		i : integer;
begin
  inherited;
  if C_ChequesParaRepassar.RecordCount <= 0 then
  	exit;
  if bTodos then begin
  	DBChequesParaRepassar.SelectAll;
		sSelecionados := DBChequesParaRepassar.Selecionados;
  end else begin
  	if DBChequesParaRepassar.Selecionados = '' then
  		DBChequesParaRepassar.Selecionar;
  	sSelecionados := DBChequesParaRepassar.Selecionados;
  end;
  DBChequesParaRepassar.FirstSelected;
	for i:=1 to ContaStrings(sSelecionados,',') do begin
  	C_Cheques.Append;
    C_ChequesNumCheque.AsInteger 			:= C_ChequesParaRepassarNumCheque.AsInteger;
    C_ChequesFormaPagamento.AsInteger	:= C_ChequesParaRepassarFormaPagamento.AsInteger;
    C_ChequesDescricao.AsString 			:= C_ChequesParaRepassarDescricao.AsString;
    C_ChequesVencimento.Value 				:= C_ChequesParaRepassarVencimento.Value;
    C_ChequesValor.Value						 	:= C_ChequesParaRepassarValor.Value;
    C_ChequesNome.Value 							:= C_ChequesParaRepassarNome.Value;
    C_ChequesContaAtual.Value 				:= C_ChequesParaRepassarContaAtual.Value;
    C_ChequesIDDoc.Value 							:= C_ChequesParaRepassarIDDoc.Value;
    C_ChequesFavorecido.Value 				:= C_ChequesParaRepassarFavorecido.Value;
    C_Cheques.Post;
    DBChequesParaRepassar.NextSelected;
  end;
	for i:=1 to ContaStrings(sSelecionados,',') do begin
     if C_ChequesParaRepassar.locate('IDDoc',SeparaStrings(sSelecionados,',',i),[]) then
     		C_ChequesParaRepassar.Delete;
  end;
  lbChequesNoCaixa.caption 			:= formatfloat('###,###,##0.00', DBCheques.TotalGeral('Valor'));
  lbChequesParaRepassar.caption := formatfloat('###,###,##0.00', DBChequesParaRepassar.TotalGeral('Valor'));
end;


procedure TDlgRepasseEntreEmpresas.TS_SpeedButton1Click(Sender: TObject);
begin
	Repassar( false );
end;

procedure TDlgRepasseEntreEmpresas.TS_SpeedButton2Click(Sender: TObject);
begin
	NaoRepassar( false );
end;

procedure TDlgRepasseEntreEmpresas.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
	Repassar( true );
end;

procedure TDlgRepasseEntreEmpresas.TS_SpeedButton4Click(Sender: TObject);
begin
  inherited;
	NaoRepassar( true );
end;

procedure TDlgRepasseEntreEmpresas.DBChequesDblClick(Sender: TObject);
begin
  inherited;
	Repassar( false );
end;

procedure TDlgRepasseEntreEmpresas.DBChequesParaRepassarDblClick(Sender: TObject);
begin
  inherited;
	NaoRepassar( false );
end;

procedure TDlgRepasseEntreEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgRepasseEntreEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    btContabilidade.visible := false;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgRepasseEntreEmpresas.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not Validacoes(false) then
  	Exit;
  // Adriano
  DMContabil.ContabilizaRepasse(-1,DMFinanceiro.nContaPadrao,1,edRepassar.Value,C_ChequesParaRepassar);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgRepasseEntreEmpresas.DBChequesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ID := C_ChequesIDDoc.Value;
end;

procedure TDlgRepasseEntreEmpresas.DBChequesParaRepassarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ID := C_ChequesParaRepassarIDDoc.Value;
end;

procedure TDlgRepasseEntreEmpresas.btComando1Click(Sender: TObject);
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HistRepasse' ) then
 		exit;
	with DMProjeto do begin
		SetParametrosForm([58,'Histórico de Transferências para outra Empresa',false]);
    CriarForm('DlgHistoricoOperacoes',self,true);
    LimparParametrosForm;
    Carregar;
  end;
end;

procedure TDlgRepasseEntreEmpresas.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := lbCaixa.Caption;
end;

procedure TDlgRepasseEntreEmpresas.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := DateToStr(DMProjeto.dDataSistema);
end;

procedure TDlgRepasseEntreEmpresas.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00', nSaldoDin);
end;

procedure TDlgRepasseEntreEmpresas.ppLabel26GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00', nSaldoCheque);
end;

procedure TDlgRepasseEntreEmpresas.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00', edRepassar.Value );
end;

procedure TDlgRepasseEntreEmpresas.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := lbChequesParaRepassar.Caption;
end;

procedure TDlgRepasseEntreEmpresas.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00', edFicarei.Value );
end;

procedure TDlgRepasseEntreEmpresas.ppLabel28GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := lbChequesNoCaixa.Caption;
end;

procedure TDlgRepasseEntreEmpresas.ppLabel20GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := DMProjeto.sLoginName;
end;

procedure TDlgRepasseEntreEmpresas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;RETIRADAS')>0 then
    Carregar;
end;

end.
