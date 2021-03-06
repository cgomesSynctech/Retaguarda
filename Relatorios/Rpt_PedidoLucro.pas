unit Rpt_PedidoLucro;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, dxEditor, dxEdLib, TS_DateTimePicker,
    dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent,
    DBClient, Provider, DB, IBCustomDataSet, IBQuery, Placemnt, BTOdeum,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, TS_CheckBox,
    dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
    ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
    TS_MaxPanel, dxDBTLCl, dxGrClms, CheckLst, TS_CheckListBox, TS_PopupEdit,
    TS_RadioButton;

type
    TRptPedidoLucro = class(TRptPadrao)
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        DataF: TTS_DateTimePicker;
        btClientes: TTS_SpeedButton;
        btVendedor: TTS_SpeedButton;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaCLIENTE: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaDESCONTO: TdxDBGridMaskColumn;
        dbgConsultaPERCDESCONTO: TdxDBGridMaskColumn;
        dbgConsultaCUSTO: TdxDBGridMaskColumn;
        dbgConsultaLUCROBRUTO: TdxDBGridMaskColumn;
        dbgConsultaPERCLUCROBRUTO: TdxDBGridMaskColumn;
        dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
        dbgConsultaQUANTITENSVENDIDOS: TdxDBGridMaskColumn;
        dbgConsultaSAIDA: TdxDBGridMaskColumn;
        dbgConsultaVENDATABELATOTAL: TdxDBGridColumn;
        dbgConsultaTOTALPAGO: TdxDBGridColumn;
        dbgConsultaTOTALITENSVENDIDOS: TdxDBGridColumn;
        TS_PopupEdit1: TTS_PopupEdit;
        TS_Label3: TTS_Label;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_TipoMovimentoDS: TDataSource;
        clbTipoOperacao: TTS_CheckListBox;
        C_ConsultaSAIDA: TIntegerField;
        C_ConsultaDATA: TDateField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaCLIENTE: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaVENDEDOR: TStringField;
        C_ConsultaCODVENDEDOR: TIntegerField;
        C_ConsultaCODCLIENTE: TIntegerField;
        C_ConsultaQUANTITENSVENDIDOS: TIntegerField;
        C_ConsultaLUCROBRUTO: TFloatField;
        C_ConsultaPERCLUCROBRUTO: TFloatField;
        C_ConsultaDESCONTO: TFloatField;
        C_ConsultaPERCDESCONTO: TFloatField;
        C_ConsultaTOTALPAGO: TFloatField;
        C_ConsultaTOTALITENSVENDIDOS: TFloatField;
        rbCustoMedio: TTS_RadioButton;
        rbPrecoCompra: TTS_RadioButton;
        rbCustoManual: TTS_RadioButton;
    C_ConsultaVENDATABELATOTAL: TBCDField;
    C_ConsultaCUSTO: TBCDField;
        procedure btClientesClick(Sender: TObject);
        procedure btVendedorClick(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure DataFDateChange(Sender: TObject);
        procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
    private
        sClientes, sNomesClientes, sVendedores, sNomesVendedores: string;
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptPedidoLucro: TRptPedidoLucro;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptPedidoLucro.Atualizar;
var
    sTipoOperacao: string;
begin
    { Felipe - As mudan�as feitas abaixo foram para acelerar o resultado da consulta (04/11/2016) }

    with C_Consulta do
        begin Close;
            // ULTIMOPRECOCOMPRA
            if (rbPrecoCompra.Checked) then
                begin
                    CommandText := 'select s.saida,s.data,s.numero,f.nome as cliente, pg.descricao, ' +
                        '(select f1.nome from favorecidos f1 where f1.favorecido = s.vendedor) as vendedor, ' +
                        //'--v.nome as vendedor, ' +
                        '(select f2.favorecido from favorecidos f2 where f2.favorecido = s.vendedor) as codvendedor, ' +
                        //'--v.favorecido as codvendedor, ' +
                        'f.favorecido as codcliente,count(si.item) as quantitensvendidos, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X.desconto)) from saidas x where x.saida = s.saida) - ' +
                        'sum(coalesce(si.ULTIMOPRECOCOMPRA,0) * coalesce(si.quantidade,0)) as lucrobruto, ' +
                        '(sum(si.preco * si.quantidade) - ' +
                        '(select (abs(X1.desconto)) from saidas x1 where x1.saida = s.saida) - sum(si.ULTIMOPRECOCOMPRA * si.quantidade)) / ' +
                        '(sum(si.preco * si.quantidade) - (select (abs(X2.desconto)) from saidas x2 where x2.saida = s.saida)) * 100 as perclucrobruto , ' +
                        '(select (abs(X3.desconto)) from saidas x3 where x3.saida = s.saida) as desconto, ' +
                        '(select (abs(X4.desconto)) from saidas x4 where x4.saida = s.saida)  / ' +
                        'CASE WHEN SUM(si.precotabela * si.quantidade) IS NULL THEN 1.0 ' +
                        'WHEN SUM(si.precotabela * si.quantidade) = 0 THEN 1.0 ' +
                        'ELSE SUM(si.precotabela * si.quantidade) END * 100 as percdesconto, ' +
                        'cast(sum(si.precotabela * si.quantidade) as numeric (15, 4)) as vendatabelatotal, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X5.desconto))  ' +
                        'from saidas x5 where x5.saida = s.saida) as    totalpago, ' +
                        'cast(sum(coalesce(si.ULTIMOPRECOCOMPRA,0) * coalesce(si.quantidade,0)) as numeric (15, 4)) as custo, ' +
                        'sum(si.quantidade) as totalitensvendidos ' +
                        'from saidas s ' +
                        'inner join saidasitens si on s.saida = si.saida and s.pdv = si.pdv and s.empresa = si.empresa ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join planospagamento pg on s.planopagamento = pg.planopagamento ' +
                        //'--left join favorecidos v on s.vendedor = v.favorecido ' +
                        'Where (s.data >= :datai and s.data <= :dataf) and s.tipopadrao = 2 and s.situacao = ''N''  ';
                end;

            if (rbCustoMedio.Checked) then
                begin
                    //customedio
                    CommandText := 'select s.saida,s.data,s.numero,f.nome as cliente, pg.descricao, ' +
                        '(select f1.nome from favorecidos f1 where f1.favorecido = s.vendedor) as vendedor, ' +
                        //'--v.nome as vendedor, ' +
                        '(select f2.favorecido from favorecidos f2 where f2.favorecido = s.vendedor) as codvendedor, ' +
                        //'--v.favorecido as codvendedor, ' +
                        'f.favorecido as codcliente,count(si.item) as quantitensvendidos, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X.desconto)) from saidas x where x.saida = s.saida) - ' +
                        'sum(si.customedio * si.quantidade) as lucrobruto, (sum(si.preco * si.quantidade) - ' +
                        '(select (abs(X1.desconto)) from saidas x1 where x1.saida = s.saida) - sum(si.customedio * si.quantidade)) / ' +
                        '(sum(si.preco * si.quantidade) - (select (abs(X2.desconto)) from saidas x2 where x2.saida = s.saida)) * 100 as perclucrobruto , ' +
                        '(select (abs(X3.desconto)) from saidas x3 where x3.saida = s.saida) as desconto, ' +
                        '(select (abs(X4.desconto)) from saidas x4 where x4.saida = s.saida)  / ' +
                        'CASE WHEN SUM(si.precotabela * si.quantidade) IS NULL THEN 1.0 ' +
                        'WHEN SUM(si.precotabela * si.quantidade) = 0 THEN 1.0 ' +
                        'ELSE SUM(si.precotabela * si.quantidade) END * 100 as percdesconto, ' +
                        'cast(sum(si.precotabela * si.quantidade) as numeric (15, 4)) as vendatabelatotal, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X5.desconto))  ' +
                        'from saidas x5 where x5.saida = s.saida) as totalpago, ' +
                        'cast(sum(si.customedio * si.quantidade) as numeric (15, 4)) as custo, ' +
                        'sum(si.quantidade) as totalitensvendidos ' +
                        'from saidas s ' +
                        'inner join saidasitens si on s.saida = si.saida and s.pdv = si.pdv and s.empresa = si.empresa ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join planospagamento pg on s.planopagamento = pg.planopagamento ' +
                        //'--left join favorecidos v on s.vendedor = v.favorecido ' +
                        'Where (s.data >= :datai and s.data <= :dataf) and s.tipopadrao = 2 and s.situacao = ''N''  ';
                end;

            if (rbCustoManual.Checked) then
                begin
                    //Custo Manual
                    CommandText := 'select s.saida, s.data, s.numero, f.nome as cliente, pg.descricao, ' +
                        '(select f1.nome from favorecidos f1 where f1.favorecido = s.vendedor) as vendedor, ' +
                        //'--v.nome as vendedor, ' +
                        '(select f2.favorecido from favorecidos f2 where f2.favorecido = s.vendedor) as codvendedor, ' +
                        //'--v.favorecido as codvendedor, ' +
                        'f.favorecido as codcliente,count(si.item) as quantitensvendidos, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X.desconto)) from saidas x where x.saida = s.saida) - ' +
                        'sum(i.customanual * si.quantidade) as lucrobruto, (sum(si.preco * si.quantidade) - ' +
                        '(select (abs(X1.desconto)) from saidas x1 where x1.saida = s.saida) - sum(i.customanual * si.quantidade)) / ' +
                        '(sum(si.preco * si.quantidade) - (select (abs(X2.desconto)) from saidas x2 where x2.saida = s.saida)) * 100 as perclucrobruto , ' +
                        '(select (abs(X3.desconto)) from saidas x3 where x3.saida = s.saida) as desconto, ' +
                        '(select (abs(X4.desconto)) from saidas x4 where x4.saida = s.saida)  / ' +
                        'CASE WHEN SUM(si.precotabela * si.quantidade) IS NULL THEN 1.0 ' +
                        'WHEN SUM(si.precotabela * si.quantidade) = 0 THEN 1.0 ' +
                        'ELSE SUM(si.precotabela * si.quantidade) END * 100 as percdesconto, ' +
                        'cast(sum(si.precotabela * si.quantidade) as numeric (15, 4)) as vendatabelatotal, ' +
                        'sum(si.preco * si.quantidade) - (select (abs(X5.desconto))  ' +
                        'from saidas x5 where x5.saida = s.saida) as    totalpago, ' +
                        'cast(sum(i.customanual * si.quantidade) as numeric (15, 4)) as custo, ' +
                        'sum(si.quantidade) as totalitensvendidos ' +
                        'from saidas s ' +
                        'inner join saidasitens si on s.saida = si.saida and s.pdv = si.pdv and s.empresa = si.empresa ' +
                        'inner join itens i on i.item = si.item ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join planospagamento pg on s.planopagamento = pg.planopagamento ' +
                        //'--left join favorecidos v on s.vendedor = v.favorecido ' +
                        'Where (s.data >= :datai and s.data <= :dataf) and s.tipopadrao = 2 and s.situacao = ''N''  ';
                end;

            if sClientes <> '' then
                begin
                    CommandText := CommandText + ' and s.favorecido in (' + sClientes + ')';
                end;

            if sVendedores <> '' then
                begin
                    CommandText := CommandText + ' and s.vendedor in (' + sVendedores + ')';
                end;

            sTipoOperacao := clbTipoOperacao.Selecionados;
            if (sTipoOperacao <> '') then
                begin
                    CommandText := CommandText + 'and s.tipomovimento in (' + sTipoOperacao + ')';
                end;

            {
            CommandText := CommandText + ' Group by s.saida, s.data, s.numero, f.nome, pg.descricao, s.totalitens, ' +
                's.total, s.desconto, v.nome, s.tipopadrao, v.favorecido, f.favorecido ';
            }

            CommandText := CommandText + ' Group by s.saida, s.data, s.numero, f.nome, pg.descricao, s.vendedor, s.totalitens, ' +
                's.total, s.desconto, s.tipopadrao, f.favorecido ';

            CommandText := CommandText + ' Order by s.data';
            Params.ParamByName('DataI').AsDateTime := DataI.Date;
            Params.ParamByName('DataF').AsDateTime := DataF.Date;
            Open;
            FormsComponent.Caption := 'Pedidos com Lucro no Per�odo de: ' + DateTostr(DataI.Date) + ' a ' +
                DateTostr(DataF.Date);
        end;
end;

procedure TRptPedidoLucro.btClientesClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sClientes, 1]);
            CriarForm('DlgEscolheFavorecidos', Self, true);
            if ExisteParametrosForm then
                begin
                    sClientes := GetParametrosForm(0);
                    sNomesClientes := GetParametrosForm(1);
                    LimparParametrosForm;
                    //Atualizar;
                end;
        end;
