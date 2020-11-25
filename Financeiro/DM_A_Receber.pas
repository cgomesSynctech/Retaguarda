unit DM_A_Receber;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, Db, DBTables, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, Variants;

type
    TDMA_Receber = class(TDMManutencao)
        Q_StatusTitulos: TIBQuery;
        C_TabelaID: TIntegerField;
        C_TabelaTITULO: TStringField;
        C_TabelaPARCELA: TIntegerField;
        C_TabelaVENCIMENTO: TDateField;
        C_TabelaCOMPETENCIA: TDateField;
        C_TabelaDATAPAGO: TDateField;
        C_TabelaOBS: TStringField;
        C_TabelaVENDA: TIntegerField;
        C_TabelaCLIENTE: TIntegerField;
        C_TabelaNUMBOLETO: TStringField;
        C_TabelaNOTAFISCAL: TStringField;
        C_TabelaSTATUS: TIntegerField;
        C_TabelaDATAANTECIPACAO: TDateField;
        C_TabelaIDCOMISSAO: TIntegerField;
        C_TabelaDATAATRASADO: TDateField;
        C_TabelaDATACANCELAMENTO: TDateField;
        C_TabelaFUNCCANCELAMENTO: TIntegerField;
        C_TabelaOPENBALANCE: TStringField;
        C_TabelaOLDSTATUS: TIntegerField;
        C_TabelaNOME: TStringField;
        C_StatusTitulos: TClientDataSet;
        Q_StatusTitulosProvider: TDataSetProvider;
        C_TabelaDescStatus: TStringField;
        C_TabelaQtdDias: TIntegerField;
        C_TabelaDiasRest: TIntegerField;
        C_TabelaValorBaseJuros: TFloatField;
        C_TabelaJurosPrevistos: TFloatField;
        C_TabelaJurosRealizados: TFloatField;
        C_TabelaValorACreditar: TFloatField;
        C_TabelaDescTipoADescontar: TStringField;
        C_TabelaVENDEDOR: TIntegerField;
        C_TabelaPERCENTUALMULTA: TBCDField;
        C_TabelaPERCENTUALMORA: TBCDField;
        C_TabelaUSUARIO: TIntegerField;
        C_TabelaCREDITOUTILIZADO: TBCDField;
        C_TabelaVALOR: TBCDField;
        C_TabelaVALORPAGO: TBCDField;
        C_TabelaBANCO: TIntegerField;
        C_TabelaVALORDESCANTECIPADO: TBCDField;
        C_TabelaJUROSPLANO: TBCDField;
        C_TabelaDESCONTOS: TBCDField;
        C_TabelaJUROSRECEBIDOS: TBCDField;
        C_TabelaVALORJUROSMORA: TBCDField;
        C_TabelaVALORMULTA: TBCDField;
        C_TabelaCREDITOGERADO: TBCDField;
        C_ContasOperacao: TClientDataSet;
        C_ContasOperacaoCONTA: TIntegerField;
        C_ContasOperacaoVALOR: TBCDField;
        C_ContasOperacaoDescConta: TStringField;
        C_ContasOperacaoDS: TDataSource;
        Q_ContasOperacao: TIBQuery;
        C_StatusTitulosSTATUS: TIntegerField;
        C_StatusTitulosDESCRICAO: TStringField;
        Q_DepositosDoc: TIBQuery;
        C_DepositosDoc: TClientDataSet;
        C_DepositosDocDS: TDataSource;
        Q_DepositosDocIDDOC: TIntegerField;
        Q_DepositosDocVALOR: TIBBCDField;
        Q_DepositosDocVENCIMENTO: TDateField;
        Q_DepositosDocNOMECONTA: TIBStringField;
        Q_DepositosDocDATA: TDateField;
        Q_DepositosDocDESCFORMAPAG: TIBStringField;
        Q_DepositosDocDESCSTATUS: TIBStringField;
        C_DepositosDocIDDOC: TIntegerField;
        C_DepositosDocVALOR: TBCDField;
        C_DepositosDocVENCIMENTO: TDateField;
        C_DepositosDocNOMECONTA: TStringField;
        C_DepositosDocDATA: TDateField;
        C_DepositosDocDESCFORMAPAG: TStringField;
        C_DepositosDocDESCSTATUS: TStringField;
        U_ContasOperacao: TIBUpdateSQL;
        C_ContasOperacaoCONTAOPERACAO: TIntegerField;
        C_ContasOperacaoID: TIntegerField;
        Q_DepositosDocSTATUS: TIntegerField;
        C_DepositosDocSTATUS: TIntegerField;
        C_TabelaTIPOFAVORECIDO: TIntegerField;
        Q_DepositosDocDEPOSITO: TIntegerField;
        Q_DepositosDocTIPODEPOSITO: TIntegerField;
        C_DepositosDocDEPOSITO: TIntegerField;
        C_DepositosDocTIPODEPOSITO: TIntegerField;
        C_ContasOperacaoNOMECLIENTEREF: TStringField;
        C_ContasOperacaoCLIENTEREF: TIntegerField;
        C_ContasOperacaoHISTORICO: TStringField;
        C_ContasOperacaoORIGEM: TIntegerField;
        C_TabelaFALTARECEBER: TBCDField;
        C_TabelaCONTAARECEBER: TIntegerField;
        C_TabelaORIGEM_ARECEBER: TIntegerField;
        C_TabelaIDGERADOR_ARECEBER: TIntegerField;
        P_DepositosDoc: TDataSetProvider;
        P_ContasOperacao: TDataSetProvider;
        C_TiposCobranca: TClientDataSet;
        Q_TiposCobranca: TIBQuery;
        P_TiposCobranca: TDataSetProvider;
        C_TiposCobrancaDS: TDataSource;
        C_TiposCobrancaTIPOCOBRANCA: TIntegerField;
        C_TiposCobrancaDESCRICAO: TStringField;
        C_TiposCobrancaDESATIVADO: TStringField;
        C_TabelaDOC_GARANTIA: TStringField;
        C_TabelaIMPORTACAO: TIntegerField;
        C_TabelaTIPOCOBRANCA: TIntegerField;
        C_TabelaDATAPRORROGACAO: TDateField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaDescTipoCobranca: TStringField;
        C_TabelaDiasEmAtraso: TIntegerField;
        C_Carteiras: TClientDataSet;
        C_Empresas: TClientDataSet;
        C_CarteirasDS: TDataSource;
        C_EmpresasDS: TDataSource;
        P_Carteiras: TDataSetProvider;
        P_Empresas: TDataSetProvider;
        Q_Carteiras: TIBQuery;
        Q_Empresas: TIBQuery;
        C_CarteirasCARTEIRA: TIntegerField;
        C_CarteirasDESCRICAO: TStringField;
        C_EmpresasFAVORECIDO: TIntegerField;
        C_EmpresasNOME: TStringField;
        C_TabelaCARTEIRA: TIntegerField;
        C_TabelaDescCarteira: TStringField;
        C_TabelaNomeEmpresa: TStringField;
        C_TabelaPDV: TIntegerField;
        C_ContasOperacaoPDV: TIntegerField;
        procedure C_TabelaTITULOChange(Sender: TField);
        procedure C_TabelaVENCIMENTOChange(Sender: TField);
        procedure C_TabelaVENCIMENTOValidate(Sender: TField);
        procedure C_TabelaVALORChange(Sender: TField);
        procedure C_TabelaVALORPAGOChange(Sender: TField);
        procedure C_TabelaPARCELAChange(Sender: TField);
        procedure C_TabelaMULTAChange(Sender: TField);
        procedure C_TabelaJUROSMORAChange(Sender: TField);
        procedure DMComponentPesquisar2_SQLFinal(Sender: TObject;
            var SelectFinal: string);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure C_ContasOperacaoAfterPost(DataSet: TDataSet);
        procedure C_TabelaCLIENTEChange(Sender: TField);
        procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
        procedure C_ContasOperacaoBeforeOpen(DataSet: TDataSet);
        procedure C_DepositosDocBeforeOpen(DataSet: TDataSet);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
    private
        // Adriano
        DMContabil: TDMContabilidade;
        nTotalContas: Currency;
        nSeq: integer;
        procedure CalcularMultaJuros;
        procedure GravarContasOperacao;
    public
        { Public declarations }
        sOrdem, sOrdemSel, sDataPeriodo: string;
        nFiltro, nID: integer;
        bBaixa: boolean;
        procedure RefazerPesquisa(ID: Integer);
        function EstornarCredito(nID: Integer): Boolean;
        procedure AtualizaContas(Valor: Currency);
        // Adriano
        function ContabilidadeAtivado: boolean;
        procedure ContabilidadeDesativado;
        procedure CriaContabilidade;
        procedure Contabiliza;
        procedure MostraContabilidade;
        /////////////////////////////////
    end;

