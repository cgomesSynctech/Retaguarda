unit Rpt_Agentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel;

type
  TRptAgentes = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPAIS: TIntegerField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaTIPOATIVIDADE: TIntegerField;
    C_ConsultaPLANOPAGAMENTO: TIntegerField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaLIMITECREDITO: TBCDField;
    C_ConsultaTAXAVEL: TStringField;
    C_ConsultaTAX: TIntegerField;
    C_ConsultaEIN: TStringField;
    C_ConsultaSSN: TStringField;
    C_ConsultaTABELAPRECO: TIntegerField;
    C_ConsultaDESATIVADO: TStringField;
    C_ConsultaEXIGIVEL1099: TStringField;
    C_ConsultaTIPOENTREGA: TIntegerField;
    C_ConsultaDATACADASTRO: TDateField;
    C_ConsultaSITE: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaIMPORTACAO: TIntegerField;
    C_ConsultaSITUACAO: TStringField;
    C_ConsultaCARGO: TIntegerField;
    C_ConsultaLOGOTIPO: TStringField;
    C_ConsultaJUROSFACTORY: TBCDField;
    C_ConsultaTAXASFACTORY: TBCDField;
    C_ConsultaFLOATINGFACTORY: TBCDField;
    C_ConsultaMEMO_CHECK: TStringField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaCONTA: TIntegerField;
    C_ConsultaNUMERO_REVENDA: TStringField;
    C_ConsultaTIPO_FUNC: TStringField;
    C_ConsultaDATANASC: TDateField;
    C_ConsultaCAMPO01: TStringField;
    C_ConsultaCAMPO02: TStringField;
    C_ConsultaCAMPO03: TStringField;
    C_ConsultaCAMPO04: TStringField;
    C_ConsultaCAMPO05: TStringField;
    C_ConsultaCAMPO06: TStringField;
    C_ConsultaCAMPO07: TStringField;
    C_ConsultaCAMPO08: TStringField;
    C_ConsultaCAMPO09: TStringField;
    C_ConsultaCAMPO10: TStringField;
    C_ConsultaCOMISSAO: TBCDField;
    C_ConsultaISVENDEDOR: TStringField;
    C_ConsultaCONTAPAGAMENTO: TIntegerField;
    C_ConsultaCONTADESPESAS: TIntegerField;
    C_ConsultaULTCOMPRA: TDateField;
    C_ConsultaULTVALORCOMPRA: TBCDField;
    C_ConsultaPERIODICIDADE: TStringField;
    C_ConsultaDATAADIMISSAO: TDateField;
    C_ConsultaDATADEMISSAO: TDateField;
    C_ConsultaDATAAUMENTO: TDateField;
    C_ConsultaAGRUPARPORITEM: TStringField;
    C_ConsultaRELACIONAMENTO: TIntegerField;
    C_ConsultaDESCRICAORELAC: TStringField;
    C_ConsultaINICIOSEMANA: TIntegerField;
    C_ConsultaDIASPERIODO: TIntegerField;
    C_ConsultaQUALIDADE: TIntegerField;
    C_ConsultaZONA: TIntegerField;
    C_ConsultaGRUPOCLIENTE: TIntegerField;
    C_ConsultaGRAURELAC: TIntegerField;
    C_ConsultaULTIMOPGTO: TDateField;
    C_ConsultaULTIMOVALORPAGO: TBCDField;
    C_ConsultaSEXO: TStringField;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCONTATO: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaJUROSFACTORY: TdxDBGridCurrencyColumn;
    dbgConsultaTAXASFACTORY: TdxDBGridCurrencyColumn;
    dbgConsultaDESC_PAIS: TdxDBGridMaskColumn;
    ppmGrid: TTS_PopupMenu;
    MostrarEndereo1: TMenuItem;
    C_ConsultaPreviewEnd: TStringField;
    procedure MostrarEndereo1Click(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
     procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAgentes: TRptAgentes;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptAgentes.Atualizar;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 7 ';                   
    Open;
    First;
  end;

  while not C_Consulta.Eof do begin
    C_Consulta.Edit;
    C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
    C_Consulta.Post;
    C_Consulta.Next;
  end;
end;

procedure TRptAgentes.MostrarEndereo1Click(Sender: TObject);
begin
  inherited;
  MostrarEndereo1.Checked := not MostrarEndereo1.Checked;
  if MostrarEndereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptAgentes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptAgentes.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptAgentes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptAgentes.dbgConsultaDblClick(Sender: TObject);
var
   nReg : Integer;
begin
  inherited;
  nReg := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Favorecido', 0);
  DMProjeto.SetParametrosForm([nReg]);
  DMProjeto.CriarForm('FrmAgencias', Self, true);
end;

end.
