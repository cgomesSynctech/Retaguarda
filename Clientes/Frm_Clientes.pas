unit Frm_Clientes;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, StdCtrls, DBCtrls, TS_DBCheckBox, TS_DBLookupComboBox,
    TS_GroupBox, Mask, TS_DBEdit, TS_Label, FormComponent, ImgList, DlgMsg,
    Menus, TS_ScrollBox, ComCtrls,
    Buttons, TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_PageControl,
    TS_DBText, TS_DBMemo, TS_DBRadioGroup, RxLookup,
    TS_LastDataObject, TS_Bevel, TS_MaxPanel, TS_DBEditDate,
    ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe, Db,
    IBCustomDataSet, IBQuery, ppBands, ppCache, CheckLst,
    TS_CheckListBox, TS_Image, dxCntner, dxExEdtr, dxEdLib,
    dxfLabel, ppCtrls, ppPrnabl, ppStrtch, ppRegion, ppDevice, RxDBComb,
    dxDBELib, dxEditor, dxDBEdtr, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
    dxDBTLCl, dxGrClms, TS_DBEditNumber, TS_DBComboBox, ExtDlgs,
    Grids, DBGrids, teCtrls, TS_EffectsPanel, TS_DBMaskEdit,
    TS_DBHyperLinkEdit, TS_DBButtonEdit, Dlg_PopupContas, TS_DBPopupEdit,
    dxTLClms, TS_PopupMenu, TS_Shape, TS_DBSpinEdit, TS_DBImageEdit, Variants,
    BTOdeum, Placemnt, DBText, TS_DBTextEffect, dxfProgressBar, ZReport,
    ZRCtrls, DateUtils, DelphiTwain, jpeg, clipbrd;

