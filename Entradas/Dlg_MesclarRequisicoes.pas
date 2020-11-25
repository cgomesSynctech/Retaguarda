unit Dlg_MesclarRequisicoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Entradas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, Placemnt, BTOdeum;

type
  TDlgMesclarRequisicoes = class(TFrmModeloCadastros)
    GridMovs: TTS_QDBGrid;
    Q_Movimentos: TIBQuery;
    P_Movimentos: TDataSetProvider;
    C_Movimentos: TClientDataSet;
    C_MovimentosDS: TDataSource;
    GridMovsFAVORECIDO: TdxDBGridMaskColumn;
    GridMovsDATA: TdxDBGridDateColumn;
    GridMovsSITUACAO: TdxDBGridMaskColumn;
    GridMovsNOME: TdxDBGridMaskColumn;
    GridMovsDESCTIPOMOV: TdxDBGridMaskColumn;
    GridMovsDESCTIPOPADRAO: TdxDBGridMaskColumn;
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
    pBar: TdxfProgressBar;
    C_MovimentosQtdItens: TIntegerField;
    GridMovsQtdItensSel: TdxDBGridColumn;
    GridMovsNumero: TdxDBGridColumn;
    dbgItensCodigo: TdxDBGridColumn;
    dbgItensReferencia: TdxDBGridColumn;
    ppmGridItens: TTS_PopupMenu;
    Q_Filhos: TIBQuery;
    C_MovimentosENTRADA: TIntegerField;
    C_MovimentosDATA: TDateField;
    C_MovimentosFAVORECIDO: TIntegerField;
    C_MovimentosOBS: TStringField;
    C_MovimentosTAX: TIntegerField;
    C_MovimentosPERCENTUALTAX: TBCDField;
    C_MovimentosDESCONTO: TBCDField;
    C_MovimentosPLANOPAGAMENTO: TIntegerField;
    C_MovimentosFRETE: TBCDField;
    C_MovimentosTIPOENTREGA: TIntegerField;
    C_MovimentosDATAENTREGA: TDateField;
    C_MovimentosIMPORTACAO: TIntegerField;
    C_MovimentosSITUACAO: TStringField;
    C_MovimentosNUMERO: TStringField;
    C_MovimentosPREVISAOENTREGA: TDateField;
    C_MovimentosTIPOMOVIMENTO: TIntegerField;
    C_MovimentosTIPOPADRAO: TIntegerField;
    C_MovimentosDATACANCELAMENTO: TDateField;
    C_MovimentosFUNCCANCELAMENTO: TIntegerField;
    C_MovimentosMOTIVOCANCELAMENTO: TStringField;
    C_MovimentosBAIXAESTOQUE: TStringField;
    C_MovimentosSTATUS: TStringField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosPOSSUITAX: TStringField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    C_MovimentosLOCALCLIENTE: TIntegerField;
    C_MovimentosINCLUIDESCONTO: TStringField;
    C_MovimentosATUALIZACUSTO: TStringField;
    C_MovimentosATUALIZAPRECO: TStringField;
    C_MovimentosATUALIZAPRECOMANUAL: TStringField;
    C_MovimentosSTATUSANTERIOR: TStringField;
    C_MovimentosUSUARIO: TStringField;
    C_MovimentosNOME: TStringField;
    C_MovimentosDESCTIPOMOV: TStringField;
    C_MovimentosDESCTIPOPADRAO: TStringField;
    C_ItensENTRADAITEM: TIntegerField;
    C_ItensENTRADA: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensSITUACAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_ItensORDEM: TIntegerField;
    C_ItensCOLUNA1: TStringField;
    C_ItensCOLUNA2: TStringField;
    C_ItensCOLUNA3: TStringField;
    C_ItensCOLUNA4: TStringField;
    C_ItensCLIENTEREF: TIntegerField;
    C_ItensREFERENCIA: TStringField;
    C_ItensSAIDAITEM: TIntegerField;
    C_ItensNAOCOBRAR: TStringField;
    C_ItensANALISADO: TStringField;
    C_ItensATUALIZOUCUSTO: TStringField;
    C_ItensATUALIZOUPRECO: TStringField;
    C_ItensMESCLADO: TStringField;
    C_ItensSTATUS: TStringField;
    C_ItensTIPOITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    dbgItensColuna1: TdxDBGridColumn;
    GridMovsStatus: TdxDBGridCheckColumn;
    C_ItensNUMEROLOTE: TStringField;
    C_ItensVALIDADE: TDateField;
    C_ItensUNIDADE: TStringField;
    C_MovimentosEMPRESA: TIntegerField;
    C_MovimentosPDV: TIntegerField;
    C_MovimentosTOTAL: TFloatField;
    C_MovimentosIMPOSTO: TFloatField;
    C_MovimentosTOTALITENS: TFloatField;
    C_MovimentosOUTRASDESPESAS: TFloatField;
    C_MovimentosJUROS: TFloatField;
    C_MovimentosPJUROS: TFloatField;
    C_MovimentosCALCCOMISSAO: TStringField;
    C_MovimentosPOSSUIENTREGA: TStringField;
    C_MovimentosTOTALITENS123: TFloatField;
    C_MovimentosDESCONTOITENS: TFloatField;
    C_MovimentosTOTALPGTOS: TFloatField;
    C_MovimentosBASEIMPOSTO: TFloatField;
    C_MovimentosBASEINCLUSO: TFloatField;
    C_MovimentosIMPOSTO_INCLUSO: TFloatField;
    C_MovimentosREDUCOESBASE: TFloatField;
    C_MovimentosACRESCIMOSBASE: TFloatField;
    C_MovimentosVOLUMES: TFloatField;
    C_MovimentosALMOXPADRAO: TIntegerField;
    C_MovimentosUFORIGEM: TStringField;
    C_MovimentosCFOPNOTA: TStringField;
    C_MovimentosCFOPENTRADA: TStringField;
    C_MovimentosSERIENOTA: TStringField;
    C_MovimentosVALORSEGURO: TFloatField;
    C_MovimentosBASECALCICMS: TFloatField;
    C_MovimentosVALORICMS: TFloatField;
    C_MovimentosBASECALCSUBST: TFloatField;
    C_MovimentosVALORICMSSUBST: TFloatField;
    C_MovimentosVALORIPI: TFloatField;
    C_MovimentosPESOBRUTO: TFloatField;
    C_MovimentosPESOLIQUIDO: TFloatField;
    C_MovimentosALIQICMSCOMPRA: TBCDField;
    C_MovimentosFRETEINCLUSO: TStringField;
    C_MovimentosVALORISENTAS: TFloatField;
    C_MovimentosCONSIDERARDESCONTO: TStringField;
    C_MovimentosMODELO: TStringField;
    C_MovimentosVALOROUTRASICMS: TFloatField;
    C_MovimentosVALORISENTASIPI: TFloatField;
    C_MovimentosVALOROUTRASIPI: TFloatField;
    C_MovimentosPOSSUIICMS: TStringField;
    C_MovimentosCONTABILIZAICMS: TStringField;
    C_MovimentosCIF_FOB: TStringField;
    C_MovimentosPOSSUIIPI: TStringField;
    C_MovimentosDATANOTA: TDateField;
    C_MovimentosIMPRESSO: TStringField;
    C_MovimentosNOTAORIGEM: TIntegerField;
    C_MovimentosTRANSPORTADORA: TIntegerField;
    C_MovimentosPLACAVEIC: TStringField;
    C_MovimentosVENDEDOR: TIntegerField;
    C_MovimentosDESCESPECIE: TStringField;
    C_MovimentosDESCMARCA: TStringField;
    C_MovimentosDESCNUMERO: TStringField;
    C_MovimentosFRETEEXTERNO: TBCDField;
    C_MovimentosINDEXADOR: TIntegerField;
    C_MovimentosFONTE: TStringField;
    C_MovimentosBAIXAESTOQUEFISCAL: TStringField;
    C_MovimentosESPECIE: TStringField;
    C_MovimentosHORA: TTimeField;
    C_MovimentosDETALHEIMPORTACAO: TIntegerField;
    C_MovimentosCHAVENFE: TStringField;
    C_MovimentosRATEAROUTRASDESPESAS: TStringField;
    C_MovimentosORIGEMREPLIC: TStringField;
    C_ItensEMPRESA: TIntegerField;
    C_ItensPDV: TIntegerField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensPRECO: TFloatField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    C_ItensQTDRECEBIDA: TBCDField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensRATEIODESCONTO: TFloatField;
    C_ItensCUSTOMEDIO_ANT: TFloatField;
    C_ItensCUSTOCONTABIL_ANT: TFloatField;
    C_ItensSEMLUCRO: TFloatField;
    C_ItensLUCRO: TFloatField;
    C_ItensINDICELUCRO: TFloatField;
    C_ItensNOVOPRECO: TFloatField;
    C_ItensFRETEPROPORCIONAL: TFloatField;
    C_ItensCODIGOFORN: TStringField;
    C_ItensVENDEDOR: TIntegerField;
    C_ItensFATOR: TFloatField;
    C_ItensESTOQUE_ANT: TBCDField;
    C_ItensBAIXAESTOQUE: TStringField;
    C_ItensALMOXARIFADO: TIntegerField;
    C_ItensBASECALCICMSPROD: TFloatField;
    C_ItensIPI: TFloatField;
    C_ItensALIQICMS: TFloatField;
    C_ItensCST: TStringField;
    C_ItensREDUCAOCST: TFloatField;
    C_ItensCFOPENTRADA: TStringField;
    C_ItensDESCONTO: TFloatField;
    C_ItensBASECALCSUBSTPROD: TFloatField;
    C_ItensVALORIPIPROD: TFloatField;
    C_ItensTVA: TFloatField;
    C_ItensSITUACAOECF: TStringField;
    C_ItensVALORICMSPROD: TFloatField;
    C_ItensVALORISENTASPROD: TFloatField;
    C_ItensVALORICMSSUBSTPROD: TFloatField;
    C_ItensQTDDEVOLVIDO: TFloatField;
    C_ItensQTDACERTADO: TFloatField;
    C_ItensPDESCONTO: TFloatField;
    C_ItensCOMPENSACAOCUSTO: TFloatField;
    C_ItensCFOPCST: TStringField;
    C_ItensFATORPRECO: TFloatField;
    C_ItensPRECOVENDA: TBCDField;
    C_ItensBAIXAESTOQUEFISCAL: TStringField;
    C_ItensIDTRIBFEDERAL: TIntegerField;
    C_ItensQUANTIDADEVOLUME: TFloatField;
    C_ItensCSTPISCOFINS: TStringField;
    C_ItensALIQPIS: TFloatField;
    C_ItensALIQCOFINS: TFloatField;
    C_ItensVALORPISPROD: TFloatField;
    C_ItensVALORCOFINSPROD: TFloatField;
    C_ItensCSTIPI: TStringField;
    C_ItensALIQIPI: TFloatField;
    C_ItensFABRICACAO: TDateField;
    C_ItensV_BCII: TFloatField;
    C_ItensV_DESPADUII: TFloatField;
    C_ItensV_II: TFloatField;
    C_ItensV_IOFII: TFloatField;
    C_ItensRATEIODESPESAS: TFloatField;
    C_ItensRATEIOFRETE: TFloatField;
    C_ItensFRETE: TFloatField;
    C_ItensSEGURO: TFloatField;
    C_ItensOUTRASDESPESAS: TFloatField;
    C_ItensRATEIOSEGURO: TFloatField;
    C_ItensORIGEMREPLIC: TStringField;
    C_ItensOLDQTDRECEBIDA: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure Q_MovimentosBeforeOpen(DataSet: TDataSet);
    procedure GridMovsTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dbgItensTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure GridMovsItensCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dbgItensEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure dbgItensEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure C_ItensicQtdMesclarValidate(Sender: TField);
    procedure dbgItensTS_OnSelection(Sender: TObject; bSelected: Boolean;
      var bCanSelect: Boolean);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
    sFavs : String;
    bDeleteItens : boolean;
    
    procedure JoinItemToOperation( nIDItem : Integer );
    procedure AtualizarSelecionados;

  public
    { Public declarations }
    sTipos : String;
    DM : TDMEntradas;

    GridItens : TTS_QDBGrid;
  end;

