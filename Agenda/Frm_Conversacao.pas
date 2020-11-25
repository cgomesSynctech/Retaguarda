unit Frm_Conversacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_ImageEdit, ComCtrls, ImgList, DB, IBCustomDataSet, IBQuery, Provider,
  DBClient;

const
  PM_Conversa = WM_User + 111;

type
  TFrmConversacao = class(TFrmModeloCadastros)
    mConversa: TRichEdit;
    TS_Panel1: TTS_Panel;
    Memo1: TMemo;
    cmbUsuario: TTS_ImageEdit;
    TS_Label1: TTS_Label;
    C_Usuarios: TClientDataSet;
    P_Usuarios: TDataSetProvider;
    Q_Usuarios: TIBQuery;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    ImageList1: TImageList;
    btEnviar: TTS_SpeedButton;
    Q_Conversa: TIBQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    BTBeeper1: TBTBeeper;
    Q_Aux: TIBQuery;
    C_UsuariosLOGADO: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    dData: TDateTime;
    sHora: string;
  protected
    procedure ConversaMsg(var Msg:TMessage); message PM_Conversa;
  public
    function EnviaMensagem:boolean;
  end;

var
  FrmConversacao: TFrmConversacao;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TFrmConversacao.ConversaMsg(var Msg:TMessage);
begin
  EnviaMensagem;
end;


function TFrmConversacao.EnviaMensagem;
var nConversa,nOrigem: integer;
    bRecebeu: boolean;
begin
  bRecebeu := false;
  Q_Conversa.SQL.text := 'select conversa as Chave from conversas '+
  'where para = :nUsuario and leu = ''N'' order by conversa';
  Q_Conversa.params[0].asinteger := DMProjeto.nFuncionario;
  Q_Conversa.open;
  while not Q_Conversa.eof do begin
    nConversa := Q_Conversa.FieldByName('chave').asinteger;

    if nConversa > 0 then begin
      Q_Aux.SQL.text := 'select c.de,c.descricao, u.loginname,c.hora from conversas c, usuarios u '+
      'where conversa = :nConversa and c.de = u.usuario';
      Q_Aux.params[0].asinteger := nConversa;
      Q_Aux.open;
      nOrigem := Q_Aux.FieldByName('de').asinteger;
      mConversa.Lines.Add('['+Q_Aux.FieldByName('hora').asstring+'] '+Q_Aux.FieldByName('loginname').asstring+' diz:');
      mConversa.SelAttributes.Assign(Memo1.Font);
      mConversa.Lines.Add(Q_Aux.FieldByName('descricao').asstring);

      Q_Aux.SQL.text := 'update conversas set leu = ''S'' '+
      'where conversa = :nConversa';
      Q_Aux.params[0].asinteger := nConversa;
      Q_Aux.execsql;

      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

      cmbUsuario.text := IntToStr(nOrigem);
      bRecebeu := true;
    end;
    Q_Conversa.next;
  end;
  if bRecebeu then begin
    Show;
  end;
  result := bRecebeu;
end;


procedure TFrmConversacao.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dData := DMProjeto.dDataSistema;
  C_Usuarios.close;
  C_Usuarios.open;
  cmbUsuario.Descriptions.Clear;
  cmbUsuario.Values.Clear;
  cmbUsuario.ImageIndexes.Clear;
  while not C_Usuarios.eof do begin
    if C_UsuariosUsuario.asinteger <> DMProjeto.nFuncionario then begin
      cmbUsuario.Descriptions.Add(C_UsuariosLoginName.value);
      cmbUsuario.Values.Add(C_UsuariosUsuario.asstring);
      if C_UsuariosLogado.value = 'S' then
        cmbUsuario.ImageIndexes.Add('0')
      else
        cmbUsuario.ImageIndexes.Add('1');
    end;
    C_Usuarios.next;
  end;
  C_Usuarios.first;

  cmbUsuario.text := cmbUsuario.Values[0];
  if EnviaMensagem then
    BTBeeper1.PlayDefaultSound;
end;

procedure TFrmConversacao.btEnviarClick(Sender: TObject);
begin
  inherited;
  if Memo1.Lines.text <> '' then begin
    sHora := TimeToStr(time);
  //  mConversa.Lines.Add(cmbUsuario.Descriptions[cmbUsuario.values.IndexOf(cmbUsuario.text)]+' diz:');
    mConversa.Lines.Add('['+sHora+'] '+DMProjeto.sLoginName+' fala com '+cmbUsuario.Descriptions[cmbUsuario.values.IndexOf(cmbUsuario.text)]+':');
    mConversa.SelAttributes.Assign(Memo1.Font);
  {  mConversa.SelAttributes.Name := Memo1.Font.Name;
    mConversa.SelAttributes.Color := Memo1.Font.color;}
    mConversa.Lines.Add(Memo1.Lines.text);

    Q_Conversa.SQL.text := 'insert into conversas(descricao,data,hora,de,para,leu) '+
    'values (:descricao,:data,:hora,:de,:para,:leu)';
    Q_Conversa.Params[0].asstring := Memo1.Lines.text; //mConversa.Lines[mConversa.Lines.count-1];
    Q_Conversa.Params[1].asdatetime := dData;
    Q_Conversa.Params[2].asstring := sHora;
    Q_Conversa.Params[3].asinteger := DMProjeto.nFuncionario;
    Q_Conversa.Params[4].asinteger := StrToInt(cmbUsuario.text);
    Q_Conversa.Params[5].asstring := 'N';
    Q_Conversa.ExecSQL;

    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Memo1.Lines.Clear;
    ActiveControl := Memo1;
  end;  
end;

procedure TFrmConversacao.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then begin
    btEnviarClick(self);
    key := #0;
  end;
end;

procedure TFrmConversacao.btLimparClick(Sender: TObject);
begin
  inherited;
  mConversa.Lines.clear;
end;

procedure TFrmConversacao.btGravarClick(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
    mConversa.Lines.SaveToFile(SaveDialog1.filename);
end;

procedure TFrmConversacao.btComando1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    mConversa.Lines.LoadFromFile(OpenDialog1.filename);
end;

end.
