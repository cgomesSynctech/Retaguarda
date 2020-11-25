unit Frm_TiposMovEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, TS_PopupMenu, ComCtrls, dxExEdtr, dxEdLib,
  TS_CheckBox, StdCtrls, Mask, DBCtrls, dxDBELib, TS_DBImageEdit, ExtCtrls,
  TS_Shape, dxDBEdtr, TS_DBLookupComboBox, dxEditor, TS_DBButtonEdit,
  TS_DBCheckBox, TS_PageControl, dxCntner, TS_DBEdit, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, Placemnt, BTOdeum, TS_Label, TS_Image, dxfLabel,
  TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL, TS_QDBGrid, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  TS_BitBtn, Variants, TS_DBPopupEdit;

type
  TFrmTiposMovEntrada = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    dfSigla: TTS_DBEdit;
    TS_PageControl1: TTS_PageControl;
    tsGeral: TTS_TabSheet;
    tsCampos: TTS_TabSheet;
    tsColunas: TTS_TabSheet;
    cb2: TTS_DBCheckBox;
    TS_DBEdit17: TTS_DBEdit;
    TS_DBEdit18: TTS_DBEdit;
    TS_DBEdit19: TTS_DBEdit;
    TS_DBEdit22: TTS_DBEdit;
    TS_CheckBox4: TTS_CheckBox;
    TS_DBCheckBox24: TTS_DBCheckBox;
    TS_DBEdit20: TTS_DBEdit;
    TS_CheckBox3: TTS_CheckBox;
    tsAdicionais: TTS_TabSheet;
    TS_DBEdit53: TTS_DBEdit;
    TS_DBEdit54: TTS_DBEdit;
    TS_DBEdit55: TTS_DBEdit;
    TS_DBEdit56: TTS_DBEdit;
    TS_DBEdit57: TTS_DBEdit;
    TS_Label7: TTS_Label;
    TS_Label13: TTS_Label;
    dfDesc: TTS_DBEdit;
    GridTIPOMOVIMENTO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridSIGLAINICIAL: TdxDBGridMaskColumn;
    dfColor: TTS_DBButtonEdit;
    TS_Label16: TTS_Label;
    TS_Label17: TTS_Label;
    dfTipoFav: TTS_DBLookupComboBox;
    DBEdit1: TDBEdit;
    TS_Label18: TTS_Label;
    cmbTipoPadrao: TTS_DBLookupComboBox;
    TS_Bevel1: TTS_Bevel;
    TS_Bevel2: TTS_Bevel;
    TS_Bevel4: TTS_Bevel;
    TS_Bevel5: TTS_Bevel;
    TS_CheckBox5: TTS_CheckBox;
    TS_CheckBox6: TTS_CheckBox;
    ScrollBox1: TScrollBox;
    TS_DBCheckBox12: TTS_DBCheckBox;
    TS_DBCheckBox16: TTS_DBCheckBox;
    TS_DBCheckBox17: TTS_DBCheckBox;
    TS_DBCheckBox18: TTS_DBCheckBox;
    TS_DBCheckBox19: TTS_DBCheckBox;
    TS_DBCheckBox20: TTS_DBCheckBox;
    TS_DBCheckBox21: TTS_DBCheckBox;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_DBEdit5: TTS_DBEdit;
    TS_DBEdit7: TTS_DBEdit;
    TS_DBEdit11: TTS_DBEdit;
    TS_DBEdit12: TTS_DBEdit;
    TS_DBEdit13: TTS_DBEdit;
    TS_DBEdit14: TTS_DBEdit;
    TS_DBEdit15: TTS_DBEdit;
    TS_DBEdit16: TTS_DBEdit;
    TS_CheckBox1: TTS_CheckBox;
    TS_CheckBox2: TTS_CheckBox;
    TS_DBEdit23: TTS_DBEdit;
    TS_DBEdit24: TTS_DBEdit;
    TS_DBEdit25: TTS_DBEdit;
    TS_DBEdit27: TTS_DBEdit;
    TS_DBEdit31: TTS_DBEdit;
    TS_DBEdit32: TTS_DBEdit;
    TS_DBEdit33: TTS_DBEdit;
    TS_DBEdit34: TTS_DBEdit;
    TS_DBEdit35: TTS_DBEdit;
    TS_DBEdit36: TTS_DBEdit;
    TS_Label2: TTS_Label;
    TS_Label4: TTS_Label;
    TS_DBCheckBox11: TTS_DBCheckBox;
    TS_DBEdit93: TTS_DBEdit;
    TS_DBEdit94: TTS_DBEdit;
    TS_DBCheckBox23: TTS_DBCheckBox;
    TS_DBEdit96: TTS_DBEdit;
    TS_DBEdit97: TTS_DBEdit;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label12: TTS_Label;
    TS_DBEdit99: TTS_DBEdit;
    TS_DBEdit100: TTS_DBEdit;
    TS_CheckBox7: TTS_CheckBox;
    TS_DBCheckBox26: TTS_DBCheckBox;
    TS_DBCheckBox27: TTS_DBCheckBox;
    TS_DBCheckBox28: TTS_DBCheckBox;
    TS_DBCheckBox29: TTS_DBCheckBox;
    TS_DBCheckBox30: TTS_DBCheckBox;
    TS_DBCheckBox31: TTS_DBCheckBox;
    TS_DBCheckBox32: TTS_DBCheckBox;
    TS_DBCheckBox33: TTS_DBCheckBox;
    TS_DBEdit87: TTS_DBEdit;
    TS_DBEdit88: TTS_DBEdit;
    TS_DBCheckBox5: TTS_DBCheckBox;
    TS_DBEdit8: TTS_DBEdit;
    TS_DBCheckBox1: TTS_DBCheckBox;
    TS_DBEdit9: TTS_DBEdit;
    dfPrev1: TTS_DBEdit;
    dfPrev2: TTS_DBEdit;
    dfQtdRec1: TTS_DBEdit;
    dfQtdRec2: TTS_DBEdit;
    dfSit1: TTS_DBEdit;
    dfSit2: TTS_DBEdit;
    DBEdit2: TDBEdit;
    GridColumn5: TdxDBGridLookupColumn;
    lbPrev: TTS_CheckBox;
    lbQtdRec: TTS_CheckBox;
    lbSit: TTS_CheckBox;
    TS_Label14: TTS_Label;
    TS_Label5: TTS_Label;
    TS_DBEdit75: TTS_DBEdit;
    TS_DBEdit76: TTS_DBEdit;
    TS_DBEdit78: TTS_DBEdit;
    TS_DBEdit79: TTS_DBEdit;
    TS_DBEdit81: TTS_DBEdit;
    TS_DBEdit82: TTS_DBEdit;
    TS_DBEdit84: TTS_DBEdit;
    TS_DBEdit85: TTS_DBEdit;
    TS_Label10: TTS_Label;
    TS_Label9: TTS_Label;
    TS_DBEdit63: TTS_DBEdit;
    TS_DBEdit64: TTS_DBEdit;
    TS_DBEdit66: TTS_DBEdit;
    TS_DBEdit67: TTS_DBEdit;
    TS_DBEdit69: TTS_DBEdit;
    TS_DBEdit70: TTS_DBEdit;
    TS_DBEdit72: TTS_DBEdit;
    TS_DBEdit73: TTS_DBEdit;
    TS_Label20: TTS_Label;
    pnCustos: TTS_Panel;
    TS_Shape1: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label21: TTS_Label;
    TS_Label22: TTS_Label;
    TS_Image1: TTS_Image;
    TS_Label23: TTS_Label;
    TS_Image2: TTS_Image;
    TS_Label24: TTS_Label;
    cmbPrecoVendaItem: TTS_DBImageEdit;
    TS_Label25: TTS_Label;
    lbPreco: TTS_Label;
    cmbDescontos: TTS_DBImageEdit;
    lbDescontos: TTS_Label;
    cmbTabelasManuais: TTS_DBImageEdit;
    lbTabelasManuais: TTS_Label;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cmbStatus: TTS_DBLookupComboBox;
    lbStatus: TTS_Label;
    dfCodigoForn1: TTS_DBEdit;
    dfCodigoForn2: TTS_DBEdit;
    cbCodigoForn: TTS_DBCheckBox;
    lbFazerPgto: TTS_Label;
    cmbFazerPgto: TTS_DBImageEdit;
    cb3: TTS_DBCheckBox;
    lbNotPrecos: TTS_Label;
    cb5: TTS_DBCheckBox;
    TS_DBCheckBox6: TTS_DBCheckBox;
    tsFiscal: TTS_TabSheet;
    lblCFOP: TTS_Label;
    TS_Label26: TTS_Label;
    TS_Label32: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Label33: TTS_Label;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Label34: TTS_Label;
    TS_Label35: TTS_Label;
    TS_Label36: TTS_Label;
    TS_DBCheckBox2: TTS_DBCheckBox;
    TS_DBCheckBox3: TTS_DBCheckBox;
    dfCFOP: TTS_DBEdit;
    TS_DBEdit109: TTS_DBEdit;
    TS_DBEdit110: TTS_DBEdit;
    TS_DBCheckBox9: TTS_DBCheckBox;
    TS_DBCheckBox15: TTS_DBCheckBox;
    TS_DBEdit111: TTS_DBEdit;
    TS_DBEdit112: TTS_DBEdit;
    TS_DBEdit113: TTS_DBEdit;
    TS_DBEdit114: TTS_DBEdit;
    TS_DBCheckBox34: TTS_DBCheckBox;
    TS_DBEdit115: TTS_DBEdit;
    TS_DBEdit116: TTS_DBEdit;
    TS_DBCheckBox4: TTS_DBCheckBox;
    TS_DBEdit21: TTS_DBEdit;
    TS_DBEdit37: TTS_DBEdit;
    TS_DBCheckBox7: TTS_DBCheckBox;
    TS_DBCheckBox8: TTS_DBCheckBox;
    TS_DBCheckBox10: TTS_DBCheckBox;
    TS_Label6: TTS_Label;
    tsPagina6: TTS_TabSheet;
    TS_Label27: TTS_Label;
    TS_DBImageEdit1: TTS_DBImageEdit;
    TS_Label8: TTS_Label;
    TS_DBCheckBox13: TTS_DBCheckBox;
    cb4: TTS_DBCheckBox;
    TS_Shape9: TTS_Shape;
    cmbTemplateNF: TTS_DBLookupComboBox;
    cmbTipoNotaFiscal: TTS_DBImageEdit;
    TS_DBCheckBox14: TTS_DBCheckBox;
    TS_Shape10: TTS_Shape;
    TS_Label11: TTS_Label;
    cmbTemplatePed: TTS_DBLookupComboBox;
    cbIPI: TTS_DBCheckBox;
    dfIPI1: TTS_DBEdit;
    dfIPI2: TTS_DBEdit;
    lbAlmox: TTS_Label;
    cmbAlmox: TTS_DBLookupComboBox;
    cb6: TTS_DBCheckBox;
    cbBAIXAESTOQUEFISCAL: TTS_DBCheckBox;
    TS_Label15: TTS_Label;
    dbgCFOPSCSTS: TTS_QDBGrid;
    dbgCFOPSCSTSCFOPCST: TdxDBGridMaskColumn;
    dbgCFOPSCSTSCST: TdxDBGridMaskColumn;
    dbgCFOPSCSTSCFOPASSOCIADO: TdxDBGridMaskColumn;
    dbgCFOPSCSTSTIPOMOVIMENTO: TdxDBGridMaskColumn;
    TS_DBCheckBox37: TTS_DBCheckBox;
    TS_Shape11: TTS_Shape;
    TS_Shape12: TTS_Shape;
    TS_Label19: TTS_Label;
    TS_Shape13: TTS_Shape;
    TS_Shape14: TTS_Shape;
    TS_Label28: TTS_Label;
    dbgCFOPSCSTSCFOPFORAESTADO: TdxDBGridColumn;
    TS_DBCheckBox40: TTS_DBCheckBox;
    cmbCstPadrao: TTS_DBLookupComboBox;
    cbPrecoVenda: TTS_DBCheckBox;
    TS_DBCheckBox22: TTS_DBCheckBox;
    ckbDocumento: TTS_DBCheckBox;
    cmbTipoImpressao: TTS_DBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure dfColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure cmbPrecoVendaItemChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure TS_Label8Click(Sender: TObject);
    procedure TS_Label11Click(Sender: TObject);
    procedure TS_DBCheckBox40Change(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  FrmTiposMovEntrada: TFrmTiposMovEntrada;

implementation
  uses DM_Projeto, DB, DM_TiposMovEntrada, Funcoes, Dlg_LookupTiposMovimento, IBQuery;

{$R *.DFM}


procedure TFrmTiposMovEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  FrmTiposMovEntrada:= self;
end;

procedure TFrmTiposMovEntrada.btLimparClick(Sender: TObject);
begin
  inherited;
  TS_PageControl1.ActivePageIndex := 0;
  cmbTipoPadrao.ReadOnly := False;
end;

procedure TFrmTiposMovEntrada.TS_SpeedButton1Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  DlgLookupTiposMovimento := TDlgLookupTiposMovimento.Create(self);
  DlgLookupTiposMovimento.DM   := DMTiposMovEntrada;
  DlgLookupTiposMovimento.Tipo := 'E';
  DlgLookupTiposMovimento.ShowModal;
  DlgLookupTiposMovimento.Release;
  if DMJanela.C_Tabela.FieldByName('CorTitulos').Value <> null then begin
    dfColor.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
    dfColor.Font.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
    end
  else begin
    dfColor.Color := clWhite;
    dfColor.Font.Color := clWhite;
  end;
end;

procedure TFrmTiposMovEntrada.dfColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  DlgColor : TColorDialog;
begin
  inherited;
  DlgColor := TColorDialog.Create(self);
  DlgColor.Color := dfColor.Color;
  
  if DlgColor.Execute then begin
    dfColor.Color := DlgColor.Color;
    dfColor.Font.Color := dfColor.Color;
    DMJanela.C_Tabela.Edit;
    DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger := dfColor.Color;
  end;

  DlgColor.Free;
end;

procedure TFrmTiposMovEntrada.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if DMJanela.C_Tabela.FieldByName('CorTitulos').Value <> null then begin
    dfColor.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
    dfColor.Font.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
    end
  else begin
    dfColor.Color := clWhite;
    dfColor.Font.Color := clWhite;
  end;
end;

procedure TFrmTiposMovEntrada.DBEdit2Change(Sender: TObject);
var
  i : integer;
  c : TComponent;
begin
  inherited;

  lbPrev.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;  {Ped. Compra}
  dfPrev1.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;
  dfPrev2.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;

  if (DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 104) then begin
    lbPrev.Visible := True;
    dfPrev1.Visible := True;
    dfPrev2.Visible := True;
  end;
//  dfPrev3.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;

  lbQtdRec.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];  {Ped. Compra / Requisições}
  dfQtdRec1.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];
  dfQtdRec2.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];