var
  DlgMesclarRequisicoes: TDlgMesclarRequisicoes;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMesclarRequisicoes.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;

  if DM.C_TabelaFavorecido.asInteger = 0 then
    btLimpar.Enabled := false
  else
    btLimpar.Enabled := true;

  sFavs := DM.C_TabelaFavorecido.asString;
  bDeleteItens := false;

  try
    C_Movimentos.Open;

    DM.C_Itens.DisableControls;

    DM.C_Itens.First;
    while not DM.C_Itens.EOF do begin
      if DM.C_Itens.FieldByName('Mesclado').asString = 'S' then begin
        DM.C_Mesclagens.First;
        while not DM.C_Mesclagens.EOF do begin
          if C_Movimentos.Locate('ENTRADA', DM.C_Mesclagens.FieldByName('ENTRADA_ORIGINAL').asInteger, []) and
             C_Itens.Locate('ENTRADAITEM', DM.C_Mesclagens.FieldByName('ENTRADAITEM_ORIGINAL').asInteger, []) then begin
            bDeleteItens := true;
            if DM.bAlteracao and (DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat > 0) then begin
              C_Itens.Edit;
              C_ItensQtdRecebida.asFloat := C_ItensQtdRecebida.asFloat - DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat;
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
  finally
    Screen.Cursor := crDefault;
    DM.C_Itens.EnableControls;
  end;

  GridMovs.ExpandirGrupos;

