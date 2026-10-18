unit Rpt_ResultadosPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, dxfProgressBar, ppPrnabl, ppClass, ppStrtch, ppRegion,
  ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppDB,
  ppDBPipe, DB, IBCustomDataSet, IBQuery, TeEngine, Series, TeeProcs, Chart,
  TS_PopupEdit, TS_PopupFiltrarItens, TS_RadioGroup, DBClient, Provider,
  CheckLst, TS_CheckListBox;

type
  TRptResultadosPeriodo = class(TFrmModeloCadastros)
    Label1: TLabel;
    DataI: TTS_DateTimePicker;
    Label2: TLabel;
    DataF: TTS_DateTimePicker;
    ppResultadoPeriodo: TppReport;
    ppDetailBand1: TppDetailBand;
    Barra: TdxfProgressBar;
    Q_Entrada: TIBQuery;
    Q_EntradaDS: TDataSource;
    Q_Saida: TIBQuery;
    Q_SaidaDS: TDataSource;
    dbEntrada: TppDBPipeline;
    dbSaida: TppDBPipeline;
    lbTituloRelatorio: TppLabel;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    lbTotalFaturado: TppLabel;
    lbDescontosCedidos: TppLabel;
    lbAcrescimo: TppLabel;
    lbFaturamentoLiquido: TppLabel;
    lbTotalCustoProduto: TppLabel;
    lbTotalCMV: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lbICMSFaturamento: TppLabel;
    ppLabel9: TppLabel;
    lbIF: TppLabel;
    ppLabel10: TppLabel;
    ppTotalGeral: TppLabel;
    ppLine4: TppLine;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppPercTot_Desc: TppLabel;
    Q_SaidasItem: TIBQuery;
    Q_SaidasItemDS: TDataSource;
    Q_SaidasItemCUSTO: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    Q_Detalhe: TIBQuery;
    Q_DetalheDs: TDataSource;
    Q_DetalheCODIGO: TIBStringField;
    Q_DetalheDESCRICAO: TIBStringField;
    Q_DetalheREFERENCIA: TIBStringField;
    Q_DetalheUNIDADE: TIBStringField;
    Q_DetalheFABRICANTE: TIBStringField;
    ppDBPDetalhe: TppDBPipeline;
    Q_DetalheicPercentual: TFloatField;
    Q_DetalheDESCRICAOGRUPO: TIBStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppDBText11: TppDBText;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalcCusto: TppDBCalc;
    ppDBPRCVenda: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    Label3: TLabel;
    PercTot_CMV: TppLabel;
    PercTot_CUSTO: TppLabel;
    ppShape1: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppDBCalcDESCONTO: TppDBCalc;
    ppDBCalcVALORICMS: TppDBCalc;
    ppDBCalcDespesas: TppDBCalc;
    rgCusto: TTS_RadioGroup;
    ppShape16: TppShape;
    ppPecFinal: TppLabel;
    clbTipoOperacao: TTS_CheckListBox;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    TS_Label3: TTS_Label;
    TS_PopupEdit1: TTS_PopupEdit;
    Q_SaidaVALORICMS: TFloatField;
    Q_SaidaDESPESAS: TFloatField;
    Q_SaidaDESCONTO: TFloatField;
    Q_SaidaTOTALPAGO: TFloatField;
    Q_DetalheQTD: TFloatField;
    Q_DetalheCUSTOPRODUTO: TFloatField;
    Q_DetalheCUSTO: TFloatField;
    Q_DetalhePRCVENDA: TFloatField;
    Q_DetalheVALORICMS: TFloatField;
    Q_DetalheDESPESAS: TFloatField;
    Q_DetalheDESCONTO: TFloatField;
    Q_EntradaVALORICMS: TFloatField;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure Q_DetalheCalcFields(DataSet: TDataSet);
    procedure lbAcrescimoGetText(Sender: TObject; var Text: String);
    procedure lbDescontosCedidosGetText(Sender: TObject; var Text: String);
    procedure lbTotalFaturadoGetText(Sender: TObject; var Text: String);
    procedure ppPercTot_DescGetText(Sender: TObject; var Text: String);
    procedure lbFaturamentoLiquidoGetText(Sender: TObject;
      var Text: String);
    procedure PercTot_CUSTOGetText(Sender: TObject; var Text: String);
    procedure lbTotalCustoProdutoGetText(Sender: TObject;
      var Text: String);
    procedure PercTot_CMVGetText(Sender: TObject; var Text: String);
    procedure lbTotalCMVGetText(Sender: TObject; var Text: String);
    procedure ppTotalGeralGetText(Sender: TObject; var Text: String);
    procedure lbICMSFaturamentoGetText(Sender: TObject; var Text: String);
    procedure lbIFGetText(Sender: TObject; var Text: String);
    procedure ppPecFinalGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
    yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais: Currency;
  public
    { Public declarations }
  end;

