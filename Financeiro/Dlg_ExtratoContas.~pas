unit Dlg_ExtratoContas;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, ppCtrls, ppReport, ppSubRpt, ppBands, ppVar,
    ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppComm, ppRelatv, ppProd, ppTypes,
    StdCtrls, TS_RadioButton, CheckLst,
    TS_CheckListBox, DBCtrls, TS_DBLookupComboBox, TS_Label, ppDevice,
    TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu, ExtCtrls,
    TS_SpeedButton, TS_Panel, Db, ppDB,
    ppDBPipe, Provider, IBCustomDataSet, IBQuery, DBClient, TS_CheckBox,
    ppMemo, ComCtrls, TS_DateTimePicker, dxfProgressBar, TS_Bevel,
    IBUpdateSQL, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
    FormsComponent, TS_Image, dxfLabel, TS_MaxPanel,
    teCtrls, TS_EffectsPanel, TS_PopupEdit, Dlg_PopupContas, Buttons, Variants,
    BTOdeum, Placemnt, TS_Shape;

type
    TDlgExtratoContas = class(TFrmModeloCadastros)
        TS_Panel1: TTS_Panel;
        TS_Label1: TTS_Label;
        lbTipoTransacao: TTS_Label;
        Label2: TTS_Label;
        Label3: TTS_Label;
        TS_Label3: TTS_Label;
        clbTipoTransacao: TTS_CheckListBox;
        rdCronologico: TTS_RadioButton;
        rdTransacional: TTS_RadioButton;
        ppExtratoCronologico: TppReport;
        ppTitleBand1: TppTitleBand;
        ppRegion1: TppRegion;
        lbTituloRelatorio: TppLabel;
        lbPeriodo: TppLabel;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        lbSaldoAnt: TppLabel;
        lbTotCreditos: TppLabel;
        lbTotalDebitos: TppLabel;
        lbSaldoAtual: TppLabel;
        ppHeaderBand1: TppHeaderBand;
        ppLabel7: TppLabel;
        ppRegion2: TppRegion;
        ppLabel20: TppLabel;
        ppLabel21: TppLabel;
        ppRegion3: TppRegion;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppLabel13: TppLabel;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine7: TppLine;
        ppDetailBand1: TppDetailBand;
        dbtdata: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        dbtSaldo: TppVariable;
        ppFooterBand1: TppFooterBand;
        ppSummaryBand1: TppSummaryBand;
        ppShape1: TppShape;
        ppLabel17: TppLabel;
        ppLabel19: TppLabel;
        ppLabel18: TppLabel;
        ppSaldoDisponivel: TppLabel;
        ChequesACompensar: TppSubReport;
        ppChildReport1: TppChildReport;
        ppTitleBand2: TppTitleBand;
        ppLabel23: TppLabel;
        ppLabel24: TppLabel;
        ppLabel25: TppLabel;
        ppLabel26: TppLabel;
        ppLabel27: TppLabel;
        ppLabel28: TppLabel;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine10: TppLine;
        ppLine11: TppLine;
        ppLine12: TppLine;
        ppDetailBand2: TppDetailBand;
        ppDBText7: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        dbtDia: TppDBText;
        ppSummaryBand2: TppSummaryBand;
        ppDBCalc2: TppDBCalc;
        ChequesADepositar: TppSubReport;
        ppChildReport3: TppChildReport;
        ppLabel35: TppLabel;
        ppLabel36: TppLabel;
        ppLabel37: TppLabel;
        ppLabel38: TppLabel;
        ppLabel39: TppLabel;
        ppLabel40: TppLabel;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppLine20: TppLine;
        ppLine21: TppLine;
        ppLine22: TppLine;
        ppDetailBand4: TppDetailBand;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppDBText20: TppDBText;
        ppDBText21: TppDBText;
        dbtVenc1: TppDBText;
        ppDBCalc3: TppDBCalc;
        dbtSaldoAtual: TppVariable;
        Q_ChqCompDS: TDataSource;
        Q_ChqDepDS: TDataSource;
        Q_ChqDep: TIBQuery;
        IBStringField4: TIBStringField;
        DateField4: TDateField;
        IBStringField5: TIBStringField;
        Q_ChqDepVALOR: TIBBCDField;
        Q_ChqDepNUMCHEQUE: TIntegerField;
        ppChqDep: TppDBPipeline;
        Q_ChqComp: TIBQuery;
        Q_ChqCompVENCIMENTO: TDateField;
        Q_ChqCompCHEQUENOMINAL: TIBStringField;
        Q_ChqCompNOME: TIBStringField;
        Q_ChqCompDATA: TDateField;
        Q_ChqCompNUMCHEQUE: TIntegerField;
        Q_ChqCompVALOR: TIBBCDField;
        ppChqComp: TppDBPipeline;
        ppCronologico: TppDBPipeline;
        Q_Cronologico: TIBQuery;
        Q_CronologicoID: TIntegerField;
        Q_CronologicoCONTA: TIntegerField;
        Q_CronologicoDATA: TDateField;
        Q_CronologicoTIPOTRANSACAO: TIBStringField;
        Q_CronologicoNOME: TIBStringField;
        Q_CronologicoSIGLA: TIBStringField;
        Q_CronologicoNUMCHEQUE: TIntegerField;
        regCab: TppRegion;
        ppShape2: TppShape;
        ppShape3: TppShape;
        ppLine23: TppLine;
        ppShape4: TppShape;
        ppShape5: TppShape;
        ppLine24: TppLine;
        ppLine25: TppLine;
        ppLine26: TppLine;
        ppLine27: TppLine;
        ppLine28: TppLine;
        ppLine29: TppLine;
        ppLine30: TppLine;
        ppLabel6: TppLabel;
        ppLimiteCredito: TppLabel;
        ppLine33: TppLine;
        ppLine34: TppLine;
        ppLine35: TppLine;
        ppLine36: TppLine;
        ppLine37: TppLine;
        ppLine40: TppLine;
        ppLine41: TppLine;
        ppLine42: TppLine;
        ppLine43: TppLine;
        ppLine44: TppLine;
        Q_CronologicoVALOR: TIBBCDField;
        ckbACompensar: TTS_CheckBox;
        ckbADepositar: TTS_CheckBox;
        ppTitleBand4: TppTitleBand;
        ppSummaryBand4: TppSummaryBand;
        ppDBCalc1: TppDBCalc;
        ppExtratoTransacional: TppReport;
        ppHeaderBand2: TppHeaderBand;
        ppDetailBand5: TppDetailBand;
        ppFooterBand2: TppFooterBand;
        ppRegion4: TppRegion;
        ppShape6: TppShape;
        ppShape7: TppShape;
        ppShape8: TppShape;
        ppShape9: TppShape;
        ppLabel22: TppLabel;
        ppLabel41: TppLabel;
        ppLabel42: TppLabel;
        ppLabel43: TppLabel;
        ppLabel44: TppLabel;
        ppLabel45: TppLabel;
        ppLabel46: TppLabel;
        ppLabel47: TppLabel;
        ppLabel48: TppLabel;
        ppLabel49: TppLabel;
        ppLabel50: TppLabel;
        ppLine45: TppLine;
        regCab2: TppRegion;
        Q_Transacional: TIBQuery;
        Q_TransacionalDS: TDataSource;
        ppTransacional: TppDBPipeline;
        Q_CronoDS: TDataSource;
        Q_TransacionalID: TIntegerField;
        Q_TransacionalCONTA: TIntegerField;
        Q_TransacionalDATA: TDateField;
        Q_TransacionalVALOR: TIBBCDField;
        Q_TransacionalTIPOTRANSACAO: TIBStringField;
        Q_TransacionalNUMCHEQUE: TIntegerField;
        Q_TransacionalHISTORICO: TIBStringField;
        Q_TransacionalNOME: TIBStringField;
        Q_TransacionalSIGLA: TIBStringField;
        ppDBText23: TppDBText;
        ppLine46: TppLine;
        ppLine47: TppLine;
        ppSubReport1: TppSubReport;
        ppChildReport4: TppChildReport;
        ppTipoTran: TppDBPipeline;
        Q_TipoTran: TIBQuery;
        Q_TipoTranDS: TDataSource;
        Q_TipoTranTIPOOPERACAO: TIntegerField;
        Q_TipoTranDESCRICAO: TIBStringField;
        Q_TipoTranTOTAL: TIBBCDField;
        ppDBText24: TppDBText;
        ppDetailBand6: TppDetailBand;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppDBText27: TppDBText;
        Q_TransacionalFORMADEPAGAMENTO: TIBStringField;
        ppDBText28: TppDBText;
        ppDBText29: TppDBText;
        ppTitleBand5: TppTitleBand;
        regCabColunas: TppRegion;
        ppLabel54: TppLabel;
        ppLabel55: TppLabel;
        ppLabel56: TppLabel;
        ppLabel57: TppLabel;
        ppLabel60: TppLabel;
        ppLabel53: TppLabel;
        ppLine48: TppLine;
        ppLine49: TppLine;
        ppLine50: TppLine;
        ppLine51: TppLine;
        ppLine52: TppLine;
        ppLine53: TppLine;
        ppSummaryBand6: TppSummaryBand;
        ppLine54: TppLine;
        ppLabel58: TppLabel;
        lbSaldoFinal: TppLabel;
        ppShape11: TppShape;
        ppLabel59: TppLabel;
        lbSaldoConta: TppLabel;
        ppLabel8: TppLabel;
        ppShape10: TppShape;
        ppShape13: TppShape;
        lbPreDatados: TppLabel;
        ppShape14: TppShape;
        ppShape15: TppShape;
        ppShape12: TppShape;
        ppShape16: TppShape;
        ppShape17: TppShape;
        ppLabel61: TppLabel;
        ppLabel62: TppLabel;
        ppLabel63: TppLabel;
        lbPre30: TppLabel;
        lbPre60: TppLabel;
        lbPreMaior60: TppLabel;
        regChequePre: TppRegion;
        Q_ChqCompFORMAPAGAMENTO: TIBStringField;
        ppGroup1: TppGroup;
        ppGroupHeaderBand1: TppGroupHeaderBand;
        ppGroupFooterBand1: TppGroupFooterBand;
        ppDBText13: TppDBText;
        ppDBCalc4: TppDBCalc;
        Q_TiposTransacoes: TIBQuery;
        Q_TiposTransacoesORIGEM: TIntegerField;
        Q_TiposTransacoesDESCRICAO: TIBStringField;
        dtDataI: TTS_DateTimePicker;
        dtDataF: TTS_DateTimePicker;
        ppShape18: TppShape;
        ppShape19: TppShape;
        regChequePre2: TppRegion;
        ppShape20: TppShape;
        ppShape21: TppShape;
        ppShape22: TppShape;
        ppShape23: TppShape;
        ppShape24: TppShape;
        ppLabel9: TppLabel;
        ppLabel29: TppLabel;
        ppShape25: TppShape;
        ppLabel30: TppLabel;
        ppLabel31: TppLabel;
        ppShape26: TppShape;
        ppLabel32: TppLabel;
        ppLabel33: TppLabel;
        ppShape27: TppShape;
        ppLabel34: TppLabel;
        ppLabel51: TppLabel;
        ppSummaryBand3: TppSummaryBand;
        SubChequesACompensar: TppSubReport;
        ppChildReport2: TppChildReport;
        SubChequesADepositar: TppSubReport;
        ppChildReport5: TppChildReport;
        ppTitleBand3: TppTitleBand;
        ppShape28: TppShape;
        ppLabel52: TppLabel;
        ppLabel64: TppLabel;
        ppLabel65: TppLabel;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppLabel68: TppLabel;
        ppLine13: TppLine;
        ppLine14: TppLine;
        ppLine15: TppLine;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLine31: TppLine;
        ppLine32: TppLine;
        ppLine38: TppLine;
        ppLine39: TppLine;
        ppLine55: TppLine;
        ppDetailBand3: TppDetailBand;
        ppDBText14: TppDBText;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText30: TppDBText;
        ppSummaryBand5: TppSummaryBand;
        ppDBCalc5: TppDBCalc;
        ppGroup2: TppGroup;
        ppGroupHeaderBand2: TppGroupHeaderBand;
        ppDBText31: TppDBText;
        ppGroupFooterBand2: TppGroupFooterBand;
        ppDBCalc6: TppDBCalc;
        ppTitleBand6: TppTitleBand;
        ppShape29: TppShape;
        ppLabel69: TppLabel;
        ppLabel70: TppLabel;
        ppLabel71: TppLabel;
        ppLabel72: TppLabel;
        ppLabel73: TppLabel;
        ppLabel74: TppLabel;
        ppLine56: TppLine;
        ppLine57: TppLine;
        ppLine58: TppLine;
        ppLine59: TppLine;
        ppLine60: TppLine;
        ppLine61: TppLine;
        ppLine62: TppLine;
        ppLine63: TppLine;
        ppLine64: TppLine;
        ppLine65: TppLine;
        ppDetailBand7: TppDetailBand;
        ppDBText32: TppDBText;
        ppDBText33: TppDBText;
        ppDBText34: TppDBText;
        ppDBText35: TppDBText;
        ppDBText36: TppDBText;
        ppSummaryBand7: TppSummaryBand;
        ppDBCalc7: TppDBCalc;
        ppDBCalc8: TppDBCalc;
        ppShape30: TppShape;
        Q_CronologicoIDGERADOR: TIntegerField;
        Q_CronologicoTIPOOPERACAO: TIntegerField;
        ppShape31: TppShape;
        Q_TransacionalIDGERADOR: TIntegerField;
        Q_TransacionalTIPOOPERACAO: TIntegerField;
        cmbContas: TTS_PopupEdit;
        Q_CronologicoHISTORICO: TIBStringField;
        Q_ChqDepVENCIMENTO: TDateField;
        regLimiteCredito: TppRegion;
        SubCartoesAReceber: TppSubReport;
        ppChildReport6: TppChildReport;
        Q_CartoesAReceber: TIBQuery;
        Q_CartoesAReceberOPERACAO: TIntegerField;
        Q_CartoesAReceberDATA: TDateField;
        Q_CartoesAReceberDESCFORMAPAGAMENTO: TIBStringField;
        Q_CartoesAReceberVALOROPERACAO: TIBBCDField;
        Q_CartoesAReceberRECEBIDO: TDateField;
        dbCartoes: TppDBPipeline;
        Q_CartoesDS: TDataSource;
        ppTitleBand7: TppTitleBand;
        ppDetailBand8: TppDetailBand;
        ppSummaryBand8: TppSummaryBand;
        ppShape32: TppShape;
        ppLabel75: TppLabel;
        ppLabel76: TppLabel;
        ppLabel77: TppLabel;
        ppLabel78: TppLabel;
        ppLabel79: TppLabel;
        ppLabel80: TppLabel;
        ppLine66: TppLine;
        ppLine67: TppLine;
        ppLine68: TppLine;
        ppLine69: TppLine;
        ppLine70: TppLine;
        ppLine71: TppLine;
        ppLine72: TppLine;
        ppLine73: TppLine;
        ppLine74: TppLine;
        ppLine75: TppLine;
        Q_CartoesAReceberHISTORICO: TIBStringField;
        ppDBText37: TppDBText;
        ppDBText38: TppDBText;
        ppDBText39: TppDBText;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppDBCalc9: TppDBCalc;
        ckbCartoesAReceber: TTS_CheckBox;
        SubCartoesAReceber2: TppSubReport;
        ppChildReport7: TppChildReport;
        ppTitleBand8: TppTitleBand;
        ppDetailBand9: TppDetailBand;
        ppSummaryBand9: TppSummaryBand;
        ppShape33: TppShape;
        ppLabel81: TppLabel;
        ppLabel82: TppLabel;
        ppLabel83: TppLabel;
        ppLabel84: TppLabel;
        ppLabel85: TppLabel;
        ppLabel86: TppLabel;
        ppLine76: TppLine;
        ppLine77: TppLine;
        ppLine78: TppLine;
        ppLine79: TppLine;
        ppLine80: TppLine;
        ppLine81: TppLine;
        ppLine82: TppLine;
        ppLine83: TppLine;
        ppLine84: TppLine;
        ppLine85: TppLine;
        ppDBText42: TppDBText;
        ppDBText43: TppDBText;
        ppDBText44: TppDBText;
        ppDBText45: TppDBText;
        ppDBText46: TppDBText;
        ppDBCalc10: TppDBCalc;
        Q_ChqDepGRUPO: TIntegerField;
        ppGroup3: TppGroup;
        ppGroupHeaderBand3: TppGroupHeaderBand;
        ppGroupFooterBand3: TppGroupFooterBand;
        Q_ChqCompGRUPO: TIntegerField;
        ppGroup4: TppGroup;
        ppGroupHeaderBand4: TppGroupHeaderBand;
        ppGroupFooterBand4: TppGroupFooterBand;
        Q_CartoesAReceberGRUPO: TIntegerField;
        ppGroup5: TppGroup;
        ppGroupHeaderBand5: TppGroupHeaderBand;
        ppGroupFooterBand5: TppGroupFooterBand;
        ppGroup6: TppGroup;
        ppGroupHeaderBand6: TppGroupHeaderBand;
        ppGroupFooterBand6: TppGroupFooterBand;
        ppGroup7: TppGroup;
        ppGroupHeaderBand7: TppGroupHeaderBand;
        ppGroupFooterBand7: TppGroupFooterBand;
        ppGroup8: TppGroup;
        ppGroupHeaderBand8: TppGroupHeaderBand;
        ppGroupFooterBand8: TppGroupFooterBand;
        Q_TransacionalGRUPO: TIntegerField;
        ppGroup9: TppGroup;
        ppGroupHeaderBand9: TppGroupHeaderBand;
        ppGroupFooterBand9: TppGroupFooterBand;
        Q_ChqDepIDDOC: TIntegerField;
        TS_Panel2: TTS_Panel;
        Barra: TdxfProgressBar;
        Q_ChqCompIDDOC: TIntegerField;
        ppDBCalc11: TppDBCalc;
        Q_PorFormaPagamento: TIBQuery;
        subPorFormaPagamento: TppSubReport;
        ppChildReport8: TppChildReport;
        ppPorFormaPagamento: TppDBPipeline;
        Q_PorFormaPagamentoDS: TDataSource;
        ppTitleBand9: TppTitleBand;
        ppDetailBand10: TppDetailBand;
        ppSummaryBand10: TppSummaryBand;
        ppLabel87: TppLabel;
        ppShape34: TppShape;
        ppShape35: TppShape;
        ppShape36: TppShape;
        ppLabel88: TppLabel;
        ppLabel89: TppLabel;
        ppDBText22: TppDBText;
        ppDBText47: TppDBText;
        ppDBText48: TppDBText;
        ppLine86: TppLine;
        ppLine87: TppLine;
        ppLine88: TppLine;
        ppLine89: TppLine;
        ppLine90: TppLine;
        Q_PorFormaPagamentoDESCRICAO: TIBStringField;
        Q_PorFormaPagamentoCREDITOS: TIBBCDField;
        Q_PorFormaPagamentoDEBITOS: TIBBCDField;
        Q_CronologicoFAVORECIDO: TIntegerField;
        Q_CronologicoIDDOC: TIntegerField;
        TS_Shape1: TTS_Shape;
        ckbMarcar: TTS_CheckBox;
        lbMarcar: TTS_Label;
        procedure btGravarClick(Sender: TObject);
        procedure dbtSaldoAtualGetText(Sender: TObject;
            var Text: string);
        procedure dbtSaldoAtualPrint(Sender: TObject);
        procedure dbtSaldoCalc(Sender: TObject;
            var Value: Variant);
        procedure dbtSaldoPrint(Sender: TObject);
        procedure lbPeriodoGetText(Sender: TObject;
            var Text: string);
        procedure lbTituloRelatorioGetText(Sender: TObject;
            var Text: string);
        procedure lbTotalDebitosGetText(Sender: TObject;
            var Text: string);
        procedure lbTotCreditosGetText(Sender: TObject;
            var Text: string);
        procedure lbSaldoAtualGetText(Sender: TObject;
            var Text: string);
        procedure ppDBText5GetText(Sender: TObject;
            var Text: string);
        procedure ppDBText6GetText(Sender: TObject;
            var Text: string);
        procedure ppDBText8GetText(Sender: TObject;
            var Text: string);
        procedure ppDBText9GetText(Sender: TObject;
            var Text: string);
        procedure ppLabel19GetText(Sender: TObject;
            var Text: string);
        procedure ppLabel21GetText(Sender: TObject;
            var Text: string);
        procedure ppSaldoDisponivelGetText(Sender: TObject;
            var Text: string);
        procedure ppRegion2Print(Sender: TObject);
        procedure rdTransacionalClick(Sender: TObject);
        procedure rdCronologicoClick(Sender: TObject);
        procedure ppDBText4GetText(Sender: TObject; var Text: string);
        procedure ppDBText24Print(Sender: TObject);
        procedure cmbContasClick(Sender: TObject);
        procedure lbSaldoContaGetText(Sender: TObject; var Text: string);
        procedure ppDBText7GetText(Sender: TObject; var Text: string);
        procedure FormCreate(Sender: TObject);
        procedure lbPreDatadosGetText(Sender: TObject; var Text: string);
        procedure lbPre30GetText(Sender: TObject; var Text: string);
        procedure lbPre60GetText(Sender: TObject; var Text: string);
        procedure lbPreMaior60GetText(Sender: TObject; var Text: string);
        procedure ppShape30DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppShape30DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure ppShape31DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppShape31DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure dbtVenc1Print(Sender: TObject);
        procedure ppDBCalc2GetText(Sender: TObject; var Text: string);
        procedure ppDBCalc5GetText(Sender: TObject; var Text: string);
        procedure ppDBText37GetText(Sender: TObject; var Text: string);
        procedure ppLabel35DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure cmbContasInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure ppDBText18DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure ppDBText18DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppDBText36Print(Sender: TObject);
        procedure dbtSaldoGetText(Sender: TObject; var Text: string);
        procedure ppLimiteCreditoGetText(Sender: TObject; var Text: string);
        procedure ppLabel5GetText(Sender: TObject; var Text: string);
        procedure ppHeaderBand1BeforePrint(Sender: TObject);
        procedure ppLabel23DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure ppDBText7DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppDBText7DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure dbtVenc1GetText(Sender: TObject; var Text: string);
        procedure dbtDiaGetText(Sender: TObject; var Text: string);
        procedure dbtDiaPrint(Sender: TObject);
        procedure ppDBText41GetText(Sender: TObject; var Text: string);
        procedure ppDBText41Print(Sender: TObject);
        procedure Q_PorFormaPagamentoFilterRecord(DataSet: TDataSet;
            var Accept: Boolean);
        procedure ppDBText25GetText(Sender: TObject; var Text: string);
        procedure ppDBText30DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppDBText30DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure ppExtratoTransacionalPreviewFormCreate(Sender: TObject);
        procedure ppExtratoCronologicoPreviewFormCreate(Sender: TObject);
        procedure ckbMarcarClick(Sender: TObject);
    protected
        DlgPopup: TDlgPopupContas;
    private
        { Private declarations }
        nSaldoAnt, nSaldoAtual, nSaldoConta, nCreditos, nDebitos, nLimiteCredito: single;
        nSaldoPre, nSaldoPre30, nSaldoPre60, nSaldoPreMaior60: single;
        nTipoConta, nConta: Integer;
        procedure CalculaSaldos;
        procedure ImprimirCronologico;
        procedure ImprimirTransacional;

    public
        { Public declarations }
    end;

