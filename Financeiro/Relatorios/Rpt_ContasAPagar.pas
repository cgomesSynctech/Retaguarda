unit Rpt_ContasAPagar;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RPT_PADRAO, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr, dxDBELib,
    TS_DBLookupTipoFav, dxCntner, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
    StdCtrls, TS_Label, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider,
    Db, IBCustomDataSet, IBQuery, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
    ExtCtrls, dxDBTLCl, dxGrClms, dxfLabel, TS_MaxPanel,
    TS_LastDataObject, DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel,
    Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
    dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
    Variants, Math, TS_Edit;

type
    TRptContasAPagar = class(TRptPadrao)
        lbVencimento: TTS_Label;
        lbAte: TTS_Label;
        edFavorecido: TTS_EditFavorecido;
        cmbTipoFav: TTS_DBLookupTipoFav;
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        C_ConsultaID: TIntegerField;
        C_ConsultaNOTAFISCAL: TStringField;
        C_ConsultaNOME: TStringField;
        C_ConsultaCOMPETENCIA: TDateField;
        C_ConsultaVENCIMENTO: TDateField;
        C_ConsultaVALOR: TBCDField;
        C_ConsultaVALORPAGO: TBCDField;
        C_ConsultaDATAPAGO: TDateField;
        C_ConsultaDESCONTOS: TBCDField;
        C_ConsultaJUROSPAGOS: TBCDField;
        C_ConsultaCREDITOUTILIZADO: TBCDField;
        C_ConsultaDESCSTATUS: TStringField;
        C_ConsultaSALDO: TBCDField;
        dbgConsultaID: TdxDBGridMaskColumn;
        dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
        dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
        dbgConsultaicValor: TdxDBGridMaskColumn;
        dbgConsultaicValorPago: TdxDBGridMaskColumn;
        dbgConsultaDATAPAGO: TdxDBGridDateColumn;
        dbgConsultaicDescontos: TdxDBGridMaskColumn;
        dbgConsultaicJurosPagos: TdxDBGridMaskColumn;
        dbgConsultaicCreditoUtilizado: TdxDBGridMaskColumn;
        dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
        dbgConsultaicSaldo: TdxDBGridMaskColumn;
        C_ConsultaENDERECO: TStringField;
        C_ConsultaCIDADE: TStringField;
        C_ConsultaUF: TStringField;
        C_ConsultaFONE1: TStringField;
        C_ConsultaFONE2: TStringField;
        C_ConsultaFAX: TStringField;
        dbgConsultaEndereco: TdxDBGridColumn;
        dbgConsultaCidade: TdxDBGridColumn;
        dbgConsultaUF: TdxDBGridColumn;
        dbgConsultaFone1: TdxDBGridColumn;
        C_ConsultaCELULAR: TStringField;
        C_ConsultaCEP: TStringField;
        C_ConsultaEMAIL: TStringField;
        C_ConsultaCAIXAPOSTAL: TStringField;
        dbgConsultaCEP: TdxDBGridColumn;
        dbgConsultaFone2: TdxDBGridColumn;
        dbgConsultaCelular: TdxDBGridColumn;
        dbgConsultaEmail: TdxDBGridColumn;
        dbgConsultaCaixaPostal: TdxDBGridColumn;
        C_ConsultaPreview: TStringField;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaCOMPRA: TIntegerField;
        N2: TMenuItem;
        MostrarEndereco: TMenuItem;
        ckbVencimento: TTS_CheckBox;
        C_ConsultaFALTADIAS: TIntegerField;
        dbgConsultaFaltaDias: TdxDBGridColumn;
        dbgConsultaColumn25: TdxDBGridColumn;
        C_ConsultaDESCTIPOCOBRANCA: TStringField;
        dbgConsultaDESCTIPOCOBRANCA: TdxDBGridColumn;
        C_ConsultaOBSERVACAO: TStringField;
        dbgConsultaOBSERVACAO: TdxDBGridMaskColumn;
        C_ConsultaCOMPETENCIADIASEMANA: TStringField;
        C_ConsultaVENCIMENTODIASEMANA: TStringField;
        dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
        dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
        C_ConsultaINDEXADOR: TIntegerField;
        C_ConsultaDESCINDEX: TStringField;
        Q_SQL: TIBQuery;
        C_ConsultaicValor: TCurrencyField;
        C_ConsultaicValorPago: TCurrencyField;
        C_ConsultaicDescontos: TCurrencyField;
        C_ConsultaicJurosPagos: TCurrencyField;
        C_ConsultaicCreditoUtilizado: TCurrencyField;
        C_ConsultaicSaldo: TCurrencyField;
        dbgConsultaDESCINDEX: TdxDBGridMaskColumn;
        dfTitulo: TTS_Edit;
        TS_Label1: TTS_Label;
    C_ConsultaTIPODESPESA: TStringField;
    dbgConsultaTIPODESPESA: TdxDBGridMaskColumn;
        procedure btAtualizarClick(Sender: TObject);
        procedure edFavorecidoSelecionou(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
        procedure MostrarEnderecoClick(Sender: TObject);
        procedure edFavorecidoChange(Sender: TObject);
        procedure ckbVencimentoChange(Sender: TObject);
        procedure dbgConsultaFaltaDiasCustomDrawCell(Sender: TObject;
            ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
            AColumn: TdxTreeListColumn; ASelected, AFocused,
            ANewItemRow: Boolean; var AText: string; var AColor: TColor;
            AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
        procedure dfTituloKeyPress(Sender: TObject; var Key: Char);
    private
        { Private declarations }
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptContasAPagar: TRptContasAPagar;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptContasAPagar.Atualizar;
begin
    with C_Consulta do
        begin
            close;
            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ' +
                'where ((d.status > 0 and d.status < 50) or (d.status = -3)) ';

            if Length(Trim(dfTitulo.Text)) > 0 then
                CommandText := CommandText + ' and upper(d.notafiscal) like ''%' + dfTitulo.Text + '%'''
            else
                begin
                    if ckbVencimento.Checked then
                        CommandText := CommandText + ' and d.vencimento >= :DataI and d.vencimento <= :DataF ';

                    if edFavorecido.ID <> 0 then
                        CommandText := CommandText + ' and d.fornecedor = ' + IntToStr(edFavorecido.ID);

                    CommandText := CommandText + ' order by d.Vencimento';
                    // FetchParams;
                    if ckbVencimento.Checked then
                        begin
                            params.parambyname('DataI').asDate := DataI.Date;
                            params.parambyname('DataF').asDate := DataF.Date;
                        end;
                end;

            Open;
        end;
    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if ckbVencimento.Checked then
                TS_ReportFilter.Add('No período de ' + DataI.Text + ' a ' + DataF.Text);
            if (edFavorecido.ID <> 0) then
                TS_ReportFilter.Add(cmbTipoFav.Text + ': ' + edFavorecido.Text);
            FullExpand;
        end;
end;

procedure TRptContasAPagar.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptContasAPagar.edFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptContasAPagar.DataIDateChange(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptContasAPagar.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    if dbgConsulta.TS_SelectedColumn = 'NOME' then
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([C_ConsultaFavorecido.Value]);
                    CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value), self, true);
                end;
        end
    else if dbgConsulta.TS_SelectedColumn = 'NOTAFISCAL' then
        begin
            if C_ConsultaCompra.AsInteger <> 0 then
                begin
                    with DMProjeto do
                        begin
                            SetParametrosForm([C_ConsultaCompra.Value]);
                            CriarForm('FrmCompras', self, true);
                        end;
                end;
        end
    else
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([C_ConsultaID.AsInteger]);
                    CriarForm('FrmA_Pagar', self, true);
                end;
        end;
end;

procedure TRptContasAPagar.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
    if DataF.GetEditingText = '' then DataF.Date := LastMonthDay(DMProjeto.dDataSistema);
    if DMProjeto.ExisteParametrosForm then
        begin
            if DMProjeto.QtdParametrosForm > 1 then
                begin
                    ckbVencimento.Checked := false;
                    ckbVencimentoChange(Sender);
                    edFavorecido.ID := DMProjeto.getParametrosForm(1);
                end;
        end;
    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
    Atualizar;
end;

procedure TRptContasAPagar.C_ConsultaCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ConsultaPreview.Value := DMProjeto.FormataEndereco(C_Consulta);

    DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
        ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

    DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
        ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

    DataSet.FieldByName('icValor').AsVariant := DataSet.FieldByName('VALOR').AsCurrency;
    DataSet.FieldByName('icValorPago').AsVariant := DataSet.FieldByName('VALORPAGO').AsCurrency;
    DataSet.FieldByName('icDescontos').AsVariant := DataSet.FieldByName('DESCONTOS').AsCurrency;
    DataSet.FieldByName('icJurosPagos').AsVariant := DataSet.FieldByName('JUROSPAGOS').AsCurrency;
    DataSet.FieldByName('icCreditoUtilizado').AsVariant := DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency;
    DataSet.FieldByName('icSaldo').AsVariant := DataSet.FieldByName('SALDO').AsCurrency;

    if (DataSet.FieldByName('Indexador').AsVariant <> null) then
        begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
            Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
            Q_SQL.Open;
            if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
                begin
                    DataSet.FieldByName('icValor').AsVariant := RoundTo(DataSet.FieldByName('VALOR').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icValorPago').AsVariant := RoundTo(DataSet.FieldByName('VALORPAGO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icDescontos').AsVariant := RoundTo(DataSet.FieldByName('DESCONTOS').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icJurosPagos').AsVariant := RoundTo(DataSet.FieldByName('JUROSPAGOS').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icCreditoUtilizado').AsVariant := RoundTo(DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icSaldo').AsVariant := RoundTo(DataSet.FieldByName('SALDO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                end;
            Q_SQL.Close;
        end;
end;

procedure TRptContasAPagar.MostrarEnderecoClick(Sender: TObject);
begin
    inherited;
    if MostrarEndereco.Checked then
        begin
            dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
            MostrarEndereco.Checked := true;
        end
    else
        begin
            dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
            MostrarEndereco.Checked := false;
        end;
end;

procedure TRptContasAPagar.edFavorecidoChange(Sender: TObject);
begin
    inherited;
    if edFavorecido.Text = '' then
        Atualizar;
end;

procedure TRptContasAPagar.ckbVencimentoChange(Sender: TObject);
begin
    inherited;
    lbVencimento.Enabled := ckbVencimento.Checked;
    lbAte.Enabled := ckbVencimento.Checked;
    DataI.Enabled := ckbVencimento.Checked;
    DataF.Enabled := ckbVencimento.Checked;
    Atualizar;
end;

procedure TRptContasAPagar.dbgConsultaFaltaDiasCustomDrawCell(
    Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    if StrToIntDef(AText, 0) = 0 then
        begin
            AText := '0 dia';
            AFont.Color := clBlue;
        end
    else if StrToIntDef(AText, 0) < 0 then
        begin
            AText := Atext + ' dias';
            AFont.Color := clRed;
        end
    else if StrToIntDef(AText, 0) = 1 then
        begin
            AText := '1 dia';
            AFont.Color := clGreen;
        end
    else
        begin
            AText := AText + ' dias';
            AFont.Color := clWindowText;
        end;
    inherited;
end;

procedure TRptContasAPagar.dfTituloKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if Key = #13 then
        Atualizar;
end;

end.

