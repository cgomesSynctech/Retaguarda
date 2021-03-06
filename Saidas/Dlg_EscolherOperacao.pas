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
    TS_EditItem, TS_CalcEdit, TS_LookupComboBox, dxGrClEx, CheckLst,
    TS_CheckListBox, TS_CheckBox, dxfProgressBar;

type
    TDlgEscolherOperacao = class(TFrmModeloCadastros)
        Q_Saidas: TIBQuery;
        P_Saidas: TDataSetProvider;
        C_Saidas: TClientDataSet;
        C_SaidasDS: TDataSource;
        C_SaidasSAIDA: TIntegerField;
        C_SaidasNUMERO: TStringField;
        C_SaidasDATA: TDateField;
        C_SaidasOBS: TStringField;
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
        lbCidades: TTS_Label;
        lbCampo2: TTS_Label;
        lbCampo3: TTS_Label;
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
        C_GruposDESCRICAOGRUPO: TStringField;
        C_GruposDS: TDataSource;
        P_Grupos: TDataSetProvider;
        cmbTipoMovimento: TTS_LookupComboBox;
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
        ppmGrid: TTS_PopupMenu;
        btItens: TTS_SpeedButton;
        C_ItensDS: TDataSource;
        Q_Itens: TIBQuery;
        C_Itens: TClientDataSet;
        C_ItensIDITEM: TIntegerField;
        C_ItensIDMESTRE: TIntegerField;
        C_ItensSEQUENCIA: TIntegerField;
        C_ItensDESCRICAO: TStringField;
        C_ItensQUANTIDADE: TFloatField;
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
        C_TiposMovimentoCFOPASSOCIADO: TStringField;
        C_SaidasTOTAL: TFloatField;
        C_SaidasQ_Itens: TDataSetField;
        P_Itens: TDataSetProvider;
        chStatus: TTS_CheckListBox;
        chFabricantes: TTS_CheckListBox;
        chGrupos: TTS_CheckListBox;
        chZonasClientes: TTS_CheckListBox;
        chCidades: TTS_CheckListBox;
        peZona: TTS_PopupEdit;
        peCidades: TTS_PopupEdit;
        peFabricante: TTS_PopupEdit;
        peGrupos: TTS_PopupEdit;
        peZonasClientes: TTS_PopupEdit;
        Q_Status: TIBQuery;
        P_Status: TDataSetProvider;
        C_Status: TClientDataSet;
        C_StatusDs: TDataSource;
        C_StatusSTATUS: TStringField;
        C_StatusDESCRICAO: TStringField;
        C_Zonas: TClientDataSet;
        P_Zonas: TDataSetProvider;
        Q_Zonas: TIBQuery;
        C_ZonasDs: TDataSource;
        C_ZonasZONA: TIntegerField;
        C_ZonasDESCRICAO: TStringField;
        TS_Label10: TTS_Label;
        cbSaidasRomaneios: TTS_CheckBox;
        sbExportarNfe: TTS_SpeedButton;
        Barra: TdxfProgressBar;
        Q_Municipios: TIBQuery;
        P_Municipios: TDataSetProvider;
        C_Municipios: TClientDataSet;
        C_MunicipiosDs: TDataSource;
        C_MunicipiosMUNICIPIO: TIntegerField;
        C_MunicipiosDESCRICAO: TStringField;
        lbCampo1: TTS_Label;
        C_SaidasEMPRESA: TIntegerField;
        C_SaidasPDV: TIntegerField;
        C_ItensSubTotal: TFloatField;
        chkMontagem: TTS_CheckBox;
        chkPorCustoContabil: TTS_CheckBox;

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
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure btItensClick(Sender: TObject);
        procedure peZonaCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure sbExportarNfeClick(Sender: TObject);
        procedure peFabricanteCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure peGruposCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure peZonasClientesCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure peCidadesCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure chkMontagemClick(Sender: TObject);
    private
        { Private declarations }
        nTipo: Integer;
        sComando: string;
        procedure ExportarNfe;
        procedure Pesquisar(Where: string);
        function ConstruirWhere: string;
        function ConstruirWhereItens: string;
    public
        { Public declarations }
    end;

var
    DlgEscolherOperacao: TDlgEscolherOperacao;

implementation
uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgEscolherOperacao.ExportarNfe;
var sNotas: string;
    nNotas, nLinhasSelect: Integer;
    ArqDestino: TStringList;
    LOCALE_SDECIMAL: Char;