type
    TFrmClientes = class(TFrmPadrao)
        PC_Abas: TTS_PageControl;
        tsEndereco: TTS_TabSheet;
        tsCaracteristicas: TTS_TabSheet;
        tsReferencias: TTS_TabSheet;
        TS_SpeedButton4: TTS_SpeedButton;
        DF_Foto: TdxGraphicEdit;
        TS_Label1: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label19: TTS_Label;
        DF_DataCad: TTS_DBText;
        DF_Nome: TTS_DBEdit;
        tsCustomizados: TTS_TabSheet;
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
        TS_BitBtn1: TTS_SpeedButton;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Label8: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label5: TTS_Label;
        TS_Label13: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label11: TTS_Label;
        TS_Label9: TTS_Label;
        TS_Label14: TTS_Label;
        DF_Endereco: TTS_DBEdit;
        DF_Cidade: TTS_DBEdit;
        DF_Fone1: TTS_DBEdit;
        DF_Contato: TTS_DBEdit;
        DF_UF: TTS_DBLookupComboBox;
        DF_CEP: TTS_DBMaskEdit;
        DF_Fone2: TTS_DBEdit;
        DF_Celular: TTS_DBEdit;
        DF_Email: TTS_DBButtonEdit;
        DF_Site: TTS_DBButtonEdit;
        TS_Label16: TTS_Label;
        TS_Label21: TTS_Label;
        TS_Label29: TTS_Label;
        TS_Label26: TTS_Label;
        DF_TipoAtividade: TTS_DBLookupComboBox;
        DF_PlanoPagamento: TTS_DBLookupComboBox;
        DF_TipoEntrega: TTS_DBLookupComboBox;
        DF_Vendedor: TTS_DBLookupComboBox;
        pdFoto: TOpenPictureDialog;
        lbConsulta: TdxfLabel;
        btOutros: TTS_SpeedButton;
        GridCODIGO: TdxDBGridMaskColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridENDERECO: TdxDBGridMaskColumn;
        GridCIDADE: TdxDBGridMaskColumn;
        GridCEP: TdxDBGridMaskColumn;
        GridFONE1: TdxDBGridMaskColumn;
        GridFAX: TdxDBGridMaskColumn;
        GridCELULAR: TdxDBGridMaskColumn;
        GridCONTATO: TdxDBGridMaskColumn;
        GridEMAIL: TdxDBGridMaskColumn;
        GridDATANASC: TdxDBGridDateColumn;
        DF_Codigo: TTS_DBButtonEdit;
        btContratos: TTS_SpeedButton;
        ppmOutros: TTS_PopupMenu;
        TS_DBCheckBox1: TTS_DBCheckBox;
        ppmFoto: TTS_PopupMenu;
        CarregarFoto1: TMenuItem;
        N4: TMenuItem;
        LimparFoto1: TMenuItem;
        Lembretes1: TMenuItem;
        Ocorrncias1: TMenuItem;
        Memorizar1: TMenuItem;
        Alertas1: TMenuItem;
        N5: TMenuItem;
        Compromissos1: TMenuItem;
        FichadoCliente1: TMenuItem;
        tsRelacionamentos: TTS_TabSheet;
        DBRelacionamentos: TTS_QDBGrid;
        DBRelacionamentosFAVORECIDO: TdxDBGridMaskColumn;
        DBRelacionamentosSSN: TdxDBGridMaskColumn;
        DBRelacionamentosEIN: TdxDBGridMaskColumn;
        ppmRelac: TTS_PopupMenu;
        DF_Fax: TTS_DBEdit;
        TS_Label32: TTS_Label;
        TS_Panel1: TTS_Panel;
        btEndereco: TTS_SpeedButton;
        btCaracteristicas: TTS_SpeedButton;
        btPessoais: TTS_SpeedButton;
        btEmpregador: TTS_SpeedButton;
        btAvalista: TTS_SpeedButton;
        btFinanceiro: TTS_SpeedButton;
        btReferencias: TTS_SpeedButton;
        btRelac: TTS_SpeedButton;
        btCustom: TTS_SpeedButton;
        btLocaisEntrega: TTS_SpeedButton;
        tsLocaisEntrega: TTS_TabSheet;
        tsPessoais: TTS_TabSheet;
        tsEmpregador: TTS_TabSheet;
        tsFinanceiro: TTS_TabSheet;
        tsAvalista: TTS_TabSheet;
        TS_Label15: TTS_Label;
        DF_TabelaPreco: TTS_DBLookupComboBox;
        TS_Label20: TTS_Label;
        cmbQualidade: TTS_DBLookupComboBox;
        TS_Label33: TTS_Label;
        cmbZona: TTS_DBLookupComboBox;
        TS_Label18: TTS_Label;
        DF_Obs: TTS_DBMemo;
        gridLocaisEntrega: TTS_QDBGrid;
        gridLocaisEntregaDESCRICAO: TdxDBGridMaskColumn;
        gridLocaisEntregaENDERECOENTREGA: TdxDBGridMaskColumn;
        gridLocaisEntregaCEPENTREGA: TdxDBGridMaskColumn;
        gridLocaisEntregaCIDADEENTREGA: TdxDBGridMaskColumn;
        gridLocaisEntregaFONE: TdxDBGridMaskColumn;
        gridLocaisEntregalkUFENTREGA: TdxDBGridLookupColumn;
        gridLocaisEntregalkPais: TdxDBGridLookupColumn;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBEdit6: TTS_DBMaskEdit;
        TS_DBEdit13: TTS_DBEdit;
        TS_Label40: TTS_Label;
        TS_Label41: TTS_Label;
        TS_Label42: TTS_Label;
        TS_DBEdit14: TTS_DBEdit;
        TS_Label43: TTS_Label;
        TS_DBEdit15: TTS_DBEdit;
        TS_Label44: TTS_Label;
        TS_Label45: TTS_Label;
        TS_Label46: TTS_Label;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        TS_DBEdit17: TTS_DBEdit;
        TS_Label47: TTS_Label;
        TS_Label36: TTS_Label;
        TS_DBEdit20: TTS_DBEdit;
        TS_Label50: TTS_Label;
        TS_Label51: TTS_Label;
        TS_Label55: TTS_Label;
        TS_DBEdit23: TTS_DBEdit;
        TS_Label59: TTS_Label;
        TS_DBEdit27: TTS_DBEdit;
        TS_Label60: TTS_Label;
        TS_Label61: TTS_Label;
        TS_DBEdit29: TTS_DBEdit;
        TS_DBLookupComboBox3: TTS_DBLookupComboBox;
        TS_DBEditNumber1: TTS_DBEditNumber;
        TS_DBEdit1: TTS_DBEdit;
        TS_Label64: TTS_Label;
        TS_Label65: TTS_Label;
        TS_DBEdit3: TTS_DBEdit;
        TS_Label66: TTS_Label;
        TS_DBEdit4: TTS_DBEdit;
        TS_Label67: TTS_Label;
        TS_DBEdit5: TTS_DBEdit;
        TS_Label68: TTS_Label;
        TS_DBEdit7: TTS_DBEdit;
        TS_Label69: TTS_Label;
        TS_DBEdit8: TTS_DBEdit;
        TS_Label70: TTS_Label;
        TS_DBEdit9: TTS_DBEdit;
        TS_DBEditNumber2: TTS_DBEditNumber;
        TS_DBCheckBox8: TTS_DBCheckBox;
        TS_Label72: TTS_Label;
        TS_DBEdit11: TTS_DBMaskEdit;
        TS_DBCheckBox7: TTS_DBCheckBox;
        TS_DBRadioGroup1: TTS_DBRadioGroup;
        TS_DBCheckBox2: TTS_DBCheckBox;
        TS_DBCheckBox4: TTS_DBCheckBox;
        TS_DBCheckBox5: TTS_DBCheckBox;
        TS_DBCheckBox3: TTS_DBCheckBox;
        TS_Label48: TTS_Label;
        TS_DBEdit18: TTS_DBEdit;
        Shape1: TShape;
        TS_Label57: TTS_Label;
        Shape2: TShape;
        TS_Label58: TTS_Label;
        TS_Label63: TTS_Label;
        TS_Label71: TTS_Label;
        TS_Label73: TTS_Label;
        TS_Label74: TTS_Label;
        TS_Label75: TTS_Label;
        TS_Label76: TTS_Label;
        TS_Label77: TTS_Label;
        TS_Label78: TTS_Label;
        TS_Label79: TTS_Label;
        TS_DBEdit10: TTS_DBEdit;
        TS_DBEdit12: TTS_DBEdit;
        TS_DBEdit25: TTS_DBEdit;
        TS_DBEdit26: TTS_DBEdit;
        TS_DBEdit28: TTS_DBEdit;
        TS_DBLookupComboBox2: TTS_DBLookupComboBox;
        TS_DBEditNumber3: TTS_DBEditNumber;
        TS_DBEdit30: TTS_DBEdit;
        TS_DBEditNumber4: TTS_DBEditNumber;
        TS_DBCheckBox6: TTS_DBCheckBox;
        TS_Label80: TTS_Label;
        TS_DBEdit31: TTS_DBMaskEdit;
        TS_DBRadioGroup2: TTS_DBRadioGroup;
        TS_GroupBox1: TTS_GroupBox;
        TS_DBEdit21: TTS_DBEdit;
        TS_Label52: TTS_Label;
        TS_Label54: TTS_Label;
        TS_DBEditDate1: TTS_DBEditDate;
        TS_Label22: TTS_Label;
        DF_LimiteCredito: TTS_DBEditNumber;
        TS_Label31: TTS_Label;
        DF_Conta: TTS_DBPopupEdit;
        rgProducao: TTS_GroupBox;
        TS_Label38: TTS_Label;
        cmbInicioSemana: TTS_DBImageEdit;
        TS_Label39: TTS_Label;
        dfQtdPeriodo: TTS_DBSpinEdit;
        Shape3: TShape;
        TS_Label81: TTS_Label;
        Bevel4: TBevel;
        Shape4: TShape;
        TS_Label82: TTS_Label;
        TS_DBEditNumber6: TTS_DBEditNumber;
        TS_Label83: TTS_Label;
        TS_Label84: TTS_Label;
        TS_Label85: TTS_Label;
        TS_Label86: TTS_Label;
        TS_Label87: TTS_Label;
        TS_Label88: TTS_Label;
        TS_Label89: TTS_Label;
        TS_DBEdit16: TTS_DBEdit;
        TS_DBEdit24: TTS_DBMaskEdit;
        TS_DBEdit32: TTS_DBEdit;
        TS_DBEdit33: TTS_DBEdit;
        TS_DBEdit34: TTS_DBEdit;
        TS_DBLookupComboBox5: TTS_DBLookupComboBox;
        TS_DBEditNumber7: TTS_DBEditNumber;
        TS_ScrollBox1: TTS_ScrollBox;
        TS_Label90: TTS_Label;
        TS_Label91: TTS_Label;
        TS_DBMaskEdit1: TTS_DBMaskEdit;
        TS_DBMaskEdit2: TTS_DBMaskEdit;
        TS_Label94: TTS_Label;
        TS_Label95: TTS_Label;
        TS_Label96: TTS_Label;
        TS_Label97: TTS_Label;
        TS_Label98: TTS_Label;
        TS_Label99: TTS_Label;
        TS_Label100: TTS_Label;
        TS_DBEdit36: TTS_DBEdit;
        TS_DBEdit37: TTS_DBEdit;
        TS_DBEdit38: TTS_DBEdit;
        TS_DBEdit39: TTS_DBEdit;
        TS_DBLookupComboBox7: TTS_DBLookupComboBox;
        TS_DBMaskEdit3: TTS_DBMaskEdit;
        TS_DBEdit40: TTS_DBEdit;
        Shape5: TShape;
        TS_Label101: TTS_Label;
        TS_Label103: TTS_Label;
        TS_Label104: TTS_Label;
        TS_Label105: TTS_Label;
        TS_Label106: TTS_Label;
        TS_Label107: TTS_Label;
        TS_Label108: TTS_Label;
        TS_Label109: TTS_Label;
        TS_Label110: TTS_Label;
        TS_Label111: TTS_Label;
        TS_DBEdit41: TTS_DBEdit;
        TS_DBEdit42: TTS_DBEdit;
        TS_DBEdit43: TTS_DBEdit;
        TS_DBEdit44: TTS_DBEdit;
        TS_DBEdit45: TTS_DBEdit;
        TS_DBLookupComboBox8: TTS_DBLookupComboBox;
        TS_DBEditNumber8: TTS_DBEditNumber;
        TS_DBEdit46: TTS_DBEdit;
        TS_DBEditNumber9: TTS_DBEditNumber;
        TS_DBCheckBox9: TTS_DBCheckBox;
        TS_Label112: TTS_Label;
        TS_DBEdit47: TTS_DBMaskEdit;
        Shape7: TShape;
        TS_Label113: TTS_Label;
        Shape8: TShape;
        TS_Label114: TTS_Label;
        TS_Label115: TTS_Label;
        TS_Label116: TTS_Label;
        TS_Label117: TTS_Label;
        TS_Label118: TTS_Label;
        TS_Label119: TTS_Label;
        TS_Label120: TTS_Label;
        TS_Label121: TTS_Label;
        TS_Label122: TTS_Label;
        TS_Label123: TTS_Label;
        TS_DBEdit48: TTS_DBEdit;
        TS_DBEdit49: TTS_DBEdit;
        TS_DBEdit50: TTS_DBEdit;
        TS_DBEdit51: TTS_DBEdit;
        TS_DBEdit52: TTS_DBEdit;
        TS_DBLookupComboBox9: TTS_DBLookupComboBox;
        TS_DBEditNumber10: TTS_DBEditNumber;
        TS_DBEdit53: TTS_DBEdit;
        TS_DBEditNumber11: TTS_DBEditNumber;
        TS_DBCheckBox10: TTS_DBCheckBox;
        TS_Label124: TTS_Label;
        TS_DBEdit54: TTS_DBMaskEdit;
        TS_Label125: TTS_Label;
        TS_Label126: TTS_Label;
        TS_Label127: TTS_Label;
        TS_Label128: TTS_Label;
        TS_Label129: TTS_Label;
        TS_Label130: TTS_Label;
        TS_Label131: TTS_Label;
        TS_DBEdit55: TTS_DBEdit;
        TS_DBEdit56: TTS_DBMaskEdit;
        TS_DBEdit57: TTS_DBEdit;
        TS_DBEdit58: TTS_DBEdit;
        TS_DBEdit59: TTS_DBEdit;
        TS_DBLookupComboBox10: TTS_DBLookupComboBox;
        TS_DBCheckBox11: TTS_DBCheckBox;
        TS_DBCheckBox12: TTS_DBCheckBox;
        TS_DBCheckBox13: TTS_DBCheckBox;
        TS_DBCheckBox14: TTS_DBCheckBox;
        TS_Label132: TTS_Label;
        TS_DBEdit60: TTS_DBEdit;
        Shape9: TShape;
        TS_Label133: TTS_Label;
        Shape10: TShape;
        TS_Label134: TTS_Label;
        TS_DBEditNumber12: TTS_DBEditNumber;
        TS_Label135: TTS_Label;
        TS_Label136: TTS_Label;
        TS_Label137: TTS_Label;
        TS_Label138: TTS_Label;
        TS_Label139: TTS_Label;
        TS_Label140: TTS_Label;
        TS_Label141: TTS_Label;
        TS_DBEdit61: TTS_DBEdit;
        TS_DBEdit62: TTS_DBMaskEdit;
        TS_DBEdit63: TTS_DBEdit;
        TS_DBEdit64: TTS_DBEdit;
        TS_DBEdit65: TTS_DBEdit;
        TS_DBLookupComboBox11: TTS_DBLookupComboBox;
        TS_DBEditNumber13: TTS_DBEditNumber;
        TS_Label143: TTS_Label;
        TS_Label144: TTS_Label;
        TS_Label145: TTS_Label;
        TS_Label146: TTS_Label;
        TS_Label147: TTS_Label;
        TS_Label148: TTS_Label;
        TS_DBEdit66: TTS_DBEdit;
        TS_DBEdit67: TTS_DBEdit;
        TS_DBEdit68: TTS_DBEdit;
        TS_DBEdit69: TTS_DBEdit;
        TS_DBEdit70: TTS_DBEdit;
        TS_DBEdit71: TTS_DBEdit;
        TS_Label149: TTS_Label;
        Shape12: TShape;
        TS_Shape18: TTS_Shape;
        TS_Shape4: TTS_Shape;
        TS_Shape5: TTS_Shape;
        TS_Shape6: TTS_Shape;
        TS_Shape7: TTS_Shape;
        TS_Shape9: TTS_Shape;
        TS_Shape10: TTS_Shape;
        TS_Shape12: TTS_Shape;
        TS_Shape13: TTS_Shape;
        TS_Shape14: TTS_Shape;
        TS_DBCheckBox15: TTS_DBCheckBox;
        TS_DBRadioGroup3: TTS_DBRadioGroup;
        TS_DBEditDate2: TTS_DBEditDate;
        TS_Label150: TTS_Label;
        Shape13: TShape;
        TS_Label151: TTS_Label;
        TS_Shape15: TTS_Shape;
        DBRelacionamentosNOME: TdxDBGridButtonColumn;
        DBRelacionamentosColumn7: TdxDBGridLookupColumn;
        DBRelacionamentosColumn8: TdxDBGridColumn;
        DBRelacionamentosColumn9: TdxDBGridColumn;
        ExcluirRelacionamento1: TMenuItem;
        TrocarOperaesdeSadasparaoutroClientes1: TMenuItem;
        TS_GroupBox3: TTS_GroupBox;
        TS_Label37: TTS_Label;
        TS_Label56: TTS_Label;
        TS_Label152: TTS_Label;
        TS_DBEdit72: TTS_DBEdit;
        TS_DBEdit73: TTS_DBMaskEdit;
        TS_DBEditDate3: TTS_DBEditDate;
        N7: TMenuItem;
        ReceberPagamento: TMenuItem;
        FazerOperao1: TMenuItem;
        Estimate1: TMenuItem;
        SalesOrder1: TMenuItem;
        Invoice1: TMenuItem;
        TS_Label62: TTS_Label;
        TS_DBLookupComboBox4: TTS_DBLookupComboBox;
        TS_Label102: TTS_Label;
        TS_DBLookupComboBox13: TTS_DBLookupComboBox;
        N6: TMenuItem;
        Clientesqueestoematraso1: TMenuItem;
        Clientesqueestoemdia1: TMenuItem;
        Clientescomchequesdevolvidos1: TMenuItem;
        Clientescommaiornmerodecompras1: TMenuItem;
        Clientescommaiorvalordecompra1: TMenuItem;
        Clientesquenoestocomprando1: TMenuItem;
        H2anos1: TMenuItem;
        H1ano1: TMenuItem;
        H6meses1: TMenuItem;
        H3meses1: TMenuItem;
        H30dias1: TMenuItem;
        ClientescomEstimatesemaberto1: TMenuItem;
        ClientesAniversariantes1: TMenuItem;
        doprximoms1: TMenuItem;
        doms1: TMenuItem;
        dasemana1: TMenuItem;
        dehoje1: TMenuItem;
        ClientessemMovimentao1: TMenuItem;
        ClientesDesativados1: TMenuItem;
        Statements1: TMenuItem;
        Etiquetas1: TMenuItem;
        ImageList1: TImageList;
        GridUF: TdxDBGridColumn;
        GridGRUPO: TdxDBGridColumn;
        GridcfCHEQUESPENDENTES: TdxDBGridMaskColumn;
        GridcfCREDITO: TdxDBGridMaskColumn;
        GridcfSALDO: TdxDBGridMaskColumn;
        CRM1: TMenuItem;
        ExtratodeParcelas1: TMenuItem;
        Invoices1: TMenuItem;
        Contratos1: TMenuItem;
        Outros1: TMenuItem;
        btLembrete: TTS_SpeedButton;
        TS_Label25: TTS_Label;
        dfCNPJ: TTS_DBMaskEdit;
        TS_Label24: TTS_Label;
        dfInscricao: TTS_DBMaskEdit;
        TS_Label35: TTS_Label;
        cmbGrupo: TTS_DBLookupComboBox;
        TS_Label7: TTS_Label;
        TS_DBMaskEdit5: TTS_DBMaskEdit;
        dfFisicaJuridica: TTS_DBImageEdit;
        TS_Label6: TTS_Label;
        dfRG: TTS_DBMaskEdit;
        TS_Label23: TTS_Label;
        TS_DBCheckBox16: TTS_DBCheckBox;
        TS_Label30: TTS_Label;
        TS_DBEdit19: TTS_DBEdit;
        TS_DBTextEffect3: TTS_DBTextEffect;
        TS_Shape3: TTS_Shape;
        lblCheques: TTS_Label;
        TS_Shape2: TTS_Shape;
        TS_Shape1: TTS_Shape;
        lblCredito: TTS_Label;
        TS_Label17: TTS_Label;
        TS_DBTextEffect2: TTS_DBTextEffect;
        TS_DBTextEffect1: TTS_DBTextEffect;
        TS_Label49: TTS_Label;
        TS_DBCheckBox17: TTS_DBCheckBox;
        TS_Label28: TTS_Label;
    DF_Bairro: TTS_DBEdit;
        TS_DBEdit35: TTS_DBEdit;
        TS_DBEdit74: TTS_DBEdit;
        TS_Label34: TTS_Label;
        TS_Label53: TTS_Label;
        btReceita: TTS_SpeedButton;
        cmbMunicipios: TTS_DBLookupComboBox;
        lblCRM: TTS_Label;
        dfCRM: TTS_DBMaskEdit;
        ZREtq2Colunas: TZReport;
        ZREtq2ColunasDetail: TZRBand;
        ZRLabel1: TZRLabel;
        ZRLabel2: TZRLabel;
        ZRLabel3: TZRLabel;
        ZRLabel4: TZRLabel;
        ZRLabel5: TZRLabel;
        ZRLabel6: TZRLabel;
        zrvNOME: TZRField;
        zrvCEP: TZRField;
        zrvUF: TZRField;
        zrvCIDADE: TZRField;
        zrvENDERECO: TZRField;
        zrvBAIRRO: TZRField;
        ClientesCadastrados1: TMenuItem;
        NoMesCorrente1: TMenuItem;
        NoMesAnterior1: TMenuItem;
        ComMenosde3MesesdeCadastro1: TMenuItem;
        TS_Label92: TTS_Label;
        edPercDesconto: TTS_DBEditNumber;
        ppDBEtiquetas: TppDBPipeline;
        ppEtiquetas: TppReport;
        ppDetailBand1: TppDetailBand;
        ppColumnHeaderBand1: TppColumnHeaderBand;
        ppColumnFooterBand1: TppColumnFooterBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        gridLocaisEntregaPONTOREFERENCIAENTREGA: TdxDBGridMaskColumn;
        btEquipamentos: TTS_SpeedButton;
        tsEquipamentos: TTS_TabSheet;
        GridEquipamento: TTS_QDBGrid;
        GridEquipamentoNUMMAQUINA: TdxDBGridColumn;
        GridEquipamentolkMarca: TdxDBGridLookupColumn;
        GridEquipamentolkTecnologia: TdxDBGridLookupColumn;
        GridEquipamentoPAVIMENTOS: TdxDBGridMaskColumn;
        TS_Label93: TTS_Label;
        dfNumContrato: TTS_DBEdit;
        TS_Label142: TTS_Label;
        dfNomeEdificio: TTS_DBEdit;
        GridEquipamentoDESCRICAO: TdxDBGridMaskColumn;
        lbDescIdade: TTS_Label;
        lbIdade: TTS_Label;
        TS_Label153: TTS_Label;
        TS_DBEdit75: TTS_DBEdit;
        TS_Label154: TTS_Label;
        edTipoContrato: TTS_DBImageEdit;
        N8: TMenuItem;
        ContratodeServios1: TMenuItem;
        PropostadeServios1: TMenuItem;
        ResgatarPontos1: TMenuItem;
        tsAssistenciaEquipamento: TTS_TabSheet;
        TS_QDBGrid1: TTS_QDBGrid;
        TS_QDBGrid1EQUIPAMENTO: TdxDBGridMaskColumn;
        TS_QDBGrid1DESCRICAO: TdxDBGridMaskColumn;
        TS_QDBGrid1NUMEROSERIE: TdxDBGridMaskColumn;
        TS_QDBGrid1NOME: TdxDBGridMaskColumn;
        TS_QDBGrid1CLIENTE: TdxDBGridMaskColumn;
        InformaesFinanceiras1: TMenuItem;
        dfInscMun: TTS_DBMaskEdit;
        TS_Label155: TTS_Label;
        TS_DBLookupComboBox6: TTS_DBLookupComboBox;
        TS_Label156: TTS_Label;
        Twain: TDelphiTwain;
        CapturarFoto1: TMenuItem;
        Image: TImage;
        dfConsumidorFinal: TTS_DBCheckBox;
        TS_Label27: TTS_Label;
        DF_DataNasc: TTS_DBEditDate;
        TS_Label157: TTS_Label;
        TS_Label158: TTS_Label;
        TS_DBMaskEdit4: TTS_DBMaskEdit;
        dfNumero: TTS_DBEdit;
        TS_Label159: TTS_Label;
        TS_Label160: TTS_Label;
        dfSenha: TTS_DBMaskEdit;
        cbDecreto24755: TTS_DBCheckBox;
        TS_Label161: TTS_Label;
        dblPais: TTS_DBLookupComboBox;
        TS_Label162: TTS_Label;
        TS_DBEditNumber5: TTS_DBEditNumber;
    chk_permitirCheque: TTS_DBCheckBox;
    chk_permitirFiado: TTS_DBCheckBox;
    BuscaCEP1: TMenuItem;
    sbCep: TTS_SpeedButton;
    SaldodeCrdito1: TMenuItem;
    zrSaldoCliente: TZReport;
    cTotalGeral: TZRAggregator;
    cQtdeItens: TZRAggregator;
    zrSaldoClienteGroup: TZRGroup;
    zrSaldoClienteHeader: TZRBand;
    zrCODIGO: TZRField;
    zrNOME: TZRField;
    zrRAZAO: TZRField;
    zrENDERECO: TZRField;
    zrCIDADE: TZRField;
    zrTELEFONE: TZRField;
    zrCPFCNPJ: TZRField;
    zrSALDO: TZRField;
    zrSaldoClienteFooter: TZRBand;
    ZRLabel7: TZRLabel;
    ZRLabel8: TZRLabel;
    zrNRO: TZRField;
    zrUF: TZRField;
    ZRLabel9: TZRLabel;
    ZRLabel14: TZRLabel;
    ZRLabel15: TZRLabel;
    zrNomeEmpresa: TZRLabel;
    zrEnderecoEmpresa: TZRLabel;
    zrCidadeEmpresa: TZRLabel;
    zrFoneEmpresa: TZRLabel;
    ZRLabel10: TZRLabel;
    zrLabelCliente: TZRLabel;
    zrLabelPonto: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel12: TZRLabel;
    ZRLabel13: TZRLabel;
    zrData: TZRLabel;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure InformaesdeCrdito1Click(Sender: TObject);
        procedure btPessoaisClick(Sender: TObject);
        procedure DF_SaldoClick(Sender: TObject);
        procedure DFCheqPendClick(Sender: TObject);
        procedure lblChequesClick(Sender: TObject);
        procedure DF_CreditoClick(Sender: TObject);
        procedure ppDBText12GetText(Sender: TObject; var Text: string);
        procedure ppDBText18DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure TS_BitBtn1Click(Sender: TObject);
        procedure dxBarButton2Click(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure dxBarButton1Click(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
        procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure btCartasClick(Sender: TObject);
        procedure btFichaClick(Sender: TObject);
        procedure btCompromissosClick(Sender: TObject);
        procedure DF_EmailButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure DF_SiteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure rbCheqPendPreviewFormCreate(Sender: TObject);
        procedure DF_ContaInitPopup(Sender: TObject);
        procedure DF_CodigoButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure btContratosClick(Sender: TObject);
        procedure dxBarButton3Click(Sender: TObject);
        procedure dxBarButton6Click(Sender: TObject);
        procedure dxBarButton4Click(Sender: TObject);
        procedure dxBarButton5Click(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure TS_Label16SetParametrosForm(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure DF_SSNChange(Sender: TObject);
        procedure TS_Label29SetParametrosForm(Sender: TObject);
        procedure btEnderecoClick(Sender: TObject);
        procedure btCaracteristicasClick(Sender: TObject);
        procedure btLocaisEntregaClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure btEmpregadorClick(Sender: TObject);
        procedure btFinanceiroClick(Sender: TObject);
        procedure btReferenciasClick(Sender: TObject);
        procedure btAvalistaClick(Sender: TObject);
        procedure btRelacClick(Sender: TObject);
        procedure btCustomClick(Sender: TObject);
        procedure PC_AbasChange(Sender: TObject);
        procedure DF_NumeroRevendaExit(Sender: TObject);
        procedure TS_DBEdit28Exit(Sender: TObject);
        procedure TS_DBEdit18Exit(Sender: TObject);
        procedure TS_DBEdit9Exit(Sender: TObject);
        procedure TS_DBEdit71Exit(Sender: TObject);
        procedure DBRelacionamentosCustomDrawCell(Sender: TObject;
            ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
            AColumn: TdxTreeListColumn; ASelected, AFocused,
            ANewItemRow: Boolean; var AText: string; var AColor: TColor;
            AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
        procedure ExcluirRelacionamento1Click(Sender: TObject);
        procedure TrocarOperaesdeSadasparaoutroClientes1Click(Sender: TObject);
        procedure TS_DBRadioGroup1Exit(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure ClientesDesativados1Click(Sender: TObject);
        procedure ppmOutrosPopup(Sender: TObject);
        procedure ReceberPagamentoClick(Sender: TObject);
        procedure dfQtdPeriodoExit(Sender: TObject);
        procedure DBRelacionamentosNOMEButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure Estimate1Click(Sender: TObject);
        procedure SalesOrder1Click(Sender: TObject);
        procedure Invoice1Click(Sender: TObject);
        procedure Statements1Click(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure Parametros1Click(Sender: TObject);
        procedure Outros1Click(Sender: TObject);
        procedure FormComponentBeforeMoveRecord(Sender: TObject;
            var bSkip: Boolean);
        procedure DBRelacionamentosTS_AposLocalizar(Sender: TObject);
        procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
        procedure dfCNPJEnter(Sender: TObject);
        procedure dfCNPJExit(Sender: TObject);
        procedure TS_DBMaskEdit5Exit(Sender: TObject);
        procedure TS_DBMaskEdit5Enter(Sender: TObject);
        procedure TS_DBMaskEdit2Exit(Sender: TObject);
        procedure TS_DBMaskEdit2Enter(Sender: TObject);
        procedure TS_DBEdit73Enter(Sender: TObject);
        procedure TS_DBEdit73Exit(Sender: TObject);
        procedure TS_Label49Click(Sender: TObject);
        procedure DF_FotoClick(Sender: TObject);
        procedure btReceitaClick(Sender: TObject);
        procedure Etiquetas1Click(Sender: TObject);
        procedure btEquipamentosClick(Sender: TObject);
        procedure DF_DataNascValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure ContratodeServios1Click(Sender: TObject);
        procedure PropostadeServios1Click(Sender: TObject);
        procedure ResgatarPontos1Click(Sender: TObject);
        procedure InformaesFinanceiras1Click(Sender: TObject);
        procedure CapturarFoto1Click(Sender: TObject);
        procedure TwainSourceFileTransfer(Sender: TObject;
            const Index: Integer; Filename: TW_STR255; Format: TTwainFormat;
            var Cancel: Boolean);
        procedure TwainSourceSetupFileXfer(Sender: TObject;
            const Index: Integer);
        procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
            Image: TBitmap; var Cancel: Boolean);
        procedure btGravarClick(Sender: TObject);
        procedure DF_Fone1KeyPress(Sender: TObject; var Key: Char);
        procedure TS_DBEdit19KeyPress(Sender: TObject; var Key: Char);
        procedure dfNumeroValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure dfNumeroKeyPress(Sender: TObject; var Key: Char);
        procedure DF_CEPValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
    procedure BuscaCEP1Click(Sender: TObject);
    procedure sbCEPClick(Sender: TObject);
    procedure SaldodeCrdito1Click(Sender: TObject);

    protected
        DlgPopup: TDlgPopupContas;
    private
        nCodForm: Integer;
        sCamposDef, sCamposTit, sCamposTipo: string;
        SQLFinal: string;
        CategoriaConsulta: integer;

        ClickPos: TPoint;
        ImageList: TList;
        TransferMode: TTwainTransferMode;
        CurrentImage: Integer;
        CurrentSource: Integer;
        LoadedSource: Integer;
        procedure SelectFirst;
        procedure ClearImageList;
        procedure LerCamposDefinidos;
        procedure PopulaCampo(obj: TTS_DBComboBox; nCampo: integer);
        function PegaStatusTitDesc(status: integer): string;
        procedure Ativar(sSSN: string);
        function ProcessaConsulta(nConsulta: integer; Parametro: string): string;
        procedure AtualizaParametros;

    public
        { Public declarations }
        CodigoDaConsulta: integer;
        SelectClientes, CondicaoDaConsulta: string;

    end;

var FrmClientes: TFrmClientes;

implementation
uses Dlg_ContratosFav, DM_Clientes, DM_Projeto, funcoes, Dlg_DefinirCamposFav, ShellApi,
    Dlg_ReceitasFav, Util2;

{$R *.DFM}

function TFrmClientes.ProcessaConsulta;
    procedure GenID_Top;
    begin
        DMClientes.Q_SQL.ExecSQL;
        DMClientes.Q_SQLTransaction.CommitRetaining;
    end;
var IDS, Condicao, sSelect: string;
var nAno, nMes, nDia: word;
    xAno, xMes, xDia: word;
    zAno, zMes, zDia: word;
begin
    Condicao := '';
    with DMClientes do
        begin
            C_ConsultasPre.Locate('Consulta', nConsulta, []);
            SQLFinal := C_ConsultasPreQUERY.Value;
            sSelect := Copy(SQLFinal, 1, pos('From', SQLFinal) - 1);

            decodedate(DMProjeto.dDataSistema, nAno, nMes, nDia);
            decodedate(PrimeiroDiaDaSemana(DMProjeto.dDataSistema), xAno, xMes, xDia);
            decodedate(UltimoDiaDaSemana(DMProjeto.dDataSistema), zAno, zMes, zDia);

            if C_ConsultasPreCONSULTA.Value = 9 then
                begin // Aniversariantes
                    Condicao := 'f.TipoFavorecido = 1 and f.desativado = ''N'' ';

                    if SeparaStrings(Parametro, ',', 1) = 'H' then
                        begin
                            Condicao := Condicao + ' and (extract(day from f.datanasc)=' + formatdatetime('d', DMProjeto.dDataSistema) + ' ' +
                                'and extract(month from f.datanasc)=' + formatdatetime('m', DMProjeto.dDataSistema) + ') ';
                        end
                    else if SeparaStrings(Parametro, ',', 1) = 'S' then
                        begin
                            if (nMes = xMes) and (nMes = zMes) then
                                Condicao := Condicao + ' and (extract(day from f.datanasc)>=' + formatdatetime('d', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc)>=' + formatdatetime('m', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ') ' +
                                    'and (extract(day from f.datanasc)<=' + formatdatetime('d', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc)<=' + formatdatetime('m', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ') '
                            else if (nMes < zMes) then
                                Condicao := Condicao + ' and (extract(day from f.datanasc)>=' + formatdatetime('d', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc)=' + formatdatetime('m', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ') ' +
                                    'or (extract(day from f.datanasc) <= ' + formatdatetime('d', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc) =' + formatdatetime('m', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ') '
                            else if (nMes > zMes) then
                                Condicao := Condicao + ' and (extract(day from f.datanasc)<=' + formatdatetime('d', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc)=' + formatdatetime('m', PrimeiroDiaDaSemana(DMProjeto.dDataSistema)) + ') ' +
                                    'or (extract(day from f.datanasc) >= ' + formatdatetime('d', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ' ' +
                                    'and extract(month from f.datanasc) =' + formatdatetime('m', UltimoDiaDaSemana(DMProjeto.dDataSistema)) + ') ';

                        end
                    else if SeparaStrings(Parametro, ',', 1) = 'M' then
                        begin
                            Condicao := Condicao + ' and (extract(month from f.datanasc)=' + formatdatetime('m ', DMProjeto.dDataSistema) + ') ';
                        end
                    else
                        begin
                            Condicao := Condicao + ' and (extract(month from f.datanasc)=' + IntToStr(nMes + 1) + ') ';
                        end;

                    lbConsulta.Caption := C_ConsultasPreTITULO.Value + ' ' + SeparaStrings(Parametro, ',', 2);
                end
            else if C_ConsultasPreCONSULTA.Value = 7 then
                begin // Clientes que n�o est�o comprando
                    Condicao := 'Having (current_date-Max(s.data)) >= ' + Parametro;
                    lbConsulta.Caption := C_ConsultasPreTITULO.Value + ' a ' + Parametro + ' dias';
                end
            else if (C_ConsultasPreCONSULTA.Value = 5) or (C_ConsultasPreCONSULTA.Value = 6) then
                begin
                    if not (Q_SQLTransaction.Active) then Q_SQLTransaction.Active := True;
                    GenID_Top;
                    Q_SQLTransaction.Active := False;
                    Condicao := 'f_year(s.Data) >= f_year(CURRENT_DATE)-1 And s.Situacao=' + QuotedStr('N') + ' And s.TipoPadrao=1' + ' And gen_id(GEN_TOP, 1) <= ' + IntToStr(10);
                    lbConsulta.Caption := C_ConsultasPreTITULO.Value + ' (' + IntToStr(10) + ' maiores)';
                end
            else if C_ConsultasPreCONSULTA.Value = 24 then
                begin // Data do Cadastro
                    if SeparaStrings(Parametro, ',', 1) = '1' then
                        Condicao := ' f.TipoFavorecido = 1 and f.desativado = ''N'' ' +
                            ' and (extract(month from f.datacadastro)=' + formatdatetime('m', DMProjeto.dDataSistema) +
                            ' and extract(year from f.datacadastro)=' + formatdatetime('yyyy', DMProjeto.dDataSistema) + ') ';
                    if SeparaStrings(Parametro, ',', 1) = '2' then
                        Condicao := ' f.TipoFavorecido = 1 and f.desativado = ''N'' ' +
                            ' and (extract(month from f.datacadastro)=' + formatdatetime('m', IncMonth(DMProjeto.dDataSistema, -1)) +
                            ' and extract(year from f.datacadastro)=' + formatdatetime('yyyy', IncMonth(DMProjeto.dDataSistema, -1)) + ') ';
                    if SeparaStrings(Parametro, ',', 1) = '3' then
                        Condicao := ' f.TipoFavorecido = 1 and f.desativado = ''N'' ' +
                            ' and (extract(month from f.datacadastro)=' + formatdatetime('m', IncMonth(DMProjeto.dDataSistema, -3)) +
                            ' and extract(year from f.datacadastro)=' + formatdatetime('yyyy', IncMonth(DMProjeto.dDataSistema, -3)) + ') ';
                    lbConsulta.Caption := C_ConsultasPreTITULO.Value + ' ' + SeparaStrings(Parametro, ',', 2);
                end
            else
                begin
                    lbConsulta.Caption := C_ConsultasPreTITULO.Value + '';
                end;

            CondicaoDaConsulta := Condicao;

            if length(Condicao) > 0 then
                if pos('HAVING', UpperCase(Condicao)) > 0 then
                    System.Insert(' ' + Condicao + ' ', SQLFinal, pos('ORDER BY', UpperCase(SQLFinal)))
                else if pos('GROUP BY', UpperCase(SQLFinal)) > 0 then
                    System.Insert(' Where ' + Condicao + ' ', SQLFinal, pos('GROUP BY', UpperCase(SQLFinal)))
                else
                    System.Insert(' Where ' + Condicao + ' ', SQLFinal, pos('ORDER BY', UpperCase(SQLFinal)));

            // pegando os Ids para localizar os favorecidos daquela consulta
            with DMProjeto.Q_SQL do
                begin
                    Close;
                    SQL.Text := SQLFinal;
                    Open;
                    while not eof do
                        begin
                            AppendStr(IDs, FieldByName('ID').AsString + ',');
                            Next;
                        end;
                    if Length(IDs) <= 0 then
                        IDs := '-1'
                    else
                        IDs := copy(IDs, 1, length(IDs) - 1);
                    Close;
                end;
        end;
    result := IDs;
end;

procedure TFrmClientes.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    FrmClientes := nil;
end;

procedure TFrmClientes.AtualizaParametros;
begin
    btPessoais.visible := DMProjeto.Parametro('ClientePessoais') <> 'N';
    btEmpregador.visible := DMProjeto.Parametro('ClienteEmpreg') <> 'N';
    btReferencias.visible := DMProjeto.Parametro('ClienteRefer') <> 'N';
    btFinanceiro.visible := DMProjeto.Parametro('ClienteFinanc') <> 'N';
    btAvalista.visible := DMProjeto.Parametro('ClienteAvalista') <> 'N';
    btRelac.visible := DMProjeto.Parametro('ClienteRelac') <> 'N';
    rgProducao.visible := DMProjeto.Parametro('TipoEmpresa') = 'T';
    sCamposDef := DMProjeto.Parametro('CliCamposDefinidos');
    sCamposTit := DMProjeto.Parametro('CliCamposTitulos');
    sCamposTipo := DMProjeto.Parametro('CliCamposTipos');
    btContratos.Visible := DMProjeto.Parametro('TipoEmpresa') = 'S';
    btReceita.Visible := DMProjeto.Parametro('TipoEmpresa') = 'O';
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
    inherited;
    FrmClientes := Self;
    SelectClientes := DMClientes.Q_Tabela.SQL.Text;
    DMClientes.C_ConsultasPre.Open;
    CondicaoDaConsulta := '';
    CodigoDaConsulta := -1; // Todos os clientes (sem consulta)
    //  DMClientes.CamposDaConsulta(False);
    //  pc_Abas.UpdateVisibleTabs;
    PC_Abas.ActivePage := tsEndereco;
    LerCamposDefinidos;
    DlgPopup := TDlgPopupContas.Create(Self, DMClientes.C_ContasDS, nil, True);
    nCodForm := 32; //Codigo do Formulario

    ImageList := TList.Create;
    //  ContainImage.DoubleBuffered := TRUE;
    TransferMode := ttmMemory;
    CurrentSource := -1;
    LoadedSource := CurrentSource;

end;

procedure TFrmClientes.InformaesdeCrdito1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'INVOICES') then
        exit;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFAVORECIDO.AsInteger, DMClientes.C_TabelaNOME.AsString, 1 {TipoFav}]);
    DMProjeto.CriarForm('DlgUltimasVendas', Self, True);
