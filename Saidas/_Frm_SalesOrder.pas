unit Frm_SalesOrder;

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
  Placemnt, dxfProgressBar, TS_LookupComboBox, CheckLst, TS_CheckListBox,
  TS_DBImageEdit, TS_DBComboBox;
           
type
  TFrmSalesOrder = class(TFrmSaidas)
    btEstimates: TTS_SpeedButton;
    imgStatus: TImageList;
    Complemento1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure lbOperacaoSetParametrosForm(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure btEstimatesClick(Sender: TObject);
    procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
      var CanDelete: Boolean);
  private                                               
    { Private declarations }
  protected
    procedure AtualizaDadosCliente; override;

  public
    { Public declarations }
  end;

var
  FrmSalesOrder: TFrmSalesOrder;

implementation
  uses DM_Projeto, DM_SalesOrder, Funcoes, Dlg_MesclarMovimentos{,dm_ECF};

{$R *.DFM}

procedure TFrmSalesOrder.FormCreate(Sender: TObject);
begin
  inherited;
  FrmSalesOrder:= self;
end;

procedure TFrmSalesOrder.lbOperacaoSetParametrosForm(Sender: TObject);
begin
  DMProjeto.SetParametrosForm([DMSalesOrder.C_TabelaTIPOMOVIMENTO.asVariant, 2]);
end;


procedure TFrmSalesOrder.AtualizaDadosCliente;
begin
  inherited;
  if Application.Terminated then
    exit;  //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

  if DMSalesOrder.GetMovimentos('3') > 0 then
    btEstimates.Font.Color := clRed
  else
    btEstimates.Font.Color := clBlack;

end;


procedure TFrmSalesOrder.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btEstimates.Font.Color := clBlack;
end;

procedure TFrmSalesOrder.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  {Verificando se o cliente possui Estimates em aberto para aproveitamente}
  {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
   já deve indicar se existem ou não - dispensando uma nova consulta}
  if DMProjeto.Parametro('AlertasVenda') = 'S' then begin
    if (btEstimates.Font.Color = clred) and not DMSalesOrder.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then begin
      if DlgMsg.ShowMsg(2185) = 100 then begin
        btEstimatesclick(self);
      end;
    end;
  end;
end;

procedure TFrmSalesOrder.btEstimatesClick(Sender: TObject);
begin
  inherited;
  if DMSalesOrder.C_TabelaSituacao.Value = 'C' then
    exit;

  if DMSalesOrder.C_tabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(543);
    exit;
  end;

  DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
  DlgMesclarMovimentos.sTipos := '3';
  DlgMesclarMovimentos.DM := DMSalesOrder;
  DlgMesclarMovimentos.GridItens := dbgItens;
  DlgMesclarMovimentos.ShowModal;
  DlgMesclarMovimentos.Release;

  //Para Atualizar Ordem de digitação e sequencial;
  DMSalesOrder.C_TabelaAfterScroll(DMSalesOrder.C_Tabela);

  pgItens.ActivePageIndex := 0;
  ActiveControl := nil;

  PostMessage(Handle, PM_Foco, 0, 0);

end;

procedure TFrmSalesOrder.dbgItensTS_BeforeDeleteAll(Sender: TObject;
  var CanDelete: Boolean);
begin
  inherited;
    if not (DMSaida.C_Itens.State in [dsEdit,dsInsert]) Then
       DMSaida.C_Itens.Edit;
    DMSaida.C_ItensSituacao.Value := 'C';
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanItemVR', '', False,
                  'Item:' + DMSaida.C_ItensDescricao.AsString + #13#10 + 'Preço:' + DMSaida.C_ItensPreco.AsString,
                  DMSaida.C_ItensITEM.AsInteger,'FrmItens');

//Paulo Remoção do DMECF 22/08/2012

//    if (DMProjeto.nModeloECF <> 0) then
//    begin
//        if CanDelete then
//            with DMSaida do
//            begin
//                if (DMProjeto.bECFAtivo) then
//                begin
//                    if not DMECF.ECF1.CancelaItem(C_ItensSEQUENCIA.AsString, C_ItensI_CODIGO.AsString, C_ItensSITUACAOECF.Value, FormatFloat(DMProjeto.sCasasDecimais, C_ItensALIQICMS.Value),
//                        FormatFloat('0.000', C_ItensQUANTIDADE.Value), '$', '0000', FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value)) then
//                    begin
//                        ShowMessage('Item não pode ser cancelado');
//                        CanDelete := false;
//                        Exit;
//                    end;
//                end;
//            end;
//    end
//    else
//    begin if CanDelete then
//     //     DMSaida.C_Itens.delete;
//    end;

end;

end.
