unit Rpt_PlanilhaContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, TS_RadioGroup;

type
  TRptPlanilhaContabil = class(TRptPadrao)
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    lbA: TTS_Label;
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaPARCELA: TIntegerField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaJUROSPAGOS: TBCDField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaEMPRESAORIGEM: TStringField;
    C_ConsultaHISTORICO: TStringField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridCurrencyColumn;
    dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn;
    dbgConsultaJUROSPAGOS: TdxDBGridCurrencyColumn;
    dbgConsultaDESCONTOS: TdxDBGridCurrencyColumn;
    dbgConsultaEMPRESAORIGEM: TdxDBGridMaskColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    RgForma: TTS_RadioGroup;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPlanilhaContabil: TRptPlanilhaContabil;

implementation
uses DM_Projeto, funcoes, DM_Financeiro;


{$R *.dfm}

procedure TRptPlanilhaContabil.btAtualizarClick(Sender: TObject);
begin
    with C_Consulta do begin
     Close;
     CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' ;

    if RgForma.ItemIndex = 0 Then
      CommandText := CommandText + 'Where r.Data >= :DataI and r.Data <= :DataF and r.Situacao = ''N'' and f.tipofavorecido = 2 '
     Else
      CommandText := CommandText + 'Where dp.competencia >= :DataI and dp.competencia <= :DataF and r.Situacao = ''N'' and f.tipofavorecido = 2 ';

     FetchParams;
     Params.ParamByName('DataI').AsDate := DataI.Date;
     Params.ParamByName('DataF').AsDate := DataF.Date;
     Open;
    end;

    with dbgConsulta do begin
     TS_ReportFilter.Clear;
     TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
     FullExpand;
    end;
end;

procedure TRptPlanilhaContabil.DataIDateChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptPlanilhaContabil.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
end;

end.
