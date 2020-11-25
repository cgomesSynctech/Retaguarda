{
TradeSoft Ltda
Autor: Rosil
Data de Criação:

- Historico de Alteracoes:

 05/01/2001	-	André	-	Mudança de Classe/Interbase/MultiIdioma.

- Localização:

 No menu "Contas a Pagar" escolha "Invoices a Pagar".

- Tabelas Principais:

 DuplicatasAPagar, Favorecidos.

- Objetivo:

 Inserir, Consultar, Cancelar e Alterar Duplicatas a Pagar.

- Funcionalidades:

 No "invoices a pagar" você poderá pagar uma duplicata, Alterar o Status da Invoice
 (Supenso, Ativo, Em Cartório, Cobrança judicial, etc).
 Consulta os pagamentos realizados e como foi pago.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

 Cuidado ao mexer na parte de pesquisa, pois existem várias condições. (DM_APAgar Eventos -
 Pesquisar2_SQLFinal e Pesquisar3Params).

-----------------------------------------------------------------------------------------------
}
unit frm_A_Pagar;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, StdCtrls, ComCtrls, Menus, Buttons, DBCtrls, ExtCtrls,
    T_AutorizacaoDialog, ImgList,
    TS_PopupMenu, TS_ScrollBox,
    TS_SpeedButton, FormComponent,
    DlgMsg, TS_DBMemo, TS_GroupBox, TS_DBLookupComboBox, TS_DBEdit,
    TS_ComboBox, TS_Label, TS_DBText, DB, TS_Shape,
    ActnList, GIFImage, TS_Image, TS_DBLookupTipoFav,
    TS_LastDataObject, TS_Bevel, TS_MaxPanel, TS_DBEditFavorecido,
    TS_DBTextEffect, TS_DBEditNumber,
    CheckLst, TS_CheckListBox, TS_PageControl, dxExEdtr, dxEdLib, dxDBELib,
    dxEditor, TS_DBButtonEdit, dxCntner, dxfLabel, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_DBEditDate,
    dxDBTLCl, dxGrClms, dxGrClEx, Dlg_PopupContas,
    teCtrls, TS_EffectsPanel, DBText, dxTLClms, dxDBEdtr, Variants, BTOdeum,
    Placemnt, dxfProgressBar;

