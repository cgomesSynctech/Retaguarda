unit Rpt_Contas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, StdCtrls, dxfLabel, TS_Label, TS_MaxPanel,
  TS_LastDataObject, DlgMsg, dxmdaset, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, Buttons, TS_SpeedButton, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxExEdtr, Placemnt, BTOdeum;

type
  TRptContas = class(TRptPadrao)
    C_ConsultaCODIGOREDUZIDO: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaDESCTIPO: TStringField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaCONTA: TIntegerField;
    dbgConsultaCODIGOREDUZIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaDESCTIPO: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaCONTA: TdxDBGridMaskColumn;
    C_ConsultaCONTAPAI: TIntegerField;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptContas: TRptContas;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TRptContas.Atualizar;
begin
  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas;
    open;
  end;
  dbgConsulta.FullExpand;
end;


procedure TRptContas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptContas.dbgConsultaDblClick(Sender: TObject);
var nConta: integer;
begin
  inherited;
  nConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
  DMProjeto.SetParametrosForm([nConta]);
  DMProjeto.CriarForm('FrmContas', Self, True);
end;

procedure TRptContas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
