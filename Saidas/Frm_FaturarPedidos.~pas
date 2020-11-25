unit Frm_FaturarPedidos;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, dxDBTLCl, dxGrClms, DB, DBClient, Provider, IBCustomDataSet,
    IBQuery, IBUpdateSQL, dxEditor, dxEdLib, TS_DateTimePicker, ComCtrls,
    CheckLst, TS_CheckListBox, TS_PopupEdit, dxDBEdtr, dxDBELib,
    TS_DBLookupComboBox, TS_LookupComboBox;

type
    TFrmFaturarPedidos = class(TFrmModeloCadastros)
        GridMovs: TTS_QDBGrid;
        GridMovsSAIDA: TdxDBGridMaskColumn;
        GridMovsNUMERO: TdxDBGridMaskColumn;
        GridMovsDATA: TdxDBGridDateColumn;
        GridMovsCLIENTE: TdxDBGridMaskColumn;
        GridMovsVENDEDOR: TdxDBGridMaskColumn;
        GridMovsSTATUS: TdxDBGridMaskColumn;
        GridMovsTOTAL: TdxDBGridCurrencyColumn;
        GridMovsOBS: TdxDBGridMaskColumn;
        Q_Movimentos: TIBQuery;
        P_Movimentos: TDataSetProvider;
        C_Movimentos: TClientDataSet;
        C_Movimentos_icSelecionado: TIntegerField;
        C_MovimentosDS: TDataSource;
        Q_MovimentosDS: TDataSource;
        C_MovimentosSAIDA: TIntegerField;
        C_MovimentosNUMERO: TStringField;
        C_MovimentosDATA: TDateField;
        C_MovimentosCLIENTE: TStringField;
        C_MovimentosVENDEDOR: TStringField;
        C_MovimentosSTATUS: TStringField;
        C_MovimentosOBS: TStringField;
        Panel1: TPanel;
        Label1: TLabel;
        Label3: TLabel;
        dfDataInicial: TTS_DateTimePicker;
        dfDataFinal: TTS_DateTimePicker;
        Q_Sql: TIBQuery;
        C_MovimentosPDV: TIntegerField;
        Q_SaidasItens: TIBQuery;
        Q_SaidasItensDs: TDataSource;
        P_SaidasItens: TDataSetProvider;
        C_SaidasItens: TClientDataSet;
        Q_Titulos: TIBQuery;
        P_Titulos: TDataSetProvider;
        C_Titulos: TClientDataSet;
        Q_TitulosDs: TDataSource;
        pbFaturamento: TProgressBar;
        C_MovimentosDESCRICAO: TStringField;
        Q_TiposMovimento: TIBQuery;
        TS_Label1: TTS_Label;
        C_TiposMovimentoDS: TDataSource;
        Q_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentoDESCRICAO: TIBStringField;
        Q_TiposMovimentoTIPOPADRAO: TIntegerField;
        Q_TiposMovimentoBAIXAESTOQUE: TIBStringField;
        Q_TiposMovimentoBAIXAESTOQUEFISCAL: TIBStringField;
        Q_TiposMovimentoCALCCOMISSAO: TIBStringField;
        Q_TiposMovimentoGERAFINANCEIRO: TIBStringField;
        Q_TiposMovimentoTIPOIMPRESSAO_OP: TIBStringField;
        Q_TiposMovimentoPOSSUIICMS: TIBStringField;
        Q_TiposMovimentoPOSSUIIPI: TIBStringField;
        Q_TiposMovimentoPOSSUIISS: TIBStringField;
        Q_TiposMovimentoPOSSUIENTREGA: TIBStringField;
        Q_TiposMovimentoMODELODOC: TIBStringField;
        lcbTipoMovimento: TTS_LookupComboBox;
        C_MovimentosEMPRESA: TIntegerField;
        btImprimir: TTS_SpeedButton;
        C_MovimentosFAVORECIDO: TIntegerField;
        Q_TiposMovimentoCB_NOTAFISCAL: TIBStringField;
        Q_TiposMovimentoSIGLAINICIAL: TIBStringField;
    C_MovimentosTOTAL: TFloatField;
    Q_TiposMovimentoSERIENOTA: TIBStringField;
        procedure btLimparClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
    private
        sNumeroGerado: string;
        { Private declarations }

        function CriarSaidaItem(saida, saidaNova, saidaitem, pdv: integer): integer;
        function CriarSaida(saida, pdv: integer): integer;
        function CriarTituloAReceber(titulo, pdv, saida_nova: integer; bExisteParcela: boolean = false): integer;
        function GerarNumeroOperacao(bNotaFiscal: boolean): string;

        procedure Pesquisar();
        procedure Faturar(saida, pdv: integer);
        procedure JoinItensMescla(SAIDAITEM, SAIDAITEM_NOVA, PDV, SAIDA: integer);

        procedure ModificarPedido(saida, pdv: integer);
        procedure ModificarPedidosItens(saida, pdv: integer);
        procedure ExecSQL(comando: string);

    public
        { Public declarations }
    end;

