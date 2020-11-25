unit Rpt_SaldoCheques;
                                                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Frm_ModeloCadastros, Db, IBCustomDataSet, IBQuery, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppCtrls, ppSubRpt, ppPrnabl, ppStrtch, ppRegion, ppBands, ppCache, ppDB, ppVar, ppDevice, ppTypes,
  ppDBPipe, FormsComponent,TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_DateTimePicker, dxfProgressBar, Menus, TS_PopupMenu, BTOdeum,
  Placemnt;

type
  TRptSaldoCheques = class(TFrmModeloCadastros)
    Q_Entradas: TIBQuery;
    Q_Saidas: TIBQuery;
    Q_SaldoAnt: TIBQuery;
    ppSaldoCheques: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    subEntradas: TppSubReport;
    ppChildReport1: TppChildReport;
    subSaidas: TppSubReport;
    ppChildReport2: TppChildReport;
    dbSaldoAnt: TppDBPipeline;
    dbEntradas: TppDBPipeline;
    dbSaidas: TppDBPipeline;
    Q_SaldoAntDS: TDataSource;
    Q_EntradasDS: TDataSource;
    Q_SaidasDS: TDataSource;
    Q_EntradasVALOR: TIBBCDField;
    Q_EntradasNOME: TIBStringField;
    Q_EntradasDESCCONTA: TIBStringField;
    Q_EntradasDATA: TDateField;
    Q_EntradasVENCIMENTO: TDateField;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    Q_EntradasNUMCHEQUE: TIntegerField;
    dbTotalEntradas: TppDBCalc;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    ppLabel12: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText10: TppDBText;
    Q_SaidasDATA: TDateField;
    Q_SaidasNOME: TIBStringField;
    Q_SaidasVALOR: TFloatField;
    Q_SaidasDESCTIPOOPERACAO: TIBStringField;
    Q_SaidasNUMCHEQUE: TIntegerField;
    Q_SaidasUSUARIO: TIBStringField;
    dbTotalSaidas: TppDBCalc;
    lbSaldoAnt: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel20: TppLabel;
    lbSaldoAtual: TppLabel;
    Q_SaldoAntSALDOANTERIOR: TIBBCDField;
    Barra: TdxfProgressBar;
    lbPeriodo: TppLabel;
    Q_EntradasFAVORECIDO: TIntegerField;
    Q_EntradasTIPOFAVORECIDO: TIntegerField;
    Q_SaidasFAVORECIDO: TIntegerField;
    Q_SaidasTIPOFAVORECIDO: TIntegerField;
    Q_EntradasIDGERADOR: TIntegerField;
    Q_EntradasTIPOOPERACAO: TIntegerField;
    Q_SaidasTIPODEPOSITO: TIntegerField;
    Q_SaidasDEPOSITO: TIntegerField;
    procedure lbSaldoAntGetText(Sender: TObject; var Text: String);
    procedure lbSaldoAtualGetText(Sender: TObject; var Text: String);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppDBText2DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText2DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText3DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText3DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText8DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText8DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText9DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText9DrawCommandCreate(Sender, aDrawCommand: TObject);
  private
    { Private declarations }
    nSaldoAnterior : Currency;
  public
    { Public declarations }
  end;

var
  RptSaldoCheques: TRptSaldoCheques;

implementation

uses DM_Projeto;


{$R *.DFM}

procedure TRptSaldoCheques.lbSaldoAntGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  text := formatfloat('###,###,##0.00', nSaldoAnterior );
end;

procedure TRptSaldoCheques.lbSaldoAtualGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('###,###,##0.00', nSaldoAnterior +
          dbTotalEntradas.Value - dbTotalSaidas.Value);
end;

procedure TRptSaldoCheques.btGravarClick(Sender: TObject);
begin
  inherited;
  ActiveControl := nil;
  Barra.Position := 0;
  Barra.Visible := true;
  Barra.Position := Barra.Position + 1;
	with Q_SaldoAnt do begin
  	close;
    parambyname('DataI').AsDate := DataI.Date;
    open;
    nSaldoAnterior := Q_SaldoAntSaldoAnterior.Value;
    close;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Entradas do begin
  	close;
    parambyname('DataI').AsDate := DataI.Date;
    parambyname('DataF').AsDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
	with Q_Saidas do begin
  	close;
    parambyname('DataI').AsDate := DataI.Date;
    parambyname('DataF').AsDate := DataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  DMProjeto.ImprimirCabecalho( regCab );
  lbPeriodo.Caption := 'No período de '+DataI.Text+' a '+DataF.Text;
  Barra.Position := Barra.Position + 1;
  ppSaldoCheques.Print;
  Barra.Visible := false;
end;

procedure TRptSaldoCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.Date := DMProjeto.dDataSistema;
  DataF.Date := DMProjeto.dDataSistema;
end;

procedure TRptSaldoCheques.ppDBText2DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    CriarForm(getTelaFavorecido(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
  end;
end;

procedure TRptSaldoCheques.ppDBText2DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_EntradasFavorecido.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_EntradasTipoFavorecido.AsString;
end;

procedure TRptSaldoCheques.ppDBText3DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
  end;
end;

procedure TRptSaldoCheques.ppDBText3DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_EntradasIDGerador.Value;
	TppDrawCommand(aDrawCommand).ExpansionKey := Q_EntradasTipoOperacao.AsString;
end;

procedure TRptSaldoCheques.ppDBText8DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    CriarForm(getTelaFavorecido(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
  end;
end;

procedure TRptSaldoCheques.ppDBText8DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_SaidasFavorecido.AsInteger;
  TppDrawCommand(aDrawCommand).ExpansionKey := Q_SaidasTipoFavorecido.AsString;
end;

procedure TRptSaldoCheques.ppDBText9DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)),self,true);
  end;
end;

procedure TRptSaldoCheques.ppDBText9DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	TppDrawCommand(aDrawCommand).Tag := Q_SaidasDeposito.Value;
	TppDrawCommand(aDrawCommand).ExpansionKey := Q_SaidasTipoDeposito.AsString;
end;

end.
