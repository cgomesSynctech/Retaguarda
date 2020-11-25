unit Dlg_Reparcelamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditDate, 
  DBClient, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBEdtr,
  TS_DBLookupTipoFav, dxEditor, TS_DBButtonEdit, TS_DBEditFavorecido,
  FormsComponent, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, IBCustomDataSet, IBQuery,
  Provider, TS_DBLookupComboBox, TS_DBEditNumber, TS_Shape, TS_CheckBox, DM_Contabilidade,
  ppReport, ppSubRpt, ppBands, ppCtrls, ppPrnabl, ppClass, ppStrtch,
  ppRegion, ppDB, ppDBPipe, ppCache, ppComm, ppRelatv, ppProd, DBCtrls,
  TS_DBText, Variants, BTOdeum, Placemnt;

type
  TDlgReparcelamento = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    dfFavorecido: TTS_DBEditFavorecido;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    DBParcelas: TTS_QDBGrid;
    TS_Panel2: TTS_Panel;
    C_Reparcelamento: TClientDataSet;
    C_ReparcelamentoFavorecido: TIntegerField;
    C_ReparcelamentoData: TDateField;
    TS_Label1: TTS_Label;
    dfData: TTS_DBEditDate;
    C_ReparcelamentoDS: TDataSource;
    C_ReparcelamentoNome: TStringField;
    C_Parcelas: TClientDataSet;
    P_Parcelas: TDataSetProvider;
    Q_Parcelas: TIBQuery;
    C_ParcelasDS: TDataSource;
    C_ParcelasTITULO: TStringField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasFALTARECEBER: TBCDField;
    C_ParcelasVALORPAGO: TBCDField;
    C_ParcelasCOMPETENCIA: TDateField;
    DBParcelasTITULO: TdxDBGridMaskColumn;
    DBParcelasVENCIMENTO: TdxDBGridDateColumn;
    DBParcelasFALTARECEBER: TdxDBGridMaskColumn;
    DBParcelasVALORPAGO: TdxDBGridMaskColumn;
    DBParcelasCOMPETENCIA: TdxDBGridDateColumn;
    C_ParcelasID: TIntegerField;
    C_ParcelasDiasAtraso: TIntegerField;
    DBParcelasDiasAtraso: TdxDBGridColumn;
    TS_Shape1: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dfDescontos: TTS_DBEditNumber;
    dfJuros: TTS_DBEditNumber;
    TS_Label6: TTS_Label;
    cmbPlano: TTS_DBLookupComboBox;
    DBNovasParcelas: TTS_QDBGrid;
    C_NovasParcelas: TClientDataSet;
    C_NovasParcelasVencimento: TDateField;
    C_NovasParcelasValor: TCurrencyField;
    C_NovasParcelasDS: TDataSource;
    DBNovasParcelasParcela: TdxDBGridMaskColumn;
    DBNovasParcelasVencimento: TdxDBGridDateColumn;
    DBNovasParcelasValor: TdxDBGridCurrencyColumn;
    C_PlanoDS: TDataSource;
    P_Plano: TDataSetProvider;
    C_Planos: TClientDataSet;
    Q_Plano: TIBQuery;
    C_PlanosPLANOPAGAMENTO: TIntegerField;
    C_PlanosDESCRICAO: TStringField;
    C_PlanosPDESCONTO: TBCDField;
    C_PlanosDIAS_ANTECIPACAO: TIntegerField;
    C_PlanosJUROS: TBCDField;
    C_PlanosQTDPARCELAS: TIntegerField;
    C_PlanosINTERVALOS: TStringField;
    C_PlanosTIPO: TStringField;
    C_PlanosJUROSNEGOCIAVEIS: TStringField;
    C_PlanosPERIODICIDADE: TIntegerField;
    C_ReparcelamentoPlano: TIntegerField;
    C_ReparcelamentoDescontos: TCurrencyField;
    C_ReparcelamentoJuros: TCurrencyField;
    C_ReparcelamentoDescPlano: TStringField;
    C_Parcelas_icSelecionado: TIntegerField;
    C_NovasParcelasCompetencia: TDateField;
    C_NovasParcelasJurosPlano: TCurrencyField;
    C_NovasParcelasDataAntecipacao: TDateField;
    C_NovasParcelasValorDescAntecipado: TCurrencyField;
    C_ParcelasDATAATRASADO: TDateField;
    C_NovasParcelasParcela: TStringField;
    DBParcelasDATAATRASADO: TdxDBGridColumn;
    ckbReceberAgora: TTS_CheckBox;
    C_ParcelasJuros: TCurrencyField;
    C_ParcelasSaldo: TCurrencyField;
    DBParcelasColumn9: TdxDBGridColumn;
    DBParcelasColumn10: TdxDBGridColumn;
    ppmGrid: TTS_PopupMenu;
    btContabilidade: TTS_SpeedButton;
    C_ParcelasVENDA: TIntegerField;
    C_ParcelasCLIENTE: TIntegerField;
    ckbImprimir: TTS_CheckBox;
    ppReparcelamento: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBNovasParcelas: TppDBPipeline;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    subParcelas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBParcelas: TppDBPipeline;
    subNovasParcelas: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel16: TppLabel;
    ppShape12: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBReparcelamento: TppDBPipeline;
    TS_Bevel2: TTS_Bevel;
    TS_DBText1: TTS_DBText;
    C_ReparcelamentoTotal: TCurrencyField;
    ppLabel7: TppLabel;
    lbTotalReparcelameno: TppLabel;
    ppShape7: TppShape;
    rgTotais: TppRegion;
    dfReparcelar: TTS_DBEditNumber;
    TS_Label7: TTS_Label;
    C_ReparcelamentoValorReparcelado: TCurrencyField;
    C_PlanosESQUEMAPARCELAS: TStringField;
    ppRegion2: TppRegion;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppShape8: TppShape;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLine9: TppLine;
    ppShape13: TppShape;
    ppLine10: TppLine;
    ppLabel21: TppLabel;
    ppPago: TppImage;
    C_NovasParcelasValorPago: TCurrencyField;
    Q_SQL: TIBQuery;
    pnCancelado: TdxfLabel;
    ppLabel22: TppLabel;
    lbTotalPago: TppLabel;
    ppLabel23: TppLabel;
    lbValorAtualizado: TppLabel;
    ppmParcelas: TTS_PopupMenu;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    TS_SpeedButton1: TTS_SpeedButton;
    C_TipoCobrancaDs: TDataSource;
    Q_TipoCobranca: TIBQuery;
    dblcTipoCobranca: TTS_DBLookupComboBox;
    TS_Label8: TTS_Label;
    C_TipoCobranca: TClientDataSet;
    C_ReparcelamentoTipoCobranca: TIntegerField;
    C_TipoCobrancaTIPOCOBRANCA: TIntegerField;
    C_TipoCobrancaDESCRICAO: TStringField;
    C_TipoCobrancaDESATIVADO: TStringField;
    C_ReparcelamentoDescTipoCobranca: TStringField;
    procedure C_ParcelasCalcFields(DataSet: TDataSet);
    procedure DBParcelasTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ReparcelamentoNewRecord(DataSet: TDataSet);
    procedure cmbPlanoChange(Sender: TObject);
    procedure DBParcelasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_NovasParcelasNewRecord(DataSet: TDataSet);
    procedure btLimparClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure dfJurosChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure C_NovasParcelasAfterPost(DataSet: TDataSet);
    procedure C_ReparcelamentoDescontosChange(Sender: TField);
    procedure DBNovasParcelasEdited(Sender: TObject;
      Node: TdxTreeListNode);
    procedure DBNovasParcelasEditing(Sender: TObject;
      Node: TdxTreeListNode; var Allow: Boolean);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure ppPagoPrint(Sender: TObject);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure dfDescontosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dfJurosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TS_SpeedButton1Click(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nParc : integer;
    TotalPago, Juros, nValorParcelaBE : Currency;
    IDReparcelamentoHist: integer;
    sTitulos : string;
    procedure RatearDifProxParcelas(nParcelaDif : Integer; nDiferenca: Currency);
    procedure GerarParcelamento(nEntradaFixa : Currency = 0);
    function 	Validacoes : boolean;
    function  Gravar : boolean;
    procedure Imprimir;
    procedure getHistorico(IDReparcelamento: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgReparcelamento: TDlgReparcelamento;

implementation

uses DM_Projeto, funcoes, math, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgReparcelamento.C_ParcelasCalcFields(DataSet: TDataSet);
begin
  inherited;
	DataSet['DiasAtraso'] := DMProjeto.dDataSistema - C_ParcelasDataAtrasado.value;
  if DataSet['DiasAtraso'] >0 then
  	DataSet['Juros']			:= DMFinanceiro.CalculaJuros( C_ParcelasFaltaReceber.Value, Juros, C_ParcelasDiasAtraso.Value)
  else begin
  	DataSet['Juros']			:= 0;
    DataSet['DiasAtraso'] := 0;
  end;
  DataSet['Saldo'] := C_ParcelasFaltaReceber.AsCurrency + C_ParcelasJuros.AsCurrency;
end;

procedure TDlgReparcelamento.DBParcelasTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  if C_Reparcelamento.State in [dsBrowse] then
  	C_Reparcelamento.Edit;
	C_ReparcelamentoTotal.Value := DBParcelas.ValorSelecionado('FaltaReceber');
  C_ReparcelamentoJuros.Value := DBParcelas.TotalSelecionado('Juros');
  dfJurosChange(sender);
  if cmbPlano.Text <> '' then
		GerarParcelamento;
end;


procedure TDlgReparcelamento.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	with C_Parcelas do begin
  	close;
    fetchparams;
    params.parambyname('cliente').asInteger := dfFavorecido.ID;
    open;
  end;
end;

procedure TDlgReparcelamento.FormsComponentBeforeClearParams(
  Sender: TObject);
var sJuros : string;
begin
  inherited;
  nParc := 1;
  if DMProjeto.Parametro('Juros')<>'' then begin
    sJuros := replace(DMProjeto.Parametro('Juros'),',',decimalseparator);
    sJuros := replace(sJuros,'.',decimalseparator);
  	Juros := StrToFloat(sJuros);
  end else
    Juros := 0;
	with C_Reparcelamento do begin
  	CreateDataSet;
    Append;
  end;
  C_NovasParcelas.CreateDataSet;
  if DMProjeto.ExisteParametrosForm then begin
  	if DMProjeto.getParametrosForm(0) <> null then
    	getHistorico( DMProjeto.getParametrosForm(0) )
    else begin
			dfFavorecido.ID := DMProjeto.getParametrosForm(1);
      C_Parcelas.Locate('ID',DMProjeto.getParametrosForm(2),[]);
      DBParcelas.SelecionarLinha;
    end;
  end;
  C_TipoCobranca.Open;
end;

procedure TDlgReparcelamento.C_ReparcelamentoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet['Data']        := DMProjeto.dDataSistema;
  DataSet['Descontos'] 	 := 0;
  DataSet['Juros'] 		 := 0;
  DataSet['TipoCobranca']:= 3;
end;

procedure TDlgReparcelamento.GerarParcelamento;
  procedure LimparParcelas;
  begin
    with C_NovasParcelas do begin
      DisableControls;
      First;
      while not eof do
        Delete;

      EnableControls;
    end;
  end;
var
  nDif, nTotalParcelas, nDescontoLimpo : Currency;
  nValorVenda, nCentavos : Currency;
  sEntrada, sParcelas, Str : String;
  slParcelas : TStringList;
  i : Integer;
begin

//  C_Planos.Locate('PlanoPagamento', C_ReparcelamentoPlano.Value, []);

  {Parametros do Parcelamento}
  nValorVenda := C_ReparcelamentoValorReparcelado.Value;
  nCentavos := 0.01 * C_PlanosQtdParcelas.Value;


  DMProjeto.GerarPlanoPgto(nil, nValorVenda, nEntradaFixa, C_PlanosJuros.Value, C_ReparcelamentoData.Value,
                           C_ReparcelamentoPlano.Value, sEntrada, sParcelas );


  nTotalParcelas := 0;
  nParc := 1;
  try
    {Gerando o Parcelamento}

    LimparParcelas;

    if (sEntrada <> '') then begin

      C_NovasParcelas.Append;

      //Numero da Parcela
      C_NovasParcelasParcela.AsString := SeparaStrings(sEntrada, ';', 1);

      //Data do Vencimento
      C_NovasParcelasVencimento.asString := SeparaStrings(sEntrada, ';', 2);

      //Valor da Parcela
      C_NovasParcelasValor.asString := SeparaStrings(sEntrada, ';', 3);

      C_NovasParcelasCompetencia.Value := C_ReparcelamentoData.Value;

      C_NovasParcelasJurosPlano.Value		:= 0;

      C_NovasParcelas.Post;

      nTotalParcelas := nTotalParcelas + C_NovasParcelasValor.asCurrency;

    end;

    if sParcelas <> '' then begin
      slParcelas := TStringList.Create;
      slParcelas.SetText(PChar(sParcelas));
      for i := 0 to slParcelas.Count - 1 do begin
        str := slParcelas[i];

        if Str = '' then
          Continue;

        C_NovasParcelas.Append;

        //Numero da Parcela
        C_NovasParcelasParcela.AsString := SeparaStrings(str, ';', 1);

        //Data do Vencimento
        C_NovasParcelasVencimento.asString := SeparaStrings(str, ';', 2);

        //Valor da Parcela
        C_NovasParcelasValor.asString := SeparaStrings(str, ';', 3);

        C_NovasParcelasCompetencia.Value := C_ReparcelamentoData.Value;

        C_NovasParcelasJurosPlano.asString := SeparaStrings(str, ';', 4);

        if C_PlanosPDesconto.Value > 0 then begin
          C_NovasParcelasVALORDESCANTECIPADO.asString:= SeparaStrings(str, ';', 5);
          C_NovasParcelasDATAANTECIPACAO.asString := SeparaStrings(str, ';', 6);
        end;

        C_NovasParcelas.Post;

        nTotalParcelas := nTotalParcelas + C_NovasParcelasValor.asCurrency;

      end; //for i:=1 to ...

      slParcelas.Free;
    end;
  finally
    {Verificando se houve Juros que modificam o valor da venda, ou se houve desconto}
    {A atualização do Total fica por conta da função AtualizarTotalFinal no change dos campos}

    if nTotalParcelas > 0 then begin
      nDif :=  nTotalParcelas - nValorVenda;
      if (nDif <> 0) and (ABS(nDif) <= nCentavos) then begin
        C_NovasParcelas.Last;
        C_NovasParcelas.Edit;
        C_NovasParcelasValor.asCurrency := C_NovasParcelasValor.asCurrency - nDif;
        C_NovasParcelas.Post;
      end;
    end;

    C_NovasParcelas.First;
  end;

end;

procedure TDlgReparcelamento.cmbPlanoChange(Sender: TObject);
begin
  inherited;
	GerarParcelamento;
end;

procedure TDlgReparcelamento.DBParcelasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ANode.HasChildren then begin
		if DBParcelas.getFieldValue( ANode, 'DataAtrasado',0 ) < DMProjeto.dDataSistema then
  		AFont.Color := clRed
    else if DBParcelas.getFieldValue( ANode, 'DataAtrasado',0 ) = DMProjeto.dDataSistema then
      AFont.Color := clGreen
  	else
  		AFont.Color := clBlack;
  end;
end;

procedure TDlgReparcelamento.C_NovasParcelasNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_NovasParcelasParcela.Value 		:= IntToStr(nParc);
	C_NovasParcelasVencimento.Value := DMProjeto.dDataSistema;
  C_NovasParcelasValorPago.Value  := 0;
  C_NovasParcelasDataAntecipacao.Value := 0;
  C_NovasParcelasValorDescAntecipado.Value := 0;
end;

procedure TDlgReparcelamento.btLimparClick(Sender: TObject);
begin
  inherited;
	IDReparcelamentoHist := 0;
  nParc := 1;
  totalpago := 0;
  C_Parcelas.Close;
  C_NovasParcelas.EmptyDataSet;
	C_Reparcelamento.EmptyDataSet;
  C_Reparcelamento.Append;
  dfFavorecido.SetFocus;
  btComando2.Visible   := false;
  pnCancelado.Visible  := false;
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

function TDlgReparcelamento.Validacoes: boolean;
begin
	result := false;

	if C_Reparcelamento.State in  [dsEdit,dsInsert] then
  	C_Reparcelamento.Post;

	if C_NovasParcelas.State in  [dsEdit,dsInsert] then
  	C_NovasParcelas.Post;

  if pnCancelado.Visible then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  if dfFavorecido.ID = 0 then begin
  	DlgMsg.ShowMsg(929, ['o cliente']);
    exit;
  end;
	if DBParcelas.Selecionados = '' then begin
  	DlgMsg.ShowMsg(929, ['as parcelas a serem renegociadas']);
    DBParcelas.SetFocus;
    exit;
  end;
	if C_NovasParcelas.IsEmpty then begin
  	DlgMsg.ShowMsg(929, ['as novas parcelas que passarão a vigorar']);
    DBNovasParcelas.SetFocus;
    exit;
  end;
  if DBParcelas.TotalSelecionado('Saldo') > DBNovasParcelas.TotalGeral('Valor') then begin
  	if DlgMsg.ShowMsg(954, [formatfloat('###,###,##0.00',DBNovasParcelas.TotalGeral('Valor')),
                         		formatfloat('###,###,##0.00',(DBParcelas.TotalSelecionado('Saldo')))]) = 200 then
  		exit;
  end;
  result := true;
end;

function TDlgReparcelamento.Gravar: boolean;
begin
  result := false;
  with DMProjeto do begin
    if not DB_Projeto.DefaultTransaction.InTransaction then
    DB_Projeto.DefaultTransaction.StartTransaction;
    try

      if IDReparcelamentoHist <> 0 then begin
       	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'AltReparc' ) then
          exit;
    	DMFinanceiro.CancelarOperacao( IntToStr(IDReparcelamentoHist), 48);
      end;

      IDReparcelamentoHist := DMFinanceiro.Reparcelamento( dfFavorecido.ID, dfData.Date, DBParcelas.Selecionados, C_NovasParcelas, C_ReparcelamentoTotal.Value, C_ReparcelamentoJuros.Value, C_ReparcelamentoDescontos.Value, C_ReparcelamentoPlano.Value, sTitulos, C_ReparcelamentoTipoCobranca.AsInteger );

      DMContabil.ContabilizaReparcelamento(IDReparcelamentoHist,C_Reparcelamento,C_Parcelas, C_NovasParcelas);

      if not DMContabil.Salvar(IDReparcelamentoHist) then
        raise Exception.Create(DMProjeto.GetMsg(3117));

      	if DB_Projeto.DefaultTransaction.InTransaction then
          DB_Projeto.DefaultTransaction.CommitRetaining;
    except
       on E:Exception do begin
  			if DB_Projeto.DefaultTransaction.InTransaction then
    			DB_Projeto.DefaultTransaction.RollBackRetaining;
      	DlgMsg.ShowMsg(1,e.message, '');
       end;
    end;
  end;
  result := true;
end;

procedure TDlgReparcelamento.btComando1Click(Sender: TObject);
var nResult : integer;
begin
  inherited;
 	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'HISTORICO' ) then
 		exit;
  with DMProjeto do begin
		SetParametrosForm([48,'Histórico de Reparcelamentos',true]);
    nResult := CriarForm('DlgHistoricoOperacoes',self,true);
    if ExisteParametrosForm then
      if nResult = 1 then
    		getHistorico( getParametrosForm(0) );
    LimparParametrosForm;
  end;
