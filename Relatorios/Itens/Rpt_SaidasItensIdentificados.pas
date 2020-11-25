unit Rpt_SaidasItensIdentificados;

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
    TS_DateTimePicker, TS_PopupEdit, dxDBTLCl, dxGrClms, CheckLst,
    TS_CheckListBox;

type
    TRptSaidasItensIdentificados = class(TRptPadrao)
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_TipoMovimentoDS: TDataSource;
        btClientes: TTS_SpeedButton;
        clbTipoOperacao: TTS_CheckListBox;
        ppeTipoOperacao: TTS_PopupEdit;
        TS_Label3: TTS_Label;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaCLIENTE: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaTOTALITENS: TdxDBGridMaskColumn;
        dbgConsultaDESCONTO: TdxDBGridMaskColumn;
        dbgConsultaTOTAL: TdxDBGridMaskColumn;
        dbgConsultaOPERACAO: TdxDBGridMaskColumn;
        dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn;
        C_ConsultaSAIDA: TIntegerField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaDATA: TDateField;
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaNOMEFAVORECIDO: TStringField;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        C_ConsultaTIPOMOVIMENTO: TIntegerField;
        C_ConsultaOPERACAO: TStringField;
        C_ConsultaTIPOPADRAO: TIntegerField;
        C_ConsultaPLANOPAGAMENTO: TStringField;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaTOTAL: TFloatField;
        procedure btClientesClick(Sender: TObject);
        procedure Atualizar();
        procedure btAtualizarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dbgConsultaDblClick(Sender: TObject);
    private
        sFavorecidos, sNomesFavorecidos: string;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RptSaidasItensIdentificados: TRptSaidasItensIdentificados;

implementation

{$R *.dfm}

uses DM_Projeto, TDM_Projeto, Form_Padrao, Funcoes;

procedure TRptSaidasItensIdentificados.btClientesClick(
    Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sFavorecidos, 1]);
            CriarForm('DlgEscolheFavorecidos', Self, True);
            if ExisteParametrosForm then
                begin
                    sFavorecidos := GetParametrosForm(0);
                    sNomesFavorecidos := GetParametrosForm(1);
                    LimparParametrosForm;
                end;
        end;
end;

procedure TRptSaidasItensIdentificados.Atualizar();
var
    sTipoOperacao: string;
begin
    sTipoOperacao := clbTipoOperacao.Selecionados;
    if sTipoOperacao = '' then
        begin
            Application.MessageBox('Nenhuma sele��o foi feita em Tipos Movimento.', 'Aviso', MB_ICONEXCLAMATION);
            ppeTipoOperacao.DroppedDown := True;
            Exit;
        end;

    C_Consulta.Close;

    Q_Consulta.SQL.Text := 'select distinct s.saida, s.numero, s.data, s.favorecido, coalesce(fa.nome, ''ND'') as nomefavorecido, fa.tipofavorecido, ' +
        ' s.totalitens, (s.desconto * -1) as desconto, ' +
        ' s.total, tm.tipomovimento, tm.descricao as operacao, s.tipopadrao, coalesce(p.descricao, ''N�o Definido'') as planopagamento ' +
        ' from saidas s inner join transacoesitensident ti on s.saida = ti.saida ' +
        ' left join favorecidos fa on s.favorecido = fa.favorecido ' +
        ' left join planospagamento p on s.planopagamento = p.planopagamento ' +
        ' inner join tiposmovimento tm on s.tipomovimento = tm.tipomovimento ' +
        ' where s.data >= :datai and s.data <= :dataf ';

    if sFavorecidos <> '' then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.favorecido in (' + sFavorecidos + ')';
    if sTipoOperacao <> '' then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.tipomovimento in (' + sTipoOperacao + ')';

    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' order by s.data asc, s.numero asc ';

    Q_Consulta.ParamByName('datai').AsDateTime := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDateTime := DataF.Date;

    C_Consulta.Open;

    FormsComponent.Caption := 'Sa�da (Produtos Identificados) no Per�odo de: ' + DateToStr(DataI.Date) + ' a ' + DateToStr(DataF.Date);

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if sTipoOperacao <> '' then
                TS_ReportFilter.Add('Tipo Opera��o:' + clbTipoOperacao.Selecionados(True));
            GotoFirst;
        end;

end;

procedure TRptSaidasItensIdentificados.btAtualizarClick(
    Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptSaidasItensIdentificados.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.Close;
    C_TiposMovimentos.Open;

    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    clbTipoOperacao.SetSelecionados('1, 7, 18');

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then
        DataI.Date := (DMProjeto.getDataServidor);
    if DataF.GetEditingText = '' then
        DataF.Date := (DMProjeto.getDataServidor);
    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
end;

procedure TRptSaidasItensIdentificados.DataIDateChange(
    Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptSaidasItensIdentificados.ppeTipoOperacaoCloseUp(
    Sender: TObject; var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := True;
end;

procedure TRptSaidasItensIdentificados.dbgConsultaDblClick(
    Sender: TObject);
begin
    inherited;

    if dbgConsulta.TS_SelectedColumn = 'NOMEFAVORECIDO' then
        begin
            DMProjeto.SetParametrosForm([C_ConsultaFAVORECIDO.Value]);
            DMProjeto.CriarForm('FrmClientes', Self, True);
        end;
end;

end.

