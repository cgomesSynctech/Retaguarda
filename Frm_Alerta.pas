unit Frm_Alerta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  TS_MaxPanel, dxDBGrid, TS_QDBGrid,
  CheckLst, TS_CheckListBox, Buttons, TS_BitBtn,
  TS_Bevel, TS_SpeedButton, TS_Panel, 
  TS_DBImageEdit, TS_DBEditNumber, TS_DBLookupTipoFav,
  teCtrls, TS_EffectsPanel, Menus, DB, 
  TS_PopupMenu, dxDBELib, dxExEdtr, dxEdLib, dxEditor, dxDBCtrl, dxTL,
  dxCntner, dxfLabel, dxTLClms, dxGrClms, dxDBTLCl, BTOdeum, TS_Memo,
  TS_RadioButton, Placemnt, dxDBEdtr, TS_DBLookupComboBox, TS_DBMemo,
  TS_PopupEdit, TS_PopupFiltrarItens;

type
  TFrmAlerta = class(TFrmPadrao)
    GridCONDICAO: TdxDBGridMaskColumn;
    GridVALOR: TdxDBGridMaskColumn;
    GridAPLICAR: TdxDBGridImageColumn;
    GridTIPO: TdxDBGridImageColumn;
    ppmGridAlertas: TTS_PopupMenu;
    MenuItem5: TMenuItem;
    Apagar1: TMenuItem;
    pnAvisarPara: TTS_Panel;
    dbgFavorecidos: TTS_QDBGrid;
    dbgFavorecidosTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgFavorecidosTipoFav: TdxDBGridLookupColumn;
    dbgFavorecidosNOME: TdxDBGridButtonColumn;
    dbgFavorecidosALERTACLIENTE: TdxDBGridMaskColumn;
    dbgFavorecidosALERTA: TdxDBGridMaskColumn;
    dbgFavorecidosCLIENTE: TdxDBGridMaskColumn;
    lbDescGrid: TTS_Label;
    pnCondicao: TTS_Panel;
    lbCondicao: TTS_Label;
    lbValor: TTS_Label;
    DbLookCondicao: TTS_DBImageEdit;
    dbEditValor: TTS_DBEditNumber;
    pnPrincipal: TTS_Panel;
    lbAplicar: TTS_Label;
    lbTipoAlerta: TTS_Label;
    DbLookAplicar: TTS_DBImageEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    TS_Label1: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    popupFiltroItens: TTS_PopupFiltrarItens;
    procedure btAlertaFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure DbLookAplicarChange(Sender: TObject);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormComponentInclusao(Sender: TObject);
    procedure dbgFavorecidosTipoFavChange(Sender: TObject);
    procedure dbgFavorecidosChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
    procedure DbLookTipoChange(Sender: TObject);
    procedure dbgFavorecidosNOMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_DBLookupComboBox1Change(Sender: TObject);
    procedure popupFiltroItensSelecionou(Sender: TObject);
  private
    nTipoFav: integer;
    bAltera : boolean;
    procedure SetControls( bAplicar : boolean = true );
  public
    { Public declarations }
  end;

var
  FrmAlerta: TFrmAlerta;

implementation

uses Dm_Alerta, DM_Projeto;

{$R *.DFM}

procedure TFrmAlerta.btAlertaFiltroClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([DbLookAplicar.Text]);
  DMProjeto.CriarForm('DlgAlertaFiltro', Self, true);
end;

procedure TFrmAlerta.FormShow(Sender: TObject);
begin
  inherited;
    DmAlerta.C_Cliente.Active := True;
end;

procedure TFrmAlerta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DmAlerta.C_Cliente.Active := False;
end;

procedure TFrmAlerta.FormCreate(Sender: TObject);
begin
  inherited;
  FrmAlerta := Self;
  FormComponent.AbrirFormatoTabela := True;
end;

