unit Dlg_SelecionarFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_DateTimePicker, dxEditor,
  TS_ButtonEdit, TS_EditFavorecido, dxCntner, TS_CheckBox, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, Db, Provider,
  DBClient, IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, BTOdeum, Placemnt;

type
  TDlgSelecionarFuncionarios = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    DBFuncionarios: TTS_QDBGrid;
    edCliente: TTS_EditFavorecido;
    dtUltimoPgto: TTS_DateTimePicker;
    Q_Funcionarios: TIBQuery;
    C_Funcionarios: TClientDataSet;
    P_Funcionarios: TDataSetProvider;
    C_FuncionariosDS: TDataSource;
    C_FuncionariosNOME: TStringField;
    C_FuncionariosCARGO: TStringField;
    C_FuncionariosPERIODICIDADE: TStringField;
    C_FuncionariosULTIMOPGTO: TDateField;
    C_FuncionariosFAVORECIDO: TIntegerField;
    DBFuncionariosNOME: TdxDBGridMaskColumn;
    DBFuncionariosCARGO: TdxDBGridMaskColumn;
    DBFuncionariosULTIMOPGTO: TdxDBGridDateColumn;
    DBFuncionariosFAVORECIDO: TdxDBGridMaskColumn;
    C_Funcionarios_icSelecionado: TIntegerField;
    C_FuncionariosULTIMOVALORPAGO: TBCDField;
    C_FuncionariosDATAADIMISSAO: TDateField;
    DBFuncionariosColumn8: TdxDBGridColumn;
    DBFuncionariosColumn9: TdxDBGridColumn;
    DBFuncionariosPERIODICIDADE: TdxDBGridImageColumn;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dtUltimoPgtoDateChange(Sender: TObject);
    procedure edClienteSelecionou(Sender: TObject);
    procedure DBFuncionariosCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure edClienteChange(Sender: TObject);
    procedure DBFuncionariosDblClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar( sSelecionados : string = '' );
    function getDias( sTipo : string) : integer;
  public
    { Public declarations }
  end;

var
  DlgSelecionarFuncionarios: TDlgSelecionarFuncionarios;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgSelecionarFuncionarios.Pesquisar;
begin
	with C_Funcionarios do begin
  	close;
    params.clear;
    CommandText := 'select f.favorecido, f.nome, c.descricao as cargo, '+
    							 'f.periodicidade, f.ultimopgto, f.ultimovalorpago, f.dataadimissao '+
									 'from favorecidos f '+
                   'left join cargos c on f.cargo = c.cargo '+
									 'where ';
    if sSelecionados <> '' then
    	CommandText := CommandText + 'favorecido IN ('+sSelecionados+')'
    else begin
	    CommandText := CommandText + 'f.tipofavorecido = 3 and f.desativado = ''N'' ';
    	if dtUltimoPgto.Text <> '' then begin
    		CommandText := CommandText + 'and f.ultimopgto >= :ultimopgto ';
      	params.parambyname('ultimopgto').asdate := dtUltimoPgto.Date;
    	end;
    	if (edCliente.ID <> 0) then begin
    		CommandText := CommandText + 'and exists ( select cf.favorecido from contratosfav cf '+
      														 '             where cf.favorecido = :cliente and '+
                                   '             cf.funcionario = f.favorecido) ';
      	params.parambyname('cliente').asInteger := edCliente.ID;
      end;
    end;
    CommandText := CommandText + ' order by f.nome ';
    C_Funcionarios.open;
  end;
end;

procedure TDlgSelecionarFuncionarios.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then begin
    if DMProjeto.getParametrosForm(0) <> 0 then
    	edCliente.ID := DMProjeto.getParametrosForm(0)
    else
    	Pesquisar;
  end else
		Pesquisar;
end;

procedure TDlgSelecionarFuncionarios.btGravarClick(Sender: TObject);
var sItens : TStringList;
begin
	sItens := TStringList.Create;
  try
  	sItens.Text := DBFuncionarios.ItensSelecionados;
    if sItens.Text = '' then begin
    	DlgMsg.ShowMsg(929,['selecionar o(s) funcionário(s).']);
      Exit;
    end;
  	DMProjeto.SetParametrosForm([sItens.Text]);
  finally
  	sItens.Free;
    Close;
  end;
  inherited;
end;

procedure TDlgSelecionarFuncionarios.dtUltimoPgtoDateChange(
  Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgSelecionarFuncionarios.edClienteSelecionou(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

function TDlgSelecionarFuncionarios.getDias;
begin
	if Copy(sTipo,1,1)='D' then
  	result := 1
  else if Copy(sTipo,1,1)='S' then
  	result := 7
  else if Copy(sTipo,1,1)='Q' then
  	result := 15
  else
  	result := 30;
end;

procedure TDlgSelecionarFuncionarios.DBFuncionariosCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not Anode.HasChildren then begin
  	if (DBFuncionarios.GetFieldValue( ANode, 'UltimoPgto', 0)+getDias(DBFuncionarios.GetFieldValue( ANode, 'Periodicidade', 0))) <= DMProjeto.dDataSistema then
    	AFont.Color := clRed
    else
    	AFont.Color := clBlack;
  end;
end;

procedure TDlgSelecionarFuncionarios.edClienteChange(Sender: TObject);
begin
  inherited;
  if edCliente.Text = '' then
 		Pesquisar;
end;

procedure TDlgSelecionarFuncionarios.DBFuncionariosDblClick(
  Sender: TObject);
begin
  inherited;
  if C_Funcionarios.RecordCount > 0 then begin
    DBFuncionarios.Selecionar;
  	btGravar.Click;
  end;
end;

procedure TDlgSelecionarFuncionarios.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm(['','',3]);
 	DMProjeto.CriarForm('DlgEscolheFavorecidos',self,true);
  if DMProjeto.ExisteParametrosForm then
  	Pesquisar( DMProjeto.getParametrosForm(0) );
end;

end.