var
    DMA_Receber: TDMA_Receber;

implementation

uses funcoes, DM_Projeto, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDMA_Receber.RefazerPesquisa;
begin
    Localizar('Refazer', '');

    C_Tabela.Locate('ID', ID, []);
end;

function TDMA_Receber.EstornarCredito;
begin
    result := false;

end;

procedure TDMA_Receber.CalcularMultaJuros;
var
    nDias: Integer;
    nJurosDia: currency;
    dDataRef: TDateTime;
begin
    inherited;
    if C_TabelaStatus.Value >= 50 then
        dDataRef := C_TabelaDataPago.Value
    else
        dDataRef := DMProjeto.dDataSistema;

    if dDataRef >= C_TabelaDataAtrasado.Value then
        begin
            C_TabelaValorMulta.Value := (C_TabelaValor.Value) * (C_TabelaPercentualMulta.Value / 100);

            nDias := Trunc(dDataRef - C_TabelaDataAtrasado.Value) + 1;
            nJurosDia := (C_TabelaPercentualMora.Value / 30) / 100;
            C_TabelaValorJurosMora.Value :=
                Arredondar((C_TabelaValor.Value - C_TabelaValorPago.Value) *
                nJurosDia * nDias, 2, false);
        end;

end;

procedure TDMA_Receber.C_TabelaTITULOChange(Sender: TField);
var sTit: string;
begin
    inherited;
    if (Sender.asString = '') or bAlteracao then
        exit;

    if (pos('-', Sender.asString) = 0) and (pos('/', Sender.asString) = 0) then
        begin
            sTit := AdicionarStr(Sender.asString, '0', 6) + '-' + C_TabelaParcela.asString;
            Sender.asString := sTit;
        end;

