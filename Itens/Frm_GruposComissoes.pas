unit Frm_GruposComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, dxDBTLCl, dxGrClms;

type
  TFrmGruposComissoes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    edDesc: TTS_DBEdit;
    dbgGrupos: TTS_QDBGrid;
    dbgGruposGRUPOCOMISSAODET: TdxDBGridMaskColumn;
    dbgGruposGRUPOCOMISSAO: TdxDBGridMaskColumn;
    ppmGridComissao: TTS_PopupMenu;
    TS_Label2: TTS_Label;
    GridDESCRICAO: TdxDBGridMaskColumn;
    dbgGruposVALORINI: TdxDBGridCalcColumn;
    dbgGruposVALORFIM: TdxDBGridCalcColumn;
    dbgGruposCOMISSAO: TdxDBGridCalcColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGruposComissoes: TFrmGruposComissoes;

implementation

{$R *.dfm}

uses DM_Projeto, DM_GruposComissoes;

end.
