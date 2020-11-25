unit Dlg_MescAcertConsig;

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
  TDlgMescAcertConsig = class(TFrmModeloCadastros)
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
    C_MovimentosIMPOSTO: TBCDField;
    C_MovimentosOUTRASDESPESAS: TBCDField;
    C_MovimentosJUROS: TBCDField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosPJUROS: TBCDField;
    C_MovimentosPOSSUITAX: TStringField;
    C_MovimentosCALCCOMISSAO: TStringField;
    C_MovimentosPOSSUIENTREGA: TStringField;
    C_MovimentosTOTALITENS123: TBCDField;
    C_MovimentosDESCONTOITENS: TBCDField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    C_MovimentosLOCALCLIENTE: TIntegerField;
    C_MovimentosINCLUIDESCONTO: TStringField;
    C_MovimentosATUALIZACUSTO: TStringField;
    C_MovimentosATUALIZAPRECO: TStringField;
    C_MovimentosATUALIZAPRECOMANUAL: TStringField;
    C_MovimentosSTATUSANTERIOR: TStringField;
    C_MovimentosUSUARIO: TStringField;
    C_MovimentosTOTALPGTOS: TBCDField;
    C_MovimentosNOME: TStringField;
    C_MovimentosDESCTIPOMOV: TStringField;
    C_MovimentosDESCTIPOPADRAO: TStringField;
    C_ItensENTRADAITEM: TIntegerField;
    C_ItensENTRADA: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensQUANTIDADE: TBCDField;
    C_ItensPRECO: TFloatField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensSITUACAO: TStringField;
    C_ItensQTDRECEBIDA: TBCDField;
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
    C_ItensRATEIODESCONTO: TBCDField;
    C_ItensSEMLUCRO: TBCDField;
    C_ItensLUCRO: TFloatField;
    C_ItensINDICELUCRO: TFloatField;
    C_ItensANALISADO: TStringField;
    C_ItensATUALIZOUCUSTO: TStringField;
    C_ItensATUALIZOUPRECO: TStringField;
    C_ItensMESCLADO: TStringField;
    C_ItensSTATUS: TStringField;
    C_ItensTIPOITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    GridMovsSTATUS: TdxDBGridCheckColumn;
    C_ItensNUMEROLOTE: TStringField;
    C_ItensVALIDADE: TDateField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensCUSTOMEDIO_ANT: TFloatField;
    C_ItensCUSTOCONTABIL_ANT: TFloatField;
    C_ItensNOVOPRECO: TFloatField;
    C_ItensFRETEPROPORCIONAL: TFloatField;
    C_ItensUNIDADE: TStringField;
    C_ItensFATOR: TFloatField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensOLDQTDRECEBIDA: TBCDField;
    Q_Acerto: TIBQuery;
    P_Acerto: TDataSetProvider;
    C_Acerto: TClientDataSet;
    C_Acerto_icSelecionado: TIntegerField;
    C_AcertoTIPOMOVIMENTO: TIntegerField;
    C_AcertoFAVORECIDO: TIntegerField;
    C_AcertoNOME: TStringField;
    C_AcertoITEM: TIntegerField;
    C_AcertoCODIGO: TStringField;
    C_AcertoDESCRICAO: TStringField;
    C_AcertoUNIDADE: TStringField;
    C_AcertoREFERENCIA: TStringField;
    C_AcertoESTOQUECONSIGENTRADA: TBCDField;
    C_AcertoESTOQUE: TBCDField;
    C_AcertoQTD: TBCDField;
    C_AcertoQTDDEV: TBCDField;
    C_AcertoQTDACERT: TBCDField;
    C_AcertoQtddevolvida: TCurrencyField;
    C_AcertoDS: TDataSource;
    gridAcerto: TTS_QDBGrid;
    gridAcertoTIPOMOVIMENTO: TdxDBGridMaskColumn;
    gridAcertoFAVORECIDO: TdxDBGridMaskColumn;
    gridAcertoNOME: TdxDBGridMaskColumn;
    gridAcertoITEM: TdxDBGridMaskColumn;
    gridAcertoCODIGO: TdxDBGridMaskColumn;
    gridAcertoDESCRICAO: TdxDBGridMaskColumn;
    gridAcertoUNIDADE: TdxDBGridMaskColumn;
    gridAcertoREFERENCIA: TdxDBGridMaskColumn;
    gridAcertoQTD: TdxDBGridCurrencyColumn;
    gridAcertoESTOQUE: TdxDBGridCurrencyColumn;
    gridAcertoESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn;
    gridAcertoQTDDEV: TdxDBGridCurrencyColumn;
    gridAcertoQTDACERT: TdxDBGridCurrencyColumn;
    gridAcertoQtddevolvida: TdxDBGridColumn;
    ppmAcerto: TTS_PopupMenu;
    C_AcertoQtdvalidar: TCurrencyField;
    gridAcertoQtdvalidar: TdxDBGridColumn;
    C_MovimentosTOTAL: TBCDField;
    C_MovimentosTOTALITENS: TBCDField;
    C_ItensSUBTOTALITEM: TBCDField;
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
    procedure gridAcertoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_AcertoQtddevolvidaValidate(Sender: TField);
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
  DlgMescAcertConsig: TDlgMescAcertConsig;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMescAcertConsig.FormShow(Sender: TObject);
