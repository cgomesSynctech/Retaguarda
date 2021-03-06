unit Dlg_ConsultaPrecos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit, TS_DBEditItem,
  FormsComponent, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_DBCheckBox, Db, TS_ButtonEdit, TS_EditItem,
  IBCustomDataSet, IBQuery, DBClient, Provider, DBText, TS_DBTextEffect,
  ComCtrls, TS_PageControl, dxDBTLCl, dxGrClms, TS_DBComboBox, TS_DBEdit,
  BTOdeum, Placemnt, TS_EditFavorecido, TransEff, teTimed, teBmpMsk, teForm,
  teMasked, teIntrlc, Mask, DBCtrls, TS_Shape, Math, TS_DBText;

type
  TDlgConsultaPrecos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    lbEstoque: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    C_ItensDS: TDataSource;
    C_ProdutosPrecoDS: TDataSource;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    Q_Itens: TIBQuery;
    Q_ProdutosPreco: TIBQuery;
    dfItem: TTS_EditItem;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensESTOQUE: TBCDField;
    C_ItensDESCRICAOGRUPO: TStringField;
    C_ItensTAXAVEL: TStringField;
    C_ItensDESCFABRIC: TStringField;
    C_ItensITEM: TIntegerField;
    lblCodigo: TTS_DBTextEffect;
    lblReferencia: TTS_DBTextEffect;
    lblUnidade: TTS_DBTextEffect;
    lblEstoque: TTS_DBTextEffect;
    C_ItensREFERENCIA: TStringField;
    bv: TTS_Bevel;
    btCalc: TTS_SpeedButton;
    TS_Label8: TTS_Label;
    TS_DBTextEffect1: TTS_DBTextEffect;
    C_ItensQTDEMINIMO: TBCDField;
    C_ItensDESCONTOMAXIMO: TBCDField;
    C_ItensCAMPO01: TStringField;
    C_ItensCAMPO02: TStringField;
    C_ItensCAMPO03: TStringField;
    C_ItensCAMPO04: TStringField;
    C_ItensCAMPO05: TStringField;
    C_ItensCAMPO06: TStringField;
    C_ItensCAMPO07: TStringField;
    C_ItensCAMPO08: TStringField;
    C_ItensCAMPO09: TStringField;
    C_ItensCAMPO10: TStringField;
    C_ItensFOTO: TStringField;
    C_ItensFATORLUCRO: TFloatField;
    C_ItensNOMEFORN: TStringField;
    pcConsulta: TTS_PageControl;
    tsDadosPrinc: TTS_TabSheet;
    tsDadosCustom: TTS_TabSheet;
    dbgTabelaPreco: TTS_QDBGrid;
    dbgTabelaPrecoDESCRICAO: TdxDBGridMaskColumn;
    dbgTabelaPrecoColumn4: TdxDBGridColumn;
    P_ProdutosPreco: TDataSetProvider;
    btHistoricos: TTS_SpeedButton;
    ScrollBox1: TScrollBox;
    lblCampo1: TTS_Label;
    lblCampo2: TTS_Label;
    lblCampo3: TTS_Label;
    lblCampo4: TTS_Label;
    lblCampo5: TTS_Label;
    lblCampo6: TTS_Label;
    lblCampo7: TTS_Label;
    lblCampo8: TTS_Label;
    lblCampo9: TTS_Label;
    lblCampo10: TTS_Label;
    dfCampo1: TTS_DBEdit;
    dfCampo2: TTS_DBEdit;
    dfCampo3: TTS_DBEdit;
    dfCampo4: TTS_DBEdit;
    dfCampo5: TTS_DBEdit;
    dfCampo6: TTS_DBEdit;
    dfCampo7: TTS_DBEdit;
    dfCampo8: TTS_DBEdit;
    dfCampo9: TTS_DBEdit;
    dfCampo10: TTS_DBEdit;
    cbCampo1: TTS_DBCheckBox;
    cbCampo2: TTS_DBCheckBox;
    cbCampo3: TTS_DBCheckBox;
    cbCampo4: TTS_DBCheckBox;
    cbCampo5: TTS_DBCheckBox;
    cbCampo6: TTS_DBCheckBox;
    cbCampo7: TTS_DBCheckBox;
    cbCampo8: TTS_DBCheckBox;
    cbCampo9: TTS_DBCheckBox;
    cbCampo10: TTS_DBCheckBox;
    cmbCampo1: TTS_DBComboBox;
    cmbCampo2: TTS_DBComboBox;
    cmbCampo3: TTS_DBComboBox;
    cmbCampo4: TTS_DBComboBox;
    cmbCampo5: TTS_DBComboBox;
    cmbCampo6: TTS_DBComboBox;
    cmbCampo7: TTS_DBComboBox;
    cmbCampo8: TTS_DBComboBox;
    cmbCampo9: TTS_DBComboBox;
    cmbCampo10: TTS_DBComboBox;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensPRECOCOMPRA: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensPRECO: TBCDField;
    dbgTabelaPrecoPRECO: TdxDBGridCalcColumn;
    dbgTabelaPrecoColumn5: TdxDBGridMaskColumn;
    dbgTabelaPrecoColumn6: TdxDBGridColumn;
    C_ItensPONTOPEDIDO: TBCDField;
    C_ItensTAXINCLUSO: TStringField;
    C_ItensSEMLUCRO: TFloatField;
    C_ItensFATORUNDVENDA: TFloatField;
    C_ItensDESCMAXGRUPO: TBCDField;
    Q_Unidades: TIBQuery;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    P_Unidades: TDataSetProvider;
    C_ItenslkUnidade: TStringField;
    ppmUnidades: TTS_PopupMenu;
    C_ItensicEstoque: TBCDField;
    C_ItensicMinimo: TBCDField;
    C_ItensicPontoPedido: TBCDField;
    lbCliente: TTS_Label;
    dfCliente: TTS_EditFavorecido;
    dbgTabelaPrecoColumn7: TdxDBGridColumn;
    dbgTabelaPrecoColumn8: TdxDBGridColumn;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPrecoDESATIVADO: TStringField;
    C_TabelasPrecoBASEADA: TStringField;
    P_TabelasPreco: TDataSetProvider;
    C_ProdutosPreco: TClientDataSet;
    C_ProdutosPreco_icSelecionado: TIntegerField;
    C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
    C_ProdutosPrecoITEM: TIntegerField;
    C_ProdutosPrecoTABELAPRECO: TIntegerField;
    C_ProdutosPrecoPRECOMANUAL: TStringField;
    C_ProdutosPrecoPrecoMinimo: TCurrencyField;
    C_ProdutosPrecoUNIDADE: TStringField;
    C_ProdutosPrecoPERCENTUAL: TBCDField;
    C_ProdutosPrecoBASEADA: TStringField;
    C_ProdutosPrecolkTabela: TStringField;
    C_ItensicCustoMedio: TStringField;
    C_ItensicMPV: TStringField;
    TS_SpeedButton2: TTS_SpeedButton;
    C_ItensFatorCorrente: TFloatField;
    C_ProdutosPrecoicFatorUnidade: TFloatField;
    TranList: TTransitionList;
    df_Foto: TTS_Image;
    Shape1: TShape;
    T_FormShow: TBmpMaskTransition;
    DBEdit1: TDBEdit;
    lbxItens: TDBLookupListBox;
    TS_Shape1: TTS_Shape;
    dbtPrecoVenda: TTS_DBTextEffect;
    C_ItensicPreco: TBCDField;
    TS_DBTextEffect4: TTS_DBTextEffect;
    C_ItensicPromocao: TStringField;
    C_ProdutosPrecoPRECOPROMOCAO: TBCDField;
    dbgTabelaPrecoPromocao: TdxDBGridMaskColumn;
    tsSubItens: TTS_TabSheet;
    C_ItensFilhos: TClientDataSet;
    C_ItensFilhosIDFILHO: TIntegerField;
    C_ItensFilhosITEM: TIntegerField;
    C_ItensFilhosSUBITEM: TIntegerField;
    C_ItensFilhosQUANTIDADE: TBCDField;
    C_ItensFilhosUNIDADE: TStringField;
    C_ItensFilhosFATOR: TFloatField;
    C_ItensFilhosCODIGO: TStringField;
    C_ItensFilhosDESCRICAO: TStringField;
    C_ItensFilhosCUSTOMEDIO: TFloatField;
    C_ItensFilhosPRECO: TBCDField;
    C_ItensFilhosDS: TDataSource;
    Q_ItensFilhos: TIBQuery;
    dbgSubItens: TTS_QDBGrid;
    dbgSubItensMONTAGEMFILHO: TdxDBGridMaskColumn;
    dbgSubItensMONTAGEM: TdxDBGridMaskColumn;
    dbgSubItensITEM: TdxDBGridMaskColumn;
    dbgSubItensCodigo: TdxDBGridButtonColumn;
    dbgSubItensDescricao: TdxDBGridButtonColumn;
    dbgSubItensUnidade: TdxDBGridColumn;
    dbgSubItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgSubItensColumn9: TdxDBGridColumn;
    P_ItensFilhos: TDataSetProvider;
    C_ItensFilhosESTOQUEATUAL: TFloatField;
    C_ItensFilhosPRECOPROMOCAO: TBCDField;
    C_ItensFilhosPRECOMANUAL: TStringField;
    C_ItensFilhosTABELAPRECO: TIntegerField;
    dbgSubItensColumn10: TdxDBGridColumn;
    dbgSubItensColumn11: TdxDBGridColumn;
    dbgSubItensColumn12: TdxDBGridColumn;
    dbgSubItensColumn13: TdxDBGridColumn;
    lbPromocao: TdxfLabel;
    DBEdit2: TDBEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    tsMostrarPanel: TTS_Panel;
    TS_Label2: TTS_Label;
    lblGrupo: TTS_DBTextEffect;
    TS_Label3: TTS_Label;
    lblFabricante: TTS_DBTextEffect;
    TS_Label16: TTS_Label;
    TS_DBTextEffect9: TTS_DBTextEffect;
    TS_Label9: TTS_Label;
    TS_DBTextEffect2: TTS_DBTextEffect;
    lbCusto: TTS_Label;
    dbtCusto: TTS_DBTextEffect;
    lbMPV: TTS_Label;
    dbtMPV: TTS_DBTextEffect;
    TS_DBCheckBox1: TTS_DBCheckBox;
    lbTaxIncluso: TTS_Label;
    lbMenorPreco: TTS_Label;
    ExibirMenorPreo1: TMenuItem;
    N1: TMenuItem;
    C_ProdutosPrecoPRECO_NORMAL: TBCDField;
    C_ProdutosPrecoPRECO: TCurrencyField;
    C_ItensINDEXADOR: TIntegerField;
    Q_SQL: TIBQuery;
    C_ItensLOCALIZACAO: TIntegerField;
    C_ItensESTOQUEFISCAL: TBCDField;
    C_ItensicDIFESTOQUE: TFloatField;
    lblEstoqueFiscal: TTS_DBTextEffect;
    lbDifEstoque: TTS_Label;
    lblDifEstoque: TTS_DBTextEffect;
    C_ItensicESTOQUEFISCAL: TFloatField;
    lbEstoqueFiscal: TTS_Label;
    C_ItensLOCALIZA: TStringField;
    TS_Label4: TTS_Label;
    lblLocalizacao: TTS_DBTextEffect;
    C_ItensAlmoxDS: TDataSource;
    C_ItensAlmox: TClientDataSet;
    C_ItensAlmoxITEMALMOX: TIntegerField;
    C_ItensAlmoxITEM: TIntegerField;
    C_ItensAlmoxALMOXARIFADO: TIntegerField;
    C_ItensAlmoxESTOQUEALMOX: TBCDField;
    C_ItensAlmoxDESCRICAO: TStringField;
    Q_ItensAlmox: TIBQuery;
    P_ItensAlmox: TDataSetProvider;
    pnAlmox01: TTS_Panel;
    pnAlmox02: TTS_Panel;
    dbgAlmox: TTS_QDBGrid;
    dbgAlmoxDESCRICAO: TdxDBGridMaskColumn;
    dbgAlmoxESTOQUEALMOX: TdxDBGridMaskColumn;
    C_ItensEMPRESA: TIntegerField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensULTIMOFORNECEDOR: TIntegerField;
    C_ItensFORNECPREFERENCIA: TIntegerField;
    lbCustoManual: TTS_Label;
    lblCustoManual: TTS_DBTextEffect;
    C_ItensCUSTOMANUAL: TBCDField;
    C_ItensDESCRICAOTECNICA: TStringField;
    procedure btGravarClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btHistoricosClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure dbgTabelaPrecoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure lblUnidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgTabelaPrecoCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure btCalcClick(Sender: TObject);
    procedure C_ItensCalcFields(DataSet: TDataSet);
    procedure C_ProdutosPrecoCalcFields(DataSet: TDataSet);
    procedure DBEdit1Change(Sender: TObject);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbtPrecoVendaDblClick(Sender: TObject);
    procedure C_ItensicPromocaoChange(Sender: TField);
    procedure dbgTabelaPrecoDblClick(Sender: TObject);
    procedure C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dfItemIniciarLocalizar(Sender: TObject; var Value: String;
      var bSkip: Boolean);
    procedure dbgSubItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBEdit2Change(Sender: TObject);
    procedure dfClienteChange(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure ExibirMenorPreo1Click(Sender: TObject);
    procedure df_FotoDblClick(Sender: TObject);
    procedure dfItemNaoAchou(Sender: TObject);
    procedure lblEstoqueDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    bLancar: boolean;
    nSeq, nTabelaCliente : Integer;
    sCodigoCusto : String;
    nTabelaCorrente : Integer;

    procedure LerCamposDefinidos;
    procedure PopulaCampo(obj:TTS_DBComboBox;nCampo:integer);
    procedure MostrarTabelaPreco( sUnidade : string );
    procedure CriarUnidades( nItem : integer );
    procedure miUnidadeClick(Sender : TObject);

  public
    { Public declarations }
  end;

var
  DlgConsultaPrecos: TDlgConsultaPrecos;

implementation
uses DM_Projeto, Variants, funcoes, Dlg_EstatVendasProduto, Dlg_UltimasVendasProd,
     Dlg_UltimosFornecimentos, DLG_VisialuzadorImagem;

{$R *.DFM}

procedure TDlgConsultaPrecos.btGravarClick(Sender: TObject);
begin
  inherited;
  if bLancar then
    ModalResult := C_ItensItem.value
  else
    ModalResult := -1;
end;

procedure TDlgConsultaPrecos.dfItemSelecionou(Sender: TObject);
var
  i : Integer;
  s : String;
begin
  inherited;
  dfItem.Text := '';
  FormsComponent.Caption := 'Consulta de Pre�os ';
  lbCaption.Font.Color := clBlack;

  if (DMProjeto.C_LocalizarItens.FieldByName('BALANCO').AsString = 'S') Then Begin
    FormsComponent.Caption := 'Consulta de Pre�os - Item em Balan�o.';
    lbCaption.Font.Color := clRed
  End;


  CriarUnidades( dfItem.ID );

  if not C_Itens.locate('item',dfItem.ID,[]) then
    C_Itens.append
  else
    C_Itens.edit;

  C_ItensItem.value          := dfItem.ID;

  if C_ItensEmpresa.IsNull Then
    C_ItensEmpresa.value  := -1;

  if C_ItensFornecpreferencia.IsNull Then
    C_ItensFornecpreferencia.value  := -1;

  C_ItensEstoqueFiscal.Value := DMProjeto.C_LocalizarItens.FieldByName('icEstoqueFiscal').Value;
//  C_ItensEstoqueFiscal.asVariant := DMProjeto.C_LocalizarItens.FieldByName('icDifEstoque').Value;


  C_ItensDescFabric.asVariant := DMProjeto.C_LocalizarItens.FieldByName('DescFabricante').Value;
  C_ItensDescricaoGrupo.asVariant := DMProjeto.C_LocalizarItens.FieldByName('DescricaoGrupo').Value;
  C_ItensDescMaxGrupo.value  := DMProjeto.C_LocalizarItens.FieldByName('DESCONTOMAXIMOGrupo').asFloat;
  If DMProjeto.C_LocalizarItens.FieldByName('DescLocalizacao').IsNull Then
     C_ItensLOCALIZA.VALUE := 'Padrao.'
  Else
     C_ItensLOCALIZA.VALUE := DMProjeto.C_LocalizarItens.FieldByName('DescLocalizacao').Value;

  for i := 0 to C_Itens.FieldCount - 1 do begin
    s := C_Itens.Fields[i].FieldName;

    try
      if DMProjeto.C_LocalizarItens.FindField(s) <> nil then
        C_Itens.FieldByName(s).Value := DMProjeto.C_LocalizarItens.FieldByName(s).Value;
    except
    end;

  end;

  C_Itens.post;

  DBEdit1Change(self);
end;

procedure TDlgConsultaPrecos.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','EV') then
    exit;
  DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self,dfItem.id,0,dfItem.text);
  DlgEstatVendasProduto.free;