end;

procedure TFrmClientes.btPessoaisClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsPessoais);
end;

procedure TFrmClientes.DF_SaldoClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'SALDOEMABERTO', DMClientes.C_TabelaFavorecido.Value);
        end;
end;

function TFrmClientes.PegaStatusTitDesc(status: integer): string;
begin
    try
        with DMProjeto do
            begin
                Q_SQL.Close;
                Q_SQL.SQL.Text := 'Select descricao From StatusTitulos Where Status=' + IntToStr(status);
                Q_SQL.Open;
                result := Q_SQL.Fields[0].AsString;
            end;
    except
        result := '';
    end;
end;

procedure TFrmClientes.DFCheqPendClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'CHEQUESPENDENTES', DMClientes.C_TabelaFavorecido.Value);
        end;
end;

procedure TFrmClientes.lblChequesClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin

        end;
end;

procedure TFrmClientes.DF_CreditoClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'CREDITO', DMClientes.C_TabelaFavorecido.Value);
        end;
end;

procedure TFrmClientes.ppDBText12GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Text = '' then Text := '0,00';
end;

procedure TFrmClientes.ppDBText18DrawCommandClick(Sender,
    aDrawCommand: TObject);
var IDRel: integer;
begin
    inherited;
    IDRel := TppDrawCommand(aDrawCommand).Tag;
    //  ShowMessage('abre invoice-->'+inttostr(idrel));
