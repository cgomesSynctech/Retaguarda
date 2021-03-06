unit Rpt_DocCobranca;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ppDB, ppDBPipe, DB, Provider, IBCustomDataSet, IBQuery,
    DBClient, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls,
    ppBands, ppCache, ppStrtch, ppMemo, DlgMsg, ppRegion, gbCobranca, ppVar,
    ppRichTx, ZRCtrls, ZReport, RxGIF, ppBarCod, DateUtils, jpeg, uFreeBoleto, uFreeBoletoImage;

type
    TRptDocCobranca = class(TForm)
        rbDuplicata: TppReport;
        C_Titulos: TClientDataSet;
        Q_Titulos: TIBQuery;
        P_Titulos: TDataSetProvider;
        C_TitulosDS: TDataSource;
        dbTitulos: TppDBPipeline;
        C_TitulosNOTAFISCAL: TStringField;
        C_TitulosVENCIMENTO: TDateField;
        C_TitulosFONE1: TStringField;
        C_TitulosFONE2: TStringField;
        C_TitulosPLANOPAGAMENTO: TStringField;
        C_TitulosCOMPETENCIA: TDateField;
        C_TitulosVALORDESCANTECIPADO: TBCDField;
        C_TitulosVALORJUROSMORA: TBCDField;
        C_TitulosNOME: TStringField;
        C_TitulosENDERECO: TStringField;
        C_TitulosBAIRRO: TStringField;
        C_TitulosCIDADE: TStringField;
        C_TitulosUF: TStringField;
        C_TitulosCEP: TStringField;
        C_TitulosCPF_CNPJ: TStringField;
        C_TitulosINSCRICAO_EST: TStringField;
        C_TitulosCODVENDEDOR: TStringField;
        C_TitulosVENDEDOR: TStringField;
        C_TitulosCODCLIENTE: TStringField;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        dbNotaFiscal: TppDBText;
        ppDBValor: TppDBText;
        ppDBText1: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        C_TitulosDATAANTECIPACAO: TDateField;
        C_TitulosDATANASC: TDateField;
        C_TitulosPAI: TStringField;
        C_TitulosMAE: TStringField;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBText14: TppDBText;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        MemoExtenso: TppMemo;
        ppDBText20: TppDBText;
        ppDBText21: TppDBText;
        ppDBText22: TppDBText;
        C_TitulosTIPOCOBRANCA: TIntegerField;
        C_TitulosDESCTIPOCOBRANCA: TStringField;
        rbBoleto: TppReport;
        C_TitulosNUMEROCARTEIRA: TStringField;
        C_TitulosLOCALDEPAGAMENTO: TStringField;
        C_TitulosESPECIE: TStringField;
        C_TitulosESPECIEDOC: TStringField;
        C_TitulosQUANTIDADE: TStringField;
        C_TitulosACEITE: TStringField;
        C_TitulosAGENCIA: TStringField;
        C_TitulosCODIGO: TStringField;
        C_TitulosNOSSONUMERO: TStringField;
        DlgMsg: TDlgMsg;
        rgCabDup: TppRegion;
        C_TitulosJUROSINSTRUCOES: TFloatField;
        ppHeaderBand2: TppHeaderBand;
        ppDetailBand2: TppDetailBand;
        ppDBText23: TppDBText;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppDBText27: TppDBText;
        ppDBText28: TppDBText;
        ppDBText29: TppDBText;
        ppDBText30: TppDBText;
        ppDBText31: TppDBText;
        ppDBText32: TppDBText;
        ppDBText33: TppDBText;
        ppDBText35: TppDBText;
        ppDBText37: TppDBText;
        ppDBText39: TppDBText;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppDBText42: TppDBText;
        ppDBMemo1: TppDBMemo;
        ppLabel1: TppLabel;
        ppDBText24: TppDBText;
        ppDBText36: TppDBText;
        ppDBText38: TppDBText;
        rgCabBol: TppRegion;
        ppDBText34: TppDBText;
        ppDBText43: TppDBText;
        ppLabel2: TppLabel;
        ppFooterBand2: TppFooterBand;
        C_TitulosVALOR_TEMP: TBCDField;
        C_TitulosINSTRUCOES_TEMP: TStringField;
        C_TitulosCOBRAREMISSAO: TStringField;
        C_TitulosTARIFAEMISSAO: TBCDField;
        C_TitulosINSTRUCOES: TStringField;
        C_TitulosVALOR: TCurrencyField;

        C_TitulosPREIMPRESSO: TStringField;
        C_TitulosDIGITOCODIGO: TStringField;
        C_TitulosNUMCONTA: TStringField;
        C_TitulosCODBANCO: TStringField;
        C_TitulosDESCBANCO: TStringField;
        C_TitulosLOGOTIPO: TStringField;
        C_TitulosID: TIntegerField;
        rbDuplicataImp: TppReport;
        ppHeaderBand3: TppHeaderBand;
        ppDetailBand3: TppDetailBand;
        ppFooterBand3: TppFooterBand;
        rbrgCabecalho: TppRegion;
        ppMemo1: TppMemo;
        ppShape1: TppShape;
        ppShape2: TppShape;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        ppLine6: TppLine;
        ppLine9: TppLine;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppMemo2: TppMemo;
        ppLabel8: TppLabel;
        ppLine10: TppLine;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLine11: TppLine;
        ppLabel12: TppLabel;
        ppLabel13: TppLabel;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLine12: TppLine;
        ppLine13: TppLine;
        ppMemo3: TppMemo;
        ppLine14: TppLine;
        ppMemoExtenso_Impresso: TppMemo;
        ppMemoAceite: TppMemo;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLine15: TppLine;
        ppLabel19: TppLabel;
        ppDBText44: TppDBText;
        ppDBValor_Impresso: TppDBText;
        ppDBText46: TppDBText;
        ppDBText47: TppDBText;
        ppDBText48: TppDBText;
        ppDBText49: TppDBText;
        ppDBText50: TppDBText;
        ppDBText51: TppDBText;
        ppDBText52: TppDBText;
        ppDBText53: TppDBText;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLabel20: TppLabel;
        ppSystemVariable1: TppSystemVariable;
        ppLine7: TppLine;
        ppLine18: TppLine;
        ppGroup1: TppGroup;
        ppGroupHeaderBand1: TppGroupHeaderBand;
        ppGroupFooterBand1: TppGroupFooterBand;
        ppRichText: TppRichText;
        zrDuplicata: TZReport;
        zrvVENCIMENTO: TZRField;
        zrvNOME: TZRField;
        zrvCPF_CNPJ: TZRField;
        zrvVALOR: TZRField;
        zrDuplicataDetail: TZRBand;
        zrDuplicataDetailHeader: TZRBand;
        ZRLabel1: TZRLabel;
        zr1: TZRLabel;
        zr2: TZRLabel;
        zr3: TZRLabel;
        zr4: TZRLabel;
        ZRLabel6: TZRLabel;
        ZRLabel7: TZRLabel;
        ZRLabel8: TZRLabel;
        ZRLabel9: TZRLabel;
        zrTexto: TZRLabel;
        zr5: TZRLabel;
        zr6: TZRLabel;
        zr7: TZRLabel;
        zr8: TZRLabel;
        zrDuplicataChild: TZRBand;
        ZRLabel10: TZRLabel;
        ZRLabel11: TZRLabel;
        ZRLabel14: TZRLabel;
        zrEmitente: TZRLabel;
        ZRLabel12: TZRLabel;
        ZRLabel15: TZRLabel;
        ZRLabel16: TZRLabel;
        ZRLabel18: TZRLabel;
        rbCarne: TppReport;
        ppDetailBand4: TppDetailBand;
        ppCabCarne: TppRichText;
        ppShape3: TppShape;
        ppLabel21: TppLabel;
        ppDBText54: TppDBText;
        ppLabel22: TppLabel;
        ppDBText55: TppDBText;
        ppShape4: TppShape;
        ppLabel23: TppLabel;
        ppLabel24: TppLabel;
        ppDBText56: TppDBText;
        ppLabel25: TppLabel;
        ppDBText57: TppDBText;
        ppLabel26: TppLabel;
        ppDBText58: TppDBText;
        ppLabel27: TppLabel;
        ppDBText59: TppDBText;
        ppLabel28: TppLabel;
        ppDBText60: TppDBText;
        ppLabel29: TppLabel;
        ppDBText61: TppDBText;
        ppDBText62: TppDBText;
        ppLabel30: TppLabel;
        ppLabel31: TppLabel;
        ppDBText63: TppDBText;
        ppLabel32: TppLabel;
        ppDBBarCode1: TppDBBarCode;
        ppImage4: TppImage;
        ppShape5: TppShape;
        rbDupCarne: TppReport;
        ppHeaderBand4: TppHeaderBand;
        ppDetailBand5: TppDetailBand;
        ppRegion1: TppRegion;
        ppDBText66: TppDBText;
        ppDBText67: TppDBText;
        ppDBText68: TppDBText;
        ppDBText69: TppDBText;
        ppDBText70: TppDBText;
        ppDBText71: TppDBText;
        ppDBText74: TppDBText;
        ppDBText75: TppDBText;
        ppDBText77: TppDBText;
        ppDBText78: TppDBText;
        ppDBText79: TppDBText;
        ppDBText80: TppDBText;
        ppDBText81: TppDBText;
        ppDBText82: TppDBText;
        ppDBText83: TppDBText;
        ppMemo4: TppMemo;
        ppFooterBand4: TppFooterBand;
        ppSystemVariable2: TppSystemVariable;
        ppSystemVariable3: TppSystemVariable;
        ppSystemVariable4: TppSystemVariable;
        ppSystemVariable5: TppSystemVariable;
        ppSystemVariable6: TppSystemVariable;
        ppSystemVariable7: TppSystemVariable;
        ppDBText72: TppDBText;
        ppDBText73: TppDBText;
        ppDBText84: TppDBText;
        ppDBText85: TppDBText;
        ppDBText86: TppDBText;
        ppDBText87: TppDBText;
        ppDBText88: TppDBText;
        ppDBText89: TppDBText;
        ppDBText90: TppDBText;
        ppDBText64: TppDBText;
        ppLabel33: TppLabel;
        ppDBText65: TppDBText;
        ppLabel34: TppLabel;
        ppDBText76: TppDBText;
        C_TitulosOBS: TStringField;
        ppDataExtenso: TppMemo;
        ppDataExtensoDupCarne: TppMemo;
        ppDataExtensoDupImp: TppMemo;
        rbCarne_II: TppReport;
        ppDetailBand6: TppDetailBand;
        ppDBText91: TppDBText;
        ppDBText92: TppDBText;
        ppDBText93: TppDBText;
        ppDBText100: TppDBText;
        ppDBText101: TppDBText;
        ppDBText102: TppDBText;
        ppDBText94: TppDBText;
        ppDBText95: TppDBText;
        ppDBText96: TppDBText;
        ppDBText97: TppDBText;
        C_TitulosicDia: TStringField;
        C_TitulosicMes: TStringField;
        C_TitulosicAno: TStringField;
        ppDBText98: TppDBText;
        ppDBText99: TppDBText;
        ppDBText103: TppDBText;
        ppDBText104: TppDBText;
        ppCarne_Identificado: TppReport;
        ppDetailBand7: TppDetailBand;
        ppDBText105: TppDBText;
        ppDBText112: TppDBText;
        ppDBText113: TppDBText;
        ppDBText114: TppDBText;
        ppDBText2: TppDBText;
        ppDBText45: TppDBText;
        ppDBText106: TppDBText;
        ppDBText107: TppDBText;
        C_TitulosFAVORECIDO: TIntegerField;
        CLIENTEIDENTIFICACAO: TppField;
        ppDBText108: TppDBText;
        C_TitulosDATA: TDateField;
        ppDBText109: TppDBText;
        ppDBText110: TppDBText;
        DATA: TppField;
        C_TitulosClienteIdentificacao: TStringField;
        C_TitulosNOME_AVAL: TStringField;
        C_TitulosENDERECO_AVAL: TStringField;
        C_TitulosCIDADE_AVAL: TStringField;
        C_TitulosCEP_AVAL: TStringField;
        dbTitulosppField55: TppField;
        endereco_aval: TppField;
        cidade_aval: TppField;
        cep_aval: TppField;
        ppPromissoria_Identificada: TppReport;
        ppHeaderBand5: TppHeaderBand;
        ppDetailBand8: TppDetailBand;
        ppDBText115: TppDBText;
        ppDBText116: TppDBText;
        ppDBText127: TppDBText;
        ppDBText128: TppDBText;
        ppDBText129: TppDBText;
        ppDBText130: TppDBText;
        ppDBText131: TppDBText;
        ppDBText133: TppDBText;
        ppMemo5: TppMemo;
        ppDBText138: TppDBText;
        ppDBText139: TppDBText;
        ppDBText140: TppDBText;
        ppFooterBand5: TppFooterBand;
        ppDBText118: TppDBText;
        ppDBText111: TppDBText;
        ppDBText119: TppDBText;
        ppDBText120: TppDBText;
        ppDBText121: TppDBText;
        ppDBText122: TppDBText;
        ppDBText123: TppDBText;
        ppLocalPgto: TppLabel;
        ppDBText117: TppDBText;
        ppDBText124: TppDBText;
        ppDBText125: TppDBText;
        ppEmpresa: TppLabel;
        ppLabel36: TppLabel;
        C_TitulosCPF_AVAL: TStringField;
        C_TitulosRG: TStringField;
        dbTitulosCPF_Aval: TppField;
        dbTitulosrg: TppField;
        ppDBText126: TppDBText;
        ppLabel35: TppLabel;
        ppLabel37: TppLabel;
        ppLabel38: TppLabel;
        ppLabel39: TppLabel;
        ppDBText132: TppDBText;
        ppLabel40: TppLabel;
        ppDBText134: TppDBText;
        ppDBText135: TppDBText;
        C_TitulosOBSSAIDA: TStringField;
        OBSSAIDA: TppField;
        C_TitulosTIPOCARTEIRA: TStringField;
        C_TitulosEMAIL: TStringField;
        C_TitulosNRO: TStringField;
        ppCarne_Identificado_impresso: TppReport;
        ppDetailBand9: TppDetailBand;
        ppDBText136: TppDBText;
        ppDBText137: TppDBText;
        ppDBText141: TppDBText;
        ppDBText142: TppDBText;
        ppDBText143: TppDBText;
        ppDBText144: TppDBText;
        ppDBText145: TppDBText;
        ppDBText146: TppDBText;
        ppDBText147: TppDBText;
        ppDBText148: TppDBText;
        ppDBText149: TppDBText;
        ppDBText150: TppDBText;
        ppShape7: TppShape;
        ppLabel41: TppLabel;
        ppLabel42: TppLabel;
        ppLabel43: TppLabel;
        ppLabel44: TppLabel;
        ppLabel45: TppLabel;
        ppLabel46: TppLabel;
        ppLabel47: TppLabel;
        ppShape10: TppShape;
        ppShape11: TppShape;
        ppShape12: TppShape;
        ppShape13: TppShape;
        ppLabel49: TppLabel;
        ppLabel50: TppLabel;
        ppLabel51: TppLabel;
        ppLabel52: TppLabel;
        ppLabel53: TppLabel;
        ppLabel54: TppLabel;
        ppLabel55: TppLabel;
        ppLabel56: TppLabel;
        ppShape15: TppShape;
        ppLabel48: TppLabel;
        ppLabel57: TppLabel;
        ppShape16: TppShape;
        ppLabel58: TppLabel;
        ppShape17: TppShape;
        ppShape18: TppShape;
        ppShape19: TppShape;
        ppShape20: TppShape;
        ppShape21: TppShape;
        ppShape6: TppShape;
        ppShape22: TppShape;
        ppShape23: TppShape;
        ppShape14: TppShape;
        ppShape24: TppShape;
        ppShape25: TppShape;
        ppShape26: TppShape;
        ppImage2: TppImage;
        ppImage3: TppImage;
        ppProm_iden_impressa: TppReport;
        ppHeaderBand6: TppHeaderBand;
        ppDetailBand10: TppDetailBand;
        ppDBText151: TppDBText;
        ppDBText152: TppDBText;
        ppDBText153: TppDBText;
        ppDBText154: TppDBText;
        ppDBText155: TppDBText;
        ppDBText156: TppDBText;
        ppDBText157: TppDBText;
        ppDBText158: TppDBText;
        ppMemo6: TppMemo;
        ppDBText159: TppDBText;
        ppDBText160: TppDBText;
        ppDBText161: TppDBText;
        ppDBText162: TppDBText;
        ppDBText163: TppDBText;
        ppDBText164: TppDBText;
        ppDBText165: TppDBText;
        ppDBText166: TppDBText;
        ppDBText167: TppDBText;
        ppLabel59: TppLabel;
        ppDBText168: TppDBText;
        ppDBText169: TppDBText;
        ppDBText170: TppDBText;
        ppLabel60: TppLabel;
        ppDBText171: TppDBText;
        ppLabel62: TppLabel;
        ppLabel63: TppLabel;
        ppLabel64: TppLabel;
        ppFooterBand6: TppFooterBand;
        ppShape8: TppShape;
        ppImage1: TppImage;
        ppShape9: TppShape;
        ppShape27: TppShape;
        ppShape28: TppShape;
        ppShape29: TppShape;
        ppLabel65: TppLabel;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppLabel68: TppLabel;
        ppLabel69: TppLabel;
        ppLabel70: TppLabel;
        ppLabel71: TppLabel;
        ppLabel72: TppLabel;
        ppLabel73: TppLabel;
        ppLabel74: TppLabel;
        ppLabel75: TppLabel;
        ppLabel76: TppLabel;
        ppLabel77: TppLabel;
        ppLabel78: TppLabel;
        ppLabel79: TppLabel;
        ppLabel80: TppLabel;
        ppLabel81: TppLabel;
        ppLabel82: TppLabel;
        ppLabel83: TppLabel;
        ppLabel84: TppLabel;
        ppLabel85: TppLabel;
        ppLabel87: TppLabel;
        ppLabel88: TppLabel;
        ppLabel89: TppLabel;
        ppLabel90: TppLabel;
        ppLabel91: TppLabel;
        ppLabel92: TppLabel;
        ppLabel61: TppLabel;
        ppLabel86: TppLabel;
        ppShape30: TppShape;
        ppImage5: TppImage;
        C_TitulosCARTEIRA: TIntegerField;
        C_TitulosDESCRICAO: TStringField;
        C_TitulosDESATIVADO: TStringField;
        C_TitulosBANCO: TIntegerField;
        C_TitulosCONTA: TIntegerField;
        C_TitulosDIGITOAGENCIA: TStringField;
        C_TitulosCONVENIO: TStringField;
        gbCobranca1: TgbCobranca;
        gbTitulo1: TgbTitulo;
        C_TitulosSACADOR_NOME: TStringField;
        C_TitulosSACADOR_CPFCNPJ: TStringField;
        C_TitulosCEDENTE_NOME: TStringField;
        C_TitulosCEDENTE_CPFCNPJ: TStringField;
        C_TitulosIMGBOLETOIMPRESSO: TStringField;
        C_TitulosNUMERO: TStringField;
        dbTitulosNRO: TppField;
        ppDBText172: TppDBText;
        ppLabel93: TppLabel;
        ppDBText173: TppDBText;
        ppLabel94: TppLabel;
        ppLabel95: TppLabel;
        ppDBText174: TppDBText;
        C_TitulosDIGITONOSSONUMERO: TStringField;
        dbTitulosppField56: TppField;
        ppDBText175: TppDBText;
        ppDBText176: TppDBText;
        ppDBText177: TppDBText;
        ppDBText178: TppDBText;
        ppDBText179: TppDBText;
        ppLabel96: TppLabel;
        ppLabel97: TppLabel;
        ppDBText180: TppDBText;
        C_TitulosTOTAL: TFloatField;
        C_TitulosTITULO: TStringField;
        rbTituloReceber: TppReport;
        ppHeaderBand7: TppHeaderBand;
        ppDetailBand11: TppDetailBand;
        ppShape31: TppShape;
        ppLine5: TppLine;
        ppLine8: TppLine;
        ppLine20: TppLine;
        ppLine21: TppLine;
        ppLine22: TppLine;
        ppShape32: TppShape;
        ppLine24: TppLine;
        ppMemo7: TppMemo;
        ppMemo8: TppMemo;
        ppLabel98: TppLabel;
        ppLabel99: TppLabel;
        ppLabel100: TppLabel;
        ppLabel101: TppLabel;
        ppLabel102: TppLabel;
        ppLabel103: TppLabel;
        ppLabel106: TppLabel;
        ppLabel107: TppLabel;
        ppLabel108: TppLabel;
        ppLabel109: TppLabel;
        ppLabel110: TppLabel;
        ppLabel111: TppLabel;
        ppLine26: TppLine;
        ppLine27: TppLine;
        ppMemo9: TppMemo;
    ppMemoExtensoTitulo: TppMemo;
        ppMemoAceiteTitulo: TppMemo;
        ppLabel112: TppLabel;
        ppLabel113: TppLabel;
        ppLine29: TppLine;
        ppLabel114: TppLabel;
        ppDBText181: TppDBText;
        ppDBText182: TppDBText;
        ppDBText183: TppDBText;
        ppDBText184: TppDBText;
        ppDBText185: TppDBText;
        ppDBText186: TppDBText;
        ppDBText187: TppDBText;
        ppDBText188: TppDBText;
        ppDBText189: TppDBText;
        ppDBText190: TppDBText;
        ppLine30: TppLine;
        ppRegion2: TppRegion;
        ppLabel115: TppLabel;
        ppSystemVariable8: TppSystemVariable;
        ppRichText1: TppRichText;
        ppLine31: TppLine;
        ppLine32: TppLine;
        ppMemo12: TppMemo;
        ppDBText191: TppDBText;
        ppLabel116: TppLabel;
        ppDBText192: TppDBText;
        ppLabel117: TppLabel;
        ppLabel118: TppLabel;
        ppDBText193: TppDBText;
        ppFooterBand7: TppFooterBand;
        ppGroup2: TppGroup;
        ppGroupHeaderBand2: TppGroupHeaderBand;
        ppGroupFooterBand2: TppGroupFooterBand;
        ppLabel104: TppLabel;
        ppDBText194: TppDBText;
    C_TitulosJUROSCALCULADO: TBCDField;
    dbTitulosppField57: TppField;
    C_TitulosFALTARECEBER: TBCDField;
    dbTitulosppField58: TppField;
    C_TitulosicSaldoRestante: TCurrencyField;
    dbTitulosppField59: TppField;
        procedure MemoExtensoPrint(Sender: TObject);
        procedure ppLabel1GetText(Sender: TObject; var Text: string);
        procedure ppDBMemo1GetMemo(Sender: TObject; aLines: TStrings);
        procedure C_TitulosCalcFields(DataSet: TDataSet);
        procedure zrEmitenteBeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure zrTextoBeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure ZRLabel15BeforePrint(Sender: TObject; var DoPrint: Boolean);
        procedure ppDataExtensoPrint(Sender: TObject);
        procedure ppDataExtensoDupCarnePrint(Sender: TObject);
        procedure ppDataExtensoDupImpPrint(Sender: TObject);
        procedure ppDBText118GetText(Sender: TObject; var Text: string);
        procedure ppLocalPgtoGetText(Sender: TObject; var Text: string);
        procedure ppEmpresaGetText(Sender: TObject; var Text: string);
        procedure ppLabel36GetText(Sender: TObject; var Text: string);
        procedure ppDBText105GetText(Sender: TObject; var Text: string);
        procedure ppDBText108GetText(Sender: TObject; var Text: string);
        procedure ppDBText124GetText(Sender: TObject; var Text: string);
        procedure ppDBText125GetText(Sender: TObject; var Text: string);
        procedure ppDBText117GetText(Sender: TObject; var Text: string);
        procedure ppLabel35GetText(Sender: TObject; var Text: string);
        procedure ppLabel37GetText(Sender: TObject; var Text: string);
        procedure ppLabel38GetText(Sender: TObject; var Text: string);
        procedure ppDBText56GetText(Sender: TObject; var Text: string);
        procedure ppImage3Print(Sender: TObject);
        procedure ppImage2Print(Sender: TObject);
        procedure ppImage1Print(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppMemoExtensoTituloPrint(Sender: TObject);
    private
        { Private declarations }
        bPromissoriaUnica: Boolean;
        bDuplicata: Boolean;
    public
        { Public declarations }
        procedure Imprimir(Saida: integer; Enviar: string = ''; Carne: string = ''; Boleto: string = ''; Duplicata: string = '');
        procedure ImprimirDuplicata(Titulo: integer);
        procedure GuardarBoletoBancario(edAgencia, edBanco, edNomeCede, edDocumento,
            edCodCedente, edValor, edNNum, edContaCorrente, edDigitoCC, edCarteira, edModeloCarteira, edConvenio, edSacado, edEndereco,
            edBairro, edCep, edUF, edCidade, edCNPJ, edLocalPagamento, edInstrucoes, edEspecieDoc, edAceite: string; dtpEmissao, dtpVencimento: TDateTime);
        procedure CloneProperties(SourceComp, DestComp: TObject);
        procedure AdicionarBoletoBancario();
        procedure ImprimirBoletoBancario();
        procedure ImprimirTituloReceber(idSaida: integer);
    end;

var
    RptDocCobranca: TRptDocCobranca;
    B: TFreeBoleto;
    Img: TFreeBoletoImagem;

implementation

uses DM_Projeto, funcoes, Util2, TDM_Projeto, TypInfo;

{$R *.dfm}

procedure TRptDocCobranca.ImprimirDuplicata(Titulo: integer);
var sTipo, sTipos, sImpressaoPara: string;
    sCarne, sBoleto, sDuplicata, sDuplicataImp: string;
    sArquivoDup, sArquivoBol: string;
    sNF_Cupom, sSerieNota, sCabEsquerdo: string;
    i: integer;
begin
    DMProjeto.DadosEmpresa;
    with DMProjeto.Q_SQL do
        begin
            close;
            sql.text := 'select tm.cb_toprinter, tm.cb_carne, tm.cb_boleto, tm.cb_duplicata, ' +
                'tdup.arquivo as arquivodup, tbol.arquivo as arquivobol, ' +
                'tm.cb_duplicata_impressa ' +
                'from tiposmovimento tm ' +
                'left join templates tdup on tm.templateduplicata = tdup.template ' +
                'left join templates tbol on tm.templateboleto = tbol.template ' +
                'where tipomovimento = 1';
            open;
            sImpressaoPara := 'N';
            sBoleto := 'S';
            sArquivoBol := fieldbyname('ArquivoBol').AsString;
            close;
            sql.text := 'select esquerdo from cabecalho ';
            open;
            sCabEsquerdo := Fields[0].AsString;
            Close;
        end;
    with Q_Titulos do
        begin
            Close;
            Sql.Text := 'SELECT t.notafiscal, t.titulo, t.valor as valor_temp, t.vencimento, v.codigo as codvendedor, ' +
                ' v.nome as vendedor, f.codigo as codcliente, f.fone1, f.fone2, p.descricao as planopagamento, ' +
                ' t.competencia, t.valordescantecipado, t.valorjurosmora, f.nome, f.endereco, f.bairro, f.cidade, ' +
                ' f.uf, f.cep, f.cpf_cnpj, f.inscricao_est, t.dataantecipacao, f.datanasc, c.pai, c.mae, ' +
                ' t.tipocobranca, tc.descricao as desctipocobranca, cart.numerocarteira, cart.localdepagamento, ' +
                ' cart.especie, cart.especiedoc, cart.quantidade, cart.aceite, cart.agencia, cart.codigo, ' +
                ' cart.instrucoes as instrucoes_temp, cart.nossonumero, cart.JUROSINSTRUCOES, ' +
                ' cart.cobraremissao, cart.tarifaemissao, cart.preimpresso, cart.digitocodigo, cnt.numconta, ' +
                ' b.codigo as codbanco, b.nome as descbanco, b.logotipo, t.id, t.obs, s.total, S.DATA, s.obs as obsSaida, ' +
                ' c.nome_aval, c.endereco_aval,c.cidade_aval, c.cep_aval ' +
                ' FROM TitulosAReceber t ' +
                ' left join saidas s on t.venda = s.saida ' +
                ' left join favorecidos f on t.cliente = f.favorecido ' +
                ' left join favorecidos v on s.vendedor = v.favorecido ' +
                ' left join planospagamento p on s.planopagamento = p.planopagamento ' +
                ' left join clientes c on t.cliente = c.favorecido ' +
                ' left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca ' +
                ' left join carteiras cart on t.carteira = cart.carteira ' +
                ' left join contas cnt on cart.conta = cnt.conta ' +
                ' left join favorecidos b on b.favorecido = cnt.banco ' +
                ' WHERE (not (UPPER(F.NOME) starting with ''CONSUMIDOR'')) and t.id = ' + InttoStr(Titulo);
        end;
    C_Titulos.Open;
    {Boleto Banc�rio }
    if (C_TitulosTipoCobranca.AsString = '3') and (sBoleto = 'S') then
        begin
            C_Titulos.Filtered := false;
            C_Titulos.Filter := 'tipocobranca = 3 and preimpresso = ''S''';
            C_Titulos.Filtered := true;
            if not (C_Titulos.IsEmpty) then
                begin
                    if fileexists(DMProjeto.TemplatesPath + sArquivoBol) then
                        begin
                            rbBoleto.Template.FileName := DMProjeto.TemplatesPath + sArquivoBol;
                            rbBoleto.Template.LoadFromFile;
                        end;
                    DMProjeto.ImprimirCabecalho(rgCabBol, 'Boleto');
                    if sImpressaoPara = 'C' then
                        begin
                            if DlgMsg.ShowMsg(8014) = 100 then
                                begin
                                    rbBoleto.DeviceType := 'Printer';
                                    rbBoleto.Print;
                                end;
                        end
                    else if sImpressaoPara = 'S' then
                        begin
                            rbBoleto.DeviceType := 'Printer';
                            rbBoleto.Print;
                        end
                    else if sImpressaoPara = 'N' then
                        begin
                            rbBoleto.DeviceType := 'Screen';
                            rbBoleto.Print;
                        end;
                end;
            C_Titulos.Filtered := false;
            C_Titulos.Filter := 'tipocobranca = 3 and preimpresso = ''N''';
            C_Titulos.Filtered := true;
            C_Titulos.First;

            while not C_Titulos.EOF do
                begin
                    //gbTitulo1.Carteira := C_TitulosNUMEROCARTEIRA.AsString;
                    gbTitulo1.Carteira := C_TitulosESPECIE.AsString;

                    gbTitulo1.EspecieDocumento := edDuplicataMercantil;
                    gbTitulo1.Cedente.Nome := DMProjeto.sRazaoEmpresa;
                    gbTitulo1.Cedente.CodigoCedente := C_TitulosCODIGO.AsString;
                    gbTitulo1.Cedente.DigitoCodigoCedente := C_TitulosDIGITOCODIGO.AsString;
                    //
                    gbTitulo1.Cedente.ContaBancaria.Banco.Codigo := C_TitulosCODBANCO.AsString;
                    gbTitulo1.Cedente.ContaBancaria.CodigoAgencia := Copy(C_TitulosAGENCIA.AsString, 1, Length(C_TitulosAGENCIA.AsString) - 1);
                    gbTitulo1.Cedente.ContaBancaria.DigitoAgencia := Copy(C_TitulosAGENCIA.AsString, Length(C_TitulosAGENCIA.AsString), 1);
                    gbTitulo1.Cedente.ContaBancaria.NumeroConta := Copy(C_TitulosNUMCONTA.AsString, 1, Length(C_TitulosNUMCONTA.AsString) - 1);
                    gbTitulo1.Cedente.ContaBancaria.DigitoConta := Copy(C_TitulosNUMCONTA.AsString, Length(C_TitulosNUMCONTA.AsString), 1);
                    //
                    gbTitulo1.Cedente.Endereco.Bairro := DMProjeto.sBairroEmpresa;
                    gbTitulo1.Cedente.Endereco.CEP := DMProjeto.sCEPEmpresa;
                    gbTitulo1.Cedente.Endereco.Cidade := DMProjeto.sCidadeEmpresa;
                    gbTitulo1.Cedente.Endereco.Email := DMProjeto.sEmailEmpresa;
                    gbTitulo1.Cedente.Endereco.Estado := DMProjeto.sUFEmpresa;
                    gbTitulo1.Cedente.Endereco.Rua := DMProjeto.sEnderecoEmpresa;
                    gbTitulo1.Cedente.NumeroCPFCGC := DMProjeto.sCPF_CNPJEmpresa;
                    gbTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
                    //
                    gbTitulo1.DataDocumento := C_TitulosCOMPETENCIA.AsDateTime;
                    gbTitulo1.DataVencimento := C_TitulosVENCIMENTO.AsDateTime;
                    //gbTitulo1.EspecieMoeda := C_TitulosESPECIE.AsString;
                    gbTitulo1.LocalPagamento := C_TitulosLOCALDEPAGAMENTO.AsString;
                    gbTitulo1.NossoNumero := C_TitulosID.AsString;
                    //
                    gbTitulo1.Sacado.Nome := C_TitulosNOME.AsString;
                    gbTitulo1.Sacado.Endereco.Bairro := C_TitulosBAIRRO.AsString;
                    gbTitulo1.Sacado.Endereco.CEP := C_TitulosCEP.AsString;
                    gbTitulo1.Sacado.Endereco.Cidade := C_TitulosCIDADE.AsString;
                    gbTitulo1.Sacado.Endereco.Estado := C_TitulosUF.AsString;
                    gbTitulo1.Sacado.Endereco.Rua := C_TitulosENDERECO.AsString;
                    gbTitulo1.Sacado.NumeroCPFCGC := C_TitulosCPF_CNPJ.AsString;
                    gbTitulo1.Sacado.TipoInscricao := iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 11, tiPessoaFisica,
                        iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 14, tiPessoaJuridica, tiOutro));
                    gbTitulo1.SeuNumero := C_TitulosID.AsString;
                    gbTitulo1.ValorDocumento := C_TitulosVALOR.AsCurrency;
                    gbTitulo1.Instrucoes.Clear;
                    gbTitulo1.Instrucoes.Add(C_TitulosINSTRUCOES.AsString);
                    if (C_TitulosLOGOTIPO.AsString <> '') and FileExists(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value) then
                        begin
                            try
                                //gbTitulo1.ImgBanco.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
                            except
                            end;
                        end;
                    if sImpressaoPara = 'C' then
                        begin
                            if DlgMsg.ShowMsg(8014) = 100 then
                                begin
                                    gbTitulo1.Imprimir;
                                end;
                        end
                    else if sImpressaoPara = 'S' then
                        gbTitulo1.Imprimir
                    else if sImpressaoPara = 'N' then
                        gbTitulo1.Visualizar;
                    C_Titulos.Next;
                end;
        end;
