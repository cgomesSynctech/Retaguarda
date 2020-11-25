unit Dlg_AlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, TS_Edit, DB, IBCustomDataSet, IBQuery;

type
  TDlgAlterarSenha = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dfAtual: TTS_Edit;
    dfNovo: TTS_Edit;
    dfConfirmar: TTS_Edit;
    Q_SQL: TIBQuery;
    procedure btGravarClick(Sender: TObject);
    Function ValidarSenha: Boolean;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAlterarSenha: TDlgAlterarSenha;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgAlterarSenha.btGravarClick(Sender: TObject);
begin
  inherited;
  If ValidarSenha() Then
    Close;
  dfNovo.Text := '';
  dfAtual.Text := '';
  dfConfirmar.Text := '';
  ActiveControl := dfAtual;
end;

Function TDlgAlterarSenha.ValidarSenha;
Var sNovaSenha: String;
Begin
 If (DMProjeto.sLoginPass <> UpperCase(dfAtual.Text)) Then Begin
    result := False;
    DlgMsg.ShowMsg( 50, ['Senha Atual Não Confere!']);
 End Else if (dfConfirmar.Text <> dfNovo.Text) Then Begin
    result := False;
    DlgMsg.ShowMsg( 50, ['Nova Senha Não Confere!']);
 End Else Begin
   Criptografia(dfNovo.Text,'','',sNovaSenha);
   With Q_Sql Do Begin
     Close;
     Sql.Text := 'UPDATE USUARIOS SET LOGINPASS = :LOGINPASS WHERE LOGINNAME = :LOGINNAME ';
     ParamByName('LOGINPASS').AsString := sNovaSenha;
     ParamByName('LOGINNAME').AsString := DMProjeto.sLoginName;
     ExecSql;
     DlgMsg.ShowMsg( 50, ['Senha Alterada com Sucesso!']);
     result := true;
   End;
 End;

End;


procedure TDlgAlterarSenha.FormShow(Sender: TObject);
begin
  inherited;
  FormsComponent.Caption := 'Alterar Senha, '+ DMProjeto.sLoginName;
end;

end.
