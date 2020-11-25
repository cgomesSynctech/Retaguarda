unit Frm_Embalagem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, dxDBEdtr, TS_DBLookupComboBox;

type
  TFrmEmbalagem2 = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    TS_DBEdit2: TTS_DBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmbalagem2: TFrmEmbalagem2;

implementation
uses DM_embalagem2, DM_Projeto;
{$R *.dfm}

procedure TFrmEmbalagem2.FormCreate(Sender: TObject);
begin
  inherited;
   DMEmbalagem2.Q_Tabela.Open;
end;

procedure TFrmEmbalagem2.FormActivate(Sender: TObject);
begin
  inherited;
  DMEmbalagem2.Q_Tabela.Open ;

end;

end.
