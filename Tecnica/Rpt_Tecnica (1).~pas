unit Rpt_Tecnica;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ppDB, DB, DBClient, Provider, IBCustomDataSet, IBQuery, ppCtrls,
    ppBands, ppRegion, ppRichTx, ppStrtch, ppMemo, ppPrnabl, ppClass,
    ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, myChkBox;

type
    TRptTecnica = class(TForm)
        ppDBOrcamento: TppDBPipeline;
        _ppEntradaAssistencia: TppReport;
        ppHeaderBand2: TppHeaderBand;
        ppLabel15: TppLabel;
        ppDBText13: TppDBText;
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppLabel20: TppLabel;
        ppDBText14: TppDBText;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppLabel21: TppLabel;
        ppLine3: TppLine;
        ppLabel22: TppLabel;
        ppDBText20: TppDBText;
        ppDBText22: TppDBText;
        ppDBText23: TppDBText;
        ppLabel23: TppLabel;
        ppLabel25: TppLabel;
        ppLabel26: TppLabel;
        ppDBMemo1: TppDBMemo;
        ppLabel27: TppLabel;
        ppDBMemo2: TppDBMemo;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppRegion2: TppRegion;
        ppDBText12: TppDBText;
        ppDBText24: TppDBText;
        ppDetailBand2: TppDetailBand;
        ppFooterBand2: TppFooterBand;
        ppRTLegislacao: TppRichText;
        ppLabel6: TppLabel;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppLabel7: TppLabel;
        ppLine1: TppLine;
        ppLabel8: TppLabel;
        ppDBText8: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppLabel9: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppDBMemo3: TppDBMemo;
        ppLabel13: TppLabel;
        ppDBMemo4: TppDBMemo;
        ppLine2: TppLine;
        ppRegion1: TppRegion;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppLabel5: TppLabel;
        ppDBText5: TppDBText;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppOrcamento: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppLabel14: TppLabel;
        ppDBText27: TppDBText;
        ppLabel28: TppLabel;
        ppLabel29: TppLabel;
        ppLabel30: TppLabel;
        ppLabel31: TppLabel;
        ppLabel32: TppLabel;
        ppDBText28: TppDBText;
        ppDBText29: TppDBText;
        ppDBText30: TppDBText;
        ppDBText31: TppDBText;
        ppDBText32: TppDBText;
        ppDBText33: TppDBText;
        ppLabel33: TppLabel;
        ppLine6: TppLine;
        ppLabel34: TppLabel;
        ppDBText34: TppDBText;
        ppDBText36: TppDBText;
        ppDBText37: TppDBText;
        ppLabel35: TppLabel;
        ppLabel37: TppLabel;
        ppLabel39: TppLabel;
        ppDBMemo6: TppDBMemo;
        ppRegion3: TppRegion;
        ppDBText38: TppDBText;
        ppDBText39: TppDBText;
        ppDBMemo5: TppDBMemo;
        ppLabel38: TppLabel;
        ppLine9: TppLine;
        ppLabel52: TppLabel;
        ppLabel48: TppLabel;
        ppLabel49: TppLabel;
        ppLabel50: TppLabel;
        ppLabel40: TppLabel;
        ppLabel51: TppLabel;
        ppLabel41: TppLabel;
        ppLabel42: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppDBText42: TppDBText;
        ppDBText43: TppDBText;
        ppDBText44: TppDBText;
        ppSummaryBand1: TppSummaryBand;
        ppLine10: TppLine;
        ppDBCalc1: TppDBCalc;
        ppRichText1: TppRichText;
        ppLabel43: TppLabel;
        ppDBEntradaAssistencia2: TppDBPipeline;
        Q_Servicos: TIBQuery;
        P_Servicos: TDataSetProvider;
        C_Servicos: TClientDataSet;
        C_ServicosDS: TDataSource;
        C_ServicosDetDs: TDataSource;
        C_ServicosDet: TClientDataSet;
        IntegerField1: TIntegerField;
        C_ServicosDetDESCRICAOITEM: TStringField;
        C_ServicosDetITEM: TIntegerField;
        C_ServicosDetQUANTIDADE: TBCDField;
        C_ServicosDetSERVICO: TIntegerField;
        C_ServicosDetSERVICODET: TIntegerField;
        C_ServicosDetVALOR: TBCDField;
        C_ServicosDetCODIGO: TStringField;
        C_ServicosDetDESCRICAO: TStringField;
        C_ServicosDetPRECO: TBCDField;
        C_ServicosDetSUBTOTAL: TCurrencyField;
        Q_ServicosDet: TIBQuery;
        Q_MasterDS: TDataSource;
        ppLabel10: TppLabel;
        lbEntrega: TppLabel;
        Q_Chamados: TIBQuery;
        P_Chamados: TDataSetProvider;
        C_Chamados: TClientDataSet;
        C_ChamadosDS: TDataSource;
        ppDBChamado: TppDBPipeline;
        ppChamado: TppReport;
        ppHeaderBand3: TppHeaderBand;
        ppLabel44: TppLabel;
        ppLabel45: TppLabel;
        ppLabel46: TppLabel;
        ppLabel47: TppLabel;
        ppLabel53: TppLabel;
        ppDBText21: TppDBText;
        ppDBText35: TppDBText;
        ppDBText45: TppDBText;
        ppDBText46: TppDBText;
        ppDBText47: TppDBText;
        ppDBText48: TppDBText;
        ppLabel54: TppLabel;
        ppLine7: TppLine;
        ppLabel55: TppLabel;
        ppDBText49: TppDBText;
        ppDBText51: TppDBText;
        ppLabel56: TppLabel;
        ppLabel59: TppLabel;
        ppDBMemo8: TppDBMemo;
        ppLine8: TppLine;
        ppLine11: TppLine;
        ppRegion4: TppRegion;
        ppLabel60: TppLabel;
        ppDetailBand3: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        C_ChamadosCHAMADO: TIntegerField;
        C_ChamadosCLIENTE: TIntegerField;
        C_ChamadosFUNCIONARIO: TIntegerField;
        C_ChamadosDATAMARCACAO: TDateField;
        C_ChamadosHORAMARCACAO: TTimeField;
        C_ChamadosDEFEITOALEGADO: TStringField;
        C_ChamadosSTATUS: TStringField;
        C_ChamadosDEFEITOENCONTRADO: TStringField;
        C_ChamadosDATAENTRADA: TDateField;
        C_ChamadosHORAENTRADA: TTimeField;
        C_ChamadosDATASAIDA: TDateField;
        C_ChamadosHORASAIDA: TTimeField;
        C_ChamadosNOMECLIENTE: TStringField;
        C_ChamadosNOMEFUNC: TStringField;
        C_ChamadosENDERECO: TStringField;
        C_ChamadosBAIRRO: TStringField;
        C_ChamadosCIDADE: TStringField;
        C_ChamadosCEP: TStringField;
        C_ChamadosFONE1: TStringField;
        C_ChamadosFONE2: TStringField;
        ppLabel36: TppLabel;
        ppDBText9: TppDBText;
        ppLabel57: TppLabel;
        ppDBText50: TppDBText;
        ppLine14: TppLine;
        ppLabel58: TppLabel;
        ppDBText66: TppDBText;
        ppLine15: TppLine;
        ppLabel62: TppLabel;
        ppDBText67: TppDBText;
        ppLine16: TppLine;
        ppLabel75: TppLabel;
        ppDBMemo7: TppDBMemo;
        ppLabel63: TppLabel;
        ppLine12: TppLine;
        ppLabel64: TppLabel;
        ppLabel65: TppLabel;
        ppDBText52: TppDBText;
        C_ChamadosNUMERO: TStringField;
        C_ChamadosDESCMODELO: TStringField;
        ppDBText53: TppDBText;
        ppLabel24: TppLabel;
        ppDBText54: TppDBText;
        ppEntradaAssistencia: TppReport;
        ppHeaderBand4: TppHeaderBand;
        ppLabel61: TppLabel;
        ppDBText55: TppDBText;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppLabel68: TppLabel;
        ppLabel69: TppLabel;
        ppDBText56: TppDBText;
        ppDBText58: TppDBText;
        ppDBText60: TppDBText;
        ppDBText61: TppDBText;
        ppLabel71: TppLabel;
        ppLabel77: TppLabel;
        ppDBText65: TppDBText;
        ppDBText68: TppDBText;
        ppLabel79: TppLabel;
        ppDetailBand4: TppDetailBand;
        ppFooterBand3: TppFooterBand;
        ppLabel80: TppLabel;
        ppLabel81: TppLabel;
        ppDBText69: TppDBText;
        ppLabel82: TppLabel;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppLabel86: TppLabel;
        ppDBText74: TppDBText;
        ppLabel87: TppLabel;
        ppLabel88: TppLabel;
        ppDBText75: TppDBText;
        ppLine21: TppLine;
        ppLabel97: TppLabel;
        ppLabel98: TppLabel;
        ppLabel100: TppLabel;
        ppDBText81: TppDBText;
        ppDBText82: TppDBText;
        ppDBText83: TppDBText;
        ppLabel101: TppLabel;
        ppDBText85: TppDBText;
        ppLine23: TppLine;
        ppLabel72: TppLabel;
        ppDBMemo13: TppDBMemo;
        ppLabel74: TppLabel;
        ppLine13: TppLine;
        ppLabel73: TppLabel;
        ppDBText62: TppDBText;
        ppDBText63: TppDBText;
        ppDBText64: TppDBText;
        ppDBText92: TppDBText;
        ppDBText93: TppDBText;
        ppMemo1: TppMemo;
        ppLabel113: TppLabel;
        ppDBText94: TppDBText;
        ppLabel114: TppLabel;
        ppLabel115: TppLabel;
        ppDBText95: TppDBText;
        ppLine25: TppLine;
        ppMemo3: TppMemo;
        ppShape1: TppShape;
        ppShape2: TppShape;
        ppShape3: TppShape;
        ppShape4: TppShape;
        ppShape5: TppShape;
        ppEntraAssControleInterno: TppReport;
        ppHeaderBand5: TppHeaderBand;
        ppLabel118: TppLabel;
        ppDBText98: TppDBText;
        ppLabel119: TppLabel;
        ppLabel120: TppLabel;
        ppLabel121: TppLabel;
        ppLabel122: TppLabel;
        ppDBText99: TppDBText;
        ppDBText100: TppDBText;
        ppDBText101: TppDBText;
        ppDBText102: TppDBText;
        ppDBText103: TppDBText;
        ppLabel123: TppLabel;
        ppDBText104: TppDBText;
        ppLabel128: TppLabel;
        ppLabel129: TppLabel;
        ppDBText106: TppDBText;
        ppLine27: TppLine;
        ppLabel134: TppLabel;
        ppDBText111: TppDBText;
        ppLabel135: TppLabel;
        ppLabel136: TppLabel;
        ppDBText112: TppDBText;
        ppLine30: TppLine;
        ppLabel145: TppLabel;
        ppLabel146: TppLabel;
        ppDBText118: TppDBText;
        ppLine32: TppLine;
        ppLabel159: TppLabel;
        ppDetailBand5: TppDetailBand;
        ppFooterBand4: TppFooterBand;
        ppShape6: TppShape;
        ppLabel131: TppLabel;
        ppLine29: TppLine;
        ppLine43: TppLine;
        ppShape7: TppShape;
        ppLabel132: TppLabel;
        ppShape8: TppShape;
        ppLabel133: TppLabel;
        ppShape9: TppShape;
        ppShape10: TppShape;
        ppLabel137: TppLabel;
        ppLabel125: TppLabel;
        ppDBText108: TppDBText;
        ppLabel138: TppLabel;
        ppDBText107: TppDBText;
        ppLabel124: TppLabel;
        ppShape11: TppShape;
        ppLine47: TppLine;
        ppLabel130: TppLabel;
        ppLabel139: TppLabel;
        ppLabel140: TppLabel;
        ppLabel141: TppLabel;
        ppDBText105: TppDBText;
        ppLabel142: TppLabel;
        ppDBText109: TppDBText;
        ppLine48: TppLine;
        ppLabel143: TppLabel;
        ppLine49: TppLine;
        ppLabel144: TppLabel;
        ppLine50: TppLine;
        ppLabel147: TppLabel;
        ppLabel148: TppLabel;
        ppDBText113: TppDBText;
        ppLine51: TppLine;
        ppLabel149: TppLabel;
        ppLine52: TppLine;
        ppLabel150: TppLabel;
        ppOrdemdeServico: TppReport;
        ppHeaderBand6: TppHeaderBand;
        ppLabel151: TppLabel;
        ppDBText114: TppDBText;
        ppLabel152: TppLabel;
        ppLabel155: TppLabel;
        ppDBText115: TppDBText;
        ppDBText117: TppDBText;
        ppDBText120: TppDBText;
        ppLabel156: TppLabel;
        ppDBText121: TppDBText;
        ppLabel157: TppLabel;
        ppRegion6: TppRegion;
        ppLabel158: TppLabel;
        ppLabel160: TppLabel;
        ppLabel161: TppLabel;
        ppDBText122: TppDBText;
        ppLine55: TppLine;
        ppLabel162: TppLabel;
        ppDBText123: TppDBText;
        ppLabel163: TppLabel;
        ppLabel164: TppLabel;
        ppDBText124: TppDBText;
        ppLabel175: TppLabel;
        ppLabel176: TppLabel;
        ppLabel177: TppLabel;
        ppDetailBand6: TppDetailBand;
        ppFooterBand5: TppFooterBand;
        ppLine53: TppLine;
        ppLabel167: TppLabel;
        ppDBText131: TppDBText;
        ppDBText132: TppDBText;
        ppDBText133: TppDBText;
        ppLabel168: TppLabel;
        ppLabel169: TppLabel;
        ppLabel170: TppLabel;
        ppDBMemo15: TppDBMemo;
        ppDBMemo16: TppDBMemo;
        ppLabel171: TppLabel;
        ppLine54: TppLine;
        ppLabel174: TppLabel;
        ppLabel186: TppLabel;
        ppLabel187: TppLabel;
        ppLabel188: TppLabel;
        ppLabel189: TppLabel;
        ppLabel190: TppLabel;
        ppLabel178: TppLabel;
        ppLabel179: TppLabel;
        ppLabel180: TppLabel;
        ppLabel184: TppLabel;
        ppLabel185: TppLabel;
        ppLabel196: TppLabel;
        ppRichText2: TppRichText;
        ppLine81: TppLine;
        ppLabel197: TppLabel;
        ppDBText134: TppDBText;
        ppDBText135: TppDBText;
        ppDBText136: TppDBText;
        ppDBText137: TppDBText;
        ppDBText138: TppDBText;
        ppLine57: TppLine;
        ppDBCalc2: TppDBCalc;
        ppLabel191: TppLabel;
        ppLine58: TppLine;
        ppLine59: TppLine;
        ppLine61: TppLine;
        ppLine62: TppLine;
        ppLine63: TppLine;
        ppLine64: TppLine;
        ppLine65: TppLine;
        regCab: TppRegion;
        ppLabel127: TppLabel;
        ppLabel153: TppLabel;
        ppLabel154: TppLabel;
        ppLabel165: TppLabel;
        myDBCheckBox1: TmyDBCheckBox;
        myDBCheckBox2: TmyDBCheckBox;
        myDBCheckBox3: TmyDBCheckBox;
        ppLabel173: TppLabel;
        ppLabel199: TppLabel;
        ppLabel200: TppLabel;
        ppLabel201: TppLabel;
        myDBCheckBox7: TmyDBCheckBox;
        myDBCheckBox8: TmyDBCheckBox;
        myDBCheckBox9: TmyDBCheckBox;
        myDBCheckBox10: TmyDBCheckBox;
        myDBCheckBox11: TmyDBCheckBox;
        ppLabel212: TppLabel;
        myDBCheckBox17: TmyDBCheckBox;
        ppLabel213: TppLabel;
        ppDBMemo10: TppDBMemo;
        cb_garantiafabrica: TmyDBCheckBox;
        myDBCheckBox19: TmyDBCheckBox;
        myDBCheckBox20: TmyDBCheckBox;
        myDBCheckBox21: TmyDBCheckBox;
        myDBCheckBox22: TmyDBCheckBox;
        myDBCheckBox23: TmyDBCheckBox;
        myDBCheckBox24: TmyDBCheckBox;
        myDBCheckBox25: TmyDBCheckBox;
        ppLabel181: TppLabel;
        ppLabel192: TppLabel;
        ppLabel216: TppLabel;
        myDBCheckBox26: TmyDBCheckBox;
        ppLabel218: TppLabel;
        ppLine28: TppLine;
        ppLine31: TppLine;
        ppLine33: TppLine;
        ppLine34: TppLine;
        ppLine35: TppLine;
        ppLine36: TppLine;
        ppLine37: TppLine;
        ppLabel220: TppLabel;
        ppLabel221: TppLabel;
        ppLabel222: TppLabel;
        myDBCheckBox28: TmyDBCheckBox;
        ppLabel223: TppLabel;
        myDBCheckBox29: TmyDBCheckBox;
        ppLabel224: TppLabel;
        ppDBText126: TppDBText;
        ppLabel225: TppLabel;
        ppDBText127: TppDBText;
        ppLabel226: TppLabel;
        ppDBText139: TppDBText;
        ppLabel227: TppLabel;
        ppDBText141: TppDBText;
        ppLabel70: TppLabel;
        ppDBMemo11: TppDBMemo;
        ppLabel235: TppLabel;
        ppLabel99: TppLabel;
        myDBCheckBox30: TmyDBCheckBox;
        ppLabel172: TppLabel;
        myDBCheckBox32: TmyDBCheckBox;
        ppLabel236: TppLabel;
        ppPecasPendentes: TppReport;
        ppHeaderBand8: TppHeaderBand;
        ppLabel293: TppLabel;
        ppLabel295: TppLabel;
        ppLabel296: TppLabel;
        ppLine91: TppLine;
        ppDetailBand8: TppDetailBand;
        ppDBText172: TppDBText;
        ppDBText173: TppDBText;
        ppLine92: TppLine;
        ppLine94: TppLine;
        ppLine95: TppLine;
        ppLine96: TppLine;
        ppLine97: TppLine;
        ppLine98: TppLine;
        ppFooterBand7: TppFooterBand;
        Q_PecasPendentes: TIBQuery;
        C_PecasPendentes: TClientDataSet;
        P_PecasPendentes: TDataSetProvider;
        C_PecasPendentesDS: TDataSource;
        C_PecasPendentesOSNUMERO: TStringField;
        C_PecasPendentesDESCRICAOITEM: TStringField;
        C_PecasPendentesITEM: TIntegerField;
        C_PecasPendentesQUANTIDADE: TBCDField;
        C_PecasPendentesSERVICO: TIntegerField;
        C_PecasPendentesSERVICODET: TIntegerField;
        C_PecasPendentesVALOR: TBCDField;
        C_PecasPendentesUNIDADE: TStringField;
        C_PecasPendentesCODIGO: TStringField;
        C_PecasPendentesDESCRICAO: TStringField;
        C_PecasPendentesPRECO: TBCDField;
        C_PecasPendentesESTOQUE: TBCDField;
        C_PecasPendentesDATAENTRADA: TDateField;
        ppLabel294: TppLabel;
        ppLabel278: TppLabel;
        ppLine87: TppLine;
        ppDBText161: TppDBText;
        ppDBText174: TppDBText;
        ppLabel279: TppLabel;
        ppDBText163: TppDBText;
        ppRegion7: TppRegion;
        Q_RelatorioGeral: TIBQuery;
        C_RelatorioGeral: TClientDataSet;
        P_RelatorioGeral: TDataSetProvider;
        C_RelatorioGeralDS: TDataSource;
        C_RelatorioGeralSERVICO: TIntegerField;
        C_RelatorioGeralOSNUMERO: TStringField;
        C_RelatorioGeralCLIENTE: TIntegerField;
        C_RelatorioGeralDATAENTRADA: TDateField;
        C_RelatorioGeralHORAENTRADA: TTimeField;
        C_RelatorioGeralEQUIPAMENTO: TIntegerField;
        C_RelatorioGeralPARTESAGRAGADAS: TStringField;
        C_RelatorioGeralDEFEITOALEGADO: TStringField;
        C_RelatorioGeralDEFEITOENCONTRADO: TStringField;
        C_RelatorioGeralOBSERVACAO: TStringField;
        C_RelatorioGeralDATASAIDA: TDateField;
        C_RelatorioGeralHORASAIDA: TTimeField;
        C_RelatorioGeralFUNCENTRADA: TIntegerField;
        C_RelatorioGeralTECNICO: TIntegerField;
        C_RelatorioGeralFUNCSAIDA: TIntegerField;
        C_RelatorioGeralSTATUSSERVICO: TIntegerField;
        C_RelatorioGeralLOCALIZACAO: TIntegerField;
        C_RelatorioGeralTIPOSERVICO: TIntegerField;
        C_RelatorioGeralAVARIA: TStringField;
        C_RelatorioGeralCOMACESSORIO: TStringField;
        C_RelatorioGeralCOMACESSORIOOBS: TStringField;
        C_RelatorioGeralESTADOPRODMANCHADO: TStringField;
        C_RelatorioGeralESTADOPRODARRANHADO: TStringField;
        C_RelatorioGeralESTADOPRODSUJO: TStringField;
        C_RelatorioGeralESTADOPRODCABOELETRICO: TStringField;
        C_RelatorioGeralESTADOPRODQUEBRADO: TStringField;
        C_RelatorioGeralEMBALAGEMPAPELAO: TStringField;
        C_RelatorioGeralEMBALAGEMPLASTICO: TStringField;
        C_RelatorioGeralGARANTIAFABRICA: TStringField;
        C_RelatorioGeralFORAGARANTIA: TStringField;
        C_RelatorioGeralRETORNO: TStringField;
        C_RelatorioGeralORCAMENTOACEITO: TStringField;
        C_RelatorioGeralORCAMENTOCOMUNICADO: TStringField;
        C_RelatorioGeralSEMEMBALAGEM: TStringField;
        C_RelatorioGeralOBSAVARIA: TStringField;
        C_RelatorioGeralNUMEROSERIE: TStringField;
        C_RelatorioGeralMODELO: TIntegerField;
        C_RelatorioGeralDATACOMPRA: TDateField;
        C_RelatorioGeralDIASGARANTIA: TIntegerField;
        C_RelatorioGeralNOTAFISCAL: TStringField;
        C_RelatorioGeralREVENDEDOR: TStringField;
        C_RelatorioGeralCARACTERISTICA: TStringField;
        C_RelatorioGeralNRO: TStringField;
        C_RelatorioGeralNOME: TStringField;
        C_RelatorioGeralENDERECO: TStringField;
        C_RelatorioGeralBAIRRO: TStringField;
        C_RelatorioGeralCIDADE: TStringField;
        C_RelatorioGeralCEP: TStringField;
        C_RelatorioGeralFONE1: TStringField;
        C_RelatorioGeralFONE2: TStringField;
        C_RelatorioGeralCPF_CNPJ: TStringField;
        C_RelatorioGeralCODIGO: TStringField;
        C_RelatorioGeralDESCMODELO: TStringField;
        C_RelatorioGeralDESCSTATUS: TStringField;
        C_RelatorioGeralNOMETECNICO: TStringField;
        C_RelatorioGeralDESCLOCAL: TStringField;
        C_RelatorioGeralDESCTIPOSERV: TStringField;
        C_RelatorioGeralDESCTIPOEQUIP: TStringField;
        C_RelatorioGeralDESCMARCA: TStringField;
        C_RelatorioGeralDESCFABRICANTE: TStringField;
        ppDBERelatorioGeral: TppDBPipeline;
        ppOrcamentoNaoAceitos: TppReport;
        ppHeaderBand7: TppHeaderBand;
        ppLabel237: TppLabel;
        ppLine38: TppLine;
        ppLabel240: TppLabel;
        ppLabel241: TppLabel;
        ppLabel242: TppLabel;
        ppRegion5: TppRegion;
        ppDetailBand7: TppDetailBand;
        ppDBText59: TppDBText;
        ppDBText77: TppDBText;
        ppLine39: TppLine;
        ppLine40: TppLine;
        ppLine42: TppLine;
        ppLine44: TppLine;
        ppLine45: TppLine;
        ppLine46: TppLine;
        ppDBText146: TppDBText;
        ppFooterBand6: TppFooterBand;
        ppOrcamentoPronto: TppReport;
        ppHeaderBand9: TppHeaderBand;
        ppLabel239: TppLabel;
        ppLine41: TppLine;
        ppLabel244: TppLabel;
        ppRegion8: TppRegion;
        ppDetailBand9: TppDetailBand;
        ppDBText90: TppDBText;
        ppLine66: TppLine;
        ppLine68: TppLine;
        ppLine69: TppLine;
        ppLine70: TppLine;
        ppFooterBand8: TppFooterBand;
        ppPecasPendentesGeal: TppReport;
        ppHeaderBand10: TppHeaderBand;
        ppLabel247: TppLabel;
        ppLabel248: TppLabel;
        ppLabel249: TppLabel;
        ppLine72: TppLine;
        ppLabel251: TppLabel;
        ppRegion9: TppRegion;
        ppDetailBand10: TppDetailBand;
        ppDBText151: TppDBText;
        ppLine73: TppLine;
        ppLine84: TppLine;
        ppLine85: TppLine;
        ppLine86: TppLine;
        ppLine88: TppLine;
        ppDBText152: TppDBText;
        ppDBText153: TppDBText;
        ppFooterBand9: TppFooterBand;
        ppOrcamentoAvisados: TppReport;
        ppHeaderBand11: TppHeaderBand;
        ppLabel253: TppLabel;
        ppLabel254: TppLabel;
        ppLine89: TppLine;
        ppLabel255: TppLabel;
        ppLabel256: TppLabel;
        ppLabel257: TppLabel;
        ppRegion10: TppRegion;
        ppDetailBand11: TppDetailBand;
        ppDBText155: TppDBText;
        ppDBText156: TppDBText;
        ppLine90: TppLine;
        ppLine93: TppLine;
        ppLine99: TppLine;
        ppLine100: TppLine;
        ppLine101: TppLine;
        ppLine102: TppLine;
        ppDBText157: TppDBText;
        ppDBText158: TppDBText;
        ppFooterBand10: TppFooterBand;
        Q_PecasPendentesGeral: TIBQuery;
        C_PecasPendentesGeral: TClientDataSet;
        P_PecasPendentesGeral: TDataSetProvider;
        C_PecasPendentesGeralDS: TDataSource;
        C_PecasPendentesGeralITEM: TIntegerField;
        C_PecasPendentesGeralQUANTIDADE: TBCDField;
        C_PecasPendentesGeralUNIDADE: TStringField;
        C_PecasPendentesGeralCODIGO: TStringField;
        C_PecasPendentesGeralDESCRICAO: TStringField;
        ppDBEPecasPendentesGeral: TppDBPipeline;
        ppLabel250: TppLabel;
        ppDBText150: TppDBText;
        ppLine82: TppLine;
        C_ServicosDetESTOQUE: TBCDField;
        ppDBText154: TppDBText;
        ppLabel252: TppLabel;
        ppLine83: TppLine;
        ppLabel166: TppLabel;
        ppDBText116: TppDBText;
        C_ServicosSERVICO: TIntegerField;
        C_ServicosOSNUMERO: TStringField;
        C_ServicosCLIENTE: TIntegerField;
        C_ServicosDATAENTRADA: TDateField;
        C_ServicosHORAENTRADA: TTimeField;
        C_ServicosEQUIPAMENTO: TIntegerField;
        C_ServicosPARTESAGRAGADAS: TStringField;
        C_ServicosDEFEITOALEGADO: TStringField;
        C_ServicosDEFEITOENCONTRADO: TStringField;
        C_ServicosOBSERVACAO: TStringField;
        C_ServicosDATASAIDA: TDateField;
        C_ServicosHORASAIDA: TTimeField;
        C_ServicosFUNCENTRADA: TIntegerField;
        C_ServicosTECNICO: TIntegerField;
        C_ServicosFUNCSAIDA: TIntegerField;
        C_ServicosSTATUSSERVICO: TIntegerField;
        C_ServicosLOCALIZACAO: TIntegerField;
        C_ServicosTIPOSERVICO: TIntegerField;
        C_ServicosAVARIA: TStringField;
        C_ServicosCOMACESSORIO: TStringField;
        C_ServicosCOMACESSORIOOBS: TStringField;
        C_ServicosESTADOPRODMANCHADO: TStringField;
        C_ServicosESTADOPRODARRANHADO: TStringField;
        C_ServicosESTADOPRODSUJO: TStringField;
        C_ServicosESTADOPRODCABOELETRICO: TStringField;
        C_ServicosESTADOPRODQUEBRADO: TStringField;
        C_ServicosEMBALAGEMPAPELAO: TStringField;
        C_ServicosEMBALAGEMPLASTICO: TStringField;
        C_ServicosGARANTIAFABRICA: TStringField;
        C_ServicosFORAGARANTIA: TStringField;
        C_ServicosRETORNO: TStringField;
        C_ServicosORCAMENTOACEITO: TStringField;
        C_ServicosORCAMENTOCOMUNICADO: TStringField;
        C_ServicosSEMEMBALAGEM: TStringField;
        C_ServicosOBSAVARIA: TStringField;
        C_ServicosNUMEROSERIE: TStringField;
        C_ServicosMODELO: TIntegerField;
        C_ServicosDATACOMPRA: TDateField;
        C_ServicosDIASGARANTIA: TIntegerField;
        C_ServicosNOTAFISCAL: TStringField;
        C_ServicosREVENDEDOR: TStringField;
        C_ServicosCARACTERISTICA: TStringField;
        C_ServicosNRO: TStringField;
        C_ServicosNOME: TStringField;
        C_ServicosENDERECO: TStringField;
        C_ServicosBAIRRO: TStringField;
        C_ServicosCIDADE: TStringField;
        C_ServicosCEP: TStringField;
        C_ServicosFONE1: TStringField;
        C_ServicosFONE2: TStringField;
        C_ServicosCPF_CNPJ: TStringField;
        C_ServicosCODIGO: TStringField;
        C_ServicosDESCMODELO: TStringField;
        C_ServicosDESCSTATUS: TStringField;
        C_ServicosNOMETECNICO: TStringField;
        C_ServicosDESCLOCAL: TStringField;
        C_ServicosDESCTIPOSERV: TStringField;
        C_ServicosDESCTIPOEQUIP: TStringField;
        C_ServicosDESCMARCA: TStringField;
        C_ServicosDESCFABRICANTE: TStringField;
        C_ServicosQ_ServicosDet: TDataSetField;
        ppDBEntradaAssistencia: TppDBPipeline;
        C_ServicosATENDENTE: TStringField;
        ppLine74: TppLine;
        ppDBText128: TppDBText;
        ppDBText129: TppDBText;
        C_ServicosOBSORCACEITO: TStringField;
        C_ServicosOBSORCCOMUNICADO: TStringField;
        ppLabel109: TppLabel;
        myDBCheckBox31: TmyDBCheckBox;
        ppLabel126: TppLabel;
        ppDBText130: TppDBText;
        ppLabel183: TppLabel;
        ppDBText159: TppDBText;
        C_ServicosDESCRICAO: TStringField;
        C_ServicosCOR: TStringField;
        ppLabel198: TppLabel;
        ppDBText164: TppDBText;
        ppDBText165: TppDBText;
        ppDBText110: TppDBText;
        C_ServicosTECNICODAOS: TIntegerField;
        ppLabel258: TppLabel;
        ppLabel259: TppLabel;
        ppLabel260: TppLabel;
        ppLabel262: TppLabel;
        ppLabel263: TppLabel;
        ppLabel238: TppLabel;
        ppDBText84: TppDBText;
        ppLine56: TppLine;
        ppDBText147: TppDBText;
        ppDBText148: TppDBText;
        ppDBText149: TppDBText;
        ppLine60: TppLine;
        ppLine67: TppLine;
        ppLine71: TppLine;
        ppLabel243: TppLabel;
        ppLabel245: TppLabel;
        ppLabel246: TppLabel;
        C_ServicosCELULAR: TStringField;
        ppLabel264: TppLabel;
        ppDBText166: TppDBText;
        Q_RelatorioPorMarcas: TIBQuery;
        C_RelatorioPorMarcas: TClientDataSet;
        P_RelatorioPorMarcas: TDataSetProvider;
        C_RelatorioPorMarcasDS: TDataSource;
        ppRelatorioPorMarcas: TppReport;
        ppHeaderBand12: TppHeaderBand;
        ppLabel265: TppLabel;
        ppLabel266: TppLabel;
        ppLabel267: TppLabel;
        ppLine75: TppLine;
        ppLabel268: TppLabel;
        ppRegion11: TppRegion;
        ppLabel269: TppLabel;
        ppDetailBand12: TppDetailBand;
        ppDBText167: TppDBText;
        ppLine77: TppLine;
        ppLine78: TppLine;
        ppLine79: TppLine;
        ppLine103: TppLine;
        ppLine104: TppLine;
        ppDBText168: TppDBText;
        ppDBText169: TppDBText;
        ppDBText170: TppDBText;
        ppLine105: TppLine;
        ppFooterBand11: TppFooterBand;
        ppLabel270: TppLabel;
        ppDBText171: TppDBText;
        C_RelatorioPorMarcasSERVICO: TIntegerField;
        C_RelatorioPorMarcasOSNUMERO: TStringField;
        C_RelatorioPorMarcasCLIENTE: TIntegerField;
        C_RelatorioPorMarcasDATAENTRADA: TDateField;
        C_RelatorioPorMarcasHORAENTRADA: TTimeField;
        C_RelatorioPorMarcasEQUIPAMENTO: TIntegerField;
        C_RelatorioPorMarcasPARTESAGRAGADAS: TStringField;
        C_RelatorioPorMarcasDEFEITOALEGADO: TStringField;
        C_RelatorioPorMarcasDEFEITOENCONTRADO: TStringField;
        C_RelatorioPorMarcasOBSERVACAO: TStringField;
        C_RelatorioPorMarcasDATASAIDA: TDateField;
        C_RelatorioPorMarcasHORASAIDA: TTimeField;
        C_RelatorioPorMarcasFUNCENTRADA: TIntegerField;
        C_RelatorioPorMarcasTECNICO: TIntegerField;
        C_RelatorioPorMarcasFUNCSAIDA: TIntegerField;
        C_RelatorioPorMarcasSTATUSSERVICO: TIntegerField;
        C_RelatorioPorMarcasLOCALIZACAO: TIntegerField;
        C_RelatorioPorMarcasTIPOSERVICO: TIntegerField;
        C_RelatorioPorMarcasAVARIA: TStringField;
        C_RelatorioPorMarcasCOMACESSORIO: TStringField;
        C_RelatorioPorMarcasCOMACESSORIOOBS: TStringField;
        C_RelatorioPorMarcasESTADOPRODMANCHADO: TStringField;
        C_RelatorioPorMarcasESTADOPRODARRANHADO: TStringField;
        C_RelatorioPorMarcasESTADOPRODSUJO: TStringField;
        C_RelatorioPorMarcasESTADOPRODCABOELETRICO: TStringField;
        C_RelatorioPorMarcasESTADOPRODQUEBRADO: TStringField;
        C_RelatorioPorMarcasEMBALAGEMPAPELAO: TStringField;
        C_RelatorioPorMarcasEMBALAGEMPLASTICO: TStringField;
        C_RelatorioPorMarcasGARANTIAFABRICA: TStringField;
        C_RelatorioPorMarcasFORAGARANTIA: TStringField;
        C_RelatorioPorMarcasRETORNO: TStringField;
        C_RelatorioPorMarcasORCAMENTOACEITO: TStringField;
        C_RelatorioPorMarcasORCAMENTOCOMUNICADO: TStringField;
        C_RelatorioPorMarcasSEMEMBALAGEM: TStringField;
        C_RelatorioPorMarcasOBSAVARIA: TStringField;
        C_RelatorioPorMarcasNUMEROSERIE: TStringField;
        C_RelatorioPorMarcasMODELO: TIntegerField;
        C_RelatorioPorMarcasDATACOMPRA: TDateField;
        C_RelatorioPorMarcasDIASGARANTIA: TIntegerField;
        C_RelatorioPorMarcasNOTAFISCAL: TStringField;
        C_RelatorioPorMarcasREVENDEDOR: TStringField;
        C_RelatorioPorMarcasCODIGO: TStringField;
        C_RelatorioPorMarcasDESCMODELO: TStringField;
        C_RelatorioPorMarcasDESCRICAO: TStringField;
        C_RelatorioPorMarcasCOR: TStringField;
        C_RelatorioPorMarcasDESCSTATUS: TStringField;
        C_RelatorioPorMarcasDESCLOCAL: TStringField;
        C_RelatorioPorMarcasDESCTIPOSERV: TStringField;
        C_RelatorioPorMarcasDESCTIPOEQUIP: TStringField;
        C_RelatorioPorMarcasDESCMARCA: TStringField;
        C_RelatorioPorMarcasDESCFABRICANTE: TStringField;
        C_RelatorioPorMarcasCARACTERISTICA: TStringField;
        C_RelatorioPorMarcasOBSORCACEITO: TStringField;
        C_RelatorioPorMarcasOBSORCCOMUNICADO: TStringField;
        C_RelatorioPorMarcasTECNICODAOS: TIntegerField;
        ppDBRelatorioPorMarcas: TppDBPipeline;
        ppLabel271: TppLabel;
        ppDBCalc3: TppDBCalc;
        ppLine106: TppLine;
        Q_RelatorioLocalizacao: TIBQuery;
        C_RelatorioLocalizacao: TClientDataSet;
        P_RelatorioLocalizacao: TDataSetProvider;
        C_RelatorioLocalizacaoDS: TDataSource;
        C_RelatorioLocalizacaoSERVICO: TIntegerField;
        C_RelatorioLocalizacaoOSNUMERO: TStringField;
        C_RelatorioLocalizacaoCLIENTE: TIntegerField;
        C_RelatorioLocalizacaoDATAENTRADA: TDateField;
        C_RelatorioLocalizacaoHORAENTRADA: TTimeField;
        C_RelatorioLocalizacaoEQUIPAMENTO: TIntegerField;
        C_RelatorioLocalizacaoPARTESAGRAGADAS: TStringField;
        C_RelatorioLocalizacaoDEFEITOALEGADO: TStringField;
        C_RelatorioLocalizacaoDEFEITOENCONTRADO: TStringField;
        C_RelatorioLocalizacaoOBSERVACAO: TStringField;
        C_RelatorioLocalizacaoDATASAIDA: TDateField;
        C_RelatorioLocalizacaoHORASAIDA: TTimeField;
        C_RelatorioLocalizacaoFUNCENTRADA: TIntegerField;
        C_RelatorioLocalizacaoTECNICO: TIntegerField;
        C_RelatorioLocalizacaoFUNCSAIDA: TIntegerField;
        C_RelatorioLocalizacaoSTATUSSERVICO: TIntegerField;
        C_RelatorioLocalizacaoLOCALIZACAO: TIntegerField;
        C_RelatorioLocalizacaoTIPOSERVICO: TIntegerField;
        C_RelatorioLocalizacaoAVARIA: TStringField;
        C_RelatorioLocalizacaoCOMACESSORIO: TStringField;
        C_RelatorioLocalizacaoCOMACESSORIOOBS: TStringField;
        C_RelatorioLocalizacaoESTADOPRODMANCHADO: TStringField;
        C_RelatorioLocalizacaoESTADOPRODARRANHADO: TStringField;
        C_RelatorioLocalizacaoESTADOPRODSUJO: TStringField;
        C_RelatorioLocalizacaoESTADOPRODCABOELETRICO: TStringField;
        C_RelatorioLocalizacaoESTADOPRODQUEBRADO: TStringField;
        C_RelatorioLocalizacaoEMBALAGEMPAPELAO: TStringField;
        C_RelatorioLocalizacaoEMBALAGEMPLASTICO: TStringField;
        C_RelatorioLocalizacaoGARANTIAFABRICA: TStringField;
        C_RelatorioLocalizacaoFORAGARANTIA: TStringField;
        C_RelatorioLocalizacaoRETORNO: TStringField;
        C_RelatorioLocalizacaoORCAMENTOACEITO: TStringField;
        C_RelatorioLocalizacaoORCAMENTOCOMUNICADO: TStringField;
        C_RelatorioLocalizacaoSEMEMBALAGEM: TStringField;
        C_RelatorioLocalizacaoOBSAVARIA: TStringField;
        C_RelatorioLocalizacaoNUMEROSERIE: TStringField;
        C_RelatorioLocalizacaoMODELO: TIntegerField;
        C_RelatorioLocalizacaoDATACOMPRA: TDateField;
        C_RelatorioLocalizacaoDIASGARANTIA: TIntegerField;
        C_RelatorioLocalizacaoNOTAFISCAL: TStringField;
        C_RelatorioLocalizacaoREVENDEDOR: TStringField;
        C_RelatorioLocalizacaoCODIGO: TStringField;
        C_RelatorioLocalizacaoDESCMODELO: TStringField;
        C_RelatorioLocalizacaoDESCRICAO: TStringField;
        C_RelatorioLocalizacaoCOR: TStringField;
        C_RelatorioLocalizacaoDESCSTATUS: TStringField;
        C_RelatorioLocalizacaoDESCLOCAL: TStringField;
        C_RelatorioLocalizacaoDESCTIPOSERV: TStringField;
        C_RelatorioLocalizacaoDESCTIPOEQUIP: TStringField;
        C_RelatorioLocalizacaoDESCMARCA: TStringField;
        C_RelatorioLocalizacaoDESCFABRICANTE: TStringField;
        C_RelatorioLocalizacaoCARACTERISTICA: TStringField;
        C_RelatorioLocalizacaoOBSORCACEITO: TStringField;
        C_RelatorioLocalizacaoOBSORCCOMUNICADO: TStringField;
        C_RelatorioLocalizacaoTECNICODAOS: TIntegerField;
        ppDBrelatorioLocalizacao: TppDBPipeline;
        ppRelatorioLocalizacao: TppReport;
        ppHeaderBand13: TppHeaderBand;
        ppLabel272: TppLabel;
        ppLabel273: TppLabel;
        ppLabel274: TppLabel;
        ppLine107: TppLine;
        ppLabel275: TppLabel;
        ppRegion12: TppRegion;
        ppLabel276: TppLabel;
        ppDetailBand13: TppDetailBand;
        ppDBText176: TppDBText;
        ppLine108: TppLine;
        ppLine109: TppLine;
        ppLine110: TppLine;
        ppLine111: TppLine;
        ppLine112: TppLine;
        ppDBText177: TppDBText;
        ppDBText178: TppDBText;
        ppDBText179: TppDBText;
        ppLine113: TppLine;
        ppFooterBand12: TppFooterBand;
        ppLabel280: TppLabel;
        ppDBCalc4: TppDBCalc;
        ppLine114: TppLine;
        ppLine115: TppLine;
        ppLabel277: TppLabel;
        ppDBText175: TppDBText;
        ppLine116: TppLine;
        ppDBText180: TppDBText;
        ppLabel281: TppLabel;
        C_PecasPendentesREFERENCIA: TStringField;
        ppDBEPecasPendentes: TppDBPipeline;
        C_PecasPendentesGeralREFERENCIA: TStringField;
        ppDBEPecasPendentesGeralppField6: TppField;
        C_PecasPendentesGeralFABRICANTE: TStringField;
        ppDBEPecasPendentesGeralppField7: TppField;
        ppLabel282: TppLabel;
        ppDBText181: TppDBText;
        ppLine117: TppLine;
        C_PecasPendentesFABRICANTE: TStringField;
        ppLabel78: TppLabel;
        ppDBText57: TppDBText;
        ppLabel83: TppLabel;
        ppLabel84: TppLabel;
        ppLabel85: TppLabel;
        ppLabel89: TppLabel;
        ppDBText70: TppDBText;
        ppDBText71: TppDBText;
        ppDBText72: TppDBText;
        ppDBText73: TppDBText;
        ppLabel90: TppLabel;
        ppLabel92: TppLabel;
        ppDBText76: TppDBText;
        ppDBText78: TppDBText;
        ppLabel93: TppLabel;
        ppLabel94: TppLabel;
        ppLabel95: TppLabel;
        ppDBText79: TppDBText;
        ppLabel96: TppLabel;
        ppLine17: TppLine;
        ppLabel102: TppLabel;
        ppDBText80: TppDBText;
        ppLabel103: TppLabel;
        ppLabel104: TppLabel;
        ppDBText86: TppDBText;
        ppLine20: TppLine;
        ppLabel105: TppLabel;
        ppLabel106: TppLabel;
        ppLabel107: TppLabel;
        ppDBText87: TppDBText;
        ppDBText88: TppDBText;
        ppDBText89: TppDBText;
        ppLabel108: TppLabel;
        ppDBText91: TppDBText;
        ppLine22: TppLine;
        ppLabel110: TppLabel;
        ppDBMemo14: TppDBMemo;
        ppLabel111: TppLabel;
        ppLine24: TppLine;
        ppLabel112: TppLabel;
        ppLabel116: TppLabel;
        ppLabel117: TppLabel;
        ppLabel182: TppLabel;
        ppLabel193: TppLabel;
        myDBCheckBox4: TmyDBCheckBox;
        myDBCheckBox5: TmyDBCheckBox;
        myDBCheckBox6: TmyDBCheckBox;
        ppLabel194: TppLabel;
        ppLabel195: TppLabel;
        ppLabel202: TppLabel;
        ppLabel203: TppLabel;
        myDBCheckBox12: TmyDBCheckBox;
        myDBCheckBox13: TmyDBCheckBox;
        myDBCheckBox14: TmyDBCheckBox;
        myDBCheckBox15: TmyDBCheckBox;
        myDBCheckBox16: TmyDBCheckBox;
        ppLabel204: TppLabel;
        myDBCheckBox18: TmyDBCheckBox;
        ppLabel205: TppLabel;
        ppDBMemo17: TppDBMemo;
        ppLabel206: TppLabel;
        ppLabel207: TppLabel;
        myDBCheckBox27: TmyDBCheckBox;
        ppLabel208: TppLabel;
        ppLabel209: TppLabel;
        ppDBText97: TppDBText;
        ppLabel210: TppLabel;
        ppDBText125: TppDBText;
        ppLabel211: TppLabel;
        ppDBText140: TppDBText;
        ppLabel214: TppLabel;
        ppDBText142: TppDBText;
        ppLabel215: TppLabel;
        ppDBMemo18: TppDBMemo;
        ppLabel217: TppLabel;
        ppLabel219: TppLabel;
        myDBCheckBox33: TmyDBCheckBox;
        ppLabel228: TppLabel;
        myDBCheckBox34: TmyDBCheckBox;
        ppLabel229: TppLabel;
        ppLabel230: TppLabel;
        ppDBText143: TppDBText;
        ppLabel231: TppLabel;
        myDBCheckBox35: TmyDBCheckBox;
        ppLabel232: TppLabel;
        ppDBText144: TppDBText;
        ppLabel233: TppLabel;
        ppDBText145: TppDBText;
        ppMemo2: TppMemo;
        ppLabel234: TppLabel;
        ppDBText160: TppDBText;
        ppDBText162: TppDBText;
        ppLabel261: TppLabel;
        ppLine26: TppLine;
        ppLabel285: TppLabel;
        ppLabel286: TppLabel;
        ppLabel287: TppLabel;
        ppLabel288: TppLabel;
        myDBCheckBox36: TmyDBCheckBox;
        myDBCheckBox37: TmyDBCheckBox;
        myDBCheckBox38: TmyDBCheckBox;
        ppLabel289: TppLabel;
        ppLabel290: TppLabel;
        ppLabel291: TppLabel;
        ppLabel292: TppLabel;
        myDBCheckBox39: TmyDBCheckBox;
        myDBCheckBox40: TmyDBCheckBox;
        myDBCheckBox41: TmyDBCheckBox;
        myDBCheckBox42: TmyDBCheckBox;
        myDBCheckBox43: TmyDBCheckBox;
        //ppLabel297: TppLabel;
        //myDBCheckBox44: TmyDBCheckBox;
        //ppLabel298: TppLabel;
        ppDBMemo20: TppDBMemo;
        ppLabel301: TppLabel;
        ppDBMemo21: TppDBMemo;
        ppLabel302: TppLabel;
        ppLabel303: TppLabel;
        ppLine120: TppLine;
        ppDBText186: TppDBText;
        ppLine121: TppLine;
        ppLabel297: TppLabel;
        ppLabel298: TppLabel;
        myDBCheckBox44: TmyDBCheckBox;
        ppLabel306: TppLabel;
        ppDBText187: TppDBText;
        ppLabel307: TppLabel;
        ppDBMemo9: TppDBMemo;
        ppDBMemo12: TppDBMemo;
        ppLabel76: TppLabel;
        ppDBText96: TppDBText;
        ppLine76: TppLine;
        ppLine80: TppLine;
        ppLine122: TppLine;
        ppLine123: TppLine;
        ppLine124: TppLine;
        C_ServicosCPFCNPJ_EQUIP: TStringField;
        C_ServicosUF: TStringField;
        ppLabel308: TppLabel;
        ppDBText119: TppDBText;
        ppLabel309: TppLabel;
        ppDBText188: TppDBText;
        ppLabel310: TppLabel;
        ppDBText189: TppDBText;
        ppLabel311: TppLabel;
        ppDBText190: TppDBText;
        ppLabel312: TppLabel;
        ppDBText191: TppDBText;
        ppLabel313: TppLabel;
        ppDBText192: TppDBText;
    ppEntradaMIX: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppLabel421: TppLabel;
    ppDBText250: TppDBText;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppLabel427: TppLabel;
    ppLine136: TppLine;
    ppLabel428: TppLabel;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppLabel431: TppLabel;
    ppDBMemo29: TppDBMemo;
    ppLabel432: TppLabel;
    ppDBMemo30: TppDBMemo;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppRegion15: TppRegion;
    ppLabel433: TppLabel;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppLabel434: TppLabel;
    ppDBText274: TppDBText;
    ppLabel452: TppLabel;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppDBText278: TppDBText;
    myDBCheckBox72: TmyDBCheckBox;
    ppLabel455: TppLabel;
    myDBCheckBox73: TmyDBCheckBox;
    ppLabel456: TppLabel;
    myDBCheckBox74: TmyDBCheckBox;
    ppLabel457: TppLabel;
    ppLabel458: TppLabel;
    ppDBText279: TppDBText;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppDBText280: TppDBText;
    ppLabel463: TppLabel;
    ppDBText281: TppDBText;
    ppLabel464: TppLabel;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppDBText284: TppDBText;
    ppLabel467: TppLabel;
    ppDBText285: TppDBText;
    ppLabel468: TppLabel;
    ppDBText286: TppDBText;
    myDBCheckBox75: TmyDBCheckBox;
    ppLabel469: TppLabel;
    myDBCheckBox76: TmyDBCheckBox;
    ppLabel470: TppLabel;
    myDBCheckBox77: TmyDBCheckBox;
    ppLabel471: TppLabel;
    ppLabel447: TppLabel;
    ppDBText275: TppDBText;
    ppLabel448: TppLabel;
    ppDBText276: TppDBText;
    ppLabel449: TppLabel;
    ppDBText277: TppDBText;
    ppDBMemo33: TppDBMemo;
    ppLabel451: TppLabel;
    ppLabel472: TppLabel;
    ppDBMemo34: TppDBMemo;
    ppLine141: TppLine;
    ppLabel450: TppLabel;
    ppDBText287: TppDBText;
    ppLabel473: TppLabel;
    ppDBText288: TppDBText;
    ppLabel435: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppFooterBand14: TppFooterBand;
    ppRichText3: TppRichText;
    ppComprovanteEntrega: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppLabel314: TppLabel;
    ppDBText193: TppDBText;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppLabel320: TppLabel;
    ppLine125: TppLine;
    ppLabel324: TppLabel;
    ppDBMemo19: TppDBMemo;
    ppLabel325: TppLabel;
    ppDBMemo22: TppDBMemo;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppRegion13: TppRegion;
    ppLabel326: TppLabel;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppDBText206: TppDBText;
    myDBCheckBox46: TmyDBCheckBox;
    ppLabel331: TppLabel;
    myDBCheckBox47: TmyDBCheckBox;
    ppLabel332: TppLabel;
    myDBCheckBox48: TmyDBCheckBox;
    ppLabel333: TppLabel;
    ppLabel336: TppLabel;
    ppTermosGarantia: TppRichText;
    ppDetailBand14: TppDetailBand;
    ppFooterBand13: TppFooterBand;
    ppDBMemo25: TppDBMemo;
    ppLine129: TppLine;
    ppDBText205: TppDBText;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel335: TppLabel;
    ppLabel346: TppLabel;
    ppRichText4: TppRichText;
    C_ServicosMARCA: TStringField;
    C_ServicosTIPO: TStringField;
    ppLabel347: TppLabel;
    ppDBText212: TppDBText;
    ppLabel348: TppLabel;
    C_ServicosUSUARIO: TStringField;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel334: TppLabel;
    ppDBText207: TppDBText;
    ppDBText217: TppDBText;
    ppLabel343: TppLabel;
    ppDBText218: TppDBText;
    ppLabel355: TppLabel;
    ppDBText219: TppDBText;
    ppLabel356: TppLabel;
    ppDBText220: TppDBText;
    ppLabel357: TppLabel;
        procedure ppRTLegislacaoPrint(Sender: TObject);
        procedure ppRichText1Print(Sender: TObject);
        procedure C_ServicosDetCalcFields(DataSet: TDataSet);
        //    procedure ppDBText95GetText(Sender: TObject; var Text: String);
        procedure ppEntradaAssistenciaBeforePrint(Sender: TObject);
        procedure ppDBText128GetText(Sender: TObject; var Text: string);
        procedure ppDBText129GetText(Sender: TObject; var Text: string);
        procedure ppDBText105GetText(Sender: TObject; var Text: string);
        procedure ppDBText130GetText(Sender: TObject; var Text: string);
        procedure ppDBText101GetText(Sender: TObject; var Text: string);
        procedure ppDBNomeTecnicodaOSGetText(Sender: TObject; var Text: string);
        procedure ppDBText117GetText(Sender: TObject; var Text: string);
        procedure ppLabel262GetText(Sender: TObject; var Text: string);
        procedure ppLabel263GetText(Sender: TObject; var Text: string);
        procedure ppMemo1Print(Sender: TObject);
        procedure ppMemo2Print(Sender: TObject);
    procedure ppOrdemdeServicoBeforePrint(Sender: TObject);
    private
        { Private declarations }
        bEntrega: boolean;
        cpf_cnpj: string;
    public
        { Public declarations }
        procedure ImprimirEntradaEquipamento(nID: integer);
        procedure ImprimirControleInterno(nID: integer);
        procedure ImprimirOrcamento(nID: integer);
        procedure ImprimirEntregaEquipamento(nID: integer; vias: integer);
        procedure ImprimirChamado(nID: integer);
        procedure ImprimirPecasPendentes(numeroOS: string; idMarca: string; idStatusServico: string; dataInicial: TTime; dataFinal: TTime;
            idStatusGarantia: integer; idTecnicoServico: integer; idTecnicoOrcamento: integer);
        procedure ImprimirPecasPendentesGeral;
        procedure ImprimirRelatorioPorMarca(numeroOS: string; idMarca: string; idStatus: string; dataE: TTime; dataS: TTime;
            idStatusGarantia: integer; idTecnicoServico: integer; idTecnicoOrcamento: integer);
        procedure ImprimirRelatorioPorLocalizacao(idStatus: Integer; idMarca: Integer);
        procedure ImprimirOrcamentoNaoAceito(orcamentoaceito: string; orcamentoaceit: string;
            orcamentocomunicado: string; orcamentocomunicad: string; servicopronto: string; servicopront: string;
            produtoentregue: string; produtoentregu: string; id: integer; data1: TTime; data2: TTime);
        procedure ImprimirComprovanteEntrega(nID: integer);
    end;

