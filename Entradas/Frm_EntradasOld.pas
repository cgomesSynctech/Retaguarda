unit Frm_Entradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_ITENSMOVIMENTO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, TS_PopupMenu, StdCtrls, Mask, DBCtrls,
  TS_DBEdit, TS_DBEditFavorecido, TS_DBLookupComboBox, TS_DBLookupTipoFav,
  TS_DBTextEffect, ExtCtrls, TS_Shape, TS_DBText,
  TS_Label, ComCtrls, Buttons, TS_BitBtn,
  TS_Bevel, TS_SpeedButton, TS_MaxPanel,
  TS_CheckBox, TS_DBCheckBox, TS_DBEditDate,
  TS_DBEditNumber, TS_DBMemo, TS_GroupBox, CheckLst, TS_CheckListBox,
  TS_Image, dxfLabel, Animate, GIFCtrl, TS_PageControl, jpeg, dxExEdtr,
  dxEdLib, dxDBELib, TS_DBButtonEdit, dxCntner, dxEditor, dxDBEdtr, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
  dxfPictureButton, dxGrClEx, dxCalc, TS_ButtonEdit,
  TS_PopupEdit, DBText, TransEff, teTimed, tePush,
  teCtrls, TS_EffectsPanel, teFuse, teDrip, dxTLClms;

