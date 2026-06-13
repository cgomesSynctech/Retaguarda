unit Dlg_MescAcertSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Saidas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, Placemnt, BTOdeum, ComCtrls;

type
  TDlgMescAcertSaida = class(TFrmModeloCadastros)
    GridMovs: TTS_QDBGrid;
    Q_Movimentos: TIBQuery;
    P_Movimentos: TDataSetProvider;
    C_Movimentos: TClientDataSet;
    C_MovimentosDS: TDataSource;
    GridMovsTOTAL: TdxDBGridMaskColumn;
    GridMovsFAVORECIDO: TdxDBGridMaskColumn;
    GridMovsDATA: TdxDBGridDateColumn;
    GridMovsSITUACAO: TdxDBGridMaskColumn;
    GridMovsNOME: TdxDBGridMaskColumn;
    GridMovsDESCTIPOMOV: TdxDBGridMaskColumn;
    GridMovsDESCTIPOPADRAO: TdxDBGridMaskColumn;
    GridMovsPrevisao: TdxDBGridColumn;
    dbtForn: TTS_DBTextEffect;
    C_MovimentosicItens: TStringField;
    GridMovsItens: TdxDBGridPopupColumn;
    ppmGrid: TTS_PopupMenu;
    Q_Itens: TIBQuery;
    Q_MovimentosDS: TDataSource;
    C_Itens: TClientDataSet;
    C_MovimentosQ_Itens: TDataSetField;
    C_ItensDS: TDataSource;
    dbgItens: TTS_QDBGrid;
    dbgItensSEQUENCIA: TdxDBGridMaskColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensPRECO: TdxDBGridMaskColumn;
    dbgItensIMPORTACAO: TdxDBGridMaskColumn;
    dbgItensUSOTIPOITEM: TdxDBGridMaskColumn;
    dbgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgItensORDEM: TdxDBGridMaskColumn;
    dbgItensHASCHILDREN: TdxDBGridMaskColumn;
    dbgItensTIPOITEM: TdxDBGridMaskColumn;
    C_ItensicQtdMesclar: TFloatField;
    dbgItensicQtdMesclar: TdxDBGridColumn;
    dbgItensQTDFATURADA: TdxDBGridColumn;
    C_Movimentos_icSelecionado: TIntegerField;
    C_Itens_icSelecionado: TIntegerField;
    pnBar: TTS_Panel;
    C_MovimentosQtdItens: TIntegerField;
    GridMovsQtdItensSel: TdxDBGridColumn;
    GridMovsNumero: TdxDBGridColumn;
    dbgItensCodigo: TdxDBGridColumn;
    ppmGridItens: TTS_PopupMenu;
    Q_Filhos: TIBQuery;
    GridMovsSTATUS: TdxDBGridCheckColumn;
    gridAcerto: TTS_QDBGrid;
    P_Acerto: TDataSetProvider;
    C_Acerto: TClientDataSet;
    C_AcertoDS: TDataSource;
    Q_Acerto: TIBQuery;
    gridAcertoTIPOMOVIMENTO: TdxDBGridMaskColumn;
    gridAcertoFAVORECIDO: TdxDBGridMaskColumn;
    gridAcertoNOME: TdxDBGridMaskColumn;
    gridAcertoITEM: TdxDBGridMaskColumn;
    gridAcertoCODIGO: TdxDBGridMaskColumn;
    gridAcertoDESCRICAO: TdxDBGridMaskColumn;
    gridAcertoUNIDADE: TdxDBGridMaskColumn;
    gridAcertoREFERENCIA: TdxDBGridMaskColumn;
    gridAcertoESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn;
    gridAcertoQTD: TdxDBGridCurrencyColumn;
    gridAcertoQTDDEV: TdxDBGridCurrencyColumn;
    gridAcertoQTDACERT: TdxDBGridCurrencyColumn;
    C_AcertoQtddevolvida: TCurrencyField;
    gridAcertoQtddevolvida: TdxDBGridColumn;
    C_Acerto_icSelecionado: TIntegerField;
    gridAcertoESTOQUE: TdxDBGridCurrencyColumn;
    ppmAcerto: TTS_PopupMenu;
    C_AcertoQtdvalidar: TCurrencyField;
    gridAcertoQtdvalidar: TdxDBGridColumn;
    C_AcertoTIPOMOVIMENTO: TIntegerField;
    C_AcertoFAVORECIDO: TIntegerField;
    C_AcertoNOME: TStringField;
    C_AcertoITEM: TIntegerField;
    C_AcertoCODIGO: TStringField;
    C_AcertoDESCRICAO: TStringField;
    C_AcertoUNIDADE: TStringField;
    C_AcertoREFERENCIA: TStringField;
    C_ItensSAIDAITEM: TIntegerField;
    C_ItensSAIDA: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensPRECO: TFloatField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensCONTAVENDA: TIntegerField;
    C_ItensTABELAPRECO: TIntegerField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensORDEM: TIntegerField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensHASCHILDREN: TStringField;
    C_ItensPRODUCAO: TIntegerField;
    C_ItensFUNCPRODUCAO: TIntegerField;
    C_ItensCOLUNA1: TStringField;
    C_ItensCOLUNA2: TStringField;
    C_ItensCOLUNA3: TStringField;
    C_ItensCOLUNA4: TStringField;
    C_ItensMAXDESCONTO: TFloatField;
    C_ItensDESPESA: TIntegerField;
    C_ItensENTRADAITEM: TIntegerField;
    C_ItensCONTRATOREF: TIntegerField;
    C_ItensMESCLADO: TStringField;
    C_ItensSTATUS: TStringField;
    C_ItensNUMEROLOTE: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensFATOR: TFloatField;
    C_ItensDESCONTO: TFloatField;
    C_ItensDESCRICAOCOMPLEMENTAR: TStringField;
    C_ItensPROMOCAO: TStringField;
    C_ItensBAIXAESTOQUE: TStringField;
    C_ItensALMOXARIFADO: TIntegerField;
    C_ItensORDEMMONTAGEM: TStringField;
    C_ItensCST: TStringField;
    C_ItensSITUACAOECF: TStringField;
    C_ItensCFOPNOTA: TStringField;
    C_ItensNUMEROITEM: TStringField;
    C_ItensREGISTRO: TStringField;
    C_ItensTIPOITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_MovimentosSAIDA: TIntegerField;
    C_MovimentosNUMERO: TStringField;
    C_MovimentosDATA: TDateField;
    C_MovimentosFAVORECIDO: TIntegerField;
    C_MovimentosOBS: TStringField;
    C_MovimentosTAX: TIntegerField;
    C_MovimentosPLANOPAGAMENTO: TIntegerField;
    C_MovimentosVENDEDOR: TIntegerField;
    C_MovimentosTIPOENTREGA: TIntegerField;
    C_MovimentosDATAENTREGA: TDateField;
    C_MovimentosIMPORTACAO: TIntegerField;
    C_MovimentosSITUACAO: TStringField;
    C_MovimentosTIPOMOVIMENTO: TIntegerField;
    C_MovimentosPEDIDO_CLIENTE: TStringField;
    C_MovimentosPOSSUITAX: TStringField;
    C_MovimentosBAIXAESTOQUE: TStringField;
    C_MovimentosCALCCOMISSAO: TStringField;
    C_MovimentosPOSSUIENTREGA: TStringField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosIMPRESSO: TStringField;
    C_MovimentosCAIXA: TIntegerField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    C_MovimentosTABELAPADRAO: TIntegerField;
    C_MovimentosTIPOPADRAO: TIntegerField;
    C_MovimentosDATACANCELAMENTO: TDateField;
    C_MovimentosFUNCCANCELAMENTO: TIntegerField;
    C_MovimentosMOTIVOCANCELAMENTO: TStringField;
    C_MovimentosVALIDADE: TDateField;
    C_MovimentosCONDICOESPGTO: TStringField;
    C_MovimentosDATAENTREGUE: TDateField;
    C_MovimentosSTATUS: TStringField;
    C_MovimentosTIPOIMPRESSAO: TStringField;
    C_MovimentosSTATUSANTERIOR: TStringField;
    C_MovimentosDTMODIFICACAO: TDateTimeField;
    C_MovimentosTERMOCONTRATO: TStringField;
    C_MovimentosALMOXPADRAO: TIntegerField;
    C_MovimentosCFOPNOTA: TStringField;
    C_MovimentosSERIENOTA: TStringField;
    C_MovimentosUFDESTINO: TStringField;
    C_MovimentosTIPOFRETE: TStringField;
    C_MovimentosTRANSPORTADORA: TIntegerField;
    C_MovimentosDESCESPECIE: TStringField;
    C_MovimentosDESCMARCA: TStringField;
    C_MovimentosDESCNUMERO: TStringField;
    C_MovimentosINDICADOPELOFAV: TIntegerField;
    C_MovimentosPOSSUIICMS: TStringField;
    C_MovimentosPOSSUIIPI: TStringField;
    C_MovimentosPOSSUIISS: TStringField;
    C_MovimentosCONTABILIZAICMS: TStringField;
    C_MovimentosMODELO: TStringField;
    C_MovimentosPDV: TIntegerField;
    C_MovimentosFONTE: TStringField;
    C_MovimentosPLACAVEIC: TStringField;
    C_MovimentosATRATAR: TStringField;
    C_MovimentosINTRODUCAO: TStringField;
    C_MovimentosPRAZOENTREGA: TStringField;
    C_MovimentosGARANTIA: TStringField;
    C_MovimentosSEESTOQUE: TStringField;
    C_MovimentosPROCESSO: TStringField;
    C_MovimentosCARTACONVITE: TStringField;
    C_MovimentosTOMADAPRECOS: TStringField;
    C_MovimentosDATAABERTURA: TStringField;
    C_MovimentosEXPLICACOES: TStringField;
    C_MovimentosSUBSTTRIB: TStringField;
    C_MovimentosCONDICOESPAGTO: TStringField;
    C_MovimentosCOBRANCA: TIntegerField;
    C_MovimentosCARTEIRA: TIntegerField;
    C_MovimentosMEDICO: TIntegerField;
    C_MovimentosNF_CUPOM: TStringField;
    C_MovimentosNOME: TStringField;
    C_MovimentosDESCTIPOMOV: TStringField;
    C_MovimentosDESCTIPOPADRAO: TStringField;
    C_AcertoEMPRESA: TIntegerField;
    C_AcertoPDV: TIntegerField;
    C_MovimentosPERCENTUALTAX: TFloatField;
    C_MovimentosDESCONTO: TFloatField;
    C_MovimentosFRETE: TFloatField;
    C_MovimentosTOTAL: TFloatField;
    C_MovimentosOUTRASDESPESAS: TFloatField;
    C_MovimentosJUROS: TFloatField;
    C_MovimentosIMPOSTO: TFloatField;
    C_MovimentosIMPOSTO_INCLUSO: TFloatField;
    C_MovimentosPCOMISSAO: TFloatField;
    C_MovimentosPJUROS: TFloatField;
    C_MovimentosVALORCOMISSAO: TFloatField;
    C_MovimentosTOTALITENS: TFloatField;
    C_MovimentosTOTALITENS123: TFloatField;
    C_MovimentosBASEIMPOSTO: TFloatField;
    C_MovimentosBASEINCLUSO: TFloatField;
    C_MovimentosDESCONTOITENS: TFloatField;
    C_MovimentosTOTALPGTOS: TFloatField;
    C_MovimentosREDUCOESBASE: TFloatField;
    C_MovimentosACRESCIMOSBASE: TFloatField;
    C_MovimentosVOLUMES: TFloatField;
    C_MovimentosBASECALCICMS: TFloatField;
    C_MovimentosVALORICMS: TFloatField;
    C_MovimentosVALORISS: TFloatField;
    C_MovimentosVALORIPI: TFloatField;
    C_MovimentosPESOBRUTO: TFloatField;
    C_MovimentosPESOLIQUIDO: TFloatField;
    C_MovimentosALIQICMSVENDA: TFloatField;
    C_MovimentosVALORISENTAS: TFloatField;
    C_MovimentosTOTALSERVICOS: TFloatField;
    C_MovimentosVALOROUTRASICMS: TFloatField;
    C_MovimentosVALORISENTASIPI: TFloatField;
    C_MovimentosVALOROUTRASIPI: TFloatField;
    C_MovimentosPJUROSNEGOCIADO: TFloatField;
    C_MovimentosTOTALPRODUTOS: TFloatField;
    C_MovimentosVALORIPIITENS: TFloatField;
    C_MovimentosBASECALCICMSITENS: TFloatField;
    C_MovimentosVALORICMSITENS: TFloatField;
    C_MovimentosBASECALCSUBSTITENS: TFloatField;
    C_MovimentosBASECALCSUBST: TFloatField;
    C_MovimentosVALORICMSSUBST: TFloatField;
    C_MovimentosVALORSEGURO: TFloatField;
    C_MovimentosLICITACAOICMS: TFloatField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensPRECOTABELA: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    C_ItensRATEIODESCONTO: TFloatField;
    C_ItensQTDFATURADA: TFloatField;
    C_ItensQTDMONTAGEM: TFloatField;
    C_ItensN_USOTIPOITEM: TFloatField;
    C_ItensPRECOSEMPROMOCAO: TFloatField;
    C_ItensBASECALCICMSPROD: TFloatField;
    C_ItensIPI: TFloatField;
    C_ItensALIQICMS: TFloatField;
    C_ItensREDUCAOCST: TFloatField;
    C_ItensBASECALCSUBSTPROD: TFloatField;
    C_ItensVALORIPIPROD: TFloatField;
    C_ItensTVA: TFloatField;
    C_ItensVALORICMSPROD: TFloatField;
    C_ItensVALORISENTASPROD: TFloatField;
    C_ItensVALORICMSSUBSTPROD: TFloatField;
    C_ItensPDESCONTO: TFloatField;
    C_ItensQTDDEVOLVIDO: TFloatField;
    C_ItensQTDACERTADO: TFloatField;
    C_ItensOLDQTDRECEBIDA: TFloatField;
    C_AcertoESTOQUECONSIGSAIDA: TBCDField;
    C_AcertoESTOQUE: TBCDField;
    C_AcertoQTD: TFloatField;
    C_AcertoQTDDEV: TFloatField;
    C_AcertoQTDACERT: TFloatField;
    C_Movimentosseq: TIntegerField;
    C_Acertoseq: TIntegerField;
    C_Itensseq: TIntegerField;
    C_AcertoQtdSelect: TFloatField;
    C_AcertolistaMovimentos: TStringField;
    pbBar: TProgressBar;
    Q_Aux: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure Q_MovimentosBeforeOpen(DataSet: TDataSet);
    procedure GridMovsTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dbgItensTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure GridMovsItensCloseUp(Sender: TObject; var Text: string;
      var Accept: Boolean);
    procedure dbgItensEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure dbgItensEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure C_ItensicQtdMesclarValidate(Sender: TField);
    procedure dbgItensTS_OnSelection(Sender: TObject; bSelected: Boolean;
      var bCanSelect: Boolean);
    procedure gridAcertoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_AcertoQtddevolvidaValidate(Sender: TField);
  private
    { Private declarations }
    sFavs: string;
    bDeleteItens: boolean;
    gravando: boolean;
    sequenciaItem: integer;
    mSaida: integer;
    nTotalItens: double;
    nTotalProdutos: double;
    procedure JoinItemToOperation(nIDItem: Integer);
    procedure AtualizarSelecionados;

  public
    { Public declarations }
    sTipos: string;
    DM: TDMSaidas;

    GridItens: TTS_QDBGrid;
  end;

