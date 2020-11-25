unit Dlg_CaixaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, 
  StdCtrls, TS_BitBtn, dxfLabel, ComCtrls, TS_DateTimePicker, ppDB,
  ppDBPipe, Db, IBCustomDataSet, IBQuery, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppCtrls, ppBands, ppSubRpt, ppPrnabl, ppStrtch,
  ppRegion, ppCache, dxfProgressBar, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  FormsComponent, TS_Label, TS_Image, TS_MaxPanel, teCtrls,
  TS_EffectsPanel, ppVar, Menus, TS_PopupMenu, Placemnt, BTOdeum;

type
  TDlgCaixaPrincipal = class(TFrmModeloCadastros)
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    dxfLabel1: TdxfLabel;
    dxfLabel2: TdxfLabel;
    ppCaixaPrincipal: TppReport;
    Q_Disponivel: TIBQuery;
    Q_OutrosDoc: TIBQuery;
    Q_SaldoAntDisp: TIBQuery;
    Q_SaldoAntPre: TIBQuery;
    Q_RecCxPrincipal: TIBQuery;
    Q_DisponivelDS: TDataSource;
    Q_OutrosDocDS: TDataSource;
    Q_SaldoAntDispDS: TDataSource;
    Q_SaldoAntPreDS: TDataSource;
    Q_RecCxPrincipalDS: TDataSource;
    dbDisponivel: TppDBPipeline;
    dbOutrosDoc: TppDBPipeline;
    dbSaldoAntDisp: TppDBPipeline;
    dbSaldoAntPre: TppDBPipeline;
    dbRecCxPrincipal: TppDBPipeline;
    Q_DisponivelFORMAPAGAMENTO: TIntegerField;
    Q_DisponivelDESCRICAO: TIBStringField;
    Q_OutrosDocFORMAPAGAMENTO: TIntegerField;
    Q_OutrosDocDESCRICAO: TIBStringField;
    Q_OutrosDocVALOR: TIBBCDField;
    Q_SaldoAntDispFORMAPAGAMENTO: TIntegerField;
    Q_SaldoAntDispDESCRICAO: TIBStringField;
    Q_SaldoAntDispVALOR: TFloatField;
    Q_SaldoAntPreFORMAPAGAMENTO: TIntegerField;
    Q_SaldoAntPreDESCRICAO: TIBStringField;
    Q_SaldoAntPreVALOR: TIBBCDField;
    Q_RecCaixas: TIBQuery;
    Q_RecCxPrincipalDet: TIBQuery;
    Q_RecCaixaDet: TIBQuery;
    Q_TipoOperacao: TIBQuery;
    Q_TipoOperacaoDet: TIBQuery;
    IBQuery7: TIBQuery;
    Q_Pagamentos: TIBQuery;
    Q_RecCaixasDS: TDataSource;
    Q_RecCxPrincipalDetDS: TDataSource;
    Q_RecCaixaDetDS: TDataSource;
    Q_TipoOperacaoDS: TDataSource;
    Q_TipoOperacaoDetDS: TDataSource;
    Q_PagamentosDS: TDataSource;
    dbRecCaixas: TppDBPipeline;
    dbRecCxPrincipalDet: TppDBPipeline;
    dbRecCaixaDet: TppDBPipeline;
    dbTipoOperacao: TppDBPipeline;
    dbTipoOperacaoDet: TppDBPipeline;
    dbPagamentos: TppDBPipeline;
    Q_RecCxPrincipalFORMAPAGAMENTO: TIntegerField;
    Q_RecCxPrincipalDESCRICAO: TIBStringField;
    Q_RecCxPrincipalVALOR: TIBBCDField;
    Q_RecCaixasFORMAPAGAMENTO: TIntegerField;
    Q_RecCaixasDESCRICAO: TIBStringField;
    Q_RecCaixasNOMECONTA: TIBStringField;
    Q_RecCxPrincipalDetNOME: TIBStringField;
    Q_RecCxPrincipalDetDATA: TDateField;
    Q_RecCxPrincipalDetNUMCHEQUE: TIntegerField;
    Q_RecCxPrincipalDetVALOR: TIBBCDField;
    Q_RecCaixaDetNOME: TIBStringField;
    Q_RecCaixaDetDATA: TDateField;
    Q_RecCaixaDetNUMCHEQUE: TIntegerField;
    Q_RecCaixaDetVENCIMENTO: TDateField;
    Q_RecCaixaDetVALOR: TIBBCDField;
    Q_TipoOperacaoDetNUMERO: TIBStringField;
    Q_TipoOperacaoDetNOME: TIBStringField;
    Q_TipoOperacaoDetDATA: TDateField;
    Q_PagamentosFORMAPAGAMENTO: TIntegerField;
    Q_PagamentosDESCRICAO: TIBStringField;
    Q_PagamentosVALOR: TIBBCDField;
    Q_SaldoDisp: TIBQuery;
    Q_DisponivelDet: TIBQuery;
    Q_SaldoPre: TIBQuery;
    Q_Impostos: TIBQuery;
    Q_SaldoDispDESCRICAO: TIBStringField;
    Q_SaldoDispSALDOFINAL: TIBBCDField;
    Q_SaldoPreENTRADAS: TIBBCDField;
    Q_SaldoPreSAIDAS: TIBBCDField;
    Q_SaldoPreSaldo: TFloatField;
    Q_ImpostosTAX: TIBStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    lbPeriodo: TppLabel;
    Disponivel: TppSubReport;
    ppChildReport1: TppChildReport;
    OutrosDoc: TppSubReport;
    ppChildReport2: TppChildReport;
    SaldoAntDisp: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    Q_DisponivelDetNOME: TIBStringField;
    Q_DisponivelDetDATA: TDateField;
    Q_DisponivelDetNUMCHEQUE: TIntegerField;
    Q_DisponivelDetVALOR: TIBBCDField;
    Q_OutrosDocDet: TIBQuery;
    Q_OutrosDocDetNUMCHEQUE: TIntegerField;
    Q_OutrosDocDetDATA: TDateField;
    Q_OutrosDocDetNOME: TIBStringField;
    Q_OutrosDocDetVALOR: TIBBCDField;
    Q_OutrosDocDetDS: TDataSource;
    Q_DisponivelDetDS: TDataSource;
    dbDisponivelDet: TppDBPipeline;
    dbOutrosDocDet: TppDBPipeline;
    DisponivelDet: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    OutrosDocDet: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppTitleBand6: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    RecCxPrincipal: TppSubReport;
    ppChildReport6: TppChildReport;
    RecCaixas: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel9: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    RecCxPrincipalDet: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppShape3: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppTitleBand9: TppTitleBand;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppDBText20: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText21: TppDBText;
    ppLabel13: TppLabel;
    ppDBText22: TppDBText;
    TipoOperacao: TppSubReport;
    ppChildReport9: TppChildReport;
    Pagamentos: TppSubReport;
    ppChildReport10: TppChildReport;
    SaldoDisp: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    Q_TipoOperacaoTIPOMOVIMENTO: TIntegerField;
    Q_TipoOperacaoDESCRICAO: TIBStringField;
    ppDBText25: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    TipoOperacaoDet: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppShape4: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppTitleBand12: TppTitleBand;
    ppDetailBand12: TppDetailBand;
    ppSummaryBand11: TppSummaryBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    PagamentosDet: TppSubReport;
    ppChildReport14: TppChildReport;
    ppLabel19: TppLabel;
    Q_PagamentosDet: TIBQuery;
    Q_PagamentosDetDS: TDataSource;
    dbPagamentosDet: TppDBPipeline;
    Q_PagamentosDetNOME: TIBStringField;
    Q_PagamentosDetDATA: TDateField;
    Q_PagamentosDetNUMCHEQUE: TIntegerField;
    Q_PagamentosDetVALOR: TIBBCDField;
    ppTitleBand13: TppTitleBand;
    ppDetailBand13: TppDetailBand;
    ppSummaryBand12: TppSummaryBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppShape5: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    Impostos: TppSubReport;
    ppChildReport15: TppChildReport;
    Q_SaldoDispDS: TDataSource;
    Q_SaldoPreDS: TDataSource;
    dbSaldoPre: TppDBPipeline;
    dbSaldoDisp: TppDBPipeline;
    dbImpostos: TppDBPipeline;
    Q_ImpostosDS: TDataSource;
    ppTitleBand15: TppTitleBand;
    ppDetailBand15: TppDetailBand;
    ppSummaryBand14: TppSummaryBand;
    ppSaldoFinal: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    Q_SaldoPreDESCRICAO: TIBStringField;
    ppTitleBand16: TppTitleBand;
    ppDetailBand16: TppDetailBand;
    ppSummaryBand15: TppSummaryBand;
    ppLabel26: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBCalc4: TppDBCalc;
    Barra: TdxfProgressBar;
    ppLabel27: TppLabel;
    RecCaixaDet: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppDetailBand17: TppDetailBand;
    ppSummaryBand16: TppSummaryBand;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppShape6: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    Q_RecCaixasCONTAORIGEM: TIntegerField;
    Q_RecCaixasVALOR: TIBBCDField;
    ppLabel32: TppLabel;
    ppDBText44: TppDBText;
    Q_RecCaixaDetHISTORICO: TIBStringField;
    ppDBText45: TppDBText;
    ppLabel33: TppLabel;
    Q_RecCxPrincipalDetHISTORICO: TIBStringField;
    Q_PagamentosDetHISTORICO: TIBStringField;
    ppLabel34: TppLabel;
    ppDBText50: TppDBText;
    Q_PagamentosDetFAVORECIDO: TIntegerField;
    Q_PagamentosDetDESCCONTA: TIBStringField;
    Q_PagamentosTIPOOPERACAO: TIntegerField;
    Q_PagamentosDESCTIPOOPERACAO: TIBStringField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText40: TppDBText;
    ppLabel35: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    Q_DisponivelVALOR: TIBBCDField;
    ppLabel23: TppLabel;
    ppDBText35: TppDBText;
    Q_TipoOperacaoQTDE: TIntegerField;
    Q_TipoOperacaoTOTAL: TFloatField;
    Q_TipoOperacaoDetTOTAL: TFloatField;
    Q_ImpostosTOTAL: TFloatField;
    procedure Q_SaldoPreCalcFields(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppDBText34GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCaixaPrincipal: TDlgCaixaPrincipal;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgCaixaPrincipal.Q_SaldoPreCalcFields(DataSet: TDataSet);
begin
  inherited;
	Q_SaldoPreSaldo.Value := Q_SaldoPreEntradas.Value - Q_SaldoPreSaidas.Value; 
end;

procedure TDlgCaixaPrincipal.btGravarClick(Sender: TObject);
begin
  inherited;
  ActiveControl := nil;
  Barra.Position := 0;
  Barra.Visible  := true;
	with Q_Disponivel do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_DisponivelDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_OutrosDoc do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_OutrosDocDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_SaldoAntDisp do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_SaldoAntPre do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_RecCxPrincipal do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_RecCxPrincipalDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  {
	with Q_RecCaixaDin do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  }
	with Q_RecCaixas do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_RecCaixaDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacao do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacaoDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Pagamentos do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_PagamentosDet do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  {
	with Q_Depositos do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  }
	with Q_Impostos do begin
  	close;
    parambyname('datai').asDate := DataI.Date;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  with Q_SaldoDisp do begin
  	close;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  {
  with Q_SaldoPre do begin
  	close;
    parambyname('dataf').asDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  }
	DMProjeto.ImprimirCabecalho(regCab);
  lbPeriodo.Caption := 'No período de '+DateToStr(DataI.Date)+' a '+DateToStr(DataF.Date);
  ppSaldoFinal.Caption := '  Saldo Final em '+DateToStr(DataF.Date);
//  ppCaixaPrincipal.Publisher.Publish;
  Barra.Position := Barra.Position + 1;
  ppCaixaPrincipal.Print;
  Barra.Visible  := false;
end;

procedure TDlgCaixaPrincipal.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	DataI.Date := DMProjeto.dDataSistema;
  DataF.Date := DMProjeto.dDataSistema;
end;

procedure TDlgCaixaPrincipal.ppDBText34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	if Q_PagamentosDetFavorecido.Value <> -1 then
  	Text := Q_PagamentosDetNome.Value
  else
  	Text := Q_PagamentosDetDescConta.Value;
end;

procedure TDlgCaixaPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  Height := 180;
  Width  := 700;
end;

end.
