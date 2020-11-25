unit Rpt_MetasFaturamento;
                                                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxCntner, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, DB,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent,
  DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_CheckBox;

type
  TRptMetasFaturamento = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaDATAINICIAL: TDateField;
    C_ConsultaDATAFINAL: TDateField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaDATAINICIAL: TdxDBGridDateColumn;
    dbgConsultaDATAFINAL: TdxDBGridDateColumn;
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    dbgConsultaFATURADO: TdxDBGridCurrencyColumn;
    C_ConsultaMETAPERIODO: TBCDField;
    dbgConsultaMETAPERIODO: TdxDBGridCurrencyColumn;
    C_ConsultaSaldo: TCurrencyField;
    dbgConsultaSaldo: TdxDBGridColumn;
    C_ConsultaFATURADO: TFloatField;
    procedure AtualizaConsulta;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptMetasFaturamento: TRptMetasFaturamento;

implementation
uses DM_Projeto;
{$R *.dfm}
procedure TRptMetasFaturamento.AtualizaConsulta;
begin
//  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    Params.ParamByName('datai').AsDateTime := edDataI.Date;
    Params.ParamByName('dataf').AsDateTime := edDataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
  end;
end;

procedure TRptMetasFaturamento.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptMetasFaturamento.dbgConsultaDblClick(Sender: TObject);
var
  nId: Integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'ID',0);
    SetParametrosForm([nId]);
    CriarForm('FrmMetasFaturamento',self,true);
  end;
end;

procedure TRptMetasFaturamento.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaSaldo.Value := C_ConsultaMETAPERIODO.Value - C_ConsultaFATURADO.Value;
end;

procedure TRptMetasFaturamento.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  edDataI.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := IncMonth(DmProjeto.dDataSistema, -6);
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := nil;
  if edDataF.GetEditingText = '' then edDataF.Date := IncMonth(DmProjeto.dDataSistema, 6);
  edDataF.OnDateChange := edDataIDateChange;
  AtualizaConsulta;
end;

procedure TRptMetasFaturamento.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
