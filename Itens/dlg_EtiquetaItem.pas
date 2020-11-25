unit dlg_EtiquetaItem;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
    TS_PopupEdit, TS_PopupFiltrarItens, TS_ComboBox, dxDBGrid, dxDBCtrl,
    dxTL, dxDBTLCl, dxGrClms, TS_QDBGrid, DB, IBCustomDataSet, IBUpdateSQL,
    IBQuery, ZRCtrls, ZReport, dxfProgressBar, TS_CheckBox, ppCtrls,
    ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
    ppDB, ppDBPipe, TS_RadioGroup, ppModule, daDataModule, Math, dxDBEdtr,
    dxDBELib, TS_LookupComboBox, DBClient, Provider, TS_Edit, raCodMod,
    ppBarCod, jpeg;

type
    TdlgEtiquetaItem = class(TFrmModeloCadastros)
        PopupFiltroItens: TTS_PopupFiltrarItens;
        TS_Label1: TTS_Label;
        dbgItens: TTS_QDBGrid;
        TS_Panel1: TTS_Panel;
        TS_ComboBox1: TTS_ComboBox;
        TS_Label2: TTS_Label;
        cbTipoEtiqueta: TTS_ComboBox;
        Q_ItensDs: TDataSource;
        Q_Itens: TIBQuery;
        U_itens: TIBUpdateSQL;
        Q_ItensITEM: TIntegerField;
        Q_ItensCODIGO: TIBStringField;
        Q_ItensREFERENCIA: TIBStringField;
        Q_ItensDESCRICAO: TIBStringField;
        Q_ItensESTOQUE: TIBBCDField;
        Q_ItensFABRICANTE: TIBStringField;
        dbgItensITEM: TdxDBGridMaskColumn;
        dbgItensCODIGO: TdxDBGridMaskColumn;
        dbgItensREFERENCIA: TdxDBGridMaskColumn;
        dbgItensDESCRICAO: TdxDBGridMaskColumn;
        dbgItensESTOQUE: TdxDBGridCurrencyColumn;
        dbgItensFABRICANTE: TdxDBGridMaskColumn;
        Q_GerarEtiquetas: TIBQuery;
        Q_Etiquetas: TIBQuery;
        Q_GerarEtiquetasDs: TDataSource;
        Barra: TdxfProgressBar;
        Q_EtiquetasEmpresa: TStringField;
        cbUmaEtiqueta: TTS_CheckBox;
        ppDBEtiquetas: TppDBPipeline;
        Q_EtiquetasDs: TDataSource;
        ppEtiquetas6282: TppReport;
        ppDetailBand1: TppDetailBand;
        ppImage1: TppImage;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        cbLogo: TTS_CheckBox;
    ppEtiquetaJoiaPino: TppReport;
        ppColumnHeaderBand2: TppColumnHeaderBand;
        ppDetailBand2: TppDetailBand;
        ppColumnFooterBand2: TppColumnFooterBand;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppMonetario: TppLabel;
        rgOrdem: TTS_RadioGroup;
        ppLabel4: TppLabel;
        ppBorda: TppShape;
        cbBorda: TTS_CheckBox;
        ppColumnHeaderBand1: TppColumnHeaderBand;
        ppColumnFooterBand1: TppColumnFooterBand;
        daDataModule1: TdaDataModule;
        zrEtiquetaItem: TZReport;
        zrvITEM: TZRField;
        zrvCODIGO: TZRField;
        zrvREFERENCIA: TZRField;
        zrvDESCRICAO: TZRField;
        zrvESTOQUE: TZRField;
        zrvFABRICANTE: TZRField;
        zrvNOMEEMPRESA: TZRField;
        zrvEmpresa: TZRField;
        zrEtiquetaItemDetail: TZRBand;
        ZRLabel1: TZRLabel;
        Empresa: TZRLabel;
        ZRLabel3: TZRLabel;
        ZRLabel5: TZRLabel;
        ZRLabel6: TZRLabel;
        ZRLabel7: TZRLabel;
        ZRLabel2: TZRLabel;
        ZRLabel4: TZRLabel;
        zrvLOCALIZACAO: TZRField;
        ppEtiquetasRoupas: TppReport;
        pp5RIBON4inchmodel: TppReport;
        ppDetailBand4: TppDetailBand;
        ppShape1: TppShape;
        ppDBText17: TppDBText;
        ppEtiquetas08X04_2Col: TppReport;
        ppColumnHeaderBand4: TppColumnHeaderBand;
        ppDetailBand5: TppDetailBand;
        ppShape2: TppShape;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppLabel9: TppLabel;
        ppColumnFooterBand4: TppColumnFooterBand;
        daDataModule2: TdaDataModule;
        ppEtiquetas08X25_2Col: TppReport;
        ppColumnHeaderBand5: TppColumnHeaderBand;
        ppDetailBand6: TppDetailBand;
        ppShape3: TppShape;
        ppDBText20: TppDBText;
        ppDBText22: TppDBText;
        ppLabel5: TppLabel;
        ppColumnFooterBand5: TppColumnFooterBand;
        daDataModule3: TdaDataModule;
        ppEtiquetas06X03_3Col: TppReport;
        ppColumnHeaderBand6: TppColumnHeaderBand;
        ppDetailBand7: TppDetailBand;
        ppShape4: TppShape;
        ppDBText23: TppDBText;
        ppDBText24: TppDBText;
        ppLabel6: TppLabel;
        ppColumnFooterBand6: TppColumnFooterBand;
        Q_EtiquetasCODIGO: TIBStringField;
        Q_EtiquetasREFERENCIA: TIBStringField;
        Q_EtiquetasDESCRICAO: TIBStringField;
        Q_EtiquetasFABRICANTE: TIBStringField;
        Q_EtiquetasITEM: TIntegerField;
        Q_EtiquetasCODIGOBARRAS: TIBStringField;
        Q_EtiquetasESTOQUE: TIBBCDField;
        Q_EtiquetasPERCENTUAL: TIBBCDField;
        Q_EtiquetasFATORUNDVENDA: TFloatField;
        Q_EtiquetasPRECOTEMP: TIBBCDField;
        Q_EtiquetasPRECOPROMOCAO: TIBBCDField;
        Q_EtiquetasPERCUND: TIBBCDField;
        Q_EtiquetasPRECOMANUND: TIBBCDField;
        Q_EtiquetasUNIDADE: TIBStringField;
        Q_EtiquetasUNDVENDA: TIBStringField;
        Q_EtiquetasPRECONORMAL: TIBBCDField;
        Q_EtiquetasFATORITEMUND: TFloatField;
        Q_EtiquetasPRECO: TCurrencyField;
        ppEtiqueta06X03_1Col: TppReport;
        ppDetailBand8: TppDetailBand;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppLabel7: TppLabel;
        ppDBText27: TppDBText;
        ppEtiquetas33X21_3Col: TppReport;
        ppDetailBand9: TppDetailBand;
        ppDBText28: TppDBText;
        ppDBText29: TppDBText;
        ppEtiqueta5ColMatricial: TppReport;
        ppColumnHeaderBand8: TppColumnHeaderBand;
        ppDetailBand10: TppDetailBand;
        ppDBText31: TppDBText;
        ppDBText32: TppDBText;
        ppLabel10: TppLabel;
        ppColumnFooterBand8: TppColumnFooterBand;
        ppDBText33: TppDBText;
        ppEtiqueta2ColMatricial: TppReport;
        ppColumnHeaderBand9: TppColumnHeaderBand;
        ppDetailBand11: TppDetailBand;
        ppDBText34: TppDBText;
        ppDBText35: TppDBText;
        ppLabel11: TppLabel;
        ppColumnFooterBand9: TppColumnFooterBand;
        ppDBText36: TppDBText;
        Q_EtiquetasINDEXADOR: TIntegerField;
        C_IndexadoresDS: TDataSource;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        TS_Label3: TTS_Label;
        cmbIndex: TTS_LookupComboBox;
        Q_SQL: TIBQuery;
        Q_EtiquetasLOCALIZACAO: TIntegerField;
        ppEtiquetas6X4_A4: TppReport;
        ppColumnHeaderBand10: TppColumnHeaderBand;
        ppDetailBand12: TppDetailBand;
        ppDBText38: TppDBText;
        ppDBText39: TppDBText;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppDBText42: TppDBText;
        ppColumnFooterBand10: TppColumnFooterBand;
        ppShape5: TppShape;
        edtTitulo: TTS_Edit;
        lbTitulo: TTS_Label;
        ppEtiquetasJoias: TppReport;
        ppDetailBand13: TppDetailBand;
        ppDBText43: TppDBText;
        ppDBText44: TppDBText;
        ppDBText45: TppDBText;
        ppDBText46: TppDBText;
        ppDBText37: TppDBText;
        ppDBBarCode1: TppDBBarCode;
        ppColumnHeaderBand7: TppColumnHeaderBand;
        ppColumnFooterBand7: TppColumnFooterBand;
        pp5ColPrecoGrandeMatricial: TppReport;
        ppColumnHeaderBand11: TppColumnHeaderBand;
        ppDetailBand14: TppDetailBand;
        ppDBText47: TppDBText;
        ppDBText48: TppDBText;
        ppColumnFooterBand11: TppColumnFooterBand;
        ppGondolaMatricial: TppReport;
        ppColumnHeaderBand12: TppColumnHeaderBand;
        ppDetailBand15: TppDetailBand;
        ppDBText49: TppDBText;
        ppDBText50: TppDBText;
        ppLabel13: TppLabel;
        ppColumnFooterBand12: TppColumnFooterBand;
        ppDBText30: TppDBText;
        ppDBText51: TppDBText;
        ppDBText52: TppDBText;
        cbComPreco: TTS_CheckBox;
        ppBolsa2Col: TppReport;
        ppColumnHeaderBand13: TppColumnHeaderBand;
        ppDetailBand16: TppDetailBand;
        ppDBText53: TppDBText;
        ppDBText54: TppDBText;
        ppLabel12: TppLabel;
        ppColumnFooterBand13: TppColumnFooterBand;
        daDataModule4: TdaDataModule;
        ppDBBarCode2: TppDBBarCode;
        ppLabel14: TppLabel;
        ppDBText56: TppDBText;
        ppLine1: TppLine;
        ppDBBarCode3: TppDBBarCode;
        ppDBText55: TppDBText;
        ppGondolasRIBON: TppReport;
        ppDetailBand17: TppDetailBand;
        ppDBText57: TppDBText;
        ppDBText59: TppDBText;
        ppDBText58: TppDBText;
        C_GerarEtiquetas: TClientDataSet;
        P_GerarEtiquetas: TDataSetProvider;
        C_GerarEtiquetasITEM: TIntegerField;
        C_GerarEtiquetasCODIGO: TStringField;
        C_GerarEtiquetasREFERENCIA: TStringField;
        C_GerarEtiquetasDESCRICAO: TStringField;
        C_GerarEtiquetasESTOQUE: TBCDField;
        C_GerarEtiquetasFABRICANTE: TStringField;
        Q_EtiquetasQTDEMBALAGEM: TFloatField;
        ppLabel15: TppLabel;
        ppDBText60: TppDBText;
        ppDBText61: TppDBText;
        ppLabel16: TppLabel;
        ppColumnHeaderBand3: TppColumnHeaderBand;
        ppDetailBand3: TppDetailBand;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBText14: TppDBText;
        ppDBText15: TppDBText;
        ppColumnFooterBand3: TppColumnFooterBand;
        raCodeModule1: TraCodeModule;
        ppGondola_Media: TppReport;
        ppDetailBand18: TppDetailBand;
        ppDBText62: TppDBText;
        ppDBText64: TppDBText;
        ppDBText65: TppDBText;
        spImprimirDireto: TTS_SpeedButton;
        ppDBText63: TppDBText;
        ppEtiquetas33X21_3Col_Argox: TppReport;
        ppColumnHeaderBand14: TppColumnHeaderBand;
        ppDetailBand19: TppDetailBand;
        ppDBText66: TppDBText;
        ppDBText67: TppDBText;
        ppDBBarCode4: TppDBBarCode;
        ppColumnFooterBand14: TppColumnFooterBand;
        ppDBText21: TppDBText;
        ppDBText16: TppDBText;
        ppEtiquetasRoupa2Col: TppReport;
        ppColumnHeaderBand15: TppColumnHeaderBand;
        ppDetailBand20: TppDetailBand;
        ppDBText68: TppDBText;
        ppDBText69: TppDBText;
        ppDBText70: TppDBText;
        ppDBText71: TppDBText;
        ppDBText72: TppDBText;
        ppDBText73: TppDBText;
        ppColumnFooterBand15: TppColumnFooterBand;
        ppGondolaHorizontal: TppReport;
        ppDetailBand21: TppDetailBand;
        ppDBText74: TppDBText;
        ppDBText75: TppDBText;
        ppDBBarCode5: TppDBBarCode;
        ppDBText76: TppDBText;
        ppEtiquetasRoupas3Colunas: TppReport;
        ppColumnHeaderBand16: TppColumnHeaderBand;
        ppDetailBand22: TppDetailBand;
        ppDBText77: TppDBText;
        ppDBText78: TppDBText;
        ppDBText79: TppDBText;
        ppDBText80: TppDBText;
        ppDBText81: TppDBText;
        ppDBText82: TppDBText;
        ppColumnFooterBand16: TppColumnFooterBand;
        raCodeModule2: TraCodeModule;
        ppEtiquetasRoupas3ColunasStillo: TppReport;
        ppColumnHeaderBand17: TppColumnHeaderBand;
        ppDetailBand23: TppDetailBand;
        ppDBText83: TppDBText;
        ppDBText84: TppDBText;
        ppDBText85: TppDBText;
        ppDBText86: TppDBText;
        ppDBText88: TppDBText;
        ppColumnFooterBand17: TppColumnFooterBand;
        raCodeModule3: TraCodeModule;
        ppEtiquetasRoupas3ColunasFashion: TppReport;
        ppColumnHeaderBand18: TppColumnHeaderBand;
        ppDetailBand24: TppDetailBand;
        ppDBText87: TppDBText;
        ppDBText89: TppDBText;
        ppDBText90: TppDBText;
        ppDBText91: TppDBText;
        ppColumnFooterBand18: TppColumnFooterBand;
        raCodeModule4: TraCodeModule;
        ppDBText92: TppDBText;
        ppDBText93: TppDBText;
        Q_EtiquetasPRECO2: TIBBCDField;
        ppDBText94: TppDBText;
        ppGondolaHorizontal100: TppReport;
        ppDetailBand25: TppDetailBand;
        ppDBText95: TppDBText;
        ppDBText96: TppDBText;
        ppDBBarCode6: TppDBBarCode;
        ppDBText97: TppDBText;
        ppEtiquetaPimaco6283: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand26: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        ppColumnHeaderBand19: TppColumnHeaderBand;
        ppColumnFooterBand19: TppColumnFooterBand;
        Q_SAIDAS: TIBQuery;
        Q_SAIDASDS: TDataSource;
        C_SAIDAS: TClientDataSet;
        P_SAIDAS: TDataSetProvider;
        C_SAIDASSAIDAITEM: TIntegerField;
        C_SAIDASSAIDA: TIntegerField;
        C_SAIDASCODIGO: TStringField;
        C_SAIDASDESCRICAO: TStringField;
        C_SAIDASUNIDADE: TStringField;
        C_SAIDASQUANTIDADE: TBCDField;
        C_SAIDASPRECO: TFloatField;
        C_SAIDASSUBTOTALITEM: TBCDField;
        C_SAIDASNOMECLIENTE: TStringField;
        C_SAIDASDATA: TDateField;
        C_SAIDASNUMERO: TStringField;
        C_SAIDASFAVORECIDO: TIntegerField;
        C_SAIDASENDERECO: TStringField;
        C_SAIDASCIDADE: TStringField;
        C_SAIDASBAIRRO: TStringField;
        C_SAIDASUF: TStringField;
        edNumeroSaida: TTS_Edit;
        ppShape6: TppShape;
        ppDBText98: TppDBText;
        ppDBText100: TppDBText;
        ppLabel8: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppPimaco_A4225: TppReport;
        ppDetailBand27: TppDetailBand;
        ppDBText99: TppDBText;
        ppDBText101: TppDBText;
        ppDBBarCode7: TppDBBarCode;
        ppColumnHeaderBand20: TppColumnHeaderBand;
        ppColumnFooterBand20: TppColumnFooterBand;
        ppModeloT25x15: TppReport;
        ppDetailBand28: TppDetailBand;
        ppDBText102: TppDBText;
        ppDBText103: TppDBText;
        ppDBBarCode8: TppDBBarCode;
        rgCodigoImpressao: TTS_RadioGroup;
        Q_EtiquetasCODIGOVENDA: TIBStringField;
    ppEtiquetaRoupaLogomarca: TppReport;
    ppColumnHeaderBand21: TppColumnHeaderBand;
    ppDetailBand29: TppDetailBand;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppColumnFooterBand21: TppColumnFooterBand;
    raCodeModule5: TraCodeModule;
    ppEtiquetas6089: TppReport;
    ppColumnHeaderBand22: TppColumnHeaderBand;
    ppDetailBand30: TppDetailBand;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppLabel20: TppLabel;
    ppColumnFooterBand22: TppColumnFooterBand;
    ppLabel21: TppLabel;
    ppImage2: TppImage;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppEtiquetaJoiaJatoTinta: TppReport;
    ppColumnHeaderBand23: TppColumnHeaderBand;
    ppDetailBand31: TppDetailBand;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLabel24: TppLabel;
    ppColumnFooterBand23: TppColumnFooterBand;
    LInhaInicial: TTS_Edit;
    Label1: TLabel;
    ppEtiquetasJoias2: TppReport;
    ppDetailBand32: TppDetailBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBBarCode9: TppDBBarCode;
    C_IndexadoresCIFRAO: TStringField;
    ppCifrao: TppLabel;
    ppEtiquetaJoiaLogo: TppReport;
    ppDetailBand33: TppDetailBand;
    ppDBText125: TppDBText;
    ppLabel25: TppLabel;
    ppImage3: TppImage;
    ppDBBarCode10: TppDBBarCode;
    ppEtiquetaA1: TppReport;
    ppColumnHeaderBand24: TppColumnHeaderBand;
    ppDetailBand34: TppDetailBand;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBBarCode11: TppDBBarCode;
    ppDBText124: TppDBText;
    ppColumnFooterBand24: TppColumnFooterBand;
    ppImage4: TppImage;
    ppDBText126: TppDBText;
    ppDuasColunas: TppReport;
    ppColumnHeaderBand25: TppColumnHeaderBand;
    ppDetailBand35: TppDetailBand;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBBarCode12: TppDBBarCode;
    ppDBText129: TppDBText;
    ppImage5: TppImage;
    ppDBText130: TppDBText;
    ppColumnFooterBand25: TppColumnFooterBand;
    ppEtiqueta2colunasElgin: TppReport;
    ppColumnHeaderBand26: TppColumnHeaderBand;
    ppDetailBand36: TppDetailBand;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText135: TppDBText;
    ppColumnFooterBand26: TppColumnFooterBand;
    ppDBText134: TppDBText;
    ppReport1: TppReport;
    ppDetailBand37: TppDetailBand;
    ppDBText133: TppDBText;
    ppLabel26: TppLabel;
    ppDBBarCode13: TppDBBarCode;
    ppColumnHeaderBand27: TppColumnHeaderBand;
    ppColumnFooterBand27: TppColumnFooterBand;
    ppReport2: TppReport;
    ppDetailBand38: TppDetailBand;
    ppDBText137: TppDBText;
    ppDBBarCode14: TppDBBarCode;
    ppColumnHeaderBand28: TppColumnHeaderBand;
    ppColumnFooterBand28: TppColumnFooterBand;
    ppReport3: TppReport;
    ppColumnHeaderBand29: TppColumnHeaderBand;
    ppDetailBand39: TppDetailBand;
    ppDBText139: TppDBText;
    ppDBText141: TppDBText;
    ppLabel27: TppLabel;
    ppColumnFooterBand29: TppColumnFooterBand;
    raCodeModule6: TraCodeModule;
    ppReport4: TppReport;
    ppColumnHeaderBand30: TppColumnHeaderBand;
    ppDetailBand40: TppDetailBand;
    ppDBText136: TppDBText;
    ppDBText138: TppDBText;
    ppLabel28: TppLabel;
    ppColumnFooterBand30: TppColumnFooterBand;
    raCodeModule7: TraCodeModule;
    ppReport5: TppReport;
    ppDetailBand41: TppDetailBand;
    ppDBText142: TppDBText;
    ppDBText140: TppDBText;
    ppReport6: TppReport;
    ppColumnHeaderBand32: TppColumnHeaderBand;
    ppDetailBand42: TppDetailBand;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppColumnFooterBand32: TppColumnFooterBand;
    ppColumnHeaderBand31: TppColumnHeaderBand;
    ppColumnFooterBand31: TppColumnFooterBand;
    ppReport7: TppReport;
    ppColumnHeaderBand33: TppColumnHeaderBand;
    ppDetailBand43: TppDetailBand;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppColumnFooterBand33: TppColumnFooterBand;
    ppDBText150: TppDBText;
    ppReport8: TppReport;
    ppColumnHeaderBand34: TppColumnHeaderBand;
    ppDetailBand44: TppDetailBand;
    ppDBText143: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppColumnFooterBand34: TppColumnFooterBand;
    ppDBText153: TppDBText;
    ppLabel29: TppLabel;
    ppReport9: TppReport;
    ppDetailBand45: TppDetailBand;
    ppDBText154: TppDBText;
    ppLabel30: TppLabel;
    ppImage6: TppImage;
    ppDBBarCode15: TppDBBarCode;
    ppReport10: TppReport;
    ppDetailBand46: TppDetailBand;
    ppDBText155: TppDBText;
    ppLabel31: TppLabel;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppGondolaPequena: TppReport;
    ppDetailBand47: TppDetailBand;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBBarCode16: TppDBBarCode;
    ppDBText160: TppDBText;
    ppLabel32: TppLabel;
    TS_Edit1: TTS_Edit;
    Label2: TLabel;
    ppDBText161: TppDBText;
    ppDBText164: TppDBText;
    ppDBEtiquetasppField25: TppField;
    Q_EtiquetasPRECODESCONTO: TFloatField;
    ppLabel33: TppLabel;
    ppDBText112: TppDBText;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure PopupFiltroItensSelecionou(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure Q_EtiquetasCalcFields(DataSet: TDataSet);
        procedure cbUmaEtiquetaChange(Sender: TObject);
        procedure cbTipoEtiquetaChange(Sender: TObject);
        procedure ppMonetarioPrint(Sender: TObject);
        procedure ppLabel4Print(Sender: TObject);
        procedure ppDBText12GetText(Sender: TObject; var Text: string);
        procedure ppLabel8GetText(Sender: TObject; var Text: string);
        procedure ppDBText21GetText(Sender: TObject; var Text: string);
        procedure ppDBText6GetText(Sender: TObject; var Text: string);
        procedure ppDBText7GetText(Sender: TObject; var Text: string);
        procedure ppLabel9GetText(Sender: TObject; var Text: string);
        procedure ppLabel5GetText(Sender: TObject; var Text: string);
        procedure ppLabel6GetText(Sender: TObject; var Text: string);
        procedure ppDBText27GetText(Sender: TObject; var Text: string);
        procedure ppDBText30GetText(Sender: TObject; var Text: string);
        procedure ppLabel10GetText(Sender: TObject; var Text: string);
        procedure btFecharCadastroClick(Sender: TObject);
        procedure ppDBText40GetText(Sender: TObject; var Text: string);
        procedure ppDBText43GetText(Sender: TObject; var Text: string);
        procedure ppDBText37GetText(Sender: TObject; var Text: string);
        procedure cbComPrecoChange(Sender: TObject);
        procedure ppDBText10GetText(Sender: TObject; var Text: string);
        procedure ppDBText15GetText(Sender: TObject; var Text: string);
        procedure spImprimirDiretoClick(Sender: TObject);
        procedure ppDBText17GetText(Sender: TObject; var Text: string);
        procedure ppDBText70GetText(Sender: TObject; var Text: string);
        procedure edNumeroSaidaKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure ppLabel8Print(Sender: TObject);
        procedure ppLabel18Print(Sender: TObject);
        procedure ppLabel19Print(Sender: TObject);
        procedure ppDBBarCode7Print(Sender: TObject);
        function RetornaCampoImpressao(index: integer): string;
    private
        { Private declarations }
        nIndex: double;
        sArq: TStringList;
        sSequenciaCarga, sTotalItens: integer;
        sCliente, SNumeroNota: string;
    public
        { Public declarations }
    end;

var
    dlgEtiquetaItem: TdlgEtiquetaItem;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TdlgEtiquetaItem.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    sArq := TStringList.Create;
    cbTipoEtiqueta.ItemIndex := 0;
    edtTitulo.Text := '';
    if FileExists(DMPRojeto.ProgPath + 'TipoEtiqueta.txt') then
        begin
            sArq.LoadFromFile(DMPRojeto.ProgPath + 'TipoEtiqueta.txt');
            cbTipoEtiqueta.ItemIndex := StrToInt(copy(sArq.Text, 1, Pos('|', sArq.Text) - 1));
            edtTitulo.Text := Trim(copy(sArq.Text, Pos('|', sArq.Text) + 1, 100));
        end;
    cbLogo.Checked := False;
    cbLogo.Visible := False;
    cbBorda.Checked := False;
    cbBorda.Visible := False;
    lbTitulo.Visible := False;
    EdtTitulo.Visible := False;

    if cbTipoEtiqueta.ItemIndex in [1, 4, 12] then
        begin
            cbBorda.Checked := False;
            cbBorda.Visible := True;
            if cbTipoEtiqueta.ItemIndex in [1, 4] then
                begin
                    cbLogo.Visible := True;
                    cbLogo.Checked := False;
                end;
            if cbTipoEtiqueta.ItemIndex in [12] then
                begin
                    cbBorda.Checked := True;
                    lbTitulo.Visible := True;
                end;
        end;
    C_Indexadores.Close;
    C_Indexadores.Open;
    btLimparClick(Sender);
end;

procedure TdlgEtiquetaItem.PopupFiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    with Q_Itens do
        begin
            Close;
            Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, ' +
                ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F ' +
                ' ON F.fabricante = I.fabricante ' +
                'where ' + PopupFiltroItens.getSQL + ' order by i.descricao';
            Open;
            btGravar.Enabled := (RecordCount > 0);
            spImprimirDireto.Enabled := btGravar.Enabled;
        end;
end;

procedure TdlgEtiquetaItem.btGravarClick(Sender: TObject);
var i, nRec: Integer;
lab1, lab2, lab3 : Double ;
c1, c2, c3 : Currency ;
begin
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;
    sSequenciaCarga := 0;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        if cmbIndex.LookupKeyValue <> null then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select valor from cotacoes ' +
                            'where data = (select max(data) from cotacoes where indexador = :i) ' +
                            'and indexador = :i ';
                        ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                            nIndex := Fields[0].AsFloat;
                        Close;
                    end;
            end;

        Barra.Visible := True;
        Barra.Max := Q_Itens.RecordCount;
        Barra.Position := 0;
        Q_Itens.First;
        Q_Itens.DisableControls;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        C_GerarEtiquetas.Close;
        Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
        while not Q_Itens.Eof do
            begin
                Q_GerarEtiquetas.Prepare;
                for i := 1 to Q_ItensESTOQUE.AsInteger do
                    begin
                        Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
                        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
                        Q_GerarEtiquetas.Prepare;
                        C_GerarEtiquetas.FetchParams;
                        C_GerarEtiquetas.Execute;
                    end;
                Q_Itens.Next;
                Barra.Position := Barra.Position + 1;
            end;
        Barra.Visible := False;
        Q_Etiquetas.Close;
        Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, ' +
            //'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras else i.codigo end  as codigobarras ,  ' +
        ' i.codigobarras, i.codigovenda,' +
            ' i.localizacao, i.estoque, ' +
            'i.percentual, i.fatorundvenda, p.preco as precotemp, '+
//            'i.percentual, i.fatorundvenda, cast(p.preco - ((p.preco *  cast((:DESCONTO) as numeric(15,3)) ))/100 as numeric(15,3)) as precotemp, '+
            'cast(p.preco - ((p.preco *  cast((:DESCONTO) as numeric(15,3)) ))/100 as numeric(15,3))as PRECOPROMOCAO, ' +
//            'cast(p.preco - cast((:DESCONTO) as numeric(15,3)) AS numeric(15,3))as PRECOPROMOCAO, ' +
            'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
            'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
            'i.indexador,iu.qtdembalagem, ' +
            'cast((P.PRECO) as float) AS PRECODESCONTO, '+
            '(select Max(px.preco) from produtospreco px where px.item = i.item and px.Unidade = iu.Unidade and px.tabelapreco > 0 ) as Preco2 ' +
            'from etiquetasitens e ' +
            'inner join itens i on i.item = e.item ' +
            'inner join itensunidades iu on iu.item = i.item ' +
            'left join fabricantes f on f.fabricante = i.fabricante ' +
            'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
            'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
            'WHERE E.MAQUINA = :MAQUINA ' +
            'Order by ' + Inttostr(rgOrdem.ItemIndex + 1);
        Q_Etiquetas.ParamByName('MAQUINA').AsString := DMProjeto.Maquina;
        Q_Etiquetas.ParamByName('DESCONTO').AsCurrency := StrToCurr( TS_Edit1.Text);
        try
        Q_Etiquetas.Open;
    except on E: Exception do
            raise Exception.Create('Erro ao verificar o MD5 da tabela de Itens!!!' + #13 + e.Message);
    end;
        if CbComPreco.Checked then
            begin
                ppDBText47.Visible := True;
                ppDBText50.Visible := True;
                ppDBText2.Visible := True;
                ppDBText8.Visible := True;
                ppDBText11.Visible := True;
                ppDBText17.Visible := True;
                ppDBText32.Visible := True;
                ppDBText35.Visible := True;
                ppDBText19.Visible := True;
                ppDBText22.Visible := True;
                ppDBText24.Visible := True;
                ppDBText26.Visible := True;
                ppDBText29.Visible := True;
                ppDBText38.Visible := True;
                ppDBText46.Visible := True;
                ppDBText69.Visible := True;
                ppDBText72.Visible := True;
            end
        else
            begin
                ppDBText47.Visible := False;
                ppDBText50.Visible := False;
                ppDBText2.Visible := False;
                ppDBText8.Visible := False;
                ppDBText11.Visible := False;
                ppDBText17.Visible := False;
                ppDBText32.Visible := False;
                ppDBText35.Visible := False;
                ppDBText19.Visible := False;
                ppDBText22.Visible := False;
                ppDBText24.Visible := False;
                ppDBText26.Visible := False;
                ppDBText29.Visible := False;
                ppDBText38.Visible := False;
                ppDBText46.Visible := False;
                ppDBText69.Visible := False;
                ppDBText72.Visible := False;
            end;

        case cbTipoEtiqueta.ItemIndex of
            0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
            1:
                begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
                    ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath + DMProjeto.sLogotipoEmpresa);
                    ppImage1.Visible := False;
                    ppBorda.Visible := False;
                    if cbLogo.Checked then
                        ppImage1.Visible := True;
                    if cbBorda.Checked then
                        ppBorda.Visible := True;
                    ppEtiquetas6282.Print;
                end;
            2:
                begin // 3 - PIMACO, 6089 4 COLUNAS
                      ppEtiquetas6089.Print;
                end;
            3:
                begin // 4 - Etiquetas Roupas;
                    ppEtiquetasRoupas.Print;
                end;
            4:
                begin // 5 - RIBON (4 inch model);
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    pp5RIBON4inchmodel.Print;
                end;
            5:
                begin   //6 - 08 Cm X 04 Cm 2 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X04_2Col.Print;
                end;
            6:
                begin   // 7 - 08 Cm X 2.5 Cm 2 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X25_2Col.Print;
                end;
            7:
                begin  //8 - 06 Cm X 03 Cm 3 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas06X03_3Col.Print;
                end;
            8:
                begin // 9 - 06 Cm X 03 Cm 1 Coluna (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiqueta06X03_1Col.Print;
                end;
            9:
                begin // A - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col.Print;
                end;
            10:
                begin  // B - 05 Col. Matricial
                    ppEtiqueta5ColMatricial.Print;
                end;
            11:
                begin  //C - 02 Col. Matricial
                    ppEtiqueta2ColMatricial.Print;
                end;
            12:
                begin // D - 06 X 04 (A4-Gondolas)
                    ppShape5.Visible := False;
                    if cbBorda.Checked then
                        ppShape5.Visible := True;
                    ppEtiquetas6X4_A4.Print;
                end;
            13:
                begin // E - ETIQUETAS JOIAS
                    ppEtiquetasJoias.Print;
                end;
            14:
                begin  // F - 5 Colunas Preço Grande (Matricial)
                    pp5ColPrecoGrandeMatricial.Print;
                end;
            15:
                begin // G - Gondolas (Matricial)
                    ppGondolaMatricial.Print;
                end;
            16:
                begin // H - RIBON (4 inch model) Bolsa
                    ppBolsa2Col.Print;
                end;
            17:
                begin  // I  - RIBON (Gondolas 5 x 10 CM).
                    ppGondolasRIBON.Print;
                end;
            18:
                begin  // J - RIBON (Gondolas Média 5 x 7 CM).
                    ppGondola_Media.Print;
                end;
            19:
                begin  // K - 03.3 Cm X 02.1 3 Colunas (Ribon - Argox)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Argox.Print;
                end;
            20:
                begin // L - ETIQUETAS ROUPAS 2 COLUNAS
                    ppEtiquetasRoupa2Col.Print;
                end;
            21:
                begin // M - Gondolas Horizontal (11 X 2.8 CM)
                    ppGondolaHorizontal.Print;
                end;
            22:
                begin // N - ETIQUETAS ROUPAS 3 COL.
                    ppEtiquetasRoupas3Colunas.Print;
                end;
            23:
                begin // O - ETIQUETAS ROUPAS 3 COL. STILLO
                    ppEtiquetasRoupas3ColunasStillo.Print;
                end;
            24:
                begin // P - Etiquetas Roupas 3 Col Fashion
                    ppEtiquetasRoupas3ColunasFashion.Print;
                end;
            25:
                begin // Q - Gondola Horizontal ( 10 X 2.8 CM )
                    ppGondolaHorizontal100.Print;
                end;
            26:
                begin // R - ETIQUETAS PIMACO 6283 50,8 X 101,6
                    ppEtiquetaPimaco6283.Print;
                end;
            27:
                begin // S - ETIQUETAS PIMACO A4255 3 COLUNAS
                    //i := rgCodigoImpressao.ItemIndex;
                    ppDBBarCode7.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    ppPimaco_A4225.Print;
                end;
            28:
                begin // T - Etiqueta 2,5 X 1,5  Uma Colula Ribbon
                    ppModeloT25x15.Print;
                end;
            29:
                begin // U - Etiqueta Roupa com Logo
                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                   ppImage2.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppEtiquetaRoupaLogomarca.Print;
                end;
            30:
                Begin // V - Etiqueta Pino Joia --> deve ser colocada com o Drive Argox e não DR label
                ppEtiquetaJoiaPino.Print;
                end ;
            31:
                Begin // Z - Etiqueta Joia Imp Jato de Tinta -->
                ppEtiquetaJoiaJatoTinta.MainReport.PrinterSetup.MarginTop := 1.3 + (StrToInt(LInhaInicial.Text)*12.7);
                ppEtiquetaJoiaJatoTinta.Print;
                end ;
            32:
                begin// E1 - ETIQUETA JOIA - 30X30X12
                  if (cmbIndex.Text <> '' ) then begin
                    ppCifrao.Caption := C_IndexadoresCIFRAO.Value ;
                    ppDBText121.DisplayFormat := '#,0.00;-#,0.00'
                  end
                  else
                    ppDBText121.DisplayFormat := '#R$,0.00;-R$#,0.00' ;
                    ppEtiquetasJoias2.Print;
                end;
            33:
                begin // E2 - ETIQUETA JOIA - 30X30X12 ( logo )
                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                   ppImage3.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppEtiquetaJoiaLogo.Print;
                end;

            34:
               begin // A.1 - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage4.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    ppEtiquetaA1.Print;
                end;
            35:
               begin // A.1 - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage5.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    ppDuasColunas.Print;
                end;

            36:
               begin // L2 - Etiqueta Duas Colunas Elgin L42
                     ppReport5.Print;
                end;

            37:
                begin // E2 - ETIQUETA JOIA - 30X30X12 ( logo )
//                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
//                   ppImage7.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppReport10.Print;
                end;

            38:
                begin // G1 - Etiqueta Gondola ( 7cm x 3cm )
//                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
//                   ppImage7.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
//                   c1 := StrTofloat( TS_Edit1.Text);
//                   c2 := Q_EtiquetasPRECOTEMP.Value - (Q_EtiquetasPRECOTEMP.Value * (c1/100));
 //                  ppLabel33.Text := CurrToStr(c2);
                   ppGondolaPequena.Print;

                end;

        end;
        Q_Itens.EnableControls;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

function TdlgEtiquetaItem.RetornaCampoImpressao(index: integer): string;
var
    campoImpresso: string;
begin
    campoImpresso := 'CODIGO';

    if (index = 1) and (Q_EtiquetasCODIGOBARRAS.Value <> null) and (Q_EtiquetasCODIGOBARRAS.Value <> '') then
        campoImpresso := 'CODIGOBARRAS';

    if (index = 2) and (Q_EtiquetasCODIGOVENDA.Value <> null) and (Q_EtiquetasCODIGOVENDA.Value <> '') then
        campoImpresso := 'CODIGOVENDA';

    Result := campoImpresso;
end;

procedure TdlgEtiquetaItem.btLimparClick(Sender: TObject);
begin
    inherited;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        Q_Itens.Close;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        //  Q_GerarEtiquetas.ExecSql;
        PopupFiltroItens.TS_ItensSelecionados := '';
        PopupFiltroItens.TS_GruposSelecionados := '';
        PopupFiltroItens.TS_FabricantesSelecionados := '';
        PopupFiltroItens.TS_PossuiEstoque := False;
        PopupFiltroItens.TS_NaoPossuiEstoque := False;
        PopupFiltroItens.TS_EstoqueMinimo := False;
        PopupFiltroItens.TS_EstoqueMaximo := False;
        PopupFiltroItens.TS_EstoquePontoPedido := False;
        PopupFiltroItens.TS_EstoqueNegativo := False;
        PopupFiltroItens.TS_ItensDesativado := False;
        btGravar.Enabled := False;
        spImprimirDireto.Enabled := btGravar.Enabled;
        cbUmaEtiqueta.checked := False;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

procedure TdlgEtiquetaItem.Q_EtiquetasCalcFields(DataSet: TDataSet);
var nPreco, nFatorVenda: currency;
begin
    inherited;
    Q_EtiquetasEmpresa.AsString := DMProjeto.sNomeEmpresa;
    // Calculando o preço....
    nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);

    if DataSet.FieldByName('PrecoManUnd').AsCurrency > 0 then
        begin
            nPreco := DataSet.FieldByName('PrecoManUnd').AsCurrency;
        end
