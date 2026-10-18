unit Frm_OutrasEntradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Frm_Entradas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
  dxCntner, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_Image,
  TS_MaxPanel, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditNumber, DBCtrls,
  TS_DBText, dxDBTLCl, dxGrClms, TS_PopupEdit, TS_DBMemo, dxDBGrid,
  dxGrClEx, ComCtrls, TS_PageControl, TS_DBEditDate, dxCalc, StdCtrls,
  Mask, TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEdit, TS_CheckBox,
  TS_DBLookupComboBox, DBText, TS_DBTextEffect, dxEditor, dxDBEdtr,
  TS_DBLookupTipoFav, dxfLabel, TS_Label, TS_Shape, dxTLClms, dxTL,
  dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, teMasked, teDiagon, TransEff, teTimed, Placemnt, BTOdeum,
  dxfProgressBar, TS_DBPopupEdit, Dlg_CFOPs;

type
  TFrmOutrasEntradas = class(TFrmEntradas)
    tsFiscal: TTS_TabSheet;
    TS_Label15: TTS_Label;
    TS_Label16: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    TS_Bevel2: TTS_Bevel;
    TS_Label11: TTS_Label;
    pnBaseCalcICMS: TTS_Panel;
    TS_Shape3: TTS_Shape;
    TS_Label20: TTS_Label;
    TS_DBEditDate2: TTS_DBEditNumber;
    pnAliqICMS: TTS_Panel;
    TS_Shape4: TTS_Shape;
    TS_Label21: TTS_Label;
    TS_DBEditDate3: TTS_DBEditNumber;
    pnValorICMS: TTS_Panel;
    TS_Shape6: TTS_Shape;
    TS_Label22: TTS_Label;
    TS_DBEditDate4: TTS_DBEditNumber;
    pnBaseCalcICMSSubst: TTS_Panel;
    TS_Shape15: TTS_Shape;
    TS_Label23: TTS_Label;
    TS_DBEditDate5: TTS_DBEditNumber;
    pnValorFrete: TTS_Panel;
    TS_Shape16: TTS_Shape;
    TS_Label1: TTS_Label;
    TS_DBEditNumber3: TTS_DBEditNumber;
    pnValorSeguro: TTS_Panel;
    TS_Shape17: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_DBEditNumber4: TTS_DBEditNumber;
    pnOutrasDespesas: TTS_Panel;
    TS_Shape18: TTS_Shape;
    TS_Label6: TTS_Label;
    TS_DBEditNumber5: TTS_DBEditNumber;
    pnValorIPI: TTS_Panel;
    TS_Shape19: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_DBEditNumber6: TTS_DBEditNumber;
    pnTotalNota: TTS_Panel;
    TS_Shape20: TTS_Shape;
    TS_Label9: TTS_Label;
    dfTotal: TTS_DBEditNumber;
    pnValorICMSSubst: TTS_Panel;
    TS_Shape21: TTS_Shape;
    TS_Label10: TTS_Label;
    TS_DBEditNumber8: TTS_DBEditNumber;
    pnTotalProdutos: TTS_Panel;
    TS_Shape22: TTS_Shape;
    TS_Label8: TTS_Label;
    TS_DBEditNumber9: TTS_DBEditNumber;
    dfDataNota: TTS_DBEditDate;
    dfSerie: TTS_DBEdit;
    dfCFOPEntrada: TTS_DBPopupEdit;
    dfCFOPNota: TTS_DBPopupEdit;
    dfNotaFiscal: TTS_DBEdit;
    TS_Panel1: TTS_Panel;
    TS_Shape7: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_DBEditNumber7: TTS_DBEditNumber;
    TS_DBEdit5: TTS_DBEdit;
    TS_Label12: TTS_Label;
    lcbDI: TTS_DBLookupComboBox;
    TS_Label13: TTS_Label;
    dbgItensV_BCII: TdxDBGridCurrencyColumn;
    dbgItensV_DESPADUII: TdxDBGridCurrencyColumn;
    dbgItensV_II: TdxDBGridCurrencyColumn;
    dbgItensV_IOFII: TdxDBGridCurrencyColumn;
    TS_Label14: TTS_Label;
    dfChaveNFe: TTS_DBEdit;
    dbgItensCstIPI: TdxDBGridLookupColumn;
    dbgItensValorPisProd: TdxDBGridMaskColumn;
    dbgItensValorCofinsProd: TdxDBGridMaskColumn;
    pnTransportadora: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Shape27: TTS_Shape;
    TS_Label19: TTS_Label;
    cmbTransportadora: TTS_DBLookupComboBox;
    pnPlaca: TTS_Panel;
    TS_Shape29: TTS_Shape;
    TS_Label25: TTS_Label;
    dfPlaca: TTS_DBEdit;
    pnEspecie: TTS_Panel;
    TS_Shape30: TTS_Shape;
    TS_Label26: TTS_Label;
    dfEspecie: TTS_DBEdit;
    pnPesoBruto: TTS_Panel;
    TS_Shape32: TTS_Shape;
    TS_Label24: TTS_Label;
    dfPesoBruto: TTS_DBEditNumber;
    pnPesoLiquido: TTS_Panel;
    TS_Shape33: TTS_Shape;
    TS_Label27: TTS_Label;
    dfPesoLiquido: TTS_DBEditNumber;
    procedure FormCreate(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure dbgItensEnter(Sender: TObject);
    procedure dfCFOPNotaInitPopup(Sender: TObject);
    procedure dfCFOPEntradaInitPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgItensCFOPInitPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure dfNotaFiscalExit(Sender: TObject);
    procedure dfTotalExit(Sender: TObject);
    procedure dbgItensCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
  private
    DlgCFOPs, DlgCFOPs2 : TDlgCFOPs;
  protected
    procedure AtualizaDadosFornecedor; override;

  public
    { Public declarations }
  end;

var
  FrmOutrasEntradas: TFrmOutrasEntradas;

implementation
  uses DM_Projeto, Funcoes, DM_OutrasEntradas;

{$R *.DFM}

procedure TFrmOutrasEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  FrmOutrasEntradas := self;
  DlgCFOPs := TDlgCFOPs.Create(self,DMOutrasEntradas.C_CFOPsDS,nil);
  DlgCFOPs2 := TDlgCFOPs.Create(self,DMOutrasEntradas.C_CFOPsDS,dbgItensCFOP);
  pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmOutrasEntradas.AtualizaDadosFornecedor;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

{  if DMOutrasEntradas.GetMovimentos('102') > 0 then
    btComando1.Font.Color := clRed
  else
    btComando1.Font.Color := clBlack;}

end;


procedure TFrmOutrasEntradas.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Font.Color := clBlack;
end;

procedure TFrmOutrasEntradas.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se Existem Requisições em aberto para o Fornecedor escolhido}
  {A esta altura o método atualizadadosFornecedor já ocorreu, portanto o botão de Requisiçoes
   já deve indicar se existem ou não - dispensando uma nova consulta}
{  if (btComando1.Font.Color = clred) and not
     DMOutrasEntradas.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin

    if DlgMsg.ShowMsg(2286) = 100 then begin
      btComando1Click(self);
    end;

  end;}
