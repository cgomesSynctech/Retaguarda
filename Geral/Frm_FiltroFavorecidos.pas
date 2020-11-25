unit Frm_FiltroFavorecidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, TS_ImageEdit, StdCtrls, CheckLst,
  TS_CheckListBox, TS_PopupEdit, TS_EditFavorecido, TS_CurrencyEdit,
  TS_ComboBox, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid, dxCntner, TS_QDBGrid,
  dxEditor, TS_ButtonEdit, TS_EditItem, ExtCtrls, TS_Shape, Buttons,
  TS_SpeedButton, TS_Label, teCtrls, TS_EffectsPanel, DB, DBClient,
  Provider, IBCustomDataSet, IBQuery, Grids, DBGrids;

type
  TFrmFiltroFavorecidos = class(TForm)
    pnPrincipal: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    btAplicarFiltro: TTS_SpeedButton;
    btFechar: TTS_SpeedButton;
    TS_Label5: TTS_Label;
    TS_Shape1: TTS_Shape;
    btRetirarFiltro: TTS_SpeedButton;
    Grid: TTS_QDBGrid;
    ckbLimiteCredito: TTS_CheckBox;
    cmbLimite: TTS_ComboBox;
    edLimite: TTS_CurrencyEdit;
    PopUpTPreco: TTS_PopupEdit;
    PopUpAtividade: TTS_PopupEdit;
    ckbDescontoPadrao: TTS_CheckBox;
    cmbGrupos: TTS_CheckListBox;
    PopUpQualidade: TTS_PopupEdit;
    TS_Label6: TTS_Label;
    PopUpGrupo: TTS_PopupEdit;
    TS_Label7: TTS_Label;
    PopUpTipoEntrega: TTS_PopupEdit;
    TS_Label8: TTS_Label;
    PopUpZona: TTS_PopupEdit;
    TS_Label9: TTS_Label;
    PopUpPlanoPagamento: TTS_PopupEdit;
    cmbDesconto: TTS_ComboBox;
    edDesconto: TTS_CurrencyEdit;
    edFavorecido: TTS_EditFavorecido;
    C_Favorecidos: TClientDataSet;
    C_FavorecidosID: TIntegerField;
    C_FavorecidosNome: TStringField;
    C_FavorecidosCargo: TStringField;
    C_FavorecidosCliente: TStringField;
    C_FavorecidosPayrollItem: TStringField;
    C_FavorecidosImagem: TIntegerField;
    C_FavorecidosIDPayrollItem: TIntegerField;
    C_FavorecidosDS: TDataSource;
    GridID: TdxDBGridMaskColumn;
    GridNome: TdxDBGridMaskColumn;
    GridCargo: TdxDBGridMaskColumn;
    GridCliente: TdxDBGridMaskColumn;
    GridPayrollItem: TdxDBGridMaskColumn;
    GridImagem: TdxDBGridMaskColumn;
    GridIDPayrollItem: TdxDBGridMaskColumn;
    PopUpVendedor: TTS_PopupEdit;
    Q_Grupos: TIBQuery;
    P_Grupos: TDataSetProvider;
    C_Grupos: TClientDataSet;
    C_Grupos_icSelecionado: TIntegerField;
    C_GruposGRUPOCLIENTE: TIntegerField;
    C_GruposDESCRICAO: TStringField;
    Q_Vendedor: TIBQuery;
    P_Vendedor: TDataSetProvider;
    C_Vendedor: TClientDataSet;
    IntegerField1: TIntegerField;
    C_VendedorFAVORECIDO: TIntegerField;
    C_VendedorVENDEDOR: TStringField;
    cmbVendedor: TTS_CheckListBox;
    cmbTabelaPreco: TTS_CheckListBox;
    Q_TabelaPreco: TIBQuery;
    P_TabelaPreco: TDataSetProvider;
    C_TabelaPreco: TClientDataSet;
    IntegerField2: TIntegerField;
    C_TabelaPrecoDESCRICAO: TStringField;
    C_TabelaPrecoTABELAPRECO: TIntegerField;
    Q_Atividade: TIBQuery;
    P_Atividade: TDataSetProvider;
    C_Atividade: TClientDataSet;
    IntegerField3: TIntegerField;
    C_AtividadeTIPOATIVIDADE: TIntegerField;
    C_AtividadeATIVIDADE: TStringField;
    cmbAtividade: TTS_CheckListBox;
    Q_Qualidade: TIBQuery;
    P_Qualidade: TDataSetProvider;
    C_Qualidade: TClientDataSet;
    IntegerField4: TIntegerField;
    C_QualidadeDESCRICAO: TStringField;
    C_QualidadeQUALIDADE: TIntegerField;
    cmbQualidade: TTS_CheckListBox;
    Q_TipoEntrega: TIBQuery;
    P_TipoEntrega: TDataSetProvider;
    C_TipoEntrega: TClientDataSet;
    IntegerField5: TIntegerField;
    C_TipoEntregaDESCRICAO: TStringField;
    C_TipoEntregaTIPOENTREGA: TIntegerField;
    cmbTipoEntrega: TTS_CheckListBox;
    Q_Zona: TIBQuery;
    P_Zona: TDataSetProvider;
    C_Zona: TClientDataSet;
    IntegerField6: TIntegerField;
    C_ZonaZONA: TIntegerField;
    C_ZonaDESCRICAO: TStringField;
    cmbZona: TTS_CheckListBox;
    Q_PlanoPagamento: TIBQuery;
    P_PlanoPagamento: TDataSetProvider;
    C_PlanoPagamento: TClientDataSet;
    IntegerField7: TIntegerField;
    cmbPlanoPagamento: TTS_CheckListBox;
    C_PlanoPagamentoDESCRICAO: TStringField;
    C_PlanoPagamentoPLANOPAGAMENTO: TIntegerField;
    C_FavorecidosIni: TClientDataSet;
    IntegerField8: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure PopUpGrupoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpVendedorCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpTPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpAtividadeCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpQualidadeCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpTipoEntregaCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpZonaCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopUpPlanoPagamentoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAplicarFiltroClick(Sender: TObject);
    procedure btRetirarFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    sCmbVendedor, sCmbTabelaPreco, sCmbAtividade: String;
    sCmbQualidade, sCmbGrupos, sCmbTipoEntrega, sCmbZona, sCmbPlanoPagamento :String;
    bCkbLimiteCredito, bCkbDescontoPadrao: Boolean;
    nCmbLimite, nCmbDesconto: Integer;
    sEdLimite, sEdDesconto: String;
    
    function getFavorecidos: String;
  public
    sAlias: String;
    function getSQL: String;
  end;