begin
    try
        ArqDestino := TStringList.Create;
        LOCALE_SDECIMAL := DecimalSeparator;
        DecimalSeparator := '.';
        sNotas := Grid.Selecionados();
        nNotas := Grid.QuantidadeSelecionada();
        with DMProjeto.Q_SQL3 do
            begin
                Close;
                Sql.Text := 'Select s.saida, s.total as W_vNF, ' +
                    'coalesce(s.basecalcicms,0) as W_vBC, ' +
                    'coalesce(s.valoricms,0) AS W_vICMS, ' +
                    'coalesce(s.basecalcsubst,0) as W_vBCST, ' +
                    'coalesce(s.valoricmssubst,0) as W_vST, ' +
                    'coalesce(s.totalitens123,0) as W_vProd, ' +
                    'coalesce(s.valorseguro,0) as W_vSeg, ' +
                    'coalesce(s.desconto,0) * -1 as W_vDesc, ' +
                    'coalesce(s.frete,0) as W_vFrete, ' +
                    'coalesce(s.valoricmssubst,0) as W_vST, ' +
                    'coalesce(s.outrasdespesas,0) as W_vOutro, ' +
                    '0 as W_vII , ' +
                    'Sum(coalesce(si.valoripiprod,0)) as W_vIPI, ' +
                    'Sum(coalesce(si.valorpisprod,0)) as W_vPIS, ' +
                    'Sum(coalesce(si.valorcofinsprod,0)) as W_vCOFINS ' +
                    ' from saidas s, saidasitens si, itens i ' +
                    ' where si.saida = s.saida ' +
                    ' and i.item = si.item ' +
                    ' and s.saida = :Saida ' +
                    'group by  s.saida, s.total, coalesce(s.basecalcicms,0), coalesce(s.basecalcsubst,0), ' +
                    'coalesce(s.valoricms,0), coalesce(s.totalitens123,0), coalesce(s.valorseguro,0), ' +
                    'coalesce(s.desconto,0),   coalesce(s.frete,0), coalesce(s.valoricmssubst,0), coalesce(s.outrasdespesas,0) ';
            end;
        {Detalhamento dos itens em Saidas itens}
        with DMProjeto.Q_SQL2 do
            begin
                Close;
                Sql.Text := 'Select ' +
                    'si.sequencia as nItem, ' +
                    'Null as infAdProd, ' +
                    'i.codigo as cProd, ' +
                    'i.codigobarras as cEAN, ' +
                    'si.descricao as xProd, ' +
                    'Null as NCM, ' +
                    'Null as EXTIPI, ' +
                    'Null as genero, ' +
                    'si.cfopcst as CFOP, ' +
                    'si.unidade as uCom, ' +
                    'si.Quantidade as qCom, ' +
                    'si.preco as vUnCom, ' +
                    'si.subtotalitem as vProd, ' +
                    'i.codigobarras as cEANTrib, ' +
                    'si.unidade as uTrib, ' +
                    'si.quantidade as qTrib, ' +
                    'si.preco as vUnTrib, ' +
                    '0 as vFrete, ' +
                    '0 as vSeg, ' +
                    'si.RateioDesconto as vDesc, ' +
                    'i.origemmercadoria as orig, ' +
                    'si.cst as CST, ' +
                    'i.modalidadebcicms as modBC, ' +
                    ' si.basecalcicmsprod as vBC, ' +
                    'si.aliqicms as pICMS, ' +
                    'si.valoricmsprod as vICMS, ' +
                    'i.modalidadebcicmsst as modBCST, ' +
                    'i.tva as pMVAST, ' +
                    'i.reducaocst as pRedBCST, ' +
                    '(si.subtotalitem - si.rateiodesconto) as vBCST, ' +
                    'si.valoricmssubstprod as vICMSST, ' +
                    'i.idtribfederal as HasIPI, ' +
                    'i.piscofins HasPisCofins, ' +
                    'i.cstipi, i.cstpiscofins, ' +
                    'coalesce(i.IPIVenda,0) as pIPI, ' +
                    'coalesce(i.AliqPis,0) as pPis, ' +
                    'coalesce(i.AliqCofins,0) as pCofins, ' +
                    'coalesce(si.ValorIPIProd,0) as vIPI, ' +
                    'coalesce(si.ValorPISProd,0) as vPIS, ' +
                    'coalesce(si.ValorCofinsProd,0) as vCofins, ' +
                    'coalesce(si.SubTotalItem,0) as vBCPISCOFINS ' +
                    ' from saidas s, saidasitens si, itens i ' +
                    ' where si.saida = s.saida ' +
                    ' and i.item = si.item ' +
                    ' and s.saida = :Saida ';
            end;
        {Quantidade para alimentar o gr�fico}
        with DMProjeto.Q_SQL do
            begin
                nLinhasSelect := Grid.nQuantidadeSelecionada;
                {Cabe�alho da Nota com Emitente e Cliente}
                Close;
                Sql.Text :=
                    ' Select ' +
                    's.saida, ' +
                    'u.cduf as cUF, ' +
                    'Null as cNF, ' +
                    't.descricao as natOp, ' +
                    'case when s.planopagamento > 0 then 1 else 0 end as indpag, ' +
                    '''55'' as mod, ' +
                    '0 as serie, ' +
                    's.numero as nNF, ' +
                    's.Data as dEmi, ' +
                    's.Data as dSaiEnt, ' +
                    '1 as tpNF, ' +
                    'fe.municipio as cMunFG, ' +
                    '1 as tpImp, ' +
                    '1 as tpEmis, ' +
                    'Null as cDV, ' +
                    '1 as tpAmb, ' +
                    '1 as finNFe, ' +
                    '3 as procEmi, ' +
                    '''1.3.2'' as verProc, ' +
                    'fe.razao as C_xNome, ' +
                    'fe.nome as C_xFant, ' +
                    'fe.inscricao_est as C_IE, ' +
                    'e.inscricao_est_sub as C_IEST, ' +
                    'fe.inscricao_mun as C_IM, ' +
                    'cnae.Codigo as C_CNAE, ' +
                    'case when fe.pessoa_fj = ''J'' then fe.cpf_cnpj else Null end as C_CNPJ, ' +
                    'case when fe.pessoa_fj = ''F'' then fe.cpf_cnpj else Null end as C_CPF, ' +
                    'fe.endereco as C_xLgr, ' +
                    'e.numero as C_nro, ' +
                    'e.complemento as C_xCpl, ' +
                    'fe.bairro as C_xBairro, ' +
                    'fe.municipio as C_cMun, ' +
                    'fe.Cidade as C_xMun, ' +
                    'fe.uf as C_UF, ' +
                    'fe.cep as C_CEP, ' +
                    '''1058'' as C_cPais, ' +
                    '''BRASIL'' as C_xPais, ' +
                    'Null as C_Fone, ' +
                    'c.razao as E_xNome, ' +
                    'c.inscricao_est as E_IE, ' +
                    'c.suframa as E_ISUF, ' +
                    'case when c.pessoa_fj = ''J'' then c.cpf_cnpj else Null end as E_CNPJ, ' +
                    'case when c.pessoa_fj = ''F'' then c.cpf_cnpj else Null end as E_CPF, ' +
                    'c.endereco as E_xLgr, ' +
                    'c.nro as E_nro, ' +
                    'Null as E_xCpl, ' +
                    'c.bairro as E_xBairro, ' +
                    'c.municipio as E_cMun, ' +
                    'Null as E_xMun, ' +
                    'c.uf as E_UF, ' +
                    'c.cep as E_CEP, ' +
                    '''1058'' as E_cPais, ' +
                    '''BRASIL'' as E_xPais, ' +
                    'Null as E_Fone, ' +
                    's.TipoFrete as X_TPFrete, ' +
                    'x.razao as X_xNome, ' +
                    'x.inscricao_est as X_IE, ' +
                    'x.endereco as X_xEnder, ' +
                    'x.uf as X_UF, ' +
                    'x.Cidade as X_Mun, ' +
                    'case when x.pessoa_fj = ''J'' then x.cpf_cnpj else Null end as X_CNPJ, ' +
                    'case when x.pessoa_fj = ''F'' then x.cpf_cnpj else Null end as X_CPF ' +
                    ' from saidas s ' +
                    '    inner join  favorecidos c on c.favorecido = s.favorecido ' +
                    '    inner join Empresas e on e.favorecido = -1 ' +
                    '    inner join Favorecidos fe on fe.favorecido = e.favorecido ' +
                    '    inner join ufs u on u.uf = fe.uf ' +
                    '    inner join cnaes cnae on e.cnae = cnae.cnae ' +
                    '    inner join tiposmovimento t on t.tipomovimento = s.tipomovimento ' +
                    '    left Join favorecidos x on s.transportadora = x.favorecido ' +
                    ' where s.saida in (' + sNotas + ')';
                Open;
                ArqDestino.Add('NOTA FISCAL|' + IntToStr(nNotas));
                Barra.Max := nLinhasSelect;
                Barra.Position := 0;
                while not Eof do
                    begin
                        Barra.Position := (Barra.Position + 1);
                        ArqDestino.Add('A|1.10|NFe');
                        ArqDestino.Add('B|' +
                            Trim(FieldByName('cUF').AsString) + '|' +
                            Trim(FieldByName('cNF').AsString) + '|' +
                            Trim(Copy(FieldByName('natOP').AsString, 1, 60)) + '|' +
                            iif(FieldByName('indPag').Value = 0, '0', '1') + '|' +
                            Trim(FieldByName('mod').AsString) + '|' +
                            Trim(FieldByName('serie').AsString) + '|' +
                            Trim(Sonumeros(Copy(FieldByName('nNF').AsString, 1, 9), 9)) + '|' +
                            FormatDateTime('YYYY-MM-DD', FieldByName('dEmi').AsDateTime) + '|' +
                            FormatDateTime('YYYY-MM-DD', FieldByName('dSaiEnt').AsDateTime) + '|' +
                            Trim(FieldByName('tpNF').AsString) + '|' +
                            Trim(FieldByName('cMunFG').AsString) + '|' +
                            Trim(FieldByName('tpImp').AsString) + '|' +
                            Trim(FieldByName('tpEmis').AsString) + '|' +
                            Trim(FieldByName('cDV').AsString) + '|' +
                            Trim(FieldByName('tpAmb').AsString) + '|' +
                            Trim(FieldByName('finNFe').AsString) + '|' +
                            Trim(FieldByName('procEmi').AsString) + '|' +
                            Trim(FieldByName('verProc').AsString)
                            );
                        ArqDestino.Add('C|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xNome').AsString, 1, 60)))) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xFant').AsString, 1, 60)))) + '|' +
                            Trim(RestringirCarac(FieldByName('C_IE').AsString)) + '|' +
                            Trim(RestringirCarac(FieldByName('C_IEST').AsString)) + '|' +
                            Trim(RestringirCarac(FieldByName('C_IM').AsString)) + '|' +
                            Trim(RestringirCarac(FieldByName('C_CNAE').AsString)));
                        if FieldByName('C_CPF').IsNull then
                            ArqDestino.Add('C02|' + Trim(RestringirCarac(FieldByName('C_CNPJ').AsString)))
                        else
                            ArqDestino.Add('C02a|' + Trim(RestringirCarac(FieldByName('C_CPF').AsString)));
                        ArqDestino.Add('C05|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xLgr').AsString, 1, 60)))) + '|' +
                            Trim(Copy(FieldByName('C_nro').AsString, 1, 60)) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xCpl').AsString, 1, 60)))) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xBairro').AsString, 1, 60)))) + '|' +
                            Trim(FieldByName('C_cMun').AsString) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('C_xMun').AsString, 1, 60)))) + '|' +
                            Trim(Copy(FieldByName('C_UF').AsString, 1, 02)) + '|' +
                            Trim(Copy(SoNumeros(FieldByName('C_CEP').AsString, 0), 1, 08)) + '|' +
                            Trim(FieldByName('C_cPais').AsString) + '|' +
                            Trim(Copy(FieldByName('C_xPais').AsString, 1, 60)) + '|' +
                            Trim(Copy(SoNumeros(FieldByName('C_Fone').AsString, 0), 1, 10))
                            );
                        ArqDestino.Add('E|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('E_xNome').AsString, 1, 60)))) + '|' +
                            Trim(RestringirCarac(FieldByName('E_IE').AsString)) + '|' +
                            Trim(RestringirCarac(FieldByName('E_ISUF').AsString)));
                        if FieldByName('E_CPF').IsNull then
                            ArqDestino.Add('E02|' + Trim(RestringirCarac(FieldByName('E_CNPJ').AsString)))
                        else
                            ArqDestino.Add('E03|' + Trim(RestringirCarac(FieldByName('E_CPF').AsString)));
                        ArqDestino.Add('E05|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('E_xLgr').AsString, 1, 60)))) + '|' +
                            Trim(Copy(FieldByName('E_nro').AsString, 1, 60)) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('E_xCpl').AsString, 1, 60)))) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('E_xBairro').AsString, 1, 60)))) + '|' +
                            Trim(FieldByName('E_cMun').AsString) + '|' +
                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('E_xMun').AsString, 1, 60)))) + '|' +
                            Trim(Copy(FieldByName('E_UF').AsString, 1, 02)) + '|' +
                            Trim(Copy(SoNumeros(FieldByName('E_CEP').AsString, 0), 1, 08)) + '|' +
                            Trim(FieldByName('E_cPais').AsString) + '|' +
                            Trim(Copy(FieldByName('E_xPais').AsString, 1, 60)) + '|' +
                            Trim(Copy(SoNumeros(FieldByName('E_Fone').AsString, 0), 1, 10))
                            );
                        with DMProjeto.Q_SQL2 do
                            begin
                                Close;
                                ParamByName('Saida').Value := DMProjeto.Q_Sql.FieldByName('Saida').Value;
                                Open;
                                while not DMProjeto.Q_SQL2.Eof do
                                    begin
                                        ArqDestino.Add('H|' + FieldByName('nItem').AsString + '|');
                                        ArqDestino.Add('I|' +
                                            Trim(FieldByName('cProd').AsString) + '|' +
                                            Trim(FieldByName('cEAN').AsString) + '|' +
                                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(FieldByName('xProd').AsString))) + '|' +
                                            Trim(FieldByName('NCM').AsString) + '|' +
                                            Trim(FieldByName('EXTIPI').AsString) + '|' +
                                            Trim(FieldByName('genero').AsString) + '|' +
                                            Trim(FieldByName('CFOP').AsString) + '|' +
                                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(FieldByName('uCom').AsString))) + '|' +
                                            Trim(iif(FieldByName('qCom').Value = 0, ' ', FormatFloat('0.0000', FieldByName('qCom').Value))) + '|' +
                                            Trim(iif(FieldByName('vUnCom').Value = 0, ' ', FormatFloat('0.0000', FieldByName('vUnCom').Value))) + '|' +
                                            Trim(iif(FieldByName('vProd').Value = 0, ' ', FormatFloat('0.00', FieldByName('vProd').Value))) + '|' +
                                            Trim(FieldByName('cEANTrib').AsString) + '|' +
                                            Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(FieldByName('uTrib').AsString))) + '|' +
                                            Trim(iif(FieldByName('qTrib').Value = 0, ' ', FormatFloat('0.0000', FieldByName('qTrib').Value))) + '|' +
                                            Trim(iif(FieldByName('vUnTrib').Value = 0, ' ', FormatFloat('0.0000', FieldByName('vUnTrib').Value))) + '|' +
                                            Trim(iif(FieldByName('vFrete').Value = 0, ' ', FormatFloat('0.00', FieldByName('vFrete').Value))) + '|' +
                                            Trim(iif(FieldByName('vSeg').Value = 0, ' ', FormatFloat('0.00', FieldByName('vSeg').Value))) + '|' +
                                            Trim(iif(FieldByName('vDesc').Value = 0, ' ', FormatFloat('0.00', FieldByName('vDesc').Value))));
                                        ArqDestino.Add('M|');
                                        ArqDestino.Add('N|');
                                        case FieldByName('CST').AsInteger of
                                            0:
                                                begin
                                                    ArqDestino.Add('N02|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value)))
                                                        );
                                                end;
                                            10:
                                                begin
                                                    ArqDestino.Add('N03|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value))) + '|' +
                                                        Trim(FieldByName('modBCST').AsString) + '|' +
                                                        Trim(iif(FieldByName('pMVAST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pMVAST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pRedBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMSST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMSST').Value)))
                                                        );
                                                end;
                                            20:
                                                begin
                                                    ArqDestino.Add('N04|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('pRedBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value)))
                                                        );
                                                end;
                                            30:
                                                begin
                                                    ArqDestino.Add('N05|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBCST').AsString) + '|' +
                                                        Trim(iif(FieldByName('pMVAST').value = 0, ' ', FormatFloat('0.00', FieldByName('pMVAST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pRedBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMSST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMSST').Value)))
                                                        );
                                                end;
                                            40:
                                                begin
                                                    ArqDestino.Add('N06|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString)
                                                        );
                                                end;
                                            51:
                                                begin
                                                    ArqDestino.Add('N07|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('pRedBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value)))
                                                        );
                                                end;
                                            60:
                                                begin
                                                    ArqDestino.Add('N08|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(iif(FieldByName('vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCST').Value))) + '|' +
                                                        Trim(FormatFloat('0.00', FieldByName('vICMSST').Value))
                                                        );
                                                end;
                                            70:
                                                begin
                                                    ArqDestino.Add('N09|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('pRedBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value))) + '|' +
                                                        Trim(FieldByName('modBCST').AsString) + '|' +
                                                        Trim(iif(FieldByName('pMVAST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pMVAST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pRedBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMSST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMSST').Value)))
                                                        );
                                                end;
                                            90:
                                                begin
                                                    ArqDestino.Add('N10|' +
                                                        Trim(FieldByName('orig').AsString) + '|' +
                                                        Trim(FieldByName('CST').AsString) + '|' +
                                                        Trim(FieldByName('modBC').AsString) + '|' +
                                                        Trim(iif(FieldByName('pRedBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMS').Value))) + '|' +
                                                        Trim(FieldByName('modBCST').AsString) + '|' +
                                                        Trim(iif(FieldByName('pMVAST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pMVAST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pRedBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('pRedBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCST').Value))) + '|' +
                                                        Trim(iif(FieldByName('pICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pICMS').Value))) + '|' +
                                                        Trim(iif(FieldByName('vICMSST').Value = 0, ' ', FormatFloat('0.00', FieldByName('vICMSST').Value)))
                                                        );
                                                end;
                                        end;
                                        {Produto Incide em IPI}
                                        {Para nunca entrar eu coloquei -1}
                                        if FieldByName('HasIPI').Value = -1 then
                                            begin
                                                ArqDestino.Add('O|||||999');
                                                case FieldByName('CSTIPI').AsInteger of
                                                    0, 49, 50, 99:
                                                        begin
                                                            ArqDestino.Add('O07|' + Trim(FieldByName('CSTIPI').AsString) + '|' + Trim(iif(FieldByName('vIPI').Value = 0, ' ', FormatFloat('0.00', FieldByName('vIPI').Value))));
                                                            ArqDestino.Add('O10|' + Trim(iif(FieldByName('vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBC').Value))) + '|' + Trim(iif(FieldByName('pIPI').Value = 0, ' ', FormatFloat('0.00', FieldByName('pIPI').Value))));
                                                        end;
                                                    1, 2, 3, 4, 5, 51, 52, 53, 54, 55:
                                                        begin
                                                            ArqDestino.Add('O08|' + Trim(FieldByName('CSTIPI').AsString));
                                                        end;
                                                end;

                                            end; { if FieldByName('HasIPI').Value = 1 Then begin}

                                        if FieldByName('HasPisCofins').AsString = 'S' then
                                            begin
                                                ArqDestino.Add('Q|');
                                                case FieldByName('cstpiscofins').Value of
                                                    1, 2:
                                                        begin
                                                            ArqDestino.Add('Q02|' +
                                                                Trim(FieldByName('cstpiscofins').AsString) + '|' +
                                                                Trim(iif(FieldByName('vBCPISCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCPISCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('pPIS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pPIS').Value))) + '|' +
                                                                Trim(iif(FieldByName('vPIS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vPIS').Value))));
                                                        end;
                                                    3:
                                                        begin
                                                            {Para PIS/CoFINS por Quantidade, N�o iremos implementar agora.}
                                                        end;
                                                    4, 6, 7, 8, 9:
                                                        begin
                                                            ArqDestino.Add('Q04|' + Trim(FieldByName('cstpiscofins').AsString));
                                                        end;
                                                    99:
                                                        begin
                                                            ArqDestino.Add('Q05|' +
                                                                Trim(FieldByName('cstpiscofins').AsString) + '|' +
                                                                Trim(iif(FieldByName('vPIS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vPIS').Value))) + '|' +
                                                                Trim(iif(FieldByName('vBCPISCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCPISCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('pPIS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pPIS').Value))));
                                                        end;

                                                end;
                                                ArqDestino.Add('S|');
                                                case FieldByName('cstpiscofins').Value of
                                                    1, 2:
                                                        begin
                                                            ArqDestino.Add('S02|' +
                                                                Trim(FieldByName('cstpiscofins').AsString) + '|' +
                                                                Trim(iif(FieldByName('vBCPISCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCPISCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('pCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('vCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vCOFINS').Value))));
                                                        end;
                                                    3:
                                                        begin
                                                            {Para PIS/CoFINS por Quantidade, N�o iremos implementar agora.}
                                                        end;
                                                    4, 6, 7, 8, 9:
                                                        begin
                                                            ArqDestino.Add('S04|' + Trim(FieldByName('cstpiscofins').AsString));
                                                        end;
                                                    99:
                                                        begin
                                                            ArqDestino.Add('S05|' +
                                                                Trim(FieldByName('cstpiscofins').AsString) + '|' +
                                                                Trim(iif(FieldByName('vCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('vBCPISCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('vBCPISCOFINS').Value))) + '|' +
                                                                Trim(iif(FieldByName('pCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('pCOFINS').Value))));
                                                        end;

                                                end;
                                            end; {if FieldByName('HasPisCofins').AsString = 'S' then Begin}
                                        Next;
                                    end;
                                with DMProjeto.Q_SQL3 do
                                    begin
                                        Close;
                                        ParamByName('Saida').Value := DMProjeto.Q_Sql.FieldByName('Saida').Value;
                                        Open;
                                        ArqDestino.Add('W|');
                                        ArqDestino.Add('W02|' +
                                            Trim(iif(FieldByName('W_vBC').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vBC').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vICMS').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vICMS').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vBCST').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vBCST').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vST').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vST').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vProd').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vProd').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vFrete').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vFrete').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vSeg').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vSeg').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vDesc').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vDesc').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vII').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vII').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vIPI').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vIPI').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vPIS').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vPIS').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vCOFINS').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vCOFINS').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vOutro').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vOutro').Value))) + '|' +
                                            Trim(iif(FieldByName('W_vNF').Value = 0, ' ', FormatFloat('0.00', FieldByName('W_vNF').Value))));
                                    end;
                            end;
                        if FieldByName('X_TPFrete').AsString = 'F' then
                            begin
                                {Frete CIF}
                                ArqDestino.Add('X|0');
                                ArqDestino.Add('X03|' +
                                    Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('X_xNome').AsString, 1, 60)))) + '|' +
                                    Trim(RestringirCarac(FieldByName('X_IE').AsString)) + '|' +
                                    Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Copy(FieldByName('X_xEnder').AsString, 1, 60)))) + '|' +
                                    Trim(RestringirCarac(FieldByName('X_UF').AsString)) + '|' +
                                    Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(FieldByName('X_Mun').AsString))));
                                if FieldByName('X_CPF').IsNull then
                                    ArqDestino.Add('X04|' + Trim(RestringirCarac(FieldByName('X_CNPJ').AsString)))
                                else
                                    ArqDestino.Add('X05|' + Trim(RestringirCarac(FieldByName('X_CPF').AsString)));
                            end
                        else
                            begin
                                {Frete FOB}
                                ArqDestino.Add('X|1');
                            end;

                        Next;
                    end; {while not Eof do begin}
            end;
        ArqDestino.SaveToFile(DMProjeto.ProgPath + '\NFe\NOTAFISCAL.TXT');
        Application.MessageBox('Exporta��o Realizada Com �xito', 'Aviso', mb_ok);
        Barra.Position := 0;
        DecimalSeparator := LOCALE_SDECIMAL;
    except
        Application.MessageBox('Erro ao Realizar a Exporta��o', 'Erro', mb_ok);
    end;