var
    DlgExtratoContas: TDlgExtratoContas;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, ppViewr;

{$R *.DFM}

procedure TDlgExtratoContas.ImprimirTransacional;
begin
    with Q_TipoTran do
        begin
            close;
            SQL.Text := 'select t.tipooperacao, o.Descricao, sum(t.Valor) as Total ' +
                'from transacoes t left join tiposorigens o on t.tipooperacao = o.origem ' +
                'where t.data >= :DataI and t.data <= :DataF and t.Conta = :Conta and t.TipoOperacao IN ( :tipos ) ' +
                'group by t.tipooperacao, o.Descricao ';
            parambyname('conta').asInteger := nConta;
            parambyname('DataI').asDate := Trunc(dtDataI.Date);
            parambyname('DataF').asDate := Trunc(dtDataF.Date);
            if clbTipoTransacao.Selecionados <> '' then
                SQL.Text := replace(SQL.Text, ':tipos', clbTipoTransacao.Selecionados)
            else
                SQL.Text := replace(SQL.Text, ':tipos', '0');
            open;
        end;
    Barra.Position := Barra.Position + 1;
    with Q_Transacional do
        begin
            close;
            parambyname('conta').asInteger := nConta;
            parambyname('DataI').asDate := Trunc(dtDataI.Date);
            parambyname('DataF').asDate := Trunc(dtDataF.Date);
            open;
        end;
    lbSaldoFinal.Caption := formatfloat('###,###,##0.00', nSaldoConta);
    DMProjeto.ImprimirCabecalho(regCab2);
    Barra.Position := Barra.Position + 1;
    Application.ProcessMessages;
    ppExtratoTransacional.Print;
