unit Frm_RomaneioCobr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBMemo, dxDBEdtr, TS_DBLookupComboBox, TS_DBEditDate,
  dxDBTLCl, dxGrClms, DB;

type
  TFrmRomaneioCobr = class(TFrmPadrao)
    lbCodigo: TTS_Label;
    edCodigo: TTS_DBButtonEdit;
    lbData: TTS_Label;
    edData: TTS_DBEditDate;
    lbFunc: TTS_Label;
    cmbFuncionario: TTS_DBLookupComboBox;
    lbMemo: TTS_Label;
    memoObs: TTS_DBMemo;
    dbgTitulos: TTS_QDBGrid;
    dbgTitulosROMANEIOCOBRDET: TdxDBGridMaskColumn;
    dbgTitulosTITULO: TdxDBGridMaskColumn;
    dbgTitulosVENCIMENTO: TdxDBGridDateColumn;
    dbgTitulosFALTARECEBER: TdxDBGridCurrencyColumn;
    dbgTitulosNOME: TdxDBGridMaskColumn;
    dbgTitulosENDERECO: TdxDBGridMaskColumn;
    dbgTitulosCIDADE: TdxDBGridMaskColumn;
    dbgTitulosUF: TdxDBGridMaskColumn;
    dbgTitulosCEP: TdxDBGridMaskColumn;
    dbgTitulosFONE1: TdxDBGridMaskColumn;
    dbgTitulosFONE2: TdxDBGridMaskColumn;
    dbgTitulosCELULAR: TdxDBGridMaskColumn;
    dbgTitulosPARCELA: TdxDBGridMaskColumn;
    ppmGridCobr: TTS_PopupMenu;
    GridDATA: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridCODIGOROMANEIO: TdxDBGridMaskColumn;
    GridlkFuncionario: TdxDBGridLookupColumn;
    procedure dbgTitulosColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure edCodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRomaneioCobr: TFrmRomaneioCobr;

implementation

{$R *.dfm}

uses DM_Projeto, DM_RomaneioCobr, Dlg_EscolherParcelas;

procedure TFrmRomaneioCobr.dbgTitulosColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
var sParcelas : string;
begin
  inherited;
  if Column.FieldName = 'NOME' then begin
    sParcelas := '';
    DlgEscolherParcelas := TDlgEscolherParcelas.Create(Self);
    if DlgEscolherParcelas.ShowModal = mrOK then sParcelas := DlgEscolherParcelas.sParcelas;
    DlgEscolherParcelas.Release;
    DlgEscolherParcelas := nil;
    DMRomaneioCobr.IncluirParcelas( sParcelas );
  end;
  Allow := False;
end;


procedure TFrmRomaneioCobr.edCodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    if not (DMRomaneioCobr.C_Tabela.State in [dsEdit, dsInsert]) then
        DMRomaneioCobr.C_Tabela.edit;
    DMRomaneioCobr.C_TabelaCodigoRomaneio.value := DMRomaneioCobr.GeraCodigoRomaneio(edCodigo.text, DMRomaneioCobr.C_TabelaROMANEIOCOBR.value);
    ActiveControl := cmbFuncionario;
end;

procedure TFrmRomaneioCobr.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (DMRomaneioCobr.C_TabelaCodigoRomaneio.Value = '') then begin
    DMRomaneioCobr.C_Tabela.edit;
    DMRomaneioCobr.C_TabelaCodigoRomaneio.value := DMRomaneioCobr.GeraCodigoRomaneio(edCodigo.text, DMRomaneioCobr.C_TabelaROMANEIOCOBR.value);
  end;
end;

procedure TFrmRomaneioCobr.btComando1Click(Sender: TObject);
begin
  inherited;
  DMRomaneioCobr.ImprimirRomaneio( DMRomaneioCobr.C_TabelaROMANEIOCOBR.AsInteger );
end;

procedure TFrmRomaneioCobr.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := False;
end;

procedure TFrmRomaneioCobr.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := True;
end;

end.