//    else if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then
//        begin
//            nPreco := DataSet.FieldByName('PrecoPromocao').asCurrency;
//        end
    else
        begin
            if DataSet.FieldByName('Percentual').asCurrency = 0 then
                begin
                    nPreco := DataSet.FieldByName('PrecoTemp').asCurrency;
                    if DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString then
                        nPreco := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
                end
            else
                nPreco := DataSet.FieldByName('Percentual').asCurrency;
        end;
    DataSet.FieldByName('PRECO').AsCurrency := RoundTo(nPreco, -2);
    // Modificando a cotação para o indexador selecionado...
    if DataSet.FieldByName('Indexador').AsVariant <> null then
        begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
            Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
            Q_SQL.Open;
            if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
                begin
                    DataSet.FieldByName('PRECO').AsCurrency := RoundTo((DataSet.FieldByName('PRECO').AsCurrency / Q_SQL.Fields[0].AsFloat) * nIndex, -2);
                end;
            Q_SQL.Close;
        end;
    //
end;

procedure TdlgEtiquetaItem.cbUmaEtiquetaChange(Sender: TObject);
begin
    inherited;
    if cbUmaEtiqueta.Checked then
        begin
            Q_Itens.First;
            Q_Itens.DisableControls;
            while not Q_Itens.Eof do
                begin
                    Q_Itens.Edit;
                    Q_ItensESTOQUE.Value := 1;
                    Q_Itens.Next;
                end;
            Q_Itens.EnableControls;
        end
    else
        begin
            with Q_Itens do
                begin
                    Close;
                    Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, ' +
                        ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F ' +
                        ' ON F.fabricante = I.fabricante ' +
                        'where ' + PopupFiltroItens.getSQL + ' order by i.descricao';
                    Open;
                end;
        end;
    Q_Itens.First;
