unit Dlg_MesclarEntradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Saidas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, BTOdeum, Placemnt, dxEditor, dxEdLib,
  TS_Edit;

type
  TDlgMesclarEntradas = class(TFrmModeloCadastros)
    GridMovs: TTS_QDBGrid;
    Q_Movimentos: TIBQuery;
    P_Movimentos: TDataSetProvider;
    C_Movimentos: TClientDataSet;
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
    GridMovsVendedor: TdxDBGridColumn;
    GridMovsPedidoCliente: TdxDBGridColumn;
    dbtFornecedor: TTS_DBTextEffect;
    C_MovimentosicItens: TStringField;
    GridMovsItens: TdxDBGridPopupColumn;
    ppmGrid: TTS_PopupMenu;
    Q_Itens: TIBQuery;
    Q_MovimentosDS: TDataSource;
    C_Itens: TClientDataSet;
    C_MovimentosQ_Itens: TDataSetField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensPRECO: TFloatField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensORDEM: TIntegerField;
    C_ItensHASCHILDREN: TStringField;
    C_ItensCOLUNA1: TStringField;
    C_ItensCOLUNA2: TStringField;
    C_ItensCOLUNA3: TStringField;
    C_ItensCOLUNA4: TStringField;
    C_ItensENTRADAITEM: TIntegerField;
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
    dbgItensUSOTIPOITEM: TdxDBGridMaskColumn;
    dbgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgItensORDEM: TdxDBGridMaskColumn;
    dbgItensCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensHASCHILDREN: TdxDBGridMaskColumn;
    dbgItensCOLUNA1: TdxDBGridMaskColumn;
    dbgItensCOLUNA2: TdxDBGridMaskColumn;
    dbgItensCOLUNA3: TdxDBGridMaskColumn;
    dbgItensCOLUNA4: TdxDBGridMaskColumn;
    dbgItensDESPESA: TdxDBGridMaskColumn;
    dbgItensENTRADAITEM: TdxDBGridMaskColumn;
    dbgItensTIPOITEM: TdxDBGridMaskColumn;
    C_ItensicQtdMesclar: TFloatField;
    dbgItensicQtdMesclar: TdxDBGridColumn;
    dbgItensQTDRECEBIDA: TdxDBGridColumn;
    C_Movimentos_icSelecionado: TIntegerField;
    C_Itens_icSelecionado: TIntegerField;
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
    C_MovimentosDESCONTO: TBCDField;
    C_MovimentosPLANOPAGAMENTO: TIntegerField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    GridMovsSTATUS: TdxDBGridCheckColumn;
    C_ItensNUMEROLOTE: TStringField;
    C_MovimentosENTRADA: TIntegerField;
    C_ItensENTRADA: TIntegerField;
    C_MovimentosTIPOENTREGA: TIntegerField;
    C_MovimentosDATAENTREGA: TDateField;
    pnBar: TTS_Panel;
    pBar: TdxfProgressBar;
    C_ItensUNIDADE: TStringField;
    C_ItensFATOR: TFloatField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensALMOXARIFADO: TIntegerField;
    C_ItensCST: TStringField;
    C_ItensCFOPENTRADA: TStringField;
    C_ItensSITUACAOECF: TStringField;
    dfNota: TTS_Edit;
    TS_Label1: TTS_Label;
    Q_PesquisaNota: TIBQuery;
    C_ItensEMPRESA: TIntegerField;
    C_ItensPDV: TIntegerField;
    C_MovimentosTOTAL: TFloatField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    C_ItensRATEIODESCONTO: TFloatField;
    C_ItensQTDRECEBIDA: TBCDField;
    C_ItensOLDQTDRECEBIDA: TBCDField;
    C_ItensIPI: TFloatField;
    C_ItensALIQICMS: TFloatField;
    C_ItensREDUCAOCST: TFloatField;
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
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
    sFavs : String;
    bDeleteItens : boolean;
    nId: Integer;
    procedure JoinItemToOperation( nIDItem : Integer );
    procedure AtualizarSelecionados;
    procedure Consultar;

  public
    { Public declarations }
    sTipos : String;
    DM : TDMSaidas;

    GridItens : TTS_QDBGrid;
  end;

