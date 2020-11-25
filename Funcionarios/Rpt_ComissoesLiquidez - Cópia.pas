unit Rpt_ComissoesLiquidez;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
    DB, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
    BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
    dxEdLib, TS_CheckBox, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
    ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
    TS_MaxPanel, dxEditor, TS_DateTimePicker;

type
    TRptComissoesLiquidez = class(TRptPadrao)
        C_ConsultaFUNCIONARIO: TStringField;
        C_ConsultaCOMPETENCIA: TDateField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaTITULO: TStringField;
        C_ConsultaDATA: TDateField;
        C_ConsultaNOME: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        dbgConsultaFUNCIONARIO: TdxDBGridMaskColumn;
        dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
        dbgConsultaRECEBIMENTO: TdxDBGridDateColumn;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaTITULO: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaPERCCOMISSAO: TdxDBGridCurrencyColumn;
        dbgConsultaVALORCOMISSAO: TdxDBGridCurrencyColumn;
        dtInicio: TTS_DateTimePicker;
        dtFim: TTS_DateTimePicker;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn;
        dbgConsultaVALORVENDA: TdxDBGridCurrencyColumn;
        dbgConsultaJARECEBIDO: TdxDBGridCurrencyColumn;
        cbCompetencia: TTS_CheckBox;
        dtCompetencia: TTS_DateTimePicker;
        C_ConsultaDATAPAGO: TDateField;
        C_ConsultaVENCIMENTO: TDateField;
        dbgConsultaDATAPAGO: TdxDBGridColumn;
        C_ConsultaPERCCOMISSAO: TBCDField;
        C_ConsultaVALORPAGO: TBCDField;
        C_ConsultaVALORVENDA: TBCDField;
        C_ConsultaJARECEBIDO: TBCDField;
        C_ConsultaVALORCOMISSAO: TBCDField;
        TS_Label3: TTS_Label;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure cbCompetenciaChange(Sender: TObject);
        procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
    private
        { Private declarations }
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptComissoesLiquidez: TRptComissoesLiquidez;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TRptComissoesLiquidez.Atualizar;
var dCompetencia: TDateTime;
    totalizarChequesLiquidados: boolean;
