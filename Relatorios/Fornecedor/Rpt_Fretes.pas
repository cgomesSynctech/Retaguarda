unit Rpt_Fretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, dxDBTLCl, dxGrClms;
type
  TRptFretes = class(TRptPadrao)
    C_ConsultaENTRADA: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaCIF_FOB: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDATANOTA: TDateField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCFOPNOTA: TStringField;
    C_ConsultaCFOPENTRADA: TStringField;
    C_ConsultaSERIENOTA: TStringField;
    C_ConsultaMODELO: TStringField;
    C_ConsultaDATAENTREGA: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaNOTAORIGEM: TIntegerField;
    C_ConsultaUSUARIO: TStringField;
    C_ConsultaUFORIGEM: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaRAZAO: TStringField;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaCIF_FOB: TdxDBGridImageColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaDATANOTA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCFOPNOTA: TdxDBGridMaskColumn;
    dbgConsultaCFOPENTRADA: TdxDBGridMaskColumn;
    dbgConsultaSERIENOTA: TdxDBGridMaskColumn;
    dbgConsultaMODELO: TdxDBGridMaskColumn;
    dbgConsultaBASECALCICMS: TdxDBGridCurrencyColumn;
    dbgConsultaALIQICMSCOMPRA: TdxDBGridCurrencyColumn;
    dbgConsultaVALORICMS: TdxDBGridCurrencyColumn;
    dbgConsultaTOTAL: TdxDBGridCurrencyColumn;
    dbgConsultaDATAENTREGA: TdxDBGridDateColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaNOTAORIGEM: TdxDBGridMaskColumn;
    dbgConsultaUSUARIO: TdxDBGridMaskColumn;
    dbgConsultaUFORIGEM: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    C_ConsultaBASECALCICMS: TFloatField;
    C_ConsultaALIQICMSCOMPRA: TBCDField;
    C_ConsultaVALORICMS: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    procedure DataIDateChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptFretes: TRptFretes;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TRptFretes.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.SQL.Text := ' select ' + getCampos + ' from ' + getTabelas +
                         ' where e.tipopadrao = 108 and e.data between :d1 and :d2 and e.situacao = ''N'' ';
  Q_Consulta.ParamByName('d1').AsDateTime := DataI.Date;
  Q_Consulta.ParamByName('d2').AsDateTime := DataF.Date;
  C_Consulta.Open;
  //
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('No período de ' + DataI.Text + ' a ' + DataF.Text );
    GoToFirst;
  end;
end;

procedure TRptFretes.DataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptFretes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptFretes.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema ;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptFretes.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
    DMProjeto.SetParametrosForm([dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FAVORECIDO',0)]);
    DMProjeto.CriarForm('FrmFornecedores',self,true);
  end
  else begin
    DMProjeto.SetParametrosForm([dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'ENTRADA',0)]);
    DMProjeto.CriarForm('FrmFretes',self,true);
  end;
end;

end.
