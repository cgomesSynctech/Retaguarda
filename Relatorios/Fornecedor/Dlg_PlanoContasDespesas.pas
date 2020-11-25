unit Dlg_PlanoContasDespesas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, DB, DBClient, Provider,
    IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBTL, ComCtrls,
    TS_PageControl, dxDBTLCl, DateUtils, dxPSGlbl, dxPSUtl, dxPSEngn,
    dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBTLLnk, RichEdit, dxEditor, dxEdLib,
    TS_DateTimePicker, dxDBELib, TS_DBEditNumber, IBStoredProc,
    TS_DBMaskEdit, TS_Panel, TS_RadioButton;

type
    TDlgPlanoContasDespesas = class(TFrmModeloCadastros)
        pcDespesas: TTS_PageControl;
        tsMesAtual: TTS_TabSheet;
        tsUltimos12Meses: TTS_TabSheet;
        DBMesAtual: TdxDBTreeList;
        tsVazio: TTS_TabSheet;
        TS_Label1: TTS_Label;
        Q_MesAtual: TIBQuery;
        P_MesAtual: TDataSetProvider;
        C_MesAtual: TClientDataSet;
        C_MesAtualCONTA: TIntegerField;
        C_MesAtualCONTAPAI: TIntegerField;
        C_MesAtualDESCRICAO: TStringField;
        C_MesAtualDS: TDataSource;
        DBMesAtualDESCRICAO: TdxDBTreeListMaskColumn;
        DBMesAtualicValor: TdxDBTreeListCurrencyColumn;
        dxPrinterDespesas: TdxComponentPrinter;
        dxPrinterDespesasLinkMesAtual: TdxDBTreeListReportLink;
        RichEdit: TRichEdit;
        ppmOpcoesPlano: TTS_PopupMenu;
        JuntarTodos1: TMenuItem;
        ExpandirTodos1: TMenuItem;
        LinhasdeGrade: TMenuItem;
        TS_Bevel2: TTS_Bevel;
        C_MesAtualicValor: TCurrencyField;
        Q_SQL: TIBQuery;
        DBUlt12Meses: TdxDBTreeList;
        Q_12Meses: TIBQuery;
        P_12Meses: TDataSetProvider;
        C_12Meses: TClientDataSet;
        C_12MesesDS: TDataSource;
        C_12MesesCONTA: TIntegerField;
        C_12MesesCONTAPAI: TIntegerField;
        C_12MesesDESCRICAO: TStringField;
        DBUlt12MesesDESCRICAO: TdxDBTreeListMaskColumn;
        C_12MesesicMes1: TCurrencyField;
        C_12MesesicMes2: TCurrencyField;
        C_12MesesicMes3: TCurrencyField;
        C_12MesesicMes4: TCurrencyField;
        C_12MesesicMes5: TCurrencyField;
        C_12MesesicMes6: TCurrencyField;
        C_12MesesicMes7: TCurrencyField;
        C_12MesesicMes8: TCurrencyField;
        C_12MesesicMes9: TCurrencyField;
        C_12MesesicMes10: TCurrencyField;
        C_12MesesicMes11: TCurrencyField;
        C_12MesesicMes12: TCurrencyField;
        DBUlt12MesesicMes1: TdxDBTreeListColumn;
        DBUlt12MesesicMes2: TdxDBTreeListColumn;
        DBUlt12MesesicMes3: TdxDBTreeListColumn;
        DBUlt12MesesicMes4: TdxDBTreeListColumn;
        DBUlt12MesesicMes5: TdxDBTreeListColumn;
        DBUlt12MesesicMes6: TdxDBTreeListColumn;
        DBUlt12MesesicMes7: TdxDBTreeListColumn;
        DBUlt12MesesicMes8: TdxDBTreeListColumn;
        DBUlt12MesesicMes9: TdxDBTreeListColumn;
        DBUlt12MesesicMes10: TdxDBTreeListColumn;
        DBUlt12MesesicMes11: TdxDBTreeListColumn;
        DBUlt12MesesicMes12: TdxDBTreeListColumn;
        dxPrinterDespesasLink12Meses: TdxDBTreeListReportLink;
        btPeriodo: TTS_SpeedButton;
        lbDtI: TTS_Label;
        edDtI: TTS_DateTimePicker;
        lbDtF: TTS_Label;
        edDtF: TTS_DateTimePicker;
        C_MesAtualicPercentual: TFloatField;
        DBMesAtualicPercentual: TdxDBTreeListColumn;
        StoreProcedure: TIBStoredProc;
        TS_PanelCorner1: TTS_PanelCorner;
        lbValorTotal: TTS_Label;
        C_12MesesicTotalMes01: TCurrencyField;
        C_12MesesicTotalMes02: TCurrencyField;
        C_MesAtualicTotalValor: TCurrencyField;
        C_12MesesicTotalMes03: TCurrencyField;
        C_12MesesicTotalMes04: TCurrencyField;
        C_12MesesicTotalMes05: TCurrencyField;
        C_12MesesicTotalMes06: TCurrencyField;
        C_12MesesicTotalMes07: TCurrencyField;
        C_12MesesicTotalMes08: TCurrencyField;
        C_12MesesicTotalMes0: TCurrencyField;
        C_12MesesicTotalMes10: TCurrencyField;
        C_12MesesicTotalMes11: TCurrencyField;
        C_12MesesicTotalMes12: TCurrencyField;
        rbTodas: TTS_RadioButton;
        gbTipoDespesas: TGroupBox;
        rbFixas: TTS_RadioButton;
        rbVariaveis: TTS_RadioButton;
        procedure btGravarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure dxPrinterDespesasLinkMesAtualCustomDrawPageHeader(
            Sender: TObject; ACanvas: TCanvas; APageIndex: Integer;
            var ARect: TRect; ANom, ADenom: Integer; var ADefaultDrawText,
            ADefaultDrawBackground: Boolean);
        procedure dxPrinterDespesasStartGenerateReport(Sender: TObject;
            AReportLink: TBasedxReportLink);
        procedure JuntarTodos1Click(Sender: TObject);
        procedure ExpandirTodos1Click(Sender: TObject);
        procedure LinhasdeGradeClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure C_MesAtualCalcFields(DataSet: TDataSet);
        procedure btLimparClick(Sender: TObject);
        procedure C_12MesesCalcFields(DataSet: TDataSet);
        procedure btPeriodoClick(Sender: TObject);
        procedure edDtIChange(Sender: TObject);
        procedure edDtFChange(Sender: TObject);
        procedure FormCreate(Sender: TObject);
    private
        { Private declarations }
        bMesAtual: boolean;
        dtData, dt1, dt2: TDateTime;
        nTotalValor: Currency;
        function ValorConta(dt1, dt2: TDateTime; sNivel: string): currency;
        function pegarValorTotal12Meses(dtInicio, dtFim: TDateTime): Currency;
        function GetTipoDespesa(): string;
        procedure pegarValorTotal();

    public
        { Public declarations }
    end;

