unit Frm_PedidosCompra;

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
  TFrmPedidosCompra = class(TFrmEntradas)
    dbgItensQtdRecebida: TdxDBGridColumn;
    imgStatus: TImageList;
    N16: TMenuItem;
    Mesclagem1: TMenuItem;
    EstMnimo1: TMenuItem;
    EstMnimodoFornecedorSelecionado1: TMenuItem;
    EstMnimodoFornecedorPreferido1: TMenuItem;
    N17: TMenuItem;
    ExportarPedidoYAMAHA1: TMenuItem;
    dbgItensESTOQUE: TdxDBGridMaskColumn;
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
    procedure EstMnimodoFornecedorSelecionado1Click(Sender: TObject);
    procedure EstMnimo1Click(Sender: TObject);
    procedure EstMnimodoFornecedorPreferido1Click(Sender: TObject);
    procedure ExportarPedidoYAMAHA1Click(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    function ImportarAnalise(): Boolean;
  protected
    procedure AtualizaDadosFornecedor; override;
    function ExisteReqs : boolean;

  public
    { Public declarations }
  end;

var
  FrmPedidosCompra: TFrmPedidosCompra;

implementation
  uses DM_Projeto, Funcoes, DM_PedidosCompra, Dlg_MesclarRequisicoes,
  Dlg_MescItensEstoque, TDM_Projeto, FRM_PADRAO, Frm_DigitacaoItens;

{$R *.DFM}

function TFrmPedidosCompra.ImportarAnalise(): Boolean;
Var sLinhas: TStringList;
 i: Integer;
Begin
  If FileExists(ExtractFilePath(Application.ExeName) + '\PedidosCompra.TxT') Then Begin
    if DlgMsg.ShowMsg(8080) = 100 Then
      Try
        sLinhas := TStringList.Create;
        sLinhas.LoadFromFile(ExtractFilePath(Application.ExeName) + '\PedidosCompra.TxT');
        for i:=0 to sLinhas.Count -1 do Begin
          with DMPedidosCompra.C_Itens do begin
            Append;
            dbgItens.TS_ID := StrToIntDef(SeparaStrings(sLinhas.Strings[i], '|', 1), 0);
            FieldByName('Quantidade').Value  := StrToCurr(SeparaStrings(sLinhas.Strings[i], '|', 2)) / 100;
            FieldByName('Preco').Value  := StrToCurr(SeparaStrings(sLinhas.Strings[i], '|', 3)) / 100;
          End;
        End;
        DeleteFile(ExtractFilePath(Application.ExeName) + '\PedidosCompra.TxT');
      Except
      End;
    End;
End;



procedure TFrmPedidosCompra.FormCreate(Sender: TObject);
begin
  inherited;
  FrmPedidosCompra := self;
end;

procedure TFrmPedidosCompra.AtualizaDadosFornecedor;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMPedidosCompra.GetMovimentos('F') > 0 then
    btComando1.Font.Style := [fsBold]
  else
    btComando1.Font.Style := [];

end;


procedure TFrmPedidosCompra.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Font.Style := [];
  dbgItensQtdRecebida.Visible := false;
  dbgItensStatus.Visible := false;
  if Visible then
    ExisteReqs;
end;

procedure TFrmPedidosCompra.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se Existem Requisições em aberto para o Fornecedor escolhido}
  {A esta altura o método atualizadadosFornecedor já ocorreu, portanto o botão de Requisiçoes
   já deve indicar se existem ou não - dispensando uma nova consulta}
  if (btComando1.Font.Color = clred) and (btComando1.TagStr = 'F') and not
     DMPedidosCompra.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin

    if DlgMsg.ShowMsg(2285) = 100 then begin
      btComando1Click(self);
    end;

  end;
end;

