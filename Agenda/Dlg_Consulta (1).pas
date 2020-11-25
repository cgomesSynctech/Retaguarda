unit Dlg_Consulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_PADRAOCHILD, DlgMsg, Menus, StdCtrls, Buttons,
  TS_BitBtn, ExtCtrls, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient, TS_Edit, TS_Label,
  ComCtrls, TS_DateTimePicker, DBCtrls, TS_DBLookupComboBox, TS_CheckBox,
  TS_RadioGroup, TS_SpeedButton, TS_LastDataObject,
  dxExEdtr, dxEdLib, dxEditor, dxDBEdtr, dxDBELib, dxCntner,
  FRM_MODELOCADASTROS, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, TS_LookupComboBox, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, TS_PopupMenu,
  ImgList, TransEff, teTimed, teSlide, Variants, Placemnt, BTOdeum;

type
  TDlgConsulta = class(TFrmModeloCadastros)
    C_Consulta: TClientDataSet;
    C_ConsultaProvider: TDataSetProvider;
    Q_Consulta: TIBQuery;
    C_ConsultaDS: TDataSource;
    gridConsulta: TTS_QDBGrid;
    gridConsultaCOMPROMISSO: TdxDBGridMaskColumn;
    gridConsultaDATA: TdxDBGridDateColumn;
    gridConsultaHORA: TdxDBGridMaskColumn;
    gridConsultaASSUNTO: TdxDBGridMaskColumn;
    gridConsultaDE: TdxDBGridMaskColumn;
    gridConsultaPARA: TdxDBGridMaskColumn;
    gridConsultaFAVORECIDO: TdxDBGridMaskColumn;
    gridConsultaCATEGORIA: TdxDBGridMaskColumn;
    gridConsultaUSUORIGEM: TdxDBGridMaskColumn;
    gridConsultaCOR: TdxDBGridMaskColumn;
    gridConsultaCOR_FONTE: TdxDBGridMaskColumn;
    gridConsultaTAREFA: TdxDBGridMaskColumn;
    btPesquisar: TTS_SpeedButton;
    btLimpaPesquisa: TTS_SpeedButton;
    C_ConsultaCOMPROMISSO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaHORARIO: TIntegerField;
    C_ConsultaHORARIO_FINAL: TIntegerField;
    C_ConsultaCOR: TStringField;
    C_ConsultaCOR_FONTE: TStringField;
    C_ConsultaUSUORIGEM: TIntegerField;
    C_ConsultaASSUNTO: TStringField;
    C_ConsultaDE: TStringField;
    C_ConsultaPARA: TStringField;
    C_ConsultaFAVORECIDO: TStringField;
    C_ConsultaCATEGORIA: TStringField;
    C_ConsultaCONCLUIDO: TStringField;
    C_ConsultaDESATIVADO: TStringField;
    C_ConsultaTAREFA: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultacfHORA_COMPLETA: TStringField;
    TS_Bevel2: TTS_Bevel;
    ppmGrid: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pnPesqAvancada: TTS_Panel;
    ED_Tarefa: TTS_Edit;
    TS_Label6: TTS_Label;
    TS_Label2: TTS_Label;
    ED_Assunto: TTS_Edit;
    ED_Categoria: TTS_LookupComboBox;
    TS_Label5: TTS_Label;
    TS_Label1: TTS_Label;
    ED_Cliente: TTS_Edit;
    ED_UsuarioDE: TTS_LookupComboBox;
    TS_Label3: TTS_Label;
    RG_Turno: TTS_RadioGroup;
    RG_Testes: TTS_RadioGroup;
    pnPesqSimples: TTS_Panel;
    TS_Label4: TTS_Label;
    TS_Label7: TTS_Label;
    ED_UsuarioPARA: TTS_LookupComboBox;
    Chk_Periodo: TTS_CheckBox;
    ED_DataIni: TTS_DateTimePicker;
    ED_DataFim: TTS_DateTimePicker;
    ckbConteudo: TTS_CheckBox;
    btPesqAvancada: TTS_SpeedButton;
    TransitionList1: TTransitionList;
    ParaBaixo: TSlideTransition;
    ParaCima: TSlideTransition;
    gridConsultaCONCLUIDO: TdxDBGridImageColumn;
    gridConsultaDESATIVADO: TdxDBGridImageColumn;
    ImageList: TImageList;
    TS_Label8: TTS_Label;
    edConteudo: TTS_Edit;
    procedure btPesquisarClick(Sender: TObject);
    procedure Chk_PeriodoClick(Sender: TObject);
    procedure btLimpaPesquisaClick(Sender: TObject);
    procedure btFechaJanelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure gridConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_ConsultacfHORA_COMPLETAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ckbConteudoClick(Sender: TObject);
    procedure btPesqAvancadaClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
  private
    { Private declarations }
    sSelectInicial, Select: string;
    cond_periodo, cond_usude, cond_usupara, cond_turno, cond_cliente,
    cond_assunto, cond_conteudo, cond_tarefa, cond_categoria, cond_testes: string;
  public
    { Public declarations }
  end;

