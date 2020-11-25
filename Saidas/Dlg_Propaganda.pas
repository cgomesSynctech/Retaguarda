unit Dlg_Propaganda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ExtCtrls, TS_Image, teForm,
  teRadial, teWipe, teSlide, teDrip, teDiagon, teCircle, teMasked, teBlock,
  tePush, teFuse, TransEff, teTimed, teBlend, DBClient, Provider;

type
  TDlgPropaganda = class(TForm)
    Efeitos: TTransitionList;
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
    FT: TFormTransitions;
    Imagem: TTS_Image;
    Q_Propagandas: TIBQuery;
    P_Propagandas: TDataSetProvider;
    C_Propagandas: TClientDataSet;
    C_PropagandasPROPAGANDA: TIntegerField;
    C_PropagandasDESCRICAO: TStringField;
    C_PropagandasIMAGEM: TStringField;
    C_PropagandasTEMPO: TIntegerField;
    C_PropagandasORDEM_EXIBICAO: TIntegerField;
    C_PropagandasDESATIVADO: TStringField;
    Timer: TTimer;
    C_PropagandasCONFIGIMG: TStringField;
    C_PropagandasMULTIMIDIA: TStringField;
    C_PropagandasTRANSPARENTE: TStringField;
    C_PropagandasSTRECH: TStringField;
    C_PropagandasEFEITO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure C_PropagandasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    TransicaoAnimada : Boolean;
    BitmapTela : TBitmap;
    bAlwaysStrech : boolean;

    Procedure Parar;
    Procedure Iniciar(bStrech : Boolean = false);

  end;

var
  DlgPropaganda: TDlgPropaganda;

implementation
  uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgPropaganda.Iniciar;
begin
  bAlwaysStrech := bStrech;
  
  C_Propagandas.First;
  if C_Propagandas.RecordCount > 0 then begin
    Timer.Interval := (1000 * C_PropagandasTempo.Value) + 1000;
    Timer.Enabled := true;
  end;
end;

procedure TDlgPropaganda.Parar;
var
  i : Integer;
begin
  Timer.Enabled := false;

  for i := 0 to 31 do
    if Efeitos.Transitions[ i ].Prepared then
      Efeitos.Transitions[ i ].unprepare;

end;

procedure TDlgPropaganda.FormShow(Sender: TObject);
begin
  C_Propagandas.Open;
  TransicaoAnimada := true;

  if BitmapTela <> nil then
   FT.BackgroundOptions.Picture.Bitmap := BitmapTela;

  Iniciar;

end;

procedure TDlgPropaganda.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := false;

  if C_Propagandas.Recno < C_Propagandas.RecordCount then
    C_Propagandas.Next
  else
    C_Propagandas.First;

  Timer.Interval := (1000 * C_PropagandasTempo.Value);
  Timer.Enabled := true;
end;

procedure TDlgPropaganda.C_PropagandasAfterScroll(DataSet: TDataSet);
var
  nEfeito : Integer;
begin
  nEfeito := StrToIntDef( replace(C_PropagandasEfeito.Value,'EF',''), 0);

  if (nEfeito > 0) and TransicaoAnimada then begin
    Efeitos.Transitions[ nEfeito - 1 ].Prepare( Imagem.Parent, Imagem.BoundsRect );
  end;

  if (C_PropagandasImagem.Value <> '' ) and FileExists(DMProjeto.ImgPath + C_PropagandasImagem.Value) then begin
    Imagem.FileName := DMProjeto.ImgPath + C_PropagandasImagem.Value;
    Imagem.Stretch := (C_PropagandasStrech.Value = 'S') or bAlwaysStrech;
    Imagem.Transparent := C_PropagandasTransparente.Value = 'S';
  end;

  if (nEfeito > 0) and Efeitos.Transitions[ nEfeito - 1 ].Prepared then begin
    Efeitos.Transitions[ nEfeito - 1 ].Execute;
    Efeitos.Transitions[ nEfeito - 1 ].unPrepare;
  end;

end;

end.
