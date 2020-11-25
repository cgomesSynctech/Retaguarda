unit Dlg_AplicarCalculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxfCheckBox, dxCntner, dxEditor, dxEdLib,
  TS_MaskEdit, TS_Shape, DBClient;

type
  TDlgAplicarCalculos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    dfQtd: TTS_MaskEdit;
    dfPreco: TTS_MaskEdit;
    cbmq: TdxfCheckBox;
    cbdq: TdxfCheckBox;
    cbsq: TdxfCheckBox;
    cbuq: TdxfCheckBox;
    cbmp: TdxfCheckBox;
    cbdp: TdxfCheckBox;
    cbsp: TdxfCheckBox;
    cbup: TdxfCheckBox;
    procedure cbmqClick(Sender: TObject);
    procedure cbmpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    C_Itens : TClientDataSet;
    
  end;

var
  DlgAplicarCalculos: TDlgAplicarCalculos;

implementation
  uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgAplicarCalculos.cbmqClick(Sender: TObject);
begin
  inherited;
  dfQtd.Visible := cbmq.checked or cbdq.checked or cbsq.checked or cbuq.checked;
  dfQtd.Top := TdxfCheckBox(Sender).Top;
end;

procedure TDlgAplicarCalculos.cbmpClick(Sender: TObject);
begin
  inherited;
  dfPreco.Visible := cbmp.checked or cbdp.checked or cbsp.checked or cbup.checked;
  dfPreco.Top := TdxfCheckBox(Sender).Top;
end;

end.