var
    FrmFaturarPedidos: TFrmFaturarPedidos;

implementation

uses DM_Projeto, Funcoes, Form_Padrao;

{$R *.dfm}

function TFrmFaturarPedidos.CriarTituloAReceber(titulo, pdv, saida_nova: integer; bExisteParcela: boolean = false): integer;
var comando: string;
    id: integer;
begin
    if (bExisteParcela) then
        begin
            with Q_Sql do
                begin
                    Close;
                    SQL.Text := 'SELECT PARCELA, VALOR, VENCIMENTO, COMPETENCIA FROM TITULOSARECEBER WHERE Id = :titulo AND PDV = :pdv';
                    ParamByName('titulo').AsInteger := titulo;
                    ParamByName('pdv').AsInteger := pdv;
                    Open;

                    id := DMProjeto.Conta_A_Receber(FieldByName('PARCELA').AsInteger, FieldByName('VALOR').AsCurrency, FieldByName('VENCIMENTO').AsDateTime,
                        FieldByName('COMPETENCIA').AsDateTime, 'Título Gerado pela tela de Faturar Pedidos',
                        C_MovimentosFAVORECIDO.AsInteger, saida_nova, sNumeroGerado, 34, saida_nova, 0, 0, '1');
                end;
        end
    else
        id := DMProjeto.Conta_A_Receber(1, C_MovimentosTOTAL.AsCurrency, C_MovimentosDATA.AsDateTime, C_MovimentosDATA.AsDateTime,
            'Título Gerado pela tela de Faturar Pedidos', C_MovimentosFAVORECIDO.AsInteger,
            saida_nova, sNumeroGerado, 34, saida_nova, 0, 0, '1');

    Result := id;
end;

procedure TFrmFaturarPedidos.JoinItensMescla(SAIDAITEM, SAIDAITEM_NOVA, PDV, SAIDA: integer);
var comando: string;
begin
    comando := 'INSERT INTO SAIDASITENSMESCLA (EMPERSA, PDV, SAIDAITEM_ORIGINAL, SAIDAITEM, QUANTIDADE, QTDMAXIMA, SAIDA_ORIGINAL, FECHAR_ORIGINAL, UNIDADE, FATOR, IMPORTACAO, ORIGEMREPLIC) ' +
        'SELECT EMPRESA, PDV, SAIDAITEM, ' + IntToStr(SAIDAITEM_NOVA) + ', QUANTIDADE, QUANTIDADE, ' + IntToStr(SAIDA) + ', ''S'', UNIDADE, FATOR, 0, ''R'' ' +
        'FROM SAIDASITENS WHERE SAIDAITEM = ' + IntToStr(SAIDAITEM_NOVA) + ' and PDV = ' + IntToStr(PDV);
    ExecSql(comando);
end;

function TFrmFaturarPedidos.CriarSaida(saida, pdv: integer): integer;
var comando: string;
    IDSaida: integer;