var
    RptTecnica: TRptTecnica;

implementation

{$R *.dfm}

uses DM_Projeto, Funcoes, TDM_Projeto;

procedure TRptTecnica.ImprimirEntradaEquipamento(nID: integer);
begin
    C_Servicos.Close;
    Q_Servicos.ParamByName('s').AsInteger := nID;
    C_Servicos.Open;
    lbEntrega.Visible := False;
    bEntrega := False;
    //  DMProjeto.ImprimirCabecalho( ppRegionLadoEsquerdo);
      //DMProjeto.ImprimirCabecalho( ppRegionLadoDireito );
    //  ppRegionLadoDireito := ppRegionLadoEsquerdo;

    DMProjeto.ImprimirCabecalho(ppRegion15);
    if DMProjeto.Parametro('RelatorioAssistencia') = '2'  then
       ppEntradaMIX.Print
    else
    ppEntradaAssistencia.Print;

    DMProjeto.ImprimirCabecalho(regCab);
    //  ppEntraAssControleInterno.Print;
end;

//Paulo 2806201

procedure TRptTecnica.ImprimirControleInterno(nID: integer);
begin
    C_Servicos.Close;
    Q_Servicos.ParamByName('s').AsInteger := nID;
    C_Servicos.Open;
    lbEntrega.Visible := False;
    bEntrega := False;
    DMProjeto.ImprimirCabecalho(regCab);
    ppEntraAssControleInterno.Print;
