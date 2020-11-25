unit Frm_AcertoConsigSaid;
                                                                                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Frm_Entradas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
  dxCntner, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_Image,
  TS_MaxPanel, dxExEdtr, dxEdLib, dxDBELib, TS_DBImageEdit,
  TS_DBEditNumber, DBCtrls, TS_DBText, dxDBTLCl, dxGrClms, TS_PopupEdit,
  TS_DBMemo, dxDBGrid, dxGrClEx, ComCtrls, TS_PageControl, TS_DBEditDate,
  dxCalc, StdCtrls, Mask, TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEdit,
  TS_CheckBox, TS_DBLookupComboBox, DBText, TS_DBTextEffect, dxEditor,
  dxDBEdtr, TS_DBLookupTipoFav, dxfLabel, TS_Label, TS_Shape, dxTLClms,
  dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, teMasked, teDiagon, TransEff, teTimed, BTOdeum, Placemnt,
  dxfProgressBar;

type
  TFrmAcertoConsigSaid = class(TFrmEntradas)
    dbgItensQtdRecebida: TdxDBGridColumn;
    imgStatus: TImageList;
    btConsig: TTS_SpeedButton;
    ppmConsig: TTS_PopupMenu;
    Itens1: TMenuItem;
    Movimentos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure cmbTipoMovimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormComponentAfterFormShow(Sender: TObject);
    procedure Itens1Click(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure btConsigMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  protected
    procedure AtualizaDadosFornecedor; override;
    procedure MescConsig(tipo:integer);
    function ExisteReqs : boolean;

  public
    { Public declarations }
  end;

var
  FrmAcertoConsigSaid: TFrmAcertoConsigSaid;

implementation
  uses DM_Projeto, Funcoes, DM_AcertoConsigSaid, Dlg_MesclarRequisicoes, Dlg_MescSaidConsig;

{$R *.DFM}

procedure TFrmAcertoConsigSaid.FormCreate(Sender: TObject);
begin
  inherited;
  FrmAcertoConsigSaid := self;
  dbgItensPreco.FieldName := 'PRECO';
end;

procedure TFrmAcertoConsigSaid.AtualizaDadosFornecedor;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMAcertoConsigSaid.GetMovimentos('F') > 0 then
    btComando1.Font.Style := [fsBold]
  else
    btComando1.Font.Style := [];

end;


procedure TFrmAcertoConsigSaid.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Font.Style := [];
  dbgItensQtdRecebida.Visible := false;
  dbgItensStatus.Visible := false;
  if Visible then
    ExisteReqs;
end;

procedure TFrmAcertoConsigSaid.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se Existem Requisições em aberto para o Fornecedor escolhido}
  {A esta altura o método atualizadadosFornecedor já ocorreu, portanto o botão de Requisiçoes
   já deve indicar se existem ou não - dispensando uma nova consulta}
{  if (btComando1.Font.Color = clred) and (btComando1.TagStr = 'F') and not
     DMAcertoConsigSaid.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin

    if DlgMsg.ShowMsg(2285) = 100 then begin
      btComando1Click(self);
    end;

  end;}
end;

procedure TFrmAcertoConsigSaid.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMAcertoConsigSaid.C_TabelaSituacao.Value = 'C' then
    exit;
{
  if DMPedidosCompra.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;
}
  DlgMesclarRequisicoes := TDlgMesclarRequisicoes.Create(self);
  DlgMesclarRequisicoes.sTipos := '103';
  DlgMesclarRequisicoes.DM := DMAcertoConsigSaid;
  DlgMesclarRequisicoes.GridItens := dbgItens;
  DlgMesclarRequisicoes.ShowModal;
  DlgMesclarRequisicoes.Release;

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);

end;

procedure TFrmAcertoConsigSaid.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensQtdRecebida.Visible := true;
  dbgItensStatus.Visible := true;
end;

procedure TFrmAcertoConsigSaid.cmbTipoMovimentoClick(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

procedure TFrmAcertoConsigSaid.FormShow(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

function TFrmAcertoConsigSaid.ExisteReqs: boolean;
begin
  result := DMAcertoConsigSaid.GetMovimentos > 0;
  if result then
    btComando1.Font.Color := clRed
  else
    btComando1.Font.Color := clBlack;

end;

procedure TFrmAcertoConsigSaid.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
  if (sTipoAbertura = '') and ExisteReqs then begin
    if dlgmsg.ShowMsg(2284) = 100 then
      btComando1click(self);
  end;
end;

procedure TFrmAcertoConsigSaid.MescConsig(tipo:integer);
begin
  if DMAcertoConsigSaid.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMAcertoConsigSaid.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(543);
    exit;
  end;

  DlgMescSaidConsig := TDlgMescSaidConsig.Create(self);
  DlgMescSaidConsig.sTipos := '4';
  DlgMescSaidConsig.DM := DMAcertoConsigSaid;
  DlgMescSaidConsig.GridItens := dbgItens;
  if tipo = 1 then begin
    DlgMescSaidConsig.GridAcerto.Visible := True;
    DlgMescSaidConsig.GridMovs.Visible := False;
  end
  else begin
    DlgMescSaidConsig.GridAcerto.Visible := False;
    DlgMescSaidConsig.GridMovs.Visible := True;
  end;
  DlgMescSaidConsig.ShowModal;
  DlgMescSaidConsig.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMAcertoConsigSaid.C_TabelaAfterScroll(DMAcertoConsigSaid.C_Tabela);

  DMAcertoConsigSaid.C_Itens.First;
  while not DMAcertoConsigSaid.C_Itens.Eof do begin
    if DMAcertoConsigSaid.C_ItensQuantidade.Value = 0 then DMAcertoConsigSaid.C_Itens.Delete
    else DMAcertoConsigSaid.C_Itens.Next;
  end;
  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmAcertoConsigSaid.Itens1Click(Sender: TObject);
begin
  inherited;
  MescConsig(1);
end;

procedure TFrmAcertoConsigSaid.Movimentos1Click(Sender: TObject);
begin
  inherited;
  MescConsig(2);
end;

procedure TFrmAcertoConsigSaid.btConsigMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmConsig.PopUpFromCursorPos;
end;

end.
