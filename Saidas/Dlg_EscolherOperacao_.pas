unit Dlg_EscolherOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, ExtCtrls, TS_Shape, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_PopupEdit, TS_ButtonEdit,
  TS_EditFavorecido, dxEditor, TS_DateTimePicker, TS_Edit, DB, DBClient,
  Provider, IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, TS_DBLookupComboBox, TS_GroupBox,
  TS_EditItem, TS_CalcEdit, TS_LookupComboBox, dxGrClEx;

type
  TDlgEscolherOperacao = class(TFrmModeloCadastros)
    Q_Saidas: TIBQuery;
    P_Saidas: TDataSetProvider;
    C_Saidas: TClientDataSet;
    C_SaidasDS: TDataSource;
    C_SaidasSAIDA: TIntegerField;
    C_SaidasNUMERO: TStringField;
    C_SaidasDATA: TDateField;
    C_SaidasFAVORECIDO: TIntegerField;
    C_SaidasOBS: TStringField;
    C_SaidasDESCONTO: TBCDField;
    C_SaidasVENDEDOR: TIntegerField;
    C_SaidasFRETE: TBCDField;
    C_SaidasSITUACAO: TStringField;
    C_SaidasTIPOMOVIMENTO: TIntegerField;
    C_SaidasPEDIDO_CLIENTE: TStringField;
    C_SaidasOUTRASDESPESAS: TBCDField;
    C_SaidasJUROS: TBCDField;
    C_SaidasCAMPO01: TStringField;
    C_SaidasCAMPO02: TStringField;
    C_SaidasCAMPO03: TStringField;
    C_SaidasCAMPO04: TStringField;
    C_SaidasIMPRESSO: TStringField;
    C_SaidasIMPOSTO: TBCDField;
    C_SaidasIMPOSTO_INCLUSO: TBCDField;
    C_SaidasVALIDADE: TDateField;
    C_SaidasSTATUS: TStringField;
    C_SaidasDESCMOVIMENTO: TStringField;
    C_SaidasNOMECLIENTE: TStringField;
    C_SaidasNOMEVENDEDOR: TStringField;
    C_Saidas_icSelecionado: TIntegerField;
    Pesquisar1: TMenuItem;
    TS_Bevel2: TTS_Bevel;
    Q_TiposMovimento: TIBQuery;
    P_TiposMovimento: TDataSetProvider;
    C_TiposMovimento: TClientDataSet;
    C_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentoDESCRICAO: TStringField;
    C_TiposMovimentoTIPO: TStringField;
    C_TiposMovimentoPOSSUITAX: TStringField;
    C_TiposMovimentoBAIXAESTOQUE: TStringField;
    C_TiposMovimentoCALCCOMISSAO: TStringField;
    C_TiposMovimentoPOSSUIENTREGA: TStringField;
    C_TiposMovimentoBLOQUEARSEATRASADO: TStringField;
    C_TiposMovimentoBLOQUEARPORSITUACAO: TStringField;
    C_TiposMovimentoBLOQUEARPORESTOQUE: TStringField;
    C_TiposMovimentoLIMITEFAVORECIDO: TStringField;
    C_TiposMovimentoSIGLAINICIAL: TStringField;
    C_TiposMovimentoTIPOPADRAO: TIntegerField;
    C_TiposMovimentoDESCTIPOPADRAO: TStringField;
    C_TiposMovimentoTIT1_DATA: TStringField;
    C_TiposMovimentoTIT2_DATA: TStringField;
    C_TiposMovimentoTIT1_NUMERO: TStringField;
    C_TiposMovimentoTIT2_NUMERO: TStringField;
    C_TiposMovimentoCB_INFOENTREGA: TStringField;
    C_TiposMovimentoTIT1_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT1_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT1_TIPOENTREGA: TStringField;
    C_TiposMovimentoTIT2_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT2_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT2_TIPOENTREGA: TStringField;
    C_TiposMovimentoCB_VENDEDOR: TStringField;
    C_TiposMovimentoTIT1_VENDEDOR: TStringField;
    C_TiposMovimentoTIT2_VENDEDOR: TStringField;
    C_TiposMovimentoCB_PEDIDO: TStringField;
    C_TiposMovimentoTIT1_PEDIDO: TStringField;
    C_TiposMovimentoTIT2_PEDIDO: TStringField;
    C_TiposMovimentoCB_COMISSAO: TStringField;
    C_TiposMovimentoTIT1_COMISSAO: TStringField;
    C_TiposMovimentoTIT2_COMISSAO: TStringField;
    C_TiposMovimentoCB_TERMOS: TStringField;
    C_TiposMovimentoTIT1_TERMOS: TStringField;
    C_TiposMovimentoTIT2_TERMOS: TStringField;
    C_TiposMovimentoCB_MENSAGEM: TStringField;
    C_TiposMovimentoTIT1_MENSAGEM: TStringField;
    C_TiposMovimentoTIT2_MENSAGEM: TStringField;
    C_TiposMovimentoCB_DESCONTOS: TStringField;
    C_TiposMovimentoTIT1_DESCONTOS: TStringField;
    C_TiposMovimentoTIT2_DESCONTOS: TStringField;
    C_TiposMovimentoCB_FRETE: TStringField;
    C_TiposMovimentoTIT1_FRETE: TStringField;
    C_TiposMovimentoTIT2_FRETE: TStringField;
    C_TiposMovimentoCB_TOTALITENS: TStringField;
    C_TiposMovimentoTIT1_TOTALITENS: TStringField;
    C_TiposMovimentoTIT2_TOTALITENS: TStringField;
    C_TiposMovimentoCB_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT2_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_DESCRICAO: TStringField;
    C_TiposMovimentoTIT1_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT1_PRECO: TStringField;
    C_TiposMovimentoTIT1_SUBTOTAL: TStringField;
    C_TiposMovimentoTIT2_DESCRICAO: TStringField;
    C_TiposMovimentoTIT2_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT2_PRECO: TStringField;
    C_TiposMovimentoTIT2_SUBTOTAL: TStringField;
    C_TiposMovimentoCB_JUROS: TStringField;
    C_TiposMovimentoTIT1_JUROS: TStringField;
    C_TiposMovimentoTIT2_JUROS: TStringField;
    C_TiposMovimentoCB_DESPESAS: TStringField;
    C_TiposMovimentoTIT1_DESPESAS: TStringField;
    C_TiposMovimentoTIT2_DESPESAS: TStringField;
    C_TiposMovimentoCB_CAMPO01: TStringField;
    C_TiposMovimentoTIT1_CAMPO1: TStringField;
    C_TiposMovimentoTIT2_CAMPO1: TStringField;
    C_TiposMovimentoCB_CAMPO02: TStringField;
    C_TiposMovimentoTIT1_CAMPO2: TStringField;
    C_TiposMovimentoTIT2_CAMPO2: TStringField;
    C_TiposMovimentoCB_CAMPO03: TStringField;
    C_TiposMovimentoTIT1_CAMPO3: TStringField;
    C_TiposMovimentoTIT2_CAMPO3: TStringField;
    C_TiposMovimentoCB_CAMPO04: TStringField;
    C_TiposMovimentoTIT1_CAMPO4: TStringField;
    C_TiposMovimentoTIT2_CAMPO4: TStringField;
    C_TiposMovimentoCB_CODIGO: TStringField;
    C_TiposMovimentoTIT1_CODIGO: TStringField;
    C_TiposMovimentoTIT2_CODIGO: TStringField;
    C_TiposMovimentoCB_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT1_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT2_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT1_COLUNA1: TStringField;
    C_TiposMovimentoTIT1_COLUNA2: TStringField;
    C_TiposMovimentoTIT1_COLUNA3: TStringField;
    C_TiposMovimentoTIT1_COLUNA4: TStringField;
    C_TiposMovimentoTIT2_COLUNA1: TStringField;
    C_TiposMovimentoTIT2_COLUNA2: TStringField;
    C_TiposMovimentoTIT2_COLUNA3: TStringField;
    C_TiposMovimentoTIT2_COLUNA4: TStringField;
    C_TiposMovimentoCORTITULOS: TIntegerField;
    C_TiposMovimentoTIPOFAVPADRAO: TIntegerField;
    C_TiposMovimentoCB_COLUNA1: TStringField;
    C_TiposMovimentoCB_COLUNA2: TStringField;
    C_TiposMovimentoCB_COLUNA3: TStringField;
    C_TiposMovimentoCB_COLUNA4: TStringField;
    C_TiposMovimentoTIT1_UNIDADE: TStringField;
    C_TiposMovimentoTIT2_UNIDADE: TStringField;
    C_TiposMovimentoFOTO: TStringField;
    C_TiposMovimentoTIT1_VALIDADE: TStringField;
    C_TiposMovimentoTIT2_VALIDADE: TStringField;
    C_TiposMovimentoCB_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_REFERENCIA: TStringField;
    C_TiposMovimentoTIT2_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT1_SITUACAO: TStringField;
    C_TiposMovimentoTIT2_SITUACAO: TStringField;
    C_TiposMovimentoATUALIZACUSTO: TStringField;
    C_TiposMovimentoATUALIZAPRECO: TStringField;
    C_TiposMovimentoINCLUIDESCONTO: TStringField;
    C_TiposMovimentoATUALIZAPRECOMANUAL: TStringField;
    C_TiposMovimentoCB_STATUS: TStringField;
    C_TiposMovimentoSTATUSPADRAO: TStringField;
    C_TiposMovimentoCB_STATUSITENS: TStringField;
    C_TiposMovimentoSTATUSPADRAOITENS: TStringField;
    C_TiposMovimentoCB_DOCSGARANTIA: TStringField;
    C_TiposMovimentoCB_IMPRIMIROP: TStringField;
    C_TiposMovimentoCB_PGTOS: TStringField;
    C_TiposMovimentoCB_FICHACLIENTE: TStringField;
    C_TiposMovimentoCB_TOPRINTER: TStringField;
    C_TiposMovimentoCB_GERARNUM: TStringField;
    C_TiposMovimentoFAVORECIDOPADRAO: TIntegerField;
    C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField;
    C_TiposMovimentoMENSAGEMPADRAO: TIntegerField;
    C_TiposMovimentoCB_CONTRATO: TStringField;
    C_TiposMovimentoTEMPLATE: TIntegerField;
    C_TiposMovimentoTERMOCONTRATO: TIntegerField;
    C_TiposMovimentoTIPOORIGEM: TIntegerField;
    C_TiposMovimentoDIASVALIDADE: TIntegerField;
    C_TiposMovimentoTABELAPADRAO: TIntegerField;
    C_TiposMovimentoALMOXPADRAO: TIntegerField;
    C_TiposMovimentoTIPODESCRICAO: TStringField;
    C_TiposMovimentoPOSSUIICMS: TStringField;
    C_TiposMovimentoPOSSUIIPI: TStringField;
    C_TiposMovimentoPOSSUIISS: TStringField;
    C_TiposMovimentoCONTABILIZAICMS: TStringField;
    C_TiposMovimentoSERIE: TStringField;
    C_TiposMovimentoMODELODOC: TStringField;
    C_TiposMovimentoCB_ICMS: TStringField;
    C_TiposMovimentoCB_TVA: TStringField;
    C_TiposMovimentoCB_IPI: TStringField;
    C_TiposMovimentoTIT1_ICMS: TStringField;
    C_TiposMovimentoTIT1_TVA: TStringField;
    C_TiposMovimentoTIT1_IPI: TStringField;
    C_TiposMovimentoCB_LICITACAO: TStringField;
    C_TiposMovimentoCB_CFOP: TStringField;
    C_TiposMovimentoTIT1_CFOP: TStringField;
    C_TiposMovimentoTIT2_CFOP: TStringField;
    C_TiposMovimentoTIPOCOB_PADRAO: TIntegerField;
    C_TiposMovimentoDS: TDataSource;
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dfDataI: TTS_DateTimePicker;
    dfDataF: TTS_DateTimePicker;
    dfCliente: TTS_EditFavorecido;
    dfVendedor: TTS_EditFavorecido;
    dfNumero: TTS_Edit;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    lbOperacao: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    dfTotal1: TTS_CalcEdit;
    dfTotal2: TTS_CalcEdit;
    Shape3: TShape;
    TS_Label81: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    dfItem: TTS_EditItem;
    dfQtd1: TTS_CalcEdit;
    dfQtd2: TTS_CalcEdit;
    dfPreco1: TTS_CalcEdit;
    dfPreco2: TTS_CalcEdit;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    Shape1: TShape;
    TS_Label17: TTS_Label;
    TS_Shape1: TTS_Shape;
    lbSerial: TTS_Label;
    dfSerial: TTS_Edit;
    lbCampo1: TTS_Label;
    lbCampo2: TTS_Label;
    lbCampo3: TTS_Label;
    dfCampo1: TTS_Edit;
    dfCampo2: TTS_Edit;
    dfCampo3: TTS_Edit;
    lbCampo4: TTS_Label;
    dfCampo4: TTS_Edit;
    lbColuna1: TTS_Label;
    lbColuna2: TTS_Label;
    lbColuna3: TTS_Label;
    dfColuna1: TTS_Edit;
    dfColuna2: TTS_Edit;
    dfColuna3: TTS_Edit;
    lbColuna4: TTS_Label;
    dfColuna4: TTS_Edit;
    Q_Fabricantes: TIBQuery;
    P_Fabricantes: TDataSetProvider;
    C_Fabricantes: TClientDataSet;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    C_FabricantesDS: TDataSource;
    Q_Grupos: TIBQuery;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposCODIGO: TStringField;
    C_GruposDESCRICAOGRUPO: TStringField;
    C_GruposTIPOITEM: TIntegerField;
    C_GruposDESCONTOMAXIMO: TBCDField;
    C_GruposCOMISSAO: TBCDField;
    C_GruposCUSTODESPESAS: TBCDField;
    C_GruposFATORLUCRO: TBCDField;
    C_GruposCST: TStringField;
    C_GruposREDUCAOCST: TBCDField;
    C_GruposALIQICMS: TBCDField;
    C_GruposSITUACAOECF: TStringField;
    C_GruposTVA: TBCDField;
    C_GruposTVAFONTE: TBCDField;
    C_GruposDS: TDataSource;
    P_Grupos: TDataSetProvider;
    cmbTipoMovimento: TTS_LookupComboBox;
    cmbGrupo: TTS_LookupComboBox;
    cmbFabricante: TTS_LookupComboBox;
    btIR_Para: TTS_SpeedButton;
    TS_Bevel3: TTS_Bevel;
    ppmIRPara: TTS_PopupMenu;
    ltimoparaOperao1: TMenuItem;
    EstimatesqueVencem1: TMenuItem;
    Amanha: TMenuItem;
    VencemHoje1: TMenuItem;
    VencidasOntem1: TMenuItem;
    odasasVencidas1: TMenuItem;
    N6: TMenuItem;
    ltimoCancelado1: TMenuItem;
    N9: TMenuItem;
    OperaesCanceladas1: TMenuItem;
    pmPedidosCaixa: TMenuItem;
    Q_SQL: TIBQuery;
    C_SaidasDescStatus: TStringField;
    ppmGrid: TTS_PopupMenu;
    btItens: TTS_SpeedButton;
    C_ItensDS: TDataSource;
    Q_Itens: TIBQuery;
    C_Itens: TClientDataSet;
    C_ItensIDITEM: TIntegerField;
    C_ItensIDMESTRE: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensQUANTIDADE: TBCDField;
    C_ItensPRECO: TFloatField;
    C_ItensITEM: TIntegerField;
    C_ItensI_TIPOITEM: TIntegerField;
    C_ItensI_CODIGO: TStringField;
    C_ItensUNIDADE: TStringField;
    Q_Master: TDataSource;
    pnGrid: TTS_Panel;
    Grid: TTS_QDBGrid;
    GridNUMERO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridNOMECLIENTE: TdxDBGridMaskColumn;
    GridTOTAL: TdxDBGridMaskColumn;
    GridNOMEVENDEDOR: TdxDBGridMaskColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridDESCMOVIMENTO: TdxDBGridMaskColumn;
    GridVALIDADE: TdxDBGridDateColumn;
    GridPEDIDO_CLIENTE: TdxDBGridMaskColumn;
    GridTOTALITENS: TdxDBGridMaskColumn;
    GridDESCONTO: TdxDBGridMaskColumn;
    GridFRETE: TdxDBGridMaskColumn;
    GridOUTRASDESPESAS: TdxDBGridMaskColumn;
    GridJUROS: TdxDBGridMaskColumn;
    GridIMPOSTO: TdxDBGridMaskColumn;
    GridIMPOSTO_INCLUSO: TdxDBGridMaskColumn;
    GridCAMPO01: TdxDBGridMaskColumn;
    GridCAMPO02: TdxDBGridMaskColumn;
    GridCAMPO03: TdxDBGridMaskColumn;
    GridCAMPO04: TdxDBGridMaskColumn;
    GridIMPRESSO: TdxDBGridMaskColumn;
    GridSTATUS: TdxDBGridMaskColumn;
    GridSAIDA: TdxDBGridMaskColumn;
    GridSITUACAO: TdxDBGridMaskColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridVENDEDOR: TdxDBGridMaskColumn;
    GridTIPOMOVIMENTO: TdxDBGridMaskColumn;
    GridColumn29: TdxDBGridColumn;
    dbgItens: TTS_QDBGrid;
    dbgItensSEQUENCIA: TdxDBGridMaskColumn;
    dbgItensFuncProducao: TdxDBGridLookupColumn;
    dbgItensI_CODIGO: TdxDBGridButtonColumn;
    dbgItensDESCRICAO: TdxDBGridButtonColumn;
    dbgItensReferencia: TdxDBGridButtonColumn;
    dbgItensI_UNIDADE: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensPRECO: TdxDBGridPopupColumn;
    dbgItensSubTotal: TdxDBGridColumn;
    dbgItensTipoItem: TdxDBGridColumn;
    dbgItensStatus: TdxDBGridImageColumn;
    dbgItensUsoTipoItem: TdxDBGridColumn;
    dbgItensColuna1: TdxDBGridColumn;
    dbgItensColuna2: TdxDBGridColumn;
    dbgItensColuna3: TdxDBGridColumn;
    dbgItensColuna4: TdxDBGridColumn;
    dbgItensBaixoEstoque: TdxDBGridColumn;
    dbgItensI_Percentual: TdxDBGridColumn;
    dbgItensColumn19: TdxDBGridColumn;
    dbgItensColumn20: TdxDBGridColumn;
    dbgItensMesclado: TdxDBGridColumn;
    C_SaidasQ_Itens: TDataSetField;
    C_TiposMovimentoCFOPASSOCIADO: TStringField;
    C_SaidasTOTAL: TBCDField;
    C_SaidasTOTALITENS: TBCDField;
    C_ItensSUBTOTAL: TBCDField;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dfNumeroChange(Sender: TObject);
    procedure cmbTipoMovimentoChange(Sender: TObject);
    procedure btIR_ParaClick(Sender: TObject);
    procedure ltimoparaOperao1Click(Sender: TObject);
    procedure AmanhaClick(Sender: TObject);
    procedure VencemHoje1Click(Sender: TObject);
    procedure VencidasOntem1Click(Sender: TObject);
    procedure odasasVencidas1Click(Sender: TObject);
    procedure ltimoCancelado1Click(Sender: TObject);
    procedure OperaesCanceladas1Click(Sender: TObject);
    procedure pmPedidosCaixaClick(Sender: TObject);
    procedure GridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btComando2Click(Sender: TObject);
    procedure btItensClick(Sender: TObject);
  private
    { Private declarations }
    nTipo : Integer;
    sComando : String;

    procedure Pesquisar(Where : String);
    function  ConstruirWhere: String;
    function  ConstruirWhereItens: String;
  public
    { Public declarations }
  end;

