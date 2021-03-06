unit Rpt_MetasVendedor;
                                                                
interface            

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dxEditor, dxEdLib, TS_DateTimePicker, DB, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent, DBClient,
  Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_CheckBox;

type
  TRptMetasVendedor = class(TRptPadrao)
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaMETAPERIODO: TBCDField;
    C_ConsultaDATAFINAL: TDateField;
    C_ConsultaDATAINICIAL: TDateField;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaMETAPERIODO: TdxDBGridCurrencyColumn;
    dbgConsultaDATAFINAL: TdxDBGridDateColumn;
    dbgConsultaDATAINICIAL: TdxDBGridDateColumn;
    dbgConsultaFATPERIODO: TdxDBGridCurrencyColumn;
    C_ConsultaID: TIntegerField;
    dbgConsultaID: TdxDBGridMaskColumn;
    C_ConsultaSaldo: TCurrencyField;
    dbgConsultaSaldo: TdxDBGridColumn;
    C_ConsultaFATPERIODO: TFloatField;
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
  RptMetasVendedor: TRptMetasVendedor;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}
procedure TRptMetasVendedor.AtualizaConsulta;
var meta: integer;
begin
//  ActiveControl := nil;
  meta := 0;
  Q_SQLReport.Close;
  Q_SQLReport.Sql.Text := 'select id from metasfaturamento where ' +
                          '((datainicial >= :datai) and (datainicial <= :dataf)) ' +
                          ' or ((datafinal >= :datai) and (datafinal <= :dataf)) or ' +
                          '((datainicial <= :datai) and (datafinal >= :dataf)) ';
  Q_SQLReport.Params.ParamByName('datai').AsDateTime := edDataI.Date;
  Q_SQLReport.Params.ParamByName('dataf').AsDateTime := edDataF.Date;
  Q_SQLReport.Open;
  Meta := Q_SQLReport.FieldByName('id').AsInteger;
  with C_Consulta do begin
    Close;
    Params.ParamByName('id').AsInteger := meta;
    Open;
  end;

  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Per�odo de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
  end;
  dbgConsulta.FullExpand;
  dbgConsulta.FindColumnByFieldName('DATAINICIAL').Sorted := csUp;
end;

procedure TRptMetasVendedor.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptMetasVendedor.dbgConsultaDblClick(Sender: TObject);
var
  nId: Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'VENDEDOR',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFuncionarios',self,true);
  	end;
  end
  else begin
    with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'ID',0);
      SetParametrosForm([nId]);
      CriarForm('FrmMetasFaturamento',self,true);
    end;
  end;
end;

procedure TRptMetasVendedor.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaSaldo.Value := C_ConsultaMETAPERIODO.Value - C_ConsultaFATPERIODO.Value;
end;

procedure TRptMetasVendedor.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  edDataI.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := FirstMonthDay(DmProjeto.dDataSistema);
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := nil;
  if edDataF.GetEditingText = '' then edDataF.Date := LastMonthDay(DmProjeto.dDataSistema);
  edDataF.OnDateChange := edDataIDateChange;
  AtualizaConsulta;
end;

procedure TRptMetasVendedor.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
