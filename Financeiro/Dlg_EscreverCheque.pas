unit Dlg_EscreverCheque;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
    ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, TS_MaxPanel,
    StdCtrls, DBCtrls, TS_DBText, TS_Shape,
    TS_Label, Mask,
    TS_DBEdit, TS_DBEditFavorecido, TS_DBEditNumber,
    TS_DBEditDate, ComCtrls,
    IBCustomDataSet, IBQuery, Db, Provider, DBClient, TS_DBLookupTipoFav,
    TS_CheckBox, TS_PageControl, TS_DateTimePicker, dxExEdtr, dxEdLib,
    dxDBELib, TS_DBButtonEdit, dxEditor, dxDBEdtr, dxCntner, FormsComponent,
    TS_Image, dxfLabel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, TS_DBPopupEdit, dxGrClEx, Dlg_PopupContas,
    teCtrls, TS_EffectsPanel, DBText, TS_RadioButton, DM_Contabilidade,
    Menus, TS_PopupMenu, TS_DBTextEffect, teSlide, TransEff, teTimed,
    teMasked, teRadial, Variants, BTOdeum, TS_ComboBox, Placemnt;

type
    TDlgEscreverCheque = class(TFrmModeloCadastros)
        TS_Panel1: TTS_Panel;
        PageControles1: TTS_PageControl;
        tbSheetes1: TTS_TabSheet;
        C_Cheques: TClientDataSet;
        C_ContasOperacao: TClientDataSet;
        C_ChequesDS: TDataSource;
        C_ContasOperacaoDS: TDataSource;
        C_ContasOperacaoConta: TIntegerField;
        C_ContasOperacaoValor: TFloatField;
        C_ChequesContaBanco: TIntegerField;
        C_ChequesFavorecido: TIntegerField;
        C_ChequesData: TDateField;
        C_ChequesValor: TFloatField;
        C_ChequesNumCheque: TIntegerField;
        C_ChequesNomeFavorecido: TStringField;
        C_ChequesEndereco: TStringField;
        C_ChequesCidade: TStringField;
        C_ChequesEstado: TStringField;
        C_ChequesCEP: TStringField;
        C_ChequesMemo: TStringField;
        C_ContasOperacaoDescConta: TStringField;
        C_ChequesExtenso: TStringField;
        C_ChequesChequeNominal: TStringField;
        DBContasOperacao: TTS_QDBGrid;
        Valor: TdxDBGridCalcColumn;
        esEndereco: TdxEditStyleController;
        C_ChequesDescContaBc: TStringField;
        Conta: TdxDBGridPopupColumn;
        EffectsPanel1: TEffectsPanel;
        TS_Label3: TTS_Label;
        lbCifrao: TTS_Label;
        TS_Shape4: TTS_Shape;
        lbMoeda: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Shape6: TTS_Shape;
        TS_Label8: TTS_Label;
        TS_Label9: TTS_Label;
        dbtExtenso: TTS_DBText;
        TS_Label5: TTS_Label;
        dfValor: TTS_DBEditNumber;
        dfMemo: TTS_DBEdit;
        dbFav: TTS_DBLookupTipoFav;
        dfFavorecido: TTS_DBEditFavorecido;
        EffectsPanel2: TEffectsPanel;
        TS_DBTextEffect1: TTS_DBTextEffect;
        lbNumCheque: TTS_Label;
        dfNumCheque: TTS_DBEdit;
        TS_Shape1: TTS_Shape;
        TS_Shape2: TTS_Shape;
        btCancelar: TTS_SpeedButton;
        C_ContasOperacaoHistorico: TStringField;
        C_ContasOperacaoClienteRef: TIntegerField;
        C_ContasOperacaoNomeClienteRef: TStringField;
        C_ChequesConta: TIntegerField;
        Historico: TdxDBGridColumn;
        NomeClienteRef: TdxDBGridButtonColumn;
        btImprimir: TTS_SpeedButton;
        TS_Bevel2: TTS_Bevel;
        btContabilidade: TTS_SpeedButton;
        Salvar1: TMenuItem;
        N1: TMenuItem;
        Novo1: TMenuItem;
        Histrico1: TMenuItem;
        dtData: TTS_DBEditDate;
        C_ChequesContaPagar: TIntegerField;
        cbLockDate: TTS_CheckBox;
        dfEndereco: TTS_DBEdit;
        dfCidade: TTS_DBEdit;
        dfEstado: TTS_DBEdit;
        dfCEP: TTS_DBEdit;
        dfNominal: TTS_DBEdit;
        pnAlterar: TTS_Panel;
        dxfLabel1: TdxfLabel;
        TransitionList1: TTransitionList;
        TranShape: TRadialTransition;
        TranAlterar: TSlideTransition;
        dfFone: TTS_DBEdit;
        C_ChequesFone1: TStringField;
        pnCancelado: TdxfLabel;
        lbPagarContas: TTS_Label;
        TS_Label1: TTS_Label;
        ckbImprimirRecibo: TTS_CheckBox;
        dbConta: TTS_DBPopupEdit;
        ckbPrePagamento: TTS_CheckBox;
        cmbImprimir: TTS_ComboBox;
        EditarRecibo1: TMenuItem;
        dfBairro: TTS_DBEdit;
        C_ChequesBairro: TStringField;
        procedure dfValorChange(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure ContaInitPopup(Sender: TObject);
        procedure dbContaInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure dfNomeAfterEdit(Sender: TObject);
        procedure dfEnderecoAfterEdit(Sender: TObject);
        procedure dfCidadeAfterEdit(Sender: TObject);
        procedure dfEstadoAfterEdit(Sender: TObject);
        procedure btCancelarClick(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure btContabilidadeClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure C_ChequesDataChange(Sender: TField);
        procedure C_ChequesNewRecord(DataSet: TDataSet);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure ckbPrePagamentoChange(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure lbPagarContasClick(Sender: TObject);
        procedure cmbImprimirChange(Sender: TObject);
        procedure C_ChequesContaBancoChange(Sender: TField);
        procedure EditarRecibo1Click(Sender: TObject);
        procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
    protected
        DlgPopup: TDlgPopupContas;
    // Adriano
        DMContabil: TDMContabilidade;
    private
        aIDDoc, nContabanco: integer;
        sCheque: string;
        dData: TDateTime;
        Retirada, RetiradaHist: integer;
        bCancelado: boolean;

        function Validacoes(bMostrarMensagem: boolean): boolean;
        procedure getHistorico(Retirada: integer);
        procedure Novo;
        function Gravar: boolean;
        procedure ImpressaoCheque;
        procedure ImpressaoRecibo;
    public
    { Public declarations }
    end;

var
    DlgEscreverCheque: TDlgEscreverCheque;

implementation

uses DM_Projeto, Util2, Dlg_EmissaoCheques, funcoes,
    DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgEscreverCheque.Novo;
begin
    DMFinanceiro.C_ContasBc.Close;
    DMFinanceiro.C_ContasBc.Open;
    DMFinanceiro.C_ContasBc.Locate('Conta', nContaBanco, []);
  // Adriano
    if DMContabil <> nil then
        DMContabil.Iniciar;
    aIDDoc := 0;
    btGravar.Caption := 'Salvar';
    bCancelado := false;
    lbPagarContas.Visible := false;
    pnAlterar.Visible := false;
    pnCancelado.Visible := bCancelado;
    btCancelar.Visible := false;
    btComando1.Visible := false;
    btCancelar.Enabled := true;
    btComando1.Enabled := true;
    btImprimir.Visible := false;
    RetiradaHist := 0;
    if ckbPrePagamento.Checked then begin
        DBContasOperacao.Enabled := false;
        DBContasOperacao.Color := $00EBEBEB;
    end else begin
        DBContasOperacao.Enabled := true;
        DBContasOperacao.Color := clWhite;
    end;
    C_Cheques.EmptyDataSet;
    C_ContasOperacao.EmptyDataSet;
    C_Cheques.Append;
    C_ChequesValor.Value := 0;
    C_ChequesContaBanco.Value := nContaBanco;
end;

function TDlgEscreverCheque.Gravar;
var Duplicata, nCheque, xContaPagar: integer;
begin
    result := false;

    if C_Cheques.State in [dsEdit, dsInsert] then
        C_Cheques.Post;

    with DMFinanceiro do begin
        try

            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

            if RetiradaHist <> 0 then
                ApagarRetirada(RetiradaHist);

            if not ckbPrePagamento.Checked then
                Duplicata := Conta_A_Pagar(1,
                    C_ChequesValor.Value,
                    DMProjeto.dDataSistema,
                    dtData.Date,
                    C_ChequesMemo.Value,
                    0, // Natureza
                    C_ChequesFavorecido.AsInteger,
                    0, // IDCompra
                    '',
                    5);

            Retirada := PagarRapido(RetiradaHist, Duplicata, 0, DMProjeto.dDataSistema, dtData.Date, C_ChequesMemo.Value,
                C_ChequesValor.Value, 0, 0, 0, iif(ckbPrePagamento.Checked, C_ChequesValor.Value, 0), 0, 5);

            with Q_SQL do begin
                close;
                sql.text := 'update duplicatasapagar ' +
                    'set idgerador_apagar = :idgerador ' +
                    'where id = :id ';
                parambyname('idgerador').asInteger := Retirada;
                parambyname('id').asInteger := Duplicata;
                execsql;
            end;

            RetiradaHist := Retirada; // *Adriano*
            nCheque := PagarDoc(aIDDoc, 5, Retirada, C_ChequesContaBanco.AsInteger, C_ChequesFavorecido.Value, 2, C_ChequesValor.Value, dtData.Date, C_ChequesNumCheque.Value, C_ChequesChequeNominal.value, C_ChequesContaPagar.Value, C_ChequesMemo.Value);

            if ckbPrePagamento.Checked then
                DMFinanceiro.RegistrarCredito(C_ChequesFavorecido.Value, Retirada, 5, false, 0, C_ChequesValor.Value, format(DMProjeto.getMsg(240), [C_ChequesMemo.AsString]));

            BaixarDuplicata(IntToStr(Duplicata));

            InserirContasOperacao(C_ContasOperacao, Duplicata, 5);

            sCheque := IntToStr(nCheque);
            with Q_SQL do begin
                Close;
                SQL.Text := 'update favorecidos ' +
                    'set nome = :nome, ' +
                    'endereco = :endereco, ' +
                    'bairro = :bairro, ' +
                    'cidade = :cidade, ' +
                    'cep = :cep, ' +
                    'uf = :uf, ' +
                    'fone1 = :fone1 ' +
                    'where favorecido = :fav ';
                parambyname('nome').AsString := C_ChequesNomeFavorecido.Value;
                parambyname('endereco').AsString := C_ChequesEndereco.Value;
                parambyname('bairro').AsString := C_ChequesBairro.Value;
                parambyname('cidade').AsString := C_ChequesCidade.Value;
                parambyname('cep').AsString := C_ChequesCep.Value;
                parambyname('uf').AsString := C_ChequesEstado.Value;
                parambyname('fone1').AsString := C_ChequesFone1.Value;
                parambyname('fav').AsInteger := C_ChequesFavorecido.Value;
                ExecSQL;
            end;

      // Adriano
            DMContabil.ContabilizaEscreverCheque(RetiradaHist, ckbPrePagamento.checked, C_Cheques, C_ContasOperacao);
            xContaPagar := DMContabil.ContaFlag('AP');

            if not DMContabil.Salvar(RetiradaHist) then
                raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////

      // Adriano
            if not ckbPrePagamento.checked then begin
                DMContabil.ContabilizaPagarParcelasRapido(Duplicata, xContaPagar, C_Cheques, C_ContasOperacao);

                if not DMContabil.Salvar(Duplicata) then
                    raise Exception.Create(DMProjeto.GetMsg(3117));
        ///////////////////////////
            end;
            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

        except
            on e: Exception do begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DMProjeto.GeraLog('Escrever Cheque', e.message);
            end;
        end;
        try
            SendLastDataObject(Self.Name, 'Retiradas', 'Retirada', Retirada, false);
        except
        end;

    end;
    result := true;
end;

procedure TDlgEscreverCheque.dfValorChange(Sender: TObject);
begin
    inherited;
    if C_Cheques.State in [dsEdit, dsInsert] then
        C_Cheques.UpdateRecord;

    C_ChequesExtenso.Value := PrimeiraLetraMaiuscula(Util2.Extenso(C_ChequesValor.Value));

    if not ckbPrePagamento.Checked then begin
        if C_ContasOperacao.State in [dsBrowse] then
            C_ContasOperacao.Edit;
        C_ContasOperacaoValor.Value := C_ChequesValor.Value;
    end;
end;

procedure TDlgEscreverCheque.btLimparClick(Sender: TObject);
begin
    inherited;
    Novo;
    dfFavorecido.SetFocus;
end;

function TDlgEscreverCheque.Validacoes;
begin
    if C_Cheques.State in [dsBrowse] then
        C_Cheques.Edit;

    C_Cheques.UpdateRecord;
    if C_ContasOperacao.State in [dsEdit, dsInsert] then
        C_ContasOperacao.Post;
    result := false;
    if bCancelado then begin
        DlgMsg.ShowMsg(940);
        Exit;
    end;

    if dfFavorecido.ID = 0 then begin
        DlgMsg.ShowMsg(929, ['o Favorecido']);
        dfFavorecido.SetFocus;
        Exit;
    end;

    if trim(dfMemo.Text) = '' then begin
        DlgMsg.ShowMsg(929, ['o Memo']);
        dfMemo.SetFocus;
        Exit;
    end;

    if C_ChequesData.Value <= EncodeDate(1990, 1, 1) then begin
        DlgMsg.ShowMsg(929, ['a data do cheque']);
        dtData.SetFocus;
        Exit;
    end;

    if C_ChequesValor.Value = 0 then begin
        DlgMsg.ShowMsg(325);
        dfValor.SetFocus;
        Exit;
    end;

    if (C_ChequesContaBanco.Value = 0) or (C_ChequesContaBanco.IsNull) or (dbConta.Text = '') then begin
        DlgMsg.ShowMsg(929, ['a Conta']);
        DBContasOperacao.SetFocus;
        Exit;
    end;

    if (cmbImprimir.ItemIndex = 2) and ((C_ChequesNumCheque.IsNull) or (C_ChequesNumCheque.Value = 0)) then begin
        DlgMsg.ShowMsg(929, ['o número do cheque']);
        if dfNumCheque.Enabled then
            dfNumCheque.SetFocus;
        Exit;
    end;

    if (cmbImprimir.ItemIndex = 0) and (C_ChequesNumCheque.Value <> 0) then begin
        C_Cheques.Edit;
        C_ChequesNumcheque.AsInteger := 0;
    end;

    if (not ckbPrePagamento.Checked) and (DMProjeto.Parametro('HabilitarContabilidade') = 'S') then
        if not DMFinanceiro.ValidaContas(C_ContasOperacao, DBContasOperacao.totalgeral('valor'), C_ChequesValor.Value, 'a Conta de Despesa') then
            exit;

    if (cmbImprimir.ItemIndex = 2) and (C_ChequesNumCheque.IsNull) then begin
        DlgMsg.ShowMsg(929, ['o Nº do Cheque']);
        if dfNumCheque.Enabled then
            dfNumCheque.SetFocus;
        Exit;
    end;

    result := true;
end;

procedure TDlgEscreverCheque.btGravarClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'S') then
        exit;
    if (RetiradaHist <> 0) and (not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'A')) then
        exit;

    if cmbImprimir.ItemIndex = 1 then begin
        if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'ImpCheque') then
            exit;
    end;
    if not Validacoes(true) then
        exit;
    if Gravar then begin
        if cmbImprimir.ItemIndex = 1 then
            ImpressaoCheque;
        if ckbImprimirRecibo.Checked then
            ImpressaoRecibo;
        Novo;
        dfFavorecido.SetFocus;
    end;