var
  RptResultadosPeriodo: TRptResultadosPeriodo;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TRptResultadosPeriodo.btGravarClick(Sender: TObject);
var
  sTipoOperacao,sFiltroItens: String;
  fatLiquido, totalGeral: Real;
begin
  inherited;


  sFiltroItens := PopupFiltroItens.getSQL;
  if Pos('and ((i.desativado = ''N'') Or (i.desativado is Null))',sFiltroItens) > 0 Then
    sFiltroItens := Replace(sFiltroItens,'and ((i.desativado = ''N'') Or (i.desativado is Null))','')
  Else
    sFiltroItens := Replace(sFiltroItens,'((i.desativado = ''N'') Or (i.desativado is Null))','');

  sTipoOperacao := clbTipoOperacao.Selecionados;
  if (sTipoOperacao <> '') then
    sTipoOperacao := 'where s.tipomovimento in ('+sTipoOperacao+')'
  else
    sTipoOperacao := 'where 1=1 ';



  DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);
  Q_Detalhe.Close;
  Q_Detalhe.Sql.Text := ' SELECT i.codigo, i.descricao, i.referencia, f.descricao as Fabricante, si.unidade, g.descricaogrupo, '+
                        '        (select sum(x.desconto*-1) from saidas x where x.data between :datai and :dataf and x.tipopadrao = 1 ) as desconto  , '+
                        '        sum(si.quantidade) As Qtd, '+
                        '        Avg(case when :TipoCusto = ''M'' Then si.customedio Else si.custocontabil End) as  CustoProduto, '+
                        '        Avg(case when :TipoCusto = ''M'' Then si.customedio Else si.custocontabil End) * Sum(si.quantidade) as Custo, '+
                        '        sum(si.preco * si.quantidade)  as PrcVenda, '+
                        '        Sum(si.valoricmsprod)  AS valoricms, '+
                        '        Max(s.frete) + Max(s.outrasdespesas)   as despesas '+
                        ' FROM saidas s '+
                        '          Left join saidasitens si on si.saida = s.saida '+
                        '          Left join Itens i on i.item = si.item '+
                        '          Left Join grupos g on i.grupo = g.grupo '+
                        '          Left Join fabricantes f on f.fabricante = i.fabricante '+
                        '          Left Join Itensunidades iu on iu.item = i.item and iu.unidade = i.unidade '+
                        sTipoOperacao+
                        ' and (s.data >= :datai and s.data <= :dataf) '+
                        ' and s.situacao <> ''C'' '+
                        iif(sFiltroItens <> ' ', ' and ' + sFiltroItens,'') +
                        ' Group by i.codigo, i.descricao, i.referencia, f.descricao, si.unidade, g.descricaogrupo '+
                        ' having sum(si.preco * si.quantidade) is not null '+
                        ' Order By g.descricaogrupo, i.descricao ';
  Q_Detalhe.ParamByName('TipoCusto').AsString := iif(rgCusto.ItemIndex = 0, 'M','C');
  Q_Detalhe.ParamByName('datai').AsDateTime := DataI.Date;
  Q_Detalhe.ParamByName('dataf').AsDateTime := DataF.Date;
  Q_Detalhe.Open;

  Q_Entrada.Close;
  Q_Entrada.Sql.Text := ' select Sum(e.valoricms) as valoricms '+
                        ' from entradas e '+
                        ' WHERE e.tipomovimento in (4, 12) '+
                        '      and e.situacao <> ''C'' '+
                        '      and e.data between :datai and :dataf '+
                        '      and e.entrada in '+
                        ' (select distinct entrada from Entradasitens ei '+
                        '       Left join itens i on ei.item = i.item '+
                        ' where ' +iif(sFiltroItens = ' ', ' 1 = 1 ', sFiltroItens)+')';
  Q_Entrada.ParamByName('datai').AsDateTime := DataI.Date;
  Q_Entrada.ParamByName('dataf').AsDateTime := DataF.Date;
  Q_Entrada.Open;

