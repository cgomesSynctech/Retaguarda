unit Dlg_TrocaCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBEdtr, dxDBELib,
  TS_DBLookupComboBox, Db, Provider, DBClient, IBCustomDataSet, IBQuery,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_DBEditNumber, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, TS_CalcEdit, ppCtrls, ppPrnabl,
  ppClass, ppStrtch, ppRegion, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, TS_CheckBox, DM_Contabilidade, Variants,
  BTOdeum, Placemnt;

type
  TDlgTrocaCheques = class(TFrmModeloCadastros)
    DBCheques: TTS_QDBGrid;
    dxfLabel1: TdxfLabel;
    edValorAReceber: TTS_CalcEdit;
    C_Cheques: TClientDataSet;
    C_Mestre: TClientDataSet;
    C_ChequesDS: TDataSource;
    C_MestreDS: TDataSource;
    dxfLabel3: TdxfLabel;
    dxfLabel4: TdxfLabel;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesVencimento: TDateField;
    C_ChequesValor: TCurrencyField;
    C_ChequesFavorecido: TIntegerField;
    C_ChequesNome: TStringField;
    C_ChequesDias: TIntegerField;
    C_ChequesIDDoc: TIntegerField;
    DBChequesNumCheque: TdxDBGridMaskColumn;
    DBChequesVencimento: TdxDBGridDateColumn;
    DBChequesValor: TdxDBGridCurrencyColumn;
    DBChequesFavorecido: TdxDBGridMaskColumn;
    DBChequesNome: TdxDBGridMaskColumn;
    DBChequesDias: TdxDBGridMaskColumn;
    DBChequesIDDoc: TdxDBGridMaskColumn;
    edTotal: TTS_CalcEdit;
    edDesconto: TTS_CalcEdit;
    ppResgate: TppReport;
    dbResgate: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    C_ChequesBanco: TStringField;
    DBChequesBanco: TdxDBGridColumn;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ckbImprimir: TTS_CheckBox;
    btContabilidade: TTS_SpeedButton;
    C_ChequesContaReceber: TIntegerField;
    DBChequesContaReceber: TdxDBGridColumn;
    C_ChequesContaAtual: TIntegerField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edDescontoChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
  public
    { Public declarations }
  end;

var
  DlgTrocaCheques: TDlgTrocaCheques;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgTrocaCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
var ItensSel : TStringList;
		nTotal, nTotalDescontos, nPercDesconto : Currency;
    i : integer;
