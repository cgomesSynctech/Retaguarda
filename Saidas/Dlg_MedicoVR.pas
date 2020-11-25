unit Dlg_MedicoVR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditFavorecido, dxCntner, dxEditor, dxDBEdtr,
  TS_DBLookupTipoFav, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_ButtonEdit, TS_EditFavorecido;

type
  TDlgMedicoVR = class(TFrmModeloCadastros)
    cmbTipoFav: TTS_DBLookupTipoFav;
    lbCliente: TdxfLabel;
    dfFavorecido: TTS_EditFavorecido;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Medico : Integer;
  end;

var
  DlgMedicoVR: TDlgMedicoVR;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgMedicoVR.btGravarClick(Sender: TObject);
begin
  inherited;
  if dfFavorecido.ID = 0 then begin
    DlgMsg.ShowMsg(543);
    exit;
  end;

  Medico := dfFavorecido.ID;
  ModalResult := mrOk;
end;

procedure TDlgMedicoVR.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

end.
