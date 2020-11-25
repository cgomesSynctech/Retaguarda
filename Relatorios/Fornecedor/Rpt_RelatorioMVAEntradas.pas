unit Rpt_RelatorioMVAEntradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Form_Padrao, TS_LastDataObject, DlgMsg, Menus, IniFiles,
  TS_PopupMenu, StdCtrls, Buttons, ExtCtrls, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet,
  IBQuery, TS_SpeedButton, TS_QDBGrid, FormsComponent, RichEdit, ComCtrls,
  TS_Image, TS_MaxPanel, teCtrls, TS_EffectsPanel, {HH, HH_FUNCS,}
  dxfLabel, dxPrnPg, dxPSGlbl, Variants, dxPSUtl, dxPSEngn, dxBkgnd,
  dxWrap, dxPrnDev, dxExEdtr, BTOdeum, dxPgsDlg, dxDBTLCl, dxGrClms,
  Placemnt, TS_Label, teIntrlc, Printers, dxEdLib, TS_CheckBox, dxEditor,
  TS_DateTimePicker;

Const
  PM_Login          = WM_User + 100;
  PM_Logout         = WM_User + 101;
  PM_Refresh        = WM_User + 102;
  PM_Imprimir       = WM_User + 103;
  PM_Exportar       = WM_User + 104;
  PM_Importar       = WM_User + 105;
  PM_FormVisible    = WM_User + 1000;
