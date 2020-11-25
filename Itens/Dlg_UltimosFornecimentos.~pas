unit Dlg_UltimosFornecimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DLG_MODAL, DlgMsg, Menus, TS_PopupMenu, StdCtrls, Buttons, TS_BitBtn, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient,
  TS_LastDataObject, DBCtrls, TS_DBText, TS_Label, ExtCtrls,
  TS_Bevel, TS_SpeedButton, FormsComponent, TS_Image,
  dxfLabel, TS_MaxPanel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  dxCntner, TS_QDBGrid, teCtrls, TS_EffectsPanel, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, TS_EditItem, BTOdeum, Placemnt;

type
  TDlgUltimosFornecimentos = class(TFrmModeloCadastros)
    Q_Fornec: TIBQuery;
    C_Fornec: TClientDataSet;
    Q_FornecProvider: TDataSetProvider;
    Q_FornecDS: TDataSource;
    C_FornecDATA: TDateField;
    C_FornecNOME: TStringField;
    C_FornecTAXAVEL: TStringField;
    C_FornecNUMERO: TStringField;
    TS_Label1: TTS_Label;
    dbtQtde: TTS_DBText;
    dbtValor: TTS_DBText;
    dbgFornec: TTS_QDBGrid;
    dbgFornecDATA: TdxDBGridDateColumn;
    dbgFornecPRECO: TdxDBGridMaskColumn;
    dbgFornecNOME: TdxDBGridMaskColumn;
    dbgFornecNUMERO: TdxDBGridMaskColumn;
    dbgFornecQUANTIDADE: TdxDBGridMaskColumn;
    dbgFornecSubTotal: TdxDBGridColumn;
    dbgFornecEntrada: TdxDBGridColumn;
    dbgFornecFavorecido: TdxDBGridColumn;
    C_FornecENTRADA: TIntegerField;
    C_FornecFAVORECIDO: TIntegerField;
    TS_Panel1: TTS_Panel;
    Label8: TTS_Label;
    dfItem: TTS_EditItem;
    C_FornecUNIDADE: TStringField;
    dbgFornecColumn10: TdxDBGridColumn;
    dbgFornecDesconto: TdxDBGridColumn;
    C_FornecicDesconto: TCurrencyField;
    dbgFornecicDesconto: TdxDBGridColumn;
    C_FornecDESCRICAO: TStringField;
    dbgFornecDESCRICAO: TdxDBGridColumn;
    C_FornecTIPOMOVIMENTO: TStringField;
    C_FornecEMPRESA: TIntegerField;
    C_FornecPDV: TIntegerField;
    C_FornecOBS: TStringField;
    C_FornecTAX: TIntegerField;
    C_FornecPERCENTUALTAX: TBCDField;
    C_FornecDESCONTO: TBCDField;
    C_FornecPLANOPAGAMENTO: TIntegerField;
    C_FornecFRETE: TBCDField;
    C_FornecTOTAL: TFloatField;
    C_FornecTIPOENTREGA: TIntegerField;
    C_FornecDATAENTREGA: TDateField;
    C_FornecIMPORTACAO: TIntegerField;
    C_FornecSITUACAO: TStringField;
    C_FornecPREVISAOENTREGA: TDateField;
    C_FornecTIPOMOVIMENTO1: TIntegerField;
    C_FornecTIPOPADRAO: TIntegerField;
    C_FornecDATACANCELAMENTO: TDateField;
    C_FornecFUNCCANCELAMENTO: TIntegerField;
    C_FornecMOTIVOCANCELAMENTO: TStringField;
    C_FornecBAIXAESTOQUE: TStringField;
    C_FornecSTATUS: TStringField;
    C_FornecIMPOSTO: TFloatField;
    C_FornecTOTALITENS: TFloatField;
    C_FornecOUTRASDESPESAS: TFloatField;
    C_FornecJUROS: TFloatField;
    C_FornecCAMPO01: TStringField;
    C_FornecCAMPO02: TStringField;
    C_FornecCAMPO03: TStringField;
    C_FornecCAMPO04: TStringField;
    C_FornecPJUROS: TFloatField;
    C_FornecPOSSUITAX: TStringField;
    C_FornecCALCCOMISSAO: TStringField;
    C_FornecPOSSUIENTREGA: TStringField;
    C_FornecTOTALITENS123: TFloatField;
    C_FornecDESCONTOITENS: TFloatField;
    C_FornecLOCALENTREGA: TIntegerField;
    C_FornecLOCALCLIENTE: TIntegerField;
    C_FornecINCLUIDESCONTO: TStringField;
    C_FornecATUALIZACUSTO: TStringField;
    C_FornecATUALIZAPRECO: TStringField;
    C_FornecATUALIZAPRECOMANUAL: TStringField;
    C_FornecSTATUSANTERIOR: TStringField;
    C_FornecUSUARIO: TStringField;
    C_FornecTOTALPGTOS: TFloatField;
    C_FornecBASEIMPOSTO: TFloatField;
    C_FornecBASEINCLUSO: TFloatField;
    C_FornecIMPOSTO_INCLUSO: TFloatField;
    C_FornecREDUCOESBASE: TFloatField;
    C_FornecACRESCIMOSBASE: TFloatField;
    C_FornecVOLUMES: TFloatField;
    C_FornecALMOXPADRAO: TIntegerField;
    C_FornecUFORIGEM: TStringField;
    C_FornecCFOPNOTA: TStringField;
    C_FornecCFOPENTRADA: TStringField;
    C_FornecSERIENOTA: TStringField;
    C_FornecVALORSEGURO: TFloatField;
    C_FornecBASECALCICMS: TFloatField;
    C_FornecVALORICMS: TFloatField;
    C_FornecBASECALCSUBST: TFloatField;
    C_FornecVALORICMSSUBST: TFloatField;
    C_FornecVALORIPI: TFloatField;
    C_FornecPESOBRUTO: TFloatField;
    C_FornecPESOLIQUIDO: TFloatField;
    C_FornecALIQICMSCOMPRA: TBCDField;
    C_FornecFRETEINCLUSO: TStringField;
    C_FornecVALORISENTAS: TFloatField;
    C_FornecCONSIDERARDESCONTO: TStringField;
    C_FornecMODELO: TStringField;
    C_FornecVALOROUTRASICMS: TFloatField;
    C_FornecVALORISENTASIPI: TFloatField;
    C_FornecVALOROUTRASIPI: TFloatField;
    C_FornecPOSSUIICMS: TStringField;
    C_FornecCONTABILIZAICMS: TStringField;
    C_FornecCIF_FOB: TStringField;
    C_FornecPOSSUIIPI: TStringField;
    C_FornecDATANOTA: TDateField;
    C_FornecIMPRESSO: TStringField;
    C_FornecNOTAORIGEM: TIntegerField;
    C_FornecTRANSPORTADORA: TIntegerField;
    C_FornecPLACAVEIC: TStringField;
    C_FornecVENDEDOR: TIntegerField;
    C_FornecDESCESPECIE: TStringField;
    C_FornecDESCMARCA: TStringField;
    C_FornecDESCNUMERO: TStringField;
    C_FornecFRETEEXTERNO: TBCDField;
    C_FornecINDEXADOR: TIntegerField;
    C_FornecFONTE: TStringField;
    C_FornecBAIXAESTOQUEFISCAL: TStringField;
    C_FornecESPECIE: TStringField;
    C_FornecHORA: TTimeField;
    C_FornecDETALHEIMPORTACAO: TIntegerField;
    C_FornecCHAVENFE: TStringField;
    C_FornecRATEAROUTRASDESPESAS: TStringField;
    C_FornecORIGEMREPLIC: TStringField;
    C_FornecEMPRESA1: TIntegerField;
    C_FornecENTRADA1: TIntegerField;
    C_FornecENTRADAITEM: TIntegerField;
    C_FornecPDV1: TIntegerField;
    C_FornecSEQUENCIA: TIntegerField;
    C_FornecITEM: TIntegerField;
    C_FornecDESCRICAO1: TStringField;
    C_FornecQUANTIDADE: TFloatField;
    C_FornecPRECO: TFloatField;
    C_FornecIMPORTACAO1: TIntegerField;
    C_FornecUSOTIPOITEM: TStringField;
    C_FornecCUSTOMEDIO: TFloatField;
    C_FornecSITUACAO1: TStringField;
    C_FornecSUBTOTALITEM: TFloatField;
    C_FornecQTDRECEBIDA: TBCDField;
    C_FornecHASCHILDREN: TStringField;
    C_FornecORDEM: TIntegerField;
    C_FornecCOLUNA1: TStringField;
    C_FornecCOLUNA2: TStringField;
    C_FornecCOLUNA3: TStringField;
    C_FornecCOLUNA4: TStringField;
    C_FornecCLIENTEREF: TIntegerField;
    C_FornecREFERENCIA: TStringField;
    C_FornecSAIDAITEM: TIntegerField;
    C_FornecNAOCOBRAR: TStringField;
    C_FornecCUSTOCONTABIL: TFloatField;
    C_FornecRATEIODESCONTO: TFloatField;
    C_FornecCUSTOMEDIO_ANT: TFloatField;
    C_FornecCUSTOCONTABIL_ANT: TFloatField;
    C_FornecSEMLUCRO: TFloatField;
    C_FornecLUCRO: TFloatField;
    C_FornecINDICELUCRO: TFloatField;
    C_FornecNOVOPRECO: TFloatField;
    C_FornecANALISADO: TStringField;
    C_FornecATUALIZOUCUSTO: TStringField;
    C_FornecATUALIZOUPRECO: TStringField;
    C_FornecFRETEPROPORCIONAL: TFloatField;
    C_FornecMESCLADO: TStringField;
    C_FornecSTATUS1: TStringField;
    C_FornecCODIGOFORN: TStringField;
    C_FornecNUMEROLOTE: TStringField;
    C_FornecVALIDADE: TDateField;
    C_FornecVENDEDOR1: TIntegerField;
    C_FornecFATOR: TFloatField;
    C_FornecESTOQUE_ANT: TBCDField;
    C_FornecBAIXAESTOQUE1: TStringField;
    C_FornecALMOXARIFADO: TIntegerField;
    C_FornecBASECALCICMSPROD: TFloatField;
    C_FornecIPI: TFloatField;
    C_FornecALIQICMS: TFloatField;
    C_FornecCST: TStringField;
    C_FornecREDUCAOCST: TFloatField;
    C_FornecCFOPENTRADA1: TStringField;
    C_FornecDESCONTO1: TFloatField;
    C_FornecBASECALCSUBSTPROD: TFloatField;
    C_FornecVALORIPIPROD: TFloatField;
    C_FornecTVA: TFloatField;
    C_FornecSITUACAOECF: TStringField;
    C_FornecVALORICMSPROD: TFloatField;
    C_FornecVALORISENTASPROD: TFloatField;
    C_FornecVALORICMSSUBSTPROD: TFloatField;
    C_FornecQTDDEVOLVIDO: TFloatField;
    C_FornecQTDACERTADO: TFloatField;
    C_FornecPDESCONTO: TFloatField;
    C_FornecCOMPENSACAOCUSTO: TFloatField;
    C_FornecCFOPCST: TStringField;
    C_FornecFATORPRECO: TFloatField;
    C_FornecPRECOVENDA: TBCDField;
    C_FornecBAIXAESTOQUEFISCAL1: TStringField;
    C_FornecIDTRIBFEDERAL: TIntegerField;
    C_FornecQUANTIDADEVOLUME: TFloatField;
    C_FornecCSTPISCOFINS: TStringField;
    C_FornecALIQPIS: TFloatField;
    C_FornecALIQCOFINS: TFloatField;
    C_FornecVALORPISPROD: TFloatField;
    C_FornecVALORCOFINSPROD: TFloatField;
    C_FornecCSTIPI: TStringField;
    C_FornecALIQIPI: TFloatField;
    C_FornecFABRICACAO: TDateField;
    C_FornecV_BCII: TFloatField;
    C_FornecV_DESPADUII: TFloatField;
    C_FornecV_II: TFloatField;
    C_FornecV_IOFII: TFloatField;
    C_FornecRATEIODESPESAS: TFloatField;
    C_FornecRATEIOFRETE: TFloatField;
    C_FornecFRETE1: TFloatField;
    C_FornecSEGURO: TFloatField;
    C_FornecOUTRASDESPESAS1: TFloatField;
    C_FornecRATEIOSEGURO: TFloatField;
    C_FornecORIGEMREPLIC1: TStringField;
    C_FornecSubTotal: TFloatField;
    dbgFornecDescontoItem: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure C_FornecCalcFields(DataSet: TDataSet);
    procedure dbgFornecDblClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
  private
    nProduto: integer;
    sDescricao: string;
    procedure MostraConsulta;
  public
    Constructor Create(AOwner: TComponent; xProduto: integer; xDescricao:string);
  end;

