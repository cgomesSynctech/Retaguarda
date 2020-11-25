unit Dlg_MesclarVendas;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
    Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Entradas, dxCntner,
    dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
    DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
    dxfProgressBar, Variants, dxExEdtr, BTOdeum, Placemnt, Math;

type
    TDlgMesclarVendas = class(TFrmModeloCadastros)
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
        C_ItensTAXAVEL: TStringField;
        C_ItensIMPORTACAO: TIntegerField;
        C_ItensCONTAVENDA: TIntegerField;
        C_ItensTABELAPRECO: TIntegerField;
        C_ItensUSOTIPOITEM: TStringField;
        C_ItensORDEM: TIntegerField;
        C_ItensHASCHILDREN: TStringField;
        C_ItensPRODUCAO: TIntegerField;
        C_ItensFUNCPRODUCAO: TIntegerField;
        C_ItensCOLUNA1: TStringField;
        C_ItensCOLUNA2: TStringField;
        C_ItensCOLUNA3: TStringField;
        C_ItensCOLUNA4: TStringField;
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
        C_MovimentosPLANOPAGAMENTO: TIntegerField;
        C_MovimentosTIPOENTREGA: TIntegerField;
        C_MovimentosDATAENTREGA: TDateField;
        C_MovimentosCAMPO01: TStringField;
        C_MovimentosCAMPO02: TStringField;
        C_MovimentosCAMPO03: TStringField;
        C_MovimentosCAMPO04: TStringField;
        C_MovimentosLOCALENTREGA: TIntegerField;
        C_MovimentosTABELAPADRAO: TIntegerField;
        GridMovsSTATUS: TdxDBGridCheckColumn;
        C_ItensNUMEROLOTE: TStringField;
        C_ItensUNIDADE: TStringField;
        dbgItensSITUACAOECF: TdxDBGridColumn;
        C_ItensSITUACAOECF: TStringField;
        C_ItensALMOXARIFADO: TIntegerField;
        C_ItensCST: TStringField;
        C_ItensCFOPNOTA: TStringField;
        C_ItensEMPRESA: TIntegerField;
        C_ItensPDV: TIntegerField;
        C_MovimentosTOTAL: TFloatField;
        C_MovimentosPJUROS: TFloatField;
        C_MovimentosOUTRASDESPESAS: TFloatField;
        C_MovimentosJUROS: TFloatField;
        C_MovimentosDESCONTO: TFloatField;
        C_MovimentosFRETE: TFloatField;
        C_MovimentosTAX: TIntegerField;
        C_MovimentosPERCENTUALTAX: TFloatField;
        C_MovimentosPCOMISSAO: TFloatField;
        C_ItensSUBTOTALITEM: TFloatField;
        C_ItensREDUCAOCST: TFloatField;
        C_ItensIPI: TFloatField;
        C_ItensALIQICMS: TFloatField;
        C_ItensQTDMONTAGEM: TFloatField;
        C_ItensFATOR: TFloatField;
        C_ItensOLDQTDFATURADA: TFloatField;
        C_ItensCUSTOMEDIO: TFloatField;
        C_ItensCUSTOCONTABIL: TFloatField;
        C_ItensPRECOTABELA: TFloatField;
        C_ItensQTDFATURADA: TFloatField;
        C_ItensMAXDESCONTO: TFloatField;
        C_ItensDESPESA: TIntegerField;
        C_ItensRATEIODESCONTO: TFloatField;
        C_ItensQUANTIDADE: TFloatField;
        C_ItensPRECO: TFloatField;
        C_ItensVALORICMSPROD: TFloatField;
        C_ItensVALORICMSSUBSTPROD: TFloatField;
        C_ItensVALORIPIPROD: TFloatField;
        C_ItensBASECALCICMSPROD: TFloatField;
        C_ItensBASECALCSUBSTPROD: TFloatField;
        C_ItensALIQPIS: TFloatField;
        C_ItensALIQCOFINS: TFloatField;
        C_ItensALIQIPI: TFloatField;
        C_ItensVALORPISPROD: TFloatField;
        C_ItensVALORCOFINSPROD: TFloatField;
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
    private
        { Private declarations }
        sFavs: string;
        bDeleteItens: boolean;

        procedure JoinItemToOperation(nIDItem: Integer);
        procedure AtualizarSelecionados;
        function PegaValidadeLote(nItem: integer; sNumeroLote: string): TDateTime;

    public
        { Public declarations }
        sTipos, sSaida: string;
        DM: TDMEntradas;

        GridItens: TTS_QDBGrid;
    end;

