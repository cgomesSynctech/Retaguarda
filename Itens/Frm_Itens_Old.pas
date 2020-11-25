unit Frm_Itens;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
    TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
    TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label, DBCtrls,
    TS_DBLookupComboBox, TS_DBMemo, Mask, TS_DBEdit, TS_DBCheckBox,
    TS_PageControl, TS_GroupBox,
    TS_LastDataObject, TS_DBText, db, TS_Bevel, TS_MaxPanel,
    CheckLst, TS_CheckListBox, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
    dxEditor, dxDBEdtr, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, dxDBTLCl, dxGrClms, TS_DBEditNumber,
    TS_DBPopupEdit, Dlg_PopupContas, teCtrls, TS_EffectsPanel,
    dxTLClms, TS_Shape, TS_DBButtonEdit, TS_PopupEdit, ExtDlgs, TS_CheckBox, Variants,
    TS_DBEditDate, BTOdeum, Placemnt, TS_LookupComboBox, TS_DBComboBox,
    TS_DBEditFavorecido, dxfProgressBar, TS_DBImageEdit, DBClient, TDM_Manutencao;

type
    TLblForClick = class(TLabel); //Classe para poder chamar o metodo click do label;

    TFrmItens = class(TFrmPadrao)
        cmbTipoItem: TTS_DBLookupComboBox;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        lbGrupo: TTS_Label;
        cmbGrupo: TTS_DBLookupComboBox;
        TS_Label20: TTS_Label;
        TS_Label21: TTS_Label;
        lbReferencia: TTS_Label;
        dfReferencia: TTS_DBEdit;
        pcItens: TTS_PageControl;
        tsProdutosInvent: TTS_TabSheet;
        tsProdutosSemInvent: TTS_TabSheet;
        tsMensagens: TTS_TabSheet;
        tsEncargos: TTS_TabSheet;
        TS_Label8: TTS_Label;
        lblPercent: TTS_Label;
        lblCReceita2: TTS_Label;
        dfPerc5: TTS_DBEditNumber;
        dfPrecoVenda5: TTS_DBEditNumber;
        cmbContaEncargo: TTS_DBPopupEdit;
        tsDescontos: TTS_TabSheet;
        TS_Label11: TTS_Label;
        lblPercent2: TTS_Label;
        lblCReceita3: TTS_Label;
        dfPerc6: TTS_DBEditNumber;
        dfPrecoVenda6: TTS_DBEditNumber;
        cmbContaDesconto: TTS_DBPopupEdit;
        tsSubTotais: TTS_TabSheet;
        tsServicos: TTS_TabSheet;
        pcEstoque: TTS_PageControl;
        tsEstoque: TTS_TabSheet;
        TS_Label24: TTS_Label;
        TS_Label25: TTS_Label;
        TS_Label26: TTS_Label;
        dfMinimo: TTS_DBEditNumber;
        dfMaximo: TTS_DBEditNumber;
        dfPontoPedido: TTS_DBEditNumber;
        lblEstoque1: TTS_Label;
        TS_Label28: TTS_Label;
        dfEstoque: TTS_DBEditNumber;
        dfCodigo: TTS_DBButtonEdit;
        df_Foto: TdxGraphicEdit;
        tsCalcPreco1: TTS_TabSheet;
        pdFoto: TOpenPictureDialog;
        btUltimosFornec: TTS_SpeedButton;
        btOutros: TTS_SpeedButton;
        ppmOutros: TTS_PopupMenu;
        AjustedeItens1: TMenuItem;
        CalcularEstoqueMnimo1: TMenuItem;
        ppmFoto: TTS_PopupMenu;
        CarregarFoto1: TMenuItem;
        N4: TMenuItem;
        LimparFoto1: TMenuItem;
        TS_DBEditNumber1: TTS_DBEditNumber;
        TS_Label60: TTS_Label;
        TS_Label62: TTS_Label;
        TS_DBMemo3: TTS_DBMemo;
        cmbContaDespesaEnc: TTS_DBPopupEdit;
        DigitacaoRapida1: TMenuItem;
        cbLockGrupo: TTS_CheckBox;
        TS_Label75: TTS_Label;
        TS_Label34: TTS_Label;
        dflocalizacao: TTS_DBEdit;
        N5: TMenuItem;
        ReajustedePreos1: TMenuItem;
        ppmIrPara: TTS_PopupMenu;
        ltimoGravado1: TMenuItem;
        N6: TMenuItem;
        ItensFatorLucroInadequado: TMenuItem;
        ItensComPrecoDandoPrejuizo: TMenuItem;
        Itenscom1: TMenuItem;
        EstoqueemPontodePedido1: TMenuItem;
        EstoqueabaixodoMnimo1: TMenuItem;
        ItensSemCustoMedioInformado: TMenuItem;
        ComissoInformada1: TMenuItem;
        DescontoMximoInformado1: TMenuItem;
        SemGrupo1: TMenuItem;
        imgsPreco: TImageList;
        DBEdit2: TDBEdit;
        comEstoqueacimadoMximo1: TMenuItem;
        SemFabricante1: TMenuItem;
        SemFornecedorPreferencial1: TMenuItem;
        QuantidadesdosLotesexistentes2: TMenuItem;
        pnCalcPreco: TTS_Panel;
        TS_Shape33: TTS_Shape;
        TS_Shape32: TTS_Shape;
        lbCustoAdicional: TTS_Label;
        lbLucro: TTS_Label;
        TS_Label29: TTS_Label;
        TS_Label46: TTS_Label;
        TS_Label77: TTS_Label;
        lbICMSAplicado: TTS_Label;
        TS_Label32: TTS_Label;
        TS_Label45: TTS_Label;
        TS_DBText8: TTS_DBText;
        TS_DBText9: TTS_DBText;
        lbComissaoAplicada: TTS_Label;
        TS_Shape36: TTS_Shape;
        TS_Label79: TTS_Label;
        TS_DBText12: TTS_DBText;
        imgPreco: TTS_Image;
        TS_Label86: TTS_Label;
        TS_DBText21: TTS_DBText;
        dfLucro: TTS_DBEditNumber;
        dfCustoAdic: TTS_DBEditNumber;
        DBEdit1: TDBEdit;
        dxfLabel1: TdxfLabel;
        dxfLabel2: TdxfLabel;
        dfPrecoCalc: TTS_DBEditNumber;
        TS_Label43: TTS_Label;
        DBEdit3: TDBEdit;
        DBEdit6: TDBEdit;
        DBEdit7: TDBEdit;
        DBEdit8: TDBEdit;
        cbRevenda: TTS_DBCheckBox;
        DBEdit9: TDBEdit;
        ItensComPrecoDiferenteDoCalculado: TMenuItem;
        N7: TMenuItem;
        N8: TMenuItem;
        N9: TMenuItem;
        ItensComCompensacao: TMenuItem;
        Desativados1: TMenuItem;
        CadastradosHoje1: TMenuItem;
        lbDataCadastro: TTS_Label;
        dfDataCadastro: TTS_DBEdit;
        Hoje1: TMenuItem;
        Ontem1: TMenuItem;
        EstaSemana1: TMenuItem;
        EsteMs1: TMenuItem;
        EstaQuinzena1: TMenuItem;
        EsteBimestre1: TMenuItem;
        EsteSemestre1: TMenuItem;
        EsteAno1: TMenuItem;
        ppmUnidades: TTS_PopupMenu;
        ppmPreco: TTS_PopupMenu;
        tsContabilidade1: TTS_TabSheet;
        lblContaReceita: TTS_Label;
        cmbContaVendas1: TTS_DBPopupEdit;
        cbLockConta: TTS_CheckBox;
        TS_Label16: TTS_Label;
        cmbContaCusto: TTS_DBPopupEdit;
        cbLockCtCusto: TTS_CheckBox;
        TS_Label19: TTS_Label;
        cmbContaInvent: TTS_DBPopupEdit;
        cbLockCtInventario: TTS_CheckBox;
        dbgMultUnidade: TTS_QDBGrid;
        dbgMultUnidadelkUnidade: TdxDBGridLookupColumn;
        dbgMultUnidadeFATOR: TdxDBGridMaskColumn;
        lbUltPrecoCompra: TTS_Label;
        TS_Label49: TTS_Label;
        dfDataCompra: TTS_DBEditDate;
        lbDescricaoVenda: TTS_Label;
        tsCaracteristicas1: TTS_TabSheet;
        TS_Shape1: TTS_Shape;
        lbPrecoVenda1: TTS_Label;
        lbComissao1: TTS_Label;
        lbDescMax1: TTS_Label;
        lbFab: TTS_Label;
        lblUnidade: TTS_Label;
        pnTabelaPreco: TTS_Panel;
        TS_Label55: TTS_Label;
        dbgTabelaPreco: TTS_QDBGrid;
        dbgTabelaPrecoColumn2: TdxDBGridColumn;
        dbgTabelaPrecoColumn4: TdxDBGridColumn;
        dbgTabelaPrecoColumn5: TdxDBGridColumn;
        dbgTabelaPrecoColumn6: TdxDBGridColumn;
        cmbUnidadePreco: TTS_LookupComboBox;
        dfPrecoVenda1: TTS_DBEditNumber;
        dfComissao1: TTS_DBEditNumber;
        dfDescMax1: TTS_DBEditNumber;
        cmbFabricante: TTS_DBLookupComboBox;
        cbLockFabricante: TTS_CheckBox;
        cmbUnidade: TTS_DBLookupComboBox;
        cbLockUnidades: TTS_CheckBox;
        lbUnidadeVarejo: TTS_Label;
        lbUnidadeCarga: TTS_Label;
        cmbUnidadeVarejo: TTS_DBLookupComboBox;
        cmbUnidadeCarga: TTS_DBLookupComboBox;
        lblEstoque: TTS_Label;
        dfEstoque_b: TTS_DBEditNumber;
        TS_Label17: TTS_Label;
        TS_Label33: TTS_Label;
        TS_Label65: TTS_Label;
        cbLockFornecedor: TTS_CheckBox;
        cmbUnidadeCompra: TTS_DBLookupComboBox;
        lblDescCompra: TTS_Label;
        cbControleValidade: TTS_DBCheckBox;
        lblTempoMedioValidade: TTS_Label;
        lblTempoMedioValidadeDias: TTS_Label;
        dfTempoMedioValidade: TTS_DBEditNumber;
        gbControleValidade: TTS_GroupBox;
        pnControl1: TTS_Panel;
        btCaracteristicas1: TTS_SpeedButton;
        btEstoques: TTS_SpeedButton;
        btCalcPreco1: TTS_SpeedButton;
        btCustom: TTS_SpeedButton;
        tsCustomizados1: TTS_TabSheet;
        pnCustomizados: TTS_Panel;
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
        btDefinirCampos: TTS_SpeedButton;
        pcSemEstoque: TTS_PageControl;
        tsCaracteristicas2: TTS_TabSheet;
        tsCalcPreco2: TTS_TabSheet;
        lbComissao2: TTS_Label;
        lbDescMax2: TTS_Label;
        dfComissao2: TTS_DBEditNumber;
        TS_DBCheckBox3: TTS_DBCheckBox;
        pnInfoCompras: TTS_Panel;
        TS_Label59: TTS_Label;
        TS_Label56: TTS_Label;
        dfDescMax2: TTS_DBEditNumber;
        TS_Shape2: TTS_Shape;
        lbPrecoVenda2: TTS_Label;
        dfPrecoVenda2: TTS_DBEditNumber;
        pnControl2: TTS_Panel;
        btCaracteristicas2: TTS_SpeedButton;
        btCalcPreco2: TTS_SpeedButton;
        btCustomizados2: TTS_SpeedButton;
        tsContabilidade2: TTS_TabSheet;
        lblCReceita: TTS_Label;
        cmbContaVendas2: TTS_DBPopupEdit;
        lblContaDespesa2: TTS_Label;
        cmbContaDespesa2: TTS_DBPopupEdit;
        tsCustomizados2: TTS_TabSheet;
        pcServicos: TTS_PageControl;
        tsCaracteristicas3: TTS_TabSheet;
        lbComissao3: TTS_Label;
        lbDescMax3: TTS_Label;
        TS_Shape4: TTS_Shape;
        lbPrecoVenda3: TTS_Label;
        dfComissao3: TTS_DBEditNumber;
        TS_DBCheckBox5: TTS_DBCheckBox;
        pnInfoCompraServ: TTS_Panel;
        TS_Label14: TTS_Label;
        TS_Label18: TTS_Label;
        dfDescMax3: TTS_DBEditNumber;
        dfPrecoVenda3: TTS_DBEditNumber;
        tsContabilidade3: TTS_TabSheet;
        TS_Label22: TTS_Label;
        lblContaDespesa3: TTS_Label;
        cmbContaVendas3: TTS_DBPopupEdit;
        cmbContaDespesa3: TTS_DBPopupEdit;
        tsCustomizados3: TTS_TabSheet;
        pnControl3: TTS_Panel;
        btCaracteristicas3: TTS_SpeedButton;
        btCalcPreco3: TTS_SpeedButton;
        btCustomizados3: TTS_SpeedButton;
        tsCalcPreco3: TTS_TabSheet;
        TS_Label5: TTS_Label;
        TS_Shape6: TTS_Shape;
        TS_Shape7: TTS_Shape;
        TS_Label6: TTS_Label;
        TS_Shape8: TTS_Shape;
        TS_Label7: TTS_Label;
        TS_Label10: TTS_Label;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        TS_Shape9: TTS_Shape;
        TS_Shape10: TTS_Shape;
        TS_DBEdit2: TTS_DBEdit;
        TS_Label13: TTS_Label;
        TS_DBText1: TTS_DBText;
        TS_DBText2: TTS_DBText;
        pnAtualizarPreco: TTS_Panel;
        btAtualizarPreco: TTS_SpeedButton;
        TS_DBEditNumber2: TTS_DBEditNumber;
        TS_Label15: TTS_Label;
        TS_DBEditNumber3: TTS_DBEditNumber;
        dfCompensaCusto: TTS_DBEditNumber;
        TS_DBEditNumber5: TTS_DBEditNumber;
        TS_DBEditNumber6: TTS_DBEditNumber;
        TS_DBEditNumber7: TTS_DBEditNumber;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        dbgMultUnidadeUnidade: TdxDBGridColumn;
        dfFornPreferencia: TTS_DBEditFavorecido;
        dfUltForn2: TTS_DBEditFavorecido;
        dfUltForn3: TTS_DBEditFavorecido;
        dbgTabelaPrecoColumn7: TdxDBGridColumn;
        pmSetPrecosCalcs: TMenuItem;
        DBEdit10: TDBEdit;
        ppmGrupo: TTS_PopupMenu;
        ConsiderarPercentualdoGrupo1: TMenuItem;
        dbgTabelaPrecoColumn3: TdxDBGridCalcColumn;
        DBEdit11: TDBEdit;
        TS_Label3: TTS_Label;
        TS_Label4: TTS_Label;
        N10: TMenuItem;
        Memorizar1: TMenuItem;
        lbBalanco: TdxfLabel;
        DBEdit4: TDBEdit;
        TS_Label9: TTS_Label;
        TS_DBLookupComboBox2: TTS_DBLookupComboBox;
        btSubItens: TTS_SpeedButton;
        GridcmbUnidade: TdxDBGridLookupColumn;
        GridITEM: TdxDBGridMaskColumn;
        GridTIPOITEM: TdxDBGridMaskColumn;
        GridCODIGO: TdxDBGridMaskColumn;
        GridDESCRICAOCOMPRA: TdxDBGridMaskColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridLOCALIZACAO: TdxDBGridMaskColumn;
        GridcmbTipoItem: TdxDBGridLookupColumn;
        GridlkContaVenda: TdxDBGridLookupColumn;
        GridlkContaCusto: TdxDBGridLookupColumn;
        GridlkContaInvent: TdxDBGridLookupColumn;
        GridcmbGrupoItem: TdxDBGridLookupColumn;
        GridlkFabricante: TdxDBGridLookupColumn;
        GridCAMPO01: TdxDBGridMaskColumn;
        GridCAMPO02: TdxDBGridMaskColumn;
        GridCAMPO03: TdxDBGridMaskColumn;
        GridCAMPO04: TdxDBGridMaskColumn;
        GridCAMPO05: TdxDBGridMaskColumn;
        GridCAMPO06: TdxDBGridMaskColumn;
        GridCAMPO07: TdxDBGridMaskColumn;
        GridCAMPO08: TdxDBGridMaskColumn;
        GridCAMPO09: TdxDBGridMaskColumn;
        GridCAMPO10: TdxDBGridMaskColumn;
        GridREFERENCIA: TdxDBGridMaskColumn;
        GridTEMPOMEDIOVALIDADE: TdxDBGridMaskColumn;
        GridULTIMACOMPRA: TdxDBGridDateColumn;
        GridlkUnidadeCompra: TdxDBGridLookupColumn;
        GridNOMEULTIMOFORNECEDOR: TdxDBGridMaskColumn;
        GridNOMEFORNECPREFERENCIA: TdxDBGridMaskColumn;
        GridicEstoque: TdxDBGridMaskColumn;
        GridPRECO: TdxDBGridMaskColumn;
        GridcfValorEstoqueTotal: TdxDBGridMaskColumn;
        GridPrecoCalc: TdxDBGridMaskColumn;
        GridPrecoCalcDescMax: TdxDBGridMaskColumn;
        GridMenorPrecoVenda: TdxDBGridMaskColumn;
        GridicCustoDespesas: TdxDBGridMaskColumn;
        GridicComissao: TdxDBGridMaskColumn;
        GridicDescontoMaximo: TdxDBGridMaskColumn;
        GridicQtdeMinimo: TdxDBGridMaskColumn;
        GridicQtdeMaximo: TdxDBGridMaskColumn;
        GridicPontoPedido: TdxDBGridMaskColumn;
        GridicUltQtdeCompra: TdxDBGridMaskColumn;
        GridicPrecoCompra: TdxDBGridMaskColumn;
        GridicCustoMedio: TdxDBGridMaskColumn;
        DBEdit12: TDBEdit;
        lbPromocao: TdxfLabel;
        DefinirPromocao1: TMenuItem;
        DBEdit13: TDBEdit;
        N11: TMenuItem;
        ItensPromocao: TMenuItem;
        ItensCompostos: TMenuItem;
        EstatsticadeVenda1: TMenuItem;
        ltimasVendas1: TMenuItem;
        SubItens1: TMenuItem;
        OutrasOpes1: TMenuItem;
        TS_Label12: TTS_Label;
        dfUltPrecoCompra: TTS_DBEditNumber;
        ltimosFornecimentos1: TMenuItem;
        dfUltForn1: TTS_DBEditFavorecido;
        dfABC: TTS_DBImageEdit;
        lbABC: TTS_Label;
        EstoquesporAlmoxarifado1: TMenuItem;
        N12: TMenuItem;
        UsaroPreoCalculadoparaaTabela1: TMenuItem;
        dfDescricaoVenda: TTS_DBPopupEdit;
        pnDescricoes: TTS_Panel;
        dfDescricaoComp: TTS_DBMemo;
        dfDescricaoTec: TTS_DBMemo;
        TS_Label27: TTS_Label;
        TS_Label30: TTS_Label;
        btFiscal: TTS_SpeedButton;
        tsFiscal: TTS_TabSheet;
        lbAliqICMS: TTS_Label;
        lbTipoTributacao: TTS_Label;
        lbCST: TTS_Label;
        lbReducaoCST: TTS_Label;
        dfAliqICMS: TTS_DBEditNumber;
        cmbCST: TTS_DBLookupComboBox;
        cmbTipoTributacao: TTS_DBLookupComboBox;
        dfReducaoCST: TTS_DBEditNumber;
        lbTVA: TTS_Label;
        dfTVA: TTS_DBEditNumber;
        lbTVAFonte: TTS_Label;
        dfTVAFonte: TTS_DBEditNumber;
        TS_Label40: TTS_Label;
        TS_DBEdit5: TTS_DBEdit;
        lbIPICompra: TTS_Label;
        lbIPIVenda: TTS_Label;
        dfIPIVenda: TTS_DBEditNumber;
        dfIPICompra: TTS_DBEditNumber;
        TS_Shape11: TTS_Shape;
        TS_Shape12: TTS_Shape;
        TS_Label48: TTS_Label;
        TS_Shape13: TTS_Shape;
        TS_Shape14: TTS_Shape;
        TS_Label50: TTS_Label;
        TS_Label41: TTS_Label;
        TS_Label42: TTS_Label;
        TS_DBEditNumber13: TTS_DBEditNumber;
        TS_DBEditNumber14: TTS_DBEditNumber;
        TS_Label51: TTS_Label;
        TS_DBEditNumber17: TTS_DBEditNumber;
        dfICMSAplicado: TTS_DBEditNumber;
        TS_Label52: TTS_Label;
        TS_DBEditNumber19: TTS_DBEditNumber;
        TS_DBEditNumber20: TTS_DBEditNumber;
        TS_Shape15: TTS_Shape;
        TS_SpeedButton1: TTS_SpeedButton;
        lbIPIAplicado: TTS_Label;
        dfIPIAplicado: TTS_DBEditNumber;
        DBEdit14: TDBEdit;
        DBEdit5: TDBEdit;
        DBEdit15: TDBEdit;
        DBEdit16: TDBEdit;
        DBEdit17: TDBEdit;
        DBEdit18: TDBEdit;
        ppmFiscal: TTS_PopupMenu;
        ConsiderarFiscaldoGrupo: TMenuItem;
        N13: TMenuItem;
        FormaodeCusto1: TMenuItem;
        TS_Label23: TTS_Label;
        dfUltPrecoCompra2: TTS_DBEditNumber;
        TS_Label31: TTS_Label;
        dfUltPrecoCompra3: TTS_DBEditNumber;
        Adicionar1: TMenuItem;
        TS_Label35: TTS_Label;
        cbIdentificacao: TTS_DBCheckBox;
        TS_DBEdit6: TTS_DBEdit;
        TS_Label36: TTS_Label;
        cbEncerrantes: TTS_DBCheckBox;
        cbPosVenda: TTS_DBCheckBox;
        TS_Panel1: TTS_Panel;
        DBCBpiscofins: TTS_DBCheckBox;
        TS_DBEditNumber4: TTS_DBEditNumber;
        TS_Label37: TTS_Label;
    dbgMultUnidadePERCENTUAL: TdxDBGridCurrencyColumn;
    dbgMultUnidadePRECOMANUAL: TdxDBGridCurrencyColumn;
    dbgMultUnidadePERCENTUALMINIMO: TdxDBGridCurrencyColumn;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure lbPrecoVenda1Click(Sender: TObject);
        procedure dbgTabelaPrecoKeyPress(Sender: TObject; var Key: Char);
        procedure dbgTabelaPrecoEspecialSelection(Sender: TObject;
            bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
        procedure dbgTabelaPrecoSelection(Sender: TObject; bSelected: Boolean;
            var bCanSelect: Boolean);
        procedure AjustesdeItens1Click(Sender: TObject);
        procedure TS_DBEdit1KeyPress(Sender: TObject; var Key: Char);
        procedure TS_SpeedButton2Click(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure RecalcularQtdeMnimaeMxima1Click(Sender: TObject);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure cmbTipoItemChange(Sender: TObject);
        procedure dbgTabelaPrecoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure dbgTabelaPrecoTS_OnSelection(Sender: TObject;
            bSelected: Boolean; var bCanSelect: Boolean);
        procedure cmbContaVendas1InitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure dfCodigoButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure btComando1Click(Sender: TObject);
        procedure TS_PopupEdit1InitPopup(Sender: TObject);
        procedure cmbContaCustoInitPopup(Sender: TObject);
        procedure cmbContaInventInitPopup(Sender: TObject);
        procedure cmbContaVendas2InitPopup(Sender: TObject);
        procedure cmbContaEncargoInitPopup(Sender: TObject);
        procedure cmbContaDescontoInitPopup(Sender: TObject);
        procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure CarregarFoto1Click(Sender: TObject);
        procedure LimparFoto1Click(Sender: TObject);
        procedure lbGrupoClick(Sender: TObject);
        procedure lbGrupoSetParametrosForm(Sender: TObject);
        procedure df_FotoClick(Sender: TObject);
        procedure TS_DBCheckBox8Change(Sender: TObject);
        procedure cmbContaServicoInitPopup(Sender: TObject);
        procedure pcItensChange(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure DigitacaoRapida1Click(Sender: TObject);
        procedure cbLockContaChange(Sender: TObject);
        procedure cbLockCtCustoChange(Sender: TObject);
        procedure cbLockFornecedorChange(Sender: TObject);
        procedure cbLockFabricanteChange(Sender: TObject);
        procedure cbLockCtInventarioChange(Sender: TObject);
        procedure cbLockUnidadesChange(Sender: TObject);
        procedure cbLockGrupoChange(Sender: TObject);
        procedure ReajustedePreos1Click(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
        procedure DBEdit2Change(Sender: TObject);
        procedure ltimoGravado1Click(Sender: TObject);
        procedure ItensFatorLucroInadequadoClick(Sender: TObject);
        procedure EstoqueemPontodePedido1Click(Sender: TObject);
        procedure EstoqueabaixodoMnimo1Click(Sender: TObject);
        procedure comEstoqueacimadoMximo1Click(Sender: TObject);
        procedure ItensSemCustoMedioInformadoClick(Sender: TObject);
        procedure ComissoInformada1Click(Sender: TObject);
        procedure DescontoMximoInformado1Click(Sender: TObject);
        procedure SemGrupo1Click(Sender: TObject);
        procedure SemFabricante1Click(Sender: TObject);
        procedure SemFornecedorPreferencial1Click(Sender: TObject);
        procedure ItensComPrecoDandoPrejuizoClick(Sender: TObject);
        procedure QuantidadesdosLotesexistentes2Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure dfPrecoCalcKeyPress(Sender: TObject; var Key: Char);
        procedure DBEdit6Change(Sender: TObject);
        procedure btAtualizarPrecoClick(Sender: TObject);
        procedure DBEdit9Change(Sender: TObject);
        procedure ItensComPrecoDiferenteDoCalculadoClick(Sender: TObject);
        procedure ItensComCompensacaoClick(Sender: TObject);
        procedure comTaxInclusonoPreo1Click(Sender: TObject);
        procedure Desativados1Click(Sender: TObject);
        procedure Hoje1Click(Sender: TObject);
        procedure Ontem1Click(Sender: TObject);
        procedure EstaSemana1Click(Sender: TObject);
        procedure EstaQuinzena1Click(Sender: TObject);
        procedure EsteMs1Click(Sender: TObject);
        procedure EsteBimestre1Click(Sender: TObject);
        procedure ppmIrParaPopup(Sender: TObject);
        procedure EsteSemestre1Click(Sender: TObject);
        procedure EsteAno1Click(Sender: TObject);
        procedure TS_Label77Click(Sender: TObject);
        procedure cmbUnidadePrecoChange(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure btCaracteristicas1Click(Sender: TObject);
        procedure btDefinirCamposClick(Sender: TObject);
        procedure btCaracteristicas2Click(Sender: TObject);
        procedure btCaracteristicas3Click(Sender: TObject);
        procedure ppmOutrosPopup(Sender: TObject);
        procedure dbgMultUnidadeExit(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure TS_DBEditNumber3DblClick(Sender: TObject);
        procedure dfLucroExit(Sender: TObject);
        procedure dbgTabelaPrecoColumnSorting(Sender: TObject;
            Column: TdxDBTreeListColumn; var Allow: Boolean);
        procedure pnTabelaPrecoExit(Sender: TObject);
        procedure dbgTabelaPrecoEdited(Sender: TObject; Node: TdxTreeListNode);
        procedure pmSetPrecosCalcsClick(Sender: TObject);
        procedure dbgTabelaPrecoCustomDrawColumnHeader(Sender: TObject;
            AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
            var AText: string; var AColor: TColor; AFont: TFont;
            var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
            var ADone: Boolean);
        procedure dfCustoAdicChange(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure dfLucroChange(Sender: TObject);
        procedure dfDescMax1Change(Sender: TObject);
        procedure dfComissao1Change(Sender: TObject);
        procedure ppmGrupoPopup(Sender: TObject);
        procedure ConsiderarPercentualdoGrupo1Click(Sender: TObject);
        procedure dfDescMax3MouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dfPrecoCalcExit(Sender: TObject);
        procedure cmbUnidadeEnter(Sender: TObject);
        procedure Memorizar1Click(Sender: TObject);
        procedure DBEdit4Change(Sender: TObject);
        procedure btSubItensClick(Sender: TObject);
        procedure DBEdit12Change(Sender: TObject);
        procedure HabilitarAlteraes1Click(Sender: TObject);
        procedure DefinirPromocao1Click(Sender: TObject);
        procedure ItensPromocaoClick(Sender: TObject);
        procedure ItensCompostosClick(Sender: TObject);
        procedure DBEdit13Change(Sender: TObject);
        procedure OutrasOpes1Click(Sender: TObject);
        procedure FormComponentBeforeMoveRecord(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
        procedure pcEstoqueChangingToTab(Sender: TObject; tab: Integer;
            var AllowChange: Boolean);
        procedure EstoquesporAlmoxarifado1Click(Sender: TObject);
        procedure ppmPrecoPopup(Sender: TObject);
        procedure UsaroPreoCalculadoparaaTabela1Click(Sender: TObject);
        procedure btFiscalClick(Sender: TObject);
        procedure DBEdit14Change(Sender: TObject);
        procedure DBEdit5Change(Sender: TObject);
        procedure cmbCSTChange(Sender: TObject);
        procedure cmbTipoTributacaoChange(Sender: TObject);
        procedure dfAliqICMSChange(Sender: TObject);
        procedure dfReducaoCSTChange(Sender: TObject);
        procedure dfTVAChange(Sender: TObject);
        procedure dfTVAFonteChange(Sender: TObject);
        procedure cmbTipoTributacaoMouseDown(Sender: TObject;
            Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        procedure ConsiderarFiscaldoGrupoClick(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure Adicionar1Click(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
    private
        DlgPopup: TDlgPopupContas;

        sCamposDef, sCamposTit, sCamposTipo: string;

        LastTipoItemSetado, nCodForm: Integer;

        TmpPage: TTS_PageControl; //Utilizado no Keydown para melhorar performance em n�o t�-lo local ao evento.
        TmpButton: TTS_SpeedButton; //Idem

        procedure LerCamposDefinidos;
        procedure PopulaCampo(obj: TTS_DBComboBox; nCampo: integer);

        procedure SincronizarLucroItem(nPrecoDig: Currency);
        procedure VerificarPrecoMinimo;
        procedure MostraTabelaPreco(sUnidade: string; oControl: TLabel; bAuto: boolean = true);
        procedure SetTabelaPrecoInicial;
    protected
        procedure LocalizarUltimo; override;
    public

    end;

var
    FrmItens: TFrmItens;

implementation

uses DM_Itens, Dlg_UltimosFornecimentos, Dlg_EstatVendasProduto, funcoes,
    Dlg_UltimasVendas, Dlg_UltimasVendasProd, DM_Projeto, Dlg_DefinirCampos,
    Dlg_AlteraCustoMedio, Dlg_FormacaoCusto;

{$R *.DFM}

procedure TFrmItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    FrmItens := nil;
    DlgPopup.Free;
end;

procedure TFrmItens.FormCreate(Sender: TObject);
begin
    inherited;
    gbControleValidade.visible := DMProjeto.bControleValidade;
    DlgPopup := TDlgPopupContas.Create(self, DMItens.C_ContasDS, nil, true);
    nCodForm := DMProjeto.TipoOrigem(self.name);
end;

procedure TFrmItens.SetTabelaPrecoInicial;
begin

    pnTabelaPreco.Visible := false;

end;

procedure TFrmItens.MostraTabelaPreco;
var
    i, size: Integer;
begin
    pnTabelaPreco.Parent := oControl.Parent;
    pnTabelaPreco.left := oControl.FocusControl.left - 1;
    pnTabelaPreco.top := oControl.FocusControl.top - 1;

    size := (DMItens.C_TabelasPreco.RecordCount * 18) + 46;

    if pnTabelaPreco.height < size then
        pnTabelaPreco.Height := size;

    if bAuto then
        pnTabelaPreco.visible := not pnTabelaPreco.visible
    else
        pnTabelaPreco.visible := true;

    if pnTabelaPreco.visible then
    begin
        pnTabelaPreco.bringtofront;
        cmbUnidadePreco.Visible := true;
        cmbUnidadePreco.LookUpKeyValue := sUnidade;
        cmbUnidadePrecoChange(self); //J� chama o AdicionaTabelaPreco

        if dbgTabelaPreco.CanFocus then
            ActiveControl := dbgTabelaPreco;

        dbgTabelaPreco.FocusedColumn := 1;

    end
    else
    begin
        {Restaurando visibilidade dos componentes}
        SetTabelaPrecoInicial;

        DMItens.C_ProdutosPreco.Filtered := false;
    end;
end;

procedure TFrmItens.lbPrecoVenda1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'CTAB') then
        exit;
    MostraTabelaPreco(DMItens.C_TabelaUnidade.Value, TLabel(Sender));
end;

procedure TFrmItens.dbgTabelaPrecoKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key in [',', '.'] then
        key := decimalseparator;
end;

procedure TFrmItens.dbgTabelaPrecoEspecialSelection(Sender: TObject;
    bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
    inherited;
    if (DMItens.C_ProdutosPrecoTabelaPreco.value > 0) and (DMItens.C_ProdutosPrecoPrecoManual.value = 'S') then
    begin
        NewFont.Color := clWhite;
        NewColor := clMaroon;
    end;
end;

procedure TFrmItens.dbgTabelaPrecoSelection(Sender: TObject;
    bSelected: Boolean; var bCanSelect: Boolean);
begin
    inherited;
    if (DMItens.C_ProdutosPrecoTabelaPreco.value > 0) then
    begin
        DMItens.C_ProdutosPreco.edit;
        if (DMItens.C_ProdutosPrecoPrecoManual.value = 'N') and (DMItens.C_ProdutosPrecoBaseada.value = 'S') then
            DMItens.C_ProdutosPrecoPrecoManual.value := 'S'
        else
            DMItens.C_ProdutosPrecoPrecoManual.value := 'N';
        DMItens.C_ProdutosPreco.post;
    end
    else
        bCanSelect := false;
end;

procedure TFrmItens.AjustesdeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, IIF(DMItens.C_TabelaItem.Value <= 0, null, DMItens.C_TabelaItem.Value)]);
    DMProjeto.CriarForm('FrmAjustesItens', self, true);
end;

procedure TFrmItens.TS_DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key = #13 then
    begin
        if DMItens.C_Tabela.state in [dsEdit, dsInsert] then
            DMItens.C_Tabela.UpdateRecord;
        dfCodigoButtonClick(self, 0);
    end;
end;

procedure TFrmItens.TS_SpeedButton2Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'UFORNEC') then
        exit;

    if not DMItens.bAlteracao then
    begin
        DlgMsg.ShowMsg(542);
        exit;
    end;
    if not (DMItens.C_TabelaTipoItem.value in [1, 2, 3]) then
    begin
        DlgMsg.ShowMsg(542);
        exit;
    end;
    DlgUltimosFornecimentos := TDlgUltimosFornecimentos.Create(self, DMItens.C_TabelaItem.value, DMItens.C_TabelaDescricao.value);
    DlgUltimosFornecimentos.free;
end;

procedure TFrmItens.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;

    cmbTipoItemChange(self);

    if not FormatoTabela.Checked then
    begin
        if (pcEstoque.ActivePage = tsEstoque) and DMItens.bAlteracao then
            with DMItens do
            begin
                C_ItensUnidades.Close;
                C_ItensUnidades.Open;
            end;

        SetTabelaPrecoInicial;

        with DMItens do
        begin
            if C_TabelaItem.value > 0 then
            begin
                if FileExists(DMProjeto.ImgPath + C_TabelaFoto.Value) then
                    DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaFoto.Value)
                else
                    DF_Foto.ClearPicture;
            end
            else
            begin
                DF_Foto.ClearPicture;
            end;
        end;
    end;

end;

procedure TFrmItens.RecalcularQtdeMnimaeMxima1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRecalcularMinimo', self, true);
end;

procedure TFrmItens.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoItem.SetReadonly(true);
    lbDataCadastro.Visible := true;
    dfDataCadastro.Visible := true;
    cmbUnidadePreco.SetReadOnly(false);

    {Itens com Estoque}
  //  dfEstoque.Setreadonly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));
  //  dfEstoque_b.SetReadOnly(dfEstoque.ReadOnly);
    dfEstoque.Setreadonly(True);
    dfEstoque_b.SetReadOnly(True);

    dfUltPrecoCompra.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));
    if not dfUltPrecoCompra.ReadOnly then
        dfUltPrecoCompra.SetReadOnly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));

    dfCompensaCusto.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));

    dfUltForn1.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

    {Itens Sem Estoque}
    dfUltForn2.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

    {Itens de Servico}
    dfUltForn3.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

end;

procedure TFrmItens.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoItem.SetReadonly(false);
    lbDataCadastro.Visible := false;
    dfDataCadastro.Visible := false;
    SetTabelaPrecoInicial;
    cmbUnidadePreco.SetReadOnly(true);

    {Itens com Estoque}
  //  dfEstoque.SetReadonly(false);
  //  dfEstoque_b.SetReadOnly(false);
    dfEstoque.SetReadonly(True);
    dfEstoque_b.SetReadOnly(True);

    pcEstoque.ActivePage := tsCaracteristicas1;
    btCaracteristicas1.down := true;
    dfUltForn1.SetReadOnly(false);

    {Itens Sem Estoque}
    pcSemEstoque.ActivePage := tsCaracteristicas2;
    btCaracteristicas2.down := true;
    dfUltForn2.SetReadOnly(false);

    {Itens de Servico}
    pcServicos.ActivePage := tsCaracteristicas3;
    btCaracteristicas3.down := true;
    dfUltForn3.SetReadOnly(false);

    try
        //    if dxInspector.Visible and DigitacaoRapida1.Checked then
        //      TdxInspectorRow(dxInspectorCodigo).Node.Focused := True;
    except
    end;
end;

procedure TFrmItens.cmbTipoItemChange(Sender: TObject);
begin
    inherited;

    if DMItens.C_TabelaTipoItem.value = LastTipoItemSetado then
        exit;

    LastTipoItemSetado := DMItens.C_TabelaTipoItem.Value;

    DMItens.C_TiposItens.locate('tipoitem', DMItens.C_TabelaTipoItem.value, []);
    if DMItens.C_TabelaTipoItem.value = 1 then
        pcItens.SetPage(tsProdutosInvent)
    else if DMItens.C_TabelaTipoItem.value = 2 then
        pcItens.SetPage(tsProdutosSemInvent)
    else if DMItens.C_TabelaTipoItem.value = 3 then
        pcItens.SetPage(tsServicos)
    else if DMItens.C_TabelaTipoItem.value = 4 then
        pcItens.SetPage(tsMensagens)
    else if DMItens.C_TabelaTipoItem.value = 5 then
        pcItens.SetPage(tsEncargos)
    else if DMItens.C_TabelaTipoItem.value = 6 then
        pcItens.SetPage(tsDescontos)
    else if DMItens.C_TabelaTipoItem.value = 7 then
        pcItens.SetPage(tsSubTotais);

    cbIDENTIFICACAO.Visible := (DMItens.C_TabelaTipoItem.value = 1) and (DMProjeto.Parametro('Identificacao') = 'S');

    cbPosVenda.Visible := DMProjeto.Parametro('PosVenda') = 'S';
    cbEncerrantes.Visible := DMProjeto.Parametro('Encerrantes') = 'S';
    lbABC.Visible := (DMItens.C_TabelaTipoItem.value = 1);
    dfABC.Visible := (DMItens.C_TabelaTipoItem.value = 1);
    lbGrupo.Visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);
    cmbGrupo.Visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);
    cbLockGrupo.Visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);

    lbReferencia.Visible := (DMItens.C_TabelaTipoItem.value in [1, 2]);
    dfReferencia.Visible := (DMItens.C_TabelaTipoItem.value in [1, 2]);
    cbRevenda.Visible := (DMItens.C_TabelaTipoItem.value in [1]);

    if (DMItens.C_TabelaTipoItem.value in [1, 2, 3]) then
        lbDescricaoVenda.caption := SeparaStrings(lbDescricaoVenda.TagStr, ';', 1)
    else if (DMItens.C_TabelaTipoItem.value in [4]) then
        lbDescricaoVenda.caption := SeparaStrings(lbDescricaoVenda.TagStr, ';', 2)
    else if (DMItens.C_TabelaTipoItem.value in [5, 6, 7]) then
        lbDescricaoVenda.caption := SeparaStrings(lbDescricaoVenda.TagStr, ';', 3);

    btComando1.visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);
    btComando1.Top := 172;

    btComando2.visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);
    btComando2.Top := 200;

    btUltimosFornec.visible := (DMItens.C_TabelaTipoItem.value = 1) or
        ((DMItens.C_TabelaTipoItem.value in [2, 3]) and (DMItens.C_TabelaIsItemCompra.value = 'S'));
    btUltimosFornec.Top := 235;

    btOutros.visible := (DMItens.C_TabelaTipoItem.value in [1, 2, 3]);
    btOutros.Top := 269;

    if DMProjeto.Parametro('Composicao') = 'S' then
    begin
        btSubItens.Visible := (DMItens.C_TabelaTipoItem.value in [1, 3]);
        btSubItens.Top := 304;
    end;

