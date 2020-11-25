unit Frm_Encerrantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Provider, DBClient, DB, IBCustomDataSet,
  IBUpdateSQL, IBQuery, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxCntner, TS_QDBGrid, DBTables;

type
  TFrmEncerrantes = class(TFrmModeloCadastros)
    Q_Encerrantes: TIBQuery;
    U_Encerrantes: TIBUpdateSQL;
    C_EncerrantesDS: TDataSource;
    C_Encerrantes: TClientDataSet;
    P_Encerrantes: TDataSetProvider;
    dbgEncerrantes: TTS_QDBGrid;
    TS_Label1: TTS_Label;
    lblData: TTS_Label;
    TS_Label2: TTS_Label;
    lblFunc: TTS_Label;
    TS_Label3: TTS_Label;
    lblCaixa: TTS_Label;
    Q_Bombas: TIBQuery;
    Q_BombasITEM: TIntegerField;
    Q_BombasDESCRICAO: TIBStringField;
    Q_BombasLEITURAATUAL: TIBBCDField;
    Q_BombasLEITURAMAXIMA: TIBBCDField;
    Q_CheckVendas: TIBQuery;
    Q_CheckVendasQUANTTOTAL: TIBBCDField;
    Q_CheckVendasSUBTOTAL: TFloatField;
    Q_BombasPRECO: TIBBCDField;
    C_EncerrantesENCERRANTE: TIntegerField;
    C_EncerrantesFUNCIONARIO: TIntegerField;
    C_EncerrantesDATA: TDateField;
    C_EncerrantesBOMBA: TIntegerField;
    C_EncerrantesPRECO: TBCDField;
    C_EncerrantesLEITURAINICIAL: TBCDField;
    C_EncerrantesLEITURAFINAL: TBCDField;
    C_EncerrantesLEITURAMAXIMA: TBCDField;
    C_EncerrantesDESCRICAO: TStringField;
    dbgEncerrantesENCERRANTE: TdxDBGridMaskColumn;
    dbgEncerrantesFUNCIONARIO: TdxDBGridMaskColumn;
    dbgEncerrantesDATA: TdxDBGridDateColumn;
    dbgEncerrantesBOMBA: TdxDBGridMaskColumn;
    dbgEncerrantesPRECO: TdxDBGridCurrencyColumn;
    dbgEncerrantesAFERICAO: TdxDBGridCurrencyColumn;
    dbgEncerrantesLEITURAINICIAL: TdxDBGridCurrencyColumn;
    dbgEncerrantesLEITURAFINAL: TdxDBGridCurrencyColumn;
    dbgEncerrantesLEITURAMAXIMA: TdxDBGridCurrencyColumn;
    dbgEncerrantesDESCRICAO: TdxDBGridMaskColumn;
    C_EncerrantesQTDVENDA: TBCDField;
    dbgEncerrantesQTDVENDA: TdxDBGridColumn;
    C_EncerrantesAFATURAR: TFloatField;
    Q_PPEncerrantes: TIBQuery;
    dbgEncerrantesAFATURAR: TdxDBGridColumn;
    C_EncerrantesAFERICAO: TBCDField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_EncerrantesCalcFields(DataSet: TDataSet);
    procedure btComando1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbgEncerrantesAFATURARCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEncerrantes: TFrmEncerrantes;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TFrmEncerrantes.FormsComponentBeforeClearParams(Sender: TObject);
var sSQL: string;
begin
  inherited;
  lblData.Caption  := FormatDateTime('dd/mm/yyyy',DMProjeto.dDataSistema);
  lblFunc.Caption  := VarToStr(DMProjeto.getCampoTabela('usuarios','usuario','loginname',DMProjeto.nFuncionario));
  lblCaixa.caption := VarToStr(DMProjeto.getCampoTabela('contas','conta','descricao',DMProjeto.nContaAtual));
  with Q_PPEncerrantes do begin
    close;
    SQL.Text := 'EXECUTE  PROCEDURE PP_ENCERRANTES_GERAR(:funcionario,:Data) ';
    params[0].AsInteger := DMProjeto.nFuncionario;
    params[1].AsDateTime:=  DMProjeto.dDataSistema;
    ExecSQL;
  end;
  with C_Encerrantes do begin
    close;
    FetchParams;
    params[0].AsDateTime := DMProjeto.dDataSistema;
    OPen;
  end;


end;

procedure TFrmEncerrantes.C_EncerrantesCalcFields(DataSet: TDataSet);
begin
  inherited;
//  If (C_EncerrantesQTDVENDA.Value = 0) And (C_EncerrantesLEITURAFINAL.Value = 0) Then
//   C_EncerrantesAFATURAR.Value := 0;
 Try
  If C_EncerrantesLEITURAFINAL.Value < C_EncerrantesLEITURAINICIAL.Value Then
     C_EncerrantesAFATURAR.Value := (C_EncerrantesLEITURAFINAL.Value + C_EncerrantesLEITURAMAXIMA.Value) -
                                   (C_EncerrantesLEITURAINICIAL.Value +
                                    C_EncerrantesQTDVENDA.Value +
                                    C_EncerrantesAFERICAO.Value)
  Else
     C_EncerrantesAFATURAR.Value := C_EncerrantesLEITURAFINAL.Value -
                                   (C_EncerrantesLEITURAINICIAL.Value +
                                    C_EncerrantesQTDVENDA.Value +
                                    C_EncerrantesAFERICAO.Value);
 Except                                    
 End;


end;

procedure TFrmEncerrantes.btComando1Click(Sender: TObject);
var nLitros,nValor: single;
begin
end;

procedure TFrmEncerrantes.btGravarClick(Sender: TObject);
begin
 C_Encerrantes.ApplyUpdates(0);
end;

procedure TFrmEncerrantes.dbgEncerrantesAFATURARCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Color := clWindowText;
  Try
    If StrToCurr(AText) > 0 then
        AFont.Color := clRed;
  Except
     AFont.Color := clWindowText;
  End;
end;

end.
