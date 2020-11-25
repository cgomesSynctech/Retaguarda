unit Dlg_HistoricoOperacoes;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS,
    TS_DBLookupComboBox, TS_DBLookupTipoFav, StdCtrls, TS_Edit, TS_Label,
    DlgMsg, Buttons, TS_SpeedButton, ExtCtrls,
    Db, IBCustomDataSet, IBQuery,
    Provider, DBClient, DBCtrls, TS_LastDataObject, TS_Bevel,
    TS_MaxPanel, TS_EditFavorecido, FormsComponent, TS_Image, dxfLabel,
    dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditDate, dxDBTLCl,
    dxGrClms, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_DateTimePicker,
    teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, TS_CheckBox, BTOdeum,
    Placemnt, ppDB, ppDBPipe, ppBands, ppCtrls, ppReport, ppSubRpt, ppStrtch,
    ppRegion, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
    TDlgHistoricoOperacoes = class(TFrmModeloCadastros)
        TS_Panel1: TTS_Panel;
        TS_Label2: TTS_Label;
        TS_Label1: TTS_Label;
        C_Historico: TClientDataSet;
        P_Historico: TDataSetProvider;
        Q_Historico: TIBQuery;
        C_HistoricoDS: TDataSource;
        C_HistoricoOPERACAO: TIntegerField;
        C_HistoricoDATA: TDateField;
        C_HistoricoNOME: TStringField;
        C_HistoricoNOMECONTA: TStringField;
        C_HistoricoVALOROPERACAO: TBCDField;
        C_HistoricoFAVORECIDO: TIntegerField;
        C_HistoricoCONTA: TIntegerField;
        C_HistoricoVALORDINHEIRO: TBCDField;
        C_HistoricoHISTORICO: TStringField;
        C_HistoricoNOMECONTAORIGEM: TStringField;
        C_HistoricoCONTAORIGEM: TIntegerField;
        C_HistoricoTITULO: TIntegerField;
        DBOperacoes: TTS_QDBGrid;
        DBOperacoesOPERACAO: TdxDBGridMaskColumn;
        DBOperacoesDATA: TdxDBGridDateColumn;
        DBOperacoesNOME: TdxDBGridMaskColumn;
        DBOperacoesNOMECONTA: TdxDBGridMaskColumn;
        DBOperacoesVALOROPERACAO: TdxDBGridMaskColumn;
        DBOperacoesFAVORECIDO: TdxDBGridMaskColumn;
        DBOperacoesCONTA: TdxDBGridMaskColumn;
        DBOperacoesVALORDINHEIRO: TdxDBGridMaskColumn;
        DBOperacoesHISTORICO: TdxDBGridMaskColumn;
        DBOperacoesNOMECONTAORIGEM: TdxDBGridMaskColumn;
        DBOperacoesCONTAORIGEM: TdxDBGridMaskColumn;
        DBOperacoesTITULO: TdxDBGridMaskColumn;
        C_Historico_icSelecionado: TIntegerField;
        dtDataI: TTS_DateTimePicker;
        dtDataF: TTS_DateTimePicker;
        C_HistoricoDESCFORMAPAGAMENTO: TStringField;
        DBOperacoesDescFormaPagamento: TdxDBGridColumn;
        Alterar1: TMenuItem;
        Pesquisar1: TMenuItem;
        N1: TMenuItem;
        Cancelar1: TMenuItem;
        ckbCancelados: TTS_CheckBox;
        C_HistoricoSITUACAO: TStringField;
        DBOperacoesSituacao: TdxDBGridColumn;
        C_HistoricoFLOATING: TIntegerField;
        DBOperacoesFloating: TdxDBGridColumn;
        DBOperacoesUsuario: TdxDBGridColumn;
        C_HistoricoUSUARIO: TStringField;
        ppRepasse: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppShape11: TppShape;
        regCab: TppRegion;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppShape4: TppShape;
        ppShape5: TppShape;
        ppShape6: TppShape;
        ppLabel5: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLine18: TppLine;
        ppDetailBand1: TppDetailBand;
        ppSubReport2: TppSubReport;
        ppChildReport4: TppChildReport;
        ppTitleBand2: TppTitleBand;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine7: TppLine;
        ppLine8: TppLine;
        ppDetailBand2: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppSummaryBand2: TppSummaryBand;
        ppDBCalc1: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        ppFooterBand1: TppFooterBand;
        ppSummaryBand3: TppSummaryBand;
        ppLabel19: TppLabel;
        ppLabel20: TppLabel;
        ppLine9: TppLine;
        ppLine10: TppLine;
        Q_Cheques: TIBQuery;
        P_Cheques: TDataSetProvider;
        C_Cheques: TClientDataSet;
        C_ChequesIDDOC: TIntegerField;
        C_ChequesNUMCHEQUE: TIntegerField;
        C_ChequesVENCIMENTO: TDateField;
        C_ChequesVALOR: TBCDField;
        C_ChequesNOME: TStringField;
        C_ChequesDS: TDataSource;
        ppDBCheques: TppDBPipeline;
        procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
        procedure btLimparClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btFecharCadastroClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure dtDataIDateChange(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure DBOperacoesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure ckbCanceladosChange(Sender: TObject);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure dtDataIKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure btComando1Click(Sender: TObject);
    private
        { Private declarations }
        Tipo: integer;
        btCancelado: boolean;
        procedure Pesquisar;

    public
        { Public declarations }
    end;

var
    DlgHistoricoOperacoes: TDlgHistoricoOperacoes;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgHistoricoOperacoes.Pesquisar;
begin
    with C_Historico do
        begin
            close;
            FetchParams;
            CommandText := 'Select o.Operacao, o.Data, o.Situacao, f.Nome, ' +
                'c.Descricao as NomeConta, co.Descricao as NomeContaOrigem, ' +
                'o.ValorOperacao, o.Favorecido, o.ContaDestino as Conta, ' +
                'o.ValorDinheiro, o.Historico, o.ContaOrigem, o.Titulo, ' +
                'fp.Descricao as DescFormaPagamento, o.Floating, u.loginname as usuario ' +
                'from OperacoesFinanceiras o ' +
                'left join Favorecidos f on o.Favorecido = f.Favorecido ' +
                'left join Contas c on o.ContaDestino = c.Conta ' +
                'left join Contas co on o.ContaOrigem  = co.Conta ' +
                'left join FormasPagamento fp on o.formapagamento = fp.formapagamento ' +
                'left join Usuarios u on u.usuario = o.usuario ' +
                'where o.data >= :DataI and o.data <= :DataF and o.TipoOperacao = :Tipo :Situacao :Conta and o.ValorOperacao > 0 ';

            {    CommandText := 	CommandText + 'and o.Operacao not in (Select o.Titulo '+
                        'from OperacoesFinanceiras o '+
                            'left join Favorecidos f on o.Favorecido = f.Favorecido '+
                            'left join Contas c on o.ContaDestino = c.Conta '+
                       'left join Contas co on o.ContaOrigem  = co.Conta '+
                                'left join FormasPagamento fp on o.formapagamento = fp.formapagamento '+
                                'left join Usuarios u on u.usuario = o.usuario '+
                              'where o.data >= :DataI -and o.data <= :DataF and o.TipoOperacao = :Tipo :Situacao :Conta and o.ValorOperacao > 0) ';
            }
            if ckbCancelados.Checked then
                CommandText := replace(CommandText, ':Situacao', '')
            else
                CommandText := replace(CommandText, ':Situacao', ' and o.Situacao is null ');

            if Tipo = 20 then {Repasse}
                CommandText := replace(CommandText, ':Conta', ' and o.contaorigem = ' + IntToStr(DMFinanceiro.nContaPadrao))
            else
                CommandText := replace(CommandText, ':Conta', '');

            Params.ParamByName('DataI').AsDateTime := dtDataI.Date;
            Params.ParamByName('DataF').AsDateTime := dtDataF.Date;
            Params.ParamByName('Tipo').AsInteger := Tipo;
            CommandText := CommandText + ' order by o.data, o.Operacao';
            open;
            last;
        end;
end;

procedure TDlgHistoricoOperacoes.edFavorecidoKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if key = #13 then
        Pesquisar;
end;

procedure TDlgHistoricoOperacoes.btLimparClick(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgHistoricoOperacoes.btGravarClick(Sender: TObject);
begin
    inherited;
    if not btGravar.Enabled then
        Exit;

    if C_Historico.IsEmpty then
        exit;

    if DBOperacoes.QuantidadeSelecionada > 1 then
        begin
            DlgMsg.ShowMsg(576);
            Exit;
        end;
    if DBOperacoes.Selecionados = '' then
        DBOperacoes.Selecionar;
    with DMProjeto do
        begin
            SetParametrosForm([C_HistoricoOperacao.Value]);
            ModalResult := 1;
        end;
end;

procedure TDlgHistoricoOperacoes.btFecharCadastroClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            // SetParametrosForm([C_HistoricoOperacao.Value]);
            ModalResult := 2;
        end;
end;

procedure TDlgHistoricoOperacoes.FormsComponentBeforeClearParams(
    Sender: TObject);
var nDias: integer;
    sFiltro, sCampo, sValor: string;
begin
    inherited;
    if DMProjeto.ExisteParametrosForm then
        begin
            Tipo := DMProjeto.GetParametrosForm(0);
            FormsComponent.Caption := DMProjeto.GetParametrosForm(1);
            btGravar.Enabled := DMProjeto.GetParametrosForm(2);
            DMProjeto.LimparParametrosForm;
        end;
    DBOperacoesNomeContaOrigem.Visible := false;
    DBOperacoesNomeConta.Visible := false;
    btComando1.Visible := Tipo = 20;
    if Tipo in [7, 20] then
        begin {Depósito em Banco}
            DBOperacoesNome.Visible := false;
            DBOperacoesNomeConta.Visible := true;
        end
    else if Tipo = 8 then
        begin {Transferência de Dinheiro}
            DBOperacoesNomeContaOrigem.Visible := true;
            DBOperacoesNomeConta.Visible := true;
            DBOperacoesHistorico.Visible := false;
            DBOperacoesNome.Visible := false;
        end
    else if Tipo in [9, 10, 14, 48] then
        begin {Devolução e Acertos de Cheques}
            DBOperacoesNOME.Visible := true;
            DBOperacoesHistorico.Visible := false;
        end
    else if Tipo in [15] then
        begin {Pgto Cartão-Empresa}
            DBOperacoesNome.Visible := false;
            DBOperacoesDescFormaPagamento.Visible := true;
        end
    else if Tipo in [11, 16, 17] then
        begin {Apresentação de Cartões}
            DBOperacoesNOME.Visible := false;
            DBOperacoesDescFormaPagamento.Visible := true;
        end
    else if Tipo in [12] then
        begin {Compensação de Cheques}
            DBOperacoesNomeConta.Visible := true;
            DBOperacoesNome.Visible := false;
        end;
    nDias := StrToIntDef(DMProjeto.Parametro('DiasHistorico'), 7);
    dtDataI.OnDateChange := nil;
    dtDataF.OnDateChange := nil;
    dtDataI.date := DMProjeto.dDataSistema - nDias;
    dtDataF.date := DMProjeto.dDataSistema;
    btCancelado := false;
    if DMProjeto.slHistorico <> nil then
        begin
            with DMProjeto.slHistorico do
                begin
                    if Values['DataIni_' + Owner.Name] <> '' then
                        begin
                            dtDataI.Date := StrToDate(Values['DataIni_' + Owner.Name]);
                            dtDataF.Date := StrToDate(Values['DataFim_' + Owner.Name]);
                        end;
                    if Values['Ordem_' + Owner.Name] <> '' then
                        begin
                            DBOperacoes.FindColumnByFieldName(Values['Ordem_' + Owner.Name]).Sorted :=
                                iif(Values['TipoOrdem_' + Owner.Name] = 'D', csDown, csUp);
                        end;
                    if Values['Filtro_' + Owner.Name] <> '' then
                        begin
                            sFiltro := SeparaStrings(Values['Filtro_' + Owner.Name], ' AND ', 1);
                            sFiltro := replace(sFiltro, '<=', ';');
                            sFiltro := replace(sFiltro, '>=', ';');
                            sFiltro := replace(sFiltro, '<', ';');
                            sFiltro := replace(sFiltro, '>', ';');
                            sFiltro := replace(sFiltro, '=', ';');
                            sFiltro := replace(sFiltro, '<>', ';');
                            sFiltro := replace(sFiltro, '(', '');
                            sFiltro := replace(sFiltro, ')', '');
                            sCampo := Trim(SeparaStrings(sFiltro, ';', 1));
                            sValor := Trim(SeparaStrings(sFiltro, ';', 2));
                            if sCampo <> '' then
                                begin
                                    DBOperacoes.Filter.Active := true;
                                    if sCampo = 'Favorecido' then
                                        DBOperacoes.Filter.Add(DBOperacoesNOME, sValor, sValor)
                                    else if sCampo = 'Data' then
                                        DBOperacoes.Filter.Add(DBOperacoesDATA, sValor, sValor)
                                    else if sCampo = 'Valor' then
                                        DBOperacoes.Filter.Add(DBOperacoesVALOROPERACAO, sValor, sValor)
                                    else if sCampo = 'Forma de Pagamento' then
                                        DBOperacoes.Filter.Add(DBOperacoesDescFormaPagamento, sValor, sValor)
                                    else if sCampo = 'Conta' then
                                        DBOperacoes.Filter.Add(DBOperacoesNOMECONTA, sValor, sValor);
                                end;
                        end;
                    Pesquisar;
                end;
        end
    else
        begin
            Pesquisar;
        end;
    dtDataI.OnDateChange := dtDataIDateChange;
    dtDataF.OnDateChange := dtDataIDateChange;
end;

procedure TDlgHistoricoOperacoes.dtDataIDateChange(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgHistoricoOperacoes.btComando2Click(Sender: TObject);
var sDocs: string;
begin
    inherited;
    if C_Historico.IsEmpty then
        Exit;

    if C_HistoricoSituacao.Value = 'C' then
        begin
            DlgMsg.ShowMsg(940);
            Exit;
        end;

    if not DMProjeto.DlgAutorizacao.ExecuteX(owner.name, 'CAN') then
        exit;
    if not DMProjeto.DlgAutorizacao.ExecuteX(owner.name, 'CanDescChq') then
        exit;
    if not DMProjeto.DlgAutorizacao.ExecuteX(owner.name, 'CANCOMPEN') then
        exit;
    if not DMProjeto.DlgAutorizacao.ExecuteX(owner.name, 'CANDEV') then
        exit;
    if not DMProjeto.DlgAutorizacao.ExecuteX(owner.name, 'CANACERTO') then
        exit;

    if DBOperacoes.Selecionados = '' then
        DBOperacoes.Selecionar;
    if DlgMsg.ShowMsg(577, ['as operações selecionadas ?']) = 100 then
        begin

            // Cancelamento do repasse - Teste para verificar se já existem
            // cheques depositados.
            if (Tipo = 20) then
                with DMProjeto.Q_SQL do
                    begin
                        close;
                        sql.text := 'select historico from operacoesfinanceiras ' +
                            'where operacao IN (' + DBOperacoes.Selecionados + ') and historico is not null';
                        open;
                        sDocs := Fields[0].AsString;
                        if Trim(sDocs) <> '' then
                            begin
                                Close;
                                SQL.Text := 'select iddoc from depositosdoc ' +
                                    'where status < 70 and foradaempresa = ''S'' ' +
                                    'and iddoc in (' + sDocs + ')';
                                open;
                                if RecordCount > 0 then
                                    begin
                                        Close;
                                        DlgMsg.ShowMsg(8040);
                                        Exit;
                                    end;
                            end;
                        Close;
                    end;

            try

                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

                if Tipo = 29 then
                    begin
                        with DMFinanceiro.Q_SQL do
                            begin
                                close;
                                sql.text := 'select count(*) from duplicatasapagar ' +
                                    'where id IN (select iddoc from operacoesfinanceirasdet where operacao IN (' + DBOperacoes.Selecionados + ')) and datapago is not null';
                                open;
                                if fields[0].AsInteger > 0 then
                                    begin
                                        DlgMsg.ShowMsg(3100);
                                        Exit;
                                    end;
                            end;
                    end;

                DMFinanceiro.CancelarOperacao(DBOperacoes.Selecionados, Tipo);

                if Tipo = 7 then {Depósito em Banco}
                    if C_HistoricoTitulo.Value <> 0 then
                        DMFinanceiro.CancelarOperacao(C_HistoricoTitulo.AsString, 8); {Cancelar Transferência de Dinheiro}

                if Tipo = 9 then {Devolução de Cheques}
                    DMFinanceiro.CancelarOperacao(DBOperacoes.Selecionados, 23); {Cancelar Taxas geradas}

                if Tipo = 11 then {Apresentação de Cartões}
                    DMFinanceiro.CancelarOperacao(DBOperacoes.Distinct('Floating'), 13); {Cancelar Liquidação}

                if Tipo = 20 then {Repasse}
                    DMFinanceiro.CancelarOperacao(C_HistoricoTitulo.AsString, 8);

                try
                    SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', 10, false);
                except
                end;

                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

                btCancelado := true;
                ModalResult := 3;

            except
                on E: Exception do
                    begin
                        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                            DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
                        DlgMsg.ShowMsg(1, e.Message, '');
                    end;
            end;
        end;
end;

procedure TDlgHistoricoOperacoes.DBOperacoesCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if not Anode.HasChildren then
        begin
            if DBOperacoes.GetFieldValue(ANode, 'Situacao', '') = 'C' then
                AFont.Color := clRed
            else
                AFont.Color := clBlack;
        end;
end;

procedure TDlgHistoricoOperacoes.ckbCanceladosChange(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgHistoricoOperacoes.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0 then
        begin
            if ActiveControl is TTS_EditFavorecido then
                TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
        end
    else if pos(UpperCase(LastDataObject.TableName), 'DEPOSITOS;OPERACOESFINANCEIRAS;RETIRADAS') > 0 then
        Pesquisar;
end;

procedure TDlgHistoricoOperacoes.dtDataIKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    inherited;
    if key = 38 then
        C_Historico.Prior
    else if key = 40 then
        C_Historico.Next
end;

procedure TDlgHistoricoOperacoes.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    if DMProjeto.slHistorico = nil then
        DMProjeto.slHistorico := TStringList.Create;
    with DMProjeto.slHistorico do
        begin
            if Values['DataIni_' + Owner.Name] = '' then
                begin
                    Add('DataIni_' + Owner.Name + '=' + DateToStr(dtDataI.Date));
                    Add('DataFim_' + Owner.Name + '=' + DateToStr(dtDataF.Date));
                    if DBOperacoes.SortedColumn <> nil then
                        begin
                            Add('Ordem_' + Owner.Name + '=' + TdxDBGridColumn(DBOperacoes.SortedColumn).FieldName);
                            Add('TipoOrdem_' + Owner.Name + '=' + iif(TdxDBGridColumn(DBOperacoes.SortedColumn).Sorted = csDown, 'D', 'U'));
                        end;
                    if DBOperacoes.Filter.Active then
                        Add('Filtro_' + Owner.Name + '=' + DBOperacoes.Filter.FilterCaption);
                end
            else
                begin
                    Values['DataIni_' + Owner.Name] := DateToStr(dtDataI.Date);
                    Values['DataFim_' + Owner.Name] := DateToStr(dtDataF.Date);
                    if DBOperacoes.SortedColumn <> nil then
                        begin
                            Values['Ordem_' + Owner.Name] := TdxDBGridColumn(DBOperacoes.SortedColumn).FieldName;
                            Values['TipoOrdem_' + Owner.Name] := iif(TdxDBGridColumn(DBOperacoes.SortedColumn).Sorted = csDown, 'D', 'U');
                        end;
                    if DBOperacoes.Filter.Active then
                        Values['Filtro_' + Owner.Name] := DBOperacoes.Filter.FilterCaption
                    else
                        Values['Filtro_' + Owner.Name] := '';
                end;
        end;
end;

procedure TDlgHistoricoOperacoes.FormKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    inherited;
    if key = 27 then
        Close;
end;

procedure TDlgHistoricoOperacoes.btComando1Click(Sender: TObject);
var sHistorico: string;
begin
    inherited;
    ppLabel2.Caption := C_HistoricoNOMECONTAORIGEM.AsString;
    ppLabel3.Caption := DateToStr(C_HistoricoDATA.AsDateTime);
    ppLabel20.Caption := C_HistoricoUSUARIO.AsString;
    ppLabel7.Caption := FormatFloat('###,##0.00', C_HistoricoVALORDINHEIRO.AsCurrency);
    ppLabel10.Caption := FormatFloat('###,##0.00', C_HistoricoVALOROPERACAO.AsCurrency - C_HistoricoVALORDINHEIRO.AsCurrency);
    //
    sHistorico := iif(Trim(C_HistoricoHISTORICO.AsString) = '', '-9999', C_HistoricoHISTORICO.AsString);
    C_Cheques.Close;
    Q_Cheques.SQL.Text := 'select dd.iddoc, dd.numcheque, dd.vencimento, dd.valor, f.nome ' +
        'from depositosdoc dd ' +
        'inner join depositos d on d.deposito = dd.deposito ' +
        'inner join favorecidos f on f.favorecido = d.favorecido ' +
        'where dd.iddoc in (' + sHistorico + ') ';
    C_Cheques.Open;
    DMProjeto.ImprimirCabecalho(regCab);
    ppRepasse.Print;
end;

end.

