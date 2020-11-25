unit Dlg_LegendaGridVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FORM_PADRAO, StdCtrls, TS_Label, ExtCtrls, TS_Shape, teForm,
  Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  TransEff, teTimed, teRoll;

type
  TDlgLegendaGridVendas = class(TFormPadrao)
    FormTransitions1: TFormTransitions;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Shape8: TTS_Shape;
    TS_Label6: TTS_Label;
    TransitionList1: TTransitionList;
    Transition1: TRollTransition;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgLegendaGridVendas: TDlgLegendaGridVendas;

implementation

{$R *.dfm}

end.
