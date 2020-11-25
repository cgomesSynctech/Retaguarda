unit Rpt_TrialBalance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker,
  StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptTrialBalance = class(TRptPadrao)
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
    lblPeriodo: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    dbgConsultaDebito: TdxDBGridColumn;
    dbgConsultaCredito: TdxDBGridColumn;
    C_ConsultaDebito: TIBBCDField;
    C_ConsultaCredito: TIBBCDField;
    C_ConsultaCONTAPAI: TIntegerField;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    function DescConta(nConta: integer):string;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptTrialBalance: TRptTrialBalance;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TRptTrialBalance.Atualizar;
var nSaldo: currency;
begin
  if bCarregando then
    exit;
  with C_Consulta do begin
   close;
   CommandText := 'Select ' + getCampos + ' ' +
                  'From ' + getTabelas + ' ' +
                  'where c.sintetico = ''N'' and c.saldo <> 0';
   DisableControls;
   open;
 end;  

  while not C_Consulta.eof do begin
    nSaldo := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,0,trunc(dtDataI.date));
    C_Consulta.edit;

    if not C_ConsultaContaPai.IsNull then
      C_ConsultaDescConta.value := DescConta(C_ConsultaContaPai.value)+': '+C_ConsultaDescConta.value;

    if nSaldo > 0 then
      C_ConsultaCredito.value := nSaldo
    else
      C_ConsultaDebito.value := abs(nSaldo);
    C_Consulta.post;

    C_Consulta.next;
  end;
  C_Consulta.first;
  C_Consulta.EnableControls;
  dbgConsulta.GotoFirst;
end;

procedure TRptTrialBalance.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

function TRptTrialBalance.DescConta;
begin
  inherited;
  with DMProjeto.Q_Contabil do begin
    close;
    SQL.text := 'select descricao from contas where conta = :conta';
    params[0].asinteger := nConta;
    open;
  end;
  result := DMProjeto.Q_Contabil.FieldByName('descricao').asstring;
end;

procedure TRptTrialBalance.dbgConsultaDblClick(Sender: TObject);
var nConta: integer;
begin
  inherited;
  nConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
  if (lowercase(dbgConsulta.FocusedField.FieldName) = 'codigoreduzido') or (lowercase(dbgConsulta.FocusedField.FieldName) = 'descconta')
     or (lowercase(dbgConsulta.FocusedField.FieldName) = 'desctipo') then begin
    DMProjeto.SetParametrosForm([nConta]);
    DMProjeto.CriarForm('FrmContas', Self, false);
  end
  else begin
    DMProjeto.SetParametrosForm([2,nConta,int(dtDataI.date)]);
    DMProjeto.CriarForm('RptGeneralLedger', Self, false);
  end;
end;

procedure TRptTrialBalance.dtDataIChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptTrialBalance.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  dtDataI.date := DMProjeto.dDataSistema;
  bCarregando := false;
  Atualizar;
end;

end.