end;
{Fim Imprimir Duplicatas}

procedure TRptDocCobranca.ImprimirTituloReceber(idSaida: integer);
var
    sCabEsquerdo: string;
begin
    DMProjeto.DadosEmpresa;

    with DMProjeto.Q_SQL3 do
    begin
        Close;
        SQL.Text := 'select esquerdo from cabecalho';
        Open;
        sCabEsquerdo := FieldByName('esquerdo').AsString;
        Close;
    end;

    with C_Titulos do
        begin
            Close;
            FetchParams;
            Params.ParamByName('Saida').AsInteger := idSaida;
            Open;
            DisableControls;

            DMProjeto.Interpreta(sCabEsquerdo);
            ppRichText1.RichText := sCabEsquerdo;

            ppMemoAceiteTitulo.Lines.Text := 'RECONHE�O(EMOS) A EXATID�O DESTA DUPLICATA DE VENDA MERCANTIL NA ' +
                'IMPORT�NCIA ACIMA PAGAREI(EMOS) � ' + DMProjeto.sNomeEmpresa + ', ' +
                'OU A SUA ORDEM NA PRA�A E VENCIMENTO ACIMA INDICADO.';

            rbTituloReceber.DeviceType := 'Screen';
            rbTituloReceber.Print;
        end;