type
  TRptRelatorioMVAEntradas = class(TFormPadrao)
    Q_Consulta: TIBQuery;
    C_ConsultaDS: TDataSource;
    P_Consulta: TDataSetProvider;
    C_Consulta: TClientDataSet;
    pnTitulo: TTS_MaxPanel;
    lbCaption: TdxfLabel;
    pnGrid: TPanel;
    pnDados: TTS_Panel;
    btHelp: TTS_SpeedButton;
    TS_Panel1: TTS_Panel;
    btSair: TTS_SpeedButton;
    btLayout: TTS_SpeedButton;
    btAtualizar: TTS_SpeedButton;
    btExportacao: TTS_SpeedButton;
    btSumarizacao: TTS_SpeedButton;
    btAgrupamento: TTS_SpeedButton;
    btDados: TTS_SpeedButton;
    btAjuda: TTS_SpeedButton;
    ppmDados: TTS_PopupMenu;
    btDadosFiltrar: TMenuItem;
    ppmAgrupamento: TTS_PopupMenu;
    btAgrupamentoPainel: TMenuItem;
    Expandir1: TMenuItem;
    Resumir1: TMenuItem;
    CorFundo2: TMenuItem;
    FontedoGrupo1: TMenuItem;
    ppmLayout: TTS_PopupMenu;
    ppmImprimir: TTS_PopupMenu;
    ppmSumarizacao: TTS_PopupMenu;
    ppmExportacao: TTS_PopupMenu;
    btLayoutLargura: TMenuItem;
    btLayoutGrade: TMenuItem;
    ConfigurarColunas1: TMenuItem;
    btSumarizacaoRodape: TMenuItem;
    TotalizarEmBaixo: TMenuItem;
    Html1: TMenuItem;
    Excel1: TMenuItem;
    XML1: TMenuItem;
    Texto1: TMenuItem;
    EnviarparaImpressora1: TMenuItem;
    EnviarparaoEmail1: TMenuItem;
    VisualizarImpresso1: TMenuItem;
    ConfigurarPgina1: TMenuItem;
    LayoutdeImpresso1: TMenuItem;
    ConfigurarImpressora1: TMenuItem;
    dbgConsulta: TTS_QDBGrid;
    ppmHelp: TTS_PopupMenu;
    Ajuda1: TMenuItem;
    RelatrioPadro1: TMenuItem;
    N1hk: TMenuItem;
    CordaGrade1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    BarradeBotoes: TMenuItem;
    GridPrinter: TdxComponentPrinter;
    GridPrinterLink: TdxDBGridReportLink;
    RichEdit: TRichEdit;
    GerarEtiquetas1: TMenuItem;
    btImprimir: TTS_SpeedButton;
    FormatoPijama: TMenuItem;
    N2fdsfdsf: TMenuItem;
    ConfigurarColuna: TMenuItem;
    N323: TMenuItem;
    AlturaAutomtica1: TMenuItem;
    dxPSEngineController1: TdxPSEngineController;
    N2344: TMenuItem;
    Congelar: TMenuItem;
    DescongelarColuna1: TMenuItem;
    N1: TMenuItem;
    tulodoRelatrio1: TMenuItem;
    ppmTemplates: TTS_PopupMenu;
    SalvarTemplate1: TMenuItem;
    CarregarTemplate1: TMenuItem;
    Sep1: TMenuItem;
    DefinirPadrao: TMenuItem;
    Sep3: TMenuItem;
    ExcluirTemplate1: TMenuItem;
    NenhumTemplate1: TMenuItem;
    TotalizarEmCima: TMenuItem;
    Q_SQLReport: TIBQuery;
    btTemplates: TTS_SpeedButton;
    ppmSelTemplate: TTS_PopupMenu;
    lbTemplate: TTS_Label;
    CamposDefinidospeloUsurio1: TMenuItem;
    ExecutarArquivo1: TMenuItem;
    N3: TMenuItem;
    Remover2: TMenuItem;
    Alterar2: TMenuItem;
    Adicionar2: TMenuItem;
    btMostrarCab: TMenuItem;
    fdsfsdf: TMenuItem;
    gdsgfd: TMenuItem;
    lbDescricaoRelatorio: TTS_Label;
    ConfigurarRelatrio1: TMenuItem;
    Ajuda2: TMenuItem;
    PainelFullSelect: TTS_Panel;
    cbFullSelect: TTS_CheckBox;
    Q_FullSelect: TIBQuery;
    FormsComponent: TFormsComponent;
    DataI: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaCLASFISCAL: TStringField;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaCLASFISCAL: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaNCMSH: TdxDBGridMaskColumn;
    dbgConsultaALIQICMS: TdxDBGridCurrencyColumn;
    dbgConsultaDESCONTO: TdxDBGridMaskColumn;
    dbgConsultaBASECALCICMSPROD: TdxDBGridCurrencyColumn;
    dbgConsultaVALORICMSPROD: TdxDBGridCurrencyColumn;
    dbgConsultaVALORMVA: TdxDBGridCurrencyColumn;
    dbgConsultaBASECALCULOST: TdxDBGridMaskColumn;
    dbgConsultaVALORIMPOSTOCALCULADO: TdxDBGridMaskColumn;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaNCMSH: TStringField;
    C_ConsultaALIQICMS: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaBASECALCICMSPROD: TFloatField;
    C_ConsultaVALORICMSPROD: TFloatField;
    C_ConsultaVALORMVA: TBCDField;
    C_ConsultaBASECALCULOST: TFloatField;
    C_ConsultaVALORIMPOSTOCALCULADO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarSubItem4Click(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLayoutLarguraClick(Sender: TObject);
    procedure btImprimirVisualClick(Sender: TObject);
    procedure btAgrupamentoPainelClick(Sender: TObject);
    procedure btDadosFiltrarClick(Sender: TObject);
    procedure btSumarizacaoRodapeClick(Sender: TObject);
    procedure btLayoutGradeClick(Sender: TObject);
    procedure TotalizarEmBaixoClick(Sender: TObject);
    procedure btLayoutFontClick(Sender: TObject);
    procedure btDadosFontClick(Sender: TObject);
    procedure btExportacaoHtmlClick(Sender: TObject);
    procedure btExportacaoExcelClick(Sender: TObject);
    procedure btExportacaoXmlClick(Sender: TObject);
    procedure btExportacaoTextoClick(Sender: TObject);
    procedure btAgrupamentoExpandirClick(Sender: TObject);
    procedure btLayoutColunasClick(Sender: TObject);
    procedure btImprimirImpressoraClick(Sender: TObject);
    procedure btAgrupamentoResumirClick(Sender: TObject);
    procedure btAgrupamentoFontClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CorFundo1Click(Sender: TObject);
    procedure CorFundo2Click(Sender: TObject);
    procedure btDadosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btAgrupamentoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btLayoutMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btSumarizacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btExportacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btImprimirMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Ajuda1Click(Sender: TObject);
    procedure RelatrioPadro1Click(Sender: TObject);
    procedure btHelpClick(Sender: TObject);
    procedure EnviarparaoEmail1Click(Sender: TObject);
    procedure dbgConsultaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure BarradeBotoesClick(Sender: TObject);
    procedure GridPrinterLinkCustomDrawHeaderCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; AColumn: TdxTreeListColumn; var AText: String;
  var AColor: TColor; AFont: TFont; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var ASorted: TdxCellSortOrder;
  var ADone: Boolean);
    procedure GridPrinterLinkCustomDrawPageHeader(Sender: TObject;
  ACanvas: TCanvas; APageIndex: Integer; var ARect: TRect; ANom,
  ADenom: Integer; var ADefaultDrawText, ADefaultDrawBackground: Boolean);
    procedure GridPrinterLinkCustomDrawReportLinkTitle(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ARect: TRect; ANom,
  ADenom: Integer; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var AColor: TColor; AFont: TFont;
  var ADone: Boolean);
    procedure GridPrinterLinkMeasureReportLinkTitle(
  Sender: TBasedxReportLink; var AHeight: Integer);
    procedure GerarEtiquetas1Click(Sender: TObject);
    procedure GridPrinterLinkCustomDrawCell(Sender: TBasedxReportLink;
      ACanvas: TCanvas; ABoundsRect, AClientRect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
      var ADone: Boolean);
    procedure FormatoPijamaClick(Sender: TObject);
    procedure ConfigurarColunaClick(Sender: TObject);
    procedure CordaGrade1Click(Sender: TObject);
    procedure ppmLayoutPopup(Sender: TObject);
    procedure AlturaAutomtica1Click(Sender: TObject);
    procedure ppmSumarizacaoPopup(Sender: TObject);
    procedure GridPrinterLinkCustomDrawRowFooterCell(
      Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
      AClientRect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var ATextAlignX: TdxTextAlignX;
      var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
    procedure CongelarClick(Sender: TObject);
    procedure DescongelarColuna1Click(Sender: TObject);
    procedure ppmDadosPopup(Sender: TObject);
    procedure ppmAgrupamentoPopup(Sender: TObject);
    procedure tulodoRelatrio1Click(Sender: TObject);
    procedure SalvarTemplate1Click(Sender: TObject);
    procedure CarregarTemplate1Click(Sender: TObject);
    procedure btAjudaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NenhumTemplate1Click(Sender: TObject);
    procedure DefinirPadraoClick(Sender: TObject);
    procedure ExcluirTemplate1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TotalizarEmCimaClick(Sender: TObject);
    procedure ppmTemplatesPopup(Sender: TObject);
    procedure btTemplatesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btTemplatesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ppmSelTemplatePopup(Sender: TObject);
    procedure Adicionar2Click(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure Remover2Click(Sender: TObject);
    procedure ExecutarArquivo1Click(Sender: TObject);
    procedure btMostrarCabClick(Sender: TObject);
    procedure btLayoutMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgConsultaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ConfigurarPgina1Click(Sender: TObject);
    procedure LayoutdeImpresso1Click(Sender: TObject);
    procedure ConfigurarImpressora1Click(Sender: TObject);
    procedure GridPrinterStartGenerateReport(Sender: TObject;
      AReportLink: TBasedxReportLink);
    procedure GridPrinterBeforeDesignReport(Sender: TObject;
      AReportLink: TBasedxReportLink;
      ADesignWindow: TAbstractdxReportLinkDesignWindow);
    procedure GridPrinterDesignReport(Sender: TObject;
      AReportLink: TBasedxReportLink; var ADone: Boolean);
    procedure ConfigurarRelatrio1Click(Sender: TObject);
    procedure Atualizar;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    slRect, slGroup, slRectColunas : TStringList;
    StrTotais : string;
    sCabecalho : string;
		procedure FormVisible(var Msg: TMessage); message PM_FormVisible;
    function  getSQLParam(Query: TIBQuery): string;
		function  getTemplatePadrao : string;
    procedure setTemplatePadrao;
    procedure CriarCampo( sCampo, sTitulo, sTipoCampo : string );
    procedure CriarCampos;
    function  getListaCampos : TStringList;
    procedure RemoverCampo(sCampo: string);
    procedure AdicionarCampo(sTabelas, sCampo, sTitulo, sTipo, sAlias: string);
    procedure AdicionarSubSelect(sSelect, sAlias, sTitulo, sTipo: string);
    procedure AlterarCampo(CampoAlterar, Campo, Tabela, Titulo, Tipo, Alias: string);
    procedure AlterarSubSelect(CampoAlterar, Select, Alias, Titulo,
      Tipo: string);
    procedure TrocaTemplate(Sender: TObject);
    function getTitulos: string;
    procedure GravaRelatorio(sRelatorio, sTitulo, sCabecalho,
      sImpressora: string; nCopias: integer);
    function getTipoCampo(sTabela, sCampo: string): string; overload;
    function getTipoCampo( sSQL : string ) : string; overload;
    procedure GetFULLSELECT;
  protected
    bCarregando: boolean;
    bIniciarComDados : Boolean;
    nOpenKey : Variant;

    sConsulta : String;

    procedure RefreshMsg(var Msg:TMessage); message PM_Refresh;
    procedure Refresh;

  public
    { Public declarations }
    procedure RefreshDataSets;
    function getCampos : string;
    function getTabelas : string;
    function getListaTabelas( bSomenteAdicional : boolean = false ) : TStringList;
  end;

var
  RptRelatorioMVAEntradas: TRptRelatorioMVAEntradas;

implementation

uses Funcoes, TDM_Projeto, Dlg_SalvarTemplate, Dlg_AbrirTemplate,
     Dlg_ApagarTemplate, Dlg_AdicionarCampos, Dlg_RemoverCampos,
  Dlg_ConfiguraRelatorio;

{$R *.DFM}

procedure TRptRelatorioMVAEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  sValor: String;
begin
//  sValor := 'N';
//  If cbFullSelect.Checked Then
//    sValor := 'S';
//  with Q_FullSelect do Begin
//   Sql.Text := 'Update RELATORIOS Set FULLSELECT = :full where  upper(nomeform) = :form ';
//   parambyname('full').AsString := sValor;
//   parambyname('form').AsString := UpperCase(Self.name);
//   Prepare;
//   ExecSql;
//  End;
  inherited;
  slRect.Free;
  slRectColunas.Free;
  C_Consulta.Close;
  Action := caFree;
end;

procedure TRptRelatorioMVAEntradas.dxBarSubItem4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TRptRelatorioMVAEntradas.btSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TRptRelatorioMVAEntradas.FormCreate(Sender: TObject);
var sTitulo, sImpressora : string;
begin
  inherited;
  sImpressora := DMProject.getImpressora( Name );
  if sImpressora <> '' then
    if Printer.Printers.IndexOf(sImpressora) <> -1 then
      dxPrintDevice.PrinterIndex := Printer.Printers.IndexOf(sImpressora);
	TS_Panel1.Color := pnDados.Color;
  slGroup:= TStringList.Create;

  Q_Consulta.Database := DMProject.DB_Projeto;
  sConsulta := Q_Consulta.SQL.Text;

  try

    if FormsComponent.FirstEditField <> nil then
      ActiveControl := FormsComponent.FirstEditField;

  except
  end;
//  GetFULLSELECT;
  bIniciarComDados := DMProject.ExisteParametrosForm and (DMProject.GetParametrosForm(0) <> null);
  if bIniciarComDados then
    nOpenKey := DMProject.GetParametrosForm(0)
  else
    nOpenKey := null;
end;

procedure TRptRelatorioMVAEntradas.btLayoutLarguraClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.LarguraAutomatica( btLayoutLargura.Checked );
end;

procedure TRptRelatorioMVAEntradas.btImprimirVisualClick(Sender: TObject);
begin
  inherited;
  if DMProject.Parametro('TipoPapel')='A4' then
  	GridPrinterLink.PrinterPage.DMPaper := 9
  else
		GridPrinterLink.PrinterPage.DMPaper := 1;
  dbgConsulta.VisualizarImpressao;
end;

procedure TRptRelatorioMVAEntradas.btAgrupamentoPainelClick(Sender: TObject);
begin
  inherited;
	dbgConsulta.MostrarPainelAgrupamento( btAgrupamentoPainel.Checked );
end;

procedure TRptRelatorioMVAEntradas.btDadosFiltrarClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.AtivarFiltro( btDadosFiltrar.Checked );
end;

procedure TRptRelatorioMVAEntradas.btSumarizacaoRodapeClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.MostrarRodape( btSumarizacaoRodape.Checked );
end;

procedure TRptRelatorioMVAEntradas.btLayoutGradeClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.MostrarGrade( btLayoutGrade.Checked );
end;

procedure TRptRelatorioMVAEntradas.TotalizarEmBaixoClick(Sender: TObject);
begin
  inherited;
  if not TotalizarEmBaixo.Checked then
  	Exit;
  dbgConsulta.TotalizarAcima( false );
  dbgConsulta.MostrarRodapeGrupo( true );
end;

procedure TRptRelatorioMVAEntradas.btLayoutFontClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.FonteCabecalho;
end;

procedure TRptRelatorioMVAEntradas.btDadosFontClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.FonteDados;
end;

procedure TRptRelatorioMVAEntradas.btExportacaoHtmlClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.ExportarHtml(self);
end;

procedure TRptRelatorioMVAEntradas.btExportacaoExcelClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.ExportarExcel(self);
end;

procedure TRptRelatorioMVAEntradas.btExportacaoXmlClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.ExportarXml(self);
end;

procedure TRptRelatorioMVAEntradas.btExportacaoTextoClick(Sender: TObject);
begin
  inherited;
	dbgConsulta.ExportarTexto(self);
end;

procedure TRptRelatorioMVAEntradas.btAgrupamentoExpandirClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.ExpandirGrupos;
end;

procedure TRptRelatorioMVAEntradas.btLayoutColunasClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.AdicionarColunas;
end;

procedure TRptRelatorioMVAEntradas.btImprimirImpressoraClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.Print;
end;

procedure TRptRelatorioMVAEntradas.btAgrupamentoResumirClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.ResumirGrupos;
end;

procedure TRptRelatorioMVAEntradas.btAgrupamentoFontClick(Sender: TObject);
begin
  dbgConsulta.FonteGrupo;
end;

procedure TRptRelatorioMVAEntradas.FormShow(Sender: TObject);
var
  sWhere : string;
  ArquivoIni : TIniFile;
  i, nFormHeight, nFormWidth : integer;
  sTitulo, sDescricao : string;
begin
  inherited;
  PainelFullSelect.Color := FormsComponent.FormColor;
  if DMProject.Parametro('TipoPapel')='A4' then
  	GridPrinterLink.PrinterPage.DMPaper := 9
  else
		GridPrinterLink.PrinterPage.DMPaper := 1;
  if DMProject.Parametro('SemEfeitoLetras') <> 'S' then begin
    lbCaption.Visible := false;
    PostMessage(Handle, PM_FormVisible, 0, 0);
  end;
  {Desativar gravação do arquivo}
  FormStorage.Active := False;

  dbgConsulta.OptionsBehavior := dbgConsulta.OptionsBehavior - [edgoStoreToIniFile];

  sTitulo := DMProject.GetDadosRelatorio(Self.Name, 'Titulo');
  if sTitulo <> '' then
  	FormsComponent.Caption := sTitulo;
	sDescricao := DMProject.GetDadosRelatorio(Self.Name, 'Descricao');
  if sDescricao <> '' then
  	lbDescricaoRelatorio.Caption := sDescricao;
  dbgConsulta.TS_ReportTitle := FormsComponent.Caption;
  dbgConsulta.TS_ComponentPrinter.PrintTitle := FormsComponent.Caption;

  CriarCampos;
  {Template Padrão}
  if not fileexists(DMProject.TemplatesPath+Self.Name+'.rpt') then
		dbgConsulta.GravarTemplate('Padrao',DMProject.TemplatesPath+Self.Name+'.rpt');

  if fileexists(DMProject.TemplatesPath+Self.Name+'.rpt') then begin
  	ArquivoIni := TIniFile.Create(DMProject.TemplatesPath+Self.Name+'.rpt');
    ArquivoIni.ReadSections(dbgConsulta.TS_Templates);
    for i:=dbgConsulta.TS_Templates.Count-1 downto 0 do begin
    	if (pos('.',dbgConsulta.TS_Templates[i])>0) or (pos('\',dbgConsulta.TS_Templates[i])>0) or
         (pos('PADRAO',Uppercase(dbgConsulta.TS_Templates[i]))>0) or
         (pos('INFOADICIONAIS',Uppercase(dbgConsulta.TS_Templates[i]))>0) then
      	dbgConsulta.TS_Templates.Delete(i)
      else
      	dbgConsulta.TS_Templates[i] := SeparaStrings(dbgConsulta.TS_Templates[i],'_',1);
    end;
    dbgConsulta.TS_TemplatePadrao := getTemplatePadrao;
    if Arquivoini.SectionExists(dbgConsulta.TS_TemplatePadrao+'_FormStorage') then begin
    	if dbgConsulta.TS_TemplatePadrao <> '' then begin
    		dbgConsulta.CarregarTemplate(dbgConsulta.TS_TemplatePadrao,DMProject.TemplatesPath+Self.Name+'.rpt');
        lbTemplate.Caption := dbgConsulta.TS_TemplatePadrao;
        nFormWidth := FormsComponent.FormWidth;
        nFormHeight:= FormsComponent.FormHeight;
  			if (nFormWidth > 0) and (windowstate <> wsMaximized) then
    			Width := nFormWidth;
  			if (nFormHeight > 0) and (windowstate <> wsMaximized)  then
    			Height := nFormheight;
      end;
    end else
    	dbgConsulta.TS_TemplatePadrao := '';
    ArquivoIni.Free;
  end;
  btTemplates.Visible := dbgConsulta.TS_Templates.Count > 0;

	GridPrinterLink.PrinterPage.Header := 5350;

  with TTS_QDBGrid(GridPrinterLink.Component) do begin
    GridPrinterLink.Font.Assign( Font );
    GridPrinterLink.FooterFont.Assign(TS_SummaryFooterFont);
    GridPrinterLink.GroupNodeFont.Assign( GroupNodeFont );
    GridPrinterLink.HeaderFont.Assign( HeaderFont );

    GridPrinterLink.Color       	:= Color;
    GridPrinterLink.HeaderColor 	:= HeaderColor;
    GridPrinterLink.GroupNodeColor:= clWhite;

    if ShowGrid then
    	GridPrinterLink.GridLineColor := GridLineColor
    else
    	GridPrinterLink.GridLineColor := clWhite;

    if not ShowGrid then
      GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoGrid]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoGrid];

    if edgoPreview in OptionsView then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoPreviewGrid]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoPreviewGrid];

    GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoRowFooterGrid];

    if ShowRowFooter then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoRowFooters]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoRowFooters];

    if ShowSummaryFooter then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoFooters]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoFooters];

    if ShowBands then
     	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoBands]
    else
     	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoBands];

    GridPrinterLink.PrinterPage.Margins.Top := 31200;

  end;

  if (nOpenKey <> null) then begin
    if Assigned( FormsComponent.BeforeLoadKey ) then
      FormsComponent.BeforeLoadKey( Self, sWhere );

    if Assigned( FormsComponent.AfterLoadKey ) then
      FormsComponent.AfterLoadKey( Self );

  end;

  if Assigned( FormsComponent.BeforeClearParams ) then
    FormsComponent.BeforeClearParams( self );

  DMProject.LimparParametrosForm;
  dbgConsulta.TS_ComponentPrinter := GridPrinter;
	GridPrinterLink.PrinterPage.MeasurementUnits := muMillimeters;
  BarraDeBotoes.Checked := not (DMProject.Parametro('BarraDeBotoes')='N');
  TS_Panel1.Visible := BarraDeBotoes.Checked;
  if FormsComponent.FormWidth > 0 then
    Width := FormsComponent.FormWidth;
  if FormsComponent.FormHeight > 0 then
    Height := FormsComponent.FormHeight;

  lbCaption.Caption := FormsComponent.Caption;
  Caption := FormsComponent.Modulo + ' - ' + DMProject.sNomeEmpresa;
