unit Rpt_Remetentes;

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
  TRptRemetentes = class(TRptPadrao)
    C_ConsultaAGENCIA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaTAXA: TBCDField;
    C_ConsultaPERC: TBCDField;
    C_ConsultaTIPO: TStringField;
    C_ConsultaAGENCIA_CAMBIO: TIntegerField;
    C_ConsultaAGENCIA1: TIntegerField;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaCAMBIO: TBCDField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESC_MOEDA: TStringField;
    dbgConsultaAGENCIA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaTAXA: TdxDBGridCurrencyColumn;
    dbgConsultaPERC: TdxDBGridCurrencyColumn;
    dbgConsultaCAMBIO: TdxDBGridCurrencyColumn;
    dbgConsultaDESC_MOEDA: TdxDBGridMaskColumn;
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
     procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptRemetentes: TRptRemetentes;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptRemetentes.Atualizar;
begin
  with C_Consulta do begin
   Close;
   CommandText := 'Select ' + getCampos + ' From ' + getTabelas + ' ' +
                  'where ag.tipo=''E''';
   Open;
 end;
end;


procedure TRptRemetentes.dbgConsultaDblClick(Sender: TObject);
var
   nReg : Integer;
begin
  inherited;
  nReg := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Agencia', 0);
  DMProjeto.SetParametrosForm([nReg]);
  DMProjeto.CriarForm('FrmAgenciasEmpresa', Self, true);
end;

procedure TRptRemetentes.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptRemetentes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptRemetentes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