var
  DlgMescAcertSaida: TDlgMescAcertSaida;

implementation
uses DM_Projeto, Funcoes, DM_ItensFavorecido;

{$R *.DFM}

procedure TDlgMescAcertSaida.FormShow(Sender: TObject);
var est, qtdconsig, qtddev, qtdacert: currency;
aux : integer;
  seq: integer;
  
begin
  inherited;
  gravando := false;
  Screen.Cursor := crHourGlass;

  sFavs := DM.C_TabelaFavorecido.asString;
  dbtForn.DataSource := DM.C_TabelaDS;
  bDeleteItens := false;

  try
    DM.C_Itens.DisableControls;
    C_Movimentos.DisableControls;
    C_Itens.DisableControls;
    C_Acerto.DisableControls;
    C_Movimentos.Open;

    DM.C_Itens.First;
    while not DM.C_Itens.EOF do begin
      if DM.C_Itens.FieldByName('Mesclado').asString = 'S' then begin
        DM.C_Mesclagens.First;
        while not DM.C_Mesclagens.EOF do begin
          if C_Movimentos.Locate('SAIDA', DM.C_Mesclagens.FieldByName('SAIDA_ORIGINAL').asInteger, []) and
             C_Itens.Locate('SAIDAITEM', DM.C_Mesclagens.FieldByName('SAIDAITEM_ORIGINAL').asInteger, []) then begin
            bDeleteItens := true;
            if DM.bAlteracao and (DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat > 0) then begin
              C_Itens.Edit;
              C_ItensQtdFaturada.asFloat := C_ItensQtdFaturada.asFloat - DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat;
            end;
            dbgItens.SelecionarLinha;
            if C_ItensQuantidade.asFloat <> DM.C_Mesclagens.FieldByName('Quantidade').asFloat then begin
              C_Itens.Edit;
              C_ItensicQtdMesclar.asFloat := DM.C_Mesclagens.FieldByName('Quantidade').asFloat;
            end;

            if C_Itens.State <> dsBrowse then
              C_Itens.Post;
          end;
          AtualizarSelecionados;

          DM.C_Mesclagens.Next;
        end;

      end;
      DM.C_Itens.Next;
    end;

    C_Movimentos.First;
    Q_Acerto.SQL.Text := replace(Q_Acerto.SQL.Text, 'XX', sFavs);
    C_Acerto.Open;
    C_Acerto.First;
    seq := 1;
    while not C_Acerto.EOF do begin
      qtdconsig := C_Acerto.FieldByName('qtd').AsCurrency;
      qtddev := C_Acerto.FieldByName('qtddev').AsCurrency;
      qtdacert := C_Acerto.FieldByName('qtdacert').AsCurrency;
      C_Acerto.Edit;
      C_Acerto.FieldByName('qtdvalidar').Value := qtdconsig - qtddev - qtdacert;
      C_Acerto.FieldByName('qtddevolvida').Value := qtdconsig - qtddev - qtdacert;
      C_Acerto.FieldByName('qtdselect').Value := C_Acerto.FieldByName('qtddevolvida').Value;
      C_Acerto.FieldByName('seq').Value := seq;
      C_Acerto.Post;
      C_Acerto.Next;
      inc(seq);
    end;
    C_Acerto.First;
  while not C_Acerto.EOF do begin
    if C_AcertoQtddevolvida.Value = 0 then C_Acerto.Delete
    else C_Acerto.Next;
  end;
    GridMovs.ExpandirGrupos;
    GridAcerto.GoToFirst;

  finally
    Screen.Cursor := crDefault;
    DM.C_Itens.EnableControls;
    C_Movimentos.EnableControls;
    C_Itens.EnableControls;
    C_Acerto.EnableControls;
  end;
