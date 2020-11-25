unit Frm_RotasManutencoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBImageEdit, dxDBEdtr, TS_DBLookupComboBox, TS_DBButtonEdit,
  TS_DBEditFavorecido, dxDBTLCl, dxGrClms, DB, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DBClient, Provider, IBCustomDataSet,
  IBQuery, ppPrnabl, ppStrtch, ppRegion, ppBands, ppCache, myChkBox,
  ppCtrls, TS_DBSpinEdit;

type
  TFrmRotasManutencoes = class(TFrmPadrao)
    edPeriodo: TTS_DBImageEdit;
    edFuncionario: TTS_DBEditFavorecido;
    df_Rota: TTS_DBLookupComboBox;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    btUp: TTS_SpeedButton;
    btDown: TTS_SpeedButton;
    GridCliente: TTS_QDBGrid;
    GridClienteORDEM: TdxDBGridMaskColumn;
    GridClienteOBS: TdxDBGridMaskColumn;
    GridClienteSTATUS: TdxDBGridCheckColumn;
    GridClienteURGENTE: TdxDBGridCheckColumn;
    GridClienteDIA: TdxDBGridImageColumn;
    GridClientelkFavorecido: TdxDBGridColumn;
    GridClienteicQtdeEquip: TdxDBGridColumn;
    edAno: TTS_DBSpinEdit;
    GridMES: TdxDBGridMaskColumn;
    GridANO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridlkRota: TdxDBGridLookupColumn;
    procedure GridClienteNOMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btDownClick(Sender: TObject);
    procedure btUpClick(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure GridClienteColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure btComando2Click(Sender: TObject);
  private
    pk : Integer; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRotasManutencoes: TFrmRotasManutencoes;

implementation

uses DM_Projeto, DM_RotasManutencoes;

{$R *.dfm}

procedure TFrmRotasManutencoes.GridClienteNOMEButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    if AbsoluteIndex = 1 then
    begin
        DMProjeto.SetParametrosForm([DMRotasManutencoes.C_RotasManutencoesDetROTAMANUTENCAODET.asVariant]);
        DMProjeto.CriarForm('FrmClientes', self, true);
        if (DMRotasManutencoes.C_RotasManutencoesDet.State in [dsInsert, dsEdit]) then
            GridCliente.TS_ID := LastDataObject.ObjectKey;
    end;
end;

procedure TFrmRotasManutencoes.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  pk := -1;
end;

procedure TFrmRotasManutencoes.btComando1Click(Sender: TObject);
begin
  inherited;
  DMRotasManutencoes.ImprimirManutencao;
end;

procedure TFrmRotasManutencoes.btDownClick(Sender: TObject);
var atual, prox : integer;
begin
  inherited;
  if (GridCliente.FocusedNode.GetNext <> nil) then begin
    atual := GridCliente.GetFieldValue(GridCliente.FocusedNode, 'ORDEM', 0);
    prox := GridCliente.GetFieldValue(GridCliente.FocusedNode.GetNext, 'ORDEM', 0);
    GridCliente.FocusedNode.MoveTo(GridCliente.FocusedNode.GetNext, natlInsert);
    DMRotasManutencoes.C_RotasManutencoesDet.Edit;
    DMRotasManutencoes.C_RotasManutencoesDetORDEM.Value := prox;
    DMRotasManutencoes.C_RotasManutencoesDet.Post;
    //
    DMRotasManutencoes.C_RotasManutencoesDet.Prior;
    DMRotasManutencoes.C_RotasManutencoesDet.Edit;
    DMRotasManutencoes.C_RotasManutencoesDetORDEM.Value := atual;
    DMRotasManutencoes.C_RotasManutencoesDet.Post;
    //
    DMRotasManutencoes.C_RotasManutencoesDet.Next;
    ActiveControl := GridCliente;
  end;
end;

procedure TFrmRotasManutencoes.btUpClick(Sender: TObject);
var atual, anterior : integer;
begin
  inherited;
  if (GridCliente.FocusedNode.GetPrev <> nil) then begin
    atual := GridCliente.GetFieldValue(GridCliente.FocusedNode, 'ORDEM', 0);
    anterior := GridCliente.GetFieldValue(GridCliente.FocusedNode.GetPrev, 'ORDEM', 0);
    GridCliente.FocusedNode.MoveTo(GridCliente.FocusedNode.GetPrev, natlInsert);
    DMRotasManutencoes.C_RotasManutencoesDet.Edit;
    DMRotasManutencoes.C_RotasManutencoesDetORDEM.Value := anterior;
    DMRotasManutencoes.C_RotasManutencoesDet.Post;
    //
    DMRotasManutencoes.C_RotasManutencoesDet.Prior;
    DMRotasManutencoes.C_RotasManutencoesDet.Edit;
    DMRotasManutencoes.C_RotasManutencoesDetORDEM.Value := atual;
    DMRotasManutencoes.C_RotasManutencoesDet.Post;
    //
    DMRotasManutencoes.C_RotasManutencoesDet.Prior;
    ActiveControl := GridCliente;
  end;
end;

procedure TFrmRotasManutencoes.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := False;
  btComando2.Visible := False;
end;

procedure TFrmRotasManutencoes.FormComponentEstado_Navegacao(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := True;
  btComando2.Visible := True;
end;

procedure TFrmRotasManutencoes.GridClienteColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  Allow := False;
end;

procedure TFrmRotasManutencoes.btComando2Click(Sender: TObject);
begin
  inherited;
  DMRotasManutencoes.ImprimirFolhaRota;
end;

end.
