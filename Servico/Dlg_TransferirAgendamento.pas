unit Dlg_TransferirAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, DB, DBClient, Provider, IBCustomDataSet,
  IBQuery, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_ButtonEdit, TS_EditFavorecido;

type
  TDlgTransferirAgendamento = class(TFrmModeloCadastros)
    lbUsuario_: TTS_Label;
    lcbUsuario_: TTS_LookupComboBox;
    lbUsuario: TTS_Label;
    df_funcionario: TTS_EditFavorecido;
    procedure FormCreate(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    sAgend : string;
  public
    { Public declarations }
  end;

var
  DlgTransferirAgendamento: TDlgTransferirAgendamento;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDlgTransferirAgendamento.FormCreate(Sender: TObject);
begin
  inherited;
  DlgTransferirAgendamento := Self;
end;

procedure TDlgTransferirAgendamento.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
{  C_Usuarios.Close;
  Q_Usuarios.ParamByName('usr').AsInteger := DMProjeto.GetParametrosForm(0);
  C_Usuarios.Open;
}  
//  df_funcionario.ID := C_UsuariosUSUARIO.AsInteger;
//  lcbUsuario.LookupKeyValue := C_UsuariosUSUARIO.AsInteger;
  sAgend := DMProjeto.GetParametrosForm(1);
end;

procedure TDlgTransferirAgendamento.btGravarClick(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg( 5883 ) <> 100 then Exit;
  try
    DMProjeto.Q_SQL.SQL.Text := ' update agendamentos set funcionario = ' + IntToStr(df_funcionario.ID) +
                                ' where agendamento in (' + sAgend + ')';
    DMProjeto.Q_SQL.ExecSQL;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    DlgMsg.ShowMsg( 50, ['Agendamentos transferidos.' ]);
    Close;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg( 50, ['ERRO' + #13#10 + e.message] );
    end;
  end;
end;

end.