end;

procedure TDlgMescAcertSaida.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
  sEntradasOriginais: string;
begin
  inherited;
  {Substituindo Tipo Padrao e Favorecido}
  if not DM.bAlteracao then begin
    if GridAcerto.Visible then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''P'', ''L'',''H'') ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''P'', ''L'') ');
  end
  else begin
    sEntradasOriginais := '';
    with DM.Q_SQL do begin
      Close;
      SQL.Text := 'Select distinct SAIDA_Original from saidasitensmescla ' +
        'where saidaitem in (select saidaitem from saidasitens where saida = ' + DM.C_TabelaIDMestre.asString + ') ';
      Open;
      while not eof do begin
        sEntradasOriginais := CExp(sEntradasOriginais, ',') + FieldByName('Saida_Original').asString;
        Next;
      end;

      Close;

    end;

    if sEntradasOriginais <> '' then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' (e.Status in (''P'', ''L'') or e.Saida in (' + sEntradasOriginais + ') ) ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''P'', ''L'') ');

  end;

  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', sFavs);
  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);


end;

procedure TDlgMescAcertSaida.GridMovsTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  if bSelected then
    dbgItens.SelectAll
  else
    dbgItens.LimparSelecionados;

  C_Movimentos.Edit;
  if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada <> C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Alguns Itens Selecionados'
  else if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada = C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Todos os Itens'
  else if (dbgItens.nQuantidadeSelecionada = 0) then
    C_MovimentosicItens.Value := 'Nenhum Item Selecionado';

  C_MovimentosQtdItens.Value := dbgItens.nQuantidadeSelecionada;

  if GridMovs.nQuantidadeSelecionada > 1 then
    btLimpar.Enabled := false
  else
    btLimpar.Enabled := true;

