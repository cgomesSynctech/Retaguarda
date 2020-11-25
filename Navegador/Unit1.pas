unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxExEdtr, dxEdLib, ComCtrls, TS_PageControl, ExtCtrls, teCtrls,
  TS_EffectsPanel, TS_Shape, jpeg, TS_Image, StdCtrls, TS_Label, Buttons,
  TS_SpeedButton;

type
  TForm1 = class(TForm)
    TS_PageControl1: TTS_PageControl;
    TabSheet1: TTS_TabSheet;
    TabSheet2: TTS_TabSheet;
    TabSheet3: TTS_TabSheet;
    TabSheet4: TTS_TabSheet;
    TabSheet5: TTS_TabSheet;
    TabSheet6: TTS_TabSheet;
    TabSheet7: TTS_TabSheet;
    TabSheet8: TTS_TabSheet;
    dxGraphicEdit1: TdxGraphicEdit;
    dxGraphicEdit4: TdxGraphicEdit;
    dxGraphicEdit5: TdxGraphicEdit;
    TS_Image3: TTS_Image;
    TS_Image8: TTS_Image;
    TS_Image12: TTS_Image;
    TS_Image18: TTS_Image;
    TS_Image6: TTS_Image;
    TS_Image10: TTS_Image;
    TS_Image17: TTS_Image;
    TS_Image7: TTS_Image;
    TS_Image14: TTS_Image;
    TS_Image16: TTS_Image;
    TS_Image13: TTS_Image;
    TS_Image5: TTS_Image;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Image2: TTS_Image;
    dxGraphicEdit2: TdxGraphicEdit;
    dxGraphicEdit3: TdxGraphicEdit;
    dxGraphicEdit7: TdxGraphicEdit;
    dxGraphicEdit10: TdxGraphicEdit;
    dxGraphicEdit11: TdxGraphicEdit;
    TS_Panel1: TTS_Panel;
    dxGraphicEdit14: TdxGraphicEdit;
    TS_Panel2: TTS_Panel;
    TS_Image11: TTS_Image;
    TS_Image4: TTS_Image;
    dxGraphicEdit12: TdxGraphicEdit;
    dxGraphicEdit16: TdxGraphicEdit;
    TS_Image15: TTS_Image;
    dxGraphicEdit18: TdxGraphicEdit;
    dxGraphicEdit19: TdxGraphicEdit;
    dxGraphicEdit20: TdxGraphicEdit;
    dxGraphicEdit23: TdxGraphicEdit;
    TS_Panel3: TTS_Panel;
    dxGraphicEdit26: TdxGraphicEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_SpeedButton3: TTS_SpeedButton;
    TS_SpeedButton4: TTS_SpeedButton;
    TS_SpeedButton5: TTS_SpeedButton;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_SpeedButton6: TTS_SpeedButton;
    TS_Panel4: TTS_Panel;
    dxGraphicEdit6: TdxGraphicEdit;
    tsPagina9: TTS_TabSheet;
    TS_Panel5: TTS_Panel;
    TS_Shape9: TTS_Shape;
    dxGraphicEdit8: TdxGraphicEdit;
    dxGraphicEdit9: TdxGraphicEdit;
    dxGraphicEdit13: TdxGraphicEdit;
    dxGraphicEdit17: TdxGraphicEdit;
    dxGraphicEdit27: TdxGraphicEdit;
    dxGraphicEdit28: TdxGraphicEdit;
    dxGraphicEdit29: TdxGraphicEdit;
    TS_SpeedButton7: TTS_SpeedButton;
    TS_SpeedButton8: TTS_SpeedButton;
    TS_SpeedButton9: TTS_SpeedButton;
    dxGraphicEdit15: TdxGraphicEdit;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    TS_Label15: TTS_Label;
    TS_SpeedButton10: TTS_SpeedButton;
    TS_SpeedButton11: TTS_SpeedButton;
    TS_SpeedButton12: TTS_SpeedButton;
    TS_SpeedButton13: TTS_SpeedButton;
    TS_Image19: TTS_Image;
    dxGraphicEdit21: TdxGraphicEdit;
    TS_Panel6: TTS_Panel;
    TS_SpeedButton14: TTS_SpeedButton;
    TS_SpeedButton15: TTS_SpeedButton;
    TS_SpeedButton16: TTS_SpeedButton;
    TS_SpeedButton17: TTS_SpeedButton;
    dxGraphicEdit22: TdxGraphicEdit;
    TS_Panel7: TTS_Panel;
    TS_SpeedButton18: TTS_SpeedButton;
    TS_SpeedButton19: TTS_SpeedButton;
    TS_SpeedButton20: TTS_SpeedButton;
    TS_SpeedButton21: TTS_SpeedButton;
    dxGraphicEdit24: TdxGraphicEdit;
    dxGraphicEdit25: TdxGraphicEdit;
    dxGraphicEdit30: TdxGraphicEdit;
    dxGraphicEdit31: TdxGraphicEdit;
    TS_SpeedButton22: TTS_SpeedButton;
    TS_SpeedButton23: TTS_SpeedButton;
    TS_SpeedButton24: TTS_SpeedButton;
    TS_SpeedButton25: TTS_SpeedButton;
    dxGraphicEdit32: TdxGraphicEdit;
    dxGraphicEdit33: TdxGraphicEdit;
    dxGraphicEdit34: TdxGraphicEdit;
    dxGraphicEdit35: TdxGraphicEdit;
    dxGraphicEdit36: TdxGraphicEdit;
    dxGraphicEdit37: TdxGraphicEdit;
    dxGraphicEdit38: TdxGraphicEdit;
    dxGraphicEdit39: TdxGraphicEdit;
    dxGraphicEdit40: TdxGraphicEdit;
    dxGraphicEdit41: TdxGraphicEdit;
    TS_Panel8: TTS_Panel;
    TS_SpeedButton26: TTS_SpeedButton;
    TS_SpeedButton27: TTS_SpeedButton;
    TS_SpeedButton28: TTS_SpeedButton;
    TS_SpeedButton29: TTS_SpeedButton;
    dxGraphicEdit42: TdxGraphicEdit;
    dxGraphicEdit43: TdxGraphicEdit;
    dxGraphicEdit44: TdxGraphicEdit;
    dxGraphicEdit45: TdxGraphicEdit;
    dxGraphicEdit46: TdxGraphicEdit;
    dxGraphicEdit47: TdxGraphicEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
