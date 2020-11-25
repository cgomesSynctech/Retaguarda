unit Rpt_VendaVendedor;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
    dxGrClms, DateUtils, dxEditor, dxDBEdtr, dxDBELib, TS_LookupComboBox,
    TS_PopupEdit, TS_PopupFiltrarItens, CheckLst, TS_CheckListBox, TeEngine,
    Series, TeeProcs, Chart, TeeTools, TeePageNumTool, TS_ButtonEdit,
    TS_EditFavorecido;

type
    TRptVendaVendedor = class(TRptPadrao)
        C_ConsultaCODIGO: TStringField;
        C_ConsultaNOME: TStringField;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaMES_01: TdxDBGridCurrencyColumn;
        dbgConsultaMES_02: TdxDBGridCurrencyColumn;
        dbgConsultaMES_03: TdxDBGridCurrencyColumn;
        dbgConsultaMES_04: TdxDBGridCurrencyColumn;
        dbgConsultaMES_05: TdxDBGridCurrencyColumn;
        dbgConsultaMES_06: TdxDBGridCurrencyColumn;
        dbgConsultaMES_07: TdxDBGridCurrencyColumn;
        dbgConsultaMES_08: TdxDBGridCurrencyColumn;
        dbgConsultaMES_09: TdxDBGridCurrencyColumn;
        dbgConsultaMES_10: TdxDBGridCurrencyColumn;
        dbgConsultaMES_11: TdxDBGridCurrencyColumn;
        dbgConsultaMES_12: TdxDBGridCurrencyColumn;
        dbgConsultaTotal: TdxDBGridCurrencyColumn;
        Q_Vendedor: TIBQuery;
        P_Vendedor: TDataSetProvider;
        C_Vendedor: TClientDataSet;
        C_VendedorFAVORECIDO: TIntegerField;
        C_VendedorNOME: TStringField;
        C_VendedorDs: TDataSource;
        TS_Label1: TTS_Label;
        Aanime: TAnimate;
        FiltroItens: TTS_PopupFiltrarItens;
        C_ConsultaFAVORECIDO: TIntegerField;
        peTipoOperacao: TTS_PopupEdit;
        TS_Label3: TTS_Label;
        clbTipoOperacao: TTS_CheckListBox;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TiposMovimentosDESCRICAO: TStringField;
        C_TipoMovimentoDS: TDataSource;
        grafico: TChart;
        Series1: TFastLineSeries;
        ChartTool1: TPageNumTool;
        lbFechar: TTS_Label;
        TS_Label4: TTS_Label;
        C_ConsultaMES_01: TCurrencyField;
        C_ConsultaMES_02: TCurrencyField;
        C_ConsultaMES_03: TCurrencyField;
        C_ConsultaMES_04: TCurrencyField;
        C_ConsultaMES_05: TCurrencyField;
        C_ConsultaMES_06: TCurrencyField;
        C_ConsultaMES_07: TCurrencyField;
        C_ConsultaMES_08: TCurrencyField;
        C_ConsultaMES_09: TCurrencyField;
        C_ConsultaMES_10: TCurrencyField;
        C_ConsultaMES_11: TCurrencyField;
        C_ConsultaMES_12: TCurrencyField;
        C_ConsultaTOTAL: TCurrencyField;
        dfFavorecido: TTS_EditFavorecido;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure cbVendedorChange(Sender: TObject);
        procedure C_ConsultaAfterGetRecords(Sender: TObject;
            var OwnerData: OleVariant);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure lbFecharClick(Sender: TObject);
        procedure TS_Label4Click(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
    private
        { Private declarations }
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptVendaVendedor: TRptVendaVendedor;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TRptVendaVendedor.Atualizar;
var sCriterio, sTipoMov: string;
begin
    Aanime.Active := True;
    Aanime.Visible := True;
    sTipoMov := '''*' + Funcoes.Replace(clbTipoOperacao.Selecionados, ',', '*') + '*''';
    sCriterio := FiltroItens.getSQL;
    if Pos('and ((i.desativado = ''N'') Or (i.desativado is Null))', sCriterio) > 0 then
        sCriterio := Replace(sCriterio, 'and ((i.desativado = ''N'') Or (i.desativado is Null))', '')
    else
        sCriterio := Replace(sCriterio, '((i.desativado = ''N'') Or (i.desativado is Null))', '');
    if sCriterio <> ' ' then
        sCriterio := ' and ' + sCriterio;
    Q_Consulta.Close;
    C_Consulta.Close;
    if (dfFavorecido.Id <= 0) then
        Q_Consulta.Sql.Text := 'select  f.favorecido,f.codigo,f.nome, sum(s.total) '+
                               'from favorecidos f  inner join saidas s on s.favorecido = f.favorecido '+
                               'where  ( s.data >= addmonth(current_date - ' + FormatDateTime('dd', now) + ',-11)) '+
                               'group by f.favorecido,f.codigo,f.nome '+
                               'Order by 4 desc '
    else
        Q_Consulta.Sql.Text := 'select  f.favorecido,f.codigo,f.nome, sum(s.total) '+
                               'from favorecidos f  inner join saidas s on s.favorecido = f.favorecido '+
                               'where s.vendedor = ' + IntToStr(dfFavorecido.Id) + ' and ( s.data >= addmonth(current_date - ' + FormatDateTime('dd', now) + ',-11)) '+
                               'group by f.favorecido,f.codigo,f.nome '+
                               'Order by 4 desc ';
    C_Consulta.FetchParams;
    C_Consulta.Open;
end;

procedure TRptVendaVendedor.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    Aanime.Visible := False;
    dbgConsultaMES_01.Caption := Copy(MesExtenso(Date), 1, 4) + '/' + IntToStr(YearOf(Date));
    dbgConsultaMES_02.Caption := Copy(MesExtenso(DateAdd('MM', -1, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -1, Date)));
    dbgConsultaMES_03.Caption := Copy(MesExtenso(DateAdd('MM', -2, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -2, Date)));
    dbgConsultaMES_04.Caption := Copy(MesExtenso(DateAdd('MM', -3, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -3, Date)));
    dbgConsultaMES_05.Caption := Copy(MesExtenso(DateAdd('MM', -4, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -4, Date)));
    dbgConsultaMES_06.Caption := Copy(MesExtenso(DateAdd('MM', -5, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -5, Date)));
    dbgConsultaMES_07.Caption := Copy(MesExtenso(DateAdd('MM', -6, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -6, Date)));
    dbgConsultaMES_08.Caption := Copy(MesExtenso(DateAdd('MM', -7, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -7, Date)));
    dbgConsultaMES_09.Caption := Copy(MesExtenso(DateAdd('MM', -8, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -8, Date)));
    dbgConsultaMES_10.Caption := Copy(MesExtenso(DateAdd('MM', -9, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -9, Date)));
    dbgConsultaMES_11.Caption := Copy(MesExtenso(DateAdd('MM', -10, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -10, Date)));
    dbgConsultaMES_12.Caption := Copy(MesExtenso(DateAdd('MM', -11, Date)), 1, 4) + '/' + IntToStr(YearOf(DateAdd('MM', -11, Date)));
    C_Vendedor.Close;
    C_Vendedor.Open;
    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    clbTipoOperacao.SetSelecionados('1,7');
end;

procedure TRptVendaVendedor.cbVendedorChange(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptVendaVendedor.C_ConsultaAfterGetRecords(Sender: TObject;
    var OwnerData: OleVariant);
begin
    inherited;
    Aanime.Active := False;
    Aanime.Visible := False;
end;

procedure TRptVendaVendedor.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    if ((dbgConsulta.TS_SelectedColumn = 'NOME') or (dbgConsulta.TS_SelectedColumn = 'CODIGO')) then
        begin
            DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
            DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(1), self, true);
        end;
    if (dbgConsulta.TS_SelectedColumn = 'TOTAL') then
        begin
            PainelFullSelect.Visible := True;
            grafico.Series[0].Clear;
            grafico.Title.Text.Clear;
            grafico.Title.Text.Add('Estatistica de Vendas, ' + C_Consulta.FieldByName('NOME').AsString);
            grafico.Series[0].Add(iif(dbgConsultaMES_01.Field.IsNull, 0, dbgConsultaMES_01.Field.Value), dbgConsultaMES_01.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_02.Field.IsNull, 0, dbgConsultaMES_02.Field.Value), dbgConsultaMES_02.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_03.Field.IsNull, 0, dbgConsultaMES_03.Field.Value), dbgConsultaMES_03.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_04.Field.IsNull, 0, dbgConsultaMES_04.Field.Value), dbgConsultaMES_04.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_05.Field.IsNull, 0, dbgConsultaMES_05.Field.Value), dbgConsultaMES_05.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_06.Field.IsNull, 0, dbgConsultaMES_06.Field.Value), dbgConsultaMES_06.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_07.Field.IsNull, 0, dbgConsultaMES_07.Field.Value), dbgConsultaMES_07.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_08.Field.IsNull, 0, dbgConsultaMES_08.Field.Value), dbgConsultaMES_08.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_09.Field.IsNull, 0, dbgConsultaMES_09.Field.Value), dbgConsultaMES_09.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_10.Field.IsNull, 0, dbgConsultaMES_10.Field.Value), dbgConsultaMES_10.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_11.Field.IsNull, 0, dbgConsultaMES_11.Field.Value), dbgConsultaMES_11.Caption);
            grafico.Series[0].Add(iif(dbgConsultaMES_12.Field.IsNull, 0, dbgConsultaMES_12.Field.Value), dbgConsultaMES_12.Caption);
        end;
