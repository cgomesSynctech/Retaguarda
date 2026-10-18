unit Dlg_UltimasVendasProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Menus, TS_PopupMenu, StdCtrls, Buttons, TS_BitBtn, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient,
  TS_LastDataObject, TS_Label, DBCtrls, TS_DBText, ExtCtrls,
  TS_Bevel, TS_SpeedButton, FormsComponent, TS_Image,
  dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, teCtrls, TS_EffectsPanel, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, TS_EditItem, Placemnt, BTOdeum;

type
  TDlgUltimasVendasProd = class(TFrmModeloCadastros)
    Q_Vendas: TIBQuery;
    C_Vendas: TClientDataSet;
    Q_VendasProvider: TDataSetProvider;
    Q_VendasDS: TDataSource;
    C_VendasDATA: TDateField;
    C_VendasNOME: TStringField;
    C_VendasTAXAVEL: TStringField;
    C_VendasNUMERO: TStringField;
    TS_Label1: TTS_Label;
    dbtQtde: TTS_DBText;
    dbtValor: TTS_DBText;
    C_VendasSubTotal: TIBBCDField;
    dbgConsulta: TTS_QDBGrid;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaColumn8: TdxDBGridColumn;
    C_VendasTIPOFAVORECIDO: TIntegerField;
    C_VendasFAVORECIDO: TIntegerField;
    dbgConsultaTipoFavorecido: TdxDBGridColumn;
    dbgConsultaFavorecido: TdxDBGridColumn;
    dbgConsultaSaida: TdxDBGridColumn;
    C_VendasSAIDA: TIntegerField;
    TS_Panel1: TTS_Panel;
    dfItem: TTS_EditItem;
    Label8: TTS_Label;
    C_VendasEMPRESA: TIntegerField;
    C_VendasPDV: TIntegerField;
    C_VendasOBS: TStringField;
    C_VendasTAX: TIntegerField;
    C_VendasPERCENTUALTAX: TFloatField;
    C_VendasDESCONTO: TFloatField;
    C_VendasPLANOPAGAMENTO: TIntegerField;
    C_VendasVENDEDOR: TIntegerField;
    C_VendasFRETE: TFloatField;
    C_VendasTOTAL: TFloatField;
    C_VendasTIPOENTREGA: TIntegerField;
    C_VendasDATAENTREGA: TDateField;
    C_VendasIMPORTACAO: TIntegerField;
    C_VendasSITUACAO: TStringField;
    C_VendasTIPOMOVIMENTO: TIntegerField;
    C_VendasPEDIDO_CLIENTE: TStringField;
    C_VendasOUTRASDESPESAS: TFloatField;
    C_VendasJUROS: TFloatField;
    C_VendasPOSSUITAX: TStringField;
    C_VendasBAIXAESTOQUE: TStringField;
    C_VendasCALCCOMISSAO: TStringField;
    C_VendasPOSSUIENTREGA: TStringField;
    C_VendasCAMPO01: TStringField;
    C_VendasCAMPO02: TStringField;
    C_VendasCAMPO03: TStringField;
    C_VendasCAMPO04: TStringField;
    C_VendasIMPRESSO: TStringField;
    C_VendasIMPOSTO: TFloatField;
    C_VendasIMPOSTO_INCLUSO: TFloatField;
    C_VendasPCOMISSAO: TFloatField;
    C_VendasCAIXA: TIntegerField;
    C_VendasLOCALENTREGA: TIntegerField;
    C_VendasTABELAPADRAO: TIntegerField;
    C_VendasTIPOPADRAO: TIntegerField;
    C_VendasDATACANCELAMENTO: TDateField;
    C_VendasFUNCCANCELAMENTO: TIntegerField;
    C_VendasMOTIVOCANCELAMENTO: TStringField;
    C_VendasPJUROS: TFloatField;
    C_VendasVALORCOMISSAO: TFloatField;
    C_VendasTOTALITENS: TFloatField;
    C_VendasVALIDADE: TDateField;
    C_VendasCONDICOESPGTO: TStringField;
    C_VendasDATAENTREGUE: TDateField;
    C_VendasSTATUS: TStringField;
    C_VendasTOTALITENS123: TFloatField;
    C_VendasBASEIMPOSTO: TFloatField;
    C_VendasBASEINCLUSO: TFloatField;
    C_VendasDESCONTOITENS: TFloatField;
    C_VendasTIPOIMPRESSAO: TStringField;
    C_VendasTOTALPGTOS: TFloatField;
    C_VendasSTATUSANTERIOR: TStringField;
    C_VendasREDUCOESBASE: TFloatField;
    C_VendasACRESCIMOSBASE: TFloatField;
    C_VendasDTMODIFICACAO: TDateTimeField;
    C_VendasVOLUMES: TFloatField;
    C_VendasTERMOCONTRATO: TStringField;
    C_VendasALMOXPADRAO: TIntegerField;
    C_VendasCFOPNOTA: TStringField;
    C_VendasSERIENOTA: TStringField;
    C_VendasUFDESTINO: TStringField;
    C_VendasBASECALCICMS: TFloatField;
    C_VendasVALORICMS: TFloatField;
    C_VendasVALORISS: TFloatField;
    C_VendasVALORIPI: TFloatField;
    C_VendasBASECALCSUBST: TFloatField;
    C_VendasVALORICMSSUBST: TFloatField;
    C_VendasVALORSEGURO: TFloatField;
    C_VendasTIPOFRETE: TStringField;
    C_VendasTRANSPORTADORA: TIntegerField;
    C_VendasPESOBRUTO: TFloatField;
    C_VendasPESOLIQUIDO: TFloatField;
    C_VendasALIQICMSVENDA: TFloatField;
    C_VendasVALORISENTAS: TFloatField;
    C_VendasTOTALSERVICOS: TFloatField;
    C_VendasDESCESPECIE: TStringField;
    C_VendasDESCMARCA: TStringField;
    C_VendasDESCNUMERO: TStringField;
    C_VendasINDICADOPELOFAV: TIntegerField;
    C_VendasPOSSUIICMS: TStringField;
    C_VendasPOSSUIIPI: TStringField;
    C_VendasPOSSUIISS: TStringField;
    C_VendasCONTABILIZAICMS: TStringField;
    C_VendasMODELO: TStringField;
    C_VendasVALOROUTRASICMS: TFloatField;
    C_VendasVALORISENTASIPI: TFloatField;
    C_VendasVALOROUTRASIPI: TFloatField;
    C_VendasFONTE: TStringField;
    C_VendasPLACAVEIC: TStringField;
    C_VendasATRATAR: TStringField;
    C_VendasINTRODUCAO: TStringField;
    C_VendasPRAZOENTREGA: TStringField;
    C_VendasGARANTIA: TStringField;
    C_VendasSEESTOQUE: TStringField;
    C_VendasPROCESSO: TStringField;
    C_VendasCARTACONVITE: TStringField;
    C_VendasTOMADAPRECOS: TStringField;
    C_VendasDATAABERTURA: TStringField;
    C_VendasEXPLICACOES: TStringField;
    C_VendasLICITACAOICMS: TFloatField;
    C_VendasSUBSTTRIB: TStringField;
    C_VendasPJUROSNEGOCIADO: TFloatField;
    C_VendasCONDICOESPAGTO: TStringField;
    C_VendasTOTALPRODUTOS: TFloatField;
    C_VendasVALORIPIITENS: TFloatField;
    C_VendasBASECALCICMSITENS: TFloatField;
    C_VendasVALORICMSITENS: TFloatField;
    C_VendasBASECALCSUBSTITENS: TFloatField;
    C_VendasCOBRANCA: TIntegerField;
    C_VendasCARTEIRA: TIntegerField;
    C_VendasMEDICO: TIntegerField;
    C_VendasNF_CUPOM: TStringField;
    C_VendasDEVOLUCAO: TFloatField;
    C_VendasBAIXAESTOQUEFISCAL: TStringField;
    C_VendasHORA: TTimeField;
    C_VendasMENSAGEMITEM: TStringField;
    C_VendasNUMEROSERIEECF: TStringField;
    C_VendasNUMEROECF: TStringField;
    C_VendasCCF: TStringField;
    C_VendasCRZ: TStringField;
    C_VendasDETALHEIMPORTACAO: TIntegerField;
    C_VendasMD5: TStringField;
    C_VendasORIGEMREPLIC: TStringField;
    C_VendasEMPRESA1: TIntegerField;
    C_VendasSAIDA1: TIntegerField;
    C_VendasSAIDAITEM: TIntegerField;
    C_VendasPDV1: TIntegerField;
    C_VendasSEQUENCIA: TIntegerField;
    C_VendasITEM: TIntegerField;
    C_VendasDESCRICAO: TStringField;
    C_VendasQUANTIDADE: TFloatField;
    C_VendasPRECO: TFloatField;
    C_VendasIMPORTACAO1: TIntegerField;
    C_VendasCONTAVENDA: TIntegerField;
    C_VendasTABELAPRECO: TIntegerField;
    C_VendasPRECOTABELA: TFloatField;
    C_VendasUSOTIPOITEM: TStringField;
    C_VendasSUBTOTALITEM: TFloatField;
    C_VendasORDEM: TIntegerField;
    C_VendasCUSTOMEDIO: TFloatField;
    C_VendasCUSTOCONTABIL: TFloatField;
    C_VendasRATEIODESCONTO: TFloatField;
    C_VendasHASCHILDREN: TStringField;
    C_VendasPRODUCAO: TIntegerField;
    C_VendasFUNCPRODUCAO: TIntegerField;
    C_VendasCOLUNA1: TStringField;
    C_VendasCOLUNA2: TStringField;
    C_VendasCOLUNA3: TStringField;
    C_VendasCOLUNA4: TStringField;
    C_VendasMAXDESCONTO: TFloatField;
    C_VendasDESPESA: TIntegerField;
    C_VendasENTRADAITEM: TIntegerField;
    C_VendasCONTRATOREF: TIntegerField;
    C_VendasQTDFATURADA: TFloatField;
    C_VendasMESCLADO: TStringField;
    C_VendasSTATUS1: TStringField;
    C_VendasQTDMONTAGEM: TFloatField;
    C_VendasNUMEROLOTE: TStringField;
    C_VendasUNIDADE: TStringField;
    C_VendasFATOR: TFloatField;
    C_VendasN_USOTIPOITEM: TFloatField;
    C_VendasDESCONTO1: TFloatField;
    C_VendasDESCRICAOCOMPLEMENTAR: TStringField;
    C_VendasPROMOCAO: TStringField;
    C_VendasPRECOSEMPROMOCAO: TFloatField;
    C_VendasBAIXAESTOQUE1: TStringField;
    C_VendasALMOXARIFADO: TIntegerField;
    C_VendasORDEMMONTAGEM: TStringField;
    C_VendasBASECALCICMSPROD: TFloatField;
    C_VendasIPI: TFloatField;
    C_VendasALIQICMS: TFloatField;
    C_VendasCST: TStringField;
    C_VendasREDUCAOCST: TFloatField;
    C_VendasSITUACAOECF: TStringField;
    C_VendasCFOPNOTA1: TStringField;
    C_VendasBASECALCSUBSTPROD: TFloatField;
    C_VendasVALORIPIPROD: TFloatField;
    C_VendasTVA: TFloatField;
    C_VendasNUMEROITEM: TStringField;
    C_VendasREGISTRO: TStringField;
    C_VendasVALORICMSPROD: TFloatField;
    C_VendasVALORISENTASPROD: TFloatField;
    C_VendasVALORICMSSUBSTPROD: TFloatField;
    C_VendasPDESCONTO: TFloatField;
    C_VendasQTDDEVOLVIDO: TFloatField;
    C_VendasQTDACERTADO: TFloatField;
    C_VendasDATACONTATO: TDateField;
    C_VendasCFOPCST: TStringField;
    C_VendasIDCFOPCST: TStringField;
    C_VendasBAIXAESTOQUEFISCAL1: TStringField;
    C_VendasIDTRIBFEDERAL: TIntegerField;
    C_VendasQUANTIDADEVOLUME: TFloatField;
    C_VendasCSTPISCOFINS: TStringField;
    C_VendasALIQPIS: TFloatField;
    C_VendasALIQCOFINS: TFloatField;
    C_VendasCSTIPI: TStringField;
    C_VendasALIQIPI: TFloatField;
    C_VendasVALORPISPROD: TFloatField;
    C_VendasVALORCOFINSPROD: TFloatField;
    C_VendasULTIMOPRECOCOMPRA: TFloatField;
    C_VendasV_BCII: TFloatField;
    C_VendasV_DESPADUII: TFloatField;
    C_VendasV_II: TFloatField;
    C_VendasV_IOFII: TFloatField;
    C_VendasPCOMISSAO1: TFloatField;
    C_VendasSITUACAO1: TStringField;
    C_VendasMD51: TStringField;
    C_VendasACRESCIMO: TFloatField;
    C_VendasRATEIODESPESAS: TFloatField;
    C_VendasRATEIOFRETE: TFloatField;
    C_VendasRATEIOSEGURO: TFloatField;
    C_VendasORIGEMREPLIC1: TStringField;
    C_VendasPRECOCUSTOLICITACAO: TFloatField;
    C_VendasFAVORECIDO1: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure C_VendasCalcFields(DataSet: TDataSet);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    nProduto: integer;
    sDescricao: string;
    procedure MostraConsulta;
  public
    Constructor Create(AOwner: TComponent; xProduto: integer;xDescricao: string);
  end;