type
  TFrmEntradas = class(TFrmItensMovimento)
    btOperacoes: TTS_SpeedButton;
    btVerPgtos: TTS_SpeedButton;
    pnLocalEntrega: TTS_Panel;
    lbLocalEntrega: TTS_Label;
    TS_DBTextEffect1: TTS_DBTextEffect;
    pnCliente: TTS_Panel;
    dbtFornecedor: TTS_DBTextEffect;
    dbtEndereco: TTS_DBTextEffect;
    dbtCidade: TTS_DBTextEffect;
    dbtUF: TTS_DBTextEffect;
    dbtCEP: TTS_DBTextEffect;
    dbtEmail: TTS_DBTextEffect;
    dbtObs: TTS_DBTextEffect;
    pnHorizontal: TTS_Panel;
    TS_Bevel1: TTS_Bevel;
    TS_Shape1: TTS_Shape;
    esVendas: TdxEditStyleController;
    DBEdit1: TDBEdit;
    dbgItensI_Percentual: TdxDBGridColumn;
    esEndereco: TdxEditStyleController;
    DBEdit2: TDBEdit;
    TransitionSaidas: TTransitionList;
    T_Termos: TPushTransition;
    T_Itens: TPushTransition;
    DBEdit3: TDBEdit;
    T_FotoClienteOff: TPushTransition;
    T_FotoClienteOn: TPushTransition;
    DBEdit4: TDBEdit;
    T_StatusInvoice: TDripTransition;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridIDMESTRE: TdxDBGridMaskColumn;
    GridNUMERO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridTOTAL: TdxDBGridMaskColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridTIPOMOVIMENTO: TdxDBGridMaskColumn;
    GridIMPRESSO: TdxDBGridCheckColumn;
    GridSITUACAO: TdxDBGridMaskColumn;
    GridF_NOME: TdxDBGridMaskColumn;
    GridF_FONE1: TdxDBGridMaskColumn;
    GridF_FONE2: TdxDBGridMaskColumn;
    GridF_FAX: TdxDBGridMaskColumn;
    GridF_CELULAR: TdxDBGridMaskColumn;
    GridF_CONTATO: TdxDBGridMaskColumn;
    GridF_EMAIL: TdxDBGridMaskColumn;
    GridF_TIPOFAVORECIDO: TdxDBGridMaskColumn;
    GridF_TIPOATIVIDADE: TdxDBGridMaskColumn;
    GridF_PLANOPAGAMENTO: TdxDBGridMaskColumn;
    GridF_VENDEDOR: TdxDBGridMaskColumn;
    GridF_LIMITECREDITO: TdxDBGridMaskColumn;
    GridF_TAXAVEL: TdxDBGridMaskColumn;
    GridF_TAX: TdxDBGridMaskColumn;
    GridF_EIN: TdxDBGridMaskColumn;
    GridF_SSN: TdxDBGridMaskColumn;
    GridF_TABELAPRECO: TdxDBGridMaskColumn;
    GridF_DESATIVADO: TdxDBGridMaskColumn;
    GridF_EXIGIVEL1099: TdxDBGridMaskColumn;
    GridF_TIPOENTREGA: TdxDBGridMaskColumn;
    GridF_DATACADASTRO: TdxDBGridDateColumn;
    GridF_SITE: TdxDBGridMaskColumn;
    GridF_OBS: TdxDBGridMaskColumn;
    GridF_IMPORTACAO: TdxDBGridMaskColumn;
    GridF_SITUACAO: TdxDBGridMaskColumn;
    GridF_CARGO: TdxDBGridMaskColumn;
    GridF_LOGOTIPO: TdxDBGridMaskColumn;
    GridF_JUROSFACTORY: TdxDBGridMaskColumn;
    GridF_TAXASFACTORY: TdxDBGridMaskColumn;
    GridF_FLOATINGFACTORY: TdxDBGridMaskColumn;
    GridF_MEMO_CHECK: TdxDBGridMaskColumn;
    GridF_CREDITO: TdxDBGridMaskColumn;
    GridF_CONTA: TdxDBGridMaskColumn;
    GridF_NUMERO_REVENDA: TdxDBGridMaskColumn;
    GridF_TIPO_FUNC: TdxDBGridMaskColumn;
    GridF_DATANASC: TdxDBGridDateColumn;
    GridTM_DESCRICAO: TdxDBGridMaskColumn;
    GridTM_TIPO: TdxDBGridMaskColumn;
    GridTM_POSSUITAX: TdxDBGridMaskColumn;
    GridTM_BAIXAESTOQUE: TdxDBGridMaskColumn;
    GridTM_CALCCOMISSAO: TdxDBGridMaskColumn;
    GridTM_POSSUIENTREGA: TdxDBGridMaskColumn;
    GridTM_BLOQUEARSEATRASADO: TdxDBGridMaskColumn;
    GridTM_BLOQUEARPORSITUACAO: TdxDBGridMaskColumn;
    GridTM_BLOQUEARPORESTOQUE: TdxDBGridMaskColumn;
    GridTM_LIMITEFAVORECIDO: TdxDBGridMaskColumn;
    GridTM_SIGLAINICIAL: TdxDBGridMaskColumn;
    GridF_COMISSAO: TdxDBGridMaskColumn;
    GridTAX: TdxDBGridMaskColumn;
    GridPERCENTUALTAX: TdxDBGridMaskColumn;
    GridDESCONTO: TdxDBGridMaskColumn;
    GridPLANOPAGAMENTO: TdxDBGridMaskColumn;
    GridVENDEDOR: TdxDBGridMaskColumn;
    GridFRETE: TdxDBGridMaskColumn;
    GridTIPOENTREGA: TdxDBGridMaskColumn;
    GridDATAENTREGA: TdxDBGridDateColumn;
    GridPEDIDO_CLIENTE: TdxDBGridMaskColumn;
    GridOUTRASDESPESAS: TdxDBGridMaskColumn;
    GridJUROS: TdxDBGridMaskColumn;
    GridCAMPO01: TdxDBGridMaskColumn;
    GridCAMPO02: TdxDBGridMaskColumn;
    GridCAMPO03: TdxDBGridMaskColumn;
    GridCAMPO04: TdxDBGridMaskColumn;
    GridlkTax: TdxDBGridLookupColumn;
    GridlkPlanoPagamento: TdxDBGridLookupColumn;
    GridlkVendedor: TdxDBGridLookupColumn;
    GridlkTipoEntrega: TdxDBGridLookupColumn;
    GridEnderecoAlterado: TdxDBGridColumn;
    GridlkTipoMovimento: TdxDBGridLookupColumn;
    GridcfEnderecoParaEntrega: TdxDBGridColumn;
    GridIMPOSTO: TdxDBGridMaskColumn;
    GridIMPOSTO_INCLUSO: TdxDBGridMaskColumn;
    GridPCOMISSAO: TdxDBGridMaskColumn;
    GridTABELAPADRAO: TdxDBGridMaskColumn;
    GridTIPOPADRAO: TdxDBGridMaskColumn;
    GridPJUROS: TdxDBGridMaskColumn;
    GridQ_Parcelas: TdxDBGridColumn;
    GridcfLastIDMov: TdxDBGridColumn;
    GridSALDOINVOICE: TdxDBGridMaskColumn;
    dbgItensTaxavel: TdxDBGridCheckColumn;
    dbgItensUsoTipoItem: TdxDBGridColumn;
    tsTermos: TTS_TabSheet;
    TS_Shape12: TTS_Shape;
    pnTermos: TTS_Panel;
    lbTermos: TTS_Label;
    cmbTermos: TTS_DBLookupComboBox;
    pnMensagem: TTS_Panel;
    dfObs: TTS_DBMemo;
    dfMensagem: TTS_PopupEdit;
    pnTotalFinal: TTS_Panel;
    lbTotalFinal: TTS_Label;
    dbtTotalFinal: TTS_DBTextEffect;
    pnSomaTotal: TTS_Panel;
    pnFrete: TTS_Panel;
    TS_Shape8: TTS_Shape;
    lbFrete: TTS_Label;
    dfFrete: TTS_DBEditNumber;
    pnDescontos: TTS_Panel;
    TS_Shape9: TTS_Shape;
    lbDescontos: TTS_Label;
    dfDesconto: TTS_DBEditNumber;
    pnTotalItens: TTS_Panel;
    TS_Shape10: TTS_Shape;
    lbTotalItens: TTS_Label;
    TS_DBText5: TTS_DBText;
    pnDespesas: TTS_Panel;
    TS_Shape11: TTS_Shape;
    lbDespesas: TTS_Label;
    dfDespesas: TTS_DBEditNumber;
    pnJuros: TTS_Panel;
    TS_Shape13: TTS_Shape;
    lbJuros: TTS_Label;
    TS_DBText7: TTS_DBText;
    dbgParcelas: TTS_QDBGrid;
    dbgParcelasParcela: TdxDBGridColumn;
    dbgParcelasVencimento: TdxDBGridDateColumn;
    dbgParcelasValor: TdxDBGridCalcColumn;
    dbgParcelasSaldo: TdxDBGridColumn;
    dbgParcelasStatus: TdxDBGridColumn;
    cbReceber: TTS_CheckBox;
    ppmFornecedor: TTS_PopupMenu;
    ppmUltimo: TTS_PopupMenu;
    AbrirCadastro1: TMenuItem;
    N4: TMenuItem;
    QuadroGeral1: TMenuItem;
    ExtratodeParcelas1: TMenuItem;
    ltimasVendas1: TMenuItem;
    UltimoGravado: TMenuItem;
    N6: TMenuItem;
    ltimoparaoCliente1: TMenuItem;
    ltimoparaaData1: TMenuItem;
    ltimoparaOperao1: TMenuItem;
    N7: TMenuItem;
    ltimoCancelado1: TMenuItem;
    ppmParcelas: TTS_PopupMenu;
    NovaParcela1: TMenuItem;
    N8: TMenuItem;
    ExcluirParcela1: TMenuItem;
    dbgItensColuna1: TdxDBGridColumn;
    dbgItensColuna2: TdxDBGridColumn;
    dbgItensColuna3: TdxDBGridColumn;
    dbgItensColuna4: TdxDBGridColumn;
    pnCampo01: TTS_Panel;
    lbCampo01: TTS_Label;
    dfAdd1: TTS_DBEdit;
    pnCampo02: TTS_Panel;
    lbCampo02: TTS_Label;
    dfAdd2: TTS_DBEdit;
    pnCampo03: TTS_Panel;
    lbCampo03: TTS_Label;
    dfAdd3: TTS_DBEdit;
    pnCampo04: TTS_Panel;
    lbCampo04: TTS_Label;
    dfAdd4: TTS_DBEdit;
    pnTipoEntrega: TTS_Panel;
    TS_Shape5: TTS_Shape;
    lbTipoEntrega: TTS_Label;
    cmbTipoEntrega: TTS_DBLookupComboBox;
    pnDataEntrega: TTS_Panel;
    TS_Shape6: TTS_Shape;
    lbDataEntrega: TTS_Label;
    dfDataEntrega: TTS_DBEditDate;
    N9: TMenuItem;
    PerformanceGravao1: TMenuItem;
    dbgItensCliente: TdxDBGridButtonColumn;
    pnPrevisao: TTS_Panel;
    TS_Shape2: TTS_Shape;
    lbPrevisao: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    dbgItensQtdRecebida: TdxDBGridColumn;
    dbgItensReferencia: TdxDBGridButtonColumn;
    PedidosAtrasados1: TMenuItem;
    dbgItensSituacao: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbtObsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgItensExit(Sender: TObject);
    procedure cmbTipoMovimentoClick(Sender: TObject);
    procedure lbOperacaoSetParametrosForm(Sender: TObject);
    procedure lbOperacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure dbgItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cmbTipoEntregaMouseEnter(Sender: TObject);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure dbtFornecedorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarSituacaoClick(Sender: TObject);
    procedure dxBarExtratoFinanceiroClick(Sender: TObject);
    procedure dxBarUltimasVendasClick(Sender: TObject);
    procedure dfFavorecidoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItensPRECOPopup(Sender: TObject; const EditText: String);
    procedure dbgItensPRECOCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dbgItensPRECOInitPopup(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure btOperacoesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarUltimoClick(Sender: TObject);
    procedure dxBarUltParaClienteClick(Sender: TObject);
    procedure dxBarUltParaDataClick(Sender: TObject);
    procedure dxBarUltParaOperacaoClick(Sender: TObject);
    procedure dxBarUltCanceladoClick(Sender: TObject);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure dxBarCadastroClienteClick(Sender: TObject);
    procedure dbgParcelasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure pgItensChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pgItensChange(Sender: TObject);
    procedure lbTermosSetParametrosForm(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbtTotalFinalAfterEdit(Sender: TObject);
    procedure T_TermosAfterTransition(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure dxBarExcluirClick(Sender: TObject);
    procedure dxBarIncluirClick(Sender: TObject);
    procedure lbDesativadoDblClick(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure dxBarPerformanceClick(Sender: TObject);
    procedure dbgItensEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbtEnderecoAfterEdit(Sender: TObject);
    procedure dbtCidadeAfterEdit(Sender: TObject);
    procedure dbtUFAfterEdit(Sender: TObject);
    procedure dbtCEPAfterEdit(Sender: TObject);
    procedure FormComponentLayoutChange(Sender: TObject; LayoutGrid : Boolean;
      var bSkip: Boolean);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btVerPgtosClick(Sender: TObject);
    procedure FormComponentBeforeMoveRecord(Sender: TObject;
      var bSkip: Boolean);
    procedure dbgItensClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItensDESCRICAOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ApagarDadosClick(Sender: TObject);
  private
    { Private declarations }
    bOutroSalvar : Boolean;
    nTipoPadraoAbertura: Integer;

    function LastKeyFor( Tipo : String ) : String;
    procedure DefinirTipoMovAbertura( nTipoPadrao : Integer);
    procedure AtualizaDadosFornecedor;

  public
    { Public declarations }
    procedure SetCorTitulos( nCor : Variant );

  end;

var
  FrmEntradas: TFrmEntradas;

implementation
  uses teBkgrnd, DM_Entradas, DM_Projeto, Funcoes, Frm_Contabilidade, DB,
  Dlg_Pagamentos;

{$R *.DFM}

procedure TFrmEntradas.FormCreate(Sender: TObject);
begin
  // Adriano
  DMEntradas.CriaContabilidade;
  inherited;
  FrmEntradas := Self;
end;

procedure TFrmEntradas.dbtObsMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if dbtObs.Hint <> dbtObs.Field.Text then
    dbtObs.Hint := dbtObs.Field.Text;
end;

procedure TFrmEntradas.dbgItensExit(Sender: TObject);
begin
  inherited;
  if btItensDown.Visible then
    btItensDownClick(self);
end;

procedure TFrmEntradas.cmbTipoMovimentoClick(Sender: TObject);
begin
  inherited;

  {Verificando os Campos visiveis}
  with DMEntradas do begin
    if not C_TiposMovimento.Active then
      exit;

    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

    FormComponent.Caption := cmbTipoMovimento.Text;

    pnLocalEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
    pnDataEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
    pnTipoEntrega.Visible := (C_TiposMovimentoCB_INFOENTREGA.Value = 'S');
    pnTermos.Visible := (C_TiposMovimentoCB_TERMOS.Value = 'S');
    pnMensagem.Visible := (C_TiposMovimentoCB_MENSAGEM.Value = 'S');
    pnTotalItens.Visible := (C_TiposMovimentoCB_TOTALITENS.Value = 'S');
    pnDescontos.Visible := (C_TiposMovimentoCB_DESCONTOS.Value = 'S');
    pnFrete.Visible := (C_TiposMovimentoCB_FRETE.Value = 'S');
    pnDespesas.Visible := (C_TiposMovimentoCB_Despesas.Value = 'S');
    pnJuros.Visible := (C_TiposMovimentoCB_Juros.Value = 'S');
    pnTotalFinal.Visible := (C_TiposMovimentoCB_TOTALFINAL.Value = 'S');
    pnPrevisao.Visible := (C_TiposMovimentoTipoPadrao.Value = 101);

    pnTotalItens.Left := StrToInt(pnTotalItens.TagStr);
    pnDescontos.Left := StrToInt(pnDescontos.TagStr);
    pnFrete.Left := StrToInt(pnFrete.TagStr);
    pnDespesas.Left := StrToInt(pnDespesas.TagStr);
    pnJuros.Left := StrToInt(pnJuros.TagStr);
                                          
    pnCampo01.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
    pnCampo02.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
    pnCampo03.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
    pnCampo04.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

    dbgItensI_CODIGO.Visible := C_TiposMovimentoCB_CODIGO.Value = 'S';
    dbgItensQtdRecebida.Visible := (C_TiposMovimentoTipoPadrao.Value = 101) and bAlteracao;
    dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';
    dbgItensColuna1.Visible := C_TiposMovimentoCB_Coluna1.Value = 'S';
    dbgItensColuna2.Visible := C_TiposMovimentoCB_Coluna2.Value = 'S';
    dbgItensColuna3.Visible := C_TiposMovimentoCB_Coluna3.Value = 'S';
    dbgItensColuna4.Visible := C_TiposMovimentoCB_Coluna4.Value = 'S';
    dbgItensSituacao.Visible := (C_TiposMovimentoTipoPadrao.Value = 101) and bAlteracao;

    lbData.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DATA').asString);
    lbNumero.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_NUMERO').asString);
    lbLocalEntrega.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_LOCALENTREGA').asString);
    lbDataEntrega.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DATAENTREGA').asString);
    lbTipoEntrega.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TIPOENTREGA').asString);
    lbTermos.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TERMOS').asString);
    dfMensagem.Text := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_MENSAGEM').asString);
    lbDescontos.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESCONTOS').asString);
    lbFrete.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_FRETE').asString);
    lbTotalFinal.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TOTALFINAL').asString);
    lbTotalItens.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TOTALITENS').asString);
    lbDespesas.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESPESAS').asString);
    lbJuros.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_JUROS').asString);
    lbPrevisao.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_VALIDADE').asString);

    lbCampo01.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO1').asString);
    lbCampo02.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO2').asString);
    lbCampo03.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO3').asString);
    lbCampo04.Caption := (C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO4').asString);


    dbgItensI_CODIGO.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CODIGO').asString;
    dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_REFERENCIA').asString;
    dbgItensSITUACAO.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_SITUACAO').asString;
    dbgItensQTDRECEBIDA.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_QTDRECEBIDA').asString;
    dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESCRICAO').asString;
    dbgItensI_Unidade.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_UNIDADE').asString;
    dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_QUANTIDADE').asString;
    dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_PRECO').asString;
    dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_SUBTOTAL').asString;

    dbgItensColuna1.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna1').asString;
    dbgItensColuna2.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna2').asString;
    dbgItensColuna3.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna3').asString;
    dbgItensColuna4.Caption := C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna4').asString;


    SetCorTitulos(C_TiposMovimento.FieldByName('CorTitulos').Value);

    if C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
      cmbTipoFav.LookupKeyValue := C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;

  end;


end;

procedure TFrmEntradas.lbOperacaoSetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([DMEntradas.C_TabelaTIPOMOVIMENTO.asVariant ]);
end;

procedure TFrmEntradas.lbOperacaoClick(Sender: TObject);
begin
  inherited;
  cmbTipoMovimentoClick(self);
end;

procedure TFrmEntradas.FormShow(Sender: TObject);
begin
  inherited;

  {A esta altura o Tipo de Mov. Padrão já foi definido}
  {Desabilitando os controles que não são visíveis para este Tipo de Movimento}
  DesabilitarControle( pnLocalEntrega, DMEntradas.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
  DesabilitarControle( pnDataEntrega, DMEntradas.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
  DesabilitarControle( pnTipoEntrega, DMEntradas.C_TiposMovimentoCB_INFOENTREGA.Value = 'N');
  DesabilitarControle( pnTermos, DMEntradas.C_TiposMovimentoCB_TERMOS.Value = 'N');
  DesabilitarControle( pnMensagem, DMEntradas.C_TiposMovimentoCB_MENSAGEM.Value = 'N');
  DesabilitarControle( pnTotalItens, DMEntradas.C_TiposMovimentoCB_TotalItens.Value = 'N');
  DesabilitarControle( pnDescontos, DMEntradas.C_TiposMovimentoCB_DESCONTOS.Value = 'N');
  DesabilitarControle( pnFrete, DMEntradas.C_TiposMovimentoCB_FRETE.Value = 'N');
  DesabilitarControle( pnDespesas, DMEntradas.C_TiposMovimentoCB_DESPESAS.Value = 'N');
  DesabilitarControle( pnJuros, DMEntradas.C_TiposMovimentoCB_JUROS.Value = 'N');
  DesabilitarControle( pnTotalFinal, DMEntradas.C_TiposMovimentoCB_TOTALFINAL.Value = 'N');
  DesabilitarControle( pnPrevisao, DMEntradas.C_TiposMovimentoTipoPadrao.Value = 101);

  {Campos Adicionais}
  DesabilitarControle( pnCampo01, DMEntradas.C_TiposMovimentoCB_CAMPO01.Value <> 'S');
  DesabilitarControle( pnCampo02, DMEntradas.C_TiposMovimentoCB_CAMPO02.Value <> 'S');
  DesabilitarControle( pnCampo03, DMEntradas.C_TiposMovimentoCB_CAMPO03.Value <> 'S');
  DesabilitarControle( pnCampo04, DMEntradas.C_TiposMovimentoCB_CAMPO04.Value <> 'S');

  dbgItensI_CODIGO.Visible := DMEntradas.C_TiposMovimentoCB_CODIGO.Value = 'S';

  dbgItensColuna1.Visible := DMEntradas.C_TiposMovimentoCB_Coluna1.Value = 'S';
  dbgItensColuna2.Visible := DMEntradas.C_TiposMovimentoCB_Coluna2.Value = 'S';
  dbgItensColuna3.Visible := DMEntradas.C_TiposMovimentoCB_Coluna3.Value = 'S';
  dbgItensColuna4.Visible := DMEntradas.C_TiposMovimentoCB_Coluna4.Value = 'S';

  lbData.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DATA').asString);
  lbNumero.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_NUMERO').asString);
  lbLocalEntrega.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_LOCALENTREGA').asString);
  lbDataEntrega.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DATAENTREGA').asString);
  lbTipoEntrega.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TIPOENTREGA').asString);
  lbTermos.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TERMOS').asString);
  dfMensagem.Text := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_MENSAGEM').asString);
  lbDescontos.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESCONTOS').asString);
  lbFrete.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_FRETE').asString);
  lbTotalFinal.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TOTALFINAL').asString);
  lbTotalItens.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_TOTALITENS').asString);
  lbDespesas.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESPESAS').asString);
  lbJuros.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_JUROS').asString);
  lbPrevisao.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_VALIDADE').asString);

  lbCampo01.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO1').asString);
  lbCampo02.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO2').asString);
  lbCampo03.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO3').asString);
  lbCampo04.Caption := (DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CAMPO4').asString);


  dbgItensI_CODIGO.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_CODIGO').asString;
  dbgItensReferencia.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_REFERENCIA').asString;
  dbgItensSITUACAO.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_SITUACAO').asString;
  dbgItensQTDRECEBIDA.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_QTDRECEBIDA').asString;
  dbgItensDescricao.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_DESCRICAO').asString;
  dbgItensI_Unidade.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_UNIDADE').asString;
  dbgItensQuantidade.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_QUANTIDADE').asString;
  dbgItensPreco.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_PRECO').asString;
  dbgItensSubTotal.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_SUBTOTAL').asString;

  dbgItensColuna1.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna1').asString;
  dbgItensColuna2.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna2').asString;
  dbgItensColuna3.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna3').asString;
  dbgItensColuna4.Caption := DMEntradas.C_TiposMovimento.FieldByName('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_Coluna4').asString;

  FormComponent.Caption := cmbTipoMovimento.Text;

  SetCorTitulos(DMEntradas.C_TiposMovimento.FieldByName('CorTitulos').Value);

  if DMEntradas.C_TiposMovimento.FieldByName('TipoFavPadrao').Value <> null then
    cmbTipoFav.LookupKeyValue := DMEntradas.C_TiposMovimento.FieldByName('TipoFavPadrao').AsInteger;


end;

procedure TFrmEntradas.SetCorTitulos;
var
  i : Integer;
begin
  if nCor = null then
    nCor := FormComponent.BarEndColor;

  for i := 0 to ComponentCount - 1 do begin
    if (Components[i] is TTS_Label) and ((Components[i] as TTS_Label).TagStr = 'Titulos') then
      (Components[i] as TTS_Label).Color := nCor;

    if (Components[i] is TTS_DBText) and ((Components[i] as TTS_DBText).TagStr = 'Titulos') then
      (Components[i] as TTS_DBText).Color := nCor;

    if (Components[i] is TTS_DBTextEffect) and ((Components[i] as TTS_DBTextEffect).TagStr = 'Titulos') then
      (Components[i] as TTS_DBTextEffect).Color := nCor;

  end;

  dfMensagem.Color := nCor;
  dbgItens.HeaderColor := nCor;
  dbgParcelas.HeaderColor := nCor;
  dbgParcelas.BandColor   := nCor;
  pnData.Color := nCor;

end;

procedure TFrmEntradas.DBEdit1Change(Sender: TObject);
begin
  inherited;
  cmbTipoMovimentoClick(Self);
  // Adriano
 if DMEntradas.C_TabelaTipoPadrao.value <> 100 then
   btComando2.enabled := false
 else
   btComando2.enabled := true;
 /////////////////////////////
end;

procedure TFrmEntradas.dbgItensCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if UpperCase( TdxDBGridColumn(AColumn).FieldName ) = 'PRECO' then begin
    if dbgItens.GetFieldValue( ANode, 'I_Percentual', 0 ) > 0 then
      AText := AText + ' %';
  end;

end;

procedure TFrmEntradas.cmbTipoEntregaMouseEnter(Sender: TObject);
begin
  inherited;
  if TWinControl(Sender).Height < 19 then
    TWinControl(Sender).Height := 19;
end;


procedure TFrmEntradas.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  AtualizaDadosFornecedor;
end;

procedure TFrmEntradas.AtualizaDadosFornecedor;
begin
  if DMEntradas.C_TabelaF_CREDITO.Value > 0 then begin
    dfFavorecido.Hint := 'Crédito: '+FormatCurr('##,##0.00',DMEntradas.C_TabelaF_CREDITO.Value);
    dfFavorecido.Buttons[2].Visible := true;
    end
  else begin
    dfFavorecido.Hint := '';
    dfFavorecido.Buttons[2].Visible := False;
  end;

end;

procedure TFrmEntradas.dbtFornecedorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmFornecedor.PopupFromCursorPos;
end;

procedure TFrmEntradas.dxBarSituacaoClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [DMEntradas.C_TabelaFAVORECIDO.Value, cmbTipoFav.LookupKeyValue] );
  DMProjeto.CriarForm('DlgSitFornecedor', Self, true);
end;

procedure TFrmEntradas.dxBarExtratoFinanceiroClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [DMEntradas.C_TabelaFAVORECIDO.Value, DMEntradas.C_TabelaF_NOME.AsString, '' {Status}, cmbTipoFav.LookupKeyValue{TipoFav}] );
  DMProjeto.CriarForm('DlgExtFinFornecedor', Self, True);
end;

procedure TFrmEntradas.dxBarUltimasVendasClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [DMEntradas.C_TabelaFAVORECIDO.Value, DMEntradas.C_TabelaF_NOME.AsString, cmbTipoFav.LookupKeyValue{TipoFav}] );
  DMProjeto.CriarForm('DlgUltVendasFornecedor', Self, True);
end;

procedure TFrmEntradas.dfFavorecidoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 2 then
    DMProjeto.ImprimirRelatorioFavorecido('CREDITO',DMEntradas.C_TabelaFavorecido.Value);
end;

procedure TFrmEntradas.dbgItensPRECOPopup(Sender: TObject;
  const EditText: String);
begin
  inherited;
  {Abrindo Popup do Preco}

  dxCalcDisplay.Text := EditText;

end;

procedure TFrmEntradas.dbgItensPRECOCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;

  DMEntradas.C_Itens.Edit;

  DMEntradas.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);

  DMEntradas.C_Itens.Post;

  Accept := true;

end;

procedure TFrmEntradas.dbgItensPRECOInitPopup(Sender: TObject);
begin
  inherited;
  dbgItensPRECO.PopupControl := nil;
  dbgItensPRECO.PopupControl := pnPreco;
end;

procedure TFrmEntradas.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbtFornecedor.Hint := '';
  dbtFornecedor.Font.Color := clBlack;

  pgItens.ActivePage := tsItens;
  cmbTipoMovimento.ReadOnly := False;
  dbgParcelasSaldo.Visible := False;

end;

procedure TFrmEntradas.btOperacoesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmUltimo.PopupFromCursorPos;
end;

procedure TFrmEntradas.dxBarUltimoClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where t.Entrada = '+LastKeyFor('Last') );
end;

procedure TFrmEntradas.dxBarUltParaClienteClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where t.Entrada = '+LastKeyFor('Client') );
end;

procedure TFrmEntradas.dxBarUltParaDataClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where t.Entrada = '+LastKeyFor('Date') );
end;

procedure TFrmEntradas.dxBarUltParaOperacaoClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where t.Entrada = '+LastKeyFor('Mov') );
end;

procedure TFrmEntradas.dxBarUltCanceladoClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where t.Entrada = '+LastKeyFor('Void') );
end;

Function TFrmEntradas.LastKeyFor(Tipo : String) : String;
begin
  with DMEntradas.Q_SQLi do begin
    Close;
    SQL.Text := 'Select max(Entrada) as LastKey from Entradas where ';
    if Tipo = 'Last' then
      SQL.Text := SQL.Text + ' Situacao = ''N'' '
    else if Tipo = 'Client' then
      SQL.Text := SQL.Text + ' Situacao = ''N'' and Favorecido = '+IntToStr(dfFavorecido.ID)
    else if Tipo = 'Date' then
      SQL.Text := SQL.Text + ' Situacao = ''N'' and Data = :Data'
    else if Tipo = 'Mov' then
      SQL.Text := SQL.Text + ' Situacao = ''N'' and TipoMovimento = '+DMEntradas.C_TabelaTIPOMOVIMENTO.AsString
    else if Tipo = 'Void' then
      SQL.Text := SQL.Text + ' Situacao = ''C'' ';

    if Tipo = 'Date' then
      Params[0].asDateTime := DMEntradas.C_TabelaData.Value;

    try
      Open;
      Result := FieldByName('LastKey').asString;
      
      if Result = '' then
        Result := '0';
    except
      Result := '0';
    end;

    Close;

  end;

end;

procedure TFrmEntradas.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgParcelasSaldo.Visible := True;
  cmbTipoMovimento.ReadOnly := true;
end;

procedure TFrmEntradas.dxBarCadastroClienteClick(Sender: TObject);
begin
  inherited;
  if DMEntradas.C_TabelaFavorecido.Value <> 0 then
    DMProjeto.SetParametrosForm([ DMEntradas.C_TabelaFavorecido.Value ]);

  DMProjeto.C_TipoFav.Locate('TipoFavorecido', cmbTipoFav.LookupKeyValue, []);

  DMProjeto.CriarForm(DMProjeto.C_TipoFavFORM.Value, Self, true);
end;


procedure TFrmEntradas.dbgParcelasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (dbgParcelas.GetFieldValue(ANode, 'Status', 0) = -1) then {Não é Invoice}
    AColor := $00CAF4FF
  else if (dbgParcelas.GetFieldValue(ANode, 'Status', 0) = 3) then {Atraso}
    AFont.Color := clRed
  else if (dbgParcelas.GetFieldValue(ANode, 'Status', 0) >= 50) then  {Liquidado}
    AFont.Color := clBlue
  else if (dbgParcelas.GetFieldValue(ANode, 'Saldo', 0) <
           dbgParcelas.GetFieldValue(ANode, 'Valor', 0) ) then {Pgto Parcial}
    AFont.Color := clNavy;
end;

procedure TFrmEntradas.pgItensChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pgItens.ActivePage = tsItens then
    T_Termos.Prepare( tsTermos.Parent, tsTermos.BoundsRect )
  else if pgItens.ActivePage = tsTermos then
    T_Itens.Prepare( tsItens.Parent, tsItens.BoundsRect );

end;

procedure TFrmEntradas.pgItensChange(Sender: TObject);
begin
  inherited;
  if pgItens.LastTab = tsItens then begin
    if DMEntradas.C_Itens.Active and (DMEntradas.C_Itens.State <> dsBrowse) then
      DMEntradas.C_Itens.Post;
    end
  else if pgItens.LastTab = tsTermos then begin
    if DMEntradas.C_Parcelas.Active and (DMEntradas.C_Parcelas.State <> dsBrowse) then
      DMEntradas.C_Parcelas.Post;
  end;

  try
    if T_Termos.Prepared then
      T_Termos.Execute;
    if T_Itens.Prepared then
      T_Itens.Execute;
  finally
    if T_Termos.Prepared then
      T_Termos.unPrepare;
    if T_Itens.Prepared then
      T_Itens.unPrepare;
  end;

  {Atribuindo o Plano de Pagamento Padrão do Cliente - se existir}
  if not DMEntradas.bAlteracao and (pgItens.ActivePage = tsTermos) then
    if (DMEntradas.C_TabelaPlanoPagamento.Value = 0) and
       (DMEntradas.C_TabelaF_PLANOPAGAMENTO.Value <> 0 ) then begin
      DMEntradas.C_Tabela.Edit;
      DMEntradas.C_TabelaPlanoPagamento.Value := DMEntradas.C_TabelaF_PLANOPAGAMENTO.Value;
    end;

end;

procedure TFrmEntradas.lbTermosSetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([DMEntradas.C_TabelaPlanoPagamento.asVariant, 'E']);
end;

procedure TFrmEntradas.DBEdit3Change(Sender: TObject);
begin
  inherited;
  AtualizaDadosFornecedor;
end;

procedure TFrmEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMEntradas.ContabilidadeAtivado then
    DMEntradas.ContabilidadeDesativado;
  ////////////////////
end;

procedure TFrmEntradas.dbtTotalFinalAfterEdit(Sender: TObject);
var
  nDif : Currency;
begin
  inherited;
  {Atualizando os Campos Despesas ou Descontos conforme valor digitado pelo usuário}
  nDif  := DMEntradas.C_TabelaTOTALITENS.asCurrency +
           DMEntradas.C_TabelaDESCONTO.asCurrency +  {O Desconto é negativo}
           DMEntradas.C_TabelaFRETE.asCurrency +
           DMEntradas.C_TabelaIMPOSTO.asCurrency +
           DMEntradas.C_TabelaOUTRASDESPESAS.asCurrency +
           DMEntradas.C_TabelaJUROS.asCurrency;

              {Novo Total Digitado}
  nDif := DMEntradas.C_TabelaTotal.asCurrency - nDif;

  if nDif <> 0 then begin
    DMEntradas.C_Tabela.Edit;

    if nDif > 0 then {=> + Despesas}
      DMEntradas.C_TabelaOUTRASDESPESAS.asCurrency :=  DMEntradas.C_TabelaOUTRASDESPESAS.asCurrency + nDif
    else {=> Desconto}
      DMEntradas.C_TabelaDESCONTO.asCurrency :=  DMEntradas.C_TabelaDESCONTO.asCurrency + nDif;

  end;


end;

procedure TFrmEntradas.T_TermosAfterTransition(Sender: TObject);
begin
  inherited;
  dfObs.Invalidate;
  cmbTermos.Invalidate;
end;

procedure TFrmEntradas.FormComponentGravou(Sender: TObject);
var
  sIDsTitulos : String;
begin
  inherited;

  {Pagamentos para o Movimento gravado}
  if not bOutroSalvar then begin
    if cbReceber.Checked and (DMEntradas.C_TabelaTipoPadrao.Value = 100) and
       (DMEntradas.C_Parcelas.RecordCount > 0) then begin
      sIDsTitulos := dbgParcelas.Distinct('ID');
      DMProjeto.SetParametrosForm([null, DMEntradas.C_TabelaFavorecido.Value, sIDsTitulos ]);
      DMProjeto.CriarForm('DlgSangria',self,true);
      {Fazendo o Refresh nas Parcelas}
      DMEntradas.C_Parcelas.DisableControls;
      try
        DMEntradas.C_Parcelas.Close;
        DMEntradas.C_Parcelas.Open;
      finally
        DMEntradas.C_Parcelas.EnableControls;
      end;
      DMEntradas.C_Tabela.Edit;
      DMEntradas.C_TabelaPagoInvoice.asCurrency := DMEntradas.C_TabelaTotal.asCurrency -
                                                   dbgParcelas.TotalGeral('Saldo');
      DBEdit4Change(Self);  //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
      end
    else if cbReceber.Checked then begin
      DMProjeto.SetParametrosForm([null, DMEntradas.C_TabelaFavorecido.Value ]);
      DMProjeto.CriarForm('DlgPgtoInstantaneo',self,true);
    end;
  end;


end;

procedure TFrmEntradas.DBEdit4Change(Sender: TObject);
begin
  inherited;
  cmbTermos.ReadOnly := False;
  lbDesativado.Visible := false;

  if DMEntradas.bAlteracao then begin
    if DMEntradas.C_TabelaPagoInvoice.asCurrency > 0 then
      cmbTermos.ReadOnly := True
    else
      cmbTermos.ReadOnly := false;

    if DMEntradas.C_TabelaTipoPadrao.Value = 100 then begin
      if (DMEntradas.C_TabelaPagoInvoice.asCurrency > 0) and
         (DMEntradas.C_TabelaPagoInvoice.asCurrency < DMEntradas.C_TabelaTotal.asCurrency) then begin
        lbDesativado.Caption := 'Pgto. Parcial';
        lbDesativado.Font.Color := clNavy;
        T_StatusInvoice.Prepare(lbDesativado.Parent, lbDesativado.BoundsRect);
        try
          lbDesativado.Visible := true;
          if T_StatusInvoice.Prepared then
            T_StatusInvoice.Execute;
        finally
          T_StatusInvoice.unPrepare;
        end;

        end
      else if DMEntradas.C_TabelaPagoInvoice.asCurrency >= DMEntradas.C_TabelaTotal.asCurrency then begin
        lbDesativado.Caption := 'Liquidado';
        lbDesativado.Font.Color := clBlue;
        lbDesativado.Visible := true;
      end;
    end;
  end; //TipoPadrao

end;

procedure TFrmEntradas.dxBarExcluirClick(Sender: TObject);
begin
  inherited;
  if DMEntradas.C_Parcelas.Active and (DMEntradas.C_Parcelas.RecordCount > 0) then
    DMEntradas.C_Parcelas.Delete;
end;

procedure TFrmEntradas.dxBarIncluirClick(Sender: TObject);
begin
  inherited;
  if DMEntradas.C_Parcelas.Active then
    DMEntradas.C_Parcelas.Append;
end;

procedure TFrmEntradas.lbDesativadoDblClick(Sender: TObject);
begin
  {Mostrar Pagamentos}
end;

procedure TFrmEntradas.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (LastDataObject.TableName = 'FAVORECIDOS') and
     (LastDataObject.ObjectKey <> null) then
    dfFavorecido.ID := LastDataObject.ObjectKey
  else if LastDataObject.TableName = 'ITENS' then
    dbgItens.TS_ID := LastDataObject.ObjectKey;
end;

procedure TFrmEntradas.dxBarPerformanceClick(Sender: TObject);
begin
  inherited;
  DlgMsg.ShowMsg( 2105, [DMEntradas.sPerformance] );
end;

procedure TFrmEntradas.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var
  I : Variant;
  Col : Integer;
begin
  inherited;
  I := Node.Values[ dbgItens.FindColumnByFieldName('I_TIPOITEM').Index ];
  if I = null then
    I := 1;

  Col := dbgItens.GetAbsoluteColumnIndex(dbgItens.FocusedColumn);

  case I of
    4: Begin
         Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
       end;
    5: if dbgItens.GetFieldValue(Node,'I_Percentual', 0) > 0 then begin
         Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
       end;
    6: Begin
         Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
       end;
    7: Begin
         Allow := (UpperCase(dbgItens.Columns[Col].FieldName) <> 'TAXAVEL');
       end;
  end;
end;

procedure TFrmEntradas.dbtEnderecoAfterEdit(Sender: TObject);
begin
  inherited;
  dbtCidade.SetFocus;
end;

procedure TFrmEntradas.dbtCidadeAfterEdit(Sender: TObject);
begin
  inherited;
  dbtUF.SetFocus;
end;

procedure TFrmEntradas.dbtUFAfterEdit(Sender: TObject);
begin
  inherited;
  dbtCEP.SetFocus;

end;

procedure TFrmEntradas.dbtCEPAfterEdit(Sender: TObject);
begin
  inherited;
  dbtemail.SetFocus;
end;

procedure TFrmEntradas.FormComponentLayoutChange(Sender: TObject; LayoutGrid : Boolean;
  var bSkip: Boolean);
begin
  inherited;
  if FormatoTabela.Checked then begin
    if (DMEntradas.C_Tabela.State <> dsBrowse) then
      DMEntradas.C_Tabela.Post;
    if (DMEntradas.C_Tabela.ChangeCount > 0) then begin
      DMEntradas.C_Tabela.UndoLastChange(false);
    end;
  end;
end;

procedure TFrmEntradas.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  nTipoPadraoAbertura := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), 100);

  DefinirTipoMovAbertura( IIF(nTipoPadraoAbertura <> 0, nTipoPadraoAbertura, 100) );
end;

procedure TFrmEntradas.DefinirTipoMovAbertura( nTipoPadrao : Integer);
var
  bChange : Boolean;
begin
  {Operacao}
  bChange := DMEntradas.bAlteracao;

  if (DMEntradas.C_TabelaTipoPadrao.Value <> nTipoPadrao) then begin

    if bChange then
      Estado_Inicial;

    if DMEntradas.C_TiposMovimento.Locate('TipoPadrao', nTipoPadrao, []) then begin
      DMEntradas.C_Tabela.Edit;
      DMEntradas.C_TabelaTipoMovimento.Value := DMEntradas.C_TiposMovimentoTipoMovimento.Value;
      DMEntradas.nTipoEntrada := DMEntradas.C_TiposMovimentoTipoMovimento.Value;
      if bChange then
        cmbTipoMovimento.OnChange(Self);
    end;

  end;

end;

procedure TFrmEntradas.btComando2Click(Sender: TObject);
begin
  inherited;
  // Adriano
  if DMEntradas.C_TabelaTipoPadrao.value <> 100 then begin
    DlgMsg.ShowMsg(3093);
    exit;
  end;
  // Adriano
  DMEntradas.Contabiliza;

  DMEntradas.MostraContabilidade;
  ////////////////
end;

procedure TFrmEntradas.btComando1Click(Sender: TObject);
var
  sIDsTitulos : String;
begin
  inherited;

  if (DMEntradas.C_TabelaTipoPadrao.Value = 100) and
     (DMEntradas.C_Parcelas.RecordCount > 0) then begin
    sIDsTitulos := dbgParcelas.Distinct('ID');
    DMProjeto.SetParametrosForm([null, DMEntradas.C_TabelaFavorecido.Value, sIDsTitulos ]);
    DMProjeto.CriarForm('DlgSangria',self,true);
    {Fazendo o Refresh nas Parcelas}
    DMEntradas.C_Parcelas.DisableControls;
    try
      DMEntradas.C_Parcelas.Close;
      DMEntradas.C_Parcelas.Open;
    finally
      DMEntradas.C_Parcelas.EnableControls;
    end;
    DMEntradas.C_Tabela.Edit;
    DMEntradas.C_TabelaPagoInvoice.asCurrency := DMEntradas.C_TabelaTotal.asCurrency -
                                                 dbgParcelas.TotalGeral('Saldo');
    DBEdit4Change(Self);  //Para atualizar label de Liquidado e Pgto.Parcial, desabilitar Termos...
    end
  else begin
    DMProjeto.SetParametrosForm([null, DMEntradas.C_TabelaFavorecido.Value ]);
    DMProjeto.CriarForm('DlgPgtoInstantaneo',self,true);
  end;



end;

procedure TFrmEntradas.btVerPgtosClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null, DMEntradas.C_TabelaIDMestre.Value, DMEntradas.C_TabelaF_Nome.Value]);

  DlgPagamentos := TDlgPagamentos.Create(self);
  DlgPagamentos.ShowModal;
  DlgPagamentos.Free;
