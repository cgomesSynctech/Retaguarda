unit Rpt_Autorizacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxEditor, TS_DateTimePicker;

type
  TRptAutorizacoes = class(TRptPadrao)
    C_ConsultaUSUARIO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCOMPUTADOR: TStringField;
    C_ConsultaMODULO: TStringField;
    C_ConsultaAUTORIZACAO: TStringField;
    C_ConsultaCOMPLEMENTO: TStringField;
    C_ConsultaID: TIntegerField;
    dbgConsultaUSUARIO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCOMPUTADOR: TdxDBGridMaskColumn;
    dbgConsultaMODULO: TdxDBGridMaskColumn;
    dbgConsultaAUTORIZACAO: TdxDBGridMaskColumn;
    dbgConsultaCOMPLEMENTO: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    DtInicio: TTS_DateTimePicker;
    DtFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dbgConsultaOK: TdxDBGridColumn;
    C_ConsultaOK: TStringField;
    C_ConsultaHORA: TTimeField;
    C_ConsultaDataHora: TDateTimeField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Atualiza;
  public
    { Public declarations }
  end;

var
  RptAutorizacoes: TRptAutorizacoes;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptAutorizacoes.Atualiza;
Begin
  With Q_Consulta do Begin
    Close;
    ParamByName('DtInicio').AsDateTime := DtInicio.Date;
    ParamByName('DtFim').AsDateTime := DtFim.Date;
  End;
  C_Consulta.Close;
  C_Consulta.FetchParams;
  C_Consulta.Open;
End;
procedure TRptAutorizacoes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DtInicio.Date := Date - 10;
  DtFim.Date := Date;
  Atualiza;
end;

procedure TRptAutorizacoes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TRptAutorizacoes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DataHora').AsDateTime := DataSet.FieldByName('Data').AsDateTime+DataSet.FieldByName('Hora').AsDateTime; 
end;

end.
