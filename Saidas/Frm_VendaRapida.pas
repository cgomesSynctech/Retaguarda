unit Frm_VendaRapida;
         

interface

uses
    Windows, FORM_PADRAO, dxExEdtr, teFuse, tePush, TransEff, teTimed,
    teMasked, teBlock, StdCtrls, Mask, DBCtrls, dxDBELib, TS_DBEditNumber,
    FormCont, dxDBTLCl, dxGrClms, TS_DBButtonEdit, TS_DBEditFavorecido,
    dxDBEdtr, TS_DBLookupTipoFav, dxEdLib, TS_CalcEdit, dxCntner, dxEditor,
    TS_ButtonEdit, TS_EditItem, dxDBGrid, dxTL, dxDBCtrl, TS_QDBGrid,
    Graphics, TS_DBText, TS_Label, DBText, TS_DBTextEffect, ExtCtrls,
    TS_Image, dxfClock, Controls, teCtrls, TS_EffectsPanel, dxfLabel,
    TS_Shape, ComCtrls, TS_PageControl, BTOdeum, Provider, teForm, Menus,
    TS_PopupMenu, TS_LastDataObject, Classes, DlgMsg, Forms, DM_VendaRapida, SysUtils, db,
    Placemnt, Dlg_Propaganda, jpeg, teBmpMsk, TS_ModuloStyle, TS_DBEdit,
    teDrip, teCircle, teWFall, teIntrlc, dxGrClEx, TS_LookupComboBox, teWipe,
    TS_DBLookupComboBox, Math, dxCalc, TS_PopupEdit, TS_Edit, RegErro;

