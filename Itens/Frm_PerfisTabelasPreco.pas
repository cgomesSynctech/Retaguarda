unit Frm_PerfisTabelasPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TFrmPerfisTabelaPrecos = class(TFrmModeloCadastros)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfisTabelaPrecos: TFrmPerfisTabelaPrecos;

implementation
uses DM_Projeto;

{$R *.dfm}

end.
 