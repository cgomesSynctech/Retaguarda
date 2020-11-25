unit Rpt_ClienteOrcamentoAberto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib,
  TS_CheckBox, dxEditor, TS_DateTimePicker, IBUpdateSQL, Buttons,
  TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptClienteOrcamentoAberto = class(TRptPadrao)
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
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaSITUACAO1: TStringField;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    C_ConsultaCANCELAR: TStringField;
    dbgConsultaCANCELAR: TdxDBGridCheckColumn;
    upSQL: TIBUpdateSQL;
    btGravar: TTS_SpeedButton;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDATANASC: TDateField;
    Endereo1: TMenuItem;
    N9: TMenuItem;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    C_ConsultaULTIMOPGTO: TDateField;
    C_ConsultaULTIMOVALORPAGO: TBCDField;
    C_ConsultaTOTAL: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure btGravarClick3(Sender: TObject);
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
  RptClienteOrcamentoAberto: TRptClienteOrcamentoAberto;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptClienteOrcamentoAberto.AtualizaConsulta;
begin
  with C_Consulta do  begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas +  ' ' +
                   'where f.tipofavorecido=1 and s.tipopadrao=3 and ' + 
                   's.situacao = ''N'' and  f.desativado = ''N''';
    Open;
  end;
end;

procedure TRptClienteOrcamentoAberto.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptClienteOrcamentoAberto.btGravarClick3(Sender: TObject);
begin
  inherited;
  if C_Consulta.State = dsEdit then
     C_Consulta.Post;
  if (C_Consulta.ChangeCount > 0) then begin
//    if DmProjeto.DlgMsg.ShowMsg( 3080 ) = 100 then begin
      if not (DMPRojeto.IBT_Projeto.InTransaction) then
            DMPRojeto.IBT_Projeto.StartTransaction;
      try
        C_Consulta.ApplyUpdates(0);
        DMPRojeto.IBT_Projeto.CommitRetaining;
        AtualizaConsulta;
      except
      end;
//    end;
  end;
end;

procedure TRptClienteOrcamentoAberto.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptClienteOrcamentoAberto.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  if (dbgConsulta.FocusedField.FieldName = 'NUMERO')
     or (dbgConsulta.FocusedField.FieldName = 'DATA')  then begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'SAIDA',0) ;
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmInvoices',Self,true);
  end
  else begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmClientes',Self,true);
  end;
end;

procedure TRptClienteOrcamentoAberto.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptClienteOrcamentoAberto.FormsComponentRefresh(
  Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptClienteOrcamentoAberto.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.