end;

procedure TRptTecnica.ImprimirOrcamento(nID: integer);
begin
    C_Servicos.Close;
    Q_Servicos.ParamByName('s').AsInteger := nID;
    C_Servicos.Open;
    DMProjeto.ImprimirCabecalho(ppRegion6);
    //ppOrcamento.Print;
    ppOrdemdeServico.Print;
end;

procedure TRptTecnica.ppRTLegislacaoPrint(Sender: TObject);
begin

    ppRichText3.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');
//    ppRTLegislacao1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');

    if bEntrega then
        begin
            ppRTLegislacao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');
//            ppRTLegislacao1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');

        end
    else
        begin
            ppRTLegislacao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'entrega.rtf');
//            ppRTLegislacao1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'entrega.rtf');
        end;
end;

//abaixo texto original da procedure, comentei para fazer novo comprovante de entrega do equipamento para o cliente SMART MIX
// pelo que verifiquei, o campo Bentrega sempre esta false e nunca entra no if , sempre no ELSE --César 30/01/2020

//    if bEntrega then
//        begin
//            ppRTLegislacao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');
//            ppRTLegislacao1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'legislacao.rtf');
//        end
//    else
//        begin
//            ppRTLegislacao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'entrega.rtf');
//            ppRTLegislacao1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'entrega.rtf');
//        end;
//end;

