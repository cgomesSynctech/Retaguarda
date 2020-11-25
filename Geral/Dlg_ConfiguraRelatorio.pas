unit Dlg_ConfiguraRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_SpinEdit, TS_Edit,
  dxCntner, dxEditor, TS_ImageEdit, Placemnt, FormsComponent, BTOdeum,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel;

type
  TDlgConfiguraRelatorio = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    cmbImpressora: TTS_ImageEdit;
    edTitulo: TTS_Edit;
    edCopias: TTS_SpinEdit;
    cmbCabecalho: TTS_ImageEdit;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgConfiguraRelatorio: TDlgConfiguraRelatorio;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgConfiguraRelatorio.btGravarClick(Sender: TObject);
begin
  inherited;
	ModalResult := mrOk;
end;

end.