var qtdconsig,qtddev,qtdacert: currency;
begin
  inherited;
  Screen.Cursor := crHourGlass;

  sFavs := DM.C_TabelaFavorecido.asString;
  dbtForn.DataSource := DM.C_TabelaDS;
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
  Q_Acerto.SQL.Text := replace(Q_Acerto.SQL.Text, 'XX', sFavs);
  try
    C_Acerto.Open;
    C_Acerto.First;
    while not C_Acerto.EOF do begin
//      est := C_Acerto.FieldByName('estoque').AsCurrency;
      qtdconsig := C_Acerto.FieldByName('qtd').AsCurrency;
      qtddev := C_Acerto.FieldByName('qtddev').AsCurrency;
      qtdacert := C_Acerto.FieldByName('qtdacert').AsCurrency;
      C_Acerto.Edit;
      C_Acerto.FieldByName('qtdvalidar').Value := qtdconsig - qtddev - qtdacert;
      C_Acerto.FieldByName('qtddevolvida').Value := qtdconsig - qtddev - qtdacert;
      C_Acerto.Post;
      C_Acerto.Next;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  C_Acerto.First;
  while not C_Acerto.EOF do begin
    if C_AcertoQtddevolvida.Value = 0 then C_Acerto.Delete
    else C_Acerto.Next;
  end;
  GridMovs.ExpandirGrupos;
  GridAcerto.GoToFirst;
end;

procedure TDlgMescAcertConsig.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
  sEntradasOriginais : String;
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
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' (e.Status in (''P'', ''L'') or e.Entrada in ('+sEntradasOriginais+') ) ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status in (''P'', ''L'') ');

  end;

  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', sFavs);
  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);


end;

procedure TDlgMescAcertConsig.GridMovsTS_OnAfterSelection(
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

procedure TDlgMescAcertConsig.dbgItensTS_OnAfterSelection(
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

procedure TDlgMescAcertConsig.GridMovsItensCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMescAcertConsig.AtualizarSelecionados;
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


procedure TDlgMescAcertConsig.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var nTipo : Integer;
begin
  inherited;
  if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then begin
    nTipo := dbgItens.GetFieldValue( Node, 'TipoItem', 1 );
    Allow := nTipo in [1,2,3];
  end;
end;

procedure TDlgMescAcertConsig.dbgItensEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then begin
    if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node,'icQtdMesclar',0, true),0) > 0) then
      dbgItens.Selecionar;
  end;
end;

