unit Dlg_CamposCustomizados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu,
  StdCtrls, Buttons, TS_BitBtn, Mask, DBCtrls, TS_DBEdit, TS_Label,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxBar;

type
  TDlgCamposCustomizados = class(TDlgModal)
    lblCampo1: TTS_Label;
    dfCampo1: TTS_DBEdit;
    lblCampo2: TTS_Label;
    lblCampo3: TTS_Label;
    lblCampo4: TTS_Label;
    lblCampo5: TTS_Label;
    lblCampo6: TTS_Label;
    lblCampo7: TTS_Label;
    lblCampo8: TTS_Label;
    lblCampo9: TTS_Label;
    lblCampo10: TTS_Label;
    dfCampo2: TTS_DBEdit;
    dfCampo3: TTS_DBEdit;
    dfCampo4: TTS_DBEdit;
    dfCampo5: TTS_DBEdit;
    dfCampo6: TTS_DBEdit;
    dfCampo7: TTS_DBEdit;
    dfCampo8: TTS_DBEdit;
    dfCampo9: TTS_DBEdit;
    dfCampo10: TTS_DBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCamposCustomizados: TDlgCamposCustomizados;

implementation
uses DM_Itens;

{$R *.DFM}

end.
