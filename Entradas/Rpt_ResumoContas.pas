unit Rpt_ResumoContas;

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
  TRptResumoContas = class(TRptPadrao)
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
    C_ConsultaSaldoInicial: TIBBCDField;
    C_ConsultaDiferenca: TIBBCDField;
    C_ConsultaSaldoFinal: TIBBCDField;
    dbgConsultaSaldoInicial: TdxDBGridColumn;
    dbgConsultaSaldoFinal: TdxDBGridColumn;
    dbgConsultaDiferenca: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    dData: TDateTime;
    function DescConta(nConta: integer):string;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptResumoContas: TRptResumoContas;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptResumoContas.Atualizar;
var
  nSaldo,nDebito,nCredito: currency;
begin
  if bCarregando then
    exit;

  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
    'where c.sintetico = ''N''';
    DisableControls;
    open;
  end;  

  while not C_Consulta.eof do begin
    nSaldo   := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,0,trunc(FirstMonthDay(dtDataI.date))-1);

    nDebito  := DMProjeto.SaldoContaDebito(C_ConsultaConta.value,trunc(dtDataI.date));
    nCredito := DMProjeto.SaldoContaCredito(C_ConsultaConta.value,trunc(dtDataI.date));

    C_Consulta.edit;

    if not C_ConsultaContaPai.IsNull then
      C_ConsultaDescConta.value := DescConta(C_ConsultaContaPai.value)+': '+C_ConsultaDescConta.value;

    C_ConsultaSaldoInicial.value := nSaldo;

    C_ConsultaDebito.value     := abs(nDebito);
    C_ConsultaCredito.value    := nCredito;
    C_ConsultaDiferenca.value  := C_ConsultaDebito.value + C_ConsultaCredito.value;
    C_ConsultaSaldoFinal.value := C_ConsultaSaldoInicial.value + C_ConsultaDiferenca.value;
    C_Consulta.post;

    C_Consulta.next;
  end;
  C_Consulta.first;
  C_Consulta.EnableControls;
  dbgConsulta.GotoFirst;
end;

procedure TRptResumoContas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

function TRptResumoContas.DescConta;
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

procedure TRptResumoContas.dbgConsultaDblClick(Sender: TObject);
var nConta: integer;
begin
  inherited;
  nConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
  if (lowercase(dbgConsulta.FocusedField.FieldName) = 'codigoreduzido') or (lowercase(dbgConsulta.FocusedField.FieldName) = 'descconta') then begin
    DMProjeto.SetParametrosForm([nConta]);
    DMProjeto.CriarForm('FrmContas', Self, True);
  end
  else begin
    DMProjeto.SetParametrosForm([2,nConta,int(dtDataI.date)]);
    DMProjeto.CriarForm('RptGeneralLedger', Self, True);
  end;
end;

procedure TRptResumoContas.dtDataIChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptResumoContas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  dData := FirstMonthDay(DMProjeto.dDataSistema);
  dtDataI.date := DMProjeto.dDataSistema;
  bCarregando := false;
  Atualizar;
end;

end.
