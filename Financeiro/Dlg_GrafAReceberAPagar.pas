unit Dlg_GrafAReceberAPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, RXSplit, FormsComponent, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, 
  TS_Panel, ComCtrls, Db, IBCustomDataSet, IBQuery, TeeProcs, TeEngine,
  Chart, DBChart, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker,
  Series, TeeFunci, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, Variants,
  Placemnt, BTOdeum;

type
  TDlgGrafAReceberAPagar = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    RxSplitter1: TRxSplitter;
    pgRP: TPageControl;
    tabAReceber: TTabSheet;
    tabGeralDet: TTabSheet;
    pgDetalhe: TPageControl;
    tabDetalhe: TTabSheet;
    tabDetalheNoPeriodo: TTabSheet;
    Q_Geral: TIBQuery;
    Q_RPDetalhe: TIBQuery;
    Q_DetalheFavorecido: TIBQuery;
    grafRP: TDBChart;
    grafDetalheNoPeriodo: TDBChart;
    TS_Label1: TTS_Label;
    DataF: TTS_DateTimePicker;
    grafDetalhe: TDBChart;
    serDetalhe: TPieSeries;
    serRP: TBarSeries;
    Q_GeralTOTAL: TIBBCDField;
    grafRPDetalhe: TDBChart;
    serRPDetalhe: TPieSeries;
    serFavDetRP: TBarSeries;
    TeeFunction1: TAverageTeeFunction;
    Q_SQL: TIBQuery;
    serPredatado: TBarSeries;
    Q_DetalheFavorecidoID: TIntegerField;
    Q_DetalheFavorecidoNOME: TIBStringField;
    Q_DetalheFavorecidoTOTAL: TIBBCDField;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    serFavDetPredatado: TBarSeries;
    Q_RPDetalheID: TIntegerField;
    Q_RPDetalheNOME: TIBStringField;
    Q_RPDetalheTOTAL: TIBBCDField;
    ppmGrafico: TTS_PopupMenu;
    MostrarValores: TMenuItem;
    Percentual: TMenuItem;
    Valor: TMenuItem;
    Legenda1: TMenuItem;
    Grfico1: TMenuItem;
    PercentualGraf: TMenuItem;
    ValorGraf: TMenuItem;
    Barras: TMenuItem;
    Juntos: TMenuItem;
    LadoaLado: TMenuItem;
    N1: TMenuItem;
    Imprimir: TMenuItem;
    Nenhum2: TMenuItem;
    MostrarLegenda: TMenuItem;
    DescricaoGraf: TMenuItem;
    DescricaoValorGraf: TMenuItem;
    DescricaoPercentualGraf: TMenuItem;
    procedure DataFDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure grafRPAllowScroll(Sender: TChartAxis; var AMin, AMax: Double;
      var AllowScroll: Boolean);
    procedure MostrarValoresClick(Sender: TObject);
    procedure PercentualClick(Sender: TObject);
    procedure ValorClick(Sender: TObject);
    procedure PercentualGrafClick(Sender: TObject);
    procedure ValorGrafClick(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure JuntosClick(Sender: TObject);
    procedure LadoaLadoClick(Sender: TObject);
    procedure grafRPClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure serFavDetRPClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ppmGraficoPopup(Sender: TObject);
    procedure Nenhum2Click(Sender: TObject);
    procedure grafDetalheContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure serDetalheClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MostrarLegendaClick(Sender: TObject);
    procedure DescricaoGrafClick(Sender: TObject);
    procedure DescricaoValorGrafClick(Sender: TObject);
    procedure DescricaoPercentualGrafClick(Sender: TObject);
  private
  	sTipo, sTitulo,sTitulo2, sTitulo3 : string;
    aDataI, aDataF : array[0..5] of TDateTime;
    aFavorecido 	 : array[0..100] of integer;
    FavorecidoDet : integer;
    nSerieIndex   : integer;
    procedure Atualizar;
    function  getTotal(nSerie : integer; dtDataI, dtDataF: TDateTime; ID : integer = 0): currency;
    function  getTotalPredatado(nSerie : integer; dtDataI, dtDataF: TDateTime; ID : integer = 0) : currency;
    procedure DetalheNoPeriodo(ID: integer);
    procedure RPDetalhe(nSerie: integer);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgGrafAReceberAPagar: TDlgGrafAReceberAPagar;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgGrafAReceberAPagar.Atualizar;
begin
  grafRP.Title.Text.Clear;
  grafRP.Title.Text.Add(sTitulo);
  grafRP.Title.Text.Add('a partir de '+DataF.Text);

  serRP.Title := sTitulo3;
  serRP.Clear;
  if btLimpar.Down then begin
		serRP.Add( getTotal(0,FirstMonthDay(DataF.Date),DataF.Date), 'Atualmente' );
  	serRP.Add( getTotal(1,DataF.Date+1,DataF.Date+30), '1 - 30' );
  	serRP.Add( getTotal(2,DataF.Date+31,DataF.Date+60), '31 - 60' );
  	serRP.Add( getTotal(3,DataF.Date+61,DataF.Date+90), '61 - 90' );
  	serRP.Add( getTotal(4,DataF.Date+91,0), '> 90' );
	end;

  serPredatado.Title := 'Predatado';
  serPredatado.Clear;
  if btGravar.Down then begin
		serPredatado.Add( getTotalPredatado(0,FirstMonthDay(DataF.Date),DataF.Date), 'Atualmente' );
  	serPredatado.Add( getTotalPredatado(1,DataF.Date+1,DataF.Date+30), '1 - 30' );
  	serPredatado.Add( getTotalPredatado(2,DataF.Date+31,DataF.Date+60), '31 - 60' );
  	serPredatado.Add( getTotalPredatado(3,DataF.Date+61,DataF.Date+90), '61 - 90' );
  	serPredatado.Add( getTotalPredatado(4,DataF.Date+91,0), '> 90' );
  end;
  grafDetalhe.Title.Text.Clear;
  grafDetalhe.Title.Text.Add(sTitulo2);
  grafDetalhe.Title.Text.Add('a partir de '+DataF.Text);
  with Q_SQL do begin
  	close;
    sql.text := 'delete from temp_grafico';
    execsql;
    {Parcela/Conta}
  	close;
    sql.text := 'insert into temp_grafico '+
    						'Select t.cliente, '+
    						'sum(t.faltareceber) as Total '+
                'From TitulosAReceber t '+
                'Where t.Status IN (1,2,3) '+
                'Group by t.cliente ';
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text, 'cliente', 'fornecedor');
      sql.text := replace(sql.text, 'titulosareceber', 'duplicatasapagar');
      sql.text := replace(sql.text, 'faltareceber', 'faltapagar');
    end;
    ExecSQL;
    {Predatados}
  	close;
    sql.text := 'insert into temp_grafico '+
    						'Select d.favorecido, '+
    						'sum(dd.valor) as Total '+
                'From DepositosDoc dd inner join Depositos d on dd.deposito = d.deposito '+
                'Where dd.Status IN (1,2,3) '+
                'Group by d.favorecido ';
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text, 'Depositos', 'Retiradas');
      sql.text := replace(sql.text, 'DepositosDoc', 'RetiradasDoc');
      sql.text := replace(sql.text, 'Deposito', 'Retirada');
      sql.text := replace(sql.text, 'd.favorecido', 'dd.favorecidodoc');
    end;
    ExecSQL;
  end;
	with Q_DetalheFavorecido do begin
  	close;
    sql.text := 'select t.id, f.nome, sum(t.total) as Total '+
    						'from temp_grafico t inner join favorecidos f on t.id = f.favorecido '+
                'group by t.id, f.nome';
    open;
  end;
  pgRP.ActivePageIndex := 0;
	pgDetalhe.ActivePageIndex := 0;
