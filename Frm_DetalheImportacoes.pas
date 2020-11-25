unit Frm_DetalheImportacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBEdtr, dxDBELib,
  TS_DBLookupComboBox, dxEdLib, TS_DBButtonEdit, TS_DBEdit, dxEditor,
  TS_DBEditDate;

type
  TfrmDetalheImportacoes = class(TFrmPadrao)
    DF_DataNasc: TTS_DBEditDate;
    DF_Nome: TTS_DBEdit;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label19: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label4: TTS_Label;
    DF_UF: TTS_DBLookupComboBox;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_DBButtonEdit1: TTS_DBButtonEdit;
    TS_Label5: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label6: TTS_Label;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheImportacoes: TfrmDetalheImportacoes;

implementation

uses DM_DetalheImportacoes, DM_Projeto;

{$R *.dfm}

end.
