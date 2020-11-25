unit Frm_Compromissos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, 
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_DBMemo, TS_Label, TS_DBCheckBox, Psock, NMEcho,
  TS_DBLookupComboBox, db, TS_Shape, TS_RadioGroup, TS_DateTimePicker,
  TS_DBRadioGroup, TS_ComboBox, Spin, TS_CheckBox, TS_GroupBox, RxCombos,
  TS_DBComboBox, RxDBComb, TS_LastDataObject, TS_Bevel,
  TS_MaxPanel, CheckLst, TS_CheckListBox, TS_DBEditFavorecido,
  TS_DBLookupTipoFav, IBCustomDataSet, IBQuery, dxLayout, dxCntner,
  dxEditor, dxExEdtr, dxExGrEd, dxExELib, dxTL, dxDBCtrl, dxDBGrid,
  dxEdLib, dxDBELib, dxDBEdtr, TS_DBButtonEdit, TS_Image, dxfLabel,
  TS_QDBGrid, Animate, GIFCtrl, TS_SpinEdit, TS_DBTimeEdit, TS_DBMaskEdit,
  dxDBTLCl, dxGrClms, TS_DBEditDate, TS_DBImageEdit, Provider,
  DBClient, TS_DBPopupEdit, TS_PopupEdit, teCtrls, TS_EffectsPanel,
  teMasked, teCircle, dxfProgressBar, dxTLClms,
  TS_LookupComboBox, TS_MaskEdit, TS_PopupMenu, teDiagon, teForm, teSlide,
  TransEff, teTimed, teBlend, Variants, BTOdeum, Placemnt;

