unit Frm_Fabricantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, TS_Label, FormComponent, ImgList,
  TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu, ComCtrls,
  Buttons, TS_BitBtn, ExtCtrls,
  TS_Bevel, TS_SpeedButton, TS_MaxPanel, Mask, DBCtrls, TS_DBEdit,
  CheckLst, TS_CheckListBox, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, 
  teCtrls, TS_EffectsPanel, dxTLClms, dxExEdtr, BTOdeum, TS_DBButtonEdit, db,
  Placemnt;

type
  TFrmFabricantes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    Grid_icSelecionado: TdxDBGridColumn;
    GridFABRICANTE: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    TS_DBEdit2: TTS_DBButtonEdit;
    procedure TS_DBEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TS_DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFabricantes: TFrmFabricantes;

implementation
uses DM_Fabricantes, DM_Projeto;

{$R *.DFM}

procedure TFrmFabricantes.TS_DBEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if not (DMFabricantes.C_Tabela.State in [dsEdit,dsInsert]) then
    DMFabricantes.C_Tabela.edit;
  DMFabricantes.C_TabelaCodigo.value := DMProjeto.GeraCodigoFabricante(DMFabricantes.C_TabelaCodigo.value,DMFabricantes.C_TabelaFabricante.value);
  ActiveControl := TS_DBEdit1;
end;

procedure TFrmFabricantes.TS_DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    TS_DBEdit2ButtonClick(self,0);
end;

end.