end;

procedure TFrmItens.dbgTabelaPrecoCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    {  if (dbgTabelaPreco.GetFieldValue(ANode, 'TabelaPreco', 0) > 0) and
         (dbgTabelaPreco.GetFieldValue(ANode, 'PrecoManual', '') = 'S') then
        AColor := dbgTabelaPreco.TS_SelectionColor
      else
        AColor := clWindow;

      if (uppercase(TdxDBGridColumn(AColumn).FieldName) = 'PRECOMINIMO') and ( StrToFloatDef(AText,0) = 0 ) then
        AText := ' - ';

      if (dbgTabelaPreco.GetFieldValue(ANode, 'TabelaPreco', 0) = 0) then
        AFont.Style := [fsBold];
                                                                         }
end;

procedure TFrmItens.dbgTabelaPrecoTS_OnSelection(Sender: TObject; bSelected: Boolean; var bCanSelect: Boolean);
var
    xPreco: Currency;
begin
    inherited;

    if (dbgTabelaPreco.DataSource.DataSet.FieldByName('TabelaPreco').asInteger > 0) then
    begin
        xPreco := DMItens.GetPrecoTabZero(dbgTabelaPreco.DataSource.DataSet, cmbUnidadePreco.LookupKeyValue);

        dbgTabelaPreco.DataSource.DataSet.Edit;

        if (dbgTabelaPreco.DataSource.DataSet.FieldByName('PrecoManual').asString = 'N') and
            (dbgTabelaPreco.DataSource.DataSet.FieldByName('Baseada').asString = 'S') then
            dbgTabelaPreco.DataSource.DataSet.FieldByName('PrecoManual').asString := 'S'
        else
        begin
            if dbgTabelaPreco.DataSource.DataSet.FieldByName('Percentual').asCurrency > 0 then
                dbgTabelaPreco.DataSource.DataSet.FieldByName('Preco').asCurrency := xPreco + ((xPreco * dbgTabelaPreco.DataSource.DataSet.FieldByName('Percentual').asCurrency) / 100)
            else
                dbgTabelaPreco.DataSource.DataSet.FieldByName('Preco').asCurrency := xPreco - ((xPreco * abs(dbgTabelaPreco.DataSource.DataSet.FieldByName('Percentual').asCurrency)) / 100);
            dbgTabelaPreco.DataSource.DataSet.FieldByName('PrecoManual').asString := 'N';
        end;
        dbgTabelaPreco.DataSource.DataSet.Post;

    end
    else
        bCanSelect := false;
