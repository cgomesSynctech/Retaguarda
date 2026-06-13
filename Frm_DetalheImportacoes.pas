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
  TS_DBEditDate, TS_DBCurrencyEdit, TS_DBEditNumber;

type
  TfrmDetalheImportacoes = class(TFrmPadrao)
    DF_Nome: TTS_DBEdit;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label19: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label4: TTS_Label;
    DF_UF: TTS_DBLookupComboBox;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    TS_Label15: TTS_Label;
    TS_Label16: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    TS_Label20: TTS_Label;
    TS_Label21: TTS_Label;
    TS_Label22: TTS_Label;
    TS_DBCurrencyEdit1: TTS_DBCurrencyEdit;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_DBEdit7: TTS_DBEdit;
    TS_DBCurrencyEdit2: TTS_DBCurrencyEdit;
    TS_DBCurrencyEdit3: TTS_DBCurrencyEdit;
    TS_DBCurrencyEdit4: TTS_DBCurrencyEdit;
    TS_DBCurrencyEdit5: TTS_DBCurrencyEdit;
    TS_DBCurrencyEdit6: TTS_DBCurrencyEdit;
    TS_Label23: TTS_Label;
    TS_Label24: TTS_Label;
    TS_Label25: TTS_Label;
    TS_Label26: TTS_Label;
    TS_Label27: TTS_Label;
    TS_Label28: TTS_Label;
    TS_Label29: TTS_Label;
    TS_Label30: TTS_Label;
    TS_Label31: TTS_Label;
    TS_Label32: TTS_Label;
    TS_Label33: TTS_Label;
    TS_Label34: TTS_Label;
    TS_Label35: TTS_Label;
    TS_DBCurrencyEdit7: TTS_DBCurrencyEdit;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit5: TTS_DBEdit;
    TS_DBEdit6: TTS_DBEdit;
    TS_DBEdit8: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEditDate2: TTS_DBEditDate;
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
