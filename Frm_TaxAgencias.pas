unit Frm_TaxAgencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, TS_Label, Mask,
  DBCtrls, TS_DBEdit, TS_LastDataObject, 
  TS_Bevel, TS_MaxPanel, TS_DBEditFavorecido, CheckLst, TS_CheckListBox,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit, dxCntner,
  TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, BTOdeum;

type
  TFrmTaxAgencias = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    Grid_icSelecionado: TdxDBGridColumn;
    GridTAXAGENCIA: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridPERCENTUAL: TdxDBGridMaskColumn;
    GridFORNECEDOR: TdxDBGridMaskColumn;
    GridCONTA: TdxDBGridMaskColumn;
    TS_DBEditFavorecido2: TTS_DBEditFavorecido;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTaxAgencias: TFrmTaxAgencias;

implementation

uses DM_TaxAgencias, DM_Projeto;

{$R *.DFM}

end.
