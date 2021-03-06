unit Dlg_GrafVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  RXSplit, TeEngine, Series, Db, IBCustomDataSet, IBQuery,
  TeeProcs, Chart, DBChart, ComCtrls, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_DateTimePicker, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu,
  Placemnt, BTOdeum;

type
  TDlgGrafVendas = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    pDetalhe: TTS_Panel;
    RxSplitter1: TRxSplitter;
    pgVendas: TPageControl;
    tabVendas: TTabSheet;
    tabVendasDet: TTabSheet;
    grafVendas: TDBChart;
    grafVendasDet: TDBChart;
    Q_Vendas: TIBQuery;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    pgDetalhe: TPageControl;
    tabDetalhe: TTabSheet;
    grafDetalhe: TDBChart;
    tabDetalheNoPeriodo: TTabSheet;
    grafDetalheNoPeriodo: TDBChart;
    Q_Detalhe: TIBQuery;
    Q_VendasDet: TIBQuery;
    TS_SpeedButton1: TTS_SpeedButton;
    serVendasDet: TPieSeries;
    Q_DetalheNoPeriodo: TIBQuery;
    serDetalheNoPeriodo: TBarSeries;
    TS_SpeedButton2: TTS_SpeedButton;
    ppmGrafico: TTS_PopupMenu;
    VisualizarValores: TMenuItem;
    Legenda1: TMenuItem;
    Percentual: TMenuItem;
    Valores: TMenuItem;
    Grfico1: TMenuItem;
    PercentualGraf: TMenuItem;
    ValoresGraf: TMenuItem;
    N1: TMenuItem;
    Imprimir: TMenuItem;
    MostrarLegenda: TMenuItem;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    btClientes: TTS_SpeedButton;
    Q_VendasDESCRICAO: TIBStringField;
    Q_VendasVENDAS: TFloatField;
    Q_VendasDEVOLUCOES: TFloatField;
    Q_VendasVLRREAL: TFloatField;
    Q_VendasDetID: TIntegerField;
    Q_VendasDetDESCRICAO: TIBStringField;
    Q_VendasDetTOTAL: TFloatField;
    Q_DetalheNoPeriodoDESCRICAO: TIBStringField;
    Q_DetalheNoPeriodoTOTAL: TFloatField;
    Q_DetalheID: TIntegerField;
    Q_DetalheDESCRICAO: TIBStringField;
    Q_DetalheVENDAS: TFloatField;
    Q_DetalheVLRREAL: TFloatField;
    Q_DetalheDEVOLUCOES: TFloatField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure VisualizarValoresClick(Sender: TObject);
    procedure PercentualClick(Sender: TObject);
    procedure ValoresClick(Sender: TObject);
    procedure PercentualGrafClick(Sender: TObject);
    procedure ValoresGrafClick(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure grafVendasClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure grafDetalheClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grafDetalheContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ppmGraficoPopup(Sender: TObject);
    procedure MostrarLegendaClick(Sender: TObject);
    procedure grafVendasAllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure btClientesClick(Sender: TObject);
  private
    procedure AtualizarGraficos(bAlterouPeriodo: boolean);
    procedure VendaDetalhe(sTexto: string);
    procedure DetalheNoPeriodo(ID: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgGrafVendas: TDlgGrafVendas;
  sClientes, sNomesClientes: String;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgGrafVendas.AtualizarGraficos( bAlterouPeriodo : boolean );
Var nDevolucoes, nVlrReal: Real;
sWhereClientes: String;
begin
   if sClientes <> '' then
      sWhereClientes := ' and s.favorecido in (' + sClientes +')'
   Else
      sWhereClientes := ' ';
   if bAlterouPeriodo then begin
    grafVendas.Title.Text.Clear;
    grafVendas.Title.Text.Add('Vendas');
    grafVendas.Title.Text.Add('em '+DataI.Text+' a '+DataF.Text);
    with Q_Vendas do begin
      close;
      Sql.Text := 'Select m.descricao|| ''/'' || a.ano as Descricao, Sum(s.total) as Vendas, '+
                  ' sum(COALESCE((select Sum(e.total) FROM entradasitensmescla m '+
                  '         inner join entradasitens ei on ei.entradaitem = m.entradaitem '+
                  '         inner join entradas e on e.entrada = ei.entrada '+
                  '      where m.entrada_original = s.saida),0)) as Devolucoes, '+
                  ' Sum(s.total) -  sum(COALESCE((select Sum(e.total)  '+
                  ' FROM entradasitensmescla m  '+
                  '         inner join entradasitens ei on ei.entradaitem = m.entradaitem '+
                  '         inner join entradas e on e.entrada = ei.entrada '+
                  '      where m.entrada_original = s.saida),0)) As VlrReal '+
                  ' From Saidas s  '+
                  '        left join Favorecidos f on s.vendedor = f.favorecido  '+
                  '        inner join Meses m on extract(month from s.data) = m.mes '+
                  '        inner join Anos a on extract(year from s.data) = a.ano '+
                  ' Where s.data >= :DataI '+
                  ' and s.data <= :DataF '+
                  ' and s.tipopadrao = 1 '+
                  ' and s.situacao = ''N'' '+
                  sWhereClientes +
                  ' Group by m.descricao,a.ano ';

      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
      first;
      grafVendas.Series[0].Clear;
      grafVendas.Series[1].Clear;
      grafVendas.Series[2].Clear;
      while not eof do Begin
        grafVendas.Series[0].Add(Q_VendasVENDAS.Value, Q_VendasDESCRICAO.AsString , clBlue  );
        grafVendas.Series[0].Marks.Visible := true;
        grafVendas.Series[0].Marks.Style := smsValue;
        grafVendas.Series[1].Add(Q_VendasDEVOLUCOES.Value,FormatCurr('#,##0.00',Q_VendasDEVOLUCOES.Value), clRed  );
        grafVendas.Series[2].Add(Q_VendasVLRREAL.Value, FormatCurr('#,##0.00',Q_Vendasvlrreal.Value), clyellow  );
        Next;
      End;
   end;
  end;
  grafDetalhe.Title.Text.Clear;
  with Q_Detalhe do begin
  	close;
  	if btGravar.Down then begin {Por Produto}
          sql.text := 'Select i.item as ID, i.descricao, Sum(s.total) as Vendas, '+
                  ' MAX((Select sum(e.total) From entradas e Where e.tipopadrao = 106 '+Funcoes.Replace(sWhereClientes,'s.','e.')+
                  ' and e.situacao = ''N'' '+
                  ' and extract(MONTH from e.data) = extract(MONTH from s.data) '+
                  ' and extract(YEAR from e.data) = extract(YEAR from s.data))) as Devolucoes, '+
                  ' Sum(s.total) - Max((Select sum(x.total) From entradas x Where x.tipopadrao = 106 '+
                  ' and x.situacao = ''N'' '+
                  ' and extract(MONTH from x.data) = extract(MONTH from s.data) '+
                  ' and extract(YEAR from x.data) = extract(YEAR from s.data))) As VlrReal '+
      	          'From Saidas s '+
                  'INNER join SaidasItens si on s.saida = si.saida '+
                  'INNER join Itens i on si.item = i.item  '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'and si.subtotalitem > 0 '+
                  sWhereClientes +
                  'Group by i.item, i.descricao';
      grafDetalhe.Title.Text.Add('Detalhe por Produto');
      grafDetalhe.Title.Text.Add('em '+DataI.Text+' a '+DataF.Text);
  	end else if btLimpar.Down then begin {Por Cliente}
		  sql.text := 'Select s.favorecido as ID, f.nome as Descricao,Sum(s.total) as Vendas, '+
                  ' Max((Select sum(e.total) From entradas e Where e.tipopadrao = 106 '+Funcoes.Replace(sWhereClientes,'s.','e.')+
                  ' and e.situacao = ''N'' '+
                  ' and extract(MONTH from e.data) = extract(MONTH from s.data) '+
                  ' and extract(YEAR from e.data) = extract(YEAR from s.data))) as Devolucoes, '+
                  ' Sum(s.total) - Max((Select sum(x.total) From entradas x Where x.tipopadrao = 106 '+
                  ' and x.situacao = ''N'' '+
                  ' and extract(MONTH from x.data) = extract(MONTH from s.data) '+
                  ' and extract(YEAR from x.data) = extract(YEAR from s.data))) As VlrReal '+
            		  'From Saidas s '+
                  'INNER join Favorecidos f on s.favorecido = f.favorecido '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  sWhereClientes +
                  ' Group by s.favorecido, f.nome';
      grafDetalhe.Title.Text.Add('Detalhe por Cliente');
      grafDetalhe.Title.Text.Add('em '+DataI.Text+' a '+DataF.Text);
  	end else begin {Por Vendedor}
      sql.text := 'Select s.vendedor as ID, f.nome as Descricao, Sum(s.total) as Vendas, '+
                  ' Sum(COALESCE((select Sum(e.total) FROM entradasitensmescla m '+
                  '         inner join entradasitens ei on ei.entradaitem = m.entradaitem '+
                  '         inner join entradas e on e.entrada = ei.entrada '+
                  '       where m.entrada_original = s.saida),0)) as Devolucoes, '+
                  ' Sum(s.total) - Sum(COALESCE((select Sum(e.total) FROM entradasitensmescla m '+
                  '                inner join entradasitens ei on ei.entradaitem = m.entradaitem '+
                  '                inner join entradas e on e.entrada = ei.entrada '+
                  '                where m.entrada_original = s.saida),0)) As VlrReal '+
            		  ' From Saidas s '+
                  ' INNER join Favorecidos f on s.vendedor = f.favorecido '+
                  ' Where s.data >= :DataI and s.data <= :DataF '+
                  ' and s.situacao = ''N'' '+
                  ' and s.tipopadrao = 1 '+
                  ' Group by s.vendedor, f.nome ';
      grafDetalhe.Title.Text.Add('Detalhe por Vendedor');
      grafDetalhe.Title.Text.Add('em '+DataI.Text+' a '+DataF.Text);
    end;
    parambyname('DataI').AsDateTime := DataI.Date;
    parambyname('DataF').AsDateTime := DataF.Date;
    open;
    first;
    grafDetalhe.Series[0].Clear;
    grafDetalhe.Series[1].Clear;
    grafDetalhe.Series[2].Clear;
    while not eof do Begin
      Try
        nDevolucoes:=FieldByName('DEVOLUCOES').Value;
        nVlrReal   :=FieldByName('VLRREAL').Value;
      Except
       on E: Exception do Begin
        nDevolucoes:=0;
        nVlrReal:=0;
       End;
      End;
      grafDetalhe.Series[0].Add(FieldByName('VENDAS').Value, FieldByName('DESCRICAO').AsString , clBlue  );
      grafDetalhe.Series[0].Marks.Visible := true;
      grafDetalhe.Series[0].Marks.Style := smsValue;
      grafDetalhe.Series[1].Add(nDevolucoes,FormatCurr('#,##0.00',nDevolucoes), clRed  );
      grafDetalhe.Series[2].Add(nVlrReal, FormatCurr('#,##0.00',nVlrReal), clyellow  );
      Next;
    End;
  end;
end;

procedure TDlgGrafVendas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataI.Date := Date;
  DataI.OnDateChange := DataIDateChange;
  DataF.Date := Date;
end;

procedure TDlgGrafVendas.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizarGraficos( true );
end;

procedure TDlgGrafVendas.btGravarClick(Sender: TObject);
begin
  inherited;
  AtualizarGraficos( false );
end;

procedure TDlgGrafVendas.VisualizarValoresClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := false;
end;

procedure TDlgGrafVendas.PercentualClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.TextStyle := ltsRightPercent;
end;

procedure TDlgGrafVendas.ValoresClick(Sender: TObject);
begin
  inherited;
  TDBChart(ActiveControl).Legend.TextStyle := ltsRightValue;
end;

procedure TDlgGrafVendas.PercentualGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
		TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsPercent;
  end;
end;

procedure TDlgGrafVendas.ValoresGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
    for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
       TDBChart(ActiveControl).SeriesList[0].Marks.Visible := true;
       TDBChart(ActiveControl).SeriesList[0].Marks.Style := smsValue;
    end;
end;

procedure TDlgGrafVendas.ImprimirClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgGrafVendas.VendaDetalhe( sTexto : string);
begin
	grafVendasDet.title.text.clear;
	with Q_VendasDet do begin
  	close;
    if btGravar.Down then begin
      grafVendasDet.title.text.add('Vendas '+btGravar.Caption);
	    sql.text := 'Select si.item as ID, i.descricao as Descricao, sum(si.subtotalitem) as Total '+
      						'From Saidas s '+
                  'inner join SaidasItens si on s.saida = si.saida '+
                  'inner join Itens i on si.item = i.item and i.tipoitem IN (1,2,3,5,6) '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'and si.subtotalitem > 0 '+
                  'Group by si.item, i.descricao ';
    end else if btLimpar.Down then begin
      grafVendasDet.title.text.add('Vendas '+btLimpar.Caption);
	    sql.text := 'Select s.favorecido as ID, f.nome as Descricao, sum(s.total) as Total '+
      						'From Saidas s '+
                  'inner join favorecidos f on s.favorecido = f.favorecido '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'Group by s.favorecido, f.nome';
    end else begin
    	grafVendasDet.title.text.add('Vendas '+btComando1.Caption);
	    sql.text := 'Select s.vendedor as ID, f.nome as Descricao, sum(s.total) as Total '+
      						'From Saidas s '+
                  'left join favorecidos f on s.vendedor = f.favorecido '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'Group by s.vendedor, f.nome';
    end;
    parambyname('DataI').AsDateTime := FirstMonthDay(EncodeDate(StrToInt(SeparaStrings(sTexto,'/',2)),DMProjeto.getMes(SeparaStrings(sTexto,'/',1)),1));
    parambyname('DataF').AsDateTime := LastMonthDay(EncodeDate(StrToInt(SeparaStrings(sTexto,'/',2)),DMProjeto.getMes(SeparaStrings(sTexto,'/',1)),1));
    open;
  end;
  grafVendasDet.title.text.add(sTexto);
  pgVendas.ActivePageIndex := 1;
end;

procedure TDlgGrafVendas.grafVendasClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  VendaDetalhe(Series.XLabel[ValueIndex]);
end;

procedure TDlgGrafVendas.DetalheNoPeriodo( ID : integer );
begin
  grafDetalheNoPeriodo.Title.Text.Clear;

	with Q_DetalheNoPeriodo do begin
  	close;
    if btGravar.Down then begin
    	sql.text := 'Select m.descricao || ''/'' || a.ano as Descricao, '+
      						'sum(si.subtotalitem) as Total '+
                  'From Saidas s '+
                  'inner join SaidasItens si on s.saida = si.saida '+
                  'inner join Itens i on si.item = i.item and i.tipoitem IN (1,2,3,5,6) '+
                  'inner join Meses m on extract(month from s.data) = m.mes '+
                  'inner join Anos a on extract(year from s.data) = a.ano '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'and si.item = :id '+
                  'Group by a.ano, m.mes';
      grafDetalheNoPeriodo.Title.Text.Add(SeparaStrings(btGravar.Caption,' ',2));
  		grafDetalheNoPeriodo.Title.Text.Add(Q_DetalheDescricao.AsString);
    end else if btLimpar.Down then begin
    	sql.text := 'Select m.descricao || ''/'' || a.ano as Descricao, '+
      						'sum(s.total) as Total '+
                  'From Saidas s '+
                  'inner join Meses m on extract(month from s.data) = m.mes '+
                  'inner join Anos a on extract(year from s.data) = a.ano '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'and s.favorecido = :id '+
                  'Group by a.ano, m.mes, m.descricao';
      grafDetalheNoPeriodo.Title.Text.Add(SeparaStrings(btLimpar.Caption,' ',2));
  		grafDetalheNoPeriodo.Title.Text.Add(Q_DetalheDescricao.AsString);
    end else begin
    	sql.text := 'Select m.descricao || ''/'' || a.ano as Descricao, '+
      						'sum(s.total) as Total '+
                  'From Saidas s '+
                  'inner join Meses m on extract(month from s.data) = m.mes '+
                  'inner join Anos a on extract(year from s.data) = a.ano '+
                  'Where s.data >= :DataI and s.data <= :DataF '+
                  'and s.situacao = ''N'' '+
                  'and s.tipopadrao = 1 '+
                  'and s.vendedor = :id '+
                  'Group by a.ano, m.mes, m.descricao';
      grafDetalheNoPeriodo.Title.Text.Add(SeparaStrings(btComando1.Caption,' ',2));
  		grafDetalheNoPeriodo.Title.Text.Add(Q_DetalheDescricao.AsString);
    end;
    parambyname('datai').asDateTime := DataI.Date;
    parambyname('dataf').asDateTime := DataF.Date;
    parambyname('id').asInteger			:= ID;
    open;
    pgDetalhe.ActivePageIndex := 1;
  end;
end;

procedure TDlgGrafVendas.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	pgVendas.ActivePageIndex := 0;
end;

procedure TDlgGrafVendas.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
	pgDetalhe.ActivePageIndex := 0;
end;

procedure TDlgGrafVendas.grafDetalheClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Q_Detalhe.Locate('Descricao',Series.XLabel[ValueIndex],[]);
  DetalheNoPeriodo( Q_DetalheID.AsInteger );
end;

procedure TDlgGrafVendas.grafDetalheContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
	ActiveControl := TDBChart(Sender);
end;

procedure TDlgGrafVendas.ppmGraficoPopup(Sender: TObject);
begin
  inherited;
  MostrarLegenda.Checked  := TDBChart(ActiveControl).Legend.Visible;
  VisualizarValores.checked := not TDBChart(ActiveControl).SeriesList[0].Marks.Visible;
  Percentual.checked     	:= TDBChart(ActiveControl).Legend.TextStyle = ltsRightPercent;
  Valores.checked     		:= TDBChart(ActiveControl).Legend.TextStyle = ltsRightValue;
  PercentualGraf.checked	:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsPercent);
  ValoresGraf.checked		:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsValue);
end;

procedure TDlgGrafVendas.MostrarLegendaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.Visible := not TDBChart(ActiveControl).Legend.Visible;
end;

procedure TDlgGrafVendas.grafVendasAllowScroll(Sender: TChartAxis;
  var AMin, AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
	AllowScroll := false;
end;

procedure TDlgGrafVendas.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizarGraficos( false );
    end;
  end;
end;

end.
