unit rpt_ProdutosVendidosGrupoPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB, IBCustomDataSet, IBQuery,
  ppStrtch, ppRegion, ppSubRpt, ppModule, raCodMod;

type
  TrptProdutosVendidosGrupoPai = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Q_GrupoPAI: TIBQuery;
    Q_GrupoPAIDs: TDataSource;
    Q_GrupoPAIDESCRICAOGRUPO: TIBStringField;
    Q_GrupoPAICODIGO: TIBStringField;
    Q_GrupoPAIDESCRICAO: TIBStringField;
    ppDBDetalhe: TppDBPipeline;
    ppVendasGrupoPai: TppReport;
    TS_Panel1: TTS_Panel;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    Q_GruposDs: TDataSource;
    Q_Grupos: TIBQuery;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppSomatorioGeral: TppDBCalc;
    dataIni: TTS_DateTimePicker;
    dataFim: TTS_DateTimePicker;
    ppLine3: TppLine;
    regCab: TppRegion;
    lbTituloRelatorio: TppLabel;
    ppLabel8: TppLabel;
    ppSubSomatorioGrupoPai: TppSubReport;
    ppChildReport1: TppChildReport;
    Q_SomatorioGrupoPai: TIBQuery;
    Q_SomatorioGrupoPaiDs: TDataSource;
    Q_SomatorioGrupoPaiGRUPOPAI: TIntegerField;
    Q_GruposGRUPO: TIntegerField;
    Q_GruposDESCRICAOGRUPO: TIBStringField;
    Q_SomatorioGrupoPailkDescricaoGrupo: TStringField;
    ppDBSomatorio: TppDBPipeline;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppTitleBand1: TppTitleBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    raCodeModule2: TraCodeModule;
    ppDBText8: TppDBText;
    ppLabel14: TppLabel;
    Q_Totalizar: TIBQuery;
    Q_GrupoPAIQTDVENDIDA: TFloatField;
    Q_GrupoPAIPRCMEDIO: TFloatField;
    Q_GrupoPAISUBTOTAL: TFloatField;
    Q_SomatorioGrupoPaiQTDVENDIDA: TFloatField;
    Q_SomatorioGrupoPaiPRCMEDIO: TFloatField;
    Q_SomatorioGrupoPaiSUBTOTAL: TFloatField;
    Q_SomatorioGrupoPaiPERCENTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure btGravarClick(Sender: TObject);
    procedure ppSomatorioGeralGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    sTotalGeral: String;
  public
    { Public declarations }
  end;

var
  rptProdutosVendidosGrupoPai: TrptProdutosVendidosGrupoPai;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TrptProdutosVendidosGrupoPai.FormCreate(Sender: TObject);
begin
  inherited;
  dataini.Date := DMProjeto.dDataSistema;
  dataFim.Date  := DMProjeto.dDataSistema;
end;

procedure TrptProdutosVendidosGrupoPai.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'Total do Grupo: '+Text+' ==>>';
end;

procedure TrptProdutosVendidosGrupoPai.btGravarClick(Sender: TObject);
Var sTotal: String;
begin
  inherited;
  with Q_GrupoPAI do Begin
    Close;
    Params[0].AsDateTime := dataini.Date;
    Params[1].AsDateTime := datafim.Date;
    Open;
  End;

  with Q_Totalizar do Begin
    Close;
    Params[0].AsDateTime := dataini.Date;
    Params[1].AsDateTime := datafim.Date;
    Open;
    sTotal := FormatCurr('0.00',Fields[0].AsCurrency);
    sTotal := Replace(sTOtal,',','.');
  End;

  with Q_SomatorioGrupoPai do Begin
    Close;
    Sql.Text := 'select g.grupopai, sum(quantidade) as QtdVendida, avg(preco) as PrcMedio, '+
                'sum(si.subtotalitem) as SubTotal, (sum(si.subtotalitem) / '+sTotal+') * 100 as percente '+
                'from saidas s  LEFT join saidasitens si on si.saida = s.saida '+
                'LEFT join itens i on si.item = i.item LEFT join grupos g on i.grupo = g.grupo '+
                'where (g.grupopai is not null) and (s.situacao = ''N'') and (si.situacao = ''N'') and (s.data >= :dtIni) and (s.data <= :dtFim) and ((s.tipopadrao = 1) or ((s.tipoPadrao = 2) and (s.status = ''H''))) '+
                'group by g.grupopai ';
    Params[0].AsDateTime := dataini.Date;
    Params[1].AsDateTime := datafim.Date;
    try
        Open;
    Except
        on E:Exception do
      		ShowMessage(e.message);
    end;
  End;
    lbTituloRelatorio.Caption := 'Vendas no Período: '+DateToStr(dataini.date)+' e '+DateToStr(datafim.date);
    DMProjeto.ImprimirCabecalho( regCab );
    ppVendasGrupoPai.Print;
end;

procedure TrptProdutosVendidosGrupoPai.ppSomatorioGeralGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  sTotalGeral := Text;
  sTotalGeral := Funcoes.replace(sTotalGeral,'.','');
  sTotalGeral := Funcoes.replace(sTotalGeral,',','');
  sTotalGeral := FloatToStr(StrToFloat(sTOtalGeral)/100);
end;

end.
