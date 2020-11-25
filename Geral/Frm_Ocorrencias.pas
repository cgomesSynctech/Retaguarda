unit FRM_Ocorrencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
  DlgMsg, Menus, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, CheckLst, TS_CheckListBox, Buttons, TS_BitBtn,
  TS_Bevel, TS_SpeedButton, dxEditor, dxExEdtr, Variants,
  dxEdLib, dxDBELib, TS_DBEditDate, TS_DBMemo, TS_DBButtonEdit,
  TS_DBEditFavorecido, dxDBEdtr, TS_DBLookupTipoFav, dxDBTLCl, dxGrClms,
  teCtrls, TS_EffectsPanel, dxTLClms, TS_PopupMenu, TS_DBLookupComboBox,
  BTOdeum, Placemnt, dxfProgressBar;

type
  TFRMOcorrencias = class(TFrmPadrao)
    lbData: TTS_Label;
    lbObs: TTS_Label;
    dbObs: TTS_DBMemo;
    dfData: TTS_DBEditDate;
    dfFavorecido: TTS_DBEditFavorecido;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    Grid_icSelecionado: TdxDBGridColumn;
    GridOCORRENCIA: TdxDBGridMaskColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridDESATIVADO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    cmbUsuario: TTS_DBLookupComboBox;
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMOcorrencias: TFRMOcorrencias;

implementation

uses DM_Projeto, DM_Ocorrencias;

{$R *.DFM}

procedure TFRMOcorrencias.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
 	if DMProjeto.QtdParametrosForm > 0 then begin
    if (DMProjeto.getParametrosForm(0) <> null) then
  	  DMOcorrencias.nOpenKey := DMProjeto.getParametrosForm(0);
    if (DMProjeto.getParametrosForm(1) <> null) then
      DMOcorrencias.sNome := DMProjeto.getParametrosForm(1);
    where := 'where o.favorecido = '+IntToStr(DMProjeto.getParametrosForm(0));
  end;
end;

end.