end;

procedure TDlgExtratoContas.ImprimirCronologico;
var nSaldoCalc: single;
begin
    with Q_Cronologico do
        begin
            close;
            parambyname('conta').asInteger := nConta;
            parambyname('DataIni').asDate := Trunc(dtDataI.Date);
            parambyname('DataFim').asDate := Trunc(dtDataF.Date);
            open;
            {
            first;
            nSaldoCalc := nSaldoAnt;
            while not Eof do begin
             Edit;
              Fieldbyname('saldo').AsCurrency := Fieldbyname('valor').AsCurrency + nSaldoCalc;
              nSaldoCalc := Fieldbyname('valor').AsCurrency + nSaldoCalc;
              Next;
            end;
            }
        end;
    Barra.Position := Barra.Position + 1;
    lbSaldoFinal.Caption := formatfloat('###,###,##0.00', nSaldoConta);
    DMProjeto.ImprimirCabecalho(regCab);
    Barra.Position := Barra.Position + 1;
    Application.ProcessMessages;
    ppExtratoCronologico.Print;
end;

procedure TDlgExtratoContas.CalculaSaldos;
begin
    nSaldoAnt := DMFinanceiro.SaldoConta(nConta, dtDataI.date - 1);
    Barra.Position := Barra.Position + 1;
    nSaldoAtual := DMFinanceiro.SaldoConta(nConta, dtDataF.date);
    Barra.Position := Barra.Position + 1;
    nSaldoConta := DMFinanceiro.C_ContasCxBcSaldo.Value * -1;
    Barra.Position := Barra.Position + 1;
    nSaldoPre := DMFinanceiro.SaldoChequePre(nConta);
    if nSaldoPre > 0 then
        begin
            nSaldoPre30 := DMFinanceiro.SaldoChequePre(nConta, DMProjeto.dDataSistema + 30);
            nSaldoPre60 := DMFinanceiro.SaldoChequePre(nConta, DMProjeto.dDataSistema + 60) - nSaldoPre30;
            nSaldoPreMaior60 := nSaldoPre - nSaldoPre30 - nSaldoPre60;
            regChequePre.Visible := true;
            regChequePre2.Visible := true;
        end
    else
        begin
            regChequePre.Visible := false;
            regChequePre2.Visible := false;
        end;