type
  TFrmCompromissos = class(TFrmPadrao)
    btEmailUsuario: TTS_SpeedButton;
    DF_Assunto: TTS_DBEdit;
    DF_Descricao: TTS_DBMemo;
    DF_Data: TTS_DBEditDate;
    DF_UsuOrigem: TTS_DBLookupComboBox;
    btOpcoes: TTS_SpeedButton;
    Q_SQL: TIBQuery;
    GridCOMPROMISSO: TdxDBGridMaskColumn;
    GridUSUORIGEM: TdxDBGridMaskColumn;
    GridUSUDESTINO: TdxDBGridMaskColumn;
    GridASSUNTO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridDATACONCLUSAO: TdxDBGridDateColumn;
    GridHORARIO: TdxDBGridMaskColumn;
    GridHORARIO_FINAL: TdxDBGridMaskColumn;
    GridCLIENTE: TdxDBGridMaskColumn;
    GridCATEGORIA: TdxDBGridMaskColumn;
    GridCONFIG_ID: TdxDBGridMaskColumn;
    GridTAREFA: TdxDBGridMaskColumn;
    GridCLIENTE_NOME: TdxDBGridMaskColumn;
    GridTIPOFAVORECIDO: TdxDBGridMaskColumn;
    GridlkCategoria: TdxDBGridLookupColumn;
    GridlkUsuOrigem: TdxDBGridLookupColumn;
    GridlkUsuDestino: TdxDBGridLookupColumn;
    GridlkUsuOrigem_Intervalo: TdxDBGridLookupColumn;
    GridDESATIVADO: TdxDBGridCheckColumn;
    GridCONCLUIDO: TdxDBGridCheckColumn;
    DF_Usuarios: TTS_PopupEdit;
    gridUsuarios: TTS_QDBGrid;
    gridUsuariosUSUARIO: TdxDBGridMaskColumn;
    gridUsuariosLOGINNAME: TdxDBGridMaskColumn;
    gridUsuariosINTERVALO_MINUTOS: TdxDBGridMaskColumn;
    gridCategorias: TTS_QDBGrid;
    gridCategoriasCATEGORIA: TdxDBGridMaskColumn;
    gridCategoriasDESCRICAO: TdxDBGridMaskColumn;
    gridCategoriasCOR: TdxDBGridMaskColumn;
    gridCategoriasCOR_FONTE: TdxDBGridMaskColumn;
    DF_Categoria: TTS_DBPopupEdit;
    Lbl_UsuOrigem: TTS_Label;
    TS_Label4: TTS_Label;
    Lbl_Categoria: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    Lbl_UsuDestino: TTS_Label;
    lbSeparador: TTS_Label;
    TransitionList: TTransitionList;
    btSalvaPeriodicidade: TTS_SpeedButton;
    DF_HoraINI: TTS_MaskEdit;
    DF_HoraINI_AMPM: TTS_ComboBox;
    DF_HoraFIM: TTS_MaskEdit;
    DF_HoraFIM_AMPM: TTS_ComboBox;
    lbHorario: TTS_Label;
    GridDESCRICAO: TdxDBGridMemoColumn;
    GridCONCLUIDO_ANOTACOES: TdxDBGridMemoColumn;
    TS_Label2: TTS_Label;
    tlPeriodicidade: TBlendTransition;
    TS_Label11: TTS_Label;
    CB_Periodicidade: TTS_ComboBox;
    pnPeriodo: TTS_Panel;
    TS_Label10: TTS_Label;
    TS_Label9: TTS_Label;
    DF_DataInicial: TTS_DateTimePicker;
    DF_DataFinal: TTS_DateTimePicker;
    TS_Panel1: TTS_Panel;
    pnSemanaMes: TTS_Panel;
    GB_DiasDaSemana: TTS_Panel;
    chk_Dom: TTS_CheckBox;
    chk_Seg: TTS_CheckBox;
    chk_Ter: TTS_CheckBox;
    chk_Qua: TTS_CheckBox;
    chk_Qui: TTS_CheckBox;
    chk_Sex: TTS_CheckBox;
    chk_Sab: TTS_CheckBox;
    GB_Mensal: TTS_Panel;
    TS_Label5: TTS_Label;
    SE_Mensal: TTS_SpinEdit;
    TS_Panel2: TTS_Panel;
    Img_Con: TTS_Image;
    Img_Canc: TTS_Image;
    Lbl_Tarefa: TTS_Label;
    lbCancelado: TTS_Label;
    DF_Conclusao: TTS_DBCheckBox;
    dfTipoFav: TTS_DBLookupTipoFav;
    DF_Cliente: TTS_DBEditFavorecido;
    DF_Tarefa: TTS_DBLookupComboBox;
    TS_Image1: TTS_Image;
    btCancelado: TTS_SpeedButton;
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btEmailUsuarioClick(Sender: TObject);
    procedure CB_PeriodicidadeChange(Sender: TObject);
    procedure btOpcoesClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure DF_DataInicialChange(Sender: TObject);
    procedure Chk_DomClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure gridCategoriasCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure DF_CategoriaPopup(Sender: TObject; const EditText: String);
    procedure DF_CategoriaCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure gridCategoriasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridCategoriasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridCategoriasDblClick(Sender: TObject);
    procedure DF_UsuariosCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btSalvaPeriodicidadeClick(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure gridUsuariosDblClick(Sender: TObject);
    procedure DF_HoraFIMEnter(Sender: TObject);
    procedure DF_ClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btCanceladoClick(Sender: TObject);
  private
    { Private declarations }
    //MudouPeriodicidade: boolean;
    nTipoMensal, nPeriodicidadeAtual : integer;
    sTipoSemanal : string;
    dDataI, dDataF : TDatetime;
    procedure AtualizaComboPeriodicidade;
    procedure LeUsuarios(sCodUsuarios: string);
    procedure ApagaCompromisso(nCompromisso: integer;
      bFisicamente: boolean = true);
  public
    { Public declarations }
    sUsuariosAntigos : string;
  end;

var
  FrmCompromissos: TFrmCompromissos;

implementation

uses DM_Compromissos, Dlg_Calendario, DM_Projeto, Dlg_AgOpcoes, DM_Agenda, funcoes;

{$R *.DFM}

procedure TFrmCompromissos.LeUsuarios(sCodUsuarios: string);
var i,j,cod: integer;
    sUsuarios: string;
begin
  j:=ContaStrings(sCodUsuarios,',');
  if not(gridUsuarios.DataSource.DataSet.Active) then
    gridUsuarios.DataSource.DataSet.Open;
  sUsuarios := '';
  gridUsuarios.LimparSelecionados;
  for i:=1 to j do begin
    cod := StrToInt(SeparaStrings(sCodUsuarios,',',i));
    if gridUsuarios.DataSource.DataSet.Locate('USUARIO',cod,[]) then begin
      AppendStr(sUsuarios,gridUsuarios.DataSource.DataSet.FieldByName('LOGINNAME').AsString+',');
      if not(gridUsuarios.Selecionado) then
        gridUsuarios.SelecionarLinha;
    end;
  end;
  if length(sUsuarios)>0 then sUsuarios := copy(sUsuarios,1,length(sUsuarios)-1);
  DF_Usuarios.Text := sUsuarios;
end;

procedure TFrmCompromissos.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
{
  if (btComando1.Down) then begin
    btOpcoes.Enabled := False;
    btGravar.Enabled := False;
    btFecharCadastro.Enabled := False;
    btSalvaPeriodicidade.Visible := DMCompromissos.bAlteracao;
    try
      pnPeriodicidade.BringToFront;
      tlPeriodicidade.Prepare(GB_Periodo.Parent, GB_Periodo.BoundsRect);
      GB_Periodo.Visible := True;
      if tlPeriodicidade.Prepared then
        tlPeriodicidade.Execute;
    finally
      tlPeriodicidade.UnPrepare;
      DF_DataInicial.Invalidate;
      DF_DataFinal.Invalidate;
      CB_Periodicidade.Invalidate;
      SE_Mensal.Invalidate;
      GB_DiasDaSemana.Invalidate;
      chk_Dom.Invalidate;
      chk_Seg.Invalidate;
      chk_Ter.Invalidate;
      chk_Qua.Invalidate;
      chk_Qui.Invalidate;
      chk_Sex.Invalidate;
      chk_Sab.Invalidate;
    end;
  end else begin
    btOpcoes.Enabled := True;
    btGravar.Enabled := True;
    btFecharCadastro.Enabled := True;
    btSalvaPeriodicidade.Visible := False;
    try
      tlPeriodicidade.Prepare(GB_Periodo.Parent, GB_Periodo.BoundsRect);
      GB_Periodo.Visible := False;
      if tlPeriodicidade.Prepared then
        tlPeriodicidade.Execute;
    finally
      pnPeriodicidade.SendToBack;
      tlPeriodicidade.UnPrepare;
      DF_DataInicial.Invalidate;
      DF_DataFinal.Invalidate;
      CB_Periodicidade.Invalidate;
      SE_Mensal.Invalidate;
      GB_DiasDaSemana.Invalidate;
      chk_Dom.Invalidate;
      chk_Seg.Invalidate;
      chk_Ter.Invalidate;
      chk_Qua.Invalidate;
      chk_Qui.Invalidate;
      chk_Sex.Invalidate;
      chk_Sab.Invalidate;
    end;
  end;
}
end;

procedure TFrmCompromissos.FormCreate(Sender: TObject);
begin
  sUsuariosAntigos := '';
  inherited;
  FrmCompromissos := Self;
end;

procedure TFrmCompromissos.btEmailUsuarioClick(Sender: TObject);
var de, deEmail, para, paraEmail: string;
begin
  inherited;
  if Length(DMCompromissos.C_TabelaUSUARIOS.Value)>0 then
    with Q_SQL do begin
      Close;
      SQL.Text := 'Select loginname,email From Usuarios Where usuario='+IntToStr(DMProjeto.nFuncionario);
      Open;
      de := Fields[0].AsString;
      deEmail := Fields[1].AsString;
      Close;
      SQL.Text := 'Select loginname,email From Usuarios Where usuario In ('+DMCompromissos.C_TabelaUSUARIOS.Value+')';
      Open;
      para := '';
      paraEmail := '';
      while not(Q_SQL.EOF) do begin
        para := para+ Fields[0].AsString +';';
        paraEmail := paraEmail+ Fields[1].AsString +';';
        Q_SQL.Next;
      end;
      if (Length(para)>0)and(Length(paraEmail)>0) then begin
        para := copy(para,1,Length(para)-1);
        paraEmail := copy(paraEmail,1,Length(paraEmail)-1);
      end;
      SendMail(DF_Assunto.Text, // Titulo
               '', // corpo da mensagem
               '', // arquivo
               de, // seu nome
               deEmail, // seu endereco
               '', // nome do(s) destinatário(s)
               paraEmail);// email(s) do(s) destinatário(s)
      Close;
    end;
end;

procedure TFrmCompromissos.AtualizaComboPeriodicidade;
var mes_aux: integer;
begin
  // Uma vez
  if (CB_Periodicidade.ItemIndex = 0) then begin
    pnPeriodo.Visible := False;
    pnSemanaMes.Visible := False;
    GB_DiasDaSemana.Visible := False;
    GB_Mensal.Visible := False;
  end;
  // Diariamente
  if (CB_Periodicidade.ItemIndex = 1) then begin
    pnPeriodo.Visible := True;
    pnSemanaMes.Visible := False;
    GB_DiasDaSemana.Visible := False;
    GB_Mensal.Visible := False;
  end;
  // Semanalmente
  if (CB_Periodicidade.ItemIndex = 2) then begin
    pnPeriodo.Visible := True;
    pnSemanaMes.Visible := True;
    GB_DiasDaSemana.Visible := True;
    GB_Mensal.Visible := False;
  end;
  // Mensal
  if (CB_Periodicidade.ItemIndex = 3) then begin

    pnPeriodo.Visible := True;
    pnSemanaMes.Visible := True;
    GB_DiasDaSemana.Visible := False;
    DMAgenda.PegaData( DMCompromissos.C_TabelaDATA.Value , 'D', mes_aux );
    SE_Mensal.Value := mes_aux;
    GB_Mensal.Visible := True;

  end;
end;

procedure TFrmCompromissos.CB_PeriodicidadeChange(Sender: TObject);
begin
  inherited;
  if not(DMCompromissos.C_Tabela.State in [dsInsert, dsEdit]) then
    DMCompromissos.C_Tabela.Edit;
  AtualizaComboPeriodicidade;
end;

procedure TFrmCompromissos.btOpcoesClick(Sender: TObject);
begin
  inherited;
  try
    DlgAgOpcoes := TDlgAgOpcoes.Create(Self);
    with DlgAgOpcoes do begin
      MM_ConcluidoAnotacoes.Text := DMCompromissos.C_TabelaCONCLUIDO_ANOTACOES.AsString;
      if DmCompromissos.C_TabelaCONCLUIDO.Value='S' then begin
        ME_DataConclusao.Date := DmCompromissos.C_TabelaDATACONCLUSAO.Value;
      end else begin
        ME_DataConclusao.Date := 0;
        ME_DataConclusao.Text := '';
      end;
      QuemChamou := 'FrmCompromissos';
      ShowModal;
    end;
  finally
    DlgAgOpcoes.Release;
  end;
end;

procedure TFrmCompromissos.btGravarClick(Sender: TObject);
var Semana, sAMPM1, sAMPM2: string;
begin
  // Atualiza horário no banco
  with DMCompromissos do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;
    if DMProjeto.bFormatoAMPM then begin
      sAMPM1 := ' '+DF_HoraINI_AMPM.Text;
      sAMPM2 := ' '+DF_HoraFIM_AMPM.Text;
    end else begin
      sAMPM1 := '';
      sAMPM2 := '';
    end;
  	C_TabelaHORARIO.Value := DMAgenda.HoraToInteger(DF_HoraINI.Text+sAMPM1,DMProjeto.bFormatoAMPM);
  	C_TabelaHORARIO_FINAL.Value := DMAgenda.HoraToInteger(DF_HoraFIM.Text+sAMPM2,DMProjeto.bFormatoAMPM);
  end;
  //
  if CB_Periodicidade.ItemIndex = 0 then begin
    with DMCompromissos do begin
      Param0 := Trunc(DF_Data.Date);
      Param1 := Trunc(DF_Data.Date);
      Param2 := 'UMAVEZ';
      Param3 := (nPeriodicidadeAtual <> CB_Periodicidade.ItemIndex) and (DMCompromissos.bAlteracao);
    end;
  end;
  if CB_Periodicidade.ItemIndex = 1 then begin
    with DMCompromissos do begin
      Param0 := DF_DataInicial.Date;
      Param1 := DF_DataFinal.Date;
      Param2 := 'DIARIO';
      Param3 := ((nPeriodicidadeAtual <> CB_Periodicidade.ItemIndex) or (dDataI <> DF_DataInicial.Date) or (dDataF <> DF_DataFinal.Date))
                and (DMCompromissos.bAlteracao);
    end;
  end;
  if CB_Periodicidade.ItemIndex = 2 then begin
    Semana := '';
    if Chk_Dom.Checked then AppendStr(Semana, '1');
    if Chk_Seg.Checked then AppendStr(Semana, '2');
    if Chk_Ter.Checked then AppendStr(Semana, '3');
    if Chk_Qua.Checked then AppendStr(Semana, '4');
    if Chk_Qui.Checked then AppendStr(Semana, '5');
    if Chk_Sex.Checked then AppendStr(Semana, '6');
    if Chk_Sab.Checked then AppendStr(Semana, '7');
    if Semana = '' then begin
    	DlgMsg.ShowMsg(929,['o(s) dia(s) da semana']);
      Exit;
    end;
    with DMCompromissos do begin
      Param0 := DF_DataInicial.Date;
      Param1 := DF_DataFinal.Date;
      Param2 := 'SEMANA';
      Param3 := Semana;
      Param4 := ((nPeriodicidadeAtual <> CB_Periodicidade.ItemIndex) or (dDataI <> DF_DataInicial.Date) or (dDataF <> DF_DataFinal.Date) or (sTipoSemanal <> Semana))
                and (DMCompromissos.bAlteracao);
    end;
  end;
  if CB_Periodicidade.ItemIndex = 3 then begin
    with DMCompromissos do begin
      Param0 := DF_DataInicial.Date;
      Param1 := DF_DataFinal.Date;
      Param2 := 'MES';
      Param3 := SE_Mensal.Value;
      Param4 := ((nPeriodicidadeAtual <> CB_Periodicidade.ItemIndex) or (dDataI <> DF_DataInicial.Date) or (dDataF <> DF_DataFinal.Date) or (nTipoMensal <> Se_Mensal.Value))
                and (DMCompromissos.bAlteracao);
    end;
  end;
  inherited;
end;

procedure TFrmCompromissos.DF_DataInicialChange(Sender: TObject);
begin
  inherited;
  if not(DMCompromissos.C_Tabela.State in [dsInsert, dsEdit]) then
    DMCompromissos.C_Tabela.Edit;
end;

procedure TFrmCompromissos.Chk_DomClick(Sender: TObject);
begin
  inherited;
  if not(DMCompromissos.C_Tabela.State in [dsInsert, dsEdit]) then
    DMCompromissos.C_Tabela.Edit;
end;

procedure TFrmCompromissos.FormShow(Sender: TObject);
begin
  inherited;
  if DMCompromissos.C_TabelaCLIENTE.AsVariant<>null then
    DF_Cliente.ID := DMCompromissos.C_TabelaCLIENTE.Value;
  if DMProjeto.bFormatoAMPM then begin
    DF_HoraINI_AMPM.Visible := True;
    DF_HoraFIM_AMPM.Visible := True;
  end else begin
    DF_HoraINI_AMPM.Visible := False;
    DF_HoraFIM_AMPM.Visible := False;
  end;
end;

procedure TFrmCompromissos.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  lbEstadoForm.Caption := formatdatetime('dddd, mmmm dd, yyyy', DMProjeto.dDataSistema);
  with DMCompromissos do begin
    if DMProjeto.QtdParametrosForm > 1 then begin
      if C_Tabela.State in [dsInsert] then begin
        C_TabelaUSUORIGEM.Value 	:= DMProjeto.nFuncionario;
        C_TabelaDATA.Value 				:= DMProjeto.GetParametrosForm(1);
        C_TabelaCONCLUIDO.Value 	:= 'N';
        C_TabelaDESATIVADO.Value 	:= 'N';
        C_TabelaHORARIO.AsVariant := DMProjeto.GetParametrosForm(3);
        if C_TabelaHORARIO.AsVariant<>null then
          C_TabelaHORARIO_FINAL.AsVariant := DMProjeto.GetParametrosForm(3)+DMProjeto.GetParametrosForm(6)
        else C_TabelaHORARIO_FINAL.AsVariant := null;
        C_TabelaTAREFA.AsVariant 	:= DMProjeto.GetParametrosForm(4);
        C_TabelaCLIENTE.AsVariant := DMProjeto.GetParametrosForm(5);
        C_TabelaUSUDESTINO.Value 	:= DMProjeto.GetParametrosForm(2);
        C_TabelaUSUARIOS.Value 		:= DMProjeto.GetParametrosForm(2);
        LeUsuarios(C_TabelaUSUARIOS.Value);
      end;
    end;
  end;
  DMCompromissos.AtualizaLookupTarefas;

  // Operações do período
  if Estado in [fsInclusao,fsNavegacao,fsLoading] then
    with DMCompromissos do begin
      if C_TabelaCONFIG_ID.AsVariant = null then begin
        CB_Periodicidade.ItemIndex := 0;
        DF_DataInicial.Date := C_TabelaDATA.Value;
        DF_DataFinal.Date := C_TabelaDATA.Value;
      end else begin
        C_Config_Comp.Filtered := False;
        C_Config_Comp.Filter := 'CONFIG_ID=' + C_TabelaCONFIG_ID.AsString;
        C_Config_Comp.Filtered := True;
        DF_DataInicial.Date := C_Config_CompDATA_INI.Value;
        DF_DataFinal.Date := C_Config_CompDATA_FIM.Value;
        if DF_DataInicial.Date = DF_DataFinal.Date then begin
          DF_DataInicial.Date := C_TabelaDATA.Value;
          DF_DataFinal.Date := C_TabelaDATA.Value;
          //MudouPeriodicidade := False;
        end;// else
        	//MudouPeriodicidade := True;
        if C_Config_CompTIPO.Value = 'U' then begin
          CB_Periodicidade.ItemIndex := 0;
        end;
        if C_Config_CompTIPO.Value = 'D' then begin
          CB_Periodicidade.ItemIndex := 1;
        end;
        if C_Config_CompTIPO.Value = 'S' then begin
          CB_Periodicidade.ItemIndex := 2;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 1) then
            Chk_Dom.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 2) then
            Chk_Seg.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 3) then
            Chk_Ter.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 4) then
            Chk_Qua.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 5) then
            Chk_Qui.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 6) then
            Chk_Sex.Checked := True;
          if DMAgenda.DiaDaSemanaIgual(C_Config_CompTIPO_SEMANAL.Value, 7) then
            Chk_Sab.Checked := True;
        end;
        if C_Config_CompTIPO.Value = 'M' then begin
          CB_Periodicidade.ItemIndex := 3;
          SE_Mensal.Value := C_Config_CompTIPO_MENSAL.Value;
        end;
        nPeriodicidadeAtual := CB_Periodicidade.ItemIndex;
        dDataI := C_Config_CompDATA_INI.Value;
        dDataF := C_Config_CompDATA_FIM.Value;
        nTipoMensal := C_Config_CompTIPO_MENSAL.Value;
        sTipoSemanal:= C_Config_CompTIPO_SEMANAL.Value;
      end;
      sUsuariosAntigos := C_TabelaUSUARIOS.Value;
      // Operações com o horário
      DF_HoraINI.Text := copy(DMAgenda.IntegerToHora(C_TabelaHORARIO.AsInteger,DMProjeto.bFormatoAMPM),1,5);
      DF_HoraFIM.Text := copy(DMAgenda.IntegerToHora(C_TabelaHORARIO_FINAL.AsInteger,DMProjeto.bFormatoAMPM),1,5);
      if DMProjeto.bFormatoAMPM then begin
        if copy(DMAgenda.IntegerToHora(C_TabelaHORARIO.AsInteger,DMProjeto.bFormatoAMPM),7,2)='AM' then
          DF_HoraINI_AMPM.ItemIndex := 0
        else if copy(DMAgenda.IntegerToHora(C_TabelaHORARIO.AsInteger,DMProjeto.bFormatoAMPM),7,2)='PM' then
          DF_HoraINI_AMPM.ItemIndex := 1;
        if copy(DMAgenda.IntegerToHora(C_TabelaHORARIO_FINAL.AsInteger,DMProjeto.bFormatoAMPM),7,2)='AM' then
          DF_HoraFIM_AMPM.ItemIndex := 0
        else if copy(DMAgenda.IntegerToHora(C_TabelaHORARIO_FINAL.AsInteger,DMProjeto.bFormatoAMPM),7,2)='PM' then
          DF_HoraFIM_AMPM.ItemIndex := 1;
      end;
    end; // with
  // muda cor da categoria
  if DMAgenda.C_Categorias.Locate('CATEGORIA',DMCompromissos.C_TabelaCATEGORIA.AsInteger,[]) then begin
    DF_Categoria.Color := StringToColor(DMAgenda.C_CategoriasCOR.Value);
    DF_Categoria.Font.Color := StringToColor(DMAgenda.C_CategoriasCOR_FONTE.Value);
  end else begin
    DF_Categoria.Color := clWhite;
    DF_Categoria.Font.Color := clBlack;
  end;
  // atualiza grid dos usuarios
  LeUsuarios(DMCompromissos.C_TabelaUSUARIOS.Value);
  AtualizaComboPeriodicidade;
	img_Canc.Visible 		:= DMCompromissos.C_TabelaDesativado.Value = 'S';
  lbCancelado.Visible := DMCompromissos.C_TabelaDesativado.Value = 'S';
  btCancelado.Visible := not lbCancelado.Visible;