end;

procedure TDMA_Receber.C_TabelaVENCIMENTOChange(Sender: TField);
begin
    inherited;
    if C_TabelaStatus.Value < 50 then
        C_TabelaStatus.Value := DMFinanceiro.SetStatus(C_TabelaVencimento.Value);
    CalcularMultaJuros;
end;

procedure TDMA_Receber.C_TabelaVENCIMENTOValidate(Sender: TField);
begin
    inherited;
    if Sender.asVariant = null then
        exit;
    if Sender.asDatetime < StrToDateTime('01/01/1998') then
        raise exception.Create('@' + DmProjeto.getMsg(214)); // A Data é muito antiga!'

end;

procedure TDMA_Receber.C_TabelaVALORChange(Sender: TField);
begin
    inherited;
    if Sender.AsVariant = null then
        Sender.AsFloat := 0;
    CalcularMultaJuros;
end;

procedure TDMA_Receber.C_TabelaVALORPAGOChange(Sender: TField);
begin
    inherited;
    if Sender.AsVariant = null then
        Sender.AsFloat := 0;

end;

procedure TDMA_Receber.C_TabelaPARCELAChange(Sender: TField);
begin
    inherited;
    if (pos('-', C_TabelaTitulo.Value) > 0) then
        begin
            C_TabelaTitulo.Value := SeparaStrings(C_TabelaTitulo.Value, '-', 1) + '-' + C_TabelaParcela.asString;
        end;

end;

procedure TDMA_Receber.C_TabelaMULTAChange(Sender: TField);
var
    dDataRef: TDateTime;
begin
    inherited;
    if C_TabelaStatus.Value >= 50 then
        dDataRef := C_TabelaVencimento.Value
    else
        dDataRef := DMProjeto.dDataSistema;

    if dDataRef >= C_TabelaDataAtrasado.Value then
        C_TabelaValorMulta.Value := (C_TabelaValor.Value) * (Sender.AsCurrency / 100);

end;

procedure TDMA_Receber.C_TabelaJUROSMORAChange(Sender: TField);
var
    nDias: Integer;
    nJurosDia: currency;
    dDataRef: TDateTime;
begin
    inherited;
    if C_TabelaStatus.Value >= 50 then
        dDataRef := C_TabelaVencimento.Value
    else
        dDataRef := DMProjeto.dDataSistema;

    if dDataRef >= C_TabelaDataAtrasado.Value then
        begin
            nDias := Trunc(dDataRef - C_TabelaDataAtrasado.Value) + 1;
            nJurosDia := (C_TabelaPercentualMora.Value / 30) / 100;
            C_TabelaValorJurosMora.Value :=
                Arredondar((C_TabelaValor.Value - C_TabelaVencimento.Value) *
                nJurosDia * nDias, 2, false);
        end;