end;

procedure TDlgExtratoContas.btGravarClick(Sender: TObject);
begin
    inherited;
    if (rdTransacional.Checked) and (clbTipoTransacao.Selecionados = '') then
        begin
            DlgMsg.ShowMsg(585);
            Exit;
        end;
    Barra.Position := 0;
    Barra.Visible := true;
    nTipoConta := DMFinanceiro.C_ContasCxBcTipoConta.Value;
    nConta := DMFinanceiro.C_ContasCxBcConta.AsInteger;
    Barra.Position := Barra.Position + 1;
    CalculaSaldos;
    Barra.Position := Barra.Position + 1;
    nCreditos := DMFinanceiro.TotalEmCreditos(nConta, dtDataI.date, dtDataF.date);
    Barra.Position := Barra.Position + 1;
    nDebitos := DMFinanceiro.TotalEmDebitos(nConta, dtDataI.date, dtDataF.date);
    Barra.Position := Barra.Position + 1;
    nLimiteCredito := DMFinanceiro.C_ContasCxBcLimiteCredito.Value;
    regLimiteCredito.Visible := nLimiteCredito > 0;
    ChequesADepositar.Visible := (ckbADepositar.Checked) and (nConta = 1);
    SubChequesADepositar.Visible := (ckbADepositar.Checked) and (nConta = 1); // and (nTipoConta=1) and (rdTransacional.Checked);
    ChequesACompensar.Visible := (ckbACompensar.Checked) and (nTipoConta = 2) and (rdCronologico.Checked);
    SubChequesACompensar.Visible := (ckbACompensar.Checked) and (nTipoConta = 2) and (rdTransacional.Checked);
    subCartoesAReceber.Visible := (ckbCartoesAReceber.Checked) and (nTipoConta = 2) and (rdCronologico.Checked);
    subCartoesAReceber2.Visible := (ckbCartoesAReceber.Checked) and (nTipoConta = 2) and (rdTransacional.Checked);
    with Q_ChqDep do
        begin
            close;
            open;
        end;
    Barra.Position := Barra.Position + 1;
    if nTipoConta = 1 then
        begin
            with Q_PorFormaPagamento do
                begin
                    close;
                    parambyname('Conta').AsInteger := nConta;
                    parambyname('DataI').AsDateTime := dtDataI.date;
                    parambyname('DataF').AsDateTime := dtDataF.date;
                    open;
                    subPorFormaPagamento.Visible := true;
                end;
        end
    else
        subPorFormaPagamento.Visible := false;

    Barra.Position := Barra.Position + 1;
    with Q_CartoesAReceber do
        begin
            close;
            parambyname('Conta').AsInteger := nConta;
            open;
            subCartoesAReceber.Visible := recordcount > 0;
            subCartoesAReceber2.Visible := recordcount > 0;
        end;

    Barra.Position := Barra.Position + 1;
    with Q_ChqComp do
        begin
            close;
            parambyname('conta').asInteger := nConta;
            open;
        end;

    if ckbACompensar.Checked then
        begin
            with Q_ChqComp do
                begin
                    if recordcount = 0 then
                        begin
                            subCartoesAReceber.ShiftRelativeTo := regLimiteCredito;
                        end
                    else
                        begin
                            subCartoesAReceber.ShiftRelativeTo := ChequesACompensar;
                        end;
                end;
        end
    else
        begin
            subCartoesAReceber.ShiftRelativeTo := regLimiteCredito;
        end;
    Barra.Position := Barra.Position + 1;
    if rdCronologico.Checked then
        ImprimirCronologico
    else
        ImprimirTransacional;
    Barra.Visible := false;
