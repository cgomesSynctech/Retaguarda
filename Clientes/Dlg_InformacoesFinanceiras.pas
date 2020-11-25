unit Dlg_InformacoesFinanceiras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, DBClient, IBCustomDataSet, IBQuery, Provider,
  ExtCtrls, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, TS_QDBGrid, FormsComponent,
  Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  dxfLabel, StdCtrls, TS_Label, TS_Image, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_DateTimePicker,
  dxfProgressBar, TS_CheckBox, teSlide, TransEff, teTimed, teWipe, teForm,
  ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppRegion;

type
  TDlgInformacoesFinanceiras = class(TFrmModeloCadastros)
    pnPesquisaFavorecido: TTS_Panel;
    DBGLiquidados: TTS_QDBGrid;
    TS_Panel1: TTS_Panel;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfFavorecido: TTS_EditFavorecido;
    TS_Panel2: TTS_Panel;
    TS_Panel3: TTS_Panel;
    TS_Panel4: TTS_Panel;
    P_Liquidados: TDataSetProvider;
    Q_Liquidados: TIBQuery;
    C_LiquidadosDs: TDataSource;
    C_Liquidados: TClientDataSet;
    C_LiquidadosANO: TSmallintField;
    C_LiquidadosMES: TSmallintField;
    C_LiquidadosQTDDOC: TIntegerField;
    C_LiquidadosMENORVALOR: TBCDField;
    C_LiquidadosMEDIA: TBCDField;
    C_LiquidadosMAIORVALOR: TBCDField;
    C_LiquidadosTOTAL: TBCDField;
    DBGLiquidadosANO: TdxDBGridMaskColumn;
    DBGLiquidadosMES: TdxDBGridMaskColumn;
    DBGLiquidadosANOMES: TdxDBGridMaskColumn;
    DBGLiquidadosQTDDOC: TdxDBGridMaskColumn;
    DBGLiquidadosMENORVALOR: TdxDBGridCurrencyColumn;
    DBGLiquidadosMEDIA: TdxDBGridCurrencyColumn;
    DBGLiquidadosMAIORVALOR: TdxDBGridCurrencyColumn;
    DBGLiquidadosTOTAL: TdxDBGridCurrencyColumn;
    dbgAbertas: TTS_QDBGrid;
    Q_Abertas: TIBQuery;
    P_Abertas: TDataSetProvider;
    C_AbertasDs: TDataSource;
    C_Abertas: TClientDataSet;
    dbgAbertasANO: TdxDBGridMaskColumn;
    dbgAbertasMES: TdxDBGridMaskColumn;
    dbgAbertasANOMES: TdxDBGridMaskColumn;
    dbgAbertasQTDDOC: TdxDBGridMaskColumn;
    dbgAbertasMENORVALOR: TdxDBGridCurrencyColumn;
    dbgAbertasMEDIA: TdxDBGridCurrencyColumn;
    dbgAbertasMAIORVALOR: TdxDBGridCurrencyColumn;
    dbgAbertasTOTAL: TdxDBGridCurrencyColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    btPesquisar: TTS_SpeedButton;
    DBGVendas: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn3: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn4: TdxDBGridCurrencyColumn;
    dxfEmaberto: TdxfLabel;
    Barra: TdxfProgressBar;
    Q_Vendas: TIBQuery;
    P_Vendas: TDataSetProvider;
    C_VendasDs: TDataSource;
    C_Vendas: TClientDataSet;
    C_VendasANO: TSmallintField;
    C_VendasMES: TSmallintField;
    dxfLiquidados: TdxfLabel;
    dxfVendas: TdxfLabel;
    lbChequesDevolvidos: TdxfLabel;
    TS_Label3: TTS_Label;
    cbNaoPeriodo: TTS_CheckBox;
    C_LiquidadosicANOMES: TStringField;
    C_AbertasicAnoMes: TStringField;
    C_VendasicAnoMes: TStringField;
    C_AbertasANO: TSmallintField;
    C_AbertasMES: TSmallintField;
    C_AbertasANOMES: TStringField;
    C_AbertasQTDDOC: TIntegerField;
    C_AbertasMENORVALOR: TBCDField;
    C_AbertasMEDIA: TBCDField;
    C_AbertasMAIORVALOR: TBCDField;
    C_AbertasTOTAL: TBCDField;
    ppRelatorio: TppReport;
    ppDBLiquidados: TppDBPipeline;
    ppDBAbertas: TppDBPipeline;
    ppDBVendas: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLiquidadas: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    sbImprimir: TTS_SpeedButton;
    ppLabel17: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc3: TppDBCalc;
    regCab: TppRegion;
    ppShape1: TppShape;
    C_VendasQTDDOC: TIntegerField;
    C_VendasMENORVALOR: TFloatField;
    C_VendasMEDIA: TFloatField;
    C_VendasMAIORVALOR: TFloatField;
    C_VendasTOTAL: TFloatField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbChequesDevolvidosDblClick(Sender: TObject);
    procedure DBGLiquidadosDblClick(Sender: TObject);
    procedure dbgAbertasDblClick(Sender: TObject);
    procedure DBGVendasDblClick(Sender: TObject);
    procedure cbNaoPeriodoChange(Sender: TObject);
    procedure C_LiquidadosCalcFields(DataSet: TDataSet);
    procedure C_AbertasCalcFields(DataSet: TDataSet);
    procedure C_VendasCalcFields(DataSet: TDataSet);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure ppLiquidadasGetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure sbImprimirClick(Sender: TObject);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    FavorecidoAtual,nCheqDevQuant: Integer;
    fCheqDevVal: currency;
    Procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgInformacoesFinanceiras: TDlgInformacoesFinanceiras;