end;

procedure TDlgReparcelamento.getHistorico( IDReparcelamento : integer );
var sParcelas : string;
		bCancelado : boolean;
begin
  btLimparClick(Self);
	with DMFinanceiro.Q_SQL do begin
		close;
    sql.text := 'select iddoc from operacoesfinanceirasdet where operacao = '+IntToStr(IDReparcelamento);
    open;
    first;
    sParcelas := '';
    while not eof do begin
    	sParcelas := sParcelas + fields[0].AsString + ',';
      next;
    end;
    sParcelas := Copy(sParcelas,1,length(sParcelas)-1);
    if (trim(sParcelas) <> '') then begin
    	with Q_SQL do begin
    		close;
      	sql.text := 'select count(*) from depositostitulos where titulo in ('+sParcelas+')';
      	open;
      	if fields[0].AsInteger > 0 then begin
      		close;
        	DlgMsg.ShowMsg(600);
        	Exit;
      	end;
    	end;
    end;
		IDReparcelamentoHist := IDReparcelamento;
		close;
    sql.text := 'select * from operacoesfinanceiras where operacao = '+IntToStr(IDReparcelamento);
    open;
    C_Reparcelamento.Edit;
    C_ReparcelamentoData.Value := fieldbyname('data').asDateTime;
    C_ReparcelamentoTotal.Value:= fieldbyname('valoroperacao').ascurrency;
    C_ReparcelamentoJuros.Value:= fieldbyname('valorjuros').ascurrency;
    C_ReparcelamentoDescontos.Value	:= fieldbyname('valorrecebido').ascurrency;
		C_ReparcelamentoValorReparcelado.Value := C_ReparcelamentoTotal.Value+dfJuros.Value-dfDescontos.Value;
    C_ReparcelamentoPlano.Value			:= fieldbyname('floating').AsInteger;
    sParcelas := fieldbyname('historico').AsString;
		bCancelado	:= fieldbyname('situacao').asString = 'C';
    dfFavorecido.ID := fieldbyname('favorecido').asInteger;

    close;
    sql.text := 'select t.id, t.titulo, t.competencia, t.vencimento, t.dataatrasado, '+
    						't.cliente, t.venda, t.faltareceber '+
    						'from titulosareceber t '+
                'where t.ID IN ('+iif(sParcelas='','-1',sParcelas)+')';
    open;

    while not EOF do begin
    	C_Parcelas.Append;
      C_ParcelasDataAtrasado.Value:= fieldbyname('dataatrasado').asdatetime;
      C_ParcelasID.Value := fieldbyname('id').asInteger;
      C_ParcelasTitulo.Value 			:= fieldbyname('titulo').asString;
      C_ParcelasCompetencia.Value := fieldbyname('competencia').asdatetime;
      C_ParcelasVencimento.Value  := fieldbyname('vencimento').asdatetime;
      C_ParcelasFaltaReceber.Value:= fieldbyname('faltareceber').asCurrency;
      C_ParcelasCliente.Value 		:= fieldbyname('cliente').asInteger;
      C_ParcelasVenda.Value 			:= fieldbyname('venda').asInteger;
      C_Parcelas_icSelecionado.Value := 1;
      C_Parcelas.Post;
      Next;
    end;

		close;
    sql.text := 'select o.iddoc, o.obs as parcela, o.vencimento, o.vendedor as dataantecipacao, '+
    						'o.valor, o.juros as valordescantecipado '+
    						'from operacoesfinanceirasdet o '+
                'where o.operacao = '+IntToStr(IDReparcelamento);
    open;
    sTitulos := '';
    while not eof do begin
    	C_NovasParcelas.Append;
      C_NovasParcelasParcela.Value 			:= fieldbyname('parcela').asString;
      C_NovasParcelasCompetencia.Value 	:= C_ReparcelamentoData.Value;
      C_NovasParcelasVencimento.Value  	:= fieldbyname('vencimento').asdatetime;
      C_NovasParcelasValor.Value				:= fieldbyname('valor').asCurrency;
      C_NovasParcelasDataAntecipacao.AsVariant:= iif(fieldbyname('dataantecipacao').asinteger=0,null,fieldbyname('dataantecipacao').Value);
      C_NovasParcelasValorDescAntecipado.AsString:= fieldbyname('valordescantecipado').asString;
      C_NovasParcelas.Post;

      if C_Parcelas.Locate('ID', fieldbyname('iddoc').asInteger,[]) then
      	C_Parcelas.Delete;

      sTitulos := CExp(sTitulos,',') + fieldbyname('iddoc').AsString;
      Next;
    end;

  	btComando2.Visible   := not bCancelado;
    pnCancelado.Visible  := bCancelado;
    close;
  end;
