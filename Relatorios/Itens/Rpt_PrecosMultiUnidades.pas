unit Rpt_PrecosMultiUnidades;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor,
    dxDBEdtr, dxDBELib, TS_LookupComboBox, Buttons, TS_SpeedButton, dxTL,
    dxDBCtrl, dxDBGrid, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
    IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
    TS_EffectsPanel, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel,
    TS_MaxPanel, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu, ComCtrls, Variants,
    dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
    Placemnt, BTOdeum, TS_PopupEdit, TS_PopupFiltrarItens, Math;

type
    TRptPrecosMultiUnidades = class(TRptPadrao)
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaicEstoque: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaDESCFABRICANTE: TdxDBGridMaskColumn;
        Q_SQL: TIBQuery;
    dbgConsultaNOMEULTIMOFORNECEDOR: TdxDBGridMaskColumn;
        dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
        dbgConsultaITEM: TdxDBGridMaskColumn;
        gridTabelasPreco: TTS_QDBGrid;
        gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
        gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn;
        gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn;
        gridTabelasPrecoBASEADA: TdxDBGridCheckColumn;
        TS_Label2: TTS_Label;
        cmbTabelaPreco: TTS_PopupEdit;
        C_TabelasPrecoDS: TDataSource;
        C_TabelasPreco: TClientDataSet;
        Q_TabelasPreco: TIBQuery;
        P_TabelasPreco: TDataSetProvider;
        C_TabelasPrecoTABELAPRECO: TIntegerField;
        C_TabelasPrecoDESCRICAO: TStringField;
        C_TabelasPrecoPERCENTUAL: TBCDField;
        C_TabelasPreco_icSelecionado: TIntegerField;
        PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaPRECO: TBCDField;
    C_ConsultaPRECOMANUAL: TStringField;
    C_ConsultaPRECOPROMOCAO: TBCDField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaDESCFABRICANTE: TStringField;
    C_ConsultaNOMEULTIMOFORNECEDOR: TStringField;
    C_ConsultaNOMEFORNPREFERENCIA: TStringField;
    C_ConsultaPERCUND: TBCDField;
    C_ConsultaPRECOMANUND: TBCDField;
    C_ConsultaUNDVENDA: TStringField;
    C_ConsultaPRECONORMAL: TBCDField;
    C_ConsultaFATORITEMUND: TFloatField;
    C_ConsultaPERCENTUALMINIMO: TBCDField;
    C_ConsultaicPreco: TCurrencyField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaicPreco: TdxDBGridColumn;
    C_ConsultaPERCENTUAL: TBCDField;
    C_ConsultaFATORUNDVENDA: TFloatField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaicEstoque: TFloatField;
    Q_Indexadores: TIBQuery;
    P_Indexadores: TDataSetProvider;
    C_Indexadores: TClientDataSet;
    C_IndexadoresINDEXADOR: TIntegerField;
    C_IndexadoresDESCRICAO: TStringField;
    C_IndexadoresDS: TDataSource;
    TS_Label1: TTS_Label;
    cmbIndex: TTS_LookupComboBox;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaQTDEMBALAGEM: TFloatField;
    dbgConsultaQTDEMBALAGEM: TdxDBGridColumn;
    C_ConsultaDESCGRPCOMISSAO: TStringField;
    dbgConsultaDESCGRPComissao: TdxDBGridColumn;
    dbgConsultaFator: TdxDBGridColumn;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure cmbTabelaPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure cmbIndexSelectionChange(Sender: TObject);
    private
        { Private declarations }
        sTabelas, SelectInicial: string;
        FAddGroupItem: Boolean;
        nIndex : double;
        sDescItensSelec, sDescGruposSelec, sDescFabrSelec: string;
        procedure AtualizaItens(WhereAdicional: string = '');
    public
        { Public declarations }
    end;

var
    RptPrecosMultiUnidades: TRptPrecosMultiUnidades;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}


