unit Frm_PayrollItems;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxTLClms, dxTL, dxCntner,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr,
  dxEdLib, dxDBELib, TS_DBImageEdit, TS_DBEditNumber, TS_DBPopupEdit,
  TS_DBEdit, dxEditor, dxDBEdtr, TS_DBLookupComboBox, ComCtrls,
  TS_PageControl, TS_Shape, dxDBTLCl, dxGrClms, Mask, DBCtrls,
  TS_DBButtonEdit, TS_DBEditFavorecido, Dlg_PopupContas, Menus,
  TS_PopupMenu, TS_DBCheckBox, TS_DBEditDate, TS_DBEditItem, Variants,
  BTOdeum, Placemnt, dxfProgressBar;

type
  TFrmPayrollItems = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dfDescricao: TTS_DBEdit;
    cmbTipoPayroll: TTS_DBLookupComboBox;
    pgTipoPayroll: TTS_PageControl;
    tsWage: TTS_TabSheet;
    tsCommission: TTS_TabSheet;
    tsAddition: TTS_TabSheet;
    tsDeduction: TTS_TabSheet;
    lbPercComissao: TTS_Label;
    dfPComissao: TTS_DBEditNumber;
    lbConta1: TTS_Label;
    cmbContaComissao: TTS_DBPopupEdit;
    lbConta0: TTS_Label;
    cmbContaWage: TTS_DBPopupEdit;
    TS_Label8: TTS_Label;
    cmbTipoWage: TTS_DBImageEdit;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label12: TTS_Label;
    Label2: TLabel;
    TS_Shape1: TTS_Shape;
    DBEdit1: TDBEdit;
    lbPercAddition: TTS_Label;
    dfVPAddition: TTS_DBEditNumber;
    lbConta2: TTS_Label;
    cmbContaAddition: TTS_DBPopupEdit;
    TS_Label13: TTS_Label;
    dfLimiteAddition: TTS_DBEditNumber;
    lbAgencia: TTS_Label;
    lbIdentificacao: TTS_Label;
    lbConta: TTS_Label;
    lbValorDeduction: TTS_Label;
    lbPercDeduction: TTS_Label;
    dfVPDeduction: TTS_DBEditNumber;
    TS_Label19: TTS_Label;
    dfLimiteDeduction: TTS_DBEditNumber;
    cmbContaLiability: TTS_DBPopupEdit;
    dfIdentificacao: TTS_DBEdit;
    dfAgencia: TTS_DBEditFavorecido;
    dbgDiasComissao: TTS_QDBGrid;
    dbgDiasComissaoDIA_SEMANA: TdxDBGridImageColumn;
    dbgDiasComissaoADD_COMISSAO: TdxDBGridCalcColumn;
    TS_Label38: TTS_Label;
    dfMetodoAdicao: TTS_DBImageEdit;
    lbMetas: TTS_Label;
    dbgMetas: TTS_QDBGrid;
    dbgMetasVENDAMINIMA: TdxDBGridMaskColumn;
    dbgMetasVENDAMAXIMA: TdxDBGridMaskColumn;
    dbgMetasVALOR: TdxDBGridMaskColumn;
    dbgMetasTIPOPERCENTUAL: TdxDBGridMaskColumn;
    ppmMetas: TTS_PopupMenu;
    cbLancarNovos: TTS_DBCheckBox;
    DBEdit2: TDBEdit;
    dfValorFixoPadrao: TTS_DBEditNumber;
    cbMostrarItem: TTS_DBCheckBox;
    cbHoras: TTS_DBCheckBox;
    TS_DBCheckBox4: TTS_DBCheckBox;
    cbTemporario: TTS_DBCheckBox;
    dfValidade: TTS_DBEditDate;
    lbValidade: TTS_Label;
    lbValorFixoPadrao: TTS_Label;
    lbQtdeHorasPadrao: TTS_Label;
    dfQtdeHorasPadrao: TTS_DBEditNumber;
    TS_Label3: TTS_Label;
    dfItem: TTS_DBEditItem;
    TS_DBCheckBox1: TTS_DBCheckBox;
    ckbValor: TTS_DBCheckBox;
    ckbLimite: TTS_DBCheckBox;
    TS_DBCheckBox5: TTS_DBCheckBox;
    cmbTipoAddition: TTS_DBImageEdit;
    TS_Label4: TTS_Label;
    lbValorAddition: TTS_Label;
    cmbTipoDeduction: TTS_DBImageEdit;
    TS_Label5: TTS_Label;
    cmbPercentual: TTS_DBImageEdit;
    lbPercentual: TTS_Label;
    tsWageHours: TTS_TabSheet;
    TS_Label6: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label17: TTS_Label;
    dfDespesa: TTS_DBPopupEdit;
    dfTipo: TTS_DBImageEdit;
    dfValorHoraPadrao: TTS_DBEditNumber;
    ckbMostrar: TTS_DBCheckBox;
    dfServico: TTS_DBEditItem;
    lbItemPayroll: TTS_Label;
    cmbItemPayroll: TTS_DBLookupComboBox;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridVALOR: TdxDBGridCurrencyColumn;
    GridPERCENTUAL: TdxDBGridCurrencyColumn;
    GridDESATIVADO: TdxDBGridMaskColumn;
    GridlkConta: TdxDBGridLookupColumn;
    GridlkTipoPayroll: TdxDBGridLookupColumn;
    GridlkPayrollItemDesc: TdxDBGridLookupColumn;
    procedure DBEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbContaWageInitPopup(Sender: TObject);
    procedure cmbContaComissaoInitPopup(Sender: TObject);
    procedure cmbContaAdditionInitPopup(Sender: TObject);
    procedure cmbContaLiabilityInitPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDiasComissaoTS_AfterNewRecord(Sender: TObject);
    procedure pgTipoPayrollChange(Sender: TObject);
    procedure dbgMetasTS_AfterNewRecord(Sender: TObject);
    procedure dbgMetasKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMetasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dfMetodoAdicaoChange(Sender: TObject);
    procedure dbgMetasEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure DBEdit2Change(Sender: TObject);
    procedure cbTemporarioChange(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure cmbTipoAdditionChange(Sender: TObject);
    procedure cmbTipoDeductionChange(Sender: TObject);
    procedure cmbPercentualChange(Sender: TObject);
    procedure dfMetodoAdicaoEnter(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure tsAdditionShow(Sender: TObject);
    procedure tsDeductionShow(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentPesquisar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure cmbTipoPayrollChange(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dfItemSetParametrosForm(Sender: TObject);
  private
    { Private declarations }
    DlgPopup : TDlgPopupContas;
    procedure AtualizaValidade;
    procedure AtualizaAddition;

    procedure AtualizaDeduction;

  public
    { Public declarations }
  end;

var
  FrmPayrollItems: TFrmPayrollItems;

implementation
  uses DM_Projeto, DM_PayrollItems, funcoes, db;

{$R *.DFM}

procedure TFrmPayrollItems.DBEdit1Change(Sender: TObject);
begin
  inherited;
  pgTipoPayroll.ActivePageIndex := DMPayrollItems.C_TabelaTipoPayroll.Value;
end;

procedure TFrmPayrollItems.FormCreate(Sender: TObject);
begin
  inherited;
  DlgPopup := TDlgPopupContas.Create(Self, DMPayrollItems.C_ContasDS, nil, False );
end;

procedure TFrmPayrollItems.cmbContaWageInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := dlgPopup.pnPopup;
  DlgPopup.SetDS( DMPayrollItems.C_ContasDS );
  DlgPopup.SetEventos( TTS_DBPopupEdit(Sender) );
end;

procedure TFrmPayrollItems.cmbContaComissaoInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := dlgPopup.pnPopup;
  DlgPopup.SetDS( DMPayrollItems.C_ContasDS );
  DlgPopup.SetEventos( TTS_DBPopupEdit(Sender) );
end;

procedure TFrmPayrollItems.cmbContaAdditionInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := dlgPopup.pnPopup;
  DlgPopup.SetDS( DMPayrollItems.C_ContasDS );
  DlgPopup.SetEventos( TTS_DBPopupEdit(Sender) );
end;

procedure TFrmPayrollItems.cmbContaLiabilityInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := dlgPopup.pnPopup;
  DlgPopup.SetDS( DMPayrollItems.C_ContasLiabilityDS );
  DlgPopup.SetEventos( TTS_DBPopupEdit(Sender) );
end;

procedure TFrmPayrollItems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
end;

procedure TFrmPayrollItems.dbgDiasComissaoTS_AfterNewRecord(
  Sender: TObject);
begin
  inherited;
  dbgDiasComissao.TS_SelectedColumn := 'DIA_SEMANA';
end;

procedure TFrmPayrollItems.pgTipoPayrollChange(Sender: TObject);
begin
  inherited;
  DMPayrollItems.C_TabelaConta.DisplayLabel :=
    Replace(TTS_Label( FindComponent('lbConta'+IntToStr(pgTipoPayroll.ActivePageIndex))).Caption, ':', '');
end;

procedure TFrmPayrollItems.dbgMetasTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgMetas.TS_SelectedColumn := 'VendaMinima';
end;

procedure TFrmPayrollItems.dbgMetasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = '%' then begin
    dbgMetas.CloseEditor;
    if DMPayrollItems.C_Metas.State = dsBrowse then
      DMPayrollItems.C_Metas.Edit;
    DMPayrollItems.C_MetasTipoPercentual.Value := 'S';
  end;
end;

procedure TFrmPayrollItems.dbgMetasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (TdxDBGridColumn(AColumn).FieldName = 'VALOR') and (dbgMetas.GetFieldValue(ANode, 'TipoPercentual', 'N') = 'S') then
    AText := AText + ' %';
end;

procedure TFrmPayrollItems.dfMetodoAdicaoChange(Sender: TObject);
begin
  inherited;
  if dfMetodoAdicao.Text[1] in ['3', '4'] then begin
    lbMetas.Visible := true;
    dbgMetas.Visible := true;
    dfVPAddition.Enabled := false;
    dfVPAddition.Enabled := false;
    if dfMetodoAdicao.Text = '3' then
      dbgMetas.Bands[0].Caption := 'Faturamento Entre'
    else
      dbgMetas.Bands[0].Caption := 'Horas Produzidas Entre'
  end
  else begin
    lbMetas.Visible := false;
    dbgMetas.Visible := false;
    dfVPAddition.Enabled := true;
    dfVPAddition.Enabled := true;
  end;

end;

procedure TFrmPayrollItems.dbgMetasEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if (dbgMetas.TS_SelectedColumn = 'VALOR') and (DMPayrollItems.C_MetasTipoPercentual.Value = 'S') then begin
    DMPayrollItems.C_Metas.Edit;
    DMPayrollItems.C_MetasTipoPercentual.Value := 'N';
  end;
end;

procedure TFrmPayrollItems.DBEdit2Change(Sender: TObject);
begin
  inherited;
  if DMPayrollItems.C_TabelaMETODOADIC.Value in [3,4] then begin
    lbMetas.Visible := true;
    dbgMetas.Visible := true;
    dfVPAddition.Enabled := false;
    dfVPAddition.Enabled := false;

    if DMPayrollItems.C_TabelaMETODOADIC.Value = 3 then
      dbgMetas.Bands[0].Caption := 'Faturamento Entre'
    else
      dbgMetas.Bands[0].Caption := 'Horas Produzidas Entre'

    end
  else begin
    lbMetas.Visible := false;
    dbgMetas.Visible := false;
    dfVPAddition.Enabled := true;
    dfVPAddition.Enabled := true;
  end;
end;

procedure TFrmPayrollItems.AtualizaValidade;
begin
	lbValidade.Enabled := cbTemporario.Checked;
  dfValidade.Enabled := cbTemporario.Checked;
end;

procedure TFrmPayrollItems.cbTemporarioChange(Sender: TObject);
begin
  inherited;
  AtualizaValidade;
end;

procedure TFrmPayrollItems.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  AtualizaValidade;
  AtualizaAddition;
  AtualizaDeduction;
end;

procedure TFrmPayrollItems.AtualizaAddition;
begin
  lbPercAddition.Visible 	:= cmbTipoAddition.Text = 'P';
  if cmbTipoAddition.Text = 'P' then
  	dfVPAddition.DataField := 'Percentual'
  else
  	dfVPAddition.DataField := 'Valor';
  lbValorAddition.Visible := cmbTipoAddition.Text = 'V';
end;

procedure TFrmPayrollItems.AtualizaDeduction;
begin
  lbPercDeduction.Visible := cmbTipoDeduction.Text = 'P';
  lbValorDeduction.Visible:= cmbTipoDeduction.Text = 'V';
  if cmbTipoDeduction.Text = 'P' then
  	dfVPDeduction.DataField:= 'Percentual'
  else
  	dfVPDeduction.DataField:= 'Valor';

  lbPercentual.Visible 		:= cmbTipoDeduction.Text = 'P';
  cmbPercentual.Visible 	:= cmbTipoDeduction.Text = 'P';

  cmbItemPayroll.Visible 	:= (cmbTipoDeduction.Text = 'P') and (cmbPercentual.Text = '3');
  lbItemPayroll.Visible 	:= (cmbTipoDeduction.Text = 'P') and (cmbPercentual.Text = '3');

end;

procedure TFrmPayrollItems.cmbTipoAdditionChange(Sender: TObject);
begin
  inherited;
  AtualizaAddition;
end;

procedure TFrmPayrollItems.cmbTipoDeductionChange(Sender: TObject);
begin
  inherited;
  AtualizaDeduction;
end;

procedure TFrmPayrollItems.cmbPercentualChange(Sender: TObject);
begin
  inherited;
  AtualizaDeduction;
end;

procedure TFrmPayrollItems.dfMetodoAdicaoEnter(Sender: TObject);
begin
  inherited;
  with dfMetodoAdicao do begin
    Values.Clear;
    Descriptions.Clear;
		if cmbTipoAddition.Text = 'P' then begin
    	Values.Add('1');
      Descriptions.Add('Calcular sobre o líquido');
      Values.Add('2');
      Descriptions.Add('Calcular sobre o bruto');
      Text := '2';
    end else begin
 	   	Values.Add('5');
    	Descriptions.Add('Nenhum');
  		Values.Add('3');
    	Descriptions.Add('Calcular por meta de faturamento');
    	Values.Add('4');
    	Descriptions.Add('Calcular por horas produzidas');
      Text := '5';
    end;
  end;
end;

procedure TFrmPayrollItems.btComando1Click(Sender: TObject);
var nResp : integer;
		sFav  : string;
begin
  inherited;
  with DMPayrollItems do begin

    if C_TabelaTipoPayroll.Value = 2 then begin
    	DlgMsg.ShowMsg( 808 );
      Exit;
    end;

  	nResp := DlgMsg.ShowMsg(1700, [C_TabelaDescricao.AsString] );
    if nResp = 100 then
    	sFav := 'T'
    else if nResp = 200 then begin
      DMProjeto.SetParametrosForm(['','',3]);
  		DMProjeto.CriarForm('DlgEscolheFavorecidos',self,true);
    	if DMProjeto.ExisteParametrosForm then
    		sFav := DMProjeto.getParametrosForm(0);
      DMProjeto.LimparParametrosForm;
    end else begin
    	sFav := '';
    end;

    if sFav = '' then
    	exit;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

 		InsereItens(sFav);

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    try
      SendLastDataObject(Self.Name, 'PayRollItens', 'PayRollItem', DMPayrollItems.C_TabelaPayRollItem.AsInteger,
                         false );
    except
    end;

	end;
  
end;

procedure TFrmPayrollItems.tsAdditionShow(Sender: TObject);
begin
  inherited;
  AtualizaAddition;
end;

procedure TFrmPayrollItems.tsDeductionShow(Sender: TObject);
begin
  inherited;
  AtualizaDeduction;
end;

procedure TFrmPayrollItems.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	btComando1.Visible := false;
  ActiveControl := dfDescricao;
end;

procedure TFrmPayrollItems.FormComponentPesquisar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
	btComando1.Visible := true;
end;

procedure TFrmPayrollItems.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if UpperCase(LastDataObject.TableName) = 'FAVORECIDOS' then begin
  	if ActiveControl = dfAgencia then
      if LastDataObject.ObjectKey <> 0 then
    		dfAgencia.ID := LastDataObject.ObjectKey;
  end;
end;

procedure TFrmPayrollItems.cmbTipoPayrollChange(Sender: TObject);
begin
  inherited;
	cbLancarNovos.Checked := DMPayrollItems.C_TabelaTipoPayroll.Value <> 2;
  cbLancarNovos.Enabled := DMPayrollItems.C_TabelaTipoPayroll.Value <> 2;
end;

procedure TFrmPayrollItems.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then begin

  	if (DMProjeto.getParametrosForm(0)=null) or (DMProjeto.getParametrosForm(0)=0) then begin
      if DMProjeto.QtdParametrosForm > 1 then
  		  if DMProjeto.getParametrosForm(1) <> 0 then
  			  DMPayrollItems.C_TabelaTipoPayRoll.Value := DMProjeto.getParametrosForm(1);
    end;

  end;
end;

procedure TFrmPayrollItems.dfItemSetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [null,3] );
end;

end.

