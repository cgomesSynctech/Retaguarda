unit Rpt_InvoicesAReceber;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RPT_PADRAO, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr, dxDBELib,
    TS_DBLookupTipoFav, dxCntner, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
    StdCtrls, TS_Label, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Db,
    FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
    DBClient, Provider, IBCustomDataSet, IBQuery,
    TS_QDBGrid, ExtCtrls, dxfLabel, TS_MaxPanel, TS_LastDataObject,
    DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton,
    Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, variants, CheckLst,
    TS_CheckListBox, TS_PopupEdit, TS_Edit;

type
    TRptInvoicesAReceber = class(TRptPadrao)
        lbPeriodo: TTS_Label;
        edFavorecido: TTS_EditFavorecido;
        cmbTipoFav: TTS_DBLookupTipoFav;
        DataI: TTS_DateTimePicker;
        DataF: TTS_DateTimePicker;
        lbA: TTS_Label;
        N2: TMenuItem;
        MostrarEndereco: TMenuItem;
        ckbVencimento: TTS_CheckBox;
        C_ConsultaID: TIntegerField;
        C_ConsultaNOTAFISCAL: TStringField;
        C_ConsultaNOME: TStringField;
        C_ConsultaCOMPETENCIA: TDateField;
        C_ConsultaVENCIMENTO: TDateField;
        C_ConsultaVALOR: TBCDField;
        C_ConsultaVALORPAGO: TBCDField;
        C_ConsultaDESCONTOS: TBCDField;
        C_ConsultaJUROSRECEBIDOS: TBCDField;
        C_ConsultaCREDITOGERADO: TBCDField;
        C_ConsultaCREDITOUTILIZADO: TBCDField;
        C_ConsultaDESCSTATUS: TStringField;
        C_ConsultaSALDO: TBCDField;
        C_ConsultaDATAPAGO: TDateField;
        C_ConsultaOBS: TStringField;
        C_ConsultaENDERECO: TStringField;
        C_ConsultaCIDADE: TStringField;
        C_ConsultaUF: TStringField;
        C_ConsultaFONE1: TStringField;
        C_ConsultaFONE2: TStringField;
        C_ConsultaFAX: TStringField;
        C_ConsultaCELULAR: TStringField;
        C_ConsultaCEP: TStringField;
        C_ConsultaEMAIL: TStringField;
        C_ConsultaPreview: TStringField;
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        C_ConsultaVENDA: TIntegerField;
        C_ConsultaTITULO: TStringField;
        C_ConsultaFALTADIAS: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaRAZAO: TStringField;
        C_ConsultaCPF_CNPJ: TStringField;
        C_ConsultaBAIRRO: TStringField;
        C_ConsultaTIPOCOBRANCA: TStringField;
        C_ConsultaDATAPRORROGACAO: TDateField;
        C_ConsultaEMPRESA: TStringField;
        C_ConsultaPERCENTUALMULTA: TBCDField;
        C_ConsultaPERCENTUALMORA: TBCDField;
        C_ConsultaVALORJUROSMORA: TBCDField;
        C_ConsultaVALORMULTA: TBCDField;
        C_ConsultaDATAATRASADO: TDateField;
        C_ConsultaPARCELA: TIntegerField;
        C_ConsultaVENDEDOR: TStringField;
        C_ConsultaDATAANTECIPACAO: TDateField;
        C_ConsultaVALORDESCANTECIPADO: TBCDField;
        C_ConsultaORIGEM_ARECEBER: TIntegerField;
        C_ConsultaIDGERADOR_ARECEBER: TIntegerField;
        C_ConsultaNUMBOLETO: TStringField;
        C_ConsultaDOC_GARANTIA: TStringField;
        C_ConsultaDESCCARTEIRA: TStringField;
        C_ConsultaNUMEROCARTEIRA: TStringField;
        dbgConsultaID: TdxDBGridMaskColumn;
        dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
        dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
        dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
        dbgConsultaDATAPAGO: TdxDBGridDateColumn;
        dbgConsultaOBS: TdxDBGridMaskColumn;
        dbgConsultaENDERECO: TdxDBGridMaskColumn;
        dbgConsultaCIDADE: TdxDBGridMaskColumn;
        dbgConsultaUF: TdxDBGridMaskColumn;
        dbgConsultaFONE1: TdxDBGridMaskColumn;
        dbgConsultaFONE2: TdxDBGridMaskColumn;
        dbgConsultaFAX: TdxDBGridMaskColumn;
        dbgConsultaCELULAR: TdxDBGridMaskColumn;
        dbgConsultaCEP: TdxDBGridMaskColumn;
        dbgConsultaEMAIL: TdxDBGridMaskColumn;
        dbgConsultaPreview: TdxDBGridColumn;
        dbgConsultaVENDA: TdxDBGridMaskColumn;
        dbgConsultaTITULO: TdxDBGridMaskColumn;
        dbgConsultaFALTADIAS: TdxDBGridMaskColumn;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaRAZAO: TdxDBGridMaskColumn;
        dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
        dbgConsultaBAIRRO: TdxDBGridMaskColumn;
        dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn;
        dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn;
        dbgConsultaEMPRESA: TdxDBGridMaskColumn;
        dbgConsultaDATAATRASADO: TdxDBGridDateColumn;
        dbgConsultaPARCELA: TdxDBGridMaskColumn;
        dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
        dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn;
        dbgConsultaVALORDESCANTECIPADO: TdxDBGridCurrencyColumn;
        dbgConsultaNUMBOLETO: TdxDBGridMaskColumn;
        dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn;
        dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn;
        dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn;
        dbgConsultaVALOR: TdxDBGridMaskColumn;
        dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
        dbgConsultaDESCONTOS: TdxDBGridMaskColumn;
        dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn;
        dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn;
        dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn;
        dbgConsultaVALORMULTA: TdxDBGridMaskColumn;
        dbgConsultaVALORJUROSMORA: TdxDBGridMaskColumn;
        dbgConsultaSALDO: TdxDBGridMaskColumn;
        dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn;
        dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn;
        C_ConsultaDESCSTATUSSAIDA: TStringField;
        dbgConsultaDESCSTATUSSAIDA: TdxDBGridMaskColumn;
        TS_PopupEdit1: TTS_PopupEdit;
        TS_Label3: TTS_Label;
        clbTipoOperacao: TTS_CheckListBox;
        Q_StatusSaidas: TIBQuery;
        P_StatusSaidas: TDataSetProvider;
        C_StatusSaidas: TClientDataSet;
        C_StatusSaidasDS: TDataSource;
        C_StatusSaidasSTATUS: TStringField;
        C_StatusSaidasDESCRICAO: TStringField;
        C_ConsultaTIPOPADRAO: TIntegerField;
        C_ConsultaCOMPETENCIADIASEMANA: TStringField;
        C_ConsultaVENCIMENTODIASEMANA: TStringField;
        dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
        dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
        C_ConsultaicJuros: TCurrencyField;
        C_ConsultaicDesconto: TCurrencyField;
        C_ConsultaicValorAReceber: TCurrencyField;
        dbgConsultaicJuros: TdxDBGridColumn;
        dbgConsultaicDesconto: TdxDBGridColumn;
        dbgConsultaicValorAReceber: TdxDBGridColumn;
        cbTemVenda: TTS_CheckBox;
        C_ConsultaCODIGOROMANEIO: TStringField;
        C_ConsultaDATAROMANEIRO: TDateField;
        C_ConsultaOBSROMANEIO: TStringField;
        C_ConsultaFUNCROMANEIO: TStringField;
        dbgConsultaCODIGOROMANEIO: TdxDBGridColumn;
        dbgConsultaDATAROMANEIRO: TdxDBGridColumn;
        dbgConsultaFUNCROMANEIO: TdxDBGridColumn;
        dbgConsultaOBSROMANEIO: TdxDBGridColumn;
        C_ConsultaNOSSONUMERO: TStringField;
        dbgConsultaNOSSONUMERO: TdxDBGridMaskColumn;
        dfTitulo: TTS_Edit;
        TS_Label1: TTS_Label;
        procedure btAtualizarClick(Sender: TObject);
        procedure edFavorecidoSelecionou(Sender: TObject);
        procedure DataIDateChange(Sender: TObject);
        procedure edFavorecidoChange(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure MostrarEnderecoClick(Sender: TObject);
        procedure ckbVencimentoChange(Sender: TObject);
        procedure dbgConsultaFaltaCustomDrawCell(Sender: TObject;
            ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
            AColumn: TdxTreeListColumn; ASelected, AFocused,
            ANewItemRow: Boolean; var AText: string; var AColor: TColor;
            AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
        procedure C_ConsultaCPF_CNPJGetText(Sender: TField; var Text: string;
            DisplayText: Boolean);
        procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dfTituloKeyPress(Sender: TObject; var Key: Char);
    private
        { Private declarations }
        nJurosParametrizado: currency;
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptInvoicesAReceber: TRptInvoicesAReceber;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TRptInvoicesAReceber.Atualizar;
var
    sTipoOperacao, sJuros: string;
begin
    if DMProjeto.Parametro('Juros') <> '' then
        begin
            sJuros := replace(DMProjeto.Parametro('Juros'), ',', decimalseparator);
            sJuros := replace(sJuros, '.', decimalseparator);
            nJurosParametrizado := StrToFloat(sJuros);
        end
    else
        nJurosParametrizado := 0;

    with C_Consulta do
        begin
            close;
            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ' +
                'where t.status > 0 and t.status < 50 ';

            if Length(Trim(dfTitulo.Text)) > 0 then
                CommandText := CommandText + ' and upper(t.titulo) like ''%' + dfTitulo.Text + '%'''
            else
                begin
                    if ckbVencimento.Checked then
                        CommandText := CommandText + ' and t.Vencimento >= :DataI and t.Vencimento <= :DataF ';
                    if edFavorecido.ID <> 0 then
                        CommandText := CommandText + ' and t.cliente = :cliente ';

                    sTipoOperacao := clbTipoOperacao.Selecionados;
                    if (sTipoOperacao <> '') then
                        CommandText := CommandText + ' and ss.status in (' + sTipoOperacao + ')';

                    if (cbTemVenda.Checked) then
                        CommandText := CommandText + ' and ((t.venda = 0) or (t.venda is Null)) ';

                    if ckbVencimento.Checked then
                        begin
                            params.parambyname('DataI').asDateTime := DataI.Date;
                            params.parambyname('DataF').asDateTime := DataF.Date;
                        end;

                    if edFavorecido.ID <> 0 then
                        params.parambyname('Cliente').asInteger := edFavorecido.ID;
                end;

            Open;
        end;
    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            if ckbVencimento.Checked then
                TS_ReportFilter.Add(lbPeriodo.Caption + ' ' + DataI.Text + lbA.Caption + DataF.Text);
            if (edFavorecido.ID <> 0) then
                TS_ReportFilter.Add(cmbTipoFav.Text + ': ' + edFavorecido.Text);
            FullExpand;
        end;
end;

procedure TRptInvoicesAReceber.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptInvoicesAReceber.edFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    //	Atualizar;
end;

procedure TRptInvoicesAReceber.DataIDateChange(Sender: TObject);
begin
    inherited;
    //  Atualizar;
end;

procedure TRptInvoicesAReceber.edFavorecidoChange(Sender: TObject);
begin
    inherited;
    if edFavorecido.Text = '' then
        //  	Atualizar;
end;

procedure TRptInvoicesAReceber.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    edFavorecido.OnSelecionou := nil;
    edFavorecido.OnChange := nil;
    C_StatusSaidas.Close;
    C_StatusSaidas.Open;
    clbTipoOperacao.SetDataSet(C_StatusSaidas);
    if DMProjeto.ExisteParametrosForm then
        begin
            if DMProjeto.qtdParametrosForm > 1 then
                edFavorecido.ID := DMProjeto.getParametrosForm(1);

            if DMProjeto.qtdParametrosForm > 2 then
                begin
                    DataI.date := 0;
                    DataF.date := 0;
                    if DMProjeto.getParametrosForm(2) = 0 then
                        DataI.Text := ''
                    else
                        DataI.Date := DMProjeto.getParametrosForm(2);

                    if DMProjeto.getParametrosForm(3) = 0 then
                        DataF.Text := ''
                    else
                        DataF.Date := DMProjeto.getParametrosForm(3);
                end
            else
                begin
                    DataI.Date := DMProjeto.dDataSistema - 30;
                    DataF.Date := DMProjeto.dDataSistema;
                    ckbVencimento.Checked := false;
                end
        end
    else
        begin
            if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
            if DataF.GetEditingText = '' then DataF.Date := LastMonthDay(DMProjeto.dDataSistema);
            //    Atualizar;
        end;
    DataI.OnDateChange := DataIDateChange;
    DataF.OnDateChange := DataIDateChange;
    edFavorecido.OnSelecionou := edFavorecidoSelecionou;
    edFavorecido.OnChange := edFavorecidoChange;
end;

procedure TRptInvoicesAReceber.C_ConsultaCalcFields(DataSet: TDataSet);
var vJuros: currency;
begin
    inherited;
    // Cálculo dos juros...
    vJuros := 0;
    if (DataSet.FieldByName('PERCENTUALMORA').AsCurrency > 0) then
        vJuros := DataSet.FieldByName('PERCENTUALMORA').AsCurrency
    else if (nJurosParametrizado > 0) then
        vJuros := nJurosParametrizado;

    if (DataSet.FieldByName('DataAtrasado').AsDateTime < DMProjeto.dDataSistema) and (vJuros > 0) then
        begin
            DataSet.FieldByName('icJuros').Value := DMFinanceiro.CalculaJuros(DataSet.FieldByName('Valor').AsCurrency -
                DataSet.FieldByName('ValorPago').AsCurrency -
                DataSet.FieldByName('CreditoUtilizado').AsCurrency,
                vJuros,
                iif(DataSet.FieldByName('DATAPAGO').AsVariant = null, Trunc(DMProjeto.dDataSistema - DataSet.FieldByName('DataAtrasado').AsDateTime),
                Trunc(DMProjeto.dDataSistema - DataSet.FieldByName('DataPago').AsDateTime)));
        end
    else
        DataSet.FieldByName('icJuros').Value := 0;

    // Cálculo do desconto por antecipação...
    if (DMProjeto.dDataSistema <= DataSet.FieldByName('DataAntecipacao').AsDateTime) then
        DataSet.FieldByName('icDesconto').Value := DataSet.FieldByName('ValorDescAntecipado').AsCurrency
    else
        DataSet.FieldByName('icDesconto').Value := 0;

    // Valor A Receber
    DataSet.FieldByName('icValorAReceber').Value := DataSet.FieldByName('Valor').AsCurrency -
        DataSet.FieldByName('ValorPago').AsCurrency -
        DataSet.FieldByName('CreditoUtilizado').AsCurrency +
        DataSet.FieldByName('icJuros').AsCurrency -
        DataSet.FieldByName('icDesconto').AsCurrency;

    C_ConsultaPreview.Value := DMProjeto.FormataEndereco(C_Consulta);

    DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
        ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);
    DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
        ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
end;

procedure TRptInvoicesAReceber.dbgConsultaDblClick(Sender: TObject);
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
    else if dbgConsulta.TS_SelectedColumn = 'TITULO' then
        begin
            if C_ConsultaVenda.AsInteger <> 0 then
                begin
                    with DMProjeto do
                        begin
                            if C_ConsultaTIPOPADRAO.Value = 1 then
                                begin
                                    SetParametrosForm([C_ConsultaVenda.Value]);
                                    CriarForm('FrmInvoices', self, true);
                                end
                            else
                                begin
                                    SetParametrosForm([C_ConsultaVenda.Value]);
                                    CriarForm('FrmSalesOrder', self, true);
                                end;
                        end;
                end;
        end
    else
        begin
            with DMProjeto do
                begin
                    SetParametrosForm([C_ConsultaID.AsInteger]);
                    CriarForm('FrmA_Receber', self, true);
                end;
        end;
end;

procedure TRptInvoicesAReceber.MostrarEnderecoClick(Sender: TObject);
begin
    inherited;
    if not MostrarEndereco.Checked then
        begin
            MostrarEndereco.Checked := true;
            dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
        end
    else
        begin
            dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
            MostrarEndereco.Checked := false;
        end;
end;

procedure TRptInvoicesAReceber.ckbVencimentoChange(Sender: TObject);
begin
    inherited;
    DataI.Enabled := ckbVencimento.Checked;
    DataF.Enabled := ckbVencimento.Checked;
    //  Atualizar;
end;

procedure TRptInvoicesAReceber.dbgConsultaFaltaCustomDrawCell(
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

procedure TRptInvoicesAReceber.C_ConsultaCPF_CNPJGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
begin
    inherited;
    Text := MascaraCPFCNPJ(Sender.AsString);
end;

procedure TRptInvoicesAReceber.TS_PopupEdit1CloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
    //	Atualizar;
end;

procedure TRptInvoicesAReceber.dfTituloKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if Key = #13 then
        Atualizar;
end;

end.