end;

procedure TFrmItens.cmbContaVendas1InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(15);
end;

procedure TFrmItens.FormActivate(Sender: TObject);
begin
    inherited;
    cmbContaVendas1.PopupControl := DlgPopup.pnPopup;
    cmbContaCusto.PopupControl := DlgPopup.pnPopup;
    cmbContaInvent.PopupControl := DlgPopup.pnPopup;

    cmbContaVendas2.PopupControl := DlgPopup.pnPopup;
    cmbContaDespesa2.PopupControl := DlgPopup.pnPopup;

    cmbContaDespesa3.PopupControl := DlgPopup.pnPopup;
    cmbContaVendas3.PopupControl := DlgPopup.pnPopup;

    cmbContaDespesaEnc.PopupControl := DlgPopup.pnPopup;
    cmbContaDesconto.PopupControl := DlgPopup.pnPopup;
end;

procedure TFrmItens.dfCodigoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;

    if not (DMItens.C_Tabela.State in [dsEdit, dsInsert]) then
        DMItens.C_Tabela.edit;
    DMItens.C_TabelaCodigo.value := DMProjeto.GeraCodigoItem(dfCodigo.text, DMItens.C_TabelaItem.value);

    if not DigitacaoRapida1.Checked then
        ActiveControl := dfDescricaoVenda;
