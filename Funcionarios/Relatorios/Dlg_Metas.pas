unit Dlg_Metas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, DB, Provider, DBClient,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  TeEngine, Series, TeeProcs, Chart, dxEditor, dxEdLib, TS_DateTimePicker,
  dxDBTLCl, dxGrClms, TS_Shape, RXSplit, TeeEdit, TeeURL, TeeSeriesTextEd,
  dxDBEdtr, dxDBELib, TS_LookupComboBox;

type
  TDlgMetas = class(TFrmModeloCadastros)
    Chart1: TChart;
    dbgABC: TTS_QDBGrid;
    Q_Metas: TIBQuery;
    C_Metas: TClientDataSet;
    P_Metas: TDataSetProvider;
    C_MetasDS: TDataSource;
    RxSplitter1: TRxSplitter;
    ppmGrid: TTS_PopupMenu;
    ChartPreviewer1: TChartPreviewer;
    Q_Atualiza: TIBQuery;
    Series1: TPieSeries;
    C_MetasDATAINICIAL: TDateField;
    C_MetasDATAFINAL: TDateField;
    C_MetasMETAPERIODO: TBCDField;
    C_MetasMETADIARIA: TBCDField;
    C_MetasORIGEMREPLIC: TStringField;
    C_MetasTITULO: TStringField;
    C_MetasFATURADO: TFloatField;
    C_MetasID: TIntegerField;
    IBQuery1: TIBQuery;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1TITULO: TStringField;
    Q_Detalhe: TIBQuery;
    P_Detalhe: TDataSetProvider;
    C_DetalheDS: TDataSource;
    C_Detalhe: TClientDataSet;
    C_DetalheVENDEDOR: TIntegerField;
    C_DetalheNOME: TStringField;
    C_DetalheMETAPERIODO: TBCDField;
    C_DetalheID: TIntegerField;
    C_DetalheDATAFINAL: TDateField;
    C_DetalheDATAINICIAL: TDateField;
    C_DetalheFATPERIODO: TFloatField;
    dbgABCVENDEDOR: TdxDBGridMaskColumn;
    dbgABCNOME: TdxDBGridMaskColumn;
    dbgABCMETAPERIODO: TdxDBGridCurrencyColumn;
    dbgABCID: TdxDBGridMaskColumn;
    dbgABCDATAFINAL: TdxDBGridDateColumn;
    dbgABCDATAINICIAL: TdxDBGridDateColumn;
    dbgABCFATPERIODO: TdxDBGridMaskColumn;
    cmbTituloMeta2: TTS_LookupComboBox;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    vlMeta: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    vlFaturamento: TTS_Label;
    TS_Label6: TTS_Label;
    vlDiferenca: TTS_Label;
    TS_Label7: TTS_Label;
    vlProporcao: TTS_Label;
    lb_Periodo: TTS_Label;
    procedure AtualizaGrafico;
    procedure FormShow(Sender: TObject);
    procedure edDataIExit(Sender: TObject);
    procedure edDataFExit(Sender: TObject);
    procedure dbgABCCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btComando2Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgMetas: TDlgMetas;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDlgMetas.AtualizaGrafico;
