unit Frm_Rotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, TS_ButtonEdit, TS_EditFavorecido, DB, DBClient;

type
  TFrmRotas = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    DF_Nome: TTS_DBEdit;
    TS_Label2: TTS_Label;
    EdCliente: TTS_EditFavorecido;
    GridCliente: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    TS_Label5: TTS_Label;
    lbNumEquip: TTS_Label;
    btUp: TTS_SpeedButton;
    btDown: TTS_SpeedButton;
    GridClienteColumn4: TdxDBGridColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure GridClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteSelecionou(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure btUpClick(Sender: TObject);
    procedure btDownClick(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure GridClienteColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
  private
    qtdeCliente: Integer;
    procedure AtualizaNumEquipamento;
    function getNumEquipamentos(sClientes: String): Integer;
    function getQtdeCliente: integer;


  public
    IDS: String;
  end;

var
  FrmRotas: TFrmRotas;

implementation

uses DM_Projeto, DM_Rotas;

{$R *.dfm}

function TFrmRotas.getQtdeCliente: integer;
begin
//  result := DMRotas.C_RotaDet.RecordCount;
  inc(qtdeCliente);
  result := qtdeCliente;
end;
procedure TFrmRotas.GridClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_DELETE then
    DMRotas.C_RotaDet.Delete;
  AtualizaNumEquipamento;
end;

procedure TFrmRotas.AtualizaNumEquipamento;
begin
  lbNumEquip.Caption := IntToStr(getNumEquipamentos(DMRotas.getIDsClientes));
end;


function TFrmRotas.getNumEquipamentos;
begin
  if (sClientes = '') then result := 0
  else begin
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Text := 'select count(e.equipamento) from favorecidos f ' +
                      'inner join equipamentos e on f.favorecido = e.favorecido '+
                      'where f.favorecido in ('+sClientes+')';
    DMProjeto.Q_Sql.Open;
    result := DMProjeto.Q_Sql.Fields[0].AsInteger;
  end;
end;


procedure TFrmRotas.EdClienteSelecionou(Sender: TObject);
var ID: integer;
begin
  inherited;
  ID := edCliente.ID;
  with DMRotas.C_RotaDet do begin
    if not Locate('CLIENTE',id,[]) then begin
      Append;
      FieldByName('CLIENTE').AsInteger	 := ID;
      FieldByName('ORDEM').AsInteger := getQtdeCliente;
      Post;
    end;
  end;

  edCliente.Text := '';

  AtualizaNumEquipamento;
end;

procedure TFrmRotas.FormComponentAfterScroll(Sender: TObject);
var condicao: string;
begin
  inherited;
  EdCliente.WhereAdicional := ' and not f.favorecido in (select cliente from rotasclientes where rota <> ' + DMRotas.C_TabelaROTA.AsString + ')';
  with DMProjeto do begin
    IDs := DMRotas.C_TabelaCLIENTES.Value;

    if length(IDs)>0 then
    	condicao := 'And f.Favorecido In('+IDs+') '
    else
    	condicao := 'And f.Favorecido IN (-111111) ';
    with Q_SQL do begin
      Close;
    	SQL.Text := 'Select f.Favorecido, f.Nome '+
      						'From Favorecidos f Where f.TipoFavorecido >-1 '+
                  condicao+
                  'Order By f.Nome';

      Open;
      DMRotas.C_Clientes.EmptyDataSet;
      while not(EOF) do begin
        DMRotas.C_Clientes.Append;
        DMRotas.C_ClientesID.Value   := FieldByName('Favorecido').AsInteger;
        DMRotas.C_ClientesNome.Value := FieldByName('Nome').AsString;
        DMRotas.C_Clientes.Post;
        Next;
      end; // end while
    end; // end whith Q_SQL
  end;  // end whith DMProjeto
  AtualizaNumEquipamento;
end;

procedure TFrmRotas.btUpClick(Sender: TObject);
var atual, anterior: Integer;
begin
  inherited;
  if (GridCliente.FocusedNode.GetPrev <> nil) then begin
    atual := GridCliente.GetFieldValue(GridCliente.FocusedNode, 'ORDEM', 0);
    anterior := GridCliente.GetFieldValue(GridCliente.FocusedNode.GetPrev, 'ORDEM', 0);
    GridCliente.FocusedNode.MoveTo(GridCliente.FocusedNode.GetPrev, natlInsert);
    DMRotas.C_RotaDet.Edit;
    DMRotas.C_RotaDetORDEM.Value := anterior;
    DMRotas.C_RotaDet.Post;
    //
    DMRotas.C_RotaDet.Prior;
    DMRotas.C_RotaDet.Edit;
    DMRotas.C_RotaDetORDEM.Value := atual;
    DMRotas.C_RotaDet.Post;
    //
    DMRotas.C_RotaDet.Prior;
    ActiveControl := GridCliente;
  end;

end;

procedure TFrmRotas.btDownClick(Sender: TObject);
var atual, prox : integer;
begin
  inherited;
  if (GridCliente.FocusedNode.GetNext <> nil) then begin
    atual := GridCliente.GetFieldValue(GridCliente.FocusedNode, 'ORDEM', 0);
    prox := GridCliente.GetFieldValue(GridCliente.FocusedNode.GetNext, 'ORDEM', 0);
    GridCliente.FocusedNode.MoveTo(GridCliente.FocusedNode.GetNext, natlInsert);
    DMRotas.C_RotaDet.Edit;
    DMRotas.C_RotaDetORDEM.Value := prox;
    DMRotas.C_RotaDet.Post;
    //
    DMRotas.C_RotaDet.Prior;
    DMRotas.C_RotaDet.Edit;
    DMRotas.C_RotaDetORDEM.Value := atual;
    DMRotas.C_RotaDet.Post;
    //
    DMRotas.C_RotaDet.Next;
    ActiveControl := GridCliente;
  end;
end;

procedure TFrmRotas.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  qtdeCliente := 0;
end;

procedure TFrmRotas.GridClienteColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  Allow := False;
end;

procedure TFrmRotas.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  EdCliente.WhereAdicional := ' and not f.favorecido in (select cliente from rotasclientes where rota <> ' + DMRotas.C_TabelaROTA.AsString + ')';
end;

procedure TFrmRotas.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  EdCliente.WhereAdicional := ' and not f.favorecido in (select cliente from rotasclientes where rota <> ' + DMRotas.C_TabelaROTA.AsString + ')';
end;

end.