var
  DlgUltimasVendasProd: TDlgUltimasVendasProd;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgUltimasVendasProd.Create;
begin
  nProduto := xProduto;
  sDescricao := xDescricao;
  inherited Create(AOwner);
end;

procedure TDlgUltimasVendasProd.MostraConsulta;
begin
  C_Vendas.close;
  C_Vendas.FetchParams;
  C_Vendas.params[0].asinteger := nProduto;
  C_Vendas.open;
end;


procedure TDlgUltimasVendasProd.FormCreate(Sender: TObject);
begin
  inherited;
  //caption := caption + ' '+sDescricao;
  dfItem.ID := nProduto;
  ShowModal;
end;

procedure TDlgUltimasVendasProd.C_VendasCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_VendasSubTotal.value := C_VendasQuantidade.value * C_VendasPreco.value;
end;

procedure TDlgUltimasVendasProd.dbgConsultaDblClick(Sender: TObject);
var nID:integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nID := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Favorecido',0);
      DMProjeto.SetParametrosForm([nID]);
      DMProjeto.CriarForm(DMProjeto.FormFav(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'tipofavorecido',0)), Self, true);
  	end;
  end
  else begin
    with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
      SetParametrosForm([nId]);
      CriarForm('FrmInvoices',self,true);
    end;
  end;
end;

procedure TDlgUltimasVendasProd.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  nProduto := dfItem.ID;
  MostraConsulta;
end;

procedure TDlgUltimasVendasProd.btGravarClick(Sender: TObject);
begin
  inherited;
  dbgConsultaDblClick(dbgConsulta);
end;

end.
