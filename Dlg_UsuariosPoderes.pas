unit Dlg_UsuariosPoderes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, dxEditor, dxEdLib, dxDBELib, TS_DBComboBox, DB, DBClient,
  Provider, IBCustomDataSet, IBQuery, IBUpdateSQL, TS_PopupEdit,
  TS_DBImageEdit, dxDBEdtr, TS_DBLookupComboBox, TS_LookupComboBox;

type
  TDlgUsuariosPoderes = class(TFrmModeloCadastros)
    pnUsuario: TTS_Panel;
    Q_Usuarios: TIBQuery;
    P_Usuarios: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosDs: TDataSource;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    TS_Label1: TTS_Label;
    pnPoderes: TTS_Panel;
    Q_Permissoes: TIBQuery;
    P_Permissoes: TDataSetProvider;
    C_Permissoes: TClientDataSet;
    C_PermissoesDs: TDataSource;
    C_PermissoesDESCRICAO: TStringField;
    C_PermissoesPERMISSAO: TIntegerField;
    pnPermissao: TTS_Panel;
    GridePermissao: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    pnAutoriza: TTS_Panel;
    C_Poderes: TClientDataSet;
    C_PoderesDs: TDataSource;
    GridePoderes: TTS_QDBGrid;
    U_Permissoes: TIBUpdateSQL;
    Q_Poderes: TIBQuery;
    P_Poderes: TDataSetProvider;
    U_Poderes: TIBUpdateSQL;
    C_PoderesUSUARIOPODER: TIntegerField;
    C_PoderesUSUARIO: TIntegerField;
    C_PoderesPERMISSAO: TStringField;
    GridePoderesUSUARIOPODER: TdxDBGridMaskColumn;
    GridePoderesUSUARIO: TdxDBGridMaskColumn;
    GridePoderesPERMISSAO: TdxDBGridMaskColumn;
    GridePoderesDescricao: TdxDBGridColumn;
    Q_MasterDS: TDataSource;
    C_UsuariosQ_Poderes: TDataSetField;
    sbPermite: TTS_SpeedButton;
    sbNega: TTS_SpeedButton;
    cmbCartao: TTS_LookupComboBox;
    Q_DescPermissoes: TIBQuery;
    Q_DescPermissoesDs: TDataSource;
    Q_DescPermissoesPERMISSAO: TIntegerField;
    Q_DescPermissoesDESCRICAO: TIBStringField;
    Q_DescPermissoesSIGLA: TIBStringField;
    C_PodereslkpPermisao: TStringField;
    C_PermissoesSIGLA: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure sbPermiteClick(Sender: TObject);
    procedure cmbCartaoSelectionChange(Sender: TObject);
    procedure GridePermissaoEnter(Sender: TObject);
    procedure GridePermissaoExit(Sender: TObject);
    procedure GridePoderesExit(Sender: TObject);
    procedure GridePoderesEnter(Sender: TObject);
    procedure GridePermissaoDblClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure GridePoderesDblClick(Sender: TObject);
    procedure sbNegaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    nId: Integer;
    procedure AdicionaPoder;
    procedure RetiraPoder;
  public
    { Public declarations }
  end;

var
  DlgUsuariosPoderes: TDlgUsuariosPoderes;

implementation

uses DM_Projeto, Form_Padrao;

{$R *.dfm}

procedure TDlgUsuariosPoderes.AdicionaPoder;
Begin
  Dec(nId);
  with C_Poderes do Begin
    Append;
    FieldByName('Permissao').AsString := C_Permissoes.FieldByName('Sigla').AsString;
    FieldByName('Usuario').AsInteger  := C_UsuariosUsuario.Value;
    FieldByName('UsuarioPoder').AsInteger  := nId;
    Post;
  End;
  C_Permissoes.Delete;
  GridePermissao.SetFocus;
End;

procedure TDlgUsuariosPoderes.RetiraPoder;
Begin
  Dec(nId);
  with C_Permissoes do Begin
    Append;
    FieldByName('Sigla').AsString := C_Poderes.FieldByName('Permissao').AsString;
    FieldByName('DESCRICAO').AsString := C_Poderes.FieldByName('lkpPermisao').AsString;
    FieldByName('Permissao').Value := nId;
    Post;
  End;
  C_Poderes.Delete;
  GridePoderes.SetFocus;
End;



procedure TDlgUsuariosPoderes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Poderes.Close;
  C_Poderes.ProviderName := 'P_Poderes';
  C_Usuarios.Close;
  C_Usuarios.Open;
  Q_DescPermissoes.Close;
  Q_DescPermissoes.Open;
  ActiveControl := cmbCartao;
  cmbCartao.DroppedDown := True;
  nId:=0;
end;

procedure TDlgUsuariosPoderes.sbPermiteClick(Sender: TObject);
begin
  inherited;
//  If Sender.ClassName <> '' Then Begin
//    DlgMsg.ShowMsg(50, ['É necessário que exista uma PERMISSÃO selecionada!']);
//    GridePermissao.SetFocus;
//    Exit;
//  End;
  AdicionaPoder;
end;

procedure TDlgUsuariosPoderes.cmbCartaoSelectionChange(Sender: TObject);
begin
  inherited;
  Q_DescPermissoes.Close;
  Q_DescPermissoes.Open;
  Q_Permissoes.Close;
  Q_Permissoes.Params[0].Value := C_UsuariosUsuario.Value;
  C_Permissoes.Close;
  C_Permissoes.FetchParams;
  C_Permissoes.Open;
end;

procedure TDlgUsuariosPoderes.GridePermissaoEnter(Sender: TObject);
begin
  inherited;
  sbPermite.Enabled := True;
end;

procedure TDlgUsuariosPoderes.GridePermissaoExit(Sender: TObject);
begin
  inherited;
//  sbPermite.Enabled := False;
end;

procedure TDlgUsuariosPoderes.GridePoderesExit(Sender: TObject);
begin
  inherited;
  sbNega.Enabled := False;
end;

procedure TDlgUsuariosPoderes.GridePoderesEnter(Sender: TObject);
begin
  inherited;
  sbNega.Enabled := True;
end;

procedure TDlgUsuariosPoderes.GridePermissaoDblClick(Sender: TObject);
begin
  inherited;
  AdicionaPoder;
end;

procedure TDlgUsuariosPoderes.btGravarClick(Sender: TObject);
begin
  inherited;

   try
    C_Poderes.First;
    While Not C_Poderes.Eof do Begin
       If C_Poderes.State in [dsEdit,dsInsert] Then
          C_Poderes.Post;
      C_Poderes.Next;
    End;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    if (C_Poderes.ChangeCount > 0) then 
      C_Poderes.ApplyUpdates(-1);
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    except
       on E: Exception do begin
         Application.MessageBox(Pchar(e.message),'Aviso',MB_OK);
         if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Rollback;
        end;
    end;
end;

procedure TDlgUsuariosPoderes.GridePoderesDblClick(Sender: TObject);
begin
  inherited;
  RetiraPoder;
end;

procedure TDlgUsuariosPoderes.sbNegaClick(Sender: TObject);
begin
  inherited;
  RetiraPoder;
end;

procedure TDlgUsuariosPoderes.FormCreate(Sender: TObject);
begin
  inherited;
  DlgUsuariosPoderes := Self;
end;

end.