end;

procedure TDlgMescAcertSaida.dbgItensTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;

  if (C_ItensTipoItem.Value in [1, 2, 3]) then begin
    C_Itens.Edit;

    if bSelected then
      C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value
    else
      C_ItensicQtdMesclar.Value := 0;

    C_Itens.Post;

    dbgItens.TS_SelectedColumn := 'icQtdMesclar';
  end;

end;

procedure TDlgMescAcertSaida.GridMovsItensCloseUp(Sender: TObject;
  var Text: string; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMescAcertSaida.AtualizarSelecionados;
begin
  if dbgItens.nQuantidadeSelecionada = 0 then
    GridMovs.RemoverSelecao
  else if not GridMovs.Selecionado then
    GridMovs.Selecionar;

  C_Movimentos.Edit;
  if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada <> C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Alguns Itens Selecionados'
  else if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada = C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Todos os Itens'
  else if (dbgItens.nQuantidadeSelecionada = 0) then
    C_MovimentosicItens.Value := 'Nenhum Item Selecionado';

  C_MovimentosQtdItens.Value := dbgItens.nQuantidadeSelecionada;

  if GridMovs.nQuantidadeSelecionada > 1 then
    btLimpar.Enabled := false
  else
    btLimpar.Enabled := true;
end;


procedure TDlgMescAcertSaida.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var nTipo: Integer;
begin
  inherited;
  if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then begin
    nTipo := dbgItens.GetFieldValue(Node, 'TipoItem', 1);
    Allow := nTipo in [1, 2, 3];
  end;
end;

procedure TDlgMescAcertSaida.dbgItensEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then begin
    if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node, 'icQtdMesclar', 0, true), 0) > 0) then
      dbgItens.Selecionar;
  end;
