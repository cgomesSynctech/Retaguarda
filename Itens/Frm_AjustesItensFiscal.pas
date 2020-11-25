unit Frm_AjustesItensFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, TS_PopupMenu, ComCtrls,
  StdCtrls, Buttons, TS_BitBtn, ExtCtrls, TS_Bevel,
  TS_SpeedButton, TS_MaxPanel, TS_Label, TS_DBEditDate, Mask, DBCtrls, TS_DBEdit, TS_DBMemo,
  TS_DBEditItem, TS_DBText, TS_DBLookupComboBox, CheckLst,
  dxDBELib, dxExEdtr, dxEdLib, TS_DBButtonEdit, dxEditor,
  dxCntner, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  TS_CheckListBox, dxDBTLCl, dxGrClms, Dlg_PopupContas,
  TS_DBPopupEdit, TS_DBEditNumber, teCtrls,
  TS_EffectsPanel, dxTLClms, TS_Shape, BTOdeum, IBSQL, Placemnt, dxDBEdtr,
  TS_CheckBox, dxfProgressBar;
type
  TFrmAjustesItensFiscal = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    lblNovaQtde: TTS_Label;
    lblQtdeAtual: TTS_Label;
    TS_Label7: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    dfQuantidade: TTS_DBEditNumber;
    dfNovaQuantidade: TTS_DBEditNumber;
    dbtQtdeAtual: TTS_DBText;
    dfItem: TTS_DBEditItem;
    TS_Label16: TTS_Label;
    TS_Label8: TTS_Label;
    GridCONTA: TdxDBGridMaskColumn;
    GridcmbConta: TdxDBGridLookupColumn;
    GridEstoque: TdxDBGridColumn;
    GridEstoqueNovo: TdxDBGridColumn;
    GridIDMESTRE: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridQUANTIDADE: TdxDBGridMaskColumn;
    GridITEM: TdxDBGridMaskColumn;
    GridMOTIVO: TdxDBGridMaskColumn;
    GridCUSTO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridNUMERO: TdxDBGridMaskColumn;
    GridQ_Contabilidade: TdxDBGridColumn;
    TS_DBPopupEdit1: TTS_DBPopupEdit;
    dfCustoMedio: TTS_DBEditNumber;
    shpQtdeAtual: TTS_Shape;
    lblNovaQuantidade: TTS_Label;
    dfValidade: TTS_DBEditDate;
    lblValidade: TTS_Label;
    lblLote: TTS_Label;
    dfLote: TTS_DBEdit;
    IBSQL1: TIBSQL;
    lbUnidade: TTS_Label;
    cmbUnidade: TTS_DBLookupComboBox;
    cbLockDate: TTS_CheckBox;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    dfCodigo: TTS_DBEdit;
    dfRef: TTS_DBEdit;
    lbAlmox: TTS_Label;
    cmbAlmox: TTS_DBLookupComboBox;
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_DBPopupEdit1InitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure dfItemSelecionou(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure cbLockDateChange(Sender: TObject);
    procedure TS_DBEditDate1Exit(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmbAlmoxChange(Sender: TObject);
  protected
    DlgPopup : TDlgPopupContas;
  private
  public
    { Public declarations }
  end;

var
  FrmAjustesItensFiscal: TFrmAjustesItensFiscal;

implementation
  uses DM_AjustesItensFiscal, DM_Projeto, funcoes, variants;

{$R *.DFM}

procedure TFrmAjustesItensFiscal.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;

  if not DMAjustesItensFiscal.DadosCompleto then
    exit;

  DMAjustesItensFiscal.Contabiliza;

  DMAjustesItensFiscal.MostraContabilidade;
  ////////////////

{  DMContabil.ContabilizaAjustesItensFiscal(DMAjustesItensFiscal.C_TabelaIDMestre.value,DMAjustesItensFiscal.C_Tabela);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.free;}
end;




procedure TFrmAjustesItensFiscal.TS_DBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetEventos(TS_DBPopupEdit1);
end;

procedure TFrmAjustesItensFiscal.FormCreate(Sender: TObject);
begin
  DMAjustesItensFiscal.CriaContabilidade;
  inherited;
  DlgPopup := TDlgPopupContas.Create(self,DMAjustesItensFiscal.C_ContasDS,nil,true);

  lbAlmox.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';
  cmbAlmox.Visible := lbAlmox.Visible;

  lblLote.visible := DMProjeto.bControleValidade;
  dfLote.visible := DMProjeto.bControleValidade;
  lblValidade.visible := DMProjeto.bControleValidade;
  dfValidade.visible := DMProjeto.bControleValidade;
end;

procedure TFrmAjustesItensFiscal.FormActivate(Sender: TObject);
begin
  inherited;
  TS_DBPopupEdit1.PopupControl := DlgPopup.pnPopup;
end;

procedure TFrmAjustesItensFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.free;
  if DMAjustesItensFiscal.ContabilidadeAtivado then
    DMAjustesItensFiscal.ContabilidadeDesativado;
  ////////////////////
end;

procedure TFrmAjustesItensFiscal.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	DMAjustesItensFiscal.C_Unidades.Filtered := false;
  lblNovaQtde.visible := true;
  dfNovaQuantidade.visible := true;
  dbtQtdeAtual.visible := true;
  shpQtdeAtual.visible := true;
  lblQtdeAtual.visible := true;
  lblNovaQuantidade.visible := true;
end;

procedure TFrmAjustesItensFiscal.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  lblNovaQtde.visible := false;
  dfNovaQuantidade.visible := false;
  lblNovaQuantidade.visible := false;
  shpQtdeAtual.visible := false;
  dbtQtdeAtual.visible := false;
  lblQtdeAtual.visible := false;
end;

procedure TFrmAjustesItensFiscal.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  lblLote.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  dfLote.visible 			:= DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  lblValidade.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  dfValidade.visible 	:= DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
end;

procedure TFrmAjustesItensFiscal.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  lblLote.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  dfLote.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  lblValidade.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
  dfValidade.visible := DMAjustesItensFiscal.C_TabelaControleValidade.value = 'S';
end;

procedure TFrmAjustesItensFiscal.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then begin
    dfItem.ID := DMProjeto.GetParametrosForm(1);
    ActiveControl := dfQuantidade;
  end;
end;

procedure TFrmAjustesItensFiscal.cbLockDateChange(Sender: TObject);
begin
  inherited;
  if cbLockDate.Checked then
    DMAjustesItensFiscal.dData := DMAjustesItensFiscal.C_TabelaData.Value
  else
    DMAjustesItensFiscal.dData := DMProjeto.dDataSistema;
end;

procedure TFrmAjustesItensFiscal.TS_DBEditDate1Exit(Sender: TObject);
begin
  inherited;
  cbLockDateChange(Self);
end;

procedure TFrmAjustesItensFiscal.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (LastDataObject.TableName = 'ITENS') and
     (ActiveControl = dfItem) and (LastDataObject.ObjectKey <> null) then
    dfItem.ID := LastDataObject.ObjectKey;
end;

procedure TFrmAjustesItensFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If Key in ['.',','] then
    Key := Decimalseparator;
end;

procedure TFrmAjustesItensFiscal.cmbAlmoxChange(Sender: TObject);
begin
  inherited;
  DMAjustesItensFiscal.AlterarAlmox;
end;

end.
