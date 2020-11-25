unit Frm_Veiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEditNumber, TS_DBEdit, dxDBTLCl, dxGrClms;

type
  TFrmVeiculos = class(TFrmPadrao)
    Label2: TTS_Label;
    dfNomeVeiculo: TTS_DBEdit;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_DBEditNumber1: TTS_DBEditNumber;
    GridVEICULO: TdxDBGridMaskColumn;
    GridPLACA: TdxDBGridMaskColumn;
    GridCHASSI: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridCAPACIDADE: TdxDBGridCurrencyColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculos: TFrmVeiculos;

implementation
uses DM_Projeto, DM_Veiculos;

{$R *.dfm}

procedure TFrmVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmVeiculos := Nil;
end;

end.
