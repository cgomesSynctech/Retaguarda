unit Frm_TransfereReposicao;

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
  TFrmTransfereReposicao = class(TFrmModeloCadastros)
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
        C_MovimentosEMPRESA: TIntegerField;
        btImprimir: TTS_SpeedButton;
        C_MovimentosFAVORECIDO: TIntegerField;
    C_MovimentosTOTAL: TFloatField;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    C_MovimentosORIGEM: TIntegerField;
    C_MovimentosDESTINO: TIntegerField;
    Q_Almoxarifados: TIBQuery;
    C_Almoxarifados: TClientDataSet;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    P_Almoxarifados: TDataSetProvider;
    C_AlmoxarifadosDS: TDataSource;
    cmbAlmoxOrigem: TTS_LookupComboBox;
    cmbAlmoxDestino: TTS_LookupComboBox;
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
        xNumero : Integer ;
           IDSaida: integer;
    end;

var
    FrmTransfereReposicao: TFrmTransfereReposicao;

implementation

uses DM_Projeto, Funcoes, Form_Padrao;

{$R *.dfm}

function TFrmTransfereReposicao.CriarTituloAReceber(titulo, pdv, saida_nova: integer; bExisteParcela: boolean = false): integer;
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

procedure TFrmTransfereReposicao.JoinItensMescla(SAIDAITEM, SAIDAITEM_NOVA, PDV, SAIDA: integer);
var comando: string;
begin
    comando := 'INSERT INTO SAIDASITENSMESCLA (EMPERSA, PDV, SAIDAITEM_ORIGINAL, SAIDAITEM, QUANTIDADE, QTDMAXIMA, SAIDA_ORIGINAL, FECHAR_ORIGINAL, UNIDADE, FATOR, IMPORTACAO, ORIGEMREPLIC) ' +
        'SELECT EMPRESA, PDV, SAIDAITEM, ' + IntToStr(SAIDAITEM_NOVA) + ', QUANTIDADE, QUANTIDADE, ' + IntToStr(SAIDA) + ', ''S'', UNIDADE, FATOR, 0, ''R'' ' +
        'FROM SAIDASITENS WHERE SAIDAITEM = ' + IntToStr(SAIDAITEM_NOVA) + ' and PDV = ' + IntToStr(PDV);
    ExecSql(comando);
end;

function TFrmTransfereReposicao.CriarSaida(saida, pdv: integer): integer;
var comando: string;

begin
   with Q_SQL do begin
         close;
         sql.text:= 'select max(t.transfalmox)+1 from transfalmoxs t ';
         open ;
        IDSaida := Q_SQL.Fields[0].Value ;
    end; // with Q_SQL do begin

    xNumero := DMProjeto.NextID('IDNumTransfAlmox',1);


   comando := 'INSERT INTO TRANSFALMOXS (TRANSFALMOX, NUMERO, DATA, ALMOX_ORIGEM, ALMOX_DESTINO, SITUACAO, ORIGEMREPLIC)' +
               'values ( ' + IntToStr(IDSaida) + ', ' + IntToStr(xNumero) + ' ,  CURRENT_DATE  , ' + inttostr(cmbAlmoxOrigem.LookupKeyValue) + ', '+ IntToStr(cmbAlmoxDestino.LookupKeyValue) +', ''N'', ''R'')';
   ExecSql(comando);
   result := IDSaida;
end;

function TFrmTransfereReposicao.CriarSaidaItem(saida, saidaNova, saidaitem, pdv: integer): integer;
var comando: string;
    IDSaidaItem: integer;
