unit Rpt_ItensEntradaSaida;
                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, Buttons,
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, TS_CheckBox, teCtrls, TS_EffectsPanel,
  TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_PopupEdit, TS_PopupFiltrarItens;

type
  TRptItensEntradaSaida = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dbgConsultaQTDPEDIDOCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaQTDCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaPONTOPEDIDO: TdxDBGridColumn;
    Label1: TLabel;
    dbgConsultaQTDVENDAS: TdxDBGridMaskColumn;
    dbgConsultaAVGVENDAS: TdxDBGridMaskColumn;
    C_ConsultaNOMEULTFORNE: TStringField;
    dbgConsultaNOMEULTFORNE: TdxDBGridMaskColumn;
    C_ConsultaESTOQUE: TFloatField;
    C_ConsultaQTDEMINIMO: TFloatField;
    C_ConsultaPONTOPEDIDO: TFloatField;
    C_ConsultaQTDCOMPRA: TFloatField;
    C_ConsultaQTDPEDIDOCOMPRA: TFloatField;
    C_ConsultaQTDVENDAS: TFloatField;
    C_ConsultaAVGVENDAS: TFloatField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaGRUPO: TStringField;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sSQL : String;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;
    procedure AtualizaItens;
  end;

var
  RptItensEntradaSaida: TRptItensEntradaSaida;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItensEntradaSaida.AtualizaItens;
var
   sPrimeiroNome : String;
   i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where '+popupFiltroItens.getSQL;
    Params.ParamByName('DataI').AsDateTime := DataI.Date;
    Params.ParamByName('DataF').AsDateTime := DataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + DataI.Text + ' a ' + DataF.Text );
    TS_ReportFilter.Add(replace(popupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptItensEntradaSaida.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensEntradaSaida.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
begin
  inherited;
  nItem := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'item',0);
  DMProjeto.SetParametrosForm([nItem, DataI.Date, DataF.Date, sDescItensSelec, sDescGruposSelec, sDescFabrSelec]);
  DMProjeto.CriarForm('RptItensEntradaSaidaDetalhe',Self,true);
end;

procedure TRptItensEntradaSaida.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensEntradaSaida.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  AtualizaItens;
end;

procedure TRptItensEntradaSaida.PopupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

end.