end;

procedure TRptDocCobranca.Imprimir(Saida: integer; Enviar: string = ''; Carne: string = ''; Boleto: string = ''; Duplicata: string = '');
var sTipo, sTipos, sImpressaoPara: string;
    sCarne, sBoleto, sDuplicata, sDuplicataImp, sCarneIdentificado: string;
    sArquivoDup, sArquivoBol: string;
    sNF_Cupom, sSerieNota, sCabEsquerdo, sTitulo: string;
    i: integer;
    bCarnePreImpresso: Boolean;
begin
    DMProjeto.DadosEmpresa;
    bCarnePreImpresso := (DMProjeto.Parametro('CarnePreImpresso') = 'S');
    bPromissoriaUnica := (DMProjeto.Parametro('PromissoriaUnica') = 'S');
    with DMProjeto.Q_SQL do
        begin
            close;
            sql.text := 'select tm.cb_toprinter, tm.cb_carne, tm.cb_boleto, tm.cb_duplicata, ' +
                'tdup.arquivo as arquivodup, tbol.arquivo as arquivobol, ' +
                's.serienota, s.numero, tm.cb_duplicata_impressa, tm.CB_CARNEIDENTIFICADO ' +
                'from saidas s ' +
                'inner join tiposmovimento tm on s.tipomovimento = tm.tipomovimento ' +
                'left join templates tdup on tm.templateduplicata = tdup.template ' +
                'left join templates tbol on tm.templateboleto = tbol.template ' +
                'where saida = ' + IntToStr(Saida);
            open;
            sImpressaoPara := iif(Enviar <> '', Enviar, fieldbyname('cb_toprinter').AsString);
            sCarne := iif(Carne <> '', Carne, fieldbyname('cb_carne').AsString);
            sCarneIdentificado := fieldbyname('CB_CARNEIDENTIFICADO').AsString;
            sBoleto := iif(Boleto <> '', Boleto, fieldbyname('cb_boleto').AsString);
            sDuplicata := iif(Duplicata <> '', Duplicata, fieldbyname('cb_duplicata').AsString);
            sDuplicataImp := fieldByName('cb_duplicata_impressa').AsString;
            sArquivoDup := fieldbyname('ArquivoDup').AsString;
            sArquivoBol := fieldbyname('ArquivoBol').AsString;
            sSerieNota := fieldbyname('SerieNota').AsString;
            sNF_Cupom := fieldbyname('numero').AsString;
            close;
            sql.text := 'select esquerdo from cabecalho ';
            open;
            sCabEsquerdo := Fields[0].AsString;
            Close;
        end;
    if (sNF_Cupom <> '') and (sSerieNota = 'ECF') then
        begin
            with DMProjeto.Q_SQL do
                begin
                    close;
                    sql.text := 'update titulosareceber set notafiscal = :numero, titulo = :numero || ''-'' || parcela where venda = :venda';
                    parambyname('venda').AsInteger := Saida;
                    parambyname('numero').Asstring := sNF_Cupom;
                    ExecSQL;
                end;
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        end;

    with C_Titulos do
        begin
            Close;
            FetchParams;
            Params.ParamByName('Saida').AsInteger := Saida;
            Open;
            DisableControls;
            //    if C_TitulosTipoCobranca.value in [2,3] then begin
            //    	sTipo := C_TitulosTipoCobranca.AsString;
            //      sTipos := C_TitulosTipoCobranca.AsString;
            //    end;
            //    while not Eof do begin
            //      if (sTipo <> C_TitulosTipoCobranca.AsString) and (C_TitulosTipoCobranca.value in [2,3,5]) then begin
            //      	sTipos:= CExp(sTipos,',') + C_TitulosTipoCobranca.AsString;
            //        sTipo	:= C_TitulosTipoCobranca.AsString;
            //      end;
            //    	Next;
            //    end;
            //    EnableControls;
            //  end;
            //  for i:=1 to ContaStrings(sTipos,',') do begin
                {Duplicata}
            if {(SeparaStrings(sTipos,',',i) = '2') and }(sDuplicata = 'S') then
                begin
                    bDuplicata := False;
                    if (bPromissoriaUnica) then
                        begin
                            C_Titulos.Open;
                            C_Titulos.Last;
                            sTitulo := C_TitulosID.AsString;
                            C_Titulos.Filtered := false;
                            C_Titulos.Filter := 'ID = ' + sTitulo;
                            bDuplicata := True;
                            C_Titulos.Filtered := true;
                        end;
                    if (sDuplicataImp = 'I') then
                        begin
                            if sImpressaoPara = 'C' then
                                begin
                                    if DlgMsg.ShowMsg(8013) = 100 then
                                        begin
                                            ppPromissoria_Identificada.DeviceType := 'Printer';
                                            ppPromissoria_Identificada.Print;
                                        end;
                                end
                            else if sImpressaoPara = 'S' then
                                begin
                                    ppPromissoria_Identificada.DeviceType := 'Printer';
                                    ppPromissoria_Identificada.Print;
                                end
                            else if sImpressaoPara = 'N' then
                                begin
                                    ppPromissoria_Identificada.DeviceType := 'Screen';
                                    ppPromissoria_Identificada.Print;
                                end;
                        end;
                    if (sDuplicataImp = 'I') then
                        begin
                            if (sCarneIdentificado = 'S') then
                                begin
                                    if sImpressaoPara = 'C' then
                                        begin
                                            if DlgMsg.ShowMsg(8013) = 100 then
                                                begin
                                                    ppProm_iden_impressa.DeviceType := 'Printer';
                                                    ppProm_iden_impressa.Print;
                                                end; //if DlgMsg.ShowMsg( 8013 ) = 100 then begin
                                        end
                                    else if sImpressaoPara = 'S' then
                                        begin
                                            ppProm_iden_impressa.DeviceType := 'Printer';
                                            ppProm_iden_impressa.Print;
                                        end
                                    else if sImpressaoPara = 'N' then
                                        begin
                                            ppProm_iden_impressa.DeviceType := 'Screen';
                                            ppProm_iden_impressa.Print;
                                        end;
                                end

                                    //               ppProm_iden_impressa.DeviceType := 'Screen';
                                    //               ppProm_iden_impressa.Print;

                        end
                    else
                        begin
                            if fileexists(DMProjeto.TemplatesPath + sArquivoDup) then
                                begin
                                    rbDuplicata.Template.FileName := DMProjeto.TemplatesPath + sArquivoDup;
                                    rbDuplicata.Template.LoadFromFile;
                                end;
                            if (sDuplicataImp = 'N') then
                                begin
                                    DMProjeto.ImprimirCabecalho(rgCabDup, 'Duplicata');
                                    if sImpressaoPara = 'C' then
                                        begin
                                            if DlgMsg.ShowMsg(8013) = 100 then
                                                begin
                                                    rbDuplicata.DeviceType := 'Printer';
                                                    rbDuplicata.Print;
                                                end;
                                        end
                                    else if sImpressaoPara = 'S' then
                                        begin
                                            rbDuplicata.DeviceType := 'Printer';
                                            rbDuplicata.Print;
                                        end
                                    else if sImpressaoPara = 'N' then
                                        begin
                                            rbDuplicata.DeviceType := 'Screen';
                                            rbDuplicata.Print;
                                        end;
                                end;
                            {Duplicata Impressa }
                            if (sDuplicataImp = 'S') then
                                begin
                                    // S� imprime o lado esquerdo do cabe�alho na duplicata...
                                    //DMProjeto.ImprimirCabecalho( rbrgCabecalho, '', True, True );
                                    DMProjeto.Interpreta(sCabEsquerdo);
                                    ppRichText.RichText := sCabEsquerdo;

                                    ppMemoAceite.Lines.Text := 'RECONHE�O(EMOS) A EXATID�O DESTA DUPLICATA DE VENDA MERCANTIL NA ' +
                                        'IMPORT�NCIA ACIMA PAGAREI(EMOS) � ' + DMProjeto.sNomeEmpresa + ', ' +
                                        'OU A SUA ORDEM NA PRA�A E VENCIMENTO ACIMA INDICADO.';
                                    if sImpressaoPara = 'C' then
                                        begin
                                            if DlgMsg.ShowMsg(8013) = 100 then
                                                begin
                                                    rbDuplicataImp.DeviceType := 'Printer';
                                                    rbDuplicataImp.Print;
                                                end;
                                        end
                                    else if sImpressaoPara = 'S' then
                                        begin
                                            rbDuplicataImp.DeviceType := 'Printer';
                                            rbDuplicataImp.Print;
                                        end
                                    else if sImpressaoPara = 'N' then
                                        begin
                                            rbDuplicataImp.DeviceType := 'Screen';
                                            rbDuplicataImp.Print;
                                        end;
                                end;
                            {Duplicata -- Modo Texto }
                            if (sDuplicataImp = 'T') then
                                begin
                                    DMProjeto.GeraCabecalhoZR(zr1, zr2, zr3, zr4, zr5, zr6, zr7, zr8);
                                    if sImpressaoPara = 'C' then
                                        begin
                                            if DlgMsg.ShowMsg(8013) = 100 then
                                                begin
                                                    zrDuplicata.Print;
                                                end;
                                        end
                                    else if sImpressaoPara = 'S' then
                                        begin
                                            zrDuplicata.Print;
                                        end
                                    else if sImpressaoPara = 'N' then
                                        begin
                                            zrDuplicata.Preview;
                                        end;
                                end; {Duplicata -- Modo Texto}
                        end;
                end;
            {Boleto Banc�rio }
            if {(SeparaStrings(sTipos,',',i) = '3') and }(sBoleto = 'S') then
                begin
                    C_Titulos.Filtered := false;
                    C_Titulos.Filter := 'tipocobranca = 3 and preimpresso = ''S''';
                    C_Titulos.Filtered := true;

                    if not (C_Titulos.IsEmpty) then
                        begin
                            if fileexists(DMProjeto.TemplatesPath + sArquivoBol) then
                                begin
                                    rbBoleto.Template.FileName := DMProjeto.TemplatesPath + sArquivoBol;
                                    rbBoleto.Template.LoadFromFile;
                                end;
                            DMProjeto.ImprimirCabecalho(rgCabBol, 'Boleto');
                            if sImpressaoPara = 'C' then
                                begin
                                    if DlgMsg.ShowMsg(8014) = 100 then
                                        begin
                                            rbBoleto.DeviceType := 'Printer';
                                            rbBoleto.Print;
                                        end;
                                end
                            else if sImpressaoPara = 'S' then
                                begin
                                    rbBoleto.DeviceType := 'Printer';
                                    rbBoleto.Print;
                                end
                            else if sImpressaoPara = 'N' then
                                begin
                                    rbBoleto.DeviceType := 'Screen';
                                    rbBoleto.Print;
                                end;
                        end;

                    C_Titulos.Filtered := false;
                    C_Titulos.Filter := 'tipocobranca = 3 and preimpresso = ''N''';
                    C_Titulos.Filtered := true;

                    if not (C_Titulos.IsEmpty) then
                        begin
                            C_Titulos.First;
                            while not C_Titulos.EOF do
                                begin
                                    {IMPRIMIR BOLETO COM GB_BOLETO - EVERTON}

                                    gbTitulo1.NumeroDocumento := C_TitulosTITULO.AsString;

                                    gbTitulo1.BoletoComImagem := C_TitulosIMGBOLETOIMPRESSO.AsString = 'S';

                                    gbTitulo1.EspecieDocumento := edDuplicataMercantil;

                                    gbTitulo1.Cedente.Nome := C_TitulosCEDENTE_NOME.AsString;
                                    gbTitulo1.Cedente.NumeroCPFCGC := C_TitulosCEDENTE_CPFCNPJ.AsString;
                                    if Length(gbTitulo1.Cedente.NumeroCPFCGC) > 11 then
                                        begin
                                            gbTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
                                        end;

                                    gbTitulo1.Sacador.Nome := C_TitulosSACADOR_NOME.AsString;
                                    gbTitulo1.Sacador.NumeroCPFCGC := C_TitulosSACADOR_CPFCNPJ.AsString;
                                    if Length(gbTitulo1.Sacador.NumeroCPFCGC) > 11 then
                                        begin
                                            gbTitulo1.Sacador.TipoInscricao := tiPessoaJuridica;
                                        end;

                                    //gbTitulo1.Carteira := C_TitulosNUMEROCARTEIRA.AsString;
                                    gbTitulo1.Carteira := C_TitulosESPECIE.AsString;
                                    gbTitulo1.Cedente.CodigoCedente := C_TitulosCODIGO.AsString;
                                    gbTitulo1.Cedente.DigitoCodigoCedente := C_TitulosDIGITOCODIGO.AsString;
                                    //
                                    gbTitulo1.Cedente.ContaBancaria.Banco.Codigo := C_TitulosCODBANCO.AsString;
                                    gbTitulo1.Cedente.ContaBancaria.CodigoAgencia := C_TitulosAGENCIA.AsString; //Copy(C_TitulosAGENCIA.AsString, 1, Length(C_TitulosAGENCIA.AsString));
                                    gbTitulo1.Cedente.ContaBancaria.DigitoAgencia := C_TitulosDIGITOAGENCIA.AsString; //Copy(C_TitulosAGENCIA.AsString, Length(C_TitulosAGENCIA.AsString), 1);

                                    gbTitulo1.Cedente.ContaBancaria.NumeroConta := C_TitulosCODIGO.AsString; // Copy(C_TitulosCodigo.AsString, 1, Length(C_TitulosCodigo.AsString));
                                    gbTitulo1.Cedente.ContaBancaria.DigitoConta := C_TitulosDIGITOCODIGO.asstring; //Copy(C_TitulosCodigo.AsString, Length(C_TitulosCodigo.AsString), 1);
                                    //
                                    gbTitulo1.Cedente.Endereco.Bairro := DMProjeto.sBairroEmpresa;
                                    gbTitulo1.Cedente.Endereco.CEP := DMProjeto.sCEPEmpresa;
                                    gbTitulo1.Cedente.Endereco.Cidade := DMProjeto.sCidadeEmpresa;
                                    gbTitulo1.Cedente.Endereco.Email := DMProjeto.sEmailEmpresa;
                                    gbTitulo1.Cedente.Endereco.Estado := DMProjeto.sUFEmpresa;
                                    gbTitulo1.Cedente.Endereco.Rua := DMProjeto.sEnderecoEmpresa;
                                    //
                                    gbTitulo1.DataDocumento := C_TitulosCOMPETENCIA.AsDateTime;
                                    gbTitulo1.DataVencimento := C_TitulosVENCIMENTO.AsDateTime;
                                    //gbTitulo1.EspecieMoeda := C_TitulosESPECIE.AsString;
                                    gbTitulo1.LocalPagamento := C_TitulosLOCALDEPAGAMENTO.AsString;
                                    gbTitulo1.NossoNumero := C_TitulosNOSSONUMERO.AsString;

                                    { Felipe -  Verifica se � boleto Bradesco. Se for, pega o valor do campo DIGITONOSSONUMERO da tabela
                                                de TITULOSARECEBER e atribui a propriedade "DigitoNossoNumero" de GBTITULO1.            }
                                    if (StrtoInt(C_TitulosNUMEROCARTEIRA.Value) in [03, 06, 09]) then
                                        gbTitulo1.DigitoNossoNumeroBradesco := C_TitulosDIGITONOSSONUMERO.AsString;

                                    //
                                    gbTitulo1.Sacado.Nome := C_TitulosNOME.AsString;
                                    gbTitulo1.Sacado.Endereco.Bairro := C_TitulosBAIRRO.AsString;
                                    gbTitulo1.Sacado.Endereco.CEP := funcoes.SoNumeros(C_TitulosCEP.AsString, 8);
                                    gbTitulo1.Sacado.Endereco.Cidade := C_TitulosCIDADE.AsString;
                                    gbTitulo1.Sacado.Endereco.Estado := C_TitulosUF.AsString;
                                    gbTitulo1.Sacado.Endereco.Rua := C_TitulosENDERECO.AsString;
                                    gbTitulo1.Sacado.Endereco.Numero := C_TitulosNRO.AsString;
                                    gbTitulo1.Sacado.NumeroCPFCGC := C_TitulosCPF_CNPJ.AsString;
                                    gbTitulo1.Sacado.TipoInscricao := iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 11, tiPessoaFisica,
                                        iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 14, tiPessoaJuridica, tiOutro));
                                    gbTitulo1.SeuNumero := C_TitulosTITULO.AsString;
                                    gbTitulo1.ValorDocumento := C_TitulosVALOR.AsCurrency;

                                    gbTitulo1.Instrucoes.Clear;
                                    gbTitulo1.Instrucoes.Add(C_TitulosINSTRUCOES.AsString);
                                    if (C_TitulosLOGOTIPO.AsString <> '') and FileExists(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value) then
                                        begin
                                            try
                                                //gbTitulo1.ImgBanco.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
                                                gbTitulo1.ImagemBoleto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
                                            except
                                            end;
                                        end;
                                    if sImpressaoPara = 'C' then
                                        begin
                                            if DlgMsg.ShowMsg(8014) = 100 then
                                                begin
                                                    gbTitulo1.Imprimir;
                                                end;
                                        end
                                    else if sImpressaoPara = 'S' then
                                        gbTitulo1.Visualizar
                                    else if sImpressaoPara = 'N' then
                                        gbTitulo1.Visualizar;

                                    C_Titulos.Next;
                                end;
                        end;

                    //   //Paulo teste Boletos Caixa]
                    {if not (C_Titulos.IsEmpty) then
                        begin
                            C_Titulos.First;
                            while not C_Titulos.EOF do
                                begin

                                    {//identificador da carteira
                                                        gbBoleto.Carteira := C_TitulosTIPOCARTEIRA.value;

                                    //identificador do cedente
                                                        gbBoleto.Cedente.CodigoCedente := C_TitulosCODIGO.AsString;
                                                        gbBoleto.Cedente.DigitoCodigoCedente := C_TitulosDIGITOCODIGO.AsString;
                                                        gbBoleto.Cedente.Nome := DMProjeto.sRazaoEmpresa;
                                                        gbBoleto.Cedente.NumeroCPFCGC := DMProjeto.sCPF_CNPJEmpresa;
                                                        gbBoleto.Cedente.TipoInscricao := tiPessoaJURIDICA;
                                                //identificador do banco
                                                        gbBoleto.Cedente.ContaBancaria.Banco.Codigo := C_TitulosCODBANCO.AsString;
                                                    //identificador do conta bancaria
                                                        gbBoleto.Cedente.ContaBancaria.CodigoAgencia := C_TitulosAGENCIA.AsString;
                                                        gbBoleto.Cedente.ContaBancaria.DigitoAgencia := C_TitulosDIGITOAGENCIA.AsString;
                                                        gbBoleto.Cedente.ContaBancaria.NumeroConta := C_TitulosCodigo.AsString;
                                                        gbBoleto.Cedente.ContaBancaria.DigitoConta := C_TitulosDIGITOCODIGO.AsString; ;
                                                        gbBoleto.Cedente.ContaBancaria.NomeCliente := C_TitulosNOME.AsString;
                                                //identificador do endere�o
                                                        gbBoleto.Cedente.Endereco.Bairro := DMProjeto.sBairroEmpresa;
                                                        gbBoleto.Cedente.Endereco.CEP := DMProjeto.sCEPEmpresa;
                                                        gbBoleto.Cedente.Endereco.Cidade := DMProjeto.sCidadeEmpresa;
                                                        gbBoleto.Cedente.Endereco.Email := DMProjeto.sEmailEmpresa;
                                                        gbBoleto.Cedente.Endereco.Estado := DMProjeto.sUFEmpresa;
                                                        gbBoleto.Cedente.Endereco.Numero := DMProjeto.sNumeroEmpresa;
                                                        gbBoleto.Cedente.Endereco.Rua := DMProjeto.sEnderecoEmpresa; ;

                                    //            gbBoleto.DataCredito :=     now +3;
                                                        gbBoleto.DataDocumento := C_TitulosCOMPETENCIA.AsDateTime;
                                    //            gbBoleto.DataRecebimento := now + 1 ;
                                                        gbBoleto.DataVencimento := C_TitulosVENCIMENTO.AsDateTime;
                                                        gbBoleto.EspecieMoeda := C_TitulosESPECIE.AsString;
                                    //            gbBoleto.ImgBanco :=
                                                        gbBoleto.Instrucoes.add(C_TitulosINSTRUCOES.AsString);
                                                        gbBoleto.LocalPagamento := C_TitulosLOCALDEPAGAMENTO.AsString;
                                                        gbBoleto.NossoNumero := C_TitulosNOSSONUMERO.value;

                                    //identificador do Sacado
                                                        gbBoleto.Sacado.Nome := C_TitulosNOME.AsString; ;
                                                        gbBoleto.Sacado.NumeroCPFCGC := C_TitulosCPF_CNPJ.value;
                                                        gbBoleto.Sacado.TipoInscricao := iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 11, tiPessoaFisica,
                                                            iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 14, tiPessoaJuridica, tiOutro));
                                      //          //identificador da conta bancaria do Sacado
                                    //                gbBoleto.Sacado.contabancaria.banco.codigo := '104';
                                    //                gbBoleto.Sacado.contabancaria.CodigoAgencia :=  '0042';
                                    //                gbBoleto.Sacado.contabancaria.DigitoAgencia :=  '321';
                                    //                gbBoleto.Sacado.contabancaria.DigitoConta   := '13';
                                    //                gbBoleto.Sacado.contabancaria.NomeCliente := 'synctech solu��es';
                                    //                gbBoleto.Sacado.contabancaria.NumeroConta := '00004975';

                                                //identificador do endere�o do Sacado
                                                        gbBoleto.Sacado.Endereco.Bairro := C_TitulosBAIRRO.value;
                                                        gbBoleto.Sacado.Endereco.CEP :=    C_Tituloscep.value;
                                                        gbBoleto.Sacado.Endereco.Cidade := C_TitulosCIDADE.value;
                                                        gbBoleto.Sacado.Endereco.email :=  C_TitulosEMAIL.value;
                                                        gbBoleto.Sacado.Endereco.Estado := C_TitulosUF.value;
                                                        gbBoleto.Sacado.Endereco.Numero := C_Titulosnro.value;
                                                        gbBoleto.Sacado.Endereco.Rua :=    C_TitulosENDERECO.value;

                                                        gbBoleto.SeuNumero := IntToStr(Saida);
                                                        gbBoleto.ValorDocumento := C_TitulosVALOR.AsCurrency;
                                                        if (C_TitulosLOGOTIPO.AsString <> '') and FileExists(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value) then begin
                                                            try
                                                                gbBoleto.ImgBanco.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
                                                            except
                                                            end;
                                                        end;
                                                        if sImpressaoPara = 'C' then begin
                                                            if DlgMsg.ShowMsg(8014) = 100 then begin
                                                                gbBoleto.Imprimir;
                                                            end;
                                                        end else if sImpressaoPara = 'S' then gbBoleto.Imprimir
                                                        else if sImpressaoPara = 'N' then gbBoleto.Visualizar;

                                    GuardarBoletoBancario(C_TitulosAGENCIA.AsString,
                                        C_TitulosCODBANCO.AsString,
                                        DMProjeto.sRazaoEmpresa,
                                        C_TitulosTITULO.AsString,
                                        C_TitulosCODIGO.AsString,
                                        C_TitulosVALOR.AsString,
                                        iif(trim(C_TitulosNOSSONUMERO.AsString) = '', IntToStr(Saida), C_TitulosNOSSONUMERO.AsString),
                                        C_TitulosCodigo.AsString,
                                        C_TitulosDIGITOCODIGO.AsString,
                                        C_TitulosNUMEROCARTEIRA.value,
                                        '',
                                        C_TitulosCONVENIO.AsString,
                                        C_TitulosNOME.AsString,
                                        C_TitulosENDERECO.AsString,
                                        C_TitulosBAIRRO.AsString,
                                        C_Tituloscep.AsString,
                                        C_TitulosUF.AsString,
                                        C_TitulosCIDADE.AsString,
                                        C_TitulosCPF_CNPJ.value,
                                        C_TitulosLOCALDEPAGAMENTO.AsString,
                                        C_TitulosINSTRUCOES_TEMP.AsString,
                                        C_TitulosESPECIEDOC.AsString,
                                        C_TitulosACEITE.AsString,
                                        C_TitulosCOMPETENCIA.AsDateTime,
                                        C_TitulosVENCIMENTO.AsDateTime);

                                    C_Titulos.Next;
                                end;

                            ImprimirBoletoBancario();
                        end;
                        }

                end;
            {Carn�}
            {Felipe - Alteracoes efetuadas na data 29/07/2015 para impressao do Carne}
            if (sCarne = 'S') and (sCarneIdentificado = 'S') then
                begin
                    if (not bCarnePreImpresso) then
                        begin
                            if sImpressaoPara = 'C' then
                                begin
                                    if DlgMsg.ShowMsg(8013) = 100 then
                                        begin
                                            ppCarne_Identificado.DeviceType := 'Printer';
                                            ppCarne_Identificado.Print;
                                        end;
                                end
                            else if sImpressaoPara = 'S' then
                                begin
                                    ppCarne_Identificado.DeviceType := 'Printer';
                                    ppCarne_Identificado.Print;
                                end
                            else if sImpressaoPara = 'N' then
                                begin
                                    ppCarne_Identificado.DeviceType := 'Screen';
                                    ppCarne_Identificado.Print;
                                end;
                        end
                    else
                        begin
                            if sImpressaoPara = 'C' then
                                begin
                                    if DlgMsg.ShowMsg(8013) = 100 then
                                        begin
                                            ppCarne_Identificado_impresso.DeviceType := 'Printer';
                                            ppCarne_Identificado_impresso.Print;
                                        end;
                                end
                            else if sImpressaoPara = 'S' then
                                begin
                                    ppCarne_Identificado_impresso.DeviceType := 'Printer';
                                    ppCarne_Identificado_impresso.Print;
                                end
                            else if sImpressaoPara = 'N' then
                                begin
                                    ppCarne_Identificado_impresso.DeviceType := 'Screen';
                                    ppCarne_Identificado_impresso.Print;
                                end;

                        end;
                end
            else if (sCarne = 'S') and (sCarneIdentificado = 'N') then
                begin
                    DMProjeto.Interpreta(sCabEsquerdo);
                    ppCabCarne.RichText := sCabEsquerdo;

                    if sImpressaoPara = 'C' then
                        begin
                            if DlgMsg.ShowMsg(8013) = 100 then
                                begin
                                    rbCarne.DeviceType := 'Printer';
                                    if bCarnePreImpresso then
                                        rbCarne_II.Print
                                    else
                                        rbCarne.Print;
                                end;
                        end
                    else if sImpressaoPara = 'S' then
                        begin
                            rbCarne.DeviceType := 'Printer';
                            if bCarnePreImpresso then
                                rbCarne_II.Print
                            else
                                rbCarne.Print;
                        end
                    else if sImpressaoPara = 'N' then
                        begin
                            rbCarne.DeviceType := 'Screen';
                            if bCarnePreImpresso then
                                rbCarne_II.Print
                            else
                                rbCarne.Print;
                        end;
                end;
        end;