type
    TFrmA_Pagar = class(TFrmPadrao)
        lbConta: TTS_Label;
        dfConta: TTS_DBEdit;
        Label1: TTS_Label;
        lbValor: TTS_Label;
        lbVencimento: TTS_Label;
        Label9: TTS_Label;
        lbData: TTS_Label;
        dfParc: TTS_DBEdit;
        btPgtos: TTS_SpeedButton;
        dfMemo: TTS_DBMemo;
        lbMemo: TTS_Label;
        cmbTipoFav: TTS_DBLookupTipoFav;
        Page: TTS_PageControl;
        tabDespesas: TTS_TabSheet;
        dfValor: TTS_DBEditNumber;
        dbtStatus: TTS_DBText;
        dfData: TTS_DBEditDate;
        dfVencimento: TTS_DBEditDate;
        GridDespesas: TTS_QDBGrid;
        GridDespesasCONTAOPERACAO: TdxDBGridMaskColumn;
        GridDespesasCONTA: TdxDBGridMaskColumn;
        GridDespesasID: TdxDBGridMaskColumn;
        GridDespesasVALOR: TdxDBGridCalcColumn;
        GridID: TdxDBGridMaskColumn;
        GridVENCIMENTO: TdxDBGridDateColumn;
        GridCOMPETENCIA: TdxDBGridDateColumn;
        GridDATAPAGO: TdxDBGridDateColumn;
        GridOBS: TdxDBGridMaskColumn;
        GridDATAANTECIPACAO: TdxDBGridDateColumn;
        GridDATACANCELAMENTO: TdxDBGridDateColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridDescStatus: TdxDBGridLookupColumn;
        GridSaldo: TdxDBGridColumn;
        GridVALOR: TdxDBGridMaskColumn;
        GridVALORPAGO: TdxDBGridMaskColumn;
        GridDESCONTOS: TdxDBGridMaskColumn;
        GridCREDITOUTILIZADO: TdxDBGridMaskColumn;
        GridDespesasDescConta: TdxDBGridPopupColumn;
        dfForn: TTS_DBEditFavorecido;
        GridDespesasHistorico: TdxDBGridColumn;
        btContabilidade: TTS_SpeedButton;
        ppFiltrar: TTS_PopupMenu;
        APagar1: TMenuItem;
        Atrasados1: TMenuItem;
        Liquidados1: TMenuItem;
        Cancelados1: TMenuItem;
        N4: TMenuItem;
        Todos1: TMenuItem;
        N5: TMenuItem;
        PagarConta1: TMenuItem;
        ppmPagamentos: TTS_PopupMenu;
        Legenda1: TMenuItem;
        VerPagamento: TMenuItem;
        GridInvoice: TdxDBGridColumn;
        ContasAgendadas1: TMenuItem;
        N6: TMenuItem;
        ltimoGravado1: TMenuItem;
        TS_Label2: TTS_Label;
        TS_DBTextEffect7: TTS_DBTextEffect;
        Bevel1: TBevel;
        GridJUROS: TdxDBGridColumn;
        GridCREDITOGERADO: TdxDBGridColumn;
        CancelarPagamento: TMenuItem;
        N7: TMenuItem;
        lbDias: TTS_DBText;
        lbMsgAtraso: TTS_Label;
        GridColumn19: TdxDBGridColumn;
        GridColumn20: TdxDBGridColumn;
        cmbTipoCobranca: TTS_DBLookupComboBox;
        TS_Label1: TTS_Label;
        pnCancelado: TdxfLabel;
        btVerPagamentos: TTS_SpeedButton;
        lbIndexadores: TTS_Label;
        cmbIndexador: TTS_DBLookupComboBox;
        procedure btPesquisarClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure lbBancoClick(Sender: TObject);
        procedure Label5Click(Sender: TObject);
        procedure EstornarBaixaClick(Sender: TObject);
        procedure btProxCodClick(Sender: TObject);
        procedure DBText2Click(Sender: TObject);
        procedure GridSelection(Sender: TObject; bSelected: Boolean;
            var bCanSelect: Boolean);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure ApagarDadosClick(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure GridDespesasDescContaInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure DBPagamentosDblClick(Sender: TObject);
        procedure VerCorClick(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure dfValorChange(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btContabilidadeClick(Sender: TObject);
        procedure APagar1Click(Sender: TObject);
        procedure PagarConta1Click(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure ltimoGravado1Click(Sender: TObject);
        procedure ppFiltrarPopup(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure CancelarPagamentoClick(Sender: TObject);
        procedure ppmPagamentosPopup(Sender: TObject);
        procedure btVerPagamentosClick(Sender: TObject);
        procedure dfContaKeyPress(Sender: TObject; var Key: Char);
    protected
        DlgPopup: TDlgPopupContas;
    private
        { Private declarations }
        nTmp: Integer;
        bBaixa: Boolean;

        IDParcelaAtual, nIDBaixa: Integer;
        procedure PagarConta;
    protected
        procedure Estado_Inicial; override;
    public
        { Public declarations }
    end;

var
    FrmA_Pagar: TFrmA_Pagar;

implementation
uses DM_A_Pagar, funcoes, DM_Projeto, DM_Financeiro, Dlg_CoresStatus,
    Form_Padrao;

{$R *.DFM}

procedure TFrmA_Pagar.Estado_Inicial;
begin
    inherited;
    Pesquisa := 1;
end;

procedure TFrmA_Pagar.btPesquisarClick(Sender: TObject);
begin
    {  if FormatoTabela.Down then
        Localizar('','')
      else begin
        if not (ActiveControl is TTS_DBEdit) and not (ActiveControl is TTS_DBLookUpComboBox) then
          Localizar('','')
        else }
    inherited;
    //  end;

end;

procedure TFrmA_Pagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    DlgPopup.free;
    // Adriano
    if DMA_Pagar.ContabilidadeAtivado then
        DMA_Pagar.ContabilidadeDesativado;
    ////////////////////
    FrmA_Pagar := nil;
end;

procedure TFrmA_Pagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key in [',', '.'] then
        Key := DecimalSep(Key, 'dfValorPago,dfValor');
end;

procedure TFrmA_Pagar.lbBancoClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmBancos', self, true);
end;

procedure TFrmA_Pagar.Label5Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFornecedores', self, true);
end;

procedure TFrmA_Pagar.EstornarBaixaClick(Sender: TObject);
begin
    inherited;
    {  if Application.MessageBox(Pchar('Deseja realmente estornar a Duplicata Nº '+
                                DMA_Pagar.C_TabelaTitulo.Value+' ?'),'Atenção', mb_yesno+mb_iconQuestion)=IDNo then }
    if DlgMsg.ShowMsg(332, [DMA_Pagar.C_TabelaTitulo.AsString]) = 200 then
        exit;

    with DMA_Pagar do
        begin
            if C_TabelaStatus.Value = 54 then
                begin
                    // ShowMessage('Não é possível estornar uma Duplicata Liquidada por Crédito!');
                    DlgMsg.ShowMsg(333);
                    exit;
                end;

            if C_TabelaStatus.Value < 50 then
                begin
                    // ShowMessage('Não há o que estornar!  A Duplicata ainda não foi liquidada.');
                    DlgMsg.ShowMsg(334);
                    exit;
                end;

        end;
end;

procedure TFrmA_Pagar.btProxCodClick(Sender: TObject);
begin
    inherited;
    if DMA_Pagar.C_Tabela.State = dsBrowse then
        DMA_Pagar.C_Tabela.Edit;
    DMA_Pagar.C_TabelaTitulo.Value := AdicionarStr(IntToStr(DMProjeto.NextID('TituloP')), '0', 6);
end;

procedure TFrmA_Pagar.DBText2Click(Sender: TObject);
begin
    inherited;
    ActiveControl := nil;
end;

procedure TFrmA_Pagar.GridSelection(Sender: TObject; bSelected: Boolean;
    var bCanSelect: Boolean);
begin
    inherited;
    bCanSelect := DMA_Pagar.C_TabelaStatus.Value < 50;
end;

procedure TFrmA_Pagar.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    lbDias.Visible := DMA_Pagar.C_TabelaDiasEmAtraso.Value > 0;
    lbMsgAtraso.Visible := lbDias.Visible;

    // Adriano
    btContabilidade.enabled := DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger = 0;
    /////////////////////////////
    {Cancelados}
    if (DMA_Pagar.C_TabelaStatus.Value = 0) then
        begin
            pnCancelado.Visible := true;
            pnCancelado.Invalidate;
        end
    else
        pnCancelado.Visible := false;

    dfConta.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50) or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0);
    if dfConta.readonly then
        dfConta.Color := $00EBEBEB
    else
        dfConta.Color := clWhite;

    dfParc.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50) or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0);
    if dfParc.readonly then
        dfParc.Color := $00EBEBEB
    else
        dfParc.Color := clWhite;

    dfForn.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50) or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0);
    if dfForn.readonly then
        dfForn.Color := $00EBEBEB
    else
        dfForn.Color := clWhite;

    dfData.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50) or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0);
    if dfData.readonly then
        dfData.Color := $00EBEBEB
    else
        dfData.Color := clWhite;

    dfVencimento.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50); // or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger<>0);
    if dfVencimento.readonly then
        dfVencimento.Color := $00EBEBEB
    else
        dfVencimento.Color := clWhite;

    dfValor.readonly := (DMA_Pagar.C_TabelaStatus.Value = 0) or (DMA_Pagar.C_TabelaStatus.Value >= 50) or (DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0);
    if dfValor.readonly then
        dfValor.Color := $00EBEBEB
    else
        dfValor.Color := clWhite;

    btComando2.Visible := DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> 0;
    GridDespesas.Enabled := (DMA_Pagar.C_TabelaStatus.Value > 0) and (DMA_Pagar.C_TabelaStatus.Value < 50) and (DMA_Pagar.C_TabelaCompra.AsInteger = 0);
    if GridDespesas.Enabled then
        GridDespesas.Color := clWhite
    else
        GridDespesas.Color := $00EBEBEB;

    btComando1.Visible := DMA_Pagar.bAlteracao and (DMA_Pagar.C_TabelaStatus.Value > 0) and (DMA_Pagar.C_TabelaStatus.Value < 50);
    btVerPagamentos.Visible := (DMA_Pagar.C_TabelaValorPago.Value + DMA_Pagar.C_TabelaCreditoUtilizado.Value > 0) and (DMA_Pagar.bAlteracao);
