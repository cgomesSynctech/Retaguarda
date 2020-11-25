unit Rpt_FinanceiroEmail;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, DB, IBCustomDataSet, IBQuery,
    dxEdLib, TS_MaskEdit, dxCntner, dxEditor, dxExEdtr,
    TS_DateTimePicker, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
    TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
    dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
    TS_EffectsPanel, Placemnt, dxfProgressBar, TS_RadioButton, ShellApi,
    TS_SpinEdit, TS_CheckBox, DBClient, Provider, TS_PopupEdit, CheckLst,
    TS_CheckListBox;

type
    TRptFinanceiroEmail = class(TFrmModeloCadastros)
        Label1: TLabel;
        Label2: TLabel;
        lbEmail: TLabel;
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        dfEmail: TTS_MaskEdit;
        Barra: TdxfProgressBar;
        rgEnviar: TTS_RadioButton;
        rgVisualizar: TTS_RadioButton;
        seClientesMais: TTS_SpinEdit;
        seItensMais: TTS_SpinEdit;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        lblGruposVendidos: TTS_Label;
        seGruposMais: TTS_SpinEdit;
        chkImprimir: TTS_CheckBox;
        Q_Grupos: TIBQuery;
        P_Grupos: TDataSetProvider;
        C_Grupos: TClientDataSet;
        C_GruposDS: TDataSource;
        C_GruposGRUPO: TIntegerField;
        C_GruposDESCRICAOGRUPO: TStringField;
        ppeGrupo: TTS_PopupEdit;
        lblGrupos: TTS_Label;
        clbGrupo: TTS_CheckListBox;
        chkImprimirConferencia: TTS_CheckBox;
    chkImprimirCancelamentos: TTS_CheckBox;
        procedure btGravarClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure rgEnviarClick(Sender: TObject);
        function TabelaHtmlFormaPagto(formaPagto: string; qtd, total: Currency): string;
        function TabelaHtmlTotalizador(width: integer; totalizador: string; qtd, total: Currency): string;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure ppeGrupoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
    private
    public
    end;

var
    RptFinanceiroEmail: TRptFinanceiroEmail;

implementation
uses DM_Projeto, funcoes, DM_Financeiro, RegValoresEstoque;

{$R *.dfm}

procedure TRptFinanceiroEmail.btGravarClick(Sender: TObject);
var slHtml: TStringList;
    nValoresEstoque: TValoresEstoque;
    diretorio, conteudoPagina, sWhereGrupo: string;
    qtd, total: Currency;
