unit Dlg_CalendarioMes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TS_ScrollBox, ExtCtrls, IBCustomDataSet, IBQuery, Provider, Db,
  DBClient, ComCtrls, IBDatabase, StdCtrls, TS_Label, TS_Edit, Mask,
  DBCtrls, TS_DBEdit, Buttons, TS_SpeedButton, Menus, ImgList,
  TS_PageControl, TS_Image, TS_Memo, TS_Shape, RxGIF,
  IBSQL, TS_ListBox, DlgMsg, FORM_PADRAO,
  DLG_PADRAOCHILD, TS_LastDataObject, TS_BitBtn,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppMemo, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, FRM_MODELOCADASTROS, FormsComponent, 
  dxfLabel, TS_MaxPanel, TS_Bevel, dxDBEdtr, dxDBELib, TS_DBLookupComboBox,
  TS_LookupComboBox, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  TS_QDBGrid, TS_CheckBox,
  teCtrls, TS_EffectsPanel, MonthCalendar, TS_PopupMenu, ppVar, Animate,
  GIFCtrl, Variants, BTOdeum, Placemnt;

type
  TDlgCalendarioMes = class(TFrmModeloCadastros)
    C_CompQuantidade: TClientDataSet;
    Q_CompQuantidadeProvider: TDataSetProvider;
    Q_CompQuantidade: TIBQuery;
    IL_Compromissos: TImageList;
    rbRelatorio: TppReport;
    dbpRelatorio: TppDBPipeline;
    Q_RelatorioDS: TDataSource;
    Q_Relatorio: TIBQuery;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    rbrgCabecalho: TppRegion;
    ppDBText13: TppDBText;
    ppGroup1: TppGroup;
    rbGroup: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape6: TppShape;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    rblbTurno: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    rblbCategoria: TppDBText;
    ppDBMemo1: TppDBMemo;
    btLegenda: TTS_SpeedButton;
    btImprimir: TTS_SpeedButton;
    btAnual: TTS_SpeedButton;
    btConfirmar: TTS_SpeedButton;
    btAlterar: TTS_SpeedButton;
    btAgendar: TTS_SpeedButton;
    Lixeira: TRxGIFAnimator;
    Lbl_DiaDaSemana: TTS_Label;
    Lbl_Data: TTS_Label;
    Img_Calendario: TTS_Image;
    Lbl_Dia: TTS_Label;
    DF_UsuarioDestino: TTS_LookupComboBox;
    Memo_Descricao: TTS_Memo;
    Q_SQL: TIBQuery;
    gridComp: TTS_QDBGrid;
    C_Comp: TClientDataSet;
    Q_CompProvider: TDataSetProvider;
    Q_Comp: TIBQuery;
    C_CompDS: TDataSource;
    C_CompDE: TStringField;
    C_CompPARA: TStringField;
    C_CompDATA: TDateField;
    C_CompASSUNTO: TStringField;
    C_CompcfID: TStringField;
    C_CompCOMPROMISSO: TIntegerField;
    C_CompcfCOR: TStringField;
    C_CompcfTURNO: TStringField;
    dtMeses: Tvg2MonthCalendar;
    C_CompcfHORARIO: TStringField;
    C_CompcfHORA_INI: TStringField;
    C_CompcfHORA_FIM: TStringField;
    C_CompCONCLUIDO_ANOTACOES: TStringField;
    ckTurno: TTS_CheckBox;
    C_CompCATEGORIA: TStringField;
    C_CompCOR: TStringField;
    C_CompCOR_FONTE: TStringField;
    gridCompCOMPROMISSO: TdxDBGridMaskColumn;
    gridCompDE: TdxDBGridMaskColumn;
    gridCompPARA: TdxDBGridMaskColumn;
    gridCompDATA: TdxDBGridDateColumn;
    gridCompHORA_INI: TdxDBGridMaskColumn;
    gridCompHORA_FIM: TdxDBGridMaskColumn;
    gridCompASSUNTO: TdxDBGridMaskColumn;
    gridCompCONCLUIDO_ANOTACOES: TdxDBGridMaskColumn;
    gridCompCATEGORIA: TdxDBGridMaskColumn;
    gridCompCOR: TdxDBGridMaskColumn;
    gridCompCOR_FONTE: TdxDBGridMaskColumn;
    gridCompcfID: TdxDBGridColumn;
    gridCompcfCOR: TdxDBGridColumn;
    gridCompcfTURNO: TdxDBGridColumn;
    gridCompcfHORARIO: TdxDBGridColumn;
    gridCompcfHORA_INI: TdxDBGridColumn;
    gridCompcfHORA_FIM: TdxDBGridColumn;
    gridCompIMAGEM: TdxDBGridImageColumn;
    C_CompCONCLUIDO: TStringField;
    C_CompDESATIVADO: TStringField;
    C_CompcfIMAGE: TStringField;
    C_CompCLIENTE: TStringField;
    C_CompHORA_INI: TIntegerField;
    C_CompHORA_FIM: TIntegerField;
    C_CompDATACONCLUSAO: TDateField;
    C_CompDESCRICAO: TStringField;
    gridCompDESCRICAO: TdxDBGridColumn;
    Q_RelatorioDATASEL: TIBStringField;
    Q_RelatorioCOMPROMISSO: TIntegerField;
    Q_RelatorioDE: TIBStringField;
    Q_RelatorioPARA: TIBStringField;
    Q_RelatorioINICIAL: TDateField;
    Q_RelatorioASSUNTO: TIBStringField;
    Q_RelatorioHORARIO: TIntegerField;
    Q_RelatorioHORARIO_FINAL: TIntegerField;
    Q_RelatorioDESCRICAO: TIBStringField;
    Q_RelatorioCONCLUIDO: TIBStringField;
    Q_RelatorioDESATIVADO: TIBStringField;
    Q_RelatorioCATEGORIA: TIBStringField;
    Q_RelatorioCOR: TIBStringField;
    Q_RelatorioCOR_FONTE: TIBStringField;
    C_CompHORA_INI_REAL: TIntegerField;
    ppmCompromissos: TTS_PopupMenu;
    ppmAlterar: TMenuItem;
    ppmConfirmar: TMenuItem;
    N1: TMenuItem;
    ppmMostrar: TMenuItem;
    ppmAnotacoes: TMenuItem;
    N2: TMenuItem;
    ppmApagar: TMenuItem;
    ppmCancelar: TMenuItem;
    ppmDescricao: TTS_PopupMenu;
    MenuItem6: TMenuItem;
    Copiar1: TMenuItem;
    SelecionarTudo1: TMenuItem;
    N3: TMenuItem;
    ppLabel1: TppLabel;
    procedure Alterardadosdocompromisso1Click(Sender: TObject);
    procedure ppmConfirmarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btLegendaClick(Sender: TObject);
    procedure btAnualClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ExcluirCompromissoFisicamente1Click(Sender: TObject);
    procedure Desativarcompromisso1Click(Sender: TObject);
    procedure AnotaesConcluso1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rblbCategoriaPrint(Sender: TObject);
    procedure rbGroupBeforePrint(Sender: TObject);
    procedure DF_UsuarioDestinoChange(Sender: TObject);
    procedure gridCompCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dtMesesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dtMesesDrawCellParams(Sender: TObject; CellDate: TDateTime;
      var Options: TCalendarDrawOptions; var FontColor,
      BkgndColor: TColor);
    procedure dtMesesChange(Sender: TObject);
    procedure dtMesesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ckTurnoChange(Sender: TObject);
    procedure C_CompcfTURNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure gridCompDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridCompDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gridCompStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dtMesesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gridCompColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure btAnotacoesClick(Sender: TObject);
    procedure gridCompChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure LixeiraDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure LixeiraDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LixeiraFrameChanged(Sender: TObject);
    procedure NovoCompromisso1Click(Sender: TObject);
    procedure gridCompDblClick(Sender: TObject);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure dtMesesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MostraDiaSelecionadoNoCalendario(Sender:TObject;Shift:TShiftState;X,Y:Integer);
    procedure gridCompKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C_CompASSUNTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rblbTurnoPrint(Sender: TObject);
    procedure ppmCompromissosPopup(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    CompromissoArrastado: TdxTreeListNode;
    DiaSelecionado, MesSelecionado, AnoSelecionado: integer;
    UsuarioOrigem, UsuarioDestino: integer;
    TurnoAtual: char;
		meses: array[1..12] of integer;
    // ##############
    // novas funcoes
    procedure MudaHorarioCompromisso(nCompromisso: integer; NodeDestino: TdxTreeListNode; nIntervalo: integer);
    procedure MudaDataCompromisso(nCompromisso: integer; dData: TDateTime);
    procedure ApagaCompromisso(nCompromisso: integer; bFisicamente: boolean=True);
    procedure NovoCompromisso(dData:TDateTime; nUsuarioDestino, nHorario, nTarefa, nFavorecido: Variant);
    procedure ConfirmaCompromisso(nCompromisso: integer);
    procedure AtualizaDiaDoUsuario(nUsuario:integer; dData:TDateTime);
    procedure AtualizaMesDoUsuario(nUsuario, dMes, dAno: integer);
    procedure SelecionaPrimeiroCompromisso(nCompromisso: integer = 0; nTopIndex: integer = -1);
    procedure MostrarAgrupamentos;
    // final  novas funcoes
    // ##############

    procedure OrganizaFevereiro( Ano: integer );
    function PodeFazer(Acao: string; DeQuem: integer): boolean;
  public
    { Public declarations }
    varNaoApagaTodos: boolean;
  end;

var
  DlgCalendarioMes: TDlgCalendarioMes;

implementation

uses DM_Projeto, Dlg_AgOpcoes, DM_Agenda, Dlg_Config_Altera;

{$R *.DFM}

procedure TDlgCalendarioMes.AtualizaMesDoUsuario(nUsuario, dMes, dAno: integer);
var data_mesI, data_mesF: string;
begin
  OrganizaFevereiro(dMes);
  AnoSelecionado := dAno;
  MesSelecionado := dMes;
  UsuarioDestino := nUsuario;
  with C_CompQuantidade do begin
    Close;
    data_mesI := FormatDateTime('mm/dd/yyyy', EncodeDate(AnoSelecionado, MesSelecionado, 1));
    data_mesF := FormatDateTime('mm/dd/yyyy', EncodeDate(AnoSelecionado, MesSelecionado, meses[MesSelecionado]));
    CommandText := 'Select Data, Count(compromisso) as QUANT From compromissos '+
      						 'Where (Data >= '+QuotedStr(data_mesI)+' And Data <= '+QuotedStr(data_mesF)+') '+
      						 'And (UsuDestino = ' + IntToStr(UsuarioDestino) +') '+
      						 'Group By data';
    Open;
  end;
end;

procedure TDlgCalendarioMes.AtualizaDiaDoUsuario(nUsuario:integer; dData:TDateTime);
var dDia, dMes, dAno: word;
    data_mesI, data_mesF: string;
begin
  DecodeDate(dData, dAno, dMes, dDia);
  AtualizaMesDoUsuario(nUsuario,dMes,dAno);
  AnoSelecionado := dAno;
  MesSelecionado := dMes;
  DiaSelecionado := dDia;
  UsuarioDestino := nUsuario;
  //
  with Q_SQL do begin
    Close;
    SQL.Text := 'Update gradeusuarios Set data='+
      QuotedStr(FormatDateTime('mm/dd/yyyy',dData))+
      ' Where usuario='+IntToStr(nUsuario);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
  with C_Comp do begin
    DisableControls;
    Close;
    Params.ParamByName('Usuario').AsInteger := nUsuario;
    Open;
    while not(Eof) do begin
      Edit;
      C_CompcfID.Value := Format('%6.6d%6.6d',[C_CompHORA_INI.Value,C_CompCOMPROMISSO.Value]);
      C_CompcfTURNO.Value := DMAgenda.TurnoDaHoraInteira(C_CompHORA_INI.Value, True);
      if (C_CompHORA_INI.Value<DMAgenda.C_UsuariosHORA_INI.Value) then
        C_CompcfTURNO.Value := '0';
      //if (C_CompHORA_INI.Value>DMAgenda.C_UsuariosHORA_FIM.Value) then
      //  C_CompcfTURNO.Value := '4';
      if C_CompHORA_FIM.AsVariant<>null then
        C_CompcfHORARIO.Value := DMAgenda.IntegerToHora(C_CompHORA_INI.Value,DMProjeto.bFormatoAMPM)+
        ' às '+DMAgenda.IntegerToHora(C_CompHORA_FIM.Value,DMProjeto.bFormatoAMPM)
      else C_CompcfHORARIO.Value := DMAgenda.IntegerToHora(C_CompHORA_INI.Value,DMProjeto.bFormatoAMPM);
      C_CompcfHORA_INI.Value := DMAgenda.IntegerToHora(C_CompHORA_INI.Value,DMProjeto.bFormatoAMPM);
      C_CompcfHORA_FIM.Value := DMAgenda.IntegerToHora(C_CompHORA_FIM.Value,DMProjeto.bFormatoAMPM);
      //
      if C_CompDESATIVADO.Value='S' then C_CompcfIMAGE.AsInteger := 1
      else if C_CompCONCLUIDO.Value='S' then C_CompcfIMAGE.AsInteger := 0
      else if length(C_CompCLIENTE.AsString)>0 then C_CompcfIMAGE.AsInteger := 4
      else C_CompcfIMAGE.AsInteger := -1;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  dtMeses.Date := dData;
  dtMeses.Invalidate;
end;

procedure TDlgCalendarioMes.OrganizaFevereiro( Ano: integer );
begin
  if (Ano mod 4=0) then begin
    meses[2] := 29;
  end else begin
    meses[2] := 28;
  end;
end;

function TDlgCalendarioMes.PodeFazer(Acao: string; DeQuem: integer): boolean;
begin
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

procedure TDlgCalendarioMes.Alterardadosdocompromisso1Click(Sender: TObject);
var nCompromisso, nTopIndex: integer;
begin
  if gridComp.FocusedNode<>nil then begin
    nCompromisso := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    if nCompromisso>0 then begin
      nTopIndex := gridComp.TopIndex;
      // Código do COMPROMISSO
      DMProjeto.SetParametrosForm( [ nCompromisso ] );
      DMProjeto.CriarForm('FRMCOMPROMISSOS',Self, true);
      //AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
      //SelecionaPrimeiroCompromisso(nCompromisso, nTopIndex);
    end;
  end;
end;

procedure TDlgCalendarioMes.ppmConfirmarClick(Sender: TObject);
var nCompromisso, nTopIndex: integer;
begin
  if gridComp.FocusedNode<>nil then begin
    nCompromisso := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    if nCompromisso>0 then begin
      nTopIndex := gridComp.TopIndex;
      //
      ConfirmaCompromisso( nCompromisso );
      AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
      SelecionaPrimeiroCompromisso(nCompromisso, nTopIndex);
    end;
  end;
end;

procedure TDlgCalendarioMes.btFecharCadastroClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgCalendarioMes.btLegendaClick(Sender: TObject);
begin
  DMProjeto.CriarForm('DlgLegendas', Self, True);
end;

procedure TDlgCalendarioMes.btAnualClick(Sender: TObject);
begin
  with DMProjeto do begin
    SetParametrosForm([DiaSelecionado,MesSelecionado,AnoSelecionado,UsuarioDestino,DF_UsuarioDestino.Text]);
    CriarForm('DlgCalendario',Self,True);
  end;  
end;

procedure TDlgCalendarioMes.btImprimirClick(Sender: TObject);
var data_aux, data_sel: string;
begin
  TurnoAtual := ' ';
  data_aux := QuotedStr(FormatDateTime('mm/dd/yyyy', dtMeses.Date));
  data_sel := QuotedStr(FormatDateTime('ddddd', dtMeses.Date));
  Q_Relatorio.Close;
  Q_Relatorio.SQL.Text :=
    'Select '+data_sel+' As datasel, c.compromisso, uo.loginname As de, '+
    QuotedStr(DF_usuarioDestino.Text)+ ' As para, '+
    ' c.data As inicial, c.assunto, '+
    ' c.horario, c.horario_final, '+
    ' c.descricao, c.concluido, c.desativado, '+
    ' ca.descricao As categoria, ca.cor, ca.cor_fonte'+
    ' From compromissos c Join usuarios uo On c.usuorigem=uo.usuario'+
    ' Left Join categorias ca On ca.categoria=c.categoria'+
    ' Where (c.data = ' + data_aux +')'+
    ' And (c.UsuDestino = ' + IntToStr(UsuarioDestino) +')'+
    ' And (c.desativado <> ' + QuotedStr('S') +')'+
    ' Order By c.HORARIO';
  Q_Relatorio.Open;
  DMProjeto.ImprimirCabecalho( rbrgCabecalho );
  rbRelatorio.Print;
end;

procedure TDlgCalendarioMes.ExcluirCompromissoFisicamente1Click(Sender: TObject);
var nCompromisso, nTopIndex: integer;
begin
  if gridComp.FocusedNode<>nil then begin
    nCompromisso := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    if nCompromisso>0 then begin
      nTopIndex := gridComp.TopIndex;
      //
      ApagaCompromisso( nCompromisso );
      AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
      SelecionaPrimeiroCompromisso(0,nTopIndex);
    end;
  end;
end;

procedure TDlgCalendarioMes.Desativarcompromisso1Click(Sender: TObject);
var nCompromisso, nTopIndex: integer;
begin
  if gridComp.FocusedNode<>nil then begin
    nCompromisso := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    if nCompromisso>0 then begin
      nTopIndex := gridComp.TopIndex;
      //
      ApagaCompromisso( nCompromisso, False );
      AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
      SelecionaPrimeiroCompromisso(0,nTopIndex);
    end;
  end;
end;

procedure TDlgCalendarioMes.AnotaesConcluso1Click(Sender: TObject);
var nCompromisso, nTopIndex: integer;
begin
  if gridComp.FocusedNode<>nil then begin
    nCompromisso := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    nTopIndex := gridComp.TopIndex;
    DlgAgOpcoes := TDlgAgOpcoes.Create(Self);
    DlgAgOpcoes.MM_ConcluidoAnotacoes.Text := gridComp.GetFieldValue(gridComp.FocusedNode,'CONCLUIDO_ANOTACOES','');
    if gridComp.GetFieldValue(gridComp.FocusedNode,'DATACONCLUSAO',0)=0 then
      DlgAgOpcoes.ME_DataConclusao.Date := Date
    else DlgAgOpcoes.ME_DataConclusao.Date := gridComp.GetFieldValue(gridComp.FocusedNode,'DATACONCLUSAO',0);
    DlgAgOpcoes.QuemChamou := 'DlgCalendarioMes';
    DlgAgOpcoes.CompromissoAtual := nCompromisso;
    DlgAgOpcoes.ShowModal;
    if DlgAgOpcoes.bmrOK then begin
      AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
      SelecionaPrimeiroCompromisso(nCompromisso, nTopIndex);
    end;
    DlgAgOpcoes.Release;
  end;
end;

procedure TDlgCalendarioMes.FormShow(Sender: TObject);
var dia, mes, ano: word;
begin
  inherited;
	lbEstadoForm.Caption := formatdatetime('dddd, mmmm dd, yyyy', DMProjeto.dDataSistema);
  DlgCalendarioMes := Self;
  //
  DecodeDate(Date,ano,mes,dia);
  Lixeira.FrameIndex := 9;
  // Seta o usuário destino para o que está agendando
  if not DMAgenda.C_Usuarios.Active then
    DMAgenda.C_Usuarios.open;

  DMAgenda.C_Usuarios.Locate('USUARIO', DMProjeto.nFuncionario, []);
  DF_UsuarioDestino.LookupKeyValue := DMAgenda.C_Usuarios.FieldByName('USUARIO').AsInteger;
  AnoSelecionado := ano;
  MesSelecionado := mes+1; {para atualizar pela primeira vez}
  DiaSelecionado := dia;
  AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,Date);