implementation

uses DM_Projeto, Funcoes, TDM_Projeto;

{$R *.dfm}

procedure TDlgInformacoesFinanceiras.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  dataI.Date := Date - 180;
  dataF.Date := Date;
  If Not (DMProjeto.GetParametrosForm(0) = null)  Then Begin
    FavorecidoAtual := DMProjeto.GetParametrosForm(0);
    dfFavorecido.ID := FavorecidoAtual;
  End;
  Show;
end;

Procedure TDlgInformacoesFinanceiras.Pesquisar;
Begin
  Barra.Position := 0;
  Barra.Visible := True;
  Barra.Position := Barra.Position + 1;
  If cbNaoPeriodo.Checked Then Begin
    DataI.Date := StrToDate('01/01/2000');
    DataF.Date := StrToDate('01/01/2100');
  End;
  With C_Liquidados do Begin
    Close;
    CommandText := ' Select extract(Year from dd.Vencimento) as Ano, extract(month from dd.Vencimento) as Mes, '+
                   ' extract(month from dd.Vencimento)||''/''||extract(Year from dd.Vencimento) as AnoMes, '+
                   ' count(dd.valor) as QtdDoc, Min(dd.valor) as MenorValor, '+
                   ' avg(dd.valor) as Media, Max(dd.valor) as MaiorValor, '+
                   ' sum(dd.valor) as Total '+
                   ' From  DepositosDoc dd '+
                   ' inner join Depositos d on dd.Deposito = d.Deposito '+
                   ' inner join FormasPagamento fp on dd.FormaPagamento = fp.FormaPagamento '+
                   ' inner join StatusDoc s on dd.Status = s.Status '+
                   ' left  join Favorecidos f on d.Favorecido = f.Favorecido '+
                   ' Where fp.Especie = 1  and (dd.ForaDaEmpresa = ''S'' and dd.Status < 70) '+
                   ' and d.favorecido = :Favorecido '+
                   ' and dd.vencimento <= CURRENT_DATE '+
                   ' and (dd.Vencimento >= :DataI and dd.Vencimento <= :DataF) '+
                   ' group by 1,2,3 order by 1 desc,2 desc';
    FetchParams;
    Params.ParamByName('Favorecido').AsInteger := FavorecidoAtual;
    Params.ParamByName('DataI').AsDateTime     := dataI.Date;
    Params.ParamByName('DataF').AsDateTime     := dataF.Date;
    Open;
  End;
  If DBGLiquidados.ValorTotal('icANOMES') > 0 Then
    dxfLiquidados.Caption := 'Liquidados, Média: '+   FormatCurr('R$ ###,###,##0.00' , DBGLiquidados.TotalGeral('TOTAL') /  DBGLiquidados.ValorTotal('icANOMES'))
  Else
    dxfLiquidados.Caption := 'Liquidados';
  Barra.Position := Barra.Position + 1;
  With C_Abertas do Begin
    Close;
    CommandText := ' Select extract(Year from dd.vencimento) as Ano, extract(month from dd.vencimento) as Mes, '+
                   ' extract(month from dd.vencimento)||''/''||extract(Year from dd.vencimento) as AnoMes, '+
                   ' count(dd.valor) as QtdDoc, Min(dd.valor) as MenorValor, '+
                   ' avg(dd.valor) as Media, Max(dd.valor) as MaiorValor, '+
                   ' sum(dd.valor) as Total '+
                   ' From  DepositosDoc dd '+
                   ' inner join Depositos d on dd.Deposito = d.Deposito '+
                   ' inner join FormasPagamento fp on dd.FormaPagamento = fp.FormaPagamento '+
                   ' inner join StatusDoc s on dd.Status = s.Status '+
                   ' left  join Favorecidos f on d.Favorecido = f.Favorecido '+
                   ' Where dd.vencimento >= CURRENT_DATE and fp.Especie = 1  '+
                   ' and dd.Status < 70 and d.favorecido = :Favorecido '+
                   ' group by 1,2,3 order by 1 desc,2 desc';
    FetchParams;
    Params.ParamByName('Favorecido').AsInteger := FavorecidoAtual;
    Open;
  End;
  If DBGAbertas.ValorTotal('icANOMES') > 0 Then
    dxfEmAberto.Caption := 'Em Aberto, Média: '+   FormatCurr('R$ ###,###,##0.00' , DBGAbertas.TotalGeral('TOTAL') /  DBGAbertas.ValorTotal('icANOMES'))
  Else
    dxfEmAberto.Caption := 'Em Aberto';
  Barra.Position := Barra.Position + 1;
  With C_Vendas do Begin
    Close;
    CommandText := ' Select extract(Year from s.data) as Ano, extract(month from s.data) as Mes, '+
                   ' extract(month from S.data)||''/''||extract(Year from S.data) as AnoMes, '+
                   ' count(s.saida) as QtdDoc, Min(s.Total) as MenorValor, avg(s.total) as Media, '+
                   ' Max(s.total) as MaiorValor, sum(s.total) as Total '+
                   ' From  Saidas s '+
                   ' Where s.tipopadrao = 1 and s.situacao = ''N'' '+
                   ' and (s.data >= :DataI and s.data <= :DataF) '+
                   ' and s.favorecido = :Favorecido '+
                   ' group by 1,2,3 order by 1 desc,2 desc';
    FetchParams;
    Params.ParamByName('Favorecido').AsInteger := FavorecidoAtual;
    Params.ParamByName('DataI').AsDateTime     := dataI.Date;
    Params.ParamByName('DataF').AsDateTime     := dataF.Date;
    Open;
  End;
  If DBGVendas.ValorTotal('icANOMES') > 0 Then
    dxfVendas.Caption := 'Vendas, Média: '+   FormatCurr('R$ ###,###,##0.00' ,DBGVendas.TotalGeral('TOTAL') /  DBGVendas.ValorTotal('icANOMES'))
  Else
    dxfVendas.Caption := 'Vendas';
  Barra.Position := Barra.Position + 1;
  DMPRojeto.GetInformacoesChequesDev(FavorecidoAtual,nCheqDevQuant,fCheqDevVal);
  If nCheqDevQuant > 0 Then
    lbChequesDevolvidos.Caption := 'Cheques Devolvidos: Qtd. '+IntToStr(nCheqDevQuant)+' Valor: '+ FormatCurr('R$ ###,###,##0.00',fCheqDevVal)
  Else
    lbChequesDevolvidos.Caption := 'Nenhum Cheque Devolvido ';

  Barra.Position := 0;
  Barra.Visible := False;