end;

procedure TRptVendaVendedor.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptVendaVendedor.lbFecharClick(Sender: TObject);
begin
    inherited;
    PainelFullSelect.Visible := False;

end;

procedure TRptVendaVendedor.TS_Label4Click(Sender: TObject);
begin
    inherited;
    grafico.Series[0].Clear;
    grafico.Title.Text.Clear;
    grafico.Title.Text.Add('Estatistica de Vendas, Grafico Totalizado por Vendedor');
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_01'), dbgConsultaMES_01.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_02'), dbgConsultaMES_02.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_03'), dbgConsultaMES_03.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_04'), dbgConsultaMES_04.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_05'), dbgConsultaMES_05.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_06'), dbgConsultaMES_06.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_07'), dbgConsultaMES_07.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_08'), dbgConsultaMES_08.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_09'), dbgConsultaMES_09.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_10'), dbgConsultaMES_10.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_11'), dbgConsultaMES_11.Caption);
    grafico.Series[0].Add(dbgConsulta.ValorTotal('MES_12'), dbgConsultaMES_12.Caption);
end;

procedure TRptVendaVendedor.dfFavorecidoSelecionou(Sender: TObject);
var Tempo: tTime;
begin
    inherited;
    FormsComponent.Caption := dfFavorecido.Text + ' - Ultimos 12 Meses ';
    lbDescricaoRelatorio.Caption := '';
    Tempo := Time;
    Atualizar;
    lbDescricaoRelatorio.Caption := 'Tempo para Consulta: ' + TimeToStr(Time - Tempo);