end;

procedure TDlgCalendarioMes.rblbCategoriaPrint(Sender: TObject);
begin
  inherited;
  if (Q_RelatorioCOR_FONTE.Value<>'')and(Q_RelatorioCOR.Value<>'') then begin
    rblbCategoria.Font.Color := StringToColor(Q_RelatorioCOR_FONTE.Value);
    rblbCategoria.Color := StringToColor(Q_RelatorioCOR.Value);
  end;
end;

procedure TDlgCalendarioMes.rbGroupBeforePrint(Sender: TObject);
begin
  inherited;
  with Q_Relatorio do begin
    rbGroup.Visible := False;
    if (TurnoAtual<>'M') and (DMAgenda.TurnoDaHoraInteira(FieldByName('HORARIO').AsInteger)='M') then begin
      rblbTurno.Caption := 'MANHÃ';
      TurnoAtual := 'M';
      rbGroup.Visible := True;
    end;
    if (TurnoAtual<>'T') and (DMAgenda.TurnoDaHoraInteira(FieldByName('HORARIO').AsInteger)='T') then begin
      rblbTurno.Caption := 'TARDE';
      TurnoAtual := 'T';
      rbGroup.Visible := True;
    end;
    if (TurnoAtual<>'N') and (DMAgenda.TurnoDaHoraInteira(FieldByName('HORARIO').AsInteger)='N') then begin
      rblbTurno.Caption := 'NOITE';
      TurnoAtual := 'N';
      rbGroup.Visible := True;
    end;
    if (TurnoAtual<>'A') and (DMAgenda.TurnoDaHoraInteira(FieldByName('HORARIO').AsInteger)='A') then begin
      rblbTurno.Caption := 'MADRUGADA';
      TurnoAtual := 'A';
      rbGroup.Visible := True;
    end;
  end;