end;

procedure TFrmA_Pagar.btLimparClick(Sender: TObject);
begin
    inherited;
    Page.ActivePageIndex := 0;
end;

procedure TFrmA_Pagar.ApagarDadosClick(Sender: TObject);
var nID: integer;
begin
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'CanConta') then
        exit;
    if DMA_Pagar.C_TabelaStatus.Value <= 0 then
        begin
            DlgMsg.ShowMsg(202); // 'O Status do Título não é válido para Cancelamento!'
            exit;
        end;
    if DMA_Pagar.C_TabelaCompra.AsInteger <> 0 then
        begin
            with DMFinanceiro.Q_SQL do
                begin
                    close;
                    sql.text := 'select Numero from entradas where id = ' + DMA_Pagar.C_TabelaCompra.AsString;
                    open;
                    if recordcount > 0 then
                        begin
                            DlgMsg.ShowMsg(937, ['#' + fields[0].AsString]);
                            close;
                            exit;
                        end;
                end;
        end;

    nID := DMA_Pagar.C_TabelaID.Value;
    if DlgMsg.ShowMsg(328, [DMA_Pagar.C_TabelaTitulo.AsString,
        currencystring + formatfloat('###,###,##0.00', DMA_Pagar.C_TabelaValor.Value)]) = 100 then
        begin
            if DMFinanceiro.CancelarDuplicata(DMA_Pagar.C_TabelaID.Value, '', true, true) then
                begin
                    DMA_Pagar.C_Tabela.Edit;
                    DMA_Pagar.C_TabelaStatus.Value := 0;
                    DMA_Pagar.C_Tabela.Post;
                    FormComponentAfterScroll(Sender);
                end;
        end;
