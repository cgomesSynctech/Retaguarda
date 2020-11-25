unit Dlg_MesclarMovimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Saidas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, BTOdeum, Placemnt, dxEditor, dxEdLib,
  TS_CalcEdit, TS_CheckBox, Math;

type
  TDlgMesclarMovimentos = class(TFrmModeloCadastros)
    GridMovs: TTS_QDBGrid;
    Q_Movimentos: TIBQuery;
    P_Movimentos: TDataSetProvider;
    C_Movimentos: TClientDataSet;
    C_MovimentosSAIDA: TIntegerField;
    C_MovimentosFAVORECIDO: TIntegerField;
    C_MovimentosDATA: TDateField;
    C_MovimentosSITUACAO: TStringField;
    C_MovimentosSTATUS: TStringField;
    C_MovimentosNOME: TStringField;
    C_MovimentosDESCTIPOMOV: TStringField;
    C_MovimentosDESCTIPOPADRAO: TStringField;
    C_MovimentosDS: TDataSource;
    GridMovsSAIDA: TdxDBGridMaskColumn;
    GridMovsTOTAL: TdxDBGridMaskColumn;
    GridMovsFAVORECIDO: TdxDBGridMaskColumn;
    GridMovsDATA: TdxDBGridDateColumn;
    GridMovsSITUACAO: TdxDBGridMaskColumn;
    GridMovsNOME: TdxDBGridMaskColumn;
    GridMovsDESCTIPOMOV: TdxDBGridMaskColumn;
    GridMovsDESCTIPOPADRAO: TdxDBGridMaskColumn;
    C_MovimentosPEDIDO_CLIENTE: TStringField;
    C_MovimentosVENDEDOR: TIntegerField;
    C_MovimentosNOMEVENDEDOR: TStringField;
    GridMovsVendedor: TdxDBGridColumn;
    GridMovsPedidoCliente: TdxDBGridColumn;
    dbtCliente: TTS_DBTextEffect;
    C_MovimentosicItens: TStringField;
    GridMovsItens: TdxDBGridPopupColumn;
    ppmGrid: TTS_PopupMenu;
    Q_Itens: TIBQuery;
    Q_MovimentosDS: TDataSource;
    C_Itens: TClientDataSet;
    C_MovimentosQ_Itens: TDataSetField;
    C_ItensSAIDAITEM: TIntegerField;
    C_ItensSAIDA: TIntegerField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensPRECO: TFloatField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensCONTAVENDA: TIntegerField;
    C_ItensTABELAPRECO: TIntegerField;
    C_ItensPRECOTABELA: TFloatField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensORDEM: TIntegerField;
    C_ItensRATEIODESCONTO: TFloatField;
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
    C_ItensTIPOITEM: TIntegerField;
    C_ItensDS: TDataSource;
    dbgItens: TTS_QDBGrid;
    dbgItensSAIDAITEM: TdxDBGridMaskColumn;
    dbgItensSAIDA: TdxDBGridMaskColumn;
    dbgItensSEQUENCIA: TdxDBGridMaskColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensPRECO: TdxDBGridMaskColumn;
    dbgItensIMPORTACAO: TdxDBGridMaskColumn;
    dbgItensCONTAVENDA: TdxDBGridMaskColumn;
    dbgItensTABELAPRECO: TdxDBGridMaskColumn;
    dbgItensPRECOTABELA: TdxDBGridMaskColumn;
    dbgItensUSOTIPOITEM: TdxDBGridMaskColumn;
    dbgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgItensORDEM: TdxDBGridMaskColumn;
    dbgItensCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensRATEIODESCONTO: TdxDBGridMaskColumn;
    dbgItensHASCHILDREN: TdxDBGridMaskColumn;
    dbgItensPRODUCAO: TdxDBGridMaskColumn;
    dbgItensFUNCPRODUCAO: TdxDBGridMaskColumn;
    dbgItensCOLUNA1: TdxDBGridMaskColumn;
    dbgItensCOLUNA2: TdxDBGridMaskColumn;
    dbgItensCOLUNA3: TdxDBGridMaskColumn;
    dbgItensCOLUNA4: TdxDBGridMaskColumn;
    dbgItensMAXDESCONTO: TdxDBGridMaskColumn;
    dbgItensDESPESA: TdxDBGridMaskColumn;
    dbgItensENTRADAITEM: TdxDBGridMaskColumn;
    dbgItensCONTRATOREF: TdxDBGridMaskColumn;
    dbgItensTIPOITEM: TdxDBGridMaskColumn;
    C_ItensicQtdMesclar: TFloatField;
    dbgItensicQtdMesclar: TdxDBGridColumn;
    C_ItensQTDFATURADA: TFloatField;
    dbgItensQTDFATURADA: TdxDBGridColumn;
    C_Movimentos_icSelecionado: TIntegerField;
    C_Itens_icSelecionado: TIntegerField;
    pnBar: TTS_Panel;
    pBar: TdxfProgressBar;
    C_MovimentosQtdItens: TIntegerField;
    GridMovsQtdItensSel: TdxDBGridColumn;
    C_MovimentosNUMERO: TStringField;
    GridMovsNumero: TdxDBGridColumn;
    C_ItensCODIGO: TStringField;
    C_ItensREFERENCIA: TStringField;
    dbgItensCodigo: TdxDBGridColumn;
    dbgItensReferencia: TdxDBGridColumn;
    ppmGridItens: TTS_PopupMenu;
    Q_Filhos: TIBQuery;
    C_MovimentosOBS: TStringField;
    C_MovimentosTAX: TIntegerField;
    C_MovimentosPERCENTUALTAX: TFloatField;
    C_MovimentosDESCONTO: TFloatField;
    C_MovimentosPLANOPAGAMENTO: TIntegerField;
    C_MovimentosFRETE: TFloatField;
    C_MovimentosTIPOENTREGA: TIntegerField;
    C_MovimentosDATAENTREGA: TDateField;
    C_MovimentosOUTRASDESPESAS: TFloatField;
    C_MovimentosJUROS: TFloatField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosPCOMISSAO: TFloatField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    C_MovimentosTABELAPADRAO: TIntegerField;
    C_MovimentosPJUROS: TFloatField;
    GridMovsSTATUS: TdxDBGridCheckColumn;
    C_ItensNUMEROLOTE: TStringField;
    dbgItensUNIDADE: TdxDBGridColumn;
    C_ItensUNIDADE: TStringField;
    C_ItensFATOR: TFloatField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensOLDQTDFATURADA: TFloatField;
    C_ItensDESCRICAOCOMPLEMENTAR: TStringField;
    C_ItensPROMOCAO: TStringField;
    C_ItensPRECOSEMPROMOCAO: TFloatField;
    C_ItensBAIXAESTOQUE: TStringField;
    C_ItensALMOXARIFADO: TIntegerField;
    dbgItensSITUACAOECF: TdxDBGridColumn;
    C_ItensSITUACAOECF: TStringField;
    C_MovimentosTOTAL: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    dfReducao: TTS_CalcEdit;
    lbReducao: TTS_Label;
    cbPrecoCompra: TTS_CheckBox;
    C_MovimentosCOBRANCA: TIntegerField;
    C_MovimentosEMPRESA: TIntegerField;
    C_MovimentosPDV: TIntegerField;
    C_ItensEMPRESA: TIntegerField;
    C_ItensPDV: TIntegerField;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPrecoCompraChange(Sender: TObject);
  private
    { Private declarations }
    sFavs : String;
    bDeleteItens : boolean;

    procedure JoinItemToOperation( nIDItem : Integer );
    procedure AtualizarSelecionados;

  public
    { Public declarations }
    sTipos, sSaida : String;
    DM : TDMSaidas;

    GridItens : TTS_QDBGrid;
  end;

