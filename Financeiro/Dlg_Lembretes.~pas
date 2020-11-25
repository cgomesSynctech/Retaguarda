unit Dlg_Lembretes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, IBCustomDataSet, IBQuery, dxMasterView,
  TS_LastDataObject, DlgMsg, ExtCtrls,
  TS_Bevel, Buttons, TS_SpeedButton, StdCtrls,
  TS_CheckBox, dxPSCore, dxPSdxMVLnk, dxPgsDlg,
  TeEngine, Series, TeeProcs, Chart, DBChart, ComCtrls, TS_PageControl,
  dxCntner, dxExEdtr, dxEdLib, FormsComponent, TS_Label, TS_Image,
  dxfLabel, TS_MaxPanel, teCtrls, TS_EffectsPanel, teMasked, teRadial,
  TransEff, teTimed, teBlend, teForm, teFuse, ImgList, Menus, TS_PopupMenu,
  teWipe, teDiagon, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt, dxEditor, TS_ComboBox,
  TS_DateTimePicker, teRoll;

type
  TDlgLembretes = class(TFrmModeloCadastros)
    Imprimir: TdxComponentPrinter;
    ImprimirMasterViewPrint: TdxMasterViewReportLink;
    TS_Panel1: TTS_Panel;                              
    cbkProximaVez: TTS_CheckBox;
    pnlGrafico: TTS_Panel;
    pageGrafico: TTS_PageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    PosicaoCaixas: TDBChart;
    DBChart3: TDBChart;
    DBChart4: TDBChart;
    SeriePosicaoCaixas: TPieSeries;
    SeriePosicaoCaixasDet: TPieSeries;
    SaldoContas: TDBChart;
    SerieSaldoDet: TPieSeries;
    SerieSaldo: TBarSeries;
    FormTransitions: TFormTransitions;
    MasterView: TdxMasterView;
    ParcelasAReceber: TdxMasterViewLevel;
    ParcelasAReceberDESCRICAO: TdxMasterViewColumn;
    ParcelasAReceberVALOR: TdxMasterViewColumn;
    ParcelasAReceberDet: TdxMasterViewLevel;
    ParcelasAReceberDetVALOR: TdxMasterViewColumn;
    ParcelasAReceberDetNOME: TdxMasterViewColumn;
    ParcelasAReceberDetVENCIMENTO: TdxMasterViewColumn;
    ContasAPagar: TdxMasterViewLevel;
    ContasAPagarDESCRICAO: TdxMasterViewColumn;
    ContasAPagarVALOR: TdxMasterViewColumn;
    ContasAPagarDet: TdxMasterViewLevel;
    ContasAPagarDetVALOR: TdxMasterViewColumn;
    ContasAPagarDetNOME: TdxMasterViewColumn;
    ContasAPagarDetVENCIMENTO: TdxMasterViewColumn;
    ChequesParaDepositar: TdxMasterViewLevel;
    ChequesParaDepositarDESCRICAO: TdxMasterViewColumn;
    ChequesParaDepositarVALOR: TdxMasterViewColumn;
    ChequesParaDepositarDet: TdxMasterViewLevel;
    ChequesParaDepositarDetVALOR: TdxMasterViewColumn;
    ChequesParaDepositarDetNOME: TdxMasterViewColumn;
    ChequesParaDepositarDetVENCIMENTO: TdxMasterViewColumn;
    ChequesParaDepositarDetNOMEBANCO: TdxMasterViewColumn;
    ChequesParaDepositarDetColumn1: TdxMasterViewColumn;
    ChequesACompensar: TdxMasterViewLevel;
    ChequesACompensarDESCRICAO: TdxMasterViewColumn;
    ChequesACompensarVALOR: TdxMasterViewColumn;
    ChequesACompensarDet: TdxMasterViewLevel;
    ChequesACompensarDetVALOR: TdxMasterViewColumn;
    ChequesACompensarDetNOME: TdxMasterViewColumn;
    ChequesACompensarDetVENCIMENTO: TdxMasterViewColumn;
    ChequesACompensarDetCONTA: TdxMasterViewColumn;
    ChequesPendentesImpressao: TdxMasterViewLevel;
    ChequesPendentesImpressaoDESCRICAO: TdxMasterViewColumn;
    ChequesPendentesImpressaoVALOR: TdxMasterViewColumn;
    ChequesPendentesDet: TdxMasterViewLevel;
    ChequesPendentesDetVALOR: TdxMasterViewColumn;
    ChequesPendentesDetNOME: TdxMasterViewColumn;
    ChequesPendentesDetCONTA: TdxMasterViewColumn;
    ChequesPendentesDetVENCIMENTO: TdxMasterViewColumn;
    CompromissosDoDia: TdxMasterViewLevel;
    CompromissosDoDiaCAPTION: TdxMasterViewColumn;
    CompromissosDoDiaQUANT: TdxMasterViewColumn;
    CompromissosDoDiaDet: TdxMasterViewLevel;
    CompromissosDoDiaDetASSUNTO: TdxMasterViewColumn;
    CompromissosDoDiaDetDE: TdxMasterViewColumn;
    CompromissosDoDiaDetHORARIO: TdxMasterViewColumn;
    Recados: TdxMasterViewLevel;
    RecadosCAPTION: TdxMasterViewColumn;
    RecadosQUANT: TdxMasterViewColumn;
    RecadosDet: TdxMasterViewLevel;
    RecadosDetDATA: TdxMasterViewColumn;
    RecadosDetHORARIO: TdxMasterViewColumn;
    RecadosDetDE: TdxMasterViewColumn;
    TS_Panel2: TTS_Panel;
    btCaixa: TTS_SpeedButton;
    btSaldo: TTS_SpeedButton;
    btPrevisao: TTS_SpeedButton;
    btVendas: TTS_SpeedButton;
    TransitionList: TTransitionList;
    TranGrafico: TRadialTransition;
    ContasAgendadas: TdxMasterViewLevel;
    ContasAgendadasDet: TdxMasterViewLevel;
    ContasAgendadasDESCRICAO: TdxMasterViewColumn;
    ContasAgendadasVALOR: TdxMasterViewColumn;
    ContasAgendadasDetVALOR: TdxMasterViewColumn;
    ContasAgendadasDetNOME: TdxMasterViewColumn;
    ContasAgendadasDetVENCIMENTO: TdxMasterViewColumn;
    ppmGrafico: TTS_PopupMenu;
    BarrasporPagina: TMenuItem;
    PrimeiraPagina: TMenuItem;
    PaginaAnterior: TMenuItem;
    ProximaPagina: TMenuItem;
    UltimaPagina: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Imprimir1: TMenuItem;
    ValorNormal: TdxMasterViewStyle;
    TS_Panel3: TTS_Panel;
    TS_Label1: TTS_Label;
    cmbTipo: TTS_ComboBox;
    Lembretes: TdxMasterViewLevel;
    LembretesDet: TdxMasterViewLevel;
    LembretesDESCRICAO: TdxMasterViewColumn;
    LembretesQTDE: TdxMasterViewColumn;
    LembretesDetOBS: TdxMasterViewColumn;
    Memorizacoes: TdxMasterViewLevel;
    MemorizacoesDet: TdxMasterViewLevel;
    MemorizacoesDESCRICAO: TdxMasterViewColumn;
    MemorizacoesQUANT: TdxMasterViewColumn;
    MemorizacoesDetDESCRICAO: TdxMasterViewColumn;
    MemorizacoesDetDATA: TdxMasterViewColumn;
    ValorAReceber: TdxMasterViewStyle;
    ValorAPagar: TdxMasterViewStyle;
    Texto: TdxMasterViewStyle;
    Atrasados: TdxMasterViewStyle;
    Vencidos: TdxMasterViewStyle;
    Detalhe: TdxMasterViewStyle;
    lbDe: TTS_Label;
    dDataI: TTS_DateTimePicker;
    dDataF: TTS_DateTimePicker;
    lbA: TTS_Label;
    CompromissosDoDiaDetColumn1: TdxMasterViewColumn;
    Series3: TFastLineSeries;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Vendas: TdxMasterViewLevel;
    VendasDet: TdxMasterViewLevel;
    VendasDESCRICAO: TdxMasterViewColumn;
    VendasTOTAL: TdxMasterViewColumn;
    VendasDetDATA: TdxMasterViewColumn;
    VendasDetDESCRICAO: TdxMasterViewColumn;
    VendasDetQUANTIDADE: TdxMasterViewColumn;
    VendasDetSUBTOTALITEM: TdxMasterViewColumn;
    ParcelasAReceberDetTITULO: TdxMasterViewColumn;
    ContasAPagarDetTITULO: TdxMasterViewColumn;
    EstoqueMinimo: TdxMasterViewLevel;
    EstoqueMinimoDet: TdxMasterViewLevel;
    EstoqueMinimoDESCRICAO: TdxMasterViewColumn;
    EstoqueMinimoQUANT: TdxMasterViewColumn;
    EstoqueMinimoDetCODIGO: TdxMasterViewColumn;
    EstoqueMinimoDetDESCRICAO: TdxMasterViewColumn;
    EstoqueMinimoDetESTOQUE: TdxMasterViewColumn;
    EstoqueMinimoDetMINIMO: TdxMasterViewColumn;
    EstoquePP: TdxMasterViewLevel;
    EstoquePPDet: TdxMasterViewLevel;
    EstoquePPDESCRICAO: TdxMasterViewColumn;
    EstoquePPQUANT: TdxMasterViewColumn;
    EstoquePPDetCODIGO: TdxMasterViewColumn;
    EstoquePPDetDESCRICAO: TdxMasterViewColumn;
    EstoquePPDetESTOQUE: TdxMasterViewColumn;
    EstoquePPDetPONTOPEDIDO: TdxMasterViewColumn;
    TranAbertura: TRollTransition;
    procedure btGravarClick(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure MasterViewDblClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure SerieSaldoClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SerieSaldoDetClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SeriePosicaoCaixasClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure SeriePosicaoCaixasDetClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure PrimeiraPaginaClick(Sender: TObject);
    procedure ProximaPaginaClick(Sender: TObject);
    procedure PaginaAnteriorClick(Sender: TObject);
    procedure UltimaPaginaClick(Sender: TObject);
    procedure ImprimirGraficoClick(Sender: TObject);
    procedure SaldoContasAllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure PosicaoCaixasAllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure DBChart3AllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure DBChart4AllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure DBChart5AllowScroll(Sender: TChartAxis; var AMin,
      AMax: Double; var AllowScroll: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TranAberturaAfterTransition(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btCaixaClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppmGraficoPopup(Sender: TObject);
    procedure BarrasporPaginaClick(Sender: TObject);
    procedure PosicaoCaixasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ContasAPagarDetGetContentStyle(Sender: TdxMasterViewLevel;
      Node: TdxMasterViewNode; Column: TdxMasterViewColumn;
      var NewStyle: TdxMasterViewStyle);
    procedure ParcelasAReceberDetGetContentStyle(
      Sender: TdxMasterViewLevel; Node: TdxMasterViewNode;
      Column: TdxMasterViewColumn; var NewStyle: TdxMasterViewStyle);
    procedure cmbTipoChange(Sender: TObject);
    procedure dDataIDateChange(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar;
    procedure ProcessaGrafico( Tipo : integer );
  public
    { Public declarations }
  end;

var
  DlgLembretes: TDlgLembretes;

implementation

uses DM_Projeto, DM_Lembretes, DM_Financeiro, funcoes, DM_GridPrinter;

{$R *.DFM}

procedure TDlgLembretes.btGravarClick(Sender: TObject);
begin
  inherited;
  if btGravar.Down then begin
  	TranGrafico.Prepare(pnlGrafico.Parent, pnlGrafico.BoundsRect);
  	try
       pnlGrafico.SendToBack;
    	if TranGrafico.Prepared then
      	TranGrafico.Execute;
  	finally
    	TranGrafico.UnPrepare;
  	end;
  end;
end;

procedure TDlgLembretes.Pesquisar;
var nDia,xDia: integer;
    bOk: Boolean;
    Data, DataF : TDateTime;
    sCondicao : string;
begin
  {Parcelas A Receber}
  with DMLembretes do begin
    with Q_ParcelasAReceber do begin
      close;
			sql.text := 'select ''Parcelas a Receber '+cmbTipo.Text+''' as Descricao, 1 as IDFalso, '+
          				'(select Sum(tr.faltareceber) from titulosareceber tr '+
                  'where :condicao and (tr.status > 0 And tr.status < 50)) as Valor '+
									'From rdb$database';
      if cmbTipo.ItemIndex = 0 then begin
      	sCondicao := '(CampoData = :Data)';
      	Data 			:= DMProjeto.dDataSistema-1;
      end else if cmbTipo.ItemIndex = 1 then begin
      	sCondicao := '(CampoData = :Data)';
      	Data 			:= DMProjeto.dDataSistema;
      end else if cmbTipo.ItemIndex = 2 then begin
      	sCondicao := '(CampoData >= :Data and CampoData <= :DataF)';
      	Data			:= DMProjeto.dDataSistema+1-DayOfWeek(DMProjeto.dDataSistema);
        DataF     := DMProjeto.dDataSistema+7-DayOfWeek(DMProjeto.dDataSistema);
      end else if cmbTipo.ItemIndex = 3 then begin
      	sCondicao := '(CampoData  >=  :Data and CampoData <= :DataF)';
      	Data 	:= FirstMonthDay(DMProjeto.dDataSistema);
        DataF := LastMonthDay(DMProjeto.dDataSistema);
      end else if cmbTipo.ItemIndex = 4 then begin
      	sCondicao := '(CampoData  >=  :Data and CampoData <= :DataF)';
      	Data 	:= dDataI.Date;
        DataF := dDataF.Date;
      end;
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','tr.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_ParcelasAReceberDet do begin
      close;
      sql.text := 'select tr.ID, f.Nome, tr.Vencimento, tr.faltareceber as Valor, 1 as IDFalso, tr.titulo '+
									'From titulosareceber tr inner join favorecidos f on tr.cliente = f.favorecido '+
									'where :condicao and (tr.status > 0 And tr.status < 50) ';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','tr.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Cheques a Depositar}
    with Q_ChequesDepositar do begin
      close;
			sql.text := 'SELECT ''Cheques para Depositar '+cmbTipo.Text+''' as Descricao, 1 as IDFalso, '+
      						'(Select SUM(dd.Valor) FROM DepositosDoc dd '+
               		'Where :condicao and dd.Status = 3 and '+
                  'dd.ContaAtual = 1 and dd.ForaDaEmpresa = ''N'') as Valor '+
									'From rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','dd.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_ChequesDepositarDet do begin
      close;
			sql.text := 'SELECT dd.IDDoc, f.Nome, d.Data, dd.Vencimento, dd.Valor, '+
      						'b.Nome as NomeBanco, 1 as IDFalso, (d.Data - dd.Vencimento) as PreDatado '+
									'FROM DepositosDoc dd inner join Depositos d on dd.deposito = d.deposito '+
           				'left join favorecidos f on d.favorecido = f.favorecido '+
           				'left join favorecidos b on dd.banco = b.favorecido '+
									'Where :condicao and dd.Status = 3 and '+
                  'dd.ContaAtual = 1 and dd.ForaDaEmpresa = ''N''';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','dd.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Contas a Pagar}
    with Q_ContasAPagar do begin
      close;
      sql.text := 'select ''Contas a Pagar '+cmbTipo.Text+''' as Descricao, 1 as IDFalso, '+
          				'(Select Sum(d.faltapagar) From Duplicatasapagar d '+
           				'where :condicao and d.status > 0 And d.status < 50) as Valor '+
									'from rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','d.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_ContasAPagarDet do begin
      close;
      sql.text := 'select d.ID, f.Nome, d.Vencimento, 1 as IDFalso, d.titulo, '+
         					'd.faltapagar as Valor '+
									'From DuplicatasAPagar d '+
                  'inner join Favorecidos f on d.fornecedor = f.favorecido '+
									'where :condicao and d.status > 0 And d.status < 50';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','d.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Contas a Pagar Agendadas}
    with Q_ContasAgendadas do begin
      close;
			sql.text := 'select ''Contas a Pagar Agendadas '+cmbTipo.Text+''' as Descricao, 1 as IDFalso, '+
          				'(Select Sum(d.faltapagar) From Duplicatasapagar d '+
                  'where :condicao and d.status = -3) as Valor '+
                  'from rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','d.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_ContasAgendadasDet do begin
      close;
			sql.text := 'select d.ID, f.Nome, d.Vencimento, 1 as IDFalso, '+
         					'(d.faltapagar) as Valor '+
									'From DuplicatasAPagar d '+
                  'inner join Favorecidos f on d.fornecedor = f.favorecido '+
									'where :condicao and d.status = -3';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','d.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Cheques a Compensar}
    with Q_ChequesACompensar do begin
      close;
			sql.text := 'SELECT ''Cheques a Compensar '+cmbTipo.Text+''' as Descricao, 1 as IDFalso, '+
                  '(Select SUM(rd.Valor) FROM RetiradasDoc rd '+
                	'Where :condicao AND rd.Status = 3) as Valor '+
                  'From rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','rd.vencimento');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_ChequesACompensarDet do begin
      close;
      sql.text := 'SELECT rd.IDDoc, f.Nome, rd.Vencimento, c.Descricao as DescConta, '+
      						'rd.Conta, rd.Valor, 1 as IDFalso '+
                  'FROM  RetiradasDoc rd '+
            			'inner join Favorecidos f on rd.favorecidodoc = f.favorecido '+
            			'inner join Contas c on rd.Conta = c.Conta '+
                  'Where :condicao AND rd.Status = 3';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','rd.vencimento');

			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Cheques para Impressão}
    with Q_ChequesImprimir do begin
      close;
      open;
    end;
    with Q_ChequesImprimirDet do begin
      close;
      open;
    end;
    {Compromissos do dia}
    with Q_Compromissos do begin
      close;
			sql.text := 'select ''Compromissos '+cmbTipo.Text+''' as caption, '+
									'(select count(c.compromisso) from compromissos c '+
									'where :condicao and c.usudestino = :usuario '+
									'and c.concluido<>''S'') as quant, 1 as IDFALSO '+
									'from rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','c.data');

      parambyname('usuario').AsInteger := DMProjeto.nFuncionario;
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_CompromissosDet do begin
      close;
      sql.text := 'select c.compromisso, c.data, c.assunto, u.loginname as de, ca.cor, '+
      						'ca.cor_fonte, c.horario, c.horario_final,'' '' as sHorario,1 as IDFALSO '+
									'from compromissos c '+
									'left join usuarios u on c.usuorigem=u.usuario '+
									'left join categorias ca on c.categoria=ca.categoria '+
									'where :condicao and c.usudestino = :usuario and c.concluido<>''S'' '+
									'order by c.horario ';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','c.data');
      parambyname('usuario').AsInteger := DMProjeto.nFuncionario;
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    {Recados não lidos}
    with Q_Recados do begin
      close;
      sql.text := 'select ''Recados não lidos'' as caption, '+
      						'(select count(r.recado) from recados r '+
                  'where :condicao and r.para = :usuario and r.lido<>''S'') as quant, 1 as IDFALSO '+
									'from rdb$database';
      parambyname('usuario').AsInteger := DMProjeto.nFuncionario;
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','r.data');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
    with Q_RecadosDet do begin
      close;
      sql.text := 'Select  r.recado, r.data, r.descricao, r.horario, u.loginname as de, '+
            			'1 as IDFALSO '+
									'From Recados r '+
									'Left Join usuarios u on r.de=u.usuario '+
									'Where :condicao and r.para = :usuario and r.lido<>''S'' '+
									'Order By r.recado Desc, r.horario Desc';
      parambyname('usuario').AsInteger := DMProjeto.nFuncionario;
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','r.data');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      open;
    end;
		{Memorizações}
  	with Q_MemorizacaoMaster do begin
    	Close;
  		Open;
    end;
  	with C_Memorizacao do begin
    	Close;
  		Open;
    end;
    {Lembretes}
  	with Q_LembretesMaster do begin
    	Close;
      Params[0].Value := DmProjeto.dDataSistema;
  		Open;
    end;
    with C_Lembretes do begin
      Close;
      FetchParams;
  		Params.Items[0].Value := DmProjeto.dDataSistema;
  		nDia := DayOfWeek(DMProjeto.dDataSistema);
  		xDia := Day(DMProjeto.dDataSistema);
  		Open;
  		while not Eof do begin
    		if C_LembretesTipo.value = 0 then begin
      		if C_LembretesDataInicial.value <> DMProjeto.dDataSistema then
        		C_Lembretes.delete
      		else
        		C_Lembretes.next;
    		end else if C_LembretesTipo.value = 2 then begin
      		bOK := false;
      		if (C_LembretesDomingo.value = 'S') and (nDia = 1) then
        		bOK := true
      		else if (C_LembretesSegunda.value = 'S') and (nDia = 2) then
        		bOK := true
      		else if (C_LembretesTerca.value = 'S') and (nDia = 3) then
        		bOK := true
      		else if (C_LembretesQuarta.value = 'S') and (nDia = 4) then
        		bOK := true
      		else if (C_LembretesQuinta.value = 'S') and (nDia = 5) then
        		bOK := true
      		else if (C_LembretesSexta.value = 'S') and (nDia = 6) then
        		bOK := true
      		else if (C_LembretesSabado.value = 'S') and (nDia = 7) then
        		bOK := true;
      		if not bOK then
        		C_Lembretes.delete
      		else
        		C_Lembretes.next;
    		end else if C_LembretesTipo.value = 3 then begin
      		if Day(C_LembretesDataInicial.value) <> xDia then
        		Delete
      		else
        		Next;
    		end else
      		Next;
      end;
    end;
  	with DMLembretes.Q_VendasGraf do begin
      Close;
      Sql.Text := 'Select s.Data, sum(s.Total) as Total '+
									'From Saidas s '+
									'where :condicao and s.tipopadrao = 1 and s.situacao = ''N'' '+
									'Group by s.Data';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','s.data');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      Open;
    end;
    with DMLembretes.Q_Vendas do begin
      Close;
      Sql.Text := 'select 1 as IDFalso, ''Vendas '+replace(cmbTipo.Text,'para','de')+''' as Descricao, '+
         					'(select sum(s.totalitens) from saidas s '+
                  'where :condicao and s.tipopadrao = 1 and s.situacao = ''N'') as Total '+
									'from rdb$database';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','s.data');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      Open;
		end;
    with DMLembretes.Q_VendasDet do begin
      Close;
      Sql.Text := 'select 1 as IDFalso, si.saidaitem,s.data, si.descricao, '+
      						'si.quantidade, si.subtotalitem, si.saida, si.item, s.tipopadrao, '+
                  'tp.tipoorigem '+
									'from saidas s '+
									'inner join saidasitens si on si.saida = s.saida '+
                  'inner join tipospadrao tp on s.tipopadrao = tp.tipopadrao '+
									'where :condicao and s.tipopadrao = 1 and s.situacao = ''N'' '+
									'order by s.data';
      sql.text := replace(sql.text,':condicao',sCondicao);
      sql.text := replace(sql.text,'campodata','s.data');
			parambyname('Data').AsDateTime := Data;
      if Params.FindParam('DataF') <> nil then
				parambyname('DataF').AsDateTime := DataF;
      Open;
		end;
    with DMLembretes.Q_ItensEstoqueMinimo do begin
    	Close;
      Open;
    end;
    with DMLembretes.Q_ItensEstoqueMinimoDet do begin
    	Close;
      Open;
    end;
    with DMLembretes.Q_ItensEstoquePP do begin
    	Close;
      Open;
    end;
    with DMLembretes.Q_ItensEstoquePPDet do begin
    	Close;
      Open;
    end;
  end;
  DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

procedure TDlgLembretes.TS_SpeedButton3Click(Sender: TObject);
begin
  if btGravar.Down then
		Imprimir.ReportLink[0].Preview
  else if (btLimpar.Down) and (ActiveControl is TDBChart) then
		TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgLembretes.MasterViewDblClick(Sender: TObject);
var ID : integer;
begin
  inherited;
  {ContasAReceber}
  if MasterView.FocusedNode.Level.Tag = 1 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('ID').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm('FrmA_Receber',self,true);
    end;
  {Cheques para Depositar}
  end else if MasterView.FocusedNode.Level.Tag = 2 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('IDDoc').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([IntToStr(ID)]);
    	DMProjeto.CriarForm('DlgDepositoCheques',self,true);
    end;
  {Contas a Pagar}
  end else if MasterView.FocusedNode.Level.Tag = 3 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('ID').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm('FrmA_Pagar',self,true);
    end;
  {Cheques a Compensar}
  end else if MasterView.FocusedNode.Level.Tag = 4 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('IDDoc').AsInteger;
    if ID <> 0 then begin
      DMProjeto.SetParametrosForm([null,ID, MasterView.FocusedNode.Level.DataSet.Fieldbyname('Conta').AsInteger]);
    	DMProjeto.CriarForm('DlgChequesEmitidos',self,true);
    end;
  {Cheques Pendentes de Impressão}
  end else if MasterView.FocusedNode.Level.Tag = 5 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('IDDoc').AsInteger;
    if ID <> 0 then begin
      DMProjeto.SetParametrosForm([IntToStr(ID), MasterView.FocusedNode.Level.DataSet.Fieldbyname('Conta').AsInteger]);
    	DMProjeto.CriarForm('DlgChequesPendentesImpressao',self,true);
    end;
  {Compromissos agendados - do dia}
  end else if MasterView.FocusedNode.Level.Tag = 6 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Compromisso').AsInteger;
    if ID <> 0 then begin
      DMProjeto.SetParametrosForm( [ ID ] );
      DMProjeto.CriarForm('FRMCOMPROMISSOS',Self, true);
    end;
  {Recados não lidos}
  end else if MasterView.FocusedNode.Level.Tag = 7 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Recado').AsInteger;
    if ID <> 0 then begin
      DMProjeto.SetParametrosForm( [ID, 'RECEBIDO', false] );
      DMProjeto.CriarForm('FRMRECADOS',Self, true);
      Pesquisar;
    end;
  {Contas a Pagar Agendadas}
  end else if MasterView.FocusedNode.Level.Tag = 9 then begin
    	DMProjeto.CriarForm('DlgConveterPagamentosAgendados',self,true);
  {Lembretes}
  end else if MasterView.FocusedNode.Level.Tag = 10 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Lembrete').AsInteger;
    if ID <> 0 then begin
      DMProjeto.SetParametrosForm( [ID] );
      DMProjeto.CriarForm('FRMLEMBRETE',Self, true);
      Pesquisar;
    end;
  {Lembretes}
  end else if MasterView.FocusedNode.Level.Tag = 11 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('IDGerador').AsInteger;
    if ID <> 0 then begin
      //DMProjeto.SetParametrosForm( [ID] );
      //DMProjeto.CriarForm('FrmMemorizacao',Self, true);
  		DMProjeto.SetParametrosForm([ID]);
  		DMProjeto.CriarForm(MasterView.FocusedNode.Level.DataSet.Fieldbyname('FormName').AsString, self, true);
      Pesquisar;
    end;
  {Vendas}
  end else if MasterView.FocusedNode.Level.Tag = 12 then begin
      {Venda}
    	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Saida').AsInteger;
    	if ID <> 0 then begin
  			DMProjeto.SetParametrosForm([ID,MasterView.FocusedNode.Level.DataSet.Fieldbyname('TipoPadrao').AsInteger]);
  			DMProjeto.CriarForm(DMProjeto.getTelaGeradora(MasterView.FocusedNode.Level.DataSet.Fieldbyname('TipoOrigem').AsInteger), self, true, false, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
      	Pesquisar;
    	end;
  {Estoque Mínimo}
  end else if MasterView.FocusedNode.Level.Tag = 13 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Item').AsInteger;
    if ID <> 0 then begin
      //DMProjeto.SetParametrosForm( [ID] );
      //DMProjeto.CriarForm('FrmMemorizacao',Self, true);
  		DMProjeto.SetParametrosForm([ID]);
  		DMProjeto.CriarForm('FrmItens', self, true);
      Pesquisar;
    end;
  {Estoque Máximo}
  end else if MasterView.FocusedNode.Level.Tag = 14 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Item').AsInteger;
    if ID <> 0 then begin
  		DMProjeto.SetParametrosForm([ID]);
  		DMProjeto.CriarForm('FrmItens', self, true);
      Pesquisar;
    end;
  end;
  DMProjeto.LimparParametrosForm;
end;

procedure TDlgLembretes.ProcessaGrafico( Tipo : integer );
var Data, DataF : TDateTime;
    sCondicao : string;
begin
  if Tipo = 0 then begin
    SerieSaldo.DataSource := nil;
		with DMLembretes.C_SaldoContas do begin
  		if not active then begin
      	Open;
    		First;
    		while not EOF do begin
    			Edit;
      		FieldByName('Saldo').asFloat := DMFinanceiro.SaldoConta( FieldByName('Conta').AsInteger, DMProjeto.dDataSistema );
      		Post;
      		Next;
   	 		end;
        Filtered := true;
        First;
      end;
  	end;
    SerieSaldo.DataSource := DMLembretes.C_SaldoContas;
    ActiveControl := SaldoContas;
  end else if Tipo = 1 then begin
  	with DMLembretes.Q_PosicaoCaixas do begin
      Open;
    end;
    PosicaoCaixas.View3DWalls := true;
    PosicaoCaixas.View3dWalls := false;
    ActiveControl := PosicaoCaixas;
  end else if Tipo = 2 then begin
  	//with DMLembretes.Q_FluxoCaixa do begin
    //  Open;
    //end;
    ActiveControl := DBChart3;
  end else if Tipo = 3 then begin
    {
    with DMLembretes.Q_Vendas do
    	if not Active then
      	Open;
    }
    ActiveControl := DBChart4;
  end;
end;

procedure TDlgLembretes.btLimparClick(Sender: TObject);
var i : integer;
begin
  inherited;
  if btLimpar.Down then begin
  	TranGrafico.Prepare(pnlGrafico.Parent, pnlGrafico.BoundsRect);
  	try
       pnlGrafico.BringToFront;
    	if TranGrafico.Prepared then
      	TranGrafico.Execute;
  	finally
    	TranGrafico.UnPrepare;
  	end;
    Application.ProcessMessages;
    if btCaixa.Down then begin
       btCaixa.Click;
       btCaixa.Down := true;
    end;
    if btSaldo.Down then begin
			 btSaldo.Click;
       btSaldo.Down := true;
    end;
    if btPrevisao.Down then begin
			 btPrevisao.Click;
       btPrevisao.Down := true;
    end;
    if btVendas.Down then begin
			 btVendas.Click;
       btVendas.Down := true;
    end;
  end;
end;

procedure TDlgLembretes.SerieSaldoClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if Sender.YValue[ValueIndex] > 0 then begin
		Sender.Active := false;
  	with DMLembretes.Q_SaldoDetalhes do begin
			close;
    	parambyname('Conta').asInteger := Trunc(Sender.XValues[ValueIndex]);
    	Open;
  	end;
  	SerieSaldoDet.Active := true;
  end;
  SaldoContas.Title.Text.Text := 'Detalhe da Conta: '+DMFinanceiro.Conta_Nome(Trunc(Sender.XValues[ValueIndex]));
end;

procedure TDlgLembretes.SerieSaldoDetClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
	Sender.Active := false;
  SerieSaldo.Active := true;
  SaldoContas.Title.Text.Text := 'Saldo das Contas';
end;

procedure TDlgLembretes.SeriePosicaoCaixasClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
	with DMLembretes.Q_PosicaoCaixasDet do begin
  	close;
    parambyname('FormaPagamento').AsInteger := DMFinanceiro.getFormaPagamento( Sender.XLabel[ValueIndex] );
    open;
  end;
  SeriePosicaoCaixas.Active := false;
  SeriePosicaoCaixasDet.Active := true;
  PosicaoCaixas.Title.Text.Text := 'Posição dos Caixas - '+Sender.XLabel[ValueIndex];
end;

procedure TDlgLembretes.SeriePosicaoCaixasDetClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  SeriePosicaoCaixas.Active := true;
  SeriePosicaoCaixasDet.Active := false;
  PosicaoCaixas.View3DWalls := true;
  PosicaoCaixas.View3dWalls := false;
  PosicaoCaixas.Title.Text.Text := 'Posição dos Caixas - Forma de Pagamento';
end;

procedure TDlgLembretes.PrimeiraPaginaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Page := 1;
end;

procedure TDlgLembretes.ProximaPaginaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).NextPage;
end;

procedure TDlgLembretes.PaginaAnteriorClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PreviousPage;
end;

procedure TDlgLembretes.UltimaPaginaClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).Page := TDBChart(ActiveControl).NumPages;
end;

procedure TDlgLembretes.ImprimirGraficoClick(Sender: TObject);
begin
  inherited;
	TDBChart(ActiveControl).PrintLandscape;
end;

procedure TDlgLembretes.SaldoContasAllowScroll(Sender: TChartAxis; var AMin,
  AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
  AllowScroll := false;
end;

procedure TDlgLembretes.PosicaoCaixasAllowScroll(Sender: TChartAxis;
  var AMin, AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
  AllowScroll := false;
end;

procedure TDlgLembretes.DBChart3AllowScroll(Sender: TChartAxis; var AMin,
  AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
  AllowScroll := false;
end;

procedure TDlgLembretes.DBChart4AllowScroll(Sender: TChartAxis; var AMin,
  AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
	AllowScroll := false;
end;

procedure TDlgLembretes.DBChart5AllowScroll(Sender: TChartAxis; var AMin,
  AMax: Double; var AllowScroll: Boolean);
begin
  inherited;
	AllowScroll := false;
end;

procedure TDlgLembretes.FormCreate(Sender: TObject);
begin
  inherited;
	DMLembretes := TDMLembretes.Create(self);
end;

procedure TDlgLembretes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with DMLembretes do begin
    with Q_ParcelasAReceber do begin
      close;
    end;
    with Q_ParcelasAReceberDet do begin
      close;
    end;
    {Cheques a Depositar}
    with Q_ChequesDepositar do begin
      close;
    end;
    with Q_ChequesDepositarDet do begin
      close;
    end;
    {Contas a Pagar}
    with Q_ContasAPagar do begin
      close;
    end;
    with Q_ContasAPagarDet do begin
      close;
    end;
    {Contas a Pagar Agendadas}
    with Q_ContasAgendadas do begin
      close;
    end;
    with Q_ContasAgendadasDet do begin
      close;
    end;
    {Cheques a Compensar}
    with Q_ChequesACompensar do begin
      close;
    end;
    with Q_ChequesACompensarDet do begin
      close;
    end;
    {Cheques para Impressão}
    with Q_ChequesImprimir do begin
      close;
    end;
    with Q_ChequesImprimirDet do begin
      close;
    end;
    {Compromissos do dia}
    with Q_Compromissos do begin
      close;
    end;
    with Q_CompromissosDet do begin
      close;
    end;
    {Recados não lidos}
    with Q_Recados do begin
      close;
    end;
    with Q_RecadosDet do begin
      close;
    end;
  end;
  inherited;
  if (not cbkProximaVez.Checked) <> (DMProjeto.Parametro('AutoLembrete')='S') then
  	DMProjeto.SetParametro('AutoLembrete',iif(cbkProximaVez.Checked,'N','S'));
  DMLembretes.Free;
end;

procedure TDlgLembretes.TranAberturaAfterTransition(Sender: TObject);
begin
  inherited;
  Masterview.Invalidate;
end;

procedure TDlgLembretes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(UpperCase(LastDataObject.TableName),UpperCase('TitulosAReceber,Depositos,DepositosDoc,OperacoesFinanceiras,Retiradas,RetiradasDoc,DuplicatasAPagar'))>0 then
  	Pesquisar;
end;

procedure TDlgLembretes.btCaixaClick(Sender: TObject);
var i : integer;
begin
  inherited;
  with PageGrafico do begin
    ActivePageIndex := TComponent(Sender).Tag;
  	ProcessaGrafico( ActivePageIndex );
  end;
end;

procedure TDlgLembretes.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	lbEstadoForm.Caption  := formatdatetime('dddd',DMProjeto.dDataSistema)+', '+DataExtenso( DMProjeto.dDataSistema, iif(SysLocale.PriLangID = LANG_ENGLISH,2,1) );
	cbkProximaVez.Checked := not (DMProjeto.Parametro('AutoLembrete')='S');
  DMGridPrinter.ConfigurarImpressao( ImprimirMasterViewPrint, FormsComponent.Caption );
  btGravar.Down := true;
  pnlGrafico.SendToBack;
  cmbTipo.ItemIndex := 1;
  Pesquisar;
end;

procedure TDlgLembretes.ppmGraficoPopup(Sender: TObject);
begin
  inherited;
	BarrasPorPagina.Caption := 'Barras por Página: '+IntToStr(TDBChart(ActiveControl).MaxPointsPerPage);
	PrimeiraPagina.Enabled 	:= TDBChart(ActiveControl).Page <> 1;
  ProximaPagina.Enabled 	:= TDBChart(ActiveControl).Page > 0;//TDBChart(ActiveControl).NumPages;
  PaginaAnterior.Enabled 	:= TDBChart(ActiveControl).Page > 1;
  UltimaPagina.Enabled 		:= TDBChart(ActiveControl).Page > 0;//TDBChart(ActiveControl).NumPages;
end;

procedure TDlgLembretes.BarrasporPaginaClick(Sender: TObject);
begin
  inherited;
  TDBChart(ActiveControl).MaxPointsPerPage := StrToIntDef(InputBox('Nº de Barras por Página','Informe o nº de páginas: ',IntToStr(TDBChart(ActiveControl).MaxPointsPerPage)),5);
  PrimeiraPagina.Enabled 	:= TDBChart(ActiveControl).Page <> 1;
  ProximaPagina.Enabled 	:= TDBChart(ActiveControl).Page <> TDBChart(ActiveControl).NumPages;
  PaginaAnterior.Enabled 	:= TDBChart(ActiveControl).Page > 1;
  UltimaPagina.Enabled 		:= TDBChart(ActiveControl).Page <> TDBChart(ActiveControl).NumPages;
end;

procedure TDlgLembretes.PosicaoCaixasContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
	ActiveControl := TDBChart(Sender);
end;

procedure TDlgLembretes.ContasAPagarDetGetContentStyle(
  Sender: TdxMasterViewLevel; Node: TdxMasterViewNode;
  Column: TdxMasterViewColumn; var NewStyle: TdxMasterViewStyle);
var
  ColInd: Integer;
begin
  inherited;
  ColInd := ContasAPagarDetVENCIMENTO.Index;
    if Node.NodeType = ntData then begin
      if (Node.Values[ColInd] < DMProjeto.dDataSistema) then
        NewStyle := Atrasados
      else if (Node.Values[ColInd] = DMProjeto.dDataSistema) then
        NewStyle := Vencidos;
    end;
end;

procedure TDlgLembretes.ParcelasAReceberDetGetContentStyle(
  Sender: TdxMasterViewLevel; Node: TdxMasterViewNode;
  Column: TdxMasterViewColumn; var NewStyle: TdxMasterViewStyle);
var
  ColInd: Integer;
begin
  inherited;
  ColInd := ParcelasAReceberDetVENCIMENTO.Index;
    if Node.NodeType = ntData then begin
      if (Node.Values[ColInd] < DMProjeto.dDataSistema) then
        NewStyle := Atrasados
      else if (Node.Values[ColInd] = DMProjeto.dDataSistema) then
        NewStyle := Vencidos;
    end;
end;

procedure TDlgLembretes.cmbTipoChange(Sender: TObject);
begin
  inherited;
	lbDe.Visible 	:= cmbTipo.ItemIndex = 4;
  lbA.Visible 	:= cmbTipo.ItemIndex = 4;
  dDataI.Visible := cmbTipo.ItemIndex = 4;
  dDataF.Visible := cmbTipo.ItemIndex = 4;
  if cmbTipo.ItemIndex <> 4 then
  	Pesquisar
  else
  	dDataI.SetFocus;
end;

procedure TDlgLembretes.dDataIDateChange(Sender: TObject);
begin
  inherited;
	if (dDataI.Date > 0) and (dDataF.Date >0) then
  	Pesquisar;
end;

end.