procedure TRptTecnica.ppRichText1Print(Sender: TObject);
begin
    ppRichText1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Orcamento.rtf');
end;

procedure TRptTecnica.C_ServicosDetCalcFields(DataSet: TDataSet);
begin
    C_ServicosDetSUBTOTAL.Value :=
        C_ServicosDetQUANTIDADE.Value * C_ServicosDetVALOR.Value;
end;

procedure TRptTecnica.ImprimirEntregaEquipamento(nID: integer; vias: integer);
begin
    C_Servicos.Close;
    Q_Servicos.ParamByName('s').AsInteger := nID;
    C_Servicos.Open;
    lbEntrega.Visible := True;
    bEntrega := True;
    DMProjeto.ImprimirCabecalho(ppRegion2);
    DMProjeto.ImprimirCabecalho(ppRegion1);
    DMProjeto.ImprimirCabecalho(ppRegion15);

    if (vias < 1) then vias := 1;
    ppEntradaAssistencia.PrinterSetup.Copies := vias;

    if DMProjeto.Parametro('RelatorioAssistencia') = '2'  then
       ppEntradaMIX.Print
    else
    ppEntradaAssistencia.Print;
end;

procedure TRptTecnica.ImprimirComprovanteEntrega(nID: integer);
begin
    C_Servicos.Close;
    Q_Servicos.ParamByName('S').AsInteger := nID;
    C_Servicos.Open;
    C_ServicosDet.Close;
    Q_ServicosDet.ParamByName('SERVICO').AsInteger := nID;
    C_ServicosDet.Open;
    DMProjeto.ImprimirCabecalho(ppRegion13);
    ppTermosGarantia.LoadFromFile(ExtractFilePath(Application.ExeName) + 'garantia.rtf');
    ppComprovanteEntrega.Print;