var
  DlgMesclarEntradas: TDlgMesclarEntradas;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMesclarEntradas.Consultar;
Begin
  Screen.Cursor := crHourGlass;

  sFavs := DM.C_TabelaFavorecido.asString;
  dbtFornecedor.DataSource := DM.C_TabelaDS;
  bDeleteItens := false;

  try
    C_Movimentos.Open;

    DM.C_Itens.DisableControls;

    DM.C_Itens.First;
    while not DM.C_Itens.EOF do begin
      if DM.C_Itens.FieldByName('Mesclado').asString = 'S' then begin
        DM.C_Mesclagens.First;
        while not DM.C_Mesclagens.EOF do begin
          if C_Movimentos.Locate('ENTRADA', DM.C_Mesclagens.FieldByName('SAIDA_ORIGINAL').asInteger, []) and
             C_Itens.Locate('ENTRADAITEM', DM.C_Mesclagens.FieldByName('SAIDAITEM_ORIGINAL').asInteger, []) then begin
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
End;

procedure TDlgMesclarEntradas.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
  sSaidasOriginais : String;
begin
  inherited;
  {Substituindo Tipo Padrao e Favorecido}
  if not DM.bAlteracao then
    Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' ((e.Status is null) or (e.Status not in (''X''))) ')
  else begin
    sSaidasOriginais := '';
    with DM.Q_SQL do begin
      Close;
      SQL.Text := 'Select distinct Saida_Original from Saidasitensmescla '+
                  'where Saidaitem in (select SaidaItem from Saidasitens where Saida = '+ DM.C_TabelaIDMestre.asString+') ';
      Open;
      while not eof do begin
        sSaidasOriginais := CExp(sSaidasOriginais,',') + FieldByName('Saida_Original').asString;
        Next;
      end;

      Close;

    end;

    if sSaidasOriginais <> '' then
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' (e.Status not in (''X'') or e.Entrada in ('+sSaidasOriginais+') ) ')
    else
      Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' e.Status not in (''X'') ');

  end;

  if (nId = 0) Then
     Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', 'e.Favorecido in ('+sFavs+') ')
  Else
     Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', 'e.Entrada = '+IntToStr(nId));

  Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);
end;

procedure TDlgMesclarEntradas.GridMovsTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  if not bSelected then
		dbgItens.LimparSelecionados
  else
    dbgItens.SelectAll;

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

procedure TDlgMesclarEntradas.dbgItensTS_OnAfterSelection(
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

procedure TDlgMesclarEntradas.GridMovsItensCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMesclarEntradas.AtualizarSelecionados;
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


procedure TDlgMesclarEntradas.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var nTipo : Integer;
begin
  inherited;
  if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then begin
    nTipo := dbgItens.GetFieldValue( Node, 'TipoItem', 1 );
    Allow := nTipo in [1,2,3];
  end;
end;

procedure TDlgMesclarEntradas.dbgItensEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then begin
    if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node,'icQtdMesclar',0, true),0) > 0) then
      dbgItens.Selecionar;
  end;
end;