end;

procedure TDlgEscolherOperacao.btFecharCadastroClick(Sender: TObject);
begin
    ModalResult := -1;
end;

procedure TDlgEscolherOperacao.btGravarClick(Sender: TObject);
begin
    inherited;
    if Grid.Selecionados <> '' then
        Grid.FirstSelected;

    DMProjeto.LimparParametrosForm;
    DMProjeto.SetParametrosForm([chkMontagem.Checked and chkPorCustoContabil.Checked]);
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
    dfCampo2.Clear;
    dfCampo3.Clear;
    dfCampo4.Clear;

    dfItem.Clear;
    dfQtd1.Value := 0;
    dfQtd2.Value := 0;
    dfPreco1.Value := 0;
    dfPreco2.Value := 0;
    //cmbGrupo.LookupKeyValue := null;
    //cmbFabricante.LookupKeyValue := null;
    //cmbZonas.LookupKeyValue := null;
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

    if not DMProjeto.LerPermissao('FrmSaidas', 'FatLivreVnd') then
        begin
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
    C_STatus.Open;
    C_Zonas.Open;
    C_Municipios.Open;

    chStatus.SetDataSet(C_Status);
    chFabricantes.SetDataSet(C_Fabricantes);
    chGrupos.SetDataSet(C_Grupos);
    chZonasClientes.SetDataSet(C_Zonas);
    chCidades.SetDataSet(C_Municipios);
    dfDataI.Date := DMProjeto.dDataSistema;
    dfDataF.Date := DMProjeto.dDataSistema;

    cmbTipoMovimento.LookupKeyValue := nTipo;

    pmPedidosCaixa.Visible := DMProjeto.Parametro('ExisteCaixa') = 'S';
    chStatus.SetSelecionados('AABCDEFGHLLNPRSVXZ');
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
    nDec: Integer;