end;

procedure TDMA_Receber.DMComponentPesquisar2_SQLFinal(Sender: TObject;
    var SelectFinal: string);
var sWhere: string;
begin
    inherited;
    if Pos(SelectFinal, 'where') <> 0 then
        SelectFinal := SelectFinal + ' where ID is not null ';

    if nFiltro = 1 then
        //A Receber
        sWhere := ' and r.Status > 0 and r.Status < 50 '
    else if nFiltro = 50 then
        //Liquidados
        sWhere := ' and r.Status >= 50 '
    else if nFiltro = 3 then
        //Em Atraso
        sWhere := ' and r.Status = 3 '
    else
        sWhere := '';

    if sOrdem = '' then
        sOrdem := ' r.Vencimento ';

    //    SelectFinal := SelectFinal + sWhere;

    if (pos('ORDER BY', uppercase(SelectFinal)) > 0) and
        (pos('ORDER BY', uppercase(sOrdem)) > 0) then
        SelectFinal := SelectFinal + copy(sOrdem, pos('ORDER BY', uppercase(sOrdem)) + 9, 99)
    else if (pos('ORDER BY', uppercase(SelectFinal)) = 0) and
        (pos('ORDER BY', uppercase(sOrdem)) = 0) then
        SelectFinal := SelectFinal + ' order by ' + sOrdem
    else if (pos('ORDER BY', uppercase(SelectFinal)) > 0) and
        (pos('ORDER BY', uppercase(sOrdem)) = 0) then
        SelectFinal := SeparaStrings(SelectFinal, 'order by', 1) + sWhere + ' order by ' + sOrdem;

    {Tratando para cliente = 0}
    if pos('Cliente = 0', SelectFinal) > 0 then
        SelectFinal := replace(SelectFinal, 'Cliente = 0', 'Nome like ''%'' ');

end;

procedure TDMA_Receber.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaEmpresa.Value := DMProjeto.nEmpresaLogada;
    C_TabelaPDV.Value := DMProjeto.nPDV;
    C_TabelaImportacao.Value := 0;
    C_TabelaTitulo.Value := '';
    C_TabelaNotaFiscal.Value := '';
    C_TabelaCompetencia.Value := DMProjeto.dDataSistema;
    C_TabelaParcela.Value := 1;
    C_TabelaVencimento.Value := DMProjeto.dDataSistema;
    C_TabelaStatus.Value := 1;
    C_TabelaPercentualMulta.Value := StrToFloatDef(DMProjeto.Parametro('Multa'), 0);
    C_TabelaPercentualMora.Value := StrToFloatDef(DMProjeto.Parametro('Juros'), 0);
    C_TabelaFaltaReceber.Value := 0;
    C_TabelaCreditoGerado.Value := 0;
    C_TabelaValor.Value := 0;
    C_TabelaValorPago.Value := 0;
    C_TabelaValorDescAntecipado.Value := 0;
    C_TabelaDescontos.Value := 0;
    C_TabelaJurosRecebidos.Value := 0;
    C_TabelaValorJurosMora.Value := 0;
    C_TabelaValorMulta.Value := 0;
    C_TabelaCreditoUtilizado.Value := 0;
    C_TabelaJurosPlano.Value := 0;
    C_TabelaOrigem_AReceber.Value := 30;
    {FuncLogin}
    if DMProjeto.nFuncionario > 0 then
        C_TabelaUsuario.Value := DMProjeto.nFuncionario;

    C_TabelaPercentualMora.Value := 0;
    C_TabelaPercentualMulta.Value := 0;

    C_TabelaJurosRecebidos.Value := 0;
    C_TabelaDescontos.Value := 0;
    nTotalContas := 0;
    C_TabelaTipoCobranca.Value := 1;
end;

procedure TDMA_Receber.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMA_Receber := self;
end;