end;

procedure TDlgEscreverCheque.ImpressaoCheque;
begin
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ImpCheque') then
        exit;
    dlgEmissaoCheques := TdlgEmissaoCheques.Create(self);
    with dlgEmissaoCheques do begin
        Iniciar(sCheque, C_ChequesContaBanco.AsString, C_ChequesNumCheque.AsString);
        ShowModal;
        Release;
    end;
end;

procedure TDlgEscreverCheque.ImpressaoRecibo;
begin
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ImpRecibo') then
        exit;
    DMProjeto.ImprimirRecibo(1, '', '', ':retirada=' + IntToStr(RetiradaHist));
end;

procedure TDlgEscreverCheque.getHistorico(Retirada: integer);
var
    Duplicata, Favorecido, i: integer;
begin
    Novo;
    btCancelar.Top := 106;
    btCancelar.Visible := true;
    btComando1.Top := 139;
    btComando1.Visible := true;
    btImprimir.Visible := true;

    RetiradaHist := Retirada;
    Favorecido := DMFinanceiro.getFavorecidoRetirada(Retirada);
    with DMFinanceiro.Q_SQL2 do begin
        Close;
        SQL.Text := 'select duplicata from retiradasduplicatas ' +
            'where retirada = :ret';
        Params[0].AsInteger := Retirada;
        Open;
        Duplicata := fields[0].AsInteger;
        Close;
        SQL.Text := 'select rd.IDDoc, r.Retirada, r.Data, r.Situacao, rd.Conta, rd.Obs as Historico, rd.Valor, rd.NumCheque, rd.ChequeNominal, rd.ContaPagar, r.CreditoGerado ' +
            'from RetiradasDoc rd, Retiradas r ' +
            'where rd.Retirada = :Ret and rd.Retirada = r.Retirada ';
        ParamByName('Ret').AsInteger := Retirada;
        Open;
        First;
        C_Cheques.EmptyDataSet;
        C_Cheques.Edit;
        dfFavorecido.ID := Favorecido;
        bCancelado := fieldbyname('Situacao').AsString = 'C';
        btCancelar.Enabled := not bCancelado;
        btComando1.Enabled := not bCancelado;
        btImprimir.Enabled := not bCancelado;
        pnCancelado.Visible := bCancelado;
        C_ChequesData.Value := fieldbyname('Data').AsDateTime;
        C_ChequesMemo.Value := fieldbyname('Historico').AsString;
        C_ChequesValor.Value := fieldbyname('Valor').AsCurrency;
        C_ChequesContaBanco.Value := fieldbyname('Conta').AsInteger;
        C_ChequesData.Value := fieldbyname('Data').AsDateTime;
        C_ChequesNumCheque.AsVariant := fieldbyname('NumCheque').Value;
        C_ChequesChequeNominal.Value := fieldbyname('ChequeNominal').AsString;
        C_ChequesContaPagar.Value := fieldbyname('ContaPagar').AsInteger;
        C_ChequesExtenso.Value := Util2.Extenso(C_ChequesValor.Value);
        ckbPrePagamento.Checked := fieldbyname('CreditoGerado').AsCurrency > 0;
        DMContabil.SetPrePagamentoCheque(ckbPrePagamento.Checked);
        aIDDoc := fieldbyname('IDDoc').AsInteger;
        sCheque := IntToStr(aIDDOC);
    {Contas Operação}
        DMFinanceiro.CarregarContasOperacao(C_ContasOperacao, Duplicata);
    end;
    TranAlterar.Prepare(pnAlterar.Parent, pnAlterar.BoundsRect);
    try
        pnAlterar.Visible := true;
        if TranAlterar.Prepared then
            TranAlterar.Execute;
    finally
        TranAlterar.UnPrepare;
    end;
    btGravar.Caption := 'Alterar';
    DMProjeto.LimparParametrosForm;
