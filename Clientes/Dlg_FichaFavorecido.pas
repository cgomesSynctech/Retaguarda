unit Dlg_FichaFavorecido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, dxCntner, dxTL, dxDBCtrl, dxDBGrid, IBCustomDataSet,
  IBQuery, Db, Provider, DBClient, dxDBTLCl, dxGrClms, dxMasterView, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, CheckLst,
  TS_CheckListBox, ppBands, ppCache, ppCtrls, ppPrnabl, ppStrtch, ppRegion,
  TS_Edit, TS_Label, myChkBox, ppVar, dxEditor, dxEdLib, FormsComponent,
  TS_Image, dxfLabel, TS_MaxPanel, teCtrls, TS_EffectsPanel,
  TS_PopupMenu, ComCtrls,
  TS_PageControl, dxExEdtr, TS_ImageEdit, TS_CheckBox, ppSubRpt, ppDevice, Variants,
  Placemnt, BTOdeum, ppMemo;

type
  TDlgFichaFavorecido = class(TFrmModeloCadastros)
    edNumFichas: TTS_Edit;
    TS_Label1: TTS_Label;
    Q_FichaProvider: TDataSetProvider;
    C_Ficha: TClientDataSet;
    C_FichaDS: TDataSource;
    Q_Ficha: TIBQuery;
    C_FichaFAVORECIDO: TIntegerField;
    C_FichaCODIGO: TStringField;
    C_FichaEIN: TStringField;
    C_FichaSSN: TStringField;
    C_FichaCEP: TStringField;
    C_FichaCAIXAPOSTAL: TStringField;
    C_FichaFONE1: TStringField;
    C_FichaFONE2: TStringField;
    C_FichaCONTATO: TStringField;
    C_FichaCELULAR: TStringField;
    C_FichaENDERECO: TStringField;
    C_FichaCIDADE: TStringField;
    C_FichaUF: TStringField;
    C_FichaEMAIL: TStringField;
    C_FichaSITE: TStringField;
    C_FichaDATANASC: TDateField;
    C_FichaTAXAVEL: TStringField;
    C_FichaEXIGIVEL1099: TStringField;
    C_FichaNUMERO_REVENDA: TStringField;
    C_FichaLIMITECREDITO: TBCDField;
    C_FichaTABELAPRECO: TIntegerField;
    C_FichaPAIS: TStringField;
    C_FichaTIPOATIVIDADE: TStringField;
    C_FichaPLANOPAGAMENTO: TStringField;
    C_FichaTAX: TStringField;
    C_FichaTIPOENTREGA: TStringField;
    C_FichaVENDEDOR: TStringField;
    C_FichaCONTA: TStringField;
    C_FichaNOME: TStringField;
    ppDBModelo1: TppDBPipeline;
    ppModelo1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppCabec1: TppRegion;
    ppLine37: TppLine;
    ppLabel34: TppLabel;
    ppDetailBand2: TppDetailBand;
    TS_Label3: TTS_Label;
    cmbModelo: TTS_ImageEdit;
    pcModelos: TTS_PageControl;
    tsNormal: TTS_TabSheet;
    tsProfissional: TTS_TabSheet;
    tsCrediario: TTS_TabSheet;
    C_FichaNOME_AVAL: TStringField;
    C_FichaSSN_AVAL: TStringField;
    C_FichaCARTMOTOR_AVAL: TStringField;
    C_FichaFONE1_AVAL: TStringField;
    C_FichaFONE2_AVAL: TStringField;
    C_FichaENDERECO_AVAL: TStringField;
    C_FichaCIDADE_AVAL: TStringField;
    C_FichaUF_AVAL: TStringField;
    C_FichaCEP_AVAL: TStringField;
    C_FichaCAIXAPOSTAL_AVAL: TStringField;
    C_FichaIMOVEL_AVAL: TStringField;
    C_FichaIMOVEL: TStringField;
    C_FichaNOMEEMPREG: TStringField;
    C_FichaNOMEEMPREG_AVAL: TStringField;
    C_FichaENDERECOEMPREG: TStringField;
    C_FichaENDERECOEMPREG_AVAL: TStringField;
    C_FichaCIDADEEMPREG: TStringField;
    C_FichaCIDADEEMPREG_AVAL: TStringField;
    C_FichaUFEMPREG: TStringField;
    C_FichaUFEMPREG_AVAL: TStringField;
    C_FichaFONEEMPREG: TStringField;
    C_FichaFONEEMPREG_AVAL: TStringField;
    C_FichaCARGOEMPREG: TStringField;
    C_FichaCARGOEMPREG_AVAL: TStringField;
    C_FichaSUPERVEMPREG: TStringField;
    C_FichaSUPERVEMPREG_AVAL: TStringField;
    C_FichaSOCIOEMPREG: TStringField;
    C_FichaSOCIOEMPREG_AVAL: TStringField;
    C_FichaANOSTRABEMPREG: TIntegerField;
    C_FichaANOSTRABEMPREG_AVAL: TIntegerField;
    C_FichaSALARIOEMPREG: TBCDField;
    C_FichaSALARIOEMPREG_AVAL: TBCDField;
    C_FichaVEICULO: TStringField;
    C_FichaVEICULO_AVAL: TStringField;
    C_FichaCONJUGUE_NOME: TStringField;
    C_FichaCONJUGUE_SSN: TStringField;
    C_FichaCONJUGUE_DATANASC: TDateField;
    C_FichaQTDEFILHOS: TIntegerField;
    C_FichaPAIS1: TIntegerField;
    C_FichaNOMEEMPREG2: TStringField;
    C_FichaNOMEEMPREG_AVAL2: TStringField;
    C_FichaENDERECOEMPREG2: TStringField;
    C_FichaENDERECOEMPREG_AVAL2: TStringField;
    C_FichaCIDADEEMPREG2: TStringField;
    C_FichaCIDADEEMPREG_AVAL2: TStringField;
    C_FichaUFEMPREG2: TStringField;
    C_FichaUFEMPREG_AVAL2: TStringField;
    C_FichaFONEEMPREG2: TStringField;
    C_FichaFONEEMPREG_AVAL2: TStringField;
    C_FichaCARGOEMPREG2: TStringField;
    C_FichaCARGOEMPREG_AVAL2: TStringField;
    C_FichaSUPERVEMPREG2: TStringField;
    C_FichaSUPERVEMPREG_AVAL2: TStringField;
    C_FichaSOCIOEMPREG2: TStringField;
    C_FichaSOCIOEMPREG_AVAL2: TStringField;
    C_FichaANOSTRABEMPREG2: TIntegerField;
    C_FichaANOSTRABEMPREG_AVAL2: TIntegerField;
    C_FichaSALARIOEMPREG2: TBCDField;
    C_FichaSALARIOEMPREG_AVAL2: TBCDField;
    C_FichaBANCOFINANC: TStringField;
    C_FichaBANCOFINANC_AVAL: TStringField;
    C_FichaBANCOENDERFINANC: TStringField;
    C_FichaBANCOENDERFINANC_AVAL: TStringField;
    C_FichaBANCOCIDADEFINANC: TStringField;
    C_FichaBANCOCIDADEFINANC_AVAL: TStringField;
    C_FichaBANCOUFFINANC: TStringField;
    C_FichaBANCOUFFINANC_AVAL: TStringField;
    C_FichaBANCOCEPFINANC: TStringField;
    C_FichaBANCOCEPFINANC_AVAL: TStringField;
    C_FichaBANCONUMEROCONTA: TStringField;
    C_FichaBANCONUMEROCONTA_AVAL: TStringField;
    C_FichaBANCOSALDO: TBCDField;
    C_FichaBANCOSALDO_AVAL: TBCDField;
    C_FichaBANCOFINANC2: TStringField;
    C_FichaBANCOFINANC_AVAL2: TStringField;
    C_FichaBANCOENDERFINANC2: TStringField;
    C_FichaBANCOENDERFINANC_AVAL2: TStringField;
    C_FichaBANCOCIDADEFINANC2: TStringField;
    C_FichaBANCOCIDADEFINANC_AVAL2: TStringField;
    C_FichaBANCOUFFINANC2: TStringField;
    C_FichaBANCOUFFINANC_AVAL2: TStringField;
    C_FichaBANCOCEPFINANC2: TStringField;
    C_FichaBANCOCEPFINANC_AVAL2: TStringField;
    C_FichaBANCONUMEROCONTA2: TStringField;
    C_FichaBANCONUMEROCONTA_AVAL2: TStringField;
    C_FichaBANCOSALDO2: TBCDField;
    C_FichaBANCOSALDO_AVAL2: TBCDField;
    C_FichaCARTAOVISA: TStringField;
    C_FichaCARTAOVISA_AVAL: TStringField;
    C_FichaCARTAOMASTER: TStringField;
    C_FichaCARTAOMASTER_AVAL: TStringField;
    C_FichaCARTAOAMEX: TStringField;
    C_FichaCARTAOAMEX_AVAL: TStringField;
    C_FichaCARTAODISC: TStringField;
    C_FichaCARTAODISC_AVAL: TStringField;
    C_FichaCARTAOOUTRO: TStringField;
    C_FichaCARTAOOUTRO_AVAL: TStringField;
    C_FichaREFNOME: TStringField;
    C_FichaREFNOME_AVAL: TStringField;
    C_FichaREFFONE: TStringField;
    C_FichaREFFONE_AVAL: TStringField;
    C_FichaREFNOME2: TStringField;
    C_FichaREFNOME_AVAL2: TStringField;
    C_FichaREFFONE2: TStringField;
    C_FichaREFFONE_AVAL2: TStringField;
    C_FichaREFNOME3: TStringField;
    C_FichaREFNOME_AVAL3: TStringField;
    C_FichaREFFONE3: TStringField;
    C_FichaREFFONE_AVAL3: TStringField;
    C_FichaCARTMOTORUF: TStringField;
    C_FichaCARTMOTORUF_AVAL: TStringField;
    C_FichaCEPEMPREG: TStringField;
    C_FichaCEPEMPREG_AVAL: TStringField;
    C_FichaCEPEMPREG2: TStringField;
    C_FichaCEPEMPREG_AVAL2: TStringField;
    C_FichaDATANASC_AVAL: TDateField;
    C_FichaEndCompleto: TStringField;
    C_FichaEndCompletoAval: TStringField;
    ppRGPessoais: TppRegion;
    ppShape5: TppShape;
    ppLabel48: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText35: TppDBText;
    ppLabel51: TppLabel;
    ppDBText36: TppDBText;
    ppLine44: TppLine;
    ppLabel53: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel54: TppLabel;
    ppLine45: TppLine;
    ppLine41: TppLine;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel57: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLine46: TppLine;
    ppLabel60: TppLabel;
    C_FichaCONJUGUE_NOME_AVAL: TStringField;
    C_FichaCONJUGUE_DATANASC_AVAL: TDateField;
    C_FichaCONJUGUE_SSN_AVAL: TStringField;
    C_FichaPAIS_AVAL: TIntegerField;
    ppLabel67: TppLabel;
    ppDBText44: TppDBText;
    myDBCheckBox12: TmyDBCheckBox;
    ppLabel74: TppLabel;
    myDBCheckBox13: TmyDBCheckBox;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    myDBCheckBox14: TmyDBCheckBox;
    ppLabel77: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel78: TppLabel;
    ppDBText48: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine47: TppLine;
    ppRGEmpregador: TppRegion;
    ppShape7: TppShape;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText49: TppDBText;
    ppLabel92: TppLabel;
    ppDBText51: TppDBText;
    ppLine48: TppLine;
    ppLabel93: TppLabel;
    ppDBText56: TppDBText;
    ppLabel94: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine52: TppLine;
    ppLabel91: TppLabel;
    myDBCheckBox21: TmyDBCheckBox;
    ppLabel95: TppLabel;
    ppDBText50: TppDBText;
    ppLine51: TppLine;
    ppLine53: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine54: TppLine;
    ppDBText52: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLine55: TppLine;
    ppLabel98: TppLabel;
    ppDBText59: TppDBText;
    ppLabel99: TppLabel;
    ppDBText60: TppDBText;
    ppLabel100: TppLabel;
    ppDBText61: TppDBText;
    ppLabel101: TppLabel;
    ppLine60: TppLine;
    ppLabel102: TppLabel;
    myDBCheckBox22: TmyDBCheckBox;
    ppLabel103: TppLabel;
    ppDBText62: TppDBText;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine64: TppLine;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLine65: TppLine;
    C_FichaEndCompletoEmpreg: TStringField;
    C_FichaEndCompletoEmpreg2: TStringField;
    ppLabel106: TppLabel;
    ppDBText66: TppDBText;
    ppLabel107: TppLabel;
    ppDBText67: TppDBText;
    ppLabel108: TppLabel;
    ppDBText68: TppDBText;
    ppLabel109: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLabel110: TppLabel;
    myDBCheckBox23: TmyDBCheckBox;
    ppLabel111: TppLabel;
    ppDBText69: TppDBText;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLine70: TppLine;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel114: TppLabel;
    ppDBText73: TppDBText;
    ppLabel115: TppLabel;
    ppDBText74: TppDBText;
    ppLabel116: TppLabel;
    ppDBText75: TppDBText;
    ppLabel117: TppLabel;
    ppLine71: TppLine;
    ppLabel118: TppLabel;
    myDBCheckBox24: TmyDBCheckBox;
    ppLabel119: TppLabel;
    ppDBText76: TppDBText;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine75: TppLine;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    C_FichaEndCompletoEmpreg_Aval: TStringField;
    C_FichaEndCompletoEmpreg_Aval2: TStringField;
    C_FichaEndCompletoBanco: TStringField;
    C_FichaEndCompletoBanco2: TStringField;
    C_FichaEndCompletoBanco_Aval: TStringField;
    C_FichaEndCompletoBanco_Aval2: TStringField;
    ppRGFinanceiro: TppRegion;
    ppShape9: TppShape;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppDBText80: TppDBText;
    ppLabel125: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel127: TppLabel;
    ppLine58: TppLine;
    ppLine61: TppLine;
    ppLine72: TppLine;
    ppLabel128: TppLabel;
    ppLabel130: TppLabel;
    ppDBText83: TppDBText;
    ppLine80: TppLine;
    ppLine85: TppLine;
    ppLabel134: TppLabel;
    ppDBText84: TppDBText;
    ppLabel135: TppLabel;
    ppDBText85: TppDBText;
    myDBCheckBox29: TmyDBCheckBox;
    ppLabel136: TppLabel;
    myDBCheckBox30: TmyDBCheckBox;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    myDBCheckBox31: TmyDBCheckBox;
    ppLabel139: TppLabel;
    myDBCheckBox32: TmyDBCheckBox;
    ppLabel140: TppLabel;
    ppDBText86: TppDBText;
    ppLabel141: TppLabel;
    ppDBText87: TppDBText;
    ppLabel142: TppLabel;
    ppLabel126: TppLabel;
    ppDBText88: TppDBText;
    ppLabel129: TppLabel;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppLabel131: TppLabel;
    ppLine76: TppLine;
    ppLabel132: TppLabel;
    ppDBText91: TppDBText;
    ppLabel133: TppLabel;
    ppDBText92: TppDBText;
    ppLabel143: TppLabel;
    ppDBText93: TppDBText;
    myDBCheckBox25: TmyDBCheckBox;
    ppLabel144: TppLabel;
    myDBCheckBox26: TmyDBCheckBox;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    myDBCheckBox27: TmyDBCheckBox;
    ppLabel147: TppLabel;
    myDBCheckBox28: TmyDBCheckBox;
    ppLabel148: TppLabel;
    ppDBText94: TppDBText;
    ppLabel149: TppLabel;
    ppDBText95: TppDBText;
    ppLabel150: TppLabel;
    ppLine79: TppLine;
    ppRGReferencias: TppRegion;
    ppShape10: TppShape;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLine77: TppLine;
    ppLabel156: TppLabel;
    ppLine82: TppLine;
    ppLabel153: TppLabel;
    ppDBText96: TppDBText;
    ppLabel154: TppLabel;
    ppDBText97: TppDBText;
    ppLine78: TppLine;
    ppLabel155: TppLabel;
    ppDBText98: TppDBText;
    ppLabel157: TppLabel;
    ppDBText99: TppDBText;
    ppLabel158: TppLabel;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppDBText102: TppDBText;
    ppLabel161: TppLabel;
    ppDBText103: TppDBText;
    ppLabel162: TppLabel;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel163: TppLabel;
    ppDBText106: TppDBText;
    ppLabel164: TppLabel;
    ppDBText107: TppDBText;
    ppLabel165: TppLabel;
    ppLine83: TppLine;
    ppLine81: TppLine;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    C_FichaDESCPAIS_AVAL: TStringField;
    ppRGGerais: TppRegion;
    ppLabel70: TppLabel;
    ppShape13: TppShape;
    ppLabel55: TppLabel;
    ppLabel71: TppLabel;
    ppLabel69: TppLabel;
    ppDBText38: TppDBText;
    ppLabel39: TppLabel;
    ppDBText37: TppDBText;
    ppLabel41: TppLabel;
    ppDBText39: TppDBText;
    ppLabel72: TppLabel;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel73: TppLabel;
    ppLabel56: TppLabel;
    ppDBText27: TppDBText;
    ppDBText31: TppDBText;
    ppLabel43: TppLabel;
    ppDBText30: TppDBText;
    ppLabel38: TppLabel;
    ppDBText29: TppDBText;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppLabel36: TppLabel;
    ppLabel44: TppLabel;
    ppDBText32: TppDBText;
    ppLine42: TppLine;
    ppLine39: TppLine;
    ppLine56: TppLine;
    ppLine38: TppLine;
    ppLine57: TppLine;
    ppLine40: TppLine;
    ppModelo2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppCabec2: TppRegion;
    ppLine43: TppLine;
    ppLabel166: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppRGPGerais: TppRegion;
    ppShape11: TppShape;
    ppLabel168: TppLabel;
    ppLabel170: TppLabel;
    ppDBText110: TppDBText;
    ppLabel171: TppLabel;
    ppDBText111: TppDBText;
    ppDBText113: TppDBText;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppDBText114: TppDBText;
    ppLabel175: TppLabel;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppDBText117: TppDBText;
    ppLine59: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppRGPFinanc: TppRegion;
    ppShape12: TppShape;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppDBText125: TppDBText;
    ppLabel188: TppLabel;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppLabel189: TppLabel;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel191: TppLabel;
    ppDBText128: TppDBText;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLabel192: TppLabel;
    ppDBText129: TppDBText;
    ppLabel193: TppLabel;
    ppDBText130: TppDBText;
    myDBCheckBox33: TmyDBCheckBox;
    ppLabel194: TppLabel;
    myDBCheckBox34: TmyDBCheckBox;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    myDBCheckBox35: TmyDBCheckBox;
    ppLabel197: TppLabel;
    myDBCheckBox36: TmyDBCheckBox;
    ppLabel198: TppLabel;
    ppDBText131: TppDBText;
    ppLabel199: TppLabel;
    ppDBText132: TppDBText;
    ppLabel200: TppLabel;
    ppLine96: TppLine;
    ppDBText141: TppDBText;
    ppRGPPessoais: TppRegion;
    ppShape14: TppShape;
    ppLabel215: TppLabel;
    ppLabel217: TppLabel;
    ppDBText143: TppDBText;
    ppLabel219: TppLabel;
    ppDBText145: TppDBText;
    ppLine97: TppLine;
    ppLabel220: TppLabel;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppLabel221: TppLabel;
    ppLine98: TppLine;
    myDBCheckBox41: TmyDBCheckBox;
    ppLabel222: TppLabel;
    myDBCheckBox42: TmyDBCheckBox;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    myDBCheckBox43: TmyDBCheckBox;
    ppLine100: TppLine;
    ppLabel225: TppLabel;
    ppRGPEmpreg: TppRegion;
    ppShape15: TppShape;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppDBText153: TppDBText;
    ppLabel250: TppLabel;
    ppDBText154: TppDBText;
    ppLabel251: TppLabel;
    ppDBText155: TppDBText;
    ppLabel252: TppLabel;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLabel254: TppLabel;
    myDBCheckBox59: TmyDBCheckBox;
    ppLabel255: TppLabel;
    ppDBText156: TppDBText;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLine108: TppLine;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppLabel258: TppLabel;
    ppDBText160: TppDBText;
    ppLabel259: TppLabel;
    ppDBText161: TppDBText;
    ppLabel260: TppLabel;
    ppDBText162: TppDBText;
    ppLabel261: TppLabel;
    ppLine110: TppLine;
    ppLabel262: TppLabel;
    myDBCheckBox60: TmyDBCheckBox;
    ppLabel263: TppLabel;
    ppDBText163: TppDBText;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLine113: TppLine;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppLine114: TppLine;
    ppRGPRefer: TppRegion;
    ppShape16: TppShape;
    ppLabel283: TppLabel;
    ppLine125: TppLine;
    ppLabel285: TppLabel;
    ppDBText181: TppDBText;
    ppLabel286: TppLabel;
    ppDBText182: TppDBText;
    ppLine126: TppLine;
    ppLabel287: TppLabel;
    ppDBText183: TppDBText;
    ppLabel288: TppLabel;
    ppDBText184: TppDBText;
    ppLabel289: TppLabel;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppLabel290: TppLabel;
    ppLine128: TppLine;
    ppLine109: TppLine;
    ppRGCustom: TppRegion;
    ppShape17: TppShape;
    ppLabel167: TppLabel;
    ppCampo1: TppLabel;
    ppCampo2: TppLabel;
    ppCampo3: TppLabel;
    ppCampo4: TppLabel;
    ppCampo5: TppLabel;
    ppDBCampo1: TppDBText;
    ppDBCampo2: TppDBText;
    ppDBCampo3: TppDBText;
    ppDBCampo4: TppDBText;
    ppDBCampo5: TppDBText;
    C_FichaCAMPO01: TStringField;
    C_FichaCAMPO02: TStringField;
    C_FichaCAMPO03: TStringField;
    C_FichaCAMPO04: TStringField;
    C_FichaCAMPO05: TStringField;
    C_FichaCAMPO06: TStringField;
    C_FichaCAMPO07: TStringField;
    C_FichaCAMPO08: TStringField;
    C_FichaCAMPO09: TStringField;
    C_FichaCAMPO10: TStringField;
    ppRGSaldos: TppRegion;
    ppShape18: TppShape;
    ppLabel169: TppLabel;
    ppLabel201: TppLabel;
    ppTempoCad: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppRGParcelas: TppRegion;
    ppShape19: TppShape;
    ppLabel185: TppLabel;
    ppLabel190: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel208: TppLabel;
    ppLabel207: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppIP_TotalQtdeParc: TppLabel;
    ppIP_EmDiaQtdeParc: TppLabel;
    ppIP_EmAtrasoQtdeParc: TppLabel;
    ppIP_AtrasadosQtdeParc: TppLabel;
    ppIP_AVencerQtdeParc: TppLabel;
    ppIP_TotalPercValorParc: TppLabel;
    ppIP_EmDiaPercValorParc: TppLabel;
    ppIP_EmAtrasoPercValorParc: TppLabel;
    ppIP_AtrasadosPercValorParc: TppLabel;
    ppIP_AVencerPercValorParc: TppLabel;
    ppIP_TotalPercQtdeParc: TppLabel;
    ppIP_EmDiaPercQtdeParc: TppLabel;
    ppIP_EmAtrasoPercQtdeParc: TppLabel;
    ppIP_AtrasadosPercQtdeParc: TppLabel;
    ppIP_AVencerPercQtdeParc: TppLabel;
    ppIP_TotalValorParc: TppLabel;
    ppIP_EmDiaValorParc: TppLabel;
    ppIP_EmAtrasoValorParc: TppLabel;
    ppIP_AtrasadosValorParc: TppLabel;
    ppIP_AVencerValorParc: TppLabel;
    ppIS_ClienteDesde: TppLabel;
    ppIS_ChequesDev: TppLabel;
    ppIS_LimiteCred: TppLabel;
    ppIS_SaldoAberto: TppLabel;
    ppIS_ChequesPend: TppLabel;
    ppIS_SaldoCompra: TppLabel;
    ppIS_Credito: TppLabel;
    ppRGVendas: TppRegion;
    ppShape20: TppShape;
    ppLabel266: TppLabel;
    pplblUltVenda: TppLabel;
    ppLabel273: TppLabel;
    pplblMenorVenda: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    pplblMaiorVenda: TppLabel;
    ppLabel278: TppLabel;
    ppDataUltVenda: TppLabel;
    ppDataMaiorVenda: TppLabel;
    ppDataMenorVenda: TppLabel;
    ppQtdeVendas: TppLabel;
    ppValorMenorParcela: TppLabel;
    ppValorUltVenda: TppLabel;
    ppValorMaiorVenda: TppLabel;
    ppValorMenorVenda: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLine84: TppLine;
    ppLine89: TppLine;
    ppTotalVendas: TppLabel;
    ppValorMaiorParcela: TppLabel;
    ppValorMedioParcela: TppLabel;
    ppValorMedioVendas: TppLabel;
    ppValorMedioAtrasoParcela: TppLabel;
    ppRGItens: TppRegion;
    ppShape21: TppShape;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel306: TppLabel;
    ppIS_ChequesDevQtde: TppLabel;
    ppLabel211: TppLabel;
    ppIP_VencidasQtdeParc: TppLabel;
    ppIP_VencidasValorParc: TppLabel;
    ppIP_VencidasPercQtdeParc: TppLabel;
    ppIP_VencidasPercValorParc: TppLabel;
    cbPessoais: TTS_CheckBox;
    cbFinanceiros: TTS_CheckBox;
    cbEmpregador: TTS_CheckBox;
    cbReferencias: TTS_CheckBox;
    cbpPessoais: TTS_CheckBox;
    cbpFinanceiros: TTS_CheckBox;
    cbpEmpregador: TTS_CheckBox;
    cbpReferencias: TTS_CheckBox;
    cbpCamposCustom: TTS_CheckBox;
    cbpParcelas: TTS_CheckBox;
    cbpSaldos: TTS_CheckBox;
    cbpVendas: TTS_CheckBox;
    cbpItens: TTS_CheckBox;
    ppLine90: TppLine;
    ppLine95: TppLine;
    ppLine99: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine115: TppLine;
    ppLabel178: TppLabel;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppDBItens: TppDBPipeline;
    Q_MasterDS: TDataSource;
    C_ItensDS: TDataSource;
    C_Itens: TClientDataSet;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensTOTAL: TFloatField;
    C_ItensULTIMACOMPRA: TDateField;
    C_ItensITEM: TIntegerField;
    Q_Itens: TIBQuery;
    C_FichaQ_Itens: TDataSetField;
    ppLine118: TppLine;
    C_ItensFAVORECIDO: TIntegerField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppLine119: TppLine;
    ppModeloN: TppReport;
    ppHeaderBand4: TppHeaderBand;
    rbrgCabecalho: TppRegion;
    ppLine120: TppLine;
    ppLabel212: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape22: TppShape;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppDBText122: TppDBText;
    ppLabel216: TppLabel;
    ppDBText123: TppDBText;
    ppDBText133: TppDBText;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppDBText134: TppDBText;
    ppLabel235: TppLabel;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppDBText137: TppDBText;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppRGFinanceiroN: TppRegion;
    ppShape23: TppShape;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppDBText138: TppDBText;
    ppLabel240: TppLabel;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppLabel241: TppLabel;
    ppLine127: TppLine;
    ppLine129: TppLine;
    ppLabel242: TppLabel;
    ppDBText142: TppDBText;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLabel243: TppLabel;
    ppDBText148: TppDBText;
    ppLabel244: TppLabel;
    ppDBText149: TppDBText;
    myDBCheckBox37: TmyDBCheckBox;
    ppLabel245: TppLabel;
    myDBCheckBox38: TmyDBCheckBox;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    myDBCheckBox39: TmyDBCheckBox;
    ppLabel253: TppLabel;
    myDBCheckBox40: TmyDBCheckBox;
    ppLabel267: TppLabel;
    ppDBText150: TppDBText;
    ppLabel268: TppLabel;
    ppDBText151: TppDBText;
    ppLabel269: TppLabel;
    ppLine132: TppLine;
    ppDBText152: TppDBText;
    ppRGPessoaisN: TppRegion;
    ppShape24: TppShape;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppDBText167: TppDBText;
    ppLabel274: TppLabel;
    ppDBText169: TppDBText;
    ppLine133: TppLine;
    ppLabel277: TppLabel;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppLabel279: TppLabel;
    ppLine134: TppLine;
    myDBCheckBox49: TmyDBCheckBox;
    ppLabel280: TppLabel;
    myDBCheckBox50: TmyDBCheckBox;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    myDBCheckBox51: TmyDBCheckBox;
    ppLine135: TppLine;
    ppLabel284: TppLabel;
    ppRGEmpregadorN: TppRegion;
    ppShape25: TppShape;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppDBText172: TppDBText;
    ppLabel303: TppLabel;
    ppDBText173: TppDBText;
    ppLabel304: TppLabel;
    ppDBText174: TppDBText;
    ppLabel305: TppLabel;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLabel307: TppLabel;
    myDBCheckBox61: TmyDBCheckBox;
    ppLabel313: TppLabel;
    ppDBText175: TppDBText;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLine141: TppLine;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppLabel316: TppLabel;
    ppDBText179: TppDBText;
    ppLabel317: TppLabel;
    ppDBText180: TppDBText;
    ppLabel318: TppLabel;
    ppDBText187: TppDBText;
    ppLabel319: TppLabel;
    ppLine142: TppLine;
    ppLabel320: TppLabel;
    myDBCheckBox62: TmyDBCheckBox;
    ppLabel321: TppLabel;
    ppDBText188: TppDBText;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLine145: TppLine;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLabel324: TppLabel;
    ppRGReferenciasN: TppRegion;
    ppShape26: TppShape;
    ppLabel325: TppLabel;
    ppLine148: TppLine;
    ppLabel326: TppLabel;
    ppDBText192: TppDBText;
    ppLabel327: TppLabel;
    ppDBText193: TppDBText;
    ppLine149: TppLine;
    ppLabel328: TppLabel;
    ppDBText194: TppDBText;
    ppLabel329: TppLabel;
    ppDBText195: TppDBText;
    ppLabel330: TppLabel;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppLabel331: TppLabel;
    ppLine150: TppLine;
    ppRGCamposCustomN: TppRegion;
    ppShape27: TppShape;
    ppLabel332: TppLabel;
    ppNCampo1: TppLabel;
    ppNCampo2: TppLabel;
    ppNCampo3: TppLabel;
    ppNCampo4: TppLabel;
    ppNCampo5: TppLabel;
    ppNCampo6: TppLabel;
    ppNCampo7: TppLabel;
    ppNCampo8: TppLabel;
    ppNCampo9: TppLabel;
    ppNCampo10: TppLabel;
    ppNDBCampo1: TppDBText;
    ppNDBCampo2: TppDBText;
    ppNDBCampo3: TppDBText;
    ppNDBCampo4: TppDBText;
    ppNDBCampo5: TppDBText;
    ppNDBCampo6: TppDBText;
    ppNDBCampo7: TppDBText;
    ppNDBCampo8: TppDBText;
    ppNDBCampo9: TppDBText;
    ppLine151: TppLine;
    ppRegion9: TppRegion;
    ppShape29: TppShape;
    ppLabel360: TppLabel;
    ppLine153: TppLine;
    cbPessoaisN: TTS_CheckBox;
    cbEmpregN: TTS_CheckBox;
    cbFinancN: TTS_CheckBox;
    cbReferN: TTS_CheckBox;
    cbCamposN: TTS_CheckBox;
    pnCampos: TTS_Panel;
    TS_Bevel2: TTS_Bevel;
    Shape3: TShape;
    TS_Label81: TTS_Label;
    cbCampo1: TTS_CheckBox;
    cbCampo6: TTS_CheckBox;
    cbCampo2: TTS_CheckBox;
    cbCampo7: TTS_CheckBox;
    cbCampo3: TTS_CheckBox;
    cbCampo8: TTS_CheckBox;
    cbCampo4: TTS_CheckBox;
    cbCampo9: TTS_CheckBox;
    cbCampo5: TTS_CheckBox;
    cbCampo10: TTS_CheckBox;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    C_FichaESTADOCIVIL: TStringField;
    C_FichaESTADOCIVIL_AVAL: TStringField;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel8: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel9: TppLabel;
    C_FichaSEXO: TStringField;
    ppLabel10: TppLabel;
    myDBCheckBox6: TmyDBCheckBox;
    ppLabel11: TppLabel;
    myDBCheckBox7: TmyDBCheckBox;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox8: TmyDBCheckBox;
    ppLabel14: TppLabel;
    myDBCheckBox9: TmyDBCheckBox;
    ppLabel15: TppLabel;
    C_FichaCARTMOTOR: TStringField;
    C_FichaCPF_CNPJ: TStringField;
    C_FichaINSCRICAO_EST: TStringField;
    C_FichaBAIRRO: TStringField;
    ppLabel16: TppLabel;
    ppDBText11: TppDBText;
    C_FichaOBS: TStringField;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppShape1: TppShape;
    ppLabel17: TppLabel;
    C_ItensQUANTIDADE: TFloatField;
    ppNDBCampo10: TppDBText;
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure cmbModeloChange(Sender: TObject);
    procedure C_FichaCalcFields(DataSet: TDataSet);
    procedure ppHeaderBand3BeforeGenerate(Sender: TObject);
    procedure ppLabel204DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel206DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel211DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel180DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel181DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel183DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLabel184DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pplblUltVendaDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pplblMaiorVendaDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pplblMenorVendaDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText118DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText118DrawCommandCreate(Sender, aDrawCommand: TObject);
  private
    { Private declarations }
    IDs, SelectFavorecidos: string;
    sCamposDef,sCamposTit: string;
    procedure LerCamposDefinidosRpt;
    procedure LerCamposDefinidosRptN;
    procedure LerCamposDefinidos;
    function AchaNumNoArray(num: integer; a: array of integer):boolean;
  public
    { Public declarations }
  end;