var
  FrmFiltroFavorecidos: TFrmFiltroFavorecidos;

implementation
uses funcoes, DM_Projeto;

{$R *.dfm}

procedure TFrmFiltroFavorecidos.FormCreate(Sender: TObject);
begin
  sAlias := 'f';

  C_Favorecidos.CreateDataSet;
  C_FavorecidosIni.CreateDataSet;

  C_Grupos.Close;
  C_Grupos.Open;
  cmbGrupos.SetDataSet(C_Grupos);
  cmbGrupos.UpdateItems;

  C_Vendedor.Close;
  C_Vendedor.Open;
  cmbVendedor.SetDataSet(C_Vendedor);
  cmbVendedor.UpdateItems;

  C_TabelaPreco.Close;
  C_TabelaPreco.Open;
  cmbTabelaPreco.SetDataSet(C_TabelaPreco);
  cmbTabelaPreco.UpdateItems;

  C_Atividade.Close;
  C_Atividade.Open;
  cmbAtividade.SetDataSet(C_Atividade);
  cmbAtividade.UpdateItems;

  C_Qualidade.Close;
  C_Qualidade.Open;
  cmbQualidade.SetDataSet(C_Qualidade);
  cmbQualidade.UpdateItems;

  C_TipoEntrega.Close;
  C_TipoEntrega.Open;
  cmbTipoEntrega.SetDataSet(C_TipoEntrega);
  cmbTipoEntrega.UpdateItems;

  C_Zona.Close;
  C_Zona.Open;
  cmbZona.SetDataSet(C_Zona);
  cmbZona.UpdateItems;

  C_PlanoPagamento.Close;
  C_PlanoPagamento.Open;
  cmbPlanoPagamento.SetDataSet(C_PlanoPagamento);
  cmbPlanoPagamento.UpdateItems;
end;

procedure TFrmFiltroFavorecidos.edFavorecidoSelecionou(Sender: TObject);
var ID: integer;
begin
  ID := edFavorecido.ID;
  with C_Favorecidos do begin
    if not Locate('ID',id,[]) then begin
      Append;
      FieldByName('ID').AsInteger	 := ID;
      FieldByName('Nome').AsString := edFavorecido.Text;
      Post;
    end;
  end;
  edFavorecido.Text := '';
end;