begin
    dCompetencia := 2;
    totalizarChequesLiquidados := DMProjeto.Parametro('TotalizarChequesLiquidados') = 'S';

    if cbCompetencia.Checked then
        dCompetencia := dtCompetencia.Date;

    with Q_Consulta do
        begin
            Close;
            if (totalizarChequesLiquidados) then
                begin
                    Q_Consulta.SQL.Text := 'select u.nome as Funcionario, c.data as Competencia, t.datapago as DataPago ,  t.vencimento, ' +
                        's.numero, t.titulo, s.data, f.nome, p.descricao, c.perccomissao, ' +
                        //'--t.valorpago, ' +
                        //'/* O valor pago so deve ter cheques na sua soma quando o mesmo estiver com status Liquidado */ ' +
                        'sum(dt.valor) as valorpago, ' +
                        'c.valorvenda, ' +
                        'Max(coalesce((select sum(x.valorpago) from titulosareceber x where x.venda = s.saida and x.datapago < t.datapago),0)) as JaRecebido, ' +
                        //'--sum(c.valorcomissao ) as valorcomissao ' +
                        //'--sum(cast(((c.perccomissao * t.valorpago ) / 100) as Decimal(15,3))) as valorcomissao ' +
                        //'/* O valor da comissão so deve ter cheques na sua soma quando o mesmo estiver com status Liquidado */ ' +
                        'sum(cast(((c.perccomissao * dt.valor) / 100) as Decimal(15,3))) as valorcomissao ' +
                        'from comissoes c ' +
                        'inner join saidas s on c.venda = s.saida ' +
                        'inner join planospagamento p on p.planopagamento = s.planopagamento ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join favorecidos u on u.favorecido = c.funcionario ' +
                        'left Join titulosareceber t on t.venda = s.saida ' +
                        'inner join depositostitulos dt on t.id = dt.titulo ' +
                        'inner join depositosdoc dd on dt.deposito = dd.deposito ' +
                        'where (dd.status > 49 and dd.status < 62 or (dd.formapagamento not in (2, 3))) ' +
                        // linha abaixo add Cesar .. na base do cliente estava aparecendo os recebimentos cancelados, mesmo alterarndo a clausula acima estava aparecendo,
                        //então forcei com a clausula abaixo 
                        'and dd.status <> 70 '+
                        'and dt.data >= :datai and dt.data <= :dataf and c.data >= :datac ' +
                        { Felipe - Comentado linha abaixo a pedido de Marcos, pois foi verificado que a condição está incorreta. (26/10/2016) }
                        //'--and t.datapago >= :datai and t.datapago <= :dataf and c.data >= :datac ' +
                        'group by u.nome , c.data , t.datapago, t.vencimento , s.numero, t.titulo, s.data,  ' +
                        'f.nome, p.descricao, c.perccomissao, t.valorpago, c.valorvenda ' +
                        //'-- having sum(cast(((c.perccomissao * t.valorpago ) / 100) as Decimal(15,3))) > 0 ' +
                        ' having sum(cast(((c.perccomissao * dt.valor) / 100) as Decimal(15,3))) > 0 ' +
                        'union ' +
                        'select u.nome as Funcionario, c.data as Competencia,t.datapago as DataPago, t.vencimento, ' +
                        's.numero, t.titulo, s.data, f.nome, p.descricao, c.perccomissao,  t.valorpago, t.valor, ' +
                        'Max(c.recebidovenda) as JaRecebido, ' +
                        'Sum(c.recebidovenda) as valorcomissao ' +
                        'from comissoes c ' +
                        'inner join saidas s on c.venda = s.saida ' +
                        'inner join planospagamento p on p.planopagamento = s.planopagamento ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join favorecidos u on u.favorecido = c.funcionario ' +
                        'left Join titulosareceber t on t.venda = s.saida ' +
                        'where c.data >= :datai and c.data <= :dataf and s.planopagamento > 1 and t.datapago is null ' +
                        'group by u.nome , c.data , t.datapago ,  t.vencimento,  s.numero, t.titulo, s.data, f.nome, p.descricao, c.perccomissao, t.valorpago, t.valor ' +
                        'having  sum(c.recebidovenda) = 0';
                end
            else
                begin
                    Q_Consulta.SQL.Text := 'select u.nome as Funcionario, c.data as Competencia, t.datapago as DataPago , t.vencimento, ' +
                        's.numero, t.titulo, s.data, f.nome, p.descricao, c.perccomissao, ' +
                        //'--t.valorpago, ' +
                        //'/* O valor pago deve ser obtido pela tabela de DepositosDoc que registra cada pagamento feito em uma tupla (Felipe 26/10/2016) */ ' +
                        'sum(dt.valor) as valorpago, ' +
                        'c.valorvenda, ' +
                        'Max( coalesce( (select sum(x.valorpago) from titulosareceber x where x.venda = s.saida and x.datapago < t.datapago),0)) as JaRecebido, ' +
                        //'--sum(c.valorcomissao) as valorcomissao ' +
                        //'--sum( cast(((c.perccomissao * t.valorpago) / 100) as Decimal(15, 3))) as valorcomissao ' +
                        //'/* O valor pago deve ser obtido pela tabela de DepositosDoc que registra cada pagamento feito em uma tupla (Felipe 26/10/2016) */ ' +
                        'sum(cast(((c.perccomissao * dt.valor) / 100) as Decimal(15, 3))) as valorcomissao ' +
                        'from comissoes c inner join saidas s on c.venda = s.saida ' +
                        'inner join planospagamento p on p.planopagamento = s.planopagamento ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join favorecidos u on u.favorecido = c.funcionario ' +
                        'left Join titulosareceber t on t.venda = s.saida ' +
                        'inner join depositostitulos dt on t.id = dt.titulo ' +
                        'where dt.data >= :datai and dt.data <= :dataf and c.data >= :datac ' +
                        //'--where t.datapago >= :datai and t.datapago <= :dataf and c.data >= :datac ' +
                        'group by u.nome , c.data , t.datapago, t.vencimento , s.numero, ' +
                        't.titulo, s.data, f.nome, p.descricao, c.perccomissao, t.valorpago, c.valorvenda ' +
                        //'--having  sum( cast(((c.perccomissao * t.valorpago ) / 100) as Decimal(15,3))) > 0 ' +
                        'having sum(cast(((c.perccomissao * dt.valor) / 100) as Decimal(15,3))) > 0 ' +
                        'union ' +
                        'select u.nome as Funcionario, c.data as Competencia,t.datapago as DataPago , ' +
                        't.vencimento, s.numero, t.titulo, s.data, f.nome, p.descricao, ' +
                        'c.perccomissao, t.valorpago, t.valor, Max(c.recebidovenda) as JaRecebido, ' +
                        'Sum(c.recebidovenda) as valorcomissao ' +
                        'from comissoes c ' +
                        'inner join saidas s on c.venda = s.saida ' +
                        'inner join planospagamento p on p.planopagamento = s.planopagamento ' +
                        'inner join favorecidos f on s.favorecido = f.favorecido ' +
                        'inner join favorecidos u on u.favorecido = c.funcionario ' +
                        'left Join titulosareceber t on t.venda = s.saida ' +
                        'where c.data >= :datai and c.data <= :dataf and s.planopagamento > 1 and t.datapago is null ' +
                        'group by u.nome , c.data , t.datapago ,  t.vencimento,  s.numero, ' +
                        't.titulo, s.data, f.nome, p.descricao, c.perccomissao, t.valorpago, t.valor ' +
                        'having  sum(c.recebidovenda) = 0';
                end;

            ParambyName('DataI').Value := DtInicio.Date;
            ParambyName('DataF').Value := DtFim.Date;
            ParambyName('DataC').Value := dCompetencia;
        end;
    C_Consulta.Close;
    C_Consulta.FetchParams;
    C_Consulta.Open;
end;

procedure TRptComissoesLiquidez.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptComissoesLiquidez.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    dtInicio.Date := Funcoes.FirstMonthDay(DMPRojeto.dDataSistema);
    dtFim.Date := Funcoes.LastMonthDay(DMPRojeto.dDataSistema);
end;

procedure TRptComissoesLiquidez.cbCompetenciaChange(Sender: TObject);
begin
    inherited;
    dtCompetencia.Enabled := cbCompetencia.Checked;
end;

procedure TRptComissoesLiquidez.dbgConsultaCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if (dbgConsulta.GetFieldValue(ANode, 'VALORCOMISSAO', 0) = 0) then
        begin
            AColor := clMoneyGreen;
        end;
end;

end.