end;

procedure TRptRelatorioMVAEntradas.RefreshMsg(var Msg:TMessage);
begin
  Refresh;
end;

procedure TRptRelatorioMVAEntradas.Refresh;
begin

  if Assigned( FormsComponent.OnRefresh ) then
    FormsComponent.OnRefresh( self )
  else
    RefreshDataSets;

end;

procedure TRptRelatorioMVAEntradas.RefreshDataSets;
var
  i, j:integer;
  Key : Variant;
  s : String;
begin
  s := UpperCase(LastDataObject.TableName);
  if pos( s, UpperCase(Q_Consulta.SQL.Text)) > 0 then begin
    Key := C_Consulta.FieldByName(dbgConsulta.KeyField).Value;
    btAtualizar.Click;
    if Key <> null then
      C_Consulta.Locate(dbgConsulta.KeyField, Key, [locaseinsensitive]);
  end;

  {Refresh a partir do RefreshList}
  if FormsComponent.RefreshList <> nil then begin
    for i := 0 to FormsComponent.RefreshList.Count - 1 do begin
      for j := 0 to ComponentCount - 1 do begin
        if (UpperCase(SeparaStrings(FormsComponent.RefreshList[i],'=',2)) = UpperCase(LastDataObject.TableName)) and
           (UpperCase(Components[j].Name) = UpperCase(SeparaStrings(FormsComponent.RefreshList[i],'=',1) )) then begin
          TDataSet(Components[j]).Close;

          try
            TDataSet(Components[j]).Open;
          except
          end;

          {Tentando Localizar o Registro}
          try
            TClientDataSet(Components[j]).Locate(LastDataObject.KeyName, LastDataObject.ObjectKey, [loCaseInsensitive]);
          except
          end;

          Exit;

        end;
      end;
    end;
  end; //if

end;

procedure TRptRelatorioMVAEntradas.CorFundo1Click(Sender: TObject);
begin
  inherited;
  dbgConsulta.CorFundoDados;
end;

procedure TRptRelatorioMVAEntradas.CorFundo2Click(Sender: TObject);
begin
  inherited;
  dbgConsulta.CorFundoGrupo;
end;

procedure TRptRelatorioMVAEntradas.btDadosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmDados.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btAgrupamentoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmAgrupamento.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btLayoutMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmLayout.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btSumarizacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmSumarizacao.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btExportacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmExportacao.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btImprimirMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmImprimir.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.Ajuda1Click(Sender: TObject);
begin
  inherited;
//  HtmlHelp(GetDesktopWindow, PChar(DMProject.sHelp), HH_HELP_CONTEXT, TMenuItem(sender).helpcontext);
end;

procedure TRptRelatorioMVAEntradas.RelatrioPadro1Click(Sender: TObject);
begin
  inherited;
//  HtmlHelp(GetDesktopWindow, PChar(DMProject.sHelp), HH_HELP_CONTEXT, TMenuItem(sender).helpcontext);
end;

procedure TRptRelatorioMVAEntradas.btHelpClick(Sender: TObject);
begin
  inherited;
  if fileexists(DMProject.ProgPath+'Help\'+'Ajuda_'+Self.Name+'.htm') then
  	DMProject.SetParametrosForm(['Ajuda_'+Self.Name+'.htm'])
  else
  	DMProject.SetParametrosForm(['RelatorioPadrao.htm']);
	DMProject.CriarForm('DlgPassos',Self,False);
//  ppmHelp.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.EnviarparaoEmail1Click(Sender: TObject);
begin
  inherited;
  dbgConsulta.PrintEmail(FormsComponent.Caption+';'+DMProject.sNomeEmpresa);
end;

procedure TRptRelatorioMVAEntradas.dbgConsultaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (ssCtrl in Shift) then
    dbgConsulta.OnDblClick(self);
end;

procedure TRptRelatorioMVAEntradas.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  bCarregando := false;
end;

procedure TRptRelatorioMVAEntradas.BarradeBotoesClick(Sender: TObject);
begin
  inherited;
	TS_Panel1.Visible := not TS_Panel1.Visible;
end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkCustomDrawHeaderCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; AColumn: TdxTreeListColumn; var AText: String;
  var AColor: TColor; AFont: TFont; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var ASorted: TdxCellSortOrder;
  var ADone: Boolean);
  var i, nIndex : integer;
begin

  Sender.DrawEdge(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone);
  InflateRect(ABoundsRect, -1 * OnePixel , -1 * OnePixel);
  ACanvas.Brush.Color := clGray;
  ACanvas.Brush.Style := bsSolid;
  AFont.Name := dbgConsulta.HeaderFont.Name;
  AFont.Color:= dbgConsulta.HeaderFont.Color;
  if AFont.Size > 400 then
  	AFont.Size := dbgConsulta.HeaderFont.Size*100
  else
	  AFont.Size := dbgConsulta.HeaderFont.Size*10;

  AFont.Style:= dbgConsulta.HeaderFont.Style;
  Sender.DrawEdgeEx(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone, [csRight, csBottom]);
  Sender.DrawText(ACanvas, ABoundsRect, 1, AText, AFont, dbgConsulta.HeaderColor, ATextAlignX,
                  ATextAlignY, true, true, true);

  nIndex := slRect.IndexOf(UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect));
	if TdxDBGridColumn(AColumn).SummaryFooterType <> cstNone then begin
  	if (nIndex < 0) and TdxDBGridColumn(AColumn).Visible then
      slRect.Add(UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect));
    {
    else
    	slRect[nIndex] := UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect);
    if not TdxDBGridColumn(AColumn).Visible then
    	slRect.Delete(nIndex);
    }
  end;
  nIndex := slRectColunas.IndexOf(UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect));
	if nIndex < 0 then
   	slRectColunas.Add(UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect));
  {
  else
    slRectColunas[nIndex] := UpperCase(TdxDBGridColumn(AColumn).FieldName)+'='+RectToStr(AClientRect);
  }
  ADone := True;

end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkCustomDrawPageHeader(Sender: TObject;
  ACanvas: TCanvas; APageIndex: Integer; var ARect: TRect; ANom,
  ADenom: Integer; var ADefaultDrawText, ADefaultDrawBackground: Boolean);
var
  APixel: Integer;
  W, H: Integer;
  R, LineRect: TRect;
  AText, sLinha, sStyle, sTexto 	: string;
  nWidth, AlturaAnterior 	: integer;
  ATop, AHeight, AWidth, i, k, LogoWidth, LogoHeight: Integer;
  TextAlign: TdxTextAlignX;
  AFont: TFont;
  APrevFont: HFONT;
  sLadoDireito : string;
