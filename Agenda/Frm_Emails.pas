unit Frm_Emails;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, 
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_DBLookupComboBox, TS_Label, TS_DBMemo, TS_ListBox, db,
  TS_GroupBox, TS_LastDataObject, TS_Bevel, TS_MaxPanel,
  CheckLst, TS_CheckListBox, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  dxEditor, jpeg, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  Animate, GIFCtrl, dxBar, teCtrls, TS_EffectsPanel;

type
  arrayofstrings = array of string;
  TFrmEmails = class(TFrmPadrao)
    OD_Arquivos: TOpenDialog;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    DF_Assunto: TTS_DBEdit;
    DF_Mensagem: TTS_DBMemo;
    DF_UsuDestino: TTS_DBEdit;
    DF_UsuOrigem: TTS_DBEdit;
    GB_Anexos: TTS_GroupBox;
    btAdicionarAnexos: TTS_SpeedButton;
    ListArquivos: TTS_ListBox;
    procedure btAdicionarAnexosClick(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListArquivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AtualizaCampoNaTabela;
  public
    { Public declarations }
  end;

var
  FrmEmails: TFrmEmails;

implementation

uses DM_Emails, DM_Projeto;

{$R *.DFM}

procedure TFrmEmails.AtualizaCampoNaTabela;
var i: integer;
    todos: string;
begin
  todos := '';
  for i:=0 to ListArquivos.Items.Count-1 do begin
    AppendStr(todos, ListArquivos.Items[i] + ';');
  end;
  if not(DMEmails.C_Tabela.State in [dsInsert]) then
    DMEmails.C_Tabela.Edit;
  DMEmails.C_TabelaANEXO.Value := copy(todos, 1, length(todos)-1);
end;

procedure TFrmEmails.btAdicionarAnexosClick(Sender: TObject);
var i, j: integer;
    existe: boolean;
begin
  inherited;
  if (OD_Arquivos.Execute) then begin
    for i:=0 to OD_Arquivos.Files.Count-1 do begin
      existe := false;
      for j:=0 to ListArquivos.Items.Count-1 do
        if (OD_Arquivos.Files[i] = ListArquivos.Items[j] ) then begin
          existe := true;
          break;
        end;
        if not(existe) then
          ListArquivos.Items.Add(OD_Arquivos.Files[i]);
    end;
    AtualizaCampoNaTabela;
  end;
end;

procedure TFrmEmails.FormComponentAfterScroll(Sender: TObject);

procedure DividePalavra(texto: string; divisor: char; var palavras: arrayofstrings);
var i, tam: integer;
    aux_str: string;
begin
  aux_str := '';
  i := 1;
  tam := 0;
  while (i<=length(texto)) do begin
    if (texto[i] = divisor) or (i=length(texto)) then begin
      if (i=length(texto)) then AppendStr(aux_str, texto[i]);
      Inc(tam);
      SetLength(palavras, tam);
      palavras[tam-1] := aux_str;
      aux_str := '';
    end else begin
      AppendStr(aux_str, texto[i]);
    end;
    Inc(i);
  end; //while
end;

var i: integer;
    aux: arrayofstrings;
begin
  inherited;
  if (Estado = fsNavegacao) or (Estado = fsPesquisa) or (Estado = fsLoading) then begin
    DividePalavra(DMEmails.C_TabelaANEXO.Value, ';', aux);
    ListArquivos.Clear;
    for i:=0 to length(aux)-1 do begin
      ListArquivos.Items.Add(aux[i]);
    end;
  end;
end;

procedure TFrmEmails.FormActivate(Sender: TObject);
begin
  inherited;
  with DMProjeto do
    if ExisteParametrosForm then begin
      if GetParametrosForm(0) = -5 then begin
        Self.Localizar('Select * From Emails', 'Where compromisso=' + IntToStr(GetParametrosForm(1)));
        FormatoTabelaClick(TObject(FormatoTabela));
      end;
      LimparParametrosForm;
    end;
end;

procedure TFrmEmails.ListArquivosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: integer;
begin
  inherited;
  if Key = VK_DELETE then begin
    i:= 0;
    while (i<ListArquivos.Items.Count) do
      if (ListArquivos.Selected[i]) then begin
        ListArquivos.Items.Delete(i);
      end else Inc(i);
    AtualizaCampoNaTabela;
  end;
end;

end.
