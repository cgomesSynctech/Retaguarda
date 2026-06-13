unit Frm_FaturarEntrada;

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
  TFrmFaturarEntrada = class(TFrmModeloCadastros)
        GridMovs: TTS_QDBGrid;
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
    Q_EntradasItens: TIBQuery;
    Q_EntradasItensDs: TDataSource;
    P_EntradasItens: TDataSetProvider;
    C_EntradasItens: TClientDataSet;
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
    C_MovimentosENTRADA: TIntegerField;
    GridMovsEntrada: TdxDBGridColumn;
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
        procedure Faturar(entrada, pdv: integer);

        procedure ExecSQL(comando: string);

    public
        { Public declarations }
    end;

var
  FrmFaturarEntrada: TFrmFaturarEntrada;

implementation

uses DM_Projeto, Funcoes, Form_Padrao;

{$R *.dfm}

function TFrmFaturarEntrada.CriarTituloAReceber(titulo, pdv, saida_nova: integer; bExisteParcela: boolean = false): integer;
var comando: string;
    id: integer;
begin
        id := DMProjeto.Conta_A_Receber(1, C_MovimentosTOTAL.AsCurrency, C_MovimentosDATA.AsDateTime, C_MovimentosDATA.AsDateTime,
            'Titulo Gerado pela tela de Faturar Entrdas', C_MovimentosFAVORECIDO.AsInteger,
            saida_nova, sNumeroGerado, 34, saida_nova, 0, 0, '1');

    Result := id;
end;

function TFrmFaturarEntrada.CriarSaida(saida, pdv: integer): integer;
var comando: string;
    IDSaida: integer;
