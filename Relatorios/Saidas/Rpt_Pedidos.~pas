unit Rpt_Pedidos;

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
    TS_MaxPanel, dxDBTLCl, dxGrClms, CheckLst, TS_CheckListBox, TS_PopupEdit;

type
    TRptPedidos = class(TRptPadrao)
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
        dbgConsultaVALORCOMISSAO: TdxDBGridCurrencyColumn;
        dbgConsultaZONA: TdxDBGridColumn;
        C_ConsultaSAIDA: TIntegerField;
        C_ConsultaDATA: TDateField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaCLIENTE: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaVENDEDOR: TStringField;
        C_ConsultaCODVENDEDOR: TIntegerField;
        C_ConsultaCODCLIENTE: TIntegerField;
        C_ConsultaZONA: TStringField;
        C_ConsultaDESCONTO: TFloatField;
        C_ConsultaVALORCOMISSAO: TFloatField;
        C_ConsultaQUANTITENSVENDIDOS: TIntegerField;
        C_ConsultaLUCROBRUTO: TBCDField;
        C_ConsultaPERCDESCONTO: TFloatField;
        C_ConsultaVENDATABELATOTAL: TFloatField;
        C_ConsultaTOTALPAGO: TFloatField;
        C_ConsultaCUSTO: TFloatField;
        C_ConsultaTOTALITENSVENDIDOS: TBCDField;
        C_ConsultaPERCLUCROBRUTO: TFloatField;
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
    RptPedidos: TRptPedidos;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptPedidos.Atualizar;
var
    sTipoOperacao: string;
begin
    with C_Consulta do
        begin
            Close;

            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ' +
                'Where s.tipopadrao = 2 and s.situacao = ''N'' and s.data >= :datai and s.data <= :dataf  ';
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

            CommandText := CommandText + ' Group by s.saida, s.tipopadrao, s.data,  s.numero, f.nome, pg.descricao, s.totalitens, ' +
                's.total, s.desconto, v.nome, s.tipopadrao, v.favorecido, f.favorecido, s.valorcomissao, z.descricao ';

            CommandText := CommandText + ' Order by s.data';
            Params.ParamByName('DataI').AsDateTime := DataI.Date;
            Params.ParamByName('DataF').AsDateTime := DataF.Date;
            Open;
            FormsComponent.Caption := 'Pedidos com Lucro no Período de: ' + DateTostr(DataI.Date) + ' a ' +
                DateTostr(DataF.Date);
        end;
end;

procedure TRptPedidos.btClientesClick(Sender: TObject);
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

procedure TRptPedidos.btVendedorClick(Sender: TObject);
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

procedure TRptPedidos.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptPedidos.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;

    if dbgConsulta.TS_SelectedColumn = 'NUMERO' then
        begin
            DMProjeto.SetParametrosForm([C_ConsultaSAIDA.Value]);
            DMProjeto.CriarForm('FrmSalesOrder', self, true);
        end
    else if dbgConsulta.TS_SelectedColumn = 'CLIENTE' then
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
            DMProjeto.CriarForm('FrmSalesOrder ', self, true);
        end;

end;

procedure TRptPedidos.FormsComponentBeforeClearParams(Sender: TObject);
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

procedure TRptPedidos.DataIDateChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptPedidos.DataFDateChange(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptPedidos.TS_PopupEdit1CloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
    //Atualizar;
end;

end.