end;

procedure TdlgEtiquetaItem.cbTipoEtiquetaChange(Sender: TObject);
begin
    inherited;
    cbLogo.Checked := False;
    cbLogo.Visible := False;
    cbBorda.Checked := False;
    cbBorda.Visible := False;
    if cbTipoEtiqueta.ItemIndex in [1, 4, 12] then
        begin
            cbBorda.Checked := False;
            cbBorda.Visible := True;
            if cbTipoEtiqueta.ItemIndex in [1, 4] then
                begin
                    cbLogo.Visible := True;
                    cbLogo.Checked := False;
                end;
        end;
end;

procedure TdlgEtiquetaItem.ppMonetarioPrint(Sender: TObject);
begin
    inherited;
    ppMonetario.Caption := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel4Print(Sender: TObject);
begin
    inherited;
    ppLabel4.Caption := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText12GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // 4 - Etiquetas Roupas;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppLabel8GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText21GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    //  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText6GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // 2 - PIMACO, 6282 CARTA (GONDOLAS);
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText7GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // Etiqueta para 3 - PIMACO, 6089 4 COLUNAS
    Text := '*' + Text + '*';

end;

procedure TdlgEtiquetaItem.ppLabel9GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel5GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel6GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText27GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText30GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppLabel10GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.btFecharCadastroClick(Sender: TObject);
begin
    inherited;
    sArq.Clear;
    sArq.Add(IntToStr(cbTipoEtiqueta.ItemIndex) + '|' + edtTitulo.Text);
    sArq.SaveTofile(DMPRojeto.ProgPath + 'TipoEtiqueta.txt');
    sArq.Free;
