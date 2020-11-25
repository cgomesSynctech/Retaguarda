unit DM_ItensIdentificacao;

{
    Utilizado para trabalhar com itens identificados (que possui número serial) para Entrada e Saída de Produtos
        As informações são armazenadas na tabela ITENSIDENTS e TRANSACOESITENSIDENT.
        O status para os itens contidos na tabela ITENSIDENTS são:
            S - Produto Selecionado para ser faturado(saída)
                > O produto fica com esse status quando é selecionado e confirmado.
            F - Faturado (Produto faturado - saída do produto)
                > O produto fica com esse status quando é selecionado, confirmado a seleção e também é feita a venda(saída) por completa,
                gravando todas suas informações
            E - Em Estoque (Produto em estoque na empresa)
                > O produto fica com esse status quando é dado entrada
            P - Pendente (Produto informado para Entrada de Itens
                > O produto fica com esse STATUS quando o número identificador (serial) é informado, contudo ainda não foi gravado
                a entrada da nota. Ao término da entrada (gravar no banco de dados), o programa irá alterar o STATUS de P (Pendente)
                para E (Em Estoque)

            A tabela de TRANSACOESITENSIDENT armazenará cada registro de Entrada e Saída de produtos Identificados com
            algumas outras informações como IDMESTRE (Entrada ou Saída), ID do Item, Número Serial entre outros.
}

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMItensIdentificacao = class(TDMManutencao)
        C_TabelaITEMIDENT: TIntegerField;
        C_TabelaITEM: TIntegerField;
        C_TabelaSERIAL: TStringField;
        C_TabelaSTATUS: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        function ConsultaSerialnoGrid(): boolean;
        function GravaInformacoesItensIdentEntrada(idItemIdent: integer; idItem: integer; sSerial: string): boolean;
        function GravaItensIdentificadosEntrada(idEntrada: integer): boolean;
        function ApagarInformacoesItensPendentes(): boolean;
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMItensIdentificacao: TDMItensIdentificacao;

implementation

uses DM_Projeto, funcoes, TDM_Projeto;

{$R *.dfm}

procedure TDMItensIdentificacao.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMItensIdentificacao := Self;
end;

procedure TDMItensIdentificacao.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaITEMIDENT.AsInteger := DMProjeto.NextIDGlobal;
    C_TabelaITEM.AsInteger := DMProjeto.nIdItem;
end;

// Consulta se o número identificador(serial) digitado já existe no banco de dados para o item informado

function TDMItensIdentificacao.ConsultaSerialnoGrid(): boolean;
var
    qtd: integer;
begin
    try
        qtd := 0;
        C_Tabela.First;

        while not C_Tabela.Eof do
            begin
                with DMProjeto.Q_SQL2 do
                    begin
                        SQL.Text := 'select ii.codigo, ii.descricao, id.item, id.itemident, id.serial ' +
                            'from itensidents id inner join itens ii on id.item = ii.item ' +
                            'where id.item = :idItem and id.serial = :serialItem and id.status = ''E'' ';
                        ParamByName('idItem').AsInteger := C_TabelaITEM.Value;
                        ParamByName('serialItem').AsString := Replace(C_TabelaSERIAL.Value, ' ', '');
                        Open;

                        if RecordCount > 0 then
                            begin
                                DlgMsg.ShowMsg(50, ['Número de Identificação já cadastrado. Verifique!' + #13 + #13 +
                                    'Código: ' + FieldByName('codigo').AsString + #13 +
                                        'Descrição: ' + FieldByName('descricao').AsString + '' + #13 +
                                        'Número Identificador: ' + C_TabelaSERIAL.Value + '']);

                                Result := False;

                                Exit;
                            end;
                    end;

                if not GravaInformacoesItensIdentEntrada(C_TabelaITEMIDENT.Value, C_TabelaITEM.Value, C_TabelaSERIAL.Value) then
                    begin
                        Result := False;
                        Exit;
                    end;

                C_Tabela.Next;
                Inc(qtd);
            end;

        if DMProjeto.nQuantItem = qtd then
            begin
                Result := True;
                DMProjeto.bMovimentarProdutoIdentificado := True;
            end
        else
            begin
                DlgMsg.ShowMsg(50, ['A quantidade de itens informada na tela de Entrada diverge da quantidade de números identificadores digitados.']);
                Result := False;
                DMProjeto.slIdItensIdentificados.Clear;
                Exit;
            end;

    except
        Application.MessageBox('Erro ao tentar consultar números identificadores informados.', 'Erro', MB_ICONERROR);
        Result := False;
        Exit;
    end;
end;

function TDMItensIdentificacao.GravaInformacoesItensIdentEntrada(idItemIdent: integer; idItem: integer; sSerial: string): boolean;
begin
    try
        DMProjeto.slIdItensIdentificados.Add(InttoStr(idItemIdent) + ';' + InttoStr(idItem) + ';' + sSerial + ';');

        Result := True;
    except
        Application.MessageBox('Erro ao armazenar informações dos itens identificados.', 'Erro', MB_ICONERROR);
        DMProjeto.slIdItensIdentificados.Clear;
        Result := False;
    end;
end;

function TDMItensIdentificacao.GravaItensIdentificadosEntrada(idEntrada: integer): boolean;
var
    i: integer;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                for i := 0 to DMProjeto.slIdItensIdentificados.Count - 1 do
                    begin
                        Close;
                        SQL.Text := 'update itensidents id set id.status = ''E'' where id.itemident = :idItemIdent';
                        ParamByName('idItemIdent').AsInteger := StrtoInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 1));
                        ExecSQL;

                        SQL.Text := 'INSERT INTO TRANSACOESITENSIDENT(PDV, ITEM, ENTRADA, ENTRADAITEMIDENT, SERIAL) VALUES (:PDV, :ITEM, :ENTRADA, :ENTRADAITEMIDENT, :SERIAL)';
                        ParamByName('PDV').AsString := '000';
                        ParamByName('ITEM').AsInteger := StrtoInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 2));
                        ParamByName('ENTRADA').AsInteger := idEntrada;
                        ParamByName('ENTRADAITEMIDENT').AsInteger := StrtoInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 1));
                        ParamByName('SERIAL').AsString := SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 3);
                        ExecSQL;
                        Close;
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                    end;
            end;

        DMProjeto.slIdItensIdentificados.Clear;
        Result := True;
    except
        Application.MessageBox('Erro ao gravar a entrada de itens identificados.', 'Erro', MB_ICONERROR);
        Result := False;
    end;

end;

//      Felipe  -       Apaga itens da tabela de ITENSIDENTS que estejam com STATUS P

function TDMItensIdentificacao.ApagarInformacoesItensPendentes(): boolean;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                Close;
                SQL.Text := 'delete from itensidents id where id.status = ''P''';
                ExecSQL;
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
            end;

        DMProjeto.slIdItensIdentificados.Clear;
        Result := True;
    except
        Application.MessageBox('Erro ao apagar informações pendentes dos itens.', 'Erro', MB_ICONERROR);
        Result := False;
    end;
end;

end.

