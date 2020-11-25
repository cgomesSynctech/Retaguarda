unit Dlg_DescricaoCompromissos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, DlgMsg, Menus, StdCtrls, Buttons, TS_BitBtn,
  TS_Memo, ComCtrls, IBSQL, ImgList, IBCustomDataSet, IBQuery, Provider,
  Db, DBClient, FRM_MODELOCADASTROS, TS_SpeedButton, ExtCtrls, 
  TS_LastDataObject, TS_Bevel, TS_MaxPanel, FormsComponent,
  TS_Label, TS_Image, dxfLabel, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
  TS_PopupMenu, Variants, dxExEdtr, BTOdeum, Placemnt;

type
  Cores_Comp = record
    Cor : TColor;
    Cor_Fonte : TColor;
  end;

  TDlgDescricaoCompromissos = class(TFrmModeloCadastros)
    IL_Compromissos: TImageList;
    C_Comp: TClientDataSet;
    Q_CompProvider: TDataSetProvider;
    Q_Comp: TIBQuery;
    gridComp: TTS_QDBGrid;
    C_CompDS: TDataSource;
    C_CompCOMPROMISSO: TIntegerField;
    C_CompASSUNTO: TStringField;
    C_CompDESCRICAO: TStringField;
    C_CompORIGEMNOME: TStringField;
    C_CompDESTINONOME: TStringField;
    C_CompUSUORIGEM: TIntegerField;
    C_CompUSUDESTINO: TIntegerField;
    C_CompDATA: TDateField;
    C_CompHORARIO: TIntegerField;
    C_CompHORARIO_FINAL: TIntegerField;
    C_CompCONCLUIDO: TStringField;
    C_CompDESATIVADO: TStringField;
    C_CompDATACONCLUSAO: TDateField;
    C_CompCONCLUIDO_ANOTACOES: TStringField;
    C_CompCATEGORIA: TStringField;
    C_CompCOR: TStringField;
    C_CompCOR_FONTE: TStringField;
    C_CompCONFIG_ID: TIntegerField;
    C_CompCLIENTE: TStringField;
    gridCompCOMPROMISSO: TdxDBGridMaskColumn;
    gridCompASSUNTO: TdxDBGridMaskColumn;
    gridCompDESCRICAO: TdxDBGridMaskColumn;
    gridCompORIGEMNOME: TdxDBGridMaskColumn;
    gridCompDESTINONOME: TdxDBGridMaskColumn;
    gridCompUSUORIGEM: TdxDBGridMaskColumn;
    gridCompUSUDESTINO: TdxDBGridMaskColumn;
    gridCompDATA: TdxDBGridDateColumn;
    gridCompHORARIO: TdxDBGridMaskColumn;
    gridCompHORARIO_FINAL: TdxDBGridMaskColumn;
    gridCompDATACONCLUSAO: TdxDBGridDateColumn;
    gridCompCONCLUIDO_ANOTACOES: TdxDBGridMaskColumn;
    gridCompCATEGORIA: TdxDBGridMaskColumn;
    gridCompCOR: TdxDBGridMaskColumn;
    gridCompCOR_FONTE: TdxDBGridMaskColumn;
    gridCompCONFIG_ID: TdxDBGridMaskColumn;
    gridCompCLIENTE: TdxDBGridMaskColumn;
    C_CompcfHORARIO_TOTAL: TStringField;
    gridCompHORARIO_TOTAL: TdxDBGridColumn;
    ppmGrid: TTS_PopupMenu;
    gridCompCONCLUIDO: TdxDBGridCheckColumn;
    gridCompDESATIVADO: TdxDBGridCheckColumn;
    Q_SQL: TIBQuery;
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C_CompcfHORARIO_TOTALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure gridCompCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
    Cores: array of Cores_Comp;
    TipoDaTela, sSelectInicial: string;
    CodTarefa, CodFavorecido, UsuarioDestino: integer;
    procedure CreateAnual(Dia, Mes, Ano, Usuario: integer);
    procedure CreateTarefas(Tarefa, UsuDestino: integer; caption_tarefa: string);
    procedure CreateCompFavorecidos(Favorecido: integer; caption_nomefav: string);
  public
    { Public declarations }
  end;

var
  DlgDescricaoCompromissos: TDlgDescricaoCompromissos;

implementation

uses DM_Projeto, DM_Agenda;

{$R *.DFM}

procedure TDlgDescricaoCompromissos.CreateAnual;
begin
  UsuarioDestino := DMProjeto.nFuncionario;

  btLimpar.Enabled := True;
  btGravar.Enabled := True;
  btLimpar.Visible := True;
  btGravar.Visible := True;
  //
  C_Comp.Close;
  C_Comp.CommandText := sSelectInicial+
    ' Where (c.Data = '+QuotedStr(FormatDateTime('mm/dd/yyyy',EncodeDate(Ano, Mes, Dia)))+')'+
    ' And (c.UsuDestino = ' + IntToStr(Usuario)+')'+
    ' And (c.DESATIVADO <> ' + QuotedStr('S') +')'+
    ' Order By c.HORARIO';
  C_Comp.Open;
end;

procedure TDlgDescricaoCompromissos.CreateTarefas;
begin
  UsuarioDestino := UsuDestino;

  Caption := caption_tarefa;
  btLimpar.Enabled := True;
  btGravar.Enabled := True;
  btLimpar.Visible := True;
  btGravar.Visible := True;
  //
  CodTarefa := Tarefa;
  C_Comp.Close;
  C_Comp.CommandText := sSelectInicial+
    ' Where c.TAREFA = '+IntToStr(Tarefa)+
    ' Order By c.DATA Desc, c.HORARIO';
  C_Comp.Open;