begin
  APixel := OnePixel;
  ATop   := ARect.Top;
  AWidth := (ARect.Right - ARect.Left + 1 * APixel) div 2;
  LogoWidth := ARect.Left + 1 * APixel;
  LogoHeight := ARect.Bottom + 1 * APixel;

  APrevFont := SelectObject(ACanvas.Handle, ACanvas.Font.Handle);

  AFont := TFont.Create;
  AFont.Assign(ACanvas.Font);
  AFont.Name := 'TAHOMA';

  {Drawing Page Header}
  {Logotipo}
  if (DMProject.Logo <> nil) then begin
    W := MulDiv(DMProject.Logo.Width, ANom, ADenom);
    H := MulDiv(DMProject.Logo.Height, ANom, ADenom);
    ACanvas.StretchDraw(Rect(ARect.Left, ARect.Top, ARect.Left + W, ARect.Top + H), DMProject.Logo);
    LogoWidth := W + ARect.Left + 500;
    LogoHeight := H + ARect.Top + 200;
    if sCabecalho = 'TB' then
    	Exit;
  end;

  {Cabeçalho Lado Esquerdo}
  i := 1;
	while i <= ContaStrings(DMProject.sCabLadoEsquerdo,';') do begin

  	sLinha := SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',2);
    nWidth := LogoWidth;
    AlturaAnterior := 0;
    while (sLinha = SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',2)) and
    			(i <= ContaStrings(DMProject.sCabLadoEsquerdo,';')) do begin

      if SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',1) = '' then begin
      	inc(i);
        continue;
      end;
  		AText := SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',1);
      AFont.Name	:= SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',3);
  		AFont.Size 	:= MulDiv(StrToInt(SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',4)), ANom, ADenom);
      AFont.Color	:= StringToColor(SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',5));
      sStyle := UpperCase(SeparaStrings(SeparaStrings(DMProject.sCabLadoEsquerdo,';',i),'|',6));
      AFont.Style := [];
      if pos('N',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsBold];
      if pos('I',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsItalic];
      if pos('S',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsUnderline];

  		SelectObject(ACanvas.Handle, AFont.Handle);
  		AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;
      if AHeight > AlturaAnterior then
      	AlturaAnterior := AHeight;
  		R := Rect(nWidth, ATop, nWidth + ACanvas.TextWidth(AText) + (3 * APixel), ATop + AlturaAnterior - 1 * APixel);
      nWidth	:= nWidth + ACanvas.TextWidth(AText) + 3 * APixel;

  		TextAlign := taLeft;

  		(Sender as TBasedxReportLink).DrawText(	ACanvas, R, 0, AText, AFont,
      																				clWhite, TextAlign, taBottom,
                                              False, False, False);
      inc(i);
    end;
    ATop := ATop + AlturaAnterior - 1 * APixel;//AHeight;
  end;

  {Cabeçalho Lado Direito}
  ATop   := ARect.Top;
  i := 1;
  sLadoDireito := Copy(DMProject.sCabLadoDireito,1,length(DMProject.sCabLadoDireito)-1);
	while i <= ContaStrings(sLadoDireito,';') do begin

  	sLinha := SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',2);
    nWidth := ARect.Right;
    sTexto := '';
    while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',2)) and
    			(i <= ContaStrings(sLadoDireito,';')) do begin

      for k:=ContaStrings(sLadoDireito,';') downto 1 do
        if SeparaStrings(SeparaStrings(sLadoDireito,';',k),'|',2) = sLinha then
      		sTexto := sTexto + SeparaStrings(sLadoDireito,';',k) + ';';
      sTexto := Copy(sTexto,1,length(sTexto)-1);
      for k:=1 to ContaStrings(sTexto,';') do begin
      	AText := SeparaStrings(SeparaStrings(sTexto,';',k),'|',1);
      	if AText = '' then begin
      		inc(i);
        	continue;
      	end;

      	if pos('<NUMEROPAGINA>',UpperCase(AText))>0 then
      		AText := replace(AText,'<NUMEROPAGINA>',IntToStr(APageIndex+1));

      	if pos('<TOTALPAGINAS>',UpperCase(AText))>0 then
      		AText := replace(AText,'<TOTALPAGINAS>',IntToStr(GridPrinterLink.PageCount));

      	AFont.Name	:= SeparaStrings(SeparaStrings(sTexto,';',k),'|',3);
  			AFont.Size 	:= MulDiv(StrToInt(SeparaStrings(SeparaStrings(sTexto,';',k),'|',4)), ANom, ADenom);
      	AFont.Color	:= StringToColor(SeparaStrings(SeparaStrings(sTexto,';',k),'|',5));
      	sStyle := UpperCase(SeparaStrings(SeparaStrings(sTexto,';',k),'|',6));
      	AFont.Style := [];
      	if pos('N',sStyle) > 0 then
  				AFont.Style := AFont.Style + [fsBold];
      	if pos('I',sStyle) > 0 then
  				AFont.Style := AFont.Style + [fsItalic];
      	if pos('S',sStyle) > 0 then
  				AFont.Style := AFont.Style + [fsUnderline];

  			SelectObject(ACanvas.Handle, AFont.Handle);
  			AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;

  			R := Rect(nWidth - ACanvas.TextWidth(AText) - (3 * APixel), ATop, nWidth, ATop + AHeight - 1 * APixel);
      	nWidth	:= nWidth - ACanvas.TextWidth(AText) - (3 * APixel);

  			(Sender as TBasedxReportLink).DrawText(	ACanvas, R, 0, AText, AFont,
      																				clWhite, taLeft, taCenterY,
                                              False, False, False);
      	inc(i);
      end;
      //sLinha := IntToStr(StrToInt(sLinha)+1);
    end;
    ATop := ATop + AHeight;
  end;
  LineRect := ARect;
  LineRect.Bottom := ARect.Bottom - 10;
  (Sender as TBasedxReportLink).DrawEdgeEx(ACanvas, LineRect, cemSingle, cesNone, cesNone, [csBottom]);

  SelectObject(ACanvas.Handle, APrevFont);

end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkCustomDrawReportLinkTitle(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ARect: TRect; ANom,
  ADenom: Integer; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var AColor: TColor; AFont: TFont;
  var ADone: Boolean);
var
  APixel: Integer;
  W, H: Integer;
  R : TRect;
  AText: string;
  ATop, AHeight, AWidth, i: Integer;
  TextAlign: TdxTextAlignX;

  APrevFont: HFONT;
begin

  APixel := OnePixel;
  if ARect.Left > 50000 then
    ATop := ARect.Top + 300
  else
		ATop := ARect.Top + 30;
  AWidth := (ARect.Right - ARect.Left + 1 * APixel) div 2;

  APrevFont := SelectObject(ACanvas.Handle, AFont.Handle);
  AFont.Name := 'TAHOMA';

  {Título do Relatório}
  AText := FormsComponent.Caption; //Sender.ReportTitleText;
  AFont.Size := MulDiv(14, ANom, ADenom);
  SelectObject(ACanvas.Handle, AFont.Handle);
  AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;
  R := Rect(ARect.Left, ATop, ARect.Right, ATop + AHeight - 1 * APixel);
  ATop := ATop + AHeight;
  TextAlign := taCenterX;
  AFont.Style := [];
  Sender.DrawText(ACanvas, R, 0, AText, AFont, clWhite, TextAlign, taCenterY, False, False, False);

  {Filtros}
  if TTS_QDBGrid(Sender.Component).TS_ReportFilter.Text <> '' then begin
    for i := 0 to TTS_QDBGrid(Sender.Component).TS_ReportFilter.Count - 1 do begin
      AText := TTS_QDBGrid(Sender.Component).TS_ReportFilter[i];
      AFont.Size := MulDiv(8, ANom, ADenom);
      SelectObject(ACanvas.Handle, AFont.Handle);
      AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;
      R := Rect(ARect.Left, ATop, ARect.Right, ATop + AHeight - 1 * APixel);
      ATop := ATop + AHeight;
      TextAlign := taCenterX;
      AFont.Style := [];
      Sender.DrawText(ACanvas, R, 0, AText, AFont, clWhite, TextAlign, taCenterY, False, False, False);
    end;
  end;

  SelectObject(ACanvas.Handle, APrevFont);
  ADone := true;

end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkMeasureReportLinkTitle(
  Sender: TBasedxReportLink; var AHeight: Integer);
var
  s : String;
begin

  if TTS_QDBGrid(Sender.Component).TS_ReportFilter.Text <> '' then begin
    AHeight	:= 35;
    AHeight	:= AHeight + (TTS_QDBGrid(Sender.Component).TS_ReportFilter.Count*17)
  end else
    AHeight := 40;

  {Passando o Usuário}
  s :=  GridPrinterLink.PrinterPage.PageHeader.RightTitle.Text;
  GridPrinterLink.PrinterPage.PageHeader.RightTitle.Text := replace(s, '-USER-', DMProject.sLoginName);

end;

function TRptRelatorioMVAEntradas.getTitulos : string;
var sString : string;
		i : integer;
begin
  sString := '';
  with dbgConsulta do begin
		for i:=0 to ColumnCount-1 do
      if not Columns[i].DisableCustomizing then
    		sString := CExp(sString,'|') + Columns[i].FieldName + '=' + Columns[i].Caption;
  end;
	result := sString;
end;

procedure TRptRelatorioMVAEntradas.GerarEtiquetas1Click(Sender: TObject);
var sSQL : string;
begin
  inherited;
  with DMProject do begin
    sSQL := Q_Consulta.SQL.Text;
  	SetParametrosForm([FormsComponent.Caption, getSQLParam(Q_Consulta),'','',getTitulos]);
    CriarForm('DlgEtiquetas',self,true);
  end;
end;

function TRptRelatorioMVAEntradas.getSQLParam(Query : TIBQuery) : string;
var sSQL : string;
		i : integer;
begin
  with Query do begin
		sSQL := SQL.Text;
  	for i:=0 to Params.Count-1 do
    	sSQL := replace(sSQL,':'+Params[i].Name,iif(Params[i].DataType in [ftDate,ftDateTime],
                                              QuotedStr(formatdatetime('mm/dd/yyyy',Params[i].AsDateTime)),
                                              iif(Params[i].DataType in [ftString],QuotedStr(Params[i].AsString),
                                              Params[i].AsString)));
  end;
  result := sSQL;
end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkCustomDrawCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  var AText: String; var AColor: TColor; AFont: TFont;
  var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
  var ADone: Boolean);

var OutStr, FieldName, sCampo : string;
		i, x, nFontSize : integer;
    sRect : String;
    ARect : TRect;
    GroupKeyValue : Variant;
    bFormatar : boolean;
    sValues, sValor, sValor2, sOperador, sCorFundo, sFontName, sFontColor, sFontStyle : string;
begin
  inherited;
  {Formato Pijama}
  if (dbgConsulta.TS_AnotherColor <> dbgConsulta.Color) and (Trunc(ANode.Index/2) <> ANode.Index/2) then
    AColor := dbgConsulta.TS_AnotherColor;

  {Configuração do Grupo}
	if ANode.HasChildren then begin
    OutStr := SeparaStrings(AText,'>',1);

  	StrTotais := AText;
  	Delete(StrTotais, 1, Length(OutStr));
  	StrTotais := Replace(StrTotais,'>','');

		Sender.DrawText( ACanvas, AClientRect, 1, OutStr, AFont, dbgConsulta.GroupNodeColor, ATextAlignX,
                   	 ATextAlignY, true, true, true );

    if TdxDBGridColumn(AColumn).GroupIndex <> -1 then
      if slGroup.IndexOf(IntToStr(TdxDBGridColumn(AColumn).GroupIndex)+'='+RectToStr(AClientRect)) < 0 then
		     slGroup.Add(IntToStr(TdxDBGridColumn(AColumn).GroupIndex)+'='+RectToStr(AClientRect));

    for x := 0 to slRect.Count-1 do begin
      // FieldName := UpperCase(Trim(SeparaStrings(Trim(SeparaStrings(StrTotais,'|',x+1)),'=',1)));
      FieldName := slRect.Names[x];
      if (dbgConsulta.FindColumnByFieldName(FieldName).ColIndex = 0) then
        Continue;

      //OutStr    := Trim(SeparaStrings(Trim(SeparaStrings(StrTotais,'|',x+1)),'=',2));
      OutStr := '';
      for i:=1 to ContaStrings(StrTotais,'|') do
      	if UpperCase(FieldName) = UpperCase(Trim(SeparaStrings(SeparaStrings(StrTotais,'|',i),'=',1))) then begin
      		OutStr := Trim(SeparaStrings(SeparaStrings(StrTotais,'|',i),'=',2));
          break;
        end;
      sRect := slRect.Values[FieldName];
      if (sRect <> '') and (OutStr<>'') then begin
        aRect := StrToRect(sRect);
        Sender.DrawText( ACanvas, ARect , 1, OutStr, AFont, dbgConsulta.GroupNodeColor, taRight,
                       ATextAlignY, true, true, true);
      end;
    end;

    {Totalização do Saldo}
    if Assigned( dbgConsulta.OnGetSummaryTopText ) then begin
      for x := 1 to dbgConsulta.ColumnCount - 1 do begin
        OutStr := '';
        sCampo := dbgConsulta.Columns[x].FieldName;
        sRect  := slRectColunas.Values[sCampo];
        if sRect = '' then
        	Continue;
        ARect       := StrToRect(sRect);
        ARect.Top 	:= AClientRect.Top;
        ARect.Bottom:= AClientRect.Bottom;

        {Capturando o Valor da Chave do Grupo}
        GroupKeyValue := ANode.Values[0];
        FieldName := dbgConsulta.GroupColumns[ANode.Level].FieldName;
        if dbgConsulta.LookupColumn( FieldName ) then begin
          FieldName := dbgConsulta.DataSource.DataSet.FieldByName( FieldName ).KeyFields;

          if dbgConsulta.FindColumnByFieldName(FieldName) <> nil then
            GroupKeyValue := dbgConsulta.GetFirstChildValue(TdxDBGridNode(ANode), FieldName);
        end;

        dbgConsulta.OnGetSummaryTopText(Self, ACanvas, ARect, TdxDBGridNode(ANode), GroupKeyValue, sCampo, OutStr );

        if OutStr <> '' then
        	Sender.DrawText( ACanvas, ARect , 1, OutStr, AFont, dbgConsulta.GroupNodeColor, taRight,
                           ATextAlignY, true, true, true);
      end;
    end;

    ADone := True;
  end else begin
    if dbgConsulta.TS_FormatarPorCondicao.Count > 0 then begin
    	sCampo  := TdxDBGridColumn(AColumn).FieldName;
      sValues := dbgConsulta.TS_FormatarPorCondicao.Values[sCampo];
      if (sValues <> '') and (SeparaStrings(sValues,';',1)<>'0') then begin
        bFormatar := false;
       	sOperador := SeparaStrings(sValues,';',1);
        {Tipo Número}
      	if TdxDbGridColumn(AColumn).Field.DataType in [ftInteger,ftCurrency,ftBCD,ftFloat] then begin
          sValor    := SeparaStrings(SeparaStrings(sValues,';',2),'=',1);
          sValor2   := SeparaStrings(SeparaStrings(sValues,';',2),'=',2);
          if sOperador = '1' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) >= StrToFloat(sValor)
          else if sOperador = '2' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) <= StrToFloat(sValor)
          else if sOperador = '3' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) = StrToFloat(sValor)
          else if sOperador = '4' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) > StrToFloat(sValor)
          else if sOperador = '5' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) < StrToFloat(sValor)
          else if sOperador = '6' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) <> StrToCurr(sValor)
          else if sOperador = '7' then
          	bFormatar := (dbgConsulta.getFieldValue(ANode, sCampo,0) >= StrToCurr(sValor)) and (dbgConsulta.getFieldValue(ANode, sCampo,0) <= StrToCurr(sValor2));
        {Tipo Data}
        end else if TdxDbGridColumn(AColumn).Field.DataType in [ftDate,ftDateTime] then begin
          sValor    := SeparaStrings(SeparaStrings(sValues,';',2),'=',1);
          sValor2   := SeparaStrings(SeparaStrings(sValues,';',2),'=',2);
          if sOperador = '1' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) >= StrToDate(sValor)
          else if sOperador = '2' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) <= StrToDate(sValor)
          else if sOperador = '3' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) = StrToDate(sValor)
          else if sOperador = '4' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) > StrToDate(sValor)
          else if sOperador = '5' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) < StrToDate(sValor)
          else if sOperador = '6' then
          	bFormatar := dbgConsulta.getFieldValue(ANode, sCampo,0) <> StrToDate(sValor)
          else if sOperador = '7' then
          	bFormatar := (dbgConsulta.getFieldValue(ANode, sCampo,0) >= StrToDate(sValor)) and (dbgConsulta.getFieldValue(ANode, sCampo,0) <= StrToDate(sValor2));
        {Tipo String}
        end else begin
					sValor    := SeparaStrings(sValues,';',2);
         	bFormatar := pos(uppercase(sValor),UpperCase(dbgConsulta.getFieldValue(ANode, sCampo,'')))>0;
        end;
        if bFormatar then begin
          sCorFundo := SeparaStrings(sValues,';',3);
        	sFontName := SeparaStrings(sValues,';',4);
          nFontSize := StrToInt(SeparaStrings(sValues,';',5));
          sFontColor:= SeparaStrings(sValues,';',6);
          sFontStyle:= SeparaStrings(sValues,';',7);

        	AFont.Name := sFontName;
          AFont.Color:= StringToColor(sFontColor);
          AFont.Size := nFontSize;
          AFont.Style:= StringToStyle(sFontStyle);
          AColor     := StringToColor(sCorFundo);
        end;
      end;
    end;
  end;
