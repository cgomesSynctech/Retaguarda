unit Dlg_Tarefas;

interface   

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_PADRAOCHILD, DlgMsg, Menus, StdCtrls, Buttons,
  TS_BitBtn, IBCustomDataSet, IBQuery, Provider, Db, DBClient,
  TS_CheckBox, ComCtrls, TS_SpeedButton, ExtCtrls,
  FRM_MODELOCADASTROS, ImgList, TS_Label,
  DBCtrls, TS_Edit, TS_DateTimePicker,
  TS_LastDataObject, TS_Bevel, TS_MaxPanel, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, FormsComponent, TS_Image, dxfLabel,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, teCtrls, TS_EffectsPanel,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, 
  TS_PopupMenu, TransEff, teTimed, teBlend, Animate, GIFCtrl, Variants,
  BTOdeum, Placemnt;

type
  TDlgTarefas = class(TFrmModeloCadastros)
    C_Tarefas: TClientDataSet;
    C_TarefasProvider: TDataSetProvider;
    Q_Tarefas: TIBQuery;
    IL_Compromissos: TImageList;
    Lixeira: TRxGIFAnimator;
    C_TarefaslkUSUORIGEM: TStringField;
    DF_UsuarioDestino: TTS_LookupComboBox;
    gridTarefas: TTS_QDBGrid;
    C_TarefasDS: TDataSource;
    gridTarefasTAREFA: TdxDBGridMaskColumn;
    gridTarefasASSUNTO: TdxDBGridMaskColumn;
    gridTarefasDESCRICAO: TdxDBGridMemoColumn;
    gridTarefasDATA: TdxDBGridDateColumn;
    gridTarefasPREVISAO: TdxDBGridDateColumn;
    gridTarefasCONCLUIDO: TdxDBGridCheckColumn;
    gridTarefasDESATIVADO: TdxDBGridCheckColumn;
    gridTarefasUSUORIGEM: TdxDBGridMaskColumn;
    gridTarefasUSUDESTINO: TdxDBGridMaskColumn;
    gridTarefaslkUSUORIGEM: TdxDBGridLookupColumn;
    C_TarefasTAREFA: TIntegerField;
    C_TarefasASSUNTO: TStringField;
    C_TarefasDESCRICAO: TStringField;
    C_TarefasDATA: TDateField;
    C_TarefasPREVISAO: TDateField;
    C_TarefasUSUORIGEM: TIntegerField;
    C_TarefasUSUDESTINO: TIntegerField;
    C_TarefasPRIORIDADE: TIntegerField;
    C_TarefasCONCLUIDO: TStringField;
    C_TarefasDESATIVADO: TStringField;
    pnFiltro: TTS_Panel;
    TransitionList: TTransitionList;
    tlFiltro: TBlendTransition;
    GB_Filtros: TGroupBox;
    TS_Label7: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    btFiltrar: TTS_SpeedButton;
    btLimparFiltro: TTS_SpeedButton;
    ED_Assunto: TTS_Edit;
    Chk_Data: TTS_CheckBox;
    Chk_Previsao: TTS_CheckBox;
    ED_DataIni: TTS_DateTimePicker;
    ED_DataFim: TTS_DateTimePicker;
    ED_DataIni_P: TTS_DateTimePicker;
    ED_DataFim_P: TTS_DateTimePicker;
    ppmGrid: TTS_PopupMenu;
    Chk_Cancelado: TTS_CheckBox;
    Chk_Concluido: TTS_CheckBox;
    TS_Label1: TTS_Label;
    gridTarefasPRIORIDADE: TdxDBGridImageColumn;
    btLegenda: TTS_SpeedButton;
    C_TarefasDATACONCLUSAO: TDateField;
    procedure btLimparClick(Sender: TObject);
    procedure btLegendaClick(Sender: TObject);
    procedure Chk_CanceladoClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure LixeiraDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LixeiraDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure LixeiraFrameChanged(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure Chk_DataClick(Sender: TObject);
    procedure Chk_PrevisaoClick(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure btLimparFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DF_UsuarioDestinoChange(Sender: TObject);
    procedure gridTarefasEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure gridTarefasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure C_TarefasCONCLUIDOChange(Sender: TField);
  private
    { Private declarations }
    cond_Filtro: string;
    procedure AtualizaTarefas(UsuarioVar: variant; Concluidos, Cancelados: boolean);
    function PodeFazer(Acao: string; DeQuem: integer): boolean;
  public
    { Public declarations }
  end;

var
  DlgTarefas: TDlgTarefas;

implementation

uses DM_Projeto, DM_Agenda;

{$R *.DFM}

function TDlgTarefas.PodeFazer(Acao: string; DeQuem: integer): boolean;
var UsuarioDestino, UsuarioOrigem: integer;
begin
  UsuarioOrigem := DMProjeto.nFuncionario;
  UsuarioDestino := DF_UsuarioDestino.LookupKeyValue;
  result := false;
   if Acao = 'CONFIRMAR' then begin
    if UsuarioDestino = UsuarioOrigem then
      result := true
    else begin
      DlgMsg.ShowMsg( 2000, [Acao] );
      result := false;
    end;
  end;
  //
  if Acao = 'DESATIVAR' then begin
    if UsuarioOrigem = DeQuem then
      result := true
    else begin
      DlgMsg.ShowMsg( 2000, ['CANCELAR'] );
      result := false;
    end;
  end;
  //
  if Acao = 'MARCAR' then begin
    result := true;
  end;
  //
  if Acao = 'ALTERAR' then begin
    if UsuarioOrigem = DeQuem then
      result := true
    else begin
      DlgMsg.ShowMsg( 2000, [Acao] );
      result := false;
    end;
  end;
end;

procedure TDlgTarefas.AtualizaTarefas(UsuarioVar: variant; Concluidos, Cancelados: boolean);
var condicao: string;
    Usuario: integer;
begin
  if VarIsNull(UsuarioVar) then exit;
  Usuario := UsuarioVar;
  with C_Tarefas do begin
    Close;
    condicao := '';
    if (Concluidos) then AppendStr(condicao, ' Or (CONCLUIDO='+QuotedStr('S')+')');
    if (Cancelados) then AppendStr(condicao, ' Or (DESATIVADO='+QuotedStr('S')+')');
    CommandText := 'Select * From Tarefas '+
        ' Where (USUDESTINO='+ IntToStr(Usuario)+') '+
        ' And '+ cond_Filtro +
        ' And ( ((CONCLUIDO<>'+QuotedStr('S')+') And (DESATIVADO<>'+QuotedStr('S')+')) '+
        condicao + ')';
    Open;
  end;
end;

procedure TDlgTarefas.btLimparClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [ null, DF_UsuarioDestino.LookupKeyValue ] ); // Inclusao
    CriarForm('FrmTarefas', self, true);
  end;
end;

procedure TDlgTarefas.btLegendaClick(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgLegendas', Self, True);
end;

procedure TDlgTarefas.Chk_CanceladoClick(Sender: TObject);
begin
  inherited;
  AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
end;

procedure TDlgTarefas.btGravarClick(Sender: TObject);
var nAux: integer;
begin
  inherited;
  with DMProjeto do if gridTarefas.FocusedNode<>nil then
    if gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0)>0 then begin
      nAux := gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0);
      SetParametrosForm( [ nAux ] );
      CriarForm('FrmTarefas', self, true);
    end;
