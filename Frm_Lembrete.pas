unit Frm_Lembrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  CheckLst, TS_CheckListBox, Buttons, TS_BitBtn,
  TS_Bevel, TS_SpeedButton, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBCheckBox, dxEditor, TS_DBMemo, TS_DBEditDate, TS_DBImageEdit,
  dxDBTLCl, dxGrClms, dxDBEdtr, TS_DBLookupTipoFav, teCtrls,
  TS_EffectsPanel, dxTLClms, Menus, TS_PopupMenu, BTOdeum, Placemnt, DB,
  IBCustomDataSet, IBQuery, TS_DBLookupComboBox, dxfProgressBar;

type
  TFrmLembrete = class(TFrmPadrao)
    pnSemana: TTS_Panel;
    CheckDomingo: TTS_DBCheckBox;
    CheckSegunda: TTS_DBCheckBox;
    CheckTerca: TTS_DBCheckBox;
    CheckQuarta: TTS_DBCheckBox;
    CheckQuinta: TTS_DBCheckBox;
    CheckSexta: TTS_DBCheckBox;
    CheckSabado: TTS_DBCheckBox;
    Grid_icSelecionado: TdxDBGridColumn;
    GridDATAINICIAL: TdxDBGridDateColumn;
    GridDATAFINAL: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridDESATIVADO: TdxDBGridMaskColumn;
    GridQ_lcliente: TdxDBGridColumn;
    dbgLCliente: TTS_QDBGrid;
    dbgLClienteLEMBRETECLIENTE: TdxDBGridMaskColumn;
    dbgLClienteLEMBRETE: TdxDBGridMaskColumn;
    dbgLClienteCLIENTE: TdxDBGridMaskColumn;
    dbgLClienteTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgLClienteNOME: TdxDBGridButtonColumn;
    dbgLClienteTipoFav: TdxDBGridLookupColumn;
    GridTIPO: TdxDBGridImageColumn;
    ppmGridLembrete: TTS_PopupMenu;
    MenuItem5: TMenuItem;
    Apagar1: TMenuItem;
    GridSITUACAO: TdxDBGridCheckColumn;
    TS_Panel1: TTS_Panel;
    lbtipo: TTS_Label;
    CheckFeito: TTS_DBCheckBox;
    LookTipo: TTS_DBImageEdit;
    pnData: TTS_Panel;
    TS_Label1: TTS_Label;
    lbAteData: TTS_Label;
    editDataIni: TTS_DBEditDate;
    editDataFim: TTS_DBEditDate;
    TS_Panel3: TTS_Panel;
    TS_Label3: TTS_Label;
    TS_Label2: TTS_Label;
    MemoObs: TTS_DBMemo;
    Q_Memorizacao: TIBQuery;
    TS_Label4: TTS_Label;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    procedure LookTipoChange(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormCreate(Sender: TObject);
    procedure FormComponentInclusao(Sender: TObject);
    procedure dbgLClienteChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dbgLClienteTipoFavChange(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
    procedure dbgLClienteNOMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
  private
     nQuantVezes: Integer;
    procedure SetControls;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLembrete: TFrmLembrete;

implementation

uses DM_Lembrete, DM_Projeto;

{$R *.DFM}

procedure TFrmLembrete.LookTipoChange(Sender: TObject);
begin
  inherited;
  SetControls;
end;

procedure TFrmLembrete.SetControls;
begin
  if LookTipo.Text = '0' then begin
    pnData.Visible := true;
//		lbTipo.Caption := 'Data:';
    EditDataFim.Visible := false;
    lbAteData.Visible   := false;
		pnSemana.Visible := false;
  end else if pos(LookTipo.Text,'1,2,3')>0 then begin
		pnData.Visible := true;
//		lbTipo.Caption := 'No período de:';
    EditDataFim.Visible := true;
    lbAteData.Visible   := true;
    if LookTipo.Text = '2' then
			pnSemana.Visible := true
    else
			pnSemana.Visible := false;
  end;
end;

procedure TFrmLembrete.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm and (DMProjeto.QtdParametrosForm <> 1) then begin
    if (DMProjeto.GetParametrosForm(3) = 'Memorizacao') then begin
      DMProjeto.C_TipoFav.Locate('tipofavorecido',DMProjeto.GetParametrosForm(2),[]);
    end;
  end;
  MemoObs.SetFocus;
end;

procedure TFrmLembrete.FormComponentBeforeLoadKey(Sendet: TObject; var Where: String);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm and (DMProjeto.QtdParametrosForm <> 1) then begin
    if (DMProjeto.GetParametrosForm(3) = 'Favorecido') then begin
      Where := 'where lembretes.desativado = ''N'' and lembretes.situacao = ''N'' and (lembretes.usuario is null or lembretes.usuario = '+IntToStr(DMProjeto.nFuncionario)+') and lembretes.lembrete in (select lembrete from lembretesclientes lc ' +
                ' where lc.lembrete = lembretes.lembrete and cliente = ' + IntToStr( DMProjeto.GetParametrosForm(0) ) + '  )';
    end
    else
      Where := '';
    DmLembrete.nCodMemorizacao := DMProjeto.GetParametrosForm(4);
    if DMProjeto.QtdParametrosForm > 5 then
      DmLembrete.nCodCli := DMProjeto.GetParametrosForm(5)
    else if DMProjeto.GetParametrosForm(2) <> 0 then begin
      if  DmLembrete.nCodMemorizacao > 0 then
        DmLembrete.nCodCli := DMProjeto.GetParametrosForm(1)
      else
        DmLembrete.nCodCli := DMProjeto.GetParametrosForm(0);
    end;
  end; // if ExisteParametros
end;

procedure TFrmLembrete.FormCreate(Sender: TObject);
begin
  inherited;
  FrmLembrete := Self;
  FormComponent.AbrirFormatoTabela := True;
  nQuantVezes := 0;
end;

procedure TFrmLembrete.FormComponentInclusao(Sender: TObject);
var
  saux: String;
begin
  inherited;
  FormComponentBeforeLoadKey(Self, saux);
  with DmLembrete do begin
    if (nCodMemorizacao > 0) then
        C_TabelaMEMORIZACAO.Value := nCodMemorizacao;

    if (nCodCli > 0) then begin
      C_lcliente.Append;
      C_lclienteCLIENTE.Value := nCodCli;
      dbgLCliente.TS_ID := nCodCli;
      C_lcliente.Post;
    end;
  end;
end;

procedure TFrmLembrete.dbgLClienteChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  dbgLCliente.TS_TipoItem := DMLembrete.C_lClienteTipoFavorecido.AsString;
end;

procedure TFrmLembrete.dbgLClienteTipoFavChange(Sender: TObject);
begin
  inherited;
  dbgLCliente.TS_TipoItem := DMLembrete.C_lClienteTipoFavorecido.AsString;
end;

procedure TFrmLembrete.MenuItem5Click(Sender: TObject);
begin
  inherited;
  DmLembrete.C_lcliente.Append;
end;

procedure TFrmLembrete.Apagar1Click(Sender: TObject);
begin
  inherited;
  if (DmLembrete.C_lcliente.RecordCount <= 0) then
    exit;

   DmLembrete.C_lcliente.Delete;
end;

procedure TFrmLembrete.dbgLClienteNOMEButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var sForm: string;
begin
  inherited;
  if AbsoluteIndex = 1 then begin
    DMProjeto.SetParametrosForm([DMLembrete.C_LClienteCliente.value]);
    sForm := DMProjeto.FormFav(DMLembrete.C_LClienteTipoFavorecido.value);
    DMProjeto.CriarForm(sForm, Self, false);
  end;
end;

procedure TFrmLembrete.btComando1Click(Sender: TObject);
begin
  inherited;
  Q_Memorizacao.close;
  Q_Memorizacao.params[0].asinteger := DMLembrete.C_TabelaMemorizacao.value;
  Q_Memorizacao.open;
  if (DMLembrete.C_TabelaLembrete.value > 0) and (Q_Memorizacao.FieldByName('IDGerador').asinteger > 0) then begin
    DMProjeto.SetParametrosForm([Q_Memorizacao.FieldByName('IDGerador').value]);
    DMProjeto.CriarForm(Q_Memorizacao.FieldByName('formname').value, self, true);
  end;
end;

procedure TFrmLembrete.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if DMLembrete.C_TabelaMemorizacao.value > 0 then
    btComando1.visible := true
  else
    btComando1.visible := false;
end;

end.