var
    DlgPlanoContasDespesas: TDlgPlanoContasDespesas;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDlgPlanoContasDespesas.btGravarClick(Sender: TObject);
begin
    inherited;
    edDtF.OnDateChange := nil;
    edDtI.OnDateChange := nil;

    edDtI.Date := Funcoes.FirstMonthDay(Now);
    edDtF.Date := Funcoes.LastMonthDay(Now);

    //edDtI.OnDateChange := btGravarClick;
    //edDtF.OnDateChange := btGravarClick;

    lbDtI.Visible := False;
    edDtI.Visible := False;
    lbDtF.Visible := False;
    edDtF.Visible := False;

    bMesAtual := True;
    //

    C_MesAtual.Close;
    C_MesAtual.Open;
    pegarValorTotal();

    //
    DBMesAtual.Bands[0].Caption := 'Plano de Despesas - Mês Atual ';
    DBMesAtualicValor.Caption := 'Valor R$';
    //
    DBMesAtual.FullCollapse;
    DBMesAtual.GoToFirst;
    //
    pcDespesas.ActivePage := tsMesAtual;

end;

procedure TDlgPlanoContasDespesas.pegarValorTotal();
begin
    {
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := GetSQLTotalContaDespesa(edDtI.Date, edDtF.Date);
            Open;
            nTotalValor :=  FieldByName('valor').AsCurrency;
        end;
    }

    with StoreProcedure do
        begin
            StoredProcName := 'PP_TOTALCONTADESPESA';
            ParamByName('DATA_I').AsDateTime := edDtI.Date;
            ParamByName('DATA_F').AsDateTime := edDtF.Date;
            ParamByName('TIPO_DESPESA').AsString := GetTipoDespesa;
            ExecProc;
            nTotalValor := ParamByName('VALORTOTAL').AsCurrency;
        end;

    //lbValorTotal.Caption := CurrToStrF(nTotalValor, ffCurrency, 2);
    C_MesAtual.Edit;
    C_MesAtual.FieldByName('icTotalValor').AsCurrency := nTotalValor;
    C_MesAtual.Post;

