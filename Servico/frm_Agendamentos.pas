unit frm_Agendamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEditDate, dxDBTLCl, dxGrClms;

type
  TfrmAgendamentos = class(TFrmPadrao)
    df_favorecido: TTS_DBEditFavorecido;
    TS_Label5: TTS_Label;
    DF_FUNCIONARIO: TTS_DBEditFavorecido;
    TS_Label1: TTS_Label;
    TS_Label27: TTS_Label;
    DF_DataNasc: TTS_DBEditDate;
    GridEquipamento: TTS_QDBGrid;
    GridEquipamentoNUMMAQUINA: TdxDBGridColumn;
    GridEquipamentolkMarca: TdxDBGridLookupColumn;
    GridEquipamentolkTecnologia: TdxDBGridLookupColumn;
    GridEquipamentoPAVIMENTOS: TdxDBGridMaskColumn;
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamentos: TfrmAgendamentos;

implementation

uses DM_Projeto, DM_Agendamentos;

{$R *.dfm}

procedure TfrmAgendamentos.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgAgendamento', self, true);
end;

procedure TfrmAgendamentos.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm( [null, DMAgendamentos.C_TabelaAGENDAMENTO.AsInteger] );
  DMProjeto.CriarForm('DlgTransferirAgendamento', self, true);
end;

end.
