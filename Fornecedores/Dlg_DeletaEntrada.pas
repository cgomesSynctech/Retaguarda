unit Dlg_DeletaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel;

type
  TDeletaEntrada = class(TFrmPadrao)
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeletaEntrada: TDeletaEntrada;

implementation

uses DM_Projeto ;


end.