begin
    //Criando Saidas
    sNumeroGerado := '';
    sNumeroGerado := GerarNumeroOperacao(Q_TiposMovimentoCB_NOTAFISCAL.AsString = 'S');

    IDSaida := DMProjeto.NextIDGlobal;
    comando := 'INSERT INTO SAIDAS (EMPRESA, SAIDA, PDV, NUMERO, DATA, FAVORECIDO, OBS, TAX, PERCENTUALTAX, DESCONTO, PLANOPAGAMENTO, ' +
        'VENDEDOR,FRETE, TOTAL, TIPOENTREGA, DATAENTREGA, IMPORTACAO, SITUACAO, TIPOMOVIMENTO, PEDIDO_CLIENTE, OUTRASDESPESAS, ' +
        'JUROS, POSSUITAX, BAIXAESTOQUE, CALCCOMISSAO, POSSUIENTREGA, CAMPO01, CAMPO02, CAMPO03, CAMPO04, IMPRESSO, ' +
        'IMPOSTO, IMPOSTO_INCLUSO, PCOMISSAO, CAIXA, LOCALENTREGA, TABELAPADRAO, TIPOPADRAO, DATACANCELAMENTO, ' +
        'FUNCCANCELAMENTO, MOTIVOCANCELAMENTO, PJUROS, VALORCOMISSAO, TOTALITENS, VALIDADE, CONDICOESPGTO, ' +
        'DATAENTREGUE, STATUS, TOTALITENS123, BASEIMPOSTO, BASEINCLUSO, DESCONTOITENS, TIPOIMPRESSAO, TOTALPGTOS, ' +
        'STATUSANTERIOR, REDUCOESBASE, ACRESCIMOSBASE, DTMODIFICACAO, VOLUMES, TERMOCONTRATO, ALMOXPADRAO, CFOPNOTA, ' +
        'SERIENOTA, UFDESTINO, BASECALCICMS, VALORICMS, VALORISS, VALORIPI, BASECALCSUBST, VALORICMSSUBST, VALORSEGURO, ' +
        'TIPOFRETE, TRANSPORTADORA, PESOBRUTO, PESOLIQUIDO, ALIQICMSVENDA, VALORISENTAS, TOTALSERVICOS, DESCESPECIE, ' +
        'DESCMARCA, DESCNUMERO, INDICADOPELOFAV, POSSUIICMS, POSSUIIPI, POSSUIISS, CONTABILIZAICMS, MODELO, ' +
        'VALOROUTRASICMS, VALORISENTASIPI, VALOROUTRASIPI, FONTE, PLACAVEIC, ATRATAR, INTRODUCAO, PRAZOENTREGA, ' +
        'GARANTIA, SEESTOQUE, PROCESSO, CARTACONVITE, TOMADAPRECOS, DATAABERTURA, EXPLICACOES, LICITACAOICMS, SUBSTTRIB, ' +
        'PJUROSNEGOCIADO, CONDICOESPAGTO, TOTALPRODUTOS, VALORIPIITENS, BASECALCICMSITENS, VALORICMSITENS, ' +
        'BASECALCSUBSTITENS, COBRANCA, CARTEIRA, MEDICO, NF_CUPOM, DEVOLUCAO, BAIXAESTOQUEFISCAL, HORA, MENSAGEMITEM, ' +
        'NUMEROSERIEECF, NUMEROECF, CCF, CRZ, DETALHEIMPORTACAO, MD5, ORIGEMREPLIC) ' +

    'select EMPRESA, ' + IntToStr(IDSaida) + ',  PDV, ''' + sNumeroGerado + ''', CURRENT_DATE , FAVORECIDO, ' +
        '''' + IIF(Length(C_MovimentosOBS.Value) < 210, C_MovimentosOBS.Value + ' - ' + 'Importação do Pedido: ' + C_MovimentosNUMERO.Value, C_MovimentosOBS.Value) + '''' +
        ', TAX, PERCENTUALTAX, DESCONTO, ' +
        'PLANOPAGAMENTO, VENDEDOR, FRETE, TOTAL, ' +
        'TIPOENTREGA, DATAENTREGA, IMPORTACAO, SITUACAO, ' + Q_TiposMovimentoTIPOMOVIMENTO.AsString + ' , PEDIDO_CLIENTE, OUTRASDESPESAS, JUROS, POSSUITAX, ' +
        '''' + Q_TiposMovimentoBAIXAESTOQUE.AsString + ''', ''' + Q_TiposMovimentoCALCCOMISSAO.AsString + ''', ''' + Q_TiposMovimentoPOSSUIENTREGA.AsString + ''', ' +
        'CAMPO01, CAMPO02, CAMPO03, CAMPO04, IMPRESSO, IMPOSTO, IMPOSTO_INCLUSO, PCOMISSAO, CAIXA, LOCALENTREGA, ' +
        'TABELAPADRAO, ' + Q_TiposMovimentoTIPOPADRAO.AsString + ', DATACANCELAMENTO, FUNCCANCELAMENTO, MOTIVOCANCELAMENTO, PJUROS, VALORCOMISSAO, TOTALITENS, VALIDADE, ' +
        'CONDICOESPGTO, DATAENTREGUE, STATUS, TOTALITENS123, BASEIMPOSTO, BASEINCLUSO, DESCONTOITENS, ''' + Q_TiposMovimentoTIPOIMPRESSAO_OP.AsString + ''', TOTALPGTOS, ' +
        'STATUSANTERIOR, REDUCOESBASE, ACRESCIMOSBASE, DTMODIFICACAO, VOLUMES, TERMOCONTRATO, ALMOXPADRAO, CFOPNOTA, ''' + Q_TiposMovimentoSERIENOTA.AsString + ''', ' +
        'UFDESTINO, BASECALCICMS, VALORICMS, VALORISS, VALORIPI, BASECALCSUBST, VALORICMSSUBST, VALORSEGURO, TIPOFRETE, TRANSPORTADORA, ' +
        'PESOBRUTO, PESOLIQUIDO, ALIQICMSVENDA, VALORISENTAS, TOTALSERVICOS, DESCESPECIE, DESCMARCA, DESCNUMERO, INDICADOPELOFAV, ' +
        '''' + Q_TiposMovimentoPOSSUIICMS.AsString + ''', ''' + Q_TiposMovimentoPOSSUIIPI.AsString + ''', ''' + Q_TiposMovimentoPOSSUIISS.AsString + ''', ' +
        'CONTABILIZAICMS, ''' + Q_TiposMovimentoMODELODOC.AsString + ''', VALOROUTRASICMS, VALORISENTASIPI, VALOROUTRASIPI, FONTE, PLACAVEIC, ' +
        'ATRATAR, INTRODUCAO, PRAZOENTREGA, GARANTIA, SEESTOQUE, PROCESSO, CARTACONVITE, TOMADAPRECOS, DATAABERTURA, EXPLICACOES, ' +
        'LICITACAOICMS, SUBSTTRIB, PJUROSNEGOCIADO, CONDICOESPAGTO, TOTALPRODUTOS, VALORIPIITENS, BASECALCICMSITENS, VALORICMSITENS, ' +
        'BASECALCSUBSTITENS, COBRANCA, CARTEIRA, MEDICO, NF_CUPOM, DEVOLUCAO, ''' + Q_TiposMovimentoBAIXAESTOQUEFISCAL.AsString + ''', HORA, MENSAGEMITEM, NUMEROSERIEECF, ' +
        'NUMEROECF, CCF, CRZ, DETALHEIMPORTACAO, MD5, ORIGEMREPLIC ' +
        'From saidas s where tipopadrao = 2 and  saida = ' + InttoStr(saida) + ' and pdv = ' + IntToStr(pdv);
    ExecSql(comando);
    result := IDSaida;
end;

function TFrmFaturarPedidos.CriarSaidaItem(saida, saidaNova, saidaitem, pdv: integer): integer;
var comando: string;
    IDSaidaItem: integer;
begin
    IDSaidaItem := DMProjeto.NextIDGlobal;
    comando := 'INSERT INTO SAIDASITENS ' +
        '(EMPRESA, SAIDA, SAIDAITEM, PDV, SEQUENCIA, ITEM, DESCRICAO, QUANTIDADE, PRECO, TAXAVEL, IMPORTACAO, CONTAVENDA, ' +
        'TABELAPRECO, PRECOTABELA, USOTIPOITEM, SUBTOTALITEM, ORDEM, CUSTOMEDIO, CUSTOCONTABIL, RATEIODESCONTO, HASCHILDREN, ' +
        'PRODUCAO, FUNCPRODUCAO, COLUNA1, COLUNA2, COLUNA3, COLUNA4, MAXDESCONTO, DESPESA, ENTRADAITEM, CONTRATOREF, QTDFATURADA, ' +
        'MESCLADO, STATUS, QTDMONTAGEM, NUMEROLOTE, UNIDADE, FATOR, N_USOTIPOITEM, DESCONTO, DESCRICAOCOMPLEMENTAR, PROMOCAO, ' +
        'PRECOSEMPROMOCAO, BAIXAESTOQUE, ALMOXARIFADO, ORDEMMONTAGEM, BASECALCICMSPROD, IPI, ALIQICMS, CST, REDUCAOCST, SITUACAOECF, ' +
        'CFOPNOTA, BASECALCSUBSTPROD, VALORIPIPROD, TVA, NUMEROITEM, REGISTRO, VALORICMSPROD, VALORISENTASPROD, VALORICMSSUBSTPROD, ' +
        'PDESCONTO, QTDDEVOLVIDO, QTDACERTADO, DATACONTATO, CFOPCST, IDCFOPCST, BAIXAESTOQUEFISCAL, IDTRIBFEDERAL, QUANTIDADEVOLUME, ' +
        'CSTPISCOFINS, ALIQPIS, ALIQCOFINS, CSTIPI, ALIQIPI, VALORPISPROD, VALORCOFINSPROD, ULTIMOPRECOCOMPRA, V_BCII, V_DESPADUII, ' +
        'V_II, V_IOFII, PCOMISSAO, SITUACAO, MD5, ACRESCIMO, RATEIODESPESAS, RATEIOFRETE, RATEIOSEGURO, ORIGEMREPLIC, PRECOCUSTOLICITACAO) ' +
        'SELECT ' +
        'ss.EMPRESA, ' + IntToStr(saidaNova) + ', ' + IntToStr(IDSaidaItem) + ', ss.PDV, ss.SEQUENCIA, ss.ITEM, ss.DESCRICAO, ss.QUANTIDADE, ss.PRECO, ss.TAXAVEL, ss.IMPORTACAO, ss.CONTAVENDA, ' +
        'ss.TABELAPRECO, ss.PRECOTABELA, ss.USOTIPOITEM, ss.SUBTOTALITEM, ss.ORDEM, ss.CUSTOMEDIO, ss.CUSTOCONTABIL, ss.RATEIODESCONTO, ss.HASCHILDREN, ' +
        'ss.PRODUCAO, ss.FUNCPRODUCAO, ss.COLUNA1, ss.COLUNA2, ss.COLUNA3, ss.COLUNA4, ss.MAXDESCONTO, ss.DESPESA, ss.ENTRADAITEM, ss.CONTRATOREF, ss.QTDFATURADA, ' +
        'ss.MESCLADO, ''E'', ss.QTDMONTAGEM, ss.NUMEROLOTE, ss.UNIDADE, ss.FATOR, ss.N_USOTIPOITEM, ss.DESCONTO, ss.DESCRICAOCOMPLEMENTAR, ss.PROMOCAO, ' +
        'ss.PRECOSEMPROMOCAO, ''' + Q_TiposMovimentoBAIXAESTOQUE.AsString + ''', ss.ALMOXARIFADO, ss.ORDEMMONTAGEM, ss.BASECALCICMSPROD, i.aliqipi, ss.ALIQICMS, i.CST, i.REDUCAOCST, i.SITUACAOECF, ' +
        'ss.CFOPNOTA, ss.BASECALCSUBSTPROD, ((ss.subtotalitem * i.aliqipi) / 100 ), i.TVA, ss.NUMEROITEM, ss.REGISTRO, ss.VALORICMSPROD, ss.VALORISENTASPROD, ss.VALORICMSSUBSTPROD, ' +
        'ss.PDESCONTO, ss.QTDDEVOLVIDO, ss.QTDACERTADO, ss.DATACONTATO, ss.CFOPCST, ss.IDCFOPCST, ''' + Q_TiposMovimentoBAIXAESTOQUEFISCAL.AsString + ''', ss.IDTRIBFEDERAL, ' +
        'ss.QUANTIDADEVOLUME, i.cstpiscofinssaida, i.aliqpissaida, i.aliqcofinssaida, i.CSTIPI, i.ALIQIPI, ((ss.subtotalitem * i.aliqpissaida) / 100 ), ((ss.subtotalitem * i.aliqcofinssaida)/100), ss.ULTIMOPRECOCOMPRA, ss.V_BCII, ss.V_DESPADUII, ' +
        'ss.V_II, ss.V_IOFII, ss.PCOMISSAO, ss.SITUACAO, ss.MD5, ss.ACRESCIMO, ss.RATEIODESPESAS, ss.RATEIOFRETE, ss.RATEIOSEGURO, ss.ORIGEMREPLIC, ss.PRECOCUSTOLICITACAO ' +
        'FROM saidasitens ss inner join itens i on i.item = ss.item where ss.saida = ' + InttoStr(saida) + ' and ss.saidaitem = ' + IntToStr(saidaitem) + ' and ss.pdv = ' + IntToStr(pdv);
    ExecSql(comando);
    result := IDSaidaItem;
end;

procedure TFrmFaturarPedidos.ModificarPedido(saida, pdv: integer);
var comando: string;
begin
    comando := 'Update saidas set status = ''F'' where saida = ' + InttoStr(saida) + ' and pdv = ' + IntToStr(pdv);
    ExecSQL(comando);
end;

procedure TFrmFaturarPedidos.ModificarPedidosItens(saida, pdv: integer);
var comando: string;
begin
    comando := 'Update saidasitens set qtdfaturada = quantidade where saida = ' + InttoStr(saida) + ' and pdv = ' + IntToStr(pdv);
    ExecSQL(comando);
end;

procedure TFrmFaturarPedidos.ExecSQL(comando: string);
begin
    with Q_Sql do
        begin
            Close;
            SQL.Text := comando;
            ExecSQL;
        end;
end;

procedure TFrmFaturarPedidos.Faturar(saida, pdv: integer);
var saidaitem_Novo, saida_nova, saidaitem, IdTitulo: Integer;
begin
    ModificarPedido(saida, pdv);
    ModificarPedidosItens(saida, pdv);
    saida_nova := CriarSaida(saida, pdv);

    with Q_SaidasItens do
        begin
            Close;
            ParamByName('saida').AsInteger := saida;
            ParamByName('pdv').AsInteger := pdv;
            Open;
            First;

            while not Eof do
                begin
                    saidaitem := FieldByName('saidaitem').Value;
                    saidaitem_Novo := CriarSaidaItem(saida, saida_nova, saidaitem, pdv);
                    JoinItensMescla(saidaitem, saidaitem_Novo, pdv, saida);
                    Next;
                    //Q_SaidasItens.Next;
                end;
        end;

    if (Q_TiposMovimentoGERAFINANCEIRO.Value = 'S') then
        begin
            with Q_Titulos do
                begin
                    Close;
                    //SQL.Text := 'select tr.id, tr.titulo from titulosareceber tr where tr.venda = :saida and tr.pdv = :pdv order by tr.pdv asc, tr.venda asc, tr.id asc ';
                    ParamByName('saida').AsInteger := saida;
                    ParamByName('pdv').AsInteger := pdv; 
                    Open;
                    First;
                    
                    if RecordCount > 0 then
                        begin
                            while not Eof do
                                begin
                                    IdTitulo := FieldByName('Id').Value;
                                    CriarTituloAReceber(IdTitulo, pdv, saida_nova, True);
                                    Next;
                                end;
                        end
                    else
                        CriarTituloAReceber(0, pdv, saida_nova, False);

                end;
        end;
end;

procedure TFrmFaturarPedidos.Pesquisar();
begin
    with C_Movimentos do
        begin
            Close;
            Q_Movimentos.close;
            Q_Movimentos.ParamByName('DataInicial').Value := dfDataInicial.Date;
            Q_Movimentos.ParamByName('DataFinal').Value := dfDataFinal.Date;
            Open;
        end;
end;

procedure TFrmFaturarPedidos.btLimparClick(Sender: TObject);
begin
    inherited;
    Pesquisar();
end;

procedure TFrmFaturarPedidos.FormCreate(Sender: TObject);
begin
    inherited;
    dfDataInicial.Date := Date;
    dfDataFinal.Date := Date;
end;

procedure TFrmFaturarPedidos.btGravarClick(Sender: TObject);
var i: Integer;
begin
    inherited;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        pbFaturamento.Visible := true;
        pbFaturamento.Max := C_Movimentos.RecordCount;
        pbFaturamento.Position := 0;
        i := 0;

        if (DlgMsg.ShowMsg(6042, ['Confirma o faturamento dos pedidos selecionados ?']) = 100) then
            begin
                C_Movimentos.DisableControls;
                C_Movimentos.First;

                while not C_Movimentos.eof do
                    begin
                        pbFaturamento.Position := pbFaturamento.Position + 1;

                        if C_Movimentos.FieldByName('_icSelecionado').asInteger = 1 then
                            begin
                                Faturar(C_Movimentos.FieldByName('Saida').AsInteger, C_Movimentos.FieldByName('PDV').AsInteger);
                                Inc(i);
                            end;
                        C_Movimentos.Next;
                    end;
            end
        else
            Exit;

        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        if (i > 0) then
            ShowMessage('Processamento realizado com êxito!');

        pbFaturamento.Visible := false;
        pbFaturamento.Max := 0;
        pbFaturamento.Position := 0;
        C_Movimentos.EnableControls;
        Pesquisar();
        Q_TiposMovimento.Close;
        Q_TiposMovimento.Open;
    except
        on E: Exception do
            begin
                DMProjeto.DB_Projeto.DefaultTransaction.Rollback;
                ShowMessage('Ocorreu erro ao se tentar faturar os pedidos, favor enviar este erro para o suporte: '#13#10 + e.Message);
            end;
    end;
end;

procedure TFrmFaturarPedidos.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    Q_TiposMovimento.Close;
    Q_TiposMovimento.Open;
    lcbTipoMovimento.LookupKeyValue := 1;
end;

procedure TFrmFaturarPedidos.btImprimirClick(Sender: TObject);
begin
    inherited;

    if (DlgMsg.ShowMsg(6042, ['Confirma a visualização e/ou impressão dos pedidos selecionados ?']) = 100) then
        begin
            C_Movimentos.DisableControls;
            C_Movimentos.First;

            while not C_Movimentos.Eof do
                begin
                    if C_Movimentos.FieldByName('_icSelecionado').asInteger = 1 then
                        begin
                            DMProjeto.ImprimirDocumentosSaida(C_MovimentosSAIDA.Value, C_MovimentosEMPRESA.Value, C_MovimentosPDV.Value);
                        end;
                    C_Movimentos.Next;
                end;
        end
    else
        Exit;

    C_Movimentos.EnableControls;
end;

function TFrmFaturarPedidos.GerarNumeroOperacao(bNotaFiscal: boolean): string;
var sNumeroOperacao: string;
begin
    if (bNotaFiscal) then
        sNumeroOperacao := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7)
    else
        sNumeroOperacao := CExp(Q_TiposMovimentoSIGLAINICIAL.AsString, '-') + AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + Q_TiposMovimentoTIPOMOVIMENTO.AsString)), '0', 7 - Length(Q_TiposMovimentoSIGLAINICIAL.AsString));

    Result := sNumeroOperacao;
end;

end.

