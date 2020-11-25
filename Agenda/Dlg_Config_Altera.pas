unit Dlg_Config_Altera;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, DlgMsg, Menus, StdCtrls, Buttons, TS_BitBtn,
  TS_RadioButton, Provider, DBClient, Db, IBCustomDataSet, IBQuery, IBSQL,
  TS_CheckBox, TS_LastDataObject, dxCntner, dxExEdtr, dxEdLib,
  FormsComponent, ExtCtrls, TS_SpeedButton, 
  FRM_MODELOCADASTROS, TS_Label, TS_Image, dxfLabel, TS_MaxPanel,
  TS_Bevel, teCtrls, TS_EffectsPanel, TS_PopupMenu;

type
  TDlgConfig_Altera = class(TFrmModeloCadastros)
    GB_Comp: TGroupBox;
    RB_SomenteEsse: TTS_RadioButton;
    RB_Todos: TTS_RadioButton;
    RB_TodosOsAnteriores: TTS_RadioButton;
    RB_TodosOsFuturos: TTS_RadioButton;
    cbkApagar: TTS_CheckBox;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgConfig_Altera: TDlgConfig_Altera;

implementation

uses DM_Projeto, Dlg_CalendarioMes, DM_Compromissos;

{$R *.DFM}

procedure TDlgConfig_Altera.btGravarClick(Sender: TObject);
begin
  inherited;
  if RB_SomenteEsse.Checked then
    Modalresult := 1;
  if RB_Todos.Checked then
    Modalresult := 2;
  if RB_TodosOsAnteriores.Checked then
    Modalresult := 3;
  if RB_TodosOsFuturos.Checked then
    Modalresult := 4;
end;

procedure TDlgConfig_Altera.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  Modalresult := -1;
end;

end.