end;

function TDlgPlanoContasDespesas.pegarValorTotal12Meses(dtInicio, dtFim: TDateTime): Currency;
begin
    {
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := GetSQLTotalContaDespesa(dtInicio, dtFim);
            Open;
            nTotalValor := FieldByName('valor').AsCurrency;
        end;

    Result := nTotalValor;
    }

    with StoreProcedure do
        begin
            StoredProcName := 'PP_TOTALCONTADESPESA';
            ParamByName('DATA_I').AsDateTime := dtInicio;
            ParamByName('DATA_F').AsDateTime := dtFim;
            ParamByName('TIPO_DESPESA').AsString := GetTipoDespesa;
            ExecProc;
            nTotalValor := ParamByName('VALORTOTAL').AsCurrency;
        end;
    result := nTotalValor;

end;

function TDlgPlanoContasDespesas.GetTipoDespesa(): string;
begin
    if rbTodas.Checked then
        Result := 'T'
    else if rbFixas.Checked then
        Result := 'S'
    else
        Result := 'N';

    {
    sql := 'select coalesce(sum(co.valor), 0) as valor ' +
        'from contasoperacao co ' +
        'left join retiradas r on co.empresa = r.empresa and co.idgerador = r.retirada and co.pdv = r.pdv ' +
        'left join retiradasdoc rd on rd.empresa = r.empresa and rd.retirada = r.retirada and rd.pdv = r.pdv ' +
        'left join retiradasduplicatas rdp on rdp.empresa = r.empresa and rdp.retirada = r.retirada and rdp.pdv = r.pdv ' +
        'left join Favorecidos f on rd.favorecidodoc = f.favorecido ' +
        'left join FormasPagamento fp on rd.formapagamento = fp.formapagamento ' +
        'left join TiposOrigens t on r.tiporetirada = t.origem ' +
        'left join Contas c on rd.Conta = c.Conta ' +
        'left join TiposFavorecido tf on f.tipofavorecido = tf.tipofavorecido ' +
        'left join contas ct on co.conta = ct.conta ' +
        'left Join duplicatasapagar d on d.empresa = rdp.empresa and  d.id = rdp.duplicata and rdp.pdv = d.pdv ' +
        'where r.data >= ''' + FormatDateTime('dd.MM.yyyy', dataInicio) + ''' and r.data <= ''' + FormatDateTime('dd.MM.yyyy', dataFinal) + ''' ' +
        'and r.situacao = ''N'' and ct.tipoconta = 15 ';

    if rbFixas.Checked then
        sql := sql + ' and ct.despesafixa = ''S''';
    if rbVariaveis.Checked then
        sql := sql + ' and ct.despesafixa = ''N''';
    }
end;

procedure TDlgPlanoContasDespesas.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;

    //
    dtData := DMProjeto.getDataServidor;
    //

    edDtF.OnDateChange := nil;
    edDtI.OnDateChange := nil;

    dt1 := Funcoes.FirstMonthDay(Now);
    dt2 := Funcoes.LastMonthDay(Now);

    edDtI.Date := dt1;
    edDtF.Date := dt2;

    edDtI.OnDateChange := btPeriodoClick;
    edDtF.OnDateChange := btPeriodoClick;

    lbDtI.Visible := False;
    edDtI.Visible := False;
    lbDtF.Visible := False;
    edDtF.Visible := False;

    //    edDtI.OnDateChange := nil;
    //    edDtI.Date := dtData;
    //    edDtI.OnDateChange := btPeriodoClick;
    //    edDtF.OnDateChange := nil;
    //    edDtF.Date := dtData;
    //    edDtF.OnDateChange := btPeriodoClick;
        //
    pcDespesas.ActivePage := tsVazio;