end;

procedure TFrmA_Pagar.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    DMA_Pagar.nFiltro := 1;
end;

procedure TFrmA_Pagar.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    Page.ActivePageIndex := 0;
    btComando1.Visible := false;
    GridDespesas.TS_SelectedColumn := 'DescConta';
end;

procedure TFrmA_Pagar.GridDespesasDescContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
    DlgPopup.SetTipo(15);
    DlgPopup.SetNaoTipo('8');
end;

procedure TFrmA_Pagar.FormActivate(Sender: TObject);
begin
    inherited;
    gridDespesasDescConta.PopupControl := DlgPopUp.pnPopUp;
end;

procedure TFrmA_Pagar.DBPagamentosDblClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm([DMA_Pagar.C_RetiradasDocRetirada.AsInteger]);
            CriarForm(getTelaGeradora(DMA_Pagar.C_RetiradasDocTipoRetirada.AsInteger), self, true);
        end;
end;

procedure TFrmA_Pagar.VerCorClick(Sender: TObject);
begin
    inherited;
    DlgCoresStatus := TDlgCoresStatus.Create(self);
    DlgCoresStatus.ShowModal;
    DlgCoresStatus.Release;
end;

procedure TFrmA_Pagar.PagarConta;
var i, Favorecido: integer;
begin
    inherited;
    IDParcelaAtual := DMA_Pagar.C_TabelaID.Value;
    if not DMA_Pagar.bAlteracao then
        begin
            // ShowMessage('É preciso cadastrar primeiro para poder baixar!');
            DlgMsg.ShowMsg(329);
            exit;
        end;

    if (FormatoTabela.Checked) and (Grid.Selecionados <> '') then
        begin

            Grid.FirstSelected;
            Favorecido := DMA_Pagar.C_TabelaFornecedor.Value;
            for i := 1 to ContaStrings(Grid.Selecionados, ',') do
                begin
                    if Favorecido <> DMA_Pagar.C_TabelaFornecedor.Value then
                        Favorecido := 0;
                    Grid.NextSelected;
                end;

            with DMProjeto do
                begin
                    SetParametrosForm([null,
                        Favorecido,
                            Grid.Selecionados]);
                    if CriarForm('DlgSangria', self, true) = mrOk then
                        DMA_Pagar.Localizar('', '');

                end;

        end
    else if (DMA_Pagar.C_TabelaStatus.Value < 50) and (DMA_Pagar.C_TabelaStatus.Value > 0) then
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([null,
                        DMA_Pagar.C_TabelaFornecedor.Value,
                            DMA_Pagar.C_TabelaID.AsString]);
                    if CriarForm('DlgSangria', self, true) = mrOK then
                        DMA_Pagar.Localizar('', '');
                end;
        end
    else
        DlgMsg.ShowMsg(331);
    // ShowMessage('A Duplicata já foi baixada!');
