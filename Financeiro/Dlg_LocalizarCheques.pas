{
- Historico de Alteracoes:

- Localização:

 No menu "Contas a Receber" escolha "Consultar Cheques Recebidos".

- Tabelas Principais:

 DepositosDoc, Depositos.

- Objetivo:

 Consulta Geral de Cheques.

- Funcionalidades:

 Alterar dados do Cheque
 Marcar como Devolvido
 Resgatar do Banco
 Acertar Cheque com o Cliente.
 Emitir Carta Cobrança
 Permite emitir relatório de "Acompanhamento de Cheques"

- Quais cuidados devem ser tomados por quem irá alterar a unit.

 DlgMarcarDevolvido, DlgAcertarCheque são usados também em DlgDevolucaoCheques.

-----------------------------------------------------------------------------------------------

}
unit Dlg_LocalizarCheques;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, Db, DBTables, StdCtrls,
    ComCtrls, DBCtrls, ExtCtrls, DlgMsg, Buttons,
    TS_SpeedButton, IBCustomDataSet, IBQuery,
    TS_CheckBox, TS_DateTimePicker, TS_Edit, TS_DBLookupComboBox, TS_Label,
    Provider, DBClient, TS_DBText,
    TS_DBLookupTipoFav, TS_ComboBox, TS_LastDataObject,
    TS_Bevel, TS_MaxPanel, TS_EditFavorecido, IBUpdateSQL, dxExEdtr, dxEdLib,
    dxDBELib, dxDBEdtr, dxCntner, dxEditor, TS_ButtonEdit, FormsComponent,
    TS_Image, dxfLabel, TS_LookupComboBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, dxDBTLCl, dxGrClms, Menus, teCtrls,
    TS_EffectsPanel, TS_PopupEdit, Dlg_PopupContas, DM_Contabilidade,
    TS_PopupMenu, BTOdeum, Placemnt;

