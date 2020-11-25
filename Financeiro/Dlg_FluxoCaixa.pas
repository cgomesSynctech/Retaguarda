unit Dlg_FluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, RXSplit,
  dxMasterView, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_LastDataObject,
  DlgMsg, ExtCtrls, 
  TS_SpeedButton, StdCtrls,
  dxEdLib, TS_Label, Db, IBCustomDataSet, IBQuery, ComCtrls, dxtree,
  dxdbtree, dxDBTLCl, dxDBTL, Provider, DBClient,
  TS_DateTimePicker, Series, dxGrClms,
  dxfLabel, TS_CheckBox, dxMasterViewColumns,
  FormsComponent, TS_Image, TS_MaxPanel, teCtrls, TS_EffectsPanel,
  ImgList, DBTables, TS_QDBGrid, Menus, TS_PopupMenu, dxPSCore, dxPSdxMVLnk,
  dxExEdtr, dxEditor, TS_Bevel, Buttons, TeEngine, TeeProcs, Chart, DBChart, Variants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBTLLnk, Grids, DBGrids;

type
  TDlgFluxoCaixa = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Panel3: TTS_Panel;
    MasterView: TdxMasterView;
    TS_Panel4: TTS_Panel;
    FluxoCaixa: TdxMasterViewLevel;
    pnGrafico: TTS_Panel;
    RxSplitter1: TRxSplitter;
    RxSplitter2: TRxSplitter;
    TS_Panel5: TTS_Panel;
    TS_Label1: TTS_Label;
    cbSaldo: TdxPopupEdit;
    Q_Contas: TIBQuery;
    Q_ContasDS: TDataSource;
    dbTreeContas: TdxDBTreeList;
    dbTreeContasDESCRICAO: TdxDBTreeListMaskColumn;
    dbTreeContasSALDO: TdxDBTreeListMaskColumn;
    dbTreeContasColumn3: TdxDBTreeListCheckColumn;
    C_Contas: TClientDataSet;
    P_Contas: TDataSetProvider;
    C_ContasSelecionado: TStringField;
    C_ContasDESCRICAO: TStringField;
    Q_SQL: TIBQuery;
    Q_FluxoCaixa: TIBQuery;
    APagarDetalhe: TdxMasterViewLevel;
    C_FluxoCaixaDS: TDataSource;
    FluxoCaixaVENCIMENTO: TdxMasterViewColumn;
    FluxoCaixaVALORAPAGAR: TdxMasterViewColumn;
    FluxoCaixaVALORARECEBER: TdxMasterViewColumn;
    CabColunas: TdxMasterViewStyle;
    AReceberDetalhe: TdxMasterViewLevel;
    Q_APagar: TIBQuery;
    Q_APagarNOME: TIBStringField;
    Q_APagarVALOR: TIBBCDField;
    Q_APagarVENCIMENTO: TIBStringField;
    Q_APagarDS: TDataSource;
    Q_APagarID: TIntegerField;
    APagarDetalheNOME: TdxMasterViewColumn;
    APagarDetalheVALOR: TdxMasterViewColumn;
    APagarDetalheVENCIMENTO: TdxMasterViewColumn;
    APagarDetalheID: TdxMasterViewColumn;
    Q_AReceber: TIBQuery;
    Q_AReceberID: TIntegerField;
    Q_AReceberVENCIMENTO: TIBStringField;
    Q_AReceberNOME: TIBStringField;
    Q_AReceberVALOR: TIBBCDField;
    Q_AReceberDS: TDataSource;
    AReceberDetalheID: TdxMasterViewColumn;
    AReceberDetalheVENCIMENTO: TdxMasterViewColumn;
    AReceberDetalheNOME: TdxMasterViewColumn;
    AReceberDetalheVALOR: TdxMasterViewColumn;
    CorAPagar: TdxMasterViewStyle;
    CorAReceber: TdxMasterViewStyle;
    FluxoCaixaPrevisaoAVista: TdxMasterViewColumn;
    FluxoCaixaSaldo: TdxMasterViewColumn;
    CorLinhaGrid: TdxMasterViewStyle;
    TS_Label2: TTS_Label;
    C_FluxoCaixa: TClientDataSet;
    P_FluxoCaixa: TDataSetProvider;
    C_FluxoCaixaVALORAPAGAR: TBCDField;
    C_FluxoCaixaVALORARECEBER: TBCDField;
    C_FluxoCaixaVENCIMENTO: TStringField;
    C_FluxoCaixaANOPASSADO: TBCDField;
    C_FluxoCaixaMESPASSADO: TBCDField;
    C_FluxoCaixaMEDIAMESES: TBCDField;
    C_FluxoCaixaSaldo: TFloatField;
    C_FluxoCaixaPrevisaoAVista: TFloatField;
    dtData: TTS_DateTimePicker;
    C_Simulado: TClientDataSet;
    C_SimuladoDS: TDataSource;
    C_SimuladoData: TDateField;
    C_SimuladoValor: TFloatField;
    C_SimuladoSaldo: TFloatField;
    dxfLabel1: TdxfLabel;
    C_Dados: TClientDataSet;
    TS_SpeedButton4: TTS_SpeedButton;
    C_DadosVALORAPAGAR: TBCDField;
    C_DadosVALORARECEBER: TBCDField;
    C_DadosVENCIMENTO: TStringField;
    C_DadosMESPASSADO: TBCDField;
    C_DadosANOPASSADO: TBCDField;
    C_DadosMEDIAMESES: TBCDField;
    C_DadosSaldo: TFloatField;
    C_DadosPrevisaoAVista: TFloatField;
    DataSetProvider1: TDataSetProvider;
    C_SimuladoProxData: TDateField;
    C_SimuladoAtualizado: TStringField;
    C_SimuladoExcluir: TStringField;
    TS_Panel6: TTS_Panel;
    ckbRotulo: TTS_CheckBox;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_SpeedButton5: TTS_SpeedButton;
    TS_SpeedButton6: TTS_SpeedButton;
    TS_SpeedButton7: TTS_SpeedButton;
    C_ContasSaldo: TFloatField;
    C_ContasCONTA: TIntegerField;
    Q_AReceberTIPO: TIBStringField;
    APagarDetalheTipo: TdxMasterViewColumn;
    AReceberDetalheTipo: TdxMasterViewColumn;
    ImageList1: TImageList;
    C_SimuladoFigura: TIntegerField;
    Grid: TTS_QDBGrid;
    GridData: TdxDBGridDateColumn;
    GridValor: TdxDBGridMaskColumn;
    GridSaldo: TdxDBGridMaskColumn;
    GridProxData: TdxDBGridDateColumn;
    GridAtualizado: TdxDBGridMaskColumn;
    GridExcluir: TdxDBGridMaskColumn;
    GridFigura: TdxDBGridImageColumn;
    ImprimirFluxo: TdxComponentPrinter;
    ImprimirFluxoDados: TdxMasterViewReportLink;
    Q_APagarDATA: TDateField;
    Q_AReceberDATA: TDateField;
    OpcoesFluxo: TTS_PopupMenu;
    PorDia: TMenuItem;
    PorSemana: TMenuItem;
    PorMes: TMenuItem;
    N2: TMenuItem;
    SemPrevisao: TMenuItem;
    MesPassado: TMenuItem;
    AnoPassado: TMenuItem;
    Media: TMenuItem;
    OpcoesSimulado: TTS_PopupMenu;
    Apagar: TMenuItem;
    ApagarTodos: TMenuItem;
    Atualizar: TMenuItem;
    OpcoesGrafico: TTS_PopupMenu;
    Grafico: TDBChart;
    Linha: TLineSeries;
    N1: TMenuItem;
    PeriodosPorPagina: TMenuItem;
    N3: TMenuItem;
    PrimeiraPagina: TMenuItem;
    ProximaPagina: TMenuItem;
    PaginaAnterior: TMenuItem;
    UltimaPagina: TMenuItem;
    N4: TMenuItem;
    Imprimir1: TMenuItem;
    ppmSaldos: TTS_PopupMenu;
    ImprimirSaldos: TdxDBTreeListReportLink;
    N5: TMenuItem;
    Imprimir2: TMenuItem;
    Imprimir3: TMenuItem;
    P_AReceber: TDataSetProvider;
    C_AReceber: TClientDataSet;
    C_AReceberID: TIntegerField;
    C_AReceberVENCIMENTO: TStringField;
    C_AReceberNOME: TStringField;
    C_AReceberVALOR: TBCDField;
    C_AReceberTIPO: TStringField;
    C_AReceberDATA: TDateField;
    Q_APagarTIPO: TIBStringField;
    Series1: TLineSeries;
    Series2: TLineSeries;
    C_ContasTIPOCONTA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cbSaldoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PorDiaClick(Sender: TObject);
    procedure PorSemanaClick(Sender: TObject);
    procedure PorMesClick(Sender: TObject);
    procedure SemPrevisaoClick(Sender: TObject);
    procedure C_FluxoCaixaAfterOpen(DataSet: TDataSet);
    procedure C_SimuladoValorChange(Sender: TField);
    procedure C_SimuladoDataChange(Sender: TField);
    procedure cbSaldoChange(Sender: TObject);
    procedure dtDataDateChange(Sender: TObject);
    procedure TS_SpeedButton4Click(Sender: TObject);
    procedure ApagarClick(Sender: TObject);
    procedure ApagarTodosClick(Sender: TObject);
    procedure cbSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure OpcoesSimuladoPopup(Sender: TObject);
    procedure btGravarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btLimparMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AnoPassadoClick(Sender: TObject);
    procedure MediaClick(Sender: TObject);
    procedure MesPassadoClick(Sender: TObject);
    procedure ckbRotuloClick(Sender: TObject);
    procedure OpcoesGraficoPopup(Sender: TObject);
    procedure PeriodosPorPaginaClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure UltimaPaginaClick(Sender: TObject);
    procedure PaginaAnteriorClick(Sender: TObject);
    procedure ProximaPaginaClick(Sender: TObject);
    procedure PrimeiraPaginaClick(Sender: TObject);
    procedure GraficoContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure GraficoAllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure btComando1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Imprimir2Click(Sender: TObject);
    procedure Imprimir3Click(Sender: TObject);
  private
    { Private declarations }
    nSaldo, nSaldoCalc : currency;
    slData, slValor : TStringList;
    Grupo : string;
    i : integer;
    Stream : TMemoryStream;
		procedure AtualizaFluxo;
    procedure AcumulaSaldo;
    procedure InsereFluxoCaixa( Data : TDateTime );
    procedure getFluxoCaixa( sTipo : string );
  public
    { Public declarations }
  end;

