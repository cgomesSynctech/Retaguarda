unit Frm_MaodeObraIndustria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBEdtr, dxDBELib,
  TS_DBLookupComboBox, dxEdLib, TS_DBEdit, dxEditor, TS_DBButtonEdit,
  TS_DBMemo;

type
  TFrmMaodeObraIndustria = class(TFrmPadrao)
    TS_Label2: TTS_Label;
    df_CODIGO: TTS_DBButtonEdit;
    TS_Label1: TTS_Label;
    df_Descricao: TTS_DBEdit;
    TS_Label6: TTS_Label;
    cmbUnidade: TTS_DBLookupComboBox;
    TS_Label3: TTS_Label;
    df_DescricaoDetalhada: TTS_DBMemo;
    procedure df_CODIGOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaodeObraIndustria: TFrmMaodeObraIndustria;

implementation

uses DM_Projeto, DM_MaodeObraIndustria;

{$R *.dfm}

procedure TFrmMaodeObraIndustria.df_CODIGOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    DMMaodeObraIndustria.GeraCodigo(DMMaodeObraIndustria.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

end.