end;

procedure TRptTecnica.ImprimirChamado(nID: integer);
begin
    C_Chamados.Close;
    Q_Chamados.ParamByName('chamado').AsInteger := nID;
    C_Chamados.Open;
    DMProjeto.ImprimirCabecalho(ppRegion4);
    ppChamado.Print;
end;

//procedure TRptTecnica.ppDBText95GetText(Sender: TObject; var Text: String);
//begin
//  Text := DMProjeto.sLoginName;
//end;

//Paulo

procedure TRptTecnica.ppEntradaAssistenciaBeforePrint(Sender: TObject);
begin
    if length(AllTrim(C_ServicosCPF_CNPJ.value)) = 11 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 4, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 7, 3) + '-' + copy(C_ServicosCPF_CNPJ.Value, 10, 2);
    if length(AllTrim(C_ServicosCPF_CNPJ.Value)) = 14 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 2) + '.' + copy(C_ServicosCPF_CNPJ.Value, 3, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 6, 3) + '/' + copy(C_ServicosCPF_CNPJ.Value, 9, 4) + '-' + copy(C_ServicosCPF_CNPJ.Value, 13, 2);

    ppLabel235.caption := cpf_cnpj;
    ppLabel217.caption := cpf_cnpj;
end;

procedure TRptTecnica.ImprimirPecasPendentes(numeroOS: string; idMarca: string; idStatusServico: string; dataInicial: TTime; dataFinal: TTime;
    idStatusGarantia: integer; idTecnicoServico: integer; idTecnicoOrcamento: integer);