end;

procedure TRptDocCobranca.MemoExtensoPrint(Sender: TObject);
begin
    TppMemo(Sender).Lines.Text := Util2.Extenso(C_TitulosValor.AsCurrency);
end;

procedure TRptDocCobranca.ppLabel1GetText(Sender: TObject;
    var Text: string);
begin
    Text := DMProjeto.sRazaoEmpresa;
end;

procedure TRptDocCobranca.ppDBMemo1GetMemo(Sender: TObject;
    aLines: TStrings);
var
    nJuros: Currency;
begin
    aLines.Add(C_TitulosInstrucoes.AsString);
    aLines.Add(C_TitulosOBS.AsString);
    if C_TitulosJUROSINSTRUCOES.AsFloat > 0 then
        begin
            nJuros := C_TitulosValor.AsCurrency * (C_TitulosJUROSINSTRUCOES.AsFloat / 100);
            aLines.Add(' Juros ao dia por atraso no pagamento R$ ' + FormatCurr('##0.00', nJuros));
        end;
end;

procedure TRptDocCobranca.C_TitulosCalcFields(DataSet: TDataSet);
begin
    DataSet.FieldByName('ClienteIdentificacao').AsString :=
        SoNumeros(DataSet.FieldByName('CodCliente').Value, 6) +
        SoNumeros(DataSet.FieldByName('Id').Value, 8);
    if DataSet.FieldByName('COBRAREMISSAO').AsString = 'S' then
        begin
            if (bPromissoriaUnica) and (bDuplicata) then
                DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('Total').Value +
                    DataSet.FieldByName('TARIFAEMISSAO').Value
            else
                DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('VALOR_TEMP').Value +
                    DataSet.FieldByName('TARIFAEMISSAO').Value;
            DataSet.FieldByName('INSTRUCOES').Value :=
                DataSet.FieldByName('INSTRUCOES_TEMP').Value +
                #13#10 + '- INCLUIDA NA PARCELA A TARIFA DE EMISSAO DESTE DOC. DE ' +
                DataSet.FieldByName('ESPECIE').AsString +
                ' ' + FormatFloat('0.00', DataSet.FieldByName('TARIFAEMISSAO').Value) + '.';
        end
    else
        begin
            if (bPromissoriaUnica) and (bDuplicata) then
                DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('Total').Value
            else
                DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('VALOR_TEMP').Value;
            DataSet.FieldByName('INSTRUCOES').Value := DataSet.FieldByName('INSTRUCOES_TEMP').Value;
        end;
    DataSet.FieldByName('icDia').Value := Copy(FormatDateTime('YYYYMMDD', DataSet.FieldByName('VENCIMENTO').AsDateTime), 7, 2);

    DataSet.FieldByName('icMes').Value := Copy(FormatDateTime('YYYYMMDD', DataSet.FieldByName('VENCIMENTO').AsDateTime), 5, 2);

    DataSet.FieldByName('icAno').Value := Copy(FormatDateTime('YYYYMMDD', DataSet.FieldByName('VENCIMENTO').AsDateTime), 1, 4);

    DataSet.FieldByName('icSaldoRestante').Value := (C_TitulosFALTARECEBER.AsCurrency + C_TitulosJUROSCALCULADO.AsCurrency);
