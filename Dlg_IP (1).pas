unit Dlg_IP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, OleCtrls, SHDocVw;

type
  TDlgIP = class(TFrmModeloCadastros)
    WebBrowser: TWebBrowser;
    pnIP: TPanel;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgIP: TDlgIP;

implementation

uses DM_Projeto,Funcoes;

{$R *.dfm}

procedure TDlgIP.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  WebBrowser.Navigate('http://www.synctech.com.br/wfMeuIP.aspx');

end;

procedure TDlgIP.btGravarClick(Sender: TObject);
begin
  inherited;
//  WebBrowser.Refresh;
    pnIP.Caption := funcoes.GetIP;
end;

procedure TDlgIP.FormShow(Sender: TObject);
begin
  inherited;
   pnIP.Caption := funcoes.GetIP;
end;

end.
