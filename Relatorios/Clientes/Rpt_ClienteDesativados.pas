unit Rpt_ClienteDesativados;                                                             

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib,
  TS_CheckBox, dxEditor, TS_DateTimePicker, Buttons, TS_SpeedButton, Menus,
  TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptClienteDesativados = class(TRptPadrao)
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
    C_ConsultaULTCOMPRA: TDateField;
    C_ConsultaULTVALORCOMPRA: TBCDField;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaULTCOMPRA: TdxDBGridDateColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaEMAIL: TStringField;
    dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn;
    C_ConsultaOBS: TStringField;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    N9: TMenuItem;
    Q_ULTCompra: TIBQuery;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AtualizaDados;
  public
    { Public declarations }
  end;

var
  RptClienteDesativados: TRptClienteDesativados;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptClienteDesativados.AtualizaDados;
begin
  with C_Consulta do  begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido=1 and f.desativado=''S''';
    Open;
  end;
end;

procedure TRptClienteDesativados.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaDados;
end;

procedure TRptClienteDesativados.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('ULTCOMPRA') <> nil then
      C_Consulta.FindField('ULTCOMPRA').EditMask := ShortDateFormat;
  AtualizaDados;
end;

procedure TRptClienteDesativados.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  if (dbgConsulta.FocusedField.FieldName = 'ULTCOMPRA')
     or (dbgConsulta.FocusedField.FieldName = 'ULTVALORCOMPRA')  then begin
    if dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA',StrToDateTime('1/1/1900')) = StrToDateTime('1/1/1900') then
       exit; 
    Q_ULTCompra.Close;
    Q_ULTCompra.ParamByName('Data').AsDateTime := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA',StrToDateTime('1/1/1900'));
    Q_ULTCompra.ParamByName('Fav').AsInteger := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'favorecido','');
    Q_ULTCompra.Open;
    nIdFav := Q_ULTCompra.Fields[0].AsInteger;
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmInvoices',Self,true);
    Q_ULTCompra.Close;
  end
  else begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmClientes',Self,true);  
  end;
end;

procedure TRptClienteDesativados.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptClienteDesativados.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaDados;
end;

procedure TRptClienteDesativados.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.