end;

procedure TDlgMesclarRequisicoes.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
  sEntradasOriginais : String;
begin
  inherited;
  {Substituindo Tipo Padrao e Favorecido}
  if not DM.bAlteracao then
    Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''S'', ''D'') ')
  else begin
    sEntradasOriginais := '';
    with DM.Q_SQL do begin
      Close;
      SQL.Text := 'Select distinct ENTRADA_Original from entradasitensmescla '+
                  'where entradaitem in (select entradaitem from entradasitens where entrada = '+ DM.C_TabelaIDMestre.asString+') ';
      Open;
      while not eof do begin
        sEntradasOriginais := CExp(sEntradasOriginais,',') + FieldByName('Entrada_Original').asString;
        Next;
      end;

      Close;

    end;

    if sEntradasOriginais <> '' then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' (e.Status in (''S'', ''D'') or e.Entrada in ('+sEntradasOriginais+') ) ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''S'', ''D'') ');

  end;

  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);


end;

procedure TDlgMesclarRequisicoes.GridMovsTS_OnAfterSelection(
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

end;

procedure TDlgMesclarRequisicoes.dbgItensTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;

  if (C_ItensTipoItem.Value in [1,2,3]) then begin
    C_Itens.Edit;

    if bSelected then
      C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdRecebida.Value
    else
      C_ItensicQtdMesclar.Value := 0;

    C_Itens.Post;

    dbgItens.TS_SelectedColumn := 'icQtdMesclar';
  end;

end;

procedure TDlgMesclarRequisicoes.GridMovsItensCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMesclarRequisicoes.AtualizarSelecionados;
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


end;


procedure TDlgMesclarRequisicoes.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var nTipo : Integer;
begin
  inherited;
  if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then begin
    nTipo := dbgItens.GetFieldValue( Node, 'TipoItem', 1 );
    Allow := nTipo in [1,2,3];
  end;
end;

procedure TDlgMesclarRequisicoes.dbgItensEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then begin
    if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node,'icQtdMesclar',0, true),0) > 0) then
      dbgItens.Selecionar;
  end;
