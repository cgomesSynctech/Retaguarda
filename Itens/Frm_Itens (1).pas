unit Frm_Itens;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
    TS_DBImageEdit, TS_DBMemo, TS_DBPopupEdit, TS_DBComboBox, TS_DBEditDate,
    DBCtrls, TS_DBText, Mask, TS_GroupBox, dxDBTLCl, dxGrClms, TS_DBCheckBox,
    TS_LookupComboBox, TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEdit,
    TS_CheckBox, dxDBEdtr, TS_DBLookupComboBox, dxEditor, TS_DBEditNumber,
    TS_Shape, ComCtrls, TS_PageControl, DBText, TS_DBTextEffect, DB, ExtDlgs,
    Dlg_PopupContas;

type
    TFrmItens = class(TFrmPadrao)
        pcItens: TTS_PageControl;
        tsProdutosInvent: TTS_TabSheet;
        pcEstoque: TTS_PageControl;
        tsCaracteristicas1: TTS_TabSheet;
        shapePreco: TTS_Shape;
        lbPrecoVenda1: TTS_Label;
        lbComissao1: TTS_Label;
        lbDescMax1: TTS_Label;
        lbFab: TTS_Label;
        lblUnidade: TTS_Label;
        lbUnidadeVarejo: TTS_Label;
        lbUnidadeCarga: TTS_Label;
        lblEstoque: TTS_Label;
        TS_Label17: TTS_Label;
        TS_Label33: TTS_Label;
        TS_Label65: TTS_Label;
        lblDescCompra: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Panel1: TTS_Panel;
        dfPrecoVenda1: TTS_DBEditNumber;
        dfComissao1: TTS_DBEditNumber;
        dfDescMax1: TTS_DBEditNumber;
        cmbFabricante: TTS_DBLookupComboBox;
        cbLockFabricante: TTS_CheckBox;
        cbLockUnidades: TTS_CheckBox;
        cmbUnidadeVarejo: TTS_DBLookupComboBox;
        cmbUnidadeCarga: TTS_DBLookupComboBox;
        dfEstoque_b: TTS_DBEditNumber;
        cbLockFornecedor: TTS_CheckBox;
        cmbUnidadeCompra: TTS_DBLookupComboBox;
        TS_DBEdit2: TTS_DBEdit;
        dfFornPreferencia: TTS_DBEditFavorecido;
        pnTabelaPreco: TTS_Panel;
        TS_Label55: TTS_Label;
        dbgTabelaPreco: TTS_QDBGrid;
        dbgTabelaPrecolkTabelaPreco: TdxDBGridColumn;
        dbgTabelaPrecoPRECO: TdxDBGridCalcColumn;
        dbgTabelaPrecoPRECOMANUAL: TdxDBGridColumn;
        dbgTabelaPrecoTABELAPRECO: TdxDBGridColumn;
        dbgTabelaPrecoicPrecoMinimo: TdxDBGridColumn;
        dbgTabelaPrecoPERCENTUAL: TdxDBGridColumn;
        dfUltPrecoCompra: TTS_DBEditNumber;
        dfUltForn1: TTS_DBEditFavorecido;
        cbIdentificacao: TTS_DBCheckBox;
        cbEncerrantes: TTS_DBCheckBox;
        cbPosVenda: TTS_DBCheckBox;
        tsEstoque: TTS_TabSheet;
        TS_Shape10: TTS_Shape;
        TS_Label24: TTS_Label;
        TS_Label25: TTS_Label;
        TS_Label26: TTS_Label;
        lblEstoque1: TTS_Label;
        TS_Label28: TTS_Label;
        TS_Label75: TTS_Label;
        TS_Label34: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Shape9: TTS_Shape;
        TS_Label41: TTS_Label;
        TS_Label42: TTS_Label;
        TS_Label35: TTS_Label;
        dfMinimo: TTS_DBEditNumber;
        dfMaximo: TTS_DBEditNumber;
        dfPontoPedido: TTS_DBEditNumber;
        dfEstoque: TTS_DBEditNumber;
        TS_DBEditNumber1: TTS_DBEditNumber;
        dbgMultUnidade: TTS_QDBGrid;
        dbgMultUnidadelkUnidade: TdxDBGridLookupColumn;
        dbgMultUnidadeFATOR: TdxDBGridMaskColumn;
        dbgMultUnidadeUnidade: TdxDBGridColumn;
        dbgMultUnidadePERCENTUAL: TdxDBGridCurrencyColumn;
        dbgMultUnidadePRECOMANUAL: TdxDBGridCurrencyColumn;
        dbgMultUnidadePERCENTUALMINIMO: TdxDBGridCurrencyColumn;
        gbControleValidade: TTS_GroupBox;
        lblTempoMedioValidade: TTS_Label;
        lblTempoMedioValidadeDias: TTS_Label;
        cbControleValidade: TTS_DBCheckBox;
        dfTempoMedioValidade: TTS_DBEditNumber;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        TS_DBEditNumber13: TTS_DBEditNumber;
        TS_DBEditNumber14: TTS_DBEditNumber;
        tsFiscal: TTS_TabSheet;
        lbAliqICMS: TTS_Label;
        lbTipoTributacao: TTS_Label;
        lbCST: TTS_Label;
        lbReducaoCST: TTS_Label;
        lbTVA: TTS_Label;
        lbTVAFonte: TTS_Label;
        lbNCM: TTS_Label;
        TS_Shape11: TTS_Shape;
        TS_Shape12: TTS_Shape;
        TS_Label48: TTS_Label;
        TS_Shape13: TTS_Shape;
        TS_Shape14: TTS_Shape;
        TS_Label50: TTS_Label;
        TS_Label37: TTS_Label;
        dfAliqICMS: TTS_DBEditNumber;
        cmbCST: TTS_DBLookupComboBox;
        cmbTipoTributacao: TTS_DBLookupComboBox;
        dfReducaoCST: TTS_DBEditNumber;
        dfTVA: TTS_DBEditNumber;
        dfTVAFonte: TTS_DBEditNumber;
        dfNCM: TTS_DBEdit;
        DBEdit14: TDBEdit;
        DBEdit5: TDBEdit;
        DBEdit15: TDBEdit;
        DBEdit16: TDBEdit;
        DBEdit17: TDBEdit;
        DBEdit18: TDBEdit;
        dfReducaoBase: TTS_DBEditNumber;
        tsCalcPreco1: TTS_TabSheet;
        pnCalcPreco: TTS_Panel;
        TS_Label86: TTS_Label;
        lbComissaoAplicada: TTS_Label;
        TS_Label77: TTS_Label;
        TS_Shape15: TTS_Shape;
        TS_Shape33: TTS_Shape;
        TS_Shape32: TTS_Shape;
        lbCustoAdicional: TTS_Label;
        lbLucro: TTS_Label;
        TS_Label29: TTS_Label;
        TS_Label46: TTS_Label;
        lbICMSAplicado: TTS_Label;
        TS_Label32: TTS_Label;
        TS_Label45: TTS_Label;
        TS_DBText8: TTS_DBText;
        TS_DBText9: TTS_DBText;
        TS_Shape36: TTS_Shape;
        TS_Label79: TTS_Label;
        TS_DBText12: TTS_DBText;
        imgPreco: TTS_Image;
        TS_DBText21: TTS_DBText;
        dxfLabel1: TdxfLabel;
        dxfLabel2: TdxfLabel;
        TS_Label43: TTS_Label;
        lbUltPrecoCompra: TTS_Label;
        TS_Label49: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Label13: TTS_Label;
        TS_DBText1: TTS_DBText;
        TS_DBText2: TTS_DBText;
        TS_Label51: TTS_Label;
        TS_Label52: TTS_Label;
        TS_SpeedButton1: TTS_SpeedButton;
        lbIPIAplicado: TTS_Label;
        TS_DBEditNumber7: TTS_DBEditNumber;
        TS_DBEditNumber6: TTS_DBEditNumber;
        TS_DBEditNumber5: TTS_DBEditNumber;
        dfLucro: TTS_DBEditNumber;
        dfCustoAdic: TTS_DBEditNumber;
        DBEdit1: TDBEdit;
        dfPrecoCalc: TTS_DBEditNumber;
        DBEdit3: TDBEdit;
        DBEdit6: TDBEdit;
        DBEdit7: TDBEdit;
        DBEdit8: TDBEdit;
        DBEdit9: TDBEdit;
        dfDataCompra: TTS_DBEditDate;
        pnAtualizarPreco: TTS_Panel;
        btAtualizarPreco: TTS_SpeedButton;
        TS_Label15: TTS_Label;
        TS_DBEditNumber2: TTS_DBEditNumber;
        TS_DBEditNumber3: TTS_DBEditNumber;
        dfCompensaCusto: TTS_DBEditNumber;
        DBEdit10: TDBEdit;
        TS_DBEditNumber17: TTS_DBEditNumber;
        dfICMSAplicado: TTS_DBEditNumber;
        TS_DBEditNumber19: TTS_DBEditNumber;
        TS_DBEditNumber20: TTS_DBEditNumber;
        dfIPIAplicado: TTS_DBEditNumber;
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
        btDefinirCampos: TTS_SpeedButton;
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
        tsContabilidade1: TTS_TabSheet;
        lblContaReceita: TTS_Label;
        TS_Label16: TTS_Label;
        TS_Label19: TTS_Label;
        cmbContaVendas1: TTS_DBPopupEdit;
        cbLockConta: TTS_CheckBox;
        cmbContaCusto: TTS_DBPopupEdit;
        cbLockCtCusto: TTS_CheckBox;
        cmbContaInvent: TTS_DBPopupEdit;
        cbLockCtInventario: TTS_CheckBox;
        pnControl1: TTS_Panel;
        btCaracteristicas1: TTS_SpeedButton;
        btEstoques: TTS_SpeedButton;
        btCalcPreco1: TTS_SpeedButton;
        btCustom: TTS_SpeedButton;
        btFiscal: TTS_SpeedButton;
        tsProdutosSemInvent: TTS_TabSheet;
        pcSemEstoque: TTS_PageControl;
        tsCaracteristicas2: TTS_TabSheet;
        lbComissao2: TTS_Label;
        lbDescMax2: TTS_Label;
        TS_Shape2: TTS_Shape;
        lbPrecoVenda2: TTS_Label;
        TS_Label3: TTS_Label;
        dfComissao2: TTS_DBEditNumber;
        TS_DBCheckBox3: TTS_DBCheckBox;
        pnInfoCompras: TTS_Panel;
        TS_Label59: TTS_Label;
        TS_Label56: TTS_Label;
        TS_Label23: TTS_Label;
        TS_DBEdit3: TTS_DBEdit;
        dfUltForn2: TTS_DBEditFavorecido;
        dfUltPrecoCompra2: TTS_DBEditNumber;
        dfDescMax2: TTS_DBEditNumber;
        dfPrecoVenda2: TTS_DBEditNumber;
        tsCalcPreco2: TTS_TabSheet;
        tsCustomizados2: TTS_TabSheet;
        tsContabilidade2: TTS_TabSheet;
        lblCReceita: TTS_Label;
        lblContaDespesa2: TTS_Label;
        cmbContaVendas2: TTS_DBPopupEdit;
        cmbContaDespesa2: TTS_DBPopupEdit;
        pnControl2: TTS_Panel;
        btCaracteristicas2: TTS_SpeedButton;
        btCalcPreco2: TTS_SpeedButton;
        btCustomizados2: TTS_SpeedButton;
        tsServicos: TTS_TabSheet;
        pcServicos: TTS_PageControl;
        tsCaracteristicas3: TTS_TabSheet;
        lbComissao3: TTS_Label;
        lbDescMax3: TTS_Label;
        TS_Shape4: TTS_Shape;
        lbPrecoVenda3: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label9: TTS_Label;
        dfComissao3: TTS_DBEditNumber;
        TS_DBCheckBox5: TTS_DBCheckBox;
        pnInfoCompraServ: TTS_Panel;
        TS_Label14: TTS_Label;
        TS_Label18: TTS_Label;
        TS_Label31: TTS_Label;
        TS_DBEdit4: TTS_DBEdit;
        dfUltForn3: TTS_DBEditFavorecido;
        dfUltPrecoCompra3: TTS_DBEditNumber;
        dfDescMax3: TTS_DBEditNumber;
        dfPrecoVenda3: TTS_DBEditNumber;
        TS_DBLookupComboBox2: TTS_DBLookupComboBox;
        tsCalcPreco3: TTS_TabSheet;
        tsCustomizados3: TTS_TabSheet;
        tsContabilidade3: TTS_TabSheet;
        TS_Label22: TTS_Label;
        lblContaDespesa3: TTS_Label;
        cmbContaVendas3: TTS_DBPopupEdit;
        cmbContaDespesa3: TTS_DBPopupEdit;
        pnControl3: TTS_Panel;
        btCaracteristicas3: TTS_SpeedButton;
        btCalcPreco3: TTS_SpeedButton;
        btCustomizados3: TTS_SpeedButton;
        tsMensagens: TTS_TabSheet;
        tsEncargos: TTS_TabSheet;
        TS_Shape7: TTS_Shape;
        TS_Shape6: TTS_Shape;
        TS_Label8: TTS_Label;
        lblPercent: TTS_Label;
        lblCReceita2: TTS_Label;
        TS_Label60: TTS_Label;
        TS_Label62: TTS_Label;
        TS_Label5: TTS_Label;
        dfPerc5: TTS_DBEditNumber;
        dfPrecoVenda5: TTS_DBEditNumber;
        cmbContaEncargo: TTS_DBPopupEdit;
        TS_DBMemo3: TTS_DBMemo;
        cmbContaDespesaEnc: TTS_DBPopupEdit;
        tsDescontos: TTS_TabSheet;
        TS_Shape8: TTS_Shape;
        TS_Label11: TTS_Label;
        lblPercent2: TTS_Label;
        lblCReceita3: TTS_Label;
        TS_Label6: TTS_Label;
        dfPerc6: TTS_DBEditNumber;
        dfPrecoVenda6: TTS_DBEditNumber;
        cmbContaDesconto: TTS_DBPopupEdit;
        tsSubTotais: TTS_TabSheet;
        pnDescricoes: TTS_Panel;
        TS_Label27: TTS_Label;
        TS_Label30: TTS_Label;
        dfDescricaoComp: TTS_DBMemo;
        dfDescricaoTec: TTS_DBMemo;
        DBEdit13: TDBEdit;
        DBEdit12: TDBEdit;
        DBEdit4: TDBEdit;
        DBEdit11: TDBEdit;
        DBEdit2: TDBEdit;
        lbDescricaoVenda: TTS_Label;
        lbGrupo: TTS_Label;
        lbReferencia: TTS_Label;
        dfReferencia: TTS_DBEdit;
        cmbGrupo: TTS_DBLookupComboBox;
        dfDescricaoVenda: TTS_DBPopupEdit;
        dfCodigo: TTS_DBButtonEdit;
        TS_Label2: TTS_Label;
        TS_Label1: TTS_Label;
        cmbTipoItem: TTS_DBLookupComboBox;
        lbDataCadastro: TTS_Label;
        dfDataCadastro: TTS_DBEdit;
        dfCodBarras: TTS_DBEdit;
        cbRevenda: TTS_DBCheckBox;
        cbLockGrupo: TTS_CheckBox;
        lbABC: TTS_Label;
        dfABC: TTS_DBImageEdit;
        df_Foto: TdxGraphicEdit;
        lbUnidade: TTS_DBTextEffect;
        ppmFiscal: TTS_PopupMenu;
        ConsiderarFiscaldoGrupo: TMenuItem;
        ppmIrPara: TTS_PopupMenu;
        ltimoGravado1: TMenuItem;
        CadastradosHoje1: TMenuItem;
        Hoje1: TMenuItem;
        Ontem1: TMenuItem;
        EstaSemana1: TMenuItem;
        EstaQuinzena1: TMenuItem;
        EsteMs1: TMenuItem;
        EsteBimestre1: TMenuItem;
        EsteSemestre1: TMenuItem;
        EsteAno1: TMenuItem;
        N11: TMenuItem;
        ItensPromocao: TMenuItem;
        ItensCompostos: TMenuItem;
        N6: TMenuItem;
        Itenscom1: TMenuItem;
        ItensFatorLucroInadequado: TMenuItem;
        ItensComPrecoDandoPrejuizo: TMenuItem;
        ItensComPrecoDiferenteDoCalculado: TMenuItem;
        ItensSemCustoMedioInformado: TMenuItem;
        ItensComCompensacao: TMenuItem;
        N7: TMenuItem;
        EstoqueemPontodePedido1: TMenuItem;
        EstoqueabaixodoMnimo1: TMenuItem;
        comEstoqueacimadoMximo1: TMenuItem;
        N9: TMenuItem;
        ComissoInformada1: TMenuItem;
        DescontoMximoInformado1: TMenuItem;
        N8: TMenuItem;
        SemGrupo1: TMenuItem;
        SemFabricante1: TMenuItem;
        SemFornecedorPreferencial1: TMenuItem;
        Desativados1: TMenuItem;
        btUltimosFornec: TTS_SpeedButton;
        btOutros: TTS_SpeedButton;
        btSubItens: TTS_SpeedButton;
        ppmOutros: TTS_PopupMenu;
        AjustedeItens1: TMenuItem;
        CalcularEstoqueMnimo1: TMenuItem;
        QuantidadesdosLotesexistentes2: TMenuItem;
        EstoquesporAlmoxarifado1: TMenuItem;
        N5: TMenuItem;
        ReajustedePreos1: TMenuItem;
        DefinirPromocao1: TMenuItem;
        N10: TMenuItem;
        Memorizar1: TMenuItem;
        imgsPreco: TImageList;
        ppmFoto: TTS_PopupMenu;
        CarregarFoto1: TMenuItem;
        N4: TMenuItem;
        LimparFoto1: TMenuItem;
        ppmGrupo: TTS_PopupMenu;
        ConsiderarPercentualdoGrupo1: TMenuItem;
        pdFoto: TOpenPictureDialog;
        cmbUnidade: TTS_DBLookupComboBox;
        ppmUnidades: TTS_PopupMenu;
        Adicionar1: TMenuItem;
        GridITEM: TdxDBGridMaskColumn;
        GridCODIGO: TdxDBGridMaskColumn;
        GridDESCRICAOCOMPRA: TdxDBGridMaskColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridCUSTOMEDIO: TdxDBGridMaskColumn;
        GridQTDEMINIMO: TdxDBGridCurrencyColumn;
        GridQTDEMAXIMO: TdxDBGridCurrencyColumn;
        GridPONTOPEDIDO: TdxDBGridCurrencyColumn;
        GridLOCALIZACAO: TdxDBGridMaskColumn;
        GridDESATIVADO: TdxDBGridCheckColumn;
        GridESTOQUE: TdxDBGridCurrencyColumn;
        GridCOMISSAO: TdxDBGridCurrencyColumn;
        GridDESCONTOMAXIMO: TdxDBGridCurrencyColumn;
        GridCAMPO01: TdxDBGridMaskColumn;
        GridCAMPO02: TdxDBGridMaskColumn;
        GridCAMPO03: TdxDBGridMaskColumn;
        GridCAMPO04: TdxDBGridMaskColumn;
        GridCAMPO05: TdxDBGridMaskColumn;
        GridPRECOCOMPRA: TdxDBGridMaskColumn;
        GridCAMPO06: TdxDBGridMaskColumn;
        GridCUSTOCONTABIL: TdxDBGridMaskColumn;
        GridCAMPO07: TdxDBGridMaskColumn;
        GridCAMPO08: TdxDBGridMaskColumn;
        GridCAMPO09: TdxDBGridMaskColumn;
        GridCAMPO10: TdxDBGridMaskColumn;
        GridPROMOCAO: TdxDBGridCheckColumn;
        GridREFERENCIA: TdxDBGridMaskColumn;
        GridDATACADASTRO: TdxDBGridDateColumn;
        GridCONTROLEVALIDADE: TdxDBGridCheckColumn;
        GridTEMPOMEDIOVALIDADE: TdxDBGridMaskColumn;
        GridULTIMACOMPRA: TdxDBGridDateColumn;
        GridULTQTDECOMPRA: TdxDBGridCurrencyColumn;
        GridDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn;
        GridDESCRICAOTECNICA: TdxDBGridMaskColumn;
        GridPRECO: TdxDBGridCurrencyColumn;
        GridNOMEULTIMOFORNECEDOR: TdxDBGridMaskColumn;
        GridNOMEFORNECPREFERENCIA: TdxDBGridMaskColumn;
        GridlkTipoItem: TdxDBGridLookupColumn;
        GridlkGrupoItem: TdxDBGridLookupColumn;
        GridlkFabricante: TdxDBGridLookupColumn;
        GridlkContaVenda: TdxDBGridLookupColumn;
        GridlkContaCusto: TdxDBGridLookupColumn;
        GridlkContaInvent: TdxDBGridLookupColumn;
        GridlkUnidadeVarejo: TdxDBGridLookupColumn;
        GridlkUnidadeCompra: TdxDBGridLookupColumn;
        GridlkUnidadeCarga: TdxDBGridLookupColumn;
        GridlkUnidade: TdxDBGridLookupColumn;
        GridlkSitECF: TdxDBGridLookupColumn;
        GridlkCST: TdxDBGridLookupColumn;
        GridALIQICMS: TdxDBGridCurrencyColumn;
        GridTVA: TdxDBGridCurrencyColumn;
        GridTVAFONTE: TdxDBGridCurrencyColumn;
        GridCLASFISCAL: TdxDBGridMaskColumn;
        GridIPICOMPRA: TdxDBGridCurrencyColumn;
        GridIPIVENDA: TdxDBGridCurrencyColumn;
        GridCODIGOBARRAS: TdxDBGridMaskColumn;
        FormaodeCusto1: TMenuItem;
        N12: TMenuItem;
        EstatsticasdeVenda1: TMenuItem;
        ltimasVendas1: TMenuItem;
        ltimosFornecimentos1: TMenuItem;
        OutrasOpes1: TMenuItem;
        SubItens1: TMenuItem;
        lbGruposComissoes: TTS_Label;
        cmbGruposComissoes: TTS_DBLookupComboBox;
        imgFocoCodigo: TImage;
        ImgFocoDescricaoVenda: TImage;
        imgCobBarras: TImage;
        ImgPinoGrupo: TImage;
        ImgPinoRef: TImage;
        ppmFoco: TTS_PopupMenu;
        Cdigo2: TMenuItem;
        DescriodeVenda2: TMenuItem;
        CdigoBarras2: TMenuItem;
        Grupo2: TMenuItem;
        Referncia2: TMenuItem;
        AtualizarPreosCalculados1: TMenuItem;
        lbIndexadores: TTS_Label;
        cmbIndexador: TTS_DBLookupComboBox;
        GridlkIndexador: TdxDBGridLookupColumn;
        cmbLocalizacao: TTS_DBLookupComboBox;
        TS_Label20: TTS_Label;
        lbEstoquefiscal: TTS_Label;
        dfEstoqueFiscal: TTS_DBEditNumber;
        dfDifEstoque: TTS_DBEditNumber;
        lbDifEstoque: TTS_Label;
        ExpandirFoto1: TMenuItem;
        N13: TMenuItem;
        TS_Label21: TTS_Label;
        dfCUSTOMANUAL: TTS_DBEditNumber;
        pestoquefiscal: TTS_Panel;
        dbgMultUnidadeQTDEMBALAGEM: TdxDBGridColumn;
        lbGondolas: TTS_Label;
        dfGondolas: TTS_DBEditNumber;
        dfEstoqueVolume: TTS_DBEditNumber;
        lblEstoqueVolumes: TTS_Label;
        sbServicosEmItens: TTS_SpeedButton;
        tsServicosPreco: TTS_TabSheet;
        pnServicosPreco: TTS_Panel;
        TS_QDBGrid1: TTS_QDBGrid;
        TS_QDBGrid1PRECO: TdxDBGridCurrencyColumn;
        TS_Label38: TTS_Label;
        TS_QDBGrid1lkpServico: TdxDBGridLookupColumn;
        cmbGenero: TTS_DBLookupComboBox;
        lbGenero: TTS_Label;
        lcbModBaseCalcST: TTS_DBLookupComboBox;
        TS_Label44: TTS_Label;
        cmbModBaseCalc: TTS_DBLookupComboBox;
        lbModBaseCalc: TTS_Label;
        TS_Label53: TTS_Label;
        TS_Shape3: TTS_Shape;
        TS_Shape5: TTS_Shape;
        TS_Shape16: TTS_Shape;
        TS_Shape17: TTS_Shape;
        TS_Label54: TTS_Label;
        cmbOrigem: TTS_DBLookupComboBox;
        lbOrigem: TTS_Label;
        TS_Shape18: TTS_Shape;
        TS_Label39: TTS_Label;
        TS_Shape19: TTS_Shape;
        TS_Label66: TTS_Label;
        lcbMensagens: TTS_DBLookupComboBox;
        N14: TMenuItem;
        ExportaoMabel1: TMenuItem;
        lbPrincipioAtivo: TTS_Label;
        lbPromocao: TdxfLabel;
        lbBalanco: TdxfLabel;
        dfPrecoManual: TTS_DBEditNumber;
        lbPrecoManual: TTS_Label;
        lcbPrincipioAtivo: TTS_DBLookupComboBox;
        cmbTipoServico: TTS_DBLookupComboBox;
        TS_Label68: TTS_Label;
        TS_Label69: TTS_Label;
        TS_Shape1: TTS_Shape;
        TS_Shape20: TTS_Shape;
        TS_Label70: TTS_Label;
        TS_DBLookupComboBox3: TTS_DBLookupComboBox;
        TS_Label71: TTS_Label;
        TS_DBLookupComboBox4: TTS_DBLookupComboBox;
        TS_Label72: TTS_Label;
        TS_DBLookupComboBox5: TTS_DBLookupComboBox;
        TS_Label73: TTS_Label;
        TS_DBEditNumber4: TTS_DBEditNumber;
        TS_Label74: TTS_Label;
        TS_DBEdit5: TTS_DBEdit;
        TS_Label76: TTS_Label;
        TS_DBEdit6: TTS_DBEdit;
        pcImpFederais: TTS_PageControl;
        tsIPI: TTS_TabSheet;
        tsPisCofinsEntrada: TTS_TabSheet;
        tsPisCofinsSaida: TTS_TabSheet;
        TS_Label63: TTS_Label;
        cmbCSTIPI: TTS_DBLookupComboBox;
        lbIPICompra: TTS_Label;
        dfIPICompra: TTS_DBEditNumber;
        lbIPIVenda: TTS_Label;
        dfIPIVenda: TTS_DBEditNumber;
        DBCBpiscofins: TTS_DBCheckBox;
        lbTipoTribFederal: TTS_Label;
        cmbTribFederal: TTS_DBLookupComboBox;
        lbCSTPisCofins: TTS_Label;
        cmbCSTPISCOFINS: TTS_DBLookupComboBox;
        TS_Label58: TTS_Label;
        dfAliqPis: TTS_DBEditNumber;
        TS_Label61: TTS_Label;
        dfAliqCofins: TTS_DBEditNumber;
        tsIRCS: TTS_TabSheet;
        TS_Label64: TTS_Label;
        dfAliqIR: TTS_DBEditNumber;
        TS_Label67: TTS_Label;
        dfAliqSS: TTS_DBEditNumber;
        TS_Label40: TTS_Label;
        cmbCSTPISCOFINSSaida: TTS_DBLookupComboBox;
        TS_Label47: TTS_Label;
        dfAliqPisSaida: TTS_DBEditNumber;
        TS_Label78: TTS_Label;
        dfAliqCofinsSaida: TTS_DBEditNumber;
        TS_Label80: TTS_Label;
        cmbNaturezaReceira: TTS_DBLookupComboBox;
        TS_Label57: TTS_Label;
        TS_Shape21: TTS_Shape;
        TS_Shape22: TTS_Shape;
        TS_Label81: TTS_Label;
        dfCodANP: TTS_DBEdit;
        TS_Label82: TTS_Label;
        TS_DBEdit7: TTS_DBEdit;
        cbPesavel: TTS_DBCheckBox;
        pnItensCodigos: TTS_Panel;
        dbgItensCodigos: TTS_QDBGrid;
        dbgCodigoCodigoBarras: TdxDBGridCalcColumn;
        TS_Label83: TTS_Label;
        dbgItensCodigosUnidade: TdxDBGridLookupColumn;
        lbMVA: TTS_Label;
        lcbMVA: TTS_DBLookupComboBox;
        TS_SpeedButton2: TTS_SpeedButton;
        cmbTipoMateriaPrima: TTS_DBLookupComboBox;
        lbTipoMateriaPrima: TTS_Label;
        dbgMultUnidadelkTabelaPreco: TdxDBGridLookupColumn;
        dbgMultUnidadeCODIGO: TdxDBGridMaskColumn;
        dfCodigoVenda: TTS_DBEdit;
        lblCodigoVenda: TTS_Label;
        dfCodEnqIPIVenda: TTS_DBEdit;
        lblCodEnqIPIVenda: TTS_Label;
        lblCSTIPIEntrada: TTS_Label;
        cmbCSTsIPIEntrada: TTS_DBLookupComboBox;
        lblCodEnqIPICompra: TTS_Label;
        dfCodEnqIPICompra: TTS_DBEdit;
        lblCEST: TTS_Label;
        dfCEST: TTS_DBEdit;
        dbgTabelaPrecoPRECOPROMOCAO: TdxDBGridColumn;
    TS_DBCheckBox1: TTS_DBCheckBox;
        procedure lbPrecoVenda1Click(Sender: TObject);
        procedure DBEdit14Change(Sender: TObject);
        procedure cmbCSTChange(Sender: TObject);
        procedure dfAliqICMSChange(Sender: TObject);
        procedure DBEdit6Change(Sender: TObject);
        procedure cmbCSTMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure DBEdit5Change(Sender: TObject);
        procedure dfReducaoCSTChange(Sender: TObject);
        procedure cmbTipoTributacaoChange(Sender: TObject);
        procedure DBEdit2Change(Sender: TObject);
        procedure DBEdit11Change(Sender: TObject);
        procedure DBEdit4Change(Sender: TObject);
        procedure DBEdit12Change(Sender: TObject);
        procedure DBEdit13Change(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
        procedure DBEdit9Change(Sender: TObject);
        procedure cmbTipoItemChange(Sender: TObject);
        procedure btCaracteristicas1Click(Sender: TObject);
        procedure dfCodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure btCaracteristicas2Click(Sender: TObject);
        procedure btCaracteristicas3Click(Sender: TObject);
        procedure dbgTabelaPrecoColumnSorting(Sender: TObject;
            Column: TdxDBTreeListColumn; var Allow: Boolean);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure ppmIrParaPopup(Sender: TObject);
        procedure ltimoGravado1Click(Sender: TObject);
        procedure Hoje1Click(Sender: TObject);
        procedure Ontem1Click(Sender: TObject);
        procedure EstaSemana1Click(Sender: TObject);
        procedure EstaQuinzena1Click(Sender: TObject);
        procedure EsteMs1Click(Sender: TObject);
        procedure EsteBimestre1Click(Sender: TObject);
        procedure EsteSemestre1Click(Sender: TObject);
        procedure EsteAno1Click(Sender: TObject);
        procedure ItensPromocaoClick(Sender: TObject);
        procedure ItensCompostosClick(Sender: TObject);
        procedure ItensFatorLucroInadequadoClick(Sender: TObject);
        procedure ItensComPrecoDandoPrejuizoClick(Sender: TObject);
        procedure ItensComPrecoDiferenteDoCalculadoClick(Sender: TObject);
        procedure ItensSemCustoMedioInformadoClick(Sender: TObject);
        procedure ItensComCompensacaoClick(Sender: TObject);
        procedure EstoqueemPontodePedido1Click(Sender: TObject);
        procedure EstoqueabaixodoMnimo1Click(Sender: TObject);
        procedure comEstoqueacimadoMximo1Click(Sender: TObject);
        procedure ComissoInformada1Click(Sender: TObject);
        procedure DescontoMximoInformado1Click(Sender: TObject);
        procedure SemGrupo1Click(Sender: TObject);
        procedure SemFabricante1Click(Sender: TObject);
        procedure SemFornecedorPreferencial1Click(Sender: TObject);
        procedure Desativados1Click(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure btUltimosFornecClick(Sender: TObject);
        procedure btSubItensClick(Sender: TObject);
        procedure AjustedeItens1Click(Sender: TObject);
        procedure CalcularEstoqueMnimo1Click(Sender: TObject);
        procedure QuantidadesdosLotesexistentes2Click(Sender: TObject);
        procedure EstoquesporAlmoxarifado1Click(Sender: TObject);
        procedure ReajustedePreos1Click(Sender: TObject);
        procedure DefinirPromocao1Click(Sender: TObject);
        procedure Memorizar1Click(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure CarregarFoto1Click(Sender: TObject);
        procedure LimparFoto1Click(Sender: TObject);
        procedure df_FotoClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormActivate(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure ConsiderarFiscaldoGrupoClick(Sender: TObject);
        procedure ConsiderarPercentualdoGrupo1Click(Sender: TObject);
        procedure ppmGrupoPopup(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure btDefinirCamposClick(Sender: TObject);
        procedure pcItensChange(Sender: TObject);
        procedure cbLockGrupoChange(Sender: TObject);
        procedure cbLockUnidadesChange(Sender: TObject);
        procedure cbLockFabricanteChange(Sender: TObject);
        procedure cbLockFornecedorChange(Sender: TObject);
        procedure Adicionar1Click(Sender: TObject);
        procedure cmbUnidadeEnter(Sender: TObject);
        procedure lbPromocaoClick(Sender: TObject);
        procedure dfTVAChange(Sender: TObject);
        procedure dfTVAFonteChange(Sender: TObject);
        procedure cmbContaVendas1InitPopup(Sender: TObject);
        procedure cmbContaCustoInitPopup(Sender: TObject);
        procedure cmbContaInventInitPopup(Sender: TObject);
        procedure cbLockContaChange(Sender: TObject);
        procedure cbLockCtCustoChange(Sender: TObject);
        procedure cbLockCtInventarioChange(Sender: TObject);
        procedure dfComissao1Change(Sender: TObject);
        procedure dfDescMax3MouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure dfDescMax1Change(Sender: TObject);
        procedure cmbContaVendas2InitPopup(Sender: TObject);
        procedure btOutrosClick(Sender: TObject);
        procedure TS_DBEditNumber3DblClick(Sender: TObject);
        procedure dfCustoAdicChange(Sender: TObject);
        procedure dfLucroChange(Sender: TObject);
        procedure dfLucroExit(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure TS_Label77Click(Sender: TObject);
        procedure dfPrecoCalcKeyPress(Sender: TObject; var Key: Char);
        procedure dfPrecoCalcExit(Sender: TObject);
        procedure btAtualizarPrecoClick(Sender: TObject);
        procedure lbGrupoClick(Sender: TObject);
        procedure dbgMultUnidadeExit(Sender: TObject);
        procedure Cdigo1Click(Sender: TObject);
        procedure DescriodeVenda1Click(Sender: TObject);
        procedure CdigoBarras1Click(Sender: TObject);
        procedure Grupo1Click(Sender: TObject);
        procedure Referncia1Click(Sender: TObject);
        procedure imgFocoCodigoClick(Sender: TObject);
        procedure AtualizarPreosCalculados1Click(Sender: TObject);
        procedure ExpandirFoto1Click(Sender: TObject);
        procedure sbServicosEmItensClick(Sender: TObject);
        procedure cmbGrupoChange(Sender: TObject);
        procedure ExportaoMabel1Click(Sender: TObject);
        procedure TS_DBLookupComboBox3Change(Sender: TObject);
        procedure dfCodigoExit(Sender: TObject);
        procedure dfCodigoEnter(Sender: TObject);
        procedure dfCodBarrasExit(Sender: TObject);
        procedure dfCodBarrasEnter(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btProxRegClick(Sender: TObject);
        procedure btUltimoRegClick(Sender: TObject);
        procedure btPrevRegClick(Sender: TObject);
        procedure btPrimeiroRegClick(Sender: TObject);
        procedure TS_Label83Click(Sender: TObject);
        procedure dbgItensCodigosChangeNode(Sender: TObject; OldNode,
            Node: TdxTreeListNode);
        procedure dbgItensCodigosEditing(Sender: TObject;
            Node: TdxTreeListNode; var Allow: Boolean);
        procedure dfCodigoVendaKeyPress(Sender: TObject; var Key: Char);
    private
        { Private declarations }
        texto: string;
        sTipoTributacao, sAliqICMS, sReducaoBase,
            sCST, sReducaoCST, sTribFederal: string;
        sCamposDef, sCamposTit, sCamposTipo: string;
        LastTipoItemSetado, nCodForm, nFixarTamanhoCodigoItem: integer;
        DlgPopup: TDlgPopupContas;
        TmpPage: TTS_PageControl; //Utilizado no Keydown para melhorar performance em n�o t�-lo local ao evento.
        TmpButton: TTS_SpeedButton; //Idem
        bServicosEmItens, codigodebarrasvalildo, bMultiUnd: Boolean;
        procedure MostraTabelaPreco(oControl: TLabel; bAuto: boolean = true);
        procedure MostraTabelaItensCodigos(oControl: TLabel; bAuto: boolean = true);
        procedure VerificarPrecoMinimo;
        procedure LerCamposDefinidos;
        procedure PopulaCampo(obj: TTS_DBComboBox; nCampo: integer);
        procedure SincronizarLucroItem(nPrecoDig: Currency);
        procedure AtualizarPreco();
    public
        { Public declarations }
    end;

var
    FrmItens: TFrmItens;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Itens, funcoes, Dlg_EstatVendasProduto,
    Dlg_UltimasVendasProd, Dlg_UltimosFornecimentos, Dlg_DefinirCampos,
    Dlg_AlteraCustoMedio, Dlg_FormacaoCusto, DLG_VisialuzadorImagem;

procedure TFrmItens.lbPrecoVenda1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'CTAB') then
        exit;
    MostraTabelaPreco(TLabel(Sender));
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
            if dbgTabelaPreco.CanFocus then
                ActiveControl := dbgTabelaPreco;
            dbgTabelaPreco.FocusedColumn := 1;
        end
    else
        begin
            {Restaurando visibilidade dos componentes}
            pnTabelaPreco.Visible := false;
        end;
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

procedure TFrmItens.cmbCSTChange(Sender: TObject);
begin
    inherited;
    DMItens.C_TabelaCST.Value := cmbCST.LookupKeyValue;
    DBEdit6Change(self);
    sCST := cmbCST.Name + '=' + cmbCST.LookupKeyValue;
    dfReducaoCST.SetReadOnly(cmbCST.LookupKeyValue <> '020');
    if dfReducaoCST.ReadOnly then
        dfReducaoCST.Value := 0;
end;

procedure TFrmItens.dfAliqICMSChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaAliqICMS.Value) then
        with DMItens do
            begin
                C_TabelaAliqICMS.Value := TTS_DBEditNumber(Sender).Value;
            end;
    sAliqICMS := dfAliqICMS.Name + '=' + dfAliqICMS.Text

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
                clTeal: lbDescMax1.Hint := 'Maior Desconto que os Usu�rios podem dar';
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

procedure TFrmItens.cmbCSTMouseDown(Sender: TObject;
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

procedure TFrmItens.DBEdit5Change(Sender: TObject);
var sCST: string;
begin
    inherited;
    try
        sCST := TDBEdit(Sender).text;
        dfReducaoCST.SetReadOnly((sCST = '') or (sCST[1] <> '2'));
    except
    end;
    DBEdit6Change(self);

end;

procedure TFrmItens.dfReducaoCSTChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMItens.C_TabelaReducaoCST.Value) then
        with DMItens do
            begin
                C_TabelaReducaoCST.Value := TTS_DBEditNumber(Sender).Value;
            end;

    sReducaoCST := dfReducaoCST.Name + '=' + dfReducaoCST.Text;
end;

procedure TFrmItens.cmbTipoTributacaoChange(Sender: TObject);
begin
    inherited;
    try
        DMItens.C_TabelaSituacaoECF.asVariant := cmbTipoTributacao.LookupKeyValue;
        DBEdit6Change(self);
        sTipoTributacao := cmbTipoTributacao.Name + '=' + cmbTipoTributacao.LookupKeyValue;
    except
    end;

end;

procedure TFrmItens.DBEdit2Change(Sender: TObject);
begin
    inherited;
    {Definindo se o Pre�o de compra pode ser informado}
  //  dfEstoque.Setreadonly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));
  //  dfEstoque_b.SetReadOnly(dfEstoque.ReadOnly);
    dfEstoqueFiscal.SetReadonly(True);
    dfEstoque.SetReadonly(True);
    dfEstoque_b.SetReadOnly(True);

    dfUltPrecoCompra.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));
    dfCompensaCusto.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));

    if (DMItens.C_TabelaITEM.Value <> 0) and (DMItens.C_TabelaITEM.Value <> -8888) then
        dfCodigo.SetReadOnly(True)
    else
        dfCodigo.SetReadOnly(False);

    if not dfUltPrecoCompra.ReadOnly then
        dfUltPrecoCompra.SetReadOnly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));

    DBEdit1Change(Self); //Para atualizar imgPreco;

