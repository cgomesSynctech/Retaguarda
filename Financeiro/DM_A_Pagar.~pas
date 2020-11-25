unit DM_A_Pagar;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
    IBUpdateSQL, Db, IBQuery, DBTables, DM_Contabilidade, Variants;

type
    TDMA_Pagar = class(TDMManutencao)
        Q_StatusTitulos: TIBQuery;
        C_TabelaID: TIntegerField;
        C_TabelaPARCELA: TIntegerField;
        C_TabelaVENCIMENTO: TDateField;
        C_TabelaCOMPETENCIA: TDateField;
        C_TabelaDATAPAGO: TDateField;
        C_TabelaOBS: TStringField;
        C_TabelaCOMPRA: TIntegerField;
        C_TabelaFORNECEDOR: TIntegerField;
        C_TabelaNUMBOLETO: TStringField;
        C_TabelaSTATUS: TIntegerField;
        C_TabelaDATAANTECIPACAO: TDateField;
        C_TabelaDATAATRASADO: TDateField;
        C_TabelaDATACANCELAMENTO: TDateField;
        C_TabelaFUNCCANCELAMENTO: TIntegerField;
        C_TabelaOPENBALANCE: TStringField;
        C_TabelaNOME: TStringField;
        C_TabelaDescStatus: TStringField;
        C_StatusTitulos: TClientDataSet;
        Q_StatusTitulosProvider: TDataSetProvider;
        C_TabelaSTATUSOLD: TIntegerField;
        C_TabelaVALOR: TBCDField;
        C_TabelaVALORPAGO: TBCDField;
        C_TabelaBANCO: TIntegerField;
        C_TabelaVALORDESCANTECIPADO: TBCDField;
        C_TabelaMULTA: TBCDField;
        C_TabelaJUROSMORA: TBCDField;
        C_TabelaENCARGOSDIVERSOS: TBCDField;
        C_TabelaUSUARIO: TIntegerField;
        C_TabelaDESCONTOS: TBCDField;
        C_TabelaJUROSPAGOS: TBCDField;
        C_TabelaCREDITOGERADO: TBCDField;
        C_TabelaCREDITOUTILIZADO: TBCDField;
        C_RetiradasDocDS: TDataSource;
        C_RetiradasDoc: TClientDataSet;
        Q_RetiradasDoc: TIBQuery;
        C_TabelaQ_RetiradasDoc: TDataSetField;
        C_RetiradasDocVALOR: TBCDField;
        C_RetiradasDocVENCIMENTO: TDateField;
        C_RetiradasDocNOMECONTA: TStringField;
        C_RetiradasDocDATA: TDateField;
        C_RetiradasDocDESCRICAO: TStringField;
        C_RetiradasDocDESCSTATUS: TStringField;
        C_RetiradasDocIDDOC: TIntegerField;
        C_ContasOperacao: TClientDataSet;
        C_ContasOperacaoDS: TDataSource;
        Q_ContasOperacao: TIBQuery;
        C_TabelaQ_ContasOperacao: TDataSetField;
        C_ContasOperacaoDescConta: TStringField;
        C_StatusTitulosSTATUS: TIntegerField;
        C_StatusTitulosDESCRICAO: TStringField;
        C_ContasOperacaoCONTAOPERACAO: TIntegerField;
        C_ContasOperacaoCONTA: TIntegerField;
        C_ContasOperacaoVALOR: TBCDField;
        C_ContasOperacaoID: TIntegerField;
        U_ContasOperacao: TIBUpdateSQL;
        C_TabelaTIPOFAVORECIDO: TIntegerField;
        C_RetiradasDocRETIRADA: TIntegerField;
        C_RetiradasDocTIPORETIRADA: TIntegerField;
        C_RetiradasDocSTATUS: TIntegerField;
        C_ContasOperacaoHISTORICO: TStringField;
        C_ContasOperacaoNOMECLIENTEREF: TStringField;
        C_ContasOperacaoCLIENTEREF: TIntegerField;
        C_ContasOperacaoORIGEM: TIntegerField;
        C_TabelaFALTAPAGAR: TBCDField;
        C_TabelaJUROSPLANO: TBCDField;
        C_TabelaPAYROLLFUNC: TIntegerField;
        C_TabelaVALORJUROSMORA: TBCDField;
        C_TabelaVALORMULTA: TBCDField;
        C_TabelaCONTAAPAGAR: TIntegerField;
        C_TabelaORIGEM_APAGAR: TIntegerField;
        C_TabelaIDGERADOR_APAGAR: TIntegerField;
        C_TabelaDiasEmAtraso: TIntegerField;
        C_TabelaCPF_CNPJ: TStringField;
        C_TiposCobranca: TClientDataSet;
        C_TiposCobrancaTIPOCOBRANCA: TIntegerField;
        C_TiposCobrancaDESCRICAO: TStringField;
        C_TiposCobrancaDESATIVADO: TStringField;
        Q_TiposCobranca: TIBQuery;
        P_TiposCobranca: TDataSetProvider;
        C_TiposCobrancaDS: TDataSource;
        C_TabelaNATUREZA: TIntegerField;
        C_TabelaREFCLIENTE: TIntegerField;
        C_TabelaTIPOCOBRANCA: TIntegerField;
        C_TabelaDescTipoCobranca: TStringField;
        C_TabelaINDEXADOR: TIntegerField;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        C_TabelalkIndexador: TStringField;
        C_TabelaPDV: TIntegerField;
        C_TabelaIMPORTACAO: TIntegerField;
        C_ContasOperacaoPDV: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaTITULO: TStringField;
        C_TabelaNOTAFISCAL: TStringField;
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure C_TabelaVALORChange(Sender: TField);
        procedure C_TabelaVENCIMENTOChange(Sender: TField);
        procedure C_TabelaTITULOChange(Sender: TField);
        procedure C_TabelaPARCELAChange(Sender: TField);
        procedure DMComponentPesquisar2_SQLFinal(Sender: TObject;
            var SelectFinal: string);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure C_ContasOperacaoNewRecord(DataSet: TDataSet);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure C_ContasOperacaoAfterPost(DataSet: TDataSet);
        procedure C_TabelaFORNECEDORChange(Sender: TField);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure C_TabelaINDEXADORValidate(Sender: TField);
    private
        { Private declarations }
        nTotalContas: Currency;
        nSeq: integer;
        DMContabil: TDMContabilidade;
    public
        { Public declarations }
        bConsiderarPeriodo: boolean;
        sOrdem: string;
        nID, nFiltro: integer;
        procedure SetStatus(Vencimento: TDateTime);
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
    DMA_Pagar: TDMA_Pagar;

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, Frm_Contabilidade,
  TDM_PadraoManutencao;

