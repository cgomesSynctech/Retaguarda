unit Rpt_OrdensServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, TS_PopupEdit, dxDBTLCl, dxGrClms;

type
  TRptOrdensServicos = class(TRptPadrao)
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    btCliente: TTS_SpeedButton;
    btFunc: TTS_SpeedButton;
    C_ConsultaORDEMSERVICO: TIntegerField;
    C_ConsultaORDEMSERVICOVICULO: TIntegerField;
    C_ConsultaNUMEROVINCULO: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaCLIENTE: TStringField;
    C_ConsultaNUMMAQUINA: TStringField;
    C_ConsultaROTA: TStringField;
    C_ConsultaTIPOSERVICO: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaFUNCIONARIO: TStringField;
    C_ConsultaAVISO: TDateTimeField;
    C_ConsultaCHEGADA: TDateTimeField;
    C_ConsultaTERMINO: TDateTimeField;
    C_ConsultaDESCRICAOSERVICO: TStringField;
    dbgConsultaNUMEROVINCULO: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNUMMAQUINA: TdxDBGridMaskColumn;
    dbgConsultaROTA: TdxDBGridMaskColumn;
    dbgConsultaTIPOSERVICO: TdxDBGridMaskColumn;
    dbgConsultaFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaAVISO: TdxDBGridDateColumn;
    dbgConsultaCHEGADA: TdxDBGridDateColumn;
    dbgConsultaTERMINO: TdxDBGridDateColumn;
    C_ConsultaSTATUSATENDIMENTO: TIntegerField;
    C_ConsultaicStatusAtendimento: TStringField;
    dbgConsultaicStatusAtendimento: TdxDBGridColumn;
    dbgConsultaDescricaoServico: TdxDBGridMemoColumn;
    procedure btClienteClick(Sender: TObject);
    procedure btFuncClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
     sCliente, sFunc, sNomeCliente, sNomeFunc: String;
     procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptOrdensServicos: TRptOrdensServicos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptOrdensServicos.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.Sql.Text := 'Select ' + getCampos  + ' ' +
                 'From ' + getTabelas + ' ' +
                 ' where os.dtaviso between :d1 and :d2 ';
  Q_Consulta.ParamByName('d1').AsDateTime := DataI.Date;
  Q_Consulta.ParamByName('d2').AsDateTime := DataF.Date;
  if sCliente <> '' then 
     Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and cli.favorecido in (' + sCliente +')';
  if sFunc <> '' then
     Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and func.favorecido in (' + sFunc +')';
  C_Consulta.FetchParams;
  C_Consulta.Open;
end;

procedure TRptOrdensServicos.btClienteClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sCliente, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sCliente := GetParametrosForm(0);
       sNomeCliente := GetParametrosForm(1);
       LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptOrdensServicos.btFuncClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFunc, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sFunc := GetParametrosForm(0);
       sNomeFunc := GetParametrosForm(1);
       LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptOrdensServicos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptOrdensServicos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;

  Atualizar;
end;

procedure TRptOrdensServicos.DataFDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptOrdensServicos.DataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptOrdensServicos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_ConsultaORDEMSERVICO.Value]);
  DMProjeto.CriarForm('FrmOrdemServico',self,true);
end;

procedure TRptOrdensServicos.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  Case C_ConsultaStatusAtendimento.AsInteger Of
   1: DataSet.FieldByName('icStatusAtendimento').Value := 'Equip. Normal';
   2: DataSet.FieldByName('icStatusAtendimento').Value := 'Equip. Parado';
   3: DataSet.FieldByName('icStatusAtendimento').Value := 'Equip. Func C/ Pend.';
   4: DataSet.FieldByName('icStatusAtendimento').Value := 'Passageiro Preso';
  End; 
end;

end.