end;

procedure TDlgExtratoContas.dbtSaldoAtualGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoAtual);
end;

procedure TDlgExtratoContas.dbtSaldoAtualPrint(Sender: TObject);
begin
    inherited;
    if nSaldoAtual >= 0 then
        dbtSaldoAtual.Font.Color := clBlue
    else
        dbtSaldoAtual.Font.Color := clRed;
end;

procedure TDlgExtratoContas.dbtSaldoCalc(Sender: TObject;
    var Value: Variant);
begin
    inherited;
    Value := Value + Q_CronologicoValor.Value;
end;

procedure TDlgExtratoContas.dbtSaldoPrint(Sender: TObject);
begin
    inherited;
    if dbtSaldo.Value >= 0 then
        dbtSaldo.Font.Color := clBlue
    else
        dbtSaldo.Font.Color := clRed;
end;

procedure TDlgExtratoContas.lbPeriodoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := 'No período de ' + DateToStr(dtDataI.date) + ' à ' + DateToStr(dtDataF.date);
end;

procedure TDlgExtratoContas.lbTituloRelatorioGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := DMProjeto.getMsg(424) + ' - ' + cmbContas.Text;
end;

procedure TDlgExtratoContas.lbTotalDebitosGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nDebitos);
end;

procedure TDlgExtratoContas.lbTotCreditosGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nCreditos);
end;