end;

procedure TFrmItens.btComando1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'EV') then
        exit;

    if not DMItens.bAlteracao then
    begin
        DlgMsg.ShowMsg(542);
        exit;
    end;
    DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self, DMItens.C_TabelaItem.value, 0, DMItens.C_TabelaDescricao.value);
    DlgEstatVendasProduto.free;
end;

procedure TFrmItens.TS_PopupEdit1InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TFrmItens.cmbContaCustoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(17);
end;

procedure TFrmItens.cmbContaInventInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(7);
end;

procedure TFrmItens.cmbContaVendas2InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(13);
end;

procedure TFrmItens.cmbContaEncargoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(14);
end;

procedure TFrmItens.cmbContaDescontoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(13);
end;

procedure TFrmItens.btOutrosMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmItens.CarregarFoto1Click(Sender: TObject);
begin
    inherited;
    if pdFoto.Execute then
        with DMItens do
        begin

            if not (C_Tabela.State in [dsEdit, dsInsert]) then
                C_Tabela.Edit;

            C_TabelaFoto.Value := DMProjeto.AddFotoServidor(pdFoto.FileName);
            if FileExists(DMProjeto.ImgPath + C_TabelaFoto.Value) then
                DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaFoto.Value);

        end;
end;

procedure TFrmItens.LimparFoto1Click(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        if not (C_Tabela.State in [dsEdit, dsInsert]) then
            C_Tabela.Edit;
        C_TabelaFoto.Value := '';
        DF_Foto.ClearPicture;
    end;
end;

procedure TFrmItens.lbGrupoClick(Sender: TObject);
var xTipoItem: integer;
begin
    inherited;
    xTipoItem := DMItens.C_TabelaTipoItem.value;
    DMItens.C_TiposItens.close;
    DMItens.C_TiposItens.open;
    DMItens.C_TiposItens.locate('tipoitem', xTipoItem, []);
    //
    DMItens.C_Grupos.close;
    DMItens.C_Grupos.open;

    if LastDataObject.TableName = 'GRUPOS' then
        with DMItens do
        begin
            C_Tabela.Edit;
            C_TabelaGrupo.Value := lastdataobject.objectkey; //Para forcar o calcfields e a atualiza��o dos campos ic...;
        end;

end;

procedure TFrmItens.lbGrupoSetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMItens.C_TabelaGrupo.value, DMItens.C_TabelaTipoItem.value]);
end;

procedure TFrmItens.df_FotoClick(Sender: TObject);
begin
    inherited;
    ppmFoto.PopupFromCursorPos;
end;

procedure TFrmItens.TS_DBCheckBox8Change(Sender: TObject);
begin
    inherited;

    if DMItens.C_TabelaIsItemCompra.asVariant = null then
        exit;

    if DMItens.C_Tabela.state in [dsEdit, dsInsert] then
        DMItens.C_Tabela.UpdateRecord;

    {Itens Sem Estoque}
    pnInfoCompras.visible := DMItens.C_TabelaIsItemCompra.value = 'S';
    lblContaDespesa2.Visible := pnInfoCompras.visible;
    cmbContaDespesa2.Visible := pnInfoCompras.visible;
    btCalcPreco2.Visible := pnInfoCompras.visible;
    btCalcPreco2.Top := 65;

    {Itens de Servi�o}
    pnInfoCompraServ.visible := DMItens.C_TabelaIsItemCompra.value = 'S';
    lblContaDespesa3.Visible := pnInfoCompraServ.visible;
    cmbContaDespesa3.Visible := pnInfoCompraServ.visible;
    btCalcPreco3.Visible := pnInfoCompraServ.visible;
    btCalcPreco3.Top := 65;

    DMItens.C_Tabela.edit;
end;

procedure TFrmItens.cmbContaServicoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(13);
end;

procedure TFrmItens.pcItensChange(Sender: TObject);
begin
    inherited;

    {Definindo o Parent para o Panel de P.Venda}
    if pcItens.ActivePage = tsServicos then
    begin
        pnCalcPreco.Parent := tsCalcPreco3;
        pnCustomizados.Parent := tsCustomizados3;
        TS_DBCheckBox8Change(self);
    end
    else if pcItens.ActivePage = tsProdutosInvent then
    begin
        pnCalcPreco.Parent := tsCalcPreco1;
        pnCustomizados.Parent := tsCustomizados1;
    end
    else if pcItens.ActivePage = tsProdutosSemInvent then
    begin
        pnCalcPreco.Parent := tsCalcPreco2;
        pnCustomizados.Parent := tsCustomizados2;
        TS_DBCheckBox8Change(self);
    end;

end;

procedure TFrmItens.FormComponentBeforeClearParams(Sender: TObject);
var
    sIrPara: string;
    bMultiUnd : boolean;
begin
    inherited;

    cmbUnidadeVarejo.Visible := DMProjeto.Parametro('TipoEmpresa') = 'V';
    cmbUnidadeCarga.Visible := pos('VA', DMProjeto.Parametro('TipoEmpresa')) > 0;
    lbUnidadeVarejo.Visible := cmbUnidadeVarejo.Visible;
    lbUnidadeCarga.Visible := cmbUnidadeCarga.Visible;

    dfComissao1.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALTCOMISS'));
    dfComissao2.SetReadOnly(dfComissao1.ReadOnly);
    dfComissao3.SetReadOnly(dfComissao1.ReadOnly);

    dfPrecoVenda1.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALTPRECO'));
    dfPrecoVenda2.SetReadOnly(dfPrecoVenda1.ReadOnly);
    dfPrecoVenda3.SetReadOnly(dfPrecoVenda1.ReadOnly);
    dfPrecoVenda5.SetReadOnly(dfPrecoVenda1.ReadOnly);
    dfPerc5.SetReadOnly(dfPrecoVenda1.ReadOnly);
    dfPrecoVenda6.SetReadOnly(dfPrecoVenda1.ReadOnly);
    dfPerc6.SetReadOnly(dfPrecoVenda1.ReadOnly);

    dfDescMax1.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALTDESCMAX'));
    dfDescMax2.SetReadOnly(dfDescMax1.ReadOnly);
    dfDescMax3.SetReadOnly(dfDescMax1.ReadOnly);

    btCalcPreco1.Visible := DMProjeto.LerPermissao(Self.Name, 'VISCALPREC');
    btCalcPreco2.Visible := btCalcPreco1.Visible;
    btCalcPreco3.Visible := btCalcPreco1.Visible;

    bMultiUnd := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';
    lbPrecoVenda1.Caption := iif( bMultiUnd, 'Pre�o de Custo:','Pre�o de Venda:' );

    dbgMultUnidadePERCENTUAL.Visible := bMultiUnd;
    dbgMultUnidadePRECOMANUAL.Visible := bMultiUnd;
    dbgMultUnidadePERCENTUALMINIMO.Visible := bMultiUnd;

    if DMProjeto.ExisteParametrosForm then
    begin

        if (DMProjeto.getParametrosForm(0) = null) then
        begin
            if DMProjeto.getParametrosForm(1) <> null then
                DMItens.nTipoItem := DMProjeto.getParametrosForm(1);

            if (DMItens.bAlteracao) then
                Estado_Inicial;

            if DMItens.nTipoItem <> 0 then
                DMItens.C_TabelaTipoItem.Value := DMItens.nTipoItem;

            cmbTipoItemChange(sender);

            if DMProjeto.GetParametrosForm(2) <> null then
            begin
                sIrPara := UpperCase(DMProjeto.GetParametrosForm(2));

                if sIrPara = 'B' then
                    ItensComPrecoDandoPrejuizoClick(ItensComPrecoDandoPrejuizo)
                else if sIrPara = 'C' then
                begin
                    ItensComPrecoDiferenteDoCalculadoClick(ItensComPrecoDiferenteDoCalculado);
                end
                else if sIrPara = 'D' then
                begin
                    ItensSemCustoMedioInformadoClick(ItensSemCustoMedioInformado);
                end;

            end;

        end;

    end
    else
    begin
        DMItens.nTipoItem := 1;
    end;

end;

procedure TFrmItens.DigitacaoRapida1Click(Sender: TObject);
begin
    inherited;
    DigitacaoRapida1.Checked := not DigitacaoRapida1.Checked;

    if DigitacaoRapida1.Checked then
    begin
        if Estado = fsInclusao then
        begin
            DMItens.C_Tabela.Edit;
            DMItens.C_TabelaTipoItem.Value := 1; {Obrigando que seja item de invent�rio}
            cmbTipoItemChange(Self); //Para configurar a tela para o tipo do item;
        end;

        //    dxInspector.Visible := true;
        //    dxInspector.BringToFront;
        //    TdxInspectorRow(dxInspectorCodigo).Node.Focused := True;
        sbDados.Enabled := false;
    end
    else
    begin
        //    dxInspector.SendToBack;
        //    dxInspector.Visible := false;
        sbDados.Enabled := True;
    end;
end;