procedure TFrmFiltroFavorecidos.PopUpGrupoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbGrupos.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpVendedorCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbVendedor.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpTPrecoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbTabelaPreco.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpAtividadeCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbAtividade.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpQualidadeCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbQualidade.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpTipoEntregaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbTipoEntrega.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpZonaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbZona.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.PopUpPlanoPagamentoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  Text := cmbPlanoPagamento.Selecionados( true );
  Accept := true;
end;

procedure TFrmFiltroFavorecidos.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState)
  ;
begin
	if key = vk_delete then
  	if C_Favorecidos.RecordCount > 0 then
    	C_Favorecidos.Delete;
end;


function TFrmFiltroFavorecidos.getSQL;
var
  sql, sFavorecidos, sVendedor, sTabPreco, sAtividade, sQualidade, sGrupo: string;
  sTipoEntrega, sZona, sPlanoPagamento, sLimiteCredito, sDescontoPadrao: string;
begin
  sFavorecidos := getFavorecidos;
  if (sFavorecidos <> '') then
    sFavorecidos := 'and '+sAlias+'.favorecido in('+sFavorecidos+') ';

  sVendedor := cmbVendedor.Selecionados;
  if (sVendedor <> '') then
    sVendedor := 'and '+sAlias+'.vendedor in ('+sVendedor+') ';

  sTabPreco := cmbTabelaPreco.Selecionados;
  if (sTabPreco <> '') then
    sTabPreco := 'and '+sAlias+'.tabelapreco in ('+sTabPreco+') ';

  sAtividade := cmbAtividade.Selecionados;
  if (sAtividade <> '') then
    sAtividade := 'and '+sAlias+'.tipoatividade in ('+sAtividade+') ';

  sQualidade := cmbQualidade.Selecionados;
  if (sQualidade <> '') then
    sQualidade := 'and '+sAlias+'.qualidade in ('+sQualidade+') ';

  sGrupo := cmbGrupos.Selecionados;
  if (sGrupo <> '') then
    sGrupo := 'and '+sAlias+'.grupocliente in ('+sGrupo+') ';

  sTipoEntrega := cmbTipoEntrega.Selecionados;
  if (sTipoEntrega <> '') then
    sTipoEntrega := 'and '+sAlias+'.tipoentrega in ('+sTipoEntrega+') ';

  sZona := cmbZona.Selecionados;
  if (sZona <> '') then
    sZona := 'and '+sAlias+'.zona in ('+sZona+') ';

  sPlanoPagamento := cmbPlanoPagamento.Selecionados;
  if (sPlanoPagamento <> '') then
    sPlanoPagamento := 'and '+sAlias+'.planopagamento in ('+sPlanoPagamento+') ';

  sLimiteCredito := '';
  if (edLimite.Text = '') then edLimite.Text := '0';
  if (ckbLimiteCredito.Checked) then
    case cmbLimite.ItemIndex of
      0: sLimiteCredito:= ' and '+sAlias+'.limitecredito >  ' + edLimite.Text;
      1: sLimiteCredito:= ' and '+sAlias+'.limitecredito <  ' + edLimite.Text;
      2: sLimiteCredito:= 'and '+sAlias+'.limitecredito =  ' + edLimite.Text;
      3: sLimiteCredito:= ' and '+sAlias+'.limitecredito <> ' + edLimite.Text;
    end;

  sDescontoPadrao := '';
  if (edDesconto.Text = '') then edDesconto.Text := '0';
  if (ckbDescontoPadrao.Checked) then
    case cmbDesconto.ItemIndex of
      0: sDescontoPadrao := ' and '+sAlias+'.percdesconto >  ' + edDesconto.Text;
      1: sDescontoPadrao := ' and '+sAlias+'.percdesconto <  ' + edDesconto.Text;
      2: sDescontoPadrao := ' and '+sAlias+'.percdesconto =  ' + edDesconto.Text;
      3: sDescontoPadrao := ' and '+sAlias+'.percdesconto <> ' + edDesconto.Text;
    end;

  sql := sFavorecidos + sVendedor + sTabPreco + sAtividade + sQualidade + sGrupo +
         sTipoEntrega + sZona + sPlanoPagamento + sLimiteCredito + sDescontoPadrao;

  result := sql;         
end;

function TFrmFiltroFavorecidos.getFavorecidos;
var
  IDs: String;
begin
  if C_Favorecidos.RecordCount > 0 then begin
    IDs := '';
    C_Favorecidos.DisableControls;
    C_Favorecidos.First;
    while not C_Favorecidos.EOF do begin
      IDs := CExp(IDs,',') + C_FavorecidosID.AsString;
      C_Favorecidos.Next;
    end;
    C_Favorecidos.EnableControls;
  end
  else
    IDs := '';

  result := IDs;  