//  Q_Saida.Close;
//  Q_Saida.Sql.Text := ' SELECT Sum(s.valoricms) AS valoricms, '+
//                      '        Sum(s.frete + s.outrasdespesas) as despesas, '+
//                      '        Sum(s.desconto*-1)  as desconto, '+
//                      '        Sum(s.totalitens) as totalpago '+
//                      ' from saidas s '+
//                      ' WHERE s.tipomovimento in(1, 7, 700) '+
//                      ' and (s.data between :datai and :dataf) '+
//                      ' and s.situacao <> ''C'' and s.saida in '+
//                      ' (select distinct saida from saidasitens si '+
//                      ' Left join itens i on i.item = si.item '+
//                       iif(PopupFiltroItens.getSQL = '', ') ', ' Where '+PopupFiltroItens.getSQL)+')';
//  Q_Saida.ParamByName('datai').AsDateTime := DataI.Date;
//  Q_Saida.ParamByName('dataf').AsDateTime := DataF.Date;
//  Q_Saida.Open;
//
//  Q_SaidasItem.Close;
//  Q_SaidasItem.Sql.Text :=  ' select sum(si.customedio * si.quantidade) as custo '+
//                            ' FROM saidas s Left JOIN saidasitens si ON s.saida = si.saida '+
//                            ' Left join itens i on si.item = i.item '+
//                            ' WHERE s.tipomovimento in(1, 7, 700) AND s.data between :datai and :dataf '+
//                            ' and s.situacao <> ''C'' '+
//                            iif(PopupFiltroItens.getSQL <> '', ' and ' + PopupFiltroItens.getSQL,'');
//
//
//  Q_SaidasItem.ParamByName('datai').AsDateTime := DataI.Date;
//  Q_SaidasItem.ParamByName('dataf').AsDateTime := DataF.Date;
//  Q_SaidasItem.Open;

  If Q_DetalhePrcVenda.Value <= 0 Then Begin
     dlgMsg.ShowMsg(50, ['Não existe informação para este filtro!']);
     Exit;
  End;

  lbTituloRelatorio.Caption   := 'Resultados no Período: ' + DataI.Text + ' - ' + DataF.Text+ ' - Custo: '+iif(rgCusto.ItemIndex = 0, 'Medio.','Contabil.');;


//  lbTotalFaturado.Caption     := formatfloat('###,###,##0.00', Q_SaidaTOTALPAGO.Value );
//  lbDescontosCedidos.Caption  := formatfloat('###,###,##0.00', Q_SaidaDESCONTO.Value );
//  lbAcrescimo.Caption         := formatfloat('###,###,##0.00', Q_SaidaDESPESAS.Value );
//  lbTotalCustoProduto.Caption := formatfloat('###,###,##0.00', Q_SaidasItemCUSTO.Value );
//  lbTotalCMV.Caption          := formatfloat('###,###,##0.00', FatLiquido - Q_SaidasItemCUSTO.Value );
//  lbICMSFaturamento.Caption   := formatfloat('###,###,##0.00', Q_SaidaVALORICMS.Value );
//  lbTotalsemICMS.Caption      := formatfloat('###,###,##0.00', FatLiquido - Q_EntradaTOTALCOMPRA.Value - Q_SaidaVALORICMS.Value );

//LUCRO BRUTO COMTEMPLANDO ICMS CREDITO - DEBITO = TOTAL VENDAS -COMPRAS + ICMS CREDITO - ICMS DEBITO
//  totalGeral := FatLiquido - Q_SaidasItemCUSTO.Value - Q_SaidaVALORICMS.Value + Q_EntradaVALORICMS.Value;
//  lbTotalFaturado.Caption     := formatfloat('###,###,##0.00', ppDBPRCVenda.Value);
//  lbDescontosCedidos.Caption  := formatfloat('###,###,##0.00', ppDBCalcDESCONTO.Value);
//  lbAcrescimo.Caption         := formatfloat('###,###,##0.00', ppDBCalcDESPESAS.Value );
//  lbFaturamentoLiquido.Caption:= formatfloat('###,###,##0.00', ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value );
//  lbTotalCustoProduto.Caption := formatfloat('###,###,##0.00', ppDBCalcCusto.Value );
//  lbTotalCMV.Caption          := formatfloat('###,###,##0.00', (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) -   ppDBCalcCusto.Value );
//  lbICMSFaturamento.Caption   := formatfloat('###,###,##0.00', ppDBCalcVALORICMS.Value );
//  lbICMSEntrada.Caption       := formatfloat('###,###,##0.00', Q_EntradaVALORICMS.Value);