end;

procedure TdlgEtiquetaItem.ppDBText40GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := edtTitulo.Text;
end;

procedure TdlgEtiquetaItem.ppDBText43GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText37GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.cbComPrecoChange(Sender: TObject);
begin
    inherited;
    if CbComPreco.Checked then
        begin
            ppDBText47.Visible := True;
            ppDBText50.Visible := True;
            ppDBText2.Visible := True;
            ppDBText8.Visible := True;
            ppDBText11.Visible := True;
            ppDBText17.Visible := True;
            ppDBText32.Visible := True;
            ppDBText35.Visible := True;
            ppDBText19.Visible := True;
            ppDBText22.Visible := True;
            ppDBText24.Visible := True;
            ppDBText26.Visible := True;
            ppDBText29.Visible := True;
            ppDBText38.Visible := True;
            ppDBText46.Visible := True;
            ppMonetario.Visible := True;
            ppLabel10.Visible := True;
            ppLabel11.Visible := True;
            ppLabel9.Visible := True;
            ppLabel5.Visible := True;
            ppLabel6.Visible := True;
            ppLabel7.Visible := True;

        end
    else
        begin
            ppDBText47.Visible := False;
            ppDBText50.Visible := False;
            ppDBText2.Visible := False;
            ppDBText8.Visible := False;
            ppDBText11.Visible := False;
            ppDBText17.Visible := False;
            ppDBText32.Visible := False;
            ppDBText35.Visible := False;
            ppDBText19.Visible := False;
            ppDBText22.Visible := False;
            ppDBText24.Visible := False;
            ppDBText26.Visible := False;
            ppDBText29.Visible := False;
            ppDBText38.Visible := False;
            ppDBText46.Visible := False;
            ppMonetario.Visible := False;
            ppLabel10.Visible := False;
            ppLabel11.Visible := False;
            ppLabel9.Visible := False;
            ppLabel5.Visible := False;
            ppLabel6.Visible := False;
            ppLabel7.Visible := False;
        end;

