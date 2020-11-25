unit Dlg_AtualizarPrecosCalculados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgAtualizarPrecosCalculados = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    lbWait: TTS_Label;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAtualizarPrecosCalculados: TDlgAtualizarPrecosCalculados;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDlgAtualizarPrecosCalculados.btGravarClick(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg( 565 ) <> 100 then Exit;
  try
    Screen.Cursor := crHourGlass;
    lbWait.Visible := True;
    Application.ProcessMessages;
    DMProjeto.Q_SQL.Close;
    DMProjeto.Q_SQL.SQL.Text := 'execute procedure PP_ATUALIZARPRECOCALCULADO';
    DMProjeto.Q_SQL.ExecSQL;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Screen.Cursor := crDefault;
    lbWait.Visible := False;
    DlgMsg.ShowMsg( 8046 );
    Close;  
  except
    on e:exception do begin
      Screen.Cursor := crDefault;
      lbWait.Visible := False;
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg( 50, ['ERRO'+#13#10+e.message] );
    end;
  end;
end;

end.