end;

procedure TFrmA_Pagar.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inherited;
    if key = vk_F2 then
        PagarConta;
end;

procedure TFrmA_Pagar.dfValorChange(Sender: TObject);
begin
    inherited;
    DMA_Pagar.AtualizaContas(dfValor.Value);
end;

procedure TFrmA_Pagar.FormCreate(Sender: TObject);
begin
    // Adriano
    DMA_Pagar.CriaContabilidade;
    inherited;
    if DMProjeto.bBrasil then
        begin
            pnCancelado.caption := 'Canc.';
            btContabilidade.visible := false;
            btComando2.caption := 'Visualizar Nota';
            GridDespesasHistorico.caption := 'Obs.';
            lbConta.caption := '# Doc.';
        end;
    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasDS, nil, true);
end;

procedure TFrmA_Pagar.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'CONTABILID') then
        exit;
    // Adriano
    DMA_Pagar.Contabiliza;

    DMA_Pagar.MostraContabilidade;
    ////////////////
end;

procedure TFrmA_Pagar.APagar1Click(Sender: TObject);
var sTexto, sWhereAdicional: string;
begin
    inherited;
    sWhereAdicional := '';
    if (ActiveControl = dfForn) and (dfForn.ID <> 0) then
        sWhereAdicional := 'fornecedor = ' + IntToStr(dfForn.ID) + ' ';

    if (ActiveControl = dfValor) and (dfValor.value <> 0) then
        sWhereAdicional := 'valor = ' + FloatToStr(dfValor.Value) + ' ';

    if (ActiveControl = dfVencimento) and (dfVencimento.Date <> 0) then
        sWhereAdicional := 'vencimento = ' + QuotedStr(formatdatetime('mm/dd/yyyy', dfVencimento.Date)) + ' ';

    if (ActiveControl = dfData) and (dfData.Date <> 0) then
        sWhereAdicional := 'competencia = ' + QuotedStr(formatdatetime('mm/dd/yyyy', dfData.Date)) + ' ';

    if TWinControl(Sender).Tag = 1 then
        begin //Em aberto e em atraso
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroAber') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, 'where Status > 0 and Status < 50 ' + iif(sWhereAdicional <> '', ' and ', '') + sWhereAdicional)
        end
    else if TWinControl(Sender).Tag = -1 then
        begin //Todas
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroTodo') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, sWhereAdicional)
        end
    else if TWinControl(Sender).Tag = 3 then
        begin
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroAtra') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, 'where Status = ' + IntToStr(TWinControl(Sender).Tag) + iif(sWhereAdicional <> '', ' and ', '') + sWhereAdicional);
        end
    else if TWinControl(Sender).Tag = 50 then
        begin
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroLiq') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, 'where Status = ' + IntToStr(TWinControl(Sender).Tag) + iif(sWhereAdicional <> '', ' and ', '') + sWhereAdicional);
        end
    else if TWinControl(Sender).Tag = -3 then
        begin
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroAgend') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, 'where Status = ' + IntToStr(TWinControl(Sender).Tag) + iif(sWhereAdicional <> '', ' and ', '') + sWhereAdicional);
        end
    else if TWinControl(Sender).Tag = 0 then
        begin
            if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'FiltroCan') then
                exit;
            Localizar(DMA_Pagar.Q_Tabela.SQL.Text, 'where Status = ' + IntToStr(TWinControl(Sender).Tag) + iif(sWhereAdicional <> '', ' and ', '') + sWhereAdicional);
        end;
    DMA_Pagar.nFiltro := TWinControl(Sender).Tag;
    sTexto := replace(TMenuItem(Sender).Caption, '&', '');
    //	btComando1.Caption := 'Filtro: '+sTexto;
end;

procedure TFrmA_Pagar.PagarConta1Click(Sender: TObject);
begin
    inherited;
    btComando1.Click;