var
  DlgMesclarMovimentos: TDlgMesclarMovimentos;

implementation
  uses DM_Projeto, Funcoes, Data;

{$R *.DFM}

procedure TDlgMesclarMovimentos.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;

  sFavs := DM.C_TabelaFavorecido.asString;
  dbtCliente.DataSource := DM.C_TabelaDS;
  bDeleteItens := false;

  try
    C_Movimentos.Open;

    DM.C_Itens.DisableControls;

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
  finally
    Screen.Cursor := crDefault;
    DM.C_Itens.EnableControls;
  end;

  GridMovs.ExpandirGrupos;

end;

procedure TDlgMesclarMovimentos.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
  sSaidasOriginais : String;
begin
  inherited;
  {Substituindo Tipo Padrao e Favorecido}
  if not DM.bAlteracao then Begin
    If sSaida <> '' Then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' s.Status in (''P'', ''L'', ''V'', ''X'') And (s.NUMERO = '''+sSaida+''')')
    Else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' s.Status in (''P'', ''L'', ''V'', ''X'')')
  End else begin
    sSaidasOriginais := '';
    with DM.Q_SQL do begin
      Close;
      SQL.Text := 'Select distinct Saida_Original from saidasitensmescla '+
                  'where saidaitem in (select saidaitem from saidasitens where saida = '+ DM.C_TabelaIDMestre.asString+') ';
      Open;
      while not eof do begin
        sSaidasOriginais := CExp(sSaidasOriginais,',') + FieldByName('Saida_Original').asString;
        Next;
      end;

      Close;

    end;
    If sSaida <> '' Then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' s.Status in (''P'', ''L'', ''V'', ''X'') And (s.NUMERO = '''+sSaida+''')')
    Else if sSaidasOriginais <> '' then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' (s.Status in (''P'', ''L'', ''V'', ''X'') or s.Saida in ('+sSaidasOriginais+') ) ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' s.Status in (''P'', ''L'', ''V'', ''X'') ');

  end;

  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', sFavs);
  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);


end;

procedure TDlgMesclarMovimentos.GridMovsTS_OnAfterSelection(
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

procedure TDlgMesclarMovimentos.dbgItensTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;

  if (C_ItensTipoItem.Value in [1,2,3]) then begin
    C_Itens.Edit;

    if bSelected then
      C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value
    else
      C_ItensicQtdMesclar.Value := 0;

    C_Itens.Post;

    dbgItens.TS_SelectedColumn := 'icQtdMesclar';
  end;

end;

procedure TDlgMesclarMovimentos.GridMovsItensCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMesclarMovimentos.AtualizarSelecionados;
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


procedure TDlgMesclarMovimentos.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var nTipo : Integer;
begin
  inherited;
  if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then begin
    nTipo := dbgItens.GetFieldValue( Node, 'TipoItem', 1 );
    Allow := nTipo in [1,2,3];
  end;
end;

procedure TDlgMesclarMovimentos.dbgItensEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then begin
    if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node,'icQtdMesclar',0, true),0) > 0) then
      dbgItens.Selecionar;
  end;
end;

procedure TDlgMesclarMovimentos.C_ItensicQtdMesclarValidate(
  Sender: TField);
begin
  inherited;
  if (C_ItensItem.Value > 0) and (C_ItensTipoItem.Value in [1,2,3]) and
     (C_ItensQuantidade.Value > 0) and (Sender.asFloat > 0) and 
     (Sender.asFloat - (C_ItensQuantidade.Value - C_ItensQtdFaturada.Value)> 0.01) then begin
    DlgMsg.ShowMsg(2189);
    raise Exception.Create('@@');
  end;
end;

procedure TDlgMesclarMovimentos.btGravarClick(Sender: TObject);
var
  m, i, nDifDatas : Integer;
  nDesconto, nFrete, nDespesa, nPJuros, nJuros: Currency;
  nPlano, nSaida, nCobranca  : Integer;
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
  if DlgMsg.ShowMsg(2301) = 200 then
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
            Delete  {Verificar se os itens filhos são deletados e se saidasitensmescla também}
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
    C_TabelaTabelaPadrao.Value:= C_Movimentos.FieldByName('TabelaPadrao').asInteger;
    C_TabelaTIPOENTREGA.asVariant := C_Movimentos.FieldByName('TipoEntrega').Value;
    C_TabelaLOCALENTREGA.asVariant := C_Movimentos.FieldByName('LocalEntrega').Value;
    C_TabelaDATAENTREGA.asVariant := C_Movimentos.FieldByName('DataEntrega').Value;
    C_TabelaVendedor.AsVariant    := C_Movimentos.FieldByName('Vendedor').Value;
    C_TabelaPCOMISSAO.asVariant   := C_Movimentos.FieldByName('PComissao').Value;
  end;

  nDesconto := C_Movimentos.FieldByName('Desconto').asCurrency;
  nFrete    := C_Movimentos.FieldByName('Frete').asCurrency;
  nDespesa  := C_Movimentos.FieldByName('OutrasDespesas').asCurrency;

  nPlano    := C_Movimentos.FieldByName('PlanoPagamento').asInteger;
  nCobranca := C_Movimentos.FieldByName('Cobranca').asInteger;
  nPJuros   := C_Movimentos.FieldByName('PJuros').asCurrency;
  nJuros    := C_Movimentos.FieldByName('Juros').asCurrency;
  sMessage  := C_Movimentos.FieldByName('OBS').asString;

  nSaida    := C_Movimentos.FieldByName('Saida').asInteger;

  nDifDatas := Trunc( DMProjeto.dDataSistema - C_Movimentos.FieldByName('Data').asDateTime );

  for m := 1 to GridMovs.nQuantidadeSelecionada do begin
    dbgItens.FirstSelected;

    DM.C_Itens.DisableControls;

    try
      For i := 1 to dbgItens.nQuantidadeSelecionada do begin
        JoinItemToOperation(C_ItensSaidaItem.Value) ;
        pBar.Position := pBar.Position + 1;

        dbgItens.NextSelected;
      end;
    finally
      DM.C_Itens.EnableControls;
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
      if nCobranca > 0 then begin
        C_TiposCobranca.Locate('TipoCobranca', nCobranca, []);
        C_TabelaCobranca.Value := nCobranca;
      end;

      {***Parcelas da Operação - Mesclando}
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'Select * from TitulosAReceber where Venda = :S and Empresa = :E and PDV = :P ';
      Q_SQL.Params[0].asInteger := nSaida;
      Q_SQL.Params[1].AsInteger := C_MovimentosEMPRESA.AsInteger;
      Q_SQL.Params[2].AsString := C_MovimentosPDV.AsString;
      Q_SQL.Open;

      While not Q_SQL.EOF do begin
        C_Parcelas.Append;
        C_ParcelasParcela.asInteger := Q_SQL.FieldByName('Parcela').asInteger;

        //Data do Vencimento
        C_ParcelasVencimento.Value := Q_SQL.FieldByName('Vencimento').asDateTime + nDifDatas;

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

procedure TDlgMesclarMovimentos.JoinItemToOperation;
  Function ItemExatamenteIgual(sBaixaEstoque : String) : Boolean;
  var
    nMatchFilhos, nFilhos, nFilhosExistente, nIDItemMatch : Integer;
  begin
    result := false;

    {Determinando se o Item é exatamente igual a um que já exista em DMSaida.C_Itens}
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
        nFilhosExistente := DM.C_SaidasItensFilhos.RecordCount;
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
              (C_ItensUSOTIPOITEM.Value = DM.C_ItensUSOTIPOITEM.Value) and (C_ItensPrecoTabela.Value = DM.C_ItensPrecoTabela.Value) and
              (C_ItensTabelaPreco.Value = DM.C_ItensTabelaPreco.Value) and (C_ItensProducao.Value = DM.C_ItensProducao.Value) and
              (C_ItensDespesa.Value = DM.C_ItensDespesa.Value) and (C_ItensEntradaItem.Value = DM.C_ItensEntradaItem.Value) and
              (C_ItensFator.Value = DM.C_ItensFator.Value) and (C_ItensUnidade.Value = DM.C_ItensUnidade.Value) and
              (C_ItensAlmoxarifado.Value = DM.C_ItensAlmoxarifado.Value) then begin
             if ((sBaixaEstoque = 'N') and (DM.C_ItensBaixaEstoque.Value = 'N')) or (sBaixaEstoque = 'O') then
               result := true
             else
               result := false;
           end;
         end; {}                  

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
    {Se a operacao original já baixou estoque na mesclagem tem que ir sem dar baixa}
    if C_ItensBaixaEstoque.Value = 'S' then
      DM.C_ItensBaixaEstoque.Value := 'N';  {Neste Flag já deve estar atribuido o do TipoMovimento (newrecord),
                                             assim, se a operação original já baixou o estoque, automaticamente
                                             o flag é colocado para false}

    DM.C_ItensCustoContabil.Value  := C_ItensCustoContabil.Value;
    DM.C_ItensCustoMedio.Value     := C_ItensCustoMedio.Value;

    DM.C_ItensUnidade.Value	       := C_ItensUnidade.Value;
    If cbPrecoCompra.Checked Then
      if dfReducao.Value = 0 Then
         DM.C_ItensPreco.Value         := C_Itens.FieldByName('custocontabil').Value
      Else
         DM.C_ItensPreco.Value         := RoundTo(C_Itens.FieldByName('custocontabil').Value + (C_Itens.FieldByName('custocontabil').Value * RoundTo( dfReducao.Value/100,-2)),-2)
    Else
       DM.C_ItensPreco.Value           := RoundTo(C_ItensPreco.Value * (1 - RoundTo( dfReducao.Value/100, -2) ),-2);

    DM.C_ItensQuantidade.Value         := C_ItensicQtdMesclar.Value;

    DM.C_ItensDESCRICAO.Value      := C_ItensDESCRICAO.Value;
    DM.C_ItensUSOTIPOITEM.asVariant:= C_ItensUSOTIPOITEM.asVariant;
    DM.C_ItensProducao.asVariant   := C_ItensProducao.asVariant;
    DM.C_ItensDespesa.asVariant    := C_ItensDespesa.asVariant;
    DM.C_ItensEntradaItem.asVariant:= C_ItensEntradaItem.asVariant;

    DM.C_ItensCOLUNA1.asVariant    := C_ItensCOLUNA1.asVariant;
    DM.C_ItensCOLUNA2.asVariant    := C_ItensCOLUNA2.asVariant;
    DM.C_ItensCOLUNA3.asVariant    := C_ItensCOLUNA3.asVariant;
    DM.C_ItensCOLUNA4.asVariant    := C_ItensCOLUNA4.asVariant;

    DM.C_ItensFUNCPRODUCAO.asVariant := C_ItensFUNCPRODUCAO.asVariant;
    DM.C_ItensHASCHILDREN.Value    := C_ItensHASCHILDREN.Value;
    DM.C_ItensCONTAVENDA.Value     := C_ItensCONTAVENDA.Value;

    DM.C_ItensNUMEROLOTE.Value     := C_ItensNUMEROLOTE.Value;
    DM.C_ItensTabelaPreco.Value    := C_ItensTabelaPreco.Value;

    DM.C_ItensPrecoTabela.Value    := C_ItensPrecoTabela.Value;
    DM.C_ItensPromocao.asVariant   := C_ItensPromocao.asVariant;
    DM.C_ItensPrecoSemPromocao.asVariant := C_ItensPrecoSemPromocao.asVariant;

    DM.C_ItensDescricaoComplementar.asVariant := C_ItensDescricaoComplementar.asVariant;

    DM.C_ItensAlmoxarifado.Value   := C_ItensAlmoxarifado.Value;


    {Copiando os Filhos}
    if (DM.C_ItensHASCHILDREN.VAlue = 'S') and (Q_Filhos.Active) then begin
      Q_Filhos.First;
      DM.bPopulando := true;  // para não ocorrer o change.
      while not Q_Filhos.EOF do begin
        DM.C_SaidasItensFilhos.Append;
        DM.C_SaidasItensFilhosITEM.Value := Q_Filhos.FieldByName('ITEM').asInteger;
        DM.C_SaidasItensFilhosEMPRESA.Value := Q_Filhos.FieldByName('Empresa').AsInteger;
        DM.C_SaidasItensFilhosCODIGO.Value := Q_Filhos.FieldByName('Codigo').asString;
        DM.C_SaidasItensFilhosCUSTOMEDIO.Value := Q_Filhos.FieldByName('CustoMedio').asCurrency;
        DM.C_SaidasItensFilhosCUSTOCONTABIL.Value := Q_Filhos.FieldByName('CustoContabil').asCurrency;
        DM.C_SaidasItensFilhosDESCRICAO.Value := Q_Filhos.FieldByName('Descricao').asString;
        DM.C_SaidasItensFilhosQUANTIDADE.Value := Q_Filhos.FieldByName('Quantidade').asFloat;
        DM.C_SaidasItensFilhosUNIDADE.Value := Q_Filhos.FieldByName('Unidade').asstring;
        DM.C_SaidasItensFilhosFATOR.Value := Q_Filhos.FieldByName('Fator').asFloat;
        DM.C_SaidasItensFilhosPreco.Value := Q_Filhos.FieldByName('Preco').asFloat;

        DM.C_SaidasItensFilhos.Post;

        Q_Filhos.Next;
      end;
      DM.bPopulando := False;
    end;
  end;

var
  sNovoFlagBaixaEstoque : String;

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

    {Determinando o novo Flag BaixaEstoque para ver se o item é exatamente igual}
    sNovoFlagBaixaEstoque := C_ItensBaixaEstoque.Value;
    if sNovoFlagBaixaEstoque = 'S' then //Já baixou, não vai baixar mais;
      sNovoFlagBaixaEstoque := 'N'
    else
      sNovoFlagBaixaEstoque := 'O';

    {Verificando se o Item já existe em GridItens - se existe, o sistema irá verificar se é exatamente igual;
     caso seja, será adicionada a quantidade apenas, caso não seja, será adicionado novo item.}
    if ItemExatamenteIgual(sNovoFlagBaixaEstoque) then begin  //Já posiciona DM.C_Itens no item que será adicionado
      {Adicionando quantidade}
      DM.C_Itens.Edit;
     	DM.C_ItensQuantidade.Value := DM.C_ItensQuantidade.Value + C_ItensicQtdMesclar.Value;
      DM.C_Itens.Post;

      {Adicionando em C_Mesclagens}
      with DM.C_Mesclagens do begin
        Append;
        FieldByName('SAIDAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('SAIDA_ORIGINAL').asInteger := C_ItensSaida.Value;
        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdFaturada.Value;
        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Fator').asCurrency             := C_ItensFator.Value;
        FieldByName('Unidade').asString           	:= C_ItensUnidade.Value;
        FieldByName('PDV').AsString := InttoStr(C_ItensPDV.Value);
        FieldByName('Empersa').AsInteger := C_ItensEMPRESA.Value;
        Post;
      end;
      end //exatamenteigual;
    else begin //Item é diferente;
      DM.C_Itens.Append;
      // Setando antes devido à multi-unidade...
      DM.C_ItensITEM.Value := C_ItensITEM.Value;
      DM.C_ItensUNIDADE.Value := C_ItensUNIDADE.Value;
      DM.C_ItensMESCLADO.Value := 'S';
      DM.C_ItensCFOPCST.value := '';
      ///////////////////////////////////////
      GridItens.TS_ID := C_ItensITEM.Value;
      CopiarItem;

      DM.C_Itens.Post;

      {Adicionando em C_Mesclagens}
      with DM.C_Mesclagens do begin
        Append;
        FieldByName('SAIDAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('SAIDA_ORIGINAL').asInteger := C_ItensSaida.Value;
        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdFaturada.Value;
        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Unidade').asString := C_ItensUnidade.value;
        FieldByName('Fator').asFloat := C_ItensFator.value;
        FieldByName('PDV').AsString := InttoStr(C_ItensPDV.Value);
        FieldByName('Empersa').AsInteger := C_ItensEMPRESA.Value;
        Post;
      end;

    end;
  finally
    DM.bMesclando := false;
  end;

end;


procedure TDlgMesclarMovimentos.dbgItensTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdFaturada.asFloat) > 0;
end;

procedure TDlgMesclarMovimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssAlt]) and (Key = Ord('D')) Then Begin
     lbReducao.Visible := Not (lbReducao.Visible);
     dfReducao.Visible := Not (dfReducao.Visible);
     cbPrecoCompra.Visible := Not (cbPrecoCompra.Visible);
  End;
end;

procedure TDlgMesclarMovimentos.cbPrecoCompraChange(Sender: TObject);
begin
  inherited;
  If cbPrecoCompra.Checked Then
     lbReducao.Caption:= 'Acrescimo de:'
  Else
     lbReducao.Caption:= 'Desconto de:';
end;

end.

{
Where 	s.Situacao = 'N' and s.Status in ('P', 'L')  and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)
}