var
  DlgEscolherOperacao: TDlgEscolherOperacao;

implementation
  Uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgEscolherOperacao.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TDlgEscolherOperacao.btGravarClick(Sender: TObject);
begin
  inherited;
  if Grid.Selecionados <> '' then
    Grid.FirstSelected;
    
  ModalResult := C_SaidasSaida.Value;
end;

procedure TDlgEscolherOperacao.btComando1Click(Sender: TObject);
begin
  inherited;
  Pesquisar(ConstruirWhere);
end;

procedure TDlgEscolherOperacao.btLimparClick(Sender: TObject);
begin
  inherited;
  dfDataI.Clear;
  dfDataF.Clear;
  dfNumero.Clear;
  dfCliente.Clear;
  dfVendedor.Clear;

  cmbTipoMovimento.LookupKeyValue := null;
  dfTotal1.Value := 0;
  dfTotal2.Value := 0;
  dfCampo1.Clear;
  dfCampo2.Clear;
  dfCampo3.Clear;
  dfCampo4.Clear;

  dfItem.Clear;
  dfQtd1.Value := 0;
  dfQtd2.Value := 0;
  dfPreco1.Value := 0;
  dfPreco2.Value := 0;
  cmbGrupo.LookupKeyValue := null;
  cmbFabricante.LookupKeyValue := null;
  dfSerial.Clear;
  dfColuna1.Clear;
  dfColuna2.Clear;
  dfColuna3.Clear;
  dfColuna4.Clear;
           
  C_Saidas.Close;