begin
    C_PecasPendentes.Close;
    Q_PecasPendentes.Close;

    Q_PecasPendentes.ParamByName('datae').AsDateTime := dataInicial;
    Q_PecasPendentes.ParamByName('datas').AsDateTime := dataFinal;

    if numeroOS <> '' then
        Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.osnumero like ''%' + numeroOS + '%''';
    if idMarca <> '' then
        Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and ma.marca in (' + idMarca + ')';
    if idStatusServico <> '' then
        Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.statusservico in (' + idStatusServico + ')';
    if idTecnicoServico <> 0 then
        Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.tecnicodaos = ' + InttoStr(idTecnicoServico);
    if idTecnicoOrcamento <> 0 then
        Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.tecnico = ' + IntToStr(idTecnicoOrcamento);

    case idStatusGarantia of
        1: Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.garantiafabrica = ''S''';
        2: Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' and s.foragarantia = ''S''';
        3: Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + 'and s.retorno = ''S''';
    end;

    Q_PecasPendentes.SQL.Text := Q_PecasPendentes.SQL.Text + ' order by s.osnumero ';

    C_PecasPendentes.Open;
    DMProjeto.ImprimirCabecalho(ppRegion7);

    ppPecasPendentes.Print;
end;

procedure TRptTecnica.ImprimirPecasPendentesGeral;
begin
    C_PecasPendentesGeral.Close;
    C_PecasPendentesGeral.Open;
    DMProjeto.ImprimirCabecalho(ppRegion9);
    //DMProjeto.ImprimirCabecalho(ppRegion20);
    ppPecasPendentesGeal.Print;