begin
    inherited;

    dfCampo4.Visible := lbCampo4.Visible;

    lbCampo1.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO1').asString);
    lbCampo2.Caption := (C_TiposMovimento.FieldByName('TIT1_CAMPO1').asString);
    if not C_TiposMovimento.Active then
        exit;

    nDec := 0;

    {Campos Adicionais}
    lbCampo1.Visible := (C_TiposMovimentoCB_CAMPO01.Value = 'S');
    lbCampo2.Visible := (C_TiposMovimentoCB_CAMPO02.Value = 'S');
    lbCampo3.Visible := (C_TiposMovimentoCB_CAMPO03.Value = 'S');
    lbCampo4.Visible := (C_TiposMovimentoCB_CAMPO04.Value = 'S');

    //dfCampo1.Visible := lbCampo1.Visible;
    dfCampo2.Visible := lbCampo2.Visible;
    dfCampo3.Visible := lbCampo3.Visible;
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
        inc(nDec, 20);
    if lbCampo2.Visible or lbColuna2.Visible then
        inc(nDec, 20);
    if lbCampo3.Visible or lbColuna3.Visible then
        inc(nDec, 20);
    if lbCampo4.Visible or lbColuna4.Visible then
        inc(nDec, 20);

    pnGrid.Top := 143 + nDec;
    pnGrid.Height := 266 - nDec;

