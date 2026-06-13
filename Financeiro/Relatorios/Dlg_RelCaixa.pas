unit Dlg_RelCaixa;

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
  TS_PopupMenu, TS_DateTimePicker, BTOdeum, Placemnt, DBClient, Provider,
  dxDBEdtr, dxDBELib, TS_LookupComboBox;

type
  TDlgRelCaixa = class(TFrmModeloCadastros)
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
    Q_DisponivelSaldo: TFloatField;
    Q_DisponivelDet: TIBQuery;
    Q_DisponivelDetNOME: TIBStringField;
    Q_DisponivelDetHISTORICO: TIBStringField;
    Q_TipoOperacao: TIBQuery;
    Q_TipoOperacaoTIPOMOVIMENTO: TIntegerField;
    Q_TipoOperacaoDet: TIBQuery;
    Q_TipoOperacaoDetNUMERO: TIBStringField;
    Q_TipoOperacaoDetNOME: TIBStringField;
    Q_Pagamentos: TIBQuery;
    Q_PagamentosFORMAPAGAMENTO: TIntegerField;
    Q_PagamentosDESCRICAO: TIBStringField;
    Q_PagamentosDet: TIBQuery;
    Q_PagamentosDetNOME: TIBStringField;
    Q_PagamentosDetHISTORICO: TIBStringField;
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
    dbDisponivelDet: TppDBPipeline;
    ppLine20: TppLine;
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
    lbTitulo: TppLabel;
    Barra: TdxfProgressBar;
    TS_Label1: TTS_Label;
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
    dtData: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
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
    Q_CreditoUtilizadoDetNOME: TIBStringField;
    Q_CreditoUtilizadoDetDATA: TDateField;
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
    cmbConta: TTS_LookupComboBox;
    C_CaixaDS: TDataSource;
    Q_Caixas: TIBQuery;
    P_Caixas: TDataSetProvider;
    C_Caixas: TClientDataSet;
    C_CaixasCONTA: TIntegerField;
    C_CaixasDESCRICAO: TStringField;
    Q_DisponivelDetTITULO: TIBStringField;
    ppShape6: TppShape;
    ppLabel2: TppLabel;
    ppLine31: TppLine;
    ppDBText21: TppDBText;
    Q_OutrosDocVALOR: TIBBCDField;
    Q_ResumoSALDOANTERIOR: TIBBCDField;
    Q_ResumoSALDOATUAL: TIBBCDField;
    Q_ResumoENTRADAS: TIBBCDField;
    Q_ResumoSAIDAS: TIBBCDField;
    Q_ResumoREPASSE: TIBBCDField;
    Q_DisponivelSALDOANTERIOR: TIBBCDField;
    Q_DisponivelENTRADAS: TIBBCDField;
    Q_DisponivelREPASSE: TIBBCDField;
    Q_DisponivelDetVALOR: TIBBCDField;
    Q_CreditoUtilizadoVALOR: TIBBCDField;
    Q_CreditoUtilizadoDetVALOR: TIBBCDField;
    Q_ImpostosTOTAL: TFloatField;
    Q_PagamentosDetVALOR: TIBBCDField;
    Q_PagamentosVALOR: TIBBCDField;
    Q_TipoOperacaoTOTAL: TFloatField;
    Q_TipoOperacaoDetTOTAL: TFloatField;
    Q_TipoOperacaoDESCRICAO: TIBStringField;
    Q_GeradasAbertas: TIBQuery;
    IBBCDField1: TIBBCDField;
    dbGeradasAbertas: TppDBPipeline;
    Q_GeradasAbertasDS: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel3: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText24: TppDBText;
    ppSummaryBand12: TppSummaryBand;
    Q_RecebimentosParcelasanteriores: TIBQuery;
    IBBCDField2: TIBBCDField;
    dbRecebimentosParcelasanteriores: TppDBPipeline;
    ppField1: TppField;
    Q_RecebimentosParcelasanterioresDS: TDataSource;
    Q_GeradasAbertasDet: TIBQuery;
    dbGeradasAbertasDet: TppDBPipeline;
    Q_GeradasAbertasDetDS: TDataSource;
    subdbGeradasAbertasDet: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand13: TppTitleBand;
    ppDetailBand12: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppDBText27: TppDBText;
    ppDBText32: TppDBText;
    Q_GeradasAbertasDetID: TIntegerField;
    Q_GeradasAbertasDetRAZAO: TIBStringField;
    Q_GeradasAbertasDetTITULO: TIBStringField;
    Q_GeradasAbertasDetVALOR: TIBBCDField;
    Q_GeradasAbertasDetVALORPAGO: TIBBCDField;
    dbGeradasAbertasDetppField1: TppField;
    dbGeradasAbertasDetppField2: TppField;
    dbGeradasAbertasDetppField3: TppField;
    dbGeradasAbertasDetppField4: TppField;
    dbGeradasAbertasDetppField5: TppField;
    ppDBText33: TppDBText;
    Competenciaanteriores: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppDetailBand13: TppDetailBand;
    ppLabel20: TppLabel;
    ppDBText35: TppDBText;
    ppSummaryBand14: TppSummaryBand;
    subRecebimentosParcelasanterioresDet: TppSubReport;
    ppChildReport14: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppDetailBand14: TppDetailBand;
    ppSummaryBand13: TppSummaryBand;
    Q_RecebimentosParcelasanterioresDet: TIBQuery;
    dbRecebimentosParcelasanterioresDet: TppDBPipeline;
    ppField2: TppField;
    Q_RecebimentosParcelasanterioresDetDS: TDataSource;
    dbRecebimentosParcelasanterioresDetppField1: TppField;
    ppDBText22: TppDBText;
    ppDBText36: TppDBText;
    Q_RecebimentosParcelasanterioresDetRAZAO: TIBStringField;
    Q_RecebimentosParcelasanterioresDetVALOR: TIBBCDField;
    Q_RecebimentosParcelasanterioresDetVALORPARCELA: TIBBCDField;
    dbRecebimentosParcelasanterioresDetppField3: TppField;
    ppDBText37: TppDBText;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel23: TppLabel;
    ppLabel39: TppLabel;
    dbGeradasAbertasppField2: TppField;
    ppDBText38: TppDBText;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    Q_GeradasAbertasDetDATAPAGO: TDateField;
    ppLabel48: TppLabel;
    dbGeradasAbertasDetppField6: TppField;
    ppDBText39: TppDBText;
    Q_RecebimentosParcelasanterioresDetCOMPETENCIA: TDateField;
    dbRecebimentosParcelasanterioresDetppField4: TppField;
    ppLabel49: TppLabel;
    ppDBText40: TppDBText;
    Q_RepassesDet: TIBQuery;
    dbRepassesDet: TppDBPipeline;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    Q_RepassesDet_DS: TDataSource;
    Q_Repasse: TIBQuery;
    dbRepasse: TppDBPipeline;
    Q_Repasse_DS: TDataSource;
    dbRepasseppField1: TppField;
    dbRepasseppField2: TppField;
    dbRepasseppField3: TppField;
    Repasses: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppLabel50: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText42: TppDBText;
    RepassesDet: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppDetailBand16: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppSummaryBand15: TppSummaryBand;
    ppSummaryBand16: TppSummaryBand;
    Q_RepassesDetNOME: TIBStringField;
    Q_RepassesDetHISTORICO: TIBStringField;
    Q_RepassesDetNUMCHEQUE: TIntegerField;
    Q_RepassesDetIDGERADOR: TIntegerField;
    Q_RepassesDetTIPOOPERACAO: TIntegerField;
    Q_RecebimentosParcelasanterioresDetTITULO: TIBStringField;
    dbRecebimentosParcelasanterioresDetppField2: TppField;
    ppDBText34: TppDBText;
    Q_RepassesDetFORMAPGTO: TIBStringField;
    dbRepassesDetppField1: TppField;
    Q_RepasseVALOR: TFloatField;
    ppDBText41: TppDBText;
    Q_RepassesDetVALOR: TFloatField;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgRelCaixa: TDlgRelCaixa;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TDlgRelCaixa.Q_DisponivelCalcFields(DataSet: TDataSet);