end;

procedure TFrmItens.DBEdit11Change(Sender: TObject);
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

procedure TFrmItens.DBEdit4Change(Sender: TObject);
begin
    inherited;
    lbBalanco.Visible := (DMItens.C_TabelaBalanco.Value = 'S');
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

procedure TFrmItens.DBEdit13Change(Sender: TObject);
begin
    inherited;
    lbPromocao.Visible := DMItens.C_TabelaPromocao.Value = 'S';
end;

procedure TFrmItens.DBEdit1Change(Sender: TObject);
begin
    inherited;
    with DMItens do
        begin
            pnAtualizarPreco.Visible := ABS(C_TabelaicPrecoCalc.Value - C_TabelaPRECO.Value) > 0.01;
        end;

    if DMItens.C_TabelaPreco.value > 0 then
        with DMItens do
            begin
                if C_TabelaicFatorLucro.Value = 0 then
                    begin
                        imgsPreco.GetBitmap(1, imgPreco.Picture.Bitmap); //Prejuizo
                        imgpreco.Hint := 'Aten��o, voc� n�o est� tendo lucro! Seu Fator de Lucro est� Zero.';
                    end
                else if (C_TabelaicMenorPrecoVenda.asCurrency - C_TabelaPreco.asCurrency) > 0.01 then
                    begin
                        imgsPreco.GetBitmap(0, imgPreco.Picture.Bitmap); //Prejuizo
                        imgpreco.Hint := 'Cuidado, voc� est� tendo preju�zo! O pre�o de Venda est� abaixo do Menor Pre�o de Venda calculado.';
                    end
                else if ABS(C_TabelaicMenorPrecoVenda.asCurrency - C_TabelaPreco.asCurrency) <= 0.01 then
                    begin
                        imgsPreco.GetBitmap(1, imgPreco.Picture.Bitmap); //Empatando
                        imgpreco.Hint := 'Aten��o, voc� n�o est� tendo lucro! O pre�o de Venda est� igual ao Menor Pre�o de Venda calculado.';
                    end
                else if ((C_TabelaPRECO.asCurrency - C_TabelaicPrecoCalcDescMax.asCurrency >= -0.01) and (C_TabelaicFatorLucro.Value > 0)) then
                    begin
                        imgsPreco.GetBitmap(3, imgPreco.Picture.Bitmap); //Com lucro duvidoso
                        imgpreco.Hint := 'Seu Pre�o de Venda est� com Lucro!';
                    end
                else if ((C_TabelaPRECO.asCurrency > C_TabelaicMenorPrecoVenda.asCurrency) and (C_TabelaicFatorLucro.Value > 0) and
                    (C_TabelaicPrecoCalcDescMax.asCurrency >= C_TabelaPRECO.asCurrency)) then
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
                dfDescMax1.Font.Color := IIF((C_TabelaicPrecoCalcDescMax.Value > 0) and
                    (C_TabelaicPrecoCalcDescMax.Value < C_TabelaicMenorPrecoVenda.Value),
                    clRed,
                    clWindowText);
                dfDescMax2.Font.Color := dfDescMax1.Font.Color;
                dfDescMax3.Font.Color := dfDescMax1.Font.Color;

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
    lbOrigem.Visible := (DMItens.C_TabelaTipoItem.value in [1]);
    lbGenero.Visible := (DMItens.C_TabelaTipoItem.value in [1]);
    cmbGenero.Visible := (DMItens.C_TabelaTipoItem.value in [1]);
    cmbOrigem.Visible := (DMItens.C_TabelaTipoItem.value in [1]);
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

