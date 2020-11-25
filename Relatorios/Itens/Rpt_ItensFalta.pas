unit Rpt_ItensFalta;                              
                                                                         
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEditor,
  dxEdLib, TS_DateTimePicker, TS_CheckBox;

type
  TRptItensFalta = class(TRptPadrao)
    C_ConsultaITEMFALTA: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaQTD: TBCDField;
    C_ConsultaUSUARIO: TIntegerField;
    C_ConsultaCLIENTE: TIntegerField;
    C_ConsultaOBS: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaITEMFALTA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaQTD: TdxDBGridCurrencyColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure AtualizaConsulta;
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItensFalta: TRptItensFalta;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TRptItensFalta.AtualizaConsulta;
begin
//  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    Params.ParamByName('iData').AsDateTime := edDataI.Date;
    Params.ParamByName('fData').AsDateTime := edDataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
  end;
  dbgConsulta.FullExpand;
end;

procedure TRptItensFalta.FormShow(Sender: TObject);
begin
  inherited;
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := DmProjeto.dDataSistema;
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  AtualizaConsulta;
end;

procedure TRptItensFalta.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensFalta.dbgConsultaDblClick(Sender: TObject);
var
  nId: Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'CLIENTE',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmClientes',self,true);
  	end;
  end
  else begin
    with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'ITEMFALTA',0);
      SetParametrosForm([nId]);
      CriarForm('FrmItensFalta',self,true);
    end;
  end;
end;

procedure TRptItensFalta.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