end;

procedure TRptDocCobranca.zrEmitenteBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := DMProjeto.sNomeEmpresa;
end;

procedure TRptDocCobranca.zrTextoBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := ' No dia ' + C_TitulosVENCIMENTO.AsString + ' pagarei' +
        ' por esta �nica via de NOTA PROMISSORIA a firma ' + DMProjeto.sNomeEmpresa +
        ' a import�ncia de R$ ' + FormatFloat('#,###,###,##0.00', C_TitulosVALOR.AsCurrency) +
        ' (' + Util2.Extenso(C_TitulosVALOR.AsCurrency) + ') pela compra efetuada no seu' +
        ' estabelecimento.';

end;

procedure TRptDocCobranca.ZRLabel15BeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZRLabel(Sender).Caption := MascaraCPFCNPJ(C_TitulosCPF_CNPJ.AsString);
end;

procedure TRptDocCobranca.ppDataExtensoPrint(Sender: TObject);
begin
    TppMemo(Sender).Lines.Text := Funcoes.DataExtenso(Now, 1)
end;

procedure TRptDocCobranca.ppDataExtensoDupCarnePrint(Sender: TObject);
begin
    TppMemo(Sender).Lines.Text := Funcoes.DataExtenso(C_TitulosVENCIMENTO.AsDateTime, 1)
