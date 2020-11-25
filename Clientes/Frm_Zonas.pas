unit Frm_Zonas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, dxExEdtr, Placemnt, BTOdeum;

type
  TFrmZonas = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    Grid_icSelecionado: TdxDBGridColumn;
    GridZONA: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZonas: TFrmZonas;

implementation
uses DM_Projeto, DM_Zonas;

{$R *.DFM}

end.
