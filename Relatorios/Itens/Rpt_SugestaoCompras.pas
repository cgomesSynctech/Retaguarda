unit Rpt_SugestaoCompras;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_CalcEdit,
    TS_SpinEdit, dxEditor, TS_PopupEdit, TS_PopupFiltrarItens, dxDBTLCl,
    dxGrClms, CheckLst, TS_CheckListBox;

type
    TRptSugestaoCompras = class(TRptPadrao)
        PopupFiltroItens: TTS_PopupFiltrarItens;
        TS_Label1: TTS_Label;
        speGiro: TTS_SpinEdit;
        TS_Label3: TTS_Label;
        EstoqueSeguranca: TTS_CalcEdit;
        C_ConsultaITEM: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaUNIDADE: TStringField;
        C_ConsultaREFERENCIA: TStringField;
        C_ConsultaESTOQUE: TBCDField;
        C_ConsultaPRECOCOMPRA: TFloatField;
        C_ConsultaESTOQUECONSIGSAIDA: TBCDField;
        C_ConsultaESTOQUECONSIGENTRADA: TBCDField;
        C_ConsultaFORNECPREFERENCIA: TIntegerField;
        C_ConsultaicEstoqueMinimo: TCurrencyField;
        C_ConsultaicSaldoProjetado: TCurrencyField;
        C_ConsultaicSugestaoCompra: TCurrencyField;
        C_ConsultaicTotalCompra: TCurrencyField;
        dbgConsultaITEM: TdxDBGridMaskColumn;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
        dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
        dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
        dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
        dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn;
        dbgConsultaESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn;
        dbgConsultaFORNECPREFERENCIA: TdxDBGridMaskColumn;
        dbgConsultaDIASPERIODO: TdxDBGridMaskColumn;
        dbgConsultaPEDIDOCOMPRA: TdxDBGridCurrencyColumn;
        dbgConsultaGIROVENDAS: TdxDBGridCurrencyColumn;
        dbgConsultaicEstoqueMinimo: TdxDBGridColumn;
        dbgConsultaicSaldoProjetado: TdxDBGridColumn;
        dbgConsultaicSugestaoCompra: TdxDBGridColumn;
        dbgConsultaicTotalCompra: TdxDBGridColumn;
        C_ConsultaPEDIDOCOMPRA: TBCDField;
        C_ConsultaDIASPERIODO: TIntegerField;
        btFornecedores: TTS_SpeedButton;
        C_ConsultaGIROVENDAS: TFloatField;
        C_ConsultaDESCFAB: TStringField;
        C_ConsultaFORNECPREF: TStringField;
        dbgConsultaFabricante: TdxDBGridColumn;
        dbgConsultaFornecPref: TdxDBGridColumn;
        TS_Label4: TTS_Label;
        dfTipoOperacao: TTS_PopupEdit;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TipoMovimentoDS: TDataSource;
        clbTipoOperacao: TTS_CheckListBox;
        TS_Label5: TTS_Label;
        TS_PopupEdit1: TTS_PopupEdit;
        Q_Status: TIBQuery;
        P_Status: TDataSetProvider;
        C_Status: TClientDataSet;
        C_StatusSTATUS: TStringField;
        C_StatusDESCRICAO: TStringField;
        C_StatusORDEM: TIntegerField;
        C_StatusDESCRICAO1: TStringField;
        C_StatusDESCRICAO2: TStringField;
        C_StatusDESCRICAO3: TStringField;
        C_StatusDS: TDataSource;
        clbStatus: TTS_CheckListBox;
        cbEstoqueSobreGiro: TTS_CheckBox;
        seEstoqueSobreGiro: TTS_SpinEdit;
        C_ConsultaPED_COMPRA_EM_ABERTO: TBCDField;
        dbgConsultaPED_COMPRA_EM_ABERTO: TdxDBGridColumn;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_ConsultaDATAULTVENDA: TDateField;
        C_ConsultaDATAULTCOMPRA: TDateField;
        C_ConsultaQTDULTCOMPRA: TFloatField;
        C_ConsultaALIQIPI: TBCDField;
        C_ConsultaPRECOVENDA: TBCDField;
        C_ConsultaCUSTOCONTABIL: TFloatField;
        C_ConsultaCUSTOPRODUTO: TFloatField;
        C_ConsultaMC: TFloatField;
        C_ConsultaLUCRO: TFloatField;
        dbgConsultaDATAULTVENDA: TdxDBGridColumn;
        dbgConsultaDATAULTCOMPRA: TdxDBGridColumn;
        dbgConsultaQTDULTCOMPRA: TdxDBGridColumn;
        dbgConsultaAliqIPI: TdxDBGridColumn;
        dbgConsultaPRECOVENDA: TdxDBGridColumn;
        dbgConsultaCUSTOCONTABIL: TdxDBGridColumn;
        dbgConsultaCUSTOPRODUTO: TdxDBGridColumn;
        dbgConsultaMC: TdxDBGridColumn;
        dbgConsultaLucro: TdxDBGridColumn;
    C_ConsultaPRECOCOMPRAIPI: TFloatField;
    dbgConsultaPRECOCOMPRAIPI: TdxDBGridColumn;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure PopupFiltroItensSelecionou(Sender: TObject);
        procedure EstoqueSegurancaChange(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure btFornecedoresClick(Sender: TObject);
        procedure dfTipoOperacaoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dfTipoOperacaoClick(Sender: TObject);
        procedure cbEstoqueSobreGiroChange(Sender: TObject);
    private
        { Private declarations }
        sFornecedores, sNomesFornecedores: string;
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptSugestaoCompras: TRptSugestaoCompras;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TRptSugestaoCompras.Atualizar;
var sPrimeiroNome, sTipoOperacao, sStatus: string;
    i: integer;
    tTempo: tTime;
begin
    tTempo := Time;
    if clbTipoOperacao.Selecionados = '' then
        sTipoOperacao := ''
    else
        begin
            //    sTipoOperacao := ' and s.tipomovimento in ('+clbTipoOperacao.Selecionados+')';
            sTipoOperacao := Replace(clbTipoOperacao.Selecionados, ',', '*,*');
            sTipoOperacao := ' and ''' + '*' + sTipoOperacao + '*' + ''' containing  ''*''||s.tipomovimento||''*'' ';
        end;
    if clbStatus.Selecionados = '' then
        sStatus := ''
    else
        begin
            sStatus := Replace(clbStatus.Selecionados, ',', '');
            sStatus := Replace(clbStatus.Selecionados, '''', '');
            sStatus := ' and ''' + sStatus + ''' containing   si.status ';

        end;
    C_Consulta.Close;
    Q_Consulta.SQL.Text :=
        'select i.item, i.codigo, i.descricao, i.unidade, i.referencia, i.estoque, i.estoqueconsigsaida, i.estoqueconsigentrada, i.fornecpreferencia, i.diasperiodo, i.PED_COMPRA_EM_ABERTO, i.ped_compra_em_aberto as pedidocompra, ' +
        'fb.descricao as DescFab, f.nome as FornecPref, ' +
        '(select coalesce(Sum(si.quantidade),0) ' +
        'from saidasitens si inner join saidas s on si.empresa = s.empresa and si.pdv = s.pdv and si.saida = s.saida ' +
        'where s.data >= :d1 and si.item = i.item and s.situacao = ''N'' and s.tipopadrao in (1,2)) as girovendas, ' +
        '(Select Max( e.Data) from saidas e '+
        'inner join SaidasItens ei on e.empresa = ei.empresa and e.pdv = ei.pdv and e.saida = ei.saida '+
        'where ei.item = i.item and e.situacao = ''N'' and e.tipopadrao in (1,2)) as DataUltVenda, '+
        '(Select Max(e.Data) from Entradas e '+
        'inner join EntradasItens ei on e.empresa = ei.empresa and e.pdv = ei.pdv and e.entrada = ei.entrada '+
        'where ei.item = i.item and e.situacao = ''N'' and e.tipopadrao  = 101) as DataUltCompra, '+

        '(Select first 1 ei.quantidade from Entradas e ' +
        'inner join EntradasItens ei on e.empresa = ei.empresa and e.pdv = ei.pdv and e.entrada = ei.entrada ' +
        'where ei.item = i.item and e.situacao = ''N'' ' +
        'and e.tipopadrao <> 102 order by e.entrada desc) as QtdUltCompra, ' +


        'coalesce(i.ipivenda, 0) as AliqIPI, ' +
        'coalesce(i.precocompra, 0) as PrecoCompra, ' +
        'coalesce(i.precocompra, 0) as PrecoCompraIPI, ' +
        'coalesce(pp.preco, 0) as PrecoVenda, ' +
        'coalesce(i.custocontabil, 0) as CustoContabil, ' +
        'coalesce(i.custoproduto, 0) as CustoProduto, ' +
        'coalesce(pp.preco, 0) - coalesce(i.precocompra, 0) as MC, ' +
        '((coalesce(pp.preco,0) - coalesce(i.precocompra, 0)) / (case when pp.preco is null or pp.preco = 0 then 1 else pp.preco end)) * 100.00 as Lucro ' +
        'from itens i ' +
        'inner join fabricantes fb on fb.fabricante = i.fabricante ' +
        'inner join favorecidos f on f.favorecido = i.fornecpreferencia ' +
        'inner join produtospreco PP on PP.item = I.ITEM AND PP.unidade = I.UNIDADE AND PP.TABELAPRECO = 0 ' +
        'where ';
    if (PopupFiltroItens.getSQL <> '') then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + PopupFiltroItens.getSQL;

    if sFornecedores <> '' then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and i.fornecpreferencia in (' + sFornecedores + ')';

    Q_Consulta.ParamByName('d1').AsDateTime := DMProjeto.GetDataServidor - speGiro.IntValue;

    C_Consulta.Open;
    C_Consulta.Filtered := False;
    if cbEstoqueSobreGiro.Checked then
        begin
            C_Consulta.Filter := '(Estoque >= (girovendas * ' + seEstoqueSobreGiro.Text + ') and Estoque > 0)';
            C_Consulta.Filtered := True;
        end;

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            TS_ReportFilter.Add(replace(PopupFiltroItens.Hint, #13, ' '));
            TS_ReportFilter.Add('Giro: ' + speGiro.Text + ' dias. Margem Segurança %: ' + EstoqueSeguranca.Text);
            if sNomesFornecedores <> '' then
                begin
                    sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesFornecedores, ',', 1));
                    for i := 2 to ContaStrings(sNomesFornecedores, ',') do
                        begin
                            sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesFornecedores, ',', i));
                        end;
                    TS_ReportFilter.Add('Fornecedores: ' + sPrimeiroNome);
                end;
        end;
    dbgConsulta.ExpandirGrupos;
    dbgConsulta.GotoFirst;
    lbDescricaoRelatorio.Caption := 'Tempo da Consulta: ' + TimeToStr(Time - tTempo);
end;

procedure TRptSugestaoCompras.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);

    C_Status.close;
    C_Status.open;
    clbStatus.SetDataSet(C_Status);

    sNomesFornecedores := '';
    sFornecedores := '';
    // Atualizando os valores dos pedidos de compra em aberto...
//    if DlgMsg.ShowMsg(8056) = 100 then
//        begin
//            try
//                Screen.Cursor := crHourGlass;
//                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
//                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
//                Q_SQLReport.Close;
//                Q_SQLReport.SQL.Text := 'execute procedure pp_atualiza_ped_compra_itens ';
//                Q_SQLReport.ExecSQL;
//
//                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
//                    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
//                Screen.Cursor := crDefault;
//                DlgMsg.ShowMsg(8046);
//            except
//                on e: exception do
//                    begin
//                        Screen.Cursor := crDefault;
//                        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
//                            DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
//                        DlgMsg.ShowMsg(50, ['ERRO' + #13#10 + e.message]);
//                    end;
//            end;
//        end;
end;

procedure TRptSugestaoCompras.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptSugestaoCompras.PopupFiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptSugestaoCompras.EstoqueSegurancaChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptSugestaoCompras.C_ConsultaCalcFields(DataSet: TDataSet);
var nParcial: currency;
begin
    inherited;
    DataSet.FieldByName('icEstoqueMinimo').AsCurrency := (DataSet.FieldByName('GIROVENDAS').AsCurrency /
        speGiro.IntValue) *
        (DataSet.FieldByName('DIASPERIODO').AsInteger);
    DataSet.FieldByName('icSaldoProjetado').AsCurrency :=
        DataSet.FieldByName('ESTOQUE').AsCurrency + DataSet.FieldByName('ESTOQUECONSIGSAIDA').AsCurrency
        + DataSet.FieldByName('PEDIDOCOMPRA').AsCurrency - DataSet.FieldByName('ESTOQUECONSIGENTRADA').AsCurrency;
    nParcial := (DataSet.FieldByName('icEstoqueMinimo').AsCurrency * 2)
        + (DataSet.FieldByName('icEstoqueMinimo').AsCurrency -
        iif(DataSet.FieldByName('icSaldoProjetado').AsCurrency < DataSet.FieldByName('icEstoqueMinimo').AsCurrency,
        DataSet.FieldByName('icEstoqueMinimo').AsCurrency, DataSet.FieldByName('icSaldoProjetado').AsCurrency));

    if nParcial > 0 then
        DataSet.FieldByName('icSugestaoCompra').AsCurrency := nParcial + (nParcial * EstoqueSeguranca.Value / 100)
    else
        DataSet.FieldByName('icSugestaoCompra').AsCurrency := 0;

    DataSet.FieldByName('icTotalCompra').AsCurrency := DataSet.FieldByName('icSugestaoCompra').AsCurrency *
        DataSet.FieldByName('PRECOCOMPRA').AsCurrency;
end;

procedure TRptSugestaoCompras.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'ITEM', null)]);
    DMProjeto.CriarForm('FrmItens', Self, True);
end;

procedure TRptSugestaoCompras.btFornecedoresClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sFornecedores, 2]);
            CriarForm('DlgEscolheFavorecidos', Self, true);
            if ExisteParametrosForm then
                begin
                    sFornecedores := GetParametrosForm(0);
                    sNomesFornecedores := GetParametrosForm(1);
                    LimparParametrosForm;
                    //Atualizar;
                end;
            if (sFornecedores = '') then
                btFornecedores.Font.Color := clBlack
            else
                btFornecedores.Font.Color := clRed;
        end;
end;

procedure TRptSugestaoCompras.dfTipoOperacaoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
end;

procedure TRptSugestaoCompras.dfTipoOperacaoClick(Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.Open;

end;

procedure TRptSugestaoCompras.cbEstoqueSobreGiroChange(Sender: TObject);
begin
    inherited;
    seEstoqueSobreGiro.Enabled := cbEstoqueSobreGiro.Checked;
end;

end.