end;

procedure TdlgEtiquetaItem.ppDBText10GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText15GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.spImprimirDiretoClick(Sender: TObject);
var i: integer;
begin
    inherited;
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;
    sSequenciaCarga := 0;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        if cmbIndex.LookupKeyValue <> null then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select valor from cotacoes ' +
                            'where data = (select max(data) from cotacoes where indexador = :i) ' +
                            'and indexador = :i ';
                        ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                            nIndex := Fields[0].AsFloat;
                        Close;
                    end;
            end;

        Barra.Visible := True;
        Barra.Max := Q_Itens.RecordCount;
        Barra.Position := 0;
        Q_Itens.First;
        Q_Itens.DisableControls;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        C_GerarEtiquetas.Close;
        Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
        while not Q_Itens.Eof do
            begin
                Q_GerarEtiquetas.Prepare;
                for i := 1 to Q_ItensESTOQUE.AsInteger do
                    begin
                        Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
                        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
                        Q_GerarEtiquetas.Prepare;
                        C_GerarEtiquetas.FetchParams;
                        C_GerarEtiquetas.Execute;
                    end;
                Q_Itens.Next;
                Barra.Position := Barra.Position + 1;
            end;
        Barra.Visible := False;
        Q_Etiquetas.Close;
        Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, ' +
            'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras ' +
            'else i.codigo end  as codigobarras ,  ' +
            ' i.localizacao, i.estoque, ' +
            'i.percentual, i.fatorundvenda, p.preco as precotemp, p.precopromocao, ' +
            'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
            'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
            'i.indexador,iu.qtdembalagem, ' +
            '(select Max(px.preco) from produtospreco px where px.item = i.item and px.Unidade = iu.Unidade and px.tabelapreco > 0 ) as Preco2 ' +
            'from etiquetasitens e ' +
            'inner join itens i on i.item = e.item ' +
            'inner join itensunidades iu on iu.item = i.item ' +
            'left join fabricantes f on f.fabricante = i.fabricante ' +
            'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
            'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
            'WHERE E.MAQUINA = :MAQUINA ' +
            'Order by ' + Inttostr(rgOrdem.ItemIndex + 1);
        Q_Etiquetas.pARAMbYnAME('MAQUINA').AsString := DMProjeto.Maquina;
        Q_Etiquetas.Open;
        if CbComPreco.Checked then
            begin
                ppDBText47.Visible := True;
                ppDBText50.Visible := True;
                ppDBText2.Visible := True;
                ppDBText8.Visible := True;
                ppDBText11.Visible := True;
                ppDBText17.Visible := True;
                ppDBText32.Visible := True;
                ppDBText35.Visible := True;
                ppDBText19.Visible := True;
                ppDBText22.Visible := True;
                ppDBText24.Visible := True;
                ppDBText26.Visible := True;
                ppDBText29.Visible := True;
                ppDBText38.Visible := True;
                ppDBText46.Visible := True;
                ppDBText69.Visible := True;
                ppDBText72.Visible := True;
            end
        else
            begin
                ppDBText47.Visible := False;
                ppDBText50.Visible := False;
                ppDBText2.Visible := False;
                ppDBText8.Visible := False;
                ppDBText11.Visible := False;
                ppDBText17.Visible := False;
                ppDBText32.Visible := False;
                ppDBText35.Visible := False;
                ppDBText19.Visible := False;
                ppDBText22.Visible := False;
                ppDBText24.Visible := False;
                ppDBText26.Visible := False;
                ppDBText29.Visible := False;
                ppDBText38.Visible := False;
                ppDBText46.Visible := False;
                ppDBText69.Visible := False;
                ppDBText72.Visible := False;
            end;

        case cbTipoEtiqueta.ItemIndex of
            0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
            1:
                begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
                    ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath + DMProjeto.sLogotipoEmpresa);
                    ppImage1.Visible := False;
                    ppBorda.Visible := False;
                    if cbLogo.Checked then
                        ppImage1.Visible := True;
                    if cbBorda.Checked then
                        ppBorda.Visible := True;
                    ppEtiquetas6282.DeviceType := 'Printer';
                    ppEtiquetas6282.Print;
                end;
            2:
                begin // 3 - PIMACO, 6089 4 COLUNAS
                    ppEtiquetas6089.DeviceType := 'Printer';
                    ppEtiquetas6089.Print;
                end;
            3:
                begin // 4 - Etiquetas Roupas;
                    ppEtiquetasRoupas.DeviceType := 'Printer';
                    ppEtiquetasRoupas.Print;
                end;
            4:
                begin // 5 - RIBON (4 inch model);
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    pp5RIBON4inchmodel.DeviceType := 'Printer';
                    pp5RIBON4inchmodel.Print;
                end;
            5:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X04_2Col.DeviceType := 'Printer';
                    ppEtiquetas08X04_2Col.Print;
                end;
            6:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X25_2Col.DeviceType := 'Printer';
                    ppEtiquetas08X25_2Col.Print;
                end;
            7:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas06X03_3Col.DeviceType := 'Printer';
                    ppEtiquetas06X03_3Col.Print;
                end;
            8:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiqueta06X03_1Col.DeviceType := 'Printer';
                    ppEtiqueta06X03_1Col.Print;
                end;
            9:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col.DeviceType := 'Printer';
                    ppEtiquetas33X21_3Col.Print;
                end;
            10:
                begin
                    ppEtiqueta5ColMatricial.DeviceType := 'Printer';
                    ppEtiqueta5ColMatricial.Print;
                end;
            11:
                begin
                    ppEtiqueta2COlMatricial.DeviceType := 'Printer';
                    ppEtiqueta2ColMatricial.Print;
                end;
            12:
                begin
                    ppShape5.Visible := False;
                    if cbBorda.Checked then
                        ppShape5.Visible := True;
                    ppEtiquetas6X4_A4.DeviceType := 'Printer';
                    ppEtiquetas6X4_A4.Print;
                end;
            13:
                begin
                    ppEtiquetasJoias.DeviceType := 'Printer';
                    ppEtiquetasJoias.Print;
                end;
            14:
                begin
                    pp5ColPrecoGrandeMatricial.DeviceType := 'Printer';
                    pp5ColPrecoGrandeMatricial.Print;
                end;
            15:
                begin
                    ppGondolaMatricial.DeviceType := 'Printer';
                    ppGondolaMatricial.Print;
                end;
            16:
                begin
                    ppBolsa2Col.DeviceType := 'Printer';
                    ppBolsa2Col.Print;
                end;
            17:
                begin
                    ppGondolasRIBON.DeviceType := 'Printer';
                    ppGondolasRIBON.Print;
                end;
            18:
                begin
                    ppGondola_Media.DeviceType := 'Printer';
                    ppGondola_Media.Print;
                end;
            19:
                begin
                    ppEtiquetas33X21_3Col_Argox.DeviceType := 'Printer';
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Argox.Print;
                end;
            20:
                begin // Etiquetas Roupas 2 Col
                    ppEtiquetasRoupa2Col.DeviceType := 'Printer';
                    ppEtiquetasRoupa2Col.Print;
                end;
            21:
                begin // Etiquetas Roupas 2 Col
                    ppGondolaHorizontal.Print;
                end;
            22:
                begin // Etiquetas Roupas 3 Col
                    ppEtiquetasRoupas3Colunas.DeviceType := 'Printer';
                    ppEtiquetasRoupas3Colunas.Print;
                end;
            23:
                begin // Etiquetas Roupas 3 Col Stillo
                    ppEtiquetasRoupas3ColunasStillo.DeviceType := 'Printer';
                    ppEtiquetasRoupas3ColunasStillo.Print;
                end;
            24:
                begin // Etiquetas Roupas 3 Col Fashion
                    ppEtiquetasRoupas3ColunasFashion.DeviceType := 'Printer';
                    ppEtiquetasRoupas3ColunasFashion.Print;
                end;
            25:
                begin // Etiquetas Roupas 2 Col
                    ppGondolaHorizontal100.DeviceType := 'Printer';
                    ppGondolaHorizontal100.Print;
                end;
            26:
                begin // Etiquetas Pimaco 6283 50,8 x 101,6
                    ppEtiquetaPimaco6283.DeviceType := 'Printer';
                    ppEtiquetaPimaco6283.Print;
                end;
            27:
                begin // Etiquetas Pimaco A4255 3 COLUNAS
                    ppPimaco_A4225.DeviceType := 'Printer';
                    ppPimaco_A4225.Print;
                end;
            28:
                begin // Modelo T
                    ppModeloT25x15.DeviceType := 'Printer';
                    ppModeloT25x15.Print;
                end;


        end;
        Q_Itens.EnableControls;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

