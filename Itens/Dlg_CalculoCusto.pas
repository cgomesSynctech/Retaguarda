unit Dlg_CalculoCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxEditor, dxEdLib, TS_ButtonEdit, TS_EditItem,
  IBCustomDataSet, IBUpdateSQL, DB, DBClient, Provider, IBQuery, dxDBTLCl,
  dxGrClms, Math, TS_Shape, dxDBELib, TS_DBComboBox, TS_Panel, dxDBEdtr,
  TS_DBLookupComboBox, TS_LookupComboBox;

type
  TDlgCalculoCusto = class(TFrmModeloCadastros)
    dbgCalcPreco: TTS_QDBGrid;
    lbItem: TTS_Label;
    dfItem: TTS_EditItem;
    Q_CalculoPreco: TIBQuery;
    P_CalculoPreco: TDataSetProvider;
    C_CalculoPreco: TClientDataSet;
    C_CalculoPrecoCALCULOCUSTO: TIntegerField;
    C_CalculoPrecoITEM: TIntegerField;
    C_CalculoPrecoUNIDADE: TStringField;
    C_CalculoPrecoPRECOCOMPRA: TFloatField;
    C_CalculoPrecoFRETE: TBCDField;
    C_CalculoPrecoIPI: TBCDField;
    C_CalculoPrecoICMSCOMPRA: TBCDField;
    C_CalculoPrecoICMSVENDA: TBCDField;
    C_CalculoPrecoSTATUS: TStringField;
    U_CalculoPreco: TIBUpdateSQL;
    C_CalculoPrecoCODIGO: TStringField;
    C_CalculoPrecoDESCRICAO: TStringField;
    C_CalculoPrecoFATOR: TFloatField;
    C_CalculoPrecoPERCENTUAL: TBCDField;
    C_CalculoPrecoPERCENTUALMINIMO: TBCDField;
    C_CalculoPreco_icSelecionado: TIntegerField;
    C_CalculoPrecoDS: TDataSource;
    dbgCalcPrecoCALCULOCUSTO: TdxDBGridMaskColumn;
    dbgCalcPrecoITEM: TdxDBGridMaskColumn;
    dbgCalcPrecoUNIDADE: TdxDBGridMaskColumn;
    dbgCalcPrecoPRECOCOMPRA: TdxDBGridMaskColumn;
    dbgCalcPrecoFRETE: TdxDBGridCurrencyColumn;
    dbgCalcPrecoIPI: TdxDBGridCurrencyColumn;
    dbgCalcPrecoICMSCOMPRA: TdxDBGridCurrencyColumn;
    dbgCalcPrecoICMSVENDA: TdxDBGridCurrencyColumn;
    dbgCalcPrecoSTATUS: TdxDBGridMaskColumn;
    dbgCalcPrecoCODIGO: TdxDBGridMaskColumn;
    dbgCalcPrecoDESCRICAO: TdxDBGridMaskColumn;
    dbgCalcPrecoFATOR: TdxDBGridMaskColumn;
    dbgCalcPrecoPERCENTUAL: TdxDBGridCurrencyColumn;
    dbgCalcPrecoPRECOMANUND: TdxDBGridCurrencyColumn;
    dbgCalcPrecoPERCENTUALMINIMO: TdxDBGridCurrencyColumn;
    C_CalculoPrecoicPrecoCustoNovo: TCurrencyField;
    C_CalculoPrecoicPrecoMinNovo: TCurrencyField;
    C_CalculoPrecoicPrecoVendaNovo: TCurrencyField;
    C_CalculoPrecoicPrecoCustoAtual: TCurrencyField;
    C_CalculoPrecoicPrecoMinAtual: TCurrencyField;
    C_CalculoPrecoicPrecoVendaAtual: TCurrencyField;
    dbgCalcPrecoicPrecoCustoNovo: TdxDBGridColumn;
    dbgCalcPrecoicPrecoMinNovo: TdxDBGridColumn;
    dbgCalcPrecoicPrecoVendaNovo: TdxDBGridColumn;
    dbgCalcPrecoicPrecoCustoAtual: TdxDBGridColumn;
    dbgCalcPrecoicPrecoMinAtual: TdxDBGridColumn;
    dbgCalcPrecoicPrecoVendaAtual: TdxDBGridColumn;
    TS_Bevel2: TTS_Bevel;
    TS_Bevel3: TTS_Bevel;
    C_CalculoPrecoPRECOMANUND: TBCDField;
    C_CalculoPrecoPRECOMANUAL: TBCDField;
    dbgCalcPrecoPRECOMANUAL: TdxDBGridCurrencyColumn;
    Q_SQL: TIBQuery;
    lbAproveitarProdutos: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label4: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_PanelCorner1: TTS_PanelCorner;
    TS_Label1: TTS_Label;
    Q_Selecao: TIBQuery;
    P_Selecao: TDataSetProvider;
    C_Selecao: TClientDataSet;
    C_SelecaoDs: TDataSource;
    sbPesquisar: TTS_SpeedButton;
    dfxAtencao: TdxfLabel;
    C_CalculoPrecoDATACALCULOCUSTO: TDateField;
    lcbSelecionou: TTS_LookupComboBox;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_Bevel4: TTS_Bevel;
    C_SelecaoDATACALCULOCUSTO: TStringField;
    C_SelecaoDATA: TDateField;
    C_CalculoPrecoFABRICANTE: TStringField;
    dbgCalcPrecoFabricante: TdxDBGridColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_CalculoPrecoNewRecord(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure dbgCalcPrecoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_CalculoPrecoCalcFields(DataSet: TDataSet);
    procedure btComando2Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure C_CalculoPrecoPRECOCOMPRAChange(Sender: TField);
    procedure C_CalculoPreco_icSelecionadoChange(Sender: TField);
    procedure btLimparClick(Sender: TObject);
    procedure lbAproveitarProdutosClick(Sender: TObject);
    procedure sbPesquisarClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    nSeq : integer;
    dtDataClaculoCusto: tDateTime;
  public
    { Public declarations }
  end;

var
  DlgCalculoCusto: TDlgCalculoCusto;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes, Dlg_MescCalcCusto;


procedure TDlgCalculoCusto.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  dfxAtencao.Font.Color := clRed;
  dfxAtencao.Caption := 'Nova Planilha de Custo';
  nSeq := -1;
  dtDataClaculoCusto:= DMProjeto.dDataSistema;
  C_Selecao.Close;
  C_Selecao.Open;
  With C_CalculoPreco do Begin
    Close;
    FetchParams;
    Params.ParamByName('DATACALCULOCUSTO').AsDateTime := 0;
    Open;
  End;
end;

procedure TDlgCalculoCusto.C_CalculoPrecoNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec( nSeq );
  C_CalculoPrecoCALCULOCUSTO.Value := nSeq;
  C_CalculoPrecoSTATUS.Value := 'I';
  C_CalculoPrecoDATACALCULOCUSTO.AsDateTime := dtDataClaculoCusto;
end;

procedure TDlgCalculoCusto.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    if C_CalculoPreco.State in [dsEdit,dsInsert] then C_CalculoPreco.Post;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    C_CalculoPreco.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  except
    on e:exception do begin
      DlgMsg.ShowMsg( 50, [ e.message ] );
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
    end;
  end;
end;

procedure TDlgCalculoCusto.dfItemSelecionou(Sender: TObject);
var sCST : string;
    nRedCST, nAliqICMS : currency;
begin
  inherited;
  try
    C_CalculoPreco.DisableControls;
    while C_CalculoPreco.Locate('ITEM', DMProjeto.C_LocalizarItensITEM.Value, [] ) do
      C_CalculoPreco.Delete;
  finally
    C_CalculoPreco.EnableControls;
  end;

  // Selecionando as unidades do item para já incluí-la...
  Q_SQL.Close;
  Q_SQL.SQL.Text := 'select unidade, fator, percentual, precomanual, percentualminimo ' +
                    'from itensunidades where item = ' + IntToStr( DMProjeto.C_LocalizarItensITEM.Value );
  Q_SQL.Open;

  Q_SQL.First;

  while not Q_SQL.EOF do begin

    C_CalculoPreco.Append;
    C_CalculoPrecoITEM.Value := DMProjeto.C_LocalizarItensITEM.Value;
    C_CalculoPrecoUNIDADE.Value := Q_SQL.FieldByName('UNIDADE').AsString;
    C_CalculoPrecoPRECOCOMPRA.Value := (DMProjeto.C_LocalizarItensPRECOCOMPRA.AsFloat / DMProjeto.C_LocalizarItensFATORUNDCOMPRA.AsCurrency) * Q_SQL.FieldByName('FATOR').AsFloat;
    C_CalculoPrecoFRETE.Value := 0;
    C_CalculoPrecoIPI.Value := 0;           
    C_CalculoPrecoICMSCOMPRA.Value := 0;

    sCST := IIF(DMProjeto.C_LocalizarItensCST.Value <> '', DMProjeto.C_LocalizarItensCST.Value,
              IIF((DMProjeto.C_LocalizarItensGRUPO.Value > 0) and (DMProjeto.C_LocalizarItensCSTGRUPO.Value <> ''), DMProjeto.C_LocalizarItensCSTGRUPO.Value, '00'));

    nRedCST := IIF(DMProjeto.C_LocalizarItensReducaoCST.Value > -999, DMProjeto.C_LocalizarItensReducaoCST.Value,
           IIF((DMProjeto.C_LocalizarItensGRUPO.Value > 0) and (DMProjeto.C_LocalizarItensReducaoCSTGRUPO.Value > 0), DMProjeto.C_LocalizarItensReducaoCSTGRUPO.Value, 0));

    nAliqICMS := IIF(DMProjeto.C_LocalizarItensAliqICMS.Value > -999, DMProjeto.C_LocalizarItensAliqICMS.Value,
        IIF((DMProjeto.C_LocalizarItensGRUPO.Value > 0) and (DMProjeto.C_LocalizarItensAliqICMSGRUPO.Value > 0), DMProjeto.C_LocalizarItensAliqICMSGRUPO.Value, 0));

    if (sCST <> '') and (sCST[2] = '2') and (nRedCST > 0) then
      C_CalculoPrecoICMSVENDA.Value := Arredondar((1 - (nRedCST / 100)) * nAliqICMS, 2)
    else
      C_CalculoPrecoICMSVENDA.Value := nAliqICMS;

    C_CalculoPrecoCODIGO.Value := DMProjeto.C_LocalizarItensCODIGO.Value;
    C_CalculoPrecoDESCRICAO.Value := DMPRojeto.C_LocalizarItensDESCRICAO.Value;
    C_CalculoPrecoFATOR.Value := Q_SQL.FieldByName('FATOR').AsFloat;
    C_CalculoPrecoPERCENTUAL.Value := Q_SQL.FieldByName('PERCENTUAL').AsFloat;
    C_CalculoPrecoPRECOMANUND.Value := Q_SQL.FieldByName('PRECOMANUAL').AsFloat;
    C_CalculoPrecoPERCENTUALMINIMO.Value := Q_SQL.FieldByName('PERCENTUALMINIMO').AsFloat;

    C_CalculoPrecoPRECOMANUAL.Value := 0;

    C_CalculoPreco.Post;

    Q_SQL.Next;
  end;

  dfItem.Text := '';

end;

procedure TDlgCalculoCusto.dbgCalcPrecoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var nIndCol : integer;
    BRect : TRect;
    UltCor : TColor;
begin
  inherited;
   if AColumn.BandIndex = 3 then
     AFont.Color := clOlive
   else if AColumn.BandIndex = 4 then Begin
    if (Acolumn.ColIndex = 3)  then Begin
       if (dbgCalcPreco.GetFieldValue(Anode,'icPrecoVendaAtual',0) >
                dbgCalcPreco.GetFieldValue(Anode,'PRECOMANUAL',0))  Then
         AFont.Color := clRed
       else if (dbgCalcPreco.GetFieldValue(Anode,'icPrecoVendaAtual',0) =
                dbgCalcPreco.GetFieldValue(Anode,'PRECOMANUAL',0))  Then
         AFont.Color := clOlive
       else
         AFont.Color := clBlue;
    End
  End;


{if (dbgCalcPreco.GetFieldValue(Anode,'icPrecoVendaAtual',0) <
                dbgCalcPreco.GetFieldValue(Anode,'PRECOMANUAL',0))  then
}

{  nIndCol := TdxDBGrid(Sender).ColumnByFieldName('DESCRICAO').Index;

  if (ANode.GetPrev <> nil) then begin
    BRect := TdxDBGrid(Sender).CellRect( ANode.GetPrev, 1 );
    UltCor := TdxTreeListColumn(TdxDBGrid(Sender).GetColumnAt( Trunc((BRect.Left + BRect.Right)/2), Trunc((BRect.Top+BRect.Bottom)/2) )).Color;
    if (ANode.GetPrev.Values[ nIndCol ] <> ANode.Values[ nIndCol ]) then begin
     if UltCor = clWindow then AColor := $00CDFECE
     else AColor := clWindow;
    end else AColor := UltCor;
  end
  else UltCor := AColor; }

end;

procedure TDlgCalculoCusto.C_CalculoPrecoCalcFields(DataSet: TDataSet);
var Venda, Minimo, Custo, nCustoContabil : currency;
    nComLucro : double;
begin
  inherited;
  Venda := DMProjeto.PrecoMultiUnidade( C_CalculoPrecoITEM.AsInteger, 0, C_CalculoPrecoUNIDADE.Value, MiniMo, Custo );
  C_CalculoPrecoicPrecoCustoAtual.Value := Custo;
  C_CalculoPrecoicPrecoMinAtual.Value := Minimo;
  C_CalculoPrecoicPrecoVendaAtual.Value := Venda;

  nCustoContabil := (C_CalculoPrecoPRECOCOMPRA.Value * (1 + (C_CalculoPrecoIPI.Value - C_CalculoPrecoICMSCOMPRA.Value)/100)) + (C_CalculoPrecoPRECOCOMPRA.Value * (C_CalculoPrecoFRETE.Value/100));

  nComLucro := IIF(C_CalculoPrecoICMSVENDA.Value >= 100, 99.999999, C_CalculoPrecoICMSVENDA.Value);

  nComLucro := (100 - nComLucro) / 100;

  C_CalculoPrecoicPrecoCustoNovo.Value := nCustoContabil / nComLucro;

   if C_CalculoPrecoPERCENTUALMINIMO.AsCurrency > 0 then
     C_CalculoPrecoicPrecoMinNovo.AsCurrency := C_CalculoPrecoicPrecoCustoNovo.AsCurrency + ( C_CalculoPrecoicPrecoCustoNovo.AsCurrency * C_CalculoPrecoPERCENTUALMINIMO.AsCurrency / 100 );

   if C_CalculoPrecoPERCENTUAL.AsCurrency > 0 then
     C_CalculoPrecoicPrecoVendaNovo.AsCurrency := C_CalculoPrecoicPrecoCustoNovo.AsCurrency + ( C_CalculoPrecoicPrecoCustoNovo.AsCurrency * C_CalculoPrecoPERCENTUAL.AsCurrency / 100 );

   C_CalculoPrecoicPrecoMinNovo.AsCurrency := RoundTo( C_CalculoPrecoicPrecoMinNovo.AsCurrency, -2 );
   C_CalculoPrecoicPrecoVendaNovo.AsCurrency := RoundTo( C_CalculoPrecoicPrecoVendaNovo.AsCurrency, -2 );
end;

procedure TDlgCalculoCusto.btComando2Click(Sender: TObject);
begin
  inherited;
  dbgCalcPreco.TS_ReportFilter.Add('  ');
  dbgCalcPreco.VisualizarImpressao;
end;

procedure TDlgCalculoCusto.btComando1Click(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg( 577, ['?'] ) <> 100 then Exit;

  try
    if C_CalculoPreco.State in [dsEdit,dsInsert] then C_CalculoPreco.Post;
    C_CalculoPreco.First;
    while not C_CalculoPreco.EOF do begin
      if C_CalculoPreco_icSelecionado.AsInteger = 1 then
        C_CalculoPreco.Delete
      else
        C_CalculoPreco.Next;
    end;
  finally
    C_CalculoPreco.EnableControls;
  end;
  //
  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    C_CalculoPreco.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    // Se não fizer duas vezes, ele não exclui (?????)
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    C_CalculoPreco.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  except
    on e:exception do begin
      DlgMsg.ShowMsg( 50, [e.message]);
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
    end;
  end;
end;

procedure TDlgCalculoCusto.C_CalculoPrecoPRECOCOMPRAChange(Sender: TField);
var TempDS : TClientDataSet;
    sUnd : string;
    nItem : integer;
    nFator : Double;
begin
  inherited;
  sUnd   := C_CalculoPrecoUNIDADE.AsString;
  nItem  := C_CalculoPrecoITEM.AsInteger;
  nFator := C_CalculoPrecoFATOR.AsFloat;
  if nFator > 0 then begin
    try
      TempDS := TClientDataSet.Create( Self );
      TempDS.CloneCursor( C_CalculoPreco, True );
      TempDS.First;
      while not TempDS.EOF do begin
        if (TempDS.FieldByName('ITEM').AsInteger = nItem) then begin
          TempDS.Edit;
          TempDS.FieldByName('PRECOCOMPRA').AsFloat := RoundTo( (Sender.AsFloat / nFator ) * TempDS.FieldByName('FATOR').AsFloat, -2 );
          TempDS.Post;
        end;
        TempDS.Next;
      end;
    finally    
      TempDS.Free;
    end;
  end;
end;

procedure TDlgCalculoCusto.C_CalculoPreco_icSelecionadoChange(
  Sender: TField);
var TempDS : TClientDataSet;
    nItem : integer;
begin
  inherited;
  nItem  := C_CalculoPrecoITEM.AsInteger;
  try
    TempDS := TClientDataSet.Create(Self);
    TempDS.CloneCursor( C_CalculoPreco, True );
    TempDS.First;
    while not TempDS.EOF do begin
      if (TempDS.FieldByName('ITEM').AsInteger = nItem) then begin
        TempDS.Edit;
        TempDS.FieldByName('_icSelecionado').AsInteger := Sender.AsInteger;
        TempDS.Post;
      end;
      TempDS.Next;
    end;
  finally
    TempDS.Free;
  end;
end;

procedure TDlgCalculoCusto.btLimparClick(Sender: TObject);
  procedure ConfigOrig;
  begin
    Screen.Cursor := crDefault;
    C_CalculoPreco.Filtered := False;
    C_CalculoPreco.EnableControls;
  end;
begin
  inherited;
  if DlgMsg.ShowMsg( 8018 ) <> 100 then Exit;

  try
    Screen.Cursor := crHourGlass;
    C_CalculoPreco.DisableControls;
    C_CalculoPreco.First;
    while not C_CalculoPreco.EOF do begin
      if C_CalculoPreco_icSelecionado.AsInteger = 1 then begin
        // Atualizando em ITENS o preço de compra
        Q_SQL.Close;
        Q_SQL.SQL.Text := 'update itens set precocompra = :precocompra ' +
                          'where item = :item and unidade = :unidade ';
        Q_SQL.ParamByName('precocompra').AsFloat := C_CalculoPrecoPRECOCOMPRA.AsFloat;
        Q_SQL.ParamByName('item').AsInteger := C_CalculoPrecoITEM.AsInteger;
        Q_SQL.ParamByName('unidade').AsString := C_CalculoPrecoUNIDADE.AsString;
        Q_SQL.ExecSQL;
        // Atualizando em ITENSUNIDADES
        Q_SQL.Close;
        Q_SQL.SQL.Text := 'update itensunidades set precomanual = :preco, percentual = :perc, ' +
                          'percentualminimo = :percmin ' +
                          'where item = :item and unidade = :unidade ';
        Q_SQL.ParamByName('preco').AsFloat := C_CalculoPrecoPRECOMANUAL.AsFloat;
        Q_SQL.ParamByName('perc').AsFloat := C_CalculoPrecoPERCENTUAL.AsFloat;
        Q_SQL.ParamByName('percmin').AsFloat := C_CalculoPrecoPERCENTUALMINIMO.AsFloat;
        Q_SQL.ParamByName('item').AsInteger := C_CalculoPrecoITEM.AsInteger;
        Q_SQL.ParamByName('unidade').AsString := C_CalculoPrecoUNIDADE.AsString;
        Q_SQL.ExecSQL;
        // Atualizando em PRODUTOSPRECO
        Q_SQL.Close;
        Q_SQL.SQL.Text := 'update produtospreco set preco = :preco ' +
                          'where item = :item and unidade = :unidade and tabelapreco = 0 ';
        Q_SQL.ParamByName('preco').AsCurrency := C_CalculoPrecoicPrecoCustoNovo.AsCurrency;
        Q_SQL.ParamByName('item').AsInteger := C_CalculoPrecoITEM.AsInteger;
        Q_SQL.ParamByName('unidade').AsString := C_CalculoPrecoUNIDADE.AsString;
        Q_SQL.ExecSQL;
        // Colocando o status...
        C_CalculoPreco.Edit;
        C_CalculoPrecoSTATUS.AsString := 'A';
        C_CalculoPreco.Post;
      end;
      C_CalculoPreco.Next;
    end;
    C_CalculoPreco.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    // Filtrando e visualizando impressão...
    C_CalculoPreco.EnableControls;
//    C_CalculoPreco.Filter := 'STATUS = ''A'' ';
//    C_CalculoPreco.Filtered := True;
    dbgCalcPreco.TS_ReportFilter.Add('  ');
    dbgCalcPreco.VisualizarImpressao( FormsComponent.Caption + ' - ' + 'Itens Aplicados' );
//    C_CalculoPreco.Filtered := False;
    C_CalculoPreco.Close;
//    C_CalculoPreco.Open;
//    ConfigOrig;
    dfxAtencao.Font.Color := clRed;
    dfxAtencao.Caption := 'Nova Planilha de Custo';
    nSeq := -1;
    dtDataClaculoCusto:= DMProjeto.dDataSistema;
    C_Selecao.Close;
    C_Selecao.Open;
    With C_CalculoPreco do Begin
      Close;
      FetchParams;
      Params.ParamByName('DATACALCULOCUSTO').AsDateTime := 0;
      Open;
    End;
  except
    on e:exception do begin
      DlgMsg.ShowMsg( 50, [e.message] );
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      ConfigOrig;
    end;
  end;
end;

procedure TDlgCalculoCusto.lbAproveitarProdutosClick(Sender: TObject);
var sItens, sItem, sCod, sDesc, sCST, sCSTGrupo : string;
    i, nQtde, nItem, nGrupo : integer;
    nPreco, nFator, nAliqICMS, nRedCST, nAliqICMSGrupo, nRedCSTGrupo : currency;
begin
  inherited;
  sItens := '';
  DlgMescCalcCusto := TDlgMescCalcCusto.Create(self);
  if DlgMescCalcCusto.ShowModal = mrOk then sItens := DlgMescCalcCusto.sItens;
  DlgMescCalcCusto.Release;
  DlgMescCalcCusto := nil;
  if sItens <> '' then begin
    nQtde := ContaStrings( sItens, 'ß' );
    for i := 1 to nQtde do begin
      sItem := SeparaStrings( sItens, 'ß', i );
      nItem := StrToIntDef( SeparaStrings( sItem, '|', 1 ), 0 );
      sCod := SeparaStrings( sItem, '|', 2 );
      sDesc := SeparaStrings( sItem, '|', 3 );
      nPreco := StrToFloatDef( SeparaStrings( sItem, '|', 4 ), 0 );
      nFator := StrToFloatDef( SeparaStrings( sItem, '|', 5 ), 1 );
      nAliqICMS := StrToFloatDef( SeparaStrings( sItem, '|', 6 ), 0 );
      sCST := SeparaStrings( sItem, '|', 7 );
      nRedCST := StrToFloatDef( SeparaStrings( sItem, '|', 8 ), 0 );
      nGrupo := StrToIntDef( SeparaStrings( sItem, '|', 9 ), 0 );
      nAliqICMSGrupo := StrToFloatDef( SeparaStrings( sItem, '|', 10 ), 0 );
      sCSTGrupo := SeparaStrings( sItem, '|', 11 );
      nRedCSTGrupo := StrToFloatDef( SeparaStrings( sItem, '|', 12 ), 0 );

      try
        C_CalculoPreco.DisableControls;
        while C_CalculoPreco.Locate('ITEM', nItem, [] ) do
          C_CalculoPreco.Delete;
      finally
        C_CalculoPreco.EnableControls;
      end;

      // Selecionando as unidades do item para já incluí-la...
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'select unidade, fator, percentual, precomanual, percentualminimo ' +
                        'from itensunidades where item = ' + IntToStr( nItem );
      Q_SQL.Open;

      Q_SQL.First;

      while not Q_SQL.EOF do begin

        C_CalculoPreco.Append;
        C_CalculoPrecoITEM.Value := nItem;
        C_CalculoPrecoUNIDADE.Value := Q_SQL.FieldByName('UNIDADE').AsString;
        C_CalculoPrecoPRECOCOMPRA.Value := (nPreco / nFator) * Q_SQL.FieldByName('FATOR').AsFloat;
        C_CalculoPrecoFRETE.Value := 0;
        C_CalculoPrecoIPI.Value := 0;
        C_CalculoPrecoICMSCOMPRA.Value := 0;

        sCST := IIF(sCST <> '', sCST,
                  IIF((nGrupo > 0) and (sCSTGRUPO <> ''), sCSTGRUPO, '00'));

        nRedCST := IIF(nRedCST > -999, nRedCST,
               IIF((nGRUPO > 0) and (nRedCSTGRUPO > 0), nRedCSTGRUPO, 0));

        nAliqICMS := IIF(nAliqICMS > -999, nAliqICMS,
            IIF((nGRUPO > 0) and (nAliqICMSGRUPO > 0), nAliqICMSGRUPO, 0));

        if (sCST <> '') and (sCST[2] = '2') and (nRedCST > 0) then
          C_CalculoPrecoICMSVENDA.Value := Arredondar((1 - (nRedCST / 100)) * nAliqICMS, 2)
        else
          C_CalculoPrecoICMSVENDA.Value := nAliqICMS;

        C_CalculoPrecoCODIGO.Value := sCod;
        C_CalculoPrecoDESCRICAO.Value := sDesc;
        C_CalculoPrecoFATOR.Value := Q_SQL.FieldByName('FATOR').Value;
        C_CalculoPrecoPERCENTUAL.Value := Q_SQL.FieldByName('PERCENTUAL').Value;
        C_CalculoPrecoPRECOMANUND.Value := Q_SQL.FieldByName('PRECOMANUAL').Value;
        C_CalculoPrecoPERCENTUALMINIMO.Value := Q_SQL.FieldByName('PERCENTUALMINIMO').Value;

        C_CalculoPrecoPRECOMANUAL.Value := 0;

        C_CalculoPreco.Post;

        Q_SQL.Next;
      end;
    end;
  end;
end;

procedure TDlgCalculoCusto.sbPesquisarClick(Sender: TObject);
begin
  inherited;
  dtDataClaculoCusto :=  C_SelecaoDATA.AsDateTime;
  With C_CalculoPreco do Begin
    Close;
    FetchParams;
    Params.ParamByName('DATACALCULOCUSTO').AsDateTime := dtDataClaculoCusto;
    Open;
  End;
  dfxAtencao.Font.Color := clNavy;
  dfxAtencao.Caption := 'Planilha do Dia: '+ FormatDateTime('DD/MM/YYYY', dtDataClaculoCusto);
end;

procedure TDlgCalculoCusto.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  dtDataClaculoCusto :=  DMProjeto.dDataSistema;
  With C_CalculoPreco do Begin
    Close;
    FetchParams;
    Params.ParamByName('DATACALCULOCUSTO').AsDateTime := dtDataClaculoCusto;
    Open;
  End;
  dfxAtencao.Font.Color := clNavy;
  dfxAtencao.Caption := 'Planilha do Dia: '+ FormatDateTime('DD/MM/YYYY', dtDataClaculoCusto);

end;

end.