{$R *.DFM}

procedure TDMA_Pagar.DMComponentGravar3_AposApply(Sender: TObject);
var
    Mark: Tbookmark;
    nTotPag: Currency;
begin
    inherited;
    if DMA_Pagar.C_TabelaCompra.value = 0 then
        begin
            Contabiliza;

            if not DMContabil.Salvar(DMA_Pagar.C_TabelaID.value) then
                raise Exception.Create(DMProjeto.GetMsg(3117));
        end;
    ///////////////////////////
    DMFinanceiro.AuditoriaFinanceira(17, C_TabelaNome.AsString + ' - Vencimento: ' + DateToStr(C_TabelaVencimento.AsDateTime), 'DuplicatasAPagar', C_TabelaID.AsInteger, C_TabelaValor.Value, 0, 0, 0);
end;

procedure TDMA_Pagar.C_TabelaVALORChange(Sender: TField);
begin
    inherited;
    if Sender.AsVariant = null then
        Sender.AsFloat := 0;
end;

procedure TDMA_Pagar.C_TabelaVENCIMENTOChange(Sender: TField);
begin
    inherited;
    SetStatus(C_TabelaVencimento.Value);
end;

procedure TDMA_Pagar.C_TabelaTITULOChange(Sender: TField);
var
    sTit: string;
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

procedure TDMA_Pagar.C_TabelaPARCELAChange(Sender: TField);
begin
    inherited;
    if (pos('-', C_TabelaTitulo.Value) > 0) then
        begin
            C_TabelaTitulo.Value := SeparaStrings(C_TabelaTitulo.Value, '-', 1) + '-' + C_TabelaParcela.asString;
        end;

end;

procedure TDMA_Pagar.DMComponentPesquisar2_SQLFinal(Sender: TObject;
    var SelectFinal: string);
var sWhere: string;
begin
    inherited;
    if nFiltro = 1 then
        //A Pagar
        sWhere := ' and p.Status > 0 and p.Status < 50 '
    else if nFiltro = 2 then
        //Liquidados
        sWhere := ' and p.Status >= 50 '
    else if nFiltro = 3 then
        //Em Atraso
        sWhere := ' and p.Status = 3 '
    else
        sWhere := '';

    if sOrdem = '' then
        sOrdem := ' p.Vencimento ';

    //  SelectFinal := SelectFinal + sWhere;

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
    if pos('Fornecedor = 0', SelectFinal) > 0 then
        SelectFinal := replace(SelectFinal, 'Fornecedor = 0', 'Nome like ''%'' ');