end;

procedure TFrmClientes.TS_BitBtn1Click(Sender: TObject);
begin
    inherited;
    DlgDefinirCamposFav := TDlgDefinirCamposFav.create(self);
    DlgDefinirCamposFav.free;

    LerCamposDefinidos;
end;

procedure TFrmClientes.LerCamposDefinidos;
var i: integer;
    sCampo, sTitulo, sTipo: string;
begin
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
    sCamposDef := DMProjeto.Parametro('CliCamposDefinidos');
    sCamposTit := DMProjeto.Parametro('CliCamposTitulos');
    sCamposTipo := DMProjeto.Parametro('CliCamposTipos');

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
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo1.visible := true;
                            lblCampo1.visible := true;
                            lblCampo1.caption := sTitulo;
                            PopulaCampo(cmbCampo1, 1);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo1.visible := true;
                            cbCampo1.caption := sTitulo;
                            if DMClientes.C_TabelaCampo01.IsNull or (DMClientes.C_TabelaCampo01.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo01.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '2' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo2.visible := true;
                            lblCampo2.caption := sTitulo;
                            dfCampo2.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo2.visible := true;
                            lblCampo2.visible := true;
                            lblCampo2.caption := sTitulo;
                            PopulaCampo(cmbCampo2, 2);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo2.visible := true;
                            cbCampo2.caption := sTitulo;
                            if DMClientes.C_TabelaCampo02.IsNull or (DMClientes.C_TabelaCampo02.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo02.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '3' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo3.visible := true;
                            lblCampo3.caption := sTitulo;
                            dfCampo3.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo3.visible := true;
                            lblCampo3.visible := true;
                            lblCampo3.caption := sTitulo;
                            PopulaCampo(cmbCampo3, 3);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo3.visible := true;
                            cbCampo3.caption := sTitulo;
                            if DMClientes.C_TabelaCampo03.IsNull or (DMClientes.C_TabelaCampo03.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo03.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '4' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo4.visible := true;
                            lblCampo4.caption := sTitulo;
                            dfCampo4.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo4.visible := true;
                            lblCampo4.visible := true;
                            lblCampo4.caption := sTitulo;
                            PopulaCampo(cmbCampo4, 4);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo4.visible := true;
                            cbCampo4.caption := sTitulo;
                            if DMClientes.C_TabelaCampo04.IsNull or (DMClientes.C_TabelaCampo04.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo04.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '5' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo5.visible := true;
                            lblCampo5.caption := sTitulo;
                            dfCampo5.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo5.visible := true;
                            lblCampo5.visible := true;
                            lblCampo5.caption := sTitulo;
                            PopulaCampo(cmbCampo5, 5);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo5.visible := true;
                            cbCampo5.caption := sTitulo;
                            if DMClientes.C_TabelaCampo05.IsNull or (DMClientes.C_TabelaCampo05.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo05.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '6' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo6.visible := true;
                            lblCampo6.caption := sTitulo;
                            dfCampo6.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo6.visible := true;
                            lblCampo6.visible := true;
                            lblCampo6.caption := sTitulo;
                            PopulaCampo(cmbCampo6, 6);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo6.visible := true;
                            cbCampo6.caption := sTitulo;
                            if DMClientes.C_TabelaCampo06.IsNull or (DMClientes.C_TabelaCampo06.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo06.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '7' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo7.visible := true;
                            lblCampo7.caption := sTitulo;
                            dfCampo7.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo7.visible := true;
                            lblCampo7.visible := true;
                            lblCampo7.caption := sTitulo;
                            PopulaCampo(cmbCampo7, 7);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo7.visible := true;
                            cbCampo7.caption := sTitulo;
                            if DMClientes.C_TabelaCampo07.IsNull or (DMClientes.C_TabelaCampo07.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo07.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '8' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo8.visible := true;
                            lblCampo8.caption := sTitulo;
                            dfCampo8.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo8.visible := true;
                            lblCampo8.visible := true;
                            lblCampo8.caption := sTitulo;
                            PopulaCampo(cmbCampo8, 8);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo8.visible := true;
                            cbCampo8.caption := sTitulo;
                            if DMClientes.C_TabelaCampo08.IsNull or (DMClientes.C_TabelaCampo08.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo08.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '9' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo9.visible := true;
                            lblCampo9.caption := sTitulo;
                            dfCampo9.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo9.visible := true;
                            lblCampo9.visible := true;
                            lblCampo9.caption := sTitulo;
                            PopulaCampo(cmbCampo9, 9);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo9.visible := true;
                            cbCampo9.caption := sTitulo;
                            if DMClientes.C_TabelaCampo09.IsNull or (DMClientes.C_TabelaCampo09.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo09.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '10' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo10.visible := true;
                            lblCampo10.caption := sTitulo;
                            dfCampo10.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo10.visible := true;
                            lblCampo10.visible := true;
                            lblCampo10.caption := sTitulo;
                            PopulaCampo(cmbCampo10, 10);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo10.visible := true;
                            cbCampo10.caption := sTitulo;
                            if DMClientes.C_TabelaCampo10.IsNull or (DMClientes.C_TabelaCampo10.value <> 'S') then
                                begin
                                    DMClientes.C_Tabela.edit;
                                    DMClientes.C_TabelaCampo10.value := 'N';
                                    DMClientes.C_Tabela.UpdateRecord;
                                end;
                        end;
                end;
        end;
end;

procedure TFrmClientes.PopulaCampo;
var xCampo: string;
begin
    xCampo := 'campo' + AdicionarStr(IntToStr(nCampo), '0', 2);
    TTS_DBComboBox(obj).Items.Clear;
    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.Text := 'select distinct ' + xCampo + ' from favorecidos where ' + xCampo + ' is not null order by 1';
    DMProjeto.Q_SQL.open;

    while not DMProjeto.Q_SQL.eof do
        begin
            TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
            DMProjeto.Q_SQL.next;
        end;
end;

procedure TFrmClientes.dxBarButton2Click(Sender: TObject);
begin
    inherited;
    with DMClientes do
        begin
            if not (C_Tabela.State in [dsEdit, dsInsert]) then C_Tabela.Edit;
            C_TabelaLogotipo.Value := '';
            DF_Foto.ClearPicture;
        end;
end;

procedure TFrmClientes.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    with DMClientes do
        begin
            if C_TabelaFavorecido.value > 0 then
                begin
                    btLembrete.visible := DMProjeto.ChecaLembretes(C_TabelaFavorecido.value);

                    if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
                        DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value)
                    else
                        DF_Foto.ClearPicture;
                end
            else
                begin
                    DF_Foto.ClearPicture;
                end;
            Ativar(DMClientes.C_TabelaSSN.Value);

            if C_Clientes.Active and bAlteracao and (not FormatoTabela.Checked) then
                begin
                    C_Clientes.Close;
                    C_Clientes.Open;
                end;

            if bAlteracao and btRelac.Down and (not FormatoTabela.Checked) then
                begin
                    C_Familiar.Close;
                    C_Familiar.Open;
                end;
            if bAlteracao and btLocaisEntrega.Down and (not FormatoTabela.Checked) then
                begin
                    C_LocaisEntrega.Close;
                    C_LocaisEntrega.Open;
                end;
        end;
end;

procedure TFrmClientes.Ativar(sSSN: string);
begin
    //  DBRelacionamentosSSN.Visible := sSSN <> '';
    //  DBRelacionamentosEIN.Visible := sSSN = '';
    //  DBRelacionamentosDATANasc.Visible := sSSN = '';
end;

procedure TFrmClientes.dxBarButton1Click(Sender: TObject);
begin
    inherited;
    if pdFoto.Execute then
        with DMClientes do
            begin
                if not (C_Tabela.State in [dsEdit, dsInsert]) then
                    C_Tabela.Edit;

                C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor(pdFoto.FileName);
                if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
                    DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value);
            end;
end;

procedure TFrmClientes.btPesquisarClick(Sender: TObject);
begin
    inherited;
    if lbConsulta.Caption <> '' then
        begin
            CodigoDaConsulta := -1;
            //CamposDaConsulta(false);
            lbConsulta.Caption := '';
        end;
end;

procedure TFrmClientes.btOutrosMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmClientes.btCartasClick(Sender: TObject);
var IDs: string;
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            with DMProjeto do
                begin
                    if (FormatoTabela.Checked) and (Grid.QuantidadeSelecionada > 0) then
                        begin
                            IDS := '1,2'; // Grid
                        end
                    else
                        begin
                            with DMClientes.C_Tabela do
                                begin
                                    DisableControls;
                                    while not (eof) do
                                        begin
                                            AppendStr(IDs, FieldByName('Favorecido').AsString + ',');
                                            Next;
                                        end;
                                    if length(IDs) <= 0 then
                                        IDs := '-1'
                                    else
                                        IDs := copy(IDs, 1, length(IDs) - 1);
                                    EnableControls;
                                end;
                        end;
                    //SetParametrosForm( [1{CATEGORIA - clientes}, CodigoDaConsulta, IDs{IDs dos favorecidos}, CondicaoDaConsulta] );
                    //CriarForm('FrmTextos', Self, false);
                end;
        end;
end;

procedure TFrmClientes.btFichaClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'FICHA') then
        exit;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFAVORECIDO.Value, 'P']);
    DMProjeto.CriarForm('DlgFichaFavorecido', self, true);
end;

procedure TFrmClientes.btCompromissosClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.SetParametrosForm(['Favorecidos', DMClientes.C_TabelaFAVORECIDO.Value, 'Compromissos com Favorecido [' + DMClientes.C_TabelaNOME.Value + ']']);
            DMProjeto.CriarForm('DlgDescricaoCompromissos', Self, true);
        end;
end;

procedure TFrmClientes.DF_EmailButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if DF_Email.Text <> '' then SendMail('', '', '', '', '', DF_Nome.Text, DF_Email.Text);
end;

procedure TFrmClientes.DF_SiteButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if DF_Site.Text <> '' then
        ShellExecute(Application.Handle, nil, PChar(DF_Site.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmClientes.rbCheqPendPreviewFormCreate(Sender: TObject);
begin
    inherited;
    Screen.Cursor := crDefault;
end;

procedure TFrmClientes.DF_ContaInitPopup(Sender: TObject);
begin
    inherited;
    DF_Conta.PopupControl := DlgPopup.pnPopup;
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmClientes.DF_CodigoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMClientes.GeraCodigo;
    ActiveControl := df_Nome;
end;

procedure TFrmClientes.btContratosClick(Sender: TObject);
begin
    inherited;
    DMClientes.C_Contratos.Open;
    DlgContratosFav := TDlgContratosFav.Create(self);
    DlgContratosFav.ShowModal;
    DlgContratosFav.Release;
    DlgContratosFav := nil;
end;

procedure TFrmClientes.dxBarButton3Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Lembrete(self, DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 1, 543);
end;

procedure TFrmClientes.dxBarButton6Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Ocorrencia(self, DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 1, DMJanela.C_Tabela.FieldByName('Nome').AsString);
end;

procedure TFrmClientes.dxBarButton4Click(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(self, nCodForm, DMClientes.C_TabelaFavorecido.Value,
        DMClientes.C_TabelaCODIGO.Value, DMClientes.C_TabelaNOME.Value, 1);
end;

procedure TFrmClientes.dxBarButton5Click(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.SetParametrosForm([DMClientes.C_TabelaFavorecido.value, 1]);
            DMProjeto.CriarForm('FrmAlerta', Self, true);
        end;
end;

procedure TFrmClientes.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    CodigoDaConsulta := -1;
    //CamposDaConsulta(false);
    lbConsulta.Caption := '';
    pc_Abas.ActivePageIndex := 0;
    btEndereco.down := true;
end;

procedure TFrmClientes.TS_Label16SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaTipoAtividade.AsVariant, 1]); // tipofavorecido
end;

procedure TFrmClientes.btComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFAVORECIDO.Value, 1 {TipoFav}]);
    DMProjeto.CriarForm('DlgSitCliente', Self, true);
end;

procedure TFrmClientes.DF_SSNChange(Sender: TObject);
begin
    inherited;
    Ativar(DMClientes.C_TabelaSSN.Value);
end;

procedure TFrmClientes.TS_Label29SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaVendedor.asVariant, 'V']);
end;
{
  DMProjeto.SetParametrosForm( [null,DMClientes.C_TabelaNome.Value] );
  DMProjeto.CriarForm('DlgDependentes', Self, true);
}

procedure TFrmClientes.btEnderecoClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsEndereco);
    btEndereco.down := true;
end;

procedure TFrmClientes.btCaracteristicasClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsCaracteristicas);
    btCaracteristicas.down := true;