begin
    inherited;
    {Validação}
    if rgEnviar.Checked and (Trim(dfEmail.Text) = '') then
        begin
            DlgMsg.ShowMsg(929, [' o email do destinatário']);
            dfEmail.SetFocus;
            Exit;
        end;
    if rgEnviar.Checked and (pos('@', dfEmail.Text) = 0) then
        begin
            ShowMessage('Este email não é um email válido. Exemplos de email: nome@net.com, jbd@company.com');
            dfEmail.SetFocus;
            Exit;
        end;
    if not fileexists(DMProjeto.ProgPath + 'Relatorios\Modelo_RelatorioFinanceiro.htm') then
        begin
            ShowMessage('O arquivo "' + DMProjeto.ProgPath + 'Relatorios\Modelo_RelatorioFinanceiro.htm' + '" não foi encontrado!');
            Exit;
        end;
    {Início}
    with Barra do
        begin
            Position := 0;
            Visible := true;
            Max := 37;
        end;

    if (clbGrupo.Selecionados <> '') then
        sWhereGrupo := ' and g.grupo in (' + clbGrupo.Selecionados + ')';

    slHtml := TStringList.Create;
    slHtml.LoadFromFile(DMProjeto.ProgPath + 'Relatorios\Modelo_RelatorioFinanceiro.htm');
    Barra.Position := Barra.Position + 1;
    {cabeçalho}
    slHtml.Text := replace(slHtml.Text, '<empresa>', DMProjeto.sNomeEmpresa);
    slHtml.Text := replace(slHtml.Text, '<endereco>', DMProjeto.sEnderecoEmpresa);
    slHtml.Text := replace(slHtml.Text, '<cidade>', DMProjeto.sCidadeEmpresa);
    slHtml.Text := replace(slHtml.Text, '<estado>', DMProjeto.sUFEmpresa);
    slHtml.Text := replace(slHtml.Text, '<data>', DateToStr(DMProjeto.dDataSistema));
    slHtml.Text := replace(slHtml.Text, '<hora>', TimeToStr(Time));
    slHtml.Text := replace(slHtml.Text, '<usuario>', 'Usuário: ' + DMProjeto.sLoginName);
    slHtml.Text := replace(slHtml.Text, '<periodo>', 'Período de ' + DataI.Text + ' a ' + DataF.Text);
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<Invoices>', formatfloat('#,###,##0.00', DMFinanceiro.Invoices(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<Recebimentos>', formatfloat('#,###,##0.00', DMFinanceiro.Recebimentos(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<Compras>', formatfloat('#,###,##0.00', DMFinanceiro.Compras(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<Pagamentos>', formatfloat('#,###,##0.00', DMFinanceiro.Pagamentos(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ParcelasEmAtraso>', formatfloat('#,###,##0.00', DMFinanceiro.ParcelasAReceber(EncodeDate(1900, 1, 1), EncodeDate(1900, 1, 1))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ParcelasNoPeriodo>', formatfloat('#,###,##0.00', DMFinanceiro.ParcelasAReceber(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ParcelasNaSemana>', formatfloat('#,###,##0.00', DMFinanceiro.ParcelasAReceber(PrimeiroDiaDaSemana(DMProjeto.dDataSistema), UltimoDiaDaSemana(DMProjeto.dDataSistema))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ParcelasNoMes>', formatfloat('#,###,##0.00', DMFinanceiro.ParcelasAReceber(FirstMonthDay(DMProjeto.dDataSistema), LastMonthDay(DMProjeto.dDataSistema))));
    Barra.Position := Barra.Position + 1; // 10
    slHtml.Text := replace(slHtml.Text, '<ContasEmAtraso>', formatfloat('#,###,##0.00', DMFinanceiro.ContasAPagar(EncodeDate(1900, 1, 1), EncodeDate(1900, 1, 1))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ContasNoPeriodo>', formatfloat('#,###,##0.00', DMFinanceiro.ContasAPagar(DataI.Date, DataF.Date)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ContasNaSemana>', formatfloat('#,###,##0.00', DMFinanceiro.ContasAPagar(PrimeiroDiaDaSemana(DMProjeto.dDataSistema), UltimoDiaDaSemana(DMProjeto.dDataSistema))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ContasNoMes>', formatfloat('#,###,##0.00', DMFinanceiro.ContasAPagar(FirstMonthDay(DMProjeto.dDataSistema), LastMonthDay(DMProjeto.dDataSistema))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesACompensar30>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesACompensar(EncodeDate(1900, 1, 1), DMProjeto.dDataSistema + 30)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesACompensar60>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesACompensar(DMProjeto.dDataSistema + 31, DMProjeto.dDataSistema + 60)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesACompensar90>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesACompensar(DMProjeto.dDataSistema + 61, DMProjeto.dDataSistema + 90)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesACompensar90A>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesACompensar(DMProjeto.dDataSistema + 91, EncodeDate(2500, 12, 31))));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesADepositar30>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesADepositar(EncodeDate(1900, 1, 1), DMProjeto.dDataSistema + 30)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesADepositar60>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesADepositar(DMProjeto.dDataSistema + 31, DMProjeto.dDataSistema + 60)));
    Barra.Position := Barra.Position + 1; // 20
    slHtml.Text := replace(slHtml.Text, '<ChequesADepositar90>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesADepositar(DMProjeto.dDataSistema + 61, DMProjeto.dDataSistema + 90)));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<ChequesADepositar90A>', formatfloat('#,###,##0.00', DMFinanceiro.ChequesADepositar(DMProjeto.dDataSistema + 91, EncodeDate(2500, 12, 31))));
    Barra.Position := Barra.Position + 1;

    nValoresEstoque := DMFinanceiro.ValoresEstoque();
    slHtml.Text := replace(slHtml.Text, '<estoqueprecocompra>', formatfloat('#,###,##0.00', nValoresEstoque.PrecoCompra));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<estoquecustomedio>', formatfloat('#,###,##0.00', nValoresEstoque.CustoMedio));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<estoquecmv>', formatfloat('#,###,##0.00', nValoresEstoque.CMV));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<estoqueprecovenda>', formatfloat('#,###,##0.00', nValoresEstoque.PrecoVenda));
    Barra.Position := Barra.Position + 1;
    slHtml.Text := replace(slHtml.Text, '<estoquelucro>', formatfloat('#,###,##0.00', nValoresEstoque.Lucro));
    Barra.Position := Barra.Position + 1;

    { Ao marcar "Imprimir para Conferência" não serão exibidos os dados abaixo (Felipe - 12/05/2016) }
    if not (chkImprimirConferencia.Checked) then
        begin
            slHtml.Text := replace(slHtml.Text, '<Contas>', DMProjeto.TabelaHtml(false, 100, '#C0C0FF', '#FFFFFF', 'Saldo da Contas;Saldo Anterior;Saldo Atual', DMFinanceiro.getSaldoContas(DataI.Date - 1), ';align="right";align="right"', 'width="60%";width="20%";width="20%"'));
            DMFinanceiro.InvoicesPorCliente(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date, seClientesMais.IntValue);
            slHtml.Text := replace(slHtml.Text, '<InvoicesPorCliente>', DMProjeto.TabelaHtml(false, 100, '#FDB4BA', '#FFFFFF', 'Cliente;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';align="right"', 'width="80%";width="20%"'));
            DMFinanceiro.InvoicesPorItem(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date, seItensMais.IntValue);
            slHtml.Text := replace(slHtml.Text, '<InvoicesPorItem>', DMProjeto.TabelaHtml(false, 100, '#FDB4BA', '#FFFFFF', 'Descrição do Item;Fabricante;Quantidade;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;align="right";align="right"', 'width="50%";width="20%";width="10%";width="10%"'));
        end;

    Barra.Position := Barra.Position + 1; // 28

    {Felipe - Adicionado a partir dessa linha as mudanças no relatório (29/12/2015}
    with DMFinanceiro.Q_SQL2 do
        begin
            Close;
            SQL.Text := 'select tb.tabelapreco, tb.descricao, fp.formapagamento, fp.descricao as forma, count(*) as qtd ' +
                'from depositosdoc dd inner join depositos d on dd.deposito = d.deposito and dd.empresa = d.empresa and dd.pdv = d.pdv ' +
                'inner join depositostitulos dt on  d.empresa = dt.empresa and d.pdv = dt.pdv and d.deposito = dt.deposito ' +
                'inner join titulosareceber tr on dt.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
                'inner join saidas s on s.empresa = tr.empresa and s.pdv = tr.pdv and s.saida = tr.venda ' +
                'inner join tabelaspreco tb on s.tabelapadrao = tb.tabelapreco ' +
                'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' ' +
                'group by tb.tabelapreco, tb.descricao, fp.formapagamento, fp.descricao ' +
                'order by tb.tabelapreco asc, fp.formapagamento asc ';
            ParamByName('datai').AsDateTime := DataI.Date;
            ParamByName('dataf').AsDateTime := DataF.Date;
            Open;
            while not Eof do
                begin
                    if FieldByName('qtd').AsInteger > 0 then
                        begin
                            DMFinanceiro.InvoicesPorFormaPagamento(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date, FieldByName('tabelapreco').AsInteger, FieldByName('formapagamento').AsInteger);

                            with DMFinanceiro.Q_SQL do
                                begin
                                    qtd := 0;
                                    total := 0;

                                    while not Eof do
                                        begin
                                            qtd := qtd + 1;
                                            total := total + FieldByName('vltotal').AsCurrency;
                                            Next;
                                        end;
                                end;

                            conteudoPagina := conteudoPagina + '<h4>' + FieldByName('descricao').AsString + ' - ' + FieldByName('forma').AsString + '</h4>' + DMProjeto.TabelaHtml(False, 100, '#C0C0FF', '#FFFFFF', 'Número;Pedido;Data;Cliente;Vendedor;Parcelas;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;align="center";;;align="center";align="right"', 'width="8%";width="8%";width="5%";width="20%";width="20%";width="5%";width="8%"');
                            conteudoPagina := conteudoPagina + TabelaHtmlFormaPagto(FieldByName('forma').AsString, qtd, total);
                        end;
                    Next;
                end;

            slHtml.Text := replace(slHtml.Text, '<invoicesporFormaPagto>', conteudoPagina);
            Barra.Position := Barra.Position + 1;
        end;

    DMFinanceiro.TotalInvoicesPorFormaPagamento(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
    with DMFinanceiro.Q_SQL do
        begin
            total := 0;

            while not Eof do
                begin
                    total := total + FieldByName('total').AsCurrency;
                    Next;
                end;
        end;

    slHtml.Text := replace(slHtml.Text, '<totalInvoicesporFormaPagto>', DMProjeto.TabelaHtml(False, 100, '#7DB8FF', '#FFFFFF', 'Forma de Pagamento;Valor', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';align="right"', 'width="40%";width="20%"'));
    Barra.Position := Barra.Position + 1;

    slHtml.Text := replace(slHtml.Text, '<totalGeralInvoices>', formatfloat('#,###,##0.00', total));
    Barra.Position := Barra.Position + 1;

    { DUPLICATAS - Incluido pesquisa para trazer as vendas com tipo cobrança "Duplicata". Criado para implantação na Center Bike (Felipe - 22/03/2016) }
    DMFinanceiro.TotalInvoicesDuplicata(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
    with DMFinanceiro.Q_SQL do
        begin
            conteudoPagina := '';
            qtd := 0;
            total := 0;

            while not Eof do
                begin
                    qtd := qtd + 1;
                    total := total + FieldByName('valorpago').AsCurrency;
                    Next;
                end;

            conteudoPagina := conteudoPagina + '<h4> Duplicatas </h4>' + DMProjeto.TabelaHtml(False, 100, '#C0C0FF', '#FFFFFF', 'Título;Pedido;Data;Vendedor;Cliente;Forma Pagto;Total;Pago;Juros;Falta;Atraso', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;align="center";;;;align="right";align="right";align="right";align="right";align="right"', 'width="5%";width="5%";width="3%";width="10%";width="10%";width="8%";width="5%";width="5%";width="5%";width="5%";width="4%"');
            conteudoPagina := conteudoPagina + TabelaHtmlTotalizador(100, 'Total Geral', qtd, total);
        end;

    slHtml.Text := replace(slHtml.Text, '<totalInvoicesDuplicata>', conteudoPagina);
    Barra.Position := Barra.Position + 1;

    { CANCELADAS - Operações do tipo padrão 1 que estão canceladas (Felipe - 29/07/2016) }
    if (chkImprimirCancelamentos.Checked) then
    begin
        DMFinanceiro.TotalInvoicesCanceladas(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
        with DMFinanceiro.Q_SQL do
        begin
            conteudoPagina := '';
            qtd := 0;
            total := 0;

            while not Eof do
            begin
                qtd := qtd + 1;
                total := total + FieldByName('total').AsCurrency;
                Next;
            end;

            conteudoPagina := conteudoPagina + '<h4> Cancelamentos </h4>' + DMProjeto.TabelaHtml(False, 100, '#C0C0FF', '#FFFFFF', 'Número;Pedido;Data;Cliente;Vendedor;Total Itens;Desconto;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;align="center";;;align="right";align="right";align="right"', 'width="8%";width="8%";width="5%";width="15%";width="15%";width="8%";width="8%";width="8%"');
            conteudoPagina := conteudoPagina + TabelaHtmlTotalizador(100, 'Total Geral', qtd, total);
        end;

        slHtml.Text := replace(slHtml.Text, '<totalInvoicesCanceladas>', conteudoPagina);
        Barra.Position := Barra.Position + 1;
    end;


    DMFinanceiro.TotalPorVendedor(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
    slHtml.Text := replace(slHtml.Text, '<totalPorVendedor>', DMProjeto.TabelaHtml(False, 100, '#7DB8FF', '#FFFFFF', 'Código;Nome;Quantidade;Valor', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;align="right";align="right"', 'width="10%";width="30%";width="8%";width="10%"'));

    conteudoPagina := DMFinanceiro.TotalGeralVendedor(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
    slHtml.Text := replace(slHtml.Text, '<totalQtdPorVendedor>', SeparaStrings(conteudoPagina, '=', 1));
    slHtml.Text := replace(slHtml.Text, '<totalValorPorVendedor>', FormatFloat('#,###,##0.00', StrToCurr(Replace(SeparaStrings(conteudoPagina, '=', 2), '.', ''))));
    Barra.Position := Barra.Position + 1;

    { ---------------------- Relatórios de Grupos ---------------------- }

    if (chkImprimir.Checked) then
        begin
            { ---------------------- Inicio - Relatório Grupos ---------------------- }

            with DMFinanceiro.Q_SQL2 do
                begin
                    conteudoPagina := '';
                    Close;
                    SQL.Text := 'select g.grupo, substr(g.descricaogrupo, 1, 50) as descricaogrupo, cast(sum(si.quantidade) as numeric (15, 3)) as quantidade, ' +
                        'cast(sum(si.subtotalitem) as numeric (15, 2)) as total ' +
                        'from saidas s inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                        'inner join itens ii on si.item = ii.item inner join grupos g on ii.grupo = g.grupo ' +
                        'where s.data >= :datai and s.data <= :dataf and s.tipopadrao = 1 and ii.tipoitem = 1 and s.situacao = ''N'' ' +
                        ' ' + sWhereGrupo + ' group by g.grupo, g.descricaogrupo order by 4 desc';
                    ParamByName('datai').AsDateTime := DataI.Date;
                    ParamByName('dataf').AsDateTime := DataF.Date;
                    Open;

                    while not Eof do
                        begin
                            DMFinanceiro.ItensPorGrupo(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date, 1, FieldByName('grupo').AsInteger);

                            conteudoPagina := conteudoPagina + '<h4> Grupo - ' + FieldByName('descricaogrupo').AsString + ' </h4>' + DMProjeto.TabelaHtml(False, 100, '#C0C0FF', '#FFFFFF', 'Código;Descrição;Fabricante;Quantidade;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;;align="center";align="right"', 'width="9%";width="30%";width="20%";width="9%";width="9%"');
                            conteudoPagina := conteudoPagina + TabelaHtmlTotalizador(100, 'Total Geral ' + FieldByName('descricaogrupo').AsString, FieldByName('quantidade').AsCurrency, FieldByName('total').AsCurrency);
                            Next;
                        end;
                end;

            slHtml.Text := replace(slHtml.Text, '<totalPorGrupoProduto>', conteudoPagina);

            { ---------------------- Final - Relatório Grupos ---------------------- }

            { ---------------------- Inicio - Relatório Serviços ---------------------- }

            with DMFinanceiro.Q_SQL2 do
                begin
                    conteudoPagina := '';
                    Close;
                    SQL.Text := 'select g.grupo, substr(g.descricaogrupo, 1, 50) as descricaogrupo, cast(sum(si.quantidade) as numeric (15, 3)) as quantidade, ' +
                        'cast(sum(si.subtotalitem) as numeric (15, 2)) as total ' +
                        'from saidas s inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                        'inner join itens ii on si.item = ii.item inner join grupos g on ii.grupo = g.grupo ' +
                        'where s.data >= :datai and s.data <= :dataf and s.tipopadrao = 1 and ii.tipoitem = 3 and s.situacao = ''N'' ' +
                        ' ' + sWhereGrupo + ' group by g.grupo, g.descricaogrupo order by 4 desc';
                    ParamByName('datai').AsDateTime := DataI.Date;
                    ParamByName('dataf').AsDateTime := DataF.Date;
                    Open;

                    while not Eof do
                        begin
                            DMFinanceiro.ItensPorGrupo(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date, 3, FieldByName('grupo').AsInteger);

                            conteudoPagina := conteudoPagina + '<h4> Grupo - ' + FieldByName('descricaogrupo').AsString + ' </h4>' + DMProjeto.TabelaHtml(False, 100, '#C0C0FF', '#FFFFFF', 'Código;Descrição;Fabricante;Quantidade;Total', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;;align="center";align="right"', 'width="9%";width="30%";width="20%";width="9%";width="9%"');
                            conteudoPagina := conteudoPagina + TabelaHtmlTotalizador(100, 'Total Geral ' + FieldByName('descricaogrupo').AsString, FieldByName('quantidade').AsCurrency, FieldByName('total').AsCurrency);
                            Next;
                        end;
                end;

            slHtml.Text := replace(slHtml.Text, '<totalPorGrupoServico>', conteudoPagina);

            { ---------------------- Final - Relatório Serviços ---------------------- }
        end
    else
        begin
            with DMFinanceiro.Q_SQL2 do
                begin
                    conteudoPagina := '<h4> Grupos </h4>';
                    Close;
                    SQL.Text := 'select substr(g.descricaogrupo, 1, 50) as descricaogrupo, cast(sum(si.quantidade) as numeric (15, 3)) as quantidade, ' +
                        'cast(sum(si.subtotalitem) as numeric (15, 2)) as total ' +
                        'from saidas s inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                        'inner join itens ii on si.item = ii.item inner join grupos g on ii.grupo = g.grupo ' +
                        'where s.data >= :datai and s.data <= :dataf and s.tipopadrao = 1 and s.situacao = ''N'' ' +
                        ' ' + sWhereGrupo + ' group by g.descricaogrupo order by 3 desc';
                    ParamByName('datai').AsDateTime := DataI.Date;
                    ParamByName('dataf').AsDateTime := DataF.Date;
                    Open;

                    while not Eof do
                        begin
                            conteudoPagina := conteudoPagina + TabelaHtmlTotalizador(100, FieldByName('descricaogrupo').AsString, FieldByName('quantidade').AsCurrency, FieldByName('total').AsCurrency);
                            Next;
                        end;
                end;

            slHtml.Text := replace(slHtml.Text, '<totalPorGrupoProduto>', conteudoPagina);
            slHtml.Text := replace(slHtml.Text, '<totalPorGrupoServico>', '');
        end;

    Barra.Position := Barra.Position + 1;

    { ---------------------- Inicio - Relatório Transações em Dinheiro ---------------------- }
    {
    DMFinanceiro.TransacoesPorFormaPagamento(DMFinanceiro.Q_SQL, DataI.Date, DataF.Date);
    with DMFinanceiro.Q_SQL do
        begin
            qtd := 0;
            total := 0;
            while not Eof do
                begin
                    if FieldByName('total').AsCurrency > 0 then
                        begin
                            qtd := qtd + 1;
                            total := total + FieldByName('total').AsCurrency;
                        end;
                    Next;
                end;
            slHtml.Text := replace(slHtml.Text, '<transacoesFormaPagamento>', '<h2>Transações - Dinheiro</h2>' + DMProjeto.TabelaHtml(False, 100, '#7DB8FF', '#EBEBFF', 'Título;Data;Histórico;Valor', DMFinanceiro.QueryToString(DMFinanceiro.Q_SQL), ';;;align="right"', 'width="10%";width="8%";width="30%";width="10%"'));
            slHtml.Text := replace(slHtml.Text, '<totalQtdTransacoes>', CurrToStr(qtd));
            slHtml.Text := replace(slHtml.Text, '<totalValorTransacoes>', formatfloat('#,###,##0.00', total));
        end;
    }
    { ---------------------- Final - Relatório Transações em Dinheiro ---------------------- }

    Barra.Position := Barra.Position + 1;

    //slHtml.SaveToFile('c:\temp_htm.htm');
    diretorio := ExtractFilePath(Application.ExeName) + 'temp_htm.htm';
    slHtml.SaveToFile(diretorio);

    Barra.Position := Barra.Position + 1;
    if rgEnviar.Checked then
        SendMail('Relatório Financeiro - ' + DateToStr(DMProjeto.dDataSistema), '', diretorio,
            DMProjeto.sLoginName, VarToStr(DMProjeto.getCampoTabela('Usuarios', 'Usuario', 'Email', DMProjeto.nFuncionario)),
            dfEmail.Text, dfEmail.Text)
    else
        ShellExecute(handle, 'open', pchar(diretorio), '', '', 0);

    {Gravar o destinatário}
    DMProjeto.SetParametro('EmailPara', dfEmail.text);
end;

function TRptFinanceiroEmail.TabelaHtmlFormaPagto(formaPagto: string; qtd, total: Currency): string;
var
    sTabelaHtml: string;
begin
    sTabelaHtml := '<table noborder width="100%" style="font-size: 12px"><tr bgcolor="#D1E7FD">';
    sTabelaHtml := sTabelaHtml + '<td width="70%"><b>Total Geral ' + formaPagto + '</b></td>';
    sTabelaHtml := sTabelaHtml + '<td width="15%" align="right"> ' + formatfloat('#,###,##0.00', qtd) + ' </td>';
    sTabelaHtml := sTabelaHtml + '<td width="15%" align="right"> ' + formatfloat('#,###,##0.00', total) + ' </td>';
    sTabelaHtml := sTabelaHtml + '</tr></table>';

    Result := sTabelaHtml;
end;

function TRptFinanceiroEmail.TabelaHtmlTotalizador(width: integer; totalizador: string; qtd, total: Currency): string;
var
    sTabelaHtml: string;
begin
    sTabelaHtml := '<table noborder width="' + IntToStr(width) + '%" style="font-size: 12px"><tr bgcolor="#D1E7FD">';
    sTabelaHtml := sTabelaHtml + '<td width="70%"><b>' + totalizador + '</b></td>';
    sTabelaHtml := sTabelaHtml + '<td width="15%" align="right"> ' + formatfloat('#,###,##0.00', qtd) + ' </td>';
    sTabelaHtml := sTabelaHtml + '<td width="15%" align="right"> ' + formatfloat('#,###,##0.00', total) + ' </td>';
    sTabelaHtml := sTabelaHtml + '</tr></table>';

    Result := sTabelaHtml;
end;

procedure TRptFinanceiroEmail.FormCreate(Sender: TObject);
begin
    inherited;
    DataI.Date := DMProjeto.dDataSistema;
    DataF.Date := DMProjeto.dDataSistema;
    dfEmail.Text := DMProjeto.Parametro('EmailPara');
end;

procedure TRptFinanceiroEmail.rgEnviarClick(Sender: TObject);
begin
    inherited;
    lbEmail.Enabled := rgEnviar.Checked;
    dfEmail.Enabled := rgEnviar.Checked;
end;

procedure TRptFinanceiroEmail.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_Grupos.Close;
    C_Grupos.Open;

    clbGrupo.SetDataSet(C_Grupos);
    clbGrupo.SetSelecionados('-9');

end;

procedure TRptFinanceiroEmail.ppeGrupoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbGrupo.Selecionados(True);
    Accept := True;
end;

end.

