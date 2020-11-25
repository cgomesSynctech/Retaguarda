unit rpt_Rotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, DB, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent, DBClient,
  Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, dxEdLib, TS_CheckBox,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel;

type
  TRptRotas = class(TRptPadrao)
    C_ConsultaROTA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaCLIENTE: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaCELULAR: TStringField;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    C_ConsultaQTDEEQUIP: TIntegerField;
    dbgConsultaQTDEEQUIP: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptRotas: TRptRotas;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptRotas.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.SQL.Text := ' select ' + getCampos + ' from ' + getTabelas;
  C_Consulta.Open;
  dbgConsulta.ExpandirGrupos;
end;

procedure TRptRotas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptRotas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
