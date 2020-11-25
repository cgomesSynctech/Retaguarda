unit Frm_Compras;

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
  dxfProgressBar, TS_DBPopupEdit, Dlg_CFOPs, Variants, TS_DBCheckBox;

type
  TFrmCompras = class(TFrmEntradas)
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
    btConsig: TTS_SpeedButton;
    ppmConsig: TTS_PopupMenu;
    Itens1: TMenuItem;
    Movimentos1: TMenuItem;
    dbgItensFATORPRECO: TdxDBGridMaskColumn;
    pnFreteTotal: TTS_Panel;
    pnFreteExterno: TTS_Panel;
    TS_Shape23: TTS_Shape;
    lbFreteExterno: TTS_Label;
    edFreteExterno: TTS_DBEditNumber;
    pnValorFrete: TTS_Panel;
    TS_Shape16: TTS_Shape;
    lbFreteNormal: TTS_Label;
    dfFrete2: TTS_DBEditNumber;
    dbgItenslkIndexador: TdxDBGridColumn;
    TS_Label1: TTS_Label;
    cmbIndexador: TTS_DBLookupComboBox;
    dfEspecie: TTS_DBEdit;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    dfModelo: TTS_DBEdit;
    dfChaveNFe: TTS_DBEdit;
    TS_Label14: TTS_Label;
    cbFreteIncluso: TTS_DBCheckBox;
    dbgItensValorPisProd: TdxDBGridMaskColumn;
    dbgItensValorCofinsProd: TdxDBGridMaskColumn;
    dbgItensESTOQUE: TdxDBGridMaskColumn;
    dbgItensCstIPI: TdxDBGridLookupColumn;
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
    procedure Itens1Click(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure btConsigMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dfFrete2Exit(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure DBEdit1Change(Sender: TObject);
    procedure lbFreteNormalDblClick(Sender: TObject);
    procedure lbFreteExternoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure dfNotaFiscalExit(Sender: TObject);
    procedure dfTotalExit(Sender: TObject);
    procedure dbgItensCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dfChaveNFeExit(Sender: TObject);
  private
    DlgCFOPs, DlgCFOPs2: TDlgCFOPs;
    bNotaFrete: boolean;
  protected
    procedure AtualizaDadosFornecedor; override;
    procedure MescConsig(tipo:integer);
  public
    { Public declarations }
  end;

var
  FrmCompras: TFrmCompras;

implementation
  uses DM_Projeto, Funcoes, DM_Compras, Dlg_MesclarPedidos, Dlg_MescAcertConsig,
  DM_Entradas;

{$R *.DFM}

procedure TFrmCompras.FormCreate(Sender: TObject);
begin
  inherited;
  FrmCompras := self;
  DlgCFOPs := TDlgCFOPs.Create(self,DMCompras.C_CFOPsDS,nil);
  DlgCFOPs2 := TDlgCFOPs.Create(self,DMCompras.C_CFOPsDS,dbgItensCFOP);
  pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmCompras.AtualizaDadosFornecedor;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMCompras.GetMovimentos('102') > 0 then
    btComando1.Font.Color := clRed
  else
    btComando1.Font.Color := clBlack;

end;


procedure TFrmCompras.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Font.Color := clBlack;
  dbgItensFATORPRECO.Visible := (DMProjeto.Parametro('EntradaPrecoVenda') = 'S') and
                                (DMCompras.C_TabelaCB_ENTRADAPRECOVENDA.AsString = 'S') and
                                (Not (DMEntrada.bPrecoVendaPP));
  dbgItensPRECOVENDA.Visible := ((dbgItensFATORPRECO.Visible) Or (DMEntrada.bPrecoVendaPP));

  dbgItensFATORPRECO.DisableCustomizing := not dbgItensFATORPRECO.Visible;
  dbgItensPRECOVENDA.DisableCustomizing := not dbgItensFATORPRECO.Visible;
  //
  pnValorFrete.BringToFront;
  pnFreteExterno.SendToBack;
end;

procedure TFrmCompras.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se Existem Requisições em aberto para o Fornecedor escolhido}
  {A esta altura o método atualizadadosFornecedor já ocorreu, portanto o botão de Requisiçoes
   já deve indicar se existem ou não - dispensando uma nova consulta}
  if (btComando1.Font.Color = clred) and not
     DMCompras.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin

    if DlgMsg.ShowMsg(2286) = 100 then begin
      btComando1Click(self);
    end;

  end;
end;

procedure TFrmCompras.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMCompras.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMCompras.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;

  DlgMesclarPedidos := TDlgMesclarPedidos.Create(self);
  DlgMesclarPedidos.sTipos := '102';
  DlgMesclarPedidos.DM := DMCompras;
  DlgMesclarPedidos.GridItens := dbgItens;
  DlgMesclarPedidos.ShowModal;
  DlgMesclarPedidos.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMCompras.C_TabelaAfterScroll(DMCompras.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmCompras.dbgItensEnter(Sender: TObject);
begin
  inherited;
  if DMCompras.C_TabelaFavorecido.value = 0 then begin
    DlgMsg.ShowMsg(8002);
    ActiveControl := dfFavorecido;
    exit;
  end;
  if dfCFOPNota.Text = '' then begin
    DlgMsg.ShowMsg(8003);
    pgCabecalho.SetPage(tsFiscal);
    ActiveControl := dfCFOPNota;
    exit;
  end;

  if dfNotaFiscal.text = '' then begin
    DlgMsg.ShowMsg(8004);
    pgCabecalho.SetPage(tsFiscal);
    ActiveControl := dfNotaFiscal;
    exit;
  end;

  if (dfTotal.value <= 0) then begin
    DlgMsg.ShowMsg(8005);
    pgCabecalho.SetPage(tsFiscal);
    ActiveControl := dfTotal;
    exit;
  end;
end;

procedure TFrmCompras.dfCFOPNotaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmCompras.dfCFOPEntradaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DlgCFOPs.Free;
  DlgCFOPs2.Free;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     DMProjeto.DB_Projeto.DefaultTransaction.Commit;
end;

procedure TFrmCompras.dbgItensCFOPInitPopup(Sender: TObject);
begin
  inherited;
  dbgItensCFOP.PopupControl := nil;
  DlgCFOPs2.SetDS(DMCompras.C_CFOPsDS);
  dbgItensCFOP.PopupControl := DlgCFOPs2.pnCFOP;
  DlgCFOPs2.SetColuna(dbgItensCFOP);
  DlgCFOPs2.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmCompras.MescConsig(tipo:integer);
begin
  if DMCompras.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMCompras.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;

  DlgMescAcertConsig := TDlgMescAcertConsig.Create(self);
  DlgMescAcertConsig.sTipos := '104';
  DlgMescAcertConsig.DM := DMCompras;
  DlgMescAcertConsig.GridItens := dbgItens;
  if tipo = 1 then begin
    DlgMescAcertConsig.GridAcerto.Visible := True;
    DlgMescAcertConsig.GridMovs.Visible := False;
  end
  else begin
    DlgMescAcertConsig.GridAcerto.Visible := False;
    DlgMescAcertConsig.GridMovs.Visible := True;
  end;
  DlgMescAcertConsig.ShowModal;
  DlgMescAcertConsig.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMCompras.C_TabelaAfterScroll(DMCompras.C_Tabela);

  DMCompras.C_Itens.First;
  while not DMCompras.C_Itens.Eof do begin
    if DMCompras.C_ItensQuantidade.Value = 0 then DMCompras.C_Itens.Delete
    else DMCompras.C_Itens.Next;
  end;
  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmCompras.Itens1Click(Sender: TObject);
begin
  inherited;
  MescConsig(1);
end;

procedure TFrmCompras.Movimentos1Click(Sender: TObject);
begin
  inherited;
  MescConsig(2);
end;

procedure TFrmCompras.btConsigMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmConsig.PopupFromCursorPos;
end;

procedure TFrmCompras.dfFrete2Exit(Sender: TObject);
var nOp: integer;
begin
  inherited;
  if (DMCompras.C_TabelaFrete.Value > 0) then begin
    nOp:= MessageDlg(Pchar('Este valor está numa Nota de Conhecimento de Frete?' + #13 + #13 +
                    'Clique em "SIM" se afirmativo, e "NÃO" se este valor consta nesta própria nota.'),
                    mtConfirmation, [mbno,mbyes],0);
    if nOp = IDNO then begin
      DMCompras.C_TabelaFreteIncluso.Value := 'S';
    end
    else if nOp = IDYES then begin
      DMCompras.C_TabelaFreteIncluso.Value := 'N';
    end;
  end;
end;

procedure TFrmCompras.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if bNotaFrete then begin
    if Application.MessageBox('Deseja cadastrar a Nota de Frete agora?',
                              'SyncLoja', mb_yesno + mb_IconQuestion)= IDYES then begin
      DMProjeto.SetParametrosForm([null,DMCompras.C_TabelaIDMestre.value,DMCompras.C_TabelaFrete.value]);
      DMProjeto.CriarForm('FrmFretes',self,true);
    end;
  end
  else if DMCompras.C_TabelaFreteExterno.Value > 0 then begin
    DMProjeto.SetParametrosForm([null,DMCompras.C_TabelaIDMestre.value,DMCompras.C_TabelaFreteExterno.value]);
    DMProjeto.CriarForm('FrmFretes',self,true);
  end;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     DMProjeto.DB_Projeto.DefaultTransaction.Commit

end;

procedure TFrmCompras.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  bNotaFrete := ((not (DMCompras.C_TabelaFreteIncluso.Value = 'S')) and (DMCompras.C_TabelaFrete.Value > 0));
end;

procedure TFrmCompras.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensFATORPRECO.Visible := (DMProjeto.Parametro('EntradaPrecoVenda') = 'S') and
                                (DMCompras.C_TabelaCB_ENTRADAPRECOVENDA.AsString = 'S') and
                                (Not (DMEntrada.bPrecoVendaPP));
  dbgItensPRECOVENDA.Visible := ((dbgItensFATORPRECO.Visible) Or (DMEntrada.bPrecoVendaPP));

  dbgItensFATORPRECO.DisableCustomizing := not dbgItensFATORPRECO.Visible;
  dbgItensPRECOVENDA.DisableCustomizing := not dbgItensFATORPRECO.Visible;
end;

procedure TFrmCompras.DBEdit1Change(Sender: TObject);
begin
  inherited;
   dbgItensFATORPRECO.Visible := (DMProjeto.Parametro('EntradaPrecoVenda') = 'S') and
                                (DMCompras.C_TabelaCB_ENTRADAPRECOVENDA.AsString = 'S') and
                                (Not (DMEntrada.bPrecoVendaPP));
  dbgItensPRECOVENDA.Visible := ((dbgItensFATORPRECO.Visible) Or (DMEntrada.bPrecoVendaPP));

  dbgItensFATORPRECO.DisableCustomizing := not dbgItensFATORPRECO.Visible;
  dbgItensPRECOVENDA.DisableCustomizing := not dbgItensFATORPRECO.Visible;
end;

procedure TFrmCompras.lbFreteNormalDblClick(Sender: TObject);
begin
  inherited;
  pnValorFrete.SendToBack;
  pnFreteExterno.BringToFront;
end;

procedure TFrmCompras.lbFreteExternoDblClick(Sender: TObject);
begin
  inherited;
  pnValorFrete.BringToFront;
  pnFreteExterno.SendToBack;
end;
//-------------- Paulo, bloquear a inserção de codigo sem antes colocar o numero da nota,favorecido,e total
procedure TFrmCompras.FormShow(Sender: TObject);
begin
  inherited;
  dbgItens.Enabled := false;
end;

procedure TFrmCompras.btLimparClick(Sender: TObject);
begin
  inherited;
  dbgItens.Enabled := false;
end;

procedure TFrmCompras.dfNotaFiscalExit(Sender: TObject);
begin
  inherited;
  if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '')then
    dbgItens.Enabled := true;
end;

procedure TFrmCompras.dfTotalExit(Sender: TObject);
begin
  inherited;
    if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '')then
      dbgItens.Enabled := true;
end;

procedure TFrmCompras.dbgItensCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
  const AText: String; AFont: TFont; var AColor: TColor; ASelected,
  AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if (trim(dfFavorecido.text) <> '') and  (trim(dfNotaFiscal.text) <> '') and  (trim(dftotal.text) <> '')then
    dbgItens.Enabled := true;
end;

procedure TFrmCompras.dfChaveNFeExit(Sender: TObject);
begin
  inherited;
 if Length(dfChaveNFe.Text) > 44 then
    DlgMsg.ShowMsg( 50, [pChar('Chave de acesso inválida, a quantidade de números digitado está maior que a quantidade correta ( '+ IntToStr(Length(dfChaveNFe.Text))+' ) !')])
   else if ((Length(dfChaveNFe.Text) < 44) and (Trim(dfChaveNFe.Text) <> '')) then
    DlgMsg.ShowMsg( 50, [pChar('Chave de acesso inválida, a quantidade de números digitado está menor que a quantidade correta ( '+ IntToStr(Length(dfChaveNFe.Text))+' ) !')]);
end;

end.

