unit Dlg_Alertas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_Shape, ComCtrls, TS_PageControl, dxCntner,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, TS_LookupComboBox, TS_RadioButton,
  DB, IBCustomDataSet, IBQuery, CheckLst, TS_CheckListBox, TS_ListBox,
  dxEdLib, TS_DBEditNumber, TS_DBImageEdit, TS_ImageEdit, TS_CalcEdit,
  Placemnt;

type
  TDlgAlertas = class(TFrmModeloCadastros)
    pgPrincipal: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsOpcao: TTS_TabSheet;
    tsTipo: TTS_TabSheet;
    tsClientes: TTS_TabSheet;
    tsFornecedores: TTS_TabSheet;
    tsItens: TTS_TabSheet;
    tsContas: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Shape2: TTS_Shape;
    rgNovoAlerta: TTS_RadioButton;
    rgAlterarAlerta: TTS_RadioButton;
    TS_Label5: TTS_Label;
    TS_Shape3: TTS_Shape;
    rgClientes: TTS_RadioButton;
    rgFornecedores: TTS_RadioButton;
    rgItens: TTS_RadioButton;
    rgContas: TTS_RadioButton;
    TS_Label6: TTS_Label;
    TS_Shape4: TTS_Shape;
    cklClientes: TTS_CheckListBox;
    Q_TiposAlertas: TIBQuery;
    Q_TiposAlertasTIPOALERTA: TIntegerField;
    Q_TiposAlertasDESCRICAO: TIBStringField;
    Q_TiposAlertasAPLICAR_A: TIBStringField;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Shape9: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Shape10: TTS_Shape;
    TS_Shape11: TTS_Shape;
    cklFornecedores: TTS_CheckListBox;
    TS_Shape12: TTS_Shape;
    tsDiversos: TTS_TabSheet;
    tsQuais: TTS_TabSheet;
    tsQualValor: TTS_TabSheet;
    tsAvisar: TTS_TabSheet;
    TS_Label8: TTS_Label;
    TS_Shape13: TTS_Shape;
    TS_Shape14: TTS_Shape;
    cklItens: TTS_CheckListBox;
    TS_Shape15: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Shape16: TTS_Shape;
    TS_Shape17: TTS_Shape;
    cklContas: TTS_CheckListBox;
    TS_Shape18: TTS_Shape;
    TS_Label10: TTS_Label;
    TS_Shape19: TTS_Shape;
    TS_Shape20: TTS_Shape;
    cklDiversos: TTS_CheckListBox;
    TS_Shape21: TTS_Shape;
    TS_Label11: TTS_Label;
    TS_Shape22: TTS_Shape;
    TS_Shape23: TTS_Shape;
    rgTodos: TTS_RadioButton;
    rgSelecionar: TTS_RadioButton;
    TS_Shape24: TTS_Shape;
    lbFavorecidos: TTS_ListBox;
    TS_Label41: TTS_Label;
    cmbCondicao: TTS_ImageEdit;
    lbCondicao: TTS_Label;
    lbValor: TTS_Label;
    EditValor: TTS_CalcEdit;
    TS_Label12: TTS_Label;
    TS_Shape25: TTS_Shape;
    TS_Shape26: TTS_Shape;
    tsFim: TTS_TabSheet;
    TS_Label13: TTS_Label;
    TS_Shape27: TTS_Shape;
    TS_Shape28: TTS_Shape;
    TS_Shape29: TTS_Shape;
    TS_ListBox1: TTS_ListBox;
    TS_Label14: TTS_Label;
    TS_Label15: TTS_Label;
    TS_Shape30: TTS_Shape;
    TS_Shape31: TTS_Shape;
    TS_Label16: TTS_Label;
    Image1: TImage;
    Image2: TImage;
    TS_Label17: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    rgConsultarAlerta: TTS_RadioButton;
    tsAlterarConsultarDesativar: TTS_TabSheet;
    TS_Label18: TTS_Label;
    cmbAlerta: TTS_LookupComboBox;
    TS_Label4: TTS_Label;
    TS_Shape32: TTS_Shape;
    TS_Shape33: TTS_Shape;
    rgDesativarAlerta: TTS_RadioButton;
    Q_Alertas: TIBQuery;
    Q_AlertasALERTA: TIntegerField;
    Q_AlertasDESCRICAO: TIBStringField;
    Q_AlertasDS: TDataSource;
    Q_AlertasTIPO: TIntegerField;
    Q_AlertasAPLICAR_A: TIBStringField;
    Q_TiposAlertasCONDICAO: TIBStringField;
    Q_SQL: TIBQuery;
    TS_Label19: TTS_Label;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cklClientesClickCheck(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure rgSelecionarClick(Sender: TObject);
    procedure TS_Label41Click(Sender: TObject);
    procedure Q_TiposAlertasFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tsFimShow(Sender: TObject);
    procedure TS_Label19Click(Sender: TObject);
  private
    { Private declarations }
    sSelecionados, sFilter : string;
    procedure InserirAlerta;
    procedure AlterarAlerta;
    function getTipo: integer;
  public
    { Public declarations }
  end;

var
  DlgAlertas: TDlgAlertas;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgAlertas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  {Abrindo Tipos de Alertas, para carregar em cada Checklistbox}
  pgPrincipal.ActivePage := tsIntroducao;
	with Q_TiposAlertas do begin
  	close;
    open;
    filtered := false;
    sfilter  := 'Clientes';
    filtered := true;
    cklClientes.UpdateItems;
    filtered := false;
    sfilter  := 'Fornecedores';
    filtered := true;
    cklFornecedores.UpdateItems;
    filtered := false;
    sfilter  := 'Itens';
    filtered := true;
    cklItens.UpdateItems;
    filtered := false;
    sfilter  := 'Contas';
    filtered := true;
    cklContas.UpdateItems;
    filtered := false;
    sfilter  := 'Diversos';
    filtered := true;
    cklDiversos.UpdateItems;
		filtered := false;
  end;
  with Q_Alertas do begin
  	Close;
    Open;
  end;
end;

procedure TDlgAlertas.cklClientesClickCheck(Sender: TObject);
var i : integer;
begin
  inherited;
 	for i:=0 to TTS_CheckListBox(Sender).Items.Count-1 do
 		if (TTS_CheckListBox(Sender).Checked[i]) and (i <> TTS_CheckListBox(Sender).ItemIndex) then
     	TTS_CheckListBox(Sender).Checked[i] := false;
end;

procedure TDlgAlertas.btGravarClick(Sender: TObject);
begin
  inherited;
	with pgPrincipal do begin
    if ActivePage = tsOpcao then begin
    	if rgNovoAlerta.Checked then
      	SetPage(tsTipo)
      else
      	SetPage(tsAlterarConsultarDesativar);
    end else if ActivePage = tsAlterarConsultarDesativar then begin
    	if rgAlterarAlerta.Checked then begin
        //SetAlerta(Q_AlertasAlerta.Value);
      	if Q_AlertasAplicar_A.Value = 'Clientes' then
        	SetPage(tsClientes)
        else if Q_AlertasAplicar_A.Value = 'Fornecedores' then
        	SetPage(tsFornecedores)
        else if Q_AlertasAplicar_A.Value = 'Itens' then
        	SetPage(tsItens)
        else if Q_AlertasAplicar_A.Value = 'Contas' then
        	SetPage(tsContas)
        else if Q_AlertasAplicar_A.Value = 'Diversos' then
        	SetPage(tsDiversos);
      end else if rgConsultarAlerta.Checked then begin
        //SetAlerta(Q_AlertasAlerta.Value);
      	SetPage(tsFim);
      end else if rgDesativarAlerta.Checked then begin
        //DesativarAlerta(Q_AlertasAlerta.Value);
      	SetPage(tsFim);
      end;
		end else if ActivePage = tsTipo then begin
    	if rgClientes.Checked then
      	SetPage(tsClientes)
      else if rgFornecedores.Checked then
      	SetPage(tsFornecedores)
      else if rgItens.Checked then
      	SetPage(tsItens)
      else if rgContas.Checked then
      	SetPage(tsContas);
      {else if rgDiversos.Checked then
      	SetPage(tsDiversos);}
		end else if (ActivePage = tsClientes) or
    						(ActivePage = tsFornecedores) or
                (ActivePage = tsItens) or
                (ActivePage = tsContas) or
                (ActivePage = tsDiversos) then begin
    	getTipo;
      if Q_TiposAlertasCondicao.Value = 'S' then
       	SetPage(tsQualValor)
      else
    		SetPage(tsQuais);
    end else if ActivePage = tsQuais then begin
    	if (rgItens.Checked) and (getTipo = 16) then
      	SetPage(tsAvisar)
      else
      	SetPage(tsFim);
    //end else if ActivePage = tsQualValor then begin
    end else if ActivePage = tsFim then begin
    end else
  		NextPage;
  end;
end;

function TDlgAlertas.getTipo : integer;
begin
	if Q_TiposAlertas.Locate('TipoAlerta',StrToInt(cklClientes.Selecionados),[]) then
  	result := Q_TiposAlertasTipoAlerta.AsInteger;
end;

procedure TDlgAlertas.btLimparClick(Sender: TObject);
begin
  inherited;
	with pgPrincipal do begin
  	NextPage( false );
    btGravar.Enabled := true;
  end;
end;

procedure TDlgAlertas.rgSelecionarClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sSelecionados, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sSelecionados := GetParametrosForm(0);
      lbFavorecidos.Items.text := replace(GetParametrosForm(1),',',#13);
      lbFavorecidos.Items.SetText(PChar(lbFavorecidos.Items.text));
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgAlertas.TS_Label41Click(Sender: TObject);
begin
  inherited;
  if not rgSelecionar.Checked then begin
    rgSelecionar.SetFocus;
		rgSelecionar.Checked := true;
  end else
  	rgSelecionarClick(sender);
end;

procedure TDlgAlertas.Q_TiposAlertasFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := DataSet.fieldbyname('Aplicar_A').AsString = sFilter;
end;

procedure TDlgAlertas.tsFimShow(Sender: TObject);
begin
  inherited;
	if rgNovoAlerta.Checked then
  	InserirAlerta
  else if rgAlterarAlerta.Checked then
  	AlterarAlerta;
	btGravar.Enabled := false;
end;

procedure TDlgAlertas.InserirAlerta;
var nAlerta : integer;
begin
	nAlerta := DMProjeto.NextIDGlobal;
	with Q_SQL do begin
  	Close;
    Sql.text := 'insert into alertas '+
    						'(alerta, tipo, condicao, valor, desativado) '+
                'values '+
                '(:alerta, :tipo, :condicao, :valor, :desativado) ';
    Parambyname('alerta').asInteger := nAlerta;
    Parambyname('tipo').asInteger 	:= Q_TiposAlertasTipoAlerta.AsInteger;
    if cmbCondicao.Values.IndexOf(cmbCondicao.text) >= 0 then
    	Parambyname('condicao').asString	:= cmbCondicao.Values[cmbCondicao.Values.IndexOf(cmbCondicao.text)]
    else
    	Parambyname('condicao').asString	:= '';
    Parambyname('valor').asCurrency			:= EditValor.Value;
    Parambyname('desativado').asString	:= 'N';
		Execsql;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Q_Alertas.Close;
    Q_Alertas.Open;
    Q_Alertas.Locate('Alerta',nAlerta,[]);
    rgNovoAlerta.Checked 	  := false;
    rgAlterarAlerta.Checked := true;
    cmbAlerta.LookUpKeyValue := nAlerta;
  end;
end;

procedure TDlgAlertas.AlterarAlerta;
begin
	with Q_SQL do begin
  	close;
    sql.text := 'update alertas '+
    						'set tipo = :tipo, condicao = :condicao, valor = :valor, '+
                'desativado = :desativado, selecionados = :selecionados '+
                'where alerta = '+IntToStr(Q_AlertasAlerta.AsInteger);
    parambyname('tipo').asInteger 			:= Q_TiposAlertasTipoAlerta.AsInteger;
    if cmbCondicao.Values.IndexOf(cmbCondicao.text) >= 0 then
    	parambyname('condicao').asString	:= cmbCondicao.Values[cmbCondicao.Values.IndexOf(cmbCondicao.text)]
    else
    	parambyname('condicao').asString	:= '';
    parambyname('valor').asCurrency			:= EditValor.Value;
    parambyname('desativado').asString	:= 'N';
    parambyname('selecionados').asString:= iif(rgTodos.Checked,'',sSelecionados);
		execsql;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
end;

procedure TDlgAlertas.TS_Label19Click(Sender: TObject);
begin
  inherited;
	pgPrincipal.ActivePageIndex := 0;
  rgNovoAlerta.Checked   := true;
  cmbAlerta.text				 := '';
end;

end.