end;

procedure TDlgMesclarRequisicoes.C_ItensicQtdMesclarValidate(
  Sender: TField);
begin
  inherited;
  if (C_ItensItem.Value > 0) and (C_ItensTipoItem.Value in [1,2,3]) and
     (C_ItensQuantidade.Value > 0) and (Sender.asFloat > 0) and 
     (Sender.asFloat - (C_ItensQuantidade.Value - C_ItensQtdRecebida.Value) > 0.01) then begin
    DlgMsg.ShowMsg(2189);
    raise Exception.Create('@@');
  end;
end;

procedure TDlgMesclarRequisicoes.btGravarClick(Sender: TObject);
var
  m, i : Integer;
  nDesconto, nFrete, nDespesa, nPJuros, nJuros : Currency;
  nPlano : Integer;
  sMessage : String;
begin
  inherited;
  if C_Movimentos.State <> dsBrowse then
    C_Movimentos.Post;

  { Mesclar os Itens escolhidos na invoice }
  if GridMovs.nQuantidadeSelecionada = 0 then begin
    DlgMsg.ShowMsg(2300);
    exit;
  end;

  {Confirmação}
  if DlgMsg.ShowMsg(2307) = 200 then
    exit;

  {Iniciando processo de mesclagem}
  pBar.Position := 0;
  pnBar.Visible := true;

  pBar.Max := Trunc(GridMovsQtdItensSel.SummaryFooterValue);

  if bDeleteItens then begin
    pBar.Max := pBar.Max + 1;
    with DM.C_Itens do begin
      First;
      try
        DisableControls;
        while not EOF do begin
          if FieldByName('Mesclado').asString = 'S' then
            Delete  {Verificar se os itens filhos são deletados e se Entradassitensmescla também}
          else
            Next;
        end;
      finally
        EnableControls;
      end;
    end;
    pBar.Position := 1;
  end;


  GridMovs.FirstSelected;

  with DM do begin
    C_Tabela.Edit;
    C_TabelaCAMPO01.asVariant := C_Movimentos.FieldByName('Campo01').Value;
    C_TabelaCAMPO02.asVariant := C_Movimentos.FieldByName('Campo02').Value;
    C_TabelaCAMPO03.asVariant := C_Movimentos.FieldByName('Campo03').Value;
    C_TabelaCAMPO04.asVariant := C_Movimentos.FieldByName('Campo04').Value;