end;

procedure TDlgCalendarioMes.DF_UsuarioDestinoChange(Sender: TObject);
begin
  inherited;
  if not(UsuarioDestino = DF_UsuarioDestino.LookupKeyValue) then begin
    AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
    SelecionaPrimeiroCompromisso;
  end;
end;

procedure TDlgCalendarioMes.gridCompCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  // horários fora dos limites do usuário
  if not(AColumn.Index=gridCompIMAGEM.Index) and
   ((gridComp.GetFieldValue(ANode,'HORA_INI',0)<DMAgenda.C_UsuariosHORA_INI.Value)
    or (gridComp.GetFieldValue(ANode,'HORA_INI',0)>DMAgenda.C_UsuariosHORA_FIM.Value)) then begin
    AColor := $00EBEBEB;
  end;
  if (gridComp.GetFieldValue(ANode,'COR','')<>'')
    and(gridComp.GetFieldValue(ANode,'COR_FONTE','')<>'')
    and(AColumn.Index=gridCompASSUNTO.Index) then begin
    AColor := StringToColor(gridComp.GetFieldValue(ANode,'COR',''));
    AFont.Color := StringToColor(gridComp.GetFieldValue(ANode,'COR_FONTE',''));
  end;
end;

procedure TDlgCalendarioMes.dtMesesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var dData: TDateTime;
begin
  inherited;
  if ((Source is TTS_QDBGrid) and (dtMeses.DateAtPos(X,Y,dData))) then begin
    if (TTS_QDBGrid(Source).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0)>0) and
      not(CompromissoArrastado.HasChildren) then Accept := True
    else Accept := False;
  end else Accept := False;