end;

procedure TRptPedidoLucro.btVendedorClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sVendedores, 3]);
            CriarForm('DlgEscolheFavorecidos', Self, true);
            if ExisteParametrosForm then
                begin
                    sVendedores := GetParametrosForm(0);
                    sNomesVendedores := GetParametrosForm(1);
                    LimparParametrosForm;
                    //Atualizar;
                end;
        end;
end;

procedure TRptPedidoLucro.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptPedidoLucro.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    if dbgConsulta.TS_SelectedColumn = 'CLIENTE' then
        begin
            DMProjeto.SetParametrosForm([C_ConsultaCODCLIENTE.Value]);
            DMProjeto.CriarForm('FrmClientes', self, true);
        end
    else if dbgConsulta.TS_SelectedColumn = 'VENDEDOR' then
        begin
            if C_ConsultaCodVendedor.Value > 0 then
                begin
                    DMProjeto.SetParametrosForm([C_ConsultaCODVENDEDOR.Value]);
                    DMProjeto.CriarForm('FrmFuncionarios', self, true);
                end;
        end
    else
        begin
            DMProjeto.SetParametrosForm([C_ConsultaSAIDA.Value]);
            DMProjeto.CriarForm('FrmInvoices', self, true);
        end;
end;

procedure TRptPedidoLucro.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then DataI.Date := (DMProjeto.dDataSistema);
    if DataF.GetEditingText = '' then DataF.Date := (DMProjeto.dDataSistema);

    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
    //Atualizar;
end;

procedure TRptPedidoLucro.DataIDateChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptPedidoLucro.DataFDateChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptPedidoLucro.TS_PopupEdit1CloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
    //Atualizar;
end;

end.