end;

function TDlgGrafAReceberAPagar.getTotal;
var nTotal : Currency;
begin
  aDataI[nSerie] := dtDataI;
  aDataF[nSerie] := dtDataF;
  aFavorecido[nSerie] := ID;
	with Q_SQL do begin
		close;
    sql.text := 'Select sum(t.faltareceber) as Total '+
    						'From TitulosAReceber t '+
                'Where t.Vencimento >= :DataI and t.Vencimento <= :DataF '+
                'and t.Status IN (1,2,3) ';
    if ID<>0 then
      sql.Text := sql.Text + ' and t.cliente = '+IntToStr(ID);

    if dtDataI = 0 then begin
    	sql.text := replace(sql.text,'t.Vencimento >= :DataI and ','');
      sql.text := replace(sql.text,'dd.Vencimento >= :DataI and ','');
    end else
      parambyname('DataI').AsDateTime := dtDataI;

    if dtDataF = 0 then begin
    	sql.text := replace(sql.text,'and t.Vencimento <= :DataF','');
      sql.text := replace(sql.text,'and dd.Vencimento <= :DataF','');
      parambyname('DataI').AsDateTime := dtDataI;
    end else
    	parambyname('DataF').AsDateTime := dtDataF;
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text,'TitulosAReceber','DuplicatasAPagar');
      sql.text := replace(sql.text,'FaltaReceber','FaltaPagar');
      sql.text := replace(sql.text,'Cliente','Fornecedor');
    end;
    open;
    first;
    Result := fields[0].asCurrency;
    close;
  end;
