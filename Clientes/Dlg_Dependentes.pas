unit Dlg_Dependentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms;

type
  TDlgDependentes = class(TFrmModeloCadastros)
    lbFavorecido: TTS_Label;
    DBDependentes: TTS_QDBGrid;
    DBDependentesDEPENDENTE: TdxDBGridMaskColumn;
    DBDependentesFAVORECIDO: TdxDBGridMaskColumn;
    DBDependentesNOME: TdxDBGridMaskColumn;
    DBDependentesDATANASC: TdxDBGridDateColumn;
    DBDependentesGRAUPARENTESCO: TdxDBGridMaskColumn;
    DBDependentesDescGrauParent: TdxDBGridLookupColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgDependentes: TDlgDependentes;

implementation

uses DM_Projeto, DM_Clientes;

{$R *.DFM}

end.
