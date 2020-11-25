unit frm_Equipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEditNumber, TS_DBEdit, dxDBEdtr, TS_DBLookupComboBox,
  TS_DBButtonEdit, TS_DBEditFavorecido, dxDBTLCl, dxGrClms;

type
  TFrmEquipamento = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfDescricao: TTS_DBEdit;
    TS_Label4: TTS_Label;
    edNumPavimentos: TTS_DBEditNumber;
    TS_Label2: TTS_Label;
    cmbMarca: TTS_DBLookupComboBox;
    TS_Label3: TTS_Label;
    cmbTecnologia: TTS_DBLookupComboBox;
    df_favorecido: TTS_DBEditFavorecido;
    TS_Label5: TTS_Label;
    GridNUMMAQUINA: TdxDBGridMaskColumn;
    GridPAVIMENTOS: TdxDBGridMaskColumn;
    GridlkMarca: TdxDBGridLookupColumn;
    GridlkTecnologia: TdxDBGridLookupColumn;
    GridDESCFAVORECIDO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEquipamento: TFrmEquipamento;

implementation

uses DM_Projeto, DM_Equipamento;

{$R *.dfm}

end.