begin
  inherited;
  if DMProjeto.Parametro('DescontoPorResgateDeCheque')='' then
  	nPercDesconto := 0
  else
    nPercDesconto := StrToFloat(DMProjeto.Parametro('DescontoPorResgateDeCheque'));

  nTotal := 0;
  nTotalDescontos := 0;
  C_Cheques.CreateDataset;
	if DMProjeto.ExisteParametrosForm then begin
    ItensSel := TStringList.Create;
    ItensSel.Text := DMProjeto.getParametrosForm(0);
    for i:=2 to ItensSel.Count-1 do begin
    	with C_Cheques do begin
      	Append;
        FieldByName('Favorecido').AsString:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','Favorecido'));
        FieldByName('Nome').AsString 			:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','Nome'));
        FieldByName('NumCheque').AsString := SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','NumCheque'));
        FieldByName('Valor').AsString 		:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','Valor'));
        FieldByName('Vencimento').AsString:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','Vencimento'));
        FieldByName('Banco').AsString			:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','NomeBanco'));
        FieldByName('ContaAtual').AsString:=SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','ContaAtual'));
        FieldByName('Dias').AsInteger			:= Trunc(FieldByName('Vencimento').AsDateTime-StrToDate(SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','Data'))));
        if FieldByName('Dias').AsInteger < 0 then
        	FieldByName('Dias').AsInteger		:= 0;
        FieldByName('IDDoc').AsString			:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','IDDoc'));
        FieldByName('ContaReceber').AsString:= SeparaStrings(ItensSel[i],'|||',IndiceString(ItensSel[1],'|||','ContaReceber'));
        Post;
        nTotal := nTotal + FieldByName('Valor').AsCurrency;
        nTotalDescontos := nTotalDescontos + ((nPercDesconto/100/30)*FieldByName('Dias').AsInteger)*FieldByName('Valor').AsCurrency;
      end;
    end;
    edTotal.Value := nTotal;
    edValorAReceber.Value := nTotal;
  end;
  edDesconto.Value:= nTotalDescontos;
  ItensSel.Free;
end;

procedure TDlgTrocaCheques.edDescontoChange(Sender: TObject);
begin
  inherited;
  edValorAReceber.Value := edTotal.Value - edDesconto.Value;
end;

procedure TDlgTrocaCheques.btGravarClick(Sender: TObject);
var sCheques, sIDDoc, sRetiradaDoc : string;
    IDAReceber, IDAPagar, IDRetirada, IDOperacao, i, ID : integer;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( 'DlgLocalizarCheques', 'RESGATE' ) then
    	exit;

  if C_Cheques.RecordCount <= 0 then
  	Exit;

  if DlgMsg.ShowMsg(1402,[IntToStr(C_Cheques.RecordCount),iif(C_Cheques.RecordCount>0,'(s)',''),C_ChequesNome.AsString,formatfloat('###,##0.00',edTotal.Value)])=200 then
  	exit;

  {Para colocar na observação da Parcela}
	with C_Cheques do begin
  	DisableControls;
    First;
    sCheques := '';
    while not EOF do begin
    	sCheques := sCheques +
      						'#'+FieldByName('NumCheque').AsString+'-'+
                  FieldByName('Vencimento').AsString+'-'+
                  formatfloat('###,###,##0.00',FieldByName('Valor').Value)+' , ';
      Next;
    end;
    sCheques := Copy(sCheques,1,length(sCheques)-3);
    First;
    EnableControls;
  end;
	try

  	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    IDOperacao := DMProjeto.NextIDGlobal;

		IDAReceber := DMFinanceiro.Conta_A_Receber( 1,
    																						edValorAReceber.Value,
    																						DMProjeto.dDataSistema,
                                                DMProjeto.dDataSistema,
                                                'Resgate de '+IntToStr(C_Cheques.RecordCount)+'Cheques, '+'sendo, '+sCheques,
                                                C_ChequesFavorecido.Value,
                                                0, // Venda
                                                '',// Nota Fiscal
                                                52,
                                                IDOperacao);

    IDAPagar := DMFinanceiro.Conta_A_Pagar( 1,
    																				edTotal.Value,
    																				DMProjeto.dDataSistema,DMProjeto.dDataSistema,
                                            'Resgate de '+IntToStr(C_Cheques.RecordCount)+'Cheques, '+'sendo: '+sCheques,
                                            0, // Natureza
                                            C_ChequesFavorecido.Value,
                                            0, // IDCompra
                                            '',// Nota Fiscal
                                            52,
                                            IDOperacao);

    IDRetirada := DMFinanceiro.PagarRapido( 0, IDAPagar, 0, DMProjeto.dDataSistema,
    																				DMProjeto.dDataSistema,
                                            'Resgate de '+IntToStr(C_Cheques.RecordCount)+
                                            'Cheques, '+'sendo: '+sCheques,
                                            edTotal.Value, 0,0,0,0,0);

    sIDDoc := DBCheques.Distinct('IDDoc');
    sRetiradaDoc := '';
    for i:=1 to ContaStrings(sIDDoc,',') do begin
      C_Cheques.Locate('IDDoc',StrToInt(SeparaStrings(sIDDoc,',',i)),[]);
    	ID := DMFinanceiro.PagarDoc( 0, 52, IDRetirada, C_ChequesContaAtual.Value, C_ChequesFavorecido.Value, -2,
                      C_ChequesValor.Value, DMFinanceiro.Conta_DataMov(C_ChequesContaAtual.Value));
      sRetiradaDoc := sRetiradaDoc + IntToStr(ID) + ',';
    end;

    sRetiradaDoc := Copy(sRetiradaDoc, 1, length(sRetiradaDoc)-1);
    DMFinanceiro.PagarChequesEmLoja( 4, IDRetirada, sIDDoc, C_ChequesFavorecido.Value, sRetiradaDoc, 61 );

    DMFinanceiro.BaixarDuplicata( IntToStr(IDAPagar), IDRetirada );

    with DMFinanceiro.Q_SQL do begin
    	close;
      sql.text := 'insert into operacoesfinanceiras '+
      						'(Operacao, TipoOperacao, Data, Favorecido, ValorOperacao, '+
                  ' ContaOrigem, ContaDestino, Titulo, Usuario) values '+
                  '(:Operacao, 52, :Data, :Favorecido, :ValorOperacao, '+
                  ' :IDAPagar, :IDRetirada, :IDAReceber, :Usuario)';

    	parambyname('Operacao').asInteger 	:= IDOperacao;
      parambyname('Data').asDateTime			:= DMProjeto.dDataSistema;
      parambyname('Favorecido').asInteger := C_ChequesFavorecido.Value;
      parambyname('ValorOperacao').asCurrency := edTotal.Value;
      parambyname('IDAPagar').asInteger 	:= IDAPagar;
      parambyname('IDRetirada').asInteger := IDRetirada;
      parambyname('IDAReceber').asInteger := IDAReceber;
      parambyname('Usuario').asInteger 		:= DMProjeto.nFuncionario;
      execsql;

      with C_Cheques do begin
      	disablecontrols;
        first;
        while not eof do begin
          with DMFinanceiro.Q_SQL do begin
      			close;
      			sql.text := 'insert into operacoesfinanceirasdet '+
      									'(OpDoc, Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, ContaAtual) '+
                  			'values '+
                  			'(:OpDoc, :Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :ContaAtual)';
      			parambyname('OpDoc').asInteger 			:= DMProjeto.NextIDGlobal;
      			parambyname('Operacao').asInteger 	:= IDOperacao;
      			parambyname('NumCheque').asInteger	:= C_ChequesNumCheque.AsInteger;
            parambyname('Vencimento').AsDateTime:= C_ChequesVencimento.Value;
            parambyname('Valor').AsCurrency			:= C_ChequesValor.AsCurrency;
            parambyname('Favorecido').asInteger := C_ChequesFavorecido.AsInteger;
            parambyname('IDDoc').asInteger 			:= C_ChequesIDDoc.Value;
            parambyname('ContaAtual').asInteger := C_ChequesContaAtual.Value;
          	execsql;
            close;
            sql.text := 'update depositosdoc '+
            						'set contaatual = 0, foradaempresa = ''S'', localtitulo = '''+C_ChequesNome.AsString+''' '+
                        'where iddoc = :iddoc';
            params[0].AsInteger := C_ChequesIDDoc.Value;
            execsql;
          end;
          next;
        end;
        first;
        enablecontrols;
      end;
    end;

    // Adriano
    DMContabil.ContabilizaResgateCheque(IDOperacao,C_Cheques,edDesconto.value);

    if not DMContabil.Salvar(IDOperacao) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

	 	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   		DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  	DMProjeto.SetParametrosForm([null,C_ChequesFavorecido.Value,IntToStr(IDAReceber)]);
    DMProjeto.CriarForm('DlgDepositos',self,true);


    if ckbImprimir.Checked then begin
      DMProjeto.ImprimirCabecalho(regCab);
      ppResgate.Print;
    end;

    Close;

  except
  	on E:Exception do begin
 	  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    		DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;

    	DlgMsg.ShowMsg( 2, e.message, '' );
    end;
	end;
end;

procedure TDlgTrocaCheques.btLimparClick(Sender: TObject);
begin
  inherited;

 	if not DMProjeto.DlgAutorizacao.ExecuteX( 'DlgLocalizarCheques', 'HistResgCh' ) then
 		exit;

	with DMProjeto do begin
		SetParametrosForm([52,'Histórico de Resgate de Cheques',false]);
    CriarForm('DlgHistoricoOperacoes',self,true);
    LimparParametrosForm;
  end;

end;

procedure TDlgTrocaCheques.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := C_ChequesNome.AsString;
end;

procedure TDlgTrocaCheques.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := DateToStr(DMProjeto.dDataSistema);
end;

procedure TDlgTrocaCheques.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00',edDesconto.Value*(-1));
end;

procedure TDlgTrocaCheques.ppLabel15GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('###,##0.00',edValorAReceber.Value);
end;

procedure TDlgTrocaCheques.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := DMProjeto.sNomeEmpresa;
end;

procedure TDlgTrocaCheques.FormClose(Sender: TObject;
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

procedure TDlgTrocaCheques.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    btContabilidade.visible := false;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgTrocaCheques.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  // Adriano
  DMContabil.ContabilizaResgateCheque(0,C_Cheques,edDesconto.value);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

end.