//    C_TabelaTAX.asVariant     := C_Movimentos.FieldByName('Tax').Value;
//    C_TabelaPercentualTax.Value   := C_Movimentos.FieldByName('PercentualTax').asFloat;
    C_TabelaTIPOENTREGA.asVariant := C_Movimentos.FieldByName('TipoEntrega').Value;
    C_TabelaLOCALENTREGA.asVariant := C_Movimentos.FieldByName('LocalEntrega').Value;
//    C_TabelaDATAENTREGA.asVariant := C_Movimentos.FieldByName('DataEntrega').Value;
  end;

  nDesconto := C_Movimentos.FieldByName('Desconto').asCurrency;
  nFrete    := C_Movimentos.FieldByName('Frete').asCurrency;
  nDespesa  := C_Movimentos.FieldByName('OutrasDespesas').asCurrency;

  nPlano    := C_Movimentos.FieldByName('PlanoPagamento').asInteger;
  nPJuros   := C_Movimentos.FieldByName('PJuros').asCurrency;
  nJuros    := C_Movimentos.FieldByName('Juros').asCurrency;
  sMessage  := C_Movimentos.FieldByName('OBS').asString;


  for m := 1 to GridMovs.nQuantidadeSelecionada do begin
    dbgItens.FirstSelected;

    For i := 1 to dbgItens.nQuantidadeSelecionada do begin
      JoinItemToOperation(C_ItensEntradaItem.Value) ;
      pBar.Position := pBar.Position + 1;

      dbgItens.NextSelected;
    end;

    GridMovs.NextSelected;
  end;

  {Completando com mais dados o faturamento}
  try
    if GridMovs.nQuantidadeSelecionada = 1 then with DM do begin
      bFaturandoOperacao := true;

      C_TabelaDesconto.Value := nDesconto;
      C_TabelaFrete.Value := nFrete;
      C_TabelaOutrasDespesas.Value := nDespesa;
      C_TabelaJuros.Value := nJuros;
      C_TabelaOBS.Value := sMessage;

      if nPlano > 0 then begin
        C_PlanosPagamento.Locate('PlanoPagamento', nPlano, []);
        C_TabelaPlanoPagamento.Value := nPlano;
        C_TabelaPJuros.Value := nPJuros; //Não gera as Parcelas (bFaturandoOperacao = true).
      end;

      {***Parcelas da Operação - Mesclando}
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'Select * from DuplicatasAPagar where Compra = :E ';
      Q_SQL.Params[0].asInteger := C_MovimentosEntrada.Value;
      Q_SQL.Open;

      While not Q_SQL.EOF do begin
        C_Parcelas.Append;
        C_ParcelasParcela.asInteger := Q_SQL.FieldByName('Parcela').asInteger;

        //Data do Vencimento
        C_ParcelasVencimento.Value := Q_SQL.FieldByName('Vencimento').asDateTime;

        //Valor da Parcela
        C_ParcelasValor.asCurrency := Q_SQL.FieldByName('Valor').asCurrency;

        C_ParcelasCompetencia.Value := Q_SQL.FieldByName('Competencia').asDateTime;

        C_ParcelasJurosPlano.asCurrency := Q_SQL.FieldByName('JurosPlano').asCurrency;

        C_ParcelasDATAANTECIPACAO.asVariant := Q_SQL.FieldByName('DataAntecipacao').Value;
        C_ParcelasVALORDESCANTECIPADO.asCurrency := Q_SQL.FieldByName('ValorDescAntecipado').asCurrency;

        C_Parcelas.Post;

        Q_SQL.Next;
      end;
      Q_SQL.Close;
      
    end; //if uma operacao selecionada
  finally
    DM.bFaturandoOperacao := false;
  end;

  ModalResult := mrOk;