procedure TFrmItens.btCaracteristicas1Click(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcEstoque.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);

end;

procedure TFrmItens.dfCodigoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if not (DMItens.C_Tabela.State in [dsEdit, dsInsert]) then
        DMItens.C_Tabela.edit;
    DMItens.C_TabelaCodigo.value := DMProjeto.GeraCodigoItem(dfCodigo.text, DMItens.C_TabelaItem.value);

    //    if not DigitacaoRapida1.Checked then
    ActiveControl := dfDescricaoVenda;

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

procedure TFrmItens.dbgTabelaPrecoColumnSorting(Sender: TObject;
    Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
    inherited;
    Allow := TdxDBGridColumn(Column).FieldName = 'PERCENTUAL';
end;

procedure TFrmItens.FormComponentBeforeClearParams(Sender: TObject);
var
    sIrPara: string;
    bObrigarUnd: boolean;
begin
    inherited;

    try
        nFixarTamanhoCodigoItem := strToInt(DMProjeto.Parametro('FixarTamanhoCodigoItem'));
    except
        nFixarTamanhoCodigoItem := 0;
    end;

    //lbTipoTribFederal.Visible := (DMProjeto.sTipoTributEmpresa = 'R');
    //cmbTribFederal.Visible    := (DMProjeto.sTipoTributEmpresa = 'R');

    bServicosEmItens := (DMProjeto.Parametro('ServicosEmItens') = 'S');

    if (bServicosEmItens) then
        begin
            sbServicosEmItens.Visible := True;

        end
    else
        begin
            sbServicosEmItens.Visible := False;

        end;

    lblEstoqueVolumes.Visible := (DMProjeto.Parametro('QuantidadeVolume') = 'S');
    dfEstoqueVolume.Visible := lblEstoqueVolumes.Visible;

    dfEstoqueVolume.SetReadOnly(True);

    if (DMProjeto.Parametro('MultiAlmox') = 'S') then
        begin
            EstoquesporAlmoxarifado1.Visible := True;
            lbGondolas.Visible := True;
            dfGondolas.Visible := True;
        end;

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
    bObrigarUnd := DMProjeto.Parametro('ObrigarVenderUnidade') = 'S';

    lbPrecoVenda1.Caption := iif(bMultiUnd, 'Pre�o de Custo:', 'Pre�o de Venda:');

    { Felipe - Campos Tabela Preco e Codigo adicionados na tabela de ItensUnidades. Esses campos serao utilizados somente para exportacao de produtos
                        do SyncRetaguarda para o NFCe. Nao sendo utilizado para nenhum outro local do SyncRetaguarda ou SyncPDV. Esses campos so estarao visiveis
                        quando o parametro "PesquisaMultiUnidade" estiver ativo.
                        * Codigo = varchar (14) UNIQUE
                        * Tabela Preco = integer
                        Alteracoes realizadas em 09/09/2015

                * As colunas PERCENTUAL, PERCENTUALMINIMO, QTDEMBALAGEM estao com Visible = False a pedido de Cesar na data 11/01/2016 ja que nenhum cliente
                utiliza no momento
                Alteracoes realizadas em 12/01/2016 }

    dbgMultUnidadeCODIGO.Visible := bMultiUnd;
    dbgMultUnidadelkTabelaPreco.Visible := bMultiUnd;

    if (bObrigarUnd or bMultiUnd) then
        begin
            //dbgMultUnidadePERCENTUAL.Visible := true;
            dbgMultUnidadePRECOMANUAL.Visible := true;
            //dbgMultUnidadePERCENTUALMINIMO.Visible := true;
            dbgItensCodigosUnidade.Visible := true;
        end
    else
        begin
            //dbgMultUnidadePERCENTUAL.Visible := false;
            dbgMultUnidadePRECOMANUAL.Visible := false;
            //dbgMultUnidadePERCENTUALMINIMO.Visible := false;
            dbgItensCodigosUnidade.Visible := false;
        end;

    lbGruposComissoes.Visible := DMProjeto.Parametro('GrupoComissao') = 'S';
    cmbGruposComissoes.Visible := DMProjeto.Parametro('GrupoComissao') = 'S';

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

    //Verificando o foco
    if (FormComponent.FirstSearchField = dfCodigo) then
        begin
            imgFocoCodigo.Visible := true;
            ImgFocoDescricaoVenda.Visible := false;
            imgCobBarras.Visible := False;
            ImgPinoGrupo.Visible := False;
            ImgPinoRef.Visible := False;
        end
    else if (FormComponent.FirstSearchField = dfDescricaoVenda) then
        begin
            imgFocoCodigo.Visible := false;
            ImgFocoDescricaoVenda.Visible := true;
            imgCobBarras.Visible := False;
            ImgPinoGrupo.Visible := False;
            ImgPinoRef.Visible := False;
        end
    else if (FormComponent.FirstSearchField = dfCodBarras) then
        begin
            imgFocoCodigo.Visible := false;
            ImgFocoDescricaoVenda.Visible := false;
            imgCobBarras.Visible := true;
            ImgPinoGrupo.Visible := False;
            ImgPinoRef.Visible := False;
        end
    else if (FormComponent.FirstSearchField = cmbGrupo) then
        begin
            imgFocoCodigo.Visible := false;
            ImgFocoDescricaoVenda.Visible := false;
            imgCobBarras.Visible := False;
            ImgPinoGrupo.Visible := true;
            ImgPinoRef.Visible := False;
        end
    else if (FormComponent.FirstSearchField = dfReferencia) then
        begin
            imgFocoCodigo.Visible := false;
            ImgFocoDescricaoVenda.Visible := false;
            imgCobBarras.Visible := False;
            ImgPinoGrupo.Visible := False;
            ImgPinoRef.Visible := true;
        end;
end;

procedure TFrmItens.ppmIrParaPopup(Sender: TObject);
begin
    inherited;
    ItensFatorLucroInadequado.Enabled := DMProjeto.Parametro('PrecosAutomaticos') = 'S';
    ItensComPrecoDandoPrejuizo.Enabled := ItensFatorLucroInadequado.Enabled;
    ItensComCompensacao.Enabled := ItensFatorLucroInadequado.Enabled;
end;

procedure TFrmItens.ltimoGravado1Click(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    LocalizarUltimo;
    if DMItens.C_TabelaCODIGOBARRAS.Value = '' then
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := true;
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

procedure TFrmItens.ItensFatorLucroInadequadoClick(Sender: TObject);
begin
    inherited;
    sPesquisaEspecial := TMenuItem(Sender).Caption;
    Localizar('', ' where i.Desativado = ''N'' and i.Revenda = ''S'' and i.FatorLucro <= 0.5 ');
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

procedure TFrmItens.btUltimosFornecClick(Sender: TObject);
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

procedure TFrmItens.btSubItensClick(Sender: TObject);
begin
    inherited;
    if (DMProjeto.CriarForm('DlgItensFilhos', self, true) = 100) and DMItens.bAlteracao then
        DMItens.Gravar;
end;

procedure TFrmItens.AjustedeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, IIF(DMItens.C_TabelaItem.Value <= 0, null, DMItens.C_TabelaItem.Value)]);
    DMProjeto.CriarForm('FrmAjustesItens', self, true);
    DMItens.C_Tabela.Refresh;
