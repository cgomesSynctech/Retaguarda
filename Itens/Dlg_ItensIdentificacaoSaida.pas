unit Dlg_ItensIdentificacaoSaida;

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
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
    dxDBGrid, dxCntner, TS_QDBGrid, Provider, DB, DBClient, IBCustomDataSet,
    IBQuery;

type
    TDlgItensIdentificacaoSaida = class(TFrmModeloCadastros)
        dbgItensIdentificacaoSaida: TTS_QDBGrid;
        dbgItensIdentificacaoSaidaSerial: TdxDBGridMaskColumn;
        Q_ItensIdentificacaoSaida: TIBQuery;
        C_ItensIdentificacaoSaida: TClientDataSet;
        C_ItensIdentificacaoSaida_icSelecionado: TIntegerField;
        C_ItensIdentificacaoSaida_selecionado: TIntegerField;
        C_ItensIdentificacaoSaidaDS: TDataSource;
        P_ItensIdentificacaoSaida: TDataSetProvider;
        C_ItensIdentificacaoSaidaITEMIDENT: TIntegerField;
        C_ItensIdentificacaoSaidaITEM: TIntegerField;
        C_ItensIdentificacaoSaidaSERIAL: TStringField;
        C_ItensIdentificacaoSaidaSTATUS: TStringField;
        procedure FormCreate(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        function FaturaItensSaida(idSaida: integer; pdv: string): boolean;
        function GravarItensIdentificados(idSaida: integer; pdv: string): boolean;
        function RetornaStatusProdEstoque(): boolean;
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgItensIdentificacaoSaida: TDlgItensIdentificacaoSaida;

implementation

uses DM_Projeto, Form_Padrao, funcoes;

{$R *.dfm}

procedure TDlgItensIdentificacaoSaida.FormCreate(Sender: TObject);
begin
    inherited;
    RetornaStatusProdEstoque;

    C_ItensIdentificacaoSaida.Close;
    Q_ItensIdentificacaoSaida.SQL.Text := 'select * from itensidents id where id.item = :idItem and (id.status <> ''F'' and id.status <> ''S'') or (id.status is null)';
    Q_ItensIdentificacaoSaida.ParamByName('idItem').AsInteger := DMProjeto.nIdItem;
    C_ItensIdentificacaoSaida.Open;
end;

procedure TDlgItensIdentificacaoSaida.btComando1Click(Sender: TObject);
var
    qtd: integer;
begin
    inherited;
    try
        qtd := 0;
        C_ItensIdentificacaoSaida.First;

        while not C_ItensIdentificacaoSaida.Eof do
            begin
                if (C_ItensIdentificacaoSaida.FieldByName('_icSelecionado').Value = 1) then
                    begin
                        Inc(qtd);
                    end;
                C_ItensIdentificacaoSaida.Next;
            end;

        if (qtd = 0) or (DMProjeto.nQuantItem = 0) then
            begin
                Application.MessageBox('Não foi selecionado nenhum produto ou a quantidade informada é 0(zero).', 'Aviso', MB_ICONEXCLAMATION);
                Exit;
            end;

        if DMProjeto.nQuantItem = qtd then
            begin
                if Application.MessageBox('Confirma a saída dos produtos selecionados ?', 'Confirmação', MB_YESNO + MB_ICONINFORMATION) = IDYES then
                    begin
                        C_ItensIdentificacaoSaida.First;

                        while not C_ItensIdentificacaoSaida.Eof do
                            begin
                                if (C_ItensIdentificacaoSaida.FieldByName('_icSelecionado').Value = 1) then
                                    begin
                                        with DMProjeto.Q_SQL do
                                            begin
                                                Close;
                                                SQL.Text := 'update itensidents id set id.status = ''S'' where id.itemident = :itemIdent';
                                                ParamByName('itemIdent').AsInteger := C_ItensIdentificacaoSaidaITEMIDENT.Value;
                                                ExecSQL;
                                                Close;

                                                DMProjeto.slIdItensIdentificados.Add(InttoStr(C_ItensIdentificacaoSaidaITEMIDENT.Value) + ';' + InttoStr(C_ItensIdentificacaoSaidaITEM.Value) + ';' + C_ItensIdentificacaoSaidaSERIAL.Value + ';');
                                            end;

                                    end;
                                C_ItensIdentificacaoSaida.Next;
                            end;
                        C_ItensIdentificacaoSaida.Close;
                        C_ItensIdentificacaoSaida.Open;

                        DMProjeto.bMovimentarProdutoIdentificado := True;
                    end
                else
                    Exit;
            end
        else
            begin
                Application.MessageBox('A quantidade de itens informada na tela de saída diverge da quantidade de itens selecionados. Verifique.', 'Aviso', MB_ICONEXCLAMATION);
                Exit;
            end;

    except
        Application.MessageBox('Ocorreu uma falha ao tentar selecionar os produtos. Favor entrar em contato com o suporte.', 'Erro', MB_ICONERROR);
        Exit;
    end;
end;

function TDlgItensIdentificacaoSaida.FaturaItensSaida(idSaida: integer; pdv: string): boolean;
var
    i, nIdSaidaItem, nIdItem: integer;
    sSerial: string;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                for i := 0 to DMProjeto.slIdItensIdentificados.Count - 1 do
                    begin
                        Close;
                        SQL.Text := 'update itensidents id set id.status = ''F'' where id.itemident = :idIdentificacao';
                        ParamByName('idIdentificacao').AsInteger := StrtoInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 1));
                        ExecSQL;
                        Close;
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                    end;
            end;

        GravarItensIdentificados(idSaida, pdv);

        DMProjeto.slIdItensIdentificados.Clear;

        Result := True;
    except
        Application.MessageBox('Ocorreu um erro ao tentar dar baixa nos produtos identificados', 'Erro', MB_ICONERROR);
        Result := False;
    end;

