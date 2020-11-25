unit Dlg_CurvaABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, DB, Provider, DBClient,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  TeEngine, Series, TeeProcs, Chart, dxEditor, dxEdLib, TS_DateTimePicker,
  dxDBTLCl, dxGrClms, TS_Shape, RXSplit, TeeEdit;

type
  TDlgCurvaABC = class(TFrmModeloCadastros)
    Chart1: TChart;
    Series1: TLineSeries;
    dbgABC: TTS_QDBGrid;
    Q_ABC: TIBQuery;
    C_ABC: TClientDataSet;
    P_ABC: TDataSetProvider;
    C_ABCDS: TDataSource;
    C_ABCITEM: TIntegerField;
    C_ABCDESCRICAO: TStringField;
    C_ABCTOTAL: TFloatField;
    dbgABCITEM: TdxDBGridMaskColumn;
    dbgABCDESCRICAO: TdxDBGridMaskColumn;
    dbgABCQTD: TdxDBGridCurrencyColumn;
    dbgABCPRECO: TdxDBGridCurrencyColumn;
    dbgABCTOTAL: TdxDBGridMaskColumn;
    dbgABCIndex: TdxDBGridMaskColumn;
    dbgABCFreq: TdxDBGridMaskColumn;
    dbgABCClass: TdxDBGridColumn;
    C_ABCINDICE: TIntegerField;
    C_ABCFREQ: TCurrencyField;
    C_ABCCLASSE: TStringField;
    TS_Shape1: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Shape3: TTS_Shape;
    RxSplitter1: TRxSplitter;
    ppmGrid: TTS_PopupMenu;
    ChartPreviewer1: TChartPreviewer;
    Q_Atualiza: TIBQuery;
    TS_Panel1: TTS_Panel;
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    C_ABCQTD: TFloatField;
    C_ABCPRECO: TBCDField;
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
  DlgCurvaABC: TDlgCurvaABC;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDlgCurvaABC.AtualizaGrafico;
var total, acumulado, freq: currency;
    i: integer;
begin
  with C_ABC do begin
    Close;
    Params.ParamByName('datai').AsDateTime := edDataI.Date;
    Params.ParamByName('dataf').AsDateTime := edDataF.Date;
    Open;
  end;
  Series1.Clear;
  Series1.Add(0,'',clRed);
//  dbgABC.FindColumnByFieldName('TOTAL').Sorted := csDown;
  C_ABC.First;
  total := dbgABC.TotalGeral('TOTAL');
  i := 1;
  acumulado := 0;
  while not C_ABC.EOF do begin
    C_ABC.Edit;
    C_ABCIndice.Value := i;
    C_ABC.Post;
    //dbgABC.SetFieldValue(dbgABC.FocusedNode,'INDICE',i);
    try
      freq := (C_ABCTotal.Value*100)/total;
    except
      freq := 0;
    end;
    acumulado := acumulado + freq;
    C_ABC.Edit;
    C_ABCFreq.Value := acumulado;
    C_ABC.Post;
    //dbgABC.SetFieldValue(dbgABC.FocusedNode,'FREQ',acumulado);
    if acumulado <= 70 then begin
      //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
      C_ABC.Edit;
      C_ABCClasse.Value := 'A';
      C_ABC.Post;
//      dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','A');
      Series1.Add(acumulado,'',clRed);
    end
    else begin
      if (acumulado > 70) and (acumulado <= 95) then begin
        //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
        C_ABC.Edit;
        C_ABCClasse.Value := 'B';
        C_ABC.Post;
//        dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','B');
        Series1.Add(acumulado,'',clYellow);
      end
      else begin
        //C_ABC.Locate('ITEM',dbgABC.GetFieldValue(dbgABC.FocusedNode,'ITEM',0),[]);
        C_ABC.Edit;
        C_ABCClasse.Value := 'C';
        C_ABC.Post;
//        dbgABC.SetFieldValue(dbgABC.FocusedNode,'CLASSE','C');
        Series1.Add(acumulado,'',clBlue);
      end;
    end;
    i := i + 1;
    //dbgABC.GoToNext(False);
    C_ABC.Next;
  end;
  dbgABC.GoToFirst;
end;
procedure TDlgCurvaABC.FormShow(Sender: TObject);
begin
  inherited;
  edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  edDataF.Date := DmProjeto.dDataSistema;
  AtualizaGrafico;
end;

procedure TDlgCurvaABC.edDataIExit(Sender: TObject);
begin
  inherited;
  AtualizaGrafico;
end;

procedure TDlgCurvaABC.edDataFExit(Sender: TObject);
begin
  inherited;
  AtualizaGrafico;
end;

procedure TDlgCurvaABC.dbgABCCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
 if AColumn = dbgABCClass then begin
   if AText = 'A' then begin
     AColor := clRed;
     AFont.Color := clWhite;
   end;
   if AText = 'B' then AColor := clYellow;
   if AText = 'C' then begin
     AColor := clBlue;
     AFont.Color := clWhite;
   end;
 end;
end;

procedure TDlgCurvaABC.btComando2Click(Sender: TObject);
begin
  inherited;
  ChartPreviewer1.Execute;
end;

procedure TDlgCurvaABC.btComando1Click(Sender: TObject);
var a:string;
begin
  inherited;

  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    C_ABC.First;
    while not C_ABC.Eof do begin
      Q_Atualiza.Close;
      Q_Atualiza.SQL.Clear;
      Q_Atualiza.SQL.Add('Update itens set abc = '''+C_ABCClasse.AsString+''' where item = '+IntToStr(C_ABCItem.AsInteger));
      Q_Atualiza.ExecSQL;
      C_ABC.Next;
    end;
    Q_Atualiza.Close;
    Q_Atualiza.SQL.Clear;
    Q_Atualiza.SQL.Add('Update parametros set Valor = ''De '+edDataI.Text+ ' a '+edDataF.Text+''' where Parametro = ''PeriodoABC''');
    Q_Atualiza.ExecSQL;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    DlgMsg.ShowMsg(50,['A classe ABC dos itens exibidos foi atualizada']);
  except
      On e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg( 50,[e.message]);
      end;
  end;
end;

end.