end;

procedure TDlgMescAcertSaida.C_ItensicQtdMesclarValidate(
  Sender: TField);
begin
  inherited;
  if (C_ItensItem.Value > 0) and (C_ItensTipoItem.Value in [1, 2, 3]) and
    (C_ItensQuantidade.Value > 0) and (Sender.asFloat > 0) and
    (Sender.asFloat - (C_ItensQuantidade.Value - C_ItensQtdFaturada.Value) > 0.01) then begin
    DlgMsg.ShowMsg(2189);
    raise Exception.Create('@@');
  end;
end;

procedure TDlgMescAcertSaida.btGravarClick(Sender: TObject);
var
  m, i: Integer;
  nDesconto, nFrete, nDespesa, nPJuros, nJuros, nSaldo: Currency;
  nPlano, contador: Integer;
  sMessage, pedido: string;
  sair: boolean;
begin
  nSaldo := 0;
  Screen.Cursor := crHourGlass;
  gravando := true;
  C_Acerto.DisableControls;
  C_Movimentos.DisableControls;
  C_Itens.DisableControls;
  C_Movimentos.First;
  while not C_Movimentos.Eof do begin
    C_Itens.First;
    while not C_Itens.Eof do begin
      C_Acerto.First;
      while not C_Acerto.Eof do begin
        if C_ItensItem.Value = C_AcertoItem.Value then begin
          if C_Acerto.FieldByName('_icSelecionado').AsInteger = 1 then begin
            if C_AcertoQtddevolvida.Value > 0 then begin
              if C_AcertoQtddevolvida.Value <= C_ItensQuantidade.Value - C_ItensQtdFaturada.Value then begin
                C_Movimentos.Edit;
                C_Movimentos.FieldByName('_icSelecionado').Value := 1;
                C_Movimentos.FieldByName('seq').Value := C_Acertoseq.Value;
//                C_Movimentos.Post;
//                C_Itens.Locate('ITEM',C_AcertoItem.Value,[]);
                C_Itens.Edit;
                C_Itens.FieldByName('_icSelecionado').Value := 1;
                c_Itens.FieldByName('seq').Value := C_Acertoseq.Value;
                C_ItensicQtdMesclar.Value := C_AcertoQtddevolvida.Value;
                C_Itens.Post;
                C_Acerto.Edit;
                C_AcertoQtddevolvida.Value := 0;

                if C_AcertolistaMovimentos.Value = '' then
                  C_AcertolistaMovimentos.Value := C_MovimentosSAIDA.AsString
                else
                  C_AcertolistaMovimentos.Value := C_AcertolistaMovimentos.Value + ', ' + C_MovimentosSAIDA.AsString;
                C_Acerto.Post;
              end
              else begin
                C_Movimentos.Edit;
