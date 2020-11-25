unit Dlg_SelecionarItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu,
  StdCtrls, Buttons, TS_BitBtn, Db,
  IBCustomDataSet, IBQuery, DBClient, Provider, ExtCtrls, TS_Label,
  DBCtrls, TS_DBLookupComboBox, TS_RadioGroup, TS_CheckBox,
  IBUpdateSQL, Mask, TS_DBEdit, TS_DBEditItem, TS_GroupBox,
  dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit, dxCntner, dxEditor,
  dxDBEdtr, teCtrls;

type
  TDlgSelecionarItens = class(TDlgModal)
    Q_ItensDS: TDataSource;
    Q_Itens: TIBQuery;
    Q_ItensProvider: TDataSetProvider;
    C_Itens: TClientDataSet;
    Q_GruposProvider: TDataSetProvider;
    Q_Grupos: TIBQuery;
    Q_GruposGRUPO: TIntegerField;
    Q_GruposCODIGO: TIBStringField;
    Q_GruposDESCRICAOGRUPO: TIBStringField;
    Q_GruposTIPOITEM: TIntegerField;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposCODIGO: TStringField;
    C_GruposDESCRICAOGRUPO: TStringField;
    C_GruposTIPOITEM: TIntegerField;
    C_GruposDS: TDataSource;
    ppmPrecos: TPopupMenu;
    Tabelas1: TMenuItem;
    C_FabricantesDS: TDataSource;
    C_Fabricantes: TClientDataSet;
    Q_FabricantesProvider: TDataSetProvider;
    Q_Fabricantes: TIBQuery;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    NovoItem1: TMenuItem;
    TS_GroupBox1: TTS_GroupBox;
    TS_Label2: TTS_Label;
    cmbGrupo: TTS_DBLookupComboBox;
    TS_Label5: TTS_Label;
    cmbFabricante: TTS_DBLookupComboBox;
    TS_DBEditItem1: TTS_DBEditItem;
    TS_Label3: TTS_Label;
    TS_Label1: TTS_Label;
    dfDescricao: TTS_DBEditItem;
    procedure FormCreate(Sender: TObject);
    procedure Tabelas1Click(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure NovoItem1Click(Sender: TObject);
    procedure dbgPrecosKeyPress(Sender: TObject; var Key: Char);
    procedure TS_DBEditItem1KeyPress(Sender: TObject; var Key: Char);
    procedure C_ItensBeforePost(DataSet: TDataSet);
    procedure TS_DBEditItem1Selecionou(Sender: TObject);
    procedure cmbGrupoClick(Sender: TObject);
    procedure cmbFabricanteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    sFiltro: string;
    C_ItensSelec: TClientDataSet;
    procedure AtivaFiltro;
  public
    Constructor Create(AOwner: TComponent; C_ItensSel: TClientDataSet);
  end;

var
  DlgSelecionarItens: TDlgSelecionarItens;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

constructor TDlgSelecionarItens.Create;
begin
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgSelecionarItens.FormCreate(Sender: TObject);
begin
  inherited;
  C_Grupos.open;
  C_Fabricantes.open;
  AtivaFiltro;
  ShowModal;
end;

procedure TDlgSelecionarItens.AtivaFiltro;
begin
{  C_Precos.Filtered := false;
  C_Precos.Filter := 'tipoitem = '+IntToStr(cmbTipoItem.KeyValue) ;
  if cmbGrupo.KeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and grupo = '+IntToStr(cmbGrupo.KeyValue);
  if cmbFabricante.KeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and fabricante = '+IntToStr(cmbFabricante.KeyValue);
  if cbPrecoManual.visible and cbPrecoManual.Checked then
    C_Precos.Filter := C_Precos.Filter + ' and precomanual = ''S''';
  C_Precos.Filtered := true;
  dbgPrecos.DataSetFilter := C_Precos.Filter;}

  sFiltro := ' and balanco = ''N''';
  if cmbGrupo.LookupKeyValue <> null then
    sFiltro := sFiltro + ' and grupo = '+IntToStr(cmbGrupo.LookupKeyValue);
  if cmbFabricante.LookupKeyValue <> null then
    sFiltro := sFiltro + ' and fabricante = '+IntToStr(cmbFabricante.LookupKeyValue);

  dfDescricao.WhereAdicional := sFiltro;  
end;

procedure TDlgSelecionarItens.Tabelas1Click(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg(1006) = 100 then
    C_Itens.delete;
end;

procedure TDlgSelecionarItens.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  if C_Itens.state in [dsedit,dsInsert] then
    C_Itens.cancel;

  C_Itens.disablecontrols;
  C_Itens.first;
  while not C_Itens.eof do begin
    if not C_ItensSelec.Locate('item',C_ItensItem.value,[]) then begin
      C_ItensSelec.Append;
      C_ItensSelec.FieldByName('balancofichaitem').asinteger := DMProjeto.NextID('BalancoFichasItens');
      C_ItensSelec.FieldByName('Item').asinteger := C_ItensItem.value;
      C_ItensSelec.FieldByName('Codigo').asstring := C_ItensCodigo.value;
      C_ItensSelec.FieldByName('Descricao').asstring := C_ItensDescricao.value;
      C_ItensSelec.post;
    end;
    C_Itens.next;
  end;
  C_Itens.enablecontrols;
end;

procedure TDlgSelecionarItens.NovoItem1Click(Sender: TObject);
begin
  inherited;
  C_Itens.Append;
end;

procedure TDlgSelecionarItens.dbgPrecosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['+'] then begin
    key := #0;
    C_Itens.Append;
  end;  
end;

procedure TDlgSelecionarItens.TS_DBEditItem1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['+'] then begin
    key := #0;
    C_Itens.Append;
  end;
end;

procedure TDlgSelecionarItens.C_ItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_ItensItem.IsNull then
    abort;
end;

procedure TDlgSelecionarItens.TS_DBEditItem1Selecionou(Sender: TObject);
begin
  inherited;
  if C_Itens.state in [dsedit,dsInsert] then
    C_Itens.post;
  C_Itens.append;
end;

procedure TDlgSelecionarItens.cmbGrupoClick(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgSelecionarItens.cmbFabricanteClick(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgSelecionarItens.FormShow(Sender: TObject);
begin
  inherited;
  C_Itens.open;
  C_Itens.Append;
//  dbgPrecos.OrdenaColuna(1);
//  AtivaFiltro;
end;

end.
