unit Rpt_ProdutosVendidos;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
    TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
    TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib,
    TS_DateTimePicker, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib,
    TS_LookupComboBox, TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox,
    CheckLst, TS_CheckListBox, IBDatabase;

type
    TRptProdutosVendidos = class(TRptPadrao)
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
        dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
        dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TipoMovimentoDS: TDataSource;
        TS_Label3: TTS_Label;
        PopupFiltrarItens: TTS_PopupFiltrarItens;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaUNIDADE: TStringField;
        C_ConsultaDESCRICAOGRUPO: TStringField;
        C_ConsultaDESCRICAO1: TStringField;
        cbCanceladas: TTS_CheckBox;
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
        TS_Label4: TTS_Label;
        TS_PopupEdit1: TTS_PopupEdit;
        clbStatus: TTS_CheckListBox;
        C_ConsultaNOME: TStringField;
        dbgConsultaCliente: TdxDBGridColumn;
        C_ConsultaCUSTO: TFloatField;
        dbgConsultaCusto: TdxDBGridColumn;
        clbTIPOMOVIMENTO: TTS_CheckListBox;
        PPE_TIPOMOVIMENTO: TTS_PopupEdit;
        P_TipoPadrao: TDataSetProvider;
        C_TipoPadrao: TClientDataSet;
        Q_TipoPadrao: TIBQuery;
        C_TipoPadraoTIPOPADRAO: TIntegerField;
        C_TipoPadraoDESCRICAO: TStringField;
        TS_Label5: TTS_Label;
        PPE_TipoPadrao: TTS_PopupEdit;
        clbTipoPadrao: TTS_CheckListBox;
        C_ConsultaPRECO: TFloatField;
        dbgConsultaPRECO: TdxDBGridMaskColumn;
        C_ConsultaSUBTOTALITEM: TFloatField;
        dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
        C_ConsultaQUANTIDADE: TFloatField;
        btVendedor: TTS_SpeedButton;
        C_ConsultaVENDEDOR: TStringField;
        dbgConsultaVendedor: TdxDBGridColumn;
        C_ConsultaDESCSGRUPOCOMISSAO: TStringField;
        dbgConsultaGrupoComissao: TdxDBGridColumn;
        dbgConsultaVolumes: TdxDBGridMaskColumn;
        dbgConsultaTotal: TdxDBGridColumn;
        cbItensCancelados: TTS_CheckBox;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_ConsultaVOLUMES: TFloatField;
        C_ConsultaTOTAL: TFloatField;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure TS_LCBTipoMovimentoChange(Sender: TObject);
        procedure PopupFiltrarItensSelecionou(Sender: TObject);
        procedure cbCanceladasChange(Sender: TObject);
        procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure DataIDateChange(Sender: TObject);
        procedure PPE_TIPOMOVIMENTOCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure PPE_TipoPadraoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure btVendedorClick(Sender: TObject);
    private
        sTipoPadrao, sTitulo: string;
        procedure Atualizar;
        { Private declarations }
    public
        { Public declarations }
        sClientes, sNomesClientes, sVendedores, sNomesVendedores: string;
    end;

var
    RptProdutosVendidos: TRptProdutosVendidos;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptProdutosVendidos.FormsComponentBeforeClearParams(
    Sender: TObject);
var
    i: integer;
    bAccept: Boolean;
    sText: string;
begin
    inherited;
    C_Status.Close;
    C_Status.open;
    clbStatus.SetDataSet(C_Status);

    C_TipoPadrao.close;
    C_TipoPadrao.Open;
    clbTipoPadrao.SetDataSet(C_TipoPadrao);

    clbTipoPadrao.UpdateItems;
    clbTipoPadrao.SetSelecionados('2');
    //  PPE_TipoPadrao.CloseUp(Self, sText, bAccept);
    PPE_TipoPadrao.Text := clbTipoPadrao.Selecionados(true);

    C_TiposMovimentos.close;
    Q_TiposMovimentos.Sql.Text := 'Select TIPOMOVIMENTO, DESCRICAO from TIPOSMOVIMENTO ' +
        ' order by DESCRICAO ';
    //  Q_TiposMovimentos.ParamByName('TIPOPADRAO').AsString := '1';
    C_TiposMovimentos.Open;
    clbTIPOMOVIMENTO.SetDataSet(C_TiposMovimentos);
    clbTIPOMOVIMENTO.SetSelecionados('7');
    PPE_TIPOMOVIMENTO.Text := clbTIPOMOVIMENTO.Selecionados(true);

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then DataI.Date := (DMProjeto.dDataSistema);
    if DataF.GetEditingText = '' then DataF.Date := (DMProjeto.dDataSistema);
    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;

    //  Atualizar;