end;

procedure TRptDocCobranca.ppDataExtensoDupImpPrint(Sender: TObject);
begin
    TppMemo(Sender).Lines.Text := Funcoes.DataExtenso(C_TitulosVENCIMENTO.AsDateTime, 1)
end;

procedure TRptDocCobranca.ppDBText118GetText(Sender: TObject;
    var Text: string);
begin
    Text := '*' + Text + '*';
end;

procedure TRptDocCobranca.ppLocalPgtoGetText(Sender: TObject;
    var Text: string);
begin
    Text := DMPRojeto.sNomeEmpresa + '-' + DMPRojeto.sCidadeEmpresa + '-' + DMProjeto.sUFEmpresa;
end;

procedure TRptDocCobranca.ppEmpresaGetText(Sender: TObject;
    var Text: string);
begin
    Text := DMProjeto.sRazaoEmpresa;
end;

procedure TRptDocCobranca.ppLabel36GetText(Sender: TObject;
    var Text: string);
begin
    if ppDBText111.Text = '' then
        Text := 'ei'
    else
        Text := 'emos';
end;

procedure TRptDocCobranca.ppDBText105GetText(Sender: TObject;
    var Text: string);
begin
    Text := Copy(C_TitulosNOME.AsString, 1, 35);
end;

procedure TRptDocCobranca.ppDBText108GetText(Sender: TObject;
    var Text: string);
