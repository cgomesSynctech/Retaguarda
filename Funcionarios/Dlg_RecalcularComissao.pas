unit Dlg_RecalcularComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, TS_Shape, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, dxfProgressBar, Db,
  DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum;

type
  TDlgRecalcularComissao = class(TFrmModeloCadastros)
    dbgVendedores: TTS_QDBGrid;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label12: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label1: TTS_Label;
    dfDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dfDataF: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    ppmGrid: TTS_PopupMenu;
    Q_Vendedores: TIBQuery;
    P_Vendedores: TDataSetProvider;
    C_Vendedores: TClientDataSet;
    C_VendedoresFAVORECIDO: TIntegerField;
    C_VendedoresCODIGO: TStringField;
    C_VendedoresNOME: TStringField;
    C_VendedoresCOMISSAO: TBCDField;
    C_VendedoresDS: TDataSource;
    dbgVendedoresCODIGO: TdxDBGridMaskColumn;
    dbgVendedoresNOME: TdxDBGridMaskColumn;
    TS_Shape5: TTS_Shape;
    pnBar: TTS_Panel;
    C_Vendedores_icSelecionado: TIntegerField;
    pBar: TdxfProgressBar;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProgressoRecalc( pos, qtd : Integer);
  end;



var
  DlgRecalcularComissao: TDlgRecalcularComissao;

implementation
  uses DM_Projeto, Funcoes;


procedure TDlgRecalcularComissao.ProgressoRecalc( pos, qtd : Integer);
begin
  if pBar.Max <> Qtd then begin
    pBar.Max := Qtd;
    pBar.Position := 0;
  end;

  pBar.Position := pos;

end;

{$R *.DFM}

procedure TDlgRecalcularComissao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  dfDataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  dfDataF.Date := DMProjeto.dDataSistema;

  C_Vendedores.Open;

  if DMProjeto.ExisteParametrosForm then
    if C_Vendedores.Locate('Favorecido', DMProjeto.GetParametrosForm(0), []) then
      dbgVendedores.SelecionarLinha;


end;

procedure TDlgRecalcularComissao.btGravarClick(Sender: TObject);
begin
  inherited;
  if (dbgVendedores.Selecionados = '') or
     (dfDataI.Date = 0) or (dfDataF.Date = 0) then begin
    DlgMsg.ShowMsg(1890);
    Exit;
  end;
  pBar.Position := 0;
  pnBar.Visible := true;
  DMProjeto.CalcularComissoes( dbgVendedores.Selecionados, dfDataI.Date, dfDataF.Date, ProgressoRecalc );
end;

end.
