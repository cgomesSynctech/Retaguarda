unit Rpt_ListaPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_PopupEdit, TS_PopupFiltrarItens, dxDBTLCl, dxGrClms, Math, dxDBEdtr,
  dxDBELib, TS_LookupComboBox;

type
  TRptListaPrecos = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaPRECO: TBCDField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaCODIGOBARRAS: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaFATORUNDVENDA: TFloatField;
    C_ConsultaPERCENTUAL: TBCDField;
    C_ConsultaPERCUND: TBCDField;
    C_ConsultaPRECOMANUND: TBCDField;
    C_ConsultaFATORITEMUND: TFloatField;
    C_ConsultaPERCENTUALMINIMO: TBCDField;
    C_ConsultaUNDVENDA: TStringField;
    C_ConsultaPRECOPROMOCAO: TBCDField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaicPreco: TCurrencyField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaFATORUNDVENDA: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUAL: TdxDBGridCurrencyColumn;
    dbgConsultaPERCUND: TdxDBGridCurrencyColumn;
    dbgConsultaPRECOMANUND: TdxDBGridCurrencyColumn;
    dbgConsultaFATORITEMUND: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUALMINIMO: TdxDBGridCurrencyColumn;
    dbgConsultaUNDVENDA: TdxDBGridMaskColumn;
    dbgConsultaPRECOPROMOCAO: TdxDBGridCurrencyColumn;
    dbgConsultaicPreco: TdxDBGridColumn;
    C_ConsultaicPrecoMinimo: TCurrencyField;
    dbgConsultaicPrecoMinimo: TdxDBGridColumn;
    C_ConsultaDESCONTOMAXIMO: TBCDField;
    C_ConsultaDESCONTOMAXIMOGRUPO: TBCDField;
    C_IndexadoresDS: TDataSource;
    Q_Indexadores: TIBQuery;
    P_Indexadores: TDataSetProvider;
    C_Indexadores: TClientDataSet;
    C_IndexadoresINDEXADOR: TIntegerField;
    C_IndexadoresDESCRICAO: TStringField;
    TS_Label1: TTS_Label;
    cmbIndex: TTS_LookupComboBox;
    C_ConsultaINDEXADOR: TIntegerField;
    Q_SQL: TIBQuery;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaFabricante: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure cmbIndexSelectionChange(Sender: TObject);
  private
    { Private declarations }
    nIndex : double;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptListaPrecos: TRptListaPrecos;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TRptListaPrecos.Atualizar;
begin
   // Selecionando o valor da cotação escolhida,
   // se não foi escolhida nenhuma o valor é 1 (hum).
   nIndex := 1;
   if cmbIndex.LookupKeyValue <> null then begin
     with Q_SQL do begin
       Close;
       SQL.Text := 'select valor from cotacoes ' +
                   'where data = (select max(data) from cotacoes where indexador = :i) ' +
                   'and indexador = :i ';
       ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
       Open;
       if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
         nIndex := Fields[0].AsFloat;
       Close;
     end;
   end;

  C_Consulta.Close;
  Q_Consulta.SQL.Text := 'select ' + getCampos + ' from  ' + getTabelas;
  if PopupFiltroItens.getSQL <> '' then
   Q_Consulta.SQL.Text := Q_COnsulta.SQL.Text + 'where ' + PopupFiltroItens.getSQL;
  Q_Consulta.SQL.Text := Q_COnsulta.SQL.Text + ' order by i.descricao ';   
  C_Consulta.Open;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(replace(PopupFiltroItens.Hint, #13, ' '));
    GoToFirst;
  end;
end;

procedure TRptListaPrecos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptListaPrecos.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptListaPrecos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'ITEM', 0)]);
  DMProjeto.CriarForm('FrmItens', Self, true);
end;

procedure TRptListaPrecos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  C_Indexadores.Close;
  C_Indexadores.Open;
//  Atualizar;
end;

procedure TRptListaPrecos.C_ConsultaCalcFields(DataSet: TDataSet);
var nFatorVenda : double;
    nDescMax : currency;
begin
  inherited;
  // Cálculo do Preço de Venda...
  nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);
  {Desc. Max. Produto}
  nDescMax := DataSet.FieldByName('DescontoMaximo').asCurrency;

  {Desc. Max. Grupo}
  if nDescMax < 0 then
      nDescMax := DataSet.FieldByName('DESCONTOMAXIMOGrupo').asCurrency;

  {Desc. Max. Vendedor}
  if nDescMax < 0 then
      nDescMax := DMProjeto.nMaxDescontoFunc;


  if (DataSet.FieldByName('PrecoManUnd').AsCurrency > 0) then begin
    // Calculando primeiro o mínimo... **##**
    DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('Preco').asCurrency;
    if (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
      DataSet.FieldByName('icPreco').AsCurrency := (DataSet.FieldByName('Preco').AsCurrency / nFatorVenda ) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
    if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
      DataSet.FieldByName('icPrecoMinimo').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency +
                                                        (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercentualMinimo').ASCurrency /100 );
    // **##** Para então colocar o preço manual
    DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('PrecoManUnd').AsCurrency;
  end
  else begin
    if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then begin
      DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('PrecoPromocao').asCurrency;
      DataSet.FieldByName('icPrecoMinimo').asCurrency := DataSet.FieldByName('PrecoPromocao').asCurrency;
    end
    else
    begin
      if DataSet.FieldByName('Percentual').asCurrency = 0 then begin
          DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Preco').asCurrency;
          if (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
            DataSet.FieldByName('icPreco').AsCurrency := (DataSet.FieldByName('Preco').AsCurrency / nFatorVenda ) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
      end
      else begin
          DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Percentual').asCurrency;
      end;

      if (nDescMax > 0) and (DataSet.FieldByName('Percentual').asCurrency = 0) then
          DataSet.FieldByName('icPrecoMinimo').asCurrency := DataSet.FieldByName('icPreco').AsCurrency * (1 - (nDescMax / 100))
      else
          DataSet.FieldByName('icPrecoMinimo').AsCurrency := 0;

      if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
         DataSet.FieldByName('icPrecoMinimo').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency +
                                                           (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercentualMinimo').AsCurrency /100 );

      if (DataSet.FieldByName('PercUnd').ASCurrency > 0) then
        DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency + (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercUnd').ASCurrency /100 );

      DataSet.FieldByName('icPreco').AsCurrency := RoundTo( DataSet.FieldByName('icPreco').AsCurrency, -2 );
      DataSet.FieldByName('icPrecoMinimo').AsCurrency := RoundTo( DataSet.FieldByName('icPrecoMinimo').AsCurrency, -2 );
     end;
  end;
  // Modificando a cotação para o indexador selecionado...
  if DataSet.FieldByName('Indexador').AsVariant <> null then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      DataSet.FieldByName('icPreco').AsCurrency  := RoundTo( (DataSet.FieldByName('icPreco').AsCurrency  / Q_SQL.Fields[0].AsFloat) * nIndex, -2 );
      DataSet.FieldByName('icPrecoMinimo').AsCurrency  := RoundTo( (DataSet.FieldByName('icPrecoMinimo').AsCurrency  / Q_SQL.Fields[0].AsFloat) * nIndex, -2 );
    end;
    Q_SQL.Close;
  end;
  //
end;

procedure TRptListaPrecos.cmbIndexSelectionChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
