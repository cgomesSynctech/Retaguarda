unit Dlg_EfeitosTransicoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_Shape, dxExEdtr, dxEdLib, TS_SpinEdit,
  dxCntner, dxEditor, TS_ImageEdit, TransEff, teTimed, teWipe, teRadial,
  teSlide, teDrip, teDiagon, teCircle, teMasked, teBlock, tePush, teFuse,
  teBlend;

type
  TDlgEfeitosTransicoes = class(TFrmModeloCadastros)
    Efeitos: TTransitionList;
    dfEfeito: TTS_ImageEdit;
    lbEfeito: TTS_Label;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label31: TTS_Label;
    pnExemplo: TTS_Panel;
    lbA: TTS_Label;
    lbB: TTS_Label;
    btExemplo: TTS_SpeedButton;
    EF1: TBlendTransition;
    EF2: TFuseTransition;
    EF3: TPushTransition;
    EF4: TPushTransition;
    EF5: TPushTransition;
    EF6: TPushTransition;
    EF7: TBlockTransition;
    EF8: TBlockTransition;
    EF9: TBlockTransition;
    EF10: TBlockTransition;
    EF11: TCircleTransition;
    EF12: TCircleTransition;
    EF13: TCircleTransition;
    EF14: TCircleTransition;
    EF15: TCircleTransition;
    EF16: TCircleTransition;
    EF17: TDiagonalTransition;
    EF18: TDiagonalTransition;
    EF19: TDiagonalTransition;
    EF20: TDripTransition;
    EF21: TDripTransition;
    EF22: TSlideTransition;
    EF23: TSlideTransition;
    EF24: TSlideTransition;
    EF25: TSlideTransition;
    EF26: TWipeTransition;
    EF27: TWipeTransition;
    EF28: TWipeTransition;
    EF29: TWipeTransition;
    EF30: TRadialTransition;
    EF31: TRadialTransition;
    EF32: TRadialTransition;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExemploClick(Sender: TObject);
    procedure dfEfeitoChange(Sender: TObject);
  private
    { Private declarations }
    function VisibleLabel : TLabel;
    function InvisibleLabel : TLabel;


  public
    { Public declarations }
    Efeito : String;
  end;

var
  DlgEfeitosTransicoes: TDlgEfeitosTransicoes;

implementation
  uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgEfeitosTransicoes.btGravarClick(Sender: TObject);
begin
  inherited;

  Efeito := 'EF'+dfEfeito.Text;

  Modalresult := mrOk;
end;

procedure TDlgEfeitosTransicoes.FormShow(Sender: TObject);
var
  Index : String;
begin
  inherited;
  dfEfeito.Text := '0';

  if Efeito <> 'EF0' then begin
    Index := replace(Efeito,'EF','');

    dfEfeito.Text := Index;
  end;
end;

procedure TDlgEfeitosTransicoes.btExemploClick(Sender: TObject);
var
  vis, invis : TLabel;
begin
  inherited;
  vis:= TLabel(VisibleLabel);
  invis := TLabel(InvisibleLabel);

  if dfEfeito.Text <> '0' then begin
    Efeitos.Transitions[ StrToIntDef(dfEfeito.Text,1) - 1 ].Prepare(invis.parent,invis.BoundsRect);
  end;

  vis.visible := false;
  invis.visible := true;

  if (dfEfeito.Text <> '0') and Efeitos.Transitions[ StrToIntDef(dfEfeito.Text,1) - 1 ].Prepared then begin
    Efeitos.Transitions[ StrToIntDef(dfEfeito.Text,1) - 1 ].Execute;
    Efeitos.Transitions[ StrToIntDef(dfEfeito.Text,1) - 1 ].UnPrepare;
  end;


end;

function TDlgEfeitosTransicoes.InvisibleLabel: TLabel;
begin
  if not lbA.Visible then
    result := lbA
  else
    result := lbB;

end;

function TDlgEfeitosTransicoes.VisibleLabel: TLabel;
begin
  if lbA.Visible then
    result := lbA
  else
    result := lbB;

end;

procedure TDlgEfeitosTransicoes.dfEfeitoChange(Sender: TObject);
begin
  inherited;
  btExemploClick(self);
end;

end.