end;

procedure TDlgConsultaPrecos.btComando2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','ULTVENDAS') then
    exit;
  DlgUltimasVendasProd := TDlgUltimasVendasProd.Create(self,dfItem.ID,dfItem.text);
  DlgUltimasVendasProd.free;
end;

procedure TDlgConsultaPrecos.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dfItem.ID]);
  DMProjeto.CriarForm('FrmItens',self,true);
end;

procedure TDlgConsultaPrecos.btLimparClick(Sender: TObject);
begin
  inherited;
  C_Itens.close;
  C_Itens.open;
  C_ProdutosPreco.close;
  C_ItensFilhos.close;
  C_ItensAlmox.Close;
  dfItem.text := '';
  dfCliente.Text := '';
  ActiveControl := dfItem;
  dbgTabelaPreco.Visible := false;
  DF_Foto.Picture := nil;
end;

procedure TDlgConsultaPrecos.FormCreate(Sender: TObject);
begin
  inherited;
  if not DMProjeto.LerPermissao(self.name,'CP_CUSTOS') then begin
    lbCusto.visible := false;
    lbMPV.Visible := false;
    dbtCusto.Visible := false;
    dbtMPV.Visible := false;
  end;

  if not DMProjeto.LerPermissao(self.name,'CP_DESCTO') then begin
    dbgTabelaPrecoColumn5.Visible := false;
    dbgTabelaPrecoColumn5.DisableCustomizing := true;
  end;

  bLancar := Owner.name <> 'MDIProjeto';
  if bLancar then
    btGravar.caption := 'Lan�ar';

  pcConsulta.ActivePage := tsDadosPrinc;

  nTabelaCorrente := DMProjeto.nTabelaPadraoFunc;

  LerCamposDefinidos;
  C_Itens.open;


  nSeq := -10;

  CriarUnidades(-8888);