var
    DlgMesclarVendas: TDlgMesclarVendas;

implementation
uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMesclarVendas.FormShow(Sender: TObject);
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
        while not DM.C_Itens.EOF do
            begin
                if DM.C_Itens.FieldByName('Mesclado').asString = 'S' then
                    begin
                        DM.C_Mesclagens.First;
                        while not DM.C_Mesclagens.EOF do
                            begin
                                if C_Movimentos.Locate('SAIDA', DM.C_Mesclagens.FieldByName('ENTRADA_ORIGINAL').asInteger, []) and
                                    C_Itens.Locate('SAIDAITEM', DM.C_Mesclagens.FieldByName('ENTRADAITEM_ORIGINAL').asInteger, []) then
                                    begin
                                        bDeleteItens := true;
                                        if DM.bAlteracao and (DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat > 0) then
                                            begin
                                                C_Itens.Edit;
                                                C_ItensQtdFaturada.asFloat := C_ItensQtdFaturada.asFloat - DM.C_Mesclagens.FieldByName('OldQuantidade').asFloat;
                                            end;
                                        dbgItens.SelecionarLinha;
                                        if C_ItensQuantidade.asFloat <> DM.C_Mesclagens.FieldByName('Quantidade').asFloat then
                                            begin
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

procedure TDlgMesclarVendas.Q_MovimentosBeforeOpen(DataSet: TDataSet);
var
    sSaidasOriginais: string;