var
  DlgUltimosFornecimentos: TDlgUltimosFornecimentos;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgUltimosFornecimentos.Create;
begin
  nProduto := xProduto;
  sDescricao := xDescricao;
  inherited Create(AOwner);
end;

procedure TDlgUltimosFornecimentos.MostraConsulta;
begin
  C_Fornec.close;
  C_Fornec.FetchParams;
  C_Fornec.params[0].asinteger := nProduto;
  C_Fornec.open;
end;

procedure TDlgUltimosFornecimentos.FormCreate(Sender: TObject);
begin
  inherited;
  dfItem.ID := nProduto;
  ShowModal;
end;

procedure TDlgUltimosFornecimentos.C_FornecCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_FornecSubTotal.value := C_FornecQuantidade.value * (C_FornecPreco.value - C_FornecDesconto1.Value);
  C_FornecicDesconto.Value := (C_FornecPreco.value - C_FornecDesconto.Value);
end;

procedure TDlgUltimosFornecimentos.dbgFornecDblClick(Sender: TObject);
var nID: integer;
begin
  inherited;
  if lowercase(dbgFornec.TS_SelectedColumn) = 'nome' then begin
		with DMProjeto do begin
      nId := dbgFornec.GetFieldValue(dbgFornec.focusednode,'favorecido',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFornecedores',self,true);
  	end;
  end
  else begin
		with DMProjeto do begin
      nId := dbgFornec.GetFieldValue(dbgFornec.focusednode,'Entrada',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmCompras',self,true);
    end;
  end;
end;

procedure TDlgUltimosFornecimentos.btGravarClick(Sender: TObject);
begin
  inherited;
  dbgFornecDblClick(self);
end;

procedure TDlgUltimosFornecimentos.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  nProduto := dfItem.ID;
  MostraConsulta;
end;

end.