end;

procedure TFrmA_Pagar.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'RETIRADAS,RETIRADASDOC') > 0 then
        begin
            if IDParcelaAtual <> 0 then
                DMA_Pagar.Localizar('', 'where ID = ' + IntToStr(IDParcelaAtual));
        end
    else if pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0 then
        if ActiveControl is TTS_DBEditFavorecido then
            TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TFrmA_Pagar.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    ActiveControl := nil;
end;

procedure TFrmA_Pagar.btComando2Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'VISORIGEM') then
        exit;
    if DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger <> DMA_Pagar.C_TabelaID.AsInteger then
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([DMA_Pagar.C_TabelaIDGerador_APagar.AsInteger]);
                    CriarForm(getTelaGeradora(DMA_Pagar.C_TabelaOrigem_APagar.AsInteger), self, true);
                end;
        end;
end;

procedure TFrmA_Pagar.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    ApagarDados.Enabled := (DMA_Pagar.C_TabelaCompra.AsInteger = 0) and (DMA_Pagar.C_TabelaStatus.AsInteger > 0);
end;

procedure TFrmA_Pagar.ltimoGravado1Click(Sender: TObject);
begin
    inherited;
    with DMProjeto.Q_SQL do
        begin
            close;
            sql.text := 'select max(id) from duplicatasapagar ';
            open;
            Localizar('', ' where id = ' + fields[0].AsString);
            close;
        end;
end;

procedure TFrmA_Pagar.ppFiltrarPopup(Sender: TObject);
begin
    inherited;
    APagar1.Enabled := DMProjeto.LerPermissao(self.name, 'FiltroAber');
    Atrasados1.Enabled := DMProjeto.LerPermissao(self.name, 'FiltroAtra');
    Liquidados1.Enabled := DMProjeto.LerPermissao(self.name, 'FiltroLiq');
    Todos1.Enabled := DMProjeto.LerPermissao(self.name, 'FiltroTodo');
    Cancelados1.Enabled := DMProjeto.LerPermissao(self.name, 'FiltroCan');
end;

procedure TFrmA_Pagar.btComando1Click(Sender: TObject);
begin
    inherited;
    if DMProjeto.Versao = 'E' then
        PagarConta
    else
        begin
            DMProjeto.SetParametrosForm([DMA_Pagar.C_TabelaID.AsInteger,
                DMA_Pagar.C_TabelaFornecedor.AsInteger,
                    DMA_Pagar.C_TabelaNome.AsString,
                    DMA_Pagar.C_TabelaNotaFiscal.AsString,
                    DMA_Pagar.C_TabelaVencimento.Value,
                    DMA_Pagar.C_TabelaValor.Value,
                    DMA_Pagar.C_TabelaFaltaPagar.Value]);
            DMProjeto.CriarForm('DlgPagamentoLight', self, true);
            DMA_Pagar.Localizar('', ' where id = ' + DMA_Pagar.C_TabelaID.AsString);
        end;
end;

procedure TFrmA_Pagar.CancelarPagamentoClick(Sender: TObject);
begin
    inherited;
    DMFinanceiro.CancelarRetirada(DMA_Pagar.C_RetiradasDocRETIRADA.AsString, '', true, true);
    DMA_Pagar.Localizar('', ' where id = ' + DMA_Pagar.C_TabelaID.AsString);
end;

procedure TFrmA_Pagar.ppmPagamentosPopup(Sender: TObject);
begin
    inherited;
    VerPagamento.Visible := DMProjeto.Versao <> 'S';
    CancelarPagamento.Visible := DMProjeto.Versao = 'S';
end;

procedure TFrmA_Pagar.btVerPagamentosClick(Sender: TObject);
begin
    inherited;
    //  DMProjeto.VerPagamentos( DMA_Pagar.C_TabelaID.AsInteger, 0, DMA_Pagar.C_TabelaNome.AsString );
end;

procedure TFrmA_Pagar.dfContaKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if key in ['.', ','] then
        begin
            DlgMsg.ShowMsg(50, ['Para o campo "Duplicata" não utilizar os seguintes caracteres: ' + #13
                    + '(.) Ponto; ' + #13
                    + '(,) Vírgula; ' + #13]);
            Key := #0;
        end;
end;

end.