end;

function TDlgGrafAReceberAPagar.getTotalPredatado;
var nTotal : Currency;
begin
  aDataI[nSerie] := dtDataI;
  aDataF[nSerie] := dtDataF;
  aFavorecido[nSerie] := ID;
	with Q_SQL do begin
		close;
  	sql.text := 'Select Sum(dd.Valor) as Total '+
    						'from DepositosDoc dd inner join Depositos d on dd.deposito = d.deposito '+
                'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF '+
                'and dd.status = 3';

    if ID<>0 then begin
      if sTipo = 'R' then
      	sql.Text := sql.Text + ' and d.favorecido = '+IntToStr(ID)
      else
      	sql.Text := sql.Text + ' and dd.favorecidodoc = '+IntToStr(ID);
    end;

    if dtDataI = 0 then begin
    	sql.text := replace(sql.text,'t.Vencimento >= :DataI and ','');
      sql.text := replace(sql.text,'dd.Vencimento >= :DataI and ','');
    end else
      parambyname('DataI').AsDateTime := dtDataI;

    if dtDataF = 0 then begin
    	sql.text := replace(sql.text,'and t.Vencimento <= :DataF','');
      sql.text := replace(sql.text,'and dd.Vencimento <= :DataF','');
      parambyname('DataI').AsDateTime := dtDataI;
    end else
    	parambyname('DataF').AsDateTime := dtDataF;
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text,'Depositos','Retiradas');
      sql.text := replace(sql.text,'DepositosDoc','RetiradasDoc');
      sql.text := replace(sql.text,'Deposito','Retirada');
    end;
    open;
    Result := fields[0].asCurrency;
    close;
  end;
end;

procedure TDlgGrafAReceberAPagar.DataFDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgGrafAReceberAPagar.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	serRP.Title := GetParametrosForm(3);
    serRPDetalhe.Title := GetParametrosForm(3);
    sTipo := GetParametrosForm(0);
    sTitulo := GetParametrosForm(1);
    sTitulo2 := GetParametrosForm(2);
    sTitulo3 := GetParametrosForm(3);
    FormsComponent.Caption := sTitulo;
    btLimpar.Caption := SeparaStrings(sTitulo,' ',1);
    DataF.Date := DMProjeto.dDataSistema;
  end;
  if sTipo = 'R' then
    Ajuda1.HelpContext := 547
  else
    Ajuda1.HelpContext := 548;
end;

