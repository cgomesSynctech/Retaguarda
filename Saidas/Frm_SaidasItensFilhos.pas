unit Frm_SaidasItensFilhos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, db, Menus,
  TS_PopupMenu, DM_Saidas, dxExEdtr, Placemnt, BTOdeum;

type
  TFrmSaidasItensFilhos = class(TFrmModeloCadastros)
    dbgSubItens: TTS_QDBGrid;
    dbgSubItensSAIDAITEMFILHO: TdxDBGridMaskColumn;
    dbgSubItensIDITEM: TdxDBGridMaskColumn;
    dbgSubItensITEM: TdxDBGridMaskColumn;
    dbgSubItensCodigo: TdxDBGridButtonColumn;
    dbgSubItensDescricao: TdxDBGridButtonColumn;
    dbgSubItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgSubItensColumn8: TdxDBGridLookupColumn;
    dbgSubItensColumn9: TdxDBGridColumn;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMSAIDAS;
  end;

var
  FrmSaidasItensFilhos: TFrmSaidasItensFilhos;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TFrmSaidasItensFilhos.btGravarClick(Sender: TObject);
begin
  inherited;
  if (DM.C_SaidasItensFilhos.State in [dsEdit,dsInsert]) then
    DM.C_SaidasItensFilhos.post;
  dbgSubItens.DataSource := nil;
  DM := nil;
  modalresult := 1;
end;

procedure TFrmSaidasItensFilhos.FormShow(Sender: TObject);
begin
  inherited;
  dbgSubItens.DataSource := DM.C_SaidasItensFilhosDS;
end;

end.