end;

procedure TDlgCalendarioMes.dtMesesDrawCellParams(Sender: TObject;
  CellDate: TDateTime; var Options: TCalendarDrawOptions; var FontColor,
  BkgndColor: TColor);
begin
  inherited;
  with C_CompQuantidade do begin
    if C_CompQuantidade.Active then
      if Locate('DATA',CellDate,[]) then
        if FieldByName('QUANT').AsInteger>0 then
          BkgndColor := DMAgenda.CorQuant(FieldByName('QUANT').AsInteger,5);
  end;
end;

procedure TDlgCalendarioMes.dtMesesChange(Sender: TObject);
var dDia, dMes, dAno: word;
begin
  inherited;
  AtualizaDiaDoUsuario(UsuarioDestino,dtMeses.Date);
  SelecionaPrimeiroCompromisso;
  // calendario
  DecodeDate(dtMeses.Date, dAno, dMes, dDia);
  Lbl_Dia.Caption := IntToStr(dDia);
  Lbl_DiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek(dtMeses.Date) );
  Lbl_Data.Caption := DMAgenda.DataPorExtenso(dtMeses.Date);
end;

procedure TDlgCalendarioMes.dtMesesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var dData: TDateTime;
    dDia, dMes, dAno: word;
begin
  inherited;
  // calendario
  if dtMeses.DateAtPos(X,Y,dData) then begin
    DecodeDate(dData, dAno, dMes, dDia);
    Lbl_Dia.Caption := IntToStr(dDia);
    Lbl_DiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek(dData) );
    Lbl_Data.Caption := DMAgenda.DataPorExtenso(dData);
  end;