procedure TFrmItens.cbLockContaChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nContaVenda := DMItens.C_TabelaConta_Venda.Value
    else
        DMItens.nContaVenda := 0;
end;

procedure TFrmItens.cbLockCtCustoChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nContaCusto := DMItens.C_TabelaConta_Custo.Value
    else
        DMItens.nContaCusto := 0;
end;

procedure TFrmItens.cbLockFornecedorChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nFornecedor := DMItens.C_TabelaUltimoFornecedor.Value
    else
        DMItens.nFornecedor := 0;
end;

procedure TFrmItens.cbLockFabricanteChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nFabricante := DMItens.C_TabelaFabricante.Value
    else
        DMItens.nFabricante := 0;
end;

procedure TFrmItens.cbLockCtInventarioChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nContaInventario := DMItens.C_TabelaConta_Invent.Value
    else
        DMItens.nContaInventario := 0;
end;

procedure TFrmItens.cbLockUnidadesChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.sUnidade := DMItens.C_TabelaUnidade.Value
    else
        DMItens.sUnidade := '';

end;

procedure TFrmItens.cbLockGrupoChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
    begin
        DMItens.nGrupo := DMItens.C_TabelaGrupo.Value;
        cmbGrupo.TabStop := false;
    end
    else
    begin
        DMItens.nGrupo := 0;
        cmbGrupo.TabStop := true;
    end;
end;

procedure TFrmItens.ReajustedePreos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgReajustePrecos', self, true);
end;

procedure TFrmItens.DBEdit1Change(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        pnAtualizarPreco.Visible := ABS(C_TabelaPrecoCalc.Value - C_TabelaPreco.Value) > 0.01;
    end;

    if DMItens.C_TabelaPreco.value > 0 then
        with DMItens do
        begin
            if C_TabelaicFatorLucro.Value = 0 then
            begin
                imgsPreco.GetBitmap(1, imgPreco.Picture.Bitmap); //Prejuizo
                imgpreco.Hint := 'Aten��o, voc� n�o est� tendo lucro! Seu Fator de Lucro est� Zero.';
            end
            else if (C_TabelaMenorPrecoVenda.asCurrency - C_TabelaPreco.asCurrency) > 0.01 then
            begin
                imgsPreco.GetBitmap(0, imgPreco.Picture.Bitmap); //Prejuizo
                imgpreco.Hint := 'Cuidado, voc� est� tendo preju�zo! O pre�o de Venda est� abaixo do Menor Pre�o de Venda calculado.';
            end
            else if ABS(C_TabelaMenorPrecoVenda.asCurrency - C_TabelaPreco.asCurrency) <= 0.01 then
            begin
                imgsPreco.GetBitmap(1, imgPreco.Picture.Bitmap); //Empatando
                imgpreco.Hint := 'Aten��o, voc� n�o est� tendo lucro! O pre�o de Venda est� igual ao Menor Pre�o de Venda calculado.';
            end
            else if ((C_TabelaPreco.asCurrency - C_TabelaPrecoCalcDescMax.asCurrency >= -0.01) and (C_TabelaicFatorLucro.Value > 0)) then
            begin
                imgsPreco.GetBitmap(3, imgPreco.Picture.Bitmap); //Com lucro duvidoso
                imgpreco.Hint := 'Seu Pre�o de Venda est� com Lucro!';
            end
            else if ((C_TabelaPreco.asCurrency > C_TabelaMenorPrecoVenda.asCurrency) and (C_TabelaicFatorLucro.Value > 0) and
                (C_TabelaPrecoCalcDescMax.asCurrency >= C_TabelaPreco.asCurrency)) then
            begin
                imgsPreco.GetBitmap(2, imgPreco.Picture.Bitmap); //Com lucro duvidoso
                imgpreco.Hint := 'Dependendo do Desconto na hora da Venda, o item pode dar preju�zo!';
            end
            else
            begin
                imgPreco.Picture := nil;
                imgPreco.Hint := '';
            end;

            imgPreco.Invalidate;
        end
    else
    begin
        imgPreco.Picture := nil;
        imgPreco.Hint := '';
        imgPreco.Invalidate;
    end;

end;

procedure TFrmItens.DBEdit2Change(Sender: TObject);
begin
    inherited;

    {Definindo se o Pre�o de compra pode ser informado}
  //  dfEstoque.Setreadonly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));
  //  dfEstoque_b.SetReadOnly(dfEstoque.ReadOnly);
    dfEstoque.SetReadonly(True);
    dfEstoque_b.SetReadOnly(True);

    dfUltPrecoCompra.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));
    dfCompensaCusto.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));

    if not dfUltPrecoCompra.ReadOnly then
        dfUltPrecoCompra.SetReadOnly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));

    DBEdit1Change(Self); //Para atualizar imgPreco;

end;

procedure TFrmItens.ltimoGravado1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    LocalizarUltimo;
end;

procedure TFrmItens.ItensFatorLucroInadequadoClick(Sender: TObject);
begin
    inherited;

    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.FatorLucro <= 0.5 ');

end;

procedure TFrmItens.EstoqueemPontodePedido1Click(Sender: TObject);
begin
    inherited;

    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.Estoque <= i.PontoPedido and i.PontoPedido > 0 and i.TipoItem = 1 ');
end;

procedure TFrmItens.EstoqueabaixodoMnimo1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.Estoque < i.QtdeMinimo and i.TipoItem = 1 ');
end;

procedure TFrmItens.comEstoqueacimadoMximo1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.Estoque > i.QtdeMaximo and i.TipoItem = 1 ');
end;

procedure TFrmItens.ItensSemCustoMedioInformadoClick(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.IsItemCompra = ''S'' and i.Desativado = ''N'' and i.Revenda = ''S'' and i.CustoMedio = 0 and preco > 0 and i.TipoItem in (1,2,3) ');
end;

procedure TFrmItens.ItensComCompensacaoClick(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.CompensaCusto <> 0 ');
end;

procedure TFrmItens.ComissoInformada1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.Comissao > 0 ');
end;

procedure TFrmItens.DescontoMximoInformado1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.DescontoMaximo > 0 ');
end;

procedure TFrmItens.comTaxInclusonoPreo1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.TaxIncluso = ''S'' ');
end;

procedure TFrmItens.SemGrupo1Click(Sender: TObject);
begin
    inherited;

    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Grupo is null ');

end;

procedure TFrmItens.SemFabricante1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Fabricante is null ');
end;

procedure TFrmItens.SemFornecedorPreferencial1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.FORNECPREFERENCIA is null ');
end;

procedure TFrmItens.Desativados1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado  = ''S'' ');
end;

procedure TFrmItens.ItensComPrecoDandoPrejuizoClick(Sender: TObject);
begin
    inherited;

    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and Preco < (i.CustoMedio / ((100 - i.SemLucro) / 100)) and (i.SemLucro < 100) ');

end;

procedure TFrmItens.ItensComPrecoDiferenteDoCalculadoClick(
    Sender: TObject);
begin
    inherited;

    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.TipoItem = 1 and i.Desativado = ''N'' and i.Revenda = ''S'' and (i.ComLucro < 100) and F_ABS(Preco - ((i.CustoMedio*i.FatorUndVenda) / ((100 - i.ComLucro) / 100))) >= 0.02 ');

end;

procedure TFrmItens.Hoje1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
end;

procedure TFrmItens.Ontem1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema - 1)));

end;

procedure TFrmItens.EstaSemana1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := PrimeiroDiaDaSemana(DMProjeto.dDataSistema);
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro >= ' + QuotedStr(MesDiaAno(dData)));

end;

procedure TFrmItens.EstaQuinzena1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := PrimeiroDiaDaSemana(DMProjeto.dDataSistema - 7);
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro >= ' + QuotedStr(MesDiaAno(dData)));
end;

procedure TFrmItens.EsteMs1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := FirstMonthDay(DMProjeto.dDataSistema);
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro > ' + QuotedStr(MesDiaAno(dData)));

end;

procedure TFrmItens.EsteBimestre1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := DateAdd('MM', -1, FirstMonthDay(DMProjeto.dDataSistema));
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro >= ' + QuotedStr(MesDiaAno(dData)));

end;

procedure TFrmItens.EsteSemestre1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := DateAdd('MM', -5, FirstMonthDay(DMProjeto.dDataSistema));
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro >= ' + QuotedStr(MesDiaAno(dData)));
end;

procedure TFrmItens.EsteAno1Click(Sender: TObject);
var
    dData: TDateTime;
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    dData := FirstYearDay(DMProjeto.dDataSistema);
    Localizar('', ' where i.Desativado = ''N'' and i.DataCadastro >= ' + QuotedStr(MesDiaAno(dData)));

end;

procedure TFrmItens.ItensPromocaoClick(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Promocao = ''S'' ');
end;

procedure TFrmItens.ItensCompostosClick(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.HasChildren = ''S'' ');
end;

procedure TFrmItens.QuantidadesdosLotesexistentes2Click(Sender: TObject);
begin
    inherited;
    if not DMItens.bAlteracao then
    begin
        DlgMsg.ShowMsg(542);
        exit;
    end;
    DMProjeto.SetParametrosForm([DMItens.C_TabelaItem.value, DMItens.C_TabelaDescricao.value, DMItens.C_TabelaicEstoque.value, DMItens.C_TabelaFatorUndVenda.Value]);
    DMProjeto.CriarForm('FrmLotesExistentes', self, true);
end;

procedure TFrmItens.FormShow(Sender: TObject);
begin
    inherited;
    dfABC.Hint := DMProjeto.Parametro('PeriodoABC');
    if DMProjeto.Parametro('Composicao') <> 'S' then
    begin
        btSubItens.Visible := false;
        ItensCompostos.Visible := false;
    end;

    pcEstoque.UpdateVisibleTabs;
    pcEstoque.ActivePageIndex := 0;

    pcSemEstoque.UpdateVisibleTabs;
    pcSemEstoque.ActivePageIndex := 0;

    pcServicos.UpdateVisibleTabs;
    pcServicos.ActivePageIndex := 0;

    LerCamposDefinidos
end;

procedure TFrmItens.dfPrecoCalcKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    {Calculando o Fator de Lucro para o Pre�o de Venda digitado}
    if Key = #13 then
    begin
        if (Sender <> dfPrecoCalc) and (DMProjeto.Parametro('PrecosAutomaticos') = 'S') then
            SincronizarLucroItem(TTS_DBEditNumber(Sender).Value)
        else if (Sender = dfPrecoCalc) then
            SincronizarLucroItem(TTS_DBEditNumber(Sender).Value);

        with DMItens do
        begin
            if (C_TabelaicFatorLucro.asFloat <> 0) and (StrToIntDef(DMProjeto.Parametro('LucroMinimo'), 0) > 0) then
                if (StrToFloatDef(DMProjeto.Parametro('LucroMinimo'), 0) - C_TabelaicFatorLucro.asFloat > 0.01) then
                    DlgMsg.ShowMsg(2720, [DMProjeto.Parametro('LucroMinimo') + '%']);
        end;

    end;

end;

procedure TFrmItens.DBEdit6Change(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        if (C_TabelaGrupo.Value > 0) and (C_GruposGrupo.Value <> C_TabelaGrupo.Value) then
            C_Grupos.Locate('Grupo', C_TabelaGrupo.Value, []);

        {Apresentando a origem dos percentuais}
        lbDescMax1.Font.Color := IIF((C_TabelaicDescontoMaximo.Value > 0) and (C_TabelaDescontoMaximo.Value >= 0), clWindowText,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposDescontoMaximo.Value >= 0), clGreen,
            IIF(nDescMaxUsuarios > 0, clTeal, clOlive)));
        case lbDescMax1.Font.Color of
            clWindowText: lbDescMax1.Hint := 'Definido aqui no Item';
            clGreen: lbDescMax1.Hint := 'Definido no Grupo do Item';
            clTeal: lbDescMax1.Hint := 'Maior Desconto que os Usu�rio podem dar';
            clOlive: lbDescMax1.Hint := 'N�o existe defini��o no sistema!' + #13 +
                'Configure o Desconto M�ximo nos Usu�rios ou para este Item.';
        end;

        lbDescMax2.Font.Color := lbDescMax1.Font.Color;
        lbDescMax2.Hint := lbDescMax1.Hint;
        lbDescMax3.Font.Color := lbDescMax1.Font.Color;
        lbDescMax3.Hint := lbDescMax1.Hint;

        lbComissao1.Font.Color := IIF((C_TabelaicComissao.Value > 0) and (C_TabelaComissao.Value >= 0), clWindowText,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposComissao.Value >= 0), clGreen,
            IIF(yMaiorComissao > 0, clTeal, clOlive)));

        case lbComissao1.Font.Color of
            clWindowText: lbComissao1.Hint := 'Definido aqui no Item';
            clGreen: lbComissao1.Hint := 'Definido no Grupo do Item';
            clTeal: lbComissao1.Hint := 'Comiss�o M�dia definida no Cad. de Fatores de Custos';
            clOlive: lbComissao1.Hint := 'N�o existe defini��o no sistema!' + #13 +
                'Configure a Comiss�o M�dia defina uma para este Item.';
        end;

        lbComissao2.Font.Color := lbComissao1.Font.Color;
        lbComissao2.Hint := lbComissao1.Hint;
        lbComissao3.Font.Color := lbComissao1.Font.Color;
        lbComissao3.Hint := lbComissao1.Hint;

        lbComissaoAplicada.Font.Color := lbComissao1.Font.Color;

        lbCustoAdicional.Font.Color := IIF((C_TabelaicCustoDespesas.Value > 0) and (C_TabelaCustoDespesas.Value = -999),
            clGreen,
            clWindowText);

        lbLucro.Font.Color := IIF((C_TabelaicFatorLucro.Value > 0) and (C_TabelaFatorLucro.Value >= 0), clWindowText,
            IIF((C_TabelaGrupo.Value > 0) and (C_GruposFatorLucro.Value >= 0), clGreen,
            clTeal));

        lbTipoTributacao.Font.Color := IIF((C_TabelaicSituacaoECF.Value <> '') and (C_TabelaSituacaoECF.Value = ''),
            clGreen, clWindowText);

        lbCST.Font.Color := IIF((C_TabelaicCST.Value <> '') and (C_TabelaCST.Value = ''),
            clGreen, clWindowText);

        lbAliqICMS.Font.Color := IIF((C_TabelaicAliqICMS.Value >= 0) and (C_TabelaAliqICMS.Value = -999),
            clGreen, clWindowText);

        lbReducaoCST.Font.Color := IIF((C_TabelaicReducaoCST.Value >= 0) and (C_TabelaReducaoCST.Value = -999),
            clGreen, clWindowText);

        lbTVA.Font.Color := IIF((C_TabelaicTVA.Value >= 0) and (C_TabelaTVA.Value = -999),
            clGreen, clWindowText);

        lbTVAFonte.Font.Color := IIF((C_TabelaicTVAFonte.Value >= 0) and (C_TabelaTVAFonte.Value = -999),
            clGreen, clWindowText);

    end;