var
  DlgFichaFavorecido: TDlgFichaFavorecido;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

function TDlgFichaFavorecido.AchaNumNoArray(num: integer; a: array of integer):boolean;
var j: integer;
begin
  result := False;
  for j:=0 to length(a)-1 do
    if num=a[j] then begin
      result := True;
      break;
    end;
end;

procedure TDlgFichaFavorecido.btGravarClick(Sender: TObject);
begin
  inherited;
  C_Ficha.Close;
  C_Ficha.CommandText := SelectFavorecidos + ' Where f.favorecido In ('+IDs+')';
  C_Ficha.Open;
  if cmbModelo.Text = 'N' then begin
    LerCamposDefinidosRptN;

    ppRGPessoaisN.visible := cbPessoaisN.Checked;
    ppRGEmpregadorN.visible := cbEmpregN.Checked;
    ppRGFinanceiroN.visible := cbFinancN.Checked;
    ppRGReferenciasN.visible := cbReferN.Checked;
    ppRGCamposCustomN.visible := cbCamposN.Checked;

    DMProjeto.ImprimirCabecalho( rbrgCabecalho );
    ppModeloN.PrinterSetup.Copies := StrToInt(edNumFichas.Text);
    ppModeloN.Print;
{    rbCampos.PrinterSetup.Copies := StrToInt(edNumFichas.Text);
    MostraCampos;
    rbCampos.Print;}
  end
  else if cmbModelo.Text = 'C' then begin
    ppRGPessoais.visible := cbPessoais.Checked;
    ppRGEmpregador.visible := cbEmpregador.Checked;
    ppRGFinanceiro.visible := cbFinanceiros.Checked;
    ppRGReferencias.visible := cbReferencias.Checked;

    DMProjeto.ImprimirCabecalho( ppCabec1 );
    ppModelo1.PrinterSetup.Copies := StrToInt(edNumFichas.Text);
    ppModelo1.Print;
  end
  else begin
    LerCamposDefinidosRpt;

    C_Itens.open;
    ppRGPPessoais.visible := cbpPessoais.Checked;
    ppRGPEmpreg.visible   := cbpEmpregador.Checked;
    ppRGPFinanc.visible   := cbpFinanceiros.Checked;
    ppRGPRefer.visible    := cbpReferencias.Checked;
    ppRGCustom.visible    := cbpCamposCustom.Checked;
    ppRGSaldos.visible    := cbpSaldos.Checked;
    ppRGParcelas.visible  := cbpParcelas.Checked;
    ppRGVendas.visible    := cbpVendas.Checked;
    ppRGItens.visible     := cbpItens.Checked;

    DMProjeto.ImprimirCabecalho( ppCabec2 );
    ppModelo2.PrinterSetup.Copies := StrToInt(edNumFichas.Text);
    ppModelo2.Print;
  end;