end;

procedure TFrmCompromissos.gridCategoriasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StringToColor(gridCategorias.GetFieldValue(ANode,'COR','clWhite'));
  AFont.Color := StringToColor(gridCategorias.GetFieldValue(ANode,'COR_FONTE','clBlack'));
end;

procedure TFrmCompromissos.DF_CategoriaPopup(Sender: TObject; const EditText: String);
begin
  inherited;
  if DF_Categoria.DataSource.DataSet.FieldByName('CATEGORIA').AsVariant<>null then begin
    gridCategorias.DataSource.DataSet.Locate('CATEGORIA',DF_Categoria.DataSource.DataSet.FieldByName('CATEGORIA').AsInteger,[]);
  end;
end;

procedure TFrmCompromissos.DF_CategoriaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  if Accept then begin
    if gridCategorias.FocusedNode<>nil then begin
      if not(DF_Categoria.DataSource.DataSet.State in [dsEdit,dsInsert]) then
        DF_Categoria.DataSource.DataSet.Edit;
      DF_Categoria.DataSource.DataSet.FieldByName('CATEGORIA').AsInteger :=
      gridCategorias.GetFieldValue(gridCategorias.FocusedNode,'CATEGORIA',0);
    end;
  end;
end;

procedure TFrmCompromissos.gridCategoriasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbLeft) and (gridCategorias.GetHitTestInfoAt(X, Y) in RowHitTests) then
    gridCategoriasDblClick(nil);