end;

procedure TDlgCalendarioMes.MostrarAgrupamentos;
begin
  with gridComp do begin
    FullExpand;
    GotoFirst;
    while not(IsEof) do begin
      if (FocusedNode.HasChildren) then begin
        if (GetFieldValue(FocusedNode,'cfTURNO','')='0')
        or(GetFieldValue(FocusedNode,'cfTURNO','')='4') then
          FocusedNode.Collapse(False);
      end;
      GotoNext(False);
    end;
  end;
end;

procedure TDlgCalendarioMes.ckTurnoChange(Sender: TObject);
begin
  inherited;
  if ckTurno.Checked then begin
    gridCompcfTURNO.GroupIndex := 0;
    MostrarAgrupamentos;
  end else gridCompcfTURNO.GroupIndex := -1;
  gridCompcfTURNO.Visible := False;
end;

procedure TDlgCalendarioMes.C_CompcfTURNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value='0' then Text := 'Madrugada';//+DMAgenda.IntegerToHora(DMAgenda.C_UsuariosHORA_INI.Value,DMProjeto.bFormatoAMPM);
  if Sender.Value='1' then Text := 'Manhã';
  if Sender.Value='2' then Text := 'Tarde';
  if Sender.Value='3' then Text := 'Noite';
//  if Sender.Value='4' then Text := 'Após '+DMAgenda.IntegerToHora(DMAgenda.C_UsuariosHORA_FIM.Value,DMProjeto.bFormatoAMPM);
end;