begin
  inherited;
  Q_DisponivelSaldo.Value := Q_DisponivelSaldoAnterior.Value + Q_DisponivelRepasse.Value + Q_DisponivelEntradas.Value;
end;

procedure TDlgRelCaixa.btGravarClick(Sender: TObject);
begin
  inherited;
  Barra.Position := 0;
  Barra.Visible  := true;
  Barra.Position := Barra.Position + 1;
  with Q_Resumo do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  with Q_OutrosDoc do begin
    close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;

  Barra.Position := Barra.Position + 1;
  with Q_Disponivel do begin
    close;
    parambyname('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;

 // Select cast( substr( o.historico,1,50) as varchar(50)),        o.ValorOperacao,        cast(o.historico as varchar(80)),        0,        8,        o.Operacao,
 //        cast('' as varchar(15)) From OperacoesFinanceiras o          inner join Contas co on o.contaorigem = co.conta           inner join Contas cd on o.contadestino= cd.conta
 //          left join Usuarios u on o.usuario = u.usuario  Where o.Data = :Data and  (((o.TipoOperacao = (:formapagamento + 7)) )) and o.Situacao is null and cd.conta = :Conta  union

 // esse trecho de codigo foi removido do Q_DisponivelDet, porque apartir de agora transferecia de dinheiro nao eh mais tratado como pagamento pelo relatorio   e sim como um repasse

  Barra.Position := Barra.Position + 1;
  with Q_DisponivelDet do begin
    close;
    parambyname('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;


  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacao do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_TipoOperacaoDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Pagamentos do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_PagamentosDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
 	with Q_CreditoUtilizado do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
 	with Q_CreditoUtilizadoDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  with Q_GeradasAbertas do begin
    close;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  with Q_GeradasAbertasDet do begin
    close;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
    Barra.Position := Barra.Position + 1;
    if DMProjeto.Parametro('GeraValorRecebRelatorio') <> 'N' then
    begin
        with Q_RecebimentosParcelasanteriores do begin
           close;
           parambyname('data').AsDateTime  := dtData.Date;
           parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
           open;
        end;
    end
    else
        with Q_RecebimentosParcelasanteriores do begin
           close;
           parambyname('data').AsDateTime  := 01/01/1900 ;
           parambyname('Conta').AsInteger 	:= -999;
           open;
        end;

    begin
    end;
  Barra.Position := Barra.Position + 1;
  if DMProjeto.Parametro('GeraValorRecebRelatorio') <> 'N' then
  begin
        with Q_RecebimentosParcelasanterioresDet do begin
                close;
                parambyname('data').AsDateTime  := dtData.Date;
                parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
                open;
        end;
  end
  else
        with Q_RecebimentosParcelasanterioresDet do begin
           close;
           parambyname('data').AsDateTime  := 01/01/1900 ;
           parambyname('Conta').AsInteger 	:= -999;
           open;
  end;    
  Barra.Position := Barra.Position + 1;
	with Q_Repasse do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;
    Barra.Position := Barra.Position + 1;
	with Q_RepassesDet do begin
  	close;
    parambyname('Conta').AsInteger 	:= cmbConta.LookUpKeyValue;
    parambyname('data').AsDateTime  := dtData.Date;
    open;
  end;

  DMProjeto.ImprimirCabecalho( regCab );
  lbTitulo.Caption:= 'Relatório do Caixa: '+cmbConta.Text;
  ppData.Caption 	:= dtData.Text;
  Barra.Position 	:= Barra.Position + 1;
  Barra.Visible 	:= false;
  lbTitulo.Caption := 'Caixa: ' + cmbConta.Text;
  ppFechamento.Print;
end;

procedure TDlgRelCaixa.Q_ResumoPreCalcFields(DataSet: TDataSet);
begin
  inherited;
//	Q_ResumoPreSaldo.Value := Q_ResumoPreSaldoAnterior.Value + Q_ResumoPreEntradas.Value - Q_ResumoPrePagamentos.Value;
end;

procedure TDlgRelCaixa.Q_OutrosDocFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := Q_OutrosDocValor.Value > 0;
end;

procedure TDlgRelCaixa.ppDBText27GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text = '' then
     Text := '0'+DecimalSeparator+'00';
end;

procedure TDlgRelCaixa.Q_DisponivelFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
 Accept := Q_DisponivelEntradas.Value > 0;
end;

procedure TDlgRelCaixa.dbSaldoAntGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if text = '' then
  	text := DMProjeto.SetZero;
end;

procedure TDlgRelCaixa.ppDBText7DrawCommandClick(Sender,
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

procedure TDlgRelCaixa.ppDBText7DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := Q_DisponivelDetIDGerador.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_DisponivelDetTipoOperacao.AsString;
end;


procedure TDlgRelCaixa.ppDBText20DrawCommandClick(Sender,
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

procedure TDlgRelCaixa.ppDBText20DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := Q_PagamentosDetIDGerador.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_PagamentosDetTipoOperacao.AsString;
end;

procedure TDlgRelCaixa.ppDBText15DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := Q_TipoOperacaoDetSaida.AsInteger;
end;

procedure TDlgRelCaixa.ppDBText13DrawCommandClick(Sender,
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

procedure TDlgRelCaixa.FormsComponentRefresh(Sender: TObject);
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

procedure TDlgRelCaixa.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  C_Caixas.Open;
  cmbConta.LookUpKeyValue := C_CaixasConta.Value;
  dtData.Date  := DMProjeto.dDataSistema;
end;

procedure TDlgRelCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    ppLblObs.caption := 'Obs.';

  Height := 180;
  Width  := 700;    
end;

end.