var
  DlgConsulta: TDlgConsulta;

implementation

uses DM_Projeto, Dlg_Legendas, DM_Agenda;

{$R *.DFM}

procedure TDlgConsulta.btPesquisarClick(Sender: TObject);
begin
  inherited;
  C_Consulta.Close;
  C_Consulta.Params.Clear;
  // PERÍODO
  if (Chk_Periodo.Checked) then begin
    cond_periodo := '(c.DATA >= :dDataI And c.DATA <= :dDataF)';
    //C_Consulta.Params.CreateParam(ftDate, 'dDataI', ptInput);
    //C_Consulta.Params.CreateParam(ftDate, 'dDataF', ptInput);
  end;
  // DE
  if ED_UsuarioDE.LookupKeyValue <> null then
    cond_usude := 'c.USUORIGEM = ' + IntToStr(ED_UsuarioDE.LookupKeyValue);
  // PARA
  if ED_UsuarioPARA.LookupKeyValue <> null then
    cond_usupara := 'c.USUDESTINO = ' + IntToStr(ED_UsuarioPARA.LookupKeyValue);
  // CATEGORIA
  if ED_Categoria.LookupKeyValue <> null then
    cond_categoria := 'c.CATEGORIA = ' + IntToStr(ED_Categoria.LookupKeyValue);
  // Conteúdo
  if edConteudo.Text <> '' then
    cond_conteudo := 'UPPER(c.DESCRICAO) LIKE ''%' + UpperCase(edConteudo.Text) + '''%'
  else cond_conteudo := '';
  // ASSUNTO
  if ED_Assunto.Text <> '' then
    cond_assunto := 'UPPER(c.ASSUNTO) LIKE ' + QuotedStr(UpperCase(ED_Assunto.Text) + '%')
  else cond_assunto := '';
  // TAREFA
  if ED_Tarefa.Text <> '' then
    cond_tarefa := 'UPPER(t.ASSUNTO) LIKE ' + QuotedStr(UpperCase(ED_Tarefa.Text) + '%')
  else cond_tarefa := '';
  // CLIENTE
  if ED_Cliente.Text <> '' then
    cond_cliente := 'UPPER(cli.NOME) LIKE ' + QuotedStr(UpperCase(ED_Cliente.Text) + '%')
  else cond_cliente := '';
  // TURNO
  if RG_Turno.ItemIndex = 0 then
    cond_turno := ''
  else if RG_Turno.ItemIndex = 1 then begin
    cond_turno := '((c.HORARIO >= 0 And c.HORARIO_FINAL <= 719) or '+
     ' (c.HORARIO_FINAL >= 0 And c.HORARIO_FINAL <= 719) or '+
     ' (c.HORARIO >= 0 And c.HORARIO <= 719) or '+
     ' (c.HORARIO <= 0 And c.HORARIO_FINAL >= 719))';
  end else if RG_Turno.ItemIndex = 2 then begin
    cond_turno := '((c.HORARIO >= 720 And c.HORARIO_FINAL <= 1079) or '+
     ' (c.HORARIO_FINAL >= 720 And c.HORARIO_FINAL <= 1079) or '+
     ' (c.HORARIO >= 720 And c.HORARIO <= 1079) or '+
     ' (c.HORARIO <= 720 And c.HORARIO_FINAL >= 1079))';
  end else if RG_Turno.ItemIndex = 3 then begin
    cond_turno := '((c.HORARIO >= 1080 And c.HORARIO_FINAL <= 1439) or '+
     ' (c.HORARIO_FINAL >= 1080 And c.HORARIO_FINAL <= 1439) or '+
     ' (c.HORARIO >= 1080 And c.HORARIO <= 1439) or '+
     ' (c.HORARIO <= 1080 And c.HORARIO_FINAL >= 1439))';
  end;
  // TESTES DIVERSOS
  if (RG_Testes.ItemIndex = 0) then
    cond_testes := 'c.CONCLUIDO<>' + QuotedStr('S') + ' And c.DESATIVADO<>' + QuotedStr('S')
  else if (RG_Testes.ItemIndex = 1) then
    cond_testes := 'c.CONCLUIDO=' + QuotedStr('S')
  else if (RG_Testes.ItemIndex = 2) then
    cond_testes := 'c.DESATIVADO=' + QuotedStr('S')
  else if (RG_Testes.ItemIndex = 3) then
    cond_testes := '';
  // ------------
  Select := sSelectInicial + ' Where ';
  if cond_periodo <> '' then
    AppendStr(Select, cond_periodo + ' And  ');
  if cond_usude <> '' then
    AppendStr(Select, cond_usude + ' And  ');
  if cond_usupara <> '' then
    AppendStr(Select, cond_usupara + ' And  ');
  if cond_turno <> '' then
    AppendStr(Select, cond_turno + ' And  ');
  if cond_cliente <> '' then
    AppendStr(Select, cond_cliente + ' And  ');
  if cond_assunto <> '' then
    AppendStr(Select, cond_assunto + ' And  ');
  if cond_Conteudo <> '' then
    AppendStr(Select, cond_Conteudo + ' And  ');
  if cond_tarefa <> '' then
    AppendStr(Select, cond_tarefa + ' And  ');
  if cond_categoria <> '' then
    AppendStr(Select, cond_categoria + ' And  ');
  if cond_testes <> '' then
    AppendStr(Select, cond_testes + ' And  ');
  //
  Select := copy(Select, 1, length(Select)-6);
  AppendStr(Select, ' Order by c.DATA, c.HORARIO');
  C_Consulta.CommandText := Select;
  C_Consulta.CommandText := C_Consulta.CommandText + ' ';
  if (Chk_Periodo.Checked) then begin
  	C_Consulta.Params.ParamByName('dDataI').AsDateTime := Trunc(ED_DataIni.Date);
  	C_Consulta.Params.ParamByName('dDataF').AsDateTime := Trunc(ED_DataFim.Date);
	end;
  C_Consulta.Open;
end;

procedure TDlgConsulta.Chk_PeriodoClick(Sender: TObject);
begin
  inherited;
  ED_DataIni.Enabled := Chk_Periodo.Checked;
  ED_DataFim.Enabled := Chk_Periodo.Checked;
  cond_periodo := '';
end;

procedure TDlgConsulta.btLimpaPesquisaClick(Sender: TObject);
begin
  inherited;
  C_Consulta.Close;
  ED_UsuarioDE.LookupKeyValue := null;
  ED_UsuarioPARA.LookupKeyValue := null;
  ED_Categoria.LookupKeyValue := null;
  Chk_Periodo.Checked := true;
  // RG_Testes.ItemIndex := 0;
  RG_Turno.ItemIndex := 0;
  ED_Cliente.Text := '';
  ED_Assunto.Text := '';
  cond_periodo 	:= '';
  cond_usude 	:= '';
  cond_usupara	:= '';
  cond_turno	:= '';
  cond_cliente	:= '';
  cond_assunto	:= '';
  cond_categoria:= '';
  cond_testes   := '';
  cond_tarefa   := '';
  ed_UsuarioPara.SetFocus;
end;

procedure TDlgConsulta.btFechaJanelaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TDlgConsulta.FormShow(Sender: TObject);
begin
  inherited;
  Chk_Periodo.Checked := True;
  ED_DataIni.Date := Date;
  ED_DataFim.Date := Date;
  cond_periodo 	:= '';
  cond_usude 	:= '';
  cond_usupara	:= '';
  cond_turno	:= '';
  cond_cliente	:= '';
  cond_assunto	:= '';
  cond_categoria:= '';
  cond_testes   := '';
  cond_tarefa   := '';
end;

procedure TDlgConsulta.btGravarClick(Sender: TObject);
begin
  inherited;
  if (C_Consulta.Active) then
    if C_Consulta.RecordCount > 0 then begin
      //if (DMProjeto.nFuncionario = C_ConsultaUSUORIGEM.Value ) then begin
        with DMProjeto do begin
          SetParametrosForm( [ C_ConsultaCOMPROMISSO.Value ] );
          CriarForm('FRMCOMPROMISSOS',Self, true);
      	end;
      //end else DlgMsg.ShowMsg( 2000, ['ALTERAR'] );
    end;
end;

procedure TDlgConsulta.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgLegendas', Self, True);
end;

procedure TDlgConsulta.gridConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var cor, cor_fonte: string;
begin
  inherited;
  if C_Consulta.Active then
    if C_Consulta.RecordCount>0 then
      if (AColumn.Index=gridConsulta.FindColumnByFieldName('ASSUNTO').Index) then begin
        cor := ANode.Values[gridConsulta.FindColumnByFieldName('COR').Index];
        cor_fonte := ANode.Values[gridConsulta.FindColumnByFieldName('COR_FONTE').Index];
        if not((cor = '')or(cor_fonte = '')) then begin
          AFont.Color := StringToColor(cor_fonte);
          AColor := StringToColor(cor);
        end;
      end; // if AColumn
end;

procedure TDlgConsulta.C_ConsultacfHORA_COMPLETAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := '';
  if C_Consulta.Active then
    if C_Consulta.RecordCount>0 then
      Text := DMAgenda.IntegerToHora(C_ConsultaHORARIO.Value,DMProjeto.bFormatoAMPM)+' às '+
        			DMAgenda.IntegerToHora(C_ConsultaHORARIO_FINAL.Value,DMProjeto.bFormatoAMPM);
end;

procedure TDlgConsulta.FormCreate(Sender: TObject);
begin
  sSelectInicial := Q_Consulta.SQL.Text;
  inherited;
end;

procedure TDlgConsulta.ckbConteudoClick(Sender: TObject);
begin
  inherited;
  if ckbConteudo.Checked then
    gridConsulta.OptionsView := gridConsulta.OptionsView + [edgoPreview]
  else gridConsulta.OptionsView := gridConsulta.OptionsView - [edgoPreview];
end;

procedure TDlgConsulta.btPesqAvancadaClick(Sender: TObject);
begin
  inherited;
  if btPesqAvancada.Down then begin
		ParaBaixo.Prepare(pnPesqAvancada.Parent, pnPesqAvancada.BoundsRect);
  	try
  		pnPesqAvancada.Visible := true;
    	if ParaBaixo.Prepared then
    		ParaBaixo.Execute;
  	finally
  		ParaBaixo.UnPrepare;
  	end;
  end else begin
		ParaCima.Prepare(pnPesqAvancada.Parent, pnPesqAvancada.BoundsRect);
  	try
  		pnPesqAvancada.Visible := false;
    	if ParaCima.Prepared then
    		ParaCima.Execute;
  	finally
  		ParaCima.UnPrepare;
  	end;
  end;
end;

procedure TDlgConsulta.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	ed_UsuarioPara.LookUpKeyValue := DMProjeto.nFuncionario;
  btPesquisar.Click;
end;

procedure TDlgConsulta.btComando2Click(Sender: TObject);
begin
  inherited;
  gridConsulta.TS_ReportFilter.Clear;
  if chk_Periodo.Checked then
  	gridConsulta.TS_ReportFilter.Add('Período de '+Ed_DataIni.Text+' a '+Ed_DataFim.Text);
	gridConsulta.VisualizarImpressao('Agenda de '+ed_UsuarioPara.Text);
end;

end.


