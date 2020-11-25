unit Dlg_AtualizarEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, IBCustomDataSet, IBStoredProc, ComCtrls;

type
  TDlgAtualizarEstoque = class(TFrmModeloCadastros)
    spAtualizarAcesso: TIBStoredProc;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAtualizarEstoque: TDlgAtualizarEstoque;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgAtualizarEstoque.btGravarClick(Sender: TObject);
begin
  inherited;
  Try
   //Animate.Active:=True;
    spAtualizarAcesso.ExecProc;
   // Animate.Active:=False;
    DlgMsg.ShowMsg(50,['Atualização Realizada com Sucesso!']);
  Except
    On E: Exception do
       DlgMsg.ShowMsg(50,[pChar('Erro na Atualização!'+E.Message)]);
  End;
end;

end.
