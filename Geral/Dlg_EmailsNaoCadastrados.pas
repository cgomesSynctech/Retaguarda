unit Dlg_EmailsNaoCadastrados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB,
  DBClient, dxCntner, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgEmailsNaoCadastrados = class(TFrmModeloCadastros)
    dbgEmail: TTS_QDBGrid;
    C_Email: TClientDataSet;
    C_EmailFavorecido: TIntegerField;
    C_EmailNome: TStringField;
    C_EmailEmail: TStringField;
    C_EmailTelefone: TStringField;
    C_EmailTelefone2: TStringField;
    C_EmailDS: TDataSource;
    dbgEmailFavorecido: TdxDBGridMaskColumn;
    dbgEmailNome: TdxDBGridMaskColumn;
    dbgEmailEmail: TdxDBGridMaskColumn;
    dbgEmailTelefone: TdxDBGridMaskColumn;
    dbgEmailTelefone2: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgEmailsNaoCadastrados: TDlgEmailsNaoCadastrados;

implementation

{$R *.dfm}

end.