end;


procedure TFrmFiltroFavorecidos.btAplicarFiltroClick(Sender: TObject);
begin
  TdxPopupEditForm(GetParentForm(pnPrincipal)).ClosePopup(True);
//  MessageDlg(getSQL, mtWarning, [mbOK], 0);
end;

procedure TFrmFiltroFavorecidos.btRetirarFiltroClick(Sender: TObject);
begin
  C_Favorecidos.EmptyDataSet;
  PopUpVendedor.Text := '';
  cmbVendedor.SetSelecionados('');
  PopUpTPreco.Text := '';
  cmbTabelaPreco.SetSelecionados('');
  PopUpAtividade.Text := '';
  cmbAtividade.SetSelecionados('');
  PopupQualidade.Text := '';
  cmbQualidade.SetSelecionados('');
  PopUpGrupo.Text := '';
  cmbGrupos.SetSelecionados('');
  popupTipoEntrega.Text := '';
  cmbTipoEntrega.SetSelecionados('');
  popUpZona.Text := '';
  cmbZona.SetSelecionados('');
  popUpPlanoPagamento.Text := '';
  cmbPlanoPagamento.SetSelecionados('');
  ckbLimiteCredito.Checked := false;
  ckbDescontoPadrao.Checked := false;

  TdxPopupEditForm(GetParentForm(pnPrincipal)).ClosePopup(True);

end;

procedure TFrmFiltroFavorecidos.FormShow(Sender: TObject);
begin
  C_FavorecidosIni.Data := C_Favorecidos.Data;
  sCmbVendedor       := cmbVendedor.Selecionados;
  sCmbTabelaPreco    := cmbTabelaPreco.Selecionados;
  sCmbAtividade      := cmbAtividade.Selecionados;
  sCmbQualidade      := cmbQualidade.Selecionados;
  sCmbGrupos         := cmbGrupos.Selecionados;
  sCmbTipoEntrega    := cmbTipoEntrega.Selecionados;
  sCmbZona           := cmbZona.Selecionados;
  sCmbPlanoPagamento := cmbPlanoPagamento.Selecionados;

  bCkbLimiteCredito  := ckbLimiteCredito.Checked;
  bCkbDescontoPadrao := CkbDescontoPadrao.Checked;
  nCmbLimite         := cmbLimite.ItemIndex;
  nCmbDesconto       := CmbDesconto.ItemIndex;
  sEdLimite          := edLimite.Text;
  sEdDesconto        := edDesconto.Text;
end;

procedure TFrmFiltroFavorecidos.btFecharClick(Sender: TObject);
begin
  C_Favorecidos.Data := C_FavorecidosIni.Data;
  cmbVendedor.SetSelecionados(sCmbVendedor);
  PopUpVendedor.Text := cmbVendedor.Selecionados( true );

  cmbTabelaPreco.SetSelecionados(sCmbTabelaPreco);
  popUpTPreco.Text := cmbTabelaPreco.Selecionados( true );

  cmbAtividade.SetSelecionados(sCmbAtividade);
  popupAtividade.Text := cmbAtividade.Selecionados( true );

  cmbQualidade.SetSelecionados(sCmbQualidade);
  popupQualidade.Text := cmbQualidade.Selecionados( true );

  cmbGrupos.SetSelecionados(sCmbGrupos);
  popupGrupo.Text := cmbGrupos.Selecionados( true );

  cmbTipoEntrega.SetSelecionados(sCmbTipoEntrega);
  popupTipoEntrega.Text := cmbTipoEntrega.Selecionados( true );

  cmbZona.SetSelecionados(sCmbZona);
  popupZona.Text := cmbZona.Selecionados( true );

  cmbPlanoPagamento.SetSelecionados(sCmbPlanoPagamento);
  popupPlanoPagamento.Text := cmbPlanoPagamento.Selecionados( true );

  ckbLimiteCredito.Checked  := bCkbLimiteCredito;
  CkbDescontoPadrao.Checked := bCkbDescontoPadrao;
  cmbLimite.ItemIndex       := nCmbLimite;
  CmbDesconto.ItemIndex     := nCmbDesconto;
  edLimite.Text             := sEdLimite;
  edDesconto.Text           := sEdDesconto;

  TdxPopupEditForm(GetParentForm(pnPrincipal)).ClosePopup(True);
end;

end.