end;

procedure TDlgPlanoContasDespesas.btComando1Click(Sender: TObject);
begin
    inherited;
    if (pcDespesas.ActivePage = tsMesAtual) then
        begin
            dxPrinterDespesas.CurrentLink := dxPrinterDespesasLinkMesAtual;
            dxPrinterDespesas.Preview(True, nil);
        end
    else if (pcDespesas.Activepage = tsUltimos12Meses) then
        begin
            dxPrinterDespesas.CurrentLink := dxPrinterDespesasLink12Meses;
            dxPrinterDespesas.Preview(True, nil);
        end;
end;

procedure TDlgPlanoContasDespesas.dxPrinterDespesasLinkMesAtualCustomDrawPageHeader(
    Sender: TObject; ACanvas: TCanvas; APageIndex: Integer; var ARect: TRect;
    ANom, ADenom: Integer; var ADefaultDrawText,
    ADefaultDrawBackground: Boolean);
var
    APixel: Integer;
    W, H: Integer;
    R, LineRect: TRect;
    AText, sLinha, sStyle, sTexto: string;
    nWidth, AlturaAnterior: integer;
    ATop, AHeight, AWidth, i, k, LogoWidth, LogoHeight: Integer;
    TextAlign: TdxTextAlignX;
    AFont: TFont;
    APrevFont: HFONT;
    sLadoDireito: string;
