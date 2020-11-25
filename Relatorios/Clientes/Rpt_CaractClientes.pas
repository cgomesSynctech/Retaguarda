unit Rpt_CaractClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxDBGrid, dxTL, dxDBCtrl, FormsComponent, DBClient,
  Provider, IBCustomDataSet, IBQuery, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxCntner, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, ExtCtrls, Buttons, TS_SpeedButton, StdCtrls, dxfLabel,
  TS_MaxPanel, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxExEdtr, Placemnt, BTOdeum,
  TS_Label;

type
  TRptCaractClientes = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaDESCTIPOATIVIDADE: TStringField;
    C_ConsultaDESCTABELAPRECO: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaDESCTIPOATIVIDADE: TdxDBGridMaskColumn;
    dbgConsultaDESCTABELAPRECO: TdxDBGridMaskColumn;
    C_ConsultaDATANASC: TDateField;
    dbgConsultaDATANASC: TdxDBGridColumn;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaDESC_PAIS: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaCONTAS: TStringField;
    dbgConsultaCONTAS: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    N9: TMenuItem;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptCaractClientes: TRptCaractClientes;

implementation
uses DM_Projeto;
{$R *.DFM}

procedure TRptCaractClientes.AtualizaConsulta;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 1 and  f.desativado = ''N'' ';
    Open;
  end;
end;

procedure TRptCaractClientes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptCaractClientes.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('DATANASC') <> nil then
     C_Consulta.FindField('DATANASC').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptCaractClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Consulta.Close;
  Action := caFree;
end;

procedure TRptCaractClientes.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  DMProjeto.SetParametrosForm([nIdFav]);
  DMProjeto.CriarForm('FrmClientes',Self,true);
end;

procedure TRptCaractClientes.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptCaractClientes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptCaractClientes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.