procedure TDlgGrafAReceberAPagar.btGravarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgGrafAReceberAPagar.RPDetalhe( nSerie : integer );
begin
	grafRPDetalhe.Title.Text.Clear;
  grafRPDetalhe.Title.Text.Add(grafRP.SeriesList[0].XLabel[nSerie]);
  grafRPDetalhe.Title.Text.Add('a partir de '+DataF.Text);
  nSerieIndex := nSerie;
  with Q_SQL do begin
  	close;
    sql.text := 'delete from temp_grafico';
    execsql;
    {Parcela/Conta}
  	close;
    sql.text := 'insert into temp_grafico '+
    						'Select t.cliente, '+
                'sum(t.faltareceber) as Total '+
                'From TitulosAReceber t '+
                'Where t.Vencimento >= :DataI and t.Vencimento <= :DataF '+
                'and t.Status IN (1,2,3) '+
                'Group by t.cliente ';
    if nSerie = 0 then begin
    	parambyname('DataI').AsDateTime := FirstMonthDay(DataF.Date);
      parambyname('DataF').AsDateTime := DataF.Date;
    end else if nSerie = 1 then begin
      parambyname('DataI').AsDateTime := DataF.Date+1;
      parambyname('DataF').AsDateTime := DataF.Date+30;
    end else if nSerie = 2 then begin
      parambyname('DataI').AsDateTime := DataF.Date+31;
      parambyname('DataF').AsDateTime := DataF.Date+60;
    end else if nSerie = 3 then begin
      parambyname('DataI').AsDateTime := DataF.Date+61;
      parambyname('DataF').AsDateTime := DataF.Date+90;
    end else begin
      parambyname('DataI').AsDateTime := DataF.Date+91;
      sql.Text := replace(sql.text,'and t.Vencimento <= :DataF','');
    end;
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text, 'cliente', 'fornecedor');
      sql.text := replace(sql.text, 'titulosareceber', 'duplicatasapagar');
      sql.text := replace(sql.text, 'faltareceber', 'faltapagar');
    end;
    ExecSQL;
    {Predatados}
  	close;
    sql.text := 'insert into temp_grafico '+
    						'Select d.favorecido, '+
    						'sum(dd.valor) as Total '+
                'From DepositosDoc dd inner join Depositos d on dd.deposito = d.deposito '+
                'Where dd.vencimento >= :DataI and dd.Vencimento <= :DataF and dd.Status IN (1,2,3) '+
                'Group by d.favorecido ';
    if nSerie = 0 then begin
    	parambyname('DataI').AsDateTime := FirstMonthDay(DataF.Date);
      parambyname('DataF').AsDateTime := DataF.Date;
    end else if nSerie = 1 then begin
      parambyname('DataI').AsDateTime := DataF.Date+1;
      parambyname('DataF').AsDateTime := DataF.Date+30;
    end else if nSerie = 2 then begin
      parambyname('DataI').AsDateTime := DataF.Date+31;
      parambyname('DataF').AsDateTime := DataF.Date+60;
    end else if nSerie = 3 then begin
      parambyname('DataI').AsDateTime := DataF.Date+61;
      parambyname('DataF').AsDateTime := DataF.Date+90;
    end else begin
      parambyname('DataI').AsDateTime := DataF.Date+91;
      sql.Text := replace(sql.text,'and t.Vencimento <= :DataF','');
    end;
    if sTipo = 'P' then begin
    	sql.text := replace(sql.text, 'Depositos', 'Retiradas');
      sql.text := replace(sql.text, 'DepositosDoc', 'RetiradasDoc');
      sql.text := replace(sql.text, 'Deposito', 'Retirada');
      sql.text := replace(sql.text, 'd.favorecido', 'dd.favorecidodoc');
    end;
    ExecSQL;
  end;
	with Q_RPDetalhe do begin
  	close;
    sql.text := 'select t.id, f.nome, sum(t.total) as Total '+
    						'from temp_grafico t inner join favorecidos f on t.id = f.favorecido '+
                'group by t.id, f.nome';
    open;
  end;
end;

procedure TDlgGrafAReceberAPagar.DetalheNoPeriodo( ID : integer);
begin
	grafDetalheNoPeriodo.Title.Text.Clear;
  grafDetalheNoPeriodo.Title.Text.Add(Q_DetalheFavorecidoNome.AsString);
  grafDetalheNoPeriodo.Title.Text.Add('a partir de '+DataF.Text);
  serFavDetRP.Clear;
	serFavDetRP.Add( getTotal(0,FirstMonthDay(DataF.Date),DataF.Date,ID), 'Atualmente');
  serFavDetRP.Add( getTotal(1,DataF.Date+1,DataF.Date+30,ID), '1 - 30'  );
  serFavDetRP.Add( getTotal(2,DataF.Date+31,DataF.Date+60,ID), '31 - 60' );
  serFavDetRP.Add( getTotal(3,DataF.Date+61,DataF.Date+90,ID), '61 - 90' );
  serFavDetRP.Add( getTotal(4,DataF.Date+91,0,ID), '> 90');
  serFavDetPredatado.Clear;
	serFavDetPredatado.Add( getTotalPredatado(0,FirstMonthDay(DataF.Date),DataF.Date,ID), 'Atualmente' );
  serFavDetPredatado.Add( getTotalPredatado(1,DataF.Date+1,DataF.Date+30,ID), '1 - 30' );
  serFavDetPredatado.Add( getTotalPredatado(2,DataF.Date+31,DataF.Date+60,ID), '31 - 60' );
  serFavDetPredatado.Add( getTotalPredatado(3,DataF.Date+61,DataF.Date+90,ID), '61 - 90' );
  serFavDetPredatado.Add( getTotalPredatado(4,DataF.Date+91,0,ID), '> 90' );
  pgDetalhe.ActivePageIndex := 1;
  FavorecidoDet := ID;
end;