begin
    APixel := OnePixel;
    ATop := ARect.Top;
    AWidth := (ARect.Right - ARect.Left + 1 * APixel) div 2;
    LogoWidth := ARect.Left + 1 * APixel;
    LogoHeight := ARect.Bottom + 1 * APixel;

    APrevFont := SelectObject(ACanvas.Handle, ACanvas.Font.Handle);

    AFont := TFont.Create;
    AFont.Assign(ACanvas.Font);
    AFont.Name := 'TAHOMA';

    {Drawing Page Header}
    {Logotipo}
    if (DMProjeto.Logo <> nil) then
        begin
            W := MulDiv(DMProjeto.Logo.Width, ANom, ADenom);
            H := MulDiv(DMProjeto.Logo.Height, ANom, ADenom);
            ACanvas.StretchDraw(Rect(ARect.Left, ARect.Top, ARect.Left + W, ARect.Top + H), DMProjeto.Logo);
            LogoWidth := W + ARect.Left + 500;
            LogoHeight := H + ARect.Top + 200;
            //    if sCabecalho = 'TB' then
            //    	Exit;
        end;

    {Cabeçalho Lado Esquerdo}
    i := 1;
    while i <= ContaStrings(DMProjeto.sCabLadoEsquerdo, ';') do
        begin

            sLinha := SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 2);
            nWidth := LogoWidth;
            AlturaAnterior := 0;
            while (sLinha = SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 2)) and
                (i <= ContaStrings(DMProjeto.sCabLadoEsquerdo, ';')) do
                begin

                    if SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 1) = '' then
                        begin
                            inc(i);
                            continue;
                        end;
                    AText := SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 1);
                    AFont.Name := SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 3);
                    AFont.Size := MulDiv(StrToInt(SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 4)), ANom, ADenom);
                    AFont.Color := StringToColor(SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 5));
                    sStyle := UpperCase(SeparaStrings(SeparaStrings(DMProjeto.sCabLadoEsquerdo, ';', i), '|', 6));
                    AFont.Style := [];
                    if pos('N', sStyle) > 0 then
                        AFont.Style := AFont.Style + [fsBold];
                    if pos('I', sStyle) > 0 then
                        AFont.Style := AFont.Style + [fsItalic];
                    if pos('S', sStyle) > 0 then
                        AFont.Style := AFont.Style + [fsUnderline];

                    SelectObject(ACanvas.Handle, AFont.Handle);
                    AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;
                    if AHeight > AlturaAnterior then
                        AlturaAnterior := AHeight;
                    R := Rect(nWidth, ATop, nWidth + ACanvas.TextWidth(AText) + (3 * APixel), ATop + AlturaAnterior - 1 * APixel);
                    nWidth := nWidth + ACanvas.TextWidth(AText) + 3 * APixel;

                    TextAlign := taLeft;

                    (Sender as TBasedxReportLink).DrawText(ACanvas, R, 0, AText, AFont,
                        clWhite, TextAlign, taBottom,
                        False, False, False);
                    inc(i);
                end;
            ATop := ATop + AlturaAnterior - 1 * APixel; //AHeight;
        end;

    {Cabeçalho Lado Direito}
    ATop := ARect.Top;
    i := 1;
    sLadoDireito := Copy(DMProjeto.sCabLadoDireito, 1, length(DMProjeto.sCabLadoDireito) - 1);
    while i <= ContaStrings(sLadoDireito, ';') do
        begin

            sLinha := SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2);
            nWidth := ARect.Right;
            sTexto := '';
            while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2)) and
                (i <= ContaStrings(sLadoDireito, ';')) do
                begin

                    for k := ContaStrings(sLadoDireito, ';') downto 1 do
                        if SeparaStrings(SeparaStrings(sLadoDireito, ';', k), '|', 2) = sLinha then
                            sTexto := sTexto + SeparaStrings(sLadoDireito, ';', k) + ';';
                    sTexto := Copy(sTexto, 1, length(sTexto) - 1);
                    for k := 1 to ContaStrings(sTexto, ';') do
                        begin
                            AText := SeparaStrings(SeparaStrings(sTexto, ';', k), '|', 1);
                            if AText = '' then
                                begin
                                    inc(i);
                                    continue;
                                end;

                            if pos('<NUMEROPAGINA>', UpperCase(AText)) > 0 then
                                AText := replace(AText, '<NUMEROPAGINA>', IntToStr(APageIndex + 1));

                            if pos('<TOTALPAGINAS>', UpperCase(AText)) > 0 then
                                AText := replace(AText, '<TOTALPAGINAS>', IntToStr(TdxDBTreeListReportLink(Sender).PageCount));

                            AFont.Name := SeparaStrings(SeparaStrings(sTexto, ';', k), '|', 3);
                            AFont.Size := MulDiv(StrToInt(SeparaStrings(SeparaStrings(sTexto, ';', k), '|', 4)), ANom, ADenom);
                            AFont.Color := StringToColor(SeparaStrings(SeparaStrings(sTexto, ';', k), '|', 5));
                            sStyle := UpperCase(SeparaStrings(SeparaStrings(sTexto, ';', k), '|', 6));
                            AFont.Style := [];
                            if pos('N', sStyle) > 0 then
                                AFont.Style := AFont.Style + [fsBold];
                            if pos('I', sStyle) > 0 then
                                AFont.Style := AFont.Style + [fsItalic];
                            if pos('S', sStyle) > 0 then
                                AFont.Style := AFont.Style + [fsUnderline];

                            SelectObject(ACanvas.Handle, AFont.Handle);
                            AHeight := ACanvas.TextHeight('Wg') + 2 * APixel;

                            R := Rect(nWidth - ACanvas.TextWidth(AText) - (3 * APixel), ATop, nWidth, ATop + AHeight - 1 * APixel);
                            nWidth := nWidth - ACanvas.TextWidth(AText) - (3 * APixel);

                            (Sender as TBasedxReportLink).DrawText(ACanvas, R, 0, AText, AFont,
                                clWhite, taLeft, taCenterY,
                                False, False, False);
                            inc(i);
                        end;
                    //sLinha := IntToStr(StrToInt(sLinha)+1);
                end;
            ATop := ATop + AHeight;
        end;
    LineRect := ARect;
    LineRect.Bottom := ARect.Bottom - 10;
    (Sender as TBasedxReportLink).DrawEdgeEx(ACanvas, LineRect, cemSingle, cesNone, cesNone, [csBottom]);

    SelectObject(ACanvas.Handle, APrevFont);

end;

procedure TDlgPlanoContasDespesas.dxPrinterDespesasStartGenerateReport(
    Sender: TObject; AReportLink: TBasedxReportLink);