end;

procedure TRptTecnica.ImprimirOrcamentoNaoAceito(orcamentoaceito: string; orcamentoaceit: string;
    orcamentocomunicado: string; orcamentocomunicad: string; servicopronto: string; servicopront: string;
    produtoentregue: string; produtoentregu: string; id: integer; data1: TTime; data2: TTime);
begin
    C_RelatorioGeral.Close;
    with Q_RelatorioGeral do
        begin
            ParamByName('orcamentoaceito').AsString := orcamentoaceito;
            ParamByName('orcamentoaceit').AsString := orcamentoaceit;
            ParamByName('orcamentocomunicado').AsString := orcamentocomunicado;
            ParamByName('orcamentocomunicad').AsString := orcamentocomunicad;
            ParamByName('servicopronto').AsString := servicopronto;
            ParamByName('servicopront').AsString := servicopront;
            ParamByName('produtoentregue').AsString := produtoentregue;
            ParamByName('produtoentregu').AsString := produtoentregu;
            ParamByName('data1').AsDateTime := data1;
            ParamByName('data2').AsDateTime := data2;
        end;
    C_RelatorioGeral.Open;

    case id of
        1:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS NÃO ACEITOS';
                ppOrcamentoNaoAceitos.Print;
            end;
        2:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS ACEITOS';
                ppOrcamentoNaoAceitos.Print;
            end;
        3:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS NÃO AVISADOS';
                ppOrcamentoNaoAceitos.Print;
            end;
        4:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS AVISADOS';
                ppOrcamentoNaoAceitos.Print;
            end;
        5:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS PRONTOS E NÃO AVISADOS';
                ppOrcamentoNaoAceitos.Print;
            end;
        6:
            begin
                DMProjeto.ImprimirCabecalho(ppRegion5);
                ppLabel237.Caption := 'LISTA DE ORÇAMENTOS PRONTOS E NÃO ENTREGUE';
                ppOrcamentoNaoAceitos.Print;
            end;
    end;
