unit Frm_Cargos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_Bevel,TS_Label, TS_LastDataObject,
  CheckLst, TS_CheckListBox, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, dxExEdtr, BTOdeum, TS_DBButtonEdit, db,
  Placemnt, dxfProgressBar;

type
  TFrmCargos = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfDescricao: TTS_DBEdit;
    GridCARGO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBButtonEdit;
    procedure TS_DBEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TS_DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCargos: TFrmCargos;

implementation
  uses DM_Cargos, DM_Projeto;

{$R *.DFM}

procedure TFrmCargos.TS_DBEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if not (DMCargos.C_Tabela.State in [dsEdit,dsInsert]) then
    DMCargos.C_Tabela.edit;
  DMCargos.C_TabelaCodigo.value := DMProjeto.GeraCodigoCargo(DMCargos.C_TabelaCodigo.value,DMCargos.C_TabelaCargo.value);
  ActiveControl := dfDescricao;
end;

procedure TFrmCargos.TS_DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then begin
  	if not (DMCargos.C_Tabela.State in [dsEdit,dsInsert]) then
    	DMCargos.C_Tabela.edit;
  	DMCargos.C_TabelaCodigo.value := DMProjeto.GeraCodigoCargo(DMCargos.C_TabelaCodigo.value,DMCargos.C_TabelaCargo.value);
  	ActiveControl := dfDescricao;
  end;
end;

end.