end;

procedure TDlgDescricaoCompromissos.CreateCompFavorecidos;
begin
  UsuarioDestino := DMProjeto.nFuncionario;

  Caption := caption_nomefav;
  btLimpar.Enabled := True;
  btGravar.Enabled := True;
  btLimpar.Visible := True;
  btGravar.Visible := True;
  //
  CodFavorecido := Favorecido;
  C_Comp.Close;
  C_Comp.CommandText := sSelectInicial+
    ' Where c.Cliente = '+IntToStr(CodFavorecido)+
//    ' And c.USUDESTINO = '+IntToStr(DMProjeto.nFuncionario)+   {condicao para mostrar os compromissos marcados com o funcionario que estah logado}
    ' Order By c.DATA Desc, c.HORARIO';
  C_Comp.Open;
end;

procedure TDlgDescricaoCompromissos.btLimparClick(Sender: TObject);
var nIntervaloMinutos: integer;
begin
  inherited;
  // Intervalo Minutos
  nIntervaloMinutos := 30;
  with Q_SQL do begin
    Close;
    SQL.Text := 'Select INTERVALO_MINUTOS From Usuarios Where USUARIO='+IntToStr(UsuarioDestino);
    Open;
    if (RecordCount>0) then
      if (Fields[0].AsInteger>0) then
        nIntervaloMinutos := Fields[0].AsInteger;
    Close;
  end;

  //
  with DMProjeto do begin
    if (TipoDaTela='TAREFAS') then begin
      SetParametrosForm( [ null,  // COMPROMISSO
                          Date, // DATA
                          UsuarioDestino, // Usuario Destino
                          0, // Horário
                          CodTarefa, // Tarefa
                          null, // Favorecido
                          nIntervaloMinutos ] );
    end else if (TipoDaTela='FAVORECIDOS') then begin
      SetParametrosForm( [ null,  // COMPROMISSO
                          Date, // DATA
                          UsuarioDestino,  // Usuario Destino (eu)
                          0, // Horário
                          null, // Tarefa
                          CodFavorecido, // Favorecido
                          nIntervaloMinutos ] );
    end else if (TipoDaTela='ANUAL') then begin
      SetParametrosForm( [ null,  // COMPROMISSO
                          Date, // DATA
                          UsuarioDestino,  // Usuario Destino (eu)
                          0, // Horário
                          null, // Tarefa
                          null, // Favorecido
                          nIntervaloMinutos ] );
    end;
    CriarForm('FRMCOMPROMISSOS', Self, true);
    if (TipoDaTela='TAREFAS') then
      CreateTarefas( CodTarefa, UsuarioDestino, Caption )
    else if (TipoDaTela='FAVORECIDOS') then
      CreateCompFavorecidos( CodFavorecido, Caption );
  end;
end;

procedure TDlgDescricaoCompromissos.btGravarClick(Sender: TObject);
begin
  inherited;
  if gridComp.FocusedNode<>nil then
    with DMProjeto do begin
      SetParametrosForm( [gridComp.GetFieldValue(gridComp.FocusedNode,'COMPROMISSO',0)] );
      CriarForm('FRMCOMPROMISSOS',Self, true);
      if (TipoDaTela='TAREFAS') then
        CreateTarefas( CodTarefa, UsuarioDestino, Caption )
      else if (TipoDaTela='FAVORECIDOS') then
        CreateCompFavorecidos( CodFavorecido, Caption );
    end;
end;

procedure TDlgDescricaoCompromissos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    if GetParametrosForm(0) = 'DlgCalendario' then begin
      TipoDaTela := 'ANUAL';
      CreateAnual(GetParametrosForm(1), GetParametrosForm(2), GetParametrosForm(3), GetParametrosForm(4));
    end;
    if GetParametrosForm(0) = 'DlgTarefas' then begin
      TipoDaTela := 'TAREFAS';
      CreateTarefas(GetParametrosForm(1), GetParametrosForm(3), GetParametrosForm(2));
    end;
    if GetParametrosForm(0) = 'Favorecidos' then begin
      TipoDaTela := 'FAVORECIDOS';
      CreateCompFavorecidos(GetParametrosForm(1), GetParametrosForm(2));
    end;
  end;
end;

procedure TDlgDescricaoCompromissos.FormCreate(Sender: TObject);
begin
  inherited;
  sSelectInicial := Q_Comp.SQL.Text;
end;

procedure TDlgDescricaoCompromissos.C_CompcfHORARIO_TOTALGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := DMAgenda.IntegerToHora(C_CompHORARIO.Value,DMProjeto.bFormatoAMPM)+' às '+
    			DMAgenda.IntegerToHora(C_CompHORARIO_FINAL.Value,DMProjeto.bFormatoAMPM);
  DisplayText := True;
end;

procedure TDlgDescricaoCompromissos.gridCompCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var cor, cor_fonte: string;
begin
  inherited;
  if (AColumn.Index=gridCompASSUNTO.Index)or(AColumn.Index=gridCompCATEGORIA.Index) then begin
    cor := ANode.Values[gridCompCOR.Index];
    cor_fonte := ANode.Values[gridCompCOR_FONTE.Index];
    if not((cor = '')or(cor_fonte = '')) then begin
      AFont.Color := StringToColor(cor_fonte);
      AColor := StringToColor(cor);
    end;
  end; // if AColumn
end;

procedure TDlgDescricaoCompromissos.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgLegendas', Self, True);
end;

end.