end;

procedure TFrmClientes.btLocaisEntregaClick(Sender: TObject);
begin
    inherited;
    if not DMClientes.C_LocaisEntrega.Active then
        begin
            DMClientes.C_LocaisEntrega.Close;
            DMClientes.C_LocaisEntrega.Open;
        end;
    pc_abas.SetPage(tsLocaisEntrega);
    btLocaisEntrega.down := true;
end;

procedure TFrmClientes.btComando2Click(Sender: TObject);
begin
    inherited;
    {  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'EXTPARCELA') then
        exit; }
    DMProjeto.ImprimirRelatorioFavorecido(self, 'SALDOEMABERTO', DMClientes.C_TabelaFavorecido.Value);
end;

procedure TFrmClientes.btEmpregadorClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsEmpregador);
end;

procedure TFrmClientes.btFinanceiroClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsFinanceiro);
end;

procedure TFrmClientes.btReferenciasClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsReferencias);
end;

procedure TFrmClientes.btAvalistaClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsAvalista);
end;

procedure TFrmClientes.btRelacClick(Sender: TObject);
begin
    inherited;
    if not DMClientes.C_Familiar.Active then
        begin
            DMClientes.C_Familiar.Close;
            DMClientes.C_Familiar.Open;
        end;
    pc_abas.SetPage(tsRelacionamentos);
