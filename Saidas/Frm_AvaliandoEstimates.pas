unit Frm_AvaliandoEstimates;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_Shape, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, RXSplit, Provider, Db,
  IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, DBClient, dxGrClEx,
  dxExEdtr, dxEdLib, TS_CheckBox, BTOdeum, Placemnt;

type
  TFrmAvaliandoEstimates = class(TFrmModeloCadastros)
    TS_Panel2: TTS_Panel;
    TS_Shape1: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label1: TTS_Label;
    dbgEstimates: TTS_QDBGrid;
    TS_Bevel2: TTS_Bevel;
    btCRM: TTS_SpeedButton;
    btInvoices: TTS_SpeedButton;
    btExtratoParcelas: TTS_SpeedButton;
    Q_Estimates: TIBQuery;
    P_Estimates: TDataSetProvider;
    C_Estimates: TClientDataSet;
    C_EstimatesDS: TDataSource;
    C_EstimatesSAIDA: TIntegerField;
    C_EstimatesNUMERO: TStringField;
    C_EstimatesDATA: TDateField;
    C_EstimatesFAVORECIDO: TIntegerField;
    C_EstimatesOBS: TStringField;
    C_EstimatesPLANOPAGAMENTO: TIntegerField;
    C_EstimatesVENDEDOR: TIntegerField;
    C_EstimatesSITUACAO: TStringField;
    C_EstimatesTIPOMOVIMENTO: TIntegerField;
    C_EstimatesBAIXAESTOQUE: TStringField;
    C_EstimatesCAMPO01: TStringField;
    C_EstimatesCAMPO02: TStringField;
    C_EstimatesCAMPO03: TStringField;
    C_EstimatesCAMPO04: TStringField;
    C_EstimatesVALIDADE: TDateField;
    C_EstimatesSTATUS: TStringField;
    C_EstimatesDESCPLANOPGTO: TStringField;
    C_EstimatesNOME: TStringField;
    C_EstimatesNOMEFUNC: TStringField;
    C_EstimatesItens: TStringField;
    dbgEstimatesSAIDA: TdxDBGridMaskColumn;
    dbgEstimatesNUMERO: TdxDBGridMaskColumn;
    dbgEstimatesDATA: TdxDBGridDateColumn;
    dbgEstimatesFAVORECIDO: TdxDBGridMaskColumn;
    dbgEstimatesOBS: TdxDBGridMaskColumn;
    dbgEstimatesDESCONTO: TdxDBGridMaskColumn;
    dbgEstimatesPLANOPAGAMENTO: TdxDBGridMaskColumn;
    dbgEstimatesVENDEDOR: TdxDBGridMaskColumn;
    dbgEstimatesFRETE: TdxDBGridMaskColumn;
    dbgEstimatesTOTAL: TdxDBGridMaskColumn;
    dbgEstimatesSITUACAO: TdxDBGridMaskColumn;
    dbgEstimatesTIPOMOVIMENTO: TdxDBGridMaskColumn;
    dbgEstimatesOUTRASDESPESAS: TdxDBGridMaskColumn;
    dbgEstimatesJUROS: TdxDBGridMaskColumn;
    dbgEstimatesBAIXAESTOQUE: TdxDBGridMaskColumn;
    dbgEstimatesCAMPO01: TdxDBGridMaskColumn;
    dbgEstimatesCAMPO02: TdxDBGridMaskColumn;
    dbgEstimatesCAMPO03: TdxDBGridMaskColumn;
    dbgEstimatesCAMPO04: TdxDBGridMaskColumn;
    dbgEstimatesIMPOSTO: TdxDBGridMaskColumn;
    dbgEstimatesTOTALITENS: TdxDBGridMaskColumn;
    dbgEstimatesVALIDADE: TdxDBGridDateColumn;
    dbgEstimatesSTATUS: TdxDBGridMaskColumn;
    dbgEstimatesNOME: TdxDBGridMaskColumn;
    dbgEstimatesNOMEFUNC: TdxDBGridMaskColumn;
    dbgEstimatesDESCPLANOPGTO: TdxDBGridPopupColumn;
    dbgEstimatesItens: TdxDBGridPopupColumn;
    Q_TiposMovimento: TIBQuery;
    P_TiposMovimento: TDataSetProvider;
    C_TiposMovimento: TClientDataSet;
    C_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentoDESCRICAO: TStringField;
    C_TiposMovimentoTIPO: TStringField;
    C_TiposMovimentoBAIXAESTOQUE: TStringField;
    C_TiposMovimentoCALCCOMISSAO: TStringField;
    C_TiposMovimentoPOSSUIENTREGA: TStringField;
    C_TiposMovimentoBLOQUEARSEATRASADO: TStringField;
    C_TiposMovimentoBLOQUEARPORSITUACAO: TStringField;
    C_TiposMovimentoBLOQUEARPORESTOQUE: TStringField;
    C_TiposMovimentoLIMITEFAVORECIDO: TStringField;
    C_TiposMovimentoSIGLAINICIAL: TStringField;
    C_TiposMovimentoTIT1_DATA: TStringField;
    C_TiposMovimentoTIT2_DATA: TStringField;
    C_TiposMovimentoTIT1_NUMERO: TStringField;
    C_TiposMovimentoTIT2_NUMERO: TStringField;
    C_TiposMovimentoCB_INFOENTREGA: TStringField;
    C_TiposMovimentoTIT1_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT1_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT1_TIPOENTREGA: TStringField;
    C_TiposMovimentoTIT2_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT2_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT2_TIPOENTREGA: TStringField;
    C_TiposMovimentoCB_VENDEDOR: TStringField;
    C_TiposMovimentoTIT1_VENDEDOR: TStringField;
    C_TiposMovimentoTIT2_VENDEDOR: TStringField;
    C_TiposMovimentoCB_PEDIDO: TStringField;
    C_TiposMovimentoTIT1_PEDIDO: TStringField;
    C_TiposMovimentoTIT2_PEDIDO: TStringField;
    C_TiposMovimentoCB_COMISSAO: TStringField;
    C_TiposMovimentoTIT1_COMISSAO: TStringField;
    C_TiposMovimentoTIT2_COMISSAO: TStringField;
    C_TiposMovimentoCB_TERMOS: TStringField;
    C_TiposMovimentoTIT1_TERMOS: TStringField;
    C_TiposMovimentoTIT2_TERMOS: TStringField;
    C_TiposMovimentoCB_MENSAGEM: TStringField;
    C_TiposMovimentoTIT1_MENSAGEM: TStringField;
    C_TiposMovimentoTIT2_MENSAGEM: TStringField;
    C_TiposMovimentoCB_DESCONTOS: TStringField;
    C_TiposMovimentoTIT1_DESCONTOS: TStringField;
    C_TiposMovimentoTIT2_DESCONTOS: TStringField;
    C_TiposMovimentoCB_FRETE: TStringField;
    C_TiposMovimentoTIT1_FRETE: TStringField;
    C_TiposMovimentoTIT2_FRETE: TStringField;
    C_TiposMovimentoCB_TOTALITENS: TStringField;
    C_TiposMovimentoTIT1_TOTALITENS: TStringField;
    C_TiposMovimentoTIT2_TOTALITENS: TStringField;
    C_TiposMovimentoCB_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT2_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_DESCRICAO: TStringField;
    C_TiposMovimentoTIT1_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT1_PRECO: TStringField;
    C_TiposMovimentoTIT1_SUBTOTAL: TStringField;
    C_TiposMovimentoTIT2_DESCRICAO: TStringField;
    C_TiposMovimentoTIT2_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT2_PRECO: TStringField;
    C_TiposMovimentoTIT2_SUBTOTAL: TStringField;
    C_TiposMovimentoCB_JUROS: TStringField;
    C_TiposMovimentoTIT1_JUROS: TStringField;
    C_TiposMovimentoTIT2_JUROS: TStringField;
    C_TiposMovimentoCB_DESPESAS: TStringField;
    C_TiposMovimentoTIT1_DESPESAS: TStringField;
    C_TiposMovimentoTIT2_DESPESAS: TStringField;
    C_TiposMovimentoCB_CAMPO01: TStringField;
    C_TiposMovimentoTIT1_CAMPO1: TStringField;
    C_TiposMovimentoTIT2_CAMPO1: TStringField;
    C_TiposMovimentoCB_CAMPO02: TStringField;
    C_TiposMovimentoTIT1_CAMPO2: TStringField;
    C_TiposMovimentoTIT2_CAMPO2: TStringField;
    C_TiposMovimentoCB_CAMPO03: TStringField;
    C_TiposMovimentoTIT1_CAMPO3: TStringField;
    C_TiposMovimentoTIT2_CAMPO3: TStringField;
    C_TiposMovimentoCB_CAMPO04: TStringField;
    C_TiposMovimentoTIT1_CAMPO4: TStringField;
    C_TiposMovimentoTIT2_CAMPO4: TStringField;
    C_TiposMovimentoCB_CODIGO: TStringField;
    C_TiposMovimentoTIT1_CODIGO: TStringField;
    C_TiposMovimentoTIT2_CODIGO: TStringField;
    C_TiposMovimentoCB_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT1_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT2_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT1_COLUNA1: TStringField;
    C_TiposMovimentoTIT1_COLUNA2: TStringField;
    C_TiposMovimentoTIT1_COLUNA4: TStringField;
    C_TiposMovimentoTIT2_COLUNA1: TStringField;
    C_TiposMovimentoTIT2_COLUNA2: TStringField;
    C_TiposMovimentoTIT2_COLUNA3: TStringField;
    C_TiposMovimentoTIT2_COLUNA4: TStringField;
    C_TiposMovimentoCORTITULOS: TIntegerField;
    C_TiposMovimentoTIPOFAVPADRAO: TIntegerField;
    C_TiposMovimentoTIPOPADRAO: TIntegerField;
    C_TiposMovimentoCB_COLUNA1: TStringField;
    C_TiposMovimentoCB_COLUNA2: TStringField;
    C_TiposMovimentoCB_COLUNA3: TStringField;
    C_TiposMovimentoCB_COLUNA4: TStringField;
    C_TiposMovimentoTIT1_UNIDADE: TStringField;
    C_TiposMovimentoTIT2_UNIDADE: TStringField;
    C_TiposMovimentoFOTO: TStringField;
    C_TiposMovimentoTIT1_VALIDADE: TStringField;
    C_TiposMovimentoTIT2_VALIDADE: TStringField;
    C_TiposMovimentoCB_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_REFERENCIA: TStringField;
    C_TiposMovimentoTIT2_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT1_SITUACAO: TStringField;
    C_TiposMovimentoTIT2_SITUACAO: TStringField;
    C_TiposMovimentoATUALIZACUSTO: TStringField;
    C_TiposMovimentoATUALIZAPRECO: TStringField;
    C_TiposMovimentoINCLUIDESCONTO: TStringField;
    C_TiposMovimentoATUALIZAPRECOMANUAL: TStringField;
    ppmGrid: TTS_PopupMenu;
    Q_Parcelas: TIBQuery;
    MasterDS: TDataSource;
    C_Parcelas: TClientDataSet;
    C_EstimatesQ_Parcelas: TDataSetField;
    C_ParcelasDS: TDataSource;
    C_ParcelasPARCELA: TIntegerField;
    C_ParcelasVALOR: TBCDField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasID: TIntegerField;
    dbgParcelas: TTS_QDBGrid;
    dbgParcelasID: TdxDBGridMaskColumn;
    dbgParcelasPARCELA: TdxDBGridMaskColumn;
    dbgParcelasVALOR: TdxDBGridMaskColumn;
    dbgParcelasVENCIMENTO: TdxDBGridDateColumn;
    C_ParcelasSAIDA: TIntegerField;
    cbObs: TTS_CheckBox;
    AtualizarNovasEstimates1: TMenuItem;
    Q_SQL: TIBQuery;
    Q_Itens: TIBQuery;
    C_Itens: TClientDataSet;
    C_ItensDS: TDataSource;
    C_EstimatesQ_Itens: TDataSetField;
    C_ItensSAIDAITEM: TIntegerField;
    C_ItensSAIDA: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensREFERENCIA: TStringField;
    dbgItens: TTS_QDBGrid;
    dbgItensSAIDAITEM: TdxDBGridMaskColumn;
    dbgItensSAIDA: TdxDBGridMaskColumn;
    dbgItensSEQUENCIA: TdxDBGridMaskColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensPRECO: TdxDBGridMaskColumn;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensREFERENCIA: TdxDBGridMaskColumn;
    dbgItensSubTotal: TdxDBGridColumn;
    C_ItensDESCRICAO: TStringField;
    C_EstimatesEMPRESA: TIntegerField;
    C_EstimatesPDV: TIntegerField;
    C_EstimatesTAX: TIntegerField;
    C_EstimatesPERCENTUALTAX: TFloatField;
    C_EstimatesDESCONTO: TFloatField;
    C_EstimatesFRETE: TFloatField;
    C_EstimatesTOTAL: TFloatField;
    C_EstimatesTIPOENTREGA: TIntegerField;
    C_EstimatesDATAENTREGA: TDateField;
    C_EstimatesIMPORTACAO: TIntegerField;
    C_EstimatesPEDIDO_CLIENTE: TStringField;
    C_EstimatesOUTRASDESPESAS: TFloatField;
    C_EstimatesJUROS: TFloatField;
    C_EstimatesPOSSUITAX: TStringField;
    C_EstimatesCALCCOMISSAO: TStringField;
    C_EstimatesPOSSUIENTREGA: TStringField;
    C_EstimatesIMPRESSO: TStringField;
    C_EstimatesIMPOSTO: TFloatField;
    C_EstimatesIMPOSTO_INCLUSO: TFloatField;
    C_EstimatesPCOMISSAO: TFloatField;
    C_EstimatesCAIXA: TIntegerField;
    C_EstimatesLOCALENTREGA: TIntegerField;
    C_EstimatesTABELAPADRAO: TIntegerField;
    C_EstimatesTIPOPADRAO: TIntegerField;
    C_EstimatesDATACANCELAMENTO: TDateField;
    C_EstimatesFUNCCANCELAMENTO: TIntegerField;
    C_EstimatesMOTIVOCANCELAMENTO: TStringField;
    C_EstimatesPJUROS: TFloatField;
    C_EstimatesVALORCOMISSAO: TFloatField;
    C_EstimatesTOTALITENS: TFloatField;
    C_EstimatesCONDICOESPGTO: TStringField;
    C_EstimatesDATAENTREGUE: TDateField;
    C_EstimatesTOTALITENS123: TFloatField;
    C_EstimatesBASEIMPOSTO: TFloatField;
    C_EstimatesBASEINCLUSO: TFloatField;
    C_EstimatesDESCONTOITENS: TFloatField;
    C_EstimatesTIPOIMPRESSAO: TStringField;
    C_EstimatesTOTALPGTOS: TFloatField;
    C_EstimatesSTATUSANTERIOR: TStringField;
    C_EstimatesREDUCOESBASE: TFloatField;
    C_EstimatesACRESCIMOSBASE: TFloatField;
    C_EstimatesDTMODIFICACAO: TDateTimeField;
    C_EstimatesVOLUMES: TFloatField;
    C_EstimatesTERMOCONTRATO: TStringField;
    C_EstimatesALMOXPADRAO: TIntegerField;
    C_EstimatesCFOPNOTA: TStringField;
    C_EstimatesSERIENOTA: TStringField;
    C_EstimatesUFDESTINO: TStringField;
    C_EstimatesBASECALCICMS: TFloatField;
    C_EstimatesVALORICMS: TFloatField;
    C_EstimatesVALORISS: TFloatField;
    C_EstimatesVALORIPI: TFloatField;
    C_EstimatesBASECALCSUBST: TFloatField;
    C_EstimatesVALORICMSSUBST: TFloatField;
    C_EstimatesVALORSEGURO: TFloatField;
    C_EstimatesTIPOFRETE: TStringField;
    C_EstimatesTRANSPORTADORA: TIntegerField;
    C_EstimatesPESOBRUTO: TFloatField;
    C_EstimatesPESOLIQUIDO: TFloatField;
    C_EstimatesALIQICMSVENDA: TFloatField;
    C_EstimatesVALORISENTAS: TFloatField;
    C_EstimatesTOTALSERVICOS: TFloatField;
    C_EstimatesDESCESPECIE: TStringField;
    C_EstimatesDESCMARCA: TStringField;
    C_EstimatesDESCNUMERO: TStringField;
    C_EstimatesINDICADOPELOFAV: TIntegerField;
    C_EstimatesPOSSUIICMS: TStringField;
    C_EstimatesPOSSUIIPI: TStringField;
    C_EstimatesPOSSUIISS: TStringField;
    C_EstimatesCONTABILIZAICMS: TStringField;
    C_EstimatesMODELO: TStringField;
    C_EstimatesVALOROUTRASICMS: TFloatField;
    C_EstimatesVALORISENTASIPI: TFloatField;
    C_EstimatesVALOROUTRASIPI: TFloatField;
    C_EstimatesFONTE: TStringField;
    C_EstimatesPLACAVEIC: TStringField;
    C_EstimatesATRATAR: TStringField;
    C_EstimatesINTRODUCAO: TStringField;
    C_EstimatesPRAZOENTREGA: TStringField;
    C_EstimatesGARANTIA: TStringField;
    C_EstimatesSEESTOQUE: TStringField;
    C_EstimatesPROCESSO: TStringField;
    C_EstimatesCARTACONVITE: TStringField;
    C_EstimatesTOMADAPRECOS: TStringField;
    C_EstimatesDATAABERTURA: TStringField;
    C_EstimatesEXPLICACOES: TStringField;
    C_EstimatesLICITACAOICMS: TFloatField;
    C_EstimatesSUBSTTRIB: TStringField;
    C_EstimatesPJUROSNEGOCIADO: TFloatField;
    C_EstimatesCONDICOESPAGTO: TStringField;
    C_EstimatesTOTALPRODUTOS: TFloatField;
    C_EstimatesVALORIPIITENS: TFloatField;
    C_EstimatesBASECALCICMSITENS: TFloatField;
    C_EstimatesVALORICMSITENS: TFloatField;
    C_EstimatesBASECALCSUBSTITENS: TFloatField;
    C_EstimatesCOBRANCA: TIntegerField;
    C_EstimatesCARTEIRA: TIntegerField;
    C_EstimatesMEDICO: TIntegerField;
    C_EstimatesNF_CUPOM: TStringField;
    C_EstimatesDEVOLUCAO: TFloatField;
    C_EstimatesBAIXAESTOQUEFISCAL: TStringField;
    C_EstimatesHORA: TTimeField;
    C_EstimatesMENSAGEMITEM: TStringField;
    C_EstimatesNUMEROSERIEECF: TStringField;
    C_EstimatesNUMEROECF: TStringField;
    C_EstimatesCCF: TStringField;
    C_EstimatesCRZ: TStringField;
    C_EstimatesDETALHEIMPORTACAO: TIntegerField;
    C_EstimatesMD5: TStringField;
    C_EstimatesORIGEMREPLIC: TStringField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensPRECO: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btCRMClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btInvoicesClick(Sender: TObject);
    procedure btExtratoParcelasClick(Sender: TObject);
    procedure cbObsClick(Sender: TObject);
    procedure AtualizarNovasEstimates1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure C_EstimatesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAvaliandoEstimates: TFrmAvaliandoEstimates;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TFrmAvaliandoEstimates.FormShow(Sender: TObject);
