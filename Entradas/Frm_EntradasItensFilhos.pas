unit Frm_EntradasItensFilhos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, db, Menus,
  TS_PopupMenu, DM_Entradas, dxExEdtr, Placemnt, BTOdeum;

type
  TFrmEntradasItensFilhos = class(TFrmModeloCadastros)
    dbgSubItens: TTS_QDBGrid;
    dbgSubItensSAIDAITEMFILHO: TdxDBGridMaskColumn;
    dbgSubItensIDITEM: TdxDBGridMaskColumn;
    dbgSubItensITEM: TdxDBGridMaskColumn;
    dbgSubItensCodigo: TdxDBGridButtonColumn;
    dbgSubItensDescricao: TdxDBGridButtonColumn;
    dbgSubItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgSubItensColumn8: TdxDBGridLookupColumn;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMENTRADAS;
  end;

var
  FrmEntradasItensFilhos: TFrmEntradasItensFilhos;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TFrmEntradasItensFilhos.btGravarClick(Sender: TObject);
begin
  inherited;
  if (DM.C_EntradasItensFilhos.State in [dsEdit,dsInsert]) then
    DM.C_EntradasItensFilhos.post;
  dbgSubItens.DataSource := nil;
  DM := nil;
  modalresult := 1;
end;

procedure TFrmEntradasItensFilhos.FormShow(Sender: TObject);
begin
  inherited;
  dbgSubItens.DataSource := DM.C_EntradasItensFilhosDS;
end;

end.