end;

procedure TDlgTarefas.LixeiraDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if (Source is TTS_QDBGrid) then begin
    if gridTarefas.FocusedNode<>nil then begin
      if gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0)>0 then
        Accept := True
      else Accept := False;
    end else Accept := False;
  end else Accept := False;
end;

procedure TDlgTarefas.LixeiraDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var ordem_aux: string;
begin
  inherited;
  // DESATIVADO
  if {se nao estiver desativado (melhor verificar no dragover)}1=1 then begin
    with C_Tarefas do begin
      Close;
      CommandText := 'Update Tarefas Set desativado='+QuotedStr('S')+
          ' Where tarefa='+IntToStr(gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0));
      Execute;
      DMProjeto.IBT_Projeto.CommitRetaining;
    end;
    // Atualiza Lixeira
    Lixeira.FrameIndex := 0;
    Lixeira.Animate := True;
    //
    AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
  end else begin
    DlgMsg.ShowMsg( 2012 );
  end;
end;

procedure TDlgTarefas.LixeiraFrameChanged(Sender: TObject);
begin
  inherited;
  if Lixeira.FrameIndex = 9 then
    Lixeira.Animate := False;
end;

procedure TDlgTarefas.btFiltrarClick(Sender: TObject);
begin
  inherited;
  cond_Filtro := '(UPPER(ASSUNTO) LIKE '+QuotedStr(UpperCase(ED_Assunto.Text)+'%')+') And ';
  if Chk_Data.Checked then begin
    AppendStr( cond_Filtro, '(DATA>='+QuotedStr(FormatDateTime('mm/dd/yyyy', ED_DataIni.Date))+
      ' And DATA<='+QuotedStr(FormatDateTime('mm/dd/yyyy', ED_DataFim.Date))+') And ' );
  end;
  if Chk_Previsao.Checked then begin
    AppendStr( cond_Filtro, '(PREVISAO>='+QuotedStr(FormatDateTime('mm/dd/yyyy', ED_DataIni_P.Date))+
      ' And PREVISAO<='+QuotedStr(FormatDateTime('mm/dd/yyyy', ED_DataFim_P.Date))+') And ' );
  end;
  cond_Filtro := '('+copy(cond_Filtro, 1, length(cond_Filtro)-5)+')';
  //
  AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
  btComando2.Down := False;
  TS_SpeedButton3Click(TObject(btComando2));