end;

procedure TDlgFichaFavorecido.FormCreate(Sender: TObject);
begin
  inherited;
  cmbModelo.text := 'P';
  SelectFavorecidos := Q_Ficha.SQL.Text;
  IDs := '-7'; // Ficha em Branco
  LerCamposDefinidos;
end;

procedure TDlgFichaFavorecido.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  // Ficha com Dados
  IDs := DMProjeto.GetParametrosForm(0);
  if DMProjeto.QtdParametrosForm > 1 then
    cmbModelo.text := DMProjeto.GetParametrosForm(1);
end;

procedure TDlgFichaFavorecido.cmbModeloChange(Sender: TObject);
begin
  inherited;
  if cmbModelo.Text = 'P' then begin
    pcModelos.Setpage(tsProfissional);
    pnCampos.Parent := tsProfissional;
  end
  else if cmbModelo.Text = 'C' then
    pcModelos.Setpage(tsCrediario)
  else begin
    pcModelos.Setpage(tsNormal);
    pnCampos.Parent := tsNormal;
  end;
end;

procedure TDlgFichaFavorecido.C_FichaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_FichaEndereco.value <> '' then
    C_FichaEndCompleto.value := C_FichaEndereco.value+' '+C_FichaBairro.value+' - '+C_FichaCidade.value+' - '+C_FichaUF.value+ ' - '+C_FichaCep.value;
  if C_FichaEndereco_Aval.value <> '' then
    C_FichaEndCompletoAval.value := C_FichaEndereco_Aval.value+' - '+C_FichaCidade_Aval.value+' - '+C_FichaUF_Aval.value+ ' - '+C_FichaCep_Aval.value;

  if C_FichaEnderecoEmpreg.value <> '' then
    C_FichaEndCompletoEmpreg.value := C_FichaEnderecoEmpreg.value+' - '+C_FichaCidadeEmpreg.value+' - '+C_FichaUFEmpreg.value+ ' - '+C_FichaCepEmpreg.value;
  if C_FichaEnderecoEmpreg2.value <> '' then
    C_FichaEndCompletoEmpreg2.value := C_FichaEnderecoEmpreg2.value+' - '+C_FichaCidadeEmpreg2.value+' - '+C_FichaUFEmpreg2.value+ ' - '+C_FichaCepEmpreg2.value;

  if C_FichaEnderecoEmpreg_Aval.value <> '' then
    C_FichaEndCompletoEmpreg_Aval.value := C_FichaEnderecoEmpreg_Aval.value+' - '+C_FichaCidadeEmpreg_Aval.value+' - '+C_FichaUFEmpreg_Aval.value+ ' - '+C_FichaCepEmpreg_Aval.value;
  if C_FichaEnderecoEmpreg_Aval2.value <> '' then
    C_FichaEndCompletoEmpreg_Aval2.value := C_FichaEnderecoEmpreg_Aval2.value+' - '+C_FichaCidadeEmpreg_Aval2.value+' - '+C_FichaUFEmpreg_Aval2.value+ ' - '+C_FichaCepEmpreg_Aval2.value;

  if C_FichaBancoEnderFinanc.value <> '' then
    C_FichaEndCompletoBanco.value := C_FichaBancoEnderFinanc.value+' - '+C_FichaBancoCidadeFinanc.value+' - '+C_FichaBancoUFFinanc.value+ ' - '+C_FichaBancoCepFinanc.value;
  if C_FichaBancoEnderFinanc2.value <> '' then
    C_FichaEndCompletoBanco2.value := C_FichaBancoEnderFinanc2.value+' - '+C_FichaBancoCidadeFinanc2.value+' - '+C_FichaBancoUFFinanc2.value+ ' - '+C_FichaBancoCepFinanc2.value;

  if C_FichaBancoEnderFinanc_Aval.value <> '' then
    C_FichaEndCompletoBanco_Aval.value := C_FichaBancoEnderFinanc_Aval.value+' - '+C_FichaBancoCidadeFinanc_Aval.value+' - '+C_FichaBancoUFFinanc_Aval.value+ ' - '+C_FichaBancoCepFinanc_Aval.value;
  if C_FichaBancoEnderFinanc_Aval2.value <> '' then
    C_FichaEndCompletoBanco_Aval2.value := C_FichaBancoEnderFinanc_Aval2.value+' - '+C_FichaBancoCidadeFinanc_Aval2.value+' - '+C_FichaBancoUFFinanc_Aval2.value+ ' - '+C_FichaBancoCepFinanc_Aval2.value;