procedure TDMA_Receber.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var nTotal: currency;
begin
    inherited;

    if C_TabelaStatus.Value = 0 then
        begin
            // ShowMessage('O Status deste Invoice a Receber não permite mais que sofra alterações!');
            DlgMsg.ShowMsg(217);
            bSkip := true;
            exit;
        end;

    if C_Tabela.State in [dsBrowse] then
        C_Tabela.edit;
    if (C_TabelaNotaFiscal.Value <> '') then
        C_TabelaTitulo.Value := AdicionarStr(C_TabelaNotaFiscal.Value, '0', 6) + '-' + C_TabelaParcela.AsString;

    {Verificando se o valor da parcela bate com o valor das receitas(contas)}
    if (C_ContasOperacao.Active) and (DMA_Receber.C_TabelaStatus.Value > 0) and (DMA_Receber.C_TabelaStatus.Value < 50) and (DMA_Receber.C_TabelaVenda.AsInteger = 0) and (DMA_Receber.C_TabelaOrigem_AReceber.AsInteger <> 48) then
        begin
            with C_ContasOperacao do
                begin
                    disablecontrols;
                    first;
                    nTotal := 0;
                    while not eof do
                        begin
                            nTotal := nTotal + fieldbyname('valor').value;
                            next;
                        end;
                    enablecontrols;
                end;

            if not DMFinanceiro.ValidaContas(C_ContasOperacao, nTotal, C_TabelaValor.AsCurrency) then
                begin
                    bSkip := true;
                    exit;
                end;
        end;
    {Vericando se já existe outra parcela com o mesmo número}
    with DMProjeto.Q_SQL do
        begin
            close;
            //SQL.Text := 'Select count(ID) from TitulosAReceber where Vencimento = :Venc and Cliente = :F and (Valor = :Valor) and Status > 0 and ' +
//                ' ID <> :ID And NotaFiscal = :Nota ';             {Felipe - Alterado consulta para pesquisar pelo Favorecido, Parcela e Número da Nota (11/04/2016)}
            SQL.Text := 'Select id from TitulosAReceber where cliente = :F and Status > 0 and parcela = :parcela and NotaFiscal = :Nota';

            Parambyname('F').asInteger := C_TabelaCliente.Value;
            ParamByName('parcela').AsInteger := C_TabelaPARCELA.Value;
            Parambyname('Nota').asString := C_TabelaNOTAFISCAL.Value;
            //Parambyname('Valor').AsCurrency := C_TabelaValor.Value;
            //Parambyname('ID').asInteger := C_TabelaID.Value;
            //Parambyname('Venc').asDate := C_TabelaVencimento.Value;

            Open;

            if not (FieldByName('id').IsNull) and (FieldByName('id').AsInteger <> C_TabelaID.Value) then
                begin
                    Close;
                    //DlgMsg.ShowMsg(213);
                    DlgMsg.ShowMsg(50, ['Este Número de Documento e Parcela já existem para esse Cliente. Não será possível salvar esse título. Verifique!']);
                    bSkip := true;
                    exit;
                end;

            {
            if (fields[0].AsInteger > 0)&&(FieldByName('id').AsInteger) then
                begin
                    Close;
                    //DlgMsg.ShowMsg(213);
                    DlgMsg.ShowMsg(50, ['Este Número de Documento e Parcela já existem para esse Cliente. Não será possível salvar esse título. Verifique!']);
                    bSkip := true;
                    exit;
                end;
                }
        end;
        
    if C_TabelaNotaFiscal.AsString = '' then
        begin
            with DMFinanceiro.Q_SQL do
                begin
                    close;
                    sql.text := 'select Saida from saidas where numero = :numero';
                    parambyname('numero').AsString := C_TabelaNotaFiscal.AsString;
                    open;
                    C_TabelaVenda.AsInteger := fields[0].AsInteger;
                end;
        end;
    if C_TabelaStatus.Value < 50 then
        C_TabelaStatus.Value := DMFinanceiro.SetStatus(C_TabelaVencimento.Value);

    C_TabelaDataAtrasado.Value := DMProjeto.PrimeiroDiaUtil(C_TabelaVencimento.Value, false, true);

    if bAlteracao and (C_Tabela.ChangeCount = 0) then
        begin
            GravarContasOperacao;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;

end;

procedure TDMA_Receber.DMComponentGravar3_AposApply(Sender: TObject);
begin
    inherited;
    // Adriano
    GravarContasOperacao;
    if DMA_Receber.C_TabelaVenda.value = 0 then
        begin
            Contabiliza;

            if not DMContabil.Salvar(DMA_Receber.C_TabelaID.value) then
                raise Exception.Create(DMProjeto.GetMsg(3117));
        end;
    ///////////////////////////
    DMFinanceiro.AuditoriaFinanceira(1, C_TabelaNome.AsString + ' Vencimento: ' + C_TabelaVencimento.AsString, 'TitulosAReceber', C_TabelaID.AsInteger, C_TabelaValor.AsCurrency, 0, 0, 0);