//                C_Movimentos.Post;
                C_Itens.Edit;
                C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
                C_Itens.FieldByName('_icSelecionado').Value := 1;
                C_Itens.FieldByName('seq').Value := C_Acertoseq.Value;
                C_Movimentos.FieldByName('_icSelecionado').Value := 1;
                C_Movimentos.FieldByName('seq').Value := C_Acertoseq.Value;
                C_Itens.Post;
                nSaldo := C_AcertoQtddevolvida.Value;
                C_Acerto.Edit;
                C_AcertoQtddevolvida.Value := nSaldo - (C_ItensQuantidade.Value - C_ItensQtdFaturada.Value);

                if C_AcertolistaMovimentos.Value = '' then
                  C_AcertolistaMovimentos.Value := C_MovimentosSAIDA.AsString
                else
                  C_AcertolistaMovimentos.Value := C_AcertolistaMovimentos.Value + ', ' + C_MovimentosSAIDA.AsString;
                C_Acerto.Post;
              end;
            end;
          end;
        end;
        C_Acerto.Next;
      end;
      C_Itens.Next;
    end;
    C_Movimentos.Next;
  end;
  C_Acerto.EnableControls;
  C_Movimentos.EnableControls;
  C_Itens.EnableControls;
  Screen.Cursor := crDefault;
  inherited;
  if C_Movimentos.State <> dsBrowse then
    C_Movimentos.Post;

  { Mesclar os Itens escolhidos na invoice }
  if (GridMovs.Visible) and (GridMovs.nQuantidadeSelecionada = 0) then begin
    DlgMsg.ShowMsg(2300);
    gravando := false;
    exit;
  end
  else if (GridAcerto.Visible) and (GridAcerto.nQuantidadeSelecionada = 0) then begin
    DlgMsg.ShowMsg(2300);
    gravando := false;
    Exit;
  end;

  {Confirmação}
  if DlgMsg.ShowMsg(2309) = 200 then
  begin
    gravando := false;
    exit;
  end;

  if not DMProjeto.IBT_Projeto.InTransaction then
    DMProjeto.IBT_Projeto.StartTransaction;
  try

    GridMovs.FirstSelected;
    pedido := 'V-' + inttostr(DMProjeto.Gen_ID('GENSIST_TIPOMOVIMENTO_1'));
    mSaida := DMProjeto.Gen_ID('GEN_IDGLOBAL');

    c_movimentos.DisableControls;
    C_Itens.DisableControls;
    C_Acerto.DisableControls;
    dm.C_Itens.DisableControls;

    GridAcerto.FirstSelected;
    pnBar.Visible := true;
    pbBar.Max := GridAcerto.nQuantidadeSelecionada;
    pbBar.Min := 0;
    pbBar.Position := 0;
    pbBar.Step := 10;
    contador := 10;
    sequenciaItem := 1;
    nTotalItens := 0;
    nTotalProdutos := 0;

    for m := 1 to GridAcerto.nQuantidadeSelecionada do begin
      if (C_AcertoQtdSelect.Value > 0) then
      begin
        C_Movimentos.Filtered := false;
        C_Itens.Filtered := false;
        C_Movimentos.Filter := '_icSelecionado = 1 and SAIDA in (' + C_AcertolistaMovimentos.AsString + ')';
        C_Itens.Filter := '_icSelecionado = 1 and icQtdMesclar > 0 and item = ' + C_AcertoITEM.AsString;
        C_Movimentos.Filtered := true;
        C_Itens.Filtered := true;
        C_Movimentos.First;
        sair := false;
        while not C_Movimentos.Eof do
        begin
          if sair then break;
          C_Itens.First;
          while not C_Itens.Eof do
          begin
            if C_Itens.RecordCount > 0 then
            begin
              JoinItemToOperation(C_AcertoITEM.Value);
              sair := true;
              break;
            end;
            C_Itens.Next;
          end;
          C_Movimentos.Next;
        end;
      end;
      GridAcerto.NextSelected;
      inc(sequenciaItem);
      if m = contador then
      begin
        pbBar.StepIt;
        contador := contador + 10;
        Application.ProcessMessages;
      end;
    end;
    Q_Aux.SQL.Clear;
    Q_Aux.SQL.Add('INSERT INTO SAIDAS (EMPRESA, SAIDA, PDV, NUMERO, DATA, FAVORECIDO, VENDEDOR, SITUACAO,');
    Q_Aux.SQL.Add('TIPOMOVIMENTO, BAIXAESTOQUE, CALCCOMISSAO, POSSUIENTREGA, IMPRESSO, CAIXA, TIPOPADRAO, CAMPO01, ');
    Q_Aux.SQL.Add('CAMPO02, CAMPO03, CAMPO04, TIPOENTREGA, LOCALENTREGA, DESCONTO, FRETE, OUTRASDESPESAS,');
    Q_Aux.SQL.Add('PJUROS, JUROS, OBS, TOTALITENS, TOTALITENS123, TOTALPRODUTOS, TOTAL, CUBAGEMTOTAL) values (');
    Q_Aux.SQL.Add(':EMPRESA, :SAIDA, :PDV, :NUMERO, :DATA, :FAVORECIDO, :VENDEDOR, :SITUACAO,');
    Q_Aux.SQL.Add(':TIPOMOVIMENTO, :BAIXAESTOQUE, :CALCCOMISSAO, :POSSUIENTREGA, :IMPRESSO, :CAIXA, :TIPOPADRAO, :CAMPO01, ');
    Q_Aux.SQL.Add(':CAMPO02, :CAMPO03, :CAMPO04, :TIPOENTREGA, :LOCALENTREGA, :DESCONTO, :FRETE, :OUTRASDESPESAS,');
    Q_Aux.SQL.Add(':PJUROS, :JUROS, :OBS, :TOTALITENS, :TOTALITENS123, :TOTALPRODUTOS, :TOTAL, :CUBAGEMTOTAL);');
    Q_Aux.ParamByName('EMPRESA').AsInteger := C_AcertoEMPRESA.AsInteger;
    Q_Aux.ParamByName('SAIDA').AsInteger := mSaida;
    Q_Aux.ParamByName('PDV').AsInteger := C_AcertoPDV.AsInteger;
    Q_Aux.ParamByName('NUMERO').AsString := Pedido;
    Q_Aux.ParamByName('DATA').Asdatetime := now;
    Q_Aux.ParamByName('FAVORECIDO').AsInteger := DM.C_TabelaFAVORECIDO.Value;
    //Q_Aux.ParamByName('PLANOPAGAMENTO').AsInteger := -1;
    Q_Aux.ParamByName('VENDEDOR').AsInteger := DM.C_TabelaVENDEDOR.Value; ;
    Q_Aux.ParamByName('SITUACAO').AsString := 'N';
    Q_Aux.ParamByName('TIPOMOVIMENTO').AsInteger := 1;
    Q_Aux.ParamByName('BAIXAESTOQUE').AsString := 'S';
    Q_Aux.ParamByName('CALCCOMISSAO').AsString := 'S';
    Q_Aux.ParamByName('POSSUIENTREGA').AsString := 'N';
    Q_Aux.ParamByName('IMPRESSO').AsString := 'N';
    Q_Aux.ParamByName('CAIXA').AsInteger := 1;
    Q_Aux.ParamByName('TIPOPADRAO').AsInteger := 1;

    Q_Aux.ParamByName('CAMPO01').AsString := C_Movimentos.FieldByName('Campo01').AsString;
    Q_Aux.ParamByName('CAMPO02').AsString := C_Movimentos.FieldByName('Campo02').AsString;
    Q_Aux.ParamByName('CAMPO03').AsString := C_Movimentos.FieldByName('Campo03').AsString;
    Q_Aux.ParamByName('CAMPO04').AsString := C_Movimentos.FieldByName('Campo04').AsString;
    Q_Aux.ParamByName('TIPOENTREGA').AsInteger := C_Movimentos.FieldByName('TipoEntrega').AsInteger;
    Q_Aux.ParamByName('LOCALENTREGA').AsInteger := C_Movimentos.FieldByName('LocalEntrega').AsInteger;
    Q_Aux.ParamByName('Desconto').asCurrency := C_Movimentos.FieldByName('Desconto').asCurrency;
    Q_Aux.ParamByName('Frete').asCurrency := C_Movimentos.FieldByName('Frete').asCurrency;
    Q_Aux.ParamByName('OutrasDespesas').asCurrency := C_Movimentos.FieldByName('OutrasDespesas').asCurrency;
    Q_Aux.ParamByName('PJuros').asCurrency := C_Movimentos.FieldByName('PJuros').asCurrency;
    Q_Aux.ParamByName('Juros').asCurrency := C_Movimentos.FieldByName('Juros').asCurrency;
    Q_Aux.ParamByName('OBS').AsString := C_Movimentos.FieldByName('OBS').asString;
    Q_Aux.ParamByName('TOTALITENS').AsCurrency := nTotalItens;
    Q_Aux.ParamByName('TOTALITENS123').AsCurrency := nTotalItens;
    Q_Aux.ParamByName('TOTALPRODUTOS').AsCurrency := nTotalItens;
    Q_Aux.ParamByName('TOTAL').AsCurrency := nTotalItens;
    Q_Aux.ParamByName('CUBAGEMTOTAL').AsCurrency := 0.00 ;


    Q_Aux.ExecSQL;

    DMProjeto.IBT_Projeto.Commit;
    showmessage('Pedido "'+Pedido+'" gerado com sucesso!');
    ModalResult := mrOk;
  except
    on E: Exception do
    begin
      DMProjeto.IBT_Projeto.Rollback;
      showmessage('Erro ao gerar o pedido!'+#13#10+E.Message);
    end;
  end;
  pnBar.Visible := false;

  c_movimentos.EnableControls;
  C_Itens.EnableControls;
  C_Acerto.EnableControls;
  dm.C_Itens.EnableControls;

  Screen.Cursor := crDefault;
end;

procedure TDlgMescAcertSaida.JoinItemToOperation;
var
  nSaidaItem: integer;
begin
  {Ao entrar nesta função, tanto C_Movimentos como C_Itens já estão posicionados corretamente}
  DM.bMesclando := true;

  Q_Aux.SQL.Clear;
  Q_Aux.SQL.Add('INSERT INTO SAIDASITENS (SUBTOTALITEM, EMPRESA, SAIDA, SAIDAITEM, PDV, SEQUENCIA, ITEM, DESCRICAO, QUANTIDADE, PRECO, UNIDADE,');
  Q_Aux.SQL.Add('MESCLADO, FATOR, USOTIPOITEM, COLUNA1, COLUNA2, COLUNA3, COLUNA4, HASCHILDREN, BAIXAESTOQUE ) values (');
  Q_Aux.SQL.Add(':SUBTOTALITEM, :EMPRESA, :SAIDA, :SAIDAITEM, :PDV, :SEQUENCIA, :ITEM, :DESCRICAO, :QUANTIDADE, :PRECO, :UNIDADE,');
  Q_Aux.SQL.Add(':MESCLADO, :FATOR, :USOTIPOITEM, :COLUNA1, :COLUNA2, :COLUNA3, :COLUNA4, :HASCHILDREN, :BAIXAESTOQUE);');


  nSaidaItem := DMProjeto.Gen_ID('GEN_IDGLOBAL');
  DM.C_Itens.Append;
  Q_Aux.ParamByName('EMPRESA').AsInteger := C_AcertoEMPRESA.Value;
  Q_Aux.ParamByName('SAIDA').AsInteger := mSaida;
  Q_Aux.ParamByName('SAIDAITEM').AsInteger := nSaidaItem;
  Q_Aux.ParamByName('PDV').AsInteger := C_AcertoPDV.Value;
  Q_Aux.ParamByName('SEQUENCIA').AsInteger := sequenciaItem;
  Q_Aux.ParamByName('ITEM').AsInteger := C_AcertoITEM.Value;
  Q_Aux.ParamByName('DESCRICAO').AsString := C_AcertoDESCRICAO.Value;
  Q_Aux.ParamByName('QUANTIDADE').AsFloat := C_AcertoQtdSelect.Value;
  Q_Aux.ParamByName('SUBTOTALITEM').AsFloat := C_AcertoQtdSelect.Value * C_ItensPRECO.Value;
  nTotalItens := nTotalItens + C_AcertoQtdSelect.Value * C_ItensPRECO.Value;
  nTotalProdutos := nTotalProdutos + C_AcertoQtdSelect.Value * C_ItensPRECO.Value;
  Q_Aux.ParamByName('PRECO').AsFloat := C_ItensPRECO.Value;
  Q_Aux.ParamByName('UNIDADE').AsString := C_ItensUNIDADE.Value;
  Q_Aux.ParamByName('MESCLADO').AsString := 'S';
  Q_Aux.ParamByName('FATOR').AsFloat := C_ItensFATOR.Value;
  Q_Aux.ParamByName('USOTIPOITEM').AsString := C_ItensUSOTIPOITEM.AsString;
  Q_Aux.ParamByName('COLUNA1').AsString := C_ItensCOLUNA1.AsString;
  Q_Aux.ParamByName('COLUNA2').AsString := C_ItensCOLUNA2.AsString;
  Q_Aux.ParamByName('COLUNA3').AsString := C_ItensCOLUNA3.AsString;
  Q_Aux.ParamByName('COLUNA4').AsString := C_ItensCOLUNA4.AsString;
  Q_Aux.ParamByName('HASCHILDREN').AsString := C_ItensHASCHILDREN.AsString;
  Q_Aux.ParamByName('BAIXAESTOQUE').AsString := 'N';
  Q_Aux.ExecSQL;

  C_Movimentos.First;
  while not C_Movimentos.Eof do
  begin
    C_Itens.First;
    while not C_Itens.Eof do
    begin
      Q_Aux.SQL.Clear;
      Q_Aux.SQL.Add('INSERT INTO SAIDASITENSMESCLA (Empersa, PDV, SAIDAITEMMESCLA,SAIDAITEM, SAIDAITEM_ORIGINAL,SAIDA_ORIGINAL, Quantidade,');
      Q_Aux.SQL.Add('QtdMaxima, Fechar_Original,Unidade, Fator) values (');
      Q_Aux.SQL.Add(':Empersa, :PDV, :SAIDAITEMMESCLA, :SAIDAITEM, :SAIDAITEM_ORIGINAL,:SAIDA_ORIGINAL, :Quantidade,');
      Q_Aux.SQL.Add(':QtdMaxima, :Fechar_Original,:Unidade, :Fator);');

          {Adicionando em C_Mesclagens}
      with Q_Aux do begin
        ParamByName('SAIDAITEMMESCLA').asInteger := DMProjeto.Gen_ID('GEN_IDGLOBAL');
        ParamByName('SAIDAITEM_ORIGINAL').asInteger := C_ItensSAIDAITEM.Value;
        ParamByName('SAIDAITEM').asInteger := nSaidaItem;
        ParamByName('SAIDA_ORIGINAL').asInteger := C_ItensSAIDA.Value;
        ParamByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
        ParamByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
        ParamByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        ParamByName('Unidade').asString := C_ItensUnidade.value;
        ParamByName('Fator').asFloat := C_ItensFator.value;
        ParamByName('PDV').AsString := InttoStr(C_AcertoPDV.Value);
        ParamByName('Empersa').AsInteger := C_AcertoEMPRESA.Value;
        ExecSQL;
      end;
      C_Itens.Next;
    end;
    C_Movimentos.Next;
  end;

end;


procedure TDlgMescAcertSaida.dbgItensTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdFaturada.asFloat) > 0;
end;

procedure TDlgMescAcertSaida.gridAcertoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: string; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if AColumn = gridAcertoQtddevolvida then AColor := clYellow;
end;

procedure TDlgMescAcertSaida.C_AcertoQtddevolvidaValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsCurrency > C_AcertoQtdvalidar.Value) then begin
    DlgMsg.ShowMsg(2189);
    raise Exception.Create('@@');
  end;
  if gravando = false then C_AcertoQtdSelect.Value := Sender.AsCurrency;
end;

end.





{
Where 	s.Situacao = 'N'  and KK and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)

}

}

}

}

}

}

}

}

}

}

}