end;

procedure TDlgEscolherOperacao.Pesquisar;
begin
    if (chkMontagem.Checked) then
        begin
            Q_Saidas.SQL.Text := ' select m.montagem as saida, m.empresa, 0 as pdv, cast(m.numero as varchar(12)) as numero, m.data, ' +
                'cast((select sum(pp.preco * mi.quantidade) from montagensfilhos mi inner join produtospreco pp on pp.item = mi.item ' +
                'where mi.montagem = m.montagem and pp.tabelapreco = 0) as numeric(15, 6)) as total, ' +
                'cast(m.obs as varchar(500)) as obs, cast(''Montagem de Produto'' as varchar(50)) as nomecliente, ' +
                'cast(o.nome as varchar(50)) as nomevendedor ' +
                'from montagens m left join operadores o on m.montador = o.operador inner join statusmontagens sm on m.status = sm.status ';
            Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + Where;
        end
    else
        Q_Saidas.SQL.Text := replace(sComando, 'and XXX', IIF(Where <> '', ' and ', '') + Where);

    C_Saidas.Close;
    C_Saidas.Active := True;

end;

function TDlgEscolherOperacao.ConstruirWhere: string;
var
    sWhere, sStatus, sZonasCliente, sCidades: string;
begin

    sWhere := '';

    if (chkMontagem.Checked) then
        begin
            sWhere := ' where sm.status in (2, 4) and (m.data between ''' + FormatDateTime('DD.MM.YYYY', dfDataI.Date) + ''' and ''' + FormatDateTime('DD.MM.YYYY', dfDataF.Date) + ''')';
        end
    else
        begin
            if dfNumero.Text <> '' then
                sWhere := CExp(sWhere, ' and ') + dfNumero.TagStr + QuotedStr(CompleteCode(Trim(dfNumero.Text), 7))
            else
                begin
                    sWhere := ConstruirWhereItens;

                    if cmbTipoMovimento.LookupKeyValue <> null then
                        sWhere := CExp(sWhere, ' and ') + cmbTipoMovimento.TagStr + IntToStr(cmbTipoMovimento.LookupKeyValue);

                    if (dfDataI.Text[1] <> ' ') and (dfDataF.Text[1] <> ' ') then
                        sWhere := CExp(sWhere, ' and ') + ' (' + dfDataI.TagStr + ' ' +
                            QuotedStr(MesDiaAno(Trunc(dfDataI.Date))) + ' and ' +
                            QuotedStr(MesDiaAno(Trunc(dfDataF.Date))) + ' )';

                    //if cmbZonas.LookupKeyValue <> null then
                    //  sWhere := CExp(sWhere,' and ') + cmbZonas.TagStr + IntToStr(cmbZonas.LookupKeyValue);

                    if dfCliente.ID > 0 then
                        sWhere := CExp(sWhere, ' and ') + dfCliente.TagStr + IntToStr(dfCliente.ID);

                    if dfTotal1.Value > 0 then
                        sWhere := CExp(sWhere, ' and ') + dfTotal1.TagStr + dfTotal1.Text;

                    if dfTotal2.Value > 0 then
                        sWhere := CExp(sWhere, ' and ') + dfTotal2.TagStr + dfTotal2.Text;

                    //if dfCampo1.Text <> '' then
                    //  sWhere := CExp(sWhere, ' and ') + dfCampo1.TagStr + QuotedStr(dfCampo1.Text + '%');

                    if dfCampo2.Text <> '' then
                        sWhere := CExp(sWhere, ' and ') + dfCampo2.TagStr + QuotedStr(dfCampo2.Text + '%');

                    if dfCampo3.Text <> '' then
                        sWhere := CExp(sWhere, ' and ') + dfCampo3.TagStr + QuotedStr(dfCampo3.Text + '%');

                    if dfCampo4.Text <> '' then
                        sWhere := CExp(sWhere, ' and ') + dfCampo4.TagStr + QuotedStr(dfCampo4.Text + '%');

                end;

            if dfVendedor.ID > 0 then
                sWhere := CExp(sWhere, ' and ') + dfVendedor.TagStr + IntToStr(dfVendedor.ID);
            sStatus := chStatus.Selecionados;
            if (sStatus <> '') then
                sWhere := sWhere + ' and (s.Status In (' + sStatus + ') Or (s.Status is Null))';

            sZonasCliente := chZonasClientes.Selecionados;
            if sZonasCliente <> '' then
                sWhere := sWhere + ' and c.zona in(' + sZonasCliente + ')';

            sCidades := chCidades.Selecionados;
            if sCidades <> '' then
                sWhere := sWhere + ' and c.municipio in (' + sCidades + ')';

            if (cbSaidasRomaneios.Checked) then
                sWhere := sWhere + ' and (s.Saida Not In (Select r.saida from romaneiosaidas r)) ';
        end;

    result := sWhere;

end;

function TDlgEscolherOperacao.ConstruirWhereItens: string;
var
    sWhere, sFabricantes, sGrupos: string;
begin
    sWhere := '';

    if dfItem.ID > 0 then
        sWhere := CExp(sWhere, ' and ') + dfItem.TagStr + IntToStr(dfItem.ID);

    //if cmbGrupo.LookupKeyValue <> null then
    //  sWhere := CExp(sWhere,' and ') + cmbGrupo.TagStr + IntToStr(cmbGrupo.LookupKeyValue);

    //if cmbFabricante.LookupKeyValue <> null then
    //  sWhere := CExp(sWhere,' and ') + cmbFabricante.TagStr + IntToStr(cmbFabricante.LookupKeyValue);

    if dfQtd1.Value > 0 then
        sWhere := CExp(sWhere, ' and ') + dfQtd1.TagStr + dfQtd1.Text;

    if dfQtd2.Value > 0 then
        sWhere := CExp(sWhere, ' and ') + dfQtd2.TagStr + dfQtd2.Text;

    if dfPreco1.Value > 0 then
        sWhere := CExp(sWhere, ' and ') + dfPreco1.TagStr + dfPreco1.Text;

    if dfPreco2.Value > 0 then
        sWhere := CExp(sWhere, ' and ') + dfPreco2.TagStr + dfPreco2.Text;

    if dfColuna1.Text <> '' then
        sWhere := CExp(sWhere, ' and ') + dfColuna1.TagStr + QuotedStr(dfColuna1.Text + '%');

    if dfColuna2.Text <> '' then
        sWhere := CExp(sWhere, ' and ') + dfColuna2.TagStr + QuotedStr(dfColuna2.Text + '%');

    if dfColuna3.Text <> '' then
        sWhere := CExp(sWhere, ' and ') + dfColuna3.TagStr + QuotedStr(dfColuna3.Text + '%');

    if dfColuna4.Text <> '' then
        sWhere := CExp(sWhere, ' and ') + dfColuna4.TagStr + QuotedStr(dfColuna4.Text + '%');

    sFabricantes := chFabricantes.Selecionados;
    if sFabricantes <> '' then
        sWhere := CExp(sWhere, ' and') + ' i.fabricante in (' + sFabricantes + ')';

    sGrupos := chGrupos.Selecionados;
    if sGrupos <> '' then
        sWhere := CExp(sWhere, ' and') + ' i.grupo in (' + sGrupos + ')';

    if sWhere <> '' then
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Select Distinct si.Saida ' +
                    'from	 (SAIDAS s inner join SAIDASITENS si on s.saida = si.saida Inner JOIN ITENS I on I.ITEM = si.ITEM Inner Join Favorecidos f on f.favorecido = s.favorecido) ' +
                    'where ' + sWhere;
                try
                    Open;

                    sWhere := '';
                    while not EOF do
                        begin
                            sWhere := CExp(sWhere, ',') + FieldByName('Saida').asString;
                            Next;
                        end;

                    Close;

                    if sWhere <> '' then
                        sWhere := ' s.Saida in (' + sWhere + ') ';

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
    IPWhere: string;
begin
    inherited;

    IPWhere := ConstruirWhere;

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Max(s.Saida) from Saidas s ' +
                IIF(IPWhere <> '', ' where ' + IPWhere, '');
            try
                Open;

                if Fields[0].asInteger > 0 then
                    IPWhere := ' s.Saida = ' + Fields[0].asString
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
    Pesquisar(' s.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema + 1)));
end;

procedure TDlgEscolherOperacao.VencemHoje1Click(Sender: TObject);
begin
    inherited;
    Pesquisar(' where s.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
end;

procedure TDlgEscolherOperacao.VencidasOntem1Click(Sender: TObject);
begin
    inherited;
    Pesquisar(' where s.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema - 1)));
end;

procedure TDlgEscolherOperacao.odasasVencidas1Click(Sender: TObject);
begin
    inherited;
    Pesquisar(' where s.Validade <= ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
end;

procedure TDlgEscolherOperacao.ltimoCancelado1Click(Sender: TObject);
var
    IPWhere: string;
begin
    inherited;

    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Max(s.Saida) from Saidas s ' +
                IIF(IPWhere <> '', ' where ' + IPWhere + ' and ', ' where ');

            SQL.Text := SQL.Text + ' s.Situacao = ''C'' ';

            try
                Open;

                if Fields[0].asInteger > 0 then
                    IPWhere := ' s.Saida = ' + Fields[0].asString
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

    Pesquisar(' s.Situacao = ''N'' and s.Status = ''X'' and s.TipoPadrao in (2,3) ');

end;

procedure TDlgEscolherOperacao.GridCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if (Grid.GetFieldValue(ANode, 'Situacao', 'N') = 'S') then
        begin
            AFont.Color := clRed;
            AFont.Style := [fsStrikeOut];
        end;
end;

procedure TDlgEscolherOperacao.btComando2Click(Sender: TObject);
begin
    inherited;
    // Felipe   -       Adicionado os parametros EMPRESA e PDV para impressao correta dos produtos
    DMProjeto.ImprimirDocumentosSaida(C_SaidasSaida.Value, C_SaidasEMPRESA.Value, C_SaidasPDV.Value, True);
end;

procedure TDlgEscolherOperacao.btItensClick(Sender: TObject);
begin
    inherited;
    dbgItens.visible := btItens.down;
    if dbgItens.visible then
        begin
            Grid.Align := alTop;
            Grid.Height := 150;

            if not C_Itens.active then
                C_Itens.open;
        end
    else
        Grid.Align := alClient;
end;

procedure TDlgEscolherOperacao.peZonaCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := chStatus.Selecionados(true);
    Accept := true;
end;

procedure TDlgEscolherOperacao.peFabricanteCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := chFabricantes.Selecionados(true);
    Accept := true;
end;

procedure TDlgEscolherOperacao.peGruposCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := chGrupos.Selecionados(true);
    Accept := true;
end;

procedure TDlgEscolherOperacao.peZonasClientesCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := chZonasClientes.Selecionados(true);
    Accept := true;
end;

procedure TDlgEscolherOperacao.peCidadesCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := chCidades.Selecionados(true);
    Accept := true;
end;

procedure TDlgEscolherOperacao.sbExportarNfeClick(Sender: TObject);
begin
    inherited;
    ExportarNfe;
end;

procedure TDlgEscolherOperacao.chkMontagemClick(Sender: TObject);
begin
    inherited;
    chkPorCustoContabil.Visible := chkMontagem.Checked;
end;

end.