begin
    Text := Copy(C_TitulosNOME.AsString, 36, 15);
end;

procedure TRptDocCobranca.ppDBText124GetText(Sender: TObject;
    var Text: string);
begin
    Text := Funcoes.Mes(C_Titulos.FieldByName('icMes').AsInteger, 1);
end;

procedure TRptDocCobranca.ppDBText125GetText(Sender: TObject;
    var Text: string);
begin
    Text := LowerCase(Util2.Extenso(C_Titulos.FieldByName('icAno').Value));
    Text := Replace(Text, 'real', '');
    Text := Replace(Text, 'reais', '');
end;

procedure TRptDocCobranca.ppDBText117GetText(Sender: TObject;
    var Text: string);
begin
    Text := LowerCase(Util2.Extenso(C_Titulos.FieldByName('icDia').Value));
    Text := Replace(Text, 'real', '');
    Text := Replace(Text, 'reais', '');
end;

procedure TRptDocCobranca.ppLabel35GetText(Sender: TObject;
    var Text: string);
begin
    Text := IntToStr(Day(Now));
end;

procedure TRptDocCobranca.ppLabel37GetText(Sender: TObject;
    var Text: string);
begin
    Text := IntToStr(Month(Now));
end;

procedure TRptDocCobranca.ppLabel38GetText(Sender: TObject;
    var Text: string);