procedure TDlgCalendarioMes.gridCompDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if (Source is TTS_QDBGrid)and(CompromissoArrastado<>nil)and(TTS_QDBGrid(Sender).GetNodeAt(X,Y)<>nil) then begin
    if (TTS_QDBGrid(Source).Name=TTS_QDBGrid(Sender).Name) and
      (TTS_QDBGrid(Sender).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0)>0) and
      (TTS_QDBGrid(Sender).GetFieldValue(TTS_QDBGrid(Sender).GetNodeAt(X,Y),'COMPROMISSO',0)<=0) and
      not(TTS_QDBGrid(Sender).GetNodeAt(X,Y).HasChildren) then Accept := True
    else Accept := False;
  end else Accept := False;
end;

procedure TDlgCalendarioMes.gridCompDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var nCompromisso, nTopIndex: integer;
begin
  inherited;
  with TTS_QDBGrid(Source) do begin
    nCompromisso := TTS_QDBGrid(Source).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0);
    nTopIndex := gridComp.TopIndex;
    //
    MudaHorarioCompromisso(
      nCompromisso,
      TTS_QDBGrid(Sender).GetNodeAt(X,Y),
      GetFieldValue(CompromissoArrastado,'HORA_FIM',0)
      -GetFieldValue(CompromissoArrastado,'HORA_INI',0) );
    AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
    //
    SelecionaPrimeiroCompromisso(nCompromisso, nTopIndex);
  end;
end;

procedure TDlgCalendarioMes.SelecionaPrimeiroCompromisso(nCompromisso: integer=0; nTopIndex: integer=-1);
begin
  // se é pra selecionar um compromisso determinado
  if nCompromisso>0 then begin
    gridComp.DataSource.DataSet.Locate('COMPROMISSO',nCompromisso,[]);
    if nTopIndex>-1 then gridComp.TopIndex := nTopIndex;
    exit;
  end;
  // se é pra selecionar o primeiro da lista
  with gridComp do begin
    GotoFirst;
    while not(IsEof) do begin
      if not(FocusedNode.HasChildren) then begin
        if (GetFieldValue(FocusedNode,'COMPROMISSO',0)>0)and(nCompromisso=0) then begin
          if nTopIndex>-1 then TopIndex := nTopIndex
          else TopIndex := FocusedNode.Index;
          FocusedNode.Focused := True;
          exit;
        end;
      end;
      GotoNext(False);
    end; // while
    DataSource.DataSet.Locate('HORA_INI',DMAgenda.C_UsuariosHORA_INI.Value,[]);
    if nTopIndex>-1 then TopIndex := nTopIndex;
  end; // with
end;

procedure TDlgCalendarioMes.MudaHorarioCompromisso(nCompromisso: integer; NodeDestino: TdxTreeListNode; nIntervalo: integer);
var horaIni, horaFim: integer;
begin
  horaIni := gridComp.GetFieldValue(NodeDestino,'HORA_INI',0);
  horaFim := horaIni+nIntervalo;
  if horaFim>1439 then horaFim := 1439;
  with Q_SQL do begin
    Close;
    SQL.Text := 'Update Compromissos Set Horario='+IntToStr(horaIni)+','+
      'Horario_Final='+IntToStr(horaFim)+' '+
      'Where Compromisso='+IntToStr(nCompromisso);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