var sLadoEsquerdo, sLadoDireito: string;
begin
    inherited;
    with DMProjeto.Q_SQL do
        begin
            close;
            sql.text := 'select esquerdo, direito from cabecalho';
            open;
            sLadoEsquerdo := fields[0].asString;
            sLadoDireito := fields[1].asString;
        end;

    DMProjeto.Interpreta(sLadoEsquerdo);
    DMProjeto.Interpreta(sLadoDireito);
    DMProjeto.sCabLadoEsquerdo := DMProjeto.FormataCabecalho(RichEdit, sLadoEsquerdo);
    DMProjeto.sCabLadoDireito := DMProjeto.FormataCabecalho(RichEdit, sLadoDireito);

end;

procedure TDlgPlanoContasDespesas.JuntarTodos1Click(Sender: TObject);
begin
    inherited;
    if (pcDespesas.ActivePage = tsMesAtual) then
        begin
            DBMesAtual.FullCollapse;
            DBMesAtual.GoToFirst;
        end
    else if (pcDespesas.ActivePage = tsUltimos12Meses) then
        begin
            DBUlt12Meses.FullCollapse;
            DBUlt12Meses.GoToFirst;
        end;
end;

procedure TDlgPlanoContasDespesas.ExpandirTodos1Click(Sender: TObject);
begin
    inherited;
    if (pcDespesas.ActivePage = tsMesAtual) then
        begin
            DBMesAtual.FullExpand;
            DBMesAtual.GoToFirst;
        end
    else if (pcDespesas.ActivePage = tsUltimos12Meses) then
        begin
            DBUlt12Meses.FullExpand;
            DBUlt12Meses.GoToFirst;
        end;
end;

procedure TDlgPlanoContasDespesas.LinhasdeGradeClick(Sender: TObject);
begin
    inherited;
    if (pcDespesas.ActivePage = tsMesAtual) then
        begin
            if LinhasdeGrade.Checked then
                dxPrinterDespesasLinkMesAtual.Options := dxPrinterDespesasLinkMesAtual.Options + [tlpoGrid]
            else
                dxPrinterDespesasLinkMesAtual.Options := dxPrinterDespesasLinkMesAtual.Options - [tlpoGrid];
        end
    else if (pcDespesas.ActivePage = tsUltimos12Meses) then
        begin
            if LinhasdeGrade.Checked then
                dxPrinterDespesasLink12Meses.Options := dxPrinterDespesasLink12Meses.Options + [tlpoGrid]
            else
                dxPrinterDespesasLink12Meses.Options := dxPrinterDespesasLink12Meses.Options - [tlpoGrid];
        end;
end;

procedure TDlgPlanoContasDespesas.btComando2Click(Sender: TObject);
begin
    inherited;
    ppmOpcoesPlano.PopupFromCursorPos;
end;

function TDlgPlanoContasDespesas.ValorConta(dt1, dt2: TDateTime; sNivel: string): currency;
var sNS, sTmp, sTipoDespesa: string;
    bZero: boolean;
begin
    sNS := sNivel;
    bZero := False;
    Result := 0;

    if (rbVariaveis.Checked) then
        sTipoDespesa := ' and upper(ct.despesafixa) = ''N''';

    if (rbFixas.Checked) then
        sTipoDespesa := ' and upper(ct.despesafixa) = ''S''';

    while not bZero do
        begin
            // Selecionado o valor total do nível selecionado
            Q_SQL.Close;
            Q_SQL.SQL.Text := ' select coalesce(sum(co.valor), 0) from contasoperacao co ' +
                ' left join retiradas r on co.empresa = r.empresa and co.idgerador = r.retirada and co.pdv = r.pdv' +
                ' left join retiradasdoc rd on rd.empresa = r.empresa and rd.retirada = r.retirada and rd.pdv = r.pdv' +
                ' left join retiradasduplicatas rdp on rdp.empresa = r.empresa and rdp.retirada = r.retirada and rdp.pdv = r.pdv' +
                ' left join Favorecidos f on rd.favorecidodoc = f.favorecido' +
                ' left join FormasPagamento fp on rd.formapagamento = fp.formapagamento' +
                ' left join TiposOrigens t on r.tiporetirada = t.origem' +
                ' left join Contas c on rd.Conta = c.Conta' +
                ' left join TiposFavorecido tf on f.tipofavorecido = tf.tipofavorecido' +
                ' left join contas ct on co.conta = ct.conta' +
                ' left Join duplicatasapagar d on d.empresa = rdp.empresa and  d.id = rdp.duplicata and rdp.pdv = d.pdv ' +
                ' where r.data >= :d1 and r.data <= :d2 and r.situacao = ''N'' ' +
                ' and co.conta in (' + sNS + ')' + sTipoDespesa;
            Q_SQL.ParamByName('d1').AsDateTime := dt1;
            Q_SQL.ParamByName('d2').AsDateTime := dt2;
            Q_SQL.Open;
            Result := Result + Q_SQL.Fields[0].AsCurrency;
            Q_SQL.Open;

            // Selecionando o novo nível
            sTmp := sNS;
            sNS := '';
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select conta from contas where contapai in (' + sTmp + ')';
            Q_SQL.Open;
            Q_SQL.First;
            while not Q_SQL.EOF do
                begin
                    sNS := CExp(sNS, ',') + Q_SQL.Fields[0].AsString;
                    Q_SQL.Next;
                end;
            Q_SQL.Close;
            bZero := sNS = '';
        end;

