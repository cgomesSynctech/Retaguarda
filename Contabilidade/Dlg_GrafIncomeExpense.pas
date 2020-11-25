unit Dlg_GrafIncomeExpense;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, TS_SpeedButton,
  RXSplit, ComCtrls, TS_PageControl, TeeProcs, TeEngine, Chart,
  DBChart, Series, Db, IBCustomDataSet, IBQuery, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, TS_DateTimePicker, teCtrls, TS_EffectsPanel, Buttons,
  Menus, TS_PopupMenu, Placemnt, BTOdeum, DBClient;

type
  TDlgGrafIncomeExpense = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    RxSplitter1: TRxSplitter;
    TS_Panel2: TTS_Panel;
    grafBarra: TDBChart;
    pgPizza: TTS_PageControl;
    tabIncomes: TTabSheet;
    tabExpense: TTabSheet;
    grafIncome: TDBChart;
    serExpense: TBarSeries;
    serIncomes: TBarSeries;
    Q_SQL: TIBQuery;
    Q_Expense: TIBQuery;
    Q_DetalheIncome: TIBQuery;
    Q_DetalheIncomeDESCRICAO: TIBStringField;
    Q_DetalheIncomeTOTAL: TFloatField;
    serIncomeDet: TPieSeries;
    Q_DetalheExpense: TIBQuery;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    DataI: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    grafExpense: TDBChart;
    serExpenseDet: TPieSeries;
    Q_DetalheBarra: TIBQuery;
    Q_ExpenseTOTAL: TFloatField;
    grafDetalhe: TDBChart;
    Series2: TPieSeries;
    Q_ExpenseMESEXTENSO: TIBStringField;
    Q_DetalheBarraDESCRICAO: TIBStringField;
    Q_DetalheBarraTOTAL: TFloatField;
    btVoltar: TTS_SpeedButton;
    Q_DetalheNoPeriodo: TIBQuery;
    Q_DetalheNoPeriodoMESEXTENSO: TIBStringField;
    Q_DetalheNoPeriodoTOTAL: TFloatField;
    tabDetalheNoPeriodo: TTabSheet;
    DBChart1: TDBChart;
    serDetalheNoPeriodo: TBarSeries;
    TS_SpeedButton1: TTS_SpeedButton;
    Q_DetalheIncomeID: TIntegerField;
    Q_DetalheExpenseID: TIntegerField;
    ppmGrafico: TTS_PopupMenu;
    VisualizarValores: TMenuItem;
    Legenda1: TMenuItem;
    Percentual: TMenuItem;
    Valor: TMenuItem;
    Grfico1: TMenuItem;
    PercentualGraf: TMenuItem;
    ValorGraf: TMenuItem;
    N1: TMenuItem;
    Imprimir: TMenuItem;
    MostrarLegenda: TMenuItem;
    C_IncomeExpense: TClientDataSet;
    C_IncomeExpenseMESEXTENSO: TStringField;
    C_IncomeExpenseRECEITAS: TCurrencyField;
    C_IncomeExpenseDESPESAS: TCurrencyField;
    Q_SQL2: TIBQuery;
    procedure DataIDateChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure grafBarraClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure grafExpenseClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grafIncomeClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VisualizarValoresClick(Sender: TObject);
    procedure PercentualClick(Sender: TObject);
    procedure ValoresClick(Sender: TObject);
    procedure PercentualGrafClick(Sender: TObject);
    procedure ValoresGrafClick(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure ppmGraficoPopup(Sender: TObject);
    procedure grafDetalheContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure MostrarLegendaClick(Sender: TObject);
    procedure grafDetalheAllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
  private
    { Private declarations }
    procedure Atualizar;
    procedure DetalheBarra(sSerie, sTexto: string);
    procedure DetalheNoPeriodo(sTipo: string; ID: integer);
  public
    { Public declarations }
  end;

var
  DlgGrafIncomeExpense: TDlgGrafIncomeExpense;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

{ TFrmModeloCadastros1 }

procedure TDlgGrafIncomeExpense.Atualizar;
var nReceita, nDespesa : Currency;
begin
	{Por Conta}
	C_IncomeExpense.EmptyDataSet;
	if btGravar.Down then begin
    with Q_SQL do begin
  		close;
      sql.text := 'Select a.ano, m.mes, m.Descricao || ''/'' || a.ano as MesExtenso '+
                	'from lancamentos ll '+
                	'inner join Meses m on extract(month from ll.data) = m.mes '+
                	'inner join Anos a on extract(year from ll.data) = a.ano '+
                	'Where ll.data >= :DataI and ll.data <= :DataF '+
                	'Group by a.ano, m.mes, m.descricao ';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
      while not eof do begin
      	with Q_SQL2 do begin
        	close;
          sql.text := 'select sum( f_abs(li.valor) ) '+
                  		'From Lancamentos l '+
											'inner join LancamentosItens li on l.lancamento = li.lancamento '+
											'inner join Contas c on li.conta = c.conta '+
											'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''D'' '+
											'where extract(month from l.data) = :mes and extract(year from l.data) = :ano ';
          ParamByName('mes').AsInteger := Q_sql.FieldByName('mes').AsInteger;
          ParamByName('ano').AsInteger := Q_sql.FieldByName('ano').AsInteger;
          open;
          nDespesa := fields[0].AsCurrency;
        	close;
          sql.text := 'select sum( f_abs(li.valor) ) '+
                  		'From Lancamentos l '+
											'inner join LancamentosItens li on l.lancamento = li.lancamento '+
											'inner join Contas c on li.conta = c.conta '+
											'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''R'' '+
											'where extract(month from l.data) = :mes and extract(year from l.data) = :ano ';
          ParamByName('mes').AsInteger := Q_sql.FieldByName('mes').AsInteger;
          ParamByName('ano').AsInteger := Q_sql.FieldByName('ano').AsInteger;
          open;
          nReceita := fields[0].AsCurrency;
          close;
          C_IncomeExpense.Append;
          C_IncomeExpenseMesExtenso.Value := q_sql.fieldbyname('mesextenso').AsString;
          C_IncomeExpenseReceitas.Value		:= nReceita;
          C_IncomeExpenseDespesas.Value		:= nDespesa;
          C_IncomeExpense.Post;
        end;
        Next;
	    end;
  	end;
    with Q_DetalheIncome do begin
    	close;
      sql.text := 'Select li.conta as id, c.descricao, sum( f_abs(li.valor) ) as Total '+
									'From Lancamentos l '+
                  'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                  'inner join Contas c on li.conta = c.conta '+
                  'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''R'' '+
									'Where l.data >= :DataI and l.data <= :DataF '+
                  'Group by li.conta, c.descricao';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
    end;
    with Q_DetalheExpense do begin
    	close;
      sql.text := 'Select li.conta as ID, c.descricao, sum( f_abs(li.valor) ) as Total '+
									'From Lancamentos l '+
                  'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                  'inner join Contas c on li.conta = c.conta '+
                  'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''D'' '+
									'Where l.data >= :DataI and l.data <= :DataF '+
                  'Group by li.conta, c.descricao';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
    end;
  {Por Favorecido}
  end else begin
    with Q_SQL do begin
  		close;
      sql.text := 'Select a.ano, m.mes, m.Descricao || ''/'' || a.ano as MesExtenso '+
                	'from lancamentos ll '+
                	'inner join Meses m on extract(month from ll.data) = m.mes '+
                	'inner join Anos a on extract(year from ll.data) = a.ano '+
                	'Where ll.data >= :DataI and ll.data <= :DataF '+
                	'Group by a.ano, m.mes, m.descricao ';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
      while not eof do begin
      	with Q_SQL2 do begin
        	close;
          sql.text := 'select sum( f_abs(li.valor) ) '+
                  		'From Lancamentos l '+
											'inner join LancamentosItens li on l.lancamento = li.lancamento '+
											'inner join Favorecidos f on li.favorecido = f.favorecido '+
											'inner join Contas c on li.conta = c.conta '+
											'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''D'' '+
											'where extract(month from l.data) = :mes and extract(year from l.data) = :ano ';
          ParamByName('mes').AsInteger := Q_sql.FieldByName('mes').AsInteger;
          ParamByName('ano').AsInteger := Q_sql.FieldByName('ano').AsInteger;
          open;
          nDespesa := fields[0].AsCurrency;
        	close;
          sql.text := 'select sum( f_abs(li.valor) ) '+
                  		'From Lancamentos l '+
											'inner join LancamentosItens li on l.lancamento = li.lancamento '+
											'inner join Favorecidos f on li.favorecido = f.favorecido '+
											'inner join Contas c on li.conta = c.conta '+
											'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''D'' '+
											'where extract(month from l.data) = :mes and extract(year from l.data) = :ano ';
          ParamByName('mes').AsInteger := Q_sql.FieldByName('mes').AsInteger;
          ParamByName('ano').AsInteger := Q_sql.FieldByName('ano').AsInteger;
          open;
          nReceita := fields[0].AsCurrency;
          close;
          C_IncomeExpense.Append;
          C_IncomeExpenseMesExtenso.Value := q_sql.fieldbyname('mesextenso').AsString;
          C_IncomeExpenseReceitas.Value		:= nReceita;
          C_IncomeExpenseDespesas.Value		:= nDespesa;
          C_IncomeExpense.Post;
        end;
        Next;
	    end;
  	end;
    with Q_DetalheIncome do begin
    	close;
      sql.text := 'Select li.favorecido as ID, f.nome as descricao, sum( f_abs(li.valor) ) as Total '+
									'From Lancamentos l '+
                  'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                  'inner join Favorecidos f on li.favorecido = f.favorecido '+
                  'inner join Contas c on li.conta = c.conta '+
                  'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''R'' '+
									'Where l.data >= :DataI and l.data <= :DataF '+
                  'Group by li.favorecido, f.nome';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
    end;
    with Q_DetalheExpense do begin
    	close;
      sql.text := 'Select li.favorecido as ID, f.nome as descricao, sum( f_abs(li.valor) ) as Total '+
									'From Lancamentos l '+
                  'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                  'inner join Favorecidos f on li.favorecido = f.favorecido '+
                  'inner join Contas c on li.conta = c.conta '+
                  'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = ''D'' '+
									'Where l.data >= :DataI and l.data <= :DataF '+
                  'Group by li.favorecido, f.nome';
      parambyname('DataI').AsDateTime := DataI.Date;
      parambyname('DataF').AsDateTime := DataF.Date;
      open;
    end;
  end;
  if btComando1.Down then
  	pgPizza.ActivePageIndex := 0
  else
  	pgPizza.ActivePageIndex := 1;
  grafBarra.Title.Text.Clear;
  grafBarra.Title.Text.Add('Receitas x Despesas');
  grafBarra.Title.Text.Add('de '+DataI.Text+' a '+DataF.Text);

  grafIncome.Title.Text.Clear;
  grafIncome.Title.Text.Add('Detalhe Receitas');
  grafIncome.Title.Text.Add('de '+DataI.Text+' a '+DataF.Text);

  grafExpense.Title.Text.Clear;
  grafExpense.Title.Text.Add('Detalhe Despesas');
  grafExpense.Title.Text.Add('de '+DataI.Text+' a '+DataF.Text);

end;


procedure TDlgGrafIncomeExpense.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgGrafIncomeExpense.btGravarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgGrafIncomeExpense.DetalheBarra( sSerie, sTexto : string );
var sCampo, sFavorecidos, sTitulo, sChave : string;
begin
  if btGravar.Down then begin
  	sCampo 			 := 'c.Descricao';
    sFavorecidos := '';
    sChave       := 'li.conta';
  end else begin
  	sCampo 			 := 'f.nome';
    sFavorecidos := 'inner join Favorecidos f on li.favorecido = f.favorecido ';
    sChave       := 'li.favorecido';
  end;
  with Q_DetalheBarra do begin
		close;
    SQL.Text := 'Select '+sCampo+' as Descricao, sum( f_abs(li.valor) ) as Total '+
    						'From Lancamentos l '+
                'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                sFavorecidos+
                'inner join Contas c on li.conta = c.conta '+
                'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = :tipo '+
                'Where extract(month from l.data) = :mes and extract(year from l.data) = :ano '+
								'Group by '+sChave+', '+sCampo;
    if sSerie = 'serIncomes' then begin
    	parambyname('tipo').asString := 'R';
      sTitulo	:= 'Detalhe Receitas - '+sTexto;
    end else begin
    	parambyname('tipo').asString := 'D';
      sTitulo	:= 'Detalhe Despesas - '+sTexto;
    end;
    parambyname('mes').asInteger := DMProjeto.getMes(SeparaStrings(sTexto,'/',1));
    parambyname('ano').asInteger := StrToInt(SeparaStrings(sTexto,'/',2));
    open;
  end;
  grafDetalhe.Title.Text.Text := sTitulo;
  grafDetalhe.Visible := true;
end;

procedure TDlgGrafIncomeExpense.grafBarraClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  DetalheBarra(Series.Name,Series.XLabel[ValueIndex]);
end;

procedure TDlgGrafIncomeExpense.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_IncomeExpense.CreateDataSet;
  DataI.OnDateChange := nil;
	DataI.Date := FirstMonthDay( DMProjeto.dDataSistema-90 );
  DataI.OnDateChange := DataIDateChange;
  DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
end;

procedure TDlgGrafIncomeExpense.btComando1Click(Sender: TObject);
begin
  inherited;
	pgPizza.ActivePage := tabIncomes;
end;

procedure TDlgGrafIncomeExpense.btComando2Click(Sender: TObject);
begin
  inherited;
	pgPizza.ActivePage := tabExpense;
end;

procedure TDlgGrafIncomeExpense.btVoltarClick(Sender: TObject);
begin
  inherited;
	grafDetalhe.Visible := false;
end;

procedure TDlgGrafIncomeExpense.DetalheNoPeriodo( sTipo : string; ID : integer );
var sCampo, sFavorecidos : string;
begin
	if btGravar.Down then begin
  	sCampo := 'li.conta';
    sFavorecidos := '';
  end else begin
  	sCampo := 'li.favorecido';
    sFavorecidos := 'inner join favorecidos f on li.favorecido = f.favorecido ';
  end;
	with Q_DetalheNoPeriodo do begin
  	close;
    sql.text := 'Select m.descricao || ''/'' || a.ano as MesExtenso, '+
    						'sum( f_abs(li.valor) ) as Total '+
                'From Lancamentos l '+
                'inner join LancamentosItens li on l.lancamento = li.lancamento '+
                'inner join Contas c on li.conta = c.conta '+
                sFavorecidos +
                'inner join TiposContas t on c.tipoconta = t.tipoconta and t.tipo = :tipo '+
                'inner join Meses m on extract(month from l.data) = m.mes '+
                'inner join Anos a on extract(year from l.data) = a.ano '+
                'Where l.data >= :DataI and l.data <= :DataF and '+sCampo+' = :id '+
                'Group by a.ano, m.mes, m.descricao';
    parambyname('DataI').AsDateTime := DataI.Date;
    parambyname('DataF').AsDateTime := DataF.Date;
    parambyname('Tipo').AsString		:= sTipo;
    parambyname('ID').AsInteger			:= ID;
    open;
  end;
	pgPizza.ActivePageIndex := 2;
end;

procedure TDlgGrafIncomeExpense.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	pgPizza.ActivePageIndex := pgPizza.Tag;
end;

procedure TDlgGrafIncomeExpense.grafExpenseClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pgPizza.Tag := pgPizza.ActivePageIndex;
  Q_DetalheExpense.Locate('Descricao',Series.XLabel[ValueIndex],[]);
	DetalheNoPeriodo( 'D', Q_DetalheExpenseID.AsInteger );
end;

procedure TDlgGrafIncomeExpense.grafIncomeClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pgPizza.Tag := pgPizza.ActivePageIndex;
  Q_DetalheIncome.Locate('Descricao',Series.XLabel[ValueIndex],[]);
	DetalheNoPeriodo( 'R', Q_DetalheIncomeID.AsInteger );
end;

procedure TDlgGrafIncomeExpense.VisualizarValoresClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := false;
end;

procedure TDlgGrafIncomeExpense.PercentualClick(Sender: TObject);
begin
  inherited;
  TDBChart(ActiveControl).Legend.TextStyle := ltsRightPercent;
end;

procedure TDlgGrafIncomeExpense.ValoresClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.TextStyle := ltsRightValue;
end;

procedure TDlgGrafIncomeExpense.PercentualGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
		TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsPercent;
  end;
end;

procedure TDlgGrafIncomeExpense.ValoresGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
   	TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsValue;
  end;
end;

procedure TDlgGrafIncomeExpense.ImprimirClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgGrafIncomeExpense.ppmGraficoPopup(Sender: TObject);
begin
  inherited;
  MostrarLegenda.Checked		:= TDBChart(ActiveControl).Legend.Visible;
	VisualizarValores.checked := not TDBChart(ActiveControl).SeriesList[0].Marks.Visible;
  Percentual.checked     		:= TDBChart(ActiveControl).Legend.TextStyle = ltsRightPercent;
  Valor.checked     				:= TDBChart(ActiveControl).Legend.TextStyle = ltsRightValue;
  PercentualGraf.checked		:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsPercent);
  ValorGraf.checked					:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsValue);
end;

procedure TDlgGrafIncomeExpense.grafDetalheContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ActiveControl := TDBChart(Sender);
end;

procedure TDlgGrafIncomeExpense.MostrarLegendaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.Visible := not TDBChart(ActiveControl).Legend.Visible;
end;

procedure TDlgGrafIncomeExpense.grafDetalheAllowScroll(Sender: TChartAxis;
  var AMin, AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
  AllowScroll := false;
end;

end.