var
  DlgFluxoCaixa: TDlgFluxoCaixa;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgFluxoCaixa.InsereFluxoCaixa( Data : TDateTime );
begin
	try
  Screen.Cursor := crHourGlass;
  with Q_SQL do begin
  	close;
    SQL.Text := 'delete from fluxocaixa';
    ExecSQL;
		close;
    SQL.Text := 'Insert into FluxoCaixa (Vencimento, ValorAPagar, ValorAReceber, AnoPassado, MesPassado, MediaMeses, Semana, Mes, Quinzena, Ano) '+
    		'Select v.Vencimento, '+
          	'       Sum(v.ValorAPagar), '+
                '       Sum(v.ValorAReceber), '+
                '(Select sum(tr.Valor) from titulosareceber tr where tr.vencimento >= f_addyear(v.vencimento,-1) and tr.vencimento < v.vencimento and tr.status >= 50), '+ // Ano Passado
                '(Select sum(tr.Valor) from titulosareceber tr where tr.vencimento >= f_addmonth(v.vencimento,-1) and tr.vencimento < v.vencimento and tr.status >= 50), '+ // Mes Passado
                '(Select avg(tr.Valor) from titulosareceber tr where tr.vencimento >= v.vencimento-90 and tr.vencimento < v.vencimento and tr.status >= 50), '+ // Media 3 últimos meses
       		'v.Semana, '+
                'v.Mes, '+
                'v.Quinzena, '+
       		'v.Ano '+
       		'From Visao_FluxoCaixa v '+
       		'Where v.vencimento <= :data '+
       		'Group by v.Vencimento, v.Semana, v.Quinzena, v.Mes, v.Ano';
    ParamByName('Data').asDateTime := Data;
    ExecSQL;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
	end;
  finally
  	Screen.Cursor := crDefault;
  end;