type
   
    TFrmVendaRapida = class(TFormPadrao)
        pgPrincipal: TTS_PageControl;
        tsPropaganda: TTS_TabSheet;
        tsOperacao: TTS_TabSheet;
        TS_Shape1: TTS_Shape;
        lbEmpresa: TdxfLabel;
        TS_Panel4: TTS_Panel;
        dxfClock: TdxfClock;
        pgOperacao: TTS_PageControl;
        tsItens: TTS_TabSheet;
        tsTermos: TTS_TabSheet;
        spItens: TTS_Shape;
        lbX: TdxfLabel;
        dbtDescItem: TTS_DBTextEffect;
        lbIg: TdxfLabel;
        dbtQuantidade: TTS_DBTextEffect;
        dbtPrecoUnit: TTS_DBTextEffect;
        dbtSubTotal: TTS_DBTextEffect;
        TS_Shape3: TTS_Shape;
        TS_Label3: TTS_Label;
        dd_mm_yyyy: TTS_DBText;
        imgFoto: TTS_Image;
        spFoto: TTS_Shape;
        TS_Shape10: TTS_Shape;
        TS_DBTextEffect5: TTS_DBTextEffect;
        spTotalFinal: TTS_Shape;
        dbtTotalFinal: TTS_DBTextEffect;
        lbTotalFinal: TTS_Label;
        lbRecebimentos: TTS_Label;
        PgtoCtner: TFormContainer;
        FormBkg: TFormTransitions;
        spTotalItens: TTS_Shape;
        dbtTotalItens: TTS_DBTextEffect;
        lbTotalItens: TTS_Label;
        spDescontoPe: TTS_Shape;
        lbDescontoPe: TTS_Label;
        TransitionList: TTransitionList;
        pnPropItens: TTS_Panel;
        lbCPCaixa: TTS_Label;
        N1: TMenuItem;
        pmIniciarVenda: TMenuItem;
        N2: TMenuItem;
        pmInformarItens: TMenuItem;
        pmInformarTermos: TMenuItem;
        pmGravar: TMenuItem;
        N3: TMenuItem;
        pmCancelarOperacao: TMenuItem;
        pmConsultadePrecos: TMenuItem;
        pmInformarNomedoCliente: TMenuItem;
        pmFecharTela: TMenuItem;
        P_Saidas: TDataSetProvider;
        TS_Shape9: TTS_Shape;
        TS_DBText2: TTS_DBText;
        DBEdit1: TDBEdit;
        pnProduto: TTS_Panel;
        TS_Shape4: TTS_Shape;
        TS_Label1: TTS_Label;
        dfItem: TTS_EditItem;
        pnQuantidade: TTS_Panel;
        TS_Shape5: TTS_Shape;
        lbQuantidade: TTS_Label;
        dfQuantidade: TTS_CalcEdit;
        pnPreco: TTS_Panel;
        TS_Shape7: TTS_Shape;
        lbPreco: TTS_Label;
        pnItem: TTS_Panel;
        TS_Shape6: TTS_Shape;
        TS_DBTextEffect3: TTS_DBTextEffect;
        TS_Label2: TTS_Label;
        TS_Label4: TTS_Label;
        imgLogo: TTS_Image;
        spBottomLine: TTS_Shape;
        dfDescontoPe: TTS_DBEditNumber;
        ppmItens: TTS_PopupMenu;
        DBEdit2: TDBEdit;
        pnStatus: TTS_Panel;
        TS_Shape16: TTS_Shape;
        dbtOBS2: TTS_DBText;
        CtnPropagandas: TFormContainer;
        TS_Image2: TTS_Image;
        pmMostrarParcelas: TMenuItem;
        MostrarCabealho1: TMenuItem;
        CancelarOperaes1: TMenuItem;
        N4: TMenuItem;
        pmPercorrerItens: TMenuItem;
        pnConsultaPrecos: TTS_Panel;
        lbDescricaoConsulta: TTS_Label;
        spConsultaPrecos: TTS_Shape;
        lbPrecoConsulta: TTS_Label;
        pmComprarItemdaConsulta: TMenuItem;
        N5: TMenuItem;
        FazerRetirada1: TMenuItem;
        ResuprimentodeCaixa1: TMenuItem;
        RecebimentodeParcelas1: TMenuItem;
        pnsMaisOpcoes: TTS_Panel;
        lbKey8: TTS_Label;
        lbTit8: TTS_Label;
        pnsConsultarPrecos: TTS_Panel;
        lbKey7: TTS_Label;
        lbTit7: TTS_Label;
        pnsFecharTela: TTS_Panel;
        lbKey6: TTS_Label;
        lbTit6: TTS_Label;
        pnsSalvar: TTS_Panel;
        lbKey5: TTS_Label;
        lbTit5: TTS_Label;
        pnsNomeCliente: TTS_Panel;
        lbKey4: TTS_Label;
        lbTit4: TTS_Label;
        pnsInformarTermos: TTS_Panel;
        lbKey3: TTS_Label;
        lbTit3: TTS_Label;
        pnsInformarItens: TTS_Panel;
        lbKey2: TTS_Label;
        lbTit2: TTS_Label;
        pnsIniciarVenda: TTS_Panel;
        lbKey1: TTS_Label;
        lbTit1: TTS_Label;
        pnsPercorrerItens: TTS_Panel;
        lbKey9: TTS_Label;
        lbTit9: TTS_Label;
        TS_Shape8: TTS_Shape;
        TS_Shape15: TTS_Shape;
        TS_Shape18: TTS_Shape;
        TS_Shape19: TTS_Shape;
        TS_Shape22: TTS_Shape;
        TS_Shape23: TTS_Shape;
        TS_Shape24: TTS_Shape;
        NomostrarAtalhos1: TMenuItem;
        dbtNomeCliente: TTS_DBTextEffect;
        TS_DBTextEffect9: TTS_DBTextEffect;
        DBEdit3: TDBEdit;
        TS_Shape2: TTS_Shape;
        TS_Label5: TTS_Label;
        N6: TMenuItem;
        CancelarSomenteTEF1: TMenuItem;
        CancelarSomenteHiperCard1: TMenuItem;
        Timer1: TTimer;
        msVendaRapida: TTS_ModuloStyle;
        esVendaRapida: TdxEditStyleController;
        dbtTabelaPadrao: TTS_DBTextEffect;
        pnCliente: TTS_Panel;
        pnInfoCliente: TTS_Panel;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        TS_DBEdit5: TTS_DBEdit;
        TS_DBEdit6: TTS_DBEdit;
        cmbTipoFav: TTS_DBLookupTipoFav;
        dfFavorecido: TTS_DBEditFavorecido;
        TS_DBEdit13: TTS_DBEdit;
        TS_DBEdit14: TTS_DBEdit;
        TS_DBEdit15: TTS_DBEdit;
        TS_DBEdit16: TTS_DBEdit;
        TS_DBText1: TTS_DBText;
        lbCPEmpresa: TTS_Label;
        lbCPEndereco: TTS_Label;
        lbCPCGC: TTS_Label;
        lbCPTitulo: TTS_Label;
        T_FormShow: TInterlacedTransition;
        T_ConsultaPreco: TWaterfallTransition;
        T_Cliente: TCircleTransition;
        T_Letras: TDripTransition;
        dbgItens: TTS_QDBGrid;
        dbgItensSEQUENCIA: TdxDBGridMaskColumn;
        dbgItensColumn34: TdxDBGridColumn;
        dbgItensI_CODIGO: TdxDBGridMaskColumn;
        dbgItensDESCRICAO: TdxDBGridMaskColumn;
        dbgItensReferencia: TdxDBGridMaskColumn;
        dbgItensQUANTIDADE: TdxDBGridMaskColumn;
        dbgItensI_UNIDADE: TdxDBGridLookupColumn;
        dbgItensX: TdxDBGridColumn;
        dbgItensPRECO: TdxDBGridMaskColumn;
        dbgItensIG: TdxDBGridColumn;
        dbgItensSubTotal: TdxDBGridColumn;
        dbgItensQtdFaturada: TdxDBGridMaskColumn;
        dbgItensStatus: TdxDBGridImageColumn;
        dbgItensNumeroLote: TdxDBGridPopupColumn;
        dbgItensColuna1: TdxDBGridColumn;
        dbgItensColuna2: TdxDBGridColumn;
        dbgItensColuna3: TdxDBGridColumn;
        dbgItensColuna4: TdxDBGridColumn;
        dbgItensI_Descricao: TdxDBGridColumn;
        dbgItensPromocao: TdxDBGridColumn;
        dbgItensBaixaEstoque: TdxDBGridColumn;
        dbgItensAliqICMS: TdxDBGridMaskColumn;
        dbgItensI_Percentual: TdxDBGridColumn;
        dbgItensIPI: TdxDBGridMaskColumn;
        dbgItensTVA: TdxDBGridMaskColumn;
        dbgItensNumeroItem: TdxDBGridColumn;
        dbgItensRegistro: TdxDBGridColumn;
        dbgItensCFOP: TdxDBGridPopupColumn;
        dbgItensBaixoEstoque: TdxDBGridColumn;
        dbgItensTipoItem: TdxDBGridColumn;
        dbgItensUltrapassouMesclagem: TdxDBGridColumn;
        dbgItensUsoTipoItem: TdxDBGridColumn;
        dbgItensMesclado: TdxDBGridColumn;
        dbgItensColumn35: TdxDBGridColumn;
        N7: TMenuItem;
        N8: TMenuItem;
        pmAproveitarOperacoes: TMenuItem;
        pmAlterarTabela: TMenuItem;
        pnTermos: TTS_Panel;
        TS_Shape11: TTS_Shape;
        lbTermos: TTS_Label;
        TS_Shape12: TTS_Shape;
        TS_Shape13: TTS_Shape;
        spPlano: TTS_Shape;
        TS_DBTextEffect6: TTS_DBTextEffect;
        lbTipoCobranca: TTS_Label;
        lbCarteira: TTS_Label;
        dbgPlanos: TTS_QDBGrid;
        dbgPlanosPlanoPagamento: TdxDBGridColumn;
        dbgPlanosDESCRICAO: TdxDBGridMaskColumn;
        dbgParcelas: TTS_QDBGrid;
        dbgParcelasParcela: TdxDBGridColumn;
        dbgParcelasVencimento: TdxDBGridDateColumn;
        dbgParcelasValor: TdxDBGridCalcColumn;
        dbgParcelasSaldo: TdxDBGridColumn;
        dbgParcelasTipoCobranca: TdxDBGridLookupColumn;
        dbgParcelasStatus: TdxDBGridColumn;
        dbgParcelasDoc: TdxDBGridColumn;
        dbgParcelasColumn8: TdxDBGridColumn;
        dbgParcelasColumn9: TdxDBGridColumn;
        dbgParcelasColumn10: TdxDBGridColumn;
        dbgParcelasColumn11: TdxDBGridColumn;
        cmbTipoCobranca: TTS_DBLookupComboBox;
        cmbCarteira: TTS_DBLookupComboBox;
        T_Termos: TWipeTransition;
        rocadeBobina1: TMenuItem;
        ComandosdoECF1: TMenuItem;
        pnsBobina: TTS_Panel;
        lbKey11: TTS_Label;
        lbTit11: TTS_Label;
        TS_Shape14: TTS_Shape;
        TS_Shape25: TTS_Shape;
        pnsECF: TTS_Panel;
        lbKey12: TTS_Label;
        lbTit12: TTS_Label;
        TS_Shape26: TTS_Shape;
        AbrirGaveta1: TMenuItem;
        pmCheckEx: TMenuItem;
        pnReceberPgto: TTS_Panel;
        pnPgto: TTS_Panel;
        TS_Shape17: TTS_Shape;
        TS_DBTextEffect1: TTS_DBTextEffect;
        TS_Label6: TTS_Label;
        sp18: TTS_Shape;
        TS_DBTextEffect7: TTS_DBTextEffect;
        TS_Label7: TTS_Label;
        spDescontoPN: TTS_Shape;
        lbDescontoPn: TTS_Label;
        TS_Shape20: TTS_Shape;
        TS_DBTextEffect8: TTS_DBTextEffect;
        TS_Label10: TTS_Label;
        dbtOBS: TTS_DBText;
        dbLabelMsg: TTS_DBText;
        dfDescontoPN: TTS_DBEditNumber;
        pnPreco2: TPanel;
        pnCalc: TPanel;
        dxCalculator1: TdxCalculator;
        dxCalcDisplay: TdxCalcDisplay;
        pnOutros: TPanel;
        dbgTabelasPreco: TTS_QDBGrid;
        dbgTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
        dbgTabelasPrecoPRECO: TdxDBGridMaskColumn;
        dbgTabelasPrecoITEM: TdxDBGridMaskColumn;
        dbgTabelasPrecoTABELAPRECO: TdxDBGridMaskColumn;
        dbgTabelasPrecoPRECOMANUAL: TdxDBGridMaskColumn;
        dbgTabelasPrecoColumn7: TdxDBGridColumn;
        TS_Panel2: TTS_Panel;
        TS_Label8: TTS_Label;
        dfPreco: TdxPopupEdit;
        lbDescItem: TTS_DBTextEffect;
        msDevolucao: TTS_ModuloStyle;
        pmIniciarDevolucao: TMenuItem;
        lbTroca: TdxfLabel;
    TS_Shape21: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Label11: TTS_Label;
    spAcresciomPe: TTS_Shape;
    dfAcrescimoPN: TTS_DBEditNumber;
    dfAcrescimoPE: TTS_DBEditNumber;
    dfDescontoPeVisual: TTS_Edit;
        procedure FormShow(Sender: TObject);
        procedure pgPrincipalChange(Sender: TObject);
        procedure pgOperacaoChange(Sender: TObject);
        procedure pmIniciarVendaClick(Sender: TObject);
        procedure pmInformarItensClick(Sender: TObject);
        procedure pmInformarTermosClick(Sender: TObject);
        procedure pmCancelarOperacaoClick(Sender: TObject);
        procedure pgOperacaoChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure pgPrincipalChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure pmFecharTelaClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dfItemSelecionou(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure FormCreate(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
        procedure dfPrecoKeyPress(Sender: TObject; var Key: Char);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dbgParcelasTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure dbgPlanosDblClick(Sender: TObject);
        procedure dfDescontoPeExit(Sender: TObject);
        procedure pmInformarNomedoClienteClick(Sender: TObject);
        procedure pmConsultadePrecosClick(Sender: TObject);
        procedure pmGravarClick(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure dfFavorecidoExit(Sender: TObject);
        procedure pmMostrarParcelasClick(Sender: TObject);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure lbEmpresaClick(Sender: TObject);
        procedure ppmItensPopup(Sender: TObject);
        procedure MostrarCabealho1Click(Sender: TObject);
        procedure dbgParcelasEditing(Sender: TObject; Node: TdxTreeListNode;
            var Allow: Boolean);
        procedure dbgParcelasEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure CancelarOperaes1Click(Sender: TObject);
        procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
            var CanDelete: Boolean);
        procedure pmPercorrerItensClick(Sender: TObject);
        procedure pmComprarItemdaConsultaClick(Sender: TObject);
        procedure FazerRetirada1Click(Sender: TObject);
        procedure RecebimentodeParcelas1Click(Sender: TObject);
        procedure ResuprimentodeCaixa1Click(Sender: TObject);
        procedure DBEdit3Change(Sender: TObject);
        procedure NomostrarAtalhos1Click(Sender: TObject);
        procedure CancelarSomenteTEF1Click(Sender: TObject);
        procedure Timer1Timer(Sender: TObject);
        procedure CancelarSomenteHiperCard1Click(Sender: TObject);
        procedure dbgItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure dbtTabelaPadraoClick(Sender: TObject);
        procedure pmAlterarTabelaClick(Sender: TObject);
        procedure dfItemIniciarLocalizar(Sender: TObject; var Value: string;
            var bSkip: Boolean);
        procedure cmbTipoCobrancaChange(Sender: TObject);
        procedure pmAproveitarOperacoesClick(Sender: TObject);
        procedure dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
            Conteudo: string);
        procedure ComandosdoECF1Click(Sender: TObject);
        procedure rocadeBobina1Click(Sender: TObject);
        procedure AbrirGaveta1Click(Sender: TObject);
        procedure pmCheckExClick(Sender: TObject);
        procedure PgtoCtnerEnter(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure imgFotoDblClick(Sender: TObject);
    procedure dbgTabelasPrecoChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dbgTabelasPrecoClick(Sender: TObject);
    procedure dbgTabelasPrecoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dbgTabelasPrecoCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure dbgTabelasPrecoDblClick(Sender: TObject);
    procedure dbgTabelasPrecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCalculator1KeyPress(Sender: TObject; var Key: Char);
    procedure dfPrecoInitPopup(Sender: TObject);
    procedure dfPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dfPrecoPopup(Sender: TObject; const EditText: String);
    procedure pmIniciarDevolucaoClick(Sender: TObject);
    procedure cmbCarteiraChange(Sender: TObject);
    procedure dfDescontoPeEnter(Sender: TObject);
    procedure dfDescontoPeVisualEnter(Sender: TObject);
    private
        { Private declarations }
        validaPAF: TValidaPAF;
        DMSaida: TDMVendaRapida;

        DlgProps: TDlgPropaganda;

        bPromocao, bPosVenda, bSelecionou : boolean;


        nItem, nTabelaPreco,
        nIDCliente, nIDVendedor : Integer;
        nValorParcelaBE, nCreditoCliente,


        CorEditores, CorLinhas, CorHeaders, CorConsulta: TColor;

        nPrecoTabela, nMaxDesconto: Currency;
        bSolicitarQuantidade, bSolicitarPreco: Boolean;
        FPodeFechar: boolean;
        sFoto : string;
        procedure EstadoInicial;
        procedure IniciarVenda;
        procedure IniciarDevolucao;
        procedure EstadoItens;
        procedure EstadoTermos(ForcarParcelas: Boolean = false);
        function CancelarOperacao: Boolean;
        procedure AdicionarItem;
        procedure AtualizarCores;

        procedure SetSolicitarQuantidade(Value: Boolean);
        procedure SetSolicitarPreco(Value: Boolean);
        procedure SelecionarPlanoPgto;
        procedure ImprimirDocs;
        procedure ConfiguracoesTipoMov;

    public
        Estado: string;

        { Public declarations }
        constructor Create(AOwner: TComponent); override;

        procedure SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);

        property SolicitarQuantidade: Boolean
            read bSolicitarQuantidade write SetSolicitarQuantidade;

        property SolicitarPreco: Boolean
            read bSolicitarPreco write SetSolicitarPreco;
    end;

var
    FrmVendaRapida: TFrmVendaRapida;
    Inicio: boolean;
    {PAF}
    SubTotalECF: Currency;

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, teRender, teBkgrnd,
    Dlg_ConsultaPrecos, Rpt_Invoices, Dlg_InplacePgtos, Dlg_ClienteVR,
    Dlg_VendedorVR, Variants, Dialogs, dm_ECF, Frm_MsgTEF, TDM_Projeto,
    Rpt_DocCobranca, Dlg_AlterarTabelaPadrao, Dlg_MesclarMovimentos, Frm_MsgECF,
    Dlg_MedicoVR, dlg_DataPosVenda, DLG_VisialuzadorImagem,
    DM_ItensFavorecido, DM_DigitacaoItens, ECF, DM_Saidas, FuncoesPAF;

{$R *.DFM}

constructor TFrmVendaRapida.Create(AOwner: TComponent);
var
    DMClass: TComponentClass;
    sDMName: string;
    i: integer;
    bExiste: Boolean;
begin
    sDMName := 'TDMVendaRapida';

    bExiste := false;

    DMClass := TComponentClass(GetClass(sDMName));
    if Assigned(DMClass) then
    begin
        for i := 0 to Screen.DataModuleCount - 1 do
            if uppercase(Screen.DataModules[i].ClassName) = UpperCase(sDMName) then
            begin
                bExiste := true;
                break;
            end;
        if not bExiste then
            DMSaida := TDMVendaRapida(TComponentClass(DMClass).Create(Application))
        else
            DMSaida := TDMVendaRapida(Screen.DataModules[i]);
    end;

    if DMProjeto.GetParametrosForm(1) <> null then
        DMSaida.nTipoMovimentoPadrao := DMProjeto.GetParametrosForm(1)
    else
        DMSaida.nTipoMovimentoPadrao := 1;

    if DMSaida.C_TiposMovimento.Active then
    begin
        DMSaida.C_TiposMovimento.Close;
        DMSaida.C_TiposMovimento.Open;
    end;

    inherited Create(AOwner);
    Inicio := True;
    bPosVenda := (DMProjeto.Parametro('PosVenda') = 'S');
end;




procedure TFrmVendaRapida.FormCreate(Sender: TObject);
var
    sImagemTela: string;
begin
    inherited;
    FPodeFechar := false;
    try
        DMProjeto.nCasasDecimais := StrToInt(DMProjeto.Parametro('CasasDecimais'));
        DMProjeto.sCasasDecimais := '######0.' + Copy('0000000000', 1, DMProjeto.nCasasDecimais);
        DMVendaRapida.C_ItensSubTotal.DisplayFormat := DMProjeto.sCasasDecimais;
        DMVendaRapida.C_TabelaTOTALITENS.DisplayFormat := DMProjeto.sCasasDecimais;
        DMVendaRapida.C_TabelaTOTAL.DisplayFormat := DMProjeto.sCasasDecimais;
    except
        DMProjeto.nCasasDecimais := 2;
        DMProjeto.sCasasDecimais := '######0.00';
//        DMVendaRapida.C_ItensSubTotal.DisplayFormat := '#,###,##0.00';
//        DMVendaRapida.C_TabelaTOTALITENS.DisplayFormat := '#,###,##0.00';
//        DMVendaRapida.C_TabelaTOTAL.DisplayFormat := '#,###,##0.00';
    end;
    DMProjeto.bTimer := True;
    DMProjeto.DesabilitaTeclado := False;
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Clear;
    DMProjeto.Q_Sql.Sql.Add('select * from pdvs where maquina = ''' + DMProjeto.Maquina + '''');
    DMProjeto.Q_Sql.Open;
    if DMProjeto.Q_Sql.RecordCount > 0 then
    begin
        if DMProjeto.Q_Sql.FieldByName('Ativo').AsString = 'S' then
            DMProjeto.bECFAtivo := True
        else
            DMProjeto.bECFAtivo := False;
    end
    else
        DMProjeto.bECFAtivo := False;
    DMVendaRapida.FormVenda := Self;

    sImagemTela := DMProjeto.Parametro('ImagemVR');

    if (sImagemTela <> '') and FileExists(DMProjeto.ImgPath + sImagemTela) then
        msVendaRapida.Textura.LoadFromFile(DMProjeto.ImgPath + sImagemTela);

    DMSaida.CriaContabilidade;

    bSolicitarQuantidade := false;
    bSolicitarPreco := false;

    DMSaida.Iniciar;

    DMSaida.sForm := 'FrmVendaRapida';
    if DMProjeto.bECFAtivo then
        DMECF.ECF1.CarregaAliquotas;
    //  SolicitarQuantidade := (DMProjeto.Parametro('SemprePedirNaVR') = 'Q') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');
    //  SolicitarPreco   := (DMProjeto.Parametro('SemprePedirNaVR') = 'P') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');

    if screen.width > 800 then
    begin
        pnPropItens.width := trunc(pnPropItens.width * 1.3);
        pnPropItens.height := trunc(pnPropItens.height * 1.3);
        pnPropItens.Left := dbgItens.Left - pnPropItens.width - 7;
        pnPropItens.Top := (dbgItens.Top + dbgItens.Height) - pnPropItens.height;
        imgFoto.width := trunc(imgFoto.width * 1.3);
        imgFoto.height := trunc(imgFoto.Height * 1.3);
        spFoto.width := trunc(spFoto.width * 1.3);
        spFoto.height := trunc(spFoto.Height * 1.3);
    end;

end;

procedure TFrmVendaRapida.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;

    if bPosVenda then
    begin
        if dlgDataPosVenda <> nil then
            dlgDataPosVenda := nil;
    end;
    if DlgProps <> nil then
    begin
        DlgProps.Parar;
    end;

    DMSaida.Fechar;

    dlgProps := nil;
    DMSaida.dlgPgtos := nil;

    if DMSaida.ContabilidadeAtivado then
        DMSaida.ContabilidadeDesativado;
    if (DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') and (DMECF.ECF1.SubTotal <> 0) then
       DMECF.ECF1.CancelaUltimoCupom;

//    {PAF}
//    DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
//    FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));



end;

procedure TFrmVendaRapida.FormShow(Sender: TObject);
begin
    inherited;

    try
        if DMProjeto.Logo <> nil then
        begin
            imgLogo.Picture.Graphic := TGraphic(DMProjeto.Logo);
        end;

        FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;

        pnCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnInfoCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsItens.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsTermos.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        CtnPropagandas.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPropItens.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPgto.Backgroundoptions.picture.bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnStatus.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTermos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;

        if DMProjeto.nPerfil = 1 then
        begin //Administrador
            lbEmpresa.Cursor := crHandPoint;
            lbEmpresa.OnClick := lbEmpresaClick;
        end;

        lbEmpresa.Caption := DMProjeto.sNomeEmpresa;
        lbEmpresa.AutoSize := true;

        lbCPEmpresa.Caption := IIF(DMProjeto.sRazaoEmpresa = '', DMProjeto.sNomeEmpresa, DMProjeto.sRazaoEmpresa);
        lbCPEndereco.Caption := DMProjeto.sEnderecoEmpresa + ' - ' + DMProjeto.sBairroEmpresa + #13 +
            DMProjeto.sCidadeEmpresa + ' - ' + DMProjeto.sUFEmpresa + '  -  Fone: ' + DMProjeto.sFone1Empresa;
        lbCPCGC.Caption := 'CNPJ: ' + MascaraCPFCNPJ(DMProjeto.sCPF_CNPJEmpresa) + '   IE: ' + DMProjeto.sInscricaoEstEmpresa;
        lbCPCaixa.Caption := 'Caixa: ' + DMFinanceiro.sNomeContaPadrao + '   ' + FormatDateTime(shortdateformat, DMProjeto.dDataSistema);

        Application.ProcessMessages;

        lbEmpresa.Left := StrToInt(lbEmpresa.Hint);
        lbEmpresa.Width := lbEmpresa.Width + 20;

        {Corrigindo cores da tela}
        AtualizarCores;
        if (DMProjeto.PAFObrigatorio) Then
          pnPreco.Visible := false
        Else
          pnPreco.Visible := True;  
        if DMProjeto.Parametro('SemDescontoNaVR') = 'S' then
        begin
            pnPreco.Visible := false;
            lbDescontoPe.Visible := false;
            spDescontoPe.Visible := false;
            dfDescontoPe.Visible := false;
            spDescontoPN.Visible := false;
            dfDescontoPN.Visible := false;
            lbDescontoPN.Visible := false;
        end;

        if DMProjeto.Parametro('QuantidadePrimeiroVR') = 'S' then
            pnQuantidade.align := alLeft;

        if (DMSaida.DlgPgtos = nil) then
        begin
            DMSaida.DlgPgtos := TDlgInplacePgtos(PgtoCtner.CreateForm(TDlgInplacePgtos));
            DMSaida.DlgPgtos.C_Parcelas := DMVendaRapida.C_Parcelas;

            {Definindo Estilo Visual}
            DMSaida.DlgPgtos.BitmapTela := FormBkg.Backgroundoptions.picture.Bitmap;
            DMSaida.DlgPgtos.pCorAlphaBlend := CorLinhas;
            DMSaida.DlgPgtos.pCorGrid := CorEditores;
            DMSaida.DlgPgtos.pCorLinhas := CorLinhas;
            DMSaida.DlgPgtos.pCorHeaders := CorHeaders;

            PgtoCtner.ShowFormEx(DMsaida.DlgPgtos, true, nil, nil, fcfaClient);

            DMSaida.DlgPgtos.PixelsPerInch := 120;
        end;

        if (DlgProps = nil) then
        begin
            DlgProps := TDlgPropaganda(CtnPropagandas.CreateForm(TDlgPropaganda));
            DlgProps.BitmapTela := FormBkg.Backgroundoptions.picture.bitmap;
            CtnPropagandas.ShowFormEx(DlgProps, true, nil, nil, fcfaClient);
        end;

        EstadoInicial;

        if XPClassMenu <> nil then
            with XPClassMenu do
            begin
                Gradient := true;
                DrawSelect := true;
                FlatMenu := true;
                SelectColor := $00F5EBDE;
                SelectBorderColor := $00E2BE92;
                UseSystemColors := false;
                IconBackColor := $00E2BE92;
                Active := not (DMProjeto.Parametro('MenuPadraoWindows') = 'S');
            end;

    finally
        DMProjeto.LimparParametrosForm;
    end;

end;

procedure TFrmVendaRapida.pgPrincipalChangingToTab(Sender: TObject;
    tab: Integer; var AllowChange: Boolean);
var
    R: TRect;
begin
    inherited;
    {
      R.TopLeft :=
        ControlScreenToClient( pgPrincipal.Parent,
                               ControlClientToScreen( pgPrincipal.ActivePage,
                                                      pgPrincipal.ActivePage.ClientRect.TopLeft));
      R.BottomRight :=
        ControlScreenToClient( pgPrincipal.Parent,
                               ControlClientToScreen(pgPrincipal.ActivePage,
                                                     pgPrincipal.ActivePage.ClientRect.BottomRight));
      if pgPrincipal.ActivePage = tsPropaganda then
        T_Iniciar.Prepare( pgPrincipal.Parent, r )
      else if pgPrincipal.ActivePage = tsOperacao then
        T_Terminar.Prepare( pgPrincipal.Parent, r );
    }
end;

procedure TFrmVendaRapida.pgPrincipalChange(Sender: TObject);
begin
    inherited;
    {  try
        if T_Iniciar.Prepared then
          T_Iniciar.Execute;
        if T_Terminar.Prepared then
          T_Terminar.Execute;
      finally
        if T_Iniciar.Prepared then
          T_Iniciar.unPrepare;
        if T_Terminar.Prepared then
          T_Terminar.unPrepare;
      end;}
end;

procedure TFrmVendaRapida.pgOperacaoChangingToTab(Sender: TObject;
    tab: Integer; var AllowChange: Boolean);
var
    R: TRect;
begin
    inherited;

    {
    R.TopLeft :=
      ControlScreenToClient( pgOperacao.Parent,
                             ControlClientToScreen( pgOperacao.ActivePage,
                                                    pgOperacao.ActivePage.ClientRect.TopLeft));
    R.BottomRight :=
      ControlScreenToClient( pgOperacao.Parent,
                             ControlClientToScreen(pgOperacao.ActivePage,
                                                   pgOperacao.ActivePage.ClientRect.BottomRight));

    T_ItensTermos.Prepare( pgOperacao.Parent, r );
   }
end;

procedure TFrmVendaRapida.pgOperacaoChange(Sender: TObject);
begin
    inherited;
    {  try
        if T_ItensTermos.Prepared then
          T_ItensTermos.Execute;
      finally
        if T_ItensTermos.Prepared then
          T_ItensTermos.unPrepare;
      end;
    }
    if pgOperacao.ActivePage = tsTermos then
    begin

        if dbgPlanos.Canfocus then
            ActiveControl := dbgPlanos
    end
    else
    begin
        if dfItem.Canfocus then
            ActiveControl := dfItem;
    end;

end;

procedure TFrmVendaRapida.pmIniciarVendaClick(Sender: TObject);
begin
    inherited;
    if Estado = 'Propagandas' then
        IniciarVenda
    else if CancelarOperacao then
        EstadoInicial;
end;

procedure TFrmVendaRapida.pmInformarItensClick(Sender: TObject);
begin
    inherited;
    EstadoItens;
end;

procedure TFrmVendaRapida.pmInformarTermosClick(Sender: TObject);
begin
    inherited;
    EstadoTermos;
end;

procedure TFrmVendaRapida.pmCancelarOperacaoClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanOpCorr') then
        exit;
    if CancelarOperacao then
    begin
        if (DMSaida.C_TabelaTOTAL.Value <> 0) and (DMProjeto.bECFAtivo) then Begin
            DMECF.ECF1.CancelaUltimoCupom;
            {PAF}
            DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
           // FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
        End;
        EstadoInicial;
    end;
end;

procedure TFrmVendaRapida.pmFecharTelaClick(Sender: TObject);
begin
    inherited;
    FPodeFechar := true;
    if (Estado = 'Propagandas') or CancelarOperacao then
        Close
    else
    begin
        pmCancelarOperacaoClick(self);
    end;
end;

function TFrmVendaRapida.CancelarOperacao;
begin
    Result := False;
    if not DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanOpCorr') then Exit;
      result := (DMSaida.C_TabelaTotal.Value = 0) or (DlgMsg.ShowMsg(2700) = 100);
end;

procedure TFrmVendaRapida.EstadoInicial;
begin
    Screen.Cursor := crDefault;
    dbtDescItem.Visible := false;
    dbtQuantidade.Visible := false;
    dbtPrecoUnit.Visible := false;
    dbtSubTotal.Visible := false;
    lbX.Visible := false;
    lbIg.Visible := false;
    lbCPEmpresa.Visible := false;
    lbCPEndereco.Visible := false;
    lbCPCGC.Visible := false;
    lbCPCaixa.Visible := false;
    lbCPTitulo.Visible := false;

    // Variáveis da troca...
    DMSaida.bDevolucao := False;
    DMSaida.bTroca := False;
    nCreditoCliente := 0;
    DMSaida.nCreditoDevolucao := 0;

    FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;

    pnCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnInfoCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pgOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsItens.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    tsTermos.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    CtnPropagandas.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnPropItens.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnPgto.Backgroundoptions.picture.bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
    pnStatus.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
    pnTermos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;

    Application.ProcessMessages;
    
    pgPrincipal.SetPage(tsPropaganda); //Propagandas
    pgOperacao.ActivePageIndex := 0; //Itens

    {True}
    SetEnableMenu(true, pmIniciarVenda);
    SetEnableMenu(true, pmIniciarDevolucao);

    {False}
    SetEnableMenu(false, pmInformarItens);
    SetEnableMenu(false, pmInformarTermos);
    SetEnableMenu(false, pmInformarNomedoCliente);
    SetEnableMenu(false, pmAproveitarOperacoes);
    SetEnableMenu(false, pmGravar);
    SetEnableMenu(False, pmCheckEx);
    SetEnableMenu(false, pmCancelarOperacao);
    SetEnableMenu(false, pmPercorrerItens);
    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(false, pmAlterarTabela);

    if DMSaida.dlgPgtos <> nil then
        DMSaida.DlgPgtos.EstadoInicial( DMSaida.nCreditoDevolucao );

    if Self.Visible then
    begin //=> que o form já está criado e que uma operação foi gravada.
        DMSaida.Modo_Inclusao; //para nao deixar sugeira da operacao anterior;
        dbgPlanos.LimparSelecionados;
    end;

    Estado := 'Propagandas';
    if bPosVenda then
    begin
        if dlgDataPosVenda = nil then
            dlgDataPosVenda := TdlgDataPosVenda.create(Self);
    end;
    if DlgProps <> nil then
    begin
        if CtnPropagandas.Parent <> tsPropaganda then
            CtnPropagandas.Parent := tsPropaganda;
        DlgProps.Iniciar;
    end;
end;

procedure TFrmVendaRapida.IniciarVenda;
var xCliente, xMedico: integer;
    teste: Currency;
begin
   try
      try
       {PAF}
        if (DMPRojeto.PAFObrigatorio) Then Begin
          Try
             DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
             SubTotalECF := 0.00;
             validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
             if (validaPAF.CodigoErro = 1) Then
                 Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
             if (Not (DMECF.ECF1.DiaJaAberto())) Then
               raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
          except
             raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
                                'ou os dados do arquivo auxiliar diverge da impressora!!!');
          End;
        End;
        if Name <> 'FrmEmpresa' Then Begin
         if (DMProjeto.TipoSituacaoCliente = 2) Then Begin
            DlgMsg.ShowMsg(50,['O Período de Avaliação Expirou. Favor Registrar o Sistema SYNCLOJA.'+#13+
                               'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                               'nosso site www.synctech.com.br']);
            if DlgProps <> nil then
               DlgProps.Parar;
            DlgProps := nil;
            exit;
         End Else if (DMProjeto.TipoSituacaoCliente = 4) Then Begin
            DlgMsg.ShowMsg(50,['Você deve atualizar o Acesso ao Sistema.'+#13+
                               'Para registrar, entre em contato pelo telefone:(83)32441422 ou pelo'+#13+
                               'nosso site www.synctech.com.br']);
            if DlgProps <> nil then
               DlgProps.Parar;
            DlgProps := nil;
            exit;
        End;
     End;
     {Iniciar tratamento de impressora}
      if (TModelo(DMECF.ECF1.Modelo) <> Nenhuma) and (DMProjeto.bECFAtivo)  then
        begin
            if (DMPRojeto.PAFObrigatorio) Then Begin
              Try
                  validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
              except
                 raise Exception.Create('Erro ao acessar impressora fiscal!!!');

              End;
              if (validaPAF.CodigoErro = 1) Then Begin
                 DlgMsg.ShowMsg(50,[validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.']);
                 Exit;
              End
            End Else Begin
                if DMECF.ECF1.ChkECFAberto = 'ECF Fechado' then
                begin
                    if DlgMsg.ShowMsg(6036) = 100 then
                    begin
                      if (DMProjeto.nModeloECF = 8) then
                         DMECF.ECF1.Sangria('0,00', DMProjeto.sLoginName)
                       Else
                         DMECF.ECF1.AberturaDia('0,01', 'Dinheiro');
                      Exit;
                    end
                    else
                        Exit;
                end;
                if DMECF.ECF1.LeData <> FormatDateTime('ddmmyy', DMProjeto.dDataSistema) then
                begin
                    DlgMsg.ShowMsg(6037);
                    Exit;
                end;
                if (DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto') and (DMECF.ECF1.SubTotal <> 0) then
                begin
                    if not DMECF.ECF1.CancelaUltimoCupom then
                        Exit;
                end;
            End;
        end;
        Screen.Cursor := crHourGlass;

        imgFoto.Picture := nil;

        DMSaida.Modo_Inclusao;

        if DMSaida.bTroca then begin
          dfFavorecido.ID := nIDCliente;
          DMSaida.C_TabelaVENDEDOR.AsInteger := nIDVendedor;
        end
        else begin

          if DMProjeto.Parametro('SolicitarClienteVR') = 'S' then
          begin
              Screen.Cursor := crDefault;
              DlgClienteVR := TDlgClienteVR.Create(self);

              if DlgClienteVR.ShowModal = -1 then
              begin
                  DlgClienteVR.Release;
                  exit;
              end;
              if (Not (DlgClienteVR.SenhaValida)) Then Begin
                 DlgMsg.ShowMsg(50, ['Senha do cliente não confere!']);
                 Exit;
              End;

              xCliente := DlgClienteVR.Cliente;
              DlgClienteVR.Release;

              dfFavorecido.ID := xCliente;
          end;

          xMedico := 0;
          if (DMProjeto.Parametro('SolicitarMedicoVR') = 'S') and (xCliente <> -1) then
          begin
              Screen.Cursor := crDefault;
              DlgMedicoVR := TDlgMedicoVR.Create(self);
              if DlgMedicoVR.ShowModal = -1 then
              begin
                  DlgMedicoVR.Release;
                  exit;
              end;
              xMedico := DlgMedicoVR.Medico;
              DlgMedicoVR.Release;
          end;

          if (DMSaida.C_TabelaVendedor.Value = 0) and
              (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then
          begin
              Screen.Cursor := crDefault;
              DlgVendedorVR := TDlgVendedorVR.Create(self);
              DlgVendedorVR.DM := DMSaida;

              if DlgVendedorVR.ShowModal = -1 then
              begin
                  DlgVendedorVR.Release;
                  exit;
              end;

              DlgVendedorVR.Release;
          end;
        end;
        {Definindo Operacao Padrão da tela, o Cliente Padrao e a Mensagem Padrao}
        with DMSaida do
        begin

            C_TiposMovimento.Locate('TipoMovimento', DMSaida.nTipoMovimentoPadrao, []);
            C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;
            lbCPTitulo.Caption := C_TiposMovimentoDescricao.AsString;
            {Cliente - Padrao}
            if DMProjeto.Parametro('SolicitarClienteVR') <> 'S' then
            begin
                if C_TiposMovimentoFavorecidoPadrao.IsNull  then
                   dfFavorecido.ID := 1 // Consumidor Final;
                else
                   dfFavorecido.ID := C_TiposMovimentoFavorecidoPadrao.Value
            end;
            if xMedico > 0 then
                C_TabelaMedico.value := xMedico;

            {Mensagem - Padrao}
            if C_TiposMovimentoMensagemPadrao.Value > 0 then
            begin
                C_MensagensOperacoes.Locate('MensagemOperacao', C_TiposMovimentoMensagemPadrao.Value, []);
                C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
            end;

        end;

        Screen.Cursor := crHourGlass;
        FormBkg.Backgroundoptions.picture.Bitmap := msVendaRapida.Textura;

        pnCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnInfoCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsItens.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsTermos.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        CtnPropagandas.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPropItens.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPgto.Backgroundoptions.picture.bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnStatus.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTermos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;



        Update;
        Application.ProcessMessages;

        pgPrincipal.SetPage(tsOperacao); //Operacao

        lbTroca.Visible := DMSaida.bTroca;

        DMECF.ECF1.FechaRelatorio();
        DMECF.ECF1.AbreCupom('');

        EstadoItens;

        if dfFavorecido.ID = 0 then
          pmInformarNomedoClienteClick(self);
        Screen.Cursor := crDefault;
     Except
       on E:Exception do
          MessageDlg(pChar(e.message), mtInformation, [mbOK], 0);
     End;
    Finally
        Screen.Cursor := crDefault;
    end;
end;

procedure TFrmVendaRapida.EstadoItens;
var
    sTipoPropaganda: string;
begin
  Try
    if (DMPRojeto.PAFObrigatorio) Then Begin
      Try
         DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
         validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
         if (validaPAF.CodigoErro = 1) Then
             Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
         if (Not (DMECF.ECF1.DiaJaAberto())) Then
           raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
         FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));

      except
         raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
                                'ou os dados do arquivo auxiliar diverge da impressora!!!');
      End;
    End;
    SetEnableMenu(not DMSaida.bDevolucao, pmIniciarVenda);
    SetEnableMenu(false, pmIniciarDevolucao);
    SetEnableMenu(not DMSaida.bDevolucao, pmInformarTermos);
    SetEnableMenu(true, pmInformarNomedoCliente);
    SetEnableMenu(true, pmCancelarOperacao);
    SetEnableMenu(true, pmPercorrerItens);
    SetEnableMenu(true, pmAlterarTabela);

    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(DMSaida.bDevolucao, pmGravar);
    SetEnableMenu(False, pmCheckEx);
    SetEnableMenu(false, pmInformarItens);

    if (Estado = 'Propagandas') or (DMProjeto.Parametro('ParcelasNaVR') = 'S') or
        (pgOperacao.ActivePage = tsTermos) or (not DMSaida.bDevolucao) then
    begin

        if pnReceberPgto.Visible then //Pode ocorrer se o usuário teclar Ctrl+F5,
            pnReceberPgto.Visible := false; //mesmo que ParcelasNaVR = 'N'.

        pgOperacao.SetPage(tsItens); //Itens

        sTipoPropaganda := DMProjeto.Parametro('PropagandasNaVR');

        {I=Inicio Apenas; ID=Inicio e Durante; IDS=Inicio e Durante sem animação}
        if sTipoPropaganda <> 'I' then
        begin
            if CtnPropagandas.Parent <> pnPropItens then
                CtnPropagandas.Parent := pnPropItens;

            pnPropItens.Visible := true;

            if DlgProps <> nil then
            begin
                if sTipoPropaganda = 'IDS' then
                    DlgProps.TransicaoAnimada := false;

                DlgProps.Iniciar;
            end;
        end
        else if DlgProps <> nil then //Sem propagandas durante a venda.
            DlgProps.Parar;

    end
    else
    begin
        pnReceberPgto.Visible := false;
        tsItens.Invalidate;
    end;

    SolicitarQuantidade := (DMProjeto.Parametro('SemprePedirNaVR') = 'Q') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');
    SolicitarPreco := (DMProjeto.Parametro('SemprePedirNaVR') = 'P') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');

    try
        if dfItem.CanFocus then
            dfItem.SetFocus;
    except
    end;
    Estado := 'Itens';
  Except
    On E: Exception do
      MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
  End;

end;

procedure TFrmVendaRapida.EstadoTermos;
var
    s: string;
begin
    dfDescontoPeVisual.Visible := False;
    if DMProjeto.Parametro('Gaveta') = 'P' then
        DMECF.ECF1.AbreGaveta;
    if DMSaida.C_TabelaTotal.Value = 0 then
    begin
        DlgMsg.ShowMsg(2291);
        exit;
    end;

    DMSaida.C_Tabela.Edit;
    DMSaida.C_TabelaDesconto.Value := 0;
    DMSaida.C_Tabela.Post;


    SetEnableMenu(true, pmCancelarOperacao);
    SetEnableMenu(true, pmGravar);
    SetEnableMenu(True, pmCheckEx);
    SetEnableMenu(true, pmInformarItens);

    SetEnableMenu(false, pmComprarItemdaConsulta);
    SetEnableMenu(false, pmIniciarVenda);
    SetEnableMenu(false, pmIniciarDevolucao);
    SetEnableMenu(false, pmInformarTermos);
    SetEnableMenu(false, pmInformarNomedoCliente);
    SetEnableMenu(false, pmAproveitarOperacoes);
    SetEnableMenu(false, pmPercorrerItens);
    SetEnableMenu(false, pmAlterarTabela);

    if DlgProps <> nil then
        DlgProps.Parar;

    if ForcarParcelas or (DMProjeto.Parametro('ParcelasNaVR') = 'S') then
    begin
        {Atualizando o resumo dos planos de pagamento}
        DMVendaRapida.AtualizarResumoPlanos;

        pgOperacao.SetPage(tsTermos); //Itens
        PgtoCtner.Parent := tsTermos;
        PgtoCtner.Align := alNone;
        PgtoCtner.Top := lbRecebimentos.Top + 17;
    end
    else
    begin
        dbtOBS.Visible := false;
        PgtoCtner.Visible := true;

        T_Termos.Prepare(pnReceberPgto, tsItens.BoundsRect);
        pnReceberPgto.Visible := true;

        PgtoCtner.Parent := pnPgto;
        PgtoCtner.Align := alBottom;

        if T_Termos.Prepared then
        begin
            T_Termos.Execute;
            T_Termos.unPrepare;
        end;

    end;
    {Atribuindo o Plano de Pagamento Padrão do Cliente - se existir}
    if (DMSaida <> nil) and not DMSaida.bAlteracao then
    begin
        if (DMSaida.C_TabelaPlanoPagamento.Value = 0) and
            (DMSaida.C_TabelaF_PLANOPAGAMENTO.Value <> 0) then
        begin
            DMSaida.C_Tabela.Edit;
            DMSaida.C_PlanosPagamento.Locate('PlanoPagamento', DMSaida.C_TabelaF_PLANOPAGAMENTO.Value, []);
        end;
        SelecionarPlanoPgto;
    end;

    {Selecionando o Plano de Pagamento "A Vista"}
    if DMSaida.C_TabelaPlanoPagamento.Value = 0 then
        with DMSaida do
        begin
            if C_PlanosPagamento.Locate('PlanoPagamento', 1, []) then
            begin
                C_Tabela.Edit;
                C_TabelaPlanoPagamento.Value := 1;

                {Selecionando todas as Parcelas que se venceram}
                with C_Parcelas do
                begin
                    First;
                    dbgParcelas.SelecionarLinha;
                end;
            end;
        end;

    Estado := 'Termos';

    if (DMSaida.DlgPgtos <> nil) then begin
        DMSaida.DlgPgtos.EstadoInicial(DMSaida.nCreditoDevolucao);
        DMSaida.DlgPgtos.SetCliente(DMSaida.C_TabelaFavorecido.Value, DMSaida.C_TabelaF_Nome.Value, DMSaida.C_TabelaF_ConsumidorFinal.Value);
    end;

    if (DMSaida.DlgPgtos <> nil) and (DMProjeto.Parametro('FormaPgtoVR') <> 'N') then
    begin
        DMsaida.DlgPgtos.UpdateValorReceber(TS_DBTextEffect1.Field.AsFloat);
        s := DMProjeto.Parametro('FormaPgtoVR');
        DMSaida.DlgPgtos.SelecionarFPgto(ord(s[1]));
    end;

end;

procedure TFrmVendaRapida.dfItemSelecionou(Sender: TObject);
begin
    inherited;
    //  if DMProjeto.C_LocalizarItensTipoItem.Value > 2 then
    //    exit;

    nItem := DMProjeto.C_LocalizarItensITEM.Value;
    bSelecionou := True;

    // Bloquear Estoque

//    if (DMProjeto.C_LocalizarItensTIPOITEM.Value in [0, 1]) and (DMProjeto.C_LocalizarItensEstoque.Value <= 0) then
//    begin
//      if (DMSaida.C_Itens.RecordCount > 0) and (DMSaida.C_ItensQuantidade.Value = 0) then
//        DMSaida.C_Itens.delete;
//
//      if not DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'LIBSEMESTQ', '', False,
//                                               'Item:' + DMProjeto.C_LocalizarItensDescricao.AsString,
//                                               nItem, 'FrmItens' ) then begin
//        dfItem.Id := 0;
//        dfItem.Text := '';
//        dfPreco.Text := '0.00';
//        dfQuantidade.Text := '1';
//        bSelecionou := False;
//        exit;
//      end;
//    end;

    if DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2] then
    begin
        if (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value < 0) or
            (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value < 0) or
            (DMProjeto.nMaxDescontoFunc < 0) then
            nMaxDesconto := 0 {%}
        else if DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value > 0 then
            nMaxDesconto := (DMProjeto.C_LocalizarItensDESCONTOMAXIMO.Value / 100) {%}
        else if DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value > 0 then
            nMaxDesconto := (DMProjeto.C_LocalizarItensDESCONTOMAXIMOGrupo.Value / 100) {%}
        else if DMProjeto.nMaxDescontoFunc > 0 then
            nMaxDesconto := (DMProjeto.nMaxDescontoFunc / 100) {%}
        else
            nMaxDesconto := 1 {=100%};
    end
    else
        nMaxDesconto := 0;

    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then begin
      nPrecoTabela := Truncar(DMProjeto.C_LocalizarItensicPreco.Value,2);
      bPromocao := DMProjeto.C_LocalizarItensicEmPromocao.Value;
    end
    else begin
      if (DMProjeto.C_LocalizarItensTIPOITEM.Value in [1, 2, 3]) and
          DMSaida.LocalizarTabelaItem(nItem, DMSaida.C_TabelaTabelaPadrao.Value, DMProjeto.C_LocalizarItensUNIDADE.Value) then
      begin
          //nPrecoTabela := Truncar(DMProjeto.C_LocalizarItensicPreco.Value,2);
          nPrecoTabela := DMProjeto.C_LocalizarItensicPreco.Value;
          bPromocao := DMProjeto.C_LocalizarItensicEmPromocao.Value;
          nTabelaPreco := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
          nPrecoTabela := Arredondar(nPrecoTabela, StrToIntDef(DMProjeto.Parametro('CasasDecimais'),2) );
      end
      else begin
        nPrecoTabela := 0;
        nTabelaPreco := 0;
      end;
    end;
    if nPrecoTabela = 0 then
    begin
        DlgMsg.ShowMsg(2725);
        bSelecionou := False;
        exit;
    end;

    dfItem.Text := DMProjeto.C_LocalizarItensDESCRICAO.Value;
    dfPreco.Text := CurrToStr(nPrecoTabela);
    dfPreco.ReadOnly := bPromocao;

    {Foto do Item}
    sFoto := DMProjeto.C_LocalizarItensFoto.asString;
    if sFoto = '' then
        sFoto := DMProjeto.C_LocalizarItensFotoGrupo.asString;

    if (sFoto <> '') and FileExists(DMProjeto.ImgPath + sFoto) then
    begin
        try
            imgFoto.Picture.LoadFromFile(DMProjeto.ImgPath + sFoto);
        except
            imgFoto.Picture := nil;
        end;
    end
    else
    begin
        if fileexists(DMProjeto.ProgPath + 'Logo.bmp') then
            imgFoto.Picture.LoadFromFile(DMProjeto.ProgPath + 'Logo.bmp')
        else
            imgFoto.Picture := nil;
    end;
    if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
        dfQuantidade.Value := DMProjeto.C_LocalizarItensicQuantidade.Value;
    {Adicionando na Operacao}
    if not pnConsultaPrecos.Visible then
        AdicionarItem
    else
    begin
        pnConsultaPrecos.Caption := '';
        spConsultaPrecos.Visible := true;

        lbDescricaoConsulta.Caption := DMProjeto.C_LocalizarItensDescricao.Value;
        lbPrecoConsulta.Caption := FormatCurr(DMProjeto.sCasasDecimais, DMProjeto.C_LocalizarItensPreco.Value);

        lbDescricaoConsulta.Visible := true;
        lbPrecoConsulta.Visible := true;

        bSelecionou := False;
    end;
end;

procedure TFrmVendaRapida.FormKeyPress(Sender: TObject; var Key: Char);
var
    nValor: Currency;
begin
    inherited;
    if DMProjeto.DesabilitaTeclado and (key <> #13) and (key <> #37) and (key <> #39) then
    begin
        key := #0;
    end
    else
    begin
        if (Key = '%') and ((ActiveControl = dfPreco)) then
        begin
            Key := #0;
            nValor := TTS_CalcEdit(ActiveControl).Value;
            TTS_CalcEdit(ActiveControl).Value := Truncar(nPrecoTabela * (1 + nValor / 100), DMPRojeto.nCasasDecimais);
        end;

        if (key = #13) and (ActiveControl = dbgPlanos) then
            SelecionarPlanoPgto;

        if (Key = '%') and ((ActiveControl = dfDescontoPe) or (ActiveControl = dfDescontoPN)) then
        begin
            Key := #0;
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar((DMSaida.C_TabelaTotalItens.Value + DMSaida.C_TabelaTotalServicos.Value) * (nValor / 100), 2);
        end;

        if (Key = '-') and ((ActiveControl = dfDescontoPe) or (ActiveControl = dfDescontoPN)) then
        begin
            Key := #0;
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar((DMSaida.C_TabelaTotalItens.Value + DMSaida.C_TabelaTotalServicos.Value) * (nValor / 100), 2);
        end;

        if (Key = '-') and ((ActiveControl = dfAcrescimoPe) or (ActiveControl = dfAcrescimoPN)) then
        begin
            Key := #0;
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar((DMSaida.C_TabelaTotalItens.Value + DMSaida.C_TabelaTotalServicos.Value) * (nValor / 100), 2);
        end;


        if (Key = '%') and ((ActiveControl = dfAcrescimoPe) or (ActiveControl = dfAcrescimoPN)) then
        begin
            Key := #0;
            nValor := TTS_DBEditNumber(ActiveControl).Value;
            TTS_DBEditNumber(ActiveControl).Value := Truncar((DMSaida.C_TabelaTotalItens.Value + DMSaida.C_TabelaTotalServicos.Value) * (nValor / 100), 2);
        end;

    end;
end;

procedure TFrmVendaRapida.DBEdit1Change(Sender: TObject);
begin
    inherited;
    ConfiguracoesTipoMov;
end;

procedure TFrmVendaRapida.dfPrecoKeyPress(Sender: TObject;
    var Key: Char);
Var TMPQtd, TMPSubTotal: Currency;

begin
    inherited;
    if Key in ['.',','] then Key := DecimalSeparator;
    // Digitacao do Valor no local da quantidade //Para POSTO DE COMBUSTIVEL.
    if (Key = '*') or (Key = '$') then
    begin
        dfQuantidade.Text := Replace(dfQuantidade.Text, '*', '');
        dfQuantidade.Text := Replace(dfQuantidade.Text, '$', '');
        TMPQtd := dfQuantidade.Value;
        dfQuantidade.Value :=  RoundTo(Truncar(dfQuantidade.value / nPrecoTabela,3),-3);
        While (dfQuantidade.Value * nPrecoTabela) < TMPQtd do Begin
           dfQuantidade.Value := dfQuantidade.Value + 0.001;
        End;
        dfQuantidade.Value := Truncar(dfQuantidade.value,3);


        dfQuantidade.Refresh;
        AdicionarItem;
    end
    else if Key = #13 then
    begin

        dfQuantidade.Text := Replace(dfQuantidade.Text, '*', '');
        dfQuantidade.Text := Replace(dfQuantidade.Text, '$', '');
        if dfQuantidade.Value <= 0 then
        begin
            ShowMessage('A Quantidade dever ser Maior Que Zero!');
            dfQuantidade.SetFocus;
        end
        else
        If dfQuantidade.Value > 9999 Then Begin
           Beep.BeepFor(740, 80);
           Beep.BeepFor(880, 80);
           dfQuantidade.SetFocus;
        End
        Else
          AdicionarItem;
    end
    else if not (Key in ['0'..'9',DecimalSeparator]) then Key := #0;
end;

procedure TFrmVendaRapida.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;

    if (Shift = [ssCtrl]) and (key = ord('O')) then
        ppmPadrao.PopupFromCursorPos;

    if (Shift = [ssCtrl, ssAlt]) and (Key = Ord('T')) then
        ShowMessage(DMSaida.C_TiposMovimento.FieldByName('Descricao').asString);

    if (Shift = [ssCtrl, ssAlt, ssShift]) and (Key = Ord('P')) then
    begin
        ShowMessage(DMSaida.sPerformance);
        Key := 0;
        exit;
    end;

    if Estado = 'Itens' then
    begin
        case Key of
            VK_F2: SolicitarQuantidade := not SolicitarQuantidade;
            VK_F3: SolicitarPreco := not SolicitarPreco;
        end;
    end;

    if (Estado = 'Termos') and (Key = VK_F3) then
    begin
        ActiveControl := nil;
        if (dfDescontoPe.CanFocus) then
            dfDescontoPe.SetFocus
        else if dfDescontoPN.CanFocus then
            dfDescontoPN.SetFocus;
    end;
    if (Estado = 'Termos') and (Key = VK_F2) then
    begin
        ActiveControl := nil;
      
        if (dfAcrescimoPe.CanFocus) then
            dfAcrescimoPe.SetFocus
        else if dfAcrescimoPN.CanFocus then
            dfAcrescimoPN.SetFocus;
    end;



    if (ssCtrl in Shift) and (Key in [ord('1')..ord('7')]) and (DMSaida.DlgPgtos <> nil) then
    begin
        ActiveControl := nil;
        DMSaida.DlgPgtos.SelecionarFPgto(Key);
        Key := 0;
    end;

    if (Shift = [ssCtrl]) and (key = ord('T')) and dbgPlanos.CanFocus then
    begin
        dbgPlanos.SetFocus;
        Key := 0;
    end;

end;

procedure TFrmVendaRapida.AdicionarItem;
  procedure FinalizarInclusaoItem;
  begin
    dfItem.ID := 0;
    dfItem.Clear;
    dfQuantidade.Value := 1;
    dfPreco.Text := '0';
    try
        dfItem.SetFocus;
    except
    end;
    SolicitarQuantidade := (DMProjeto.Parametro('SemprePedirNaVR') = 'Q') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');
    SolicitarPreco := (DMProjeto.Parametro('SemprePedirNaVR') = 'P') or (DMProjeto.Parametro('SemprePedirNaVR') = 'A');
  end;
var
    bMoreInfo: Boolean;
    nValorMaxDesconto: Currency;
    sCodigoItem: String;
begin

    {Verificando se é o Momento de Adicionar}
    bMoreInfo := SolicitarQuantidade or SolicitarPreco;

    if (ActiveControl = dfItem) and bMoreInfo then
    begin
        if SolicitarQuantidade then
        begin
            SolicitarQuantidade := false;
            dfQuantidade.SetFocus;
            exit;
        end;

        if SolicitarPreco then
        begin
            SolicitarPreco := false;
            dfPreco.SetFocus;
            exit;
        end;
    end
    else if ActiveControl = dfQuantidade then
    begin
        if DMProjeto.Parametro('QuantidadePrimeiroVR') = 'S' then
        begin
            SolicitarQuantidade := false;
            dfItem.SetFocus;
            exit;
        end
        else if SolicitarPreco then
        begin
            SolicitarPreco := false;
            dfPreco.SetFocus;
            exit;
        end;
    end;

    {Considera-se que a última pesquisa é a do item que está sendo adicionado}
    // Só adicionar um item selecionado...
    if (dfItem.ID = 0) or (dfItem.Text = '') then
        exit;

    (* ECF *)
    with DMSaida do
    begin
        bSelecionou := False;
        C_Itens.Append;
        C_ItensITEM.Value := nItem;

        if (C_ItensI_ESTOQUE.Value < dfQuantidade.Value) then begin
          if not DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'LIBSEMESTQ', '', False, 'Item:' + C_ItensI_DESCRICAO.AsString,
                                               nItem,'FrmItens') then begin
            C_Itens.Cancel;
            FinalizarInclusaoItem;
            Exit;
          end
          else
            C_ItensQuantidade.Value := dfQuantidade.Value;
        end
        else
          C_ItensQuantidade.Value := dfQuantidade.Value;

        if dfItem.QtdNoCodigo <> '' Then Begin
           DMSaida.C_ItensQuantidade.Value :=  StrToFloat(dfItem.QtdNoCodigo);
           dfItem.QtdNoCodigo:='';
        End;

        if dfItem.Ean13Preco <> '' Then Begin
           If DMProjeto.Parametro('EAN13Quantidade') = 'S' Then Begin
             DMSaida.C_ItensQuantidade.Value :=  1;
             dfPreco.Text := CurrToStr(RoundTo((StrToCurr(dfItem.Ean13Preco)/100),-3));
             C_ItensPreco.Value := StrToFloatDef(dfPreco.Text,0);
           End Else Begin
             DMSaida.C_ItensQuantidade.Value :=  RoundTo((StrToCurr(dfItem.Ean13Preco)/100) / StrToFloatDef(dfPreco.Text,0),-3);
           End;
           dfItem.Ean13Preco:='';
        End;
        C_ItensTabelaPreco.Value := nTabelaPreco;
        C_ItensPrecoTabela.Value := nPrecoTabela;
        C_ItensPreco.Value := StrToFloatDef(dfPreco.Text,0);
       if C_ItensPreco.Value <= 0 then
        begin
            C_Itens.Cancel;
            FinalizarInclusaoItem;
            Exit;
        end;
        C_ItensUNIDADE.Value := dfItem.sUltimaUnidade;
        dfPreco.Text := CurrToStr(C_ItensPreco.Value);
        if not (C_ItensI_TipoItem.Value in [1, 2]) then begin
            C_ItensALIQICMS.Value := DMProjeto.nISS;
        end;
        if C_ItensI_Tipoitem.value > 3 then
        begin
            C_Itens.Cancel;
            FinalizarInclusaoItem;
            Exit;
        end;
        if ((DMPRojeto.PAFObrigatorio) and (C_ItensI_CODIGOBARRAS.AsString <> '') ) Then
           sCodigoItem := C_ItensI_CODIGOBARRAS.AsString
        Else
           sCodigoItem := C_ItensI_CODIGO.AsString;
        if DMProjeto.bECFAtivo then begin
             if DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto' then begin
               if (DMPRojeto.PAFObrigatorio) Then Begin
                 DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                 validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
               End;
               if (validaPAF.CodigoErro = 1) Then
                   Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');

               if DMECF.ECF1.VendeItem(sCodigoItem,
                                        RetiraAcentos(C_ItensDESCRICAO.AsString),
                                        C_ItensSITUACAOECF.AsString,
                                        iif((C_ItensREDUCAOCST.Value > 0),
                                        FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                        FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F',
                                        FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                        DMProjeto.nCasasDecimais, //3
                                        FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                        '$',
                                        '0000',
                                        Copy(C_ItensUnidade.AsString,1,2)) then Begin
                    SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                    C_ItensSUBTOTALITEM.Value := SubTotalECF;
                    C_Itens.Post;
                end else
                    C_Itens.Cancel;
                {PAF}
                if (DMProjeto.PAFObrigatorio) Then Begin
                  DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                  FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                End;
             end
            else begin
                if DMECF.ECF1.AbreCupom('') then begin
                   if (DMProjeto.PAFObrigatorio) Then Begin
                     DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                     validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
                     if (validaPAF.CodigoErro = 1) Then
                         Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
                   End;
                   if DMECF.ECF1.VendeItem(sCodigoItem,
                                        RetiraAcentos(C_ItensDESCRICAO.AsString),
                                        C_ItensSITUACAOECF.AsString,
                                        iif((C_ItensREDUCAOCST.Value > 0),
                                        FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)),
                                        FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F',
                                        FormatFloat('0.000', C_ItensQUANTIDADE.Value ),
                                        DMProjeto.nCasasDecimais, //3
                                        FormatFloat(DMProjeto.sCasasDecimais,C_ItensPRECO.Value), //FormatFloat('0.000',C_ItensPRECO.Value)
                                        '$',
                                        '0000',
                                        Copy(C_ItensUnidade.AsString,1,2)) then Begin
                        SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                        C_ItensSUBTOTALITEM.Value := SubTotalECF;
                        C_Itens.Post
                    end else
                        C_Itens.Cancel;
                end
                else
                    C_Itens.Cancel;
                {PAF}
                if (DMProjeto.PAFObrigatorio) Then Begin
                  DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                  FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                End;
            end;
        end;
        if not lbCPEmpresa.Visible then
        begin
            lbCPEmpresa.Visible := true;
            lbCPEndereco.Visible := true;
            lbCPCGC.Visible := true;
            lbCPCaixa.Visible := true;

            T_Letras.Prepare(lbCPTitulo.Parent, lbCPTitulo.BoundsRect);
            lbCPTitulo.Visible := true;
            if T_Letras.Prepared then
            begin
                T_Letras.Execute;
                T_Letras.UnPrepare;
            end;

        end;
        if C_Itens.State in [dsEdit, dsInsert] then
            C_Itens.Post;
    end;

    if not dbtDescItem.Visible then
    begin
        dbtDescItem.Visible := true;
        dbtQuantidade.Visible := true;
        dbtPrecoUnit.Visible := true;
        dbtSubTotal.Visible := true;
        lbX.Visible := true;
        lbIg.Visible := true;
    end;

    // Codigo do Data Pos Venda.
    if bPosVenda then
    begin
        if DMVendaRapida.ControlePosVenda(nItem) then
        begin
            with DMSaida do
            begin
                C_Itens.Edit;
                C_ItensDATACONTATO.Value := dlgDataPosVenda.ShowModal;
            end;
        end;
    end;

    // Limpando os edits, setando o focus e verificando as solicitações...
    FinalizarInclusaoItem;

end;

procedure TFrmVendaRapida.SetSolicitarQuantidade(Value: Boolean);
begin
    bSolicitarQuantidade := Value;

    if not bSolicitarQuantidade then
        lbQuantidade.Font.Color := clWindowText
    else
    begin
        lbQuantidade.Font.Color := clRed;
        dfItem.SetFocus;
        if DMProjeto.Parametro('QuantidadePrimeiroVR') = 'S' then
            dfQuantidade.SetFocus;
    end;

end;

procedure TFrmVendaRapida.SetSolicitarPreco(Value: Boolean);
begin
    if not pnPreco.Visible then
        exit;

    bSolicitarPreco := Value;

    if not bSolicitarPreco then
        lbPreco.Font.Color := clWindowText
    else
    begin
        dfItem.SetFocus;
        lbPreco.Font.Color := clRed;
    end;

end;

procedure TFrmVendaRapida.SelecionarPlanoPgto;
begin
    {Gerando o Plano de Pagamento}
    with DMSaida do
    begin
        C_Tabela.Edit;
        //    C_TabelaPlanoPagamento.Value := C_PlanosPagamentoPlanoPagamento.value;
        C_TabelaPlanoPagamento.Value := dbgPlanos.GetFieldValue(dbgplanos.FocusedNode, 'PlanoPagamento', C_TabelaPlanoPagamento.Value);

        {Selecionando todas as Parcelas que se venceram}
        with C_Parcelas do
        begin
            First;
            while not EOF do
            begin
                if C_ParcelasVencimento.Value <= C_TabelaData.Value then
                    dbgParcelas.SelecionarLinha;

                Next;
            end;
            First;
        end;

    end;

end;

procedure TFrmVendaRapida.dbgParcelasTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
begin
    inherited;
    DMSaida.nSelecParcs := dbgParcelas.TotalSelecionado('Valor');

    if DMSaida.C_Parcelas.State = dsBrowse then
        DMSaida.C_Parcelas.Edit;

    if bSelected then
        DMSaida.C_Parcelas['Pagamento'] := DMSaida.C_ParcelasValor.Value
    else
        DMSaida.C_Parcelas['Pagamento'] := 0;

    {Atualizando Rotina de Recebimento}

    if DMSaida.DlgPgtos <> nil then
    begin
        DMsaida.DlgPgtos.UpdateValorReceber(DMSaida.nSelecParcs);
        DMSaida.DlgPgtos.dtData := DMSaida.C_TabelaData.Value;
    end;
end;

procedure TFrmVendaRapida.dbgPlanosDblClick(Sender: TObject);
begin
    inherited;
    SelecionarPlanoPgto;
end;

procedure TFrmVendaRapida.dfDescontoPeExit(Sender: TObject);
Var
  valor: Currency;
begin
    inherited;
    valor := dfDescontoPe.Value;
    if DMSaida.C_Parcelas.RecordCount > 0 then
    begin
        SelecionarPlanoPgto;
    end;
    dfDescontoPeVisual.Text := FormatFloat('0.00',valor * -1);
    dfDescontoPeVisual.Visible := True;
end;

procedure TFrmVendaRapida.pmInformarNomedoClienteClick(Sender: TObject);
begin
    inherited;
    if pgOperacao.ActivePage <> tsItens then
        exit;

    pmInformarNomedoCliente.Checked := not pmInformarNomedoCliente.Checked;

    if pmInformarNomedoCliente.Checked then
        T_Cliente.Prepare(pnCliente.Parent, pnCliente.BoundsRect);

    pnCliente.Visible := pmInformarNomedoCliente.Checked;

    if T_Cliente.Prepared then
    begin
        T_Cliente.Execute;
        T_Cliente.unPrepare;
    end;

    if pnCliente.Visible then
    begin
        ActiveControl := dfFavorecido;
        SetEnableMenu(false, pmInformarTermos);
        SetEnableMenu(false, pmIniciarVenda);
    end
    else
    begin
        ActiveControl := dfItem;
        SetEnableMenu(true, pmInformarTermos);
        SetEnableMenu(true, pmIniciarVenda);
    end;

end;

procedure TFrmVendaRapida.pmConsultadePrecosClick(Sender: TObject);
var
    nItemSelec: integer;
begin
    inherited;
//    if Estado <> 'Itens' then
    if Estado = 'Itens' then
    begin
        DMProjeto.SetParametrosForm([DMSaida.C_TabelaTabelaPadrao.Value, DMSaida.C_TabelaFavorecido.asVariant]);

        DlgConsultaPrecos := TDlgConsultaPrecos.create(self);
        nItemSelec := DlgConsultaPrecos.ShowModal;
        DlgConsultaPrecos.Release;

        if nItemSelec > 0 then
        begin
            if Estado = 'Propagandas' then
                IniciarVenda;

            if Estado = 'Itens' then
                dfItem.ID := nItemSelec;
        end;
    end
    else if Estado = 'Itens' then
    begin
        pmConsultadePrecos.Checked := not pmConsultadePrecos.Checked;

        if pmConsultadePrecos.Checked then
        begin
            pnConsultaPrecos.Caption := pnConsultaPrecos.Hint;

            T_ConsultaPreco.Prepare(pnConsultaPrecos.Parent, pnConsultaPrecos.BoundsRect);
            pnConsultaPrecos.Visible := true;

            if T_ConsultaPreco.Prepared then
            begin
                T_ConsultaPreco.Execute;
                T_ConsultaPreco.UnPrepare;
            end;

            SetEnableMenu(true, pmComprarItemdaConsulta);

            ActiveControl := dfItem;
        end
        else
        begin
            pnConsultaPrecos.Visible := false;
            lbDescricaoConsulta.Visible := false;
            lbPrecoConsulta.Visible := false;
            spConsultaPrecos.Visible := false;
            SetEnableMenu(false, pmComprarItemdaConsulta);

            ActiveControl := dfItem;
        end;
    end;

end;

procedure TFrmVendaRapida.pmGravarClick(Sender: TObject);
var
    sTmp: string;
    bGravou, bGravar: Boolean;
    i: integer;
begin
   if  ((DMSaida.DlgPgtos.sConsumidorFinal = 'S') and (Not (dbgParcelas.Selecionado))) Then Begin
        Beep.BeepFor(800,1000);
        Beep.BeepFor(500,800);
        ShowMessage('Você Tem que Selecionar Pelo Menos uma Parcela!!!');
        Exit;
   End;
    inherited;
    if DMProjeto.Parametro('Gaveta') = 'G' then
        DMECF.ECF1.AbreGaveta;
    ActiveControl := nil; //Para forçar confirmação de algum campo que esteja em edição;

    if (DMSaida.bDevolucao) then begin
      DMSaida.sItensDevolucao := '';
      DMSaida.C_Itens.DisableControls;
      DMSaida.C_Itens.First;
      While not DMSaida.C_Itens.EOF do begin 
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + IntToStr(DMSaida.C_ItensIDItem.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + DMSaida.C_ItensDescricao.Value;
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensQuantidade.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensPreco.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + DMSaida.C_ItensUnidade.Value;
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + IntToStr(DMSaida.C_ItensI_TipoItem.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + IntToStr(DMSaida.C_ItensTabelaPreco.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + DMSaida.C_ItensSituacaoECF.Value;
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensReducaoCST.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensAliqICMS.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensIPI.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensCustoMedio.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensCustoContabil.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + DMSaida.C_ItensCST.Value;
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + CurrToStr(DMSaida.C_ItensTVA.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + IntToStr(DMSaida.C_ItensContaVenda.Value);
        DMSaida.sItensDevolucao := DMSaida.sItensDevolucao + ';' + FloatToStr(DMSaida.C_ItensFator.Value) + '||';
        DMSaida.C_Itens.Next;
      end;
      DMSaida.C_Itens.EnableControls;
      if Copy(DMSaida.sItensDevolucao,Length(DMSaida.sItensDevolucao)-2,2) = '||' then Delete(DMSaida.sItensDevolucao,Length(DMSaida.sItensDevolucao)-2,2);
      nIDCliente := DMSaida.C_TabelaFAVORECIDO.AsInteger;
      nIDVendedor := DMSaida.C_TabelaVENDEDOR.AsInteger;
      DMSaida.nCreditoDevolucao := DMSaida.C_TabelaTOTAL.AsCurrency;
      DMSaida.bDevolucao := False;
      DMSaida.bTroca := True;
      //bECF := DMProjeto.bECFAtivo;
      IniciarVenda;
      exit;
    end;
    {A Gravacao do recebimento ja esta sendo chamada no GravarAposApply da classe (Interceptado mais acima)}
    DMSaida.dbgParcelasForm := dbgParcelas;

    Screen.Cursor := crHourglass;

    (* Abrindo a gaveta de dinheiro... *)
  {  if DMProjeto.Parametro('Gaveta') = 'S' then begin
      AbrirGaveta;
      if DMSaida.DlgPgtos.GetTroco > 0.1 then
        Sleep(2000);
    end;}

    try
        bGravou := false;
        bGravar := false;
        for i := 1 to 6 do
        begin
            if (i <= 5) and (DMProjeto.GEN_ID('GENSIST_CONTROLTRANS', true) = 1) then
                sleep(2000)
            else
            begin
                bGravar := DMSaida.Gravar;
                if not bGravar then
                    DMProjeto.SetGeneratorTrans(0);
                break;
            end;
        end;

        if bGravar then
        begin
            bGravou := true;

            if pnReceberPgto.Visible then
            begin
                dbtOBS.Visible := true;
                PgtoCtner.Visible := false;
                Sleep(2000);
            end;

            DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

            Screen.Cursor := crDefault;
            sTmp := DMSaida.C_TiposMovimentoCB_ImprimirOP.Value;
            if sTmp = '' then
                sTmp := 'N';

            try
              if sTmp[1] in ['I', 'S'] then
                    ImprimirDocs;
            finally
                EstadoInicial;
            end;
        end
        else
        begin
            if pnReceberPgto.Visible then
            begin
                dbtOBS.Visible := false;
                PgtoCtner.Visible := true;
            end;
        end;
    finally
        Screen.Cursor := crDefault;
        if pnReceberPgto.Visible then
        begin
            dbtOBS.Visible := false;
            PgtoCtner.Visible := true;
            pnReceberPgto.Visible := false;
        end;
    end;

end;

procedure TFrmVendaRapida.dfFavorecidoSelecionou(Sender: TObject);
var
    N, D: Currency;
    sMsg: string;
    NF, DF, nSaida: Integer;
begin
    dbtNomeCliente.Hint := '';
    dbtNomeCliente.Font.Color := clBlack;

    if DMSaida.DlgPgtos <> nil then
    begin
        DMSaida.DlgPgtos.SetCliente(DMSaida.C_TabelaFavorecido.Value, DMSaida.C_TabelaF_Nome.Value);
    end;

    if DMSaida.C_TabelaFavorecido.Value <> 1 then
    begin
        N := DMSaida.GetAtrasados;
        if N > 0 then
        begin
            dbtNomeCliente.Hint := dbtNomeCliente.Hint + 'Cliente com Parcelas atrasadas no valor de ' + FormatCurr(DMProjeto.sCasasDecimais, N) + #13;
            dbtNomeCliente.Font.Color := clRed;
        end;

        D := DMSaida.GetDevolvidos;
        if D > 0 then
        begin
            dbtNomeCliente.Hint := dbtNomeCliente.Hint + 'Cliente com Cheques Devolvidos no valor de ' + FormatCurr(DMProjeto.sCasasDecimais, D);
            dbtNomeCliente.Font.Color := clRed;
        end;

        if not DMSaida.bAlteracao and (DMSaida.C_TabelaF_Situacao.Value = 'B') then
            DlgMsg.ShowMsg(2152, [DMSaida.C_TabelaF_OBS.Value]);

        if DMProjeto.Parametro('AlertasVenda') = 'S' then
        begin
            sMsg := '';
            N := DMSaida.GetAtrasados;
            if N > 0 then
            begin
                sMsg := '-> Cliente possui Parcelas atrasadas totalizando o valor de ' + FormatCurr(DMProjeto.sCasasDecimais, N) + #13;
            end;

            D := DMSaida.GetDevolvidos;
            if D > 0 then
            begin
                sMsg := sMsg + '-> Cliente possui Cheques Devolvidos totalizando o valor de ' + FormatCurr(DMProjeto.sCasasDecimais, D);
            end;

            if sMsg <> '' then
                if DlgMsg.ShowMsg(2756, [sMsg]) = 200 then
                begin
                    if N > 0 then
                    begin
                        DMProjeto.SetParametrosForm([null, null, dfFavorecido.ID]);
                        DMProjeto.CriarForm('RptInvoicesEmAtraso', self, true);
                        NF := DMProjeto.FormExiste('RptInvoicesEmAtraso');
                    end;

                    if D > 0 then
                    begin
                        DMProjeto.SetParametrosForm([dfFavorecido.ID]);
                        DMProjeto.CriarForm('RptChequesDevolvidos', self, true);
                        DF := DMProjeto.FormExiste('RptChequesDevolvidos');
                    end;
                end;
        end;

        {Verificando se o cliente possui Estimates em aberto para aproveitamente}
        {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
         já deve indicar se existem ou não - dispensando uma nova consulta}
        if not DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value = 2) and (DMSaida.GetEstimates > 0) then
        begin
            if DlgMsg.ShowMsg(2185) = 100 then
            begin
                SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);
                pmAproveitarOperacoesClick(self);
            end;
        end;

        {Verificando se o cliente possui Estimates em aberto para aproveitamente}
        {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
         já deve indicar se existem ou não - dispensando uma nova consulta}
        if not DMSaida.bAlteracao and (DMSaida.C_TabelaTipoPadrao.Value = 1) and (DMSaida.GetSalesOrders > 0) then
        begin
            if (SubTotalECF = 0.00) and (DlgMsg.ShowMsg(2186) = 100) then
            begin
                SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);
                pmAproveitarOperacoesClick(self);
            end;
        end;
    end;

end;

procedure TFrmVendaRapida.ImprimirDocs;
begin

    DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

    DMProjeto.ImprimirDocumentosSaida(DMSaida.C_TabelaIDMestre.Value);

    {Imprimindo a Operação}
{    RptInvoices := TRptInvoices.Create(self);
    RptInvoices.ImprimeMovimento(DMsaida.C_TabelaIDMestre.Value,
                                 DMsaida.C_TiposMovimentoCB_TOPrinter.Value,
                                 DMsaida.C_TiposMovimentoTipoImpressao_OP.Value );
    RptInvoices.Release;
    RptInvoices := nil;  }

    RptDocCobranca := TRptDocCobranca.Create(self);
    RptDocCobranca.Imprimir(DMsaida.C_TabelaIDMestre.Value);
    RptDocCobranca.Release;
    RptDocCobranca := nil;

    {Imprimindo a Ficha}
    if DMSaida.C_TiposMovimentoCB_FICHACLIENTE.Value = 'S' then
    begin
        DMProjeto.SetParametrosForm([DMsaida.C_TabelaFAVORECIDO.Value, 'P']);
        DMProjeto.CriarForm('DlgFichaFavorecido', self, true);
    end;

end;

procedure TFrmVendaRapida.dfFavorecidoExit(Sender: TObject);
begin
    inherited;
    if pmInformarNomedoCliente.Checked then
        pmInformarNomedoClienteClick(self);
end;

procedure TFrmVendaRapida.pmMostrarParcelasClick(Sender: TObject);
begin
    inherited;
    if (pnReceberPgto.Visible) and (pgOperacao.Activepage = tsItens) then
    begin
        dfDescontoPeVisual.Visible := False;
        EstadoTermos(true);
    end;
end;

procedure TFrmVendaRapida.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    pmMostrarParcelas.Visible := (pnReceberPgto.Visible) and (pgOperacao.Activepage = tsItens);
end;

procedure TFrmVendaRapida.lbEmpresaClick(Sender: TObject);
var
    DlgFont: TFontDialog;
begin
    inherited;

    DlgFont := TFontDialog.Create(self);
    DlgFont.Font.Assign(lbEmpresa.Font);

    if DlgFont.Execute then
    begin
        lbEmpresa.Font.Assign(DlgFont.Font);
        lbEmpresa.AutoSize := true;
        lbEmpresa.width := lbEmpresa.width + 20;
    end;

    DlgFont.Free;

end;

procedure TFrmVendaRapida.ppmItensPopup(Sender: TObject);
begin
    inherited;
    MostrarCabealho1.Visible := DMProjeto.nPerfil = 1;
end;

procedure TFrmVendaRapida.MostrarCabealho1Click(Sender: TObject);
begin
    inherited;
    MostrarCabealho1.Checked := not MostrarCabealho1.Checked;

    dbgItens.ShowHeader := MostrarCabealho1.Checked;

end;

procedure TFrmVendaRapida.dbgParcelasEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
begin
    inherited;
    nValorParcelaBE := dbgParcelas.GetFieldValue(Node, 'Valor', 0);
end;

procedure TFrmVendaRapida.dbgParcelasEdited(Sender: TObject;
    Node: TdxTreeListNode);
var
    nParcela: Integer;
    nVenc: TDateTime;
    nValor: Currency;
begin
    inherited;
    nParcela := dbgParcelas.GetFieldValue(Node, 'Parcela', -1);
    nVenc := dbgParcelas.GetFieldValue(Node, 'Vencimento', DMProjeto.dDataSistema);
    nValor := StrToFloatDef(dbgParcelas.GetFieldValue(Node, 'Valor', 0, true), nValorParcelaBE);

    if nValor <> nValorParcelaBE then
    begin
        if (nParcela = 1) and (DMSaida.PlanoPgtoComEntrada) and
            (DMSaida.C_Parcelas.RecordCount > 1) then //Alterou a entrada
            DMSaida.GerarParcelamento(nValor)
        else
            DMSaida.RatearDifProxParcelas(nParcela, nValorParcelaBE - nValor)
    end;

end;

procedure TFrmVendaRapida.ConfiguracoesTipoMov;
begin

    if not DMSaida.C_TiposMovimento.Active then
        exit;

    DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

    with DMSaida do
    begin
        cmbTipoFav.TipoFavorecido := IIF(C_TiposMovimentoTIPOFAVPADRAO.Value > 0, C_TiposMovimentoTIPOFAVPADRAO.Value, 1);

        cmbTipoCobranca.LookupKeyValue := C_TiposMovimento.FieldByName('TipoCob_Padrao').asInteger;
        if cmbTipoCobranca.LookupKeyValue = 0 then
            cmbTipoCobranca.LookupKeyValue := 1;

        if C_TiposMovimentoTipoPadrao.Value = 2 then
        begin
            pmAproveitarOperacoes.Caption := 'Aproveitar Orçamentos'
        end
        else if C_TiposMovimentoTipoPadrao.Value = 1 then
        begin
            pmAproveitarOperacoes.Caption := 'Aproveitar Pedidos'
        end;

        dbgItensReferencia.Visible := C_TiposMovimentoCB_Referencia.Value = 'S';

        SetEnableMenu((DMSaida.C_TabelaTipoPadrao.Value in [1, 2]) and (self.Estado = 'Itens'), pmAproveitarOperacoes);

        dbgItensI_Codigo.Caption := C_TiposMovimento.FieldByName('TIT1_Codigo').asString;
        dbgItensReferencia.Caption := C_TiposMovimento.FieldByName('TIT1_Referencia').asString;
        dbgItensDescricao.Caption := C_TiposMovimento.FieldByName('TIT1_DESCRICAO').asString;
        dbgItensI_Unidade.Caption := C_TiposMovimento.FieldByName('TIT1_UNIDADE').asString;
        dbgItensQuantidade.Caption := C_TiposMovimento.FieldByName('TIT1_QUANTIDADE').asString;
        dbgItensPreco.Caption := C_TiposMovimento.FieldByName('TIT1_PRECO').asString;
        dbgItensSubTotal.Caption := C_TiposMovimento.FieldByName('TIT1_SUBTOTAL').asString;

    end;

    AtualizarCores;

    Application.ProcessMessages;
end;

procedure TFrmVendaRapida.AtualizarCores;
var
    i: Integer;
begin
    CorHeaders := msVendaRapida.CaptionShadow;

    pnReceberPgto.BackgroundOptions.GlassColor := CorHeaders;

    if DMSaida.C_TiposMovimento.Active then
    begin
        DMSaida.C_TiposMovimento.Locate('TipoMovimento', DMSaida.C_TabelaTipoMovimento.Value, []);

        try
            CorHeaders := DMSaida.C_TiposMovimentoCORTITULOS.Value;
        except
            CorHeaders := msVendaRapida.CaptionShadow;
        end;
    end;

    CorLinhas := msVendaRapida.BarEndColor;
    CorEditores := msVendaRapida.BarStartColor;
    CorConsulta := msVendaRapida.FormColor;

    esVendaRapida.BorderColor := CorLinhas;

    spPlano.Brush.Color := CorHeaders;
    spPlano.Pen.Color := CorLinhas;
    spItens.Brush.Color := CorEditores;
    spItens.Pen.Color := CorLinhas;

    dbgItens.Color := clWindow;
    dbgItens.HeaderColor := CorHeaders;
    dbgItens.HighLightColor := CorEditores;
    dbgItens.TS_AnotherColor := dbgItens.Color;

    dbgPlanos.Color := clWindow;
    dbgPlanos.HighLightColor := CorEditores;
    dbgPlanos.HeaderColor := CorHeaders;
    dbgPlanos.TS_AnotherColor := dbgPlanos.Color;

    dbgParcelas.HeaderColor := CorHeaders;
    dbgParcelas.HighLightColor := CorEditores;
    dbgParcelas.BandColor := CorHeaders;

    dfItem.Color := CorEditores;
    dfQuantidade.Color := CorEditores;
    dfPreco.Color := CorEditores;
    dfDescontoPe.Color := CorEditores;
    dfDescontoPN.Color := CorEditores;

    for i := 0 to ComponentCount - 1 do
    begin
        if (Components[i] is TTS_Shape) and ((Components[i] as TTS_Shape).TagStr = 'CV') then
            (Components[i] as TTS_Shape).Pen.Color := CorLinhas;
        if (Components[i] is TTS_Label) and ((Components[i] as TTS_Label).TagStr = 'CV') then
            (Components[i] as TTS_Label).Color := CorHeaders;
    end;

    {}

end;

procedure TFrmVendaRapida.CancelarOperaes1Click(Sender: TObject);
var
    nSaida: Integer;
    sNumero, sNSU, sRede, sData, sHora, sUltNum: string;
    fValor: Currency;
    bTemTef: boolean;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanOpGrav') then
        exit;

    if DMProjeto.nModeloECF <> 0 then with DMProjeto.Q_ComandoSQL do begin
      close;
      SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and ' +
          ' tipopadrao = 1 and serienota = ''ECF'' and pdv = :pdv and data = :dData';
      params[0].asinteger := DMProjeto.nPDV;
      params[1].asdatetime := DMProjeto.dDataSistema;
      open;
      nSaida := fieldbyname('IDSaida').asinteger;
      close;
      SQL.text := 'select numero from saidas where saida = :nSaida ';
      params[0].asinteger := nSaida;
      open;
      sNumero := FieldByName('numero').asstring;
    end
    else begin
      DMProjeto.SetParametrosForm([null, DMSaida.nTipoMovimentoPadrao]);
      nSaida := DMProjeto.CriarForm('DlgEscolherOperacao', self, true);
    end;
    // Colocar aki o kancelamento do kupom
    if (DMProjeto.nModeloECF = 0) or (not DMProjeto.bECFAtivo) then begin
      if (nSaida > 0) and not (DlgMsg.ShowMsg(6042, ['Deseja cancelar a venda ' + sNumero + '?']) = 100) then
        Exit;
    end
    else begin
      bTemTef := False;
      // Cancelamento da Daruma...
      if (DMProjeto.nModeloECF = 8) then with DMProjeto.Q_ComandoSQL do begin
        close;
        SQL.Text := 'select dd.infoadicionais, fp.especie, dd.deposito ' +
                'from titulosareceber tr, depositostitulos dt, depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where tr.venda = :nSaida and tr.id = dt.titulo and dt.deposito = dd.deposito and tr.parcela = 1 ' +
                'and dd.infoadicionais is not null and (fp.especie = 2 or fp.especie = 3) and dd.status < 70';
        Params[0].AsInteger := nSaida;
        Open;
        sNSU := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 1);
        sRede := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 2);
        sData := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 3);
        sHora := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 4);
        bTemTef := (Trim(sNSU) <> '') and (Trim(sRede) <> '') and (Trim(sData) <> '') and (Trim(sHora) <> '');
      end;

      sUltNum := dmECF.ECf1.COO;
      // Se tem TEF deve verificar o último cupom...
      if bTemTef then
        sUltNum := Copy( sUltNum, 1, Length(sUltNum) - 1) + IntToStr(StrToIntDef(Copy(sUltNum, Length(sUltNum), 1),-1)-1);
        
      if (Copy(sNumero, 5, Length(sNumero) - 4) = sUltNum) then begin
        if DlgMsg.ShowMsg(6042, ['Deseja cancelar o cupom ' + sNumero + '?']) = 100 then begin
          if not dmECF.ECF1.CancelaUltimoCupom then Exit;
        end else Exit;
      end
      else begin
        DlgMsg.ShowMsg(50, ['O número cadastrado (' + sNumero + ') difere do número do ECF (' + dmECF.ECF1.COO + ').']);
        Exit;
      end;
    end;
    //
    if nSaida > 0 then begin
      DMSaida.Localizar('', ' where t.Saida = ' + IntToStr(nSaida)); //Se for mais de uma saida colocar o IN
      DMSaida.Excluir;
    end;
end;

procedure TFrmVendaRapida.dbgItensTS_BeforeDeleteAll(Sender: TObject;
    var CanDelete: Boolean);
begin
    inherited;
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanItemVR', '', False,
                  'Item:' + DMSaida.C_ItensDescricao.AsString + #13#10 + 'Preço:' + DMSaida.C_ItensPreco.AsString,
                  DMSaida.C_ItensITEM.AsInteger,'FrmItens');
    if (DMProjeto.nModeloECF <> 0) then
    begin
        if CanDelete then
            with DMSaida do
            begin
                if (DMProjeto.bECFAtivo) then
                begin
                    if not DMECF.ECF1.CancelaItem(C_ItensSEQUENCIA.AsString, C_ItensI_CODIGO.AsString, C_ItensSITUACAOECF.Value, FormatFloat(DMProjeto.sCasasDecimais, C_ItensALIQICMS.Value),
                        FormatFloat('0.000', C_ItensQUANTIDADE.Value), '$', '0000', FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value)) then
                    begin
                        ShowMessage('Item não pode ser cancelado');
                        CanDelete := false;
                        Exit;
                    end;
                end;
            end;
    end
    else
    begin
        if CanDelete then
            DMSaida.C_Itens.delete;
    end;
end;

procedure TFrmVendaRapida.pmPercorrerItensClick(Sender: TObject);
begin
    inherited;

    if pgOperacao.ActivePage = tsItens then
    begin

        pmPercorrerItens.Checked := not pmPercorrerItens.Checked;

        if pmPercorrerItens.Checked then
        begin
            if dbgItens.CanFocus then
                dbgItens.SetFocus;
        end
        else
        begin
            if dfItem.CanFocus then
                dfItem.SetFocus;
        end;

    end;

end;

procedure TFrmVendaRapida.pmComprarItemdaConsultaClick(Sender: TObject);
begin
    inherited;
    {Desabilitando Modo Consulta}
    pmConsultadePrecos.Checked := false;
    pnConsultaPrecos.Visible := false;
    lbDescricaoConsulta.Visible := false;
    lbPrecoConsulta.Visible := false;
    spConsultaPrecos.Visible := false;
    ActiveControl := dfItem;

    AdicionarItem;

end;

procedure TFrmVendaRapida.FazerRetirada1Click(Sender: TObject);
begin
    inherited;
   {PAF}
   Try
     if (DMPRojeto.PAFObrigatorio) Then Begin
       Try
          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
          if (validaPAF.CodigoErro = 1) Then
            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
          if (Not (DMECF.ECF1.DiaJaAberto())) Then
               raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
          DMProjeto.CriarForm('DlgPgtoInstantaneo', self, true);
       except
          raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
               'ou os dados do arquivo auxiliar diverge da impressora!!!');
       End;
     End;  
   Except
     On E:Exception do Begin
        MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
     End;
   End;



end;

procedure TFrmVendaRapida.RecebimentodeParcelas1Click(Sender: TObject);
begin
    inherited;
   {PAF}
   Try
     if (DMPRojeto.PAFObrigatorio) Then Begin
       Try
          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
          if (validaPAF.CodigoErro = 1) Then
            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
          if (Not (DMECF.ECF1.DiaJaAberto())) Then
               raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
          DMProjeto.CriarForm('DlgDepositos', self, true);
       except
          raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
               'ou os dados do arquivo auxiliar diverge da impressora!!!');
       End;
     End;
   Except
     On E:Exception do Begin
        MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
     End;
   End;



end;

procedure TFrmVendaRapida.ResuprimentodeCaixa1Click(Sender: TObject);
var sValor: string;
    nValor: Currency;
begin
    inherited;
   {PAF}
   Try
     if (DMPRojeto.PAFObrigatorio) Then Begin
       Try
          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
          if (validaPAF.CodigoErro = 1) Then
            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
          if (Not (DMECF.ECF1.DiaJaAberto())) Then
               raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
           DMProjeto.CriarForm('DlgSuprimentosCaixa', self, true);
       except
          raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
               'ou os dados do arquivo auxiliar diverge da impressora!!!');
       End;
     End;
   Except
     On E:Exception do Begin
        MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
     End;
   End;


end;

procedure TFrmVendaRapida.SetEnableMenu(bEnable: Boolean; oMenu: TMenuItem);

function GetKeyLabel(oPanel: TTS_Panel): TTS_Label;
    var i: integer;
    begin
        result := nil;
        for i := 0 to ComponentCount - 1 do
        begin
            if (components[i] is TTS_Label) and (Esquerda(TTS_Label(components[i]).Name, 5) = 'lbKey') and
                (TTS_Label(components[i]).Parent = oPanel) then
            begin
                result := TTS_Label(components[i]);
                break;
            end;
        end;
    end;

    function GetTitLabel(oPanel: TTS_Panel): TTS_Label;
    var i: integer;
    begin
        result := nil;
        for i := 0 to ComponentCount - 1 do
        begin
            if (components[i] is TTS_Label) and (Esquerda(TTS_Label(components[i]).Name, 5) = 'lbTit') and
                (TTS_Label(components[i]).Parent = oPanel) then
            begin
                result := TTS_Label(components[i]);
                break;
            end;
        end;
    end;

begin
    oMenu.Enabled := bEnable;

    if oMenu.Hint <> '' then
    begin
        TTS_Label(GetKeyLabel(TTS_Panel(FindComponent(oMenu.Hint)))).Enabled := bEnable;
        TTS_Label(GetTitLabel(TTS_Panel(FindComponent(oMenu.Hint)))).Enabled := bEnable;
    end;

end;

procedure TFrmVendaRapida.DBEdit3Change(Sender: TObject);
begin
    inherited;
    dbtNomeCliente.Visible := DMSaida.C_TabelaFavorecido.Value <> 1;
end;

procedure TFrmVendaRapida.NomostrarAtalhos1Click(Sender: TObject);
begin
    inherited;
    NomostrarAtalhos1.Checked := not NomostrarAtalhos1.Checked;
    if NomostrarAtalhos1.Checked then
        pnStatus.Visible := false;
end;

procedure TFrmVendaRapida.CancelarSomenteTEF1Click(Sender: TObject);
var
    nSaida, Especie, comprovante, nDeposito: Integer;
    sNumero, sNSU, sRede, sData, sHora, sValor, Msg: string;
    fValor: Currency;
    Cupom: TStringList;
    cv: boolean;
    rede, nsu, data, hora, valor: string;
begin
    inherited;
    if (DMProjeto.nModeloECF <> 0) and (DMProjeto.bECFAtivo) then
    begin
        with DMProjeto.Q_ComandoSQL do
        begin
            close;
            SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and tipopadrao = 1 and data = :dData';
            params[0].asdatetime := DMProjeto.dDataSistema;
            open;
            nSaida := fieldbyname('IDSaida').asinteger;
            close;
            SQL.text := 'select numero from saidas where saida = :nSaida';
            params[0].asinteger := nSaida;
            open;
            sNumero := FieldByName('numero').asstring;
            close;
            SQL.Text := 'select dd.infoadicionais, fp.especie, dd.deposito ' +
                'from titulosareceber tr, depositostitulos dt, depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where tr.venda = :nSaida and tr.id = dt.titulo and dt.deposito = dd.deposito and tr.parcela = 1 ' +
                'and dd.infoadicionais is not null and (fp.especie = 2 or fp.especie = 3) and dd.status < 70';
            Params[0].AsInteger := nSaida;
            Open;
            sNSU := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 1);
            sRede := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 2);
            sData := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 3);
            sHora := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 4);
            Especie := FieldByName('especie').AsInteger;
            nDeposito := FieldByName('deposito').AsInteger;
            close;
            SQL.Text := 'select sum(dd.valor) as fValor from depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where dd.deposito = :deposito and fp.especie = :especie ';
            Params[0].AsInteger := nDeposito;
            Params[1].AsInteger := Especie;
            Open;
            fValor := FieldByName('fValor').AsCurrency;
            sValor := FormatCurr('0.00', fValor);
        end;
        dmProjeto.bTimer := False;
        if (sNSU = '') or (Trim(UpperCase(sRede)) = 'HCARD') then
        begin
            DlgMsg.ShowMsg(50, ['Impossível cancelar última transação TEF.']);
            DMProjeto.bTimer := True;
            Exit;
        end;
        if (sNSU <> '') and (DlgMsg.ShowMsg(6041, [#13 + 'NSU: ' + sNSU, #13 + 'REDE: ' + sRede, #13 + 'DATA: ' + sData, #13 + 'HORA: ' + sHora]) = 100) then
        begin
            case Especie of
                2:
                    begin
                        DMECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
                        DMECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
                    end;
                3:
                    begin
                        DMECF.TEF1.diretorioreq := 'C:\TEF_DIAL\REQ';
                        DMECF.TEF1.diretorioresp := 'C:\TEF_DIAL\RESP';
                    end;
            else
                begin
                    DMProjeto.bTimer := True;
                    Exit;
                end;
            end;
            DMECF.TEF1.FinalizaTEF;
            if DMECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
            begin
                Cupom := TStringList.Create;
                comprovante := DMECF.TEF1.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), sValor, sRede, sNSU, sData, sHora, Cupom, Msg);
                if Trim(Msg) <> '' then begin
                    FrmMsgTEF := TFrmMsgTEF.Create(Self);
                    FrmMsgTEF.LabelMsg.Caption := Msg;
                    if comprovante = 1 then begin
                        FrmMsgTEF.btMsgTEF.Visible := False;
                        FrmMsgTEF.Show;
                    end
                    else
                        FrmMsgTEF.ShowModal;
                    SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                    ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                    //          FrmMsgTEF.BringToFront;
                    //          FrmMsgTEF.Repaint;
                end;
                case comprovante of
                    1:
                        begin
                            cv := dmECF.ECF1.AbreRelatTEF;
                            while not cv do  begin
                                if DlgMsg.ShowMsg(6040) = 200 then  begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMProjeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.ImprimeRelatTEF(cupom, 2);
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                     if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);
                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    BringToFront;
                                    application.ProcessMessages;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.FechaRelatTEF;
                            if cv then
                            begin
                                DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                DMProjeto.bTimer := True;
                            end;
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    //                    if Trim(Msg) <> '' then FrmMsgTEF.Free;
                                    if Trim(Msg) <> '' then
                                        if FrmMsgTEF <> nil then
                                            FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                        end;
                else
                    Cupom.Free;
                end;
                if Trim(Msg) <> '' then
                    if FrmMsgTEF <> nil then
                        FrmMsgTEF.Free;
                BringToFront;
                application.ProcessMessages;
                DMProjeto.bTimer := True;
            end
            else
            begin
                ShowMessage('Gerenciador Padrão não está ativo.');
                Exit;
                DMProjeto.bTimer := True;
            end;
        end;
    end;
end;

procedure TFrmVendaRapida.Timer1Timer(Sender: TObject);
var Arquivo: TextFile;
begin
    inherited;
    if DMProjeto.bTimer and DMProjeto.bTEF then
    begin
        SetCurrentDir('C:\TEF_DIAL\RESP');
        if FileExists('ativo.001') then begin
            //      SetForegroundWindow(FindWindow('TFrmVendaRapida','FrmVendaRapida'));
            //      ShowWindow(FindWindow('TFrmVendaRapida','FrmVendaRapida'),SW_MAXIMIZE);
            //      Screen.ActiveForm.Show;
        end;
        //Verificando se o Gerenciador Padrao está ativo
        if Inicio then begin
            SetCurrentDir('C:\TEF_DISC\REQ');
            AssignFile(Arquivo, 'IntPos.tmp');
            Rewrite(Arquivo);
            Write(Arquivo, '000-000 = ATV' + #13 + #10);
            Write(Arquivo, '001-000 = 001' + #13 + #10);
            Write(Arquivo, '999-999 = 0' + #13 + #10);
            CloseFile(Arquivo);
            RenameFile('IntPos.tmp', 'IntPos.001');
            Inicio := False;
        end
        else begin
            SetCurrentDir('C:\TEF_DISC\RESP');
            if FileExists('IntPos.Sts') then begin
                if not DeleteFile('IntPos.Sts') then
                    ShowMessage('Arquivo de Status do Gerenciador Padrão não pôde ser excluído.');
                //           SetForegroundWindow(FindWindow('TFrmVendaRapida','FrmVendaRapida'));
                //           ShowWindow(FindWindow('TFrmVendaRapida','FrmVendaRapida'),SW_MAXIMIZE);
                //           Screen.ActiveForm.Show;
            end;
            Inicio := True;
        end;
    end;
end;

procedure TFrmVendaRapida.CancelarSomenteHiperCard1Click(Sender: TObject);
var
    nSaida, Especie, comprovante, nDeposito: Integer;
    sNumero, sNSU, sRede, sData, sHora, sValor, Msg: string;
    fValor: Currency;
    Cupom: TStringList;
    cv: boolean;
    rede, nsu, data, hora, valor: string;
begin
    inherited;
    if (DMProjeto.nModeloECF <> 0) and (DMProjeto.bECFAtivo) then
    begin
        with DMProjeto.Q_ComandoSQL do
        begin
            close;
            SQL.text := 'select max(saida) as IDSaida from saidas where situacao = ''N'' and tipopadrao = 1 and data = :dData';
            params[0].asdatetime := DMProjeto.dDataSistema;
            open;
            nSaida := fieldbyname('IDSaida').asinteger;
            close;
            SQL.text := 'select numero from saidas where saida = :nSaida';
            params[0].asinteger := nSaida;
            open;
            sNumero := FieldByName('numero').asstring;
            close;
            SQL.Text := 'select dd.infoadicionais, fp.especie, dd.deposito ' +
                'from titulosareceber tr, depositostitulos dt, depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where tr.venda = :nSaida and tr.id = dt.titulo and dt.deposito = dd.deposito and tr.parcela = 1 ' +
                'and dd.infoadicionais is not null and (fp.especie = 2 or fp.especie = 3) and dd.status < 70';
            Params[0].AsInteger := nSaida;
            Open;
            sNSU := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 1);
            sRede := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 2);
            sData := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 3);
            sHora := SeparaStrings(FieldByName('infoadicionais').AsString, ';', 4);
            Especie := FieldByName('especie').AsInteger;
            nDeposito := FieldByName('deposito').AsInteger;
            close;
            SQL.Text := 'select sum(dd.valor) as fValor from depositosdoc dd ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where dd.deposito = :deposito and fp.especie = :especie ';
            Params[0].AsInteger := nDeposito;
            Params[1].AsInteger := Especie;
            Open;
            fValor := FieldByName('fValor').AsCurrency;
            sValor := FormatCurr(DMProjeto.sCasasDecimais, fValor);
        end;
        dmProjeto.bTimer := False;
        if (sNSU = '') or (Trim(UpperCase(sRede)) <> 'HCARD') then
        begin
            DlgMsg.ShowMsg(50, ['Impossível cancelar última transação TEF.']);
            DMProjeto.bTimer := True;
            Exit;
        end;
        if (sNSU <> '') and (DlgMsg.ShowMsg(6041, [#13 + 'NSU: ' + sNSU, #13 + 'REDE: ' + sRede, #13 + 'DATA: ' + sData, #13 + 'HORA: ' + sHora]) = 100) then
        begin
            DMECF.TEF1.diretorioreq := 'C:\HiperTEF\req';
            DMECF.TEF1.diretorioresp := 'C:\HiperTEF\resp';
            dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
            if DMECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
            begin
                Cupom := TStringList.Create;
                comprovante := DMECF.TEF1.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), sValor, sRede, sNSU, sData, sHora, Cupom, Msg);
                if Trim(Msg) <> '' then
                begin
                    FrmMsgTEF := TFrmMsgTEF.Create(Self);
                    FrmMsgTEF.LabelMsg.Caption := Msg;
                    if comprovante = 1 then
                    begin
                        FrmMsgTEF.btMsgTEF.Visible := False;
                        FrmMsgTEF.Show;
                    end
                    else
                        FrmMsgTEF.ShowModal;
                    //SetForegroundWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'));
                    //ShowWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'),SW_MAXIMIZE);
                    //          FrmMsgTEF.BringToFront;
                    //          FrmMsgTEF.Repaint;
                end;
                case comprovante of
                    1:
                        begin
                            cv := dmECF.ECF1.AbreRelatTEF;
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMProjeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                  DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    if Trim(Msg) <> '' then
                                        FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.ImprimeRelatTEF(cupom, 2);
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    if Trim(Msg) <> '' then
                                        FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                            cv := dmECF.ECF1.FechaRelatTEF;
                            if cv then
                            begin
                                DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                DMProjeto.bTimer := True;
                            end;
                            while not cv do
                            begin
                                if DlgMsg.ShowMsg(6040) = 200 then
                                begin
                                    dmECF.ECF1.FechaRelatorio;
                                    cv := dmECF.ECF1.AbreRelatTEF;
                                    if cv then
                                        cv := dmECF.ECF1.ImprimeRelatTEF(Cupom, 2);
                                    if cv then
                                        cv := dmECF.ECF1.FechaRelatTEF;
                                    if cv then
                                    begin
                                        DMECF.TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        DMPRojeto.bTimer := True;
                                    end;
                                end
                                else
                                begin
                                    DMECF.TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, Nsu, Valor);
                                    //                    DlgMsg.ShowMsg(6039,[iif(Rede<>'','Rede: ' + Rede,''),iif(Nsu<>'',#13+'NSU: '+Nsu,''),iif(Valor<>'',#13+'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais,StrToFloat(valor)/100),'')]);
                                    if Valor <> '' then
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor <> '', #13 + 'Valor: ' + FormatFloat(DMProjeto.sCasasDecimais, StrToFloat(valor) / 100), '')])
                                    else
                                        DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), '', '']);

                                    Cupom.Free;
                                    dmECF.ECF1.FechaRelatorio; DMECF.TEF1.FinalizaTEF;
                                    if Trim(Msg) <> '' then
                                        FrmMsgTEF.Free;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                            end;
                        end;
                else
                    Cupom.Free;
                end;
                if Trim(Msg) <> '' then
                    FrmMsgTEF.Free;
                BringToFront;
                DMProjeto.bTimer := True;
            end
            else
            begin
                ShowMessage('Gerenciador Padrão não está ativo.');
                Exit;
                DMProjeto.bTimer := True;
            end;
        end;
    end;
end;

procedure TFrmVendaRapida.dbgItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var
    sDescOriginal: string;
    sDescItem: string;
begin
    inherited;
    {Destacando a promoção}
    if (dbgItens.GetFieldValue(ANode, 'Promocao', 'N') = 'S') then
    begin
        AFont.Color := clBlue;
        if UpperCase(TdxDBGridColumn(aColumn).FieldName) = 'PRECO' then
            AFont.Style := [fsBold];
    end;

    {Identificando Item Mesclado}
    if (dbgItens.GetFieldValue(ANode, 'Mesclado', 'N') = 'S') then
        AColor := $00FBE7E6;

    {Verificando se o Preço é um Percentual para mostrar o Simbolo %}
    if UpperCase(TdxDBGridColumn(AColumn).FieldName) = 'PRECO' then
    begin
        if dbgItens.GetFieldValue(ANode, 'I_Percentual', 0) > 0 then
            AText := AText + ' %';

        if dbgItens.GetFieldValue(ANode, 'Preco', 0) = 0 then
            AFont.Color := clRed;
    end;

    if UpperCase(TdxDBGridColumn(AColumn).FieldName) = 'DESCRICAO' then
    begin
        sDescOriginal := dbgItens.GetFieldValue(ANode, 'I_DESCRICAO', '');
        sDescItem := dbgItens.GetFieldValue(ANode, 'DESCRICAO', '');
        if (sDescOriginal <> sDescItem) and (sDescOriginal <> '') then
            AFont.Color := clPurple;
    end;

    if (dbgItens.GetFieldValue(ANode, 'BaixaEstoque', 'N') = 'N') and (DMSaida.C_TabelaBaixaEstoque.Value = 'S') then
        AFont.Style := AFont.Style + [fsItalic];

end;

procedure TFrmVendaRapida.dbtTabelaPadraoClick(Sender: TObject);
begin
    inherited;
    pmAlterarTabelaClick(self);
end;

procedure TFrmVendaRapida.pmAlterarTabelaClick(Sender: TObject);
begin
    inherited;
    if not pmAlterarTabela.Enabled then
        exit;

    if DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'ALTERATAB') then
    begin
        DlgAlterarTabelaPadrao := TDlgAlterarTabelaPadrao.Create(self);
        DlgAlterarTabelaPadrao.DM := DMSaida;
        DlgAlterarTabelaPadrao.ShowModal;
        DlgAlterarTabelaPadrao.Release;
        DlgAlterarTabelaPadrao := nil;
    end;
end;

procedure TFrmVendaRapida.dfItemIniciarLocalizar(Sender: TObject;
    var Value: string; var bSkip: Boolean);
begin
    inherited;
    dfItem.TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value;
end;

procedure TFrmVendaRapida.cmbTipoCobrancaChange(Sender: TObject);
begin
    inherited;
    lbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);
    cmbCarteira.Visible := (cmbTipoCobranca.LookupKeyValue = 3);

    if (ActiveControl = cmbTipoCobranca) then
        with DMSaida.C_Parcelas do begin
            if not Active then
                exit;
            First;
            while not EOF do begin
                Edit;
                FieldByName('TipoCobranca').asInteger := cmbTipoCobranca.LookupKeyValue;
//                FieldByName('Carteira').asInteger := cmbCarteira.LookupKeyValue;
                Next;
            end;
            First;
        end;
end;

procedure TFrmVendaRapida.pmAproveitarOperacoesClick(Sender: TObject);
var registros, i: integer;
    sCodigoItem: String;
begin
    inherited;
    if DMSaida.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMSaida.C_TabelaTipoPadrao.Value <> 6 then
    begin
        if DMSaida.C_tabelaFavorecido.Value in [0, 1] then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

        DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
        DlgMesclarMovimentos.sTipos := IIF(DMSaida.C_TabelaTipoPadrao.Value = 2, '3', '2,3');
        DlgMesclarMovimentos.DM := DMSaida;
        DlgMesclarMovimentos.GridItens := dbgItens;
        DlgMesclarMovimentos.ShowModal;
        DlgMesclarMovimentos.Release;
        DlgMesclarMovimentos := nil;

        (* ECF *)
        with DMSaida do
            if ((C_Itens.RecordCount > 0) and (DMProjeto.bECFAtivo)) then
            begin
                lbCPEmpresa.Visible := True;
                lbCPEndereco.Visible := True;
                lbCPCGC.Visible := True;
                lbCPCaixa.Visible := True;
                lbCPTitulo.Visible := True;
                Application.ProcessMessages;
                C_Itens.First;
                while not C_Itens.Eof do
                begin
                    if not (C_ItensI_TipoItem.Value in [1, 2]) then
                    begin
                        if not (C_Itens.State in [dsInsert, dsEdit]) then
                            C_Itens.Edit;
                        C_ItensALIQICMS.Value := DMProjeto.nISS;
                        C_Itens.Post;
                    end;
                    C_Itens.Next;
                end;
                registros := C_Itens.RecordCount;
                i := 1;
                C_Itens.First;
                while i <= registros do
                begin
                    if C_ItensPreco.Value <= 0 then
                    begin
                        C_Itens.Delete;
                        registros := registros - 1;
                    end;
                    if DMProjeto.Parametro('FaturaServico') = 'S' then begin
                        DMECF.ECF1.FechaRelatorio;
                        if DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto' then begin
                            if ((DMPRojeto.PAFObrigatorio) and (C_ItensI_CODIGOBARRAS.AsString <> '')) Then
                               sCodigoItem := DMVendaRapida.C_ItensI_CODIGOBARRAS.AsString
                            Else
                               sCodigoItem := DMVendaRapida.C_ItensI_CODIGO.AsString;
                           if (DMProjeto.PAFObrigatorio) Then Begin
                             DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                             validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
                             if (validaPAF.CodigoErro = 1) Then
                                 Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
                           End;
                           if DMECF.ECF1.VendeItem(sCodigoItem, RetiraAcentos(C_ItensDESCRICAO.AsString), C_ItensSITUACAOECF.AsString,
                                iif((C_ItensREDUCAOCST.Value > 0), FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)), FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                'F', FormatFloat('0.000', C_ItensQUANTIDADE.Value), DMProjeto.nCasasDecimais, FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value), '$', '0000',Copy(C_ItensUnidade.AsString,1,2)) then
                            begin
                                i := i + 1;
                                C_Itens.Next;
                                {PAF}
                                SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                            end
                            else
                            begin
                                C_Itens.Delete;
                                registros := registros - 1;
                            end;
                            {PAF}
                            if (DMProjeto.PAFObrigatorio) Then Begin
                              DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                              FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                            End;

                        end
                        else
                        begin
                            if DMECF.ECF1.AbreCupom('') then begin
                               if (DMProjeto.PAFObrigatorio) Then Begin
                                 DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                                 validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
                                 if (validaPAF.CodigoErro = 1) Then
                                     Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
                               End;
                               if DMECF.ECF1.VendeItem(sCodigoItem, RetiraAcentos(C_ItensDESCRICAO.Value), C_ItensSITUACAOECF.Value,
                                    iif((C_ItensREDUCAOCST.Value > 0), FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)), FormatFloat(DMProjeto.sCasasDecimais, C_ItensALIQICMS.Value)),
                                    'F', FormatFloat('0.000', C_ItensQUANTIDADE.Value), DMProjeto.nCasasDecimais, FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value), '$', '0000', Copy(C_ItensUnidade.AsString,1,2)) then
                                begin
                                    i := i + 1;
                                    C_Itens.Next;
                                    {PAF}
                                    SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                                end
                                else
                                begin
                                    C_Itens.Delete;
                                    registros := registros - 1;
                                end;
                                {PAF}
                                if (DMProjeto.PAFObrigatorio) Then Begin
                                  DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                                  FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                                End;

                            end
                            else
                            begin
                                C_Itens.Delete;
                                registros := registros - 1;
                            end;
                        end;
                    end
                    else
                    begin
                        if C_ItensI_TipoItem.Value in [1, 2] then begin
                            DMECF.ECF1.FechaRelatorio;
                            if DMECF.ECF1.ChkCupomAberto = 'Cupom Fiscal Aberto' then  begin
                               if (DMProjeto.PAFObrigatorio) Then Begin
                                 DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                                 validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
                                 if (validaPAF.CodigoErro = 1) Then
                                     Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
                               End;
                               if DMECF.ECF1.VendeItem(sCodigoItem, RetiraAcentos(C_ItensDESCRICAO.AsString), C_ItensSITUACAOECF.AsString,
                                    iif((C_ItensREDUCAOCST.Value > 0), FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)), FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                    'F', FormatFloat('0.000', C_ItensQUANTIDADE.Value), DMProjeto.nCasasDecimais, FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value), '$', '0000', Copy(C_ItensUnidade.AsString,1,2)) then
                                begin
                                    i := i + 1;
                                    C_Itens.Next;
                                    {PAF}
                                    SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                                end
                                else
                                begin
                                    C_Itens.Delete;
                                    registros := registros - 1;
                                end;
                                {PAF}
                                if (DMProjeto.PAFObrigatorio) Then Begin
                                  DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                                  FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                                End;

                            end
                            else
                            begin
                                if DMECF.ECF1.AbreCupom('') then  begin
                                   DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
                                   validaPAF := FuncoesPAF.ValidarPAF( StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF);
                                   if (validaPAF.CodigoErro = 1) Then
                                       Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');

                                    if DMECF.ECF1.VendeItem(sCodigoItem, RetiraAcentos(C_ItensDESCRICAO.Value), C_ItensSITUACAOECF.Value,
                                        iif((C_ItensREDUCAOCST.Value > 0), FormatFloat('00.00', RoundTo((100 - C_ItensREDUCAOCST.Value) * C_ItensALIQICMS.Value / 100, -2)), FormatFloat('00.00', C_ItensALIQICMS.Value)),
                                        'F', FormatFloat('0.000', C_ItensQUANTIDADE.Value), DMProjeto.nCasasDecimais, FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value), '$', '0000', Copy(C_ItensUnidade.AsString,1,2)) then
                                    begin
                                        i := i + 1;
                                        C_Itens.Next;
                                        {PAF}
                                        SubTotalECF := (DMECF.ECF1.SubTotal - SubTotalECF);
                                    end
                                    else
                                    begin
                                        C_Itens.Delete;
                                        registros := registros - 1;
                                    end;
                                    {PAF}
                                    if (DMProjeto.PAFObrigatorio) Then Begin
                                      DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                                      FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                                    End;

                                end
                                else
                                begin
                                    C_Itens.Delete;
                                    registros := registros - 1;
                                end;
                            end;
                        end
                        else
                        begin
                            C_Itens.Next;
                            i := i + 1;
                        end;
                    end;
                end;
            end;
    end;

    //Para Atualizar Ordem de digitação e sequencial;
    DMSaida.C_TabelaAfterScroll(DMSaida.C_Tabela);
    pmInformarNomedoClienteClick(Self);
end;

procedure TFrmVendaRapida.dbgItensTS_BeforeLocalizar(Sender: TObject;
    var Campo, Conteudo: string);
begin
    inherited;
    dbgItens.TS_TabelaPreco := DMSaida.C_TabelaTabelaPadrao.Value
end;

procedure TFrmVendaRapida.ComandosdoECF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmConfigECF', Self, True);
end;

procedure TFrmVendaRapida.rocadeBobina1Click(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6031) = 100 then
    begin
        FrmMsgECF := TFrmMsgECF.Create(Self);
        FrmMsgECF.LabelMsg.Caption := 'Aguarde...Emitindo Leitura X.';
        FrmMsgECF.Show;
        FrmMsgECF.BringToFront;
        FrmMsgECF.Repaint;
        if not DMECF.ECF1.LeituraX then
        begin
            FrmMsgECF.Free;
            Exit;
        end;
        FrmMsgECF.Free;
        if DlgMsg.ShowMsg(6028) = 100 then
        begin
            FrmMsgECF := TFrmMsgECF.Create(Self);
            FrmMsgECF.LabelMsg.Caption := 'Aguarde...Emitindo Leitura X.';
            FrmMsgECF.Show;
            FrmMsgECF.BringToFront;
            FrmMsgECF.Repaint;
            DMECF.ECF1.LeituraX;
            FrmMsgECF.Free;
        end;
    end;
end;

procedure TFrmVendaRapida.AbrirGaveta1Click(Sender: TObject);
begin
    inherited;
    DMECF.ECF1.AbreGaveta;
end;

procedure TFrmVendaRapida.pmCheckExClick(Sender: TObject);
var chequeini, chequefim: integer;
begin
    inherited;
    with DMSaida.DlgPgtos do
    begin
        if C_Cheques.RecordCount > 0 then
        begin
            // C_Cheques.First; Fazer a modificação depois de ajeitar o bug do DlgInplacePgtos
            C_Cheques.UpdateRecord;
            chequeini := C_ChequesNumCheque.Value;
            chequefim := C_ChequesNumCheque.Value;
            DMProjeto.SetParametrosForm([null, DMSaida.C_TabelaFAVORECIDO.Value, C_ChequeslkCodBanco.Value,
                chequeini, chequefim, C_ChequesValor.Value, C_ChequesVencimento.Value, C_ChequesChequeDV.Value,
                    C_ChequesCPF_CNPJ.Value]);
        end;
    end;
    DMProjeto.CriarForm('FrmChecks', Self, True);
end;

procedure TFrmVendaRapida.PgtoCtnerEnter(Sender: TObject);
begin
    inherited;
    DMsaida.DlgPgtos.UpdateValorReceber(TS_DBTextEffect1.Field.AsFloat);
end;

procedure TFrmVendaRapida.FormCloseQuery(Sender: TObject;
    var CanClose: Boolean);
begin
    inherited;
    CanClose := FPodeFechar;
end;

procedure TFrmVendaRapida.imgFotoDblClick(Sender: TObject);
begin
    inherited;
    DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + sFoto);
    DLGVisialuzadorImagem.Free;
end;

procedure TFrmVendaRapida.dbgTabelasPrecoChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  dxCalcDisplay.Text := VarToStr(dbgTabelasPreco.GetFieldValue(Node, 'Preco', '0', true));
end;

procedure TFrmVendaRapida.dbgTabelasPrecoClick(Sender: TObject);
begin
  inherited;
  dxCalcDisplay.Text := DMSaida.C_PrecosPreco.asString;
end;

procedure TFrmVendaRapida.dbgTabelasPrecoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
//    if (dbgTabelasPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = DMSaida.C_ItensTabelaPreco.Value) then
//        AFont.Style := [fsBold];
end;

procedure TFrmVendaRapida.dbgTabelasPrecoCustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
//    if (DMSaida.C_ProdutosPreco.Tag = 0) then
//        AColor := $00EBEBEB
//    else
//        AColor := $00BFFFFF;
end;

procedure TFrmVendaRapida.dbgTabelasPrecoDblClick(Sender: TObject);
begin
  inherited;
//  if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value)
//      and DMProjeto.PermissoesTabelasPreco(DMSaida.C_ProdutosPrecoTabelaPreco.Value, 'U', true) then
//  begin
//      DMSaida.C_Itens.Edit;
//
//      DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
//      DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
//
//      DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);
//
//      DMSaida.C_Itens.Post;
//  end;


  if (DMSaida.C_Precos.Active) and (DMSaida.C_Precos.RecordCount > 0) and
     DMProjeto.PermissoesTabelasPreco(DMSaida.C_PrecosTabelaPreco.Value, 'U', true) then begin
    nTabelaPreco := DMSaida.C_PrecosTABELAPRECO.Value;
    nPrecoTabela := DMSaida.C_PrecosPRECO.Value;
  end;

  dfPreco.Text := dxCalcDisplay.Text;

  dfPreco.SetFocus;

end;

procedure TFrmVendaRapida.dbgTabelasPrecoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = vk_return then
        dbgTabelasPrecoDblClick(self);

end;

procedure TFrmVendaRapida.dxCalculator1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
//      if (DMSaida.C_ItensTabelaPreco.Value <> DMSaida.C_ProdutosPrecoTabelaPreco.Value) and
//          DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'ALTERATAB') then
//      begin
//          DMSaida.C_Itens.Edit;
//
//          DMSaida.C_ItensPrecoTabela.Value := DMSaida.C_ProdutosPrecoPreco.Value;
//          DMSaida.C_ItensTabelaPreco.Value := DMSaida.C_ProdutosPrecoTabelaPreco.Value;
//
//          DMSaida.C_ItensPreco.Value := StrToFloatDef(dxCalcDisplay.Text, 0);
//
//          DMSaida.C_Itens.Post;
//      end;
//
//      dbgItensPRECO.TreeList.CloseEditor;
    if (DMSaida.C_Precos.Active) and (DMSaida.C_Precos.RecordCount > 0) and
       DMProjeto.PermissoesTabelasPreco(DMSaida.C_PrecosTabelaPreco.Value, 'U', true) then begin
      nTabelaPreco := DMSaida.C_PrecosTABELAPRECO.Value;
      nPrecoTabela := DMSaida.C_PrecosPRECO.Value;
    end;

    dfPreco.Text := dxCalcDisplay.Text;

    dfPreco.SetFocus;
  end;

end;

procedure TFrmVendaRapida.dfPrecoInitPopup(Sender: TObject);
begin
  inherited;
  dfPreco.PopupControl := nil;

  dbgTabelasPreco.DataSource := DMSaida.C_PrecosDS;
  lbDescItem.DataSource := DMSaida.C_PrecosDS;

  if (bSelecionou) and DMProjeto.LerPermissao(Self.Name,'ALTERATAB') then begin
    DMSaida.C_Precos.Close;
    DMSaida.Q_Precos.Params[0].asInteger := nItem;
    DMSaida.Q_Precos.Params[1].asString := dfItem.sUltimaUnidade;
    DMSaida.C_Precos.Open;
    pnPreco2.Height := 278;
    pnOutros.Visible := True;
  end
  else begin
    pnOutros.Visible := false;
    pnPreco2.Height := 169;
  end;

  dfPreco.PopupControl := pnPreco2;
end;

procedure TFrmVendaRapida.dfPrecoCloseUp(Sender: TObject; var Text: String;
  var Accept: Boolean);
begin
  inherited;
  DMSaida.C_Precos.Close;

  dbgTabelasPreco.DataSource := nil;
  lbDescItem.DataSource := nil;

  Accept := true;

end;

procedure TFrmVendaRapida.dfPrecoPopup(Sender: TObject;
  const EditText: String);
begin
  inherited;
  {Abrindo Popup do Preco}

  {Filtrando ProdutosPreco}
//  if DMSaida.C_ItensI_TIPOITEM.Value in [1, 2, 3] then
//  begin
//      DMSaida.LocalizarTabelaItem(DMSaida.C_ItensITEM.asInteger, DMSaida.C_ItensTabelaPreco.Value, DMSaida.C_ItensUnidade.Value);
//
//      DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_TabelaTabelaPadrao.Value, []);
//      lbTabelaPadrao.Caption := DMSaida.C_ProdutosPrecoDescricao.Value;
//
//      DMSaida.C_ProdutosPreco.Locate('TabelaPreco', DMSaida.C_ItensTabelaPreco.Value, []);
//
//  end;

  dxCalcDisplay.Text := EditText;
end;

procedure TFrmVendaRapida.pmIniciarDevolucaoClick(Sender: TObject);
begin
  inherited;
  if Estado = 'Propagandas' then
    IniciarDevolucao;
end;

procedure TFrmVendaRapida.IniciarDevolucao;
var xCliente, xMedico: integer;
begin
    try
        Screen.Cursor := crHourGlass;

        imgFoto.Picture := nil;

        DMSaida.Modo_Inclusao;

        if DMProjeto.Parametro('SolicitarClienteVR') = 'S' then
        begin
            Screen.Cursor := crDefault;
            DlgClienteVR := TDlgClienteVR.Create(self);

            if DlgClienteVR.ShowModal = -1 then
            begin
                DlgClienteVR.Release;
                exit;
            end;
            if (Not (DlgClienteVR.SenhaValida)) Then Begin
               DlgMsg.ShowMsg(50, ['Senha do cliente não confere!']);
               Exit;
            End;

            xCliente := DlgClienteVR.Cliente;
            DlgClienteVR.Release;

            dfFavorecido.ID := xCliente;
        end;

        xMedico := 0;
        if (DMProjeto.Parametro('SolicitarMedicoVR') = 'S') and (xCliente <> -1) then
        begin
            Screen.Cursor := crDefault;
            DlgMedicoVR := TDlgMedicoVR.Create(self);
            if DlgMedicoVR.ShowModal = -1 then
            begin
                DlgMedicoVR.Release;
                exit;
            end;
            xMedico := DlgMedicoVR.Medico;
            DlgMedicoVR.Release;
        end;

        if (DMSaida.C_TabelaVendedor.Value = 0) and
            (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then
        begin
            Screen.Cursor := crDefault;
            DlgVendedorVR := TDlgVendedorVR.Create(self);
            DlgVendedorVR.DM := DMSaida;

            if DlgVendedorVR.ShowModal = -1 then
            begin
                DlgVendedorVR.Release;
                exit;
            end;

            DlgVendedorVR.Release;
        end;

        {Definindo Operacao Padrão da tela, o Cliente Padrao e a Mensagem Padrao}
        with DMSaida do
        begin
            C_TiposMovimento.Locate('TipoMovimento', DMSaida.nTipoMovimentoPadrao, []);
            C_TabelaTipoMovimento.Value := C_TiposMovimentoTipoMovimento.Value;

            {Cliente - Padrao}
            if DMProjeto.Parametro('SolicitarClienteVR') <> 'S' then
            begin
                if C_TiposMovimentoFavorecidoPadrao.Value <> 0 then
                    dfFavorecido.ID := C_TiposMovimentoFavorecidoPadrao.Value
                else
                    dfFavorecido.ID := 1; // Consumidor Final;
            end;
            if xMedico > 0 then
                C_TabelaMedico.value := xMedico;

            {Mensagem - Padrao}
            if C_TiposMovimentoMensagemPadrao.Value > 0 then
            begin
                C_MensagensOperacoes.Locate('MensagemOperacao', C_TiposMovimentoMensagemPadrao.Value, []);
                C_TabelaOBS.Value := C_MensagensOperacoesDescricao.Value;
            end;

        end;

        Screen.Cursor := crHourGlass;
        FormBkg.Backgroundoptions.picture.Bitmap := msDevolucao.Textura;

        pnCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnInfoCliente.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgPrincipal.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pgOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsOperacao.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsPropaganda.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsItens.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        tsTermos.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        CtnPropagandas.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPropItens.Backgroundoptions.picture.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnPgto.Backgroundoptions.picture.bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
        pnStatus.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        pnTermos.BackgroundOptions.picture.bitmap := FormBkg.Backgroundoptions.picture.bitmap;
        Application.ProcessMessages;

        pgPrincipal.SetPage(tsOperacao); //Operacao
        // Esta variável controla se vai ser uma devolução...
        DMSaida.bDevolucao := True;
        DMSaida.bTroca := True;
        lbTroca.Visible := True;

        EstadoItens;

        if dfFavorecido.ID = 0 then
            pmInformarNomedoClienteClick(self);


    finally
        Screen.Cursor := crDefault;
    end;
end;

procedure TFrmVendaRapida.cmbCarteiraChange(Sender: TObject);
begin
  inherited;
    if (ActiveControl = cmbCarteira) then
        with DMSaida.C_Parcelas do
        begin
            if not Active then
               exit;
            First;
            while not EOF do
            begin
                Edit;
                FieldByName('Carteira').asInteger := cmbCarteira.LookupKeyValue;
                Next;
            end;
            First;
        end;
end;

procedure TFrmVendaRapida.dfDescontoPeEnter(Sender: TObject);
begin
  inherited;
  dfDescontoPe.Value := 0.00;
  dfDescontoPeVisual.Visible := False;
end;

procedure TFrmVendaRapida.dfDescontoPeVisualEnter(Sender: TObject);
begin
  inherited;
  ActiveControl := dfDescontoPe;
end;

end.