procedure TFrmPedidosCompra.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMPedidosCompra.C_TabelaSituacao.Value = 'C' then
    exit;
{
  if DMPedidosCompra.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;
}
  DlgMesclarRequisicoes := TDlgMesclarRequisicoes.Create(self);
  DlgMesclarRequisicoes.sTipos := '103';
  DlgMesclarRequisicoes.DM := DMPedidosCompra;
  DlgMesclarRequisicoes.GridItens := dbgItens;
  DlgMesclarRequisicoes.ShowModal;
  DlgMesclarRequisicoes.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMPedidosCompra.C_TabelaAfterScroll(DMPedidosCompra.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmPedidosCompra.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensQtdRecebida.Visible := true;
  dbgItensStatus.Visible := true;
end;

procedure TFrmPedidosCompra.cmbTipoMovimentoClick(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

procedure TFrmPedidosCompra.FormShow(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

function TFrmPedidosCompra.ExisteReqs: boolean;
begin
  result := DMPedidosCompra.GetMovimentos > 0;
  if result then
    btComando1.Font.Color := clRed
  else
    btComando1.Font.Color := clBlack;

end;

procedure TFrmPedidosCompra.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
  if (sTipoAbertura = '') and ExisteReqs then begin
    if dlgmsg.ShowMsg(2284) = 100 then
      btComando1click(self);
  end;
  ImportarAnalise;
end;

procedure TFrmPedidosCompra.EstMnimodoFornecedorSelecionado1Click(
  Sender: TObject);
begin
  inherited;
  if DMPedidosCompra.C_TabelaSituacao.Value = 'C' then
    exit;

  if ( DMPedidosCompra.C_TabelaFAVORECIDO.AsInteger <= 0) then begin
    DlgMsg.ShowMsg( 643 );
    exit;
  end;


  DlgMescItensEstoque := TDlgMescItensEstoque.Create(self);
  DlgMescItensEstoque.nTipo := 1;
  DlgMescItensEstoque.GridItens := dbgItens;
  DlgMescItensEstoque.DM := DMPedidosCompra;
  DlgMescItensEstoque.ShowModal;
  DlgMescItensEstoque.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMPedidosCompra.C_TabelaAfterScroll(DMPedidosCompra.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmPedidosCompra.EstMnimo1Click(Sender: TObject);
begin
  inherited;
  if DMPedidosCompra.C_TabelaSituacao.Value = 'C' then
    exit;

  DlgMescItensEstoque := TDlgMescItensEstoque.Create(self);
  DlgMescItensEstoque.nTipo := 2;
  DlgMescItensEstoque.GridItens := dbgItens;
  DlgMescItensEstoque.DM := DMPedidosCompra;
  DlgMescItensEstoque.ShowModal;
  DlgMescItensEstoque.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMPedidosCompra.C_TabelaAfterScroll(DMPedidosCompra.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);

end;

procedure TFrmPedidosCompra.EstMnimodoFornecedorPreferido1Click(
  Sender: TObject);
begin
  inherited;
  if DMPedidosCompra.C_TabelaSituacao.Value = 'C' then
    exit;

  if ( DMPedidosCompra.C_TabelaFAVORECIDO.AsInteger <= 0) then begin
    DlgMsg.ShowMsg( 643 );
    exit;
  end;


  DlgMescItensEstoque := TDlgMescItensEstoque.Create(self);
  DlgMescItensEstoque.nTipo := 3;
  DlgMescItensEstoque.GridItens := dbgItens;
  DlgMescItensEstoque.DM := DMPedidosCompra;
  DlgMescItensEstoque.ShowModal;
  DlgMescItensEstoque.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMPedidosCompra.C_TabelaAfterScroll(DMPedidosCompra.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmPedidosCompra.ExportarPedidoYAMAHA1Click(Sender: TObject);
begin
  inherited;
  If DMPedidosCompra.ExportarYAMAHA(DMProjeto.Parametro('CodigoYamaha')) Then
    DlgMsg.ShowMsg(50,['Arquivo Gerado com êxito!'])
  Else
    DlgMsg.ShowMsg(50,['Problema ao gerar o arquivo!'])
end;

procedure TFrmPedidosCompra.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  ExportarPedidoYAMAHA1.Visible := (DMProjeto.Parametro('CodigoYamaha') <> '');

end;

end.
