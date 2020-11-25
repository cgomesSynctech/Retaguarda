unit Dlg_ConferenciaCaixa;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBTLCl, dxGrClms, dxTL,
    dxDBCtrl, dxDBGrid, DB, DBClient, Provider, IBCustomDataSet, IBQuery,
    dxCntner, TS_QDBGrid, dxEditor, dxDBEdtr, dxDBELib, TS_DBLookupComboBox,
    ComCtrls, TS_PageControl, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxEdLib, TS_DateTimePicker;

type
    TDlgConferenciaCaixa = class(TFrmModeloCadastros)
        pcFechamento: TTS_PageControl;
        tsBancos: TTS_TabSheet;
        TS_Label12: TTS_Label;
        Bevel2: TBevel;
        tsCaixas: TTS_TabSheet;
        TS_Label13: TTS_Label;
        Bevel3: TBevel;
        dbgConsulta: TTS_QDBGrid;
        Q_Consulta: TIBQuery;
        P_Consulta: TDataSetProvider;
        C_Consulta: TClientDataSet;
        C_ConsultaDS: TDataSource;
        C_ConsultaFECHAMENTO: TIntegerField;
        C_ConsultaDATA: TDateField;
        C_ConsultaCAIXA: TStringField;
        C_ConsultaDIGITADO: TBCDField;
        C_ConsultaAPURADO: TBCDField;
        C_ConsultaSALDO: TBCDField;
        dbgConsultaFECHAMENTO: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaCAIXA: TdxDBGridMaskColumn;
        lblVoltar: TTS_Label;
        dbgConsultaDetalhe: TTS_QDBGrid;
        TS_Label5: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label6: TTS_Label;
        DataF: TTS_DateTimePicker;
        Q_ConsultaDetalhe: TIBQuery;
        P_ConsultaDetalhe: TDataSetProvider;
        C_ConsultaDetalhe: TClientDataSet;
        C_ConsultaDetalheDS: TDataSource;
        C_ConsultaDetalheIDFECHAMENTO: TIntegerField;
        C_ConsultaDetalheFECHAMENTO: TIntegerField;
        C_ConsultaDetalheDATA: TDateField;
        C_ConsultaDetalheESPECIE: TStringField;
        C_ConsultaDetalheVALORDIGITADO: TBCDField;
        C_ConsultaDetalheVALORAPURADO: TBCDField;
        C_ConsultaDetalheSALDO: TBCDField;
        C_ConsultaDetalheSTATUS: TStringField;
        dbgConsultaDetalheIDFECHAMENTO: TdxDBGridMaskColumn;
        dbgConsultaDetalheFECHAMENTO: TdxDBGridMaskColumn;
        dbgConsultaDetalheDATA: TdxDBGridDateColumn;
        dbgConsultaDetalheESPECIE: TdxDBGridMaskColumn;
        dbgConsultaDetalheVALORDIGITADO: TdxDBGridCurrencyColumn;
        dbgConsultaDetalheVALORAPURADO: TdxDBGridCurrencyColumn;
        dbgConsultaDetalheSALDO: TdxDBGridCurrencyColumn;
        dbgConsultaDetalheSTATUS: TdxDBGridMaskColumn;
        dbgConsultaDIGITADO: TdxDBGridMaskColumn;
        dbgConsultaAPURADO: TdxDBGridMaskColumn;
        dbgConsultaSALDO: TdxDBGridMaskColumn;
        btnLancarSobra: TTS_SpeedButton;
        btnGerarTitulo: TTS_SpeedButton;
        btnIgnorar: TTS_SpeedButton;
        Q_SQL: TIBQuery;
        C_ConsultaFUNCIONARIO: TIntegerField;
        C_ConsultaNOME: TStringField;
        procedure btComando1Click(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure PesquisarFechamento();
        procedure PesquisarFechamentoDetalhe(id: integer);
        procedure ConfigurarTela();
        procedure lblVoltarClick(Sender: TObject);
        procedure btnLancarSobraClick(Sender: TObject);
        procedure btnGerarTituloClick(Sender: TObject);
        procedure btnIgnorarClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgConferenciaCaixa: TDlgConferenciaCaixa;

implementation

uses DM_Projeto, Form_Padrao, funcoes;

{$R *.dfm}

procedure TDlgConferenciaCaixa.btComando1Click(Sender: TObject);
begin
    inherited;

    PesquisarFechamento;
end;

procedure TDlgConferenciaCaixa.PesquisarFechamento();
begin
    Q_Consulta.Close;
    C_Consulta.Close;
    Q_Consulta.SQL.Text := ' select f.fechamento, f.datafechamento as data, fa.favorecido as funcionario, fa.nome, c.descricao as caixa, ' +
        'sum(f.valordigitado) as digitado, sum(f.valorapurado) as apurado, sum(f.saldo) as saldo ' +
        'from fechamentocaixa f inner join contas c on f.conta = c.conta ' +
        'inner join usuarios u on c.usuariocaixa = u.usuario ' +
        'inner join favorecidos fa on u.funcionario = fa.favorecido ' +
        'where (f.datafechamento >= :datai and f.datafechamento <= :dataf) and upper(f.status) = ''A'' and c.usuariocaixa is not null ' +
        'group by 1, 2, 3, 4, 5 order by f.datafechamento asc ';

    Q_Consulta.ParamByName('datai').AsDateTime := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDateTime := DataF.Date;

    C_Consulta.Open;
end;

procedure TDlgConferenciaCaixa.PesquisarFechamentoDetalhe(id: integer);
begin
    Q_ConsultaDetalhe.Close;
    C_ConsultaDetalhe.Close;
    Q_ConsultaDetalhe.SQL.Text := ' select f.idfechamento, f.fechamento, f.datafechamento as data, e.descricao as especie, ' +
        ' f.valordigitado, f.valorapurado, f.saldo, f.status ' +
        ' from fechamentocaixa f inner join contas c on f.conta = c.conta ' +
        ' inner join especiestitulos e on f.especie = e.especie ' +
        ' where f.fechamento = :id and upper(f.status) = ''A'' order by f.idfechamento asc ';

    Q_ConsultaDetalhe.ParamByName('id').AsInteger := id;

    C_ConsultaDetalhe.Open;
end;

procedure TDlgConferenciaCaixa.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    if (dbgConsulta.TS_SelectedColumn = 'DATA') or (dbgConsulta.TS_SelectedColumn = 'CAIXA') then
        begin
            PesquisarFechamentoDetalhe(C_ConsultaFECHAMENTO.AsInteger);
            pcFechamento.ActivePageIndex := 1;
            ConfigurarTela;
        end;
end;

procedure TDlgConferenciaCaixa.ConfigurarTela();
begin
    if (pcFechamento.ActivePageIndex = 1) then
        begin
            btComando1.Enabled := False;
            btnLancarSobra.Visible := C_ConsultaSALDO.AsCurrency > 0;
            btnGerarTitulo.Visible := C_ConsultaSALDO.AsCurrency < 0;
        end
    else
        begin
            btComando1.Enabled := True;
        end;
end;

procedure TDlgConferenciaCaixa.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    btLimpar.Visible := False;
    btGravar.Visible := False;

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;

    if (DataI.GetEditingText = '') then
        DataI.Date := DMProjeto.dDataSistema;
    if (DataF.GetEditingText = '') then
        DataF.Date := DMProjeto.dDataSistema;
end;

procedure TDlgConferenciaCaixa.lblVoltarClick(Sender: TObject);
begin
    inherited;
    pcFechamento.ActivePageIndex := 0;
    ConfigurarTela;
end;

procedure TDlgConferenciaCaixa.btnLancarSobraClick(Sender: TObject);
var
    idDeposito, idDoc, nTentativas: integer;
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente lançar uma Sobra de Caixa no valor R$ ' + formatfloat('###,###,##0.00', C_ConsultaSALDO.AsCurrency) + ' ?'
        + #13 + #13 + 'Obs: Ao término do lançamento será feito o fechamento da atual conferência.']) = 100 then
        begin

            { Lançar Sobra de Caixa em DEPOSITOS }
            idDeposito := DMProjeto.NextIDGlobal;

            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'INSERT INTO DEPOSITOS (DEPOSITO, PDV, CONTA, DATA, VALOR, FAVORECIDO, HISTORICO, USUARIO, SITUACAO, TIPODEPOSITO, ' +
                        'CREDITOGERADO) VALUES (:deposito, :pdv, :conta, :data, :valor, -1, :historico, :usuario, ''N'', 2, :creditogerado)';
                    ParamByName('deposito').AsInteger := idDeposito;
                    ParamByName('pdv').AsInteger := DMProjeto.nPDV;
                    ParamByName('conta').AsInteger := -8; // Conta Sobra de Caixa
                    ParamByName('data').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('valor').AsCurrency := C_ConsultaSALDO.AsCurrency;
                    ParamByName('historico').AsString := 'Sobra de Caixa gerado pela Conferência de Caixa';
                    ParamByName('usuario').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('creditogerado').AsCurrency := C_ConsultaSALDO.AsCurrency;

                    nTentativas := 0;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    { Lançar Sobra de Caixa em DEPOSITOSDOC }
                    nTentativas := 0;

                    idDoc := DMProjeto.NextIDGlobal;

                    Close;
                    SQL.Text := 'INSERT INTO DEPOSITOSDOC (IDDOC, PDV, DEPOSITO, FORMAPAGAMENTO, VALOR, VENCIMENTO, STATUS, LOCALTITULO, FORADAEMPRESA, ' +
                        'AVISTA, CONTAATUAL, CONTARECEBER) VALUES (:iddoc, :pdv, :deposito, 1, :valor, :vencimento, 50, ''SOBRA DE CAIXA'', ''N'', ''S'', :contaatual, 0)';
                    ParamByName('iddoc').AsInteger := idDoc;
                    ParamByName('pdv').AsInteger := DMProjeto.nPDV;
                    ParamByName('deposito').AsInteger := idDeposito;
                    ParamByName('valor').AsCurrency := C_ConsultaSALDO.AsCurrency;
                    ParamByName('vencimento').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('contaatual').AsInteger := -8; // Conta Sobra de Caixa

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    { Lançar Sobra de Caixa em TRANSACOES }
                    nTentativas := 0;

                    Close;
                    SQL.Text := 'INSERT INTO TRANSACOES (ID, PDV, CONTA, DATA, VALOR, TIPOTRANSACAO, FORMAPAGAMENTO, HISTORICO, FAVORECIDO, IDGERADOR, IDDOC, ' +
                        'TIPOOPERACAO, USUARIO, CONCILIADO) VALUES (:id, :pdv, :conta, :data, :valor, ''C'', 1, :historico, -1, :idgerador, :iddoc, ' +
                        '8, :usuario, ''N'')';
                    ParamByName('pdv').AsInteger := DMProjeto.nPDV;
                    ParamByName('conta').AsInteger := -8; // Conta Sobra de Caixa
                    ParamByName('data').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('valor').AsCurrency := C_ConsultaSALDO.AsCurrency;
                    ParamByName('historico').AsString := 'Sobra de Caixa gerado pela Conferência de Caixa';
                    ParamByName('idgerador').AsInteger := idDeposito;
                    ParamByName('iddoc').AsInteger := idDoc;
                    ParamByName('usuario').AsInteger := DMProjeto.nFuncionario;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    { Lançar Sobra de Caixa em OPERACOESDOC }
                    nTentativas := 0;

                    Close;
                    SQL.Text := 'INSERT INTO OPERACOESDOC (PDV, DATA, IDDOC, IDGERADOR, TIPOOPERACAO, VALOR, FORMAPAGAMENTO, STATUS, ' +
                        'OBS, USUARIO) VALUES (:pdv, :data, :iddoc, :idgerador, 8, :valor, 1, 50, :historico, :usuario)';
                    ParamByName('pdv').AsInteger := DMProjeto.nPDV;
                    ParamByName('data').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('iddoc').AsInteger := idDoc;
                    ParamByName('idgerador').AsInteger := idDeposito;
                    ParamByName('valor').AsCurrency := C_ConsultaSALDO.AsCurrency;
                    ParamByName('historico').AsString := 'Sobra de Caixa gerado pela Conferência de Caixa';
                    ParamByName('usuario').AsInteger := DMProjeto.nFuncionario;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    { Atualizar Status para Fechar a Conferência de Caixa }
                    nTentativas := 0;

                    Close;
                    SQL.Text := 'update fechamentocaixa f set f.status = ''T'' where f.fechamento = :fechamento';
                    ParamByName('fechamento').AsInteger := C_ConsultaFECHAMENTO.AsInteger;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    DMProjeto.DB_Projeto.DefaultTransaction.Commit;

                end;

            PesquisarFechamento;
            pcFechamento.ActivePageIndex := 0;
            ConfigurarTela;

            DlgMsg.ShowMsg(50, ['Operação realizada com Sucesso!']);
        end;
end;

procedure TDlgConferenciaCaixa.btnGerarTituloClick(Sender: TObject);
var
    id, nTentativas: integer;
    titulo: string;
begin
    inherited;

    if DlgMsg.ShowMsg(6042, ['Deseja realmente gerar uma Parcela a Receber no valor R$ ' + formatfloat('###,###,##0.00', Abs(C_ConsultaSALDO.AsCurrency)) + ' para o funcionário ' + C_ConsultaNOME.AsString + ' ? '
        + #13 + #13 + 'Obs: Ao término do lançamento será feito o fechamento da atual conferência.']) = 100 then
        begin
            with Q_SQL do
                begin
                    { Lançar o Titulo a Receber em nome do Funcionário }
                    id := DMProjeto.NextIDGlobal;
                    titulo := AdicionarStr(IntToStr(id), '0', 8);

                    Close;
                    SQL.Text := 'INSERT INTO TITULOSARECEBER (ID, PDV, TITULO, PARCELA, VALOR, VENCIMENTO, COMPETENCIA, OBS, CLIENTE, NOTAFISCAL, ' +
                        'STATUS, USUARIO, DATAATRASADO, FALTARECEBER, ORIGEM_ARECEBER, IDGERADOR_ARECEBER, CONTAARECEBER, TIPOCOBRANCA, REMESSA) ' +
                        'VALUES (:id, :pdv, :titulo, 1, :valor, :vencimento, :competencia, :obs, :cliente, :notafiscal, 1, :usuario, :dataatrasado, :faltareceber, ' +
                        '30, :idgerador, 0, 1, ''N'')';
                    ParamByName('id').AsInteger := id;
                    ParamByName('pdv').AsInteger := DMProjeto.nPDV;
                    ParamByName('titulo').AsString := titulo + '-1';
                    ParamByName('valor').AsCurrency := Abs(C_ConsultaSALDO.AsCurrency);
                    ParamByName('vencimento').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('competencia').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('obs').AsString := 'Título gerado por conta da diferença de R$ ' + formatfloat('###,###,##0.00', Abs(C_ConsultaSALDO.AsCurrency)) + ' na conferência de caixa. Gerado pelo Usuário: ' + IntToStr(DMProjeto.nFuncionario);
                    ParamByName('cliente').AsInteger := C_ConsultaFUNCIONARIO.AsInteger;
                    ParamByName('notafiscal').AsString := titulo;
                    ParamByName('usuario').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('dataatrasado').AsDateTime := DMProjeto.dDataSistema;
                    ParamByName('faltareceber').AsCurrency := Abs(C_ConsultaSALDO.AsCurrency);
                    ParamByName('idgerador').AsInteger := id;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    { Atualizar Status para Fechar a Conferência de Caixa }
                    nTentativas := 0;

                    Close;
                    SQL.Text := 'update fechamentocaixa f set f.status = ''T'' where f.fechamento = :fechamento';
                    ParamByName('fechamento').AsInteger := C_ConsultaFECHAMENTO.AsInteger;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                end;

            PesquisarFechamento;
            pcFechamento.ActivePageIndex := 0;
            ConfigurarTela;

            DlgMsg.ShowMsg(50, ['Operação realizada com Sucesso!']);
        end;
end;

procedure TDlgConferenciaCaixa.btnIgnorarClick(Sender: TObject);
var
    nTentativas: integer;
begin
    inherited;
    
    if DlgMsg.ShowMsg(6042, ['Deseja realmente fechar a atual conferência ?' + #13 + #13 +
        'Obs: Não será feito nenhum lançamento para essa escolha.']) = 100 then
        begin
            with Q_SQL do
                begin
                    { Atualizar Status para Fechar a Conferência de Caixa }
                    nTentativas := 0;

                    Close;
                    SQL.Text := 'update fechamentocaixa f set f.status = ''T'' where f.fechamento = :fechamento';
                    ParamByName('fechamento').AsInteger := C_ConsultaFECHAMENTO.AsInteger;

                    repeat
                        try
                            ExecSQL;
                            nTentativas := 3;
                        except
                            Inc(nTentativas);
                        end;

                    until nTentativas = 3;

                    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                end;

            PesquisarFechamento;
            pcFechamento.ActivePageIndex := 0;
            ConfigurarTela;

            DlgMsg.ShowMsg(50, ['Operação realizada com Sucesso!']);
        end;
end;

end.

