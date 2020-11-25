unit Frm_TiposAtividade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_LastDataObject, CheckLst, TS_CheckListBox, TS_Bevel,
  dxCntner, dxEditor, dxEdLib, dxDBELib, TS_Label, TS_Image,
  dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBEdtr,
  TS_DBLookupTipoFav, dxTLClms, TS_DBLookupComboBox, BTOdeum, Placemnt,
  dxfProgressBar;

type
  TFrmTiposAtividade = class(TFrmPadrao)
    Label1: TLabel;
    TS_DBEdit1: TTS_DBEdit;
    GridTIPOATIVIDADE: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    dfTipoFav: TTS_DBLookupComboBox;
    procedure FormComponentInclusao(Sender: TObject);
    procedure dfTipoFavChange(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    nTipo: integer;
  public
    { Public declarations }
  end;

var
  FrmTiposAtividade: TFrmTiposAtividade;

implementation
  uses DM_TiposAtividade, DM_Projeto, variants;

{$R *.DFM}

procedure TFrmTiposAtividade.FormComponentInclusao(Sender: TObject);
begin
  inherited;
  dfTipoFav.LookupKeyValue := nTipo;
end;

procedure TFrmTiposAtividade.dfTipoFavChange(Sender: TObject);
begin
  inherited;
  DMTiposAtividade.C_Tabela.edit;
  DMTiposAtividade.C_TabelaTipoFavorecido.value := dfTipoFav.LookupKeyValue;
end;

procedure TFrmTiposAtividade.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then begin
    nTipo := DMProjeto.GetParametrosForm(1);
    DMTiposAtividade.C_Tabela.Edit;
    DMTiposAtividade.C_TabelaTipoFavorecido.Value := nTipo;
    dfTipoFav.LookupKeyValue := nTipo;
  end;
end;

end.
