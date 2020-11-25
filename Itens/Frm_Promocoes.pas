unit Frm_Promocoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBEdit, TS_DBEditDate,
  dxEditor, TS_DBButtonEdit, TS_DBEditItem, TS_DBPopupEdit, dxDBTLCl,
  dxGrClms, DBCtrls, TS_DBCheckBox, dxfProgressBar;

type
  TFrmPromocoes = class(TFrmPadrao)
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    dfItem: TTS_DBEditItem;
    dfDataI: TTS_DBEditDate;
    dfDataF: TTS_DBEditDate;
    dfTituloPromocao: TTS_DBPopupEdit;
    lbxTitulos: TDBLookupListBox;
    cbFechada: TTS_DBCheckBox;
    GridPrecos: TTS_QDBGrid;
    GridPrecosPROMOCAOITEM: TdxDBGridMaskColumn;
    GridPrecoslkUnidade: TdxDBGridLookupColumn;
    GridPrecoslkTabela: TdxDBGridLookupColumn;
    GridPrecosPRECOPROMOCAO: TdxDBGridCalcColumn;
    GridPrecosPrecoTabela: TdxDBGridMaskColumn;
    GridPrecosFechada: TdxDBGridCheckColumn;
    ppmGridPrecos: TTS_PopupMenu;
    Grid_icSelecionado: TdxDBGridColumn;
    GridPROMOCAO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridDATA_INICIAL: TdxDBGridDateColumn;
    GridDATA_FINAL: TdxDBGridDateColumn;
    GridITEM: TdxDBGridMaskColumn;
    GridQ_PromocoesItens: TdxDBGridColumn;
    GridDESCRICAOITEM: TdxDBGridMaskColumn;
    GridFECHADA: TdxDBGridMaskColumn;
    procedure lbxTitulosDblClick(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure GridPrecosTS_AfterNewRecord(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure lbxTitulosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPromocoes: TFrmPromocoes;

implementation
  uses DM_Projeto, DM_Promocoes, funcoes;

{$R *.dfm}

procedure TFrmPromocoes.lbxTitulosDblClick(Sender: TObject);
begin
  inherited;
  (GetParentForm(lbxTitulos) as TdxPopupEditForm).ClosePopup(True);

  with DMPromocoes do begin

    C_TabelaDescricao.Value := C_DescPromocoesDescricao.Value;

  end;

end;

procedure TFrmPromocoes.FormComponentBeforeClearParams(Sender: TObject);
var
  nItem : Integer;
begin
  inherited;

  if (DMProjeto.GetParametrosForm(1) <> null) and (DMProjeto.GetParametrosForm(0) = null) then begin
    nItem := DMProjeto.GetParametrosForm(1);

    if nItem > 0 then with DMProjeto.Q_SQL2 do begin
      Close;
      SQL.Text := 'Select Promocao from Promocoes where Item = :I and Fechada = ''N'' ';
      Params[0].asInteger := nItem;
      Open;

      if FieldByName('Promocao').asInteger > 0 then
        Localizar('', ' where p.Promocao = ' + FieldByName('Promocao').asString)
      else begin
        dfItem.ID := nItem;
        ActiveControl := dfTituloPromocao;
      end;

      Close;

    end;

  end;

end;

procedure TFrmPromocoes.GridPrecosTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  GridPrecos.TS_SelectedColumn := 'lkTabelaDePreco';
end;

procedure TFrmPromocoes.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  with DMPromocoes do begin
    {Verificando se já existe uma promoção aberta para o Item}
    with Q_SQL do begin
      Close;
      SQL.Text := 'Select Promocao from Promocoes where Item = :I and Fechada = ''N'' ';
      Params[0].asInteger := dfItem.ID;
      Open;

      if (FieldByName('Promocao').asInteger > 0) and (DlgMsg.ShowMsg(2789) = 100) then
        Localizar('', ' where p.Promocao = ' + FieldByName('Promocao').asString);

      Close;
    end;

    if bAlteracao then
      exit;

    if C_PromocoesItens.Active then begin
      C_PromocoesItens.First;
      while not C_PromocoesItens.EOF do
        C_PromocoesItens.Delete;

      C_TabelasDePreco.First;
      while not C_TabelasDePreco.EOF do begin
        C_PromocoesItens.Append;
        C_PromocoesItensUnidade.Value := DMProjeto.C_LocalizarItensUnidade.Value;
        try
           C_PromocoesItensTabelaPreco.Value := C_TabelasDePrecoTabelaPreco.Value;
        Except
           C_PromocoesItensTabelaPreco.Value := 0;
        End;

        C_PromocoesItens.Post;

        C_TabelasDePreco.Next;
      end;

    end;
  end;
end;

procedure TFrmPromocoes.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dfItem.SetReadOnly(false);

  GridPrecoslkTabela.DisableEditor := false;
  GridPrecoslkUnidade.DisableEditor := false;

  cbFechada.Visible := false;
  GridPrecosFechada.Visible := false;

end;

procedure TFrmPromocoes.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dfItem.SetReadOnly(true);

  GridPrecoslkTabela.DisableEditor := true;
  GridPrecoslkUnidade.DisableEditor := true;

  cbFechada.Visible := true;
  GridPrecosFechada.Visible := true;
end;

procedure TFrmPromocoes.lbxTitulosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  lbxTitulosDblClick(Self);
end;

end.
