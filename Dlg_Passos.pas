unit Dlg_Passos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, dxfLabel, Buttons, TS_SpeedButton, 
  TS_EffectsPanel, SHDocVw, ExtCtrls, OleCtrls, teCtrls;

type
  TDlgPassos = class(TForm)
    Html: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure HtmlBeforeNavigate2(Sender: TObject; const pDisp: IDispatch;
      var URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
    procedure btPraFrenteClick(Sender: TObject);
    procedure HtmlCommandStateChange(Sender: TObject; Command: Integer;
      Enable: WordBool);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    sHtmlName : String;
    sWav : String;

  public
    { Public declarations }
  end;

var
  DlgPassos: TDlgPassos;

implementation
  uses DM_Projeto, funcoes;
{$R *.dfm}

procedure TDlgPassos.FormCreate(Sender: TObject);
begin
  if DMProjeto.GetParametrosForm(0) <> null then
    sHtmlName := DMProjeto.GetParametrosForm(0);

	Html.Navigate('file://'+DMProjeto.ProgPath+'Help\'+sHtmlName);

  DMProjeto.LimparParametrosForm;

  Left := Screen.Width - Width;
  Top  := 85;

end;

procedure TDlgPassos.btVoltarClick(Sender: TObject);
begin
	Html.GoBack;
//  btPraFrente.Visible := true;
end;

procedure TDlgPassos.HtmlBeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var sUrl : string;
begin
	if pos('FRM:',UpperCase(URL))>0 then begin
  	DMProjeto.CriarForm( SeparaStrings(URL,':',2), self, true);
    Cancel := true;
  end else if pos('HTML:',UpperCase(URL))>0 then begin
  	sURL := 'file://'+DMProjeto.ProgPath+'Help\'+SeparaStrings(URL,':',2);
    URL  := sUrl;
//    btVoltar.Visible := true;
    Html.Navigate(sURl);
  end;
end;

procedure TDlgPassos.btPraFrenteClick(Sender: TObject);
begin
	Html.GoForward;
end;

procedure TDlgPassos.HtmlCommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
begin
{
  case Command of
    CSC_NAVIGATEBACK: btVoltar.Visible := Enable;
    CSC_NAVIGATEFORWARD: btPraFrente.Visible := Enable;
    //CSC_UPDATECOMMANDS: StopCtrl.Enabled := TWebBrowser(Sender).Busy;
  end;
}
end;

procedure TDlgPassos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

end.