end;

procedure TRptVendaVendedor.C_ConsultaCalcFields(DataSet: TDataSet);
var
    sTipoMov: string;
begin
    inherited;
    sTipoMov := '''*' + Funcoes.Replace(clbTipoOperacao.Selecionados, ',', '*') + '*''';
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_TOTAL_SAIDA_VENDEDOR';
            ParamByName('ANO').AsInteger := YearOf(Date);
            ParamByName('MES').AsInteger := MonthOf(Date);
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_01').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -1, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -1, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_02').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -2, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -2, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_03').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -3, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -3, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_04').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -4, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -4, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_05').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -5, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -5, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_06').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -6, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -6, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_07').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -7, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -7, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_08').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -8, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -8, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_09').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -9, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -9, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_10').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -10, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -10, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_11').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := YearOf(DateAdd('MM', -11, Date));
            ParamByName('MES').AsInteger := MonthOf(DateAdd('MM', -11, Date));
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('MES_12').Value := ParamByName('VALOR').AsCurrency;

            Close;
            ParamByName('ANO').AsInteger := 9999; //Total
            ParamByName('MES').AsInteger := 0;
            ParamByName('CLIENTE').AsInteger := DataSet.FieldByName('Favorecido').AsInteger;
            ParamByName('TIPOMOVIMENTO').AsString := sTipoMov;
            ExecProc;
            DataSet.FieldByName('TOTAL').Value := ParamByName('VALOR').AsCurrency;
            Close;
        end;
end;

end.

