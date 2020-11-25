unit Dlg_ApuracaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ppBands, ppCtrls, ppReport, ppSubRpt, ppPrnabl,
  ppClass, ppStrtch, ppRegion, ppCache, ppProd, DB, ppDB, ppComm, ppRelatv,
  ppDBPipe, IBCustomDataSet, IBQuery, ComCtrls, TS_MonthCalendar;

type
  TDlgApuracaoCaixa = class(TFrmModeloCadastros)
    Q_Resumo: TIBQuery;
    Q_ResumoFORMAPAGAMENTO: TIntegerField;
    Q_ResumoDESCRICAO: TIBStringField;
    Q_ResumoSALDOANTERIOR: TIBBCDField;
    Q_ResumoSALDOATUAL: TIBBCDField;
    Q_ResumoENTRADAS: TIBBCDField;
    Q_ResumoSAIDAS: TIBBCDField;
    Q_ResumoREPASSE: TIBBCDField;
    dbResumo: TppDBPipeline;
    dbResumoppField1: TppField;
    dbResumoppField2: TppField;
    dbResumoppField3: TppField;
    dbResumoppField4: TppField;
    dbResumoppField5: TppField;
    dbResumoppField6: TppField;
    dbResumoppField7: TppField;
    Q_ResumoDS: TDataSource;
    ppFechamento: TppReport;
    ppTitleBand1: TppTitleBand;
    regCab: TppRegion;
    ppShape1: TppShape;
    ppData: TppLabel;
    lbTitulo: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppShape6: TppShape;
    ppLabel2: TppLabel;
    ppShape7: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape8: TppShape;
    ppLabel7: TppLabel;
    ppShape9: TppShape;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    dbSaldoAnt: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine20: TppLine;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel6: TppLabel;
    ppShape4: TppShape;
    dbtSaldoAtual: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppTitulos: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    Q_Titulos: TIBQuery;
    Q_TitulosDs: TDataSource;
    Q_TitulosDESCRICAO: TIBStringField;
    Q_TitulosTOTALARECEBERABERTO: TIBBCDField;
    Q_TitulosRECEBIDOSHOJE: TIBBCDField;
    Q_TitulosARECEBERSALDO: TIBBCDField;
    Q_TitulosAPAGARATEHOJE: TIBBCDField;
    Q_TitulosPAGASHOJE: TIBBCDField;
    Q_TitulosAPAGARSALDO: TIBBCDField;
    ppDBTitulos: TppDBPipeline;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppShape3: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppShape10: TppShape;
    ppLine11: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    dtData: TTS_MonthCalendar;
    procedure btGravarClick(Sender: TObject);
    procedure pnDadosEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgApuracaoCaixa: TDlgApuracaoCaixa;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgApuracaoCaixa.btGravarClick(Sender: TObject);
begin
  inherited;
	with Q_Resumo do begin
  	close;
    parambyname('data').AsDateTime  :=  dtData.Date;
    parambyname('Conta').AsInteger  :=  1;
    open;
  end;
	with Q_Titulos do begin
  	close;
//    parambyname('data').AsDateTime  :=  dtData.Date;
    open;
  end;
  ppFechamento.Print;

end;

procedure TDlgApuracaoCaixa.pnDadosEnter(Sender: TObject);
begin
  inherited;
  dtData.Date := Now;
end;

end.
