unit Rpt_CaractFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, Buttons, TS_BitBtn, dxExEdtr, dxEdLib,
  TS_CheckBox, teCtrls, TS_EffectsPanel, TS_SpeedButton, Menus,
  TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptCaractFornecedores = class(TRptPadrao)
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
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaDESC_PAIS: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaCONTAS: TStringField;
    C_ConsultaCONTA_DES: TStringField;
    C_ConsultaCONTA_PAG: TStringField;
    dbgConsultaCONTAS: TdxDBGridMaskColumn;
    dbgConsultaCONTA_DES: TdxDBGridMaskColumn;
    dbgConsultaCONTA_PAG: TdxDBGridMaskColumn;
    N9: TMenuItem;
    Endereo1: TMenuItem;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  RptCaractFornecedores: TRptCaractFornecedores;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptCaractFornecedores.AtualizaConsulta;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 2';                   
    Open;
  end;
end;

procedure TRptCaractFornecedores.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptCaractFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptCaractFornecedores.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  DMProjeto.SetParametrosForm([nIdFav]);
  DMProjeto.CriarForm('FrmFornecedores',Self,true);
end;

procedure TRptCaractFornecedores.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptCaractFornecedores.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptCaractFornecedores.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.