begin
    inherited;
    {Substituindo Tipo Padrao e Favorecido}
    Q_Movimentos.Sql.Text := 'Select 	s.*, f.Nome, t.Descricao as DescTipoMov, ' +
        ' tp.Descricao as DescTipoPadrao,	v.Nome as NomeVendedor ' +
        ' From Saidas s INNER JOIN Favorecidos f ON f.Favorecido = s.Favorecido ' +
        ' INNER JOIN TiposMovimento t ON t.TipoMovimento = s.TipoMovimento ' +
        ' INNER JOIN TiposPadrao tp ON tp.TipoPadrao = t.TipoPadrao ' +
        ' LEFT JOIN Favorecidos v ON v.Favorecido = s.Vendedor ' +
        //                          ' Where 	s.Situacao = ''N''  and  KK and s.TipoPadrao = ZZ '+
    ' Where 	s.Situacao = ''N''  and  s.TipoPadrao in (ZZ) ' +
        ' and 	s.Favorecido  =  XX order by s.data desc ';
    if sSaida <> '' then
        begin
            Q_Movimentos.Sql.Text := 'Select 	s.*, f.Nome, t.Descricao as DescTipoMov, ' +
                ' tp.Descricao as DescTipoPadrao,	v.Nome as NomeVendedor ' +
                ' From Saidas s INNER JOIN Favorecidos f ON f.Favorecido = s.Favorecido ' +
                ' INNER JOIN TiposMovimento t ON t.TipoMovimento = s.TipoMovimento ' +
                ' INNER JOIN TiposPadrao tp ON tp.TipoPadrao = t.TipoPadrao ' +
                ' LEFT JOIN Favorecidos v ON v.Favorecido = s.Vendedor ' +
                ' Where 	s.Situacao = ''N''  and  s.TipoPadrao = 1 ' +
                ' and  Upper(s.numero) = ''' + UpperCase(sSaida) + '''';
        end
    else
        begin
            if not DM.bAlteracao then
                //        Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' ((s.Status is null) or (s.Status = ''X'')) ')
                        // Retirado "or (s.Status not in (''X''))" para que pegue os pedidos faturados no caixa.
            else
                begin
                    sSaidasOriginais := '';
                    with DM.Q_SQL do
                        begin
                            Close;
                            SQL.Text := 'Select distinct Entrada_Original from EntradasItensMescla ' +
                                'where Entradaitem in (select Entradaitem from Entradasitens where Entrada = ' + DM.C_TabelaIDMestre.asString + ') ';
                            Open;
                            while not eof do
                                begin
                                    sSaidasOriginais := CExp(sSaidasOriginais, ',') + FieldByName('Entrada_Original').asString;
                                    Next;
                                end;

                            Close;

                        end;

                    if sSaidasOriginais <> '' then
                        Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' ((s.Saida in (' + sSaidasOriginais + ')) ) ')
                    else
                        //          Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'KK', ' ((s.Status is null) or (s.Status = ''X'')) ');

                end;
            Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'XX', sFavs);
            Q_Movimentos.SQL.Text := replace(Q_Movimentos.SQL.Text, 'ZZ', sTipos);
        end;
end;

procedure TDlgMesclarVendas.GridMovsTS_OnAfterSelection(
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

procedure TDlgMesclarVendas.dbgItensTS_OnAfterSelection(
    Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
    inherited;

    if (C_ItensTipoItem.Value in [1, 2, 3]) then
        begin
            C_Itens.Edit;

            if bSelected then
                C_ItensicQtdMesclar.Value := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value
            else
                C_ItensicQtdMesclar.Value := 0;

            C_Itens.Post;

            dbgItens.TS_SelectedColumn := 'icQtdMesclar';
        end;

end;

procedure TDlgMesclarVendas.GridMovsItensCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    AtualizarSelecionados;
end;

procedure TDlgMesclarVendas.AtualizarSelecionados;
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

procedure TDlgMesclarVendas.dbgItensEditing(Sender: TObject;
    Node: TdxTreeListNode; var Allow: Boolean);
var nTipo: Integer;
begin
    inherited;
    if (dbgItens.TS_SelectedColumn = 'icQtdMesclar') then
        begin
            nTipo := dbgItens.GetFieldValue(Node, 'TipoItem', 1);
            Allow := nTipo in [1, 2, 3];
        end;
end;

procedure TDlgMesclarVendas.dbgItensEdited(Sender: TObject;
    Node: TdxTreeListNode);
begin
    inherited;
    if dbgItens.TS_SelectedColumn = 'icQtdMesclar' then
        begin
            if not dbgItens.Selecionado and (StrToFloatDef(dbgItens.GetFieldValue(Node, 'icQtdMesclar', 0, true), 0) > 0) then
                dbgItens.Selecionar;
        end;
end;

procedure TDlgMesclarVendas.C_ItensicQtdMesclarValidate(
    Sender: TField);
begin
    inherited;
    {Este Codigo foi comentado para possibilitar aos clientes que trabalham com
     a baixa de estoque sobre o pedido de venda, devolver produtos para o estoque
     das mercadorias ja faturadas - Ex.: Central Plast Atacado}

//  if (C_ItensItem.Value > 0) and (C_ItensTipoItem.Value in [1,2,3]) and
//     (C_ItensQuantidade.Value > 0) and (Sender.asFloat > 0) and
//     (Sender.asFloat - (C_ItensQuantidade.Value - C_ItensQtdFaturada.Value) > 0.01) then begin
//    DlgMsg.ShowMsg(2189);
//    raise Exception.Create('@@');
//  end;
end;

procedure TDlgMesclarVendas.btGravarClick(Sender: TObject);
var
    m, i: Integer;
    nDesconto, nFrete, nDespesa, nPJuros, nJuros: Currency;
    nPlano: Integer;
    sMessage: string;
begin
    inherited;
    if C_Movimentos.State <> dsBrowse then
        C_Movimentos.Post;

    { Mesclar os Itens escolhidos na invoice }
    if GridMovs.nQuantidadeSelecionada = 0 then
        begin
            DlgMsg.ShowMsg(2300);
            exit;
        end;

    {Confirmação}
  //  if DlgMsg.ShowMsg(2301) = 200 then
  //    exit;

    {Iniciando processo de mesclagem}
    pBar.Position := 0;
    pnBar.Visible := true;

    pBar.Max := Trunc(GridMovsQtdItensSel.SummaryFooterValue);

    if bDeleteItens then
        begin
            pBar.Max := pBar.Max + 1;
            with DM.C_Itens do
                begin
                    First;
                    try
                        DisableControls;
                        while not EOF do
                            begin
                                if FieldByName('Mesclado').asString = 'S' then
                                    Delete {Verificar se os itens filhos são deletados e se saidasitensmescla também}
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

    with DM do
        begin
            C_Tabela.Edit;
            C_TabelaCAMPO01.asVariant := C_Movimentos.FieldByName('Campo01').Value;
            C_TabelaCAMPO02.asVariant := C_Movimentos.FieldByName('Campo02').Value;
            C_TabelaCAMPO03.asVariant := C_Movimentos.FieldByName('Campo03').Value;
            C_TabelaCAMPO04.asVariant := C_Movimentos.FieldByName('Campo04').Value;
            //    C_TabelaTabelaPadrao.Value:= C_Movimentos.FieldByName('TabelaPadrao').asInteger;
            C_TabelaTIPOENTREGA.asVariant := C_Movimentos.FieldByName('TipoEntrega').Value;
            C_TabelaLOCALENTREGA.asVariant := C_Movimentos.FieldByName('LocalEntrega').Value;
            C_TabelaDATAENTREGA.asVariant := C_Movimentos.FieldByName('DataEntrega').Value;
            C_TabelaVendedor.AsVariant := C_Movimentos.FieldByName('Vendedor').Value;
            //    C_TabelaPCOMISSAO.asVariant   := C_Movimentos.FieldByName('PComissao').Value;
        end;

    nDesconto := C_Movimentos.FieldByName('Desconto').asCurrency;
    nFrete := C_Movimentos.FieldByName('Frete').asCurrency;
    nDespesa := C_Movimentos.FieldByName('OutrasDespesas').asCurrency;

    nPlano := C_Movimentos.FieldByName('PlanoPagamento').asInteger;
    nPJuros := C_Movimentos.FieldByName('PJuros').asCurrency;
    nJuros := C_Movimentos.FieldByName('Juros').asCurrency;
    sMessage := C_Movimentos.FieldByName('OBS').asString;

    for m := 1 to GridMovs.nQuantidadeSelecionada do
        begin
            dbgItens.FirstSelected;

            for i := 1 to dbgItens.nQuantidadeSelecionada do
                begin
                    JoinItemToOperation(C_ItensSaidaItem.Value);
                    pBar.Position := pBar.Position + 1;

                    dbgItens.NextSelected;
                end;

            GridMovs.NextSelected;
        end;

    {Completando com mais dados o faturamento}
    try
        if GridMovs.nQuantidadeSelecionada = 1 then
            with DM do
                begin
                    bFaturandoOperacao := true;

                    C_TabelaDesconto.Value := nDesconto;
                    C_TabelaFrete.Value := nFrete;
                    C_TabelaOutrasDespesas.Value := nDespesa;
                    C_TabelaJuros.Value := nJuros;
                    C_TabelaOBS.Value := sMessage;

                    if nPlano > 0 then
                        begin
                            C_PlanosPagamento.Locate('PlanoPagamento', nPlano, []);
                            C_TabelaPlanoPagamento.Value := nPlano;
                            C_TabelaPJuros.Value := nPJuros; //Não gera as Parcelas (bFaturandoOperacao = true).
                        end;

                    {***Parcelas da Operação - Mesclando}
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

function TDlgMesclarVendas.PegaValidadeLote;
begin
    result := 0;
    with DMProjeto.Q_ComandoSQL do
        begin
            close;
            SQL.text := 'select validade from itenslotes where numerolote = :lote and item = :item';
            params[0].asstring := sNumeroLote;
            params[1].asinteger := nItem;
            open;
            if fieldbyname('validade').asdatetime > 0 then
                result := fieldbyname('validade').asdatetime;
        end;
end;

procedure TDlgMesclarVendas.JoinItemToOperation;
    function ItemExatamenteIgual: Boolean;
    begin
        result := false;

    end;

    procedure CopiarItem;
    var dValidade: Tdatetime;
    begin
        DM.C_ItensMESCLADO.Value := 'S';
        //DM.C_ItensTabelaPreco.Value    := C_ItensTabelaPreco.Value;
        //DM.C_ItensPrecoTabela.Value    := C_ItensPrecoTabela.Value;

        DM.C_ItensUnidade.Value := C_ItensUnidade.Value;
        DM.C_ItensFator.Value := C_ItensFator.Value;

        DM.C_ItensCustoContabil.Value := C_ItensCustoContabil.Value;
        DM.C_ItensCustoMedio.Value := C_ItensCustoMedio.Value;

        DM.C_ItensPreco.Value := C_ItensPreco.Value;
        DM.C_ItensQuantidade.Value := C_ItensicQtdMesclar.Value;
        DM.C_ItensSaidaItem.Value := C_ItensSaidaItem.Value;
        DM.C_ItensVendedor.Value := C_MovimentosVendedor.Value;

        DM.C_ItensDESCRICAO.Value := C_ItensDESCRICAO.Value;
        DM.C_ItensUSOTIPOITEM.asVariant := C_ItensUSOTIPOITEM.asVariant;
        //    DM.C_ItensProducao.asVariant   := C_ItensProducao.asVariant;
        //    DM.C_ItensDespesa.asVariant    := C_ItensDespesa.asVariant;
        //    DM.C_ItensEntradaItem.asVariant:= C_ItensEntradaItem.asVariant;

        DM.C_ItensCOLUNA1.asVariant := C_ItensCOLUNA1.asVariant;
        DM.C_ItensCOLUNA2.asVariant := C_ItensCOLUNA2.asVariant;
        DM.C_ItensCOLUNA3.asVariant := C_ItensCOLUNA3.asVariant;
        DM.C_ItensCOLUNA4.asVariant := C_ItensCOLUNA4.asVariant;

        //    DM.C_ItensFUNCPRODUCAO.asVariant := C_ItensFUNCPRODUCAO.asVariant;
        DM.C_ItensHASCHILDREN.Value := C_ItensHASCHILDREN.Value;
        //    DM.C_ItensCONTAVENDA.Value     := C_ItensCONTAVENDA.Value;
        DM.C_ItensSituacaoECF.Value := C_ItensSituacaoECF.Value;
        DM.C_ItensIPI.Value := C_ItensIPI.Value;
        DM.C_ItensAliqICMS.Value := C_ItensAliqICMS.Value;
        DM.C_ItensCST.Value := C_ItensCST.Value;
        DM.C_ItensReducaoCST.Value := C_ItensReducaoCST.Value;
        DM.C_ItensAlmoxarifado.Value := C_ItensAlmoxarifado.Value;

        {Felipe - Adicionando Campos relacionados a ICMS, IPI, PIS e COFINS para importacao (20/08/2015)}
        DM.C_ItensBASECALCICMSPROD.Value := C_ItensBASECALCICMSPROD.Value;
        DM.C_ItensALIQICMS.Value := C_ItensALIQICMS.Value;
        DM.C_ItensVALORICMSPROD.Value := C_ItensVALORICMSPROD.Value;
        DM.C_ItensBASECALCSUBSTPROD.Value := C_ItensBASECALCSUBSTPROD.Value;
        DM.C_ItensVALORICMSSUBSTPROD.Value := C_ItensVALORICMSSUBSTPROD.Value;
        DM.C_ItensALIQIPI.Value := C_ItensALIQIPI.Value;
        DM.C_ItensVALORIPIPROD.Value := C_ItensVALORIPIPROD.Value;
        DM.C_ItensALIQPIS.Value := C_ItensALIQPIS.Value;
        DM.C_ItensVALORPISPROD.Value := C_ItensVALORPISPROD.Value;
        DM.C_ItensALIQCOFINS.Value := C_ItensALIQCOFINS.Value;
        DM.C_ItensVALORCOFINSPROD.Value := C_ItensVALORCOFINSPROD.Value;

        DM.C_ItensNUMEROLOTE.Value := C_ItensNUMEROLOTE.Value;
        if C_ItensNUMEROLOTE.Value <> '' then
            begin
                dValidade := PegaValidadeLote(C_ItensItem.value, C_ItensNUMEROLOTE.Value);
                if dValidade > 0 then
                    DM.C_ItensValidade.Value := dValidade;
            end;

        {Copiando os Filhos}
        if (DM.C_ItensHASCHILDREN.VAlue = 'S') and (Q_Filhos.Active) then
            begin
                Q_Filhos.First;
                DM.bPopulando := true; // para não ocorrer o change.
                while not Q_Filhos.EOF do
                    begin
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

        {Copiando os Filhos}
        (*
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
        *)

    end;

begin
    {Ao entrar nesta função, tanto C_Movimentos como C_Itens já estão posicionados corretamente}
    DM.bMesclando := true;

    try
        {Capturando os Itens-Filhos (se existir) para o Item que será mesclado}
        Q_Filhos.Close;
        if C_ItensHasChildren.Value = 'S' then
            begin
                Q_Filhos.Params[0].asInteger := nIDITem;
                Q_Filhos.Open;
            end;

        {Verificando se o Item já existe em GridItens - se existe, o sistema irá verificar se é exatamente igual;
         caso seja, será adicionada a quantidade apenas, caso não seja, será adicionado novo item.}
        if ItemExatamenteIgual then
            begin //Já posiciona DM.C_Itens no item que será adicionado
                {Adicionando quantidade}
                DM.C_Itens.Edit;
                DM.C_ItensQuantidade.Value := DM.C_ItensQuantidade.Value + C_ItensicQtdMesclar.Value;
                DM.C_Itens.Post;

                {Adicionando em C_Mesclagens}
                with DM.C_Mesclagens do
                    begin
                        Append;
                        FieldByName('ENTRADAITEM_ORIGINAL').asInteger := nIDItem;
                        FieldByName('ENTRADA_ORIGINAL').asInteger := C_ItensSaida.Value;
                        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
                        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdFaturada.Value;
                        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
                        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
                        FieldByName('Unidade').asString := C_ItensUnidade.value;
                        FieldByName('Fator').asFloat := C_ItensFator.value;
                        FieldByName('Empresa').AsInteger := C_ItensEMPRESA.Value;
                        Post;
                    end;
            end //exatamenteigual;
        else
            begin //Item é diferente;
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
                with DM.C_Mesclagens do
                    begin
                        Append;
                        FieldByName('ENTRADAITEM_ORIGINAL').asInteger := nIDItem;
                        FieldByName('ENTRADA_ORIGINAL').asInteger := C_ItensSaida.Value;
                        FieldByName('Quantidade').asFloat := C_ItensicQtdMesclar.Value;
                        FieldByName('OldQuantidade').asFloat := C_ItensOldQtdFaturada.Value;
                        FieldByName('QtdMaxima').asFloat := C_ItensQuantidade.Value - C_ItensQtdFaturada.Value;
                        FieldByName('Fechar_Original').asString := IIF(C_MovimentosStatus.value = 'H', 'S', 'N');
                        FieldByName('Unidade').asString := C_ItensUnidade.value;
                        FieldByName('Fator').asFloat := C_ItensFator.value;
                        FieldByName('Empresa').AsInteger := C_ItensEMPRESA.Value;
                        Post;
                    end;

            end;
    finally
        DM.bMesclando := false;
    end;

end;

procedure TDlgMesclarVendas.dbgItensTS_OnSelection(Sender: TObject;
    bSelected: Boolean; var bCanSelect: Boolean);
begin
    inherited;
    {Este Codigo foi comentado para possibilitar aos clientes que trabalham com
     a baixa de estoque sobre o pedido de venda, devolver produtos para o estoque
     das mercadorias ja faturadas - Ex.: Central Plast Atacado

    bCanSelect := (C_ItensQuantidade.asFloat - C_ItensQtdFaturada.asFloat) > 0;

   }

end;

end.

