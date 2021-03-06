unit Dlg_Fechamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxfLabel, Db,
  IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppCtrls, ppBands, ppSubRpt, ppPrnabl, ppStrtch, ppDevice,
  ppRegion, ppCache, ppMemo, dxfProgressBar, FormsComponent, TS_Label,
  TS_Image, TS_MaxPanel, TS_Memo, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, TS_DateTimePicker, BTOdeum, Placemnt{, ECF};

type
  TDlgFechamento = class(TFrmModeloCadastros)
    ppFechamento: TppReport;
    dbResumo: TppDBPipeline;
    Q_Resumo: TIBQuery;
    Q_ResumoDS: TDataSource;
    Q_ResumoFORMAPAGAMENTO: TIntegerField;
    Q_ResumoDESCRICAO: TIBStringField;
    Q_Disponivel: TIBQuery;
    Q_DisponivelDS: TDataSource;
    Q_DisponivelFORMAPAGAMENTO: TIntegerField;
    Q_DisponivelDESCRICAO: TIBStringField;
    Q_DisponivelSALDOANTERIOR: TIBBCDField;
    Q_DisponivelENTRADAS: TIBBCDField;
    Q_DisponivelSaldo: TFloatField;
    Q_DisponivelDet: TIBQuery;
    Q_DisponivelDetNOME: TIBStringField;
    Q_DisponivelDetVALOR: TIBBCDField;
    Q_DisponivelDetHISTORICO: TIBStringField;
    Q_TipoOperacao: TIBQuery;
    Q_TipoOperacaoTIPOMOVIMENTO: TIntegerField;
    Q_TipoOperacaoDESCRICAO: TIBStringField;
    Q_TipoOperacaoDet: TIBQuery;
    Q_TipoOperacaoDetNUMERO: TIBStringField;
    Q_TipoOperacaoDetNOME: TIBStringField;
    Q_Pagamentos: TIBQuery;
    Q_PagamentosFORMAPAGAMENTO: TIntegerField;
    Q_PagamentosDESCRICAO: TIBStringField;
    Q_PagamentosVALOR: TIBBCDField;
    Q_PagamentosDet: TIBQuery;
    Q_PagamentosDetNOME: TIBStringField;
    Q_PagamentosDetHISTORICO: TIBStringField;
    Q_PagamentosDetVALOR: TIBBCDField;
    Q_Impostos: TIBQuery;
    Q_ImpostosTAX: TIBStringField;
    Q_DisponivelDetDS: TDataSource;
    Q_TipoOperacaoDS: TDataSource;
    Q_TipoOperacaoDetDS: TDataSource;
    Q_PagamentosDS: TDataSource;
    Q_PagamentosDetDS: TDataSource;
    Q_ImpostosDS: TDataSource;
    dbDisponivel: TppDBPipeline;
    dbTipoOperacao: TppDBPipeline;
    dbTipoOperacaoDet: TppDBPipeline;
    dbPagamentos: TppDBPipeline;
    dbPagamentosDet: TppDBPipeline;
    dbImpostos: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    regCab: TppRegion;
    ppFechamentoCaixa: TppLabel;
    ppLabel3: TppLabel;
    ppData: TppLabel;
    ppShape1: TppShape;
    Resumo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    dbSaldoAnt: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape4: TppShape;
    dbtSaldoAtual: TppDBCalc;
    ppLabel6: TppLabel;
    Disponivel: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetalhe: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel7: TppLabel;
    ppShape7: TppShape;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    DisponivelDet: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel12: TppLabel;
    ppShape10: TppShape;
    ppLabel13: TppLabel;
    ppShape11: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape12: TppShape;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBCalc2: TppDBCalc;
    ppShape5: TppShape;
    TipoOperacao: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    TipoOperacaoDet: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape13: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    Pagamentos: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    PagamentosDet: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLblObs: TppLabel;
    ppLabel21: TppLabel;
    ppShape18: TppShape;
    ppLabel22: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ResumoDoc: TppSubReport;
    ppChildReport9: TppChildReport;
    Q_OutrosDoc: TIBQuery;
    dbOutrosDoc: TppDBPipeline;
    Q_OutrosDocDS: TDataSource;
    Q_OutrosDocDESCRICAO: TIBStringField;
    Q_OutrosDocVALOR: TIBBCDField;
    ppTitleBand10: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppShape20: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel4: TppLabel;
    ppShape22: TppShape;
    ppLine13: TppLine;
    Q_DisponivelDetNUMCHEQUE: TIntegerField;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppShape2: TppShape;
    ppShape25: TppShape;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppShape26: TppShape;
    ppDBCalc6: TppDBCalc;
    ppShape27: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    rgFechar: TppRegion;
    dbDisponivelDet: TppDBPipeline;
    Q_DisponivelREPASSE: TIBBCDField;
    ppLine20: TppLine;
    Q_ResumoSALDOANTERIOR: TIBBCDField;
    Q_ResumoSALDOATUAL: TIBBCDField;
    Q_ResumoENTRADAS: TIBBCDField;
    Q_ResumoSAIDAS: TIBBCDField;
    Q_ResumoREPASSE: TIBBCDField;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppShape31: TppShape;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel35: TppLabel;
    ppShape34: TppShape;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel37: TppLabel;
    ppShape40: TppShape;
    ppLine12: TppLine;
    ppLabel9: TppLabel;
    Barra: TdxfProgressBar;
    TS_Label1: TTS_Label;
    TS_Memo1: TTS_Memo;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppShape19: TppShape;
    ppLabel32: TppLabel;
    ppLabel38: TppLabel;
    ppShape21: TppShape;
    ppLine14: TppLine;
    ppLine17: TppLine;
    Q_DisponivelDetIDGERADOR: TIntegerField;
    Q_DisponivelDetTIPOOPERACAO: TIntegerField;
    Q_PagamentosDetNUMCHEQUE: TIntegerField;
    Q_PagamentosDetIDGERADOR: TIntegerField;
    Q_PagamentosDetTIPOOPERACAO: TIntegerField;
    ppLine23: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    Q_TipoOperacaoDetSAIDA: TIntegerField;
    ppDBCalc9: TppDBCalc;
    Q_Master: TIBQuery;
    Q_MasterDS: TDataSource;
    dbMaster: TppDBPipeline;
    TS_Label2: TTS_Label;
    lbCaixa: TdxfLabel;
    CreditoUtilizado: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppLabel40: TppLabel;
    ppDBText2: TppDBText;
    subCreditoUtilizadoDet: TppSubReport;
    ppChildReport11: TppChildReport;
    Q_CreditoUtilizado: TIBQuery;
    Q_CreditoUtilizadoDS: TDataSource;
    dbCreditoUtilizado: TppDBPipeline;
    Q_CreditoUtilizadoDet: TIBQuery;
    Q_CreditoUtilizadoDetDS: TDataSource;
    dbCreditoUtilizadoDet: TppDBPipeline;
    Q_CreditoUtilizadoVALOR: TIBBCDField;
    Q_CreditoUtilizadoDetNOME: TIBStringField;
    Q_CreditoUtilizadoDetDATA: TDateField;
    Q_CreditoUtilizadoDetVALOR: TIBBCDField;
    Q_CreditoUtilizadoDetHISTORICO: TIBStringField;
    ppTitleBand12: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand11: TppSummaryBand;
    ppShape36: TppShape;
    ppLabel41: TppLabel;
    ppShape37: TppShape;
    ppLabel42: TppLabel;
    ppShape38: TppShape;
    ppLabel43: TppLabel;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText23: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    lbData: TdxfLabel;
    FecharCaixa1: TMenuItem;
    ppLabel20: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppCaixa: TppLabel;
    ppLabel45: TppLabel;
    Q_SQL: TIBQuery;
    Q_TipoOperacaoTOTAL: TIBBCDField;
    Q_TipoOperacaoDetTOTAL: TIBBCDField;
    Q_ImpostosTOTAL: TIBBCDField;
    procedure Q_DisponivelCalcFields(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure Q_ResumoPreCalcFields(DataSet: TDataSet);
    procedure Q_OutrosDocFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppDBText27GetText(Sender: TObject; var Text: String);
    procedure Q_DisponivelFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbSaldoAntGetText(Sender: TObject; var Text: String);
    procedure ppDBText7DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText7DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText20DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText20DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText15DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText13DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgFechamento: TDlgFechamento;

implementation

uses DM_Projeto, DM_Financeiro, funcoes{, dm_ECF};

{$R *.DFM}

procedure TDlgFechamento.Q_DisponivelCalcFields(DataSet: TDataSet);
begin
  inherited;
	Q_DisponivelSaldo.Value := Q_DisponivelSaldoAnterior.Value + Q_DisponivelRepasse.Value + Q_DisponivelEntradas.Value;
end;

procedure TDlgFechamento.btGravarClick(Sender: TObject);
var s:string;
begin
  inherited;
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.valor) as SaldoAnterior '+
    						'From Transacoes t '+
           			'Where t.Data < :Data and t.Conta = :Conta and '+
                't.formapagamento > 0 and t.formapagamento < 4';
    ParamByName('Data').AsDatetime := DMProjeto.dDataSistema;
  end;
  if Copy(DMFinanceiro.Conta_Situacao( DMFinanceiro.nContaPadrao ),1,1)<>'F' then begin
		DMFinanceiro.FecharCaixa;
  end
  else begin
    DlgMsg.ShowMsg(409);
    Exit;
  end;
  if (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S') Then Begin
    if (DlgMsg.ShowMsg(650,['do Caixa.']) = 100) then
  	btLimpar.Click;
  End;
{  (* Finalização do ECF *)
  if (DMProjeto.Parametro('CaixaECF') = 'S') and (DMECF.ECF1.Modelo <> Nenhuma) then begin
    s := DMECF.ECF1.ChkECFAberto;
    if s = 'ECF Fechado' then begin
      DlgMsg.ShowMsg(6035);
    end
    else begin
      if DlgMsg.ShowMsg(6033) = 100 then begin
        DMECF.ECF1.FechamentoDia(ExtractFilePath(Application.ExeName));
      end;
    end;
  end;  }
  Close;
end;

procedure TDlgFechamento.Q_ResumoPreCalcFields(DataSet: TDataSet);
begin
  inherited;
//	Q_ResumoPreSaldo.Value := Q_ResumoPreSaldoAnterior.Value + Q_ResumoPreEntradas.Value - Q_ResumoPrePagamentos.Value;
end;

procedure TDlgFechamento.Q_OutrosDocFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := Q_OutrosDocValor.Value > 0;
end;

procedure TDlgFechamento.ppDBText27GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	if Text = '' then
  	Text := '0'+DecimalSeparator+'00';
end;

procedure TDlgFechamento.Q_DisponivelFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := Q_DisponivelEntradas.Value > 0;
end;

procedure TDlgFechamento.dbSaldoAntGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if text = '' then
  	text := DMProjeto.SetZero;
end;

procedure TDlgFechamento.ppDBText7DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag <> 0 then begin
 		with DMProjeto do begin
     	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag,StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)]);
  		CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
    end;
  end;