End;

procedure TDlgInformacoesFinanceiras.btPesquisarClick(Sender: TObject);
begin
  inherited;
   Pesquisar;
end;

procedure TDlgInformacoesFinanceiras.dfFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
  FavorecidoAtual := dfFavorecido.ID;
end;

procedure TDlgInformacoesFinanceiras.FormShow(Sender: TObject);
begin
  inherited;
  btPesquisarClick(Sender);
end;

procedure TDlgInformacoesFinanceiras.lbChequesDevolvidosDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual,8] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgInformacoesFinanceiras.DBGLiquidadosDblClick(
  Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual,6] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgInformacoesFinanceiras.dbgAbertasDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual,1] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgInformacoesFinanceiras.DBGVendasDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual,Null] );
    CriarForm('RptVendasNoPeriodo',self,True);
  end;

end;

procedure TDlgInformacoesFinanceiras.cbNaoPeriodoChange(Sender: TObject);
begin
  inherited;
  DataI.Enabled := Not (cbNaoPeriodo.Checked);
  DataF.Enabled := Not (cbNaoPeriodo.Checked);
end;

procedure TDlgInformacoesFinanceiras.C_LiquidadosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icAnoMes').AsString :=
       SoNumeros(DataSet.FieldByName('Mes').AsString,2) + '/'+
                 DataSet.FieldByName('ANO').AsString ;
end;

procedure TDlgInformacoesFinanceiras.C_AbertasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icAnoMes').AsString :=
       SoNumeros(DataSet.FieldByName('Mes').AsString,2) + '/'+
                 DataSet.FieldByName('ANO').AsString ;

end;

procedure TDlgInformacoesFinanceiras.C_VendasCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icAnoMes').AsString :=
       SoNumeros(DataSet.FieldByName('Mes').AsString,2) + '/'+
                 DataSet.FieldByName('ANO').AsString ;
end;

procedure TDlgInformacoesFinanceiras.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DlgInformacoesFinanceiras.Print;
end;

procedure TDlgInformacoesFinanceiras.ppLiquidadasGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dxfLiquidados.Caption;
end;

procedure TDlgInformacoesFinanceiras.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dxfEmAberto.Caption;
end;

procedure TDlgInformacoesFinanceiras.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dxfVendas.Caption;
end;

procedure TDlgInformacoesFinanceiras.sbImprimirClick(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( regCab );
  ppRelatorio.Print;
end;

procedure TDlgInformacoesFinanceiras.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lbChequesDevolvidos.Caption;
end;

end.