end;

procedure TDlgReparcelamento.dfJurosChange(Sender: TObject);
begin
  inherited;
  if C_Reparcelamento.State in [dsbrowse] then
     C_Reparcelamento.Edit;
  C_ReparcelamentoDescontosChange(C_ReparcelamentoDescontos);
	if cmbPlano.Text <> '' then
  	GerarParcelamento;
end;

procedure TDlgReparcelamento.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'S' ) then
   		exit;
  if (IDReparcelamentoHist <> 0) and (not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' )) then
   		exit;
  if Validacoes then
    if Gravar then begin
      if ckbReceberAgora.Checked then begin
      	DMProjeto.SetParametrosForm([null,dfFavorecido.ID,sTitulos]);
        DMProjeto.CriarForm('DlgDepositos',self,true);
      end;
    	if ckbImprimir.Checked then
        	Imprimir;
     	btLimparClick(sender);
    end;
end;

procedure TDlgReparcelamento.Imprimir;
var i : integer;
		totalparcelas : currency;
begin
	with C_Parcelas do begin
  	Filtered := false;
    Filter   := '_icSelecionado = 1';
    Filtered := true;
  end;
  with C_NovasParcelas do begin
  	DisableControls;
    First;
    i := 1;
    totalpago := 0;
    while not eof do begin
  		with Q_SQL do begin
    		close;
    		sql.text := 'select sum(valor+creditoutilizado+descontos) from depositostitulos where titulo = '+SeparaStrings(sTitulos,',',i);
    		open;
        if recordcount > 0 then begin
        	C_NovasParcelas.Edit;
          C_NovasParcelasValorPago.Value := fields[0].AsCurrency;
          C_NovasParcelas.Post;
          totalpago := totalpago + fields[0].AsCurrency;
        end;
      end;
      next;
      inc(i);
    end;
    First;
    EnableControls;
  end;
  Q_SQL.Close;
  totalparcelas := DBNovasParcelas.TotalGeral('Valor');
  lbTotalReparcelameno.caption 	:= formatfloat(CurrencyString+'###,###,##0.00', totalparcelas);
  lbTotalPago.caption 					:= formatfloat(CurrencyString+'###,###,##0.00', totalpago );
  lbValorAtualizado.caption 		:= formatfloat(CurrencyString+'###,###,##0.00', totalparcelas-totalpago );
  DMProjeto.ImprimirCabecalho( regCab );
  ppReparcelamento.Print;
  C_Parcelas.Filtered := false;
end;

procedure TDlgReparcelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgReparcelamento.FormCreate(Sender: TObject);
begin
  inherited;
  pnCancelado.caption := 'Canc.';
  btContabilidade.visible := false;
  DBParcelasTITULO.caption := '# Doc.';
  DMContabil := TDMContabilidade.Create(self);
  dblcTipoCobranca.LookupKeyValue := 3;
end;

procedure TDlgReparcelamento.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CONTABILID' ) then
   		exit;
	if not Validacoes then
  	Exit;
  DMContabil.ContabilizaReparcelamento(IDReparcelamentoHist,C_Reparcelamento,C_Parcelas,C_NovasParcelas);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgReparcelamento.C_NovasParcelasAfterPost(DataSet: TDataSet);
begin
  inherited;
  inc(nParc);
end;

procedure TDlgReparcelamento.C_ReparcelamentoDescontosChange(
  Sender: TField);
begin
  inherited;
  C_ReparcelamentoValorReparcelado.Value := C_ReparcelamentoTotal.Value+dfJuros.Value-dfDescontos.Value;
end;

procedure TDlgReparcelamento.DBNovasParcelasEdited(Sender: TObject;
  Node: TdxTreeListNode);
{
var
  nParcela : Integer;
  nVenc : TDateTime;
  nValor : Currency; }
begin
  inherited;
{
  nParcela := DBNovasParcelas.GetFieldValue(Node, 'Parcela', -1);
  nVenc    := DBNovasParcelas.GetFieldValue(Node, 'Vencimento', DMProjeto.dDataSistema);
  nValor   := StrToFloatDef(DBNovasParcelas.GetFieldValue(Node, 'Valor', 0, true), nValorParcelaBE);

  if nValor <> nValorParcelaBE then begin
    if (nParcela = 1) and (C_PlanosEsquemaParcelas.Value <> 'S') then //Alterou a entrada
      GerarParcelamento(nValor)
    else
      RatearDifProxParcelas(nParcela, nValorParcelaBE - nValor)
  end;
  }
end;

procedure TDlgReparcelamento.RatearDifProxParcelas(nParcelaDif : Integer; nDiferenca : Currency);
var
  TmpDS : TClientDataSet;
  nQtdProx : Integer;
  nDifParcelas : Currency;
  nTotalParcelas, nDescontoLimpo, nValorVenda, nDif : Currency;
begin
  nTotalParcelas := 0;

  TmpDS := TClientDataSet.Create(self);
  with TmpDS do begin
    CloneCursor(C_NovasParcelas, true);
    First;
    if Locate('Parcela', nParcelaDif + 1, []) then begin
      nTotalParcelas := -nDiferenca; //porque o valor da parcela modificada não é capturada pelo clone;
      {Capturando Quantidade de próximas parcelas}
      nQtdProx := 0;
      While not EOF do begin
        inc(nQtdProx);
        Next;
      end;

      {Rateando Diferenca}
      if nQtdProx > 0 then begin
        First;
        nDifParcelas := nDiferenca / nQtdProx;
        While not EOF do begin
          if FieldByName('Parcela').asInteger > nParcelaDif then begin
            Edit;
            FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency + nDifParcelas;
            Post;
          end;
          nTotalParcelas := nTotalParcelas + FieldbyName('Valor').asCurrency;

          Next;
        end;
      end;

    end;

    if nTotalParcelas > 0 then begin
      nValorVenda := C_ReparcelamentoValorReparcelado.Value;

      nDif :=  nTotalParcelas - nValorVenda;
      if (nDif <> 0) and (ABS(nDif) <= (0.01 * C_NovasParcelas.RecordCount)) then begin
        Last;
        Edit;
        FieldByName('Valor').asCurrency := FieldByName('Valor').asCurrency - nDif;
        Post;
      end;
    end;

  end;
  TmpDS.Free;

end;


procedure TDlgReparcelamento.DBNovasParcelasEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
//  nValorParcelaBE := DBNovasParcelas.GetFieldValue(Node, 'Valor', 0);
end;

procedure TDlgReparcelamento.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if ActiveControl is TTS_DBEditFavorecido then begin
  	if UpperCase(LastDataObject.TableName) = 'FAVORECIDOS' then
    		TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
	end;
	if (UpperCase(LastDataObject.TableName) = 'OPERACOESFINANCEIRAS') and
     (LastDataObject.ObjectKey = 10) then
     btLimparClick(sender);
	if (UpperCase(LastDataObject.TableName) = 'PLANOSPAGAMENTO') then begin
     C_Reparcelamento.Edit;
     C_ReparcelamentoPlano.Value := LastDataObject.ObjectKey;
     cmbPlanoChange(self);
  end;
end;

procedure TDlgReparcelamento.btComando2Click(Sender: TObject);
begin
  inherited;
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
    	exit;

		if DlgMsg.ShowMsg( 577, ['este Reparcelamento ?']) = 100 then begin

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      DMFinanceiro.CancelarOperacao( IntToStr(IDReparcelamentoHist), 48 );

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    	try
        SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', 0, false );
    	except
    	end;

      btLimpar.Click;
    end;
end;

procedure TDlgReparcelamento.ppPagoPrint(Sender: TObject);
begin
  inherited;
	ppPago.Visible := C_NovasParcelasValorPago.Value > 0;
end;

procedure TDlgReparcelamento.ppDBText6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := Copy(Text,1,30)
end;

procedure TDlgReparcelamento.dfDescontosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = 53 then begin
  	key := 0;
    dfDescontos.Value := C_ReparcelamentoTotal.AsCurrency*(dfDescontos.Value/100);
    dfDescontos.SelectAll;
  end;
end;

procedure TDlgReparcelamento.dfJurosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if key = 53 then begin
  	key := 0;
    dfJuros.Value := C_ReparcelamentoTotal.AsCurrency*(dfJuros.Value/100);
    dfJuros.SelectAll;
  end;
end;

procedure TDlgReparcelamento.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	Imprimir;
end;

end.