end;

function TDlgItensIdentificacaoSaida.GravarItensIdentificados(idSaida: integer; pdv: string): boolean;
var
    i: integer;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                for i := 0 to DMProjeto.slIdItensIdentificados.Count - 1 do
                    begin
                        Close;
                        SQL.Text := 'INSERT INTO TRANSACOESITENSIDENT(PDV, ITEM, SAIDA, SAIDAITEMIDENT, SERIAL) VALUES (:PDV, :ITEM, :SAIDA, :SAIDAITEMIDENT, :SERIAL);';
                        ParamByName('PDV').AsString := SoNumeros(pdv, 3);
                        ParamByName('ITEM').AsInteger := StrtoInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 2));
                        ParamByName('SAIDA').AsInteger := idSaida;
                        ParamByName('SAIDAITEMIDENT').AsInteger := StrToInt(SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 1));
                        ParamByName('SERIAL').AsString := SeparaStrings(DMProjeto.slIdItensIdentificados[i], ';', 3);
                        ExecSQL;
                        Close;
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                    end;
            end;
        Result := True;

    except
        Application.MessageBox('Erro ao gravar os itens identificados de saída.', 'Erro', MB_ICONERROR);
        Result := False;
    end;

end;

{Felipe - Setar o valor "E" para itens que estiverem com Status "S"}

function TDlgItensIdentificacaoSaida.RetornaStatusProdEstoque(): boolean;
begin
    try
        with DMProjeto.Q_SQL do
            begin
                Close;
                SQL.Text := 'update itensidents id set id.status = ''E'' where id.status = ''S'' and id.item = :idItem';
                ParamByName('idItem').AsInteger := DMProjeto.nIdItem;
                ExecSQL;
                Close;
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;
            end;
        Result := True;
    except
        Application.MessageBox('Erro ao tentar alterar status dos Itens Identificados', 'Erro', MB_ICONERROR);
        Result := False;
    end;
end;

end.