end;

procedure TDlgFichaFavorecido.LerCamposDefinidos;
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  sCamposDef  := DMProjeto.Parametro('CliCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('CliCamposTitulos');
  cbCampo1.visible := false;
  cbCampo2.visible := false;
  cbCampo3.visible := false;
  cbCampo4.visible := false;
  cbCampo5.visible := false;
  cbCampo6.visible := false;
  cbCampo7.visible := false;
  cbCampo8.visible := false;
  cbCampo9.visible := false;
  cbCampo10.visible := false;
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    if sCampo = '1' then begin
      cbCampo1.visible := true;
      cbCampo1.caption := sTitulo;
    end
    else if sCampo = '2' then begin
      cbCampo2.visible := true;
      cbCampo2.caption := sTitulo;
    end
    else if sCampo = '3' then begin
      cbCampo3.visible := true;
      cbCampo3.caption := sTitulo;
    end
    else if sCampo = '4' then begin
      cbCampo4.visible := true;
      cbCampo4.caption := sTitulo;
    end
    else if sCampo = '5' then begin
      cbCampo5.visible := true;
      cbCampo5.caption := sTitulo;
    end
    else if sCampo = '6' then begin
      cbCampo6.visible := true;
      cbCampo6.caption := sTitulo;
    end
    else if sCampo = '7' then begin
      cbCampo7.visible := true;
      cbCampo7.caption := sTitulo;
    end
    else if sCampo = '8' then begin
      cbCampo8.visible := true;
      cbCampo8.caption := sTitulo;
    end
    else if sCampo = '9' then begin
      cbCampo9.visible := true;
      cbCampo9.caption := sTitulo;
    end
    else if sCampo = '10' then begin
      cbCampo10.visible := true;
      cbCampo10.caption := sTitulo;
    end;
  end;
end;

procedure TDlgFichaFavorecido.LerCamposDefinidosRpt;
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  sCamposDef  := DMProjeto.Parametro('CliCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('CliCamposTitulos');
  ppCampo1.visible := false;
  ppDBCampo1.visible := false;
  ppCampo2.visible := false;
  ppDBCampo2.visible := false;
  ppCampo3.visible := false;
  ppDBCampo3.visible := false;
  ppCampo4.visible := false;
  ppDBCampo4.visible := false;
  ppCampo5.visible := false;
  ppDBCampo5.visible := false;

{  ppDBCampo6.visible := false;
  ppCampo7.visible := false;
  ppDBCampo7.visible := false;
  ppCampo8.visible := false;
  ppDBCampo8.visible := false;
  ppCampo9.visible := false;
  ppDBCampo9.visible := false;
  ppCampo10.visible := false;
  ppDBCampo10.visible := false;}
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    if cbCampo1.checked and (sCampo = '1') then begin
      ppCampo1.visible := true;
      ppCampo1.caption := sTitulo;
      ppDBCampo1.visible := true;
    end
    else if cbCampo2.checked and (sCampo = '2') then begin
      ppCampo2.visible := true;
      ppCampo2.caption := sTitulo;
      ppDBCampo2.visible := true;
    end
    else if cbCampo3.checked and (sCampo = '3') then begin
      ppCampo3.visible := true;
      ppCampo3.caption := sTitulo;
      ppDBCampo3.visible := true;
    end
    else if cbCampo4.checked and (sCampo = '4') then begin
      ppCampo4.visible := true;
      ppCampo4.caption := sTitulo;
      ppDBCampo4.visible := true;
    end
    else if cbCampo5.checked and (sCampo = '5') then begin
      ppCampo5.visible := true;
      ppCampo5.caption := sTitulo;
      ppDBCampo5.visible := true;
    end
{    else if cbCampo6.checked and (sCampo = '6') then begin
      ppCampo6.visible := true;
      ppCampo6.caption := sTitulo;
      ppDBCampo6.visible := true;
    end
    else if cbCampo7.checked and (sCampo = '7') then begin
      ppCampo7.visible := true;
      ppCampo7.caption := sTitulo;
      ppDBCampo7.visible := true;
    end
    else if cbCampo8.checked and (sCampo = '8') then begin
      ppCampo8.visible := true;
      ppCampo8.caption := sTitulo;
      ppDBCampo8.visible := true;
    end
    else if cbCampo9.checked and (sCampo = '9') then begin
      ppCampo9.visible := true;
      ppCampo9.caption := sTitulo;
      ppDBCampo9.visible := true;
    end
    else if cbCampo10.checked and (sCampo = '10') then begin
      ppCampo10.visible := true;
      ppCampo10.caption := sTitulo;
      ppDBCampo10.visible := true;
    end;}
  end;
end;

procedure TDlgFichaFavorecido.LerCamposDefinidosRptN;
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  sCamposDef  := DMProjeto.Parametro('CliCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('CliCamposTitulos');
  ppNCampo1.visible := false;
  ppNDBCampo1.visible := false;
  ppNCampo2.visible := false;
  ppNDBCampo2.visible := false;
  ppNCampo3.visible := false;
  ppNDBCampo3.visible := false;
  ppNCampo4.visible := false;
  ppNDBCampo4.visible := false;
  ppNCampo5.visible := false;
  ppNDBCampo5.visible := false;
  ppNCampo6.visible := false;
  ppNDBCampo6.visible := false;
  ppNCampo7.visible := false;
  ppNDBCampo7.visible := false;
  ppNCampo8.visible := false;
  ppNDBCampo8.visible := false;
  ppNCampo9.visible := false;
  ppNDBCampo9.visible := false;
  ppNCampo10.visible := false;
  ppNDBCampo10.visible := false;
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    if cbCampo1.checked and (sCampo = '1') then begin
      ppNCampo1.visible := true;
      ppNCampo1.caption := sTitulo;
      ppNDBCampo1.visible := true;
    end
    else if cbCampo2.checked and (sCampo = '2') then begin
      ppNCampo2.visible := true;
      ppNCampo2.caption := sTitulo;
      ppNDBCampo2.visible := true;
    end
    else if cbCampo3.checked and (sCampo = '3') then begin
      ppNCampo3.visible := true;
      ppNCampo3.caption := sTitulo;
      ppNDBCampo3.visible := true;
    end
    else if cbCampo4.checked and (sCampo = '4') then begin
      ppNCampo4.visible := true;
      ppNCampo4.caption := sTitulo;
      ppNDBCampo4.visible := true;
    end
    else if cbCampo5.checked and (sCampo = '5') then begin
      ppNCampo5.visible := true;
      ppNCampo5.caption := sTitulo;
      ppNDBCampo5.visible := true;
    end
    else if cbCampo6.checked and (sCampo = '6') then begin
      ppNCampo6.visible := true;
      ppNCampo6.caption := sTitulo;
      ppNDBCampo6.visible := true;
    end
    else if cbCampo7.checked and (sCampo = '7') then begin
      ppNCampo7.visible := true;
      ppNCampo7.caption := sTitulo;
      ppNDBCampo7.visible := true;
    end
    else if cbCampo8.checked and (sCampo = '8') then begin
      ppNCampo8.visible := true;
      ppNCampo8.caption := sTitulo;
      ppNDBCampo8.visible := true;
    end
    else if cbCampo9.checked and (sCampo = '9') then begin
      ppNCampo9.visible := true;
      ppNCampo9.caption := sTitulo;
      ppNDBCampo9.visible := true;
    end
    else if cbCampo10.checked and (sCampo = '10') then begin
      ppNCampo10.visible := true;
      ppNCampo10.caption := sTitulo;
      ppNDBCampo10.visible := true;
    end;
  end;
end;

procedure TDlgFichaFavorecido.ppHeaderBand3BeforeGenerate(Sender: TObject);
{##}function DiferencaDeDataEmMeseseAnos(DataFinal, DataInicial: TDateTime): string;
{##}var meses, anos: integer;
{##}begin
{##}  if (DataInicial=0) or (DataFinal=0) then result := ''
{##}  else begin
{##}    meses := trunc(DataFinal-DataInicial);
{##}    if meses >= 30 then begin
{##}      meses := trunc(meses/30);
{##}      if meses>=12 then begin
{##}        anos := meses div 12;
{##}        meses := meses mod 12;
{##}        result := Format('(%d ano(s) e %d mes(es))', [anos, meses]);
{##}      end else result := Format('(%d mes(es))', [meses]);
{##}    end else begin
{##}      result := 'menos de 1 mês';
{##}    end;
{##}  end;
{##}end;
var nFav,nCheqPend,nCodUltVenda,nCodMaiorVenda,nCodMenorVenda,nQuantVendas,
    nParcelas,nQuantParc,nQuantParcEmDia,
    nQuantParcEmAtraso,nCheqDevQuant,nQuantParcAtrasadas,
    nParcVencQuant,nQuantParcAVencer,nQuantParcVencidas,
    nMedAtra,nCheqDevAc,nParcAtraQuant,nDiasAtra,i,
    nCodMenorParc, nCodMaiorParc, nVendaMaior, nVendaMenor :integer;

    fCredito,fCheqPend,fCredAberto,fSaldoComp,fValUltVenda,fValMaiorVenda,
    fValMenorVenda,fValTotVendas,fValMedVendas,fValMedParc,fCheqDevAcVal,fCheqDevVal,
    fParcVencVal,fParcAtraVal,fLimiteCred,
    fValorParc,fValorParcEmAtraso,fValorParcAtrasadas,fValorParcAVencer,fValorParcVencidas,fValorParcEmDia,
    fParcEmDiaQuantPC,fParcEmAtrasoQuantPC,fParcAtrasadasQuantPC,fParcAVencerQuantPC,fParcVencidasQuantPC,
    fParcEmDiaValPC,fParcEmAtrasoValPC,fParcAtrasadasValPC,fParcAVencerValPC, fParcVencidasValPC,
    fValMenorParc, fValMaiorParc                                :Currency;

    dDataCad,dDataUltVenda,dDataMaiorVenda,dDataMenorVenda      :TDateTime;

    sNome                                              :string;
begin
  inherited;
    ////////////////////

    // INFORMAÇÕES DE SALDOS
    nFav := C_FichaFavorecido.value;

    DMProjeto.GetInformacoesCredito(nFav,dDataCad,fLimiteCred,fCredito);
    ppTempoCad.caption := 'Tempo: ' +DiferencaDeDataEmMeseseAnos(DMProjeto.dDataSistema, dDataCad);

    ppIS_ClienteDesde.caption := DateToStr(dDataCad);
    ppIS_LimiteCred.caption   := FormatCurr('###,###,##0.00',fLimiteCred);
    ppIS_Credito.caption      := FormatCurr('###,###,##0.00',fCredito);

    DMProjeto.GetInformacoesCheques(nFav,nCheqPend,fCheqPend);

    ppIS_ChequesPend.caption  := FormatCurr('###,###,##0.00',fCheqPend);

    DMProjeto.GetInformacoesChequesDev(nFav,nCheqDevQuant,fCheqDevVal);

    ppIS_ChequesDev.caption  := FormatCurr('###,###,##0.00',fCheqDevVal);
    if nCheqDevQuant > 0 then
      ppIS_ChequesDevQtde.caption  := 'Qtd.:'+FormatCurr('###,###,##0',nCheqDevQuant)
    else
      ppIS_ChequesDevQtde.caption  := '';
//    DMProjeto.GetInformacoesChequesAcer(nFav,nCheqDevAc,fCheqDevAcVal);

    DMProjeto.GetInformacoesCreditoAberto(nFav,fCredAberto);
    if fCredAberto < 0 then fCredAberto := 0;
    fSaldoComp := fLimiteCred-fCredAberto;

    ppIS_SaldoAberto.caption   := FormatCurr('###,###,##0.00',fCredAberto);
    ppIS_SaldoCompra.caption   := FormatCurr('###,###,##0.00',fSaldoComp);

    DMProjeto.GetInformacoesUltVenda(nFav,nCodUltVenda,dDataUltVenda,fValUltVenda);
    pplblUltVenda.tag := nCodUltVenda;
    ppDataUltVenda.caption := DateToStr(dDataUltVenda);
    ppValorUltVenda.caption := FormatCurr('###,###,##0.00',fValUltVenda);

    DMProjeto.GetInformacoesMaiorVenda(nFav,nCodMaiorVenda,dDataMaiorVenda,fValMaiorVenda);
    pplblMaiorVenda.tag := nCodMaiorVenda;
    ppDataMaiorVenda.caption := DateToStr(dDataMaiorVenda);
    ppValorMaiorVenda.caption := FormatCurr('###,###,##0.00',fValMaiorVenda);

    DMProjeto.GetInformacoesMenorVenda(nFav,nCodMenorVenda,dDataMenorVenda,fValMenorVenda);
    pplblMenorVenda.tag := nCodMenorVenda;
    ppDataMenorVenda.caption := DateToStr(dDataMenorVenda);
    ppValorMenorVenda.caption := FormatCurr('###,###,##0.00',fValMenorVenda);

    DMProjeto.GetInformacoesTotalVendas(nFav,nQuantVendas,fValTotVendas,fValMedVendas);
    ppQtdeVendas.caption := FormatCurr('###,###,##0',nQuantVendas);
    ppTotalVendas.caption := FormatCurr('###,###,##0.00',fValTotVendas);
    ppValorMedioVendas.caption := FormatCurr('###,###,##0.00',fValMedVendas);

    DMProjeto.GetInformacoesMediaParcelas(nFav,nParcelas,fValMedParc);
    ppValorMedioParcela.caption := FormatCurr('###,###,##0.00',fValMedParc);

    DMProjeto.GetInformacoesMaiorParcelas(nFav,nVendaMaior,nCodMaiorParc,fValMaiorParc);
    ppValorMaiorParcela.caption := FormatCurr('###,###,##0.00',fValMaiorParc);

    DMProjeto.GetInformacoesMenorParcelas(nFav,nVendaMenor,nCodMenorParc,fValMenorParc);
    ppValorMenorParcela.caption := FormatCurr('###,###,##0.00',fValMenorParc);

    DMProjeto.GetInformacoesParcelasDiasAtraso(nFav,nMedAtra);
    ppValorMedioAtrasoParcela.caption := FormatCurr('###,###,##0',nMedAtra);

    DMProjeto.GetInformacoesTotalParcelas(nFav,0,nQuantParc,fValorParc);
    ppIP_TotalQtdeParc.caption := FormatCurr('###,###,##0',nQuantParc);
    ppIP_TotalValorParc.caption := FormatCurr('###,###,##0.00',fValorParc);
    ppIP_TotalPercQtdeParc.caption := FormatCurr('###,###,##0.0',100);
    ppIP_TotalPercValorParc.caption := FormatCurr('###,###,##0.0',100);

    DMProjeto.GetInformacoesTotalParcelasEmDia(nFav,0,nQuantParcEmDia,fValorParcEmDia);
    ppIP_EmDiaQtdeParc.caption := FormatCurr('###,###,##0',nQuantParcEmDia);
    ppIP_EmDiaValorParc.caption := FormatCurr('###,###,##0.00',fValorParcEmDia);

    if nQuantParc > 0 then
      fParcEmDiaQuantPC := (100*nQuantParcEmDia)/nQuantParc
    else begin
      fParcEmDiaQuantPC := 0;
      nQuantParc := 1;
    end;

    if fValorParc > 0 then
      fParcEmDiaValPC := (100*fValorParcEmDia)/fValorParc
    else begin
      fParcEmDiaValPC := 0;
      fValorParc := 1;
    end;
    ppIP_EmDiaPercQtdeParc.caption := FormatCurr('###,###,##0.0',fParcEmDiaQuantPC);
    ppIP_EmDiaPercValorParc.caption := FormatCurr('###,###,##0.0',fParcEmDiaValPC);

    DMProjeto.GetInformacoesTotalParcelasEmAtraso(nFav,0,nQuantParcEmAtraso,fValorParcEmAtraso);
    ppIP_EmAtrasoQtdeParc.caption := FormatCurr('###,###,##0',nQuantParcEmAtraso);
    ppIP_EmAtrasoValorParc.caption := FormatCurr('###,###,##0.00',fValorParcEmAtraso);

    fParcEmAtrasoQuantPC := (100*nQuantParcEmAtraso)/nQuantParc;
    fParcEmAtrasoValPC := (100*fValorParcEmAtraso)/fValorParc;

    ppIP_EmAtrasoPercQtdeParc.caption := FormatCurr('###,###,##0.0',fParcEmAtrasoQuantPC);
    ppIP_EmAtrasoPercValorParc.caption := FormatCurr('###,###,##0.0',fParcEmAtrasoValPC);

    DMProjeto.GetInformacoesTotalParcelasAtrasadas(nFav,0,nQuantParcAtrasadas,fValorParcAtrasadas);
    ppIP_AtrasadosQtdeParc.caption := FormatCurr('###,###,##0',nQuantParcAtrasadas);
    ppIP_AtrasadosValorParc.caption := FormatCurr('###,###,##0.00',fValorParcAtrasadas);

    fParcAtrasadasQuantPC := (100*nQuantParcAtrasadas)/nQuantParc;
    fParcAtrasadasValPC := (100*fValorParcAtrasadas)/fValorParc;

    ppIP_AtrasadosPercQtdeParc.caption := FormatCurr('###,###,##0.0',fParcAtrasadasQuantPC);
    ppIP_AtrasadosPercValorParc.caption := FormatCurr('###,###,##0.0',fParcAtrasadasValPC);

    DMProjeto.GetInformacoesTotalParcelasVencidas(nFav,0,nQuantParcVencidas,fValorParcVencidas);
    ppIP_VencidasQtdeParc.caption := FormatCurr('###,###,##0',nQuantParcVencidas);
    ppIP_VencidasValorParc.caption := FormatCurr('###,###,##0.00',fValorParcVencidas);

    fParcVencidasQuantPC := (100*nQuantParcVencidas)/nQuantParc;
    fParcVencidasValPC := (100*fValorParcVencidas)/fValorParc;

    ppIP_VencidasPercQtdeParc.caption := FormatCurr('###,###,##0.0',fParcVencidasQuantPC);
    ppIP_VencidasPercValorParc.caption := FormatCurr('###,###,##0.0',fParcVencidasValPC);

    DMProjeto.GetInformacoesTotalParcelasAVencer(nFav,0,nQuantParcAVencer,fValorParcAVencer);

    ppIP_AVencerQtdeParc.caption := FormatCurr('###,###,##0',nQuantParcAVencer);
    ppIP_AVencerValorParc.caption := FormatCurr('###,###,##0.00',fValorParcAVencer);

    fParcAVencerQuantPC := (100*nQuantParcAVencer)/nQuantParc;
    fParcAVencerValPC := (100*fValorParcAVencer)/fValorParc;

    ppIP_AVencerPercQtdeParc.caption := FormatCurr('###,###,##0.0',fParcAVencerQuantPC);
    ppIP_AVencerPercValorParc.caption := FormatCurr('###,###,##0.0',fParcAVencerValPC);
    ////////////////////
end;

procedure TDlgFichaFavorecido.ppLabel204DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [EncodeDate(1990,1,1),dDataSistema,C_FichaFavorecido.value] );
    CriarForm('RptInvoicesEmAtraso', self, True);
  end;
end;

procedure TDlgFichaFavorecido.ppLabel206DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [C_FichaFavorecido.value] );
	  CriarForm('RptInvoicesVencendoHoje', self, True);
  end;
end;

procedure TDlgFichaFavorecido.ppLabel211DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [null,C_FichaFavorecido.value] );
	  CriarForm('RptInvoicesAReceber', self, True);
  end;
end;

procedure TDlgFichaFavorecido.ppLabel180DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'SALDOEMABERTO',C_FichaFavorecido.value);
end;

procedure TDlgFichaFavorecido.ppLabel181DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'CHEQUESPENDENTES',C_FichaFavorecido.value);
end;

procedure TDlgFichaFavorecido.ppLabel183DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'CREDITO',C_FichaFavorecido.value);
end;

procedure TDlgFichaFavorecido.ppLabel184DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [C_FichaFavorecido.value,9] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgFichaFavorecido.pplblUltVendaDrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([TppLabel(Sender).Tag]);
  DMProjeto.CriarForm('FrmInvoices',Self,True);
end;

procedure TDlgFichaFavorecido.pplblMaiorVendaDrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([TppLabel(Sender).Tag]);
  DMProjeto.CriarForm('FrmInvoices',Self,True);
end;

procedure TDlgFichaFavorecido.pplblMenorVendaDrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([TppLabel(Sender).Tag]);
  DMProjeto.CriarForm('FrmInvoices',Self,True);
end;

procedure TDlgFichaFavorecido.ppDBText118DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([TppDrawCommand(aDrawCommand).tag]);
  DMProjeto.CriarForm('FrmItens',Self,True);
end;


procedure TDlgFichaFavorecido.ppDBText118DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).tag := C_ItensItem.value;
end;

end.