end;

procedure TDlgFechamento.ppDBText7DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_DisponivelDetIDGerador.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_DisponivelDetTipoOperacao.AsString;
end;

procedure TDlgFechamento.ppDBText20DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag <> 0 then begin
 		with DMProjeto do begin
     	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag,StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)]);
  		CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
    end;
  end;
end;

procedure TDlgFechamento.ppDBText20DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_PagamentosDetIDGerador.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_PagamentosDetTipoOperacao.AsString;
end;

procedure TDlgFechamento.ppDBText15DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_TipoOperacaoDetSaida.AsInteger;
end;

procedure TDlgFechamento.ppDBText13DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag <> 0 then begin
 		with DMProjeto do begin
     	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
  		CriarForm('FrmInvoices',self,true);
    end;
  end;
end;

procedure TDlgFechamento.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if Uppercase(LastDataObject.TableName)='OPERACOESFINANCEIRAS' then begin
      Resumo.DataPipeline := nil;
      Q_Resumo.Close;
    	Q_Resumo.parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    	Q_Resumo.parambyname('data').AsDateTime  	:= DMFinanceiro.Caixa_MovimentoCorrente;
      Q_Resumo.Open;
      Resumo.DataPipeline := dbResumo;
      ppFechamento.Publisher.Publish;
	end else if UpperCase(LastDataObject.TableName)='SAIDAS' then begin
      dbTipoOperacao.DataSource := nil;
      dbTipoOperacaoDet.DataSource := nil;
      Q_TipoOperacaoDet.Close;
      Q_TipoOperacao.Close;
      Q_TIpoOperacao.Open;
      Q_TIpoOperacaoDet.Open;
      dbTipoOperacao.DataSource := Q_TipoOperacaoDS;
      dbTipoOperacaoDet.DataSource := Q_TipoOperacaoDetDS;
      ppFechamento.Publisher.Publish;
  end else if UpperCase(LastDataObject.TableName)='DEPOSITOS' then begin
      dbDisponivel.DataSource := nil;
      dbDisponivelDet.DataSource := nil;
      Q_DisponivelDet.Close;
      Q_Disponivel.Close;
      Q_Disponivel.Open;
      Q_DisponivelDet.Open;
      dbDisponivel.DataSource := Q_DisponivelDS;
      dbDisponivelDet.DataSource := Q_DisponivelDetDS;
      ppFechamento.Publisher.Publish;
  end else if UpperCase(LastDataObject.TableName)='RETIRADAS' then begin
      dbPagamentos.DataSource := nil;
      dbPagamentosDet.DataSource := nil;
      Q_PagamentosDet.Close;
      Q_Pagamentos.Close;
      Q_Pagamentos.Open;
      Q_PagamentosDet.Open;
      dbPagamentos.DataSource := Q_PagamentosDS;
      dbPagamentosDet.DataSource := Q_PagamentosDetDS;
      ppFechamento.Publisher.Publish;
  end;