end;

procedure TFrmOutrasEntradas.btComando1Click(Sender: TObject);
begin
  inherited;
{  if DMOutrasEntradas.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMOutrasEntradas.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;

  DlgMesclarPedidos := TDlgMesclarPedidos.Create(self);
  DlgMesclarPedidos.sTipos := '102';
  DlgMesclarPedidos.DM := DMOutrasEntradas;
  DlgMesclarPedidos.GridItens := dbgItens;
  DlgMesclarPedidos.ShowModal;
  DlgMesclarPedidos.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMOutrasEntradas.C_TabelaAfterScroll(DMOutrasEntradas.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := dbgItens;
 }
end;

procedure TFrmOutrasEntradas.dbgItensEnter(Sender: TObject);
begin
  inherited;
  if dfFavorecido.ID = 0 then begin
    DlgMsg.ShowMsg(8002);
    ActiveControl := dfFavorecido;
    exit;
  end;
//  if dfCFOPNota.Text = '' then begin
//    DlgMsg.ShowMsg(8003);
//    ActiveControl := dfCFOPNota;
//    exit;
//  end;
//
//  if dfNotaFiscal.text = '' then begin
//    DlgMsg.ShowMsg(8004);
//    ActiveControl := dfNotaFiscal;
//    exit;
//  end;
//
//  if (dfTotal.value <= 0) then begin
//    DlgMsg.ShowMsg(8005);
//    ActiveControl := dfTotal;
//    exit;
//  end;
end;

procedure TFrmOutrasEntradas.dfCFOPNotaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmOutrasEntradas.dfCFOPEntradaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmOutrasEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DlgCFOPs.Free;
  DlgCFOPs2.Free;
end;

procedure TFrmOutrasEntradas.dbgItensCFOPInitPopup(Sender: TObject);
begin
  inherited;
  dbgItensCFOP.PopupControl := nil;
  DlgCFOPs2.SetDS(DMOutrasEntradas.C_CFOPsDS);
  dbgItensCFOP.PopupControl := DlgCFOPs2.pnCFOP;
  DlgCFOPs2.SetColuna(dbgItensCFOP);
  DlgCFOPs2.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmOutrasEntradas.FormShow(Sender: TObject);
begin
  inherited;
  //dbgItens.Enabled := false;
end;

procedure TFrmOutrasEntradas.btLimparClick(Sender: TObject);
begin
  inherited;
  //dbgItens.Enabled := false;
end;

procedure TFrmOutrasEntradas.dfNotaFiscalExit(Sender: TObject);
begin
  inherited;
//if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '0')then
//    dbgItens.Enabled := true;
end;

procedure TFrmOutrasEntradas.dfTotalExit(Sender: TObject);
begin
  inherited;
//    if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '0')then
//      dbgItens.Enabled := true;
end;

procedure TFrmOutrasEntradas.dbgItensCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
//  if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '0')then
//    dbgItens.Enabled := true;
end;

end.