//  dfQtdRec3.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];
  if DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [103] then
    lbQtdRec.Caption := replace(lbQtdRec.Caption, 'Recebida', 'Pedida');

  lbSit.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;  {Ped. Compra}
  dfSit1.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;
  dfSit2.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;
//  dfSit3.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 102;

//  cmbTax.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 106;  {Devolução}
//  dfTax1.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 106;
//  dfTax2.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 106;
//  dfTax3.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value = 106;

  lbStatus.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];
  cmbStatus.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [102,103];

  pnCustos.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [101,105];

  {Tratando os campos que não são utilizados em Requisições: NotReq}
  for i := 0 to componentcount - 1 do begin
    if (components[i] is TTS_CheckBox) and ((components[i] as TTS_CheckBox).TagStr = 'NotReq') then
      (components[i] as TTS_CheckBox).DisableEdit := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [103];

    if (components[i] is TTS_DBCheckBox) and ((components[i] as TTS_DBCheckBox).TagStr = 'NotReq') then
      (components[i] as TTS_DBCheckBox).DisableEdit := DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [103];

    if (components[i] is TTS_DBEdit) and ((components[i] as TTS_DBEdit).TagStr = 'NotReq') then begin
      if (DMTiposMovEntrada.C_TabelaTipoPadrao.Value in [103]) then begin
        (components[i] as TTS_DBEdit).ReadOnly   := true;
        (components[i] as TTS_DBEdit).Color      := FormComponent.FormColor;
        (components[i] as TTS_DBEdit).Font.Color := FormComponent.FormColor;
        end
      else begin
        (components[i] as TTS_DBEdit).ReadOnly   := false;
        (components[i] as TTS_DBEdit).Color      := clwindow;
        (components[i] as TTS_DBEdit).Font.Color := clwindowtext;
      end;
    end;

  end;

  {Configurando CB's}
  for i := 1 to 6 do begin
    c := FindComponent('cb'+inttostr(i));
    if c = nil then
      continue;

    TTS_DBCheckBox(c).DisableEdit :=
          pos(DMTiposMovEntrada.C_TabelaTipoPadrao.asString, TTS_DBCheckBox(c).TagStr) = 0;

    if TTS_DBCheckBox(c).DisableEdit and
       (DMTiposMovEntrada.C_Tabela.FieldByName(TTS_DBCheckBox(c).DataField).asString = 'S') then begin
      if DMTiposMovEntrada.C_Tabela.State = dsBrowse then
        DMTiposMovEntrada.C_Tabela.Edit;
      DMTiposMovEntrada.C_Tabela.FieldByName(TTS_DBCheckBox(c).DataField).asString := 'N';
    end;

  end;

end;

procedure TFrmTiposMovEntrada.DBEdit3Change(Sender: TObject);
begin
  inherited;
  if DMTiposMovEntrada.C_TabelaAtualizaCusto.Value = 'NA' then begin
    cmbPrecoVendaItem.ReadOnly := True;
    cmbPrecoVendaItem.Color    := FormComponent.FormColor;
    lbDescontos.Visible := false;
    cmbDescontos.Visible := false;
    end
  else begin
    cmbPrecoVendaItem.ReadOnly := false;
    cmbPrecoVendaItem.Color    := clWindow;
    lbDescontos.Visible := true;
    cmbDescontos.Visible := true;
  end;
end;

procedure TFrmTiposMovEntrada.cmbPrecoVendaItemChange(Sender: TObject);
begin
  inherited;
  if lbTabelasManuais.Visible then begin
    if cmbPrecoVendaItem.Text = 'NA' then begin
      cmbTabelasManuais.ReadOnly := True;
      cmbTabelasManuais.Color    := FormComponent.FormColor;
      lbTabelasManuais.Enabled := false;
      end
    else begin
      cmbTabelasManuais.ReadOnly := false;
      cmbTabelasManuais.Color    := clWindow;
      lbTabelasManuais.Enabled := true;
    end;
  end;
end;

procedure TFrmTiposMovEntrada.DBEdit4Change(Sender: TObject);
begin
  inherited;
  if lbTabelasManuais.Visible then begin
    if DMTiposMovEntrada.C_TabelaAtualizaPreco.Value = 'NA' then begin
      cmbTabelasManuais.ReadOnly := True;
      cmbTabelasManuais.Color    := FormComponent.FormColor;
      lbTabelasManuais.Enabled := false;
      end
    else begin
      cmbTabelasManuais.ReadOnly := false;
      cmbTabelasManuais.Color    := clWindow;
      lbTabelasManuais.Enabled := true;
    end;
  end;
end;


procedure TFrmTiposMovEntrada.FormShow(Sender: TObject);
var
  Q : TIBQuery;
begin
  inherited;
  cbBAIXAESTOQUEFISCAL.Visible := False;
  if DMProjeto.Parametro('BaixaEstoqueFiscal') = 'S' then begin
    cbBAIXAESTOQUEFISCAL.Visible := True;
  end;
  if DMProjeto.Parametro('PrecosAutomaticos') <> 'S' then begin
    cmbPrecoVendaItem.Visible := false;
    lbPreco.Visible := false;
    lbTabelasManuais.Visible := false;
    cmbTabelasManuais.Visible := false;
    end
  else begin
    lbNotPrecos.Visible := false;

    Q := TIBQuery.Create(self);
    with Q do begin
      DataBase := DMProjeto.DB_Projeto;
      Transaction := DMProjeto.IBT_Projeto;
      Close;
      SQL.Text := 'Select * From TabelasPreco where Baseada = ''N'' and Desativado = ''N'' and TabelaPreco > 0 ';
      Open;

      if RecordCount = 0 then begin
        lbTabelasManuais.Visible := false;
        cmbTabelasManuais.Visible := false;
      end;

      Close;
    end;
    Q.Free;
    
  end;
  cmbCstPadrao.Visible := TS_DBCheckBox40.Checked;
end;

procedure TFrmTiposMovEntrada.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DMTiposMovEntrada.nTipoPadraoFixo := 0;
  if (DMProjeto.GetParametrosForm(1) <> null) then begin
    DMTiposMovEntrada.nTipoPadraoFixo := DMProjeto.GetParametrosForm(1);
    cmbTipoPadrao.ReadOnly := true;

    if (DMProjeto.GetParametrosForm(0) = null) then  begin
      if DMTiposMovEntrada.C_Tabela.State = dsBrowse then
        DMTiposMovEntrada.C_Tabela.Edit;
      DMTiposMovEntrada.C_TabelaTipoPadrao.Value := DMTiposMovEntrada.nTipoPadraoFixo;
    end;
  end;
  lbAlmox.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';
  cmbAlmox.Visible := DMProjeto.Parametro('MultiAlmox') = 'S';

end;

procedure TFrmTiposMovEntrada.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  DMTiposMovEntrada.nTipoPadraoFixo := 0;
end;

procedure TFrmTiposMovEntrada.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
	cmbFazerPgto.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value <> 106;
  lbFazerPgto.Visible := DMTiposMovEntrada.C_TabelaTipoPadrao.Value <> 106;
  // O "Atualizar Preços de Venda Automaticamente" só estará visível se
  // o parâmetro permitir
  cb6.Visible := DMProjeto.Parametro('EntradaPrecoVenda') = 'S';
  if (not cb6.Visible) then begin
    DMTiposMovEntrada.C_Tabela.Edit;
    DMTiposMovEntrada.C_Tabela.FieldByName('CB_ENTRADAPRECOVENDA').AsString := 'N';
  end;
end;

procedure TFrmTiposMovEntrada.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm(['E']);
  DMProjeto.CriarForm('FrmPerfisTiposMovimento',self,true);
end;

procedure TFrmTiposMovEntrada.TS_Label8Click(Sender: TObject);
begin
  inherited;
  ActiveControl := cmbTemplateNF;
  DMProjeto.SetParametrosForm([null,cmbTipoNotaFiscal.Text,DMTiposMovEntrada.C_TabelaTemplateNotaFiscal.AsInteger]);
	DMProjeto.CriarForm('DlgTemplates', self, true);
  DMTiposMovEntrada.C_Templates.Close;
  DMTiposMovEntrada.C_Templates.Open;
end;

procedure TFrmTiposMovEntrada.TS_Label11Click(Sender: TObject);
begin
  inherited;
  ActiveControl := cmbTemplatePed;
  DMProjeto.SetParametrosForm([null,'DE',DMTiposMovEntrada.C_TabelaTemplate.AsInteger]);
	DMProjeto.CriarForm('DlgTemplates', self, true);
  DMTiposMovEntrada.C_TemplatesPed.Close;
  DMTiposMovEntrada.C_TemplatesPed.Open;
end;

procedure TFrmTiposMovEntrada.TS_DBCheckBox40Change(Sender: TObject);
begin
  inherited;
  cmbCstPadrao.Visible := TS_DBCheckBox40.Checked;
end;

end.