procedure TDlgMescAcertConsig.C_ItensicQtdMesclarValidate(
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

procedure TDlgMescAcertConsig.btGravarClick(Sender: TObject);
var
  m, i : Integer;
  nDesconto, nFrete, nDespesa, nPJuros, nJuros, nSaldo : Currency;
  nPlano : Integer;
  sMessage : String;
begin
  nSaldo := 0;
  Screen.Cursor := crHourGlass;
  C_Acerto.DisableControls;
  C_Movimentos.First;
  While not C_Movimentos.Eof do begin
    C_Itens.First;
    While not C_Itens.Eof do begin
      C_Acerto.First;
      While not C_Acerto.Eof do begin
        if C_ItensItem.Value = C_AcertoItem.Value then begin
          if C_Acerto.FieldByName('_icSelecionado').AsInteger = 1 then begin
            if C_AcertoQtddevolvida.Value > 0 then begin
              if C_AcertoQtddevolvida.Value <= C_ItensQuantidade.Value - C_ItensQtdRecebida.Value then begin
                C_Movimentos.Edit;
                C_Movimentos.FieldByName('_icSelecionado').Value := 1;
//                C_Movimentos.Post;
//                C_Itens.Locate('ITEM',C_AcertoItem.Value,[]);
                C_Itens.Edit;
                C_Itens.FieldByName('_icSelecionado').Value := 1;
                C_ItensicQtdMesclar.Value := C_AcertoQtddevolvida.Value;
                C_Itens.Post;
                C_Acerto.Edit;
                C_AcertoQtddevolvida.Value := 0;
                C_Acerto.Post;
              end
              else begin
                C_Movimentos.Edit;
                C_Movimentos.FieldByName('_icSelecionado').Value := 1;
//                C_Movimentos.Post;
                C_Itens.Edit;
                C_Itens.FieldByName('_icSelecionado').Value := 1;
                C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdRecebida.Value;
                C_Itens.Post;
                nSaldo := C_AcertoQtddevolvida.Value;
                C_Acerto.Edit;
                C_AcertoQtddevolvida.Value := nSaldo - (C_ItensQuantidade.Value - C_ItensQtdRecebida.Value);
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
  Screen.Cursor := crDefault;
  inherited;
  if C_Movimentos.State <> dsBrowse then
    C_Movimentos.Post;

  { Mesclar os Itens escolhidos na invoice }
  if (GridMovs.Visible) and (GridMovs.nQuantidadeSelecionada = 0) then begin
    DlgMsg.ShowMsg(2300);
    exit;
  end
  else if (GridAcerto.Visible) and (GridAcerto.nQuantidadeSelecionada = 0) then begin
    DlgMsg.ShowMsg( 2300 );
    Exit;
  end;

  {Confirma��o}
  if DlgMsg.ShowMsg(2309) = 200 then
    exit;

  {Iniciando processo de mesclagem}
  Screen.Cursor := crHourGlass;
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
            Delete  {Verificar se os itens filhos s�o deletados e se Entradassitensmescla tamb�m}
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
//      pBar.Position := pBar.Position + 1;

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
        C_TabelaPJuros.Value := nPJuros; //N�o gera as Parcelas (bFaturandoOperacao = true).
      end;

      {***Parcelas da Opera��o - Mesclando}
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
  Screen.Cursor := crDefault;
  ModalResult := mrOk;
end;

procedure TDlgMescAcertConsig.JoinItemToOperation;
  Function ItemExatamenteIgual : Boolean;
  var
    nMatchFilhos, nFilhos, nFilhosExistente, nIDItemMatch : Integer;
  begin
    result := false;

    {Determinando se o Item � exatamente igual a um que j� exista em DMEntradas.C_Itens}
    {Se o Item n�o existe em DM.C_Itens n�o precisa continuar}
    if not DM.C_Itens.Locate('ITEM;UNIDADE;MESCLADO', VarArrayOf([C_ItensItem.Value,C_ItensUNIDADE.Value,'S']), []) then
      exit;

    try
      {Se localizou faz-se um filtro para poder varrer todos os itens at� encontrar um igual, ou n�o}
      DM.C_Itens.Filter := ' ITEM = '+ C_ItensItem.asString + ' and Mesclado = ''S'' ';
      DM.C_Itens.Filtered := true;

      {Se o item possui filhos, validar logo estes, pois a probabilidade de serem diferentes � maior}
      while not DM.C_Itens.EOF do begin
        nIDItemMatch := DM.C_ItensIDItem.Value;
        nMatchFilhos := 0;
        nFilhos := 0;
        nFilhosExistente := DM.C_EntradasItensFilhos.RecordCount;
        if Q_Filhos.Active then with Q_Filhos do begin
          Last; //Para atualizar o RecordCount;
          nFilhos := RecordCount;

          First;
          while not EOF do begin
            if DM.C_EntradasItensFilhos.Locate('ITEM', Q_Filhos.FieldByName('ITEM').asInteger, []) and
               (DM.C_EntradasItensFilhosQuantidade.asFloat = Q_Filhos.FieldByName('Quantidade').asFloat) then
              inc(nMatchFilhos)
            else
              Break;

            Next;
          end;
        end;

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
    DM.C_ItensBAIXAESTOQUE.Value   := 'N';
    {Copiando os Filhos}
    if (DM.C_ItensHASCHILDREN.VAlue = 'S') and (Q_Filhos.Active) then begin
      Q_Filhos.First;
      DM.bPopulando := true;  // para n�o ocorrer o change.
      while not Q_Filhos.EOF do begin
        DM.C_EntradasItensFilhos.Append;
        DM.C_EntradasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;

        DM.C_EntradasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
        DM.C_EntradasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
        DM.C_EntradasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
        DM.C_EntradasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
        DM.C_EntradasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;
        DM.C_EntradasItensFilhosUNIDADE.Value := Q_Filhos.FieldByName('Unidade').asstring;
        DM.C_EntradasItensFilhosFATOR.Value := Q_Filhos.FieldByName('Fator').asFloat;

        DM.C_EntradasItensFilhos.Post;

        Q_Filhos.Next;
      end;
      DM.bPopulando := False;
    end;

    {Copiando os Filhos
    if (DM.C_ItensHASCHILDREN.VAlue = 'S') and (Q_Filhos.Active) then begin
      Q_Filhos.First;
      DM.bPopulando := true;  // para n�o ocorrer o change.
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
  {Ao entrar nesta fun��o, tanto C_Movimentos como C_Itens j� est�o posicionados corretamente}
  DM.bMesclando := true;

  try
    {Capturando os Itens-Filhos (se existir) para o Item que ser� mesclado}
    Q_Filhos.Close;
    if C_ItensHasChildren.Value = 'S' then begin
      Q_Filhos.Params[0].asInteger := nIDITem;
      Q_Filhos.Open;
    end;

    {Verificando se o Item j� existe em GridItens - se existe, o sistema ir� verificar se � exatamente igual;
     caso seja, ser� adicionada a quantidade apenas, caso n�o seja, ser� adicionado novo item.}
    if ItemExatamenteIgual then begin  //J� posiciona DM.C_Itens no item que ser� adicionado
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
    else begin //Item � diferente;
      DM.C_Itens.Append;
      // Setando antes devido � multi-unidade...
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


procedure TDlgMescAcertConsig.dbgItensTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdRecebida.asFloat) > 0;
end;

procedure TDlgMescAcertConsig.gridAcertoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if AColumn = gridAcertoQtddevolvida then AColor := clYellow;
end;

procedure TDlgMescAcertConsig.C_AcertoQtddevolvidaValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsCurrency > C_AcertoQtdvalidar.Value) then begin
    DlgMsg.ShowMsg(2189);
    raise Exception.Create('@@');
  end;
end;

end.





{
Where 	s.Situacao = 'N'  and KK and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)

}