procedure TDlgExtratoContas.lbSaldoAtualGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if nTipoConta = 1 then
        Text := ''
    else
        Text := formatfloat('###,###,##0.00', nSaldoAtual);
    if (nSaldoAtual) < 0 then
        TppLabel(Sender).font.color := clRed
    else
        TppLabel(Sender).font.color := clBlue;
end;

procedure TDlgExtratoContas.ppDBText5GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Q_CronologicoTipoTransacao.Value = 'C' then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBText6GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Q_CronologicoTipoTransacao.Value = 'D' then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBText8GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Q_CronologicoTipoTransacao.Value = 'C' then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBText9GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Q_CronologicoTipoTransacao.Value = 'D' then
        Text := '';
end;

procedure TDlgExtratoContas.ppLabel19GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := DateToStr(dtDataF.Date);
end;

procedure TDlgExtratoContas.ppLabel21GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoAnt);
    dbtSaldo.Value := nSaldoAnt + Q_CronologicoValor.Value;
    if nSaldoAnt >= 0 then
        ppLabel21.font.color := clBlue
    else
        ppLabel21.font.color := clRed;
end;

procedure TDlgExtratoContas.ppSaldoDisponivelGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if DMFinanceiro.C_ContasCxBcTipoConta.Value = 1 then
        Text := formatfloat('###,###,##0.00', nSaldoAtual)
    else
        begin
            if (nSaldoAtual + nLimiteCredito) > 0 then
                Text := formatfloat('###,###,##0.00', nSaldoAtual + nLimiteCredito)
            else
                Text := formatfloat('###,###,##0.00', 0);
        end;
    if (nSaldoAtual + nLimiteCredito) < 0 then
        ppSaldoDisponivel.font.color := clRed
    else
        ppSaldoDisponivel.font.color := clBlue;
    if nLimiteCredito = 0 then
        Text := '';
end;

procedure TDlgExtratoContas.ppRegion2Print(Sender: TObject);
begin
    inherited;
    ppRegion2.Visible := ppExtratoCronologico.Page <= 1;
end;

procedure TDlgExtratoContas.rdTransacionalClick(Sender: TObject);
begin
    inherited;
    lbTipoTransacao.Enabled := rdTransacional.Checked;
    clbTipoTransacao.Enabled := rdTransacional.Checked;
    lbMarcar.Enabled := rdTransacional.Checked;
    ckbMarcar.Enabled := rdTransacional.Checked;
    rdCronologico.Font.Color := clBlack;
    rdTransacional.Font.Color := clMaroon;
end;

procedure TDlgExtratoContas.rdCronologicoClick(Sender: TObject);
begin
    inherited;
    lbTipoTransacao.Enabled := rdTransacional.Checked;
    clbTipoTransacao.Enabled := rdTransacional.Checked;
    lbMarcar.Enabled := rdTransacional.Checked;
    ckbMarcar.Enabled := rdTransacional.Checked;
    rdCronologico.Font.Color := clMaroon;
    rdTransacional.Font.Color := clBlack;
end;

procedure TDlgExtratoContas.ppDBText4GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Text = '0' then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBText24Print(Sender: TObject);
begin
    inherited;
    if Q_TipoTranTotal.Value >= 0 then
        ppDBText24.Font.Color := clNavy
    else
        ppDBText24.Font.Color := clMaroon;
end;

procedure TDlgExtratoContas.cmbContasClick(Sender: TObject);
begin
    inherited;
    ckbACompensar.ReadOnly := DMFinanceiro.C_ContasCxBcTipoConta.Value <> 2;
    if ckbACompensar.ReadOnly then
        ckbACompensar.State := cbsGrayed
    else
        ckbACompensar.Checked := true;

    ckbCartoesAReceber.ReadOnly := DMFinanceiro.C_ContasCxBcTipoConta.Value <> 2;
    if ckbCartoesAReceber.ReadOnly then
        ckbCartoesAReceber.State := cbsGrayed
    else
        ckbCartoesAReceber.Checked := true;

    ckbADepositar.ReadOnly := DMFinanceiro.C_ContasCxBcTipoConta.Value <> 1;
    if ckbADepositar.ReadOnly then
        ckbADepositar.State := cbsGrayed
    else
        ckbADepositar.Checked := true;