var total, acumulado, freq: currency;
    i: integer;
    cores : array[1..13] of TColor ;
    begin
    i:= 0 ;
    cores[1] := clAqua  ;
    cores[2] := clYellow  ;
    cores[3] := clBlue  ;
    cores[4] := clLime ;
    cores[5] := clPurple ;
    cores[6] := clGradientActiveCaption  ;
    cores[7] := clFuchsia ;
    cores[8] := clGreen ;
    cores[9] := clSkyBlue ;
    cores[10] := clMoneyGreen ;
    cores[11] := clTeal ;
    cores[12] := clCream ;

  with Q_Metas do begin
        Close ;
        if cmbTituloMeta2.LookupKeyValue <> null then begin
          ParamByName('id').AsInteger := cmbTituloMeta2.LookupKeyValue ;
          open;
        end;
  end;
  C_Metas.Close;
  C_Metas.Open;
  with Q_Detalhe do begin
     Close ;
     if cmbTituloMeta2.LookupKeyValue <> null then begin
        ParamByName('id').AsInteger := cmbTituloMeta2.LookupKeyValue ;
        open;
     end;
  end;
  C_Detalhe.Close;
  C_Detalhe.Open;
  series1.Clear;
  Series1.Add(C_MetasMETAPERIODO.Value - C_MetasFaturado.Value,'Restasnte Meta',clRed);

  while not C_Detalhe.EOF do begin
     i := i + 1 ;
     if ( C_DetalheFATPERIODO.value / C_MetasMETAPERIODO.Value > 0.02 ) then
        series1.Add(C_DetalheFATPERIODO.Value,C_DetalheNOME.AsString,cores[i])
     else
        acumulado := acumulado + C_DetalheFATPERIODO.Value ;

     C_Detalhe.Next ;
  end ;
  series1.Add(acumulado,'Outros Vendedores',clCream);
  lb_Periodo.Caption := C_MetasDATAINICIAL.AsString + ' à ' + C_MetasDATAFINAL.AsString ;
  vlMeta.Caption := FormatCurr('#,###,##0.00',C_MetasMETAPERIODO.Value ) ;
  vlFaturamento.Caption := FormatCurr('#,###,##0.00',C_MetasFATURADO.Value ) ;
  vlDiferenca.Caption := FormatCurr('#,###,##0.00',( C_MetasFATURADO.Value - C_MetasMETAPERIODO.Value )) ;
  vlProporcao.Caption := FormatCurr('#,###,##0.00',( C_MetasFATURADO.Value / C_MetasMETAPERIODO.Value *100 )) ;
  if ( C_MetasMETAPERIODO.Value - C_MetasFATURADO.Value ) > 0 then begin
     vlFaturamento.Font.Color := clRed ;
     vlDiferenca.Font.Color := clRed ;
  end
  else begin
     vlFaturamento.Font.Color := clRed ;
     vlDiferenca.Font.Color := clRed ;
  end;



//  Series1.Clear;
//  Series1.Add(0,'',clRed);
//  dbgABC.FindColumnByFieldName('TOTAL').Sorted := csDown;
//  C_Metas.First;
//  total := dbgABC.TotalGeral('TOTAL');
//  i := 1;
//  acumulado := 0;
 // while not C_Metas.EOF do begin
 //   C_Metas.Edit;
  //  C_MetasID.Value := i;
 //   C_Metas.Post;
    //dbgABC.SetFieldValue(dbgABC.FocusedNode,'INDICE',i);
//    try
//      freq := (C_ABCTotal.Value*100)/total;
//    except
//      freq := 0;
//    end;
//   acumulado := acumulado + freq;
//    C_ABC.Edit;
//    C_ABCFreq.Value := acumulado;
 //   C_ABC.Post;
    //dbgABC.SetFieldValue(dbgABC.FocusedNode,'FREQ',acumulado);
//    if acumulado <= 70 then begin
      //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
//      C_ABC.Edit;
 //     C_ABCClasse.Value := 'A';
 //     C_ABC.Post;
//      dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','A');
//      Series1.Add(acumulado,'',clRed);
//    end
 //   else begin
 //     if (acumulado > 70) and (acumulado <= 95) then begin
        //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
 //       C_ABC.Edit;
 //       C_ABCClasse.Value := 'B';
 //       C_ABC.Post;
//        dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','B');
 //       Series1.Add(acumulado,'',clYellow);
 //     end
 //     else begin
        //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
 //       C_ABC.Edit;
 //       C_ABCClasse.Value := 'C';
 //       C_ABC.Post;
//        dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','C');
 //       Series1.Add(acumulado,'',clBlue);
  //    end;
 //   end;
//    i := i + 1;
    //dbgABC.GoToNext(False);
//    C_Metas.Next;
//  end;
 // dbgABC.GoToFirst;
end;
procedure TDlgMetas.FormShow(Sender: TObject);
begin
  inherited;
 // edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
//  edDataF.Date := DmProjeto.dDataSistema;
//  AtualizaGrafico;
ClientDataSet1.Open ;
end;

procedure TDlgMetas.edDataIExit(Sender: TObject);
begin
  inherited;
  AtualizaGrafico;
end;

procedure TDlgMetas.edDataFExit(Sender: TObject);
begin
  inherited;
  AtualizaGrafico;
end;

procedure TDlgMetas.dbgABCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
 //if AColumn = dbgABCClass then begin
 //  if AText = 'A' then begin
  //   AColor := clRed;
  //   AFont.Color := clWhite;
 //  end;
//   if AText = 'B' then AColor := clYellow;
//   if AText = 'C' then begin
//     AColor := clBlue;
//     AFont.Color := clWhite;
 //  end;
 //end;
end;

procedure TDlgMetas.btComando2Click(Sender: TObject);
begin
  inherited;
  ChartPreviewer1.Execute;
end;

procedure TDlgMetas.btComando1Click(Sender: TObject);
var a:string;
begin
  inherited;
 AtualizaGrafico;
end;
end.