end;

procedure TDlgEscolherOperacao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then
    nTipo := DMProjeto.GetParametrosForm(1)
  else
    nTipo := 1;

  if not DMProjeto.LerPermissao('FrmSaidas', 'FatLivreVnd') then begin
    dfVendedor.ID := DMProjeto.nFuncionarioLogado;
    dfVendedor.ViewStyle := vsHideCursor;
  end;

  if DMProjeto.GetParametrosForm(2) <> null then
    FormsComponent.Caption := FormsComponent.Caption + ' ' + DMProjeto.GetParametrosForm(2);

  sComando := Q_Saidas.SQL.Text;

end;

procedure TDlgEscolherOperacao.GridDblClick(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
end;

procedure TDlgEscolherOperacao.FormShow(Sender: TObject);
begin
  inherited;
  C_TiposMovimento.Open;
  C_Grupos.Open;
  C_Fabricantes.Open;

  dfDataI.Date := DMProjeto.dDataSistema;
  dfDataF.Date := DMProjeto.dDataSistema;

  cmbTipoMovimento.LookupKeyValue := nTipo;

  lbSerial.Visible := DMProjeto.Parametro('Identificacao') = 'S';
  dfSerial.Visible := lbSerial.Visible;

  pmPedidosCaixa.Visible := DMProjeto.Parametro('ExisteCaixa') = 'S';

  Pesquisar(ConstruirWhere);
end;

procedure TDlgEscolherOperacao.dfNumeroChange(Sender: TObject);
begin
  inherited;
  dfDataI.Text := '';
  dfDataF.Text := '';
end;

procedure TDlgEscolherOperacao.cmbTipoMovimentoChange(Sender: TObject);
var
  nDec : Integer;
begin
  inherited;

  if not C_TiposMovimento.Active then
    exit;

  nDec := 0;

  {Campos Adicionais}
  lbCampo1.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
  lbCampo2.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
  lbCampo3.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
  lbCampo4.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

  dfCampo1.Visible := lbCampo1.Visible;
  dfCampo2.Visible := lbCampo2.Visible;
  dfCampo3.Visible := lbCampo3.Visible;
  dfCampo4.Visible := lbCampo4.Visible;

  lbCampo1.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO1').asString);
  lbCampo2.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO2').asString);
  lbCampo3.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO3').asString);
  lbCampo4.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO4').asString);


  {Colunas}
  lbColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
  lbColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
  lbColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
  lbColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';

  dfColuna1.Visible := lbColuna1.Visible;
  dfColuna2.Visible := lbColuna2.Visible;
  dfColuna3.Visible := lbColuna3.Visible;
  dfColuna4.Visible := lbColuna4.Visible;

  lbColuna1.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna1').asString;
  lbColuna2.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna2').asString;
  lbColuna3.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna3').asString;
  lbColuna4.Caption := C_TiposMovimento.FieldByName('TIT1_Coluna4').asString;


  {Definindo Tamanho do Grid}
  if lbCampo1.Visible or lbColuna1.Visible then
    inc(nDec,20);
  if lbCampo2.Visible or lbColuna2.Visible then
    inc(nDec,20);
  if lbCampo3.Visible or lbColuna3.Visible then
    inc(nDec,20);
  if lbCampo4.Visible or lbColuna4.Visible then
    inc(nDec,20);

  pnGrid.Top := 143 + nDec;
  pnGrid.Height := 266 - nDec;

end;

procedure TDlgEscolherOperacao.Pesquisar;
begin

  Q_Saidas.SQL.Text := replace(sComando,'and XXX',IIF(Where <> '', ' and ', '')+Where);

  C_Saidas.Close;
  C_Saidas.Open;

end;

function TDlgEscolherOperacao.ConstruirWhere : String;
var
  sWhere : String;
begin

  sWhere := '';

  if dfNumero.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfNumero.TagStr + QuotedStr(CompleteCode(Trim(dfNumero.Text),7))
  else begin
    sWhere := ConstruirWhereItens;

    if cmbTipoMovimento.LookupKeyValue <> null then
      sWhere := CExp(sWhere,' and ') + cmbTipoMovimento.TagStr + IntToStr(cmbTipoMovimento.LookupKeyValue);

    if dfDataI.Text[1] <> ' ' then
      sWhere := CExp(sWhere,' and ') + dfDataI.TagStr + QuotedStr(MesDiaAno(Trunc(dfDataI.Date)));

    if dfDataF.Text[1] <> ' ' then
      sWhere := CExp(sWhere,' and ') + dfDataF.TagStr + QuotedStr(MesDiaAno(Trunc(dfDataF.Date)));

    if dfCliente.ID > 0 then
      sWhere := CExp(sWhere,' and ') + dfCliente.TagStr + IntToStr(dfCliente.ID);

    if dfTotal1.Value > 0 then
      sWhere := CExp(sWhere,' and ') + dfTotal1.TagStr + dfTotal1.Text;

    if dfTotal2.Value > 0 then
      sWhere := CExp(sWhere,' and ') + dfTotal2.TagStr + dfTotal2.Text;

    if dfCampo1.Text <> '' then
      sWhere := CExp(sWhere,' and ') + dfCampo1.TagStr + QuotedStr(dfCampo1.Text+'%');

    if dfCampo2.Text <> '' then
      sWhere := CExp(sWhere,' and ') + dfCampo2.TagStr + QuotedStr(dfCampo2.Text+'%');

    if dfCampo3.Text <> '' then
      sWhere := CExp(sWhere,' and ') + dfCampo3.TagStr + QuotedStr(dfCampo3.Text+'%');

    if dfCampo4.Text <> '' then
      sWhere := CExp(sWhere,' and ') + dfCampo4.TagStr + QuotedStr(dfCampo4.Text+'%');

  end;

  if dfVendedor.ID > 0 then
    sWhere := CExp(sWhere,' and ') + dfVendedor.TagStr + IntToStr(dfVendedor.ID);


  result := sWhere;

end;

function TDlgEscolherOperacao.ConstruirWhereItens : String;
var
  sWhere : String;
begin
  sWhere := '';

  if dfItem.ID > 0 then
    sWhere := CExp(sWhere,' and ') + dfItem.TagStr + IntToStr(dfItem.ID);

  if cmbGrupo.LookupKeyValue <> null then
    sWhere := CExp(sWhere,' and ') + cmbGrupo.TagStr + IntToStr(cmbGrupo.LookupKeyValue);

  if cmbFabricante.LookupKeyValue <> null then
    sWhere := CExp(sWhere,' and ') + cmbFabricante.TagStr + IntToStr(cmbFabricante.LookupKeyValue);

  if dfQtd1.Value > 0 then
    sWhere := CExp(sWhere,' and ') + dfQtd1.TagStr + dfQtd1.Text;

  if dfQtd2.Value > 0 then
    sWhere := CExp(sWhere,' and ') + dfQtd2.TagStr + dfQtd2.Text;

  if dfPreco1.Value > 0 then
    sWhere := CExp(sWhere,' and ') + dfPreco1.TagStr + dfPreco1.Text;

  if dfPreco2.Value > 0 then
    sWhere := CExp(sWhere,' and ') + dfPreco2.TagStr + dfPreco2.Text;

  if dfColuna1.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfColuna1.TagStr + QuotedStr(dfColuna1.Text+'%');

  if dfColuna2.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfColuna2.TagStr + QuotedStr(dfColuna2.Text+'%');

  if dfColuna3.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfColuna3.TagStr + QuotedStr(dfColuna3.Text+'%');

  if dfColuna4.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfColuna4.TagStr + QuotedStr(dfColuna4.Text+'%');


  if sWhere <> '' then with Q_SQL do begin
    Close;
    SQL.Text := 'Select Distinct si.Saida '+
                'from	 (SAIDASITENS si LEFT JOIN ITENS I on I.ITEM = si.ITEM) '+
                'where '+ sWhere;
    try
      Open;

      sWhere := '';
      while not EOF do begin
        sWhere := CExp(sWhere,',') + FieldByName('Saida').asString;
        Next;
      end;

      Close;

      if sWhere <> '' then
        sWhere := ' s.Saida in ('+sWhere+') ';

    except
      sWhere := '';
      Close;
    end;

  end;

  result := sWhere;
end;

procedure TDlgEscolherOperacao.btIR_ParaClick(Sender: TObject);
begin
  inherited;
  if TTS_SpeedButton(Sender).PopupMenu <> nil then
    TTS_PopupMenu(TTS_SpeedButton(Sender).PopupMenu).PopupFromCursorPos;
end;

procedure TDlgEscolherOperacao.ltimoparaOperao1Click(Sender: TObject);
var
  IPWhere : String;
begin
  inherited;

  IPWhere := ConstruirWhere;

  with Q_SQL do begin
    Close;
    SQL.Text := 'Select Max(s.Saida) from Saidas s '+
                IIF(IPWhere <> '', ' where ' + IPWhere, '');
    try
      Open;

      if Fields[0].asInteger > 0 then
        IPWhere := ' s.Saida = '+Fields[0].asString
      else
        IPWhere := ' s.Saida is null ';
    except
      IPWhere := ' s.Saida is null ';
    end;

    Close;

  end;

  Pesquisar(IPWhere);
end;

procedure TDlgEscolherOperacao.AmanhaClick(Sender: TObject);
begin
  inherited;
  Pesquisar(' s.Validade = '+QuotedStr(MesDiaAno( DMProjeto.dDataSistema + 1 )));
end;

procedure TDlgEscolherOperacao.VencemHoje1Click(Sender: TObject);
begin
  inherited;
  Pesquisar(' where s.Validade = '+QuotedStr(MesDiaAno( DMProjeto.dDataSistema )));
end;

procedure TDlgEscolherOperacao.VencidasOntem1Click(Sender: TObject);
begin
  inherited;
  Pesquisar(' where s.Validade = '+QuotedStr(MesDiaAno( DMProjeto.dDataSistema - 1)));
end;

procedure TDlgEscolherOperacao.odasasVencidas1Click(Sender: TObject);
begin
  inherited;
  Pesquisar(' where s.Validade <= '+QuotedStr(MesDiaAno( DMProjeto.dDataSistema )));
end;


procedure TDlgEscolherOperacao.ltimoCancelado1Click(Sender: TObject);
var
  IPWhere : String;
begin
  inherited;

  with Q_SQL do begin
    Close;
    SQL.Text := 'Select Max(s.Saida) from Saidas s '+
                IIF(IPWhere <> '', ' where ' + IPWhere + ' and ', ' where ');

    SQL.Text := SQL.Text + ' s.Situacao = ''C'' ';

    try
      Open;

      if Fields[0].asInteger > 0 then
        IPWhere := ' s.Saida = '+Fields[0].asString
      else
        IPWhere := ' s.Saida is null ';
    except
      IPWhere := ' s.Saida is null ';
    end;

    Close;

  end;

  Pesquisar(IPWhere);

end;

procedure TDlgEscolherOperacao.OperaesCanceladas1Click(Sender: TObject);
begin
  inherited;

  Pesquisar(' s.Situacao = ''C'' ');

end;

procedure TDlgEscolherOperacao.pmPedidosCaixaClick(Sender: TObject);
begin
  inherited;

  Pesquisar(' s.Situacao = ''N'' and s.Status = ''X'' and s.TipoPadrao in (2,3) ' );

end;

procedure TDlgEscolherOperacao.GridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (Grid.GetFieldValue( ANode, 'Situacao', 'N' ) = 'S') then begin
    AFont.Color := clRed;
    AFont.Style := [fsStrikeOut];
  end;
end;

procedure TDlgEscolherOperacao.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirDocumentosSaida( C_SaidasSaida.Value, True );
end;

procedure TDlgEscolherOperacao.btItensClick(Sender: TObject);
begin
  inherited;
  dbgItens.visible := btItens.down;
  if dbgItens.visible then begin
    Grid.Align := alTop;
    Grid.Height := 150;
    if not C_Itens.active then
      C_Itens.open;
  end
  else
    Grid.Align := alClient;
end;

end.
