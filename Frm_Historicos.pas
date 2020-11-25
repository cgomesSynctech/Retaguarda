unit Frm_Historicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo, BTOdeum, Placemnt;

type
  TFrmHistoricos = class(TFrmPadrao)
    TS_DBMemo1: TTS_DBMemo;
    TS_Label1: TTS_Label;
    Grid_icSelecionado: TdxDBGridColumn;
    GridHISTORICO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoricos: TFrmHistoricos;

implementation
uses DM_Projeto, DM_Historicos;

{$R *.DFM}

end.
 