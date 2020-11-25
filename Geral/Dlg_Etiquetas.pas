unit Dlg_Etiquetas;                                                       

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, ComCtrls, TS_PageControl, FormsComponent, TransEff,
  teTimed, teMasked, teDiagon, teForm, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, TS_RadioButton, dxCntner, dxEditor, dxEdLib, TS_Edit,
  dxExEdtr, TS_CalcEdit, TS_SpinEdit, TS_ListBox, dxfProgressBar, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  Db, DBClient, IBCustomDataSet, IBQuery, Provider, TS_Memo, CheckLst,
  TS_CheckListBox, DBCtrls, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxPSGlbl, TS_Shape, TS_DateTimePicker, TS_ButtonEdit,
  TS_EditFavorecido, TS_ComboBox, inifiles, dxPrnPg, dxPrnDev, TS_CheckBox,
  teSlide, teWipe, Variants, dxPSUtl, dxPSEngn, dxBkgnd, dxWrap, BTOdeum,
  Placemnt, teBlend, teIntrlc, teCircle,ppRichTx, ppBands,
  ppClass, ppCtrls, ppPrnabl, ppStrtch, ppRegion, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, TS_PopupEdit,
  TS_PopupFiltrarItens, TS_EditPayroll;

type
  TDlgEtiquetas = class(TFrmModeloCadastros)
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsNovaExistente: TTS_TabSheet;
    tsNova: TTS_TabSheet;
    tsTipoEtiqueta: TTS_TabSheet;
    tsManualmente: TTS_TabSheet;
    tsComandoSQL: TTS_TabSheet;
    rgNova: TTS_RadioButton;
    rgExistente: TTS_RadioButton;
    TS_Label5: TTS_Label;
    TS_Label4: TTS_Label;
    edNome: TTS_Edit;
    rgClientes: TTS_RadioButton;
    rgFornecedores: TTS_RadioButton;
    rgFuncionarios: TTS_RadioButton;
    rgEmpresa: TTS_RadioButton;
    rgManualmente: TTS_RadioButton;
    rgItens: TTS_RadioButton;
    rgComandoSQL: TTS_RadioButton;
    Label1: TLabel;
    tsCampos: TTS_TabSheet;
    tsClientes: TTS_TabSheet;
    tsItens: TTS_TabSheet;
    tsModeloEtiqueta: TTS_TabSheet;
    tsModelo: TTS_TabSheet;
    tsLayout: TTS_TabSheet;
    rgClientesAtivos: TTS_RadioButton;
    rgClientesEmDia: TTS_RadioButton;
    rgSelecionarClientes: TTS_RadioButton;
    lbClientes: TTS_ListBox;
    rgItensInventario: TTS_RadioButton;
    rgSelecionarItens: TTS_RadioButton;
    rgItensServico: TTS_RadioButton;
    TS_Label11: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    edColunas: TTS_SpinEdit;
    TS_Label16: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    edLargura: TTS_SpinEdit;
    edEspVertical: TTS_SpinEdit;
    edEspHorizontal: TTS_SpinEdit;
    edME: TTS_SpinEdit;
    edMS: TTS_SpinEdit;
    rgModeloExistente: TTS_RadioButton;
    rgNovoModelo: TTS_RadioButton;
    TS_Label21: TTS_Label;
    edModelo: TTS_Edit;
    DBLayout: TTS_QDBGrid;
    tsCopias: TTS_TabSheet;
    tsFinal: TTS_TabSheet;
    btEtiquetas: TTS_SpeedButton;
    lbMensagem: TTS_Label;
    Barra: TdxfProgressBar;
    lbConcluido: TTS_Label;
    C_Layout: TClientDataSet;
    C_LayoutDS: TDataSource;
    TS_Label27: TTS_Label;
    TS_Label28: TTS_Label;
    TS_Label30: TTS_Label;
    TS_Label31: TTS_Label;
    TS_Label32: TTS_Label;
    tsVisualizarGrid: TTS_TabSheet;
    DBEtiquetas: TTS_QDBGrid;
    C_Etiquetas: TClientDataSet;
    P_Etiquetas: TDataSetProvider;
    Q_Etiquetas: TIBQuery;
    C_EtiquetasDS: TDataSource;
    mmManualmente: TTS_Memo;
    mmSQL: TTS_Memo;
    Q_SQL: TIBQuery;
    tsEtiquetaExistente: TTS_TabSheet;
    TS_Label34: TTS_Label;
    cmbCampos: TTS_CheckListBox;
    dxPrinter: TdxComponentPrinter;
    LinkEtiquetas: TdxDBGridReportLink;
    TS_Panel1: TTS_Panel;
    TS_Shape2: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label8: TTS_Label;
    edAltura: TTS_SpinEdit;
    TS_Label15: TTS_Label;
    edMI: TTS_SpinEdit;
    TS_Label19: TTS_Label;
    TS_Label24: TTS_Label;
    TS_Label26: TTS_Label;
    TS_Image3: TTS_Image;
    TS_Image5: TTS_Image;
    TS_Shape1: TTS_Shape;
    TS_Image6: TTS_Image;
    TS_Shape5: TTS_Shape;
    dxfLabel1: TdxfLabel;
    TS_Image7: TTS_Image;
    TS_Image8: TTS_Image;
    dxfLabel2: TdxfLabel;
    TS_Shape6: TTS_Shape;
    TS_Image9: TTS_Image;
    TS_Image10: TTS_Image;
    dxfLabel3: TdxfLabel;
    TS_Image11: TTS_Image;
    TS_Image12: TTS_Image;
    TS_Image13: TTS_Image;
    dxfLabel4: TdxfLabel;
    TS_Shape8: TTS_Shape;
    TS_Image14: TTS_Image;
    TS_Shape9: TTS_Shape;
    TS_Image15: TTS_Image;
    TS_Label29: TTS_Label;
    TS_Label33: TTS_Label;
    TS_Shape10: TTS_Shape;
    TS_Image16: TTS_Image;
    TS_Image17: TTS_Image;
    rgClientesEmAtraso: TTS_RadioButton;
    TS_Shape11: TTS_Shape;
    tsFornecedores: TTS_TabSheet;
    tsFuncionarios: TTS_TabSheet;
    rgFornecedoresAtivos: TTS_RadioButton;
    rgFornecedoresContasEmAberto: TTS_RadioButton;
    rgSelecionarFornecedores: TTS_RadioButton;
    lbFornecedores: TTS_ListBox;
    rgFornecedoresPedidosEmAberto: TTS_RadioButton;
    TS_Shape12: TTS_Shape;
    rgFuncionariosAtivos: TTS_RadioButton;
    rgFuncionariosPayroll: TTS_RadioButton;
    rgSelecionarFuncionarios: TTS_RadioButton;
    lbFuncionarios: TTS_ListBox;
    rgFuncionariosCliente: TTS_RadioButton;
    TS_Shape13: TTS_Shape;
    rgItensCadastrados: TTS_RadioButton;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label37: TTS_Label;
    edCliente: TTS_EditFavorecido;
    P_PayRoll: TDataSetProvider;
    cmbModelo: TTS_ComboBox;
    TS_Label25: TTS_Label;
    TS_Label38: TTS_Label;
    edAlturaPagina: TTS_SpinEdit;
    edLarguraPagina: TTS_SpinEdit;
    rgRetrato: TTS_RadioButton;
    rgPaisagem: TTS_RadioButton;
    TS_Label39: TTS_Label;
    edMD: TTS_SpinEdit;
    TS_Label40: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    clbEtiquetas: TTS_CheckListBox;
    TS_Label41: TTS_Label;
    TS_Label42: TTS_Label;
    TS_Label43: TTS_Label;
    TS_Label44: TTS_Label;
    Label3: TLabel;
    cmbCamposDicionario: TTS_CheckListBox;
    TS_Label45: TTS_Label;
    FormTransitions: TFormTransitions;
    TransitionList: TTransitionList;
    Avancar: TSlideTransition;
    TS_Label46: TTS_Label;
    TS_Label47: TTS_Label;
    TS_Label48: TTS_Label;
    edAntes: TTS_Edit;
    edDepois: TTS_Edit;
    lbCampoSelecionado: TTS_Label;
    ckbQtdeEstoque: TTS_CheckBox;
    edCopias: TTS_SpinEdit;
    TS_Label23: TTS_Label;
    ckbLarguraAutomatica: TTS_CheckBox;
    ckbAlturaAutomatica: TTS_CheckBox;
    lbLinhasPorPagina: TTS_Label;
    edLinhasPorPagina: TTS_SpinEdit;
    ckbMostrarBorda: TTS_CheckBox;
    TS_Label2: TTS_Label;
    rgClientesCidade: TTS_RadioButton;
    rgClientesEstado: TTS_RadioButton;
    edCidade: TTS_Edit;
    cmbEstado: TTS_LookupComboBox;
    C_UFs: TClientDataSet;
    P_UFs: TDataSetProvider;
    Q_UFs: TIBQuery;
    C_UFsDS: TDataSource;
    clbNaoImprimir: TTS_CheckListBox;
    TS_Label50: TTS_Label;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_Label51: TTS_Label;
    edMT: TTS_SpinEdit;
    TS_Label52: TTS_Label;
    TS_Label53: TTS_Label;
    TS_Label54: TTS_Label;
    TS_Image2: TTS_Image;
    TS_Image4: TTS_Image;
    TS_Shape7: TTS_Shape;
    rgClientesAniversariantes: TTS_RadioButton;
    cmbPeriodo: TTS_ComboBox;
    TS_Shape16: TTS_Shape;
    TS_Image18: TTS_Image;
    dxfLabel5: TdxfLabel;
    TS_Image19: TTS_Image;
    TS_Shape17: TTS_Shape;
    edST: TTS_SpinEdit;
    TS_Label55: TTS_Label;
    TS_Label56: TTS_Label;
    Label4: TLabel;
    TS_Shape18: TTS_Shape;
    TS_Shape19: TTS_Shape;
    TS_Label57: TTS_Label;
    TS_Label58: TTS_Label;
    TS_Label59: TTS_Label;
    TS_Label60: TTS_Label;
    lbDimensoes: TTS_Label;
    lbColunas: TTS_Label;
    lbTamanhoPapel: TTS_Label;
    lbTipoEtiqueta: TTS_Label;
    TS_Label61: TTS_Label;
    TS_Label62: TTS_Label;
    lbEtiquetasPorPagina: TTS_Label;
    lbUltimaVez: TTS_Label;
    lbUsuariojj: TTS_Label;
    lbUsuario: TTS_Label;
    rgSaidas: TTS_RadioButton;
    rgEntradas: TTS_RadioButton;
    edSaida: TTS_Edit;
    edEntrada: TTS_Edit;
    TS_Label63: TTS_Label;
    cmbOrdem: TTS_ComboBox;
    Shape1: TShape;
    tsCamposAdicionais: TTS_TabSheet;
    TS_Label65: TTS_Label;
    btMais: TTS_SpeedButton;
    edCampo: TTS_Edit;
    lbCamposAdicionais: TTS_ListBox;
    TS_SpeedButton4: TTS_SpeedButton;
    ppmCamposChave: TTS_PopupMenu;
    NomedaEmpresa1: TMenuItem;
    EnderecodaEmpresa1: TMenuItem;
    TS_Shape20: TTS_Shape;
    CidadeEmpresa1: TMenuItem;
    EstadoEmpresa1: TMenuItem;
    Fone1Empresa1: TMenuItem;
    Fone2Empresa1: TMenuItem;
    FaxEmpresa1: TMenuItem;
    EmailEmpresa1: TMenuItem;
    DataAtual1: TMenuItem;
    N1: TMenuItem;
    DataExtenso1: TMenuItem;
    Hora1: TMenuItem;
    Usuario1: TMenuItem;
    TS_Label66: TTS_Label;
    TS_Label67: TTS_Label;
    pn2: TTS_MaxPanel;
    pn1: TTS_MaxPanel;
    lbIntroducao: TdxfLabel;
    Alfa: TBlendTransition;
    Texto: TInterlacedTransition;
    TS_MaxPanel3: TTS_MaxPanel;
    TS_MaxPanel4: TTS_MaxPanel;
    lbtsNovaExistente: TdxfLabel;
    Abertura: TCircleTransition;
    lbtsTipoEtiqueta: TdxfLabel;
    TS_MaxPanel5: TTS_MaxPanel;
    TS_MaxPanel6: TTS_MaxPanel;
    lbtsClientes: TdxfLabel;
    TS_MaxPanel7: TTS_MaxPanel;
    TS_MaxPanel8: TTS_MaxPanel;
    lbtsFornecedores: TdxfLabel;
    TS_MaxPanel9: TTS_MaxPanel;
    TS_MaxPanel10: TTS_MaxPanel;
    lbtsFuncionarios: TdxfLabel;
    TS_MaxPanel11: TTS_MaxPanel;
    TS_MaxPanel12: TTS_MaxPanel;
    lbtsItens: TdxfLabel;
    TS_MaxPanel13: TTS_MaxPanel;
    TS_MaxPanel14: TTS_MaxPanel;
    lbtsManualmente: TdxfLabel;
    TS_MaxPanel15: TTS_MaxPanel;
    TS_MaxPanel16: TTS_MaxPanel;
    lbtsComandoSQL: TdxfLabel;
    TS_MaxPanel17: TTS_MaxPanel;
    TS_MaxPanel18: TTS_MaxPanel;
    lbtsCampos: TdxfLabel;
    TS_MaxPanel19: TTS_MaxPanel;
    TS_MaxPanel20: TTS_MaxPanel;
    TS_Shape15: TTS_Shape;
    lbtsCamposAdicionais: TdxfLabel;
    TS_MaxPanel21: TTS_MaxPanel;
    TS_MaxPanel22: TTS_MaxPanel;
    lbtsCopias: TdxfLabel;
    TS_MaxPanel23: TTS_MaxPanel;
    TS_MaxPanel24: TTS_MaxPanel;
    lbtsModelo: TdxfLabel;
    TS_MaxPanel25: TTS_MaxPanel;
    TS_MaxPanel26: TTS_MaxPanel;
    lbtsModeloEtiqueta: TdxfLabel;
    TS_MaxPanel27: TTS_MaxPanel;
    TS_MaxPanel28: TTS_MaxPanel;
    lbtsLayout: TdxfLabel;
    TS_MaxPanel29: TTS_MaxPanel;
    TS_MaxPanel30: TTS_MaxPanel;
    lbtsFinal: TdxfLabel;
    TS_MaxPanel31: TTS_MaxPanel;
    TS_MaxPanel32: TTS_MaxPanel;
    tsTipo: TTS_TabSheet;
    lbtsTipo: TdxfLabel;
    TS_MaxPanel33: TTS_MaxPanel;
    TS_MaxPanel34: TTS_MaxPanel;
    rgCartasEtiquetas: TTS_RadioButton;
    rgCartas: TTS_RadioButton;
    rgEtiquetas: TTS_RadioButton;
    tsCartas: TTS_TabSheet;
    lbtsCartas: TdxfLabel;
    TS_MaxPanel1: TTS_MaxPanel;
    TS_MaxPanel2: TTS_MaxPanel;
    rgNovaCarta: TTS_RadioButton;
    rgCartaAniversariantes: TTS_RadioButton;
    rgCartaClientesEmAtraso: TTS_RadioButton;
    rgCartaClientesComCredito: TTS_RadioButton;
    rgAbrirCarta: TTS_RadioButton;
    rgCartaClientesDevolvidos: TTS_RadioButton;
    rgCartaClientesEmDia: TTS_RadioButton;
    btModificarCarta: TTS_SpeedButton;
    rgClientesGrupo: TTS_RadioButton;
    rgClientesComChequesDev: TTS_RadioButton;
    cmbGrupo: TTS_LookupComboBox;
    rgClientesComCredito: TTS_RadioButton;
    cmbTextos: TTS_LookupComboBox;
    Q_TextosDS: TDataSource;
    Q_Textos: TIBQuery;
    Q_TextosTEXTO: TIntegerField;
    Q_TextosTITULO: TIBStringField;
    Q_TextosARQUIVO: TIBStringField;
    Q_GruposClienteDS: TDataSource;
    Q_GruposCliente: TIBQuery;
    Q_GruposClienteGRUPOCLIENTE: TIntegerField;
    Q_GruposClienteDESCRICAO: TIBStringField;
    tsNovaCarta: TTS_TabSheet;
    rgCartaCliente: TTS_RadioButton;
    rgCartaFornecedor: TTS_RadioButton;
    rgCartaFuncionario: TTS_RadioButton;
    lbtsNovaCarta: TdxfLabel;
    TS_MaxPanel35: TTS_MaxPanel;
    TS_MaxPanel36: TTS_MaxPanel;
    btCartas: TTS_SpeedButton;
    ckbCabecalho: TTS_CheckBox;
    dbCarta: TppDBPipeline;
    rbCarta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    rtTexto: TppRichText;
    Q_SQLDS: TDataSource;
    btNovaCarta: TTS_SpeedButton;
    cmbAniversario: TTS_ComboBox;
    Voltar: TSlideTransition;
    lbCarta: TTS_Label;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    TS_SpeedButton3: TTS_SpeedButton;
    ppmCampos: TTS_PopupMenu;
    lbTabelaPreco: TTS_Label;
    cmbTabelaPreco: TTS_LookupComboBox;
    C_TabelaPrecoDS: TDataSource;
    Q_TabelaPreco: TIBQuery;
    Q_TabelaPrecoTABELAPRECO: TIntegerField;
    Q_TabelaPrecoDESCRICAO: TIBStringField;
    rgFuncionariosPeriodo: TTS_RadioButton;
    DataIFunc: TTS_DateTimePicker;
    DataFFunc: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    clbPayrolls: TTS_CheckListBox;
    shpPayrolls: TTS_Shape;
    Q_Payrolls: TIBQuery;
    C_Payrolls: TClientDataSet;
    P_Payrolls: TDataSetProvider;
    C_PayrollsPAYROLL: TIntegerField;
    C_PayrollsDESCRICAO: TStringField;
    btSetaParaBaixo: TTS_SpeedButton;
    btSetaParaCima: TTS_SpeedButton;
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure rgModeloExistenteClick(Sender: TObject);
    procedure tsLayoutShow(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
    procedure edEspVerticalChange(Sender: TObject);
    procedure edLarguraChange(Sender: TObject);
    procedure rgSelecionarClientesClick(Sender: TObject);
    procedure rgSelecionarFornecedoresClick(Sender: TObject);
    procedure rgSelecionarFuncionariosClick(Sender: TObject);
    procedure tsCamposShow(Sender: TObject);
    procedure rgClientesClick(Sender: TObject);
    procedure tsFinalShow(Sender: TObject);
    procedure tsModeloShow(Sender: TObject);
    procedure cmbModeloChange(Sender: TObject);
    procedure dxPrinterPageSetup(Sender: TObject;
      AReportLink: TBasedxReportLink; ADone: Boolean);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure tsEtiquetaExistenteShow(Sender: TObject);
    procedure clbEtiquetasClickCheck(Sender: TObject);
    procedure TS_Label44Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure pgAssistenteChange(Sender: TObject);
    procedure DBLayoutDragEndHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; P: TPoint;
      var NewPosInfo: TdxHeaderPosInfo; var Accept: Boolean);
    procedure cmbCamposDicionarioClickCheck(Sender: TObject);
    procedure cmbCamposClickCheck(Sender: TObject);
    procedure TS_Label45Click(Sender: TObject);
    procedure pgAssistenteChangingToTab(Sender: TObject; tab: Integer;
      var AllowChange: Boolean);
    procedure DBLayoutColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure DBLayoutColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure edAntesChange(Sender: TObject);
    procedure edDepoisChange(Sender: TObject);
    procedure ckbQtdeEstoqueChange(Sender: TObject);
    procedure LinkEtiquetasCustomDrawCell(Sender: TBasedxReportLink;
      ACanvas: TCanvas; ABoundsRect, AClientRect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
      var ADone: Boolean);
    procedure mmManualmenteChange(Sender: TObject);
    procedure mmManualmenteKeyPress(Sender: TObject; var Key: Char);
    procedure edColunasChange(Sender: TObject);
    procedure ckbLarguraAutomaticaChange(Sender: TObject);
    procedure ckbAlturaAutomaticaChange(Sender: TObject);
    procedure edLinhasPorPaginaChange(Sender: TObject);
    procedure tsModeloEtiquetaShow(Sender: TObject);
    procedure tsIntroducaoShow(Sender: TObject);
    procedure TS_Label41Click(Sender: TObject);
    procedure tsClientesShow(Sender: TObject);
    procedure edEspHorizontalChange(Sender: TObject);
    procedure edAlturaPaginaChange(Sender: TObject);
    procedure edLarguraPaginaChange(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure DBLayoutCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure TS_Label42Click(Sender: TObject);
    procedure TS_Label43Click(Sender: TObject);
    procedure clbEtiquetasClick(Sender: TObject);
    procedure edModeloExit(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure cmbOrdemChange(Sender: TObject);
    procedure DBLayoutColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure TS_SpeedButton4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EnderecodaEmpresa1Click(Sender: TObject);
    procedure btMaisClick(Sender: TObject);
    procedure edCampoKeyPress(Sender: TObject; var Key: Char);
    procedure lbCamposAdicionaisClick(Sender: TObject);
    procedure lbCamposAdicionaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TS_Label67Click(Sender: TObject);
    procedure AberturaAfterTransition(Sender: TObject);
    procedure AlfaAfterTransition(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure rbCartaBeforePrint(Sender: TObject);
    procedure rtTextoPrint(Sender: TObject);
    procedure btCartasClick(Sender: TObject);
    procedure btNovaCartaClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btModificarCartaClick(Sender: TObject);
    procedure rgCartaAniversariantesClick(Sender: TObject);
    procedure rgNovaCartaClick(Sender: TObject);
    procedure Q_TextosFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmbAniversarioChange(Sender: TObject);
    procedure lbCartaClick(Sender: TObject);
    procedure DBLayoutContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure TS_SpeedButton3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PopupFiltroItensChange(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btSetaParaBaixoClick(Sender: TObject);
    procedure btSetaParaCimaClick(Sender: TObject);
  private
    { Private declarations }
    LabelEff : TdxfLabel;
    slCamposConsulta : TStringList;
    sCampoSelecionado, sSelecionados, sSelectCliente, sSelectCount,
    sSelectFornecedores, sSelectFuncionarios, sSelectItens : string;
    sNovoModelo, sNovaEtiqueta : string;
    sGrupos, sFabricantes : string;
    sTexto : string;
    nPag : integer;
    procedure GeraLayout( DBGrid : TTS_QDBGrid; Bandas : integer; sConfiguracao : string = '');
    procedure GerarEtiquetas( Colunas : integer );
    function 	VerificaSQL: boolean;
    procedure GeraSQL( sComandoSQL : string = ''; sOrdem : string = ''; sTitulos : string = '');
    procedure AtualizaProgresso(sMsg: string; nInc: integer);
    procedure AbreModelo( sNomeModelo : string );
    procedure GravaModelo( sNomeModelo : string );
    procedure AbreEtiquetas(sNomeEtiqueta: string; sComandoSQL : string = ''; sCondicao : string = '');
    procedure GravaEtiqueta(sNomeEtiqueta: string);
    procedure SetPageLink;
    function 	getTipoSelecionado: string;
    function 	getConfiguracao: string;
    procedure SetTipo(sTipo : string);
    procedure SetCondicao(Condicao,ComandoSQL,Manualmente: string);
    function 	getFavorecidos(sFav: string): string;
    function 	getItens(sItens: string): string;
    procedure SetCamposDicionario(i: integer);
    procedure SetCampos(i: integer);
    function FormataCampo(Campo: TField): string;
    procedure CarregaArquivosDeModelo;
    procedure CarregaArquivosDeEtiqueta;
    function getCaption(sCaption: string): string;
    function getCaptionAntes(sCaption: string): string;
    function getCaptionDepois(sCaption: string): string;
    function getFabricantes(sFabricantes: string): string;
    function getGrupos(sGrupos: string): string;
    procedure LarguraAutomatica;
    function getColunasNaoImprimir : string;
    procedure AlturaAutomatica;
    procedure MostraCaracteristica(Index: integer);
    function GetLargura : integer;
    function GetLarguraMM(LargPixels: integer): double;
    function SetDecimal(sTexto: string): string;
    function getInvoices( sInvoices : string; bRetirarAspas : boolean = false ) : string;
    function GetColumnRealWidth(ATreeList: TCustomdxTreeList;
      AColumn: Integer): Integer;
    function getPalavraChave(sConteudo: string): string;
    procedure MenuItemClick(sender: TObject);
    function getCampo(sCampo : string): string;
    function ValidaTipo: boolean;
    function GetAltura: integer;
  public
    { Public declarations }
  end;

var
  DlgEtiquetas: TDlgEtiquetas;
const
  AjusteHorizontal = 1;
  AjusteVertical   = 0;//0.15; //0.26;
  Conversor				 = 3.779511;

implementation

uses DM_Projeto, funcoes, teRender, Util2Ingles;

{$R *.DFM}

function TDlgEtiquetas.ValidaTipo : boolean;
begin
     result := false;
      if (rgClientes.Checked) and (rgSelecionarClientes.Checked) and (lbClientes.Items.Count=0) then begin
      	DlgMsg.ShowMsg(929,['(selecionar) os clientes']);
        Exit;
			end else if (rgClientes.Checked) and (rgClientesCidade.Checked) and (Trim(edCidade.Text)='') then begin
      	DlgMsg.ShowMsg(929,['a cidade']);
        edCidade.SetFocus;
        Exit;
			end else if (rgClientes.Checked) and (rgClientesEstado.Checked) and (Trim(cmbEstado.Text)='') then begin
      	DlgMsg.ShowMsg(929,['o bairro']);
        cmbEstado.SetFocus;
        Exit;
			end else if (rgClientes.Checked) and (rgClientesAniversariantes.Checked) and (Trim(cmbPeriodo.Text)='') then begin
      	DlgMsg.ShowMsg(929,['o período']);
        cmbPeriodo.SetFocus;
        Exit;
      end else if (rgFornecedores.Checked) and (rgSelecionarFornecedores.Checked) and (lbFornecedores.Items.Count=0) then begin
      	DlgMsg.ShowMsg(929,['(selecionar) os fornecedores']);
        Exit;
      end else if (rgFuncionarios.Checked) and (rgSelecionarFuncionarios.Checked) and (lbFuncionarios.Items.Count=0)  then begin
      	DlgMsg.ShowMsg(929,['(selecionar) os funcionários']);
        Exit;
			end else if (rgFuncionarios.Checked) and (rgFuncionariosPayRoll.Checked) and (clbPayRolls.Selecionados='')  then begin
      	DlgMsg.ShowMsg(929,['o PayRoll']);
        clbPayRolls.SetFocus;
        Exit;
			end else if (rgFuncionarios.Checked) and (rgFuncionariosCliente.Checked) and (edCliente.ID=0) then begin
      	DlgMsg.ShowMsg(929,['o Cliente']);
        edCliente.SetFocus;
        Exit;
			end else if (rgFuncionarios.Checked) and (rgFuncionariosPeriodo.Checked) and ((DataIFunc.Date<=0) or (DataFFunc.Date<=0)) then begin
      	DlgMsg.ShowMsg(929,['o Período']);
        edCliente.SetFocus;
        Exit;
      end else if (rgItens.Checked) and (rgSelecionarItens.Checked) and (PopupFiltroItens.getSQL(false)='')  then begin
      	DlgMsg.ShowMsg(929,['(selecionar) os itens']);
        PopupFiltroItens.SetFocus;
        Exit;
      end else if (rgItens.Checked) and (rgItensCadastrados.Checked) and ((DataI.Text='') or (DataF.Text=''))  then begin
      	DlgMsg.ShowMsg(929,['o período de cadastro']);
        DataI.SetFocus;
        Exit;
      end else if (rgItens.Checked) and (rgSaidas.Checked) and (trim(edSaida.Text)='')  then begin
      	DlgMsg.ShowMsg(929,['o número da invoice']);
        edSaida.SetFocus;
        Exit;
      end else if (rgItens.Checked) and (rgEntradas.Checked) and (trim(edEntrada.Text)='')  then begin
      	DlgMsg.ShowMsg(929,['o número da invoice']);
        edEntrada.SetFocus;
        Exit;
      end;
   result := true;
end;

procedure TDlgEtiquetas.btGravarClick(Sender: TObject);
var i : integer;
    Campo : TStringField;
    sCamposSelecionados : string;
begin
  inherited;
  with pgAssistente do begin
    {Carta, Etiquetas ou Ambos}
      if ActivePage = tsTipo then begin
    	if rgEtiquetas.Checked then
      	SetPage(tsNovaExistente)
      else
      	NextPage;
    {Cartas}
		end else if ActivePage = tsCartas then begin
    	if rgNovaCarta.Checked  or rgAbrirCarta.Checked then begin
        if rgNovaCarta.Checked and (lbCarta.Caption = '') then begin
        	DlgMsg.ShowMsg(5200);
          Exit;
        end;
        if rgAbrirCarta.Checked and (cmbTextos.Text = '') then begin
        	DlgMsg.ShowMsg(929,['o texto que deseja abrir']);
          Exit;
        end;
      	SetPage(tsNovaCarta);
      end else begin
      	if rgCartaAniversariantes.Checked then begin
          if cmbAniversario.text = '' then begin
          	DlgMsg.ShowMsg(929,['o período do aniversario']);
            cmbAniversario.SetFocus;
            Exit;
          end;
        	rgClientesAniversariantes.Checked := true
        end else if rgCartaClientesEmDia.Checked then
        	rgClientesEmDia.Checked := true
				else if rgCartaClientesEmAtraso.Checked then
        	rgClientesEmAtraso.Checked := true
				else if rgCartaClientesComCredito.Checked then
        	rgClientesComCredito.Checked := true
				else if rgCartaClientesDevolvidos.Checked then
        	rgClientesComChequesDev.Checked := true;
        if rgCartas.Checked then
      		SetPage(tsFinal)
        else
        	SetPage(tsNovaExistente);
      end;
		end else if ActivePage = tsNovaCarta then begin
      if rgCartaCliente.Checked then
      	SetPage(tsClientes)
      else if rgCartaFornecedor.Checked then
      	SetPage(tsFornecedores)
      else if rgCartaFuncionario.Checked then
      	SetPage(tsFuncionarios);
  	{Nova Etiqueta ou Abrir uma existente}
    end else if ActivePage = tsNovaExistente then begin
    	if rgNova.Checked then
    		SetPage(tsNova)
    	else begin
    		SetPage(tsEtiquetaExistente);
      end;
    end else if ActivePage = tsEtiquetaExistente then begin
      if clbEtiquetas.Selecionados(true) = '' then begin
      	DlgMsg.ShowMsg(5000);
        exit;
      end;
      Alfa.Enabled := false;
    	AbreEtiquetas(clbEtiquetas.Selecionados(true));
      btComando1.Visible := true;
      if rgFuncionarios.Checked then
        SetPage(tsFuncionarios)
      else if rgClientes.Checked then
        SetPage(tsClientes)
      else if rgFuncionarios.Checked then
        SetPage(tsFuncionarios)
      else if rgItens.Checked then
        SetPage(tsItens);
      Alfa.Enabled := true;
    end else if ActivePage = tsNova then begin
    	if Trim(EdNome.Text) = '' then begin
      	DlgMsg.ShowMsg( 929, ['o nome da Etiqueta'] );
        Exit;
      end;
      if (rgNova.Checked) and
         (FileExists(DMProjeto.EtiquetasPath+EdNome.Text+'.etq')) and
         (sNovaEtiqueta <> EdNome.Text) then begin
        DlgMsg.ShowMsg( 800 );
        Exit;
      end;
      sNovaEtiqueta := EdNome.Text;
      if not rgCartasEtiquetas.Checked then
      	NextPage
      else
      	SetPage(tsCampos);
  	end else if ActivePage = tsTipoEtiqueta then begin {Tipo da Etiqueta}
    	if rgClientes.Checked then
    		SetPage(tsClientes)
    	else if rgFornecedores.Checked then
      	SetPage(tsFornecedores)
    	else if rgFuncionarios.Checked then
      	SetPage(tsFuncionarios)
    	else if rgItens.Checked then
      	SetPage(tsItens)
    	else if rgEmpresa.Checked then
      	SetPage(tsCampos)
      else if rgManualmente.Checked then
    		SetPage(tsManualmente)
      else
      	SetPage(tsComandoSQL);
    end else if (ActivePage = tsClientes) or (ActivePage = tsFornecedores) or (ActivePage = tsFuncionarios) or (ActivePage = tsItens) then begin
      if not ValidaTipo then
        Exit;
      sCamposSelecionados := cmbCampos.Selecionados( true );
      GeraSQL;
      cmbCampos.SetSelecionados( sCamposSelecionados, true );
      if rgCartas.Checked then
      	SetPage(tsFinal)
      else
      	SetPage(tsCampos);
    end else if ActivePage = tsManualmente then begin
      if trim(mmManualmente.Lines.Text) = '' then begin
      	DlgMsg.ShowMsg(929,['o conteúdo da etiqueta']);
        Exit;
      end;
      SetPage(tsCopias);
		end else if ActivePage = tsCamposAdicionais then begin
    	if DBLayOut.VisibleColumnCount > 0 then
    		for i:=0 to lbCamposAdicionais.Items.Count-1 do begin
      		if DBLayOut.FindColumnByFieldName('CAMPOADD'+IntToStr(i)) <> nil then
            DBLayOut.FindColumnByFieldName('CAMPOADD'+IntToStr(i)).Caption := lbCamposAdicionais.Items[i]
          else begin
            C_Layout.Close;
     	    Campo := TStringField.Create(self);
    	    with Campo do begin
     	       Name := C_Layout.Name+'CAMPOADD'+IntToStr(i);
     	       FieldName	:= 'CAMPOADD'+IntToStr(i);
     	       DataSet  	:= C_Layout;
               Size		:= 200;
            end;
  					with DBLayout.CreateColumn(TdxDBGridColumn) as TdxDBGridColumn do begin
              Caption   := lbCamposAdicionais.Items[i];
    					FieldName := 'CAMPOADD'+IntToStr(i);
              RowIndex  := DBLayout.VisibleColumnCount-1;
            end;
            try
            	C_Layout.Open;
            except
            end;
        	end;
    		end;
      NextPage;
    end else if ActivePage = tsComandoSQL then begin
      if trim(mmSQL.Lines.Text) = '' then begin
      	DlgMsg.ShowMsg(929,['o conteúdo da etiqueta']);
        mmSQL.SetFocus;
        Exit;
      end;
      if VerificaSQL then
      	SetPage(tsCampos);
		end else if ActivePage = tsCampos then begin
    	if cmbCampos.Selecionados(true)='' then begin
      	DlgMsg.ShowMsg(929,['os campos que será visualizado na etiqueta']);
        Exit;
      end;
      NextPage;
    end else if ActivePage = tsModelo then begin
    	if (rgModeloExistente.Checked) and (cmbModelo.Text = '') then begin
      	DlgMsg.ShowMsg(929,['o modelo da etiqueta']);
        cmbModelo.SetFocus;
        Exit;
      end;
      NextPage;
    end else if ActivePage = tsModeloEtiqueta then begin
      if trim(edModelo.Text) = '' then begin
      	DlgMsg.ShowMsg(929,['o nome do modelo da etiqueta']);
        edModelo.SetFocus;
        Exit;
      end;
      if (rgNovoModelo.Checked) and
         (FileExists(DMProjeto.EtiquetasPath+EdModelo.Text+'.mod')) and
         (sNovoModelo <> EdModelo.Text) then begin
        DlgMsg.ShowMsg( 801 );
        Exit;
      end;
      sNovoModelo := EdModelo.Text;
      if edColunas.Value <= 0 then begin
      	DlgMsg.ShowMsg(929,['o número de colunas']);
        edColunas.SetFocus;
        Exit;
      end;
      if edLargura.Value <= 0 then begin
      	DlgMsg.ShowMsg(929,['a largura da etiqueta']);
        edLargura.SetFocus;
        Exit;
      end;
      if (not ckbAlturaAutomatica.Checked) and (edAltura.Value <= 0) then begin
      	DlgMsg.ShowMsg(929,['a altura da etiqueta']);
        edAltura.SetFocus;
        Exit;
      end;
      if (ckbAlturaAutomatica.Checked) and (edLinhasPorPagina.Value <= 0) then begin
      	DlgMsg.ShowMsg(929,['o número de etiquetas por página']);
        edLinhasPorPagina.SetFocus;
        Exit;
      end;
      SetPageLink;
      NextPage;
    end else
  		NextPage;
  end;
  if rgItens.Checked then
   	ckbQtdeEstoque.Visible := true
  else begin
	  ckbQtdeEstoque.Visible := false;
    ckbQtdeEstoque.Checked := false;
  end;
	btLimpar.Enabled := true;  
end;

procedure TDlgEtiquetas.btLimparClick(Sender: TObject);
begin
  inherited;
  with pgAssistente do begin
    if (ActivePage = tsClientes) or (ActivePage = tsFornecedores) or (ActivePage = tsFuncionarios) or
       (ActivePage = tsItens) or (ActivePage = tsComandoSQL) or
       (ActivePage = tsManualmente) then begin

       if rgCartas.Checked or rgCartasEtiquetas.Checked then begin
       	 if rgNovaCarta.Checked or rgAbrirCarta.Checked then
           	SetPage(tsNovaCarta)
         else
        		SetPage(tsCartas);
       end else
       	 SetPage(tsTipoEtiqueta)

    end else if ActivePage = tsNova then begin
    	if rgNova.Checked then
      	SetPage(tsNovaExistente)
      else
      	SetPage(tsEtiquetaExistente)
    end else if ActivePage = tsNovaExistente then begin
    	if rgCartasEtiquetas.Checked then begin
        if rgNovaCarta.Checked then
      		SetPage(tsNovaCarta)
        else
          SetPage(tsCartas)
      end else
      	SetPage(tsTipo)
    end else if ActivePage = tsTipoEtiqueta then begin
      if rgNova.checked then
	      SetPage(tsNova)
      else
    		SetPage(tsEtiquetaExistente)
    end else if ActivePage = tsCopias then begin
      if rgManualmente.Checked then
      	SetPage(tsManualmente)
      else
    		NextPage(false)
    end else if ActivePage = tsCampos then begin
    	if rgClientes.Checked then
    		SetPage(tsClientes)
    	else if rgFornecedores.Checked then
      	SetPage(tsFornecedores)
    	else if rgFuncionarios.Checked then
      	SetPage(tsFuncionarios)
    	else if rgItens.Checked then
      	SetPage(tsItens)
    	else if rgEmpresa.Checked then
      	SetPage(tsTipoEtiqueta)
      else if rgManualmente.Checked then
    		SetPage(tsManualmente)
      else
      	SetPage(tsComandoSQL);
    end else if ActivePage = tsFinal then begin
    	if rgCartas.Checked then begin
      	if (rgNovaCarta.Checked) or (rgAbrirCarta.Checked) then begin
        	if rgCartaCliente.Checked then
          	SetPage(tsClientes)
          else if rgCartaFornecedor.Checked then
          	SetPage(tsFornecedores)
          else if rgCartaFuncionario.Checked then
          	SetPage(tsFuncionarios);
        end else
        	SetPage(tsCartas);
      end else
      	NextPage( false );
    end else
  		NextPage( false );
  end;
  btGravar.Enabled := true;
end;

procedure TDlgEtiquetas.FormsComponentBeforeClearParams(Sender: TObject);
var sEtiqueta, sComandoSQL, sTipo, sCondicao, sTitulos : string;
begin
  inherited;
	Q_Textos.Open;
  Q_TabelaPreco.Open;
  C_Payrolls.Open;
  clbPayrolls.UpdateItems;
  cmbTabelaPreco.LookUpKeyValue := 0;
  sNovoModelo := '';
  sNovaEtiqueta:='';
	pgAssistente.UpdateVisibleTabs;
	sSelectCliente := 'select f.nome, f.endereco, f.cidade, f.uf, f.cep, f.fone1, f.fone2, f.contato, '+
   						'f.caixapostal, p.descricao as pais, f.fax, f.celular, '+
              'f.email, f.site, v.nome as vendedor, f.limitecredito, f.taxavel, f.ssn, f.ein, '+
              'f.datacadastro, f.credito, f.campo01, f.campo02, f.campo03, f.campo04, f.campo05, '+
              'f.campo06, f.campo07, f.campo08, f.campo09, f.campo10, f.ultcompra, f.ultvalorcompra, f.obs '+
  						'from favorecidos f '+
              'left join paises p on f.pais = p.pais '+
              'left join favorecidos v on f.vendedor = v.favorecido ';
	sSelectFornecedores := 'select f.nome, f.endereco, f.cidade, f.uf, f.cep, f.fone1, f.fone2, f.contato, '+
   						'f.caixapostal, p.descricao as pais, f.fax, f.celular, '+
              'f.email, f.site, v.nome as vendedor, f.limitecredito, f.taxavel, f.ssn, f.ein, '+
              'f.datacadastro, f.credito, f.campo01, f.campo02, f.campo03, f.campo04, f.campo05, '+
              'f.campo06, f.campo07, f.campo08, f.campo09, f.campo10, f.ultcompra, f.ultvalorcompra, f.obs '+
  						'from favorecidos f '+
              'left join paises p on f.pais = p.pais '+
              'left join favorecidos v on f.vendedor = v.favorecido ';
	sSelectFuncionarios := 'select f.nome, f.endereco, f.cidade, f.uf, f.cep, f.fone1, f.fone2, f.contato, '+
   						'f.caixapostal, pa.descricao as pais, f.fax, f.celular, '+
              'f.email, f.site, f.limitecredito, f.ssn, '+
              'f.credito, f.campo01, f.campo02, f.campo03, f.campo04, f.campo05, '+
              'f.campo06, f.campo07, f.campo08, f.campo09, f.campo10, c.descricao as Cargo, '+
              'f.datanasc, f.dataadimissao as dataadmissao, f.dataaumento, f.obs '+
              ':campos_contrato '+
              ':campos_periodo '+
  						'from favorecidos f '+
              'left join paises pa on f.pais = pa.pais '+
              'left join cargos c on f.cargo = c.cargo '+
              ':tabelas_contrato '+
              ':tabelas_periodo';
  sSelectItens := 'select i.descricao as Descricao, i.descricaocompra, t.descricao as tipoitem, '+
  								'i.codigo, g.descricaogrupo as grupo, g.codigo as codigogrupo, i.customedio, uf.nome as UltimoFornecedor, '+
                  'i.estoque/i.fatorundvenda as estoque, i.qtdeminimo, i.qtdemaximo, i.pontopedido, i.unidade, i.localizacao, '+
                  'f.descricao as fabricante, f.codigo as codigofabricante, i.campo01, i.campo02, i.campo03, i.campo04, i.campo05, i.campo06, '+
                  'i.precocompra, i.referencia, p.preco '+
                  'from itens i '+
                  'left join tipositens t on i.tipoitem = t.tipoitem '+
                  'left join favorecidos uf on i.ultimofornecedor = uf.favorecido '+
                  'left join fabricantes f on i.fabricante = f.fabricante '+
                  'left join grupos g on i.grupo = g.grupo '+
                  'left join produtospreco p on i.item = p.item and p.tabelapreco = :tabela and p.unidade = i.unidadeentrada ';
  DataI.Date := DMProjeto.dDataSistema;
  DataF.Date := DMProjeto.dDataSistema;
  pgAssistente.ActivePage := tsIntroducao;
  LinkEtiquetas.PrinterPage.MeasurementUnits := muMillimeters; //muInches;
  edAlturaPagina.Value 	:= LinkEtiquetas.PrinterPage.PageSize.Y;
  edLarguraPagina.Value := LinkEtiquetas.PrinterPage.PageSize.X;
  with DMProjeto do begin
  	if ExisteParametrosForm then begin
    	sEtiqueta 		:= getParametrosForm(0);
      sComandoSQL 	:= getParametrosForm(1);
      if QtdParametrosForm > 2 then
      	sTipo				:= getParametrosForm(2);
      if QtdParametrosForm > 3 then
      	sCondicao   := getParametrosForm(3);
      if QtdParametrosForm > 4 then
      	sTitulos			:= getParametrosForm(4);
      Alfa.Enabled := false;
      if fileexists(DMProjeto.EtiquetasPath+sEtiqueta+'.etq') then begin
				rgEtiquetas.Checked := true;
      	AbreEtiquetas(sEtiqueta,sComandoSQL,sCondicao);
        pgAssistente.ActivePage := tsFinal;
        btEtiquetasClick(sender);
      end else begin
        btGravarClick(Sender);
        rgEtiquetas.Checked := true;
      	edNome.Text := sEtiqueta;
        btGravarClick(Sender);
        btGravarClick(Sender);
        btGravarClick(Sender);
        if (sTipo = '') and (sComandoSQL <> '') then begin
        	rgComandoSQL.Checked	:= true;
        	mmSQL.Lines.Text     	:= sComandoSQL;
        end else if sTipo = 'I' then
        	rgItens.Checked	:= true
        else if sTipo = 'C' then
          rgClientes.Checked	:= true
        else if sTipo = 'F' then
          rgFornecedores.Checked	:= true
        else if sTipo = 'E' then
          rgEmpresa.Checked	:= true
        else if sTipo = 'U' then
          rgFuncionarios.Checked	:= true;
        if sCondicao <> '' then
        	SetCondicao( sCondicao, sComandoSQL, '' );
        ckbQtdeEstoque.Visible := false;
        ckbQtdeEstoque.Checked := false;
        GeraSQL( sComandoSQL, '', sTitulos );
        btGravarClick(Sender);
        btGravarClick(Sender);
      end;
      Alfa.Enabled := true;
    end;
  end;
end;

function TDlgEtiquetas.getPalavraChave( sConteudo : string ) : string;
var slCamposChave : TStringList;
		sAux : string;
begin
    if pos('{',sConteudo)=0 then
    	result := sConteudo
    else begin
      slCamposChave 	:= TStringList.Create;
  		slCamposChave := DMProjeto.getCamposChave;
    	sAux := sConteudo;
    	sAux := replace(sAux,'{','');
    	sAux := replace(sAux,'}','');
    	result := slCamposChave.Values[sAux];
      slCamposChave.Free;
    end;
end;

procedure TDlgEtiquetas.GeraLayout;
var Campo : TStringField;
    CampoInt : TIntegerField;
		i, k, l, z, nRow, nCol, nWidth, nCampos : integer;
    MyDataSet : TClientDataSet;
    sCampo, sStyle : string;
    Coluna		: TdxDBTreeListColumn;
begin
  {Criar campos no ClientDataSet}
//  MyDataSet := TClientDataSet.Create(self);
  try
  with C_Layout do begin
    for i:=0 to Fields.Count-1 do
    	Fields[0].Free;
    Close;

  	if DBGrid.ColumnCount > 0 then
  		DBGrid.DestroyColumns;

    if not rgManualmente.Checked then begin
    	CampoInt := TIntegerField.Create(self);
    	with CampoInt do begin
      	Name := C_Layout.Name+'KEYFIELD'; //MyDataSet.Name+'KEYFIELD';
      	FieldName:= 'KEYFIELD';
      	DataSet  := C_Layout; //MyDataSet;
    	end;
    end;

    for k:=0 to Bandas-1 do begin
			if rgManualmente.Checked then begin {Manualmente}
        nCampos := mmManualmente.Lines.Count;
  			for i:=0 to nCampos-1 do begin
    	  	Campo := TStringField.Create(self);
      		with Campo do begin
        		Name := C_Layout.Name+'Campo'+IntToStr(i); //MyDataSet.Name+'Campo'+IntToStr(i);
          	FieldName:= 'Campo'+IntToStr(i);
          	Size     := 250;
          	DataSet  := C_Layout; //MyDataSet;
            Tag      := k;
        	end;
  			end;
    	end else begin
        nCampos := cmbCampos.Items.Count;
  			for i:=0 to nCampos-1 do begin
    	  		Campo := TStringField.Create(self);
      			with Campo do begin
        			Name := C_Layout.Name+cmbCampos.Items[i]+IntToStr(k);//MyDataSet.Name+cmbCampos.Items[i]+IntToStr(k);
          		FieldName:= cmbCampos.Items[i];
          		DataSet  := C_Layout;
        		end;
  			end;
      end;
    end;
    {Criando campos adicionais}
    for i:=0 to lbCamposAdicionais.Items.Count-1 do begin
    	Campo := TStringField.Create(self);
    	with Campo do begin
     		Name := C_Layout.Name+'CAMPOADD'+IntToStr(i);
     		FieldName:= 'CAMPOADD'+IntToStr(i);
     		DataSet  := C_Layout;
        Size		 := 200;
    	end;
    end;
    CreateDataSet;
  end;

  with DBGrid do begin

  	if ColumnCount > 0 then
  		DestroyColumns;

		CreateDefaultColumns( TDataSet(C_Layout), self );
  	HeaderPanelRowCount := iif(rgManualmente.Checked,mmManualmente.Lines.Count,ContaStrings(cmbCampos.Selecionados(true),',')+lbCamposAdicionais.Items.Count);
    l:=0;
    if not rgManualmente.Checked then begin
    	KeyField := 'KEYFIELD';
    	Columns[0].Visible := false;
    	Columns[0].DisableCustomizing := true;
      l := 1;
    end;
    for i:=0 to lbCamposAdicionais.Items.Count-1 do
    		FindColumnbyFieldName('CAMPOADD'+IntToStr(i)).Caption := lbCamposAdicionais.items[i];
    k:=0;

  	for i := l to ColumnCount-1 do begin
      if Copy(UpperCase(Columns[i].FieldName),1,8) = 'CAMPOADD' then

      else if not rgManualmente.Checked then
      	Columns[i].Caption:= cmbCamposDicionario.Items[cmbCampos.Items.IndexOf(Columns[i].FieldName)]
      else begin
        Columns[i].Caption	:= mmManualmente.Lines[i];
        Columns[i].RowIndex := i;
        Columns[i].Width		:= getLargura;
      end;
      Columns[i].MinWidth := 8;
      Columns[i].Visible  := iif((rgManualmente.Checked),iif(sConfiguracao<>'',pos(Columns[i].FieldName,sConfiguracao)>0,true),false);
      // Columns[i].HeaderMaxLineCount := 10;
   	end;

    if (sConfiguracao <> '') then begin
    	for i := 1 to ContaStrings(sConfiguracao,'|') do begin
        sCampo 	:= SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',1);
       	nRow    := StrToIntDef(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',2),5);
       	nCol	  := StrToIntDef(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',3),2);
        nWidth  := StrToIntDef(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',4),50);
        Coluna  := FindColumnbyFieldName(sCampo);
        Coluna.Visible 		:= true;
       	Coluna.RowIndex 	:= nRow;
       	Coluna.ColIndex 	:= nCol;
        Coluna.Width			:= nWidth;
        Coluna.Font.Name	:= SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',7);
        Coluna.Font.Color := StringToColor(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',8));
        Coluna.Font.Size	:= StrToIntDef(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',9),10);
        Coluna.Alignment 	:= iif(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',11)='E',taLeftJustify,
                             iif(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',11)='D',taRightJustify,taCenter));
        sStyle := SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',10);

        if pos('N',sStyle)>0 then
        	Coluna.Font.Style := Coluna.Font.Style + [fsBold];

        if pos('I',sStyle)>0 then
        	Coluna.Font.Style := Coluna.Font.Style + [fsItalic];

        if pos('S',sStyle)>0 then
        	Coluna.Font.Style := Coluna.Font.Style + [fsUnderline];

        if not rgManualmente.Checked then begin
          if pos('CAMPOADD',Coluna.FieldName)=0 then
         		Coluna.Caption	:= iif(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',5)<>'',SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',5)+'<','')+
            									 cmbCamposDicionario.Items[cmbCampos.Items.IndexOf(Coluna.FieldName)]+
            							 		 iif(SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',6)<>'','>'+SeparaStrings(SeparaStrings(sConfiguracao,'|',i),';',6),'');
        end else
     			Coluna.Caption:= mmManualmente.Lines[StrToIntDef(trim(Copy(Coluna.FieldName,6,2)),10)];
    	end;
    end else if not rgManualmente.checked then begin
      z := 0;
      for i:=0 to cmbCampos.Items.Count-1 do begin
        if cmbCampos.Checked[i] then begin
         		Coluna   := FindColumnbyFieldName(cmbCampos.Items[i]);
            Coluna.Visible	:= true;
      			Coluna.Width		:= getLargura;
      			Coluna.RowIndex := i;
          	Coluna.Caption	:= cmbCamposDicionario.Items[i];
            inc(z);
      	end;
      end;
      for i:=0 to lbCamposAdicionais.Items.Count-1 do begin
        Coluna   := FindColumnbyFieldName('CAMPOADD'+IntToStr(i));
        Coluna.Visible	:= true;
      	Coluna.Width		:= getLargura;
      	Coluna.RowIndex := z;
        inc(z);
      end;
    end;
  end;
  finally
//  	MyDataSet.Free;
  end;
end;

function TDlgEtiquetas.FormataCampo( Campo : TField ): string;
begin
	if Campo.DataType in [ftBCD,ftFloat,ftCurrency] then
  	result := formatfloat('###,###,##0.00',Campo.AsCurrency )
  else if Campo.DataType in [ftDate,ftDateTime] then
  	result := formatdatetime(DMProjeto.sDateFormat,Campo.AsDateTime )
  else
  	result := Campo.AsString;
end;

procedure TDlgEtiquetas.GerarEtiquetas;
var i, j, k, z, nCopias, nBarras, nTotalRegistros, nReg, nRegistro, nTotalCopias : integer;
    sConteudo, sCampos : string;
    Campo 	: TStringField;
    CampoInt: TIntegerField;
begin
	Barra.Position 	:= 0;
	lbMensagem.Visible := true;
  Barra.Visible			 := true;
  with C_Etiquetas do begin
    AtualizaProgresso( 'Liberando Campos...', 1 );
    for i:=FieldCount-1 downto 0 do
      Fields[i].Free;
    if FieldCount > 0 then
    	Fielddefs.Update;
    AtualizaProgresso( 'Redefinindo Campos...', 2 );
  	if DBEtiquetas.ColumnCount > 0 then
  		DBEtiquetas.DestroyColumns;
    AtualizaProgresso( 'Criando Colunas...', 3 );
    {Campo KeyField}
  	CampoInt   := TIntegerField.Create(self);
    with CampoInt do begin
    	Name := C_Etiquetas.Name+'KEYFIELD';
      FieldName:= 'KEYFIELD';
      DataSet  := C_Etiquetas;
    end;
    {Campo Adicionais}
    {
    for i:=0 to lbCamposAdicionais.Items.Count-1 do begin
      Campo := TStringField.Create(self);
    	with Campo do begin
    		Name := C_Etiquetas.Name+'CAMPOADD'+IntToStr(i);
      	FieldName:= 'CAMPOADD'+IntToStr(i);
      	DataSet  := C_Etiquetas;
        Size     := 200;
    	end;
    end;
    }
    {Colunas}
     for i:=1 to 12 do begin
    	Campo := TStringField.Create(self);
        with Campo do begin
          Name := C_Etiquetas.Name+'Coluna'+IntToStr(i);
          FieldName:= 'Coluna'+IntToStr(i);
          DataSet  := C_Etiquetas;
          Size 		 := 1000;
        end;
     end;
  end;
	AtualizaProgresso( 'Criando Tabela...', 4 );
  {Criando as colunas da Etiqueta}
  with DBEtiquetas do begin

		CreateDefaultColumns( TDataSet(C_Etiquetas), self );
    KeyField := 'KEYFIELD';
    FindColumnByFieldName('KEYFIELD').Visible := false;
    DefaultRowHeight := getAltura; //round((edAltura.value+(edEspVertical.value))*Conversor);
    sCampos  := '';
  	for i:=1 to ColumnCount-1 do
      if i <= Colunas then begin
        //if i < Colunas then
     		  Columns[i].Width	:= getLargura; //DBLayout.Width
        //else                                      //(edColunas.IntValue-1)*
        //  Columns[i].Width	:= getLargura - Trunc(edEspHorizontal.Value*Conversor);
      end else
	      Columns[i].Visible  := false;
  end;

  {Pegando a configuração do Layout}
  for j:=0 to 50 do begin
    if ContaStrings(sCampos,'|') = DBLayout.VisibleColumnCount then
    	break;
 		for i:=0 to DBLayout.VisibleColumnCount-1 do
      if DBLayout.VisibleColumns[i].RowIndex = j then
    		sCampos := sCampos + iif(sCampos<>'','|','') + DBLayout.VisibleColumns[i].FieldName;
  end;
  AtualizaProgresso( 'Consultando os dados...aguarde...', 5 );
  nBarras := Barra.Max - Barra.Position;
  {Varrendo a Consulta}
  with C_Etiquetas do begin
  	CreateDataSet;
    DisableControls;
    nRegistro := 0;
    nReg    := 0;
    nCopias := 0;

    if rgManualmente.Checked then begin

        for i:=1 to Trunc(edCopias.value) do begin
        	Append;
          for j:=1 to Colunas do begin
            inc(nReg);
         		fieldbyname('keyfield').AsInteger := nReg;
            for k:=1 to ContaStrings(sCampos,'|') do //DBLayout.VisibleColumnCount do
         		   fieldbyname('coluna'+IntToStr(j)).AsString := fieldbyname('coluna'+IntToStr(j)).AsString+
                           getCaptionDepois(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Caption)+
                                                          ';'+IntToStr(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).RowIndex)+
                                                          ';'+IntToStr(j)+
                                                          ';'+IntToStr(GetColumnRealWidth(DBLayout,k-1))+
                                                          //';'+DBLayOut.ColumnsRect.Values[SeparaStrings(sCampos,'|',k)]+
                                                          ';'+DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Name+
                                                          ';'+ColorToString(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Color)+
                                                          ';'+IntToStr(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Size)+
                                                          ';'+iif(fsBold in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Style,'N','')+
                                                          iif(fsItalic in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Style,'I','')+
                                                          iif(fsUnderline in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Font.Style,'S','')+
                                                          ';'+iif(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Alignment=taLeftJustify,'E',iif(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',k)).Alignment=taRightJustify,'D','C'))+
                                                          '|';

            inc(nCopias);
            AtualizaProgresso( 'Adicionando os dados...aguarde...', Trunc((nCopias/edCopias.Value)*nBarras)+(Barra.Max-nBarras) );
            if nCopias = Trunc(edCopias.value) then
            	break;
          end;
        	Post;
          if nCopias = Trunc(edCopias.value) then
           	break;
        end;
    end else begin
        with q_sql do begin
          Close;
          if Params.FindParam('Tabela') <> nil then
          	ParamByName('Tabela').AsInteger := cmbTabelaPreco.LookUpKeyValue;
          Open;
         	Disablecontrols;
          if rgComandoSQL.Checked then begin
        		Last;
        		nTotalRegistros := recordcount;
          	First;
          end else begin
          	with DMProjeto.Q_SQL2 do begin
              close;
              sql.text := sSelectCount;
              open;
          		nTotalRegistros := fields[0].AsInteger;
              close;
            end;
          end;
        end;

        nRegistro := 0;
        k := 1;
        for i:=1 to nTotalRegistros do begin
          if ((rgItens.Checked) and (ckbQtdeEstoque.Checked)) then
          	nTotalCopias := q_sql.fieldbyname('estoque').asInteger
          else
          	nTotalCopias := Trunc(edCopias.Value);
          while (nCopias < nTotalCopias) and (nRegistro < nTotalRegistros)do begin
            if k = 1 then
            	Append;
        		while (k <= Colunas) and (nRegistro < nTotalRegistros) do begin
            	fieldbyname('keyfield').AsInteger := nReg;
              if not clbNaoImprimir.Checked[k-1] then begin
            	for j:=1 to DBLayout.VisibleColumnCount do begin
		    if pos('CAMPOADD',SeparaStrings(sCampos,'|',j))>0 then begin
                        if pos('<',DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Caption)>0 then begin
                           sConteudo := getCampo(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Caption);
                           sConteudo := formatacampo(q_sql.fieldbyname(sConteudo));
                        end else
                	   sConteudo := getPalavraChave(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Caption)
                  end else
                  	sConteudo := formatacampo(q_sql.fieldbyname(SeparaStrings(sCampos,'|',j)));
          				fieldbyname('coluna'+IntToStr(k)).AsString := fieldbyname('coluna'+IntToStr(k)).AsString+
              																							  getCaptionAntes(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Caption)+
                                                              sConteudo +
                                                              getCaptionDepois(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Caption)+
                                                              ';'+IntToStr(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).RowIndex)+
                                                              ';'+IntToStr(k)+
                                                              ';'+IntToStr(GetColumnRealWidth(DBLayout,j-1))+
                                                              ';'+DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Name+
                                                              ';'+ColorToString(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Color)+
                                                              ';'+IntToStr(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Size)+
                                                              ';'+iif(fsBold in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Style,'N','')+
                                                              iif(fsItalic in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Style,'I','')+
                                                              iif(fsUnderline in DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Font.Style,'S','')+
                                                              ';'+iif(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Alignment=taLeftJustify,'E',iif(DBLayOut.FindColumnByFieldName(SeparaStrings(sCampos,'|',j)).Alignment=taRightJustify,'D','C'))+
                                                              '|';
                end;
                fieldbyname('coluna'+IntToStr(k)).AsString := Copy(fieldbyname('coluna'+IntToStr(k)).AsString,1,length(fieldbyname('coluna'+IntToStr(k)).AsString)-1);
              	inc(nReg);
              	inc(nCopias);
              	if nCopias = nTotalCopias then begin
                  inc(k);
              	   break;
                end;
              end;
              inc(k);
            end;
            if k > Colunas then
            	k:=1;
          end;
          q_sql.Next;
          inc(nRegistro);
         	AtualizaProgresso( 'Adicionando os dados...aguarde...', Trunc((nRegistro/nTotalRegistros)*nBarras)+(Barra.Max-nBarras) );
          if k = 1 then begin
            if not (State in [dsBrowse]) then
            	Post;
          end;
          nCopias := 0;
        end;
        if nTotalRegistros = 0 then
        	Barra.Position := 20;
    end;
    q_sql.enablecontrols;
    if (RecordCount > 0) and (not (State in [dsBrowse])) then
    	Post;
    enablecontrols;
  end;

  lbMensagem.caption := 'Concluído';
end;

function TDlgEtiquetas.getCampo( sCampo : string ) : string;
begin
  sCampo := replace( sCampo, '<', '' );
  sCampo := replace( sCampo, '>', '' );
  result := cmbCampos.Items[cmbCamposDicionario.items.IndexOf(sCampo)];
end;

procedure TDlgEtiquetas.rgModeloExistenteClick(Sender: TObject);
begin
  inherited;
  cmbModelo.Enabled := rgModeloExistente.Checked;
end;

procedure TDlgEtiquetas.tsLayoutShow(Sender: TObject);
begin
	btLimpar.Enabled := true;
  if DBLayout.VisibleColumnCount = 0 then
  	GeraLayout( DBLayout, 1 );
  lbCampoSelecionado.Caption := getCaption(DBLayout.VisibleColumns[DBLayout.FocusedColumn].Caption);
  sCampoSelecionado := DBLayout.VisibleColumns[DBLayout.FocusedColumn].FieldName;
end;

procedure TDlgEtiquetas.btEtiquetasClick(Sender: TObject);
begin
  inherited;
  GerarEtiquetas( trunc(edColunas.value) );
  LinkEtiquetas.Preview;
  lbMensagem.Caption := '';
  Barra.Visible := false;
end;

procedure TDlgEtiquetas.edEspVerticalChange(Sender: TObject);
begin
  inherited;
  DBEtiquetas.DefaultRowHeight := getAltura;//Round((edAltura.value+edEspVertical.value)*Conversor);
end;

procedure TDlgEtiquetas.edLarguraChange(Sender: TObject);
begin
  inherited;
	DBLayout.Width := getLargura;
end;

function TDlgEtiquetas.GetLargura : integer;
var nEspH, nAjusteH, nLargura : extended;
begin
  inherited;

   if (edEspHorizontal.Value > 0) and (edColunas.IntValue > 1) then
   	 nEspH := ((edColunas.IntValue-1)*edEspHorizontal.Value)/edColunas.IntValue
   else
   	 nEspH := 0;
   if edColunas.IntValue > 1 then
		 nAjusteH := (AjusteHorizontal/(trunc(edColunas.Value)-1))
   else
     nAjusteH := 0;
   //result := trunc( ( edLargura.value + nEspH - nAjusteH)*Conversor);
   nlargura := edLargura.value + edEspHorizontal.Value;
   result := trunc( nLargura*Conversor );
end;

function TDlgEtiquetas.GetAltura : integer;
var nAltura : extended;
begin
  inherited;

   nAltura := edAltura.value + edEspVertical.Value;

   result := trunc( nAltura*Conversor );
end;


function TDlgEtiquetas.GetLarguraMM( LargPixels : integer ) : double;
var nEspH, nAjusteH : single;
begin
  inherited;
   if (edEspHorizontal.Value > 0) and (edColunas.IntValue > 1) then
   	nEspH := ((edColunas.IntValue*edEspHorizontal.Value)/((edColunas.IntValue*edEspHorizontal.Value)-edEspHorizontal.Value))
   else
   	nEspH := 0;
   if edColunas.IntValue > 1 then
		 nAjusteH := (AjusteHorizontal/(trunc(edColunas.Value)-1))
   else
     nAjusteH := 0;
   result := trunc( (LargPixels + ((nEspH - nAjusteH)*Conversor))/Conversor);
end;


function TDlgEtiquetas.VerificaSQL : boolean;
begin
  result := true;
  try
		with Q_SQL do begin
    	close;
      sql.text := mmSQL.lines.text;
      open;
    end;
  except
  	on E:Exception do begin
    	DlgMsg.ShowMsg( 1, e.Message, '' );
      Q_SQL.Close;
      result := false;
    end;
  end;
end;

procedure TDlgEtiquetas.rgSelecionarClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sSelecionados, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sSelecionados := GetParametrosForm(0);
      lbClientes.Items.text := replace(GetParametrosForm(1),',',#13);
      lbClientes.Items.SetText(PChar(lbClientes.Items.text));
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgEtiquetas.rgSelecionarFornecedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sSelecionados, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sSelecionados := GetParametrosForm(0);
      lbFornecedores.Items.text := replace(GetParametrosForm(1),',',#13);
      lbFornecedores.Items.SetText(PChar(lbFornecedores.Items.text));
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgEtiquetas.rgSelecionarFuncionariosClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sSelecionados, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sSelecionados := GetParametrosForm(0);
      lbFuncionarios.Items.text := replace(GetParametrosForm(1),',',#13);
      lbFuncionarios.Items.SetText(PChar(lbFuncionarios.Items.text));
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgEtiquetas.tsCamposShow(Sender: TObject);
var sCamposSelecionados : string;
begin
  inherited;
	btLimpar.Enabled := true;
  sCamposSelecionados := cmbCampos.Selecionados( true );
 	GeraSQL;
  cmbCampos.SetSelecionados( sCamposSelecionados, true );
  lbTabelaPreco.Visible := rgItens.Checked;
  cmbTabelaPreco.Visible := rgItens.Checked;
  cmbCamposDicionario.Repaint;
end;

function TDlgEtiquetas.getInvoices;
var sVirg, sValor : string;
		i : integer;
begin
  sValor := '';
  sVirg  := ',';
  if pos(';',sInvoices)>0 then
  	sVirg := ';';
	for i:=1 to ContaStrings(sInvoices,sVirg) do
  	sValor := sValor + iif(bRetirarAspas,SeparaStrings(sInvoices,sVirg,i),QuotedStr(SeparaStrings(sInvoices,sVirg,i))) + ',';
  sValor := Copy(sValor,1,length(sValor)-1);
  if sValor = '' then
    sValor := '0';
  result := sValor;
end;

procedure TDlgEtiquetas.GeraSQL;
var sSelect, sWhere, sOrderBy, sSQL, sItems : string;
		IDTabela, i, k: integer;
    bEncontrou : boolean;
    MenuItem : TMenuItem;
begin
  sSelectCount := '';

  if rgClientes.Checked then begin
    {Todos os Clientes}
  	if rgClientesAtivos.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes em Dia}
  	end else if rgClientesEmDia.Checked then begin
      sWhere  := 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and (not exists( select id from TitulosAReceber t where t.cliente = f.favorecido and t.status > 0 and t.status < 50 and current_date > t.dataatrasado)) ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes em Atraso}
  	end else if rgClientesEmAtraso.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and (exists( select t.id from TitulosAReceber t where t.cliente = f.favorecido and t.status > 2 and t.status < 50 )) ';
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes com Crédito}
  	end else if rgClientesComCredito.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and f.credito > 0 ';
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes que mora na cidade ?}
  	end else if rgClientesCidade.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and Upper(f.Cidade) like %'+UpperCase(edCidade.Text)+'%';
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes com mora no estado ?}
  	end else if rgClientesEstado.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and upper(f.UF) = '''+UpperCase(cmbEstado.Text)+'''';
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    {Clientes do Grupo}
  	end else if rgClientesGrupo.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and f.grupocliente = '+IntToStr(cmbGrupo.LookupKeyValue);
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
  	end else if rgClientesComChequesDev.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 1 and f.desativado = ''N'' '+
                 'and exists( select o.operacao from operacoesfinanceiras o '+
        				 '           	inner join operacoesfinanceirasdet od on od.operacao = o.operacao '+
								 '						where o.favorecido = f.favorecido and o.tipooperacao = 9 and od.valorpago is null ) ';
      sOrderBy:= 'order by f.nome';
     	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
  	end else if rgClientesAniversariantes.Checked then begin
  		if cmbPeriodo.ItemIndex = 0 then begin
    		sWhere := '(extract(day from f.datanasc)='+formatdatetime('d',DMProjeto.dDataSistema)+' '+
                	'and extract(month from f.datanasc)='+formatdatetime('m',DMProjeto.dDataSistema)+') ';
  		end else if cmbPeriodo.ItemIndex = 1 then begin
    		sWhere := '((extract(day from f.datanasc)>='+formatdatetime('d',DMProjeto.dDataSistema)+' '+
                	'and extract(month from f.datanasc)='+formatdatetime('m',DMProjeto.dDataSistema)+') '+
                  iif(formatdatetime('m',DMProjeto.dDataSistema)<>formatdatetime('m',DMProjeto.dDataSistema+7),' or ',' and ')+
                	'(extract(day from f.datanasc)<='+formatdatetime('d',DMProjeto.dDataSistema+7)+' '+
                	'and extract(month from f.datanasc)='+formatdatetime('m',DMProjeto.dDataSistema+7)+')) ';
  		end else if cmbPeriodo.ItemIndex = 2 then begin
    		sWhere := '(extract(month from f.datanasc)='+formatdatetime('m ',DMProjeto.dDataSistema)+') ';
  		end else if cmbPeriodo.ItemIndex = 3 then
    		sWhere := '(extract(month from f.datanasc)='+formatdatetime('m ',DateAdd('MM',1,DMProjeto.dDataSistema))+') '
      else begin
    		sWhere := '(extract(day from f.datanasc)='+IntToStr(cmbPeriodo.ItemIndex-3)+' '+
                		'and extract(month from f.datanasc)='+formatdatetime('m',DMProjeto.dDataSistema)+') ';
  		end;
      sWhere	:= 'where '+sWhere;
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
  	end else if rgSelecionarClientes.Checked then begin
      sWhere	:= 'where f.favorecido IN ('+sSelecionados+') ';;
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectCliente+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    end;
    sSelectCount := 'select count(favorecido) from favorecidos f '+sWhere;
  end else if rgFornecedores.Checked then begin
		if rgFornecedoresAtivos.Checked then begin
      sWhere 	:= 'where f.tipofavorecido = 2 and f.desativado = ''N'' ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectFornecedores+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    end else if rgFornecedoresContasEmAberto.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 2 and f.desativado = ''N'' '+
                 'and (exists( select id from DuplicatasAPagar d where d.fornecedor = f.favorecido and d.status > 0 and d.status < 50 and current_date > d.dataatrasado)) ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectFornecedores+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    end else if rgFornecedoresPedidosEmAberto.Checked then begin
      sWhere	:= 'where f.tipofavorecido = 2 and f.desativado = ''N'' '+
                 'and (exists( select entrada from Entradas e where e.favorecido = f.favorecido and e.tipopadrao = 102 and e.status IN (''P'',''L''))) ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectFornecedores+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    end else if rgSelecionarFornecedores.Checked then begin
      sWhere	:= 'where f.favorecido IN ('+sSelecionados+') ';
      sOrderBy:= 'order by f.nome';
    	sSelect := sSelectFornecedores+sWhere+iif(sOrdem='',sOrderBy,'order by f.'+sOrdem);
    end;
    sSelectCount := 'select count(favorecido) from favorecidos f '+sWhere;
  end else if rgFuncionarios.Checked then begin
    sOrderby := 'order by f.nome';
		sOrderby := iif(sOrdem='',sOrderBy,'order by '+iif(UpperCase(sOrdem)='CARGO','C.DESCRICAO,f.nome',iif(UpperCase(sOrdem)='CLIENTE','FF.NOME, f.nome',iif(UpperCase(sOrdem)='ITEMPAYROLL','PI.DESCRICAO, f.nome','f.'+sOrdem))));
  	if rgFuncionariosAtivos.Checked then begin
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_contrato','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_contrato','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_periodo','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_periodo','');
      sWhere	:= 'where f.tipofavorecido = 3 and f.desativado = ''N'' ';
    	sSelect := sSelectFuncionarios+sWhere+sOrderBy;
    end else if rgFuncionariosPayRoll.Checked then begin
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_contrato','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_contrato','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_periodo','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_periodo','');
      sWhere	:= 'where f.tipofavorecido = 3 and f.desativado = ''N'' '+
                 'and (exists( select payrollfunc from PayRollsFunc p where p.payroll IN ('+iif(clbPayRolls.Selecionados='','0',clbPayRolls.Selecionados)+') and p.funcionario = f.favorecido )) ';
    	sSelect := sSelectFuncionarios+sWhere+sOrderBy;
    end else if rgFuncionariosCliente.Checked then begin
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_periodo','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_periodo','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_contrato',', ff.nome as Cliente, pi.descricao as ItemPayroll ');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_contrato','left join contratosfav cf on f.favorecido = cf.funcionario '+
              																															 'left join favorecidos ff on cf.favorecido = ff.favorecido '+
              																															 'left join payrollitens pi on cf.payrollitem = pi.payrollitem ');
      sWhere	:= 'where f.tipofavorecido = 3 and f.desativado = ''N'' '+
                 'and (exists( select contrato from ContratosFav c where c.favorecido = '+IntToStr(edCliente.ID)+' and c.funcionario = f.favorecido)) ';
    	sSelect := sSelectFuncionarios+sWhere+sOrderBy;
    end else if rgFuncionariosPeriodo.Checked then begin
      sSelect := replace(sSelectFuncionarios,':campos_periodo',',p.datainicio,p.datafim, '+
      					 'p.descricao as Descricao_Payroll, ff.nome as cliente, extract(month from p.datainicio) || ''/'' || '+
								 'extract(day from p.datainicio) || ''/'' || extract(year from p.datainicio) || '' to '' || '+
								 'extract(month from p.datafim) || ''/'' || extract(day from p.datafim) || ''/'' || '+
								 'extract(year from p.datafim) as PERIODO');
      sSelect := replace(sSelect,':tabelas_periodo','inner join payrollsfunc pf on pf.funcionario = f.favorecido '+
      																																			'inner join payrolls p on pf.payroll = p.payroll and p.datainicio >= '+QuotedStr(formatdatetime('mm/dd/yyyy',DataIFunc.Date))+' and p.datainicio <= '+QuotedStr(formatdatetime('mm/dd/yyyy',DataFFunc.Date))+' and p.status <> ''C'' '+
                                                                            'left join favorecidos ff on p.favorecido = ff.favorecido ' );
      sSelect := replace(sSelect,':campos_contrato','');
      sSelect := replace(sSelect,':tabelas_contrato','');
      sWhere	:= 'where f.tipofavorecido = 3 and f.desativado = ''N'' ';
      //           'and (exists( select pf.payrollfunc from Payrolls p, PayrollsFunc pf where p.datainicio >= '+QuotedStr(formatdatetime('mm/dd/yyyy',DataIFunc.Date))+' and p.datainicio <= '+QuotedStr(formatdatetime('mm/dd/yyyy',DataFFunc.Date))+' and p.payroll = pf.payroll and pf.funcionario = f.favorecido )) ';
    	sSelect := sSelect+sWhere+sOrderBy;
  	end else if rgSelecionarFuncionarios.Checked then begin
      // sSelectFuncionarios := replace(sSelectFuncionarios,':campos_contrato','');
      // sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_contrato','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_contrato',', ff.nome as Cliente, pi.descricao as ItemPayroll ');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_contrato','left join contratosfav cf on f.favorecido = cf.funcionario '+
              																															 'left join favorecidos ff on cf.favorecido = ff.favorecido '+
              																															 'left join payrollitens pi on cf.payrollitem = pi.payrollitem ');
      sSelectFuncionarios := replace(sSelectFuncionarios,':campos_periodo','');
      sSelectFuncionarios := replace(sSelectFuncionarios,':tabelas_periodo','');

      sWhere	:= 'where f.favorecido IN ('+sSelecionados+') ';
    	sSelect := sSelectFuncionarios+sWhere+sOrderBy;
    end;
    sSelectCount := 'select count(favorecido) from favorecidos f '+sWhere;
  end else if rgItens.Checked then begin
  	if rgItensInventario.Checked then begin
      sWhere	:= 'where i.tipoitem = 1 and i.desativado = ''N'' ';
      sOrderBy:= 'order by i.descricao';
    	sSelect := sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by i.'+sOrdem);
      sSelect := replace(sSelect,'unidadeentrada','unidade');
    end else if rgItensServico.Checked then begin
      sWhere	:= 'where i.tipoitem = 3 and i.desativado = ''N'' ';
      sOrderBy:= 'order by i.descricao';
    	sSelect := sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by i.'+sOrdem);
      sSelect := replace(sSelect,'unidadeentrada','unidade');
    end else if rgItensCadastrados.Checked then begin
      sWhere	:= 'where i.datacadastro >= :datai and i.datacadastro <= :dataf and i.desativado = ''N'' ';
      sOrderBy:= 'order by i.descricao';
    	sSelect := sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by i.'+sOrdem);
      sSelect := replace(sSelect,'unidadeentrada','unidade');
    end else if rgSaidas.Checked then begin
      sSql	:= 'select si.item from saidas s, saidasitens si '+
        			 'where s.numero IN ('+getInvoices(edSaida.Text)+') and s.saida = si.saida and si.tipoitem in (1,2,3) '+
               'group by si.item';

      sItems:= DMProjeto.getValoresSQL(sSql,'Item');
      if sItems = '' then
    		sWhere:= 'where i.Item IN ('+'0'+')'
      else
      	sWhere:= 'where i.Item IN ('+sItems+')';

    	sOrderBy:= 'order by i.descricao';
  		sSelect := sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by i.'+sOrdem);
      sSelect := replace(sSelect,'unidadeentrada','unidade');
    	sSelect := replace(sSelect,'i.estoque/i.fatorundvenda as estoque','(select sum(quantidade) from saidas s, saidasitens si '+
                                             'where s.numero IN ('+getInvoices(edSaida.Text)+') '+
                                             'and s.saida = si.saida and si.item = i.item) as Estoque');
    end else if rgEntradas.Checked then begin
      if ContaStrings(edEntrada.Text,'=')=1 then
      	sSql	:= 'select si.item from entradas s, entradasitens si, itens i '+
        			 	 'where s.numero IN ('+getInvoices(edEntrada.Text)+') and s.entrada = si.entrada and si.item = i.item and i.tipoitem in (1,2,3) '+
               	 'group by si.item'
      else
      	sSql	:= 'select si.item from entradas s, entradasitens si, itens i '+
        			 	 'where s.entrada IN ('+SeparaStrings(edEntrada.Text,'=',2)+') and s.entrada = si.entrada and si.item = i.item and i.tipoitem in (1,2,3) '+
               	 'group by si.item';
      sItems:= DMProjeto.getValoresSQL(sSql,'Item');
      if sItems = '' then
    		sWhere:= 'where i.Item IN ('+'0'+') '
      else
      	sWhere:= 'where i.Item IN ('+sItems+') ';

    	sOrderBy:= 'order by i.descricao';
  		sSelect := sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by '+sOrdem);
    	sSelect := replace(sSelect,'i.estoque/i.fatorundvenda as estoque','(select sum(si.quantidade) from entradas s, entradasitens si '+
                                             'where s.entrada IN ('+iif(ContaStrings(edEntrada.Text,'=')=1,getInvoices(edEntrada.Text,true),SeparaStrings(edEntrada.Text,'=',2))+') '+
                                             'and s.entrada = si.entrada and si.item = i.item) as Estoque');
    end else if rgSelecionarItens.Checked then begin
      sWhere	:= 'where '	+ PopupFiltroItens.getSQL;
      sOrderBy:= 'order by i.descricao';
    	sSelect	:= sSelectItens+sWhere+iif(sOrdem='',sOrderBy,'order by i.'+sOrdem);
      sSelect := replace(sSelect,'unidadeentrada','unidade');
    end;
    sSelectCount := 'select count(item) from itens i '+sWhere;
  end else if rgEmpresa.Checked then begin
  	sSelect := 'select f.nome, f.ein, f.ssn, f.endereco, f.cidade, f.uf, f.fone1, f.cep as Zip, f.fax, f.email, f.site '+
               'from favorecidos f '+
               'where f.favorecido = -1';
    sSelectCount := 'select count(favorecido) from favorecidos where favorecido = -1';
  end else if rgComandoSQL.Checked then begin
    if sComandoSQL = '' then
  		sSelect := mmSQL.Lines.Text
    else begin
    	sSelect := sComandoSQL;
      mmSQL.Lines.Text := sComandoSQL;
    end;
  end;

  if not rgManualmente.Checked then begin
  	with Q_SQL do begin
  		close;
    	sql.text := sSelect;
      if rgItensCadastrados.Checked then begin
     		ParamByName('DataI').asDate := DataI.Date;
    		ParamByName('DataF').asDate := DataF.Date;
      end;

   		GetFieldNames( cmbCampos.Items );
      if sTitulos <> '' then
      	for i:=cmbCampos.Items.Count-1 downto 0 do
        	if pos(UpperCase(cmbCampos.Items[i]),UpperCase(sTitulos))=0 then
          	cmbCampos.Items.Delete(i);
      if rgItens.Checked then
      	IDTabela := 67
      else
      	IDTabela := 1;
      with DMProjeto.Q_SQL2 do begin
      	close;
        sql.text := 'select c.campo, c.descricao from dic_campos c '+
        						'inner join dic_tabelas t on t.id = c.tabela '+
        						'where c.tabela = :Tabela and t.idioma = :idioma';
        parambyname('tabela').asinteger := IDTabela;
        parambyname('idioma').asinteger := DMProjeto.nIdiomaPadrao;
        open;
        disablecontrols;
        with cmbCamposDicionario do begin
        	Items.Clear;
          ppmCampos.Items.Clear;
        	for i:=0 to cmbCampos.Items.Count-1 do begin

          	if (not rgComandoSQL.Checked) and (Locate('campo',cmbCampos.Items[i],[])) then
        			cmbCamposDicionario.Items.Add(fields[1].AsString)
            else if sTitulos <> '' then begin
              bEncontrou := false;
            	for k:=1 to ContaStrings(sTitulos,'|') do
              	if UpperCase(SeparaStrings(SeparaStrings(sTitulos,'|',k),'=',1)) = UpperCase(cmbCampos.Items[i]) then begin
              		cmbCamposDicionario.Items.Add(SeparaStrings(SeparaStrings(sTitulos,'|',k),'=',2));
                  bEncontrou := true;
                  break;
                end;
              if not bEncontrou then
                cmbCamposDicionario.Items.Add(cmbCampos.items[i]);
            end else
            	cmbCamposDicionario.Items.Add(cmbCampos.items[i]);

            MenuItem := TMenuItem.Create(self);
            MenuItem.AutoHotKeys:= maManual;
            MenuItem.Caption := '<'+cmbCamposDicionario.Items[cmbCamposDicionario.Items.Count-1]+'>';
            MenuItem.Caption := replace(MenuItem.Caption,'&','');
            MenuItem.OnClick := MenuItemClick;
            ppmCampos.Items.Add(MenuItem);

          end;
        end;
        enablecontrols;
        close;
      end;
  	end;
    if (cmbOrdem.Text = '') or (cmbCamposDicionario.Items.IndexOf(cmbOrdem.Text)<0)then
 			cmbOrdem.Items := cmbCamposDicionario.Items;
    cmbOrdem.OnChange := nil;
  	if (cmbOrdem.Text = '') and (sOrdem<>'') then
  		cmbOrdem.Text := cmbCamposDicionario.Items[cmbCampos.Items.IndexOf(sOrdem)];
    if sOrdem <> '' then
    	cmbOrdem.Text := cmbCamposDicionario.Items[cmbCampos.Items.IndexOf(sOrdem)];
    cmbOrdem.OnChange := cmbOrdemChange;
  end;
end;

procedure TDlgEtiquetas.MenuItemClick( sender : TObject );
begin
	edCampo.Text := replace(TMenuItem(Sender).Caption,'&','');
  btMais.Click;
end;

procedure TDlgEtiquetas.rgClientesClick(Sender: TObject);
begin
  inherited;
  sSelecionados := '';
  if DBLayOut.ColumnCount > 0 then
  	DBLayOut.DestroyColumns;
end;

procedure TDlgEtiquetas.tsFinalShow(Sender: TObject);
var i : integer;
begin
  inherited;
  btGravar.Enabled 	:= false;
  btLimpar.Enabled 	:= true;
	Barra.Position 		:= 0;
  Barra.Visible  		:= false;
  lbMensagem.Visible:= false;
	btCartas.Visible 	:= rgCartasEtiquetas.Checked or rgCartas.Checked;
  ckbCabecalho.Visible:= btCartas.Visible;
  btEtiquetas.Visible := rgCartasEtiquetas.Checked or rgEtiquetas.Checked;
  ckbMostrarBorda.Visible := btEtiquetas.Visible;
  ckbMostrarBorda.Enabled := true;
  for i:=0 to DBLayOut.VisibleColumnCount-1 do
  	if (DBLayOut.VisibleColumns[i].Font.Name = 'C39HrP24DhTt') or
    	 (DBLayOut.VisibleColumns[i].Font.Name = 'C39HrP24DhTt') then
    	ckbMostrarBorda.Enabled := false;
  GravaModelo(edModelo.Text);
  GravaEtiqueta(edNome.Text);
end;

procedure TDlgEtiquetas.AtualizaProgresso( sMsg : string; nInc : integer );
begin
	lbMensagem.Caption := sMsg;
  Barra.Position := nInc;
  Application.ProcessMessages;
end;

procedure TDlgEtiquetas.GravaModelo( sNomeModelo : string );
var Modelo : TIniFile;
begin
  if trim(sNomeModelo)='' then
  	exit;
	try
  	Modelo := TIniFile.Create( DMProjeto.EtiquetasPath+sNomeModelo+'.mod' );
    with Modelo do begin
    	WriteString('Modelo', 'Nome', sNomeModelo);
      WriteString('Modelo', 'Arquivo', sNomeModelo+'.mod' );
      WriteString('Modelo', 'Colunas', edColunas.Text );
      WriteString('Modelo', 'Largura', edLargura.Text );
      WriteString('Modelo', 'Altura',  edAltura.Text);
      WriteString('Modelo', 'Espacamento Vertical',  edEspVertical.Text);
      WriteString('Modelo', 'Espacamento Horizontal',edEspHorizontal.Text);
      WriteString('Modelo', 'Margem Esquerda', edME.Text);
      WriteString('Modelo', 'Margem Superior', edMS.Text);
      WriteString('Modelo', 'Margem Inferior', edMI.Text);
      WriteString('Modelo', 'Margem Direita',  edMD.Text);
      WriteString('Modelo', 'Margem Lateral do Texto',  edMT.Text);
      WriteString('Modelo', 'Margem Superior do Texto',  edST.Text);
      WriteString('Modelo', 'Orientacao', iif(rgRetrato.Checked,'Retrato','Paisagem'));
      WriteString('Modelo', 'Largura da Pagina', edLarguraPagina.Text );
      WriteString('Modelo', 'Altura da Pagina',  edAlturaPagina.Text );
      WriteString('Modelo', 'Largura Automatica',  iif(ckbLarguraAutomatica.Checked,'S','N') );
      WriteString('Modelo', 'Altura Automatica',  iif(ckbAlturaAutomatica.Checked,'S','N') );
      WriteString('Modelo', 'Linhas por Pagina',  edLinhasPorPagina.Text );
      WriteString('Modelo', 'Nao Imprimir nas Colunas',  getColunasNaoImprimir );
    end;
  finally
  	Modelo.Free
  end;
end;

function TDlgEtiquetas.SetDecimal( sTexto : string ) : string;
var sAux : string;
begin
	sAux := replace(sTexto,'.',DecimalSeparator);
  result := replace(sAux,',',DecimalSeparator);
end;

procedure TDlgEtiquetas.AbreModelo( sNomeModelo : string );
var Modelo : TIniFile;
		sColunasNaoImprimir : string;
    i : integer;
begin
	try
  	Modelo := TIniFile.Create( DMProjeto.EtiquetasPath+sNomeModelo+'.mod' );
    with Modelo do begin
    	edModelo.Text := ReadString('Modelo', 'Nome', '' );
      edAlturaPagina.Text 	:= SetDecimal(ReadString('Modelo', 'Altura da Pagina', '0'));
      edLarguraPagina.Text 	:= SetDecimal(ReadString('Modelo', 'Largura da Pagina', '0'));
      edColunas.Value := StrToIntDef(ReadString('Modelo', 'Colunas', '1' ),1);
      edColunasChange(self);
      edLargura.Value := StrToFloat(SetDecimal(ReadString('Modelo', 'Largura', '0' )));
      edLarguraChange(self);
      edAltura.Text	  := SetDecimal(ReadString('Modelo', 'Altura',  '0' ));
      edEspVertical.Text 	:= SetDecimal(ReadString('Modelo', 'Espacamento Vertical',  '0' ));
      edEspHorizontal.Text:= SetDecimal(ReadString('Modelo', 'Espacamento Horizontal','0'));
      edME.Text	:= SetDecimal(ReadString('Modelo', 'Margem Esquerda', '0'));
      edMS.Text	:= SetDecimal(ReadString('Modelo', 'Margem Superior', '0'));
      edMI.Text := SetDecimal(ReadString('Modelo', 'Margem Inferior', '0'));
      edMD.Text := SetDecimal(ReadString('Modelo', 'Margem Direita',  '0'));
      edMT.Text := SetDecimal(ReadString('Modelo', 'Margem Lateral do Texto',  '0'));
      edST.Text := SetDecimal(ReadString('Modelo', 'Margem Superior do Texto',  '0'));
      rgRetrato.Checked := UpperCase(ReadString('Modelo', 'Orientacao',  'Retrato'))='RETRATO';
      ckbAlturaAutomatica.Checked := ReadString('Modelo', 'Altura Automatica',  '') = 'S';
      ckbAlturaAutomaticaChange(self);
      ckbLarguraAutomatica.Checked := ReadString('Modelo', 'Largura Automatica',  '') = 'S';
      ckbLarguraAutomaticaChange(self);
      edLinhasPorPagina.Text := ReadString('Modelo', 'Linhas por Pagina',  '0');
			sColunasNaoImprimir := ReadString('Modelo', 'Nao Imprimir nas Colunas', '');
      for i:=1 to ContaStrings(sColunasNaoImprimir,',') do
      	clbNaoImprimir.Checked[StrToIntDef(SeparaStrings(sColunasNaoImprimir,',',i),1)-1] := true;
      SetPageLink;
    end;
  finally
  	Modelo.Free
  end;
end;

procedure TDlgEtiquetas.GravaEtiqueta( sNomeEtiqueta : string );
var Etiqueta : TIniFile;
		i : integer;
begin
  if trim(sNomeEtiqueta)='' then
  	exit;
	try
  	Etiqueta := TIniFile.Create( DMProjeto.EtiquetasPath+sNomeEtiqueta+'.etq' );
    with Etiqueta do begin
    	WriteString('Etiqueta', 'Nome', sNomeEtiqueta);
      WriteString('Etiqueta', 'Arquivo', sNomeEtiqueta+'.etq' );
      WriteString('Etiqueta', 'Colunas', edColunas.Text );
      WriteString('Etiqueta', 'Largura', edLargura.Text );
      WriteString('Etiqueta', 'Altura',  edAltura.Text);
      WriteString('Etiqueta', 'Modelo',  iif(rgNovoModelo.Checked,edModelo.Text,cmbModelo.Text));
      WriteString('Etiqueta', 'Tipo', getTipoSelecionado);
      if rgClientes.Checked then
      	WriteString('Etiqueta', 'Condicao', iif(rgClientesAtivos.Checked,'ATIVOS',
        																		iif(rgClientesEmDia.Checked,'EM DIA',
                                            iif(rgClientesEmAtraso.Checked,'EM ATRASO',
                                            iif(rgClientesCidade.Checked,'CIDADE;'+edCidade.Text,
                                            iif(rgClientesComCredito.Checked,'CREDITO',
                                            iif(rgClientesGrupo.Checked,'GRUPO;'+VarToStr(cmbGrupo.LookUpKeyValue),
                                            iif(rgClientesComChequesDev.Checked,'CHEQUEDEV',
                                            iif(rgClientesEstado.Checked,'ESTADO;'+cmbEstado.Text,
                                            iif(rgClientesAniversariantes.Checked,'ANIVERSARIANTES;'+IntToStr(cmbPeriodo.ItemIndex),
                                            'SELECIONADOS;'+sSelecionados))))))))))
      else if rgFornecedores.Checked then
      	WriteString('Etiqueta', 'Condicao', iif(rgFornecedoresAtivos.Checked,'ATIVOS',
                                            iif(rgFornecedoresContasEmAberto.Checked,'CONTAS EM ABERTO',
                                            iif(rgFornecedoresPedidosEmAberto.Checked,'PEDIDOS EM ABERTO','SELECIONADOS;'+sSelecionados))))
      else if rgFuncionarios.Checked then
      	WriteString('Etiqueta', 'Condicao', iif(rgFuncionariosAtivos.Checked,'ATIVOS',
                                            iif(rgFuncionariosPayRoll.Checked,'PAYROLL;'+clbPayRolls.Selecionados,
                                            iif(rgFuncionariosCliente.Checked,'CLIENTE;'+IntToStr(edCLiente.ID),
                                            iif(rgFuncionariosPeriodo.Checked,'PERIODO;'+DataIFunc.Text+';'+DataFFunc.Text,'SELECIONADOS;'+sSelecionados)))))
      else if rgItens.Checked then begin
      	WriteString('Etiqueta', 'Condicao', iif(rgItensInventario.Checked,'INVENTARIO',
                                            iif(rgItensServico.Checked,'SERVICO',
                                            iif(rgItensCadastrados.Checked,'CADASTRADOS;'+DataI.Text+';'+DataF.Text,
                                            iif(rgSaidas.Checked,'SAIDAS;'+edSaida.Text,
                                            iif(rgEntradas.Checked,'ENTRADAS;'+edEntrada.Text,
                                            'SELECIONADOS;'+PopupFiltroItens.getFiltro
                                            ))))));
        WriteString('Etiqueta', 'QtdeEstoque', iif(ckbQtdeEstoque.Checked,'S','N'));
      end;
      if rgManualmente.Checked then
      	WriteString('Etiqueta', 'Manualmente', mmManualmente.Lines.CommaText);
      if rgComandoSQL.Checked then begin
        for i:=0 to mmSQL.Lines.Count-1 do
        	WriteString('Etiqueta', 'Comando SQL'+IntToStr(i+1), mmSQL.Lines[0]);
      end;

      WriteString('Etiqueta', 'CamposSelecionados', cmbCampos.Selecionados( true ));
      WriteString('Etiqueta', 'CamposAdicionais', lbCamposAdicionais.Items.CommaText);
      if cmbOrdem.Text <> '' then
      	WriteString('Etiqueta', 'Ordem',  cmbCampos.Items[cmbOrdem.ItemIndex] );
      WriteString('Etiqueta', 'Copias', edCopias.Text);
      WriteString('Etiqueta', 'Configuracao', getConfiguracao );
      WriteString('Etiqueta', 'Altura da Pagina',  edAlturaPagina.Text );
      WriteString('Etiqueta', 'Largura da Pagina',  edLarguraPagina.Text );
      WriteString('Etiqueta', 'Data',  DateToStr(Date)+' '+formatdatetime('hh:mm',Time ));
      WriteString('Etiqueta', 'Usuario',  DMProjeto.sLoginName );
    end;
  finally
  	Etiqueta.Free
  end;
end;

procedure TDlgEtiquetas.AbreEtiquetas;
var Etiqueta : TIniFile;
    sCampos, sConfiguracao, sSQL : string;
    i : integer;
begin
	try
  	Etiqueta := TIniFile.Create( DMProjeto.EtiquetasPath+sNomeEtiqueta+'.etq' );
    with Etiqueta do begin
    	edNome.Text 	:= ReadString('Etiqueta', 'Nome', '' );
      CarregaArquivosdeEtiqueta;
      if clbEtiquetas.Selecionados(true)='' then
      	clbEtiquetas.Checked[clbEtiquetas.Items.IndexOf(sNomeEtiqueta)] := true;
      SetTipo(ReadString('Etiqueta', 'Tipo', '' ));
      i := 1;
      while ReadString('Etiqueta', 'Comando SQL'+IntToStr(i), '')<>'' do begin
      	sSQL := sSQL + ReadString('Etiqueta', 'Comando SQL'+IntToStr(i), '') + ' ';
        inc(i);
      end;
      if sCondicao = '' then
      	SetCondicao(ReadString('Etiqueta', 'Condicao', '' ),sSQL,replace(ReadString('Etiqueta', 'Manualmente', '' ),'"',''))
      else
      	SetCondicao(sCondicao,sSQL,replace(ReadString('Etiqueta', 'Manualmente', '' ),'"',''));

      GeraSQL(sComandoSQL,ReadString('Etiqueta', 'Ordem', ''));
     	cmbCampos.SetSelecionados( ReadString('Etiqueta', 'CamposSelecionados', '0' ), true, false);
      sCampos := Replace( ReadString('Etiqueta', 'CamposAdicionais', '' ),',',#13);
      lbCamposAdicionais.Items.SetText(PChar(sCampos));
      for i:=0 to lbCamposAdicionais.Items.Count-1 do
      	lbCamposAdicionais.Items[i] := replace(lbCamposAdicionais.Items[i],'"','');

      AbreModelo( ReadString('Etiqueta', 'Modelo', '' ));

      rgExistente.Checked := true;
      rgModeloExistente.Checked 	:= true;

      ckbQtdeEstoque.Visible := rgItens.Checked;
      ckbQtdeEstoque.Checked := ReadString('Etiqueta', 'QtdeEstoque', 'N' )='S';
      ckbQtdeEstoqueChange(self);
      sConfiguracao := ReadString('Etiqueta', 'Configuracao', '' );
      EdCopias.Value:= StrToIntDef(ReadString('Etiqueta', 'Copias', '1' ),1);
      cmbModelo.Text := ReadString('Etiqueta', 'Modelo', '' );
		  GeraLayout( DBLayout, 1, sConfiguracao );
      if ckbLarguraAutomatica.Checked then
      	LarguraAutomatica
      else
      	edLarguraChange(self);
    end;
  finally
  	Etiqueta.Free;
  end;
end;

function TDlgEtiquetas.getConfiguracao : string;
var i, j : integer;
		sConf : string;
begin
  sConf := '';
  for j:=0 to 50 do begin
    if ContaStrings(sConf,'|') = DBLayout.VisibleColumnCount then
    	break;
 		for i:=0 to DBLayout.VisibleColumnCount-1 do
      if DBLayout.VisibleColumns[i].RowIndex = j then
    		sConf := sConf + iif(sConf<>'','|','') +
        				 DBLayout.VisibleColumns[i].FieldName+';'+
                 IntToStr(DBLayout.VisibleColumns[i].RowIndex)+';'+
                 IntToStr(DBLayout.VisibleColumns[i].ColIndex)+';'+
                 IntToStr(GetColumnRealWidth(DBLayout,DBLayout.VisibleColumns[i].Index))+';'+
                 getCaptionAntes(DBLayout.VisibleColumns[i].Caption)+';'+
                 getCaptionDepois(DBLayout.VisibleColumns[i].Caption)+';'+
                 DBLayout.VisibleColumns[i].Font.Name+';'+
                 ColorToString(DBLayout.VisibleColumns[i].Font.Color)+';'+
                 IntToStr(DBLayout.VisibleColumns[i].Font.Size)+';'+
                 iif(fsBold in DBLayout.VisibleColumns[i].Font.Style,'N','')+
                 iif(fsItalic in DBLayout.VisibleColumns[i].Font.Style,'I','')+
                 iif(fsUnderline in DBLayout.VisibleColumns[i].Font.Style,'S','')+';'+
                 iif(DBLayout.VisibleColumns[i].Alignment=taLeftJustify,'E',iif(DBLayout.VisibleColumns[i].Alignment=taRightJustify,'D','C'));
  end;
  result := sConf; //Copy(sConf,1,length(sConf)-1);
end;

procedure TDlgEtiquetas.tsModeloShow(Sender: TObject);
begin
  inherited;
  CarregaArquivosDeModelo;
end;

procedure TDlgEtiquetas.CarregaArquivosDeModelo;
begin
  cmbModelo.Items := getFileList( DMProjeto.EtiquetasPath+'*.mod' );
  cmbModelo.Items.Text := replace(cmbModelo.Items.Text,'.mod','');
end;

procedure TDlgEtiquetas.cmbModeloChange(Sender: TObject);
begin
  inherited;
  rgModeloExistente.Checked := cmbModelo.Text <> '';
  rgNovoModelo.Checked := not (cmbModelo.Text <> '');
  if rgModeloExistente.Checked then
  	AbreModelo( cmbModelo.Text )
  else
  	cmbModelo.Text := '';
end;

procedure TDlgEtiquetas.dxPrinterPageSetup(Sender: TObject;
  AReportLink: TBasedxReportLink; ADone: Boolean);
begin
  inherited;
  with LinkEtiquetas.PrinterPage do begin
    edMI.Value            := StrToFloat(formatfloat('#####0.000',Margins.Bottom/1000));
    edMS.Value            := StrToFloat(formatfloat('#####0.000',Margins.Top / 1000));
    edME.Value            := StrToFloat(formatfloat('#####0.000',Margins.Left / 1000));
    edMD.Value            := StrToFloat(formatfloat('#####0.000',Margins.Right / 1000));
    edLarguraPagina.Value := StrToFloat(formatfloat('#####0.000',PageSize.X) );
    edAlturaPagina.Value  := StrToFloat(formatfloat('#####0.000',PageSize.Y) );
    rgRetrato.Checked	  := Orientation = poPortrait;
  end;
end;

procedure TDlgEtiquetas.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SetPageLink;
  dxPrinter.PageSetup(nil);
end;

procedure TDlgEtiquetas.SetPageLink;
begin
  with LinkEtiquetas.PrinterPage do begin
    Footer := trunc(edMI.Value * 1000);
    Header := trunc(edMS.Value * 1000);
    Margins.Left	 	:= trunc(edME.Value * 1000);
    Margins.Right	 	:= trunc(edMD.Value * 1000);
    Margins.Top  		:= Header;
    Margins.Bottom	        := Footer;
    LinkEtiquetas.PrinterPage.PageSize.Y := trunc(edAlturaPagina.Value);
    LinkEtiquetas.PrinterPage.PageSize.X := trunc(edLarguraPagina.Value);
    if rgRetrato.Checked then
      Orientation   := poPortrait
    else
      Orientation   := poLandscape;
  end;
end;

procedure TDlgEtiquetas.tsEtiquetaExistenteShow(Sender: TObject);
begin
  CarregaArquivosDeEtiqueta;
  if edNome.Text <> '' then
  	MostraCaracteristica( clbEtiquetas.Items.IndexOf(edNome.Text) )
  else begin
    MostraCaracteristica( clbEtiquetas.ItemIndex );
  end;
end;

procedure TDlgEtiquetas.CarregaArquivosDeEtiqueta;
var sSelecao : string;
begin
  inherited;
  sSelecao := clbEtiquetas.Selecionados( true );
  clbEtiquetas.Items 	  := getFileList(DMProjeto.EtiquetasPath+'*.etq');
  clbEtiquetas.Items.Text := replace(clbEtiquetas.Items.Text,'.etq','');
  clbEtiquetas.SetSelecionados( sSelecao, true, false );
end;

function TDlgEtiquetas.getTipoSelecionado : string;
begin
  if rgClientes.Checked then
    result := 'Clientes'
  else if rgFornecedores.Checked then
    result := 'Fornecedores'
  else if rgFuncionarios.Checked then
    result := 'Funcionarios'
  else if rgItens.Checked then
    result := 'Itens'
  else if rgEmpresa.Checked then
    result := 'Empresa'
  else if rgComandoSQL.Checked then
    result := 'ComandoSQL'
  else
    result := 'Manualmente';
end;

procedure TDlgEtiquetas.clbEtiquetasClickCheck(Sender: TObject);
var i : integer;
begin
  inherited;
  for i:=0 to clbEtiquetas.Items.Count-1 do
    if i <> clbEtiquetas.ItemIndex then
    	clbEtiquetas.Checked[i] := false;
end;

procedure TDlgEtiquetas.SetTipo(sTipo : string);
begin
  if sTipo = 'Clientes' then
     rgClientes.Checked := true
  else if sTipo = 'Fornecedores' then
     rgFornecedores.Checked := true
  else if sTipo = 'Funcionarios' then
     rgFuncionarios.Checked := true
  else if sTipo = 'Itens' then
     rgItens.Checked := true
  else if sTipo = 'Empresa' then
     rgEmpresa.Checked := true
  else if sTipo = 'ComandoSQL' then
     rgComandoSQL.Checked := true
  else
     rgManualmente.Checked:= true;
end;

function TDlgEtiquetas.getFavorecidos( sFav : string ) : string;
var sNomes : string;
		i : integer;
begin
  if sFav = '' then
  	exit;
	with DMProjeto.Q_SQL2 do begin
 		close;
   	sql.text := 'select nome from favorecidos where favorecido IN ('+sFav+')';
    open;
    while not eof do begin
    	sNomes := sNomes + fields[0].AsString + ',';
      next;
    end;
    result := Copy(sNomes,1,length(sNomes)-1);
    close;
  end;
end;

function TDlgEtiquetas.getItens( sItens : string ) : string;
var sNomes : string;
		i : integer;
begin
  if sItens = '' then begin
    result := '';
  	exit;
  end;
	with DMProjeto.Q_SQL2 do begin
 		close;
   	sql.text := 'select descricao from itens where item IN ('+sItens+')';
    open;
    while not eof do begin
    	sNomes := sNomes + fields[0].AsString + ',';
      next;
    end;
    result := Copy(sNomes,1,length(sNomes)-1);
    close;
  end;
end;

function TDlgEtiquetas.getGrupos( sGrupos : string ) : string;
var sNomes : string;
		i : integer;
begin
  if sGrupos = '' then begin
    result := '';
  	exit;
  end;
	with DMProjeto.Q_SQL2 do begin
 		close;
   	sql.text := 'select descricaogrupo from grupos where grupo IN ('+sGrupos+')';
    open;
    while not eof do begin
    	sNomes := sNomes + fields[0].AsString + ',';
      next;
    end;
    result := Copy(sNomes,1,length(sNomes)-1);
    close;
  end;
end;

function TDlgEtiquetas.getFabricantes( sFabricantes : string ) : string;
var sNomes : string;
		i : integer;
begin
  if sFabricantes = '' then begin
    result := '';
  	exit;
  end;
	with DMProjeto.Q_SQL2 do begin
 		close;
   	sql.text := 'select descricao from fabricantes where fabricante IN ('+sFabricantes+')';
    open;
    while not eof do begin
    	sNomes := sNomes + fields[0].AsString + ',';
      next;
    end;
    result := Copy(sNomes,1,length(sNomes)-1);
    close;
  end;
end;

procedure TDlgEtiquetas.SetCondicao( Condicao, ComandoSQL, Manualmente : string );
begin
	if rgClientes.Checked then begin
  	rgClientesAtivos.Checked 		:= UpperCase(Condicao)='ATIVOS';
    rgClientesEmDia.Checked  	 	:= UpperCase(Condicao)='EM DIA';
    rgClientesEmAtraso.Checked 	:= UpperCase(Condicao)='EM ATRASO';

    rgClientesCidade.Checked		:= UpperCase(SeparaStrings(Condicao,';',1))='CIDADE';
    edCidade.Text := iif(rgClientesCidade.Checked,SeparaStrings(Condicao,';',2),'');

    rgClientesEstado.Checked		:= UpperCase(SeparaStrings(Condicao,';',1))='ESTADO';
    cmbEstado.Text := iif(rgClientesEstado.Checked,SeparaStrings(Condicao,';',2),'');

    rgClientesGrupo.Checked	:= UpperCase(SeparaStrings(Condicao,';',1))='GRUPO';
    cmbGrupo.LookUpKeyValue := iif(rgClientesGrupo.Checked,StrToIntDef(SeparaStrings(Condicao,';',2),0),0);

    rgClientesComCredito.Checked	:= UpperCase(SeparaStrings(Condicao,';',1))='CREDITO';

    rgClientesComChequesDev.Checked	:= UpperCase(SeparaStrings(Condicao,';',1))='CHEQUEDEV';

    rgClientesAniversariantes.Checked		:= UpperCase(SeparaStrings(Condicao,';',1))='ANIVERSARIANTES';
    cmbPeriodo.ItemIndex := iif(rgClientesAniversariantes.Checked,StrToIntDef(SeparaStrings(Condicao,';',2),0),-1);

    rgSelecionarClientes.OnClick := nil;
    rgSelecionarClientes.Checked := UpperCase(SeparaStrings(Condicao,';',1))='SELECIONADOS';
    rgSelecionarClientes.OnClick := rgSelecionarClientesClick;
    if rgSelecionarClientes.Checked then begin
      lbClientes.Items.text := replace(getFavorecidos(SeparaStrings(Condicao,';',2)),',',#13);
      lbClientes.Items.SetText(PChar(lbClientes.Items.text));
      sSelecionados := SeparaStrings(Condicao,';',2);
    end;
  end else if rgFornecedores.Checked then begin
  	rgFornecedoresAtivos.Checked 		:= UpperCase(Condicao)='ATIVOS';
    rgFornecedoresContasEmAberto.Checked  	:= UpperCase(Condicao)='CONTAS EM ABERTO';
    rgFornecedoresPedidosEmAberto.Checked 	:= UpperCase(Condicao)='PEDIDOS EM ABERTO';
    rgSelecionarFornecedores.OnClick := nil;
    rgSelecionarFornecedores.Checked := UpperCase(SeparaStrings(Condicao,';',1))='SELECIONADOS';
    rgSelecionarFornecedores.OnClick := rgSelecionarFornecedoresClick;
    if rgSelecionarFornecedores.Checked then begin
      lbFornecedores.Items.text := replace(getFavorecidos(SeparaStrings(Condicao,';',2)),',',#13);
      lbFornecedores.Items.SetText(PChar(lbFornecedores.Items.text));
      sSelecionados := SeparaStrings(Condicao,';',2);
    end;
  end else if rgFuncionarios.Checked then begin
  	rgFuncionariosAtivos.Checked 	:= UpperCase(Condicao)='ATIVOS';
    rgFuncionariosPayRoll.Checked := UpperCase(SeparaStrings(Condicao,';',1))='PAYROLL';
    rgFuncionariosCliente.Checked := UpperCase(SeparaStrings(Condicao,';',1))='CLIENTE';
    rgFuncionariosPeriodo.Checked := UpperCase(SeparaStrings(Condicao,';',1))='PERIODO';
    if rgFuncionariosCliente.Checked then
    	edCliente.ID := StrToIntDef(SeparaStrings(Condicao,';',2),0);
    if rgFuncionariosPayroll.Checked then
    	//clbPayRolls.SetSelecionados(SeparaStrings(Condicao,';',2));
    if rgFuncionariosPeriodo.Checked then begin
    	DataIFunc.Date := StrToDate(SeparaStrings(Condicao,';',2));
      DataFFunc.Date := StrTODate(SeparaStrings(Condicao,';',3));
    end;
    rgSelecionarFuncionarios.OnClick 	:= nil;
    rgSelecionarFuncionarios.Checked 	:= UpperCase(SeparaStrings(Condicao,';',1))='SELECIONADOS';
    rgSelecionarFuncionarios.OnClick 	:= rgSelecionarFuncionariosClick;
    if rgSelecionarFuncionarios.Checked then begin
      lbFuncionarios.Items.text := replace(getFavorecidos(SeparaStrings(Condicao,';',2)),',',#13);
      lbFuncionarios.Items.SetText(PChar(lbFuncionarios.Items.text));
      sSelecionados := SeparaStrings(Condicao,';',2);
    end;
  end else if rgItens.Checked then begin
  	rgItensInventario.Checked := UpperCase(Condicao)='INVENTARIO';
    rgItensServico.Checked 		:= UpperCase(Condicao)='SERVICO';
    rgItensCadastrados.Checked:= UpperCase(SeparaStrings(Condicao,';',1))='CADASTRADOS';

    rgSaidas.Checked:= UpperCase(SeparaStrings(Condicao,';',1))='SAIDAS';
    if rgSaidas.Checked then
    	edSaida.Text := SeparaStrings(Condicao,';',2);

    rgEntradas.Checked:= UpperCase(SeparaStrings(Condicao,';',1))='ENTRADAS';
    if rgEntradas.Checked then
    	edEntrada.Text := iif(SeparaStrings(Condicao,';',3)='ID','ID=','')+SeparaStrings(Condicao,';',2);

    if rgItensCadastrados.Checked then begin
    	DataI.Text := SeparaStrings(Condicao,';',2);
      DataF.Text := SeparaStrings(Condicao,';',3);
    end;
    rgSelecionarItens.Checked := UpperCase(SeparaStrings(Condicao,';',1))='SELECIONADOS';
    if rgSelecionarItens.Checked then begin
      PopupFiltroItens.TS_ItensSelecionados := SeparaStrings(Condicao,';',2);
      PopupFiltroItens.TS_GruposSelecionados := SeparaStrings(Condicao,';',3);
      PopupFiltroItens.TS_FabricantesSelecionados := SeparaStrings(Condicao,';',4);
      PopupFiltroItens.TS_FornecedorSelecionado := StrToIntDef(SeparaStrings(Condicao,';',5),0);
      PopupFiltroItens.TS_PossuiEstoque := StrToBool(SeparaStrings(Condicao,';',6));
      PopupFiltroItens.TS_NaoPossuiEstoque := StrToBool(SeparaStrings(Condicao,';',7));
      PopupFiltroItens.TS_EstoqueMinimo := StrToBool(SeparaStrings(Condicao,';',8));
      PopupFiltroItens.TS_EstoqueMaximo := StrToBool(SeparaStrings(Condicao,';',9));
      PopupFiltroItens.TS_EstoquePontoPedido := StrToBool(SeparaStrings(Condicao,';',10));
      PopupFiltroItens.TS_EstoqueNegativo := StrToBool(SeparaStrings(Condicao,';',11));
      PopupFiltroItens.TS_ItensDesativado := StrToBool(SeparaStrings(Condicao,';',12));
      PopupFiltroItens.TS_Estoque := StrToIntDef(SeparaStrings(Condicao,';',14),0);
    end;
  end else if rgComandoSQL.Checked then begin
  	mmSQL.Lines.Text := ComandoSQL;
	end else if rgManualmente.Checked then begin
    mmManualmente.OnChange := nil;
	  mmManualmente.Lines.Text := replace(Manualmente,',',#13);
    mmManualmente.Lines.SetText(PChar(mmManualmente.Lines.Text));
    mmManualmente.OnChange := mmManualmenteChange;
  end;
  if rgItens.Checked then
   	ckbQtdeEstoque.Visible := true
  else begin
    ckbQtdeEstoque.Visible := false;
    ckbQtdeEstoque.Checked := false;
  end;
end;

procedure TDlgEtiquetas.TS_Label44Click(Sender: TObject);
begin
  inherited;
	DBLayout.ColumnsCustomizing;
end;

procedure TDlgEtiquetas.Label3Click(Sender: TObject);
var sArquivo : TStringList;
begin
  inherited;
	if DMProjeto.DlgAbrir.Execute then begin
    sArquivo := TStringList.Create;
  	sArquivo.LoadFromFile( DMProjeto.DlgAbrir.FileName );
    mmSQL.Lines.Text := sArquivo.Text;
    sArquivo.Free;
  end;
end;

procedure TDlgEtiquetas.pgAssistenteChange(Sender: TObject);
begin
  inherited;
{
  try
    if Avancar.Prepared then
      Avancar.Execute;
    if Voltar.Prepared then
      Voltar.Execute;
  finally
    if Avancar.Prepared then
      Avancar.unPrepare;
    if Voltar.Prepared then
      Voltar.unPrepare;
  end;
}
  try
    if Alfa.Prepared then
      Alfa.Execute;
    if Voltar.Prepared then
      Voltar.Execute;
  finally
    if Alfa.Prepared then
      Alfa.unPrepare;
    if Voltar.Prepared then
      Voltar.unPrepare;
  end;
  if pgAssistente.ActivePage.canfocus then
  	ActiveControl := FindNextControl( pgAssistente.ActivePage, true, true, false );
end;

procedure TDlgEtiquetas.DBLayoutDragEndHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; P: TPoint; var NewPosInfo: TdxHeaderPosInfo;
  var Accept: Boolean);
begin
  if cmbCampos.Items.Count > 0 then begin
    if not AColumn.Visible then begin
  		cmbCampos.Checked[cmbCampos.Items.IndexOf(TdxDBTreeListColumn(AColumn).FieldName)] := true;
      SetCamposDicionario(cmbCampos.Items.IndexOf(TdxDBTreeListColumn(AColumn).FieldName));
    end;
  end;

end;

procedure TDlgEtiquetas.cmbCamposDicionarioClickCheck(Sender: TObject);
begin
  inherited;
	SetCampos(cmbCamposDicionario.ItemIndex);
  if DBLayout.VisibleColumnCount > 0	then
		GeraLayout( DBLayout, 1 );
  if (cmbCamposDicionario.Items.IndexOf('PRECO') > 0) and
     (cmbCamposDicionario.Checked[cmbCamposDicionario.Items.IndexOf('PRECO')]) then begin
     lbTabelaPreco.Visible := true;
     cmbTabelaPreco.Visible := true;
  end else begin
     lbTabelaPreco.Visible := false;
     cmbTabelaPreco.Visible := false;
  end;
end;

procedure TDlgEtiquetas.SetCamposDicionario( i :integer );
begin
  cmbCamposDicionario.Checked[i] := cmbCampos.Checked[i];
end;

procedure TDlgEtiquetas.SetCampos( i :integer );
begin
	cmbCampos.Checked[i] := cmbCamposDicionario.Checked[i];
end;

procedure TDlgEtiquetas.cmbCamposClickCheck(Sender: TObject);
begin
  inherited;
	SetCamposDicionario( cmbCampos.ItemIndex );
end;

procedure TDlgEtiquetas.TS_Label45Click(Sender: TObject);
var sEtiqueta : string;
begin
  inherited;
	if clbEtiquetas.ItemIndex <> -1 then begin
    sEtiqueta := clbEtiquetas.Items[clbEtiquetas.ItemIndex];
		if DlgMsg.ShowMsg(802,[sEtiqueta]) = 200 then
    	exit;
    DeleteFile( DMProjeto.EtiquetasPath+sEtiqueta+'.etq' );
    clbEtiquetas.Items.Delete( clbEtiquetas.ItemIndex );
  end;
end;

procedure TDlgEtiquetas.pgAssistenteChangingToTab(Sender: TObject;
  tab: Integer; var AllowChange: Boolean);
var r: TRect;
begin
  inherited;
  if pgAssistente.ActivePage <> nil then begin
    R.TopLeft :=
      ControlScreenToClient( pgAssistente.Parent, ControlClientToScreen( pgAssistente.ActivePage,
                                              pgAssistente.ActivePage.ClientRect.TopLeft));
    R.BottomRight :=
      ControlScreenToClient( pgAssistente.Parent, ControlClientToScreen(pgAssistente.ActivePage,
                                              pgAssistente.ActivePage.ClientRect.BottomRight));
    if (pgAssistente.Pages[Tab].PageIndex > pgAssistente.ActivePageIndex) then
      Alfa.Prepare( pgAssistente.Parent, r )
    else if (pgAssistente.Pages[Tab].PageIndex < pgAssistente.ActivePageIndex) then begin
      Voltar.Prepare( pgAssistente.Parent, r );
		end;
  end;
end;

procedure TDlgEtiquetas.DBLayoutColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  Allow := false;
end;

procedure TDlgEtiquetas.DBLayoutColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
  lbCampoSelecionado.Caption := getCaption(Column.Caption);
  sCampoSelecionado := Column.FieldName;
  EdAntes.OnChange  := nil;
  EdDepois.OnChange  := nil;
  if pos('<',Column.Caption)>0 then
  	EdAntes.Text := SeparaStrings(Column.Caption,'<',1)
  else
    EdAntes.Text := '';
  if pos('>',Column.Caption)>0 then
  	EdDepois.Text := SeparaStrings(Column.Caption,'>',2)
  else
  	EdDepois.Text 	:= '';
	EdAntes.OnChange  := EdAntesChange;
	EdDepois.OnChange := EdDepoisChange;
end;

procedure TDlgEtiquetas.edAntesChange(Sender: TObject);
begin
  inherited;
  if edAntes.Text <> '' then
  	DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption := EdAntes.Text+'<'+getCaption(DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption)+iif(edDepois.Text<>'','>'+EdDepois.Text,'')
  else
  	DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption := getCaption(DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption)+iif(edDepois.Text<>'','>'+EdDepois.Text,'');
end;

function TDlgEtiquetas.getCaption( sCaption : string ) : string;
var sRetorno : string;
begin
	sRetorno := sCaption;
	if pos('<',sRetorno)>0 then
  	sRetorno := SeparaStrings(sRetorno,'<',2);
  if pos('>',sRetorno)>0 then
		sRetorno := SeparaStrings(sRetorno,'>',1);
  result := sRetorno;
end;

function TDlgEtiquetas.getCaptionAntes( sCaption : string ) : string;
var sRetorno : string;
begin
	sRetorno := '';
	if pos('<',sCaption)>0 then
  	sRetorno := SeparaStrings(sCaption,'<',1);
  result := sRetorno;
end;

function TDlgEtiquetas.getCaptionDepois( sCaption : string ) : string;
var sRetorno : string;
begin
	sRetorno := '';
	if pos('>',sCaption)>0 then
  	sRetorno := SeparaStrings(sCaption,'>',2);
  result := sRetorno;
end;

procedure TDlgEtiquetas.edDepoisChange(Sender: TObject);
begin
  inherited;
  if edDepois.Text <> '' then
  	DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption := iif(edAntes.Text<>'',EdAntes.Text+'<','')+getCaption(DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption)+'>'+edDepois.Text
  else
  	DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption := iif(edAntes.Text<>'',EdAntes.Text+'<','')+getCaption(DBLayout.FindColumnByFieldName(sCampoSelecionado).Caption);
end;

procedure TDlgEtiquetas.ckbQtdeEstoqueChange(Sender: TObject);
begin
  inherited;
  edCopias.Enabled := not ckbQtdeEstoque.Checked;
end;

procedure TDlgEtiquetas.LinkEtiquetasCustomDrawCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  var AText: String; var AColor: TColor; AFont: TFont;
  var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
  var ADone: Boolean);
var
  AlturaAnterior, APixel, Anum, ADenom: Integer;
  W, H, i, nCol : Integer;
  R, Area : TRect;
  sRow, sTexto, sStyle, sAlign : String;
  nWidth, ALeft, ARight, ATop, AHeight, AWidth : integer;
  TextAlign: TdxTextAlignX;
  APrevFont: HFONT;
begin

  APixel := OnePixel;
	ANum 	 := PixelsNumerator;
  ADenom := PixelsDenominator;

  ATop   := AClientRect.Top;
  AWidth := (AClientRect.Right - AClientRect.Left + 1 * APixel) div 2;

  if ckbMostrarBorda.Checked then begin
  	Sender.DrawEdge(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone);
  	InflateRect(ABoundsRect, -1 * APixel , -1 * APixel);
  	ACanvas.Brush.Color := clSilver;
  	ACanvas.Brush.Style := bsSolid;
    ACanvas.Pen.Style 	:= psDot;
  	Sender.DrawEdgeEx(ACanvas, ABoundsRect, cemSingle, cesNone, cesNone, [csLeft, csTop, csRight, csBottom]);
  end;
  APrevFont := SelectObject(ACanvas.Handle, AFont.Handle);
  i:=1;
  sTexto:= AText;

  while i <= ContaStrings(sTexto,'|') do begin

  	sRow	:= SeparaStrings(SeparaStrings(sTexto,'|',i),';',2);
    ALeft := 0;
    ARight:= 0;
		AlturaAnterior := 0;
  	while (sRow = SeparaStrings(SeparaStrings(sTexto,'|',i),';',2)) and (i <= ContaStrings(sTexto,'|')) do begin

      AFont.Name := SeparaStrings(SeparaStrings(sTexto,'|',i),';',5);
      AFont.Color:= StringToColor(SeparaStrings(SeparaStrings(sTexto,'|',i),';',6));
      AFont.Size := MulDiv(StrToIntDef(SeparaStrings(SeparaStrings(sTexto,'|',i),';',7),10), ANum, ADenom);
      sStyle := SeparaStrings(SeparaStrings(sTexto,'|',i),';',8);
      AFont.Style := [];
      if pos('N',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsBold];
      if pos('I',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsItalic];
      if pos('S',sStyle) > 0 then
  			AFont.Style := AFont.Style + [fsUnderline];
      if Copy(AFont.Name,1,3) = 'C39' then
      	AText := '*'+SeparaStrings(SeparaStrings(sTexto,'|',i),';',1)+'*'
      else
      	AText := SeparaStrings(SeparaStrings(sTexto,'|',i),';',1);

      AText := replace(AText,#13,'');
      AText := replace(AText,#10,' ');
  		SelectObject(ACanvas.Handle, AFont.Handle);
  		AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;
      if AHeight > AlturaAnterior then
      	AlturaAnterior := AHeight;
      {
      if (AlturaAnterior = 0) and (AHeight > AlturaAnterior) then
      	AlturaAnterior := AHeight;
      }
      nWidth  := StrToIntDef(SeparaStrings(SeparaStrings(sTexto,'|',i),';',4),400);
  		R 			:= Rect(ALeft+AClientRect.Left+(Trunc(edMT.IntValue*Conversor)*APixel), ATop+(Trunc(edST.IntValue*Conversor)*APixel), ALeft + AClientRect.Left + (nWidth*APixel)+(Trunc(edMT.IntValue*Conversor)*APixel), ATop + AlturaAnterior - 1 * APixel + (Trunc(edST.IntValue*Conversor)*APixel));
      ALeft  	:= ALeft + (nWidth*APixel);
			sAlign  := SeparaStrings(SeparaStrings(sTexto,'|',i),';',9);
  		if sAlign = 'E' then
      	TextAlign := taLeft
      else if sAlign = 'D' then
      	TextAlign := taRight
      else
      	TextAlign := taCenterX;
  		Sender.DrawText(ACanvas, R, 0, AText, AFont, clWhite, TextAlign, taTop, False, False, False);
      inc(i);                        //'L = '+IntToStr(nWidth)+' A = '+IntToStr(AlturaAnterior)
    end;
    ATop := ATop + AlturaAnterior;
  end;

  SelectObject(ACanvas.Handle, APrevFont);
  ADone := true;
end;

procedure TDlgEtiquetas.mmManualmenteChange(Sender: TObject);
var i : integer;
begin
  inherited;
  if (mmManualmente.lines.text<>'') and (mmManualmente.lines.count <> DBLayout.ColumnCount) then begin
  	if DBLayout.ColumnCount > 0 then begin
    	DBLayout.DestroyColumns;
    	GeraLayOut( DBLayOut, 1);
  	end;
  end else if DBLayout.ColumnCount > 0 then begin
  	for i:=0 to mmManualmente.lines.count-1 do
    	DBLayout.VisibleColumns[i].Caption := iif(edAntes.Text<>'',EdAntes.Text+'<','')+mmManualmente.lines[i]+iif(edDepois.Text<>'','>'+edDepois.Text,'')
  end;
end;

procedure TDlgEtiquetas.mmManualmenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in [';','|','<','>'] then
  	key := #0;
end;

procedure TDlgEtiquetas.edColunasChange(Sender: TObject);
var i : integer;
begin
  inherited;
  LarguraAutomatica;
  edLinhasPorPagina.Increment := edColunas.IntValue;
 	AlturaAutomatica;
  with clbNaoImprimir do begin
    clear;
    for i:=1 to trunc(edColunas.Value) do
    	items.add(IntToStr(i)+'ª Coluna');
  end;
end;

procedure TDlgEtiquetas.LarguraAutomatica;
var nAjusteH : single;
begin
	if ckbLarguraAutomatica.Checked then begin
    if edColunas.Value > 1 then
    	nAjusteH := (AjusteHorizontal/(trunc(edColunas.Value)-1))
    else
      nAjusteH := 0;
    if edColunas.Value > 0 then
  		edLargura.Value := (((edLarguraPagina.Value/1000)-edME.Value-edMD.Value)/trunc(edColunas.Value));//+nAjusteH;
  end;
end;

function TDlgEtiquetas.getColunasNaoImprimir;
var i : integer;
		sColunas : string;
begin
  sColunas := '';
	for i:=0 to clbNaoImprimir.Items.Count-1 do
  	if clbNaoImprimir.Checked[i] then
    	sColunas := sColunas + IntToStr(i+1) + ',';
  result := sColunas;
end;

procedure TDlgEtiquetas.ckbLarguraAutomaticaChange(Sender: TObject);
begin
  inherited;
	edLargura.Enabled := not ckbLarguraAutomatica.Checked;
  edEspHorizontal.Enabled := not ckbLarguraAutomatica.checked;
  if ckbLarguraAutomatica.Checked then begin
    edEspHorizontal.Value   := 0;
  	LarguraAutomatica;
  end;
end;

procedure TDlgEtiquetas.ckbAlturaAutomaticaChange(Sender: TObject);
begin
  inherited;
	edAltura.Enabled 					:= not ckbAlturaAutomatica.checked;
  edEspVertical.Enabled 		:= not ckbAlturaAutomatica.checked;
  lbLinhasPorPagina.Enabled := ckbAlturaAutomatica.checked;
  edLinhasPorPagina.Enabled := ckbAlturaAutomatica.checked;
  if ckbAlturaAutomatica.Checked then begin
    edLinhasPorPagina.Value := 0;
    edEspVertical.Value   := 0;
  	AlturaAutomatica;
  end else if edLinhasPorPagina.CanFocus then
  	edLinhasPorPagina.SetFocus;
end;

procedure TDlgEtiquetas.edLinhasPorPaginaChange(Sender: TObject);
begin
  inherited;
  AlturaAutomatica;
end;

procedure TDlgEtiquetas.AlturaAutomatica;
var nDivisao : integer;
begin
	if ckbAlturaAutomatica.Checked then
    if (edLinhasPorPagina.Value > 0) and (edLinhasPorPagina.IntValue <> edColunas.IntValue) then begin
      nDivisao := trunc(edLinhasPorPagina.IntValue / edColunas.IntValue);
      if nDivisao < 1 then
      	nDivisao := 1;
  		edAltura.Value := (((edAlturaPagina.Value/1000)-edMS.Value-edMI.Value)/(nDivisao))-AjusteVertical;
    end;
end;

procedure TDlgEtiquetas.tsModeloEtiquetaShow(Sender: TObject);
begin
  inherited;
  if edModelo.Text = '' then
  	edModelo.Text := 'Modelo de '+edNome.Text;
  edColunasChange(sender);
end;

procedure TDlgEtiquetas.tsIntroducaoShow(Sender: TObject);
begin
  inherited;
  btGravar.Enabled := true;
	btLimpar.Enabled := false;
  btComando1.Visible := false;
end;

procedure TDlgEtiquetas.TS_Label41Click(Sender: TObject);
begin
  inherited;
  if not rgSelecionarClientes.Checked then begin
    rgSelecionarClientes.SetFocus;
		rgSelecionarClientes.Checked := true;
  end else
  	rgSelecionarClientesClick(sender);
end;

procedure TDlgEtiquetas.tsClientesShow(Sender: TObject);
begin
  inherited;
  if pos('<mes>',cmbPeriodo.Items.Text) > 0 then
  	cmbPeriodo.Items.Text := replace(cmbPeriodo.Items.Text,'<mes>',DMProjeto.getDescricaoMes(Month(DMProjeto.dDataSistema)));
	if not C_UFs.Active then
  	C_UFs.Open;
	if not Q_GruposCliente.Active then
  	Q_GruposCliente.Open;
end;

procedure TDlgEtiquetas.edEspHorizontalChange(Sender: TObject);
begin
  inherited;
	if ckbLarguraAutomatica.Checked then
		LarguraAutomatica
  else
	  edLarguraChange(sender);
end;

procedure TDlgEtiquetas.edAlturaPaginaChange(Sender: TObject);
begin
  inherited;
	if ckbAlturaAutomatica.Checked then
		AlturaAutomatica
  else
  	
end;

procedure TDlgEtiquetas.edLarguraPaginaChange(Sender: TObject);
begin
  inherited;
	LarguraAutomatica;
end;

procedure TDlgEtiquetas.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if DBLayout.FindColumnByFieldName( sCampoSelecionado ) <> nil then
		DBLayout.ConfigurarColuna( sCampoSelecionado );
end;

procedure TDlgEtiquetas.DBLayoutCustomDrawColumnHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
	AFont.Name 	:= AColumn.Font.Name;
  AFont.Color := AColumn.Font.Color;
  AFont.Size 	:= AColumn.Font.Size;
  AFont.Style := AColumn.Font.Style;
  AAlignment 	:= AColumn.Alignment;
  ADone := false;
end;

procedure TDlgEtiquetas.TS_Label42Click(Sender: TObject);
begin
  inherited;
  if not rgSelecionarFornecedores.Checked then begin
    rgSelecionarFornecedores.SetFocus;
		rgSelecionarFornecedores.Checked := true;
  end else
  	rgSelecionarFornecedoresClick(sender);
end;

procedure TDlgEtiquetas.TS_Label43Click(Sender: TObject);
begin
  inherited;
  if not rgSelecionarFuncionarios.Checked then begin
    rgSelecionarFuncionarios.SetFocus;
		rgSelecionarFuncionarios.Checked := true;
  end else
  	rgSelecionarFuncionariosClick(sender);
end;

procedure TDlgEtiquetas.clbEtiquetasClick(Sender: TObject);
begin
	MostraCaracteristica( clbEtiquetas.ItemIndex );
end;

procedure TDlgEtiquetas.MostraCaracteristica( Index : integer );
var Etiqueta : TIniFile;
	  AlturaEtiqueta, AlturaPagina : double;
begin
  if Index = -1 then begin
  	lbDimensoes.Caption := '';
    lbColunas.Caption 	:= '';
    lbTamanhoPapel.Caption := '';
    lbTipoEtiqueta.Caption := '';
    lbEtiquetasPorPagina.Caption := '';
    lbUltimaVez.Caption := '';
    lbUsuario.Caption := '';
    Application.ProcessMessages;
    Exit;
  end;
	try
  	Etiqueta := TIniFile.Create( DMProjeto.EtiquetasPath+clbEtiquetas.Items[Index]+'.etq' );
    with Etiqueta do begin
    	lbDimensoes.Caption 		:= formatfloat('##0.00',StrToFloat(SetDecimal(ReadString('Etiqueta','Largura','0'))))+'mm X '+
      											 		 formatfloat('##0.00',StrToFloat(SetDecimal(ReadString('Etiqueta','Altura','0'))))+'mm ';
    	lbColunas.Caption				:= ReadString('Etiqueta','Colunas','0');
      lbTamanhoPapel.Caption 	:= iif(SetDecimal(ReadString('Etiqueta','Largura da Pagina','0'))='215900','Papel Carta (8.5 x 11")',
      													 iif(SetDecimal(ReadString('Etiqueta','Largura da Pagina','0'))='210000','Papel A4 (21.0 x 29.7 cm)',
                                 formatfloat('###0.00',StrToFloat(SetDecimal(ReadString('Etiqueta','Largura da Pagina','0'))) / 10000)+' cm X '+
                                 formatfloat('###0.00',StrToFloat(SetDecimal(ReadString('Etiqueta','Altura da Pagina','0'))) / 10000)+' cm'));
    	lbTipoEtiqueta.Caption	:= ReadString('Etiqueta','Tipo','');
      AlturaEtiqueta := StrToFloat(SetDecimal(ReadString('Etiqueta','Altura','0')));
      AlturaPagina	 := StrToFloat(SetDecimal(ReadString('Etiqueta','Altura da Pagina','0')))/1000;
      lbEtiquetasPorPagina.Caption := IntToStr(Trunc(AlturaPagina / AlturaEtiqueta)*StrToInt(lbColunas.Caption));
      lbUltimaVez.Caption		 := ReadString('Etiqueta','Data','');
      lbUsuario.Caption		 	 := ReadString('Etiqueta','Usuario','');
    end;
  finally
  	Etiqueta.Free;
  end;
end;

procedure TDlgEtiquetas.edModeloExit(Sender: TObject);
begin
  inherited;
	 if (FileExists(PChar(DMProjeto.EtiquetasPath+edNome.Text+'.etq'))) and (not CopyFile( PChar(DMProjeto.EtiquetasPath+edModelo.Text+'.mod'), 'c:\max01.tmp', true )) then
  	ShowMessage('Este nome de arquivo é inválido.');
  if fileexists('c:\max01.tmp') then
  	DeleteFile('c:\max01.tmp');
end;

procedure TDlgEtiquetas.edNomeExit(Sender: TObject);
begin
  inherited;
  if (FileExists(PChar(DMProjeto.EtiquetasPath+edNome.Text+'.etq'))) and (not CopyFile( PChar(DMProjeto.EtiquetasPath+edNome.Text+'.etq'), 'c:\max01.tmp', true )) then
  	ShowMessage('Este nome de arquivo é inválido.');
  if fileexists('c:\max01.tmp') then
  	DeleteFile('c:\max01.tmp');
end;

procedure TDlgEtiquetas.cmbOrdemChange(Sender: TObject);
var sCamposSelecionados : string;
begin
  inherited;
	btLimpar.Enabled := true;
	sCamposSelecionados := cmbCampos.Selecionados( true );
  GeraSQL('',cmbCampos.Items[cmbOrdem.ItemIndex]);
	cmbCampos.SetSelecionados( sCamposSelecionados, true );
end;

procedure TDlgEtiquetas.DBLayoutColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var nLinha, i, j : integer;
		nLarguraTotal, nLarguraDividida : integer;
    sColunas : string;
begin

	Application.ProcessMessages;
  j := 0;
  while j < DBLayout.VisibleColumnCount-1 do begin
    nLinha := DBLayout.VisibleColumns[j].RowIndex;
    nLarguraTotal := 0;
    sColunas := '';
  	while (DBLayout.VisibleColumns[j].RowIndex = nLinha) and (j < DBLayout.VisibleColumnCount-1) do begin
       nLarguraTotal := nLarguraTotal + DBLayout.VisibleColumns[j].Width;
       sColunas := sColunas + inttostr(j) + ',';
       inc( j );
    end;
    sColunas := Copy(sColunas,1,Length(sColunas)-1);
    if getLargura <> nLarguraTotal then begin
      nLarguraTotal := getLargura;
      nLarguraDividida := nLarguraTotal div ContaStrings(sColunas,',');
    	for i:=1 to ContaStrings(sColunas,',') do begin
         if i <> ContaStrings(sColunas,',') then
         		DBLayout.VisibleColumns[StrToInt(SeparaStrings(sColunas,',',i))].Width := nLarguraDividida
         else
            DBLayout.VisibleColumns[StrToInt(SeparaStrings(sColunas,',',i))].Width := nLarguraTotal;
         nLarguraTotal := nLarguraTotal - nLarguraDividida;
      end;
    end;
  end;
end;

function TDlgEtiquetas.GetColumnRealWidth(ATreeList: TCustomdxTreeList; AColumn: Integer):Integer;
var
  DrawInfo: TdxGridDrawInfo;
  i, K: Integer;
begin
  Result := -1;
  with ATreeList do
    try
      K := GetFocusedAbsoluteIndex(AColumn);
      CalcDrawInfo(DrawInfo);
      with DrawInfo do
        for i := 0 to HeaderCount - 1 do
        begin
          if HeadersInfo^[i].AbsoluteIndex = K then
          with HeadersInfo^[i].HeaderRect do
          begin
            Result := Right - Left;
            Break;
          end;
        end;
    finally
      FreeDrawInfo(DrawInfo);
    end;
end;

procedure TDlgEtiquetas.TS_SpeedButton4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
	ppmCamposChave.PopupFromCursorPos;
end;

procedure TDlgEtiquetas.EnderecodaEmpresa1Click(Sender: TObject);
begin
  inherited;
	edCampo.Text := TMenuItem(Sender).Caption;
  btMais.Click;
end;

procedure TDlgEtiquetas.btMaisClick(Sender: TObject);
begin
  inherited;
	if edCampo.Text = '' then
  	exit;
  if lbCamposAdicionais.ItemIndex = -1 then
		lbCamposAdicionais.Items.Add(edCampo.Text)
  else
  	lbCamposAdicionais.Items[lbCamposAdicionais.ItemIndex] := edCampo.Text;
  edCampo.Text := '';
  edCampo.SetFocus;
end;

procedure TDlgEtiquetas.edCampoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	if key = #13 then
  	btMais.Click;
end;

procedure TDlgEtiquetas.lbCamposAdicionaisClick(Sender: TObject);
begin
  inherited;
	if lbCamposAdicionais.ItemIndex <> -1 then
  	edCampo.Text := lbCamposAdicionais.Items[lbCamposAdicionais.ItemIndex];
end;

procedure TDlgEtiquetas.lbCamposAdicionaisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = vk_delete then
  	if lbCamposAdicionais.ItemIndex <> -1 then
    	lbCamposAdicionais.Items.Delete(lbCamposAdicionais.ItemIndex);
end;

procedure TDlgEtiquetas.TS_Label67Click(Sender: TObject);
begin
  inherited;
  lbCamposAdicionais.Items.Clear;
  cmbCamposDicionario.Items.Clear;
  cmbCampos.Items.Clear;
  {Itens}
  rgItensInventario.Checked := true;
  {Funcionarios}
  lbFuncionarios.Items.Clear;
  rgFuncionariosAtivos.Checked:= true;
  {Fornecedores}
  rgFornecedoresAtivos.Checked:= true;
  lbFornecedores.Items.Clear;
  {Clientes}
  rgClientesAtivos.Checked := true;
  lbClientes.Items.Clear;

  mmSQL.Lines.Clear;
  mmManualmente.Lines.Clear;
  edNome.Text := '';
  rgNova.Checked := true;
  btGravar.Enabled := true;
  btLimpar.Enabled := false;
  pgAssistente.ActivePageIndex := 0;
end;

procedure TDlgEtiquetas.AberturaAfterTransition(Sender: TObject);
begin
  inherited;
{
	Texto.Prepare(lbIntroducao.Parent, lbIntroducao.BoundsRect);
  try
  	lbIntroducao.Visible := true;
    if Texto.Prepared then
    	Texto.Execute;
  finally
  	Texto.UnPrepare;
  end;
	Texto.Prepare(pn1.Parent, pn1.BoundsRect);
  try
  	pn1.Visible := true;
    if Texto.Prepared then
    	Texto.Execute;
  finally
  	Texto.UnPrepare;
  end;
	Texto.Prepare(pn2.Parent, pn2.BoundsRect);
  try
  	pn2.Visible := true;
    if Texto.Prepared then
    	Texto.Execute;
  finally
  	Texto.UnPrepare;
  end;
}
end;

procedure TDlgEtiquetas.AlfaAfterTransition(Sender: TObject);
begin
  inherited;
{
  LabelEff := TdxfLabel(FindComponent('lb'+pgAssistente.ActivePage.Name));
  if LabelEff <> nil then begin
		Texto.Prepare(LabelEff.Parent, LabelEff.BoundsRect);
  	try
  		LabelEff.Visible := true;
    	if Texto.Prepared then
    		Texto.Execute;
  	finally
  		Texto.UnPrepare;
  	end;
	end;
}
end;

procedure TDlgEtiquetas.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := IntToStr( nPag );
  inc( nPag );
end;

procedure TDlgEtiquetas.rbCartaBeforePrint(Sender: TObject);
begin
  inherited;
	nPag := 1;
end;

procedure TDlgEtiquetas.rtTextoPrint(Sender: TObject);
var i : integer;
begin
  TppRichText(Sender).RichText := sTexto;
  if pos('[EXTENSO(<VALOR>)]', UpperCase(TppRichText(Sender).RichText) ) > 0 then
    TppRichText(Sender).RichText :=  replace(TppRichText(Sender).RichText,'[Extenso(<Valor>)]',Util2Ingles.Extenso(Q_SQL.FieldByName('Valor').AsFloat));

  for i:=0 to slCamposConsulta.Count-1 do
    if Q_SQL.FieldByName(slCamposConsulta[i]).DataType in [ftFloat,ftBCD] then
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',formatfloat('###,###,##0.00',Q_SQL.FieldByName(slCamposConsulta[i]).AsFloat))
    else
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',Q_SQL.FieldByName(slCamposConsulta[i]).AsString);
end;

procedure TDlgEtiquetas.btCartasClick(Sender: TObject);
begin
  inherited;
  slCamposConsulta := TStringList.Create;
  slCamposConsulta.LoadFromFile(DMProjeto.ProgPath+'Textos\'+Q_TextosTexto.AsString+'.rtf');
  sTexto := slCamposConsulta.Text;
  slCamposConsulta.Clear;
  GeraSQL;
	Q_SQL.Close;
  Q_SQL.getFieldNames( slCamposConsulta );
  Q_SQL.Open;
  if ckbCabecalho.Checked then
  	DMProjeto.ImprimirCabecalho( regCab )
  else
  	regCab.Visible := false;
  rbCarta.Print;
  slCamposConsulta.Free;
end;

procedure TDlgEtiquetas.btNovaCartaClick(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('FrmTextos',self,true);
end;

procedure TDlgEtiquetas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
 	if UpperCase(LastDataObject.TableName) = 'TEXTOS' then
		if rgNovaCarta.Checked then begin
      Q_Textos.Close;
      Q_Textos.OnFilterRecord := nil;
      Q_Textos.Open;
      Q_Textos.Locate('Texto',LastDataObject.ObjectKey,[]);
    	lbCarta.Tag := LastDataObject.ObjectKey;
      lbCarta.Caption := Q_TextosTitulo.AsString;
    end;
end;

procedure TDlgEtiquetas.btModificarCartaClick(Sender: TObject);
begin
  inherited;
	if rgCartaAniversariantes.Checked then begin
    DMProjeto.SetParametrosForm([9]);
    DMProjeto.CriarForm('FrmTextos',self,true);
  end else if rgCartaClientesEmDia.Checked then begin
    DMProjeto.SetParametrosForm([4]);
    DMProjeto.CriarForm('FrmTextos',self,true);
  end else if rgCartaClientesEmAtraso.Checked then begin
    DMProjeto.SetParametrosForm([2]);
    DMProjeto.CriarForm('FrmTextos',self,true);
  end else if rgCartaClientesComCredito.Checked then begin
    DMProjeto.SetParametrosForm([10]);
    DMProjeto.CriarForm('FrmTextos',self,true);
  end else if rgCartaClientesDevolvidos.Checked then begin
    DMProjeto.SetParametrosForm([3]);
    DMProjeto.CriarForm('FrmTextos',self,true);
  end else if rgAbrirCarta.Checked then begin
    if cmbTextos.LookUpKeyValue = 0 then begin
    	DlgMsg.ShowMsg(929, ['a carta existente'] );
      cmbTextos.SetFocus;
      Exit;
    end;
    DMProjeto.SetParametrosForm([cmbTextos.LookUpKeyValue]);
    DMProjeto.CriarForm('FrmTextos',self,true);
	end;
end;

procedure TDlgEtiquetas.rgCartaAniversariantesClick(Sender: TObject);
begin
  inherited;
  btNovaCarta.Visible := false;
	btModificarCarta.Visible := true;
  Q_Textos.Close;
  if rgAbrirCarta.Checked then
  	Q_Textos.OnFilterRecord := Q_TextosFilterRecord
  else
  	Q_Textos.OnFilterRecord := nil;
  Q_Textos.Open;
  Q_Textos.Locate('Texto',TControl(Sender).Tag,[]);
  btModificarCarta.Top := TControl(Sender).Top-2;
end;

procedure TDlgEtiquetas.rgNovaCartaClick(Sender: TObject);
begin
  inherited;
	btModificarCarta.Visible := false;
  btNovaCarta.Visible := true;
end;

procedure TDlgEtiquetas.Q_TextosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept := rgAbrirCarta.Checked and DataSet['Texto'] > 100;
end;

procedure TDlgEtiquetas.cmbAniversarioChange(Sender: TObject);
begin
  inherited;
	cmbPeriodo.ItemIndex := cmbAniversario.ItemIndex;
end;

procedure TDlgEtiquetas.lbCartaClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
		SetParametrosForm([lbCarta.Tag]);
    CriarForm('FrmTextos',self,true);
  end;
end;

procedure TDlgEtiquetas.DBLayoutContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
//  inherited;
  Handled := true;
end;

procedure TDlgEtiquetas.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
	rgSelecionarItens.Checked := true;
end;

procedure TDlgEtiquetas.TS_SpeedButton3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
	ppmCampos.PopupFromCursorPos;
end;

procedure TDlgEtiquetas.PopupFiltroItensChange(Sender: TObject);
begin
  inherited;
	rgSelecionarItens.Checked := true;
end;

procedure TDlgEtiquetas.btComando1Click(Sender: TObject);
var sCamposSelecionados : string;
begin
  inherited;
  sCamposSelecionados := cmbCampos.Selecionados( true );
  GeraSQL;
  cmbCampos.SetSelecionados( sCamposSelecionados, true );
  GravaModelo(edModelo.Text);
  GravaEtiqueta(edNome.Text);
  btEtiquetas.Click;
end;

procedure TDlgEtiquetas.btSetaParaBaixoClick(Sender: TObject);
begin
  inherited;
  clbPayrolls.Height := 190;
  shpPayrolls.Height := 192;
  btSetaParaCima.Visible := true;
end;

procedure TDlgEtiquetas.btSetaParaCimaClick(Sender: TObject);
begin
  inherited;
  btSetaParaCima.Visible := false;
  clbPayrolls.Height := 94;
  shpPayrolls.Height := 97;
end;

end.