var
  i : Integer;
  f : TField;
begin
  inherited;
  {Abrindo Querys}
  C_TiposMovimento.Open;
  C_Estimates.Open;
  
  {Substituindo Cabeçalhos}
  for i := 0 to dbgEstimates.ColumnCount - 1 do begin
    f := C_TiposMovimento.FindField('TIT'+IntToStr(DMProjeto.nIdiomaPadrao)+'_'+dbgEstimates.Columns[i].Caption);
    if f <> nil then
      dbgEstimates.Columns[i].Caption := TField(F).AsString;
    if dbgEstimates.Columns[i].Caption = '' then
      dbgEstimates.Columns[i].DisableCustomizing := True;
  end;
end;

procedure TFrmAvaliandoEstimates.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_EstimatesFavorecido.asVariant]);
  DMProjeto.CriarForm('FrmClientes', self, true);
end;

procedure TFrmAvaliandoEstimates.btCRMClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [C_EstimatesFavorecido.asVariant, 1{TipoFav}] );
  DMProjeto.CriarForm('DlgSitCliente', Self, true);
end;

procedure TFrmAvaliandoEstimates.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_EstimatesSaida.asVariant,3]);
  DMProjeto.CriarForm('FrmEstimates',Self,True);
end;

procedure TFrmAvaliandoEstimates.btInvoicesClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'INVOICES' ) then
  	exit;
  DMProjeto.SetParametrosForm( [C_EstimatesFAVORECIDO.asVariant, C_EstimatesNOME.AsString, 1{TipoFav}] );
  DMProjeto.CriarForm('DlgUltimasVendas', Self, True);