end;

procedure TDlgFechamento.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  lbData.Caption  := DateToStr(DMProjeto.dDataSistema);
  lbCaixa.Caption := DMFinanceiro.Caixa_Nome;
  lbCaixa.AutoSize:= false;
  lbCaixa.AutoSize:= true;
  lbData.AutoSize:= false;
  lbData.AutoSize:= true;
end;

procedure TDlgFechamento.btLimparClick(Sender: TObject);
begin
  inherited;
  Barra.Position := 0;
  Barra.Visible  := true;
  Barra.Position := Barra.Position + 1;
  with Q_Resumo do begin
    close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_OutrosDoc do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;

  Barra.Position := Barra.Position + 1;
	with Q_DisponivelDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Disponivel do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacao do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacaoDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Pagamentos do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_PagamentosDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	 with Q_Impostos do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
 	with Q_CreditoUtilizado do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;
 	with Q_CreditoUtilizadoDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= DMFinanceiro.nContaPadrao;
    parambyname('data').AsDateTime  := DMProjeto.dDataSistema;
    open;
  end;
  Barra.Position := Barra.Position + 1;

  DMProjeto.ImprimirCabecalho( regCab );
  ppFechamentoCaixa.Caption := lbCaixa.Caption;
  ppData.Caption := lbData.Caption;
  ppCaixa.Caption:= DMProjeto.sLoginName;
  Barra.Position := Barra.Position + 1;
  Barra.Visible := false;

  ppFechamento.Print;
end;

procedure TDlgFechamento.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    ppLblObs.caption := 'Obs.';
end;

procedure TDlgFechamento.FormShow(Sender: TObject);
begin
  inherited;
  btLimpar.Enabled := (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S');

end;

end.

