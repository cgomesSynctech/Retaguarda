unit Dlg_PosicaoCaixas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, Db, IBCustomDataSet, IBQuery, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppStrtch,
  ppRegion, ppBands, ppCache, ppSubRpt, dxfProgressBar, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxfLabel, ComCtrls, TS_DateTimePicker, FormsComponent,
  TS_Label, TS_Image, TS_MaxPanel, TS_Memo, teCtrls,
  TS_EffectsPanel, Menus, TS_PopupMenu, Placemnt, BTOdeum, ppModule,
  daDataModule, TeEngine, Series, TeeProcs, Chart, TS_CheckBox;

type
  TDlgPosicaoCaixas = class(TFrmModeloCadastros)
    ppPosicaoCaixas: TppReport;
    Q_Disponivel: TIBQuery;
    Q_PorCaixa: TIBQuery;
    Q_DisponivelDESCRICAO: TIBStringField;
    Q_DisponivelTOTAL: TIBBCDField;
    Q_DisponivelDS: TDataSource;
    Q_PorCaixaDS: TDataSource;
    dbDisponivel: TppDBPipeline;
    dbPorCaixa: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    lbData: TppLabel;
    ppTitleBand1: TppTitleBand;
    Q_PorCaixaNOMECONTA: TIBStringField;
    Q_PorCaixaDESCRICAO: TIBStringField;
    Q_PorCaixaSITUACAO: TIBStringField;
    Q_PorCaixaTOTAL: TIBBCDField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Resumo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppConta: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    Barra: TdxfProgressBar;
    Q_PorCaixaCONTA: TIntegerField;
    TS_Memo1: TTS_Memo;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    daDataModule1: TdaDataModule;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppImgFormaPagamento: TppImage;
    Grafico: TChart;
    Serie: TPieSeries;
    ppImgCaixas: TppImage;
    ckbGrafico: TTS_CheckBox;
    procedure btGravarClick(Sender: TObject);
    procedure Q_OutrosDocFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Q_PorCaixaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Q_DisponivelFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppContaPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgPosicaoCaixas: TDlgPosicaoCaixas;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgPosicaoCaixas.btGravarClick(Sender: TObject);
var nConta : integer;
		sConta : string;
    nTotal : Currency;
begin
  inherited;
  Barra.Position := 0;
  Barra.Visible  := true;
  Barra.Position := Barra.Position + 1;
	with Q_Disponivel do begin
  	Close;
    Open;
    Serie.Clear;
    while not EOF do begin
      Serie.AddPie(FieldByName('Total').AsCurrency, FieldByName('Descricao').AsString);
      Next;
    end;
    First;
    ppImgFormaPagamento.Picture.Metafile := Grafico.TeeCreateMetafile(true, Rect( 0, 0, Trunc(ppImgFormaPagamento.Width), Trunc(ppImgFormaPagamento.Height) ) );
  end;
  Barra.Position := Barra.Position + 1;
	with Q_PorCaixa do begin
  	close;
    open;
    Serie.Clear;
    while not EOF do begin
      nConta := FieldByName('Conta').AsInteger;
      sConta := FieldByName('NomeConta').AsString;
      nTotal := 0;
      while (not EOF) and (nConta = FieldByName('Conta').AsInteger) do begin
      	nTotal := nTotal + FieldByName('Total').AsCurrency;
        Next;
      end;
      Serie.AddPie( nTotal, sConta );
      Next;
    end;
    First;
    ppImgCaixas.Picture.Metafile := Grafico.TeeCreateMetafile(true, Rect( 0, 0, Trunc(ppImgCaixas.Width), Trunc(ppImgCaixas.Height) ) );
  end;
  Barra.Position := Barra.Position + 1;
  ppPosicaoCaixas.Publisher.Publish;
  Barra.Position := Barra.Position + 1;
  DMProjeto.ImprimirCabecalho( regCab );
  lbData.Caption := datetostr(DMProjeto.getDataServidor);
  Barra.Position := Barra.Position + 1;

  ppImgCaixas.Visible := ckbGrafico.Checked;
  ppImgFormaPagamento.Visible := ckbGrafico.Checked;
  ppPosicaoCaixas.Print;
  Barra.Visible := false;
end;

procedure TDlgPosicaoCaixas.Q_OutrosDocFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := DataSet['Saldo'] > 0;
end;

procedure TDlgPosicaoCaixas.Q_PorCaixaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := DataSet['Total'] > 0;
end;

procedure TDlgPosicaoCaixas.Q_DisponivelFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := Q_DisponivelTotal.Value <> 0;
end;

procedure TDlgPosicaoCaixas.ppContaPrint(Sender: TObject);
begin
  inherited;
	if Copy(Q_PorCaixaSituacao.Value,1,1) = 'A' then
		ppConta.Font.Color := clNavy
  else
  	ppConta.Font.Color := clMaroon;
end;

end.