end;

procedure TFrmAvaliandoEstimates.btExtratoParcelasClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'EXTPARCELA' ) then
  	exit;
  DMProjeto.ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTO',C_EstimatesFAVORECIDO.Value);
end;

procedure TFrmAvaliandoEstimates.cbObsClick(Sender: TObject);
begin
  inherited;
  if cbObs.Checked then
    dbgEstimates.OptionsView := dbgEstimates.OptionsView + [edgoPreview]
  else
    dbgEstimates.OptionsView := dbgEstimates.OptionsView - [edgoPreview]

end;

procedure TFrmAvaliandoEstimates.AtualizarNovasEstimates1Click(
  Sender: TObject);
begin
  inherited;
  C_Estimates.Close;
  C_Estimates.Open;
end;

procedure TFrmAvaliandoEstimates.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if LastDataObject.TableName = 'SAIDAS' then begin
    C_Estimates.Close;
    C_Estimates.Open;
  end;
end;

procedure TFrmAvaliandoEstimates.btLimparClick(Sender: TObject);
var
  sMotivo : String;
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'NAOAPROVAR' ) then
  	exit;

  while sMotivo = '' do
    if not inputquery('Não aprovação de Orçamento', 'Motivo:', sMotivo) then
      exit;

  try
    with Q_SQL do begin
      Close;
      SQL.Text := 'Update Saidas set Status = ''G'', OBS = :O where Saida = :S and TipoPadrao = 3 and situacao = ''N'' ';
      ParamByName('O').asString  := sMotivo;
      ParamByName('S').asInteger := C_EstimatesSaida.Value;
      ExecSQL;
    end;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining ;

      DlgMsg.ShowMsg(2,e.message, '');
    end;
  end;

  C_Estimates.Close;
  C_Estimates.Open;
end;

procedure TFrmAvaliandoEstimates.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'APROVAR' ) then
  	exit;

  if DlgMsg.ShowMsg(2319, [C_EstimatesNumero.Value, C_EstimatesNome.Value]) = 200 then
    exit;

  try
    with Q_SQL do begin
      Close;
      SQL.Text := 'Update Saidas set Status = ''V'' where Saida = :S and TipoPadrao = 3 and situacao = ''N'' ';
      params[0].asInteger := C_EstimatesSaida.Value;
      ExecSQL;
    end;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining ;

      DlgMsg.ShowMsg(2,e.message, '');
    end;
  end;

  C_Estimates.Close;
  C_Estimates.Open;
end;

procedure TFrmAvaliandoEstimates.C_EstimatesCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_EstimatesItens.Value := 'Itens...';
end;

end.
