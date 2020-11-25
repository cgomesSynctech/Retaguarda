unit Rpt_ComissaoLiquidezItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  dxEdLib, TS_CheckBox, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
  ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, dxEditor, TS_DateTimePicker;

type
  TRptComissaoLiquidezItem = class(TRptPadrao)
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaPARCELA: TIntegerField;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridCurrencyColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn;
    dbgConsultaMEDIACOMISSAO: TdxDBGridCurrencyColumn;
    dbgConsultaVALORCOMISSAO: TdxDBGridMaskColumn;
    dbgConsultaTOTALCOMISSAO: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    dtInicio: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dtFim: TTS_DateTimePicker;
    cbCompetencia: TTS_CheckBox;
    dtCompetencia: TTS_DateTimePicker;
    dbgConsultaNome: TdxDBGridColumn;
    C_ConsultaNOME: TStringField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaMEDIACOMISSAO: TFloatField;
    C_ConsultaVALORCOMISSAO: TFloatField;
    C_ConsultaTOTALCOMISSAO: TFloatField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cbCompetenciaChange(Sender: TObject);
    procedure Atualizar;
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptComissaoLiquidezItem: TRptComissaoLiquidezItem;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}


procedure TRptComissaoLiquidezItem.Atualizar;
Var dCompetencia: TDateTime;
Begin
  dCompetencia := 2;
  if cbCompetencia.Checked then
     dCompetencia := dtCompetencia.Date;
  with Q_Consulta do begin
    Close;
    ParambyName('DataI').Value := DtInicio.Date;
    ParambyName('DataF').Value := DtFim.Date;
    ParambyName('DataC').Value := dCompetencia;
  end;
  C_Consulta.Close;
  C_Consulta.FetchParams;
  C_Consulta.Open;
End;



procedure TRptComissaoLiquidezItem.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  dtInicio.Date := Funcoes.FirstMonthDay(DMPRojeto.dDataSistema);
  dtFim.Date := Funcoes.LastMonthDay(DMPRojeto.dDataSistema);
end;

procedure TRptComissaoLiquidezItem.cbCompetenciaChange(Sender: TObject);
begin
  inherited;
  dtCompetencia.Enabled := cbCompetencia.Checked;
end;

procedure TRptComissaoLiquidezItem.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
