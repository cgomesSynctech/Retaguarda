unit Rpt_SalesOrdersLicitacao;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
    dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet, IBQuery,
    Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    dxCntner, dxExEdtr, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
    TS_DateTimePicker, TS_PopupFiltrarItens, TS_PopupEdit, CheckLst,
    TS_CheckListBox, dxDBTLCl, dxGrClms;

type
    TRptSalesOrdersLicitacao = class(TRptPadrao)
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        DataF: TTS_DateTimePicker;
        C_ConsultaSAIDA: TIntegerField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaDATA: TDateField;
        C_ConsultaCLIENTE: TIntegerField;
        C_ConsultaNOME: TStringField;
        C_ConsultaVENDEDOR: TStringField;
        C_ConsultaSAIDAITEM: TIntegerField;
        C_ConsultaITEM: TIntegerField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaMESANO: TStringField;
        btClientes: TTS_SpeedButton;
        cbCanceladas: TTS_CheckBox;
        TS_Label4: TTS_Label;
        ppeTipoOperacao: TTS_PopupEdit;
        clbTipoOperacao: TTS_CheckListBox;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_TipoMovimentoDS: TDataSource;
    dbgConsultaNumero: TdxDBGridMaskColumn;
    dbgConsultaData: TdxDBGridDateColumn;
    dbgConsultaCodigoItem: TdxDBGridMaskColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaDescricaoItem: TdxDBGridMaskColumn;
    dbgConsultaPrecoItem: TdxDBGridMaskColumn;
    dbgConsultaPrecoLicitacao: TdxDBGridMaskColumn;
    dbgConsultaSubTotalItem: TdxDBGridMaskColumn;
    dbgConsultaSubTotalLicitacao: TdxDBGridMaskColumn;
    dbgConsultaQuantidade: TdxDBGridCurrencyColumn;
    dbgConsultaNomeCliente: TdxDBGridMaskColumn;
    dbgConsultaVendedor: TdxDBGridMaskColumn;
    dbgConsultaMesAno: TdxDBGridMaskColumn;
    C_ConsultaDIFERENCA: TBCDField;
    dbgConsultaPercentualLucro: TdxDBGridMaskColumn;
    dbgConsultaDiferenca: TdxDBGridMaskColumn;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaPRECOCUSTOLICITACAO: TFloatField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaSUBTOTALITEMLICITACAO: TBCDField;
    C_ConsultaPERCENTUALLUCRO: TBCDField;
        procedure AtualizarConsulta();
        procedure btClientesClick(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
    private
        { Private declarations }
        sClientes, sNomesClientes: string;
    public
        { Public declarations }
    end;

var
    RptSalesOrdersLicitacao: TRptSalesOrdersLicitacao;

implementation

{$R *.dfm}

uses DM_Projeto, TDM_Projeto, Form_Padrao, Funcoes;

procedure TRptSalesOrdersLicitacao.AtualizarConsulta();
var
    sTipoOperacao, sSituacao: string;
begin
    sTipoOperacao := clbTipoOperacao.Selecionados;

    if sTipoOperacao = '' then
        begin
            Application.MessageBox('Nenhuma sele��o foi feita em Tipos Movimento.', 'Aviso', MB_ICONEXCLAMATION);
            ppeTipoOperacao.DroppedDown := True;
            Exit;
        end;

    sSituacao := ' and s.situacao = ' + IIF(cbCanceladas.Checked, '''C''', '''N''');

    with C_Consulta do
    begin
        Close;
        CommandText :=  ' select s.saida, s.numero, s.data, f.favorecido as cliente, f.nome, v.nome as vendedor, s.totalitens, ' +
                        ' s.total, (s.desconto * -1) as desconto, ss.saidaitem, ss.item, ii.codigo, ss.descricao, ss.preco, ' +
                        ' coalesce(ss.precocustolicitacao, 0) as precocustolicitacao, ss.quantidade, ss.subtotalitem, ' +
                        ' coalesce(cast(ss.precocustolicitacao * ss.quantidade as numeric(15,2)), 0) as subtotalitemlicitacao, ' +
                        ' case when ss.precocustolicitacao > 0 then ' +
                        ' coalesce(cast((ss.subtotalitem / (ss.precocustolicitacao * ss.quantidade) * 100) - 100 as numeric(15,2)), ''0'') else ' +
                        ' ''0'' end as percentuallucro, ' +
                        ' coalesce(cast(ss.subtotalitem - (ss.precocustolicitacao * ss.quantidade) as numeric(15,2)), 0) as diferenca, ' +
                        ' case when strlen(extract(month from s.data)) = 2 then ' +
                        ' extract(month from s.data) || ''/'' || extract(year from s.data) ' +
                        ' else ''0'' || extract(month from s.data) || ''/'' || extract(year from s.data) end as MesAno ' +
                        ' from saidas s left join favorecidos f on s.favorecido = f.favorecido ' +
                        ' left join favorecidos v on s.vendedor = f.favorecido ' +
                        ' inner join saidasitens ss on s.saida = ss.saida and s.empresa = ss.empresa and s.pdv = ss.pdv ' +
                        ' inner join itens ii on ss.item = ii.item ' +
                        ' where (s.tipopadrao = 2) and (s.data >= :datai and s.data <= :dataf) ';

        if sClientes <> '' then
            CommandText := CommandText + ' and s.favorecido in (' + sClientes + ')';
        if sTipoOperacao <> '' then
            CommandText := CommandText + ' and s.tipomovimento in (' + sTipoOperacao + ')';

        CommandText := CommandText + sSituacao + ' order by s.data asc, s.numero asc';

        Params.ParamByName('datai').AsDateTime := DataI.Date;
        Params.ParamByName('dataf').AsDateTime := DataF.Date;

        Open;
    end;
    
    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if sTipoOperacao <> '' then
                TS_ReportFilter.Add('Tipo Opera��o:' + clbTipoOperacao.Selecionados(True));
            FullExpand;
            GotoFirst;
        end;
end;

procedure TRptSalesOrdersLicitacao.btClientesClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sClientes, 1]);
            CriarForm('DlgEscolheFavorecidos', Self, True);
            if ExisteParametrosForm then
                begin
                    sClientes := GetParametrosForm(0);
                    sNomesClientes := GetParametrosForm(1);
                    LimparParametrosForm;
                end;

        end;
end;

procedure TRptSalesOrdersLicitacao.btAtualizarClick(Sender: TObject);
begin
    inherited;
    AtualizarConsulta;
end;

procedure TRptSalesOrdersLicitacao.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.Close;
    C_TiposMovimentos.Open;

    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    clbTipoOperacao.SetSelecionados('2');

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then
        DataI.Date := (DMProjeto.getDataServidor);
    if DataF.GetEditingText = '' then
        DataF.Date := (DMProjeto.getDataServidor);

    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
end;

procedure TRptSalesOrdersLicitacao.DataIDateChange(Sender: TObject);
begin
    inherited;
    //AtualizarConsulta;
end;

procedure TRptSalesOrdersLicitacao.ppeTipoOperacaoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(True);
    Accept := True;
end;



end.