end;

procedure TDlgEscreverCheque.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, true);
    btCancelar.Visible := false;
    btImprimir.Visible := false;
    btComando1.Visible := false;
    C_Cheques.CreateDataSet;
    C_ContasOperacao.CreateDataSet;
    C_ContasOperacao.Append;
    C_ContasOperacaoConta.Value := 11;
    dtData.Date := DMProjeto.dDataSistema;
    nContaBanco := DMFinanceiro.getContaBancoPadrao;
    with DMProjeto do begin
        if Parametro('ImprimirCheque') = 'T' then
            cmbImprimir.ItemIndex := 0
        else if Parametro('ImprimirCheque') = 'S' then
            cmbImprimir.ItemIndex := 1
        else
            cmbImprimir.ItemIndex := 2;
        ckbImprimirRecibo.Checked := Parametro('ImprimirReciboDePagamento') = 'S';

        if ExisteParametrosForm then begin
            if getParametrosForm(0) <> null then
                getHistorico(getParametrosForm(0));
            LimparParametrosForm;
        end else
            Novo;
    end;
end;

procedure TDlgEscreverCheque.ContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
    DlgPopup.SetTipo(15);
end;

procedure TDlgEscreverCheque.dbContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasBcDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TdxDBPopupEdit(Sender));
end;