end;

procedure TFrmItens.CalcularEstoqueMnimo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRecalcularMinimo', self, true);
end;

procedure TFrmItens.QuantidadesdosLotesexistentes2Click(
    Sender: TObject);
begin
    inherited;
    if not DMItens.bAlteracao then
        DlgMsg.ShowMsg(542)
    else
        begin
            DMProjeto.SetParametrosForm([DMItens.C_TabelaItem.value, DMItens.C_TabelaDescricao.value, DMItens.C_TabelaESTOQUE.value, DMItens.C_TabelaFatorUndVenda.Value]);
            DMProjeto.CriarForm('FrmLotesExistentes', self, true);
        end;
end;

procedure TFrmItens.EstoquesporAlmoxarifado1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgItensAlmox', self, true);
end;

procedure TFrmItens.ReajustedePreos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgReajustePrecos', self, true);
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

procedure TFrmItens.Memorizar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(self, nCodForm, DMItens.C_TabelaItem.Value,
        DMItens.C_TabelaCODIGO.Value, DMItens.C_TabelaDescricao.Value, 0);
end;

procedure TFrmItens.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    cmbTipoItemChange(self);
    pEstoqueFiscal.Caption := FloattoStr(dfEstoque.Value - dfMinimo.Value) + ' Para Atingir o Minimo';
    if not FormatoTabela.Checked then
        begin
            pnTabelaPreco.Visible := false;
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

