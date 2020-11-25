unit Dlg_ContratosFav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, dxGrClEx, Db,
  DBClient, Provider, IBCustomDataSet, IBQuery, Menus, TS_PopupMenu,
  dxExEdtr, BTOdeum, Dlg_PopupContas, dxEditor, dxEdLib, dxDBELib,
  TS_DBPopupEdit, Placemnt, Variants;

type
  TDlgContratosFav = class(TFrmModeloCadastros)
    GridContratos: TTS_QDBGrid;
    GridContratosPRECO: TdxDBGridMaskColumn;
    GridContratosPERIODICIDADE: TdxDBGridImageColumn;
    GridContratosMETODOPGTO: TdxDBGridImageColumn;
    GridContratosWDiadeCobranca: TdxDBGridWrapperColumn;
    GridContratosDIACOBRANCA_DOFW: TdxDBGridImageColumn;
    GridContratosDIACOBRANCA_DIAMES: TdxDBGridSpinColumn;
    C_FuncsPayItensDS: TDataSource;
    P_FuncsPayItens: TDataSetProvider;
    GridContratosITEM: TdxDBGridLookupColumn;
    TS_Label2: TTS_Label;
    ppmContratos: TTS_PopupMenu;
    GridContratosFUNCIONARIO: TdxDBGridButtonColumn;
    GridContratoslkPayrollItem: TdxDBGridLookupColumn;
    GridContratosGrupo: TdxDBGridColumn;
    TS_Label1: TTS_Label;
    cmbContas: TTS_DBPopupEdit;
    GridContratosValorFunc: TdxDBGridMaskColumn;
    procedure GridContratosWDiadeCobrancaGetReferenceColumn(
      Sender: TObject; Node: TdxTreeListNode;
      var Column: TdxDBTreeListColumn);
    procedure GridContratosEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure GridContratosITEMButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure GridContratosColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure GridContratosFUNCIONARIOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cmbContasInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgContratosFav: TDlgContratosFav;

implementation
  uses DM_Projeto, DM_Clientes, Frm_Clientes;

{$R *.DFM}

procedure TDlgContratosFav.GridContratosWDiadeCobrancaGetReferenceColumn(
  Sender: TObject; Node: TdxTreeListNode; var Column: TdxDBTreeListColumn);
var
  sPeriodicidade : String;
begin
  inherited;

  sPeriodicidade := GridContratos.GetFieldValue(Node, 'Periodicidade', 'S');
  if (sPeriodicidade[1] in ['S', 'Q']) then
    Column := GridContratosDIACOBRANCA_DOFW
  else
    Column := GridContratosDIACOBRANCA_DIAMES;
end;

procedure TDlgContratosFav.GridContratosEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
  Allow := not( (GridContratos.TS_SelectedColumn = 'DIACOBRANCA') and
                (GridContratos.GetFieldValue(Node, 'Periodicidade', 'S') = 'D') );
end;

procedure TDlgContratosFav.GridContratosITEMButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then
    DMProjeto.CriarForm('FrmItens', self, true);
end;

procedure TDlgContratosFav.FormShow(Sender: TObject);
begin
  inherited;
  btGravar.Visible := DMClientes.bAlteracao;
  btComando1.Visible := DMClientes.bAlteracao;
  if DMClientes.C_TabelaNome.Value <> '' then
    lbEstadoForm.Caption := lbEstadoForm.Caption + ': ' + DMClientes.C_TabelaNome.Value;
end;

procedure TDlgContratosFav.btGravarClick(Sender: TObject);
begin
  inherited;
  FormsComponent.OnRefresh := nil;
  FrmClientes.btGravarClick(self);
  FormsComponent.OnRefresh := FormsComponentRefresh;
  Close;
end;

procedure TDlgContratosFav.btComando1Click(Sender: TObject);
begin
  inherited;
  FormsComponent.OnRefresh := nil;
  FrmClientes.btGravarClick(self);
  FormsComponent.OnRefresh := FormsComponentRefresh;
	with DMProjeto do begin
  	SetParametrosForm([DMClientes.C_TabelaFavorecido.Value]);
    CriarForm('RptClientesPrestServ',self,true);
  end;
end;

procedure TDlgContratosFav.GridContratosColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
  if TdxDBGridColumn(Column).FieldName = 'lkItem' then begin
    if DMClientes.C_ContratosItem.AsInteger = 0 then
    	DMProjeto.SetParametrosForm([null, 3])
    else
    	DMProjeto.SetParametrosForm([DMClientes.C_ContratosItem.AsVariant, 3]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

procedure TDlgContratosFav.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  if (DMClientes.bAlteracao) and (DMClientes.C_Contratos.State <> dsBrowse) then
    DMClientes.C_Contratos.Cancel
  else if (DMClientes.C_Contratos.State <> dsBrowse) then
		DMClientes.C_Contratos.Post;
end;

procedure TDlgContratosFav.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'ITENS' then begin
    if DMClientes.C_Contratos.State in [dsBrowse] then
    	DMClientes.C_Contratos.Edit;
  	DMClientes.C_ContratosItem.Value := LastDataObject.ObjectKey;
  end else if UpperCase(LastDataObject.TableName) = 'FAVORECIDOS' then begin
    if DMClientes.C_Contratos.State in [dsBrowse] then
    	DMClientes.C_Contratos.Edit;
  	DMClientes.C_ContratosFuncionario.Value := LastDataObject.ObjectKey;
    GridContratos.LocalizarFavorecidoEx( '|'+IntToStr(LastDataObject.ObjectKey), 'Funcionario', '3', 'NomeFuncionario', DMProjeto.C_LocalizarFav );
  end;
end;

procedure TDlgContratosFav.GridContratosFUNCIONARIOButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then begin
    DMProjeto.SetParametrosForm([ DMClientes.C_ContratosFuncionario.asVariant, 3 ]);
    DMProjeto.CriarForm('FrmFuncionarios', self, true);
  end;
end;

procedure TDlgContratosFav.cmbContasInitPopup(Sender: TObject);
begin
  inherited;
	cmbContas.popupcontrol := DlgPopup.pnPopup;
  DlgPopup.SetDS(DMClientes.C_ContasBancoDS);
	DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TDlgContratosFav.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMClientes.C_ContasBancoDS, nil, false);
end;

end.