end;

procedure TRptRelatorioMVAEntradas.FormatoPijamaClick(Sender: TObject);
begin
  inherited;
  dbgConsulta.FormatoPijama;
end;

procedure TRptRelatorioMVAEntradas.ConfigurarColunaClick(Sender: TObject);
begin
  inherited;
	dbgConsulta.ConfigurarColuna;
end;

procedure TRptRelatorioMVAEntradas.CordaGrade1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.CorGrade;
end;

procedure TRptRelatorioMVAEntradas.ppmLayoutPopup(Sender: TObject);
begin
  inherited;
  FormatoPijama.Checked := dbgConsulta.Color <> dbgConsulta.TS_AnotherColor;
  btLayoutGrade.Checked := dbgConsulta.ShowGrid;
  btLayoutLargura.Checked := edgoAutoWidth in dbgConsulta.OptionsView;
  btMostrarCab.Checked	:= dbgConsulta.ShowHeader;
end;

procedure TRptRelatorioMVAEntradas.AlturaAutomtica1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.AlturaCelula;
end;

procedure TRptRelatorioMVAEntradas.ppmSumarizacaoPopup(Sender: TObject);
begin
  inherited;
  with dbgConsulta do begin
    TotalizarEmCima.Enabled := GroupColumnCount > 0;
    TotalizarEmBaixo.Enabled:= TotalizarEmCima.Enabled;
   	btSumarizacaoRodape.Checked 		:= dbgConsulta.ShowSummaryFooter;
  end;
end;

procedure TRptRelatorioMVAEntradas.GridPrinterLinkCustomDrawRowFooterCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  AFooterIndex: Integer; var AText: String; var AColor: TColor;
  AFont: TFont; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
  var sTexto, sRect : string;
  		ARect : TRect;
begin
  inherited;
  if (dbgConsulta.TS_AccountFooterStyle) and (AText <> '') then begin
  	Sender.DrawEdge(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone);
  	InflateRect(ABoundsRect, -1 * OnePixel , -1 * OnePixel);
  	ACanvas.Brush.Color := clBlack;
  	ACanvas.Brush.Style := bsSolid;
  	Sender.DrawEdgeEx(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone, [csTop]);
  	Sender.DrawText(ACanvas, ABoundsRect, 1, AText, AFont, clWhite, ATextAlignX,
                  	ATextAlignY, true, true, true);
    ADone := true;
  end;

end;

procedure TRptRelatorioMVAEntradas.CongelarClick(Sender: TObject);
begin
  inherited;
	dbgConsulta.CongelarColuna(dbgConsulta.TS_SelectedColumn);
end;

procedure TRptRelatorioMVAEntradas.DescongelarColuna1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.DesCongelarColuna;
end;

procedure TRptRelatorioMVAEntradas.ppmDadosPopup(Sender: TObject);
begin
  inherited;
	btDadosFiltrar.Checked := dbgConsulta.Filter.Active;
end;

procedure TRptRelatorioMVAEntradas.ppmAgrupamentoPopup(Sender: TObject);
begin
  inherited;
	btAgrupamentoPainel.Checked := dbgConsulta.ShowGroupPanel;
end;

procedure TRptRelatorioMVAEntradas.tulodoRelatrio1Click(Sender: TObject);
begin
  inherited;
  FormsComponent.Caption := InputBox('Alterar Título do Relatório','Título:',FormsComponent.Caption);
  DMProject.SetDadosRelatorio( Self.Name, 'Titulo', FormsComponent.Caption );
end;

procedure TRptRelatorioMVAEntradas.SalvarTemplate1Click(Sender: TObject);
begin
  inherited;
  DlgSalvarTemplate := TDlgSalvarTemplate.Create(self);
  with DlgSalvarTemplate do begin
    slTemplates := dbgConsulta.TS_Templates;
    edTemplate.Text := dbgConsulta.TS_TemplatePadrao;
  	if ShowModal = mrOk then begin
    	dbgConsulta.GravarTemplate( edTemplate.Text, DMProject.TemplatesPath+Self.Name+'.rpt',
                                  DMProject.Parametro('GravarDataRelatorio') = 'S');
      dbgConsulta.TS_TemplatePadrao := edTemplate.Text;
			lbTemplate.Caption := edTemplate.Text;
      btTemplates.Visible := true;
      if ckbPadrao.Checked then
				setTemplatePadrao;
    end;
  	Release;
    DlgSalvarTemplate := nil;
 end;
end;

procedure TRptRelatorioMVAEntradas.CarregarTemplate1Click(Sender: TObject);
var nFormWidth, nFormHeight : integer;
begin
  inherited;
  DlgAbrirTemplate := TDlgAbrirTemplate.Create(self);
  with DlgAbrirTemplate do begin
		slTemplates := dbgConsulta.TS_Templates;
  	if ShowModal = mrOk then begin
    	dbgConsulta.CarregarTemplate( cmbTemplates.Text, DMProject.TemplatesPath+Self.Name+'.rpt');
    	dbgConsulta.TS_TemplatePadrao := cmbTemplates.Text;
  	  lbTemplate.Caption := dbgConsulta.TS_TemplatePadrao;
      nFormWidth := FormsComponent.FormWidth;
      nFormHeight:= FormsComponent.FormHeight;
 			if (nFormWidth > 0) and (windowstate <> wsMaximized) then
   			Width := nFormWidth;
 			if (nFormHeight > 0) and (windowstate <> wsMaximized)  then
   			Height := nFormheight;
    end;
  	Release;
    DlgAbrirTemplate := nil;
 	end;
end;