begin
    //Criando Saidas
    sNumeroGerado := '';
    sNumeroGerado := GerarNumeroOperacao(Q_TiposMovimentoCB_NOTAFISCAL.AsString = 'S');

    IDSaida := DMProjeto.NextIDGlobal;
    comando :=  ' INSERT INTO SAIDAS (EMPRESA, SAIDA, PDV, NUMERO, DATA, FAVORECIDO, DESCONTO, PLANOPAGAMENTO, TOTAL, SITUACAO, '+
                ' TIPOMOVIMENTO, OUTRASDESPESAS, JUROS, POSSUITAX, BAIXAESTOQUE, CALCCOMISSAO, POSSUIENTREGA,  IMPRESSO, IMPOSTO, IMPOSTO_INCLUSO, '+
                ' PCOMISSAO, CAIXA, TABELAPADRAO, TIPOPADRAO,TOTALITENS, STATUS, TOTALITENS123, BASEIMPOSTO, BASEINCLUSO, '+
                ' DESCONTOITENS, TIPOIMPRESSAO, TOTALPGTOS, STATUSANTERIOR, REDUCOESBASE, ACRESCIMOSBASE, VOLUMES, ALMOXPADRAO, CFOPNOTA, SERIENOTA, '+
                ' BASECALCICMS, VALORICMS, VALORISS, VALORIPI, BASECALCSUBST, VALORICMSSUBST, VALORSEGURO, PESOBRUTO, '+
                ' PESOLIQUIDO, ALIQICMSVENDA, VALORISENTAS, TOTALSERVICOS, POSSUIICMS, POSSUIIPI, POSSUIISS, '+
                ' VALOROUTRASICMS, VALORISENTASIPI, VALOROUTRASIPI, FONTE, TOTALPRODUTOS, VALORIPIITENS, BASECALCICMSITENS, VALORICMSITENS, '+
                ' BASECALCSUBSTITENS, BAIXAESTOQUEFISCAL) '+
                ' select EMPRESA, ' + IntToStr(IDSaida) + ', 0, ''' + sNumeroGerado + ''', CURRENT_DATE , FAVORECIDO, DESCONTO, PLANOPAGAMENTO, TOTAL, SITUACAO, ' +
                ' 2, 0, 0,''N'',''S'',''S'',''N'',''N'', 0, 0, '+
                ' 0, 0, 0, 2, TOTALITENS, ''P'', TOTALITENS123, 0, 0, '+
                ' DESCONTOITENS, ''P'', 0, ''P'', 0, 0, 0, 0, ''5102'',''1'', '+
                ' BASECALCICMS, VALORICMS, 0, 0, 0, 0, 0, 0, '+
                ' 0, ALIQICMSCOMPRA, 0, 0, ''N'', ''N'', ''N'', '+
                ' 0, 0, 0, 0, TOTALITENS123, 0, BASECALCICMS, VALORICMS, '+
                ' 0, ''N'' From Entradas s where entrada = ' + InttoStr(saida) ;
    ExecSql(comando);
    result := IDSaida;
end;

function TFrmFaturarEntrada.CriarSaidaItem(saida, saidaNova, saidaitem, pdv: integer): integer;
var comando: string;
    IDSaidaItem: integer;
begin
    IDSaidaItem := DMProjeto.NextIDGlobal;
    comando := 'INSERT INTO SAIDASITENS ' +
        '(EMPRESA, SAIDA, SAIDAITEM, PDV, SEQUENCIA, ITEM, DESCRICAO, QUANTIDADE, PRECO,TABELAPRECO, '+
        ' PRECOTABELA,  SUBTOTALITEM, ORDEM, CUSTOMEDIO, CUSTOCONTABIL, RATEIODESCONTO, STATUS, UNIDADE, FATOR, DESCONTO, '+
        ' BAIXAESTOQUE, ALMOXARIFADO,  BASECALCICMSPROD, IPI, ALIQICMS, CST, REDUCAOCST, SITUACAOECF, CFOPNOTA, '+
        ' BASECALCSUBSTPROD, VALORIPIPROD, TVA, NUMEROITEM, VALORICMSPROD, VALORISENTASPROD, VALORICMSSUBSTPROD, PDESCONTO, BAIXAESTOQUEFISCAL, IDTRIBFEDERAL, '+
        ' QUANTIDADEVOLUME, CSTPISCOFINS, ALIQPIS, ALIQCOFINS, CSTIPI, ALIQIPI, '+
        ' VALORPISPROD, VALORCOFINSPROD, SITUACAO ) ' +
        ' SELECT ' +
        ' ss.EMPRESA, ' + IntToStr(saidaNova) + ', ' + IntToStr(IDSaidaItem) + ', 0, ss.SEQUENCIA, ss.ITEM, ss.DESCRICAO, ss.QUANTIDADE, ss.PRECO, 0, '+
        ' ss.PRECO, ss.SUBTOTALITEM, ss.ORDEM, ss.CUSTOMEDIO, ss.CUSTOCONTABIL, ss.RATEIODESCONTO, ''P'', ss.UNIDADE, ss.FATOR, ss.DESCONTO, '+
        ' ''S'', ss.ALMOXARIFADO, ss.BASECALCICMSPROD, i.aliqipi, ss.ALIQICMS, i.CST, i.REDUCAOCST, i.SITUACAOECF, ss.CFOPCST, ' +
        ' ss.BASECALCSUBSTPROD, ((ss.subtotalitem * i.aliqipi) / 100 ), i.TVA, ss.sequencia, ss.VALORICMSPROD, ss.VALORISENTASPROD, ss.VALORICMSSUBSTPROD, ss.PDESCONTO,''N'', i.IDTRIBFEDERAL, ' +
        ' ss.QUANTIDADEVOLUME, i.cstpiscofinssaida, i.aliqpissaida, i.aliqcofinssaida, i.CSTIPI, i.ALIQIPI, '+
        ' ((ss.subtotalitem * i.aliqpissaida) / 100 ), ((ss.subtotalitem * i.aliqcofinssaida)/100), ss.SITUACAO '+
        ' FROM Entradasitens ss inner join itens i on i.item = ss.item where ss.entrada = ' + InttoStr(saida) + ' and ss.entradaitem = ' + IntToStr(saidaitem);
    ExecSql(comando);
    result := IDSaidaItem;
end;


procedure TFrmFaturarEntrada.ExecSQL(comando: string);
begin
    with Q_Sql do
        begin
            Close;
            SQL.Text := comando;
            ExecSQL;
        end;
end;

procedure TFrmFaturarEntrada.Faturar(entrada, pdv: integer);
var saidaitem_Novo, saida_nova, saidaitem, IdTitulo: Integer;
begin
    saida_nova := CriarSaida(entrada, pdv);

    with Q_EntradasItens do
        begin
            Close;
            ParamByName('entrada').AsInteger := entrada;
            Open;
            First;

            while not Eof do
                begin
                    saidaitem := FieldByName('entradaitem').Value;
                    saidaitem_Novo := CriarSaidaItem(entrada, saida_nova, saidaitem, pdv);
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
                    ParamByName('entrada').AsInteger := entrada;
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

procedure TFrmFaturarEntrada.Pesquisar();
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

procedure TFrmFaturarEntrada.btLimparClick(Sender: TObject);
begin
    inherited;
    Pesquisar();
end;

procedure TFrmFaturarEntrada.FormCreate(Sender: TObject);
begin
    inherited;
    dfDataInicial.Date := Date;
    dfDataFinal.Date := Date;
end;

procedure TFrmFaturarEntrada.btGravarClick(Sender: TObject);
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
                                Faturar(C_Movimentos.FieldByName('Entrada').AsInteger, C_Movimentos.FieldByName('PDV').AsInteger);
                                Inc(i);
                            end;
                        C_Movimentos.Next;
                    end;
            end
        else
            Exit;

        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        if (i > 0) then
            ShowMessage('Processamento realizado com Exito!');

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

procedure TFrmFaturarEntrada.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    Q_TiposMovimento.Close;
    Q_TiposMovimento.Open;
    lcbTipoMovimento.LookupKeyValue := 1;
end;

procedure TFrmFaturarEntrada.btImprimirClick(Sender: TObject);
begin
    inherited;

//    if (DlgMsg.ShowMsg(6042, ['Confirma a visualização e/ou impressão dos pedidos selecionados ?']) = 100) then
//        begin
//            C_Movimentos.DisableControls;
//            C_Movimentos.First;
//
//            while not C_Movimentos.Eof do
//                begin
//                    if C_Movimentos.FieldByName('_icSelecionado').asInteger = 1 then
//                        begin
//                            DMProjeto.ImprimirDocumentosSaida(C_MovimentosSAIDA.Value, C_MovimentosEMPRESA.Value, C_MovimentosPDV.Value);
//                        end;
//                    C_Movimentos.Next;
//                end;
 //       end
 //   else
//        Exit;
//
//    C_Movimentos.EnableControls;
end;

function TFrmFaturarEntrada.GerarNumeroOperacao(bNotaFiscal: boolean): string;
var sNumeroOperacao: string;
begin
    if (bNotaFiscal) then
        sNumeroOperacao := AdicionarStr(IntToStr(DMProjeto.NextID('NOTAFISCAL')), '0', 7)
    else
        sNumeroOperacao := CExp(Q_TiposMovimentoSIGLAINICIAL.AsString, '-') + AdicionarStr(IntToStr(DMProjeto.NextID('TipoMovimento_' + Q_TiposMovimentoTIPOMOVIMENTO.AsString)), '0', 7 - Length(Q_TiposMovimentoSIGLAINICIAL.AsString));

    Result := sNumeroOperacao;
end;

end.