end;

procedure TFrmCompromissos.gridCategoriasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Key in [VK_UP, VK_DOWN]) and (ssAlt in Shift))
     or ((Key = VK_F4) and not (ssAlt in Shift))
     or (Key = VK_ESCAPE) then
    TdxPopupEditForm(GetParentForm(gridCategorias)).ClosePopup(False);
  if Key = VK_RETURN then gridCategoriasDblClick(nil);
end;

procedure TFrmCompromissos.gridCategoriasDblClick(Sender: TObject);
begin
  inherited;
  TdxPopupEditForm(GetParentForm(gridCategorias)).ClosePopup(True);
end;

procedure TFrmCompromissos.DF_UsuariosCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  if gridUsuarios.Selecionados = '' then
    gridUsuarios.Selecionar;
  LeUsuarios(gridUsuarios.Selecionados);
  with DMCompromissos do begin
    if not(C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
    C_TabelaUSUARIOS.Value := gridUsuarios.Selecionados;
    AtualizaLookupTarefas;
  end;
end;

procedure TFrmCompromissos.btSalvaPeriodicidadeClick(Sender: TObject);
var ApagaTodos: boolean;
    Resultado: integer;
    Semana: string;
begin
  inherited;
  {
  ApagaTodos := False;
  if MudouPeriodicidade then begin
    Resultado := DlgMsg.ShowMsg( 2013 );
    if Resultado=300 then // Cancelar
      exit;
    if Resultado=100 then // Sim
      ApagaTodos := True
    else if Resultado=200 then // Não
      ApagaTodos := False;
    pbPeriodicidade.Visible := True;
    with DMCompromissos do begin
      if not(C_Config_Comp.State in [dsEdit,dsInsert]) then C_Config_Comp.Edit;
      if CB_Periodicidade.ItemIndex = 0 then begin // Uma Vez
        C_Config_CompTIPO.Value := 'U';
      end;
      if CB_Periodicidade.ItemIndex = 1 then begin // Diário
        C_Config_CompTIPO.Value := 'D';
      end;
      if CB_Periodicidade.ItemIndex = 2 then begin // Semanal
        Semana := '';
        if Chk_Dom.Checked then AppendStr(Semana, '1');
        if Chk_Seg.Checked then AppendStr(Semana, '2');
        if Chk_Ter.Checked then AppendStr(Semana, '3');
        if Chk_Qua.Checked then AppendStr(Semana, '4');
        if Chk_Qui.Checked then AppendStr(Semana, '5');
        if Chk_Sex.Checked then AppendStr(Semana, '6');
        if Chk_Sab.Checked then AppendStr(Semana, '7');
        C_Config_CompTIPO.Value := 'S';
        C_Config_CompTIPO_SEMANAL.Value := Semana;
      end;
      if CB_Periodicidade.ItemIndex = 3 then begin // Mensal
        C_Config_CompTIPO.Value := 'M';
        C_Config_CompTIPO_MENSAL.Value := Trunc(SE_Mensal.Value);
      end;
      C_Config_CompDATA_INI.Value := DF_DataInicial.Date;
      C_Config_CompDATA_FIM.Value := DF_DataFinal.Date;
      C_Config_Comp.Post;
      C_Config_Comp.ApplyUpdates(0);
      DMAgenda.MudaPeriodicidade( ApagaTodos, C_Config_CompCONFIG_ID.Value,
        C_Config_CompTIPO.Value[1], C_Config_CompTIPO_SEMANAL.Value,
        C_Config_CompTIPO_MENSAL.Value, C_Config_CompDATA_INI.Value,
        C_Config_CompDATA_FIM.Value, C_TabelaDATA.Value,
        C_TabelaUSUDESTINO.Value, C_TabelaUSUORIGEM.Value,
        C_TabelaASSUNTO.Value, C_TabelaDESCRICAO.Value,
        C_TabelaHORARIO.Value, C_TabelaHORARIO_FINAL.Value,
        C_TabelaCLIENTE.Value, C_TabelaCATEGORIA.Value,
        C_TabelaTAREFA.Value, C_TabelaCONCLUIDO.Value[1],
        C_TabelaDESATIVADO.Value[1], Self,
        C_Consulta, C_TabelaCOMPROMISSO.Value, C_TabelaUSUARIOS.Value,
        pbPeriodicidade, Application );
    end;
    pbPeriodicidade.Visible := False;
  end;
  try
    SendLastDataObject(Self.Name, 'Compromissos', 'Compromisso', 0, false );
  except
  end;
  }
end;

procedure TFrmCompromissos.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  {Categorias}
  if UpperCase(LastDataObject.TableName) = 'CATEGORIAS' then begin
    with DMAgenda.C_Categorias do begin
    	Close;
      Open;
    end;
    with DMCompromissos do begin
    	if C_Tabela.State in [dsBrowse] then
      	C_Tabela.Edit;
    	C_TabelaCategoria.Value := LastDataObject.ObjectKey;
    end;
  {Tarefa}
  end else if UpperCase(LastDataObject.TableName) = 'TAREFAS' then begin
    with DMAgenda.C_Tarefas do begin
    	Close;
      Open;
    end;
    with DMCompromissos do begin
    	if C_Tabela.State in [dsBrowse] then
      	C_Tabela.Edit;
    	C_TabelaTarefa.Value := LastDataObject.ObjectKey;
    end;
  end;
end;

procedure TFrmCompromissos.gridUsuariosDblClick(Sender: TObject);
begin
  inherited;
  (GetParentForm(gridUsuarios) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TFrmCompromissos.DF_HoraFIMEnter(Sender: TObject);
begin
  inherited;
	DF_HoraFIM.Text := copy(DMAgenda.IntegerToHora(DMAgenda.HoraToInteger(DF_HoraIni.Text,DMProjeto.bFormatoAMPM)+
                                        DMAgenda.C_UsuariosINTERVALO_MINUTOS.Value,DMProjeto.bFormatoAMPM),1,5);
  DF_HoraFIM_AMPM.Text := DF_HoraINI_AMPM.Text; 
end;
//DMCompromissos._SomaHora(DF_HoraINI.Text,DMAgenda.C_UsuariosINTERVALO_MINUTOS.Value)
procedure TFrmCompromissos.DF_ClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var cli: integer;
    de, deEmail, para, paraEmail: string;
begin
  if AbsoluteIndex < 2 then
  	inherited
  else begin
  	if DmCompromissos.C_TabelaCLIENTE.AsVariant = null then begin
      DlgMsg.ShowMsg(929, [dfTipoFav.Text]);
  		Exit;
  	end else
      cli := DmCompromissos.C_TabelaCLIENTE.Value;
  		with Q_SQL do begin
    		Close;
    		SQL.Text := 'Select loginname,email From Usuarios Where usuario='+IntToStr(DMProjeto.nFuncionario);
    		Open;
    		de := Fields[0].AsString;
    		deEmail := Fields[1].AsString;
    		Close;
    		SQL.Text := 'Select nome,email From Favorecidos Where favorecido='+IntToStr(cli);
    		Open;
    		para := Fields[0].AsString;
    		paraEmail := Fields[1].AsString;
    		SendMail(DF_Assunto.Text, // Titulo
             '', // corpo da mensagem
             '', // arquivo
             de, // seu nome
             deEmail, // seu endereco
             para, // nome do destinatário
             paraEmail);// destino
    		Close;
      end;
  end;
end;

procedure TFrmCompromissos.ApagaCompromisso(nCompromisso: integer; bFisicamente: boolean=True);
begin
  with Q_SQL do begin
    Close;
    if bFisicamente then
      SQL.Text := 'Delete From Compromissos Where Compromisso='+IntToStr(nCompromisso)
    else SQL.Text := 'Update Compromissos Set Desativado='+QuotedStr('S')+' '+
      'Where Compromisso='+IntToStr(nCompromisso);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
end;

procedure TFrmCompromissos.btCanceladoClick(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg(3000) = 100 then begin
		ApagaCompromisso( DMCompromissos.C_TabelaCompromisso.Value, False );
    img_Canc.Visible := true;
    lbCancelado.Visible := true;
    btCancelado.Visible := false;
  	try
    	SendLastDataObject(Self.Name, 'Compromissos', 'Compromisso', 0, false );
  	except
  	end;

  end;
end;

end.
