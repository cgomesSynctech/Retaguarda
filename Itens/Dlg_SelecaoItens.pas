unit Dlg_SelecaoItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  StdCtrls, teCtrls, TS_GroupBox, FormsComponent,
  TS_LastDataObject, DlgMsg, TS_Label, ExtCtrls, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, TS_EffectsPanel,
  IBCustomDataSet, Db, DBClient, Provider, IBQuery, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, TS_LookupComboBox, Menus, TS_PopupMenu;

type
  TDlgSelecaoItens = class(TFrmModeloCadastros)
    TS_GroupBox1: TTS_GroupBox;
    TS_Label2: TTS_Label;
    TS_Label5: TTS_Label;
    cmbGrupo: TTS_LookupComboBox;
    cmbFabricante: TTS_LookupComboBox;
    Q_Itens: TIBQuery;
    Q_ItensProvider: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    Q_ItensDS: TDataSource;
    Q_Grupos: TIBQuery;
    Q_GruposGRUPO: TIntegerField;
    Q_GruposCODIGO: TIBStringField;
    Q_GruposDESCRICAOGRUPO: TIBStringField;
    Q_GruposTIPOITEM: TIntegerField;
    Q_GruposProvider: TDataSetProvider;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposCODIGO: TStringField;
    C_GruposDESCRICAOGRUPO: TStringField;
    C_GruposTIPOITEM: TIntegerField;
    C_GruposDS: TDataSource;
    C_FabricantesDS: TDataSource;
    C_Fabricantes: TClientDataSet;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    Q_FabricantesProvider: TDataSetProvider;
    Q_Fabricantes: TIBQuery;
    dbgSelecao: TTS_QDBGrid;
    dbgSelecaoCodigo: TdxDBGridColumn;
    dbgSelecaoDescricao: TdxDBGridColumn;
    C_ItensGRUPO: TIntegerField;
    C_ItensFABRICANTE: TIntegerField;
    C_Itens_icSelecionado: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cmbGrupoChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    C_ItensSelec: TClientDataSet;
    procedure AtivaFiltro;
  public
    Constructor Create(AOwner: TComponent; C_ItensSel: TClientDataSet);
  end;

var
  DlgSelecaoItens: TDlgSelecaoItens;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgSelecaoItens.Create;
begin
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgSelecaoItens.FormCreate(Sender: TObject);
begin
  inherited;
  C_Grupos.open;
  C_Fabricantes.open;
  C_Itens.open;
  dbgSelecao.SelectAll;
  ShowModal;
end;

procedure TDlgSelecaoItens.cmbGrupoChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgSelecaoItens.AtivaFiltro;
begin
  C_Itens.Filtered := false;
  if (cmbGrupo.LookupKeyValue <> null) and (cmbFabricante.LookupKeyValue <> null) then
    C_Itens.Filter := 'grupo = '+IntToStr(cmbGrupo.LookupKeyValue)+' and fabricante = '+IntToStr(cmbFabricante.LookupKeyValue)
  else if cmbGrupo.LookupKeyValue <> null then
    C_Itens.Filter := 'grupo = '+IntToStr(cmbGrupo.LookupKeyValue)
  else if cmbFabricante.LookupKeyValue <> null then
    C_Itens.Filter := 'fabricante = '+IntToStr(cmbFabricante.LookupKeyValue);
  C_Itens.Filtered := false;
end;

procedure TDlgSelecaoItens.btGravarClick(Sender: TObject);
begin
  inherited;
  C_Itens.DisableControls;
  C_Itens.first;
  while not C_Itens.eof do begin
    if (C_Itens_icSelecionado.value = 1) and not C_ItensSelec.locate('item',C_ItensItem.value,[]) then begin
      C_ItensSelec.Append;
      C_ItensSelec.FieldByName('item').asinteger     := C_ItensItem.value;
      C_ItensSelec.FieldByName('codigo').asstring    := C_ItensCodigo.value;
      C_ItensSelec.FieldByName('descricao').asstring := C_ItensDescricao.value;
      C_ItensSelec.FieldByName('unidade').asstring   := C_ItensUnidade.value;
      C_ItensSelec.post;
    end;  
    C_Itens.next;
  end;
  C_Itens.EnableControls;
  close;
end;

end.