end;

procedure TDlgPlanoContasDespesas.C_MesAtualCalcFields(DataSet: TDataSet);
begin
    inherited;
    if bMesAtual then
        DataSet.FieldByName('icValor').AsCurrency := ValorConta(FirstMonthDay(dtData), LastMonthDay(dtData), DataSet.FieldByName('CONTA').AsString)
    else
        DataSet.FieldByName('icValor').AsCurrency := ValorConta(dt1, dt2, DataSet.FieldByName('CONTA').AsString);

    try
        DataSet.FieldByName('icPercentual').AsCurrency := ((DataSet.FieldByName('icValor').AsCurrency / nTotalValor) * 100.00);
    except
    end;

end;

procedure TDlgPlanoContasDespesas.btLimparClick(Sender: TObject);
begin
    inherited;
    lbDtI.Visible := False;
    edDtI.Visible := False;
    lbDtF.Visible := False;
    edDtF.Visible := False;
    //
    C_12Meses.Close;
    C_12Meses.Open;
    //
    DBUlt12MesesicMes1.Caption := Copy(MesExtenso(dtData), 1, 3) + '/' + IntToStr(YearOf(dtData));
    DBUlt12MesesicMes2.Caption := Copy(MesExtenso(IncMonth(dtData, -1)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -1)));
    DBUlt12MesesicMes3.Caption := Copy(MesExtenso(IncMonth(dtData, -2)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -2)));
    DBUlt12MesesicMes4.Caption := Copy(MesExtenso(IncMonth(dtData, -3)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -3)));
    DBUlt12MesesicMes5.Caption := Copy(MesExtenso(IncMonth(dtData, -4)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -4)));
    DBUlt12MesesicMes6.Caption := Copy(MesExtenso(IncMonth(dtData, -5)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -5)));
    DBUlt12MesesicMes7.Caption := Copy(MesExtenso(IncMonth(dtData, -6)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -6)));
    DBUlt12MesesicMes8.Caption := Copy(MesExtenso(IncMonth(dtData, -7)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -7)));
    DBUlt12MesesicMes9.Caption := Copy(MesExtenso(IncMonth(dtData, -8)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -8)));
    DBUlt12MesesicMes10.Caption := Copy(MesExtenso(IncMonth(dtData, -9)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -9)));
    DBUlt12MesesicMes11.Caption := Copy(MesExtenso(IncMonth(dtData, -10)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -10)));
    DBUlt12MesesicMes12.Caption := Copy(MesExtenso(IncMonth(dtData, -11)), 1, 3) + '/' + IntToStr(YearOf(IncMonth(dtData, -11)));
    //
    DBUlt12Meses.FullCollapse;
    DBUlt12Meses.GoToFirst;
    //
    pcDespesas.ActivePage := tsUltimos12Meses;

    C_12Meses.Edit;
    C_12Meses.FieldByName('icTotalMes01').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(dtData), LastMonthDay(dtData));
    C_12Meses.FieldByName('icTotalMes02').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -1)), LastMonthDay(IncMonth(dtData, -1)));
    C_12Meses.FieldByName('icTotalMes03').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -2)), LastMonthDay(IncMonth(dtData, -2)));
    C_12Meses.FieldByName('icTotalMes04').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -3)), LastMonthDay(IncMonth(dtData, -3)));
    C_12Meses.FieldByName('icTotalMes05').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -4)), LastMonthDay(IncMonth(dtData, -4)));
    C_12Meses.FieldByName('icTotalMes06').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -5)), LastMonthDay(IncMonth(dtData, -5)));
    C_12Meses.FieldByName('icTotalMes07').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -6)), LastMonthDay(IncMonth(dtData, -6)));
    C_12Meses.FieldByName('icTotalMes08').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -7)), LastMonthDay(IncMonth(dtData, -7)));
    C_12Meses.FieldByName('icTotalMes09').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -8)), LastMonthDay(IncMonth(dtData, -8)));
    C_12Meses.FieldByName('icTotalMes10').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -9)), LastMonthDay(IncMonth(dtData, -9)));
    C_12Meses.FieldByName('icTotalMes11').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -10)), LastMonthDay(IncMonth(dtData, -10)));
    C_12Meses.FieldByName('icTotalMes12').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -11)), LastMonthDay(IncMonth(dtData, -11)));
    C_12Meses.Post;