procedure TDlgGrafAReceberAPagar.grafRPAllowScroll(Sender: TChartAxis;
  var AMin, AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
	allowscroll := false;
end;

procedure TDlgGrafAReceberAPagar.MostrarValoresClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := false;
end;

procedure TDlgGrafAReceberAPagar.PercentualClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.TextStyle := ltsRightPercent;
end;

procedure TDlgGrafAReceberAPagar.ValorClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.TextStyle := ltsRightValue;
end;

procedure TDlgGrafAReceberAPagar.PercentualGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
  	TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsPercent;
  end;
end;

procedure TDlgGrafAReceberAPagar.ValorGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
		TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsValue;
  end;
end;

procedure TDlgGrafAReceberAPagar.ImprimirClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgGrafAReceberAPagar.JuntosClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do
		TBarSeries(TDBChart(ActiveControl).SeriesList[i]).MultiBar := mbStacked;
end;

procedure TDlgGrafAReceberAPagar.LadoaLadoClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do
		TBarSeries(TDBChart(ActiveControl).SeriesList[i]).MultiBar := mbSide;
end;

procedure TDlgGrafAReceberAPagar.grafRPClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
	RPDetalhe( ValueIndex );
  pgRP.ActivePageIndex := 1;
end;

procedure TDlgGrafAReceberAPagar.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	pgRP.ActivePageIndex := 0;
end;

procedure TDlgGrafAReceberAPagar.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
	pgDetalhe.ActivePageIndex := 0;
end;

procedure TDlgGrafAReceberAPagar.serFavDetRPClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
	if sTipo = 'R' then begin
  	DMProjeto.SetParametrosForm([null,aFavorecido[ValueIndex],aDataI[ValueIndex],aDataF[ValueIndex]]);
    DMProjeto.CriarForm('RptInvoicesAReceber',self,true);
  end else begin
  	DMProjeto.SetParametrosForm([null,aFavorecido[ValueIndex],aDataI[nSerieIndex],aDataF[nSerieIndex]]);
    DMProjeto.CriarForm('RptContasAPagar',self,true);
  end;
end;

procedure TDlgGrafAReceberAPagar.ppmGraficoPopup(Sender: TObject);
begin
  inherited;
  MostrarLegenda.Checked := TDBChart(ActiveControl).Legend.Visible;
	MostrarValores.checked := not TDBChart(ActiveControl).SeriesList[0].Marks.Visible;
  Percentual.checked     := TDBChart(ActiveControl).Legend.TextStyle = ltsRightPercent;
  Valor.checked     		 := TDBChart(ActiveControl).Legend.TextStyle = ltsRightValue;
  PercentualGraf.checked := (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsPercent);
  ValorGraf.checked			 := (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsValue);
  DescricaoGraf.checked	 := (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsLabel);
  DescricaoValorGraf.checked	 		:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsLabelValue);
  DescricaoPercentualGraf.checked	:= (TDBChart(ActiveControl).SeriesList[0].Marks.Visible) and (TDBChart(ActiveControl).SeriesList[0].Marks.Style = smsLabelPercent);
  Barras.Enabled 				 := TDBChart(ActiveControl).Tag = 1;
  Juntos.Checked         := TBarSeries(TDBChart(ActiveControl).SeriesList[0]).MultiBar = mbStacked;
  LadoaLado.Checked      := TBarSeries(TDBChart(ActiveControl).SeriesList[0]).MultiBar = mbSide;
end;

procedure TDlgGrafAReceberAPagar.Nenhum2Click(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.TextStyle := ltsPlain;
end;

procedure TDlgGrafAReceberAPagar.grafDetalheContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ActiveControl := TDBChart(Sender);
end;

procedure TDlgGrafAReceberAPagar.serDetalheClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
	Q_DetalheFavorecido.Locate('Nome', serDetalhe.XLabel[ValueIndex], []);
  DetalheNoPeriodo( Q_DetalheFavorecidoID.AsInteger );
end;

procedure TDlgGrafAReceberAPagar.MostrarLegendaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Legend.Visible := not TDBChart(ActiveControl).Legend.Visible; 
end;

procedure TDlgGrafAReceberAPagar.DescricaoGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
  	TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsLabel;
  end;
end;

procedure TDlgGrafAReceberAPagar.DescricaoValorGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
  	TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsLabelValue;
  end;
end;

procedure TDlgGrafAReceberAPagar.DescricaoPercentualGrafClick(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to TDBChart(ActiveControl).SeriesList.Count-1 do begin
  	TDBChart(ActiveControl).SeriesList[i].Marks.Visible := true;
  	TDBChart(ActiveControl).SeriesList[i].Marks.Style := smsLabelPercent;
  end;
end;

end.