procedure TDlgEscreverCheque.FormActivate(Sender: TObject);
begin
    inherited;
    Conta.popupcontrol := DlgPopup.pnPopup;
    dbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgEscreverCheque.dfNomeAfterEdit(Sender: TObject);
begin
    inherited;
    dfEndereco.SetFocus;
end;

procedure TDlgEscreverCheque.dfEnderecoAfterEdit(Sender: TObject);
begin
    inherited;
    dfCidade.SetFocus;
end;

procedure TDlgEscreverCheque.dfCidadeAfterEdit(Sender: TObject);
begin
    inherited;
    dfEstado.SetFocus;
end;

procedure TDlgEscreverCheque.dfEstadoAfterEdit(Sender: TObject);
begin
    inherited;
    dfCep.SetFocus;
end;

procedure TDlgEscreverCheque.btCancelarClick(Sender: TObject);
begin
    inherited;
    if bCancelado then begin
        DlgMsg.ShowMsg(940);
        Exit;
    end;

    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'CAN') then
        exit;

    if DlgMsg.ShowMsg(577, ['este pagamento ?']) = 100 then begin

        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        DMFinanceiro.CancelarRetirada(IntToStr(RetiradaHist), '', true, true);

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

        try
            SendLastDataObject(Self.Name, 'Retiradas', 'Retirada', RetiradaHist,
                false);
        except
        end;

        Novo;
    end;