procedure TRptPrecosMultiUnidades.AtualizaItens;
var nTab : integer;
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

   nTab := StrToIntDef( SeparaStrings(gridTabelasPreco.Selecionados,',',1), -1);
   C_Consulta.Close;
   Q_Consulta.SQL.Text := 'select i.item, i.codigo, i.descricao, iu.unidade, ' +
                          'i.estoque, i.referencia, i.percentual, i.fatorundvenda, ' +
                          'p.Preco, p.PrecoManual, '+
                          'p.PrecoPromocao, g.DescricaoGrupo, ' +
                          'f.descricao as descfabricante, ultf.Nome as NomeUltimoFornecedor, ' +
                          'fpf.Nome as NomeFornPreferencia, iu.percentual as percund, ' +
                          'iu.precomanual as precomanund, i.unidade as undvenda, ' +
                          'pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
                          'iu.PercentualMinimo, i.indexador, iu.QTDEMBALAGEM, gc.descricao as descgrpcomissao ' +
                          'from itens i ' +
                          'left join Grupos g on g.Grupo = i.Grupo ' +
                          'left join Fabricantes f ON f.Fabricante = i.Fabricante ' +
                          'left join itensunidades iu on iu.item = i.item ' +
                          'left join Favorecidos ultf ON ultf.Favorecido = i.UltimoFornecedor ' +
                          'left join Favorecidos fpf ON fpf.Favorecido = i.FornecPreferencia ' +
                          'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade ' +
                          'and p.tabelapreco =  ' + IntToStr(nTab) + ' ' +
                          'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade ' +
                          'and pr.tabelapreco =  ' + IntToStr(nTab) + ' '+
                          'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao ';
   if PopupFiltroItens.getSQL <> '' then
     Q_Consulta.SQL.Text := Q_COnsulta.SQL.Text + 'where ' + PopupFiltroItens.getSQL;


//   Q_Consulta.ParamByName('tabelapreco').AsInteger := nTab;

   C_Consulta.Open;
    with dbgConsulta do begin
      TS_ReportFilter.Clear;
      TS_ReportFilter.Add(replace(PopupFiltroItens.Hint, #13, ' '));
      if cmbIndex.Text <> '' then TS_ReportFilter.Add('Indexador: ' + cmbIndex.Text + ' ' + FormatFloat('0.#####', nIndex) );
      GotoFirst;
    end;
end;

procedure TRptPrecosMultiUnidades.btAtualizarClick(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptPrecosMultiUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    Action := caFree;
end;

procedure TRptPrecosMultiUnidades.dbgConsultaDblClick(Sender: TObject);
var
    nItem: Integer;
    sForm: string;
begin
    inherited;
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'ITEM', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
end;

procedure TRptPrecosMultiUnidades.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_Indexadores.Close;
    C_Indexadores.Open;
    C_TabelasPreco.Close;
    C_TabelasPreco.Open;
    GridTabelasPreco.SetSelecionados('0');
    C_TabelasPreco.First;
    cmbTabelaPreco.Text := C_TabelasPrecoDescricao.Value;
    AtualizaItens;
end;

procedure TRptPrecosMultiUnidades.PopupFiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptPrecosMultiUnidades.cmbTabelaPrecoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptPrecosMultiUnidades.C_ConsultaCalcFields(DataSet: TDataSet);
var nFatorVenda, nFatorItemUnd : double;
begin
  inherited;
    // Cálculo do Preço de Venda...
  nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);
  nFatorItemUnd := IIF(DataSet.FieldByName('FatorItemUnd').asFloat > 0, DataSet.FieldByName('FatorItemUnd').asFloat, 1);

  if (DataSet.FieldByName('PrecoManUnd').AsCurrency > 0) then begin
    DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('PrecoManUnd').AsCurrency;
  end
  else begin
    if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then
    begin
        DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('PrecoPromocao').asCurrency;
    end
    else
    begin
      if DataSet.FieldByName('Percentual').asCurrency = 0 then begin
          DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('PrecoNormal').asCurrency;
          if (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
            DataSet.FieldByName('icPreco').AsCurrency := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda ) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
      end
      else begin
          DataSet.FieldByName('icPreco').asCurrency := DataSet.FieldByName('Percentual').asCurrency;
      end;
      if (DataSet.FieldByName('PercUnd').ASCurrency > 0) then
        DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('icPreco').AsCurrency + (DataSet.FieldByName('icPreco').AsCurrency * DataSet.FieldByName('PercUnd').ASCurrency /100 );

      DataSet.FieldByName('icPreco').AsCurrency := RoundTo( DataSet.FieldByName('icPreco').AsCurrency, -2 );
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
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
      DataSet.FieldByName('icPreco').AsCurrency  := RoundTo( (DataSet.FieldByName('icPreco').AsCurrency  / Q_SQL.Fields[0].AsFloat) * nIndex, -2 );
    Q_SQL.Close;
  end;
  //

  DataSet.FieldByName('icEstoque').AsFloat := (DataSet.FieldByName('ESTOQUE').AsCurrency / nFatorItemUnd) * nFatorVenda;
end;

procedure TRptPrecosMultiUnidades.cmbIndexSelectionChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

end.