procedure TFrmItens.FormComponentBeforeSave(Sender: TObject;
    var bSkip: Boolean);
var sUnidades: string;
begin
    inherited;
    ActiveControl := nil;

    if (DMItens.C_TabelaCodigo.Value = '') then
        begin
            DMItens.C_Tabela.edit;
            DMItens.C_TabelaCodigo.value := DMProjeto.GeraCodigoItem(dfCodigo.text, DMItens.C_TabelaItem.value);
        end;

    pnTabelaPreco.Visible := false;

    {Alertando para poss�vel distor��o entre o pre�o de compra e o de venda. Provodado por ItensUnidades}
    with DMItens do
        begin
            if (C_TabelaPreco.Value <= C_TabelaCUSTOMEDIO.Value) and (C_TabelaTipoItem.Value in [1]) and
                (C_TabelaPreco.Value > 0) and
                (DlgMsg.ShowMsg(3157, [C_TabelaPreco.DisplayText, C_TabelaCUSTOMEDIO.DisplayText]) = 200) then
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
        (DMItens.C_TabelaicPrecoCalcDescMax.Value < DMItens.C_TabelaicMenorPrecoVenda.Value) and
        (DMProjeto.Parametro('SemMsgPrecoMinimo') <> 'S') then
        DlgMsg.ShowMsg(2456, [DMItens.C_TabelaicPrecoCalcDescMax.DisplayText, DMItens.C_TabelaicMenorPrecoVenda.DisplayText], 'SemMsgPrecoMinimo');

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

                if C_ItensUnidades.State <> dsBrowse then C_ItensUnidades.Post;

                if not bMultiUnd then
                    begin
                        {Verificando se existem unidades duplicadas}
                        if ContaStrings(dbgMultUnidade.Distinct('Unidade', false, '', '|'), '|') <> C_ItensUnidades.RecordCount then
                            begin
                                DlgMsg.ShowMsg(3150); //Unidades Duplicadas
                                btEstoques.OnClick(btEstoques);
                                dbgMultUnidade.SetFocus;
                                bSkip := true;
                                exit;
                            end;
                    end;

                {Se todas as unidades s�o distintas (valida��o acima), o distinct dos fatores identifica se existem duas
                unidades diferentes com mesmo fator.}
                {Inicio Multiunidade}

                  // Para Possibilitar a inclus�o de mais de uma unidade com o mesmo fator.
        //        if ContaStrings(dbgMultUnidade.Distinct('Fator',false,'','|'),'|') <> C_ItensUnidades.RecordCount then begin
        //         {Tentando Eliminar Unidades sem Uso}
        //          sUnidades := C_TabelaUnidade.Value + ',' + C_TabelaUnidadeEntrada.Value + ',' +
        //                 C_TabelaUnidadeVarejo.Value + ',' + C_TabelaUnidadeCarga.Value;
        //          C_ItensUnidades.First;
        //
        //          while not C_ItensUnidades.EOF do begin
        //            if (C_ItensUnidadesUnidade.Value <> 'Und') and (pos(C_ItensUnidadesUnidade.Value, sUnidades) = 0) then
        //              C_ItensUnidades.Delete
        //            else
        //              C_ItensUnidades.Next;
        //           end;
        //          if ContaStrings(dbgMultUnidade.Distinct('Fator'), ',') <> C_ItensUnidades.RecordCount then begin
        //            DlgMsg.ShowMsg(3151); //Fatores Duplicados
        //            btEstoques.OnClick(btEstoques);
        //            dbgMultUnidade.SetFocus;
        //            bSkip := true;
        //            exit;
        //          end;
        //        end;
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

