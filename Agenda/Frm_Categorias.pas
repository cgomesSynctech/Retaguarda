unit Frm_Categorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_Label, TS_Edit, TS_GroupBox, TS_Image, TS_Shape, TS_LastDataObject,
  TS_Bevel, TS_MaxPanel, CheckLst, TS_CheckListBox, dxEdLib,
  dxCntner, dxEditor, dxDBELib, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, dxTLClms,
  TS_PopupMenu;

type
  TFrmCategorias = class(TFrmPadrao)
    ColorDialog1: TColorDialog;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    DF_Descricao: TTS_DBEdit;
    btCores: TTS_BitBtn;
    btCoresFonte: TTS_BitBtn;
    GB_Modelo: TTS_GroupBox;
    Modelo_Cor: TTS_Shape;
    Img_Combo: TTS_Image;
    Modelo_Fonte: TTS_Label;
    ED_Cor: TTS_Shape;
    ED_CorFonte: TTS_Shape;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure btCoresClick(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure btCoresFonteClick(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
    procedure AtualizaModelo( Back, Fonte: TColor );
  public
    { Public declarations }
  end;

var
  FrmCategorias: TFrmCategorias;

implementation

uses DM_Categorias, DM_Projeto;

{$R *.DFM}

procedure TFrmCategorias.AtualizaModelo( Back, Fonte: TColor );
begin
  Modelo_Cor.Brush.Color := Back;
  Modelo_Fonte.Font.Color := Fonte;
  ED_Cor.Brush.Color := Back;
  ED_CorFonte.Brush.Color := Fonte;
end;

procedure TFrmCategorias.btCoresClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := ED_Cor.Brush.Color;
  if ColorDialog1.Execute then begin
    DMCategorias.C_Tabela.Edit;
    DMCategorias.C_TabelaCOR.Value := ColorToString(ColorDialog1.Color);
    AtualizaModelo(ColorDialog1.Color, ED_CorFonte.Brush.Color);
  end;  
end;

procedure TFrmCategorias.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if (Estado = fsNavegacao) or (Estado = fsPesquisa) then begin
    if (DMCategorias.C_TabelaCOR.Value <> '') or (DMCategorias.C_TabelaCOR_FONTE.Value <> '') then begin
      if (DMCategorias.C_TabelaCOR.Value = '') then
        AtualizaModelo( clWhite, StringToColor(DMCategorias.C_TabelaCOR_FONTE.Value) )
      else if (DMCategorias.C_TabelaCOR_FONTE.Value = '') then
        AtualizaModelo( StringToColor(DMCategorias.C_TabelaCOR.Value), clBlack )
      else AtualizaModelo( StringToColor(DMCategorias.C_TabelaCOR.Value), StringToColor(DMCategorias.C_TabelaCOR_FONTE.Value) );
      ColorDialog1.Color := StringToColor(DMCategorias.C_TabelaCOR.Value);
    end;  
  end else begin
    AtualizaModelo( clWhite, clBlack );
    ColorDialog1.Color := StringToColor('clWhite');
  end
end;

procedure TFrmCategorias.btCoresFonteClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := ED_CorFonte.Brush.Color;
  if ColorDialog1.Execute then begin
    DMCategorias.C_Tabela.Edit;
    DMCategorias.C_TabelaCOR_FONTE.Value := ColorToString(ColorDialog1.Color);
    AtualizaModelo(ED_Cor.Brush.Color, ColorDialog1.Color);
  end;
end;
procedure TFrmCategorias.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	Ed_Cor.Brush.Color 			:= clWhite;
  Ed_CorFonte.Brush.Color := clBlack;
end;

end.