end;

procedure TDlgCalendarioMes.gridCompStartDrag(Sender: TObject;
  var DragObject: TDragObject);
var a: TBaseDragControlObject;
begin
  inherited;
  CompromissoArrastado := TTS_QDBGrid(Sender).FocusedNode;
end;

procedure TDlgCalendarioMes.dtMesesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var dData: TDateTime;
begin
  inherited;
  if (dtMeses.DateAtPos(X,Y,dData))and(CompromissoArrastado<>nil) then begin
    MudaDataCompromisso( TTS_QDBGrid(Source).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0), dData);
    AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dData);
    dtMeses.SetFocus;
  end;
end;

procedure TDlgCalendarioMes.MudaDataCompromisso(nCompromisso: integer; dData: TDateTime);
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'Update Compromissos Set Data='+QuotedStr(FormatDateTime('mm/dd/yyyy',dData))+' '+
      'Where Compromisso='+IntToStr(nCompromisso);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
end;

procedure TDlgCalendarioMes.NovoCompromisso(dData:TDateTime; nUsuarioDestino, nHorario, nTarefa, nFavorecido: Variant);
var nIntervaloMinutos: integer;
begin
  if DMAgenda.C_Usuarios.Locate('USUARIO',nUsuarioDestino,[]) then
    nIntervaloMinutos := DMAgenda.C_UsuariosINTERVALO_MINUTOS.Value
  else nIntervaloMinutos := 30;
  with DMProjeto do begin
    SetParametrosForm([null, dData, nUsuarioDestino, nHorario, nTarefa, nFavorecido, nIntervaloMinutos]);
    CriarForm('FrmCompromissos', Self, True);
  end;
end;

procedure TDlgCalendarioMes.ApagaCompromisso(nCompromisso: integer; bFisicamente: boolean=True);
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
  // Atualiza Lixeira
  Lixeira.FrameIndex := 0;
  Lixeira.Animate := True;
end;

procedure TDlgCalendarioMes.ConfirmaCompromisso(nCompromisso: integer);
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'Update Compromissos Set Concluido='+QuotedStr('S')+' '+
      'Where Compromisso='+IntToStr(nCompromisso);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
end;

procedure TDlgCalendarioMes.gridCompColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  Allow := False;
end;

procedure TDlgCalendarioMes.btAnotacoesClick(Sender: TObject);
begin
  inherited;
  if ppmMostrar.Checked then
    gridComp.OptionsView := gridComp.OptionsView - [edgoPreview]
  else
    gridComp.OptionsView := gridComp.OptionsView + [edgoPreview];
  ppmMostrar.Checked := not ppmMostrar.Checked;
end;

procedure TDlgCalendarioMes.gridCompChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if (gridComp.GetFieldValue(Node,'COMPROMISSO',0)>0)and not(Node.HasChildren) then begin
    Memo_Descricao.Lines.Clear;
    Memo_Descricao.Lines.Add(gridComp.GetFieldValue(Node,'DESCRICAO', ''));
  end else
  	Memo_Descricao.Lines.Clear;
end;

procedure TDlgCalendarioMes.LixeiraDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var nTopIndex: integer;
begin
  inherited;
  if (CompromissoArrastado<>nil) then begin
    nTopIndex := gridComp.TopIndex;
    //
    ApagaCompromisso(TTS_QDBGrid(Source).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0));
    AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
    SelecionaPrimeiroCompromisso(0,nTopIndex);
  end;
end;

procedure TDlgCalendarioMes.LixeiraDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if (Source is TTS_QDBGrid) then begin
    if (TTS_QDBGrid(Source).GetFieldValue(CompromissoArrastado,'COMPROMISSO',0)>0) and
      not(CompromissoArrastado.HasChildren) then Accept := True
    else Accept := False;
  end else Accept := False;
end;

procedure TDlgCalendarioMes.LixeiraFrameChanged(Sender: TObject);
begin
  inherited;
  if Lixeira.FrameIndex = 9 then
    Lixeira.Animate := False;
end;

procedure TDlgCalendarioMes.NovoCompromisso1Click(Sender: TObject);
begin
  inherited;
  NovoCompromisso(dtMeses.Date,DF_UsuarioDestino.LookupKeyValue,C_CompHora_Ini.Value,null,null);
end;

procedure TDlgCalendarioMes.gridCompDblClick(Sender: TObject);
var nAux, nTopIndex: integer;
begin
  inherited;
  nTopIndex := gridComp.TopIndex;
  if gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0)>0 then begin
    nAux := gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0);
    DMProjeto.SetParametrosForm( [ nAux ] );
    DMProjeto.CriarForm('FRMCOMPROMISSOS',Self, True);
    //AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
    SelecionaPrimeiroCompromisso(nAux, nTopIndex);
  end else begin
    nAux := gridComp.GetFieldValue(gridComp.FocusedNode,'HORA_INI',0);
    NovoCompromisso(dtMeses.Date,DF_UsuarioDestino.LookupKeyValue,nAux,null,null);
    //AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
    SelecionaPrimeiroCompromisso(0,nTopIndex);
  end;