//  totalGeral := FatLiquido - ppDBCalcCusto.Value - ppDBCalcVALORICMS.Value + Q_EntradaVALORICMS.Value;
//  ppTotalGeral.Caption        := formatfloat('###,###,##0.00', ((ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value )) - (ppDBCalcCusto.Value - ppDBCalcVALORICMS.Value + Q_EntradaVALORICMS.Value;));
//  ppPercTot_Desc.Caption      := formatfloat('###,###,##0.00%', ppDBCalcDESCONTO.Value/ppDBPRCVenda.Value*100);
//  PercTot_CMV.Caption         := formatfloat('###,###,##0.00%', (((ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) - ppDBCalcCusto.Value) / FatLiquido)*100);
//  PercTot_CUSTO.Caption       := formatfloat('###,###,##0.00%', ( ppDBCalcCusto.Value/ (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) )*100);
  DMProjeto.ImprimirCabecalho( regCab );
  ppResultadoPeriodo.Print;
end;

procedure TRptResultadosPeriodo.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.Date := DMProjeto.dDataSistema - 30;
  DataF.Date := DMProjeto.dDataSistema;
end;

procedure TRptResultadosPeriodo.Q_DetalheCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icPercentual').Value :=
   (( 1 - (DataSet.FieldByName('Custo').Value /
          iif(DataSet.FieldByName('PrcVenda').Value <= 0,1,DataSet.FieldByName('PrcVenda').Value)))
   * 100);
end;

procedure TRptResultadosPeriodo.lbAcrescimoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text         := formatfloat('###,###,##0.00', ppDBCalcDESPESAS.Value );
end;

procedure TRptResultadosPeriodo.lbDescontosCedidosGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text :=  formatfloat('###,###,##0.00', ppDBCalcDESCONTO.Value);
end;

procedure TRptResultadosPeriodo.lbTotalFaturadoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00', ppDBPRCVenda.Value);
end;

procedure TRptResultadosPeriodo.ppPercTot_DescGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00%', ppDBCalcDESCONTO.Value/ppDBPRCVenda.Value*100);
end;

procedure TRptResultadosPeriodo.lbFaturamentoLiquidoGetText(
  Sender: TObject; var Text: String);
begin
  inherited;
 Text := formatfloat('###,###,##0.00', ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value );
end;

procedure TRptResultadosPeriodo.PercTot_CUSTOGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00%', ( ppDBCalcCusto.Value/ (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) )*100);
end;

procedure TRptResultadosPeriodo.lbTotalCustoProdutoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text  := formatfloat('###,###,##0.00', ppDBCalcCusto.Value );
end;

procedure TRptResultadosPeriodo.PercTot_CMVGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00%', (((ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) - ppDBCalcCusto.Value) / (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ))*100);
end;

procedure TRptResultadosPeriodo.lbTotalCMVGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text  := formatfloat('###,###,##0.00', (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value ) -   ppDBCalcCusto.Value );
end;

procedure TRptResultadosPeriodo.ppTotalGeralGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text  := formatfloat('###,###,##0.00',    (ppDBPRCVenda.Value)
                                         + (ppDBCalcDESPESAS.Value)
                                         - (ppDBCalcDESCONTO.Value)
                                         - (ppDBCalcCusto.Value)
                                         - (ppDBCalcVALORICMS.Value)
                                         - (ppDBPRCVenda.Value* (yImpostosFederais/100 )) );
end;

procedure TRptResultadosPeriodo.lbICMSFaturamentoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text  := formatfloat('###,###,##0.00', ppDBCalcVALORICMS.Value );
end;

procedure TRptResultadosPeriodo.lbIFGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00', ppDBPRCVenda.Value* (yImpostosFederais/100 ) );
end;

procedure TRptResultadosPeriodo.ppPecFinalGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := formatfloat('###,###,##0.00%', (   (ppDBPRCVenda.Value)
                                           + (ppDBCalcDESPESAS.Value)
                                           - (ppDBCalcDESCONTO.Value)
                                           - (ppDBCalcCusto.Value)
                                           - (ppDBCalcVALORICMS.Value)
                                           - (ppDBPRCVenda.Value* (yImpostosFederais/100 )) )
                                           /
                                         (    (ppDBPRCVenda.Value + ppDBCalcDESPESAS.Value - ppDBCalcDESCONTO.Value) )
                                           * 100) ;
end;

procedure TRptResultadosPeriodo.FormCreate(Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos); 
end;

procedure TRptResultadosPeriodo.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
end;

end.
