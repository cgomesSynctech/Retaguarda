unit Frm_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TransEff, teTimed, teMasked, teRadial, teForm, teSlide, teBlend,
  teIntrlc, teBlock;

type
  TFrmSplash = class(TForm)
    FormTransitions1: TFormTransitions;
    MDITransitionList: TTransitionList;
    MDIShow: TBlockTransition;
    SplashClose: TBlockTransition;
    Interlace: TInterlacedTransition;
    Alfa: TBlendTransition;
    Slide: TSlideTransition;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.DFM}

procedure TFrmSplash.FormShow(Sender: TObject);
begin
  Sleep(2000);
end;

end.
