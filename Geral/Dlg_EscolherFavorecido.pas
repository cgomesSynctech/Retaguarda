unit Dlg_EscolherFavorecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, TS_PopupEdit, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
  StdCtrls, TS_Label, ExtCtrls, TS_Panel, Buttons, TS_SpeedButton;

type
  TDlgEscolherFavorecido = class(TForm)
    TS_PanelCorner1: TTS_PanelCorner;
    lbEscolherFavorecido: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    Grid: TTS_QDBGrid;
    GridID: TdxDBGridMaskColumn;
    GridNome: TdxDBGridMaskColumn;
    TS_PopupEdit2: TTS_PopupEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_PopupEdit1: TTS_PopupEdit;
    TS_Label3: TTS_Label;
    TS_PopupEdit3: TTS_PopupEdit;
    TS_Label4: TTS_Label;
    TS_PopupEdit4: TTS_PopupEdit;
    TS_Label5: TTS_Label;
    TS_PopupEdit5: TTS_PopupEdit;
    TS_Label6: TTS_Label;
    TS_PopupEdit6: TTS_PopupEdit;
    TS_Label7: TTS_Label;
    TS_PopupEdit7: TTS_PopupEdit;
    TS_Label8: TTS_Label;
    TS_PopupEdit8: TTS_PopupEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    TS_SpeedButton3: TTS_SpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgEscolherFavorecido: TDlgEscolherFavorecido;

implementation

uses DM_Projeto;

{$R *.dfm}

end.
