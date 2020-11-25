unit Rpt_ReposicaoGondolas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  dxEdLib, TS_CheckBox, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
  ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel;

type
  TRptReposicaoGondolas = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaATUAL: TBCDField;
    C_ConsultaESTOQUEMINIMO: TBCDField;
    C_ConsultaMININOREPOR: TBCDField;
    C_ConsultaLOCALIZACAO: TStringField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaATUAL: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUEMINIMO: TdxDBGridCurrencyColumn;
    dbgConsultaMININOREPOR: TdxDBGridCurrencyColumn;
    dbgConsultaLOCALIZACAO: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }

  end;

var
  RptReposicaoGondolas: TRptReposicaoGondolas;

implementation

uses DM_Projeto;

{$R *.dfm}

Procedure TRptReposicaoGondolas.Atualizar;
Begin
  C_Consulta.Close;
  C_Consulta.Open;
End;

procedure TRptReposicaoGondolas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptReposicaoGondolas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