end;
                                                  

procedure TFrmEntradas.FormComponentBeforeMoveRecord(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (DMEntradas.C_Tabela.State <> dsBrowse) then
    DMEntradas.C_Tabela.Post;
  if (DMEntradas.C_Tabela.ChangeCount > 0) and (DlgMsg.ShowMsg(2103) = 100) then begin
    btGravarClick(self);
    end
  else if (DMEntradas.C_Tabela.ChangeCount > 0) then begin
    DMEntradas.C_Tabela.UndoLastChange(false);
  end;
end;

procedure TFrmEntradas.dbgItensClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  {Localizando o Cliente}
  if AbsoluteIndex = 0 then
    dbgItens.LocalizarFavorecidoEx( dbgItens.TS_Text, 'ClienteRef', '1', 'Nome', DMProjeto.C_LocalizarFav )
  else if AbsoluteIndex = 1 then begin
    if (DMEntradas.C_ItensClienteRef.Value <> 0) and (dbgItens.TS_Text <> '') then
      DMProjeto.SetParametrosForm([ DMEntradas.C_ItensClienteRef.Value ]);

    DMProjeto.CriarForm('FrmClientes', self, true);
  end;

  
end;

procedure TFrmEntradas.dbgItensDESCRICAOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then
    DMProjeto.CriarForm('FrmItens', self, true );
end;

procedure TFrmEntradas.ApagarDadosClick(Sender: TObject);
begin
  ShowMessage('Em construção');
end;

end.