end;

procedure TRptProdutosVendidos.Atualizar;
var
    nTP_MV, sSituacao, sStatus, sTipoOperacao, sTipoPadrao: string;
begin
    nTP_MV := '';

    sTipoOperacao := clbTIPOMOVIMENTO.Selecionados;
    if (sTipoOperacao <> '') then
        begin
            nTP_MV := ' and (s.tipomovimento in (' + sTipoOperacao + ') ';
        end;

    sTipoPadrao := clbTipoPadrao.Selecionados;
    if (sTipoPadrao <> '') then
        begin
            if (sTipoOperacao <> '') then
                nTP_MV := nTP_MV + ' or s.tipopadrao in (' + sTipoPadrao + ') '
            else
                nTP_MV := nTP_MV + ' and s.tipopadrao in (' + sTipoPadrao + ') ';
        end;

    if (sTipoOperacao <> '') then
        nTP_MV := nTP_MV + ') ';

    with C_Consulta do
        begin
            Close;
            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ' +
                'Where s.data >= :datai and s.data <= :dataf ' +
                nTP_MV + ' and ' + PopupFiltrarItens.getSQL;

            sStatus := clbStatus.Selecionados;

            if sStatus <> '' then
                CommandText := CommandText + ' and s.status in (' + sStatus + ')';

            sSituacao := ' and s.situacao = ' + iif(cbCanceladas.Checked, '''C''', '''N''');
            sSituacao := sSituacao + ' and si.situacao = ' + iif(cbItensCancelados.Checked, ' ''C'' ', ' ''N'' ');

            if sVendedores <> '' then
                begin
                    CommandText := CommandText + ' and s.vendedor in (' + sVendedores + ')';
                end;

            CommandText := CommandText + sSituacao;
            CommandText := CommandText + ' Group by 1,2,3,4,5,6,7,8 ';
            CommandText := CommandText + ' Order by si.Descricao';

            Params.ParamByName('datai').AsDateTime := DataI.Date;
            Params.ParamByName('dataf').AsDateTime := DataF.Date;

            Open;
        end;

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if cbCanceladas.Checked then
                TS_ReportFilter.Add('CANCELADAS');
            if sTipoOperacao <> '' then
                TS_ReportFilter.Add(clbTIPOMOVIMENTO.Selecionados(True));
            if sTipoPadrao <> '' then
                TS_ReportFilter.Add(clbTipoPadrao.Selecionados(True));
            if sStatus <> '' then
                TS_ReportFilter.Add(clbStatus.Selecionados(True));
                
            TS_ReportFilter.Add(replace(PopupFiltrarItens.Hint, #13, ' '));

            FullExpand;
            GoToFirst;
        end;

    FormsComponent.Caption := 'Produtos Vendidos no Período: ' + DateTostr(DataI.Date) + ' a ' +
        DateTostr(DataF.Date);
end;

procedure TRptProdutosVendidos.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptProdutosVendidos.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptProdutosVendidos.PopupFiltrarItensSelecionou(
    Sender: TObject);
begin
    inherited;
    //	Atualizar;
end;

procedure TRptProdutosVendidos.cbCanceladasChange(Sender: TObject);
begin
    inherited;
    //  Atualizar;
end;

procedure TRptProdutosVendidos.TS_PopupEdit1CloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbStatus.Selecionados(true);
    Accept := true;
    // Atualizar;
end;

procedure TRptProdutosVendidos.DataIDateChange(Sender: TObject);
begin
    inherited;
    //  Atualizar;
end;

procedure TRptProdutosVendidos.PPE_TIPOMOVIMENTOCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTIPOMOVIMENTO.Selecionados(true);
    Accept := true;
    //	Atualizar;
end;

procedure TRptProdutosVendidos.PPE_TipoPadraoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoPadrao.Selecionados(true);
    Accept := true;
    //  Atualizar;
end;

procedure TRptProdutosVendidos.btVendedorClick(Sender: TObject);
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
                    //       Atualizar;
                end;
        end;
end;

end.