end;

procedure TDlgExtratoContas.lbSaldoContaGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoAtual);
    if (nSaldoAtual) < 0 then
        TppLabel(Sender).font.color := clRed
    else
        TppLabel(Sender).font.color := clBlue;
end;

procedure TDlgExtratoContas.ppDBText7GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Text = '0' then
        Text := '';
end;

procedure TDlgExtratoContas.FormCreate(Sender: TObject);
begin
    inherited;
    Q_TiposTransacoes.Open;
end;

procedure TDlgExtratoContas.lbPreDatadosGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoPre);
end;

procedure TDlgExtratoContas.lbPre30GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoPre30);
end;

procedure TDlgExtratoContas.lbPre60GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoPre60);
end;

procedure TDlgExtratoContas.lbPreMaior60GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nSaldoPreMaior60);
end;

procedure TDlgExtratoContas.ppShape30DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_CronologicoIDGerador.AsInteger;
    TppDrawCommand(aDrawCommand).ExpansionKey := Q_CronologicoTipoOperacao.AsString;
    if Q_CronologicoTipoOperacao.Value = 13 then
        TppDrawCommand(aDrawCommand).Tag := 0;
    if Q_CronologicoTipoOperacao.Value = 9 then
        TppDrawCommand(aDrawCommand).Tag := Q_CronologicoFavorecido.AsInteger;
    if Q_CronologicoTipoOperacao.Value = 12 then
        begin
            TppDrawCommand(aDrawCommand).Tag := Q_CronologicoIDDoc.AsInteger;
            TppDrawCommand(aDrawCommand).ExpansionKey := Q_CronologicoTipoOperacao.AsString + ';' + Q_CronologicoConta.AsString;
        end;
end;

procedure TDlgExtratoContas.ppShape30DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    if TppDrawCommand(aDrawCommand).Tag <> 0 then
        begin
            with DMProjeto do
                begin
                    if SeparaStrings(TppDrawCommand(aDrawCommand).ExpansionKey, ';', 1) = '12' then
                        begin
                            SetParametrosForm([null, TppDrawCommand(aDrawCommand).Tag, StrToInt(SeparaStrings(TppDrawCommand(aDrawCommand).ExpansionKey, ';', 2)), 'C']);
                            CriarForm(getTelaGeradora(StrToInt(SeparaStrings(TppDrawCommand(aDrawCommand).ExpansionKey, ';', 1))), self, true);
                        end
                    else
                        begin
                            SetParametrosForm([TppDrawCommand(aDrawCommand).Tag, StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)]);
                            CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)), self, true);
                        end;
                    LimparParametrosForm;
                end;
        end;
end;

procedure TDlgExtratoContas.ppShape31DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_TransacionalIDGerador.AsInteger;
    if Q_TransacionalTipoOperacao.Value = 13 then
        TppDrawCommand(aDrawCommand).Tag := 0;
    TppDrawCommand(aDrawCommand).ExpansionKey := Q_TransacionalTipoOperacao.AsString;
end;

procedure TDlgExtratoContas.ppShape31DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    if TppDrawCommand(aDrawCommand).Tag <> 0 then
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
                    CriarForm(getTelaGeradora(StrToInt(TppDrawCommand(aDrawCommand).ExpansionKey)), self, true);
                    LimparParametrosForm;
                end;
        end;
end;

procedure TDlgExtratoContas.dbtVenc1Print(Sender: TObject);
begin
    inherited;
    if Q_ChqDepVencimento.Value <= DMProjeto.dDataSistema then
        dbtVenc1.Font.Color := clRed
    else
        dbtVenc1.Font.Color := clBlack;
    { if Q_ChqDepVencimento.Value <= DMProjeto.dDataSistema then
      ppDBText22.Font.Color := clRed
    else
     ppDBText22.Font.Color := clBlack;  }
end;

procedure TDlgExtratoContas.ppDBCalc2GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if ppGroup1.BreakNo = 1 then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBCalc5GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if ppGroup2.BreakNo = 1 then
        Text := '';
end;

procedure TDlgExtratoContas.ppDBText37GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    text := SeparaStrings(text, '#', 2);
end;

procedure TDlgExtratoContas.ppLabel35DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgDepositoCheques', self, true);
end;

procedure TDlgExtratoContas.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'DEPOSITOS,DEPOSITOSDOC,OPERACOESFINANCEIRAS,RETIRADAS,RETIRADASDOC') > 0 then
        begin
            if nTipoConta = 1 then
                begin
                    ppChqDep.DataSource := nil;
                    Q_ChqDep.Close;
                    Q_ChqDep.Open;
                    ppChqDep.DataSource := Q_ChqDepDS;
                end
            else
                begin
                    dbCartoes.DataSource := nil;
                    Q_CartoesAReceber.Close;
                    Q_CartoesAReceber.Open;
                    dbCartoes.DataSource := Q_CartoesDS;
                    ppChqComp.DataSource := nil;
                    Q_ChqComp.Close;
                    Q_ChqComp.Open;
                    ppChqComp.DataSource := Q_ChqCompDS;
                end;
            if (rdCronologico.Checked) and (Q_Cronologico.Active) then
                begin
                    ppCronologico.DataSource := nil;
                    Q_Cronologico.Close;
                    Q_Cronologico.Open;
                    ppCronologico.DataSource := Q_CronoDS;
                    CalculaSaldos;
                    ppExtratoCronologico.Publisher.Publish;
                end
            else if Q_Transacional.Active then
                begin
                    ppTransacional.DataSource := nil;
                    ppTipoTran.DataSource := nil;
                    Q_TipoTran.Close;
                    Q_TipoTran.Open;
                    Q_Transacional.Close;
                    Q_Transacional.Open;
                    ppTipoTran.DataSource := Q_TipoTranDS;
                    ppTransacional.DataSource := Q_TransacionalDS;
                    CalculaSaldos;
                    ppExtratoTransacional.Publisher.Publish;
                end;
        end;