end;

procedure TDlgConsultaPrecos.btHistoricosClick(Sender: TObject);
begin
  inherited;
  lbxItens.visible := btHistoricos.down;
  if btHistoricos.down then
    ActiveControl := lbxItens
  else
    ActiveControl := dfItem;
end;

procedure TDlgConsultaPrecos.LerCamposDefinidos;
var i:integer;
    sCampo,sTitulo,sTipo,sCamposDef,sCamposTit,sCamposTipo: string;
begin
  sCamposDef  := DMProjeto.Parametro('ItensCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('ItensCamposTitulos');
  sCamposTipo := DMProjeto.Parametro('ItensCamposTipos');
  lblCampo1.visible := false;
  dfCampo1.visible := false;
  cbCampo1.visible := false;
  cmbCampo1.visible := false;
  lblCampo2.visible := false;
  dfCampo2.visible := false;
  cbCampo2.visible := false;
  cmbCampo2.visible := false;
  lblCampo3.visible := false;
  dfCampo3.visible := false;
  cbCampo3.visible := false;
  cmbCampo3.visible := false;
  lblCampo4.visible := false;
  dfCampo4.visible := false;
  cbCampo4.visible := false;
  cmbCampo4.visible := false;
  lblCampo5.visible := false;
  dfCampo5.visible := false;
  cbCampo5.visible := false;
  cmbCampo5.visible := false;
  lblCampo6.visible := false;
  dfCampo6.visible := false;
  cbCampo6.visible := false;
  cmbCampo6.visible := false;
  lblCampo7.visible := false;
  dfCampo7.visible := false;
  cbCampo7.visible := false;
  cmbCampo7.visible := false;
  lblCampo8.visible := false;
  dfCampo8.visible := false;
  cbCampo8.visible := false;
  cmbCampo8.visible := false;
  lblCampo9.visible := false;
  dfCampo9.visible := false;
  cbCampo9.visible := false;
  cmbCampo9.visible := false;
  lblCampo10.visible := false;
  dfCampo10.visible := false;
  cbCampo10.visible := false;
  cmbCampo10.visible := false;
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    sTipo   := SeparaStrings(sCamposTipo,';',i);
    if sCampo = '1' then begin
      if sTipo = '0' then begin
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        dfCampo1.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo1.visible := true;
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        PopulaCampo(cmbCampo1,1);
      end
      else if sTipo = '2' then begin
        cbCampo1.visible := true;
        cbCampo1.caption := sTitulo;
      end;
    end
    else if sCampo = '2' then begin
      if sTipo = '0' then begin
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        dfCampo2.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo2.visible := true;
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        PopulaCampo(cmbCampo2,2);
      end
      else if sTipo = '2' then begin
        cbCampo2.visible := true;
        cbCampo2.caption := sTitulo;
      end;
    end
    else if sCampo = '3' then begin
      if sTipo = '0' then begin
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        dfCampo3.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo3.visible := true;
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        PopulaCampo(cmbCampo3,3);
      end
      else if sTipo = '2' then begin
        cbCampo3.visible := true;
        cbCampo3.caption := sTitulo;
      end;
    end
    else if sCampo = '4' then begin
      if sTipo = '0' then begin
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        dfCampo4.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo4.visible := true;
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        PopulaCampo(cmbCampo4,4);
      end
      else if sTipo = '2' then begin
        cbCampo4.visible := true;
        cbCampo4.caption := sTitulo;
      end;
    end
    else if sCampo = '5' then begin
      if sTipo = '0' then begin
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        dfCampo5.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo5.visible := true;
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        PopulaCampo(cmbCampo5,5);
      end
      else if sTipo = '2' then begin
        cbCampo5.visible := true;
        cbCampo5.caption := sTitulo;
      end;
    end
    else if sCampo = '6' then begin
      if sTipo = '0' then begin
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        dfCampo6.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo6.visible := true;
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        PopulaCampo(cmbCampo6,6);
      end
      else if sTipo = '2' then begin
        cbCampo6.visible := true;
        cbCampo6.caption := sTitulo;
      end;
    end
    else if sCampo = '7' then begin
      if sTipo = '0' then begin
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        dfCampo7.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo7.visible := true;
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        PopulaCampo(cmbCampo7,7);
      end
      else if sTipo = '2' then begin
        cbCampo7.visible := true;
        cbCampo7.caption := sTitulo;
      end;
    end
    else if sCampo = '8' then begin
      if sTipo = '0' then begin
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        dfCampo8.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo8.visible := true;
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        PopulaCampo(cmbCampo8,8);
      end
      else if sTipo = '2' then begin
        cbCampo8.visible := true;
        cbCampo8.caption := sTitulo;
      end;
    end
    else if sCampo = '9' then begin
      if sTipo = '0' then begin
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        dfCampo9.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo9.visible := true;
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        PopulaCampo(cmbCampo9,9);
      end
      else if sTipo = '2' then begin
        cbCampo9.visible := true;
        cbCampo9.caption := sTitulo;
      end;
    end
    else if sCampo = '10' then begin
      if sTipo = '0' then begin
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        dfCampo10.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo10.visible := true;
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        PopulaCampo(cmbCampo10,10);
      end
      else if sTipo = '2' then begin
        cbCampo10.visible := true;
        cbCampo10.caption := sTitulo;
      end;
    end;
  end;
end;

procedure TDlgConsultaPrecos.PopulaCampo;
var xCampo: string;
begin
  xCampo := 'campo'+AdicionarStr(IntToStr(nCampo),'0',2);
  TTS_DBComboBox(obj).Items.Clear;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.Text := 'select distinct '+xCampo+' from itens where '+xCampo+' is not null order by 1';
  DMProjeto.Q_SQL.open;

  while not DMProjeto.Q_SQL.eof do begin
    TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
    DMProjeto.Q_SQL.next;
  end;
end;

procedure TDlgConsultaPrecos.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgConsultaPrecos.lblUnidadeClick(Sender: TObject);
begin
  inherited;
  ppmUnidades.PopupFromCursorPos;
end;

procedure TDlgConsultaPrecos.miUnidadeClick(Sender: TObject);
begin
  {Mostrando dados na nova Unidade}
  MostrarTabelaPreco(TMenuItem(Sender).Hint);

end;

procedure TDlgConsultaPrecos.FormShow(Sender: TObject);
Var
 sMostrar: String;
 i:Integer;
begin
  {Verificando se os clientes possuem tabelas de pre�o associadas - Antes do inherited por causa do ClearParams}
  lbEstoqueFiscal.Visible := False;
  lblEstoqueFiscal.Visible := False;
  lbDifEstoque.Visible := False;
  lblDifEstoque.Visible := False;
  if DMProjeto.Parametro('BaixaEstoqueFiscal') = 'S' then begin
   lbEstoqueFiscal.Visible := True;
   lblEstoqueFiscal.Visible := True;
   lbDifEstoque.Visible := True;
   lblDifEstoque.Visible := True;
  end;
  sMostrar:= DMProjeto.Parametro('MostrarEmConsultaPrecos');
  For i:=0 to ComponentCount -1 do begin
    If (Components[i] is TTS_Label) and (TTS_Label(Components[i]).TagStr <> '') Then
      If Pos(TTS_Label(Components[i]).TagStr,sMostrar) > 0 Then
          TTS_Label(Components[i]).Visible := True
      Else
          TTS_Label(Components[i]).Visible := False;
    If (Components[i] is TTS_DBTextEffect) and (TTS_DBTextEffect(Components[i]).TagStr <> '') Then
      If Pos(TTS_DBTextEffect(Components[i]).TagStr,sMostrar) > 0 Then
          TTS_DBTextEffect(Components[i]).Visible := True
      Else
          TTS_DBTextEffect(Components[i]).Visible := False;
  end;


  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Select Count(TabelaPreco) as ExisteTabAssoc from Favorecidos where TipoFavorecido = 1 and Desativado = ''N''';
    Open;
    Last;
    if FieldByName('ExisteTabAssoc').asInteger > 0 then begin
      lbCliente.Visible := true;
      dfCliente.Visible := true;
      bv.Top := StrToInt(SeparaStrings(bv.tagstr,';',2));
    end;

    Close;

  end;

  inherited;

  sCodigoCusto := DMProjeto.Parametro('CodigoCusto');

end;

procedure TDlgConsultaPrecos.dbgTabelaPrecoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (dbgTabelaPreco.GetFieldValue(ANode, 'TabelaPreco', 0) > 0) and
     (dbgTabelaPreco.GetFieldValue(ANode, 'PrecoManual', '') = 'S') then
    AColor := dbgTabelaPreco.TS_SelectionColor
  else
    AColor := clWindow;

  if (uppercase(TdxDBGridColumn(AColumn).FieldName) = 'PRECOMINIMO') and ( StrToFloatDef(AText,0) = 0 ) then
    AText := ' - ';

  if (dbgTabelaPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = 0) then
    AFont.Style := [fsBold];

  if dfCliente.Visible and (dfCliente.Text <> '') and (nTabelaCliente <> -1) and
     (dbgTabelaPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = nTabelaCliente) then begin
    AColor := $00BFFFFF;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

  if (dbgTabelaPreco.GetFieldValue(ANode, 'PrecoPromocao', 0) > 0) then begin
    if (uppercase(TdxDBGridColumn(AColumn).FieldName) = 'PRECO') then begin
      AFont.Style := [fsStrikeOut];
    end;
    if (uppercase(TdxDBGridColumn(AColumn).FieldName) = 'PRECOMINIMO') and (AText <> ' - ') then begin
      AFont.Style := [fsStrikeOut];
    end;
  end;

end;

procedure TDlgConsultaPrecos.dbgTabelaPrecoCustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
  if C_ProdutosPreco.Tag = 0 then
    AColor := $00EBEBEB
  else
    AColor := $00BFFFFF;
end;

procedure TDlgConsultaPrecos.MostrarTabelaPreco(sUnidade: string);
var
  nFatorUndVendaCorrente, nFatorNovaUnidade : double;
  xPreco, Minimo, PrecoCusto : currency;
begin
  with C_ProdutosPreco do begin
    if not Active then
    	Exit;

    DisableControls;
  	Filtered := False;
    //
    try
      if not Locate('Unidade',sUnidade,[]) then begin
        C_TabelasPreco.Close;
        C_TabelasPreco.Open;

        {Capturando o Fator da Unidade de venda atual}
        nFatorUndVendaCorrente := C_ItensFatorUndVenda.Value;
        nFatorUndVendaCorrente := IIF(nFatorUndVendaCorrente > 0, nFatorUndVendaCorrente, 1);

        {Capturando o Fator da nova unidade solicitada pelo usu�rio}
        nFatorNovaUnidade := DMProjeto.GetFatorUnidade(C_ItensItem.Value, sUnidade);
        if nFatorNovaUnidade <= 0 then
          nFatorNovaUnidade := 1;

        xPreco := C_ItensPreco.asCurrency; //Preco na unidade de venda atual;

        {Calculando o Preco na Nova Unidade}
        xPreco := (xPreco / nFatorUndVendaCorrente) * nFatorNovaUnidade;

        while not C_TabelasPreco.EOF do begin
          C_ProdutosPreco.Append;
          dec(nSeq);
          C_ProdutosPrecoProdutoPreco.Value := nSeq;
          C_ProdutosPrecoUnidade.Value	    := sUnidade;
          C_ProdutosPrecoTabelaPreco.Value  := C_TabelasPrecoTabelaPreco.asInteger;
          C_ProdutosPrecoPercentual.Value   := C_TabelasPrecoPercentual.Value;
          C_ProdutosPrecoBaseada.Value      := C_TabelasPrecoBaseada.Value;

          if (C_ProdutosPrecoBaseada.Value = 'N') and (C_TabelasPrecoTabelaPreco.asInteger <> 0) then
            C_ProdutosPrecoPreco.asCurrency := xPreco;

          C_ProdutosPrecoPrecoManual.Value := 'N'; 

          if (FieldByName('PrecoManual').value = 'N') and (C_TabelasPrecoBaseada.AsString = 'S') then
            FieldByName('Preco_Normal').value := xPreco * (1 + (C_ProdutosPrecoPercentual.value/100))
          else
            FieldByName('Preco_Normal').value := xPreco;

          C_ProdutosPrecoicFatorUnidade.Value := nFatorNovaUnidade;

          C_TabelasPreco.Next;
        end;

      end;
    finally
      Filter := 'Unidade = '+QuotedStr( sUnidade );
      Filtered := True;
      First;
      Locate('TabelaPreco', 0, []);

      C_ProdutosPreco.Tag := IIF(C_ProdutosPrecoProdutoPreco.Value > 0, 0, 1);  //Para modificar a cor de Header do Grid de Precos

      EnableControls;

      C_Itens.Edit;
      nFatorNovaUnidade := DMProjeto.GetFatorUnidade(C_ItensItem.Value, sUnidade);
      if nFatorNovaUnidade <= 0 then
        nFatorNovaUnidade := 1;
      //C_ProdutosPrecoicFatorUnidade.Value := nFatorNovaUnidade;
      //C_ItensFatorCorrente.Value := C_ProdutosPrecoicFatorUnidade.Value;
      C_ItensFatorCorrente.Value := nFatorNovaUnidade;
      C_ItensUnidade.Value := sUnidade;

      Locate('TabelaPreco', nTabelaCorrente, []);

      if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then begin
        C_ItensicPreco.Value := DMProjeto.PrecoMultiUnidade( C_ItensITEM.AsInteger,
                                                             C_ProdutosPrecoTabelaPreco.Value,
                                                             sUnidade, Minimo, PrecoCusto );
        C_ItensicPromocao.Value := 'N';                                                     
      end
      else begin
        if C_ProdutosPrecoPrecoPromocao.Value > 0 then begin
          C_ItensicPreco.Value := C_ProdutosPrecoPrecoPromocao.Value;
          C_ItensicPromocao.Value := 'S';
        end else begin
          C_ItensicPreco.Value := C_ProdutosPrecoPreco.Value;
          C_ItensicPromocao.Value := 'N';
        end;
      end;
    end;

  end;

end;

procedure TDlgConsultaPrecos.btCalcClick(Sender: TObject);
begin
  inherited;
  WinExec('Calc.exe',sw_Show);
end;

procedure TDlgConsultaPrecos.C_ItensCalcFields(DataSet: TDataSet);
var
  nFator, FC, FN : double;
begin
  inherited;

  nFator := (100 - C_ItensSEMLUCRO.Value)/100;
  if nFator <= 0 then
    nFator := 1;

  FC := IIF(C_ItensFatorUndVenda.Value > 0, C_ItensFatorUndVenda.Value, 1);
  FN := IIF(C_ItensFatorCorrente.Value > 0, C_ItensFatorCorrente.Value, 1);

  C_ItensicEstoque.Value := (C_ItensEstoque.Value / FN) * FC;
  C_ItensicESTOQUEFISCAL.Value := ((C_ItensEstoqueFiscal.Value / FN) * FC);
  C_ItensicDIFESTOQUE.Value := ((C_ItensEstoque.Value / FN) * FC) - ((C_ItensEstoqueFiscal.Value / FN) * FC);
  C_ItensicMinimo.Value  := (C_ItensQTDEMINIMO.Value / FN) * FC;
  C_ItensicPontoPedido.Value := (C_ItensPONTOPEDIDO.Value / FN ) * FC;
  C_ItensicCustoMedio.Value := CustoSimbolico((C_ItensCUSTOMEDIO.Value * FC), sCodigoCusto);
  C_ItensicMPV.Value := CustoSimbolico((C_ItensCUSTOMEDIO.Value/nFator) * FC, sCodigoCusto);
end;

procedure TDlgConsultaPrecos.C_ProdutosPrecoCalcFields(DataSet: TDataSet);
var
  nDescMax : currency;
begin
  inherited;

  if C_ItensDescontoMaximo.Value >= 0 then
    nDescMax := C_ItensDescontoMaximo.Value
  else if C_ItensDescMaxGrupo.Value >= 0 then
    nDescMax := C_ItensDescMaxGrupo.Value
  else
    nDescMax := DMProjeto.nMaxDescontoFunc;


  if nDescMax > 0 then
    DataSet.FieldByName('PrecoMinimo').asCurrency := ( DataSet.FieldByName('Preco').asCurrency * (1- (nDescMax/100)) )
  else
    DataSet.FieldByName('PrecoMinimo').asCurrency := 0;

  if DataSet.FieldByName('PrecoPromocao').AsCurrency > 0 then
    DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('PrecoPromocao').AsCurrency
  else
    DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('Preco_Normal').AsCurrency;

  // Adicionando as cota��es dos indexadores mais atualizados...
  if (C_Itens.Active) and (C_Itens.FieldByName('Indexador').AsVariant <> null) then begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'select valor from cotacoes ' +
                  'where data = (select max(data) from cotacoes where indexador = :i) ' +
                  'and indexador = :i ';
      ParamByName('i').AsInteger := C_Itens.FieldByName('Indexador').AsInteger;
      Open;
      if (RecordCount > 0) and (Fields[0].AsFloat > 0) then begin
        DataSet.FieldByName('Preco').AsCurrency := RoundTo( DataSet.FieldByName('Preco').AsCurrency / Fields[0].AsFloat, -2 );
      end;
      Close;
    end;
  end;

end;

procedure TDlgConsultaPrecos.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if (C_ItensItem.value <= 0) then
    exit;

  if FileExists(DMProjeto.ImgPath + C_ItensFoto.Value) then
    DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_ItensFoto.Value)
  else
    DF_Foto.Picture := nil;

  C_ProdutosPreco.close;
  C_ProdutosPreco.FetchParams;
  C_ProdutosPreco.params[0].asinteger := C_ItensItem.value;
  C_ProdutosPreco.open;

  C_ItensFilhos.close;
  C_ItensFilhos.FetchParams;
  C_ItensFilhos.params[0].asinteger := C_ItensItem.value;
  C_ItensFilhos.params[1].asinteger := nTabelaCorrente;
  C_ItensFilhos.open;


  C_ItensAlmox.close;
  C_ItensAlmox.FetchParams;
  C_ItensAlmox.params[0].asinteger := C_ItensItem.value;
  C_ItensAlmox.open;





  if (C_ItensUnidade.Value <> '') then
    MostrarTabelaPreco(C_ItensUnidade.Value);

end;

procedure TDlgConsultaPrecos.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  if DMProjeto.C_LocalizarFavTabelaPreco.asVariant <> null then begin
    nTabelaCliente := DMProjeto.C_LocalizarFavTabelaPreco.Value;
    nTabelaCorrente := nTabelaCliente;

    MostrarTabelaPreco(C_ItensUnidade.Value);

  end else
    nTabelaCliente := -1;

end;

procedure TDlgConsultaPrecos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if (DMProjeto.GetParametrosForm(1) <> null) and dfCliente.Visible then //Cliente da Venda, a tabela de pre�os j� deve ser a do cliente.
    dfCliente.ID := DMProjeto.GetParametrosForm(1);

  if DMProjeto.GetParametrosForm(0) <> null then //Tabela Corrente da Venda (provavelmente)
    nTabelaCorrente := DMProjeto.GetParametrosForm(0);
end;

procedure TDlgConsultaPrecos.dbtPrecoVendaDblClick(Sender: TObject);
begin
  inherited;
  dbgTabelaPreco.Visible := true;
end;

procedure TDlgConsultaPrecos.C_ItensicPromocaoChange(Sender: TField);
begin
  inherited;
  if Sender.asString = 'S' then
    dbtPrecoVenda.Font.Color := clBlue
  else
    dbtPrecoVenda.Font.Color := clNavy;
end;

procedure TDlgConsultaPrecos.dbgTabelaPrecoDblClick(Sender: TObject);
var Minimo, PrecoCusto : currency;
begin
  inherited;
  dbgTabelaPreco.Visible := false;

  C_Itens.Edit;
  if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then begin
    C_ItensicPreco.Value := DMProjeto.PrecoMultiUnidade( C_ItensITEM.AsInteger,
                                                         C_ProdutosPrecoTabelaPreco.Value,
                                                         C_ItensUNIDADE.AsString, Minimo, PrecoCusto );
    C_ItensicPromocao.Value := 'N';
  end
  else begin
    if C_ProdutosPrecoPrecoPromocao.Value > 0 then begin
      C_ItensicPreco.Value := C_ProdutosPrecoPrecoPromocao.Value;
      C_ItensicPromocao.Value := 'S';
    end else begin
      C_ItensicPreco.Value := C_ProdutosPrecoPreco.Value;
      C_ItensicPromocao.Value := 'N';
    end;
  end;
end;

procedure TDlgConsultaPrecos.C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept := DMProjeto.PermissoesTabelasPreco( DataSet.FieldByName('TabelaPreco').asInteger );
end;

procedure TDlgConsultaPrecos.dfItemIniciarLocalizar(Sender: TObject;
  var Value: String; var bSkip: Boolean);
begin
  inherited;
//  dfItem.TabelaPreco := nTabelaCorrente;
  dfItem.TabelaPreco := 0;
end;

procedure TDlgConsultaPrecos.dbgSubItensCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (dbgSubItens.GetFieldValue(ANode, 'TabelaPreco', 0) > 0) and
     (dbgSubItens.GetFieldValue(ANode, 'PrecoManual', '') = 'S') then
    AColor := dbgTabelaPreco.TS_SelectionColor
  else
    AColor := clWindow;

  if (dbgSubItens.GetFieldValue(ANode, 'PrecoPromocao', 0) > 0) then begin
    AFont.Color := clBlue;
    dbgSubItens.SetFieldValue(Anode,'Preco',dbgSubItens.GetFieldValue(ANode, 'PrecoPromocao', 0));
  end;

end;

procedure TDlgConsultaPrecos.DBEdit2Change(Sender: TObject);
begin
  inherited;
  lbPromocao.Visible := (C_ItensicPromocao.Value = 'S');
end;

procedure TDlgConsultaPrecos.dfClienteChange(Sender: TObject);
begin
  inherited;
  if dfCliente.Text = '' then begin
    nTabelaCliente := -1;
    nTabelaCorrente := DMProjeto.nTabelaPadraoFunc;
  end;
end;

procedure TDlgConsultaPrecos.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','UFORNEC') then
    exit;

  DlgUltimosFornecimentos := TDlgUltimosFornecimentos.Create(self,dfItem.ID,dfItem.text);
  DlgUltimosFornecimentos.free;
end;

procedure TDlgConsultaPrecos.ExibirMenorPreo1Click(Sender: TObject);
var Minimo, Custo : currency;
begin
  inherited;
  if (C_Itens.Active) and (C_Itens.RecordCount > 0) then begin
    DMProjeto.PrecoMultiUnidade( C_ItensITEM.Value,
                                 C_ProdutosPrecoTABELAPRECO.Value, C_ItensUNIDADE.Value,
                                 Minimo, Custo );
    lbMenorPreco.Caption := FormatFloat( '0.00#', Minimo )+ '  ('+ CustoSimbolico(Custo, DMProjeto.Parametro('CodigoCusto') )+')';
    lbMenorPreco.Visible := ExibirMenorPreo1.Checked;
  end
  else lbMenorPreco.Visible := False;
end;

procedure TDlgConsultaPrecos.CriarUnidades( nItem : integer );
var aMenu : TMenuItem;
    i : integer;
begin
  {Criando MenuItens para as Unidades}
  with C_Unidades do begin
    Close;
    Q_Unidades.ParamByName('item').AsInteger := nItem;
    Open;

    ppmUnidades.Items.Clear;
//    for i:= 0 to ppmUnidades.ComponentCount - 1 do begin
//      if (ppmUnidades.Components[i] is TMenuItem) then
//        ppmUnidades.RemoveComponent( TMenuItem(ppmUnidades.Components[i]) );
//    end;

    while not EOF do begin
      aMenu := TMenuItem.Create(ppmUnidades);
      aMenu.Caption  := FieldByName('Descricao').asString;
      //aMenu.Name := 'mi_'+FieldByName('Descricao').asString;
      aMenu.Hint := FieldByName('Unidade').asString;
      aMenu.OnClick  := miUnidadeClick;
      ppmUnidades.Items.Add( aMenu );

      Next;
    end;

  end;

end;

procedure TDlgConsultaPrecos.df_FotoDblClick(Sender: TObject);
begin
  inherited;
  DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + C_ItensFoto.Value, C_ItensDESCRICAOTECNICA.AsString);
  DLGVisialuzadorImagem.Free;
end;

procedure TDlgConsultaPrecos.dfItemNaoAchou(Sender: TObject);
begin
  inherited;
  dfItem.SetFocus;
  dfItem.SelectAll;
end;

procedure TDlgConsultaPrecos.lblEstoqueDblClick(Sender: TObject);
begin
  inherited;
  dbgAlmox.Visible := Not dbgAlmox.Visible;
  pnAlmox01.Visible := dbgAlmox.Visible;
  pnAlmox02.Visible := dbgAlmox.Visible;

end;

procedure TDlgConsultaPrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;                                             
  if (Shift = [ssCtrl]) and (Key = Ord('A')) Then Begin
    dbgAlmox.Visible := Not dbgAlmox.Visible;
    pnAlmox01.Visible := dbgAlmox.Visible;
    pnAlmox02.Visible := dbgAlmox.Visible;
  End;
end;

end.