end;

procedure TRptTecnica.ppDBText128GetText(Sender: TObject;
    var Text: string);
begin

    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := C_ServicosTECNICO.value;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('codigo').Asstring;
end;

procedure TRptTecnica.ppDBText129GetText(Sender: TObject;
    var Text: string);
begin
    Text := ppDBText128.text;
end;

procedure TRptTecnica.ppDBText105GetText(Sender: TObject;
    var Text: string);
begin
    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := C_ServicosTECNICO.value;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('codigo').Asstring;
end;

procedure TRptTecnica.ppDBText130GetText(Sender: TObject;
    var Text: string);
begin
    text := FormatDateTime('dd/mm/yyyy', now);
end;

procedure TRptTecnica.ppDBText101GetText(Sender: TObject;
    var Text: string);
begin
    if length(AllTrim(C_ServicosCPF_CNPJ.value)) = 11 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 4, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 7, 3) + '-' + copy(C_ServicosCPF_CNPJ.Value, 10, 2);
    if length(AllTrim(C_ServicosCPF_CNPJ.Value)) = 14 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 2) + '.' + copy(C_ServicosCPF_CNPJ.Value, 3, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 6, 3) + '/' + copy(C_ServicosCPF_CNPJ.Value, 9, 4) + '-' + copy(C_ServicosCPF_CNPJ.Value, 13, 2);

    text := cpf_cnpj;
end;

procedure TRptTecnica.ppDBNomeTecnicodaOSGetText(Sender: TObject;
    var Text: string);
begin
    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo,F.nome from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := C_ServicosTECNICODAOS.value;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('codigo').Asstring;
end;

procedure TRptTecnica.ppDBText117GetText(Sender: TObject;
    var Text: string);
begin
    if length(AllTrim(C_ServicosCPF_CNPJ.value)) = 11 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 4, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 7, 3) + '-' + copy(C_ServicosCPF_CNPJ.Value, 10, 2);
    if length(AllTrim(C_ServicosCPF_CNPJ.Value)) = 14 then
        cpf_cnpj := copy(C_ServicosCPF_CNPJ.Value, 1, 2) + '.' + copy(C_ServicosCPF_CNPJ.Value, 3, 3) + '.' + copy(C_ServicosCPF_CNPJ.Value, 6, 3) + '/' + copy(C_ServicosCPF_CNPJ.Value, 9, 4) + '-' + copy(C_ServicosCPF_CNPJ.Value, 13, 2);

    text := cpf_cnpj;
end;

procedure TRptTecnica.ppLabel262GetText(Sender: TObject; var Text: string);
begin
    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo,F.nome from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := C_ServicosTECNICO.value;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('nome').Asstring;
end;

procedure TRptTecnica.ppLabel263GetText(Sender: TObject; var Text: string);
begin
    DMProjeto.Q_Auxiliar.Close;
    DMProjeto.Q_Auxiliar.SQL.Text := 'select f.codigo,F.nome from favorecidos f where f.favorecido = :favorecido';
    DMProjeto.Q_Auxiliar.ParamByName('favorecido').AsInteger := C_ServicosTECNICODAOS.value;
    DMProjeto.Q_Auxiliar.open;
    Text := DMProjeto.Q_Auxiliar.Fieldbyname('nome').Asstring;

end;

procedure TRptTecnica.ppMemo1Print(Sender: TObject);
var arq: TStringList;
begin
    if fileexists(DMProject.TemplatesPath + 'TermosRpt_Tecnica.txt') then
        begin
            arq := TStringList.Create();
            arq.LoadFromFile(DMProject.TemplatesPath + 'TermosRpt_Tecnica.txt');
            ppmemo1.Lines.Clear;
            ppmemo1.Lines := arq;
        end;
end;

procedure TRptTecnica.ppMemo2Print(Sender: TObject);
var arq: TStringList;
begin
    if fileexists(DMProject.TemplatesPath + 'TermosRpt_Tecnica.txt') then
        begin
            arq := TStringList.Create();
            arq.LoadFromFile(DMProject.TemplatesPath + 'TermosRpt_Tecnica.txt');
            ppmemo2.Lines.Clear;
            ppmemo2.Lines := arq;
        end;
end;

procedure TRptTecnica.ImprimirRelatorioPorMarca(numeroOS: string; idMarca: string; idStatus: string; dataE: TTime; dataS: TTime;
    idStatusGarantia: integer; idTecnicoServico: integer; idTecnicoOrcamento: integer);
begin
    C_RelatorioPorMarcas.Close;
    Q_RelatorioPorMarcas.close;
    Q_RelatorioPorMarcas.ParamByName('datae').AsDateTime := dataE;
    Q_RelatorioPorMarcas.ParamByName('datas').AsDateTime := dataS;

    if numeroOS <> '' then
        Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.osnumero like ''%' + numeroOS + '%''';
    if idMarca <> '' then
        Q_RelatorioPorMarcas.sql.text := Q_RelatorioPorMarcas.sql.text + ' and mr.marca in (' + idMarca + ')';
    if idStatus <> '' then
        Q_RelatorioPorMarcas.sql.text := Q_RelatorioPorMarcas.sql.text + ' and ss.statusservico in (' + idStatus + ')';
    if idTecnicoServico <> 0 then
        Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.tecnicodaos = ' + InttoStr(idTecnicoServico);
    if idTecnicoOrcamento <> 0 then
        Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.tecnico = ' + InttoStr(idTecnicoOrcamento);

    case idStatusGarantia of
        1: Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.garantiafabrica = ''S''';
        2: Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.foragarantia = ''S''';
        3: Q_RelatorioPorMarcas.SQL.Text := Q_RelatorioPorMarcas.SQL.Text + ' and s.retorno = ''S''';
    end;

    Q_RelatorioPorMarcas.sql.text := Q_RelatorioPorMarcas.sql.text + ' order by mr.descricao, s.osnumero asc ';

    C_RelatorioPorMarcas.Open;
    DMProjeto.ImprimirCabecalho(ppRegion11);
    ppRelatorioPorMarcas.Print;

    //  C_RelatorioPorMarcas.Close;
    //  C_RelatorioPorMarcas.Open;
    //  DMProjeto.ImprimirCabecalho( ppRegion11);
    //  DMProjeto.ImprimirCabecalho(ppRegion20);
    //  ppRelatorioPorMarcas.Print;
end;

procedure TRptTecnica.ImprimirRelatorioPorLocalizacao(idStatus: Integer; idMarca: Integer);
begin
    C_RelatorioLocalizacao.Close;
    with Q_RelatorioLocalizacao do
        begin
            ParamByName('statusservico').AsInteger := idStatus;
            ParamByName('marca').AsInteger := idMarca;
        end;
    C_RelatorioLocalizacao.Open;
    DMProjeto.ImprimirCabecalho(ppRegion12);
    ppRelatorioLocalizacao.Print;
end;

procedure TRptTecnica.ppOrdemdeServicoBeforePrint(Sender: TObject);
var
    idMensagemServico, tamanho: integer;
    mensagem: string;
begin
    { A mensagem exibida no rodape da impressao vem da tabela MensagensServicos. Essa mensagem pode ser alterada
        pela tela de configuracao do sistema - Felipe (02/02/2017) }
    idMensagemServico := StrToInt(DMProjeto.Parametro('MensagemServico'));

    with DMProjeto.Q_SQL3 do
        begin
            Close;
            SQL.Text := 'select me.descricao from mensagensservicos me where me.mensagemservico = :id';
            ParamByName('id').AsInteger := idMensagemServico;
            Open;

            if not FieldByName('descricao').IsNull then
                begin
                    mensagem := FieldByName('descricao').AsString;
                    ppRichText2.RichText := mensagem;
                end;
        end;

    { Diminuindo fonte para caber os 465 caracteres }
    ppRichText2.Font.Size := 7;
end;

end.