procedure TFrmAlerta.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if DmAlerta.bSalvando then
    exit;
  if (DmAlerta.C_TabelaALERTA.AsString = '') or (DmAlerta.C_TabelaALERTA.AsInteger <= 0)then begin
    DmAlerta.sRegFiltro := '';
    exit;
  end;

  DMProjeto.Q_SQL.Close;
  DMProjeto.Q_SQL.SQL.Text := 'Select chave from alertasitens where alerta = ' +
                DmAlerta.C_TabelaALERTA.AsString;
  DMProjeto.Q_SQL.Open;

  if (DMProjeto.Q_SQL.RecordCount = 0) then begin
    DmAlerta.sRegFiltro := '';
    exit;
  end;

  DmAlerta.sRegFiltro := '';
  while not DMProjeto.Q_SQL.eof do begin
    DmAlerta.sRegFiltro := DmAlerta.sRegFiltro + DMProjeto.Q_Sql.FieldByName('chave').AsString + ', ';
    DMProjeto.Q_Sql.Next;
  end;
  DmAlerta.sRegFiltro := copy(DmAlerta.sRegFiltro, 1, length(DmAlerta.sRegFiltro) - 2);

  SetControls;
end;

procedure TFrmAlerta.SetControls( bAplicar : boolean = true );
begin
  inherited;
  DMAlerta.C_TiposAlertas.filtered := false;
  DMAlerta.C_TiposAlertas.filter := 'tipo = '''+dbLookAplicar.text+'''';
  DMAlerta.C_TiposAlertas.filtered := true;
  popupFiltroItens.Visible := dbLookAplicar.text = 'I';
end;

procedure TFrmAlerta.DbLookAplicarChange(Sender: TObject);
begin
	SetControls;
end;

procedure TFrmAlerta.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  if (DMProjeto.GetParametrosForm(0) > 0) then
    Where := 'where alertas.alerta in (select alerta from alertasclientes where alerta is not null and cliente =  ' +
         IntToStr( DMProjeto.GetParametrosForm(0) ) + ' ) '
    else
      Where := '';
   DmAlerta.nCodCli := DMProjeto.GetParametrosForm(0);
   nTipoFav := DMProjeto.GetParametrosForm(1);
end;

procedure TFrmAlerta.FormComponentInclusao(Sender: TObject);
begin
  inherited;
  DbLookAplicar.OnChange(DbLookAplicar);
  with DmAlerta do begin
    C_cliente.Append;
    C_clienteTipoFavorecido.Value := nTipoFav;
    C_clienteCLIENTE.Value := nCodCli;
    dbgFavorecidos.TS_ID := nCodCli;
    C_cliente.Post;
  end;
end;
procedure TFrmAlerta.dbgFavorecidosTipoFavChange(Sender: TObject);
begin
  inherited;
  dbgFavorecidos.TS_TipoItem := DMAlerta.C_ClienteTipoFavorecido.AsString;
end;

procedure TFrmAlerta.dbgFavorecidosChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  dbgFavorecidos.TS_TipoItem := DMAlerta.C_ClienteTipoFavorecido.AsString;
end;

procedure TFrmAlerta.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DbLookAplicar.OnChange(DbLookAplicar);
end;

procedure TFrmAlerta.MenuItem5Click(Sender: TObject);
begin
  inherited;
   DmAlerta.C_Cliente.Append;
end;

procedure TFrmAlerta.Apagar1Click(Sender: TObject);
begin
  inherited;
  if (DmAlerta.C_Cliente.RecordCount <= 0) then
    exit;

   DmAlerta.C_Cliente.Delete;
end;

procedure TFrmAlerta.DbLookTipoChange(Sender: TObject);
begin
  inherited;
  SetControls(false);
end;

procedure TFrmAlerta.dbgFavorecidosNOMEButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var sForm: string;
begin
  inherited;
  if AbsoluteIndex = 1 then begin
    DMProjeto.SetParametrosForm([DMAlerta.C_ClienteCliente.value]);
    sForm := DMProjeto.FormFav(DMAlerta.C_ClienteTipoFavorecido.value);
    DMProjeto.CriarForm(sForm, Self, false);
  end;

end;

procedure TFrmAlerta.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
   with DMProjeto do begin
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      DMAlerta.sRegFiltro := GetParametrosForm(0);

      LimparParametrosForm;
    end;
  end;
end;

procedure TFrmAlerta.TS_DBLookupComboBox1Change(Sender: TObject);
begin
  inherited;
  DMAlerta.C_TiposAlertas.locate('tipoalerta',DMAlerta.C_TabelaTipo.value,[]);
  pnCondicao.Visible  := DMAlerta.C_TiposAlertasCondicao.value = 'S';
end;

procedure TFrmAlerta.popupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
   DMAlerta.sRegFiltro := popupFiltroItens.TS_ItensSelecionados;
end;

end.