end;

procedure TFrmClientes.btCustomClick(Sender: TObject);
begin
    inherited;
    pc_abas.SetPage(tsCustomizados);
end;

procedure TFrmClientes.PC_AbasChange(Sender: TObject);
begin
    inherited;
    ActiveControl := FindNextControl(pc_Abas.ActivePage, true, true, false);
end;

procedure TFrmClientes.DF_NumeroRevendaExit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btCaracteristicas.down := true;
            pc_abas.SetPage(tsCaracteristicas);
        end;
end;

procedure TFrmClientes.TS_DBEdit28Exit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btFinanceiro.down := true;
            pc_abas.SetPage(tsFinanceiro);
        end;
end;

procedure TFrmClientes.TS_DBEdit18Exit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btReferencias.down := true;
            pc_abas.SetPage(tsReferencias);
        end;
end;

procedure TFrmClientes.TS_DBEdit9Exit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btAvalista.down := true;
            pc_abas.SetPage(tsAvalista);
        end;
end;

procedure TFrmClientes.TS_DBEdit71Exit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btRelac.down := true;
            pc_abas.SetPage(tsRelacionamentos);
        end;
end;

procedure TFrmClientes.DBRelacionamentosCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if DBRelacionamentos.GetFieldValue(ANode, 'ID', 0) = DBRelacionamentos.GetFieldValue(ANode, 'relacionamento', 0) then
        AFont.style := [fsbold]
    else if DMClientes.C_TabelaFavorecido.value = DBRelacionamentos.GetFieldValue(ANode, 'relacionamento', 0) then
        AFont.color := clRed;
    //  if DBRelacionamentos.GetFieldValue(ANode,'id',0) = DBRelacionamentos.GetFieldValue(ANode,'relacionamento',0) then
    //    AFont.style := [fsbold];
end;

procedure TFrmClientes.ExcluirRelacionamento1Click(Sender: TObject);
begin
    inherited;
    //  DMClientes.C_FamiliarRelacionamento.AsVariant := null;
    if (DMClientes.C_FamiliarRelacionamento.value = DMClientes.C_TabelaFavorecido.value) then
        begin
            DMClientes.C_Familiar.edit;
            DMClientes.C_FamiliarRelacionamento.AsVariant := null;
            DMClientes.C_Familiar.post;
            DMClientes.C_Familiar.delete;
        end
    else
        DlgMsg.ShowMsg(7001);
end;

procedure TFrmClientes.TrocarOperaesdeSadasparaoutroClientes1Click(
    Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'TROCTRAN') then
        exit;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFavorecido.value]);
    DMProjeto.CriarForm('DlgTrocaTransCliente', self, true);
end;

procedure TFrmClientes.TS_DBRadioGroup1Exit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btEmpregador.down := true;
            pc_abas.SetPage(tsEmpregador);
        end;
end;

procedure TFrmClientes.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    btEndereco.Enabled := DMProjeto.LerPermissao(self.name, 'ENDERECO');
    if not btEndereco.Enabled then
        tsEndereco.TabVisible := false;
    btCaracteristicas.Enabled := DMProjeto.LerPermissao(self.name, 'CARAC');
    btLocaisEntrega.Enabled := DMProjeto.LerPermissao(self.name, 'LOCENT');
    btPessoais.Enabled := DMProjeto.LerPermissao(self.name, 'PESSOAL');
    btEmpregador.Enabled := DMProjeto.LerPermissao(self.name, 'EMPREGADOR');
    btFinanceiro.Enabled := DMProjeto.LerPermissao(self.name, 'FINANCEIRO');
    btReferencias.Enabled := DMProjeto.LerPermissao(self.name, 'REFERENCIA');
    btAvalista.Enabled := DMProjeto.LerPermissao(self.name, 'AVALISTA');
    btRelac.Enabled := DMProjeto.LerPermissao(self.name, 'RELAC');
    btCustom.Enabled := DMProjeto.LerPermissao(self.name, 'CCUSTOM');

    btEquipamentos.Visible := (DMProjeto.Parametro('Servico') = 'S');
    ContratodeServios1.Visible := (DMProjeto.Parametro('Servico') = 'S');
    PropostadeServios1.Visible := (DMProjeto.Parametro('Servico') = 'S');
    ResgatarPontos1.Visible := (DMProjeto.Parametro('ControlePontos') = 'S');

    DF_LimiteCredito.ReadOnly := not DMProjeto.LerPermissao(self.name, 'ALTLIMCRE');

    if DMProjeto.Parametro('FotoSempreCliente') = 'S' then
        begin
            df_foto.visible := true;
            lblCheques.visible := false;
            lblCredito.visible := false;
        end;

    AtualizaParametros;