end;

procedure TDMA_Pagar.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMA_Pagar := self;
end;

procedure TDMA_Pagar.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var sValor: string;
    nTotal: Currency;
begin
    inherited;
    //C_Tabela.UpdateRecord;
    if C_TabelaStatus.Value >= 50 then
        begin
            // ShowMessage('Não é possível alterar um Invoice já liquidado!');
            DlgMsg.ShowMsg(321);
            bSkip := true;
            Exit;
        end;
    if C_TabelaStatus.Value = 0 then
        begin
            DlgMsg.ShowMsg(217);
            bSkip := true;
            Exit;
        end;
    if C_TabelaFornecedor.IsNull then
        begin
            // ShowMessage('O Fornecedor deve ser informado!');
            DlgMsg.ShowMsg(324);
            bSkip := true;
            Exit;
        end;
    if C_TabelaValor.Value <= 0 then
        begin
            DlgMsg.ShowMsg(533);
            bSkip := true;
            Exit;
        end;

    {Verificando se o valor da parcela bate com o valor das receitas(contas)}
    if (DMA_Pagar.C_TabelaStatus.Value > 0) and (DMA_Pagar.C_TabelaStatus.Value < 50) and (DMA_Pagar.C_TabelaCompra.AsInteger = 0) then
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
    {Checando duplicidade da Conta a Pagar}
    if not bAlteracao then
        with DMFinanceiro.Q_SQL do
            begin
                Close;
                SQL.Text := 'Select count(ID) as Conta from DuplicatasAPagar where Vencimento = :Venc and Fornecedor = :F and (Valor = :Valor) and Status > 0 ';
                Parambyname('Valor').AsCurrency := C_TabelaValor.Value;
                Parambyname('F').asInteger := C_TabelaFornecedor.Value;
                Parambyname('Venc').asDate := C_TabelaVencimento.Value;
                Open;
                if Fields[0].asInteger > 0 then
                    begin
                        Close;
                        if DlgMsg.ShowMSg(326) = 200 then
                            begin
                                bSkip := true;
                                Exit;
                            end;
                    end;

                Close;
            end;

    with DMFinanceiro.Q_SQL do
        begin
            // Felipe - Alterado para consultar se número de documento informado já existe para o fornecedor selecionado (14/10/2014)
            if C_TabelaNotaFiscal.AsString <> '' then
                begin
                    Close;
                    SQL.Text := 'select count(ID) as Contagem from DuplicatasAPagar where notafiscal = :nota and fornecedor = :fornecedor and parcela = :parcela';
                    Parambyname('nota').AsString := C_TabelaNotaFiscal.AsString;
                    ParamByName('fornecedor').AsInteger := C_TabelaFORNECEDOR.Value;
                    ParamByName('parcela').AsInteger := C_TabelaPARCELA.Value;
                    Open;
                    if (fields[0].AsInteger > 0) and (not bAlteracao) then
                        begin
                            Close;
                            DlgMsg.ShowMsg(50, ['Este Número de Documento e Parcela já existem para esse Fornecedor. Não será possível salvar esse conta. Verifique!']); // Este Número de Título já está cadastrado!'
                            bSkip := true;
                            Exit;
                        end;
                end;
            Close;
        end;

    if (not bAlteracao) and (C_TabelaNotaFiscal.AsString <> '') then
        C_TabelaTitulo.Value := AdicionarStr(Copy(C_TabelaNotaFiscal.AsString, 1, 6), '0', 6);
    SetStatus(C_TabelaVencimento.Value);
    C_TabelaDataAtrasado.Value := DMProjeto.PrimeiroDiaUtil(C_TabelaVencimento.Value, false, true);
end;

procedure TDMA_Pagar.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nSeq := -1;
end;

procedure TDMA_Pagar.C_ContasOperacaoNewRecord(DataSet: TDataSet);
begin
    inherited;
    Dec(nSeq);
    C_ContasOperacaoPDV.Value := DMProjeto.nPDV;
    C_ContasOperacaoContaOperacao.Value := nSeq;
    C_ContasOperacaoValor.Value := C_Tabelavalor.Value - nTotalContas;
    if C_ContasOperacaoValor.Value < 0 then
        C_ContasOperacaoValor.Value := 0;

    if C_ContasOperacao.RecordCount = 0 then
        C_ContasOperacaoConta.Value := DMProjeto.ContaPadrao(25);
end;

