unit Rpt_EntradasItensIdentificados;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
    TS_DateTimePicker, CheckLst, TS_CheckListBox, TS_PopupEdit, dxDBTLCl,
    dxGrClms;

type
    TRptEntradasItensIdentificados = class(TRptPadrao)
        C_ConsultaENTRADA: TIntegerField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaDATA: TDateField;
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaNOMEFAVORECIDO: TStringField;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        C_ConsultaTIPOMOVIMENTO: TIntegerField;
        C_ConsultaOPERACAO: TStringField;
        C_ConsultaUSUARIO: TStringField;
        C_ConsultaTIPOPADRAO: TIntegerField;
        C_ConsultaPLANOPAGAMENTO: TStringField;
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        DataF: TTS_DateTimePicker;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_TipoMovimentoDS: TDataSource;
        TS_Label3: TTS_Label;
        clbTipoOperacao: TTS_CheckListBox;
        btFornecedores: TTS_SpeedButton;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
        dbgConsultaTOTALITENS: TdxDBGridMaskColumn;
        dbgConsultaDESCONTO: TdxDBGridMaskColumn;
        dbgConsultaTOTAL: TdxDBGridMaskColumn;
        dbgConsultaOPERACAO: TdxDBGridMaskColumn;
        dbgConsultaUSUARIO: TdxDBGridMaskColumn;
        dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn;
        ppeTipoOperacao: TTS_PopupEdit;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaDESCONTO: TBCDField;
    C_ConsultaTOTAL: TFloatField;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure Atualizar();
        procedure btAtualizarClick(Sender: TObject);
        procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure btFornecedoresClick(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
    private
        sFavorecidos, sNomesFavorecidos: string;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RptEntradasItensIdentificados: TRptEntradasItensIdentificados;

implementation

{$R *.dfm}

uses DM_Projeto, TDM_Projeto;

procedure TRptEntradasItensIdentificados.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.Close;
    C_TiposMovimentos.Open;

    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    clbTipoOperacao.SetSelecionados('4');

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;

    if DataI.GetEditingText = '' then
        DataI.Date := (DMProjeto.getDataServidor);
    if DataF.GetEditingText = '' then
        DataF.Date := (DMProjeto.getDataServidor);

    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
end;

procedure TRptEntradasItensIdentificados.Atualizar();
var
    sTipoOperacao: string;
begin
    sTipoOperacao := clbTipoOperacao.Selecionados;
    if sTipoOperacao = '' then
        begin
            Application.MessageBox('Nenhuma seleção foi feita em Tipos Movimento.', 'Aviso', MB_ICONEXCLAMATION);
            ppeTipoOperacao.DroppedDown := True;
            Exit;
        end;

    C_Consulta.Close;

    Q_Consulta.SQL.Text := 'select distinct e.entrada, e.numero, e.data, e.favorecido, coalesce(fa.nome, ''ND'') as nomefavorecido, ' +
        ' fa.tipofavorecido, e.totalitens, (e.desconto * -1) as desconto, ' +
        ' e.total, tm.tipomovimento, tm.descricao as operacao, e.usuario, e.tipopadrao, ' +
        ' coalesce(p.descricao, ''Não Definido'') as planopagamento ' +
        ' from entradas e inner join transacoesitensident ti on e.entrada = ti.entrada ' +
        ' left join favorecidos fa on e.favorecido = fa.favorecido ' +
        ' left join planospagamento p on e.planopagamento = p.planopagamento ' +
        ' inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimento ' +
        ' where e.data >= :datai and e.data <= :dataf ';

    if sFavorecidos <> '' then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and e.favorecido in (' + sFavorecidos + ')';
    if sTipoOperacao <> '' then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and e.tipomovimento in (' + sTipoOperacao + ')';

    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' order by e.data asc, e.numero asc ';

    Q_Consulta.ParamByName('datai').AsDateTime := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDateTime := DataF.Date;

    C_Consulta.Open;

    FormsComponent.Caption := 'Entrada (Produtos Identificados) no Período de : ' + DateToStr(DataI.Date) + ' a ' + DateToStr(DataF.Date);

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if sTipoOperacao <> '' then
                TS_ReportFilter.Add('Tipo Operação:' + clbTipoOperacao.Selecionados(True));
            GotoFirst;
        end;

end;

procedure TRptEntradasItensIdentificados.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptEntradasItensIdentificados.ppeTipoOperacaoCloseUp(
    Sender: TObject; var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(True);
    Accept := True;
end;

procedure TRptEntradasItensIdentificados.btFornecedoresClick(
    Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sFavorecidos, 2]);
            CriarForm('DlgEscolheFavorecidos', Self, True);

            if ExisteParametrosForm then
                begin
                    sFavorecidos := GetParametrosForm(0);
                    sNomesFavorecidos := GetParametrosForm(1);
                    LimparParametrosForm;
                end;
        end;
end;

procedure TRptEntradasItensIdentificados.DataIDateChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptEntradasItensIdentificados.dbgConsultaDblClick(
    Sender: TObject);
var
    sTela: string;
begin
    inherited;

    if (dbgConsulta.TS_SelectedColumn = 'NUMERO') or (dbgConsulta.TS_SelectedColumn = 'TOTAL') then
        begin
            case C_ConsultaTIPOPADRAO.AsInteger of
                101: sTela := 'FrmCompras';
                105, 150: sTela := 'FrmOutrasEntradas';
                106: sTela := 'FrmDevolucoesClientes';
            end;

            DMProjeto.SetParametrosForm([C_ConsultaENTRADA.Value, null, C_ConsultaTIPOMOVIMENTO.Value]);
            DMProjeto.CriarForm(sTela, Self, True);
        end
        else
            if dbgConsulta.TS_SelectedColumn = 'NOMEFAVORECIDO' then
            begin
                DMProjeto.SetParametrosForm([C_ConsultaFAVORECIDO.Value]);
                DMProjeto.CriarForm('FrmFornecedores', Self, True);
            end;
end;

end.

