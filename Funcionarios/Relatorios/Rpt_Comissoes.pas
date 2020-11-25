unit Rpt_Comissoes;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, FormsComponent,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
    Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib,
    TS_ButtonEdit, TS_EditFavorecido, dxCntner, dxEditor, TS_DateTimePicker,
    Db, IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
    ppClass, ppReport, ppCtrls, ppBands, ppPrnabl, ppStrtch, ppRegion,
    ppCache, ppSubRpt, ppDevice, DBClient, Provider, IBStoredProc, Grids, DBGrids,
    ppVar, TS_CheckBox, BTOdeum, Placemnt, ppModule, raCodMod;

type
    TRptComissoes = class(TFrmModeloCadastros)
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        edFuncionario: TTS_EditFavorecido;
        lbPeriodo: TTS_Label;
        TS_Label2: TTS_Label;
        lbAte: TTS_Label;
        ppComissoes: TppReport;
        dbFuncionarios: TppDBPipeline;
        dbComissoes: TppDBPipeline;
        dbPagamentos: TppDBPipeline;
        dbDevolucoes: TppDBPipeline;
        Q_Funcionarios: TIBQuery;
        Q_Comissoes: TIBQuery;
        Q_Pagamentos: TIBQuery;
        Q_Devolucoes: TIBQuery;
        C_FuncionariosDS: TDataSource;
        Q_ComissoesDS: TDataSource;
        Q_PagamentosDS: TDataSource;
        Q_DevolucoesDS: TDataSource;
        Q_PagamentosDESCRICAO: TIBStringField;
        Q_PagamentosDATAINICIO: TDateField;
        Q_PagamentosDATAFIM: TDateField;
        Q_PagamentosPAGAMENTO: TIBBCDField;
        Q_DevolucoesNOME: TIBStringField;
        Q_DevolucoesDATA: TDateField;
        Q_DevolucoesVALOR: TIBBCDField;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        regCab: TppRegion;
        ppLabel1: TppLabel;
        dbtPeriodo: TppLabel;
        ppDBText1: TppDBText;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppDBText2: TppDBText;
        ppDBComissaoTotal: TppDBText;
        ppDBSaldoAnterior: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        pplSaldoAnterior: TppLabel;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine7: TppLine;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine10: TppLine;
        ppLine11: TppLine;
        ppLine12: TppLine;
        ppLine13: TppLine;
        ppLine14: TppLine;
        ppSummary: TppSummaryBand;
        ppDBCalc1: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        ppDBCalc3: TppDBCalc;
        ppDBCalc4: TppDBCalc;
        ppDBCalc5: TppDBCalc;
        ppDBCalc6: TppDBCalc;
        P_Funcionarios: TDataSetProvider;
        C_Funcionarios: TClientDataSet;
        C_FuncionariosFAVORECIDO: TIntegerField;
        C_FuncionariosNOME: TStringField;
        C_FuncionariosDATAADIMISSAO: TDateField;
        C_FuncionariosCARGO: TStringField;
        C_FuncionariosPAGAMENTO: TBCDField;
        C_FuncionariosDEVOLUCOES: TBCDField;
        C_FuncionariosSaldoAnterior: TCurrencyField;
        C_FuncionariosAReceber: TCurrencyField;
        IBSP_SaldoAnt: TIBStoredProc;
        ppLine15: TppLine;
        Q_PagamentosFAVORECIDO: TIntegerField;
        Q_DevolucoesFAVORECIDO: TIntegerField;
        Q_ComissoesVENDA: TIntegerField;
        Q_ComissoesFAVORECIDO: TIntegerField;
        Q_ComissoesNOME: TIBStringField;
        Q_ComissoesDATA: TDateField;
        Q_ComissoesVALORVENDA: TIBBCDField;
        Q_ComissoesPERCCOMISSAO: TIBBCDField;
        Q_ComissoesRECEBIDOVENDA: TIBBCDField;
        Q_PagamentosDATAPAGO: TDateField;
        Q_PagamentosNUMCHEQUE: TIntegerField;
        Q_PagamentosNOMEBANCO: TIBStringField;
        Q_DevolucoesOBS: TIBStringField;
        ckbPorPagina: TTS_CheckBox;
        subDetalhe: TppSubReport;
        ppChildReport4: TppChildReport;
        ppTitleBand4: TppTitleBand;
        ppDetailBand5: TppDetailBand;
        ppSummaryBand5: TppSummaryBand;
        subComissoes: TppSubReport;
        ppChildReport2: TppChildReport;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppLine16: TppLine;
        ppLine17: TppLine;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppLine20: TppLine;
        ppLine21: TppLine;
        ppLabel13: TppLabel;
        ppLine22: TppLine;
        ppLine23: TppLine;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLine24: TppLine;
        ppLine25: TppLine;
        ppLine26: TppLine;
        ppLine27: TppLine;
        ppLine28: TppLine;
        ppDetailBand3: TppDetailBand;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppVariable1: TppVariable;
        ppSummaryBand3: TppSummaryBand;
        subPagamentos: TppSubReport;
        ppChildReport1: TppChildReport;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppLabel20: TppLabel;
        ppLine30: TppLine;
        ppLine31: TppLine;
        ppLine32: TppLine;
        ppLine33: TppLine;
        ppLabel21: TppLabel;
        ppLine37: TppLine;
        ppLabel24: TppLabel;
        ppLine38: TppLine;
        ppLine39: TppLine;
        ppLine42: TppLine;
        ppLine43: TppLine;
        ppLine34: TppLine;
        ppLabel22: TppLabel;
        ppLine35: TppLine;
        ppLine36: TppLine;
        ppDetailBand2: TppDetailBand;
        ppDBText14: TppDBText;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppSummaryBand2: TppSummaryBand;
        subDevolucoes: TppSubReport;
        ppChildReport3: TppChildReport;
        ppLabel23: TppLabel;
        ppLabel25: TppLabel;
        ppLine40: TppLine;
        ppLine41: TppLine;
        ppLabel28: TppLabel;
        ppLine46: TppLine;
        ppLabel29: TppLabel;
        ppLine48: TppLine;
        ppLine49: TppLine;
        ppLine50: TppLine;
        ppLine51: TppLine;
        ppLabel30: TppLabel;
        ppLine52: TppLine;
        ppDetailBand4: TppDetailBand;
        ppDBText20: TppDBText;
        ppDBText21: TppDBText;
        ppDBText22: TppDBText;
        ppDBText23: TppDBText;
        ppSummaryBand4: TppSummaryBand;
        ppLabel26: TppLabel;
        ppLine29: TppLine;
        ppLine44: TppLine;
        ppDBText24: TppDBText;
        Q_ComissoesNUMERO: TIBStringField;
        ppDBTotComissao: TppDBCalc;
        ppDBCalc8: TppDBCalc;
        ppDBCalc9: TppDBCalc;
        ppHeaderBand2: TppHeaderBand;
        ppLine45: TppLine;
        raCodeModule2: TraCodeModule;
        raCodeModule3: TraCodeModule;
        raCodeModule4: TraCodeModule;
        cbVendedores: TTS_CheckBox;
        cbSaldoAnterior: TTS_CheckBox;
        Q_Gerentes: TIBQuery;
        Q_GerentesDs: TDataSource;
        ppDBGerente: TppDBPipeline;
        Q_GerentesGERENTE: TIBStringField;
        Q_GerentesFUNCIONARIO: TIBStringField;
        Gerente: TppSubReport;
        ppChildReport5: TppChildReport;
        ppTitleBand5: TppTitleBand;
        ppDetailBand6: TppDetailBand;
        ppSummaryBand1: TppSummaryBand;
        ppLabel4: TppLabel;
        ppDBText4: TppDBText;
        ppLabel27: TppLabel;
        ppLabel31: TppLabel;
        ppLabel32: TppLabel;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppDBText27: TppDBText;
        ppLabel33: TppLabel;
        ppDBCalc10: TppDBCalc;
        ppDBGerenteppField5: TppField;
        ppLabel34: TppLabel;
        ppDBText28: TppDBText;
        ppDBCalc11: TppDBCalc;
        ppShape1: TppShape;
        ppLine47: TppLine;
        ppHeaderBand3: TppHeaderBand;
        ppHeaderBand4: TppHeaderBand;
        ppFooterBand2: TppFooterBand;
        ppHeaderBand5: TppHeaderBand;
        ppFooterBand3: TppFooterBand;
        ppTitleBand1: TppTitleBand;
        ppGroup1: TppGroup;
        ppGroupHeaderBand1: TppGroupHeaderBand;
        ppGroupFooterBand1: TppGroupFooterBand;
        Q_ComissoesFUNCIONARIO: TIntegerField;
        Q_PagamentosFUNCIONARIO: TIntegerField;
        Q_DevolucoesFUNCIONARIO: TIntegerField;
        ppGroup2: TppGroup;
        ppGroupHeaderBand2: TppGroupHeaderBand;
        ppGroupFooterBand2: TppGroupFooterBand;
        ppGroup3: TppGroup;
        ppGroupHeaderBand3: TppGroupHeaderBand;
        ppGroupFooterBand3: TppGroupFooterBand;
        ppGroup4: TppGroup;
        ppGroupHeaderBand4: TppGroupHeaderBand;
        ppGroupFooterBand4: TppGroupFooterBand;
        Q_DevolucoesENTRADA: TIntegerField;
        Q_CheqPre: TIBQuery;
        IBStringField1: TIBStringField;
        IBStringField2: TIBStringField;
        Q_CheqPreDs: TDataSource;
        Q_ComissoesVALORCOMISSAO: TIBBCDField;
        Q_GerentesVALORCOMISSAO: TFloatField;
        Q_GerentesTOTALVENDAS: TIBBCDField;
        Q_GerentesCOMISSAO: TIBBCDField;
        Q_CheqPreCOMISSAO: TIBBCDField;
        Q_CheqPreTOTALVENDAS: TIBBCDField;
        Q_CheqPreVALORCOMISSAO: TFloatField;
        C_FuncionariosCOMISSAO: TBCDField;
        ppLine53: TppLine;
        ppLine54: TppLine;
        ppLabel35: TppLabel;
        ppDBText3: TppDBText;
        dbDevolucoesppField7: TppField;
        Q_DevolucoesVALORITEM: TIBBCDField;
        Q_ComissoesTipo: TIBQuery;
        Q_ComissoesTipoDs: TDataSource;
        Q_ComissoesTipoDESCRICAO: TIBStringField;
        ppDBComissoesTipo: TppDBPipeline;
        ppLabel36: TppLabel;
        ppSubPorPlanoPgto: TppSubReport;
        ppChildReport6: TppChildReport;
        ppDetailBand7: TppDetailBand;
        ppHeaderBand6: TppHeaderBand;
        ppLabel38: TppLabel;
        ppLabel39: TppLabel;
        ppDBText30: TppDBText;
        ppDBText31: TppDBText;
        Q_ComissoesTipoVALORCOMISSAO: TIBBCDField;
        VALORCOMISSAO: TppField;
        procedure dbtPeriodoGetText(Sender: TObject; var Text: string);
        procedure btGravarClick(Sender: TObject);
        procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
        procedure ppDBText16GetText(Sender: TObject; var Text: string);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure ppVariable1DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppVariable1DrawCommandClick(Sender, aDrawCommand: TObject);
        procedure ppDBText23DrawCommandCreate(Sender, aDrawCommand: TObject);
        procedure ppDBText23DrawCommandClick(Sender, aDrawCommand: TObject);
    private
        function getSaldoAnterior(Funcionario: integer;
            DataIni: TDatetime): Currency;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RptComissoes: TRptComissoes;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptComissoes.dbtPeriodoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := lbPeriodo.Caption + ' ' + DataI.Text + ' ' + trim(lbAte.caption) + ' ' + DataF.Text;
