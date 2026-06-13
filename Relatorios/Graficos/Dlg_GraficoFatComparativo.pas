unit Dlg_GraficoFatComparativo;

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
  TDlgGraficoFatComparativo = class(TFrmModeloCadastros)
    Chart1: TChart;
    Q_GraficoFatComparativo: TIBQuery;
    C_GraficoFatComparativo: TClientDataSet;
    P_GraficoFatComparativo: TDataSetProvider;
    C_GraficoFatComparativoDS: TDataSource;
    ppmGrid: TTS_PopupMenu;
    ChartPreviewer1: TChartPreviewer;
    Q_Atualiza: TIBQuery;
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
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    vlFaturamento: TTS_Label;
    vlProporcao: TTS_Label;
    lb_Periodo: TTS_Label;
    Series1: TBarSeries;
    C_GraficoFatComparativoMESANO: TStringField;
    C_GraficoFatComparativoTOTAL: TBCDField;
    Series2: TBarSeries;
    procedure AtualizaGrafico;                    
    procedure FormShow(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgGraficoFatComparativo: TDlgGraficoFatComparativo;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDlgGraficoFatComparativo.AtualizaGrafico;
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

  Series1.Clear;
  with Q_GraficoFatComparativo do begin
        Close ;
        Sql.Text := 'SELECT skip ((select count(*) -24 from faturamentosimples)) mesano, total FROM faturamentosimples F '+
                   ' ORDER BY  ano, mes ';
        open;
  end;
  C_GraficoFatComparativo.Close;
  C_GraficoFatComparativo.Open;
  while not C_GraficoFatComparativo.EOF do begin
     i := i + 1 ;
     if i < 13 then
          Series1.Add(C_GraficoFatComparativoTOTAL.Value,C_GraficoFatComparativoMESANO.AsString,clRed)
     else
          Series2.Add(C_GraficoFatComparativoTOTAL.Value,C_GraficoFatComparativoMESANO.AsString,clBlue);
  C_GraficoFatComparativo.Next;
  end ;
end;
procedure TDlgGraficoFatComparativo.FormShow(Sender: TObject);
begin
  inherited;
    AtualizaGrafico;
end;

procedure TDlgGraficoFatComparativo.btComando2Click(Sender: TObject);
begin
  inherited;
  ChartPreviewer1.Execute;
end;

procedure TDlgGraficoFatComparativo.btComando1Click(Sender: TObject);
var a:string;
begin
  inherited;
 AtualizaGrafico;
end;
end.
