unit Frm_TiposInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBMemo,
  TS_DBEdit, dxEditor, TS_DBButtonEdit;

type
  TFrmTiposInsumos = class(TFrmPadrao)
    TS_Label2: TTS_Label;
    df_CODIGO: TTS_DBButtonEdit;
    TS_Label1: TTS_Label;
    df_Descricao: TTS_DBEdit;
    TS_Label3: TTS_Label;
    df_Observacao: TTS_DBMemo;
    procedure df_CODIGOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposInsumos: TFrmTiposInsumos;

implementation

uses DM_Projeto, DM_TiposInsumos;

{$R *.dfm}

procedure TFrmTiposInsumos.df_CODIGOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    DMTiposInsumos.GeraCodigo(DMTiposInsumos.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

end.
