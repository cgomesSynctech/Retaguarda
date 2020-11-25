unit Frm_DevConsigEnt;

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
  TFrmDevConsigEnt = class(TFrmSaidas)
    btEstimates: TTS_SpeedButton;
    imgStatus: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure lbOperacaoSetParametrosForm(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure btEstimatesClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure AtualizaDadosCliente; override;

  public
    { Public declarations }
  end;

var
  FrmDevConsigEnt: TFrmDevConsigEnt;

implementation
  uses DM_Projeto, DM_DevConsigEnt, Funcoes, Dlg_MescAcertConsig;

{$R *.DFM}

procedure TFrmDevConsigEnt.FormCreate(Sender: TObject);
begin
  inherited;
  FrmDevConsigEnt := self;
  tsTermos.Visible := False;
end;

procedure TFrmDevConsigEnt.lbOperacaoSetParametrosForm(Sender: TObject);
begin
  DMProjeto.SetParametrosForm([DMDevConsigEnt.C_TabelaTIPOMOVIMENTO.asVariant, 9]);
end;


procedure TFrmDevConsigEnt.AtualizaDadosCliente;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMDevConsigEnt.GetMovimentos('3') > 0 then
    btEstimates.Font.Color := clRed
  else
    btEstimates.Font.Color := clBlack;

end;


procedure TFrmDevConsigEnt.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btEstimates.Font.Color := clBlack;
end;

procedure TFrmDevConsigEnt.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se o cliente possui Estimates em aberto para aproveitamente}
  {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
   já deve indicar se existem ou não - dispensando uma nova consulta}
  if (btEstimates.Font.Color = clred) and not DMDevConsigEnt.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin
    if DlgMsg.ShowMsg(2185) = 100 then begin
      btEstimatesclick(self);
    end;
  end;
end;

procedure TFrmDevConsigEnt.btEstimatesClick(Sender: TObject);
begin
  inherited;
  if DMDevConsigEnt.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMDevConsigEnt.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643);
    exit;
  end;


  DlgMescAcertConsig := TDlgMescAcertConsig.Create(self);
  DlgMescAcertConsig.sTipos := '7';
  DlgMescAcertConsig.DM := DMDevConsigEnt;
  DlgMescAcertConsig.GridItens := dbgItens;
  DlgMescAcertConsig.ShowModal;
  DlgMescAcertConsig.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMDevConsigEnt.C_TabelaAfterScroll(DMDevConsigEnt.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := dbgItens;


{  if DMAcertoConsigEnt.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMAcertoConsigEnt.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(543);
    exit;
  end;

  DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
  DlgMesclarMovimentos.sTipos := '3';
  DlgMesclarMovimentos.DM := DMAcertoConsigEnt;
  DlgMesclarMovimentos.GridItens := dbgItens;
  DlgMesclarMovimentos.ShowModal;
  DlgMesclarMovimentos.Release;

  pgItens.ActivePageIndex := 0;
  ActiveControl := dbgItens;
 }
end;

end.
