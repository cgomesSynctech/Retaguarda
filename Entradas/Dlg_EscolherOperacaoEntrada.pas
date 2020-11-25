unit Dlg_EscolherOperacaoEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, ExtCtrls, TS_Shape, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_PopupEdit, TS_ButtonEdit,
  TS_EditFavorecido, dxEditor, TS_DateTimePicker, TS_Edit, DB, DBClient,
  Provider, IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav;

type
  TDlgEscolherOperacaoEntrada = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    TS_Shape1: TTS_Shape;
    TS_Label1: TTS_Label;
    dfDataI: TTS_DateTimePicker;
    dfDataF: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    dfCliente: TTS_EditFavorecido;
    TS_Label4: TTS_Label;
    dfNumero: TTS_Edit;
    Q_Entradas: TIBQuery;
    P_Entradas: TDataSetProvider;
    C_Entradas: TClientDataSet;
    C_EntradasDS: TDataSource;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    C_Entradas_icSelecionado: TIntegerField;
    Pesquisar1: TMenuItem;
    C_EntradasENTRADA: TIntegerField;
    C_EntradasDATA: TDateField;
    C_EntradasFAVORECIDO: TIntegerField;
    C_EntradasOBS: TStringField;
    C_EntradasNUMERO: TStringField;
    C_EntradasTIPOMOVIMENTO: TIntegerField;
    C_EntradasTIPOPADRAO: TIntegerField;
    C_EntradasSTATUS: TStringField;
    C_EntradasCAMPO01: TStringField;
    C_EntradasCAMPO02: TStringField;
    C_EntradasCAMPO03: TStringField;
    C_EntradasCAMPO04: TStringField;
    C_EntradasDESCMOVIMENTO: TStringField;
    C_EntradasNOMEFORNECEDOR: TStringField;
    GridDATA: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridTOTAL: TdxDBGridCurrencyColumn;
    GridNUMERO: TdxDBGridMaskColumn;
    GridJUROS: TdxDBGridCurrencyColumn;
    GridCAMPO01: TdxDBGridMaskColumn;
    GridCAMPO02: TdxDBGridMaskColumn;
    GridCAMPO03: TdxDBGridMaskColumn;
    GridCAMPO04: TdxDBGridMaskColumn;
    GridDESCMOVIMENTO: TdxDBGridMaskColumn;
    GridNOMEFORNECEDOR: TdxDBGridMaskColumn;
    C_EntradasTOTAL: TFloatField;
    C_EntradasJUROS: TFloatField;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure Q_EntradasBeforeOpen(DataSet: TDataSet);
    procedure GridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dfNumeroChange(Sender: TObject);
  private
    { Private declarations }
    nTipo : Integer;
    sComando : String;

    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgEscolherOperacaoEntrada: TDlgEscolherOperacaoEntrada;

implementation
  Uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgEscolherOperacaoEntrada.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TDlgEscolherOperacaoEntrada.btGravarClick(Sender: TObject);
begin
  inherited;
  if Grid.Selecionados <> '' then
    Grid.FirstSelected;

  ModalResult := C_EntradasEntrada.Value;
end;

procedure TDlgEscolherOperacaoEntrada.btComando1Click(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgEscolherOperacaoEntrada.btLimparClick(Sender: TObject);
begin
  inherited;
  dfDataI.Clear;
  dfDataF.Clear;
  dfNumero.Clear;
  dfCliente.Clear;

  C_Entradas.Close;
end;

procedure TDlgEscolherOperacaoEntrada.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then
    nTipo := DMProjeto.GetParametrosForm(1)
  else
    nTipo := 1;

  sComando := Q_Entradas.SQL.Text;

end;

procedure TDlgEscolherOperacaoEntrada.Pesquisar;
var
  sWhere : String;
begin

  sWhere := '';

  if dfNumero.Text <> '' then
    sWhere := CExp(sWhere,' and ') + dfNumero.TagStr + QuotedStr(CompleteCode(Trim(dfNumero.Text),7))
  else begin
    if dfDataI.Text[1] <> ' ' then
      sWhere := CExp(sWhere,' and ') + dfDataI.TagStr + QuotedStr(MesDiaAno(Trunc(dfDataI.Date)));

    if dfDataF.Text[1] <> ' ' then
      sWhere := CExp(sWhere,' and ') + dfDataF.TagStr + QuotedStr(MesDiaAno(Trunc(dfDataF.Date)));

    if dfCliente.ID > 0 then
      sWhere := CExp(sWhere,' and ') + dfCliente.TagStr + IntToStr(dfCliente.ID);

  end;

  Q_Entradas.SQL.Text := replace(sComando,'and XXX',IIF(sWhere <> '', ' and ', '')+sWhere);

  C_Entradas.Close;
  C_Entradas.Open;

end;

procedure TDlgEscolherOperacaoEntrada.Q_EntradasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Q_Entradas.Parambyname('TPD').asInteger := nTipo;
end;

procedure TDlgEscolherOperacaoEntrada.GridDblClick(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
end;

procedure TDlgEscolherOperacaoEntrada.FormShow(Sender: TObject);
begin
  inherited;
  dfDataI.Date := DMProjeto.dDataSistema;
  dfDataF.Date := DMProjeto.dDataSistema;
  Pesquisar;
end;

procedure TDlgEscolherOperacaoEntrada.dfNumeroChange(Sender: TObject);
begin
  inherited;
  dfDataI.Text := '';
  dfDataF.Text := '';
end;

end.