procedure TdlgEtiquetaItem.ppDBText17GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := 'R$ ' + Text;
end;

procedure TdlgEtiquetaItem.ppDBText70GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.edNumeroSaidaKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    inherited;
    sTotalItens := 0;
    if key = 13 then
        begin
            with Q_Itens do
                begin
                    Close;
                    Sql.Text := ' select i.item,i.codigo,S.NUMERO as referencia,i.descricao, ' +
                        ' cast((si.quantidade*cast(SI.FATOR as numeric(15,3))/i.fatorundvenda) as Numeric(15,3)) as estoque, ' +
                        ' f.nome as fabricante from ' +
                        ' Saidas s   inner join SaidasItens si on si.saida = s.saida ' +
                        ' inner join Itens i on i.item = si.item ' +
                        ' left join Favorecidos f on f.favorecido = s.favorecido ' +
                        ' left join Favorecidos v on v.favorecido = s.vendedor ' +
                        ' left join favorecidos m on m.favorecido = s.medico ' +
                        ' left join Favorecidos fn on fn.favorecido = i.ultimofornecedor ' +
                        ' left join Fabricantes fb on fb.fabricante = i.fabricante ' +
                        ' left join Grupos gi on gi.grupo = i.grupo ' +
                        ' left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao ' +
                        ' left Join TIPOTRIBUTACAOFEDERAL tf on si.IDTRIBFEDERAL = tf.IDTRIBFEDERAL ' +
                        ' where s.NUMERO = ''' + edNumeroSaida.Text + '''';
                    Open;
                    sCliente := FieldByName('fabricante').Asstring;
                    SNumeroNota := FieldByName('referencia').Asstring;
                    while not Eof do
                        begin
                            sTotalItens := sTotalItens + FieldByName('estoque').AsInteger;
                            next;
                        end;
                    btGravar.Enabled := (RecordCount > 0);
                    spImprimirDireto.Enabled := btGravar.Enabled;
                end;
        end;
end;

procedure TdlgEtiquetaItem.ppLabel8Print(Sender: TObject);
begin
    inherited;
    sSequenciaCarga := sSequenciaCarga + 1;
    ppLabel8.Text := inttostr(sSequenciaCarga) + '/' + inttostr(sTotalItens);
end;

procedure TdlgEtiquetaItem.ppLabel18Print(Sender: TObject);
begin
    inherited;
    ppLabel18.Text := sCliente;
end;

procedure TdlgEtiquetaItem.ppLabel19Print(Sender: TObject);
begin
    inherited;
    ppLabel19.Text := SNumeroNota;
end;

procedure TdlgEtiquetaItem.ppDBBarCode7Print(Sender: TObject);
begin
    inherited;
    Text := '*' + Text + '*';
end;

end.

procedure TdlgEtiquetaItem.ppImage3Print(Sender: TObject);
begin
    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
        ppImage3.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg')
    else
        ppimage3.Clear;
end;
