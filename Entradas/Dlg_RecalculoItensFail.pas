unit Dlg_RecalculoItensFail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxfProgressBar,
  Placemnt, BTOdeum;

type
  TDlgRecalculoItensFail = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    pBar: TdxfProgressBar;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProgressoRecalc( pos, qtd : Integer);
  end;

var
  DlgRecalculoItensFail: TDlgRecalculoItensFail;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgRecalculoItensFail.TimerTimer(Sender: TObject);
begin
  inherited;
  Timer.Enabled := false;
  DMProjeto.RecalcularItensFail( ProgressoRecalc );
end;

procedure TDlgRecalculoItensFail.ProgressoRecalc( pos, qtd : Integer);
begin
  if pBar.Max <> Qtd then begin
    pBar.Max := Qtd;
    pBar.Position := 0;
  end;

  pBar.Position := pos;

end;


end.
 