end;

procedure TDlgCalendarioMes.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMAgenda.IntegerToHora(Q_RelatorioHORARIO.Value,DMProjeto.bFormatoAMPM)+
    ' às '+DMAgenda.IntegerToHora(Q_RelatorioHORARIO_FINAL.Value,DMProjeto.bFormatoAMPM);
end;

procedure TDlgCalendarioMes.dtMesesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var dData:TDateTime;
begin
  inherited;
  if (dtMeses.DateAtPos(X,Y,dData)) then
    dtMeses.Date := dData;
end;


procedure TDlgCalendarioMes.MostraDiaSelecionadoNoCalendario(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var dData: TDateTime;
begin
  inherited;
  dData := EncodeDate(AnoSelecionado, MesSelecionado, DiaSelecionado);
  // mostra a indicacao do dia selecionado abaixo do calendario
  Lbl_Dia.Caption := IntToStr(DiaSelecionado);
  Lbl_DiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek(dData) );
  Lbl_Data.Caption := DMAgenda.DataPorExtenso(dData);
end;


procedure TDlgCalendarioMes.gridCompKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in Shift)and((Key=Ord('A'))or(Key=Ord('a'))) then begin
{    if btAnotacoes.Checked then Adrianox
      btAnotacoes.Checked := False
    else btAnotacoes.Checked := True;
    btAnotacoesClick(Sender);}
  end;
end;

procedure TDlgCalendarioMes.C_CompASSUNTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
  if C_CompHORA_INI_REAL.AsVAriant<>null then
    if C_CompHORA_INI_REAL.Value<>C_CompHORA_INI.Value then begin
      Text := '('+DMAgenda.IntegerToHora(C_CompHORA_INI_REAL.Value,DMProjeto.bFormatoAMPM)+') '+Sender.AsString;
    end;
end;

procedure TDlgCalendarioMes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'USUARIOS' then
    dtMesesChange(TObject(dtMeses))
  else if UpperCase(LastDataObject.TableName) = 'COMPROMISSOS' then begin
    AtualizaDiaDoUsuario(DF_UsuarioDestino.LookupKeyValue,dtMeses.Date);
	  SelecionaPrimeiroCompromisso(LastDataObject.ObjectKey);
  end;
end;

procedure TDlgCalendarioMes.Copiar1Click(Sender: TObject);
begin
  inherited;
  with Memo_Descricao do
    if Length(SelText)>0 then CopyToClipboard;
end;

procedure TDlgCalendarioMes.SelecionarTudo1Click(Sender: TObject);
begin
  inherited;
  Memo_Descricao.SelectAll;
end;

procedure TDlgCalendarioMes.FormCreate(Sender: TObject);
begin
  inherited;
	Meses[1] := 31;
  Meses[2] := 29;
  Meses[3] := 31;
  Meses[4] := 30;
  Meses[5] := 31;
  Meses[6] := 30;
  Meses[7] := 31;
  Meses[8] := 31;
  Meses[9] := 30;
  Meses[10] := 31;
  Meses[11] := 30;
  Meses[12] := 31;
  if DMAgenda = nil then
    Application.CreateForm(TDMAgenda, DMAgenda);
end;

procedure TDlgCalendarioMes.rblbTurnoPrint(Sender: TObject);
begin
  inherited;
  if UpperCase(Copy(rblbTurno.Caption,1,1)) = 'M' then
		 rblbTurno.Color := $00CEEFFF
  else if UpperCase(Copy(rblbTurno.Caption,1,1)) = 'T' then
		 rblbTurno.Color := $00F7EBDE
  else
     rblbTurno.Color := $00DEE7F7;
end;

procedure TDlgCalendarioMes.ppmCompromissosPopup(Sender: TObject);
begin
  inherited;
	ppmAlterar.Enabled 		:= not C_CompCompromisso.IsNull;
  ppmConfirmar.Enabled 	:= (not C_CompCompromisso.IsNull) and (C_CompConcluido.Value<>'S') and (C_CompDesativado.Value<>'S');
  ppmCancelar.Enabled 	:= (not C_CompCompromisso.IsNull) and (C_CompDesativado.Value<>'S');
  ppmApagar.Enabled 		:= not C_CompCompromisso.IsNull;
  ppmMostrar.Enabled 		:= not C_CompCompromisso.IsNull;
  ppmAnotacoes.Enabled 	:= not C_CompCompromisso.IsNull;
end;

procedure TDlgCalendarioMes.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatdatetime('dddd, dd " de " mmmm " de " yyyy', dtMeses.Date);
end;

end.

// Manhã: $00CEEFFF
// Tarde: $00F7EBDE
// Noite: $00DEE7F7