begin
    Text := IntToStr(YearOf(Now));
end;

procedure TRptDocCobranca.ppDBText56GetText(Sender: TObject;
    var Text: string);
begin
    Text := C_TitulosCODCLIENTE.AsString + '-' + Text;
end;

procedure TRptDocCobranca.ppImage3Print(Sender: TObject);
begin
    if FileExists(DMProjeto.ImgPath + 'carne.jpg') then
        ppImage3.Picture.LoadFromFile(DMProjeto.ImgPath + 'carne.jpg')
    else
        ppimage3.Clear;
end;

procedure TRptDocCobranca.ppImage2Print(Sender: TObject);
begin
    if FileExists(DMProjeto.ImgPath + 'carne.jpg') then
        ppImage2.Picture.LoadFromFile(DMProjeto.ImgPath + 'carne.jpg')
    else
        ppimage2.Clear;
end;

procedure TRptDocCobranca.ppImage1Print(Sender: TObject);
begin
    if FileExists(DMProjeto.ImgPath + 'carne.jpg') then
        ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath + 'carne.jpg')
    else
        ppimage1.Clear;
end;

procedure TRptDocCobranca.GuardarBoletoBancario(edAgencia, edBanco, edNomeCede, edDocumento,
    edCodCedente, edValor, edNNum, edContaCorrente, edDigitoCC, edCarteira, edModeloCarteira, edConvenio, edSacado, edEndereco,
    edBairro, edCep, edUF, edCidade, edCNPJ, edLocalPagamento, edInstrucoes, edEspecieDoc, edAceite: string; dtpEmissao, dtpVencimento: TDateTime);
begin

    { ANTIGO CODIGO GERADOR PARA FREEBOLETO
    B.LimparTudo;
    B.Cedente.Agencia := edAgencia;
    B.Cedente.CodigoBanco := edBanco;
    B.Moeda := '9';
    B.EspecieDoc := edEspecieDoc;
    B.Aceite := edAceite;
    B.Cedente.Nome := edNomeCede;
    B.DataDocumento := trunc(dtpEmissao);
    B.Documento := edDocumento;
    B.Vencimento := dtpVencimento;
    b.Cedente.CodigoCedente := edCodCedente;
    b.Valor := StrToFloat(edValor);
    b.NossoNumero := edNNum;
    B.Cedente.ContaCorrente := edContaCorrente;
//    if edDigitoCC <> '' then
    B.Cedente.DigitoContaCorrente := edDigitoCC[1];
    B.carteira := edCarteira;
    B.Cedente.Banco151.ModalidadeConta := edModeloCarteira;
    B.Cedente.Banco001.Convenio := edConvenio;
    B.LocalPagamento := edLocalPagamento;

    B.Instrucoes := funcoes.TrocaCaraterePEnter(edInstrucoes);

    with B.sacado do
    begin
        Nome := edSacado;
        Endereco := edEndereco;
        Bairro := edBairro;
        Cep := edCep;
        Estado := edUF;
        Cidade := edCidade;
        CNPJ_CPF := edCNPJ;
    end;
    b.preparar;
//    memo1.Lines.clear;
//    with memo1.lines do
//    begin
//        Add('AgenCodCedente:' + b.DadosGerados.AgencCodigoCedente);
//        Add('Nome Banco:' + b.DadosGerados.NomeDoBanco);
//        Add('Num. bancario:' + b.DadosGerados.NumeroBancario);
//        Add('Digitavel:' + b.DadosGerados.LinhaDigitavel);
//        Add('Barras:' + b.DadosGerados.CodigoBarras);
//    end;
    AdicionarBoletoBancario();

    }
end;

procedure TRptDocCobranca.AdicionarBoletoBancario();
var x: TFreeBoleto;
begin
    x := TFreeBoleto.create(nil);
    CloneProperties(b, x);
    Img.ListaBoletos.Add(x);
end;

procedure TRptDocCobranca.CloneProperties(SourceComp, DestComp: TObject);
var
    Propinfo: PPropInfo;
    Properties: PPropList;
    FCount: Integer;
    FSize: Integer;
    i: Integer;
    PropName: string;
    SourcePropObject: TObject;
    DestPropObject: TObject;
begin
    FCount := GetPropList(SourceComp.ClassInfo, tkAny, nil);
    FSize := FCount * SizeOf(Pointer);
    GetMem(Properties, FSize);
    GetPropList(SourceComp.ClassInfo, tkAny, Properties);
    for i := 0 to FCount - 1 do
        begin
            PropName := Properties^[i].Name;
            PropInfo := GetPropInfo(DestComp.ClassInfo, PropName);
            if (PropInfo = nil) or (UpperCase(PropName) = 'NAME') then
                Continue;
            case PropType(SourceComp, PropName) of
                tkInteger,
                    tkWChar,
                    tkSet,
                    tkChar: SetOrdProp(DestComp, PropName, GetOrdProp(SourceComp, PropName));
                tkString,
                    tkLString,
                    tkWString: SetStrProp(DestComp, PropName, GetStrProp(SourceComp, PropName));
                tkEnumeration: SetEnumProp(DestComp, PropName, GetEnumProp(SourceComp, PropName));
                tkFloat: SetFloatProp(DestComp, PropName, GetFloatProp(SourceComp, PropName));
                tkClass:
                    begin
                        SourcePropObject := GetObjectProp(SourceComp, PropName);
                        DestPropObject := GetObjectProp(DestComp, PropName);
                        if (SourcePropObject <> nil) and (DestPropObject <> nil)
                            and (SourcePropObject.ClassType.ClassParent.ClassName = 'TPersistent') then
                            CloneProperties(SourcePropObject, DestPropObject)
                        else
                            SetObjectProp(DestComp, PropName, GetObjectProp(SourceComp, PropName));
                    end;
            end;
        end;
    if Properties <> nil then
        FreeMem(Properties, FSize);
end;

procedure TRptDocCobranca.ImprimirBoletoBancario();
begin
    Img.ShowPreview;
    Img.ListaBoletos.Clear;
end;

procedure TRptDocCobranca.FormCreate(Sender: TObject);
begin
    B := TFreeBoleto.create(application);
    Img := TFreeBoletoImagem.create(self);
end;

procedure TRptDocCobranca.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    B.free;
    Img.free;
end;

procedure TRptDocCobranca.ppMemoExtensoTituloPrint(Sender: TObject);
begin
    TppMemo(Sender).Lines.Text := Util2.Extenso(C_TitulosicSaldoRestante.AsCurrency);
end;

end.