begin
    IDSaidaItem := DMProjeto.NextIDGlobal;
    comando := 'INSERT INTO TRANSFALMOXITENS (ORIGEMREPLIC,  TRANSFALMOX, ITEM, QUANTIDADE, UNIDADE, FATOR, ALMOX_ORIGEM, ALMOX_DESTINO, EMPRESA) '+
        'SELECT ' +
        ' ''R'', '+ IntToStr(IDSaida) +', ss.Item, ss.quantidade, ss.unidade, ss.fator, '+ inttostr(cmbAlmoxOrigem.LookupKeyValue) + ', '+ IntToStr(cmbAlmoxDestino.LookupKeyValue) +', -1 '+
        ' FROM saidasitens ss inner join itens i on i.item = ss.item where ss.saida = ' + InttoStr(saida) + ' and ss.saidaitem = ' + IntToStr(saidaitem) + ' and ss.pdv = ' + IntToStr(pdv);
    ExecSql(comando);
    result := IDSaidaItem;
end;

procedure TFrmTransfereReposicao.ModificarPedido(saida, pdv: integer);
var comando: string;
begin
    comando := 'Update saidas set status = ''F'' where saida = ' + InttoStr(saida) + ' and pdv = ' + IntToStr(pdv);
    ExecSQL(comando);
end;

procedure TFrmTransfereReposicao.ModificarPedidosItens(saida, pdv: integer);
var comando: string;
begin
    comando := 'Update saidasitens set qtdfaturada = quantidade where saida = ' + InttoStr(saida) + ' and pdv = ' + IntToStr(pdv);
    ExecSQL(comando);
end;

procedure TFrmTransfereReposicao.ExecSQL(comando: string);
begin
    with Q_Sql do
        begin
            Close;
            SQL.Text := comando;
            ExecSQL;
        end;
end;

procedure TFrmTransfereReposicao.Faturar(saida, pdv: integer);
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

end;

procedure TFrmTransfereReposicao.Pesquisar();
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

procedure TFrmTransfereReposicao.btLimparClick(Sender: TObject);
begin
    inherited;
    Pesquisar();
end;

procedure TFrmTransfereReposicao.FormCreate(Sender: TObject);
begin
    inherited;
    dfDataInicial.Date := Date;
    dfDataFinal.Date := Date;
    C_Almoxarifados.Open;
end;

procedure TFrmTransfereReposicao.btGravarClick(Sender: TObject);
var i: Integer;
begin
    inherited;
    If cmbAlmoxOrigem.LookupKeyValue = cmbAlmoxDestino.LookupKeyValue Then Begin
       Application.MessageBox('O Almox Origem deve ser diferente do Almox Destino','Aviso',mb_ok);
       Exit;
    End;
    If (cmbAlmoxOrigem.LookupKeyValue = null) Then Begin
       Application.MessageBox('O Almox Origem deve conter um valor','Aviso',mb_ok);
       Exit;
    End;
    If (cmbAlmoxDestino.LookupKeyValue = null) Then Begin
           Application.MessageBox('O Almox Destino deve deve conter um valor','Aviso',mb_ok);
       Exit;
    End;


    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        pbFaturamento.Visible := true;
        pbFaturamento.Max := C_Movimentos.RecordCount;
        pbFaturamento.Position := 0;
        i := 0;

        if (DlgMsg.ShowMsg(6042, ['Confirma a Transferencia Entre Almoxarifados dos pedidos selecionados ?']) = 100) then
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
        Q_Almoxarifados.Close;
        Q_Almoxarifados.Open;
    except
        on E: Exception do
            begin
                DMProjeto.DB_Projeto.DefaultTransaction.Rollback;
                ShowMessage('Ocorreu erro ao se tentar faturar os pedidos, favor enviar este erro para o suporte: '#13#10 + e.Message);
            end;
    end;
end;

procedure TFrmTransfereReposicao.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    Q_Almoxarifados.Close;
    Q_Almoxarifados.Open;
//    lcbTipoMovimento.LookupKeyValue := 1;
end;

procedure TFrmTransfereReposicao.btImprimirClick(Sender: TObject);
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

function TFrmTransfereReposicao.GerarNumeroOperacao(bNotaFiscal: boolean): string;
var sNumeroOperacao: string;
begin
    Result := '0';
end;

end.