end;

procedure TDlgExtratoContas.cmbContasInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFinanceiro.C_ContasCxBcDS);
    DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgExtratoContas.FormActivate(Sender: TObject);
begin
    inherited;
    cmbContas.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgExtratoContas.FormsComponentBeforeClearParams(
    Sender: TObject);
var i: integer;
begin
    inherited;
    dbtdata.DisplayFormat := iif(UpperCase(Copy(DMProjeto.sDateFormat, 1, 1)) = 'D', 'dd/mm', 'mm/dd');
    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
    dtDataI.Date := DMProjeto.dDataSistema - (Day(DMProjeto.dDataSistema)-1);
    dtDataF.Date := DMProjeto.dDataSistema;
    with DMFinanceiro.C_ContasCxBc do
        begin
            Close;
            Open;
            Locate('Conta', DMFinanceiro.nContaPadrao, [loCaseInsensitive]);
        end;
    cmbContas.LookupKeyValue := DMFinanceiro.nContaPadrao;
    cmbContasClick(sender);
    clbTipoTransacao.UpdateItems;
    for i := 0 to clbTipoTransacao.Items.Count - 1 do
        clbTipoTransacao.Checked[i] := true;
end;

procedure TDlgExtratoContas.ppDBText18DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm([IntToStr(TppDrawCommand(aDrawCommand).Tag)]);
            CriarForm('DlgDepositoCheques', self, true);
        end;
end;

procedure TDlgExtratoContas.ppDBText18DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_ChqDepIDDoc.AsInteger;
end;

procedure TDlgExtratoContas.ppDBText36Print(Sender: TObject);
begin
    inherited;
    if Q_ChqDepVencimento.Value <= DMProjeto.dDataSistema then
        ppDBText36.Font.Color := clRed
    else
        ppDBText36.Font.Color := clBlack;
end;

procedure TDlgExtratoContas.dbtSaldoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Q_Cronologico.IsEmpty then
        Text := '';
end;

procedure TDlgExtratoContas.ppLimiteCreditoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('###,###,##0.00', nLimiteCredito);
end;

procedure TDlgExtratoContas.ppLabel5GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if nTipoConta = 1 then
        Text := '';
end;

procedure TDlgExtratoContas.ppHeaderBand1BeforePrint(Sender: TObject);
begin
    inherited;
    ppRegion3.Visible := not Q_Cronologico.EOF;
end;

procedure TDlgExtratoContas.ppLabel23DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgChequesEmitidos', self, true);
end;

procedure TDlgExtratoContas.ppDBText7DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_ChqCompIDDoc.AsInteger;
end;

procedure TDlgExtratoContas.ppDBText7DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, TppDrawCommand(aDrawCommand).Tag, nConta]);
    DMProjeto.CriarForm('DlgChequesEmitidos', self, true);
end;

procedure TDlgExtratoContas.dbtVenc1GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatdatetime(iif(uppercase(copy(DMProjeto.sDateFormat, 1, 1)) = 'D', 'dd/mm', 'mm/dd'), Q_ChqDepVencimento.Value);
end;

procedure TDlgExtratoContas.dbtDiaGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatdatetime(iif(uppercase(copy(DMProjeto.sDateFormat, 1, 1)) = 'D', 'dd/mm', 'mm/dd'), Q_ChqCompVencimento.Value);
end;

procedure TDlgExtratoContas.dbtDiaPrint(Sender: TObject);
begin
    inherited;
    if Q_ChqCompVencimento.Value <= DMProjeto.dDataSistema then
        dbtDia.Font.Color := clRed
    else
        dbtDia.Font.Color := clBlack;
end;

procedure TDlgExtratoContas.ppDBText41GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatdatetime(iif(uppercase(copy(DMProjeto.sDateFormat, 1, 1)) = 'D', 'dd/mm', 'mm/dd'), Q_CartoesAReceberRecebido.Value);
end;

procedure TDlgExtratoContas.ppDBText41Print(Sender: TObject);
begin
    inherited;
    if Q_CartoesAReceberRecebido.Value <= DMProjeto.dDataSistema then
        ppDBText41.Font.Color := clRed
    else
        ppDBText41.Font.Color := clBlack;
end;

procedure TDlgExtratoContas.Q_PorFormaPagamentoFilterRecord(
    DataSet: TDataSet; var Accept: Boolean);
begin
    inherited;
    Accept := (Q_PorFormaPagamentoCreditos.AsCurrency > 0) or (Q_PorFormaPagamentoDebitos.AsCurrency < 0);
end;

procedure TDlgExtratoContas.ppDBText25GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Copy(DMProjeto.sDateFormat, 1, 1) = 'm' then
        Text := formatdatetime('mm/dd', StrToDate(Text))
    else
        Text := formatdatetime('dd/mm', StrToDate(Text));
end;

procedure TDlgExtratoContas.ppDBText30DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_ChqCompIDDoc.AsInteger;
end;

procedure TDlgExtratoContas.ppDBText30DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, TppDrawCommand(aDrawCommand).Tag, nConta]);
    DMProjeto.CriarForm('DlgChequesEmitidos', self, true);
end;

procedure TDlgExtratoContas.ppExtratoTransacionalPreviewFormCreate(
    Sender: TObject);
begin
    inherited;
    ppExtratoTransacional.PreviewForm.WindowState := wsMaximized;
    TppViewer(ppExtratoTransacional.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TDlgExtratoContas.ppExtratoCronologicoPreviewFormCreate(
    Sender: TObject);
begin
    inherited;
    ppExtratoCronologico.PreviewForm.WindowState := wsMaximized;
    TppViewer(ppExtratoCronologico.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TDlgExtratoContas.ckbMarcarClick(Sender: TObject);
var i: integer;
begin
    inherited;
    for i := 0 to clbTipoTransacao.Items.Count - 1 do
        clbTipoTransacao.Checked[i] := ckbMarcar.Checked;
end;

end.

