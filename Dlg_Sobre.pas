unit Dlg_Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TS_Label, dxfLabel, ExtCtrls, teCtrls, TransEff,
  teTimed, teRoll, teForm, TS_Image, teMasked, teWFall, teRadial, teCircle;

type
  TDlgSobre = class(TForm)
    FormTransitions1: TFormTransitions;
    TransitionList1: TTransitionList;
    Transition1: TRollTransition;
    procedure lblSiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgSobre: TDlgSobre;

implementation
uses ShellApi;

{$R *.dfm}

procedure TDlgSobre.lblSiteClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, nil, PChar('www.synctech.com.br'), nil, nil, SW_SHOWNORMAL);
end;

end.