end;

procedure TDlgEscreverCheque.dfFavorecidoSelecionou(Sender: TObject);
var nContaFav: integer;
begin
    inherited;
    C_Cheques.Edit;
    C_ChequesConta.Value := DMProjeto.C_LocalizarFavConta.Value;
    nContaFav := DMFinanceiro.getContabancoPadrao(dfFavorecido.ID);
    C_ChequesContaBanco.Value := iif(nContaFav = 0, nContaBanco, nContaFav);
    if not DMProjeto.C_LocalizarFavContaDespesas.IsNull then begin
        C_ContasOperacao.Edit;
        C_ContasOperacaoConta.Value := DMProjeto.C_LocalizarFavContaDespesas.Value;
    end;
    C_ChequesEndereco.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('Endereco').Value;
    C_ChequesCidade.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('Cidade').Value;
    C_ChequesEstado.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('UF').Value;
    C_ChequesCEP.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('CEP').Value;
    C_ChequesFone1.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('Fone1').Value;
    C_ChequesChequeNominal.AsVariant := DMProjeto.C_LocalizarFav.FieldbyName('Nome').Value;
    lbPagarContas.Visible := DMFinanceiro.SaldoFornecedor(dfFavorecido.ID) > 0;
end;

procedure TDlgEscreverCheque.btImprimirClick(Sender: TObject);
begin
    inherited;
    ImpressaoRecibo;