procedure TDMA_Pagar.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    nTotalContas := 0;
    C_TabelaEmpresa.Value := DMProjeto.nEmpresaLogada;
    C_TabelaPDV.Value := DMProjeto.nPDV;
    C_TabelaImportacao.Value := 0;
    C_TabelaFaltaPagar.Value := 0;
    C_TabelaTitulo.Value := '';
    C_TabelaNotaFiscal.Value := '';
    C_TabelaCompetencia.Value := DMFinanceiro.Caixa_MovimentoCorrente;
    C_TabelaParcela.Value := 1;
    C_TabelaValor.Value := 0;
    C_TabelaMulta.Value := 0;
    C_TabelaDescontos.Value := 0;
    C_TabelaValorPago.Value := 0;
    C_TabelaFaltaPagar.Value := 0;
    C_TabelaVencimento.Value := DMProjeto.dDataSistema;
    C_TabelaStatus.Value := 1;
    C_TabelaCreditoUtilizado.Value := 0;
    C_TabelaJurosPagos.Value := 0;
    C_TabelaJurosPlano.Value := 0;
    C_TabelaValorDescAntecipado.Value := 0;
    C_TabelaJurosMora.Value := 0;
    C_TabelaEncargosDiversos.Value := 0;
    C_TabelaCreditoGerado.Value := 0;
    C_TabelaOrigem_APagar.Value := 31;
    C_TabelaTipoCobranca.Value := 2;
end;

procedure TDMA_Pagar.AtualizaContas;
begin
    if (C_Tabela.State in [dsEdit, dsInsert]) and (C_ContasOperacao.RecordCount <= 1) then
        begin
            C_ContasOperacao.Edit;
            C_ContasOperacaoValor.Value := Valor;
        end;
end;

function TDMA_Pagar.ContabilidadeAtivado;
begin
    result := DMContabil <> nil;
end;

procedure TDMA_Pagar.ContabilidadeDesativado;
begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
end;

procedure TDMA_Pagar.CriaContabilidade;
begin
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMA_Pagar.Contabiliza;
begin
    DMContabil.ContabilizaParcelasAPagar(DMA_Pagar.C_TabelaID.value, DMA_Pagar.C_Tabela, DMA_Pagar.C_ContasOperacao);
end;

procedure TDMA_Pagar.MostraContabilidade;
begin
    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
end;

procedure TDMA_Pagar.SetStatus(Vencimento: TDateTime);
begin
    if C_TabelaStatus.Value < 50 then
        begin
            if Vencimento > DMProjeto.dDataSistema then
                C_TabelaStatus.Value := 1
            else if Vencimento = DMProjeto.dDataSistema then
                C_TabelaStatus.Value := 2
            else
                C_TabelaStatus.Value := 3;
        end;
end;

procedure TDMA_Pagar.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
    inherited;
    if DMContabil <> nil then
        DMContabil.Iniciar;
end;

procedure TDMA_Pagar.C_ContasOperacaoAfterPost(DataSet: TDataSet);
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

procedure TDMA_Pagar.C_TabelaFORNECEDORChange(Sender: TField);
begin
    inherited;
    DMA_Pagar.C_TabelaContaaPagar.value := DMProjeto.C_LocalizarFavConta.Value;
    if (DMA_Pagar.C_ContasOperacao.recordcount = 0) and
        (DMA_Pagar.C_ContasOperacao.state = dsBrowse) and
        (DMProjeto.C_LocalizarFavContaDespesas.Value <> 0) then
        begin
            DMA_Pagar.C_ContasOperacao.Append;
            DMA_Pagar.C_ContasOperacaoConta.Value := DMProjeto.C_LocalizarFavContaDespesas.Value;
        end
    else if (DMA_Pagar.C_ContasOperacao.recordcount = 1) and (DMProjeto.C_LocalizarFavContaDespesas.Value <> 0) then
        begin
            DMA_Pagar.C_ContasOperacao.edit;
            DMA_Pagar.C_ContasOperacaoConta.Value := DMProjeto.C_LocalizarFavContaDespesas.Value;
        end;
end;

procedure TDMA_Pagar.C_TabelaCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_TabelaDiasEmAtraso.Value := Trunc(DMProjeto.dDataSistemaAtual - C_TabelaVencimento.Value);
    if C_TabelaDiasEmAtraso.Value < 0 then
        C_TabelaDiasEmAtraso.Value := 0;
end;

procedure TDMA_Pagar.C_TabelaINDEXADORValidate(Sender: TField);
begin
    inherited;
    if bAlteracao then
        begin
            DlgMsg.ShowMsg(8051);
            raise Exception.Create('@@');
        end;
end;

end.