end;

procedure TFrmClientes.ClientesDesativados1Click(Sender: TObject);
var IDs: string;
begin
    inherited;
    {Processando todas as consultas do menu IR Para}
    IDs := '';
    IDS := ProcessaConsulta(TMenuItem(Sender).Tag, TMenuItem(Sender).Hint);

    // Query das consultas
    with DMClientes do
        begin
            C_Consultas.Close;
            //CamposDaConsulta(False);
            Q_Consultas.SQL.Text := SQLFinal;
            C_Consultas.Open;
            CodigoDaConsulta := C_ConsultasPreCONSULTA.Value;
        end;

    if Localizar(FrmClientes.SelectClientes, 'Where Favorecido In (' + IDs + ')') = 0 then
        exit;
end;

procedure TFrmClientes.ppmOutrosPopup(Sender: TObject);
begin
    inherited;
    ReceberPagamento.Enabled := DMClientes.bAlteracao;
    FazerOperao1.Enabled := ReceberPagamento.Enabled;
end;

procedure TFrmClientes.ReceberPagamentoClick(Sender: TObject);
begin
    inherited;
    if DMClientes.C_TabelacfSaldo.Value > 0 then
        begin
            DMProjeto.FecharForm('DlgDepositos');
            DMProjeto.SetParametrosForm([null, DMClientes.C_TabelaFavorecido.Value, '']);
            DMProjeto.CriarForm('DlgDepositos', self, true);
        end
    else
        begin
            DMProjeto.FecharForm('DlgDepositosInstantaneos');
            DMProjeto.SetParametrosForm([null, DMClientes.C_TabelaFavorecido.Value]);
            DMProjeto.CriarForm('DlgDepositosInstantaneos', self, true);
        end;
end;

procedure TFrmClientes.dfQtdPeriodoExit(Sender: TObject);
begin
    inherited;
    if ActiveControl = DF_Codigo then
        begin
            btLocaisEntrega.down := true;
            pc_abas.SetPage(tsLocaisEntrega);
        end;
end;

procedure TFrmClientes.DBRelacionamentosNOMEButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
var nID: integer;
begin
    inherited;
    nID := 0;
    if AbsoluteIndex = 1 then
        begin
            DMProjeto.SetParametrosForm([DBRelacionamentos.GetFieldValue(DBRelacionamentos.FocusedNode, 'ID', 0), DMClientes.C_TabelaFavorecido.Value,
                DMClientes.C_TabelaNOME.Value, DMClientes.C_TabelaSEXO.Value,
                    DMClientes.C_TabelaENDERECO.Value, DMClientes.C_TabelaCIDADE.Value, DMClientes.C_TabelaUF.Value, DMCLientes.C_TabelaCEP.Value]);
            DMProjeto.CriarForm('FrmRelacionamentos', Self, True);
            if DMProjeto.QtdParametrosform > 0 then
                nID := DMProjeto.GetParametrosForm(0);
            DMProjeto.LimparParametrosForm;
            if nID > 0 then
                DBRelacionamentos.TS_ID := nID;
            //C_FamiliarID.value := nID;
        end;

end;

procedure TFrmClientes.Estimate1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEstimates', self, true);
end;

procedure TFrmClientes.SalesOrder1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmSalesOrder', self, true);
end;

procedure TFrmClientes.Invoice1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmInvoices', self, true);
end;