end;

procedure TDlgMesclarRequisicoes.JoinItemToOperation;
  Function ItemExatamenteIgual : Boolean;
  var
    nMatchFilhos, nFilhos, nFilhosExistente, nIDItemMatch : Integer;
  begin
    result := false;

    {Determinando se o Item é exatamente igual a um que já exista em DMEntradas.C_Itens}
    {Se o Item não existe em DM.C_Itens não precisa continuar}
    if not DM.C_Itens.Locate('ITEM;UNIDADE;MESCLADO', VarArrayOf([C_ItensItem.Value,C_ItensUNIDADE.Value,'S']), []) then
      exit;

    try
      {Se localizou faz-se um filtro para poder varrer todos os itens até encontrar um igual, ou não}
      DM.C_Itens.Filter := ' ITEM = '+ C_ItensItem.asString + ' and Mesclado = ''S'' ';
      DM.C_Itens.Filtered := true;

      {Se o item possui filhos, validar logo estes, pois a probabilidade de serem diferentes é maior}
      while not DM.C_Itens.EOF do begin
        nIDItemMatch := DM.C_ItensIDItem.Value;
        nMatchFilhos := 0;
        nFilhos := 0;
{        nFilhosExistente := DM.C_SaidasItensFilhos.RecordCount;
        if Q_Filhos.Active then with Q_Filhos do begin
          Last; //Para atualizar o RecordCount;
          nFilhos := RecordCount;

          First;
          while not EOF do begin
            if DM.C_SaidasItensFilhos.Locate('ITEM', Q_Filhos.FieldByName('ITEM').asInteger, []) and
               (DM.C_SaidasItensFilhosQuantidade.asFloat = Q_Filhos.FieldByName('Quantidade').asFloat) then
              inc(nMatchFilhos)
            else
              Break;

            Next;
          end;
        end;

        {Uma vez que os filhos corresponderam, é preciso verificar o item principal}
        if (nMatchFilhos = nFilhos) and (nFilhos = nFilhosExistente) then begin
          if (C_ItensPreco.Value = DM.C_ItensPreco.Value) and (C_ItensDESCRICAO.Value = DM.C_ItensDESCRICAO.Value) and
             (C_ItensUSOTIPOITEM.Value = DM.C_ItensUSOTIPOITEM.Value) then
            result := true;
        end;

        DM.C_Itens.Next;
      end; //while Filter
    finally
      if DM.C_Itens.Filtered then begin
        DM.C_Itens.Filtered := false;
        DM.C_Itens.Filter := '';
        DM.C_Itens.Locate('IDITEM', nIDITEMMatch, []); //Pois o Filtered False move o record para o primeiro;
      end;
    end;

  end;

  procedure CopiarItem;
  begin
    DM.C_ItensMESCLADO.Value       := 'S';

    DM.C_ItensUnidade.asVariant    := C_ItensUnidade.asVariant;
    DM.C_ItensFator.Value          := C_ItensFator.Value;

    DM.C_ItensPreco.Value          := C_ItensPreco.Value;
    DM.C_ItensQuantidade.Value     := C_ItensicQtdMesclar.Value;

    DM.C_ItensDESCRICAO.Value      := C_ItensDESCRICAO.Value;
    DM.C_ItensUSOTIPOITEM.asVariant:= C_ItensUSOTIPOITEM.asVariant;

    DM.C_ItensCOLUNA1.asVariant    := C_ItensCOLUNA1.asVariant;
    DM.C_ItensCOLUNA2.asVariant    := C_ItensCOLUNA2.asVariant;
    DM.C_ItensCOLUNA3.asVariant    := C_ItensCOLUNA3.asVariant;
    DM.C_ItensCOLUNA4.asVariant    := C_ItensCOLUNA4.asVariant;

    DM.C_ItensClienteRef.asVariant := C_ItensClienteRef.asVariant;
    DM.C_ItensHASCHILDREN.Value    := C_ItensHASCHILDREN.Value;

    DM.C_ItensVALIDADE.asVariant   := C_ItensVALIDADE.asVariant;
    DM.C_ItensNUMEROLOTE.asVariant := C_ItensNUMEROLOTE.asVariant;
    {Copiando os Filhos
    if (DM.C_ItensHASCHILDREN.VAlue = 'S') and (Q_Filhos.Active) then begin
      Q_Filhos.First;
      DM.bPopulando := true;  // para não ocorrer o change.
      while not Q_Filhos.EOF do begin
        DM.C_SaidasItensFilhos.Append;
        DM.C_SaidasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;

        DM.C_SaidasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
        DM.C_SaidasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
        DM.C_SaidasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
        DM.C_SaidasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
        DM.C_SaidasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;

        DM.C_SaidasItensFilhos.Post;

        Q_Filhos.Next;
      end;
      DM.bPopulando := False;
    end;
    }

  end;

begin
  {Ao entrar nesta função, tanto C_Movimentos como C_Itens já estão posicionados corretamente}
  DM.bMesclando := true;

  try
    {Capturando os Itens-Filhos (se existir) para o Item que será mesclado}
    Q_Filhos.Close;
    if C_ItensHasChildren.Value = 'S' then begin
      Q_Filhos.Params[0].asInteger := nIDITem;
      Q_Filhos.Open;
    end;

    {Verificando se o Item já existe em GridItens - se existe, o sistema irá verificar se é exatamente igual;
     caso seja, será adicionada a quantidade apenas, caso não seja, será adicionado novo item.}
    if ItemExatamenteIgual then begin  //Já posiciona DM.C_Itens no item que será adicionado
      {Adicionando quantidade}
      DM.C_Itens.Edit;
      DM.C_ItensQuantidade.Value := DM.C_ItensQuantidade.Value + C_ItensicQtdMesclar.Value;
      DM.C_Itens.Post;

      {Adicionando em C_Mesclagens}
      with DM.C_Mesclagens do begin
        Append;
        FieldByName('ENTRADAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('ENTRADA_ORIGINAL').asInteger := C_ItensEntrada.Value;
        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdRecebida.Value;
        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdRecebida.Value;
        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Unidade').asString := C_ItensUnidade.value;
        FieldByName('Fator').asFloat := C_ItensFator.value;
        Post;
      end;
      end //exatamenteigual;
    else begin //Item é diferente;
      DM.C_Itens.Append;
      // Setando antes devido à multi-unidade...
      DM.C_ItensITEM.Value := C_ItensITEM.Value;
      DM.C_ItensUNIDADE.Value := C_ItensUNIDADE.Value;
      DM.C_ItensMESCLADO.Value := 'S';
      //
      GridItens.TS_ID := C_ItensITEM.Value;
      CopiarItem;

      DM.C_Itens.Post;

      {Adicionando em C_Mesclagens}
      with DM.C_Mesclagens do begin
        Append;
        FieldByName('ENTRADAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('ENTRADA_ORIGINAL').asInteger := C_ItensENTRADA.Value;
        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdRecebida.Value;
        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdRecebida.Value;
        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Unidade').asString := C_ItensUnidade.value;
        FieldByName('Fator').asFloat := C_ItensFator.value;
        Post;
      end;

    end;
  finally
    DM.bMesclando := false;
  end;

end;


procedure TDlgMesclarRequisicoes.dbgItensTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdRecebida.asFloat) > 0;
end;

procedure TDlgMesclarRequisicoes.btLimparClick(Sender: TObject);
var
  Q_Fornecs : TIBQuery;
begin
  inherited;
  if DM.C_TabelaFavorecido.asInteger = 0 then
    exit;
    

  {Selecionando todos os itens fornecidos pelo fornecedor}
  Q_Fornecs := TIBQuery.Create(self);
  Q_Fornecs.DataBase := Q_Movimentos.DataBase;
  Q_Fornecs.Transaction := Q_Movimentos.Transaction;

  Q_Fornecs.SQL.Text := 'Select * from ItensForn where Item = :I and Fornecedor = ' + DM.C_TabelaFavorecido.asString;

  C_Movimentos.First;
  while not C_Movimentos.EOF do begin
    C_Itens.First;
    while not C_Itens.EOF do begin
      Q_Fornecs.Close;
      Q_Fornecs.Params[0].asInteger := C_ItensItem.asInteger;
      Q_Fornecs.Open;

      if Q_Fornecs.RecordCount > 0 then
        dbgItens.SelecionarLinha;

      C_Itens.Next;
    end;

    AtualizarSelecionados;

    C_Movimentos.Next;
  end;

end;

end.





{
Where 	s.Situacao = 'N'  and KK and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)

}