procedure TFrmItens.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoItem.SetReadonly(false);
    lbDataCadastro.Visible := false;
    dfDataCadastro.Visible := false;
    pnTabelaPreco.Visible := false;

    {Itens com Estoque}
  //  dfEstoque.SetReadonly(false);
  //  dfEstoque_b.SetReadOnly(false);
    dfEstoqueFiscal.SetReadonly(True);
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

    AtualizarPreosCalculados1.Visible := False;

    try
        //    if dxInspector.Visible and DigitacaoRapida1.Checked then
        //      TdxInspectorRow(dxInspectorCodigo).Node.Focused := True;
    except
    end;

    if (DMProjeto.Parametro('CustoCalcPreco') = 'CC') then
        TS_Label29.Caption := 'Custo Cont�bil (C.C):'
    else
        TS_Label29.Caption := 'Custo M�dio (C.M.):';

end;

procedure TFrmItens.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoItem.SetReadonly(true);
    lbDataCadastro.Visible := true;
    dfDataCadastro.Visible := true;

    {Itens com Estoque}
  //  dfEstoque.Setreadonly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));
  //  dfEstoque_b.SetReadOnly(dfEstoque.ReadOnly);
    dfEstoqueFiscal.SetReadonly(True);
    dfEstoque.Setreadonly(True);
    dfEstoque_b.SetReadOnly(True);
    dfEstoqueVolume.SetReadOnly(True);

    dfUltPrecoCompra.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));
    if not dfUltPrecoCompra.ReadOnly then
        dfUltPrecoCompra.SetReadOnly((DMItens.C_TabelaUltimaCompra.Value > 0) or (DMItens.C_TabelaUltimaVenda.Value > 0));

    dfCompensaCusto.SetReadOnly(not DMProjeto.LerPermissao(Self.Name, 'ALT_CM'));

    dfUltForn1.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

    {Itens Sem Estoque}
    dfUltForn2.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

    {Itens de Servico}
    dfUltForn3.SetReadOnly(DMItens.C_TabelaUltimaCompra.Value > 0);

    AtualizarPreosCalculados1.Visible := True;

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

procedure TFrmItens.df_FotoClick(Sender: TObject);
begin
    inherited;
    ppmFoto.PopupFromCursorPos;
end;

procedure TFrmItens.FormCreate(Sender: TObject);
begin
    inherited;
    codigodebarrasvalildo := true;
    gbControleValidade.visible := DMProjeto.bControleValidade;
    DlgPopup := TDlgPopupContas.Create(self, DMItens.C_ContasDS, nil, true);
    nCodForm := DMProjeto.TipoOrigem(self.name);
    DMItens.AtualizaFatores;
end;

procedure TFrmItens.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    FrmItens := nil;
    DlgPopup.Free;
end;

procedure TFrmItens.FormActivate(Sender: TObject);
var arq: TStringList;
    i: Integer;
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

procedure TFrmItens.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var i: integer;
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

procedure TFrmItens.ConsiderarPercentualdoGrupo1Click(
    Sender: TObject);
var
    sField: string;