end;

procedure TDlgEscreverCheque.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    DlgPopup.free;
  // Adriano
    if DMContabil <> nil then begin
        DMContabil.FechaDatasets;
        DMContabil.Free;
    end;
  ////////////////////
end;

procedure TDlgEscreverCheque.FormCreate(Sender: TObject);
begin
    inherited;
  // Adriano
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgEscreverCheque.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'CONTABILID') then
        exit;

    if not Validacoes(false) then
        Exit;
  // Adriano
    DMContabil.ContabilizaEscreverCheque(RetiradaHist, ckbPrePagamento.checked, C_Cheques, C_ContasOperacao);

    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgEscreverCheque.btComando2Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'HISTORICO') then
        exit;

    with DMProjeto do begin
        SetParametrosForm([5, 'Histórico de Cheques Escritos', true]); // Escrever Cheque
        if CriarForm('DlgHistoricoRetiradas', self, true) = 1 then begin
            if ExisteParametrosForm then
                getHistorico(getParametrosForm(0));
        end;
        LimparParametrosForm;
    end;
end;

procedure TDlgEscreverCheque.C_ChequesDataChange(Sender: TField);
begin
    inherited;
    dData := C_ChequesData.Value;
    C_ChequesContaPagar.Value := DMFinanceiro.getContaPagar(0, C_ChequesData.Value);