end;

procedure TFrmItens.SincronizarLucroItem(nPrecoDig: Currency);
var
    nSemLucro, nCusto: Currency;
begin

    with DMItens do
    begin
        if not (C_Tabela.State in [dsInsert, dsEdit]) then
            exit;

        nSemLucro := C_TabelaicCustoDespesas.value +
            C_TabelaicDespesaFixa.Value +
            C_TabelaicImpostosFederais.Value +
            C_TabelaicComissaoAplic.Value +
            C_TabelaicEncargosCartoes.Value +
            C_TabelaicICMSAplicado.Value +
            C_TabelaIPIVenda.Value;

        nCusto := C_TabelaicCustoMedio.Value * (1 + C_TabelaCompensaCusto.Value / 100);

        if nCusto = 0 then
            C_TabelaicFatorLucro.Value := 0
        else if (nPrecoDig) > 0 then
            C_TabelaicFATORLUCRO.Value := ((Arredondar((nPrecoDig - nCusto), 2) / Arredondar(nPrecoDig, 2)) - (nSemLucro / 100)) * 100
        else
            C_TabelaicFATORLUCRO.Value := -500; //100% de preju�zo sobre o custo do item;

        dfLucroChange(dfLucro); //Para atualizar o campo FatorLucro;
        DBEdit6Change(DBEdit6); //Para atualizar as cores dos labels;

    end;

end;