procedure TDlgMesclarEntradas.C_ItensicQtdMesclarValidate(
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

procedure TDlgMesclarEntradas.btGravarClick(Sender: TObject);
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

  {Confirma��o}
//  if DlgMsg.ShowMsg(2301) = 200 then
//    exit;

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
            Delete  {Verificar se os itens filhos s�o deletados e se saidasitensmescla tamb�m}
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
//    C_TabelaTabelaPadrao.Value:= C_Movimentos.FieldByName('TabelaPadrao').asInteger;
//    C_TabelaTAX.asVariant     := C_Movimentos.FieldByName('Tax').Value;
//    C_TabelaPercentualTax.Value   := C_Movimentos.FieldByName('PercentualTax').asFloat;
    C_TabelaTIPOENTREGA.asVariant  := C_Movimentos.FieldByName('TipoEntrega').Value;
    C_TabelaLOCALENTREGA.asVariant := C_Movimentos.FieldByName('LocalEntrega').Value;
    C_TabelaDATAENTREGA.asVariant  := C_Movimentos.FieldByName('DataEntrega').Value;
//    C_TabelaVendedor.AsVariant    := C_Movimentos.FieldByName('Vendedor').Value;
//    C_TabelaPCOMISSAO.asVariant   := C_Movimentos.FieldByName('PComissao').Value;
  end;

  //nDesconto := C_Movimentos.FieldByName('Desconto').asCurrency;
  //nFrete    := C_Movimentos.FieldByName('Frete').asCurrency;
  //nDespesa  := C_Movimentos.FieldByName('OutrasDespesas').asCurrency;

  //nPlano    := C_Movimentos.FieldByName('PlanoPagamento').asInteger;
  //nPJuros   := C_Movimentos.FieldByName('PJuros').asCurrency;
  //nJuros    := C_Movimentos.FieldByName('Juros').asCurrency;
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

    //  C_TabelaDesconto.Value := nDesconto;
    //  C_TabelaFrete.Value := nFrete;
    //  C_TabelaOutrasDespesas.Value := nDespesa;
    //  C_TabelaJuros.Value := nJuros;
      C_TabelaOBS.Value := sMessage;

    //  if nPlano > 0 then begin
    //    C_PlanosPagamento.Locate('PlanoPagamento', nPlano, []);
    //    C_TabelaPlanoPagamento.Value := nPlano;
    //    C_TabelaPJuros.Value := nPJuros; //N�o gera as Parcelas (bFaturandoOperacao = true).
    //  end;

      {***Parcelas da Opera��o - Mesclando}
      (*
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'Select * from TitulosAReceber where Venda = :S ';
      Q_SQL.Params[0].asInteger := C_MovimentosSaida.Value;
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
      *)
      Q_SQL.Close;

    end; //if uma operacao selecionada
  finally
    DM.bFaturandoOperacao := false;
  end;

  ModalResult := mrOk;
end;

procedure TDlgMesclarEntradas.JoinItemToOperation;
  Function ItemExatamenteIgual : Boolean;
  begin
    result := false;


  end;

  procedure CopiarItem;
  begin
    DM.C_ItensMESCLADO.Value       := 'S';
    //DM.C_ItensTabelaPreco.Value  := C_ItensTabelaPreco.Value;
    //DM.C_ItensPrecoTabela.Value  := C_ItensPrecoTabela.Value;

    DM.C_ItensUnidade.Value				 := C_ItensUnidade.Value;
    DM.C_ItensFator.Value					 := C_ItensFator.Value;

    DM.C_ItensCustoContabil.Value  := C_ItensCustoContabil.Value;
    DM.C_ItensCustoMedio.Value     := C_ItensCustoMedio.Value;

    DM.C_ItensPreco.Value          := C_ItensPreco.Value;
    DM.C_ItensQuantidade.Value     := C_ItensicQtdMesclar.Value;
    DM.C_ItensEntradaItem.Value		 := C_ItensEntradaItem.Value;
//    DM.C_ItensVendedor.Value		:= C_MovimentosVendedor.Value;

    DM.C_ItensDESCRICAO.Value      := C_ItensDESCRICAO.Value;
    DM.C_ItensUSOTIPOITEM.asVariant:= C_ItensUSOTIPOITEM.asVariant;
//    DM.C_ItensProducao.asVariant   := C_ItensProducao.asVariant;
//    DM.C_ItensDespesa.asVariant    := C_ItensDespesa.asVariant;
//    DM.C_ItensEntradaItem.asVariant:= C_ItensEntradaItem.asVariant;

    DM.C_ItensCOLUNA1.asVariant    := C_ItensCOLUNA1.asVariant;
    DM.C_ItensCOLUNA2.asVariant    := C_ItensCOLUNA2.asVariant;
    DM.C_ItensCOLUNA3.asVariant    := C_ItensCOLUNA3.asVariant;
    DM.C_ItensCOLUNA4.asVariant    := C_ItensCOLUNA4.asVariant;

//    DM.C_ItensFUNCPRODUCAO.asVariant := C_ItensFUNCPRODUCAO.asVariant;
    DM.C_ItensHASCHILDREN.Value    := C_ItensHASCHILDREN.Value;
//    DM.C_ItensCONTAVENDA.Value     := C_ItensCONTAVENDA.Value;

    DM.C_ItensNUMEROLOTE.Value     := C_ItensNUMEROLOTE.Value;
    DM.C_ItensSituacaoECF.Value    := C_ItensSituacaoECF.Value;
    DM.C_ItensIPI.Value            := C_ItensIPI.Value;
    DM.C_ItensAliqICMS.Value       := C_ItensAliqICMS.Value;
    DM.C_ItensCST.Value            := C_ItensCST.Value;
    DM.C_ItensReducaoCST.Value     := C_ItensReducaoCST.Value;
    DM.C_ItensAlmoxarifado.Value   := C_ItensAlmoxarifado.Value;

    {Copiando os Filhos}
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
        DM.C_SaidasItensFilhosUNIDADE.Value := Q_Filhos.FieldByName('Unidade').asstring;
        DM.C_SaidasItensFilhosFATOR.Value := Q_Filhos.FieldByName('Fator').asFloat;

        DM.C_SaidasItensFilhos.Post;

        Q_Filhos.Next;
      end;
      DM.bPopulando := False;
    end;

    {Copiando os Filhos}
    (*
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
    *)

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
        FieldByName('SAIDAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('SAIDA_ORIGINAL').asInteger 		:= C_ItensEntrada.Value;
        FieldByName('Quantidade').asFloat					 	:= C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat        := C_ItensOldQtdRecebida.Value;
        FieldByName('QtdMaxima').asFloat 						:= C_ItensQuantidade.Value - C_ItensQtdRecebida.Value;
        FieldByName('Fechar_Original').asString 		:= IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Fator').asCurrency             := C_ItensFator.Value;
        FieldByName('Unidade').asString           	:= C_ItensUnidade.Value;
        FieldByName('PDV').asString           	:= IntToStr(C_ItensPDV.Value);
        FieldByName('Empersa').AsInteger           	:= C_ItensEMPRESA.Value;
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
        FieldByName('SAIDAITEM_ORIGINAL').asInteger := nIDItem;
        FieldByName('SAIDA_ORIGINAL').asInteger     := C_ItensEntrada.Value;
        FieldByName('Quantidade').asFloat           := C_ItensicQtdMesclar.Value;
        FieldByName('OldQuantidade').asFloat        := C_ItensOldQtdRecebida.Value;
        FieldByName('QtdMaxima').asFloat            := C_ItensQuantidade.Value - C_ItensQtdRecebida.Value;
        FieldByName('Fechar_Original').asString     := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
        FieldByName('Fator').asCurrency             := C_ItensFator.Value;
        FieldByName('Unidade').asString           	:= C_ItensUnidade.Value;
        FieldByName('PDV').asString           	:= IntToStr(C_ItensPDV.Value);
        FieldByName('Empersa').AsInteger           	:= C_ItensEMPRESA.Value;
        Post;
      end;

    end;
  finally
    DM.bMesclando := false;
  end;

end;


procedure TDlgMesclarEntradas.dbgItensTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdRecebida.asFloat) > 0;
end;

procedure TDlgMesclarEntradas.btComando1Click(Sender: TObject);
begin
  inherited;
  nId := 0;
  if Not (dfNota.Text = '') then Begin
    With Q_PesquisaNota do Begin
      Close;
      ParamByName('NOTA').AsString := dfNota.Text;
      Open;
      If RecordCount > 0 Then Begin
        nId := FieldByName('Entrada').Value;
      End;
      Close;
    End;
  End;
  Consultar;
end;

end.

{
Where 	s.Situacao = 'N' and s.Status in ('P', 'L')  and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)
}