end;

procedure TDlgTarefas.Chk_DataClick(Sender: TObject);
begin
  inherited;
  ED_DataIni.Enabled := Chk_Data.Checked;
  ED_DataFim.Enabled := Chk_Data.Checked;
end;

procedure TDlgTarefas.Chk_PrevisaoClick(Sender: TObject);
begin
  inherited;
  ED_DataIni_P.Enabled := Chk_Previsao.Checked;
  ED_DataFim_P.Enabled := Chk_Previsao.Checked;
end;

procedure TDlgTarefas.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if (btComando2.Down) then begin
    try
      pnFiltro.BringToFront;
      tlFiltro.Prepare(GB_Filtros.Parent, GB_Filtros.BoundsRect);
      GB_Filtros.Visible := True;
      if tlFiltro.Prepared then
        tlFiltro.Execute;
    finally
      tlFiltro.UnPrepare;
      ED_DataIni.Invalidate;
      ED_DataFim.Invalidate;
      ED_DataIni_P.Invalidate;
      ED_DataFim_P.Invalidate;
      ED_Assunto.Invalidate;
      Chk_Previsao.Invalidate;
      Chk_Data.Invalidate;
    end;
  end else begin
    try
      tlFiltro.Prepare(GB_Filtros.Parent, GB_Filtros.BoundsRect);
      GB_Filtros.Visible := False;
      if tlFiltro.Prepared then
        tlFiltro.Execute;
    finally
      pnFiltro.SendToBack;
      tlFiltro.UnPrepare;
      ED_DataIni.Invalidate;
      ED_DataFim.Invalidate;
      ED_DataIni_P.Invalidate;
      ED_DataFim_P.Invalidate;
      ED_Assunto.Invalidate;
      Chk_Previsao.Invalidate;
      Chk_Data.Invalidate;
    end;
  end;
end;

procedure TDlgTarefas.btLimparFiltroClick(Sender: TObject);
begin
  inherited;
  Chk_Data.Checked := False;
  Chk_Previsao.Checked := False;
  ED_Assunto.Text := '';
end;

procedure TDlgTarefas.FormShow(Sender: TObject);
begin
  inherited;
  cond_Filtro := '(1=1)';
  DF_UsuarioDestino.LookupKeyValue := DMProjeto.nFuncionario;
  ED_DataIni.Date 	:= Date;
  ED_DataFim.Date 	:= Date;
  ED_DataIni_P.Date := Date;
  ED_DataFim_P.Date := Date;
  AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
end;

procedure TDlgTarefas.FormCreate(Sender: TObject);
begin
  inherited;
  Lixeira.FrameIndex := 9;
end;

procedure TDlgTarefas.DF_UsuarioDestinoChange(Sender: TObject);
begin
  inherited;
  AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
end;
procedure TDlgTarefas.gridTarefasEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  with C_Tarefas do begin
    if not(State in [dsInsert,dsEdit]) then
      Edit;
    Post;
    ApplyUpdates(0);
  end;
end;

procedure TDlgTarefas.gridTarefasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (gridTarefas.GetFieldValue(ANode,'PREVISAO',Date)<Date)
  and (AColumn.Index=gridTarefasPREVISAO.Index) then begin
    AFont.Color := clRed;
  end;
end;

procedure TDlgTarefas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if LastDataObject.TableName='TAREFAS' then
    AtualizaTarefas( DF_UsuarioDestino.LookupKeyValue, Chk_Concluido.Checked, Chk_Cancelado.Checked );
end;

procedure TDlgTarefas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	DF_UsuarioDestino.LookupKeyValue := DMProjeto.nFuncionario;
end;

procedure TDlgTarefas.btComando1Click(Sender: TObject);
begin
  inherited;
  if gridTarefas.FocusedNode<>nil then
    if gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0)>0 then
      with DMProjeto do begin
        SetParametrosForm( ['DlgTarefas', gridTarefas.GetFieldValue(gridTarefas.FocusedNode,'TAREFA',0), 'Compromissos da tarefa: '+gridTarefasASSUNTO.Field.AsString, DF_UsuarioDestino.LookupKeyValue] );
        CriarForm('DLGDESCRICAOCOMPROMISSOS', Self, true);
      end;
end;

procedure TDlgTarefas.C_TarefasCONCLUIDOChange(Sender: TField);
begin
  inherited;
  if C_TarefasConcluido.value = 'S' then
    C_TarefasDataConclusao.value := DMProjeto.dDataSistema
  else
    C_TarefasDataConclusao.AsVariant := null;
end;

end.