end;

procedure TDMA_Receber.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nSeq);
    C_ContasOperacaoPDV.Value := DMProjeto.nPDV;
    C_ContasOperacaoContaOperacao.Value := nSeq;
    C_ContasOperacaoID.value := C_TabelaID.Value;
    if C_ContasOperacao.RecordCount = 0 then
        C_ContasOperacaoConta.Value := DMProjeto.ContaPadrao(8);
    C_ContasOperacaoOrigem.Value := 30;
    C_ContasOperacaoValor.Value := C_Tabelavalor.Value - nTotalContas;
    if C_ContasOperacaoValor.Value < 0 then
        C_ContasOperacaoValor.Value := 0;
end;

procedure TDMA_Receber.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nSeq := -1;
end;

procedure TDMA_Receber.AtualizaContas;
begin
    if (C_Tabela.State in [dsEdit, dsInsert]) and (C_ContasOperacao.RecordCount <= 1) then
        begin
            C_ContasOperacao.Edit;
            C_ContasOperacaoValor.Value := Valor;
        end;
end;

function TDMA_Receber.ContabilidadeAtivado;
begin
    result := DMContabil <> nil;
end;

procedure TDMA_Receber.ContabilidadeDesativado;
begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
end;

procedure TDMA_Receber.CriaContabilidade;
begin
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMA_Receber.Contabiliza;
begin
    DMContabil.ContabilizaReceberParcelas(DMA_Receber.C_TabelaID.value, DMA_Receber.C_Tabela, DMA_Receber.C_ContasOperacao);
end;

procedure TDMA_Receber.MostraContabilidade;
begin
    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
end;

procedure TDMA_Receber.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    // Adriano
    if DMContabil <> nil then
        DMContabil.Iniciar;
end;

procedure TDMA_Receber.C_ContasOperacaoAfterPost(DataSet: TDataSet);
var Marca: TBookMarkStr;
begin
    inherited;
    with C_ContasOperacao do
        begin
            Marca := BookMark;
            DisableControls;
            nTotalContas := 0;
            while not EOF do
                begin
                    nTotalContas := nTotalContas + FieldbyName('Valor').AsCurrency;
                    next;
                end;
            C_ContasOperacao.BookMark := Marca;
            EnableControls;
        end;
end;

procedure TDMA_Receber.C_TabelaCLIENTEChange(Sender: TField);
begin
    inherited;
    DMA_Receber.C_TabelaContaaReceber.value := DMProjeto.C_LocalizarFavConta.Value;
end;

procedure TDMA_Receber.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
    inherited;
    C_DepositosDoc.Close;
    C_ContasOperacao.Close;
    C_ContasOperacao.Open;
    C_ContasOperacao.append;
end;

procedure TDMA_Receber.GravarContasOperacao;
var
    sFilter: string;
begin

    if C_ContasOperacao.Active then
        begin

            if C_ContasOperacao.State in [dsEdit, dsInsert] then
                C_ContasOperacao.Post;

            if (C_ContasOperacao.ChangeCount > 0) then
                with C_ContasOperacao do
                    begin
                        if Filtered then
                            sFilter := Filter;

                        try
                            Filtered := false;

                            First;
                            while not EOF do
                                begin
                                    if FieldByName('ID').asinteger <= 0 then
                                        begin
                                            Edit;
                                            FieldByName('ID').asInteger := C_TabelaID.Value;
                                        end;

                                    Next;
                                end;

                            if ApplyUpdates(0) > 0 then
                                raise Exception.Create('@Não foi possível gravar o(s) Relacionamentos!');
                        finally
                            if sFilter <> '' then
                                Filtered := true;
                        end;
                    end;
        end;
end;

procedure TDMA_Receber.C_ContasOperacaoBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_ContasOperacao.FetchParams;
    C_ContasOperacao.Params.ParambyName('ID').AsInteger := C_TabelaID.AsInteger;
end;

procedure TDMA_Receber.C_DepositosDocBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    C_DepositosDoc.FetchParams;
    C_DepositosDoc.Params.ParambyName('ID').AsInteger := C_TabelaID.AsInteger;
end;

procedure TDMA_Receber.C_TabelaCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_TabelaDiasEmAtraso.Value := Trunc(DMProjeto.dDataSistemaAtual - C_TabelaVENCIMENTO.Value);
    if C_TabelaDiasEmAtraso.Value < 0 then
        C_TabelaDiasEmAtraso.Value := 0;
end;

end.