procedure TFrmClientes.Statements1Click(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            if DMClientes.bAlteracao then
                begin
                    Grid.DataSource := DMClientes.C_TabelaDS;
                    SetParametrosForm([null, Grid.Distinct('Favorecido'), Grid.Distinct('Nome')]);
                    Grid.DataSource := nil;
                    CriarForm('DlgStatements', self, true);
                end;
        end;
end;

procedure TFrmClientes.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
var ID: integer;
begin
    inherited;
    if DMClientes.bAlteracao and (pos(UpperCase(LastDataObject.TableName), 'DEPOSITOS,OPERACOESFINANCEIRAS,RETIRADAS') > 0) then
        begin
            ID := DMClientes.C_TabelaFavorecido.Value;
            DMClientes.C_Tabela.Close;
            DMClientes.C_Tabela.Open;
            DMClientes.C_Tabela.Locate('Favorecido', ID, []);
        end;
end;

procedure TFrmClientes.Parametros1Click(Sender: TObject);
begin
    inherited;
    AtualizaParametros;
end;

procedure TFrmClientes.Outros1Click(Sender: TObject);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmClientes.FormComponentBeforeMoveRecord(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    {Verificando se deve salvar o registro}
    with DMClientes do
        begin
            if C_Familiar.Active then
                begin
                    if C_Familiar.State in [dsEdit, dsInsert] then
                        C_Familiar.Post;
                    if (C_Familiar.ChangeCount > 0) then
                        begin
                            if C_Tabela.State in [dsEdit, dsInsert] then
                                C_Tabela.post;
                            btGravarClick(self);
                        end;
                end;
        end;
    with DMClientes do
        begin
            if C_LocaisEntrega.Active then
                begin
                    if C_LocaisEntrega.State in [dsEdit, dsInsert] then
                        C_LocaisEntrega.Post;
                    if (C_LocaisEntrega.ChangeCount > 0) then
                        begin
                            if C_Tabela.State in [dsEdit, dsInsert] then
                                C_Tabela.post;
                            btGravarClick(self);
                        end;
                end;
        end;
end;

procedure TFrmClientes.DBRelacionamentosTS_AposLocalizar(Sender: TObject);
var sNome: string;
begin
    inherited;
    DMClientes.C_FamiliarNome.value := DMProjeto.C_LocalizarFav.FieldByName('nome').asstring;
    DMClientes.C_FamiliarSSN.value := DMProjeto.C_LocalizarFav.FieldByName('ssn').asstring;
    DMClientes.C_FamiliarGrauRelac.value := DMProjeto.C_LocalizarFav.FieldByName('graurelac').asinteger;
    if (DMProjeto.C_LocalizarFav.FieldByName('relacionamento').asinteger > 0) and (DMProjeto.C_LocalizarFav.FieldByName('relacionamento').asinteger <> DMProjeto.C_LocalizarFav.FieldByName('favorecido').asinteger) then
        begin
            DMProjeto.Q_ComandoSQL.SQL.text := 'select nome from favorecidos where favorecido = :fav';
            DMProjeto.Q_ComandoSQL.params[0].asinteger := DMProjeto.C_LocalizarFav.FieldByName('relacionamento').asinteger;
            DMProjeto.Q_ComandoSQL.open;
            sNome := DMProjeto.Q_ComandoSQL.fieldbyname('nome').asstring;
            DlgMsg.ShowMsg(7002, [sNome]);
        end;
end;

procedure TFrmClientes.FormComponentBeforeSave(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if DMClientes.C_TabelaCodigo.Value = '' then
        DMClientes.GeraCodigo;
end;

procedure TFrmClientes.dfCNPJEnter(Sender: TObject);
begin
    inherited;
    DMClientes.C_TabelaCPF_CNPJ.EditMask := '';
end;

procedure TFrmClientes.dfCNPJExit(Sender: TObject);
begin
    inherited;
    if length(TTS_DBEdit(Sender).Text) = 11 then
        DMClientes.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; '
    else if length(TTS_DBEdit(Sender).Text) = 14 then
        DMClientes.C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmClientes.TS_DBMaskEdit5Exit(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesConjugue_SSN.EditMask := '999.999.999-99;0; '
end;

procedure TFrmClientes.TS_DBMaskEdit5Enter(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesConjugue_SSN.EditMask := '';
end;

procedure TFrmClientes.TS_DBMaskEdit2Exit(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesSSN_Aval.EditMask := '999.999.999-99;0; ';
end;

procedure TFrmClientes.TS_DBMaskEdit2Enter(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesSSN_Aval.EditMask := '';
end;

procedure TFrmClientes.TS_DBEdit73Enter(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesCONJUGUE_SSN_AVAL.EditMask := '';
end;

procedure TFrmClientes.TS_DBEdit73Exit(Sender: TObject);
begin
    inherited;
    DMClientes.C_ClientesCONJUGUE_SSN_AVAL.EditMask := '999.999.999-99;0; ';
end;

procedure TFrmClientes.TS_Label49Click(Sender: TObject);
begin
    inherited;
    df_foto.visible := true;
    lblCheques.visible := false;
    lblCredito.visible := false;
end;

procedure TFrmClientes.DF_FotoClick(Sender: TObject);
begin
    inherited;
    df_foto.visible := false;
    lblCheques.visible := true;
    lblCredito.visible := true;
end;

procedure TFrmClientes.btReceitaClick(Sender: TObject);
var nModal: integer;
begin
    inherited;
    DMClientes.C_Receitas.Locate('FAVORECIDO', DMClientes.C_TabelaFavorecido.AsString, []);
    DlgReceitasFav := TDlgReceitasFav.create(self);
    DLGReceitasFav.ShowModal;
    DlgReceitasFav.free;
end;

procedure TFrmClientes.Etiquetas1Click(Sender: TObject);
var nColunas: string;
begin
    inherited;
    nColunas := '2';
    nColunas := InputBox('Informe o Numero de Colunas de Sua Etiqueta', 'Etiquetas 2 ou 3 Colunas', nColunas);
    if nColunas = '2' then
        ZREtq2Colunas.Preview
    else
        ppEtiquetas.Print;
end;

procedure TFrmClientes.btEquipamentosClick(Sender: TObject);
begin
    inherited;
    if (DMProjeto.Parametro('AssistenciaTecnica') = 'S') then
        begin
            DMClientes.C_AssistenciaEquip.Close;
            DMClientes.Q_AssistenciaEquip.ParamByName('FAVORECIDO').Value :=
                DMClientes.C_TabelaFavorecido.value;
            DMClientes.C_AssistenciaEquip.Open;
            pc_abas.SetPage(tsAssistenciaEquipamento);
        end
    else
        pc_abas.SetPage(tsEquipamentos);
    btEquipamentos.down := true;
end;

procedure TFrmClientes.DF_DataNascValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
var
    idade: integer;
begin
    inherited;
    idade := YearsBetween(now, DF_DataNasc.Date);

    if (DF_DataNasc.Date < 0) then
        begin
            lbDescIdade.Visible := false;
            lbIdade.Visible := false;
        end
    else
        begin
            lbDescIdade.Visible := True;
            lbIdade.Visible := True;
            lbIdade.Caption := intToStr(idade);
        end;
end;

procedure TFrmClientes.ContratodeServios1Click(Sender: TObject);
var sQtd, sDescMarcas: string;
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            sQtd := IntToStr(GridEquipamento.Count) + ' (' + trim(Util2.Extenso2(GridEquipamento.Count)) + ')';
            try
                sDescMarcas := '';
                DMClientes.C_Equipamentos.DisableControls;
                DMClientes.C_Equipamentos.First;
                while not DMClientes.C_Equipamentos.EOF do
                    begin
                        if IndiceString(sDescMarcas, ',', DMClientes.C_EquipamentoslkMarca.AsString) < 1 then
                            sDescMarcas := Cexp(DMClientes.C_EquipamentoslkMarca.AsString, ',') + sDescMarcas;
                        DMClientes.C_Equipamentos.Next;
                    end;
            finally
                DMClientes.C_Equipamentos.EnableControls;
            end;

            DMProjeto.ImprimirRecibo(24, ' f.favorecido = ' + DMClientes.C_TabelaFAVORECIDO.AsString,
                'qtd=' + sQtd + ';descmarcas=' + sDescMarcas);
        end;
end;

procedure TFrmClientes.PropostadeServios1Click(Sender: TObject);
var sDescMarcas, sGrupos, sQtd: string;
begin
    inherited;
    if DMClientes.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            try
                sDescMarcas := '';
                DMClientes.C_Equipamentos.DisableControls;
                DMClientes.C_Equipamentos.First;
                while not DMClientes.C_Equipamentos.EOF do
                    begin
                        if IndiceString(sDescMarcas, ',', DMClientes.C_EquipamentoslkMarca.AsString) < 1 then
                            sDescMarcas := Cexp(DMClientes.C_EquipamentoslkMarca.AsString, ',') + sDescMarcas;
                        DMClientes.C_Equipamentos.Next;
                    end;
            finally
                DMClientes.C_Equipamentos.EnableControls;
            end;

            DMProjeto.Q_SQL.Close;
            DMProjeto.Q_SQL.SQL.Text := 'select gc.descricao, count(f.favorecido) as qtd ' +
                'from favorecidos f ' +
                'inner join gruposcliente gc on f.grupocliente = gc.grupocliente ' +
                'group by gc.descricao ';
            DMProjeto.Q_SQL.Open;
            DMProjeto.Q_SQL.First;
            sGrupos := '';
            while not DMProjeto.Q_SQL.EOF do
                begin
                    sGrupos := Cexp(DMProjeto.Q_SQL.Fields[1].AsString + Chr(32) + DMProjeto.Q_SQL.Fields[0].AsString, ',') +
                        sGrupos;
                    DMProjeto.Q_SQL.Next;
                end;
            DMProjeto.Q_SQL.Close;
            DMProjeto.Q_SQL.SQL.Text := 'select count(*) from equipamentos eq ' +
                'inner join favorecidos f on eq.favorecido = f.favorecido ' +
                'where f.desativado = ''N'' ';
            DMProjeto.Q_SQL.Open;
            sQtd := IntToStr(DMProjeto.Q_SQL.Fields[0].AsInteger);
            DMProjeto.Q_SQL.Close;
            DMProjeto.ImprimirRecibo(25, ' f.favorecido = ' + DMClientes.C_TabelaFAVORECIDO.AsString,
                'descmarcas=' + sDescMarcas + ';gruposcliente=' + sGrupos +
                ';qtdequip=' + sQtd);
        end;
end;

procedure TFrmClientes.ResgatarPontos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFAVORECIDO.Value, 1 {TipoFav}]);
    DMProjeto.CriarForm('FrmPontuacaoResgates', self, false);
end;

procedure TFrmClientes.InformaesFinanceiras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMClientes.C_TabelaFAVORECIDO.AsInteger, 1 {TipoFav}]);
    DMProjeto.CriarForm('DlgInformacoesFinanceiras', Self, true);

end;

procedure TFrmClientes.ClearImageList;
var
    I: integer;
begin
    {Free each bitmap and then clear list}
    for i := 0 to ImageList.Count - 1 do
        TBitmap(ImageList[i]).Free;
    ImageList.Clear;
end;

procedure TFrmClientes.CapturarFoto1Click(Sender: TObject);
var jpg: TJpegImage;
begin
    inherited;
    {If user is already using Status menu}
    if Twain.LibraryLoaded then
        //ItemStatus5Click(ItemStatus5)
    else
        begin
            {Load library, source manager and source}
            Twain.LoadLibrary;
            Twain.LoadSourceManager;
            Twain.Source[CurrentSource].Loaded := TRUE;
            {Enable source}
            Twain.Source[CurrentSource].TransferMode := Self.TransferMode;
            ClearImageList; {Clear list of images}
            Twain.Source[CurrentSource].EnableSource(True, FALSE);
            while Twain.Source[CurrentSource].Enabled do
                Application.ProcessMessages;
            {Unload library}
            Twain.UnloadLibrary;
        end; {if Twain.SourceLoaded}
    jpg := TJpegImage.Create;
    jpg.Assign(Image.Picture.Bitmap);
    if DF_Codigo.Text = '' then DMClientes.GeraCodigo;
    jpg.SaveToFile(DMProjeto.ImgPath + DF_Codigo.Text + '.jpg');
    jpg.Free;
    //  ModalResult := mrOk;
    if not (DMClientes.C_Tabela.State in [dsEdit, dsInsert]) then
        DMClientes.C_Tabela.Edit;
    DMClientes.C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor(DMProjeto.ImgPath + DF_Codigo.Text + '.jpg');
    if FileExists(DMProjeto.ImgPath + DMClientes.C_TabelaLogotipo.Value) then
        DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + DMClientes.C_TabelaLogotipo.Value);
end;

procedure TFrmClientes.TwainSourceFileTransfer(Sender: TObject;
    const Index: Integer; Filename: TW_STR255; Format: TTwainFormat;
    var Cancel: Boolean);
var
    LoadFileName: string;
begin
    {Set file}
    LoadFileName := includetrailingbackslash(getcurrentdir) + 'picture.bmp';
    {Load and add to list}
    ImageList.Add(TBitmap.Create);
    TBitmap(ImageList[ImageList.Count - 1]).LoadFromFile(LoadFilename);
    DeleteFile(LoadFileName);
    {In case it's the first image, display}
    if ImageList.Count = 1 then SelectFirst;
end;

procedure TFrmClientes.TwainSourceSetupFileXfer(Sender: TObject;
    const Index: Integer);
begin
    inherited;
    Twain.Source[Index].SetupFileTransfer(
        includetrailingbackslash(getcurrentdir) + 'picture.bmp', tfBmp);

end;

procedure TFrmClientes.TwainTwainAcquire(Sender: TObject;
    const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
    inherited;
    {An image has being acquired, add to list}
    ImageList.Add(Tbitmap.Create);
    TBitmap(ImageList[ImageList.Count - 1]).Assign(Image);
    {In case it's the first image, display}
    if ImageList.Count = 1 then SelectFirst;
end;

procedure TFrmClientes.SelectFirst;
begin
    Image.Picture.Assign(TBitmap(ImageList[0]));
    CurrentImage := 0;
    Image.SetBounds(0, 0, 0, 0);
end;

procedure TFrmClientes.btGravarClick(Sender: TObject);
begin

    if ((DMClientes.C_Tabela.FieldByName('Favorecido').AsInteger = 0) or
        (DMClientes.C_Tabela.FieldByName('CONSUMIDORFINAL').OldValue = 'S')) then
        begin
            DlgMsg.ShowMsg(50, ['O Consumidor Final n�o Pode ser Alterado !!!']);
            Exit;
        end;

    inherited;
end;

procedure TFrmClientes.DF_Fone1KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #8]) then
        begin
            DlgMsg.ShowMsg(50, ['Para o campo Fone 1, utilizar somente n�meros!']);
            key := #0;
        end;
end;

procedure TFrmClientes.TS_DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key in ['&', '@'] then
        begin
            DlgMsg.ShowMsg(50, ['Para o campo Raz�o Social, n�o utilizar os seguintes caracteres:' +
                #13 + '@' +
                    #13 + '&']);
            key := #0;
        end;
end;

procedure TFrmClientes.dfNumeroValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
var
    nroCliente: string;
begin
    inherited;
    nroCliente := Trim(SoLetrasNumeros(UpperCase(dfNumero.Text)));
    if Length(nroCliente) = 0 then
        dfNumero.Text := 'SN'
    else
        dfNumero.Text := nroCliente;
end;

procedure TFrmClientes.dfNumeroKeyPress(Sender: TObject; var Key: Char);
var
    charFone: Char;
begin
    inherited;
    key := UpCase(key);
    if not (key in ['0'..'9']) and not (key in ['S', 'N']) then
        key := #0;
end;

procedure TFrmClientes.DF_CEPValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
var
    cepCliente: string;
begin
    inherited;
    cepCliente := Trim(SoLetrasNumeros(DF_CEP.Text));

    if Length(cepCliente) <> 8 then
        Application.MessageBox('O CEP digitado n�o � v�lido, favor verificar.', 'Aviso', MB_ICONEXCLAMATION);

end;

procedure TFrmClientes.BuscaCEP1Click(Sender: TObject);
begin
  inherited;
  dmClientes.SetCEP(DF_CEP.Text);
end;

procedure TFrmClientes.sbCEPClick(Sender: TObject);
begin
  inherited;
  dmClientes.SetCEP(DF_CEP.Text);
end;

procedure TFrmClientes.SaldodeCrdito1Click(Sender: TObject);
begin
  inherited;

    { Felipe - Atribuindo informa��es aos campos do relat�rio (02/03/2016) }
    zrNomeEmpresa.Caption := DMProjeto.sNomeEmpresa;
    zrEnderecoEmpresa.Caption := DMProjeto.sEnderecoEmpresa;
    zrCidadeEmpresa.Caption := DMProjeto.sCidadeEmpresa + ' - ' + DMProjeto.sUFEmpresa;
    zrFoneEmpresa.Caption := 'Fone: ' + DMProjeto.sFone1Empresa;
    zrData.Caption := FormatDateTime('dd/mm/yyyy', DMProjeto.getDataServidor);

    zrSaldoCliente.Preview;
end;

end.

