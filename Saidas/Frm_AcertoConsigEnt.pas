unit Frm_AcertoConsigEnt;
                              
interface                                                   
                                                                                              
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Frm_Saidas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
  dxCntner, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel,
  TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
  TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
  TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
  TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
  TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
  TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TransEff, teTimed, BTOdeum,
  Placemnt, dxfProgressBar, TS_LookupComboBox;
    
type
  TFrmAcertoConsigEnt = class(TFrmSaidas)
    btConsig: TTS_SpeedButton;
    imgStatus: TImageList;
    ppmConsig: TTS_PopupMenu;
    Itens1: TMenuItem;
    Movimentos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure lbOperacaoSetParametrosForm(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure Itens1Click(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure btConsigMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  protected
    procedure AtualizaDadosCliente; override;
    procedure MescConsig(tipo:integer);
  public
    { Public declarations }
  end;

var
  FrmAcertoConsigEnt: TFrmAcertoConsigEnt;

implementation
  uses DM_Projeto, DM_AcertoConsigEnt, Funcoes, Dlg_MescEntConsig;

{$R *.DFM}

procedure TFrmAcertoConsigEnt.FormCreate(Sender: TObject);
begin
  inherited;
  FrmAcertoConsigEnt := self;
  tsTermos.Visible := False;
end;

procedure TFrmAcertoConsigEnt.lbOperacaoSetParametrosForm(Sender: TObject);
begin
  DMProjeto.SetParametrosForm([DMAcertoConsigEnt.C_TabelaTIPOMOVIMENTO.asVariant, 7]);
end;


procedure TFrmAcertoConsigEnt.AtualizaDadosCliente;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMAcertoConsigEnt.GetMovimentos('3') > 0 then
    btConsig.Font.Color := clRed
  else
    btConsig.Font.Color := clBlack;

end;


procedure TFrmAcertoConsigEnt.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btConsig.Font.Color := clBlack;
end;

procedure TFrmAcertoConsigEnt.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se o cliente possui Estimates em aberto para aproveitamente}
  {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
   já deve indicar se existem ou não - dispensando uma nova consulta}
//  if (btEstimates.Font.Color = clred) and not DMAcertoConsigEnt.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin
//    if DlgMsg.ShowMsg(2185) = 100 then begin
//      btEstimatesclick(self);
//    end;
//  end;
end;

procedure TFrmAcertoConsigEnt.MescConsig(tipo:integer);
begin
  if DMAcertoConsigEnt.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMAcertoConsigEnt.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;

  DlgMescEntConsig := TDlgMescEntConsig.Create(self);
  DlgMescEntConsig.sTipos := '104';
  DlgMescEntConsig.DM := DMAcertoConsigEnt;
  DlgMescEntConsig.GridItens := dbgItens;
  if tipo = 1 then begin
    DlgMescEntConsig.GridAcerto.Visible := True;
    DlgMescEntConsig.GridMovs.Visible := False;
  end
  else begin
    DlgMescEntConsig.GridAcerto.Visible := False;
    DlgMescEntConsig.GridMovs.Visible := True;
  end;
  DlgMescEntConsig.ShowModal;
  DlgMescEntConsig.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMAcertoConsigEnt.C_TabelaAfterScroll(DMAcertoConsigEnt.C_Tabela);

  DMAcertoConsigEnt.C_Itens.First;
  while not DMAcertoConsigEnt.C_Itens.Eof do begin
    if DMAcertoConsigEnt.C_ItensQuantidade.Value = 0 then DMAcertoConsigEnt.C_Itens.Delete
    else DMAcertoConsigEnt.C_Itens.Next;
  end;
  pgItens.ActivePageIndex := 0;
  ActiveControl := dbgItens;
end;
procedure TFrmAcertoConsigEnt.Itens1Click(Sender: TObject);
begin
  inherited;
  MescConsig(1);
end;

procedure TFrmAcertoConsigEnt.Movimentos1Click(Sender: TObject);
begin
  inherited;
  MescConsig(2);
end;

procedure TFrmAcertoConsigEnt.btConsigMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmConsig.PopupFromCursorPos;
end;

end.
