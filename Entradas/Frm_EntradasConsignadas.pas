unit Frm_EntradasConsignadas;

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
  TFrmEntradasConsignadas = class(TFrmEntradas)
    dbgItensQtdRecebida: TdxDBGridColumn;
    imgStatus: TImageList;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    procedure AtualizaDadosFornecedor; override;
    function ExisteReqs : boolean;

  public
    { Public declarations }
  end;

var
  FrmEntradasConsignadas: TFrmEntradasConsignadas;

implementation
  uses DM_Projeto, Funcoes, DM_EntradasConsignadas, Dlg_MesclarRequisicoes;

{$R *.DFM}

procedure TFrmEntradasConsignadas.FormCreate(Sender: TObject);
begin
  inherited;
  FrmEntradasConsignadas := self;
end;

procedure TFrmEntradasConsignadas.AtualizaDadosFornecedor;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMEntradasConsignadas.GetMovimentos('F') > 0 then
    btComando1.Font.Style := [fsBold]
  else
    btComando1.Font.Style := [];

end;


procedure TFrmEntradasConsignadas.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Font.Style := [];
  dbgItensQtdRecebida.Visible := false;
  dbgItensStatus.Visible := false;
  if Visible then
    ExisteReqs;
end;

procedure TFrmEntradasConsignadas.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se Existem Requisições em aberto para o Fornecedor escolhido}
  {A esta altura o método atualizadadosFornecedor já ocorreu, portanto o botão de Requisiçoes
   já deve indicar se existem ou não - dispensando uma nova consulta}
  if (btComando1.Font.Color = clred) and (btComando1.TagStr = 'F') and not
     DMEntradasConsignadas.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin

    if DlgMsg.ShowMsg(2285) = 100 then begin
      btComando1Click(self);
    end;

  end;
end;

procedure TFrmEntradasConsignadas.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMEntradasConsignadas.C_TabelaSituacao.Value = 'C' then
    exit;
{
  if DMPedidosCompra.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;
}
  DlgMesclarRequisicoes := TDlgMesclarRequisicoes.Create(self);
  DlgMesclarRequisicoes.sTipos := '103';
  DlgMesclarRequisicoes.DM := DMEntradasConsignadas;
  DlgMesclarRequisicoes.GridItens := dbgItens;
  DlgMesclarRequisicoes.ShowModal;
  DlgMesclarRequisicoes.Release;

  pgItens.ActivePageIndex := 0;
  ActiveControl := dbgItens;

end;

procedure TFrmEntradasConsignadas.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensQtdRecebida.Visible := true;
  dbgItensStatus.Visible := true;
end;

procedure TFrmEntradasConsignadas.cmbTipoMovimentoClick(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

procedure TFrmEntradasConsignadas.FormShow(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

function TFrmEntradasConsignadas.ExisteReqs: boolean;
begin
  result := DMEntradasConsignadas.GetMovimentos > 0;
  if result then
    btComando1.Font.Color := clRed
  else
    btComando1.Font.Color := clBlack;

end;

procedure TFrmEntradasConsignadas.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
  if (sTipoAbertura = '') and ExisteReqs then begin
    if dlgmsg.ShowMsg(2284) = 100 then
      btComando1click(self);
  end;
end;

procedure TFrmEntradasConsignadas.FormKeyPress(Sender: TObject;
  var Key: Char);
var
    nValor: double;
begin
    inherited;
    if (Key = '%') and
        (ActiveControl = dfDesconto) then
    begin
        nValor := TTS_DBEditNumber(ActiveControl).Value;
        TTS_DBEditNumber(ActiveControl).Value := Truncar(DMEntradasConsignadas.C_TabelaTotalItens.Value * (nValor / 100), 2);
    end;
end;

end.
