unit Frm_LocaisEntrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject, 
  DlgMsg, Menus, ComCtrls, Grids, DBGrids, 
  StdCtrls, CheckLst, TS_CheckListBox, Buttons, TS_BitBtn, ExtCtrls,
  TS_Bevel, TS_SpeedButton, TS_Label, Mask, DBCtrls, TS_DBEdit,
  TS_DBLookupComboBox, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner,
  dxEdLib, TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxDBTLCl, dxGrClms, teCtrls,
  TS_EffectsPanel, dxTLClms, TS_PopupMenu, Variants, Placemnt, BTOdeum,
  dxfProgressBar;

type
  TFrmLocaisEntrega = class(TFrmPadrao)
    dfEnd: TTS_DBEdit;
    TS_Label1: TTS_Label;
    dfCid: TTS_DBEdit;
    TS_Label2: TTS_Label;
    dfCEP: TTS_DBEdit;
    cmbUF: TTS_DBLookupComboBox;
    cmbPais: TTS_DBLookupComboBox;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label6: TTS_Label;
    dfFone: TTS_DBEdit;
    TS_Label7: TTS_Label;
    dfDesc: TTS_DBEdit;
    GridENDERECOENTREGA: TdxDBGridMaskColumn;
    GridCIDADEENTREGA: TdxDBGridMaskColumn;
    GridCEPENTREGA: TdxDBGridMaskColumn;
    GridlkUF: TdxDBGridLookupColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridlkPais: TdxDBGridLookupColumn;
    GridFONEENTREGA: TdxDBGridMaskColumn;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocaisEntrega: TFrmLocaisEntrega;

implementation
  uses DM_LocaisEntrega, DM_Projeto, db;

{$R *.DFM}

procedure TFrmLocaisEntrega.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if (DMProjeto.GetParametrosForm(1) <> null) then begin
    if DMLocaisEntrega.C_Tabela.State <> dsBrowse then //Quando abre com dados não está em browse;
      DMLocaisEntrega.C_TabelaFavorecido.Value := DMProjeto.GetParametrosForm(1);

    DMLocaisEntrega.Favorecido := DMProjeto.GetParametrosForm(1);
  end;
end;

end.
