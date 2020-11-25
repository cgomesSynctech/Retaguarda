unit Rpt_ChamadosPorFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, DB, dxEdLib, TS_PopupEdit, StdCtrls, CheckLst,
  TS_CheckListBox, dxEditor, TS_DateTimePicker, FormsComponent, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider,
  IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxCntner, TS_CheckBox, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, TS_TimeEdit;

type
  TRptChamadosPorFunc = class(TRptPadrao)
    lbDataI: TTS_Label;
    ckbPeriodo: TTS_CheckBox;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
    lbDataF: TTS_Label;
    clbServicos: TTS_CheckListBox;
    lbServico: TTS_Label;
    edServicos: TTS_PopupEdit;
    C_ConsultaORDEMSERVICO: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaEQUIPAMENTO: TIntegerField;
    C_ConsultaFUNCIONARIO: TIntegerField;
    C_ConsultaDTAVISO: TDateField;
    C_ConsultaHORAAVISO: TTimeField;
    C_ConsultaDTCHEGADA: TDateField;
    C_ConsultaHORACHEGADA: TTimeField;
    C_ConsultaDTTERMINO: TDateField;
    C_ConsultaHORATERMINO: TTimeField;
    C_ConsultaDESCCLIENTE: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaDESCFUNCIONARIO: TStringField;
    C_ConsultaDESCCARGO: TStringField;
    dbgConsultaORDEMSERVICO: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaEQUIPAMENTO: TdxDBGridMaskColumn;
    dbgConsultaFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaDTAVISO: TdxDBGridDateColumn;
    dbgConsultaHORAAVISO: TdxDBGridTimeColumn;
    dbgConsultaDTCHEGADA: TdxDBGridDateColumn;
    dbgConsultaHORACHEGADA: TdxDBGridTimeColumn;
    dbgConsultaDTTERMINO: TdxDBGridDateColumn;
    dbgConsultaHORATERMINO: TdxDBGridTimeColumn;
    dbgConsultaDESCCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaDESCFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaDESCCARGO: TdxDBGridMaskColumn;
    C_ConsultaTIPOSERVICO: TIntegerField;
    dbgConsultaTIPOSERVICO: TdxDBGridImageColumn;
    C_ConsultaNUMMAQUINA: TStringField;
    dbgConsultaNUMMAQUINA: TdxDBGridMaskColumn;
    C_ConsultaDESCRICAOSERVICO: TStringField;
    dbgConsultaDESCRICAOSERVICO: TdxDBGridMaskColumn;
    ckbHora: TTS_CheckBox;
    lbHora1: TTS_Label;
    lbHora2: TTS_Label;
    edHora1: TTS_TimeEdit;
    edHora2: TTS_TimeEdit;
    ckbPassou: TTS_CheckBox;
    dbgConsultaDtDecorrido: TdxDBGridColumn;
    dbgConsultaRota: TdxDBGridColumn;
    C_ConsultaROTA: TStringField;
    C_ConsultaDtDecorrido: TTimeField;
    dbgConsultaDtATENDDecorrido: TdxDBGridColumn;
    C_ConsultaDtATENDDecorrido: TTimeField;
    procedure edServicosCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btAtualizarClick(Sender: TObject);
    procedure ckbPeriodoChange(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure ckbHoraChange(Sender: TObject);
    procedure edHora1Change(Sender: TObject);
    procedure ckbPassouChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptChamadosPorFunc: TRptChamadosPorFunc;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TRptChamadosPorFunc.Atualizar;
var sServ, sAux : string;
begin
  C_Consulta.Close;
  Q_Consulta.SQL.Text := ' select ' + getCampos + ' from ' + getTabelas +
                         ' where 1 = 1 ';
  if ckbPeriodo.Checked then begin
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and os.dtaviso between :d1 and :d2 ';
    Q_Consulta.ParamByName('d1').AsDateTime := edDataI.Date;
    Q_Consulta.ParamByName('d2').AsDateTime := edDataF.Date;
  end;
  if ckbHora.Checked then begin
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and os.horaaviso >= :h1 and os.horaaviso <= :h2 ';
    Q_Consulta.ParamByName('h1').AsDateTime := edHora1.Time;
    Q_Consulta.ParamByName('h2').AsDateTime := edHora2.Time;
  end;
  sServ := clbServicos.Selecionados(True);
  if sServ <> '' then begin
    sAux := '';
    if Pos('Chamado',sServ) > 0 then sAux := Cexp(sAux,',') + '1';
    if Pos('Vistoria',sServ) > 0 then sAux := Cexp(sAux,',') + '2';
    if Pos('Preventiva',sServ) > 0 then sAux := Cexp(sAux,',') + '3';
    if Pos('Corretiva',sServ) > 0 then sAux := Cexp(sAux,',') + '4';
    if Pos('Outros',sServ) > 0 then sAux := Cexp(sAux,',') + '5';
    if sAux <> '' then Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and os.tiposervico in (' + sAux + ') ';
  end;

  if ckbPassou.Checked then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and os.dtchegada > os.dtaviso ';
  C_Consulta.Open;
  //
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if ckbPeriodo.Checked then TS_ReportFilter.Add( 'Com data de aviso entre ' + edDataI.Text + ' e ' + edDataF.Text );
    if ckbHora.Checked then TS_ReportFilter.Add( 'Com hora de aviso entre ' + edHora1.Text + ' e ' + edHora2.Text );
    if sServ <> '' then TS_ReportFilter.Add( 'Serviços: ' + sServ );
    if ckbPassou.Checked then TS_ReportFilter.Add( 'Chamados que passaram de dia' );
  end;
end;

procedure TRptChamadosPorFunc.edServicosCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbServicos.Selecionados(True);
  Accept := true;
	Atualizar;
end;

procedure TRptChamadosPorFunc.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptChamadosPorFunc.ckbPeriodoChange(Sender: TObject);
begin
  inherited;
  lbDataI.Enabled := ckbPeriodo.Checked;
  edDataI.Enabled := ckbPeriodo.Checked;
  lbDataF.Enabled := ckbPeriodo.Checked;
  edDataF.Enabled := ckbPeriodo.Checked;
  Atualizar;
end;

procedure TRptChamadosPorFunc.edDataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptChamadosPorFunc.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  clbServicos.SetSelecionados('Chamado,Corretiva',True);
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := ( DMProjeto.dDataSistema );
  if edDataF.GetEditingText = '' then edDataF.Date := ( DMProjeto.dDataSistema );
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  Atualizar;  
end;

procedure TRptChamadosPorFunc.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([ dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'ORDEMSERVICO',null) ] );
  DMProjeto.CriarForm('FrmOrdemServico',Self,True);
end;

procedure TRptChamadosPorFunc.ckbHoraChange(Sender: TObject);
begin
  inherited;
  lbHora1.Enabled := ckbHora.Checked;
  edHora1.Enabled := ckbHora.Checked;
  lbHora2.Enabled := ckbHora.Checked;
  edHora2.Enabled := ckbHora.Checked;
  Atualizar;
end;

procedure TRptChamadosPorFunc.edHora1Change(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptChamadosPorFunc.ckbPassouChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptChamadosPorFunc.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DtDecorrido').AsDateTime := (C_ConsultaDTTERMINO.AsDateTime+C_ConsultaHORATERMINO.AsDateTime) -
                                                   (C_ConsultaDTCHEGADA.AsDateTime+C_ConsultaHORACHEGADA.AsDateTime);

  DataSet.FieldByName('DtATENDDecorrido').AsDateTime := (C_ConsultaDTCHEGADA.AsDateTime+C_ConsultaHORACHEGADA.AsDateTime) -
                                                        (C_ConsultaDTAVISO.AsDateTime+C_ConsultaHORAAVISO.AsDateTime);
end;

end.