end;

procedure TDlgFluxoCaixa.getFluxoCaixa;
var t : integer;
begin
  try
  Screen.Cursor := crHourGlass;
  nSaldoCalc := nSaldo;
  with C_FluxoCaixa do begin
    Close;
      if sTipo = 'D' then begin
       FluxoCaixaVencimento.Caption := 'Vencimento';
       CommandText := 'select vencimento as venc, cast(format(Vencimento,'''+ShortDateFormat+''') as character(10)) as Vencimento, '+
                   '       Sum(ValorAPagar) as ValorAPagar, '+
                   '       Sum(ValorAReceber) as ValorAReceber, '+
                   '       Sum(AnoPassado) as AnoPassado, '+
                   '       Sum(MesPassado) as MesPassado, '+
                   '       Sum(MediaMeses) as MediaMeses '+
       		   'from FluxoCaixa '+
                   'group by 1,2 ' +
                   'order by 1' ;
       with Q_APagar do begin
       	close;
        SQL.Text := 'Select ''Conta           '' as Tipo, d.ID, cast(format(d.Vencimento,'''+ShortDateFormat+''') as character(10)) as Vencimento, f.Nome, (d.Valor-d.ValorPago-d.CreditoUtilizado-d.Descontos) as Valor, d.Vencimento as Data '+
		    'from duplicatasapagar d '+
        	    'inner join favorecidos f on d.fornecedor = f.favorecido '+
                    'where d.vencimento <= :dataate and ((d.status > 0 and d.status < 50) or d.status= -3) '+
		    'UNION '+
                    'Select ''Cheque          '' as Tipo,rd.IDDoc, cast(format(rd.Vencimento,'''+ShortDateFormat+''') as character(10)) as Vencimento, f.Nome, rd.Valor as Valor, rd.Vencimento as Data '+
                    'from retiradasdoc rd inner join favorecidos f on rd.favorecidodoc = f.favorecido '+
                    'where rd.Vencimento > current_date and rd.Status=3 ' +
                    'UNION ' +
                    'select ''Pedido de Compra'' as Tipo, e.entrada, ' +
                    'cast(format(e.previsaoentrega,'''+ShortDateFormat+''') as character(10)) as Vencimento, ' +
                    'f.nome, sum( eio.subtotalitem ) - sum( ei.subtotalitem ) as valor, e.previsaoentrega as data ' +
                    'from entradasitensmescla eim ' +
                    'inner join entradasitens ei on eim.entradaitem = ei.entradaitem ' +
                    'inner join entradasitens eio on eim.entradaitem_original = eio.entradaitem ' +
                    'inner join entradas e on eim.entrada_original = e.entrada ' +
                    'inner join favorecidos f on e.favorecido = f.favorecido ' +
                    'where e.tipopadrao = 102 and e.status in (''P'',''L'') ' +
                    'group by e.entrada, e.previsaoentrega, f.nome ' +
                    'having (sum(eio.subtotalitem) - sum(ei.subtotalitem)) > 0 ' +
                    'order by 6 ';
       end;
       with Q_AReceber do begin
       	close;
	sql.text := 'Select ''Venda  '' as Tipo,t.ID, cast(format(Vencimento,'''+ShortDateFormat+''') as character(10)) as Vencimento, f.Nome, (t.Valor-t.ValorPago-t.CreditoUtilizado-t.Descontos) as Valor, t.Vencimento as Data '+
		    'from titulosareceber t '+
        	    'inner join favorecidos f on t.cliente = f.favorecido '+
		    'where t.vencimento <= :dataate and t.status > 0 and t.status < 50 '+
                    'UNION '+
                    'Select ''Cheque '' as Tipo, dd.IDDoc, cast(format(dd.Vencimento,'''+ShortDateFormat+''') as character(10)) as Vencimento, f.Nome, dd.Valor as Valor, dd.Vencimento as Data '+
                    'from DepositosDoc dd '+
                    'left join depositos d on d.deposito = dd.deposito '+
                    'left join Favorecidos f on d.favorecido = f.favorecido '+
                    'Where dd.Status = 3 order by 6 ';
        end;
    end else if sTipo = 'S' then begin
       FluxoCaixaVencimento.Caption := 'Semana/Ano';
       CommandText := 'select Ano, Semana, Cast(Semana || ''/'' || Ano as character(10)) as Vencimento, '+
                   '       Sum(ValorAPagar) as ValorAPagar, '+
                   '       Sum(ValorAReceber) as ValorAReceber, '+
                   '       Sum(AnoPassado) as MesPassado, '+
                   '       Sum(MesPassado) as AnoPassado, '+
                   '       Sum(MediaMeses) as MediaMeses '+
       		   'from FluxoCaixa '+
                   'group by Ano, Semana ' +
                   'order by 1 ';
       with Q_APagar do begin
       	close;
        SQL.Text := 'Select ''Conta           '' as Tipo,d.ID, Cast(f_WeekOfYear(d.vencimento) || ''/'' || Extract(year from d.vencimento) as character(10)) as Vencimento, f.Nome, (d.Valor-d.ValorPago-d.CreditoUtilizado-d.Descontos) as Valor, d.Vencimento as Data '+
		    'from duplicatasapagar d '+
        	    'inner join favorecidos f on d.fornecedor = f.favorecido '+
                    'where d.vencimento <= :dataate and ((d.status > 0 and d.status < 50) or d.status = -3) '+
		    'UNION '+
                    'Select ''Cheque          '' as Tipo,rd.IDDoc, ' +
                    'Cast(f_WeekOfYear(rd.vencimento) || ''/'' || Extract(year from rd.vencimento) as character(10)) as Vencimento, f.Nome, rd.Valor as Valor, rd.Vencimento as Data '+
                    'from retiradasdoc rd inner join favorecidos f on rd.favorecidodoc = f.favorecido '+
                    'where rd.Vencimento > current_date and rd.Status=3 ' +
                    'UNION ' +
                    'select ''Pedido de Compra'' as Tipo, e.entrada, ' +
                    'cast(f_WeekOfYear(e.previsaoentrega) || ''/'' || Extract(year from e.previsaoentrega) as character(10)) as Vencimento, ' +
                    'f.nome, sum( eio.subtotalitem ) - sum( ei.subtotalitem ), e.previsaoentrega as data ' +
                    'from entradasitensmescla eim ' +
                    'inner join entradasitens ei on eim.entradaitem = ei.entradaitem ' +
                    'inner join entradasitens eio on eim.entradaitem_original = eio.entradaitem ' +
                    'inner join entradas e on eim.entrada_original = e.entrada ' +
                    'inner join favorecidos f on e.favorecido = f.favorecido ' +
                    'where e.tipopadrao = 102 and e.status in (''P'',''L'') ' +
                    'group by e.entrada, e.previsaoentrega, f.nome ' +
                    'having (sum(eio.subtotalitem) - sum(ei.subtotalitem)) > 0 ' +
                    'order by 6 ';
       end;
       with Q_AReceber do begin
       	close;
	sql.text := 'Select ''Venda  '' as Tipo,t.ID, Cast(f_WeekOfYear(t.vencimento) || ''/'' || Extract(year from t.vencimento) as character(10)) as Vencimento, f.Nome, (t.Valor-t.ValorPago-t.CreditoUtilizado-t.Descontos) as Valor, t.Vencimento as Data '+
		    'from titulosareceber t '+
        	    'inner join favorecidos f on t.cliente = f.favorecido '+
		    'where t.vencimento <= :dataate and t.status > 0 and t.status < 50 '+
                    'UNION '+
                    'Select ''Cheque '' as Tipo,dd.IDDoc, Cast(f_WeekOfYear(dd.vencimento) || ''/'' || Extract(year from dd.vencimento) as character(10)) as Vencimento, f.Nome, dd.Valor as Valor, dd.Vencimento as Data '+
                    'from DepositosDoc dd '+
                    'left join Depositos d on d.deposito = dd.deposito '+
                    'left join Favorecidos f on d.favorecido = f.favorecido '+
                    'Where dd.Status = 3  order by 6 ';
       end;
			 //
    end else if sTipo = 'M' then begin
       FluxoCaixaVencimento.Caption := 'Mês/Ano';
       CommandText := 'select Ano, Mes,Cast(Mes || ''/'' || Ano as character(10)) as Vencimento, '+
                   '       Sum(ValorAPagar) as ValorAPagar, '+
                   '       Sum(ValorAReceber) as ValorAReceber, '+
                   '       Sum(AnoPassado) as MesPassado, '+
                   '       Sum(MesPassado) as AnoPassado, '+
                   '       Sum(MediaMeses) as MediaMeses '+
       		   'from FluxoCaixa '+
                   'group by Ano, Mes ' +
                   'order by 1 ';
       with Q_APagar do begin
       	close;
        SQL.Text := 'Select ''Conta           '' as Tipo,d.ID, Cast( Extract(Month from d.vencimento) || ''/'' || Extract(Year from d.vencimento) as character(10)) as Vencimento, f.Nome, (d.Valor-d.ValorPago-d.CreditoUtilizado-d.Descontos) as Valor, d.Vencimento as Data '+
		    'from duplicatasapagar d '+
        	    'inner join favorecidos f on d.fornecedor = f.favorecido '+
                    'where d.vencimento <= :dataate and ((d.status > 0 and d.status < 50) or d.status = -3) '+
		    'UNION '+
                    'Select ''Cheque          '' as Tipo,rd.IDDoc, '+
                    'Cast( Extract(Month from rd.vencimento) || ''/'' || Extract(Year from rd.vencimento) as character(10)) as Vencimento, f.Nome, rd.Valor as Valor, rd.Vencimento as Data '+
                    'from retiradasdoc rd inner join favorecidos f on rd.favorecidodoc = f.favorecido '+
                    'where rd.Vencimento > current_date and rd.Status=3 ' +
                    'UNION ' +
                    'select ''Pedido de Compra'' as Tipo, e.entrada, ' +
                    'cast( extract(month from e.previsaoentrega) || ''/'' || extract(year from e.previsaoentrega) as character(10)) as vencimento, ' +
                    'f.nome, sum( eio.subtotalitem ) - sum( ei.subtotalitem ), e.previsaoentrega as data ' +
                    'from entradasitensmescla eim ' +
                    'inner join entradasitens ei on eim.entradaitem = ei.entradaitem ' +
                    'inner join entradasitens eio on eim.entradaitem_original = eio.entradaitem ' +
                    'inner join entradas e on eim.entrada_original = e.entrada ' +
                    'inner join favorecidos f on e.favorecido = f.favorecido ' +
                    'where e.tipopadrao = 102 and e.status in (''P'',''L'') ' +
                    'group by e.entrada, e.previsaoentrega, f.nome ' +
                    'having (sum(eio.subtotalitem) - sum(ei.subtotalitem)) > 0 ' +
                    'order by 6 ';
       end;
       with Q_AReceber do begin
       	close;
        sql.text := 'Select ''Venda  '' as Tipo,t.ID, Cast( Extract(Month from t.vencimento) || ''/'' || Extract(Year from t.vencimento) as character(10)) as Vencimento, f.Nome, (t.Valor-t.ValorPago-t.CreditoUtilizado-t.Descontos) as Valor, t.Vencimento as Data '+
		    'from titulosareceber t '+
        	    'inner join favorecidos f on t.cliente = f.favorecido '+
		    'where t.vencimento <= :dataate and t.status > 0 and t.status < 50 '+
                    'UNION '+
                    'Select ''Cheque '' as Tipo,dd.IDDoc, Cast( Extract(Month from dd.vencimento) || ''/'' || Extract(Year from dd.vencimento)  as character(10)) as Vencimento, f.Nome, dd.Valor as Valor, dd.Vencimento as Data '+
                    'from DepositosDoc dd '+
                    'left join Depositos d on d.deposito = dd.deposito '+
                    'left join Favorecidos f on d.favorecido = f.favorecido '+
                    'Where dd.Status = 3  order by 6 ';
       end;
    end;
    Grupo := sTipo;
    FluxoCaixa.DataSource := nil;
    APagarDetalhe.DataSource := nil;
    AReceberDetalhe.DataSource := nil;
    //Linha.DataSource      := nil;
    Open;
    with Q_APagar do begin
    	Close;
      ParamByName('DataAte').AsDateTime := trunc(dtData.Date);
      Open;
    end;
    with Q_AReceber do begin
    	Close;
      ParamByName('DataAte').AsDateTime := Trunc(dtData.Date);
      Open;
    end;
    APagarDetalhe.DataSource := Q_APagarDS;
    AReceberDetalhe.DataSource := Q_AReceberDS;
    FluxoCaixa.DataSource := C_FluxoCaixaDS;
    //Linha.DataSource := C_FluxoCaixa;
  end;
  finally
  	Screen.Cursor := crDefault;
  end;
end;

procedure TDlgFluxoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  slData := TStringList.Create;
  slValor:= TStringList.Create;
  C_Contas.Close;
  C_Contas.Open;
  nSaldo := 0;
  with C_Contas do begin
    disablecontrols;
    First;
    while not EOF do begin
      Edit;
      C_ContasSelecionado.Value := 'S';
      C_ContasSaldo.Value := DMFinanceiro.SaldoConta( C_ContasConta.AsInteger, DMProjeto.dDataSistema,iif(C_ContasTipoConta.AsInteger = 1, '5', '') );
      nSaldo := nSaldo + C_ContasSaldo.Value;
      Post;
      Next;
    end;
    enablecontrols;
  end;
  nSaldoCalc := nSaldo;
  Grupo := 'D';
  C_Simulado.CreateDataSet;
  C_Dados.CreateDataSet;
  dtData.Date := DMProjeto.dDataSistema + 60;
  cbSaldo.Text := formatfloat('########0.00', nSaldo );
  {
  Stream := TMemoryStream.Create;
  C_FluxoCaixa.First;
  C_FluxoCaixa.SaveToStream( Stream );
  C_Dados.LoadFromStream( Stream );
  Stream.Free;
  }
end;

procedure TDlgFluxoCaixa.cbSaldoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  if C_Contas.State in [dsEdit] then
  	C_Contas.Post;
  nSaldo := 0;
  with C_Contas do begin
    disablecontrols;
  	First;
    while not EOF do begin
    	if C_ContasSelecionado.Value = 'S' then
        nSaldo := nSaldo + C_ContasSAldo.Value;
      Next;
    end;
    enablecontrols;
  end;
  cbSaldo.Text := formatfloat('########0.00', nSaldo );
  nSaldoCalc   := nSaldo;
	AcumulaSaldo;
  Stream := TMemoryStream.Create;
  C_FluxoCaixa.First;
  C_FluxoCaixa.SaveToStream( Stream );
  C_Dados.EmptyDataSet;
  C_Dados.LoadFromStream( Stream );
  Stream.Free;
end;


procedure TDlgFluxoCaixa.SemPrevisaoClick(Sender: TObject);
begin
  inherited;
  SemPrevisao.Checked := true;
	FluxoCaixaPrevisaoAVista.Visible := false;
  AcumulaSaldo;
end;

procedure TDlgFluxoCaixa.AcumulaSaldo;
begin
  try
  Screen.Cursor := crHourGlass;
  nSaldoCalc := nSaldo;
  FluxoCaixa.DataSource := nil;
  Linha.DataSource      := nil;
  with C_FluxoCaixa do begin
    DisableControls;
    First;
    while not EOF do begin
      Edit;
      if MesPassado.checked then
  	C_FluxoCaixaPrevisaoAVista.Value := C_FluxoCaixaMesPassado.Value
      else if AnoPassado.checked then
  	C_FluxoCaixaPrevisaoAVista.Value := C_FluxoCaixaAnoPassado.Value
      else if Media.checked then
  	C_FluxoCaixaPrevisaoAVista.Value := C_FluxoCaixaMediaMeses.Value
      else
  	C_FluxoCaixaPrevisaoAVista.Value := 0;
  		C_FluxoCaixaSaldo.Value := C_FluxoCaixaValorAReceber.AsCurrency - C_FluxoCaixaValorAPagar.AsCurrency + C_FluxoCaixaPrevisaoAVista.Value + nSaldoCalc;
      nSaldoCalc := nSaldoCalc + C_FluxoCaixaValorAReceber.AsCurrency - C_FluxoCaixaValorAPagar.AsCurrency + C_FluxoCaixaPrevisaoAVista.Value;
      Post;
    	Next;
    end;
   	EnableControls;
  end;
  FluxoCaixa.DataSource := C_FluxoCaixaDS;
  Linha.DataSource      := C_FluxoCaixa;
  finally
		Screen.Cursor := crDefault;
  end;
end;

procedure TDlgFluxoCaixa.C_FluxoCaixaAfterOpen(DataSet: TDataSet);
var
  t:Integer;
begin
  {Acumula Saldo}
   AcumulaSaldo;
end;

procedure TDlgFluxoCaixa.C_SimuladoValorChange(Sender: TField);
begin
  inherited;
  if C_SimuladoValor.Value > C_SimuladoSaldo.Value then begin
  	C_SimuladoFigura.Value := 1;
    C_Dados.disablecontrols;
    C_Dados.First;
    while not C_Dados.EOF do begin
    	if (C_DadosVencimento.AsDatetime > C_SimuladoData.Value) and
         (C_DadosSaldo.Value >= C_SimuladoValor.Value) then begin
        C_SimuladoProxData.Value := C_DadosVencimento.AsDatetime;
        GridProxData.Visible := true;
        break;
      end;
      C_Dados.Next;
    end;
    C_Dados.enablecontrols;
  end else
  	C_SimuladoFigura.Value := 2; //C_SimuladoFigura.LoadFromFile('e:\ComSaldo.bmp');
end;

procedure TDlgFluxoCaixa.AtualizaFluxo;
var dVencimento : TDateTime;
		sData : string;
    i : integer;
begin
  try
  Screen.Cursor := crHourGlass;
  for i:=0 to slData.Count-1 do begin
		C_FluxoCaixa.Locate('Vencimento',slData[i],[loPartialKey]);
    if trim(C_FluxoCaixaVencimento.AsString) = slData[i] then begin
    	with Q_SQL do begin
      	Close;
        SQL.Text := 'delete from fluxocaixa '+
                    'where vencimento = :venc and valorapagar = :valor';
        ParamByName('Venc').AsString 		:= slData[i];
        ParamByName('Valor').AsCurrency := StrToFloat(slValor[i]);
				ExecSQL;
        {
        SQL.Text := 'update fluxocaixa set valorapagar = valorapagar - :valor '+
        						'where vencimento = :venc';
        ParamByName('Venc').AsString 	:= slData[i];
        ParamByName('Valor').AsCurrency := StrToFloat(slValor[i]);
        }
     	end;
   	end;
  end;
  slValor.Clear;
  slData.Clear;
  i := 0;
  if C_Simulado.Active then begin
   with C_Simulado do begin
    disablecontrols;
  	First;
    while not EOF do begin
			with C_Dados do begin
        disablecontrols;
  			First;
        dVencimento := 0;// C_Dados.FieldByName('Vencimento').AsDateTime;
    		while not EOF do begin
      		if C_Dados.FieldByName('Vencimento').AsDateTime = C_SimuladoData.Value then
          	dVencimento := C_Dados.FieldByName('Vencimento').AsDateTime;
      		Next;
    		end;
        enablecontrols;
        sData := DateToStr(dVencimento);
        if PorMes.checked then
        	sData := formatdatetime('m/yyyy',dVencimento);
        if PorSemana.checked then
        	sData := IntToStr(SemanaDoAno(dVencimento))+'/'+formatdatetime('yyyy',dVencimento);
				C_FluxoCaixa.Locate('Vencimento',sData,[loPartialKey]);
    		if trim(C_FluxoCaixaVencimento.AsString) = sData then begin
           	with Q_SQL do begin
          		Close;
            	SQL.Text := 'update fluxocaixa set valorapagar = valorapagar + :valor '+
                          'where vencimento = :Venc';
              ParamByName('Venc').AsDateTime 	:= C_SimuladoData.Value;
            	ParamByName('Valor').AsCurrency := C_SimuladoValor.Value;
            	ExecSQL;
          	end;
        end else begin
          	with Q_SQL do begin
          		close;
            	SQL.Text := 'insert into fluxocaixa values (:Venc,:APagar,0,0,0,0,:Sem,:Mes,0,:Ano)';
            	ParamByName('Venc').AsDateTime 	:= C_SimuladoData.Value;
            	ParamByName('APagar').AsCurrency   := C_SimuladoValor.Value;
            	ParamByName('Sem').AsInteger   	:= SemanaDoAno(dVencimento);
            	ParamByName('Mes').AsInteger   	:= Mes(dVencimento);
            	ParamByName('Ano').AsInteger   	:= strtoint(formatdatetime('yyyy',dVencimento));
            	ExecSQL;
          	end;
        end;
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    	end;
      slData.Add(C_SimuladoData.AsString);
      slValor.Add(C_SimuladoValor.AsString);
      inc(i);
      Next;
    end;
    enablecontrols;
   end;
  end;
  getFluxoCaixa(Grupo);
  finally
	  Screen.Cursor := crDefault;
  end;
end;

procedure TDlgFluxoCaixa.C_SimuladoDataChange(Sender: TField);
begin
  inherited;
	with C_Dados do begin
    disablecontrols;
  	First;
    C_SimuladoSaldo.Value := C_Dados.FieldByName('Saldo').AsCurrency;
    while not EOF do begin
    	if C_DadosVencimento.AsDateTime <= C_SimuladoData.Value then
      	C_SimuladoSaldo.Value := C_Dados.FieldByName('Saldo').AsCurrency
      else
				break;
      Next;
    end;
    enablecontrols;
  end;
  if not C_SimuladoValor.IsNull then begin
  	if C_SimuladoValor.Value > C_SimuladoSaldo.Value then
  		C_SimuladoFigura.Value := 1
  	else
  		C_SimuladoFigura.Value := 2;
  end;
end;

procedure TDlgFluxoCaixa.cbSaldoChange(Sender: TObject);
begin
  inherited;
  if cbSaldo.Text <> '' then
    try
    	nSaldo := StrToFloat(cbSaldo.Text);
			AcumulaSaldo;
  		Stream := TMemoryStream.Create;
  		C_FluxoCaixa.First;
  		C_FluxoCaixa.SaveToStream( Stream );
  		C_Dados.EmptyDataSet;
  		C_Dados.LoadFromStream( Stream );
  		Stream.Free;
    except
    end;
end;

procedure TDlgFluxoCaixa.dtDataDateChange(Sender: TObject);
begin
  inherited;
	InsereFluxoCaixa(dtData.Date);
  slValor.Clear;
  slData.Clear;
  AtualizaFluxo;
  //getFluxoCaixa(Grupo);
end;

procedure TDlgFluxoCaixa.TS_SpeedButton4Click(Sender: TObject);
begin
  inherited;
	AtualizaFluxo;
end;

procedure TDlgFluxoCaixa.ApagarClick(Sender: TObject);
begin
  inherited;
  if (C_Simulado.Active) and (not C_Simulado.IsEmpty) then begin
  	C_Simulado.Delete;
		AtualizaFluxo;
  end;
end;

procedure TDlgFluxoCaixa.ApagarTodosClick(Sender: TObject);
begin
  inherited;
  if not C_Simulado.Active then
  	exit;
  with C_Simulado do begin
    disablecontrols;
  	First;
		while not EOF do begin
    	Delete;
    end;
    enablecontrols;
  end;
  AtualizaFluxo;
end;

procedure TDlgFluxoCaixa.cbSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	if key in ['.',','] then
  	Key := DecimalSeparator;
end;

procedure TDlgFluxoCaixa.OpcoesSimuladoPopup(Sender: TObject);
begin
  inherited;
	Apagar.Enabled 			:= C_Simulado.recordcount > 0;
  ApagarTodos.Enabled := C_Simulado.recordcount > 0;
  Atualizar.Enabled 	:= C_Simulado.recordcount > 0;
end;

procedure TDlgFluxoCaixa.btGravarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xy : TPoint;
begin
    xy.x := X;
    xy.Y := Y;
    xy:= btGravar.ClientToScreen(xy);
    OpcoesFluxo.Popup(xy.X-(X), xy.Y-(Y)+btGravar.Height);
end;

procedure TDlgFluxoCaixa.btLimparMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xy : TPoint;
begin
    xy.x := X;
    xy.Y := Y;
    xy:= btLimpar.ClientToScreen(xy);
    OpcoesSimulado.Popup(xy.X-(X), xy.Y-(Y));
end;

procedure TDlgFluxoCaixa.AnoPassadoClick(Sender: TObject);
begin
  inherited;
  AnoPassado.Checked := true;
	FluxoCaixaPrevisaoAVista.Visible := true;
  FluxoCaixaPrevisaoAVista.Caption := 'Prev.Ano Pas';
  AcumulaSaldo;
end;

procedure TDlgFluxoCaixa.MediaClick(Sender: TObject);
begin
  inherited;
  Media.Checked := true;
	FluxoCaixaPrevisaoAVista.Visible := true;
  FluxoCaixaPrevisaoAVista.Caption := 'Prev. Média';
  AcumulaSaldo;
end;

procedure TDlgFluxoCaixa.MesPassadoClick(Sender: TObject);
begin
  inherited;
  MesPassado.Checked := true;
	FluxoCaixaPrevisaoAVista.Visible := true;
  FluxoCaixaPrevisaoAVista.Caption := 'Prev.Mês Pas';
  AcumulaSaldo;
end;

procedure TDlgFluxoCaixa.PorDiaClick(Sender: TObject);
begin
  inherited;
  PorDia.Checked := true;
  getFluxoCaixa('D');
end;

procedure TDlgFluxoCaixa.PorMesClick(Sender: TObject);
begin
  inherited;
  PorMes.Checked := true;
  getFluxoCaixa('M');
end;

procedure TDlgFluxoCaixa.PorSemanaClick(Sender: TObject);
begin
  inherited;
  PorSemana.Checked := true;
  getFluxoCaixa('S');
end;

procedure TDlgFluxoCaixa.ckbRotuloClick(Sender: TObject);
begin
  inherited;
  Linha.Marks.Visible := ckbRotulo.Checked;
end;

procedure TDlgFluxoCaixa.OpcoesGraficoPopup(Sender: TObject);
begin
  inherited;
  PeriodosPorPagina.Caption := 'Períodos por Página: '+IntToStr(TDBChart(ActiveControl).MaxPointsPerPage);
  PrimeiraPagina.Enabled 	:= TDBChart(ActiveControl).Page <> 1;
  ProximaPagina.Enabled 	:= TDBChart(ActiveControl).Page < TDBChart(ActiveControl).NumPages;
  PaginaAnterior.Enabled 	:= TDBChart(ActiveControl).Page > 1;
  UltimaPagina.Enabled 		:= TDBChart(ActiveControl).NumPages<>TDBChart(ActiveControl).Page;
end;

procedure TDlgFluxoCaixa.PeriodosPorPaginaClick(Sender: TObject);
var nPaginas : integer;
begin
  inherited;
  nPaginas := StrToIntDef(InputBox('Nº de Pontos por Página','Informe o nº de pontos: ',IntToStr(TDBChart(ActiveControl).MaxPointsPerPage)),5);
  TDBChart(ActiveControl).MaxPointsPerPage := nPaginas;
	PrimeiraPagina.Enabled 	:= TDBChart(ActiveControl).Page <> 1;
  ProximaPagina.Enabled 	:= TDBChart(ActiveControl).Page < TDBChart(ActiveControl).NumPages;
  PaginaAnterior.Enabled 	:= TDBChart(ActiveControl).Page > 1;
  UltimaPagina.Enabled 		:= TDBChart(ActiveControl).NumPages<>TDBChart(ActiveControl).Page;
end;

procedure TDlgFluxoCaixa.Imprimir1Click(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgFluxoCaixa.UltimaPaginaClick(Sender: TObject);
begin
  inherited;
  Grafico.Page := Grafico.NumPages;
end;

procedure TDlgFluxoCaixa.PaginaAnteriorClick(Sender: TObject);
begin
  inherited;
  Grafico.PreviousPage;
end;

procedure TDlgFluxoCaixa.ProximaPaginaClick(Sender: TObject);
begin
  inherited;
  Grafico.NextPage;
end;

procedure TDlgFluxoCaixa.PrimeiraPaginaClick(Sender: TObject);
begin
  inherited;
  Grafico.Page := 1;
end;

procedure TDlgFluxoCaixa.GraficoContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ActiveControl := TDBChart(Sender);
end;

procedure TDlgFluxoCaixa.GraficoAllowScroll(Sender: TChartAxis; var AMin,
  AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
  AllowScroll := false;
end;

procedure TDlgFluxoCaixa.btComando1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xy : TPoint;
begin
    xy.x := X;
    xy.Y := Y;
    xy:= btComando1.ClientToScreen(xy);
    OpcoesGrafico.Popup(xy.X-(X), xy.Y-(Y));
end;

procedure TDlgFluxoCaixa.Imprimir2Click(Sender: TObject);
begin
  inherited;
  ImprimirFluxoDados.Preview;
end;

procedure TDlgFluxoCaixa.Imprimir3Click(Sender: TObject);
begin
  inherited;
  ImprimirSaldos.Preview;
end;

end.