end;

function TRptComissoes.getSaldoAnterior(Funcionario: integer; DataIni: TDatetime): Currency;
begin
    with IBSP_SaldoAnt do
        begin
            close;
            parambyname('Funcionario').AsInteger := Funcionario;
            parambyname('Data').AsDatetime := DataIni;
            prepare;
            execproc;
            result := parambyname('Saldo').AsCurrency;
        end;
end;

procedure TRptComissoes.btGravarClick(Sender: TObject);
var nCheqPre: Currency;
begin
    inherited;
    with Q_Funcionarios do
        begin
            close;
            sQL.Text := 'select f.favorecido, f.nome, f.dataadimissao, c.descricao as cargo, ' +
                '(select :tipo from comissoes where data >= :datai and data <= :dataf and ' +
                'funcionario = f.favorecido) as Comissao, ' +
                '(select sum(pf.valorcomissao) from payrollsfunc pf ' +
                'inner join payrolls p on p.payroll = pf.payroll ' +
                'inner join duplicatasapagar d on d.id = pf.idapagar ' +
                'inner join retiradas r on r.retirada = d.natureza ' +
                'where pf.data >= :datai and pf.data <= :dataf and ' +
                'pf.funcionario = f.favorecido and ' +
                'p.status <> ''C'') as Pagamento, ' +
                '(select sum(valor) from comissoesdev ' +
                'where data >= :datai and data <= :dataf and funcionario = f.favorecido) as Devolucoes ' +
                'from favorecidos f ' +
                '    left join cargos c on f.cargo = c.cargo ' +
                'where f.tipofavorecido = 3 and f.desativado = ''N'' and ' +
                '      ( f.favorecido = :funcio OR :todos = 0 ) and ' +
                '      ( f.ISVENDEDOR =:VENDEDOR ) ' +
                'order by f.nome ';
            Sql.Text := replace(Sql.Text, ':datai', '''' + formatdatetime('mm/dd/yyyy', DataI.Date) + '''');
            Sql.Text := replace(Sql.Text, ':dataf', '''' + formatdatetime('mm/dd/yyyy', DataF.Date) + '''');
            if DMProjeto.Parametro('TipoComissao') = 'I' then
                SQL.Text := replace(sql.text, ':tipo', 'sum(valorcomissao)')
            else
                SQL.Text := replace(sql.text, ':tipo', ' sum( cast( ((perccomissao * recebidovenda ) / 100) as numeric(15,3))) ');
            if cbVendedores.Checked then
                Sql.Text := replace(Sql.Text, '=:VENDEDOR', '= ''S'' ')
            else
                Sql.Text := replace(Sql.Text, '=:VENDEDOR', '<> ''X'' ');

            with C_Funcionarios do
                begin
                    close;
                    fetchparams;
                    params.parambyname('todos').asInteger := edFuncionario.ID;
                    params.parambyname('funcio').asInteger := edFuncionario.ID;
                    disablecontrols;
                    open;
                    while not eof do
                        begin
                            Edit;
                            if cbSaldoAnterior.Checked then
                                begin
                                    fieldbyname('SaldoAnterior').AsCurrency := getSaldoAnterior(fieldbyname('Favorecido').AsInteger, DataI.Date);
                                    fieldbyname('AReceber').AsCurrency := fieldbyname('SaldoAnterior').AsCurrency +
                                        fieldbyname('Comissao').AsCurrency -
                                        fieldbyname('Pagamento').AsCurrency -
                                        fieldbyname('Devolucoes').AsCurrency;
                                end
                            else
                                fieldbyname('SaldoAnterior').AsCurrency := 0;
                            fieldbyname('AReceber').AsCurrency := fieldbyname('Comissao').AsCurrency - fieldbyname('Devolucoes').AsCurrency;
                            begin

                            end;
                            if fieldbyname('AReceber').AsCurrency < 0 then
                                fieldbyname('AReceber').AsCurrency := 0;
                            Post;
                            Next;
                        end;
                    First;
                    enablecontrols;
                end;
        end;
    with Q_Comissoes do
        begin
            close;
            if DMProjeto.Parametro('TipoComissao') <> 'I' then
                begin
                    if 1 = 2 then
                        begin
                            Sql.Text := 'select c.venda, f.favorecido, f.nome, c.data, ' +
                                'c.valorvenda, s.numero, c.perccomissao, ' +
                                'case when c.recebidovenda - ' +
                                '(select COALESCE(Sum(dt.VALOR),0) ' +
                                'from titulosareceber t ' +
                                'inner join DEPOSITOSTITULOS dt on dt.TITULO = t.id ' +
                                'inner join depositos d on d.DEPOSITO = dt.DEPOSITO ' +
                                'inner join DEPOSITOSDOC dd on dd.DEPOSITO = d.DEPOSITO ' +
                                'where t.VENDA = s.saida and dd.VENCIMENTO > :dataV and dd.FORMAPAGAMENTO = 3 ' +
                                'and dd.Status not in (50,70)) < 0 Then 0 Else ' +
                                'c.recebidovenda - (select COALESCE(Sum(dt.VALOR),0) ' +
                                'from titulosareceber t ' +
                                'inner join DEPOSITOSTITULOS dt on dt.TITULO = t.id ' +
                                'inner join depositos d on d.DEPOSITO = dt.DEPOSITO ' +
                                'inner join DEPOSITOSDOC dd on dd.DEPOSITO = d.DEPOSITO ' +
                                'where t.VENDA = s.saida and dd.VENCIMENTO > :dataV and dd.FORMAPAGAMENTO = 3 ' +
                                'and dd.Status not in (50,70)) End ' +
                                ' As RecebidoVenda, ' +

                            'Cast((c.recebidovenda - (select COALESCE(Sum(dt.VALOR),0) from titulosareceber t ' +
                                'inner join DEPOSITOSTITULOS dt on dt.TITULO = t.id ' +
                                'inner join depositos d on d.DEPOSITO = dt.DEPOSITO ' +
                                'inner join DEPOSITOSDOC dd on dd.DEPOSITO = d.DEPOSITO ' +
                                'where t.VENDA = s.saida and dd.VENCIMENTO > :dataV and dd.FORMAPAGAMENTO = 3 ' +
                                'and dd.Status not in (50,70)))* (c.perccomissao/100) as Numeric(15,3)) As valorcomissao,  ' +
                                'c.funcionario ' +
                                ' from comissoes c  ' +
                                ' inner join saidas s on c.venda = s.saida ' +
                                ' inner join favorecidos f on s.favorecido = f.favorecido ' +
                                ' where c.data >= :datai and c.data <= :dataf and c.funcionario = :favorecido ' +
                                ' order by c.data, c.venda ';
                            parambyname('dataV').asDateTime := DataF.Date;
                        end
                    else
                        begin
                            Sql.Text := ' select c.venda, f.favorecido, f.nome, c.data, c.valorvenda, s.numero, c.perccomissao, ' +
                                ' c.recebidovenda, c.funcionario, cast(((c.perccomissao * c.recebidovenda ) / 100) as Decimal(15,3)) as valorcomissao ' +
                                ' from comissoes c ' +
                                ' inner join saidas s on c.venda = s.saida ' +
                                ' inner join favorecidos f on s.favorecido = f.favorecido ' +
                                ' where c.data >= :datai and c.data <= :dataf and c.funcionario = :favorecido ' +
                                ' order by c.data, c.venda ';
                        end;
                end;
            parambyname('datai').asDateTime := DataI.Date;
            parambyname('dataf').asDateTime := DataF.Date;
            open;
        end;
    with Q_Pagamentos do
        begin
            close;
            parambyname('datai').asDateTime := DataI.Date;
            parambyname('dataf').asDateTime := DataF.Date;
            open;
        end;
    with Q_Devolucoes do
        begin
            close;
            parambyname('datai').asDateTime := DataI.Date;
            parambyname('dataf').asDateTime := DataF.Date;
            open;
        end;
    with Q_Gerentes do
        begin
            close;
            parambyname('datai').asDateTime := DataI.Date;
            parambyname('dataf').asDateTime := DataF.Date;
            open;
        end;
    with Q_ComissoesTipo do
        begin
            close;
            parambyname('datai').asDateTime := DataI.Date;
            parambyname('dataf').asDateTime := DataF.Date;
            open;
        end;

    {Configuração por Página}
    ppGroup1.NewPage := ckbPorPagina.Checked;
    subDetalhe.ExpandAll := ckbPorPagina.Checked;
    ppSummary.Visible := not ckbPorPagina.Checked;
    DMProjeto.ImprimirCabecalho(regCab);
    ppComissoes.Print;
end;

procedure TRptComissoes.ppVariable1Calc(Sender: TObject;
    var Value: Variant);
begin
    inherited;
    Value := (Q_ComissoesRecebidoVenda.Value / Q_ComissoesValorVenda.Value) * 100;
end;

procedure TRptComissoes.ppDBText16GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := Q_PagamentosDataInicio.AsString + ' a ' + Q_PagamentosDataFim.AsString;
end;

procedure TRptComissoes.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            if ExisteParametrosForm then
                begin
                    DataI.Date := StrToDate(getParametrosForm(2));
                    DataF.Date := StrToDate(getParametrosForm(3));
                    edFuncionario.ID := getParametrosForm(1);
                    ckbPorPagina.Checked := true;
                    btGravar.Click;
                end
            else
                begin
                    DataI.Date := FirstMonthDay(dDataSistema);
                    DataF.Date := LastMonthDay(dDataSistema);
                end;
        end;
end;

procedure TRptComissoes.ppVariable1DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_ComissoesVenda.AsInteger;
end;

procedure TRptComissoes.ppVariable1DrawCommandClick(Sender,
    aDrawCommand: TObject);
var nTipo: integer;
begin
    inherited;
    if DlgMsg.ShowMsg(8048) = 100 then
        begin
            DMProjeto.SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
            DMProjeto.CriarForm('RptComissaoSaida', Self, True);
        end
    else
        with DMProjeto do
            begin
                Q_SQL.Close;
                Q_SQL.SQL.Text := 'select tipopadrao from saidas where saida = ' + IntToStr(TppDrawCommand(aDrawCommand).Tag);
                Q_SQL.Open;
                nTipo := Q_SQL.Fields[0].AsInteger;
                Q_SQL.Close;
                SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
                if nTipo = 3 then
                    CriarForm('FrmEstimates', self, true)
                else if nTipo = 2 then
                    CriarForm('FrmSalesOrder', self, true)
                else
                    CriarForm('FrmInvoices', self, true);
            end;
end;

procedure TRptComissoes.ppDBText23DrawCommandCreate(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    TppDrawCommand(aDrawCommand).Tag := Q_DevolucoesEntrada.AsInteger;
end;

procedure TRptComissoes.ppDBText23DrawCommandClick(Sender,
    aDrawCommand: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
            CriarForm('FrmDevolucoesClientes', self, true);
        end;
end;

end.