procedure TRptRelatorioMVAEntradas.btAjudaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmTemplates.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.NenhumTemplate1Click(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
    TS_TemplatePadrao := '';
    SetTemplatePadrao;
  	CarregarTemplate('Padrao',DMProject.TemplatesPath+Self.Name+'.rpt');
  end;
  lbTemplate.Caption := '';
  btTemplates.Visible := dbgConsulta.TS_Templates.Count > 0;
end;

procedure TRptRelatorioMVAEntradas.setTemplatePadrao;
begin
  	with Q_SQLReport do begin
    	close;
      sql.text := 'update relatorios '+
      						'set templatepadrao = '''+dbgConsulta.TS_TemplatePadrao+''' '+
                  'where nomeform = '''+Self.Name+'''';
      execsql;
      DMProject.IBT_Projeto.CommitRetaining;
    end;
end;

function TRptRelatorioMVAEntradas.getTemplatePadrao : string;
begin
  	with Q_SQLReport do begin
    	close;
      sql.text := 'select templatepadrao from relatorios '+
                  'where nomeform = '''+Self.Name+'''';
      open;
      result := fields[0].AsString;
      close;
    end;
end;

procedure TRptRelatorioMVAEntradas.DefinirPadraoClick(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
    if TS_TemplatePadrao = '' then begin
    	ShowMessage('Não existe nenhum template aberto.');
      Exit;
    end;
    setTemplatePadrao;
  end;
end;

procedure TRptRelatorioMVAEntradas.ExcluirTemplate1Click(Sender: TObject);
var sTemplate : string;
		i,j : integer;
    ArquivoIni : TIniFile;
    slSections : TStringList;
begin
  inherited;
  DlgApagarTemplate := TDlgApagarTemplate.Create(self);
	with DlgApagarTemplate do begin
		slTemplates := dbgConsulta.TS_Templates;
    if ShowModal = mrOk then begin
      slSections := TStringList.Create;
	    if fileexists(DMProject.TemplatesPath+Self.Name+'.rpt') then begin
      	ArquivoIni := TIniFile.Create(DMProject.TemplatesPath+Self.Name+'.rpt');
        ArquivoIni.ReadSections(slSections);
      end;
    	for i:=0 to clbTemplates.Items.Count-1 do
        if clbTemplates.Checked[i] then begin
          if uppercase(lbTemplate.Caption) = uppercase(clbTemplates.Items[i]) then begin
          	dbgConsulta.TS_TemplatePadrao := '';
            lbTemplate.Caption := '';
            SetTemplatePadrao;
          end;
          for j:=0 to slSections.Count-1 do
        		if (pos(clbTemplates.Items[i]+'_FormStorage',slSections[j])>0) or (pos(clbTemplates.Items[i]+'_Grid',slSections[j])>0) then
            	ArquivoIni.EraseSection(slSections[j]);
        	dbgConsulta.TS_Templates.Delete(dbgConsulta.TS_Templates.Indexof(clbTemplates.Items[i]));
        end;
      ArquivoIni.UpdateFile;
      ArquivoIni.Free;
      slSections.Free;
      btTemplates.Visible := dbgConsulta.TS_Templates.Count > 0;
    end;
    Release;
    DlgApagarTemplate := nil;
  end;
end;


procedure TRptRelatorioMVAEntradas.FormResize(Sender: TObject);
begin
  inherited;
	FormsComponent.FFormHeight := height-1;
  FormsComponent.FFormWidth  := width-1;
end;

function TRptRelatorioMVAEntradas.getCampos : string;
begin
  with Q_SQLReport do begin
    close;
    sql.text := 'select campos, camposadicionais from relatorios where upper(nomeform) = :form ';
    parambyname('form').AsString := UpperCase(Self.name);
    open;
    result := fields[0].AsString+iif(fields[1].AsString<>'',', '+replace(fields[1].AsString,';',',')+' ',' ');
    close;
  end;
end;

function TRptRelatorioMVAEntradas.getTabelas : string;
var sTabelas : string;
		i : integer;
begin
	with Q_SQLReport do begin
  	close;
    sql.text := 'select tabelas, tabelasadicionais from relatorios '+
    						'where upper(nomeform) = :form';
    parambyname('form').AsString := UpperCase(Self.name);
    open;
    sTabelas := '';
    for i:=1 to ContaStrings(fields[1].AsString,';') do
    	sTabelas := sTabelas + SeparaStrings( fields[1].AsString, ';', i) + ' ';
    result := fields[0].AsString+' '+sTabelas;
    close;
  end;
end;

function TRptRelatorioMVAEntradas.getListaTabelas( bSomenteAdicional : boolean = false) : TStringList;
var slTabelas : TStringList;
		i : integer;
    sTabelas, sNomeTabela, sTabelasAdicionais : string;
begin
	slTabelas := TStringList.Create;
	with Q_SQLReport do begin
  	close;
    sql.text := 'select tabelas, tabelasadicionais from relatorios '+    // tabelas t
    						'where upper(nomeform) = :form';      // inner join tabx x on t.ff = x.ff
    parambyname('form').AsString := UpperCase(Self.Name); // inner join taby x on t.ff = y.ff
    open;
    if not bSomenteAdicional then
    	sTabelas := fields[0].AsString;
    sTabelasAdicionais := fields[1].AsString;
    for i:=1 to ContaStrings(sTabelasAdicionais,';') do begin
    	sTabelas := sTabelas + ' ' + SeparaStrings(sTabelasAdicionais,';',i) + ' '
    end;
    close;
    for i:=1 to ContaStrings(UpperCase(sTabelas),'JOIN') do begin
    	sNomeTabela := SeparaStrings(sTabelas,'join',i);
      sNomeTabela := replace(sNomeTabela,'#$d#$a',' ');
      sNomeTabela := replace(sNomeTabela,'left','');
      sNomeTabela := replace(sNomeTabela,'inner','');
      if pos(' ON ',UpperCase(sNomeTabela)) > 0 then
      	sNomeTabela := Copy(sNomeTabela,1,pos(' ON ',UpperCase(sNomeTabela))-1);
      if Trim(sNomeTabela) <> '' then
      	slTabelas.Add(Trim(sNomeTabela));
    end;
    result:= slTabelas;
  end;
end;

procedure TRptRelatorioMVAEntradas.CriarCampos;
var i : integer;
		sCampo : string;
begin
	with Q_SQLReport do begin
  	Close;
    SQL.Text := 'Select camposadicionais, tituloscamposadicionais, tiposcamposadicionais '+
    						'From Relatorios '+
                'Where NomeForm = :Form';
    ParamByName('Form').AsString := Self.Name;
    Open;
    C_Consulta.Close;
    for i:=1 to ContaStrings(fields[0].AsString,';') do begin
      sCampo := SeparaStrings(Fields[0].AsString,';',i);
      if pos(' AS ',Uppercase(sCampo)) > 0 then
      	sCampo := trim(SeparaStrings( sCampo, ' as ', 2));
    	CriarCampo(sCampo,SeparaStrings(Fields[1].AsString,';',i),SeparaStrings(Fields[2].AsString,';',i));
    end;
    Close;
  end;
end;

procedure TRptRelatorioMVAEntradas.CriarCampo( sCampo, sTitulo, sTipoCampo : string );
var CampoS : TStringField;
    CampoN : TFloatField;
    CampoB : TBCDField;
    CampoD : TDateField;
    CampoDT : TDateTimeField;
    CampoI : TIntegerField;
begin
    sCampo := SeparaStrings(sCampo,' as ',1);
    if pos('.',sCampo)>0 then
    	sCampo := Trim(Copy(sCampo,pos('.',sCampo)+1,500));
    if sTipoCampo = 'Texto' then begin
      CampoS := TStringField.Create(self);
    	with CampoS do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
     		DataSet  	:= C_Consulta;
        Size		 	:= 50;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridColumn) as TdxDBGridColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end else if pos('Float',sTipoCampo) > 0 then begin
      CampoN := TFloatField.Create(self);
    	with CampoN do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
        DisplayFormat := '###,###,##0.00';
     		DataSet  	:= C_Consulta;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end else if pos('BCD',sTipoCampo) > 0 then begin
      CampoB := TBCDField.Create(self);
    	with CampoB do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
        DisplayFormat := '###,###,##0.00';
     		DataSet  	:= C_Consulta;
        Size			:= 2;
        Precision	:= 18;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end else if sTipoCampo = 'Data' then begin
      CampoD := TDateField.Create(self);
    	with CampoD do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
     		DataSet  	:= C_Consulta;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridColumn) as TdxDBGridColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end else if sTipoCampo = 'DataHora' then begin
      CampoDT := TDateTimeField.Create(self);
    	with CampoDT do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
     		DataSet  	:= C_Consulta;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridColumn) as TdxDBGridColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end else if pos('Integer',sTipoCampo) > 0 then begin
      CampoI := TIntegerField.Create(self);
    	with CampoI do begin
     		Name := C_Consulta.Name+'CAMPOADD_'+sCampo;
     		FieldName	:= sCampo;
     		DataSet  	:= C_Consulta;
      end;
  		with dbgConsulta.CreateColumn(TdxDBGridColumn) as TdxDBGridColumn do begin
        Caption   := sTitulo;
    		FieldName := sCampo;
      end;
    end;
end;

procedure TRptRelatorioMVAEntradas.RemoverCampo( sCampo : string );
begin
	if dbgConsulta.FindColumnbyFieldName(sCampo) <> nil then
   	dbgConsulta.FindColumnbyFieldName(sCampo).Destroy;

  if C_Consulta.FindField(sCampo) <> nil then
   	C_Consulta.FieldByName(sCampo).Destroy;
end;

procedure TRptRelatorioMVAEntradas.AdicionarCampo( sTabelas, sCampo, sTitulo, sTipo, sAlias : string );
var bJaExiste : boolean;
begin
	sCampo := SeparaStrings(sTabelas,' ',2)+iif(pos(' ',sTabelas)>0,'.','')+sCampo+iif(sAlias<>'',' as '+sAlias,'');
  with Q_SQLReport do begin
  	// Index := ContaStrings(sCampoAdicional,';');
    close;
    sql.text := 'select camposadicionais from relatorios '+
    						'where nomeform = :form';
    parambyname('form').AsString := Self.Name;
    open;
    bJaExiste := fields[0].AsString <> '';
   	close;
   	sql.text := 'update relatorios '+
       					'set camposadicionais = '+iif(bJaExiste,'camposadicionais || ','')+':campo, '+
                '    tituloscamposadicionais = '+iif(bJaExiste,'tituloscamposadicionais || ','')+':titulo, '+
                '    tiposcamposadicionais = '+iif(bJaExiste,'tiposcamposadicionais || ','')+':tipo '+
                'where upper(nomeform) = :form';
    parambyname('campo').AsString := iif(bJaExiste,';','')+sCampo;
    parambyname('titulo').AsString:= iif(bJaExiste,';','')+sTitulo;
    parambyname('tipo').AsString	:= iif(bJaExiste,';','')+sTipo;
    parambyname('form').AsString 	:= UpperCase(Self.Name);
    ExecSql;
    DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
  C_Consulta.Close;
  CriarCampo(iif(sAlias<>'',sAlias,sCampo), sTitulo, sTipo);
  btAtualizar.Click;
end;

procedure TRptRelatorioMVAEntradas.AdicionarSubSelect( sSelect, sAlias, sTitulo, sTipo : string );
var bJaExiste : boolean;
		sCampo : string;
begin
	sCampo := '('+sSelect+') as '+sAlias;
  with Q_SQLReport do begin
    close;
    sql.text := 'select camposadicionais from relatorios '+
    						'where nomeform = :form';
    parambyname('form').AsString := Self.Name;
    open;
    bJaExiste:= fields[0].AsString <> '';

   	close;
    sql.text := 'update relatorios '+
       					'set camposadicionais = '+iif(bJaExiste,'camposadicionais || ','')+':campo, '+
                '    tituloscamposadicionais = '+iif(bJaExiste,'tituloscamposadicionais || ','')+':titulo, '+
                '    tiposcamposadicionais = '+iif(bJaExiste,'tiposcamposadicionais || ','')+':tipo '+
             		'where upper(nomeform) = :form';
    parambyname('campo').AsString := iif(bJaExiste,';','')+sCampo;
    parambyname('titulo').AsString:= iif(bJaExiste,';','')+sTitulo;
    parambyname('tipo').AsString	:= iif(bJaExiste,';','')+sTipo;
   	parambyname('form').AsString 	:= UpperCase(Self.Name);
   	ExecSql;
   	DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
  C_Consulta.Close;
  CriarCampo(sAlias, sTitulo, sTipo);
  btAtualizar.Click;
end;

function TRptRelatorioMVAEntradas.getListaCampos : TStringList;
var i : integer;
		slCampos : TStringList;
    sCampos, sCampo : string;
begin
	slCampos := TStringList.Create;
	with Q_SQLReport do begin
  	Close;
    Sql.Text := 'select camposadicionais, tituloscamposadicionais, tiposcamposadicionais '+
     						'from relatorios '+
                'where upper(nomeform) = :form';
    ParamByName('Form').AsString := UpperCase(Self.Name);
    Open;
    sCampos := fields[1].AsString;
    Close;
    for i:=1 to ContaStrings(sCampos,';') do begin
    	sCampo := SeparaStrings(sCampos,';',i);
			slCampos.Add(sCampo);
    end;
  end;
  result := slCampos;
end;

procedure TRptRelatorioMVAEntradas.AlterarCampo( CampoAlterar, Campo, Tabela, Titulo, Tipo, Alias : string);
var sCampo, sCampoAdicional, sTituloAdicional, sTipoAdicional : string;
		Index : integer;
begin
  with Q_SQLReport do begin
   	close;
    sql.text := 'select campos,camposadicionais,tituloscamposadicionais,tiposcamposadicionais '+
     						'from relatorios '+
    						'where nomeform = :form';
    parambyname('form').AsString := Self.Name;
    open;
    sCampoAdicional := fields[1].AsString;
    sTituloAdicional:= fields[2].AsString;
    sTipoAdicional  := fields[3].AsString;
		Index := IndiceString(sTituloAdicional,';',CampoAlterar);
    close;
   	sCampo := replace(sCampoAdicional,SeparaStrings(sCampoAdicional,';',Index),SeparaStrings(Tabela,' ',2)+iif(pos(' ',Tabela)>0,'.','')+Campo+iif(Alias<>'',' as '+Alias,''));
    close;
    sql.text := 'update relatorios '+
    						'set camposadicionais = :campo, '+
                '    tituloscamposadicionais = :titulo, '+
                '    tiposcamposadicionais = :tipo '+
                'where upper(nomeform) = :form';
    parambyname('campo').AsString := sCampo;
    parambyname('titulo').AsString:= replace(sTituloAdicional,SeparaStrings(sTituloAdicional,';',Index),Titulo);
    parambyname('tipo').AsString	:= replace(sTipoAdicional,SeparaStrings(sTipoAdicional,';',Index),Tipo);
    parambyname('form').AsString 	:= UpperCase(Self.Name);
    ExecSql;
    DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
  C_Consulta.Close;
  sCampo := SeparaStrings(sCampoAdicional,';',Index);
  sCampo := Trim(Copy(sCampo,pos('.',sCampo)+1,500));
  if pos(' AS ',UpperCase(sCampo))>0 then
  	sCampo := SeparaStrings(sCampo,' AS ',2);
	if dbgConsulta.FindColumnbyFieldName(sCampo) <> nil then
  	RemoverCampo(sCampo);
  CriarCampo(iif(Alias<>'',Alias,Campo), Titulo, Tipo);
  btAtualizar.Click;
end;

procedure TRptRelatorioMVAEntradas.AlterarSubSelect( CampoAlterar, Select, Alias, Titulo, Tipo : string);
var sCampo, sCampoAdicional, sTituloAdicional, sTipoAdicional : string;
		Index : integer;
begin
  with Q_SQLReport do begin
   	close;
    sql.text := 'select campos,camposadicionais,tituloscamposadicionais,tiposcamposadicionais '+
     						'from relatorios '+
    						'where nomeform = :form';
    parambyname('form').AsString := Self.Name;
    open;
    sCampoAdicional := fields[1].AsString;
    sTituloAdicional:= fields[2].AsString;
    sTipoAdicional  := fields[3].AsString;
		close;

    Index := IndiceString(sTituloAdicional,';',CampoAlterar);

    sCampo := replace(sCampoAdicional,SeparaStrings(sCampoAdicional,';',Index),'('+Select+') as '+Alias);

    with Q_SQLReport do begin
    	close;
      sql.text := 'update relatorios '+
      						'set camposadicionais = :campo, '+
                  '    tituloscamposadicionais = :titulo, '+
                  '    tiposcamposadicionais = :tipo '+
                  'where upper(nomeform) = :form';
      parambyname('campo').AsString := sCampo;
      parambyname('titulo').AsString:= replace(sTituloAdicional,SeparaStrings(sTituloAdicional,';',Index),Titulo);
      parambyname('tipo').AsString	:= replace(sTipoAdicional,SeparaStrings(sTipoAdicional,';',Index),Tipo);
      parambyname('form').AsString 	:= UpperCase(Self.Name);
      ExecSql;
      DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;

   		C_Consulta.Close;
      sCampo := SeparaStrings(SeparaStrings(sCampoAdicional,';',Index),' as ',2);
			if dbgConsulta.FindColumnbyFieldName(sCampo) <> nil then
      	RemoverCampo(sCampo);
     	CriarCampo(Alias, Titulo, Tipo);
     	btAtualizar.Click;
    end;
  end;
end;

procedure TRptRelatorioMVAEntradas.TotalizarEmCimaClick(Sender: TObject);
begin
  inherited;
  if not TotalizarEmCima.Checked then
  	Exit;
  dbgConsulta.MostrarRodapeGrupo( false );
  dbgConsulta.TotalizarAcima( true );
end;

procedure TRptRelatorioMVAEntradas.ppmTemplatesPopup(Sender: TObject);
begin
  inherited;
	DefinirPadrao.Enabled := dbgConsulta.TS_TemplatePadrao<>'';
end;

procedure TRptRelatorioMVAEntradas.TrocaTemplate( Sender : TObject );
begin
  lbTemplate.Caption := replace(TMenuItem(Sender).Caption,'&','');
  dbgConsulta.CarregarTemplate(lbTemplate.Caption,DMProject.TemplatesPath+Self.Name+'.rpt');
  dbgConsulta.TS_TemplatePadrao := lbTemplate.Caption;
end;

procedure TRptRelatorioMVAEntradas.btTemplatesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
	ppmSelTemplate.PopupFromCursorPos;
end;

procedure TRptRelatorioMVAEntradas.btTemplatesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i : integer;
 		MenuItem : TMenuItem;
begin
  inherited;
  ppmSelTemplate.Items.Clear;
  for i:=0 to dbgConsulta.TS_Templates.Count-1 do begin
  	MenuItem := TMenuItem.Create(Self);
    MenuItem.Caption := dbgConsulta.TS_Templates[i];
    MenuItem.OnClick := TrocaTemplate;
  	ppmSelTemplate.Items.Add( MenuItem );
  end;
  MenuItem := TMenuItem.Create(Self);
  MenuItem.Caption := '-';
  ppmSelTemplate.Items.Add( MenuItem );
  MenuItem := TMenuItem.Create(Self);
  MenuItem.Caption := 'Nenhum';
  MenuItem.OnClick := NenhumTemplate1Click;
  ppmSelTemplate.Items.Add( MenuItem );
end;

procedure TRptRelatorioMVAEntradas.ppmSelTemplatePopup(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to ppmSelTemplate.Items.Count-1 do begin
  	if UpperCase(ppmSelTemplate.Items[i].Caption) = UpperCase(dbgConsulta.TS_TemplatePadrao) then
			 ppmSelTemplate.Items[i].Enabled := false
    else
    	ppmSelTemplate.Items[i].Enabled := true;
  end;
end;



function TRptRelatorioMVAEntradas.getTipoCampo( sTabela, sCampo : string ) : string;
begin
	with Q_SQLReport do begin
  	close;
    sql.text := 'select '+sCampo+' from '+SeparaStrings(sTabela,' ',1);
    open;
    if FieldByName(sCampo).DataType in [ftString] then
    	result := 'Texto'
    else if FieldByName(sCampo).DataType in [ftDate] then
    	result := 'Data'
    else if FieldByName(sCampo).DataType in [ftDateTime, ftTimeStamp] then
    	result := 'DataHora'
    else if FieldByName(sCampo).DataType in [ftInteger] then
    	result := 'Número (Integer)'
    else if FieldByName(sCampo).DataType in [ftFloat] then
    	result := 'Número (Float)'
    else if FieldByName(sCampo).DataType in [ftBCD] then
    	result := 'Número (BCD)'
    else
    	result := 'Texto';
    close;
  end;
end;

function TRptRelatorioMVAEntradas.getTipoCampo( sSQL : string ) : string;
begin
	with Q_SQLReport do begin
  	close;
    sql.text := SeparaStrings(sSQL,'where',1);
    open;
    if Fields[0].DataType in [ftString] then
    	result := 'Texto'
    else if Fields[0].DataType in [ftDate] then
    	result := 'Data'
    else if Fields[0].DataType in [ftDateTime, ftTimeStamp] then
    	result := 'DataHora'
    else if Fields[0].DataType in [ftInteger] then
    	result := 'Número (Integer)'
    else if Fields[0].DataType in [ftFloat] then
    	result := 'Número (Float)'
    else if Fields[0].DataType in [ftBCD] then
    	result := 'Número (BCD)'
    else
    	result := 'Texto';
    close;
  end;
end;

procedure TRptRelatorioMVAEntradas.Adicionar2Click(Sender: TObject);
var sCampo, sCampoAdicional, sTabelaAdicional : String;
begin
  inherited;
	DlgAdicionarCampos := TDlgAdicionarCampos.Create(self);
	DlgAdicionarCampos.sReportTitle := FormsComponent.Caption;
  with DlgAdicionarCampos do begin
    cmbTabelas.Items := getListaTabelas;
    with Q_SQLReport do begin
   		close;
    	sql.text := 'select campos,camposadicionais,tabelasadicionais from relatorios '+
     							'where nomeform = :form';
    	parambyname('form').AsString := Self.Name;
    	open;
    	sSelectList := fields[0].AsString+','+fields[1].AsString;
    	sCampoAdicional := fields[1].AsString;
      sTabelaAdicional:= fields[2].AsString;
      slTabelaAdicional := getListaTabelas ( true );
    	close;
    end;
    Consulta := C_Consulta;
  	if ShowModal = mrOk then begin
      if pcTipo.ActivePage = tsCampos then
        AdicionarCampo( cmbTabelas.Text, edCampo.Text, edTituloCampo.Text, getTipoCampo(cmbTabelas.Text,edCampo.Text), edAliasCampo.Text )
      else
      	AdicionarSubSelect( mmSubSelect.lines.text, edAlias.Text, edTitulo.Text, getTipoCampo(mmSubSelect.Lines.Text));
    end;
  	Release;
    DlgAdicionarCampos := nil;
  end;
end;

procedure TRptRelatorioMVAEntradas.Alterar2Click(Sender: TObject);
var sCampo : String;
		Index : integer;
begin
  inherited;
	DlgAdicionarCampos := TDlgAdicionarCampos.Create(self);
  with DlgAdicionarCampos do begin
    cmbAlterarCampo.Items := getListaCampos;
    if cmbAlterarCampo.Items.Count = 0 then begin
    	ShowMessage('Não Existe Nenhum Campo definido pelo Usuário.');
      Free;
      Exit;
    end;
    with Q_SQLReport do begin
   		close;
    	sql.text := 'select campos,camposadicionais,tituloscamposadicionais,tiposcamposadicionais '+
      						'from relatorios '+
     							'where Upper(nomeform) = :form';
    	parambyname('form').AsString := UpperCase(Self.Name);
    	open;
    	sSelectList 		:= fields[0].AsString+','+fields[1].AsString;
    	sCampoAdicional := fields[1].AsString;
      sTituloAdicional:= fields[2].AsString;
      sTipoAdicional  := fields[3].AsString;
    	close;
    end;
    cmbTabelas.Items := getListaTabelas;
    cmbAlterarCampo.ItemIndex := 0;
    Caption := 'Alterar Campos';
    btConfirmar.Caption := 'Alterar';
    pnAlterar.Visible := true;
    Consulta := C_Consulta;
  	if ShowModal = mrOk then begin
      if pcTipo.ActivePage = tsCampos then
				AlterarCampo( cmbAlterarCampo.Text, edCampo.Text, cmbTabelas.Text, edTituloCampo.Text, getTipoCampo(cmbTabelas.Text, iif(edAliasCampo.Text<>'',edAliasCampo.Text,edCampo.Text)), edAliasCampo.Text )
      else
      	AlterarSubSelect( cmbAlterarCampo.Text, mmSubSelect.lines.text, edAlias.Text, edTitulo.Text, getTipoCampo(mmSubSelect.Lines.Text) );
    end;
  	Release;
    DlgAdicionarCampos := nil;
  end;
end;

procedure TRptRelatorioMVAEntradas.Remover2Click(Sender: TObject);
var sCamposAdicionais, sTitulosAdicionais, sTiposAdicionais, sCampo	: string;
begin
  inherited;
	DlgRemoverCampos := TDlgRemoverCampos.Create(self);
  with DlgRemoverCampos do begin
    cmbCampos.Items := getListaCampos;
    if cmbCampos.Items.Count = 0 then begin
    	ShowMessage('Não existe nenhum campo definido pelo usuário.');
      Exit;
    end;
    if ShowModal = mrOk then begin
    	with Q_SQLReport do begin
      	Close;
        Sql.Text := 'select camposadicionais, tituloscamposadicionais, tiposcamposadicionais '+
        						'from relatorios '+
                    'where upper(nomeform) = :form';
        ParamByName('Form').AsString := UpperCase(Self.Name);
        Open;
        sCamposAdicionais := fields[0].AsString;
        sTitulosAdicionais:= fields[1].AsString;
        sTiposAdicionais	:= fields[2].AsString;
        sCampo := SeparaStrings(sCamposAdicionais,';',cmbCampos.ItemIndex+1);
        if pos(' AS ',UpperCase(sCampo))>0 then
        	sCampo := SeparaStrings(sCampo,' as ',2);
        if pos('.',sCampo) > 0 then
        	sCampo := Trim(Copy(sCampo,pos('.',sCampo)+1,500));
        Close;
        SQL.Text := 'update relatorios '+
        						'set camposadicionais = :campo, '+
                    '    tituloscamposadicionais = :titulo, '+
                    '    tiposcamposadicionais = :tipo '+
                    'where Upper(nomeform) = :form';
        ParamByName('Form').AsString  := UpperCase(Self.Name);
        ParamByName('Campo').AsString := DeleteString(sCamposAdicionais,';',cmbCampos.ItemIndex+1);
        ParamByName('Titulo').AsString:= DeleteString(sTitulosAdicionais,';',cmbCampos.ItemIndex+1);
        ParamByName('Tipo').AsString 	:= DeleteString(sTiposAdicionais,';',cmbCampos.ItemIndex+1);
				ExecSQL;
        DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
      end;
      C_Consulta.Close;
      RemoverCampo(sCampo);
      btAtualizar.Click;
    end;
    Release;
    DlgRemoverCampos := nil;
  end;
end;

procedure TRptRelatorioMVAEntradas.ExecutarArquivo1Click(Sender: TObject);
var slArquivos : TStringList;
begin
  inherited;
	with DMProject.DlgAbrir do begin
  	DefaultExt := 'ini';
    Filter 	:= 'Arquivos Ini|*.ini';
    Title   := 'Selecione o arquivo para ser executado';
    if Execute then begin
      slArquivos := TStringList.Create;
    	with slArquivos do begin
      	LoadFromFile(FileName);
        if Values['Acao']='' then begin
        	ShowMessage('Este não é um arquivo de execução de relatório válido.');
          Free;
          Exit;
        end;
        if UpperCase(Values['Report'])<>UpperCase(Self.Name) then begin
          ShowMessage('Este arquivo foi definido para o relatório: '+Values['ReportTitle']);
          Exit;
        end;
        if Values['Tipo']='Campo' then begin
        	if (Values['Acao']='I') then
        		AdicionarCampo(Values['Tabela'],Values['Campo'],Values['Titulo'],Values['TipoDados'],Values['Alias'])
        	else if Values['Acao']='A' then
						AlterarCampo(Values['AlterarCampo'],Values['Campo'],Values['Tabela'],Values['Titulo'],Values['TipoDados'],Values['Alias']);
        end else begin
        	if (Values['Acao']='I') then
        		AdicionarSubSelect(Values['Tabela'],Values['Campo'],Values['Titulo'],Values['TipoDados'])
        	else if Values['Acao']='A' then
						AlterarSubSelect(Values['AlterarCampo'],Values['Tabela'],Values['Campo'],Values['Titulo'],Values['TipoDados']);
        end;
        Free;
      end;
    end;
  end;
end;

procedure TRptRelatorioMVAEntradas.btMostrarCabClick(Sender: TObject);
begin
  inherited;
	dbgConsulta.ShowHeader := btMostrarCab.Checked;
end;

procedure TRptRelatorioMVAEntradas.btLayoutMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var i : integer;
begin
  inherited;
	if TTS_SpeedButton(Sender).Font.Color <> clBlue then begin
  	TTS_SpeedButton(Sender).Font.Color := clBlue;
    TS_Panel1.Tag := 1;
    for i:=0 to TS_Panel1.ControlCount-1 do
    	if TS_Panel1.Controls[i] is TTS_SpeedButton then
      	if TS_Panel1.Controls[i].Name <> TTS_SpeedButton(Sender).Name then
	       	TTS_SpeedButton(TS_Panel1.Controls[i]).Font.Color := clWindowText;
  end;
end;

procedure TRptRelatorioMVAEntradas.dbgConsultaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin
  inherited;
	if TS_Panel1.Tag = 1 then begin
   	for i:=0 to TS_Panel1.ControlCount-1 do
   		if TS_Panel1.Controls[i] is TTS_SpeedButton then
     		TTS_SpeedButton(TS_Panel1.Controls[i]).Font.Color := clWindowText;
   	TS_Panel1.Tag := 0;
  end;
end;

procedure TRptRelatorioMVAEntradas.ConfigurarPgina1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.ConfigurarPagina( self );
end;

procedure TRptRelatorioMVAEntradas.LayoutdeImpresso1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.LayoutImpressao( self );
end;

procedure TRptRelatorioMVAEntradas.ConfigurarImpressora1Click(Sender: TObject);
begin
  inherited;
	dbgConsulta.ConfigurarImpressora( self );
end;

procedure TRptRelatorioMVAEntradas.FormVisible(var Msg: TMessage);
var
  T_Letras: TInterlacedTransition;
begin
  T_Letras := TInterlacedTransition.Create(nil);
  with T_Letras do begin
    Milliseconds := 800;
    SmoothingLevel := 5;
    Style := 1;
    SubStyle := 9;

    Application.ProcessMessages;

    Prepare(lbCaption.Parent,lbCaption.BoundsRect);
    lbCaption.Visible := true;
    if Prepared then begin
      Execute;
      UnPrepare;
    end;
  end;
  T_Letras.Free;
end;

procedure TRptRelatorioMVAEntradas.GridPrinterStartGenerateReport(Sender: TObject;
  AReportLink: TBasedxReportLink);
var sLadoEsquerdo, sLadoDireito, sImpressora : string;  
begin
  inherited;

  if (DMProject.Logo <> nil) and (((DMProject.Logo.Height) * 315) > AReportLink.PrinterPage.Margins.Top) then
    AReportLink.PrinterPage.Margins.Top := (DMProject.Logo.Height) * 315;

  GridPrinterLink.PrinterPage.Header := 5350;
  GridPrinterLink.PrinterPage.Margins.Top := 31200;

  sCabecalho := DMProject.getCabecalho( Name );
  if sCabecalho = 'PT' then
		GridPrinterLink.OnCustomDrawPageHeader := nil
  else if sCabecalho = 'SC' then begin
		GridPrinterLink.OnCustomDrawPageHeader := nil;
    GridPrinterLink.PrinterPage.Margins.Top := 0;
	end;

  with TTS_QDBGrid(GridPrinterLink.Component) do begin
    GridPrinterLink.Font.Assign( Font );
    GridPrinterLink.FooterFont.Assign(TS_SummaryFooterFont);
    GridPrinterLink.GroupNodeFont.Assign( GroupNodeFont );
    GridPrinterLink.HeaderFont.Assign( HeaderFont );

    GridPrinterLink.Color       	:= Color;
    GridPrinterLink.HeaderColor 	:= HeaderColor;
    GridPrinterLink.GroupNodeColor:= GroupNodeColor;
    if ShowGrid then
    	GridPrinterLink.GridLineColor := GridLineColor
    else
 			GridPrinterLink.GridLineColor := clWhite;

  end;

	with TTS_QDBGrid(AReportLink.Component) do begin
    if not ShowGrid then
      GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoGrid]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoGrid];

    if not ShowHeader then
      GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoHeaders]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoHeaders];

    if edgoPreview in OptionsView then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoPreviewGrid]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoPreviewGrid];

    GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoRowFooterGrid];

    if ShowRowFooter then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoRowFooters]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoRowFooters];

    if ShowSummaryFooter then
    	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoFooters]
    else
    	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoFooters];

    if ShowBands then
     	GridPrinterLink.Options   := GridPrinterLink.Options + [tlpoBands]
    else
     	GridPrinterLink.Options   := GridPrinterLink.Options - [tlpoBands];
  end;

  slRect := TStringList.Create;
  slRectColunas := TStringList.Create;
	with Q_SQLReport do begin
  	close;
    sql.text := 'select esquerdo, direito from cabecalho';
    open;
    sLadoEsquerdo := fields[0].asString;
    sLadoDireito  := fields[1].asString;
  end;
  GridPrinter.PreviewOptions.WindowState := wsMaximized;

  DMProject.Interpreta( sLadoEsquerdo );
  DMProject.Interpreta( sLadoDireito );
	DMProject.sCabLadoEsquerdo 	:= DMProject.FormataCabecalho( RichEdit, sLadoEsquerdo );
  DMProject.sCabLadoDireito 	:= DMProject.FormataCabecalho( RichEdit, sLadoDireito );

end;

procedure TRptRelatorioMVAEntradas.GridPrinterBeforeDesignReport(Sender: TObject;
  AReportLink: TBasedxReportLink;
  ADesignWindow: TAbstractdxReportLinkDesignWindow);
begin
  inherited;
	GridPrinter.OnStartGenerateReport := nil;
end;

procedure TRptRelatorioMVAEntradas.GridPrinterDesignReport(Sender: TObject;
  AReportLink: TBasedxReportLink; var ADone: Boolean);
begin
  inherited;
  if ADone then
  	GridPrinter.RebuildReport(AReportLink);
	GridPrinter.OnStartGenerateReport := GridPrinterStartGenerateReport;
end;

procedure TRptRelatorioMVAEntradas.ConfigurarRelatrio1Click(Sender: TObject);
var i : integer;
begin
  inherited;
	DlgConfiguraRelatorio := TDlgConfiguraRelatorio.Create( self );
  with DlgConfiguraRelatorio do begin
    edTitulo.Text 		:= Self.FormsComponent.Caption;
    cmbCabecalho.Text	:= DMProject.getCabecalho( Self.Name );
  	edCopias.Value 		:= DMProject.getCopias( Self.Name );
  	with cmbImpressora do begin
  		Values.Clear;
    	Descriptions.Clear;
    	for i:=0 to Printer.Printers.Count-1 do begin
    		Values.Add(Printer.Printers[i]);
      	Descriptions.Add(Printer.Printers[i]);
    	end;
      Text:= DMProject.getImpressora( Self.Name );
  	end;
    if ShowModal = mrOk then
    	GravaRelatorio( Self.Name, edTitulo.Text, cmbCabecalho.Text, cmbImpressora.Text, edCopias.IntValue );
  	Release;
    DlgConfiguraRelatorio := nil;
  end;
end;

procedure TRptRelatorioMVAEntradas.GravaRelatorio( sRelatorio, sTitulo, sCabecalho, sImpressora : string; nCopias : integer );
begin
	with Q_SQLReport do begin
  	close;
    sql.text := 'update relatorios '+
    						'set titulo = :titulo, tipocabecalho = :cabecalho, copias = :copias '+
                'where nomeform = :form';
  	parambyname('form').AsString := sRelatorio;
    parambyname('titulo').AsString := sTitulo;
    parambyname('cabecalho').AsString := sCabecalho;
    parambyname('Copias').AsInteger := nCopias;
    ExecSQL;
    close;
    sql.text := 'update relatoriosmaq '+
    						'set impressora = :impressora '+
                'where nomeform = :form and maquina = :maquina';
    parambyname('form').AsString := sRelatorio;
    parambyname('impressora').AsString := sImpressora;
    parambyname('maquina').AsString := getNomeMaquina;
    ExecSQL;
    if RowsAffected <= 0 then begin
    	close;
      sql.text := 'insert into relatoriosmaq '+
      						'(nomeform, maquina, impressora) values '+
                  '(:form, :maquina, :impressora)';
    	parambyname('form').AsString := sRelatorio;
    	parambyname('impressora').AsString := sImpressora;
    	parambyname('maquina').AsString := getNomeMaquina;
      ExecSQL;
    end;
    DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
end;

procedure TRptRelatorioMVAEntradas.GetFULLSELECT;
Begin
  with Q_FullSelect do Begin
   Sql.Text := 'SELECT FULLSELECT FROM RELATORIOS where upper(nomeform) = :form ';
   parambyname('form').AsString := UpperCase(Self.name);
   Open;
   cbFullSelect.Checked := True;
   If (FieldByName('FULLSELECT').AsString = 'N') Or (FieldByName('FULLSELECT').IsNull) Then
     cbFullSelect.Checked := False;
   Close;
  End;
End;


procedure TRptRelatorioMVAEntradas.Atualizar;
var
  sTipoOperacao: String;
begin
  with C_Consulta do begin Close;
        CommandText :=  ' select   '+
                        ' e.numero,'+
                        ' e.data,  '+
                        ' i.codigo,'+
                        ' i.descricao,      '+
                        ' i.clasfiscal,     '+
                        ' ei.quantidade,    '+
                        ' im.ncmsh,'+
                        ' ei.aliqicms,      '+
                        ' ei.desconto,      '+
                        ' ei.basecalcicmsprod,       '+
                        ' ei.valoricmsprod, '+
                        ' case     '+
                        ' ei.aliqicms       '+
                        ' when 4 then im.mva4        '+
                        ' when 7 then im.mva7        '+
                        ' when 12 then im.mva12      '+
                        ' when 17 then im.mvaoriginal'+
                        ' else 0 end as valormva,    '+
                        ' ((ei.basecalcicmsprod - COALESCE(EI.desconto,0) + ((ei.basecalcicmsprod - COALESCE(EI.desconto,0)) * (case  '+
                        ' ei.aliqicms       '+
                        ' when 4 then im.mva4        '+
                        ' when 7 then im.mva7        '+
                        ' when 12 then im.mva12      '+
                        ' when 17 then im.mvaoriginal'+
                        ' else 0 end /100.00)))) as BaseCalculoST,     '+
                        ' (((ei.basecalcicmsprod - COALESCE(EI.desconto,0))+ ((ei.basecalcicmsprod - COALESCE(EI.desconto,0)) * (case '+
                        ' ei.aliqicms       '+
                        ' when 4 then im.mva4        '+
                        ' when 7 then im.mva7        '+
                        ' when 12 then im.mva12      '+
                        ' when 17 then im.mvaoriginal'+
                        ' else 0 end /100.00)))      '+
                        ' * (ei.aliqicms/100.00)) - ei.valoricmsprod as valorimpostocalculado     '+
                        ' from itens i      '+
                        ' inner join itensmva im on im.itemmva = i.itemmva      '+
                        ' inner join entradasitens ei on ei.item = i.item       '+
                        ' inner join entradas e on e.entrada = ei.entrada       '+
                        ' where e.tipomovimento = 4 and '+
                        ' e.data >= :datai and e.data <= :dataF ';

      	Params.ParamByName('datai').AsDateTime := DataI.Date;
       	Params.ParamByName('dataf').AsDateTime := DataF.Date;
        Open;
  end;
end;

procedure TRptRelatorioMVAEntradas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.Date := (Date - 30);
  DataF.Date := Date;
end;

procedure TRptRelatorioMVAEntradas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.