procedure TFrmItens.btAtualizarPrecoClick(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        C_Tabela.Edit;
        if C_TabelaTipoItem.Value < 8 then
            C_TabelaPreco.asCurrency := Arredondar(C_TabelaPrecoCalc.asCurrency, 2)
        else
            C_TabelaPreco.asCurrency := C_TabelaPrecoCalc.asCurrency;

        pnAtualizarPreco.Visible := false;
    end;
end;

procedure TFrmItens.DBEdit9Change(Sender: TObject);
begin
    inherited;
    VerificarPrecoMinimo;

end;

procedure TFrmItens.VerificarPrecoMinimo;
begin
    if DMProjeto.Parametro('PrecosAutomaticos') = 'S' then
        with DMItens do
        begin
            {Verificando se o Desconto M�ximo est� num limite aceitavel (com lucro ainda)}
            dfDescMax1.Font.Color := IIF((C_TabelaPrecoCalcDescMax.Value > 0) and
                (C_TabelaPrecoCalcDescMax.Value < C_TabelaMenorPrecoVenda.Value),
                clRed,
                clWindowText);
            dfDescMax2.Font.Color := dfDescMax1.Font.Color;
            dfDescMax3.Font.Color := dfDescMax1.Font.Color;

        end;
end;

procedure TFrmItens.ppmIrParaPopup(Sender: TObject);
begin
    inherited;
    ItensFatorLucroInadequado.Enabled := DMProjeto.Parametro('PrecosAutomaticos') = 'S';
    ItensComPrecoDandoPrejuizo.Enabled := ItensFatorLucroInadequado.Enabled;
    //  ItensComPrecoDiferenteDoCalculado.Enabled := ItensFatorLucroInadequado.Enabled;
    ItensComCompensacao.Enabled := ItensFatorLucroInadequado.Enabled;
end;

procedure TFrmItens.TS_Label77Click(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);

        if C_Tabela.State in [dsInsert, dsEdit] then
            C_TabelaCalcFields(C_Tabela)
        else
            C_Tabela.Edit; //J� ocorre o calcfields;

    end;

end;

procedure TFrmItens.cmbUnidadePrecoChange(Sender: TObject);
begin
    inherited;
    if DMItens.C_Unidades.Active and not DMItens.ExisteProdutosPreco(cmbUnidadePreco.LookUpKeyValue) then
    begin
        if cmbUnidadePreco.LookupKeyValue = DMItens.C_TabelaUnidade.Value then
            DMItens.AdicionaTabelaPreco(cmbUnidadePreco.LookUpKeyValue)
        else
            DMItens.VisualizaTabelaPreco(cmbUnidadePreco.LookUpKeyValue);
    end;
end;

procedure TFrmItens.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if UpperCase(LastDataObject.TableName) = 'UNIDADES' then
    begin
        DMItens.C_Unidades.Close;
        DMItens.C_Unidades.Open;

        if ActiveControl = cmbUnidade then
            cmbUnidade.LookUpKeyValue := LastDataObject.ObjectKey
        else if ActiveControl = cmbUnidadeCompra then
            cmbUnidadeCompra.LookUpKeyValue := LastDataObject.ObjectKey
        else if ActiveControl = cmbUnidadeVarejo then
            cmbUnidadeVarejo.LookUpKeyValue := LastDataObject.ObjectKey
        else if ActiveControl = cmbUnidadeCarga then
            cmbUnidadeCarga.LookUpKeyValue := LastDataObject.ObjectKey;

        bSkip := true;
    end
    else if LastDataObject.TableName = 'FAVORECIDOS' then
    begin
        if (ActiveControl is TTS_DBEditFavorecido) then
            TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
    end;
end;

procedure TFrmItens.LerCamposDefinidos;
var i: integer;
    sCampo, sTitulo, sTipo: string;
begin

    sCamposDef := DMProjeto.Parametro('ItensCamposDefinidos');
    sCamposTit := DMProjeto.Parametro('ItensCamposTitulos');
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
    for i := 1 to ContaStrings(sCamposDef, ';') do
    begin
        sCampo := SeparaStrings(sCamposDef, ';', i);
        sTitulo := SeparaStrings(sCamposTit, ';', i);
        sTipo := SeparaStrings(sCamposTipo, ';', i);
        if sCampo = '1' then
        begin
            if sTipo = '0' then
            begin
                lblCampo1.visible := true;
                lblCampo1.caption := sTitulo;
                dfCampo1.visible := true;
                lblCampo1.focuscontrol := dfCampo1;
            end
            else if sTipo = '1' then
            begin
                cmbCampo1.visible := true;
                lblCampo1.visible := true;
                lblCampo1.caption := sTitulo;
                lblCampo1.focuscontrol := cmbCampo1;
                PopulaCampo(cmbCampo1, 1);
            end
            else if sTipo = '2' then
            begin
                cbCampo1.visible := true;
                cbCampo1.caption := sTitulo;
                if DMItens.C_TabelaCampo01.IsNull or (DMItens.C_TabelaCampo01.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo01.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '2' then
        begin
            if sTipo = '0' then
            begin
                lblCampo2.visible := true;
                lblCampo2.caption := sTitulo;
                lblCampo2.focuscontrol := dfCampo2;
                dfCampo2.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo2.visible := true;
                lblCampo2.visible := true;
                lblCampo2.caption := sTitulo;
                lblCampo2.focuscontrol := cmbCampo2;
                PopulaCampo(cmbCampo2, 2);
            end
            else if sTipo = '2' then
            begin
                cbCampo2.visible := true;
                cbCampo2.caption := sTitulo;
                if DMItens.C_TabelaCampo02.IsNull or (DMItens.C_TabelaCampo02.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo02.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '3' then
        begin
            if sTipo = '0' then
            begin
                lblCampo3.visible := true;
                lblCampo3.caption := sTitulo;
                lblCampo3.focuscontrol := dfCampo3;
                dfCampo3.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo3.visible := true;
                lblCampo3.visible := true;
                lblCampo3.caption := sTitulo;
                lblCampo3.focuscontrol := cmbCampo3;
                PopulaCampo(cmbCampo3, 3);
            end
            else if sTipo = '2' then
            begin
                cbCampo3.visible := true;
                cbCampo3.caption := sTitulo;
                if DMItens.C_TabelaCampo03.IsNull or (DMItens.C_TabelaCampo03.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo03.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '4' then
        begin
            if sTipo = '0' then
            begin
                lblCampo4.visible := true;
                lblCampo4.caption := sTitulo;
                lblCampo4.focuscontrol := dfCampo4;
                dfCampo4.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo4.visible := true;
                lblCampo4.visible := true;
                lblCampo4.caption := sTitulo;
                lblCampo4.focuscontrol := cmbCampo4;
                PopulaCampo(cmbCampo4, 4);
            end
            else if sTipo = '2' then
            begin
                cbCampo4.visible := true;
                cbCampo4.caption := sTitulo;
                if DMItens.C_TabelaCampo04.IsNull or (DMItens.C_TabelaCampo04.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo04.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '5' then
        begin
            if sTipo = '0' then
            begin
                lblCampo5.visible := true;
                lblCampo5.caption := sTitulo;
                lblCampo5.focuscontrol := dfCampo5;
                dfCampo5.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo5.visible := true;
                lblCampo5.visible := true;
                lblCampo5.caption := sTitulo;
                lblCampo5.focuscontrol := cmbCampo5;
                PopulaCampo(cmbCampo5, 5);
            end
            else if sTipo = '2' then
            begin
                cbCampo5.visible := true;
                cbCampo5.caption := sTitulo;
                if DMItens.C_TabelaCampo05.IsNull or (DMItens.C_TabelaCampo05.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo05.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '6' then
        begin
            if sTipo = '0' then
            begin
                lblCampo6.visible := true;
                lblCampo6.caption := sTitulo;
                lblCampo6.focuscontrol := dfCampo6;
                dfCampo6.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo6.visible := true;
                lblCampo6.visible := true;
                lblCampo6.caption := sTitulo;
                lblCampo6.focuscontrol := cmbCampo6;
                PopulaCampo(cmbCampo6, 6);
            end
            else if sTipo = '2' then
            begin
                cbCampo6.visible := true;
                cbCampo6.caption := sTitulo;
                if DMItens.C_TabelaCampo06.IsNull or (DMItens.C_TabelaCampo06.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo06.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '7' then
        begin
            if sTipo = '0' then
            begin
                lblCampo7.visible := true;
                lblCampo7.caption := sTitulo;
                lblCampo7.focuscontrol := dfCampo7;
                dfCampo7.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo7.visible := true;
                lblCampo7.visible := true;
                lblCampo7.caption := sTitulo;
                lblCampo7.focuscontrol := cmbCampo7;
                PopulaCampo(cmbCampo7, 7);
            end
            else if sTipo = '2' then
            begin
                cbCampo7.visible := true;
                cbCampo7.caption := sTitulo;
                if DMItens.C_TabelaCampo07.IsNull or (DMItens.C_TabelaCampo07.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo07.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '8' then
        begin
            if sTipo = '0' then
            begin
                lblCampo8.visible := true;
                lblCampo8.caption := sTitulo;
                lblCampo8.focuscontrol := dfCampo8;
                dfCampo8.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo8.visible := true;
                lblCampo8.visible := true;
                lblCampo8.caption := sTitulo;
                lblCampo8.focuscontrol := cmbCampo8;
                PopulaCampo(cmbCampo8, 8);
            end
            else if sTipo = '2' then
            begin
                cbCampo8.visible := true;
                cbCampo8.caption := sTitulo;
                if DMItens.C_TabelaCampo08.IsNull or (DMItens.C_TabelaCampo08.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo08.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '9' then
        begin
            if sTipo = '0' then
            begin
                lblCampo9.visible := true;
                lblCampo9.caption := sTitulo;
                lblCampo9.focuscontrol := dfCampo9;
                dfCampo9.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo9.visible := true;
                lblCampo9.visible := true;
                lblCampo9.caption := sTitulo;
                lblCampo9.focuscontrol := cmbCampo9;
                PopulaCampo(cmbCampo9, 9);
            end
            else if sTipo = '2' then
            begin
                cbCampo9.visible := true;
                cbCampo9.caption := sTitulo;
                if DMItens.C_TabelaCampo09.IsNull or (DMItens.C_TabelaCampo09.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo09.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end
        else if sCampo = '10' then
        begin
            if sTipo = '0' then
            begin
                lblCampo10.visible := true;
                lblCampo10.caption := sTitulo;
                lblCampo10.focuscontrol := dfCampo10;
                dfCampo10.visible := true;
            end
            else if sTipo = '1' then
            begin
                cmbCampo10.visible := true;
                lblCampo10.visible := true;
                lblCampo10.caption := sTitulo;
                lblCampo10.focuscontrol := cmbCampo10;
                PopulaCampo(cmbCampo10, 10);
            end
            else if sTipo = '2' then
            begin
                cbCampo10.visible := true;
                cbCampo10.caption := sTitulo;
                if DMItens.C_TabelaCampo10.IsNull or (DMItens.C_TabelaCampo10.value <> 'S') then
                begin
                    DMItens.C_Tabela.edit;
                    DMItens.C_TabelaCampo10.value := 'N';
                    DMItens.C_Tabela.UpdateRecord;
                end;
            end;
        end;
    end;
end;

procedure TFrmItens.PopulaCampo(obj: TTS_DBComboBox; nCampo: integer);
var xCampo: string;
begin
    xCampo := 'campo' + AdicionarStr(IntToStr(nCampo), '0', 2);
    TTS_DBComboBox(obj).Items.Clear;
    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.Text := 'select distinct ' + xCampo + ' from itens where ' + xCampo + ' is not null order by 1';
    DMProjeto.Q_SQL.open;

    while not DMProjeto.Q_SQL.eof do
    begin
        TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
        DMProjeto.Q_SQL.next;
    end;
end;

procedure TFrmItens.btComando2Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ULTVENDAS') then
        exit;
    if DMItens.C_TabelaItem.IsNull then
    begin
        DlgMsg.ShowMsg(542);
        exit;
    end;
    DlgUltimasVendasProd := TDlgUltimasVendasProd.Create(self, DMItens.C_TabelaItem.value, DMItens.C_TabelaDescricao.value);
    DlgUltimasVendasProd.free;
end;

procedure TFrmItens.btCaracteristicas1Click(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcEstoque.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);
end;

procedure TFrmItens.btDefinirCamposClick(Sender: TObject);
begin
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'CCUSTOM') then
        exit;

    DlgDefinirCampos := TDlgDefinirCampos.create(self);
    DlgDefinirCampos.free;

    LerCamposDefinidos;
end;

procedure TFrmItens.btCaracteristicas2Click(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcSemEstoque.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);
end;

procedure TFrmItens.btCaracteristicas3Click(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcServicos.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);
end;

procedure TFrmItens.ppmOutrosPopup(Sender: TObject);
begin
    inherited;
    AjustedeItens1.Visible := DMItens.C_TabelaTipoItem.value = 1;
    CalcularEstoqueMnimo1.Visible := DMItens.C_TabelaTipoItem.value = 1;
    QuantidadesdosLotesexistentes2.Visible := (DMItens.C_TabelaTipoItem.value = 1) and DMProjeto.bControleValidade;
    EstoquesporAlmoxarifado1.Visible := DMItens.bAlteracao and (DMProjeto.Parametro('MultiAlmox') = 'S');
end;

procedure TFrmItens.dbgMultUnidadeExit(Sender: TObject);
begin
    inherited;
    try
        if DMItens.C_ItensUnidades.State <> dsBrowse then
            DMItens.C_ItensUnidades.Post;
    except
    end;
end;

procedure TFrmItens.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
    i: Integer;
begin
    inherited;
    case key of
        34: if not FormatoTabela.Checked and (Estado = fsInclusao) then
            begin
                if pcItens.ActivePage = tsProdutosInvent then
                    TmpPage := pcEstoque
                else if pcItens.ActivePage = tsProdutosSemInvent then
                    TmpPage := pcSemEstoque
                else if pcItens.ActivePage = tsServicos then
                    TmpPage := pcServicos;

                {Procurando o pr�ximo visivel que pode ser ativado}
                for i := TmpPage.ActivePageIndex + 1 to TmpPage.PageCount - 1 do
                begin
                    TmpButton := TTS_SpeedButton(FindComponent(TmpPage.Pages[i].Hint));
                    if TmpButton <> nil then
                        with TmpButton do
                        begin
                            if Visible then
                            begin
                                OnClick(TmpButton);
                                Break;
                            end;
                        end;
                end;

                key := 0;
            end;
        33: if not FormatoTabela.Checked and (Estado = fsInclusao) then
            begin
                if pcItens.ActivePage = tsProdutosInvent then
                    TmpPage := pcEstoque
                else if pcItens.ActivePage = tsProdutosSemInvent then
                    TmpPage := pcSemEstoque
                else if pcItens.ActivePage = tsServicos then
                    TmpPage := pcServicos;

                for i := TmpPage.ActivePageIndex - 1 downto 0 do
                begin
                    TmpButton := TTS_SpeedButton(FindComponent(TmpPage.Pages[i].Hint));
                    if TmpButton <> nil then
                        with TmpButton do
                        begin
                            if Visible then
                            begin
                                OnClick(TmpButton);
                                Break;
                            end;
                        end;
                end;

                key := 0;
            end;
    end;
end;

procedure TFrmItens.TS_DBEditNumber3DblClick(Sender: TObject);
begin
    inherited;
    if not DMItens.bAlteracao then
        exit;

    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ALT_CM') then
        exit;

    DlgAlteraCustoMedio := TDlgAlteraCustoMedio.Create(self);
    DlgAlteraCustoMedio.Item := DMItens.C_TabelaItem.Value;
    DlgAlteraCustoMedio.Descricao := DMItens.C_TabelaDescricao.Value;

    DlgAlteraCustoMedio.Estoque := DMItens.C_TabelaicEstoque.Value;
    DlgAlteraCustoMedio.FatorVenda := DMItens.C_TabelaFatorUndVenda.Value;
    DlgAlteraCustoMedio.CustoAtual := DMItens.C_TabelaicCustoMedio.Value;

    if DlgAlteraCustoMedio.ShowModal = 100 then
    begin
        if DlgAlteraCustoMedio.NovoCusto <> DMItens.C_TabelaicCustoMedio.Value then
        begin
            DMItens.C_Tabela.Edit;
            DMItens.C_TabelaicCustoMedio.Value := DlgAlteraCustoMedio.NovoCusto;
        end;
    end;
    DlgAlteraCustoMedio.Release;
end;

procedure TFrmItens.dfLucroExit(Sender: TObject);
begin
    inherited;
    with DMItens do
    begin
        if (C_TabelaicFatorLucro.asFloat <> 0) and (StrToIntDef(DMProjeto.Parametro('LucroMinimo'), 0) > 0) then
            if (StrToFloatDef(DMProjeto.Parametro('LucroMinimo'), 0) - C_TabelaicFatorLucro.asFloat > 0.01) then
                DlgMsg.ShowMsg(2720, [DMProjeto.Parametro('LucroMinimo') + '%']);
    end;
end;

procedure TFrmItens.dbgTabelaPrecoColumnSorting(Sender: TObject;
    Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
    inherited;
    Allow := TdxDBGridColumn(Column).FieldName = 'PERCENTUAL';
end;

procedure TFrmItens.pnTabelaPrecoExit(Sender: TObject);
begin
    inherited;
    SetTabelaPrecoInicial;
end;

procedure TFrmItens.dbgTabelaPrecoEdited(Sender: TObject;
    Node: TdxTreeListNode);
var
    bGerar: boolean;
    nTab: integer;
    nPrecoAlt: Currency;
begin
    inherited;
    {Gerando ProdutosPreco se os pre�os da unidade foram modificados pelo usu�rio}
    if dbgTabelaPreco.DataSource.DataSet.Name = 'C_ProdutosPrecoTmp' then
    begin
        {Verificando se houve Altera��o dos precos}
        nTab := DMItens.C_ProdutosPrecoTmp.FieldByName('TabelaPreco').asInteger;

        bGerar := false;

        if (nTab = 0) and
            (DMItens.C_ProdutosPrecoTmp.FieldByName('Preco').asCurrency <> DMItens.C_ProdutosPrecoTmp.FieldByName('icPrecoOriginal').asCurrency) then
            bGerar := true
        else if (nTab > 0) and
            (DMItens.C_ProdutosPrecoTmp.FieldByName('PrecoManual').asString = 'S') and
            (DMItens.C_ProdutosPrecoTmp.FieldByName('Baseada').asString = 'S') then
            bGerar := true;

        if bGerar then
        begin
            nPrecoAlt := DMItens.C_ProdutosPrecoTmp.FieldByName('Preco').asCurrency;
            DMItens.AdicionaTabelaPreco(cmbUnidadePreco.LookupKeyValue,
                DMItens.GetPrecoTabZero(DMItens.C_ProdutosPrecoTmp, cmbUnidadePreco.LookupKeyValue));
            DMItens.C_ProdutosPreco.Locate('TabelaPreco', nTab, []);

            if (nTab > 0) then
            begin
                DMItens.C_ProdutosPreco.Edit;
                DMItens.C_ProdutosPrecoPreco.Value := nPrecoAlt;
                DMItens.C_ProdutosPreco.Post;
            end;

        end;

    end;
end;

procedure TFrmItens.pmSetPrecosCalcsClick(Sender: TObject);
begin
    inherited;
    DMItens.ApagarPrecosUnd(cmbUnidadePreco.LookupKeyValue);
    DMItens.VisualizaTabelaPreco(cmbUnidadePreco.LookupKeyValue);
end;

procedure TFrmItens.dbgTabelaPrecoCustomDrawColumnHeader(Sender: TObject;
    AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
    var ADone: Boolean);
begin
    inherited;
    if dbgTabelaPreco.DataSource.DataSet.Name <> 'C_ProdutosPrecoTmp' then
        AColor := $00EBEBEB
    else
        AColor := $00BFFFFF;
end;

procedure TFrmItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key in ['G', 'g'] then
    begin
        if pos(uppercase(ActiveControl.Name), 'DFPTAXINCLUSO,DFCUSTOADIC,DFLUCRO,DFCOMISSAO1,DFCOMISSAO2,DFCOMISSAO3,DFDESCMAX1,DFDESCMAX2,DFDESCMAX3') > 0 then
        begin
            ConsiderarPercentualdoGrupo1Click(self);
        end;
    end;
end;

procedure TFrmItens.dfDescMax1Change(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaDescontoMaximo.Value) then
        with DMItens do
        begin
            C_TabelaDescontoMaximo.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.dfComissao1Change(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaComissao.Value) then
        with DMItens do
        begin
            C_TabelaComissao.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.dfCustoAdicChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaCustoDespesas.Value) then
        with DMItens do
        begin
            C_TabelaCustoDespesas.Value := dfCustoAdic.Value;
        end;
end;

procedure TFrmItens.dfLucroChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaFatorLucro.Value) then
        with DMItens do
        begin
            C_TabelaFatorLucro.Value := dfLucro.Value;
        end;
end;

procedure TFrmItens.ppmGrupoPopup(Sender: TObject);
var
    P: TPoint;
begin
    inherited;
    ConsiderarPercentualdoGrupo1.Enabled := (DMItens.C_TabelaGrupo.Value > 0);

end;

procedure TFrmItens.ConsiderarPercentualdoGrupo1Click(Sender: TObject);
var
    sField: string;
begin
    inherited;

    sField := TTS_DBEditNumber(ActiveControl).DataField;
    sField := replace(sField, 'ic', '');

    DMItens.C_Tabela.Edit;
    DMItens.C_Tabela.FieldByName(sField).asFloat := -999; //Para que seja considerado o valor definido no grupo ou em FatoresCustos.
end;

procedure TFrmItens.dfDescMax3MouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ActiveControl := TWinControl(Sender);
end;

procedure TFrmItens.dfPrecoCalcExit(Sender: TObject);
begin
    inherited;
    SincronizarLucroItem(TTS_DBEditNumber(Sender).Value);
    DBEdit1Change(Self);
end;

procedure TFrmItens.LocalizarUltimo;
var
    sLast: string;
begin
    with DMItens.Q_SQL do
    begin
        Close;
        SQL.Text := 'Select max(ITEM) as Last from Itens where Desativado = ''N'' and tipoitem = ' + DMItens.C_TabelaTipoItem.asstring;
        Open;
        sLast := FieldByName('Last').asString;

        Close;

        if sLast = '' then
            sLast := '0';

    end;

    Localizar('', ' where i.ITEM = ' + sLast);

end;

procedure TFrmItens.cmbUnidadeEnter(Sender: TObject);
begin
    inherited;
    if not TTS_DBLookupComboBox(Sender).DroppedDown then
        TTS_DBLookupComboBox(Sender).DroppedDown := true;
end;

procedure TFrmItens.Memorizar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(self, nCodForm, DMItens.C_TabelaItem.Value,
        DMItens.C_TabelaCODIGO.Value, DMItens.C_TabelaDescricao.Value, 0);
end;

procedure TFrmItens.DBEdit4Change(Sender: TObject);
begin
    inherited;
    lbBalanco.Visible := (DMItens.C_TabelaBalanco.Value = 'S');
end;

procedure TFrmItens.btSubItensClick(Sender: TObject);
begin
    inherited;
    if (DMProjeto.CriarForm('DlgItensFilhos', self, true) = 100) and DMItens.bAlteracao then
        btGravarClick(self);
end;

procedure TFrmItens.DBEdit12Change(Sender: TObject);
begin
    inherited;
    if DMItens.C_TabelaHasChildren.Value = 'S' then
    begin
        btSubItens.Font.Color := clRed;
        btSubItens.Font.Style := [fsBold];
    end
    else
    begin
        btSubItens.Font.Color := clBlack;
        btSubItens.Font.Style := [];
    end;
end;

procedure TFrmItens.HabilitarAlteraes1Click(Sender: TObject);
begin
    inherited;
    GridPreco.DisableEditor := true;
    GridicEstoque.DisableEditor := true;
end;

procedure TFrmItens.DefinirPromocao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, DMItens.C_TabelaItem.Value]);
    DMProjeto.CriarForm('FrmPromocoes', self, true);

    {Verificando se o Item ficou em promo��o - O Flag promo�ao � atualizado por triggers}
    if DMItens.bAlteracao then
        with DMItens.Q_SQL do
        begin
            Close;
            SQL.Text := 'Select Promocao from Itens where Item = :I';
            Params[0].asInteger := DMItens.C_TabelaItem.Value;
            Open;

            if FieldByName('Promocao').asString = 'S' then
            begin
                DMItens.C_Tabela.Edit;
                DMItens.C_TabelaPromocao.Value := 'S';
            end;

            Close;
        end;

end;

procedure TFrmItens.DBEdit13Change(Sender: TObject);
begin
    inherited;
    lbPromocao.Visible := DMItens.C_TabelaPromocao.Value = 'S';
end;

procedure TFrmItens.OutrasOpes1Click(Sender: TObject);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmItens.FormComponentBeforeMoveRecord(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    {Verificando se deve salvar o registro}
    {O Registro ser� salvo automaticamene se o usu�rio modificar o Preco;
     Para subitens, no momento em que a tela � fechada j� � salvo o registro}
    with DMItens do
    begin
        if C_ProdutosPreco.Active and (C_ProdutosPreco.ChangeCount > 0) then
        begin
            if C_Tabela.State in [dsEdit, dsInsert] then
                C_Tabela.post;
            btGravarClick(self);
        end
        else if C_ItensUnidades.Active and (C_ItensUnidades.ChangeCount > 0) then
        begin
            if C_Tabela.State in [dsEdit, dsInsert] then
                C_Tabela.post;
            btGravarClick(self);
        end;
    end;

end;

procedure TFrmItens.FormComponentBeforeSave(Sender: TObject;
    var bSkip: Boolean);
var
    sUnidades: string;
begin
    inherited;

    ActiveControl := nil;

    with DMItens do
    begin
        if not bAlteracao and (not C_ItensUnidades.Active or (C_ItensUnidades.RecordCount = 0)) then
            C_ItensUnidades.Append;
    end;

    if (DMItens.C_TabelaCodigo.Value = '') then
    begin
        DMItens.C_Tabela.edit;
        DMItens.C_TabelaCodigo.value := DMProjeto.GeraCodigoItem(dfCodigo.text, DMItens.C_TabelaItem.value);
    end;

    SetTabelaPrecoInicial;

    {Alertando para poss�vel distor��o entre o pre�o de compra e o de venda. Provodado por ItensUnidades}
    with DMItens do
    begin
        if (C_TabelaPreco.Value <= C_TabelaicCustoMedio.Value) and (C_TabelaTipoItem.Value in [1]) and
            (C_TabelaPreco.Value > 0) and
            (DlgMsg.ShowMsg(3157, [C_TabelaPreco.DisplayText, C_TabelaicCustoMedio.DisplayText]) = 200) then
        begin
            if not bAlteracao then
            begin
                btCaracteristicas1.OnClick(btCaracteristicas1);
                ActiveControl := dfUltPrecoCompra;
            end
            else
            begin
                btCaracteristicas1.OnClick(btCaracteristicas1);
                ActiveControl := dfPrecoVenda1;
            end;
            bSkip := true;
            exit;
        end;
    end;

    {Verificando se o estoque foi informado e o custo n�o}
    if not DMItens.bAlteracao and (DMItens.C_TabelaEstoque.Value <> 0) and (DMItens.C_TabelaCustoMedio.value = 0) then
    begin
        DlgMsg.ShowMsg(3127);
        btCaracteristicas1.OnClick(btCaracteristicas1);
        ActiveControl := dfUltPrecoCompra;
        bSkip := true;
        exit;
    end;

    if (DMItens.C_TabelaTipoItem.Value in [1, 2, 3]) and
        (DMItens.C_TabelaPrecoCalcDescMax.Value < DMItens.C_TabelaMenorPrecoVenda.Value) and
        (DMProjeto.Parametro('SemMsgPrecoMinimo') <> 'S') then
        DlgMsg.ShowMsg(2456, [DMItens.C_TabelaPrecoCalcDescMax.DisplayText, DMItens.C_TabelaMenorPrecoVenda.DisplayText], 'SemMsgPrecoMinimo');

    if DMItens.C_TabelaTipoItem.Value = 1 then
        with DMItens do
        begin
            if not VerificaUnidade(DMItens.C_TabelaUnidade.AsString) then
            begin
                DlgMsg.ShowMsg(929, ['a Unidade ''' + cmbUnidade.Text + ''' na tabela de Multi-Unidade']);
                btEstoques.OnClick(btEstoques);
                dbgMultUnidade.SetFocus;
                bSkip := true;
                Exit;
            end;

            if (C_TabelaUnidadeEntrada.AsString <> '') and (not VerificaUnidade(C_TabelaUnidadeEntrada.AsString)) then
            begin
                DlgMsg.ShowMsg(929, ['a Unidade ''' + cmbUnidadeCompra.Text + ''' na tabela de Multi-Unidade']);
                btEstoques.OnClick(btEstoques);
                dbgMultUnidade.SetFocus;
                bSkip := true;
                Exit;
            end;

            if (C_TabelaUnidadeVarejo.AsString <> '') and (not VerificaUnidade(C_TabelaUnidadeVarejo.AsString)) then
            begin
                DlgMsg.ShowMsg(929, ['a Unidade ''' + cmbUnidadeVarejo.Text + ''' na tabela de Multi-Unidade']);
                btEstoques.OnClick(btEstoques);
                dbgMultUnidade.SetFocus;
                bSkip := true;
                Exit;
            end;

            if DMItens.C_ProdutosPreco.Active then
                with DMItens.C_ProdutosPreco do
                begin
                    First;
                    Filtered := false;
                    while not Eof do
                    begin
                        if (fieldbyname('preco').value <> 0) and (fieldbyname('Unidade').AsString <> '') and (not DMItens.VerificaUnidade(fieldbyname('Unidade').AsString)) then
                        begin
                            DlgMsg.ShowMsg(929, ['a Unidade ''' + fieldbyname('Unidade').AsString + ''' na tabela de Multi-Unidade']);
                            btEstoques.OnClick(btEstoques);
                            dbgMultUnidade.SetFocus;
                            EnableControls;
                            bSkip := true;
                            Exit;
                        end;
                        Next;
                    end;
                    if Filter <> '' then
                        Filtered := true;
                end;

            if C_ItensUnidades.State <> dsBrowse then
                C_ItensUnidades.Post;

            {Verificando se existem unidades duplicadas}
            if ContaStrings(dbgMultUnidade.Distinct('Unidade'), ',') <> C_ItensUnidades.RecordCount then
            begin
                DlgMsg.ShowMsg(3150); //Unidades Duplicadas
                btEstoques.OnClick(btEstoques);
                dbgMultUnidade.SetFocus;
                bSkip := true;
                exit;
            end;

            {Se todas as unidades s�o distintas (valida��o acima), o distinct dos fatores identifica se existem duas
             unidades diferentes com mesmo fator.}
            if ContaStrings(dbgMultUnidade.Distinct('Fator'), ',') <> C_ItensUnidades.RecordCount then
            begin
                {Tentando Eliminar Unidades sem Uso}
                sUnidades := C_TabelaUnidade.Value + ',' + C_TabelaUnidadeEntrada.Value + ',' +
                    C_TabelaUnidadeVarejo.Value + ',' + C_TabelaUnidadeCarga.Value;

                C_ItensUnidades.First;
                while not C_ItensUnidades.EOF do
                begin
                    if (C_ItensUnidadesUnidade.Value <> 'Und') and (pos(C_ItensUnidadesUnidade.Value, sUnidades) = 0) then
                        C_ItensUnidades.Delete
                    else
                        C_ItensUnidades.Next;
                end;

                if ContaStrings(dbgMultUnidade.Distinct('Fator'), ',') <> C_ItensUnidades.RecordCount then
                begin
                    DlgMsg.ShowMsg(3151); //Fatores Duplicados
                    btEstoques.OnClick(btEstoques);
                    dbgMultUnidade.SetFocus;
                    bSkip := true;
                    exit;
                end;

            end;

            {Verificando se existe a unidade de fator UM}
            if not C_ItensUnidades.Locate('Fator', 1, []) then
            begin
                DlgMsg.ShowMsg(3152); //Falta a Unidade Minima (=1);
                btEstoques.OnClick(btEstoques);
                dbgMultUnidade.SetFocus;
                bSkip := true;
                exit;
            end;

        end; //TipoItem = 1;
end;

procedure TFrmItens.pcEstoqueChangingToTab(Sender: TObject; tab: Integer;
    var AllowChange: Boolean);
begin
    inherited;
    if (Tab = 1) and (DMItens.bAlteracao) and not (DMItens.C_ItensUnidades.Active) then
        DMItens.C_ItensUnidades.Open;
end;

procedure TFrmItens.EstoquesporAlmoxarifado1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgItensAlmox', self, true);
end;

procedure TFrmItens.ppmPrecoPopup(Sender: TObject);
begin
    inherited;
    UsaroPreoCalculadoparaaTabela1.Enabled := (DMItens.C_ProdutosPrecoBaseada.Value = 'S') and
        (DMItens.C_ProdutosPrecoPrecoManual.Value = 'S');
    pmSetPrecosCalcs.Enabled := (DMItens.C_ProdutosPrecoUnidade.Value <> DMItens.C_TabelaUnidade.Value) and
        (dbgTabelaPreco.DataSource.DataSet.Name <> 'C_ProdutosPrecoTmp');
end;

procedure TFrmItens.UsaroPreoCalculadoparaaTabela1Click(Sender: TObject);
begin
    inherited;
    dbgTabelaPreco.RemoverLinha;
end;

procedure TFrmItens.btFiscalClick(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcEstoque.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);
end;

procedure TFrmItens.DBEdit14Change(Sender: TObject);
begin
    inherited;
    if TDBEdit(Sender).text <> '' then
    begin
        dfAliqICMS.SetReadOnly(TDBEdit(Sender).text <> 'T');
        DBEdit6Change(self);
    end;
end;

procedure TFrmItens.DBEdit5Change(Sender: TObject);
var sCST: string;
begin
    inherited;
    try
        sCST := TDBEdit(Sender).text;
        dfReducaoCST.SetReadOnly((sCST = '') or (sCST[2] <> '2'));
    except
    end;
    DBEdit6Change(self);
end;

procedure TFrmItens.cmbCSTChange(Sender: TObject);
begin
    inherited;
    DMItens.C_TabelaCST.Value := cmbCST.LookupKeyValue;
    DBEdit6Change(self);
end;

procedure TFrmItens.cmbTipoTributacaoChange(Sender: TObject);
begin
    inherited;
    DMItens.C_TabelaSituacaoECF.asVariant := cmbTipoTributacao.LookupKeyValue;
    DBEdit6Change(self);
end;

procedure TFrmItens.dfAliqICMSChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaAliqICMS.Value) then
        with DMItens do
        begin
            C_TabelaAliqICMS.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.dfReducaoCSTChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaReducaoCST.Value) then
        with DMItens do
        begin
            C_TabelaReducaoCST.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.dfTVAChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaTVA.Value) then
        with DMItens do
        begin
            C_TabelaTVA.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.dfTVAFonteChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaTVAFonte.Value) then
        with DMItens do
        begin
            C_TabelaTVAFonte.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmItens.cmbTipoTributacaoMouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;

    if Button = mbRight then
    begin
        if TWinControl(Sender).CanFocus then
            ActiveControl := TWinControl(Sender);

        ppmFiscal.PopupFromCursorPos;
    end;

end;

procedure TFrmItens.ConsiderarFiscaldoGrupoClick(Sender: TObject);
var
    sField: string;
begin
    inherited;

    if ActiveControl is TTS_DBLookupComboBox then
    begin
        if ActiveControl.Name = 'cmbTipoTributacao' then
            DMItens.C_TabelaSituacaoECF.asVariant := null
        else if ActiveControl.Name = 'cmbCST' then
            DMItens.C_TabelaCST.asVariant := null;
    end
    else
    begin
        if not TTS_DBEditNumber(ActiveControl).ReadOnly then
        begin
            sField := TTS_DBEditNumber(ActiveControl).DataField;
            sField := replace(sField, 'ic', '', true);

            DMItens.C_Tabela.Edit;
            DMItens.C_Tabela.FieldByName(sField).asFloat := -999; //Para que seja considerado o valor definido no grupo ou em FatoresCustos.
        end;
    end;
end;

procedure TFrmItens.TS_SpeedButton1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ALTCUSTO') then
        exit;
    DlgFormacaoCusto := TDlgFormacaoCusto.Create(self);
    DlgFormacaoCusto.ShowModal;
    DlgFormacaoCusto.Release;
    DlgFormacaoCusto := nil
end;

procedure TFrmItens.Adicionar1Click(Sender: TObject);
begin
    inherited;
    DMItens.C_ItensUnidades.append;
end;

procedure TFrmItens.btGravarClick(Sender: TObject);
var nCodigo: Integer;
    sTeste: string;
    bTeste: boolean;
begin
    if (Estado = fsInclusao) and (DMPRojeto.Parametro('ItemCodigoFornec') = 'S') then
    begin
        with DMItens.Q_SQL do
        begin
            Close;
            Sql.Text := 'Select Max(Codigo) as Codigo From Itens where Fabricante = :Fornec and strlen(codigo) < 10';
            ParamByName('Fornec').AsInteger := DMItens.C_TabelaFABRICANTE.AsInteger;
            Open;
            nCodigo := DMItens.Q_SQL.FieldByName('Codigo').AsInteger + 1;
            DMItens.C_Tabela.Edit;
            DMItens.C_TabelaCODIGO.AsString := Copy('0000000', 1, 7 - Length(IntToStr(nCodigo))) +
                IntToStr(nCodigo); 
            Close;
        end;
    end;
    inherited;
end;

end.
