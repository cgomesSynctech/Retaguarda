unit Dlg_VerificaAutenticacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, MD5, dxExEdtr, dxEdLib, TS_CalcEdit, dxEditor,
  TS_DateTimePicker, dxCntner, TS_Edit;

type
  TDlgVerificaAutenticacao = class(TFrmModeloCadastros)
    dfTitulo: TTS_Edit;
    dfVencimento: TTS_DateTimePicker;
    dfValor: TTS_CalcEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dxlMD5: TdxfLabel;
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgVerificaAutenticacao: TDlgVerificaAutenticacao;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgVerificaAutenticacao.btGravarClick(Sender: TObject);
begin
  inherited;
  if (Pos(',00',dfValor.Text) > 0) Then
    dfValor.Text  := Copy(dfValor.Text,1,Pos(',00',dfValor.Text)-1);
  dxlMD5.Caption  := Copy(LowerCase(MD5.MD5Print(MD5.MD5String(Trim(dfTitulo.Text) + Trim( dfValor.Text) + Trim(dfVencimento.Text)))),1,10);
  dxlMD5.Visible  := True;
end;

procedure TDlgVerificaAutenticacao.btLimparClick(Sender: TObject);
begin
  inherited;
  dxlMD5.Visible := False;
end;

procedure TDlgVerificaAutenticacao.FormCreate(Sender: TObject);
begin
  inherited;
  dfVencimento.Date := Date;
end;

end.