type
    TDlgLocalizarCheques = class(TFrmModeloCadastros)
        Panel1: TTS_Panel;
        Label8: TTS_Label;
        Label11: TTS_Label;
        BitBtn1: TBitBtn;
        Q_Cheques: TIBQuery;
        C_ChequesDS: TDataSource;
        C_Cheques: TClientDataSet;
        C_ChequesProvider: TDataSetProvider;
        C_ChequesIDDOC: TIntegerField;
        C_ChequesDEPOSITO: TIntegerField;
        C_ChequesFORMAPAGAMENTO: TIntegerField;
        C_ChequesVENCIMENTO: TDateField;
        C_ChequesSTATUS: TIntegerField;
        C_ChequesLOCALTITULO: TStringField;
        C_ChequesFORADAEMPRESA: TStringField;
        C_ChequesCONTAATUAL: TIntegerField;
        C_ChequesNOME: TStringField;
        C_ChequesDESCFORMA: TStringField;
        C_ChequesDESCSTATUS: TStringField;
        C_ChequesNOMEBANCO: TStringField;
        cmbTipoFav: TTS_DBLookupTipoFav;
        cbConsulta: TTS_ComboBox;
        C_ChequesVALOR: TBCDField;
        C_ChequesTITULARCHEQUE: TStringField;
        C_ChequesBANCO: TIntegerField;
        C_ChequesNUMCHEQUE: TIntegerField;
        TS_DBText1: TTS_DBText;
        TS_Label2: TTS_Label;
        C_ChequesTIPODEPOSITO: TIntegerField;
        U_Cheques: TIBUpdateSQL;
        C_ChequesDESCCONTA: TStringField;
        edFavorecido: TTS_EditFavorecido;
        cmbConta: TTS_PopupEdit;
        DBCheques: TTS_QDBGrid;
        Nome: TdxDBGridColumn;
        Valor: TdxDBGridColumn;
        Banco: TdxDBGridColumn;
        NumCheque: TdxDBGridColumn;
        Status: TdxDBGridColumn;
        Conta: TdxDBGridColumn;
        FormaPagamento: TdxDBGridColumn;
        C_Cheques_icSelecionado: TIntegerField;
        TitularCheque: TdxDBGridColumn;
        Vencimento: TdxDBGridDateColumn;
        DBChequesStatus: TdxDBGridColumn;
        C_ChequesDATA: TDateField;
        Data: TdxDBGridColumn;
        C_ChequesFAVORECIDO: TIntegerField;
        Depositar: TMenuItem;
        Descontar: TMenuItem;
        Historico: TMenuItem;
        N1: TMenuItem;
        ppmGrid: TTS_PopupMenu;
        Legenda1: TMenuItem;
        VerRecebimento1: TMenuItem;
        OcorrnciasdoCheque1: TMenuItem;
        DBChequesLocalCheque: TdxDBGridColumn;
        btResgate: TTS_SpeedButton;
        DBChequesFavorecido: TdxDBGridColumn;
        DBChequesIDDoc: TdxDBGridColumn;
        C_ChequesCONTARECEBER: TIntegerField;
        DBChequesContaAtual: TdxDBGridColumn;
        btChequeDev: TTS_SpeedButton;
        btCancelarDev: TTS_SpeedButton;
        TS_Bevel3: TTS_Bevel;
        DBChequesDEPOSITO: TdxDBGridColumn;
        btImprimir: TTS_SpeedButton;
        btAcertarCheque: TTS_SpeedButton;
        C_ChequesTIPOFAVORECIDO: TIntegerField;
        C_ChequesVENDEDOR: TStringField;
        DBChequesVENDEDOR: TdxDBGridColumn;
        C_ChequesNUNDEV: TIntegerField;
        DBChequesNUNDEV: TdxDBGridColumn;
        btnLiquidarCheque: TTS_SpeedButton;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure SignificadodasCores1Click(Sender: TObject);
        procedure cmbTipoFavClick(Sender: TObject);
        procedure cbConsultaChange(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure DBChequesDblClick(Sender: TObject);
        procedure cmbContaChange(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure C_ChequesAfterScroll(DataSet: TDataSet);
        procedure btComando1Click(Sender: TObject);
        procedure DBChequesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure cmbContaInitPopup(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure OcorrnciasdoCheque1Click(Sender: TObject);
        procedure edFavorecidoSelecionou(Sender: TObject);
        procedure btResgateClick(Sender: TObject);
        procedure btChequeDevClick(Sender: TObject);
        procedure btCancelarDevClick(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure btAcertarChequeClick(Sender: TObject);
        procedure btnLiquidarChequeClick(Sender: TObject);
    protected
        DlgPopup: TDlgPopupContas;
        // Adriano
        DMContabil: TDMContabilidade;
    private
        { Private declarations }
        sCheques, sMensagem: string;
        function AtualizaControles: boolean;
        procedure Pesquisar;
    public
        { Public declarations }
    end;

var
    DlgLocalizarCheques: TDlgLocalizarCheques;

implementation

uses funcoes, DM_Projeto, Dlg_CoresStatus, DM_Financeiro, Variants,
    Form_Padrao;

{$R *.DFM}

procedure TDlgLocalizarCheques.Pesquisar;
begin
    if not DMFinanceiro.C_ContasCxBc.Active then
        Exit;
    C_Cheques.AfterScroll := nil;
    with C_Cheques do
        begin
            if C_Cheques.State in [dsEdit] then
                C_Cheques.Post;
            if ChangeCount > 0 then
                ApplyUpdates(0);
            Close;
            CommandText := 'Select dd.*, f.Nome, fp.Descricao as DescForma, ' +
                's.Descricao as DescStatus, b.Nome as NomeBanco, ' +
                'd.Data, d.TipoDeposito, c.Descricao as DescConta, d.favorecido, f.tipofavorecido, ' +
                ' v.nome as vendedor ' +
                'From  DepositosDoc dd inner join Depositos d on (dd.empresa = d.empresa and dd.Deposito = d.Deposito and dd.pdv = d.pdv) ' +
                'inner join FormasPagamento fp on dd.FormaPagamento = fp.FormaPagamento ' +
                'inner join StatusDoc s on dd.Status = s.Status ' +
                'left  join Favorecidos f on d.Favorecido = f.Favorecido ' +
                'left  join Favorecidos b on dd.banco = b.favorecido ' +
                'left join Contas c on dd.contaatual = c.conta ' +
                'left join favorecidos v on v.favorecido = f.vendedor ' +
                'Where fp.Especie = 1 :Cancelado ';
            if sCheques <> '' then
                CommandText := CommandText + ' and dd.IDDoc IN (' + sCheques + ')';

            if cmbConta.LookupKeyValue <> 0 then
                begin
                    CommandText := CommandText + ' and (dd.ContaAtual = ' + IntTostr(cmbConta.LookupKeyValue) + ') ';
                end;

            if edFavorecido.getID <> 0 then
                begin
                    CommandText := CommandText + ' and d.favorecido = ' + IntToStr((edFavorecido.getID));
                end;

            if cbConsulta.ItemIndex = 1 then
                CommandText := CommandText + ' and (dd.ForaDaEmpresa = ''N'') '
            else if cbConsulta.ItemIndex = 2 then
                begin
                    CommandText := CommandText + ' and (dd.ForaDaEmpresa = ''S'' and dd.Status < 70) ';
                end
            else if cbConsulta.ItemIndex = 3 then
                begin
                    CommandText := CommandText + ' and (dd.ForaDaEmpresa = ''N'' and (dd.Vencimento <= CURRENT_DATE)) ';
                end
            else if cbConsulta.ItemIndex = 4 then
                begin
                    CommandText := CommandText + ' and (d.Data = ''' + formatdatetime('mm/dd/yyyy', DMProjeto.dDataSistema) + ''') ';
                end
            else if cbConsulta.ItemIndex = 5 then
                begin
                    CommandText := CommandText + ' and (d.Data-7 <= ''' + formatdatetime('mm/dd/yyyy', DMProjeto.dDataSistema) + ''') ';
                end
            else if cbConsulta.ItemIndex = 6 then
                begin
                    CommandText := CommandText + ' and dd.Status = 50 ';
                end
            else if cbConsulta.ItemIndex = 7 then
                begin
                    CommandText := replace(CommandText, ':Cancelado', ' and dd.Status = 70 ');
                end
            else if cbConsulta.ItemIndex = 8 then
                begin
                    CommandText := CommandText + ' and dd.Status = 4 ';
                end
            else if cbConsulta.ItemIndex = 9 then
                begin
                    CommandText := CommandText + ' and dd.Status = 71 ';
                end
            else if cbConsulta.ItemIndex = 10 then
                begin
                    CommandText := CommandText + ' and dd.Status = 55 ';
                    DBChequesLocalCheque.Visible := true;
                end
            else if cbConsulta.ItemIndex = 11 then
                begin
                    CommandText := CommandText + ' and dd.Status = 60 ';
                    DBChequesLocalCheque.Visible := true;
                end
            else if cbConsulta.ItemIndex = 12 then
                begin
                    CommandText := CommandText + ' and dd.Status = 61 ';
                    DBChequesLocalCheque.Visible := true;
                end;
            CommandText := CommandText + ' order by Data desc ';
            if cbConsulta.ItemIndex <> 9 then
                CommandText := replace(CommandText, ':Cancelado', ' and dd.Status < 70 ')
            else
                CommandText := replace(CommandText, ':Cancelado', '');
            Open;
        end;
    C_Cheques.AfterScroll := C_ChequesAfterScroll;
    C_ChequesAfterScroll(C_Cheques);

    with DBCheques do
        begin
            TS_ReportTitle := 'Cheques Recebidos';
            TS_ReportFilter.Clear;
            if cmbConta.Text <> '' then
                TS_ReportFilter.Add('Conta: ' + cmbConta.Text);
            if (edFavorecido.ID <> 0) then
                TS_ReportFilter.Add(cmbTipoFav.Text + ': ' + edFavorecido.Text);
            if cbConsulta.Text <> '' then
                TS_ReportFilter.Add(cbConsulta.Text);
        end;
end;

procedure TDlgLocalizarCheques.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    if C_Cheques.State in [dsEdit] then
        C_Cheques.Post;
    if C_Cheques.ChangeCount > 0 then
        C_Cheques.ApplyUpdates(0);
    inherited;
    DlgPopup.Free;
    // Adriano
    if DMContabil <> nil then
        begin
            DMContabil.FechaDatasets;
            DMContabil.Free;
        end;
    ////////////////////
    DlgLocalizarCheques := nil;
end;

procedure TDlgLocalizarCheques.SignificadodasCores1Click(Sender: TObject);
begin
    inherited;
    DlgCoresStatus := TDlgCoresStatus.Create(self);
    DlgCoresStatus.ShowModal;
    DlgCoresStatus.Release;
end;

procedure TDlgLocalizarCheques.cmbTipoFavClick(Sender: TObject);
begin
    inherited;
    edFavorecido.SetFocus;
end;

procedure TDlgLocalizarCheques.cbConsultaChange(Sender: TObject);
begin
    inherited;
    btGravar.Enabled := cbConsulta.ItemIndex = 0;
    btLimpar.Enabled := cbConsulta.ItemIndex <> 2;
    Depositar.Enabled := btGravar.Enabled;
    Descontar.Enabled := btLimpar.Enabled;
    if cbConsulta.ItemIndex = 2 then
        begin
            if DMFinanceiro.C_ContasCxBc.Locate('Conta', cmbConta.LookUpKeyValue, []) then
                if DMFinanceiro.C_ContasCxBcTipoConta.Value <> 2 then
                    begin
                        DMFinanceiro.C_ContasCxBc.Locate('TipoConta', 2, []);
                        cmbConta.LookUpKeyValue := DMFinanceiro.C_ContasCxBcConta.Value;
                    end;
        end
    else if cbConsulta.ItemIndex in [10, 11] then
        begin
            cmbConta.LookUpKeyValue := 0;
            cmbConta.Text := '';
        end
    else if cbConsulta.ItemIndex in [7, 8, 9] then
        begin
            cmbConta.LookUpKeyValue := 1;
        end
    else if cmbConta.LookUpKeyValue = 0 then
        cmbConta.LookUpKeyValue := DMFinanceiro.nContaPadrao;
    Pesquisar;
end;

procedure TDlgLocalizarCheques.btGravarClick(Sender: TObject);
begin
    inherited;
    if not C_Cheques.Active then
        exit;
    if C_Cheques.RecordCount = 0 then
        exit;
    if DBCheques.Selecionados = '' then
        DBCheques.Selecionar;

    with DMProjeto do
        begin
            SetParametrosForm([DBCheques.Selecionados]);
            CriarForm('DlgDepositoCheques', self, true);
            LimparParametrosForm;
        end;
end;

procedure TDlgLocalizarCheques.DBChequesDblClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            if DBCheques.TS_SelectedColumn = 'NOME' then
                begin
                    SetParametrosForm([C_ChequesFavorecido.Value]);
                    CriarForm(getTelaFavorecido(C_ChequesTipoFavorecido.Value), self, true);
                end
            else
                begin
                    SetParametrosForm([C_ChequesDeposito.Value]);
                    CriarForm(getTelaGeradora(C_ChequesTipoDeposito.Value), self, true);
                end;
            LimparParametrosForm;
        end;
end;

procedure TDlgLocalizarCheques.cmbContaChange(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgLocalizarCheques.btComando2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCadastroCheques', self, true);
    Pesquisar;
end;

procedure TDlgLocalizarCheques.btLimparClick(Sender: TObject);
var nOperacao: integer;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'DescCheque') then
        exit;

    if not C_Cheques.Active then
        exit;
    if C_Cheques.RecordCount = 0 then
        exit;
    if DBCheques.Selecionados = '' then
        DBCheques.Selecionar;

    with DBCheques do
        begin
            FirstSelected;
            for nOperacao := 1 to QuantidadeSelecionada do
                begin
                    if not AtualizaControles then
                        begin
                            DlgMsg.ShowMsg(949);
                            exit;
                        end;
                    NextSelected;
                end;
        end;

    if DlgMsg.ShowMsg(932, [formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor'))]) = 200 then
        exit;

    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        nOperacao := DMFinanceiro.DescontarCheques(DBCheques.Selecionados, DBCheques.ValorSelecionado('Valor'));

        // Adriano
        DMContabil.ContabilizaDescontarCheques(nOperacao, C_Cheques);

        if not DMContabil.Salvar(nOperacao) then
            raise Exception.Create(DMProjeto.GetMsg(3117));
        ///////////////////////////

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    except
        on e: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DMProjeto.GeraLog('Descontar Cheques', e.message);
            end;
    end;

    try
        SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', nOperacao, false);
    except
    end;

    //  Pesquisar;
end;

procedure TDlgLocalizarCheques.C_ChequesAfterScroll(DataSet: TDataSet);
begin
    inherited;
    AtualizaControles;
end;

procedure TDlgLocalizarCheques.btComando1Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'HistDescCh') then
        exit;
    with DMProjeto do
        begin
            SetParametrosForm([27, 'Histórico de Cheques Descontados', false]);
            CriarForm('DlgHistoricoOperacoes', self, true);
            LimparParametrosForm;
        end;
end;

procedure TDlgLocalizarCheques.DBChequesCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if not Anode.HasChildren then
        begin
            AFont.Color := DMProjeto.CorPadrao(DBCheques.GetFieldValue(ANode, 'Status', 0));
            if DBCheques.GetFieldValue(ANode, 'Status', 0) = 70 then
                AFont.Style := [fsStrikeout];
        end;
    if (DBCheques.GetFieldValue(ANode, 'NUNDEV', 0) > 1) then
        begin
            AFont.Color := clMaroon;
            AFont.Style := [fsStrikeout];
        end;
end;

procedure TDlgLocalizarCheques.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0 then
        begin
            if ActiveControl is TTS_EditFavorecido then
                TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
        end
    else if pos(UpperCase(LastDataObject.TableName), UpperCase('Retiradas,Depositos,DepositosDoc,OperacoesFinanceiras,TitulosAReceber')) > 0 then
        Pesquisar;
end;

procedure TDlgLocalizarCheques.cmbContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFinanceiro.C_ContasCxBcDS);
    DlgPopup.SetEventos(TTS_PopupEdit(Sender));
end;

procedure TDlgLocalizarCheques.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    btGravar.Visible := DMProjeto.Versao <> 'S';
    btLimpar.Visible := DMProjeto.Versao <> 'S';
    btChequeDev.Visible := DMProjeto.Versao <> 'S';
    btComando1.Visible := DMProjeto.Versao <> 'S';
    btCancelarDev.Visible := DMProjeto.Versao <> 'S';
    btResgate.Visible := DMProjeto.Versao <> 'S';

    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
    DMFinanceiro.C_ContasCxBc.Close;
    DMFinanceiro.C_ContasCxBc.Open;

    cbConsulta.OnChange := nil;
    cmbConta.OnChange := nil;

    if DMProjeto.ExisteParametrosForm then
        begin
            with DMProjeto do
                begin
                    cmbConta.LookupKeyValue := 0; // Sem conta
                    if QtdParametrosForm > 0 then
                        begin
                            cbConsulta.ItemIndex := GetParametrosForm(1);
                            edFavorecido.ID := GetParametrosForm(0);
                        end;
                end;
        end
    else
        begin
            cmbConta.LookupKeyValue := DMFinanceiro.nContaPadrao;
            cbConsulta.ItemIndex := 0;
            Pesquisar;
        end;

    cmbConta.OnChange := cmbContaChange;
    cbConsulta.OnChange := cbConsultaChange;

    sCheques := '';
end;

procedure TDlgLocalizarCheques.FormActivate(Sender: TObject);
begin
    inherited;
    cmbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgLocalizarCheques.FormCreate(Sender: TObject);
begin
    inherited;
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgLocalizarCheques.OcorrnciasdoCheque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_ChequesIDDoc.Value, false, true]);
    DMProjeto.CriarForm('DlgOperacoesDoc', self, false);
    DMProjeto.LimparParametrosForm;
end;

function TDlgLocalizarCheques.AtualizaControles;
begin
    btGravar.Enabled := (C_ChequesForaDaEmpresa.Value = 'N') and (C_ChequesStatus.Value < 50) and (C_ChequesVencimento.Value <= DMProjeto.dDataSistema);
    btLimpar.Enabled := (C_ChequesForaDaEmpresa.Value = 'N') and (C_ChequesStatus.Value < 50) and (C_ChequesVencimento.Value <= DMProjeto.dDataSistema);
    Depositar.Enabled := btGravar.Enabled;
    Descontar.Enabled := btLimpar.Enabled;
    btChequeDev.Enabled := (C_ChequesStatus.Value <> 4) and (C_ChequesForadaEmpresa.Value = 'S');
    btResgate.Enabled := (C_ChequesForaDaEmpresa.Value = 'N') and (C_ChequesStatus.Value < 50) and (C_ChequesStatus.Value <> 4);
    btAcertarCheque.Enabled := (C_ChequesStatus.Value = 4);
    result := btLimpar.Enabled;
end;

procedure TDlgLocalizarCheques.edFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgLocalizarCheques.btResgateClick(Sender: TObject);
var ItensSel: TStringList;
    sFavorecido: string;
    i: integer;
begin
    inherited;
    ItensSel := TStringList.Create;
    try
        if dbCheques.Selecionados <> '' then
            begin
                ItensSel.Text := dbCheques.ItensSelecionados;
                sFavorecido := SeparaStrings(ItensSel[2], '|||', IndiceString(ItensSel[1], '|||', 'Favorecido'));
                for i := 3 to ItensSel.Count - 1 do
                    begin
                        if sFavorecido <> SeparaStrings(ItensSel[i], '|||', IndiceString(ItensSel[1], '|||', 'Favorecido')) then
                            begin
                                DlgMsg.ShowMsg(1401);
                                exit;
                            end;
                    end;
            end;
        C_Cheques.AfterScroll := nil;
        DMProjeto.SetParametrosForm([dbCheques.ItensSelecionados]);
        DMProjeto.CriarForm('DlgTrocaCheques', self, true);
        C_Cheques.AfterScroll := C_ChequesAfterScroll;
    finally
        ItensSel.Free;
    end;
    Pesquisar;
end;

procedure TDlgLocalizarCheques.btChequeDevClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'DevCheque') then
        exit;
    if not (C_ChequesStatus.Value in [3, 50, 55, 60]) then
        begin
            //  if not (C_ChequesStatus.Value in [3,50]) then begin
                // ShowMessage('Para marcar um cheque como devolvido é preciso que ele tenha sido depositado!');
            DlgMsg.ShowMsg(263);
            exit;
        end;

    if ContaStrings(DBCheques.Selecionados, ',') > 1 then
        begin
            DlgMsg.ShowMsg(483);
            Exit;
        end;

    if DBCheques.Selecionados <> '' then
        DBCheques.FirstSelected
    else
        DBCheques.Selecionar;

    with DMProjeto do
        begin
            SetParametrosForm([DBCheques.ItensSelecionados]);
            if CriarForm('DlgMarcarDevolvido', self, true) = mrOk then
                begin
                    try
                        SendLastDataObject(Self.Name, 'Depositos', 'IDDoc', C_ChequesIDDoc.AsInteger, false);
                    except
                    end;
                    Pesquisar;
                end;
            LimparParametrosForm;
        end;
end;

procedure TDlgLocalizarCheques.btCancelarDevClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'HistDev') then
        exit;
    with DMProjeto do
        begin
            SetParametrosForm([9, 'Histórico de Devoluções de Cheques', false]);
            if CriarForm('DlgHistoricoOperacoes', self, true) = 3 then
                Pesquisar;
            LimparParametrosForm;
        end;
end;

procedure TDlgLocalizarCheques.btImprimirClick(Sender: TObject);
begin
    inherited;
    DBCheques.VisualizarImpressao;
end;

procedure TDlgLocalizarCheques.btAcertarChequeClick(Sender: TObject);
begin
    inherited;
    if ContaStrings(DBCheques.Selecionados, ',') > 1 then
        begin
            DlgMsg.ShowMsg(483);
            Exit;
        end;

    if DBCheques.Selecionados = '' then
        DBCheques.Selecionar;

    DMProjeto.SetParametrosForm([null, C_ChequesFAVORECIDO.Value]);
    DMProjeto.CriarForm('DlgDepositosInstantaneos', Self, True);

    // Felipe - Comentado rotina abaixo pois ao invés de abrir tela para Acertar Cheque, abre tela de consulta (15/10/2014)
  //DMProjeto.SetParametrosForm([C_ChequesDeposito.Value]);
  // 	DMProjeto.CriarForm(DMProjeto.getTelaGeradora(C_ChequesTipoDeposito.Value),self,true);
  //  DMProjeto.LimparParametrosForm;

end;

{ Felipe (09/09/2016) - Implementação para liquidar cheques que estejam em alguma conta banco e com status aguardando compensação }
procedure TDlgLocalizarCheques.btnLiquidarChequeClick(Sender: TObject);
var
    idCheque: string;
    qtdCheques, i: integer;
    isLiquidado: boolean;
begin
    inherited;

    try
        idCheque := '';
        isLiquidado := False;
        qtdCheques := ContaStrings(DBCheques.Selecionados, ',');

        if (qtdCheques > 0) and (DlgMsg.ShowMsg(6042, ['Deseja liquidar o(s) cheque(s) selecionados ?']) = 100) then
            begin
                for i := 1 to qtdCheques do
                    begin
                        idCheque := SeparaStrings(DBCheques.Selecionados(), ',', i);

                        with DMProjeto.Q_SQL3 do
                            begin
                                Close;
                                SQL.Text := 'select c.tipoconta, dd.status ' +
                                    'from depositosdoc dd inner join contas c on dd.contaatual = c.conta ' +
                                    'where dd.iddoc = :idcheque and c.tipoconta = 2';
                                ParamByName('idcheque').AsString := idCheque;
                                Open;

                                { 'Tipo Conta 2' = Cheque e 'Status 3' = Aguardando Compensacao }
                                if ((FieldByName('tipoconta').AsInteger = 2) and (FieldByName('status').AsInteger = 3)) then
                                    begin
                                        with DMProjeto.Q_SQL2 do
                                            begin
                                                Close;
                                                SQL.Text := 'update depositosdoc dd set dd.status = 50 where dd.iddoc = :iddoc';
                                                ParamByName('iddoc').AsString := idCheque;
                                                ExecSQL;
                                                isLiquidado := True;
                                            end;
                                    end;
                            end;
                    end;
            end;
            
        btnLiquidarCheque.Down := False;

        if (isLiquidado) then
            begin
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                Pesquisar;
                MessageDlg('Procedimento realizado com sucesso.', mtInformation, [mbOK], 0);
            end;
    except
        MessageDlg('Falha ao liquidar o(s) cheque(s)!', mtWarning, [mbOK], 0);
    end;

end;

end.

