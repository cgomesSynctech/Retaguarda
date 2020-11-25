unit Frm_Almoxarifados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib, TS_DBEdit,
  dxfProgressBar, dxDBTLCl, dxGrClms, TS_DBCheckBox;

type
  TFrmAlmoxarifados = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridALMOXARIFADO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    dbcbOrdenarRetirada: TTS_DBCheckBox;
    GridORDERRETIRADA: TdxDBGridCheckColumn;
    dfControleGondola: TTS_DBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
  uses DM_Projeto, DM_Almoxarifados;

{$R *.dfm}

end.
 