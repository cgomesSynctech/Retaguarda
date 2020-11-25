unit Frm_Requisicoes;

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
  TS_EffectsPanel, teMasked, teDiagon, TransEff, teTimed, BTOdeum, Placemnt,
  dxfProgressBar;

type
  TFrmRequisicoes = class(TFrmEntradas)
    TS_Label1: TTS_Label;                                                
    dbgItensQtdRecebida: TdxDBGridColumn;
    imgStatus: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure cmbTipoMovimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRequisicoes: TFrmRequisicoes;

implementation
  uses DM_Projeto, funcoes, DM_Requisicoes;

{$R *.DFM}

procedure TFrmRequisicoes.FormCreate(Sender: TObject);
begin
  inherited;
  FrmRequisicoes := self;
end;

procedure TFrmRequisicoes.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensQtdRecebida.Visible := false;
  dbgItensStatus.Visible := false;
end;

procedure TFrmRequisicoes.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dbgItensQtdRecebida.Visible := true;
  dbgItensStatus.Visible := true;
end;

procedure TFrmRequisicoes.cmbTipoMovimentoClick(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

procedure TFrmRequisicoes.FormShow(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.Visible := false;
  dbgItensValidade.Visible := false;
  dbgItensNumeroLote.DisableCustomizing := true;
  dbgItensValidade.DisableCustomizing := true;
end;

end.
 