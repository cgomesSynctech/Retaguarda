unit Dlg_FinalizarChamado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_Memo, FormsComponent, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, TS_DateTimePicker, TS_TimeEdit;

type
  TDlgFinalizarChamado = class(TFrmModeloCadastros)
    memoDefeito: TTS_Memo;
    lbDefeito: TTS_Label;
    lbHrEntrada: TTS_Label;
    hrEntrada: TTS_TimeEdit;
    lbDtEntrada: TTS_Label;
    dtEntrada: TTS_DateTimePicker;
    lbDtSaida: TTS_Label;
    dtSaida: TTS_DateTimePicker;
    lbHrSaida: TTS_Label;
    hrSaida: TTS_TimeEdit;
    TS_Label1: TTS_Label;
    lbCliente: TTS_Label;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFinal, sCliente : string;
    dEntrada, dSaida, hEntrada, hSaida : TDateTime;
  end;

var
  DlgFinalizarChamado: TDlgFinalizarChamado;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDlgFinalizarChamado.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgFinalizarChamado.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sFinal := '';
  dtEntrada.Date := Date;
  dtSaida.Date := Date;
  hrEntrada.Time := Now;
  hrSaida.Time := Now;
  lbCliente.Caption := sCliente;
end;

procedure TDlgFinalizarChamado.btGravarClick(Sender: TObject);
begin
  inherited;
  if memoDefeito.Lines.Text = '' then begin
    DlgMsg.ShowMsg( 513, ['Defeito Alegado'] );
    Exit;
  end;
  sFinal := memoDefeito.Lines.Text;
  dEntrada := dtEntrada.Date;
  dSaida := dtSaida.Date;
  hEntrada := hrEntrada.Time;
  hSaida := hrSaida.Time;
  ModalResult := mrOK;
end;

end.