begin
    inherited;

    sField := TTS_DBEditNumber(ActiveControl).DataField;
    sField := replace(sField, 'ic', '');

    DMItens.C_Tabela.Edit;
    DMItens.C_Tabela.FieldByName(sField).asFloat := -999; //Para que seja considerado o valor definido no grupo ou em FatoresCustos.

end;

procedure TFrmItens.ppmGrupoPopup(Sender: TObject);
begin
    inherited;
    ConsiderarPercentualdoGrupo1.Enabled := (DMItens.C_TabelaGrupo.Value > 0);
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

procedure TFrmItens.FormShow(Sender: TObject);
begin
    inherited;

    if (DMItens.bMedicamentos) then
        begin
            dfPrecoManual.Visible := True;
            lbPrecoManual.Visible := True;
            lcbPrincipioAtivo.Visible := True;
            lbPrincipioAtivo.Visible := True;
            shapePreco.Width := 455;
        end
    else
        begin
            dfPrecoManual.Visible := false;
            lbPrecoManual.Visible := false;
            lcbPrincipioAtivo.Visible := false;
            lbPrincipioAtivo.Visible := false;
            shapePreco.Width := 230;
        end;

    lbEstoqueFiscal.Visible := False;
    dfEstoqueFiscal.Visible := False;
    lbDifEstoque.Visible := False;
    dfDifEstoque.Visible := False;
    if DMProjeto.Parametro('BaixaEstoqueFiscal') = 'S' then
        begin
            lbEstoqueFiscal.Visible := True;
            dfEstoqueFiscal.Visible := True;
            lbDifEstoque.Visible := True;
            dfDifEstoque.Visible := True;
        end;
    pEstoqueFiscal.Caption := FloattoStr(dfEstoque.Value - dfMinimo.Value) + ' Para Atingir o Minimo';
    pEstoqueFiscal.Visible := not (dfDifEstoque.Visible);
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

    LerCamposDefinidos;

end;

procedure TFrmItens.btDefinirCamposClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'CCUSTOM') then
        exit;

    DlgDefinirCampos := TDlgDefinirCampos.create(self);
    DlgDefinirCampos.free;

    LerCamposDefinidos;
end;

procedure TFrmItens.pcItensChange(Sender: TObject);
begin
    inherited;

    {Definindo o Parent para o Panel de P.Venda}
    if pcItens.ActivePage = tsServicos then
        begin
            pnCalcPreco.Parent := tsCalcPreco3;
            pnCustomizados.Parent := tsCustomizados3;
            DBEdit11Change(self);
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
            DBEdit11Change(self);
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

procedure TFrmItens.cbLockUnidadesChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.sUnidade := DMItens.C_TabelaUnidade.Value
    else
        DMItens.sUnidade := '';
end;

procedure TFrmItens.cbLockFabricanteChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nFabricante := DMItens.C_TabelaFabricante.Value
    else
        DMItens.nFabricante := 0;
end;

procedure TFrmItens.cbLockFornecedorChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nFornecedor := DMItens.C_TabelaUltimoFornecedor.Value
    else
        DMItens.nFornecedor := 0;
end;

procedure TFrmItens.Adicionar1Click(Sender: TObject);
begin
    inherited;
    DMItens.C_ItensUnidades.append;
end;

procedure TFrmItens.cmbUnidadeEnter(Sender: TObject);
begin
    inherited;
    if not TTS_DBLookupComboBox(Sender).DroppedDown then
        TTS_DBLookupComboBox(Sender).DroppedDown := true;

end;

procedure TFrmItens.lbPromocaoClick(Sender: TObject);
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

procedure TFrmItens.cmbContaVendas1InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(15);
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

procedure TFrmItens.cbLockCtInventarioChange(Sender: TObject);
begin
    inherited;
    if TTS_CheckBox(sender).Checked then
        DMItens.nContaInventario := DMItens.C_TabelaConta_Invent.Value
    else
        DMItens.nContaInventario := 0;
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

procedure TFrmItens.dfDescMax3MouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ActiveControl := TWinControl(Sender);
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

procedure TFrmItens.cmbContaVendas2InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
    DlgPopup.SetTipo(13);
end;

procedure TFrmItens.btOutrosClick(Sender: TObject);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
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

    DlgAlteraCustoMedio.Estoque := DMItens.C_TabelaESTOQUE.Value;
    DlgAlteraCustoMedio.FatorVenda := DMItens.C_TabelaFatorUndVenda.Value;
    DlgAlteraCustoMedio.CustoAtual := DMItens.C_TabelaCUSTOMEDIO.Value;

    if DlgAlteraCustoMedio.ShowModal = 100 then
        begin
            if DlgAlteraCustoMedio.NovoCusto <> DMItens.C_TabelaCUSTOMEDIO.Value then
                begin
                    DMItens.C_Tabela.Edit;
                    DMItens.C_TabelaCUSTOMEDIO.Value := DlgAlteraCustoMedio.NovoCusto;
                end;
        end;
    DlgAlteraCustoMedio.Release;

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

procedure TFrmItens.TS_SpeedButton1Click(Sender: TObject);
var
    confirmaPrecoCalculado: Integer;
begin
    inherited;
    DMItens.AtualizaFatores;
    confirmaPrecoCalculado := mrYes;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ALTCUSTO') then
        exit;
    DMProjeto.SetParametrosForm([DMItens.C_TabelaItem.Value]);
    DMProjeto.CriarForm('DlgFormacaoCusto', Self, True);
    if (DMItens.C_TabelaPreco.asCurrency <> DMItens.C_TabelaicPrecoCalc.asCurrency) then
        begin
            confirmaPrecoCalculado := MessageDlg('Pre�o calculado: R$ ' + DMItens.C_TabelaicPrecoCalc.AsString + #13 + 'esta diferente do ' + #13 + 'Pre�o do Produto: R$ ' + DMItens.C_TabelaPreco.AsString + '. ' + #13 + 'Deseja Salvar?', mtConfirmation, [mbYes, mbNo], 0);
            if (confirmaPrecoCalculado) = mrYes then
                begin
                    AtualizarPreco();
                    btGravarClick(Sender);
                end;
        end;
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

procedure TFrmItens.SincronizarLucroItem(nPrecoDig: Currency);
var nSemLucro, nCusto: Currency;
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

            if (DMProjeto.Parametro('CustoCalcPreco') = 'CC') then
                nCusto := C_TabelaCUSTOCONTABIL.Value * (1 + C_TabelaCOMPENSACUSTO.Value / 100)
            else
                nCusto := C_TabelaCUSTOMEDIO.Value * (1 + C_TabelaCOMPENSACUSTO.Value / 100);

            if nCusto = 0 then
                C_TabelaicFatorLucro.Value := 0
            else if (nPrecoDig) > 0 then
                C_TabelaicFATORLUCRO.Value := ((Arredondar((nPrecoDig - nCusto), 3) / Arredondar(nPrecoDig, 3)) - (nSemLucro / 100)) * 100
            else
                C_TabelaicFATORLUCRO.Value := -500; //100% de preju�zo sobre o custo do item;
            dfLucroChange(dfLucro); //Para atualizar o campo FatorLucro;
            DBEdit6Change(DBEdit6); //Para atualizar as cores dos labels;

        end;

end;

procedure TFrmItens.dfPrecoCalcKeyPress(Sender: TObject;
    var Key: Char);
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

procedure TFrmItens.dfPrecoCalcExit(Sender: TObject);
begin
    inherited;
    SincronizarLucroItem(TTS_DBEditNumber(Sender).Value);
    DBEdit1Change(Self);
end;

procedure TFrmItens.btAtualizarPrecoClick(Sender: TObject);
begin
    inherited;
    AtualizarPreco();
end;

procedure TFrmItens.AtualizarPreco();
begin
    with DMItens do
        begin
            C_Tabela.Edit;
            if C_TabelaTipoItem.Value < 8 then
                C_TabelaPreco.asCurrency := Arredondar(C_TabelaicPrecoCalc.asCurrency, 2)
            else
                C_TabelaPreco.asCurrency := C_TabelaicPrecoCalc.asCurrency;

            pnAtualizarPreco.Visible := false;
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
                //          C_Tabela.Refresh;
                C_Tabela.Edit;
                C_TabelaGrupo.Value := lastdataobject.objectkey; //Para forcar o calcfields e a atualiza��o dos campos ic...;
            end;

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

procedure TFrmItens.Cdigo1Click(Sender: TObject);
begin
    inherited;
    dfCodigo.SetFocus;
    FormComponent.FirstEditField := dfCodigo;
    FormComponent.FirstSearchField := dfCodigo;
    imgFocoCodigo.Visible := true;
    ImgFocoDescricaoVenda.Visible := false;
    imgCobBarras.Visible := False;
    ImgPinoGrupo.Visible := False;
    ImgPinoRef.Visible := False;
    SalvarConfiguraes1.Click;
end;

procedure TFrmItens.DescriodeVenda1Click(Sender: TObject);
begin
    inherited;
    dfDescricaoVenda.SetFocus;
    FormComponent.FirstEditField := dfDescricaoVenda;
    FormComponent.FirstSearchField := dfDescricaoVenda;
    imgFocoCodigo.Visible := false;
    ImgFocoDescricaoVenda.Visible := true;
    imgCobBarras.Visible := False;
    ImgPinoGrupo.Visible := False;
    ImgPinoRef.Visible := False;
    SalvarConfiguraes1.Click;
end;

procedure TFrmItens.CdigoBarras1Click(Sender: TObject);
begin
    inherited;
    dfCodBarras.SetFocus;
    FormComponent.FirstEditField := dfCodBarras;
    FormComponent.FirstSearchField := dfCodBarras;
    imgFocoCodigo.Visible := false;
    ImgFocoDescricaoVenda.Visible := false;
    imgCobBarras.Visible := true;
    ImgPinoGrupo.Visible := False;
    ImgPinoRef.Visible := False;
    SalvarConfiguraes1.Click;
end;

procedure TFrmItens.Grupo1Click(Sender: TObject);
begin
    inherited;
    cmbGrupo.SetFocus;
    FormComponent.FirstEditField := cmbGrupo;
    FormComponent.FirstSearchField := cmbGrupo;
    imgFocoCodigo.Visible := false;
    ImgFocoDescricaoVenda.Visible := false;
    imgCobBarras.Visible := false;
    ImgPinoGrupo.Visible := true;
    ImgPinoRef.Visible := False;
    SalvarConfiguraes1.Click;
end;

procedure TFrmItens.Referncia1Click(Sender: TObject);
begin
    inherited;
    dfReferencia.SetFocus;
    FormComponent.FirstEditField := dfReferencia;
    FormComponent.FirstSearchField := dfReferencia;
    imgFocoCodigo.Visible := false;
    ImgFocoDescricaoVenda.Visible := false;
    imgCobBarras.Visible := false;
    ImgPinoGrupo.Visible := False;
    ImgPinoRef.Visible := True;
    SalvarConfiguraes1.Click;
end;

procedure TFrmItens.imgFocoCodigoClick(Sender: TObject);
begin
    inherited;
    ppmFoco.PopupFromCursorPos;
end;

procedure TFrmItens.AtualizarPreosCalculados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAtualizarPrecosCalculados', Self, True);
    DMItens.C_Tabela.Refresh;
end;

procedure TFrmItens.ExpandirFoto1Click(Sender: TObject);
begin
    inherited;
    DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + DMItens.C_TabelaFoto.AsString, DMItens.C_TabelaDESCRICAOTECNICA.AsString);
    DLGVisialuzadorImagem.Free;