end;

procedure TDlgEscreverCheque.C_ChequesNewRecord(DataSet: TDataSet);
begin
    inherited;
    if cbLockDate.Checked then
        C_ChequesData.Value := dData
    else
        C_ChequesData.Value := DMProjeto.dDataSistema;
    dData := C_ChequesData.Value;
    if ckbPrePagamento.Checked then
        C_ChequesMemo.Value := 'Pré-Pagamento';
    C_ChequesNumCheque.Value := 0;
end;

procedure TDlgEscreverCheque.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0 then
        if ActiveControl is TTS_DBEditFavorecido then
            TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TDlgEscreverCheque.ckbPrePagamentoChange(Sender: TObject);
begin
    inherited;
    if C_Cheques.State in [dsBrowse] then
        C_Cheques.Edit;
    if ckbPrePagamento.Checked then begin
        if pos('Pré-Pagamento', C_ChequesMemo.Value) <= 0 then
            C_ChequesMemo.Value := C_ChequesMemo.Value + ' Pré-Pagamento';
        DBContasOperacao.Enabled := false;
        DBContasOperacao.Color := $00EBEBEB;
    end else begin
        DBContasOperacao.Enabled := true;
        DBContasOperacao.Color := clWhite;
        C_ChequesMemo.Value := replace(C_ChequesMemo.Value, ' Pré-Pagamento', '');
    end;
end;

procedure TDlgEscreverCheque.btComando1Click(Sender: TObject);
begin
    inherited;
    ImpressaoCheque;
end;

procedure TDlgEscreverCheque.lbPagarContasClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do begin
        SetParametrosForm([null, dfFavorecido.ID, '']);
        CriarForm('DlgSangria', self, true);
    end;
end;

procedure TDlgEscreverCheque.cmbImprimirChange(Sender: TObject);
begin
    inherited;
    if cmbImprimir.ItemIndex = 0 then begin
        lbNumCheque.Enabled := false;
        dfNumCheque.Enabled := false;
    end else if cmbImprimir.ItemIndex = 1 then begin
        lbNumCheque.Enabled := false;
        dfNumCheque.Enabled := false;
    end else begin
        lbNumCheque.Enabled := true;
        dfNumCheque.Enabled := true;
        dfNumCheque.SetFocus;
        dfNumCheque.SelectAll;
    end;
end;

procedure TDlgEscreverCheque.C_ChequesContaBancoChange(Sender: TField);
begin
    inherited;
    nContaBanco := C_ChequesContaBanco.ASInteger;
end;

procedure TDlgEscreverCheque.EditarRecibo1Click(Sender: TObject);
begin
    inherited;
    with DMProjeto do begin
        SetParametrosForm([1]);
        CriarForm('FrmTextos', self, true);
    end;
end;

procedure TDlgEscreverCheque.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
    inherited;
    if C_ContasOperacao.RecordCount = 0 then
        C_ContasOperacaoConta.Value := DMProjeto.ContaPadrao(25);
end;

end.

