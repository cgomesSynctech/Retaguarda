unit Frm_ModeloMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, TS_DBComboBox, dxDBEdtr, TS_DBLookupComboBox;

type
  TFrmModeloMarca = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBLookupComboBox4: TTS_DBLookupComboBox;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModeloMarca: TFrmModeloMarca;

implementation

{$R *.dfm}
uses DM_projeto, DM_ModeloMarca;

end.
 