end;

procedure TFrmItens.sbServicosEmItensClick(Sender: TObject);
begin
    inherited;
    if Sender is TTS_SpeedButton then
        TTS_SpeedButton(Sender).Down := true;

    pcEstoque.ActivePageIndex := StrToInt(TTS_SpeedButton(Sender).TagStr);
end;

procedure TFrmItens.cmbGrupoChange(Sender: TObject);
begin
    inherited;
    if DMProjeto.Parametro('AtualizaPeloGrupo') = 'S' then
        begin
            if Application.MessageBox('Deseja atualizar os dados fiscais deste item com informa��es correspondente ao grupo escolhido?', 'Aten��o', mb_yesno) <> id_yes then
                exit;
            DMItens.AtualizaPeloGrupo;
        end;
end;

procedure TFrmItens.ExportaoMabel1Click(Sender: TObject);
var AnoMes: string;
    Ano, Mes, Dia: Word;
    Fabricante: Integer;

begin
    inherited;

    DecodeDate(Now, Ano, Mes, Dia);
    AnoMes := SoNumeros(IntToStr(Ano), 4) + SoNumeros(IntToStr(Mes), 2);
    AnoMes := InputBox('Ano/M�s Refer�ncia:', 'Informe o ano e o m�s', AnoMes);
    //Fabricante := cmbFabricante.LookupKeyValue;
    DMITens.ExportacaoMabel(AnoMes, 0);
    Application.MessageBox('Arquivos Gerados com �xito!', 'AVISO!', mb_ok);
end;

procedure TFrmItens.TS_DBLookupComboBox3Change(Sender: TObject);
begin
    inherited;
    DMItens.C_TabelaSituacaoECF.asVariant := TS_DBLookupComboBox3.LookupKeyValue;
end;

procedure TFrmItens.dfCodigoExit(Sender: TObject);
begin
    inherited;
    if (nFixarTamanhoCodigoItem > 0) then
        begin
            if (Length(dfCodigo.Text) <> nFixarTamanhoCodigoItem) then
                begin
                    DlgMsg.ShowMsg(50, [pchar('O tamanho do campo c�digo deve ser igual a ' + inttoStr(nFixarTamanhoCodigoItem) + ' caracteres.')]);
                    ActiveControl := dfCodigo;
                end;
        end;
    if SoNumeros(dfCodigo.Text, Length(Trim(dfCodigo.Text))) <> Trim(dfCodigo.Text) then
        begin
            DlgMsg.ShowMsg(50, [pchar('O Campo C�digo s� permite caracteres n�mericos.')]);
            ActiveControl := dfCodigo;
        end;
end;

procedure TFrmItens.dfCodigoEnter(Sender: TObject);
begin
    inherited;
    dfCodigo.ReadOnly := False;
    if (not (Estado = fsInclusao)) then
        dfCodigo.ReadOnly := True;
end;

procedure TFrmItens.dfCodBarrasExit(Sender: TObject);
begin
    inherited;
    codigodebarrasvalildo := true;
    if SoNumeros(dfCodBarras.Text, Length(Trim(dfCodBarras.Text))) <> Trim(dfCodBarras.Text) then
        begin
            DlgMsg.ShowMsg(50, [pchar('O Campo C�digo de Barras s� permite caracteres n�mericos.')]);
            ActiveControl := dfCodBarras;
        end;

    if (not (Estado = fsInclusao)) then
        raise Exception.Create('@@');

    if (dfCodBarras.Text = '') then
        raise Exception.Create('@@');

    if DMProjeto.VerificaExistenciaItensCodigos(dfCodBarras.Text) then
        begin
            DlgMsg.ShowMsg(50, [pChar('C�digo de Barras Existente!')]);
            codigodebarrasvalildo := false;
            dfCodBarras.SetFocus;
            raise Exception.Create('@@');
        end;

    if Length(dfCodBarras.Text) < 12 then
        begin
            DlgMsg.ShowMsg(50, [pChar('C�digo de Barras Invalido!')]);
            codigodebarrasvalildo := false;
            dfCodBarras.SetFocus;
            raise Exception.Create('@@');
        end;

    //    if (dfCodBarras.Text <> '') and not dfCodBarras.ReadOnly then begin
    //       if not (DMItens.C_ItensCodigos.State in [dsinsert,dsedit]) then
    //        DMItens.C_ItensCodigos.Edit;
    //        DMItens.C_ItensCodigosCODIGO.Value := dfCodBarras.Text;
    //        DMItens.C_ItensCodigositem.Value   := DMItens.C_Tabelaitem.value;
    //    end;
end;

procedure TFrmItens.dfCodBarrasEnter(Sender: TObject);
begin
    inherited;
    if (dfCodBarras.Text <> '') and (codigodebarrasvalildo) then
        begin
            dfCodBarras.ReadOnly := False;
            if (not (Estado = fsInclusao)) then
                begin
                    dfCodBarras.ReadOnly := True;
                end;
        end
    else
        dfCodBarras.ReadOnly := False;
    if (length(dfCodBarras.Text) > 12) and (codigodebarrasvalildo) then
        dfCodBarras.ReadOnly := True;
end;

procedure TFrmItens.btGravarClick(Sender: TObject);
begin
    if not (DMItens.C_Tabela.State in [dsinsert, dsedit]) then
        DMItens.C_Tabela.Edit;

    if (DMItens.C_TabelaULTIMOFORNECEDOR.IsNull) then
        DMItens.C_TabelaULTIMOFORNECEDOR.Value := -9;

    if (DMItens.C_TabelaFORNECPREFERENCIA.IsNull) then
        DMItens.C_TabelaFORNECPREFERENCIA.Value := -9;

    inherited;
end;

procedure TFrmItens.btProxRegClick(Sender: TObject);
begin
    inherited;
    if DMItens.C_TabelaCODIGOBARRAS.Value = '' then
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := true;
end;

procedure TFrmItens.btUltimoRegClick(Sender: TObject);
begin
    inherited;
    if DMItens.C_TabelaCODIGOBARRAS.Value = '' then
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := true;
end;

procedure TFrmItens.btPrevRegClick(Sender: TObject);
begin
    inherited;
    if DMItens.C_TabelaCODIGOBARRAS.Value = '' then
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := true;
end;

procedure TFrmItens.btPrimeiroRegClick(Sender: TObject);
begin
    inherited;
    if DMItens.C_TabelaCODIGOBARRAS.Value = '' then
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := False
    else
        DMItens.C_TabelaCODIGOBARRAS.ReadOnly := true;
end;

procedure TFrmItens.TS_Label83Click(Sender: TObject);
begin
    inherited;
    MostraTabelaItensCodigos(TLabel(Sender));
end;

procedure TFrmItens.MostraTabelaItensCodigos;
var
    i, size: Integer;
begin
    //    pnItensCodigos.Parent := oControl.Parent;
    //    pnItensCodigos.left := oControl.FocusControl.left - 1;
    //    pnItensCodigos.top := oControl.FocusControl.top - 1;

    size := (DMItens.C_TabelasPreco.RecordCount * 18) + 46;

    if pnItensCodigos.height < size then
        pnItensCodigos.Height := size;

    if bAuto then
        pnItensCodigos.visible := not pnItensCodigos.visible
    else
        pnItensCodigos.visible := true;

    if pnItensCodigos.visible then
        begin
            pnItensCodigos.bringtofront;
            if dbgItensCodigos.CanFocus then
                ActiveControl := dbgItensCodigos;
            dbgItensCodigos.FocusedColumn := 1;
        end
    else
        begin
            {Restaurando visibilidade dos componentes}
            pnItensCodigos.Visible := false;
        end;
end;

procedure TFrmItens.dbgItensCodigosChangeNode(Sender: TObject; OldNode,
    Node: TdxTreeListNode);
begin
    inherited;
    //  TEXTO := dbgItensCodigos.GetFieldValue(OLDNODE,'CODIGO',0,TRUE);
    //  TEXTO := dbgItensCodigos.GetFieldValue(NODE,'CODIGO',0,TRUE);
    //  if TEXTO <> '' then
    //    dbgCodigoColumn.ReadOnly := true;
    //  if Texto = '' then
    //    dbgCodigoColumn.ReadOnly := false;
end;

procedure TFrmItens.dbgItensCodigosEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
begin
    inherited;
    TEXTO := dbgItensCodigos.GetFieldValue(NODE, 'CODIGO', 0, TRUE);
    if TEXTO <> '' then
        dbgCodigoCodigoBarras.ReadOnly := true;
    if Texto = '' then
        dbgCodigoCodigoBarras.ReadOnly := false;
end;

procedure TFrmItens.dfCodigoVendaKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9']) then
        key := #0;
end;

end.