end;

procedure TDlgPlanoContasDespesas.C_12MesesCalcFields(DataSet: TDataSet);
begin
    inherited;
    DataSet.FieldByName('icMes1').AsCurrency := ValorConta(FirstMonthDay(dtData), LastMonthDay(dtData), DataSet.FieldByName('CONTA').AsString);
    //DataSet.FieldByName('icTotalMes01').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(dtData), LastMonthDay(dtData));
    //DataSet.FieldByName('icTotalMes02').AsCurrency := pegarValorTotal12Meses(FirstMonthDay(IncMonth(dtData, -1)), LastMonthDay(IncMonth(dtData, -1)));
    DataSet.FieldByName('icMes2').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -1)), LastMonthDay(IncMonth(dtData, -1)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes3').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -2)), LastMonthDay(IncMonth(dtData, -2)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes4').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -3)), LastMonthDay(IncMonth(dtData, -3)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes5').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -4)), LastMonthDay(IncMonth(dtData, -4)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes6').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -5)), LastMonthDay(IncMonth(dtData, -5)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes7').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -6)), LastMonthDay(IncMonth(dtData, -6)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes8').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -7)), LastMonthDay(IncMonth(dtData, -7)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes9').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -8)), LastMonthDay(IncMonth(dtData, -8)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes10').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -9)), LastMonthDay(IncMonth(dtData, -9)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes11').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -10)), LastMonthDay(IncMonth(dtData, -10)), DataSet.FieldByName('CONTA').AsString);
    DataSet.FieldByName('icMes12').AsCurrency := ValorConta(FirstMonthDay(IncMonth(dtData, -11)), LastMonthDay(IncMonth(dtData, -11)), DataSet.FieldByName('CONTA').AsString);
end;

procedure TDlgPlanoContasDespesas.btPeriodoClick(Sender: TObject);
begin
    inherited;
    lbDtI.Visible := True;
    edDtI.Visible := True;
    lbDtF.Visible := True;
    edDtF.Visible := True;
    //
    bMesAtual := False;
    //
    dt1 := edDtI.Date;
    dt2 := edDtF.Date;
    //
    C_MesAtual.Close;
    C_MesAtual.Open;
    pegarValorTotal();
    //
    DBMesAtual.Bands[0].Caption := 'Plano de Despesas - No Período: ' + FormatDateTime('dd/mm/yy', dt1) + ' e ' + FormatDateTime('dd/mm/yy', dt2);
    DBMesAtualicValor.Caption := 'Valor R$';
    //
    DBMesAtual.FullCollapse;
    DBMesAtual.GoToFirst;
    //
    pcDespesas.ActivePage := tsMesAtual;

end;

procedure TDlgPlanoContasDespesas.edDtIChange(Sender: TObject);
begin
    inherited;
    //if (pcDespesas.ActivePage = tsMesAtual) then
        //pegarValorTotal();
end;

procedure TDlgPlanoContasDespesas.edDtFChange(Sender: TObject);
begin
    inherited;
    //if (pcDespesas.ActivePage = tsMesAtual) then
        //pegarValorTotal();
end;

procedure TDlgPlanoContasDespesas.FormCreate(Sender: TObject);
begin
    inherited;
    pcDespesas.ActivePage := tsVazio;
end;

end.

