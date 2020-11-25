unit Rpt_Estimates;
                             
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, Buttons,
  TS_SpeedButton, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxExEdtr, dxEdLib, TS_DateTimePicker, dxEditor, TS_PopupEdit,
  CheckLst, TS_CheckListBox, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Variants, TS_CheckBox;

type
  TRptEstimates = class(TRptPadrao)
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCLIENTE: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaSAIDA: TIntegerField;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaOUTRASDESPESAS: TdxDBGridMaskColumn;
    dbgConsultaJUROS: TdxDBGridMaskColumn;
    dbgConsultaIMPOSTO: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    btClientes: TTS_SpeedButton;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
    dbgConsultaBASEIMPOSTO: TdxDBGridColumn;
    TS_Label3: TTS_Label;
    Q_Status: TIBQuery;
    P_Status: TDataSetProvider;
    C_Status: TClientDataSet;
    C_StatusSTATUS: TStringField;
    C_StatusDESCRICAO: TStringField;
    C_StatusORDEM: TIntegerField;
    C_StatusDESCRICAO1: TStringField;
    C_StatusDESCRICAO2: TStringField;
    C_StatusDESCRICAO3: TStringField;
    C_StatusDS: TDataSource;
    C_ConsultaSTATUS: TStringField;
    C_ConsultaSTATUSDESC: TStringField;
    dbgConsultaSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSTATUSDESC: TdxDBGridMaskColumn;
    TS_Label4: TTS_Label;
    edValidadeI: TTS_DateTimePicker;
    C_ConsultaVALIDADE: TDateField;
    dbgConsultaVALIDADE: TdxDBGridDateColumn;
    TS_Label5: TTS_Label;
    edValidadeF: TTS_DateTimePicker;
    N2: TMenuItem;
    AbrirEstimate1: TMenuItem;
    AbrirCadastrodeClientes1: TMenuItem;
    cbPeriodo: TTS_CheckBox;
    cbValidade: TTS_CheckBox;
    TS_PopupEdit1: TTS_PopupEdit;
    clbStatus: TTS_CheckListBox;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn17: TdxDBGridColumn;
    C_TipoMovimentoDS: TDataSource;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    P_TiposMovimentos: TDataSetProvider;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    TS_Label6: TTS_Label;
    TS_LCBTipoMovimento: TTS_LookupComboBox;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaFRETE: TFloatField;
    C_ConsultaOUTRASDESPESAS: TFloatField;
    C_ConsultaJUROS: TFloatField;
    C_ConsultaIMPOSTO: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaBASEIMPOSTO: TFloatField;
    procedure AtualizaConsulta;    
    procedure btClientesClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure lkcbStatusChange(Sender: TObject);
    procedure AbrirCadastrodeClientes1Click(Sender: TObject);
    procedure AbrirEstimate1Click(Sender: TObject);
    procedure cbPeriodoChange(Sender: TObject);
    procedure cbValidadeChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edDataFDateChange(Sender: TObject);
    procedure edValidadeIDateChange(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
  private
    { Private declarations }
   FAddGroupData, FAddGroupCliente, FAddGroupVendedor : Boolean;
   sClientes, sNomesClientes : String;
  public
    { Public declarations }
  end;

var
  RptEstimates: TRptEstimates;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptEstimates.AtualizaConsulta;
var
   sPrimeiroNome, sStatus, nTP_MV : String;
   i : integer;
begin
  nTP_MV := '';
  if TS_LCBTipoMovimento.LookupKeyValue <> null then begin
     nTP_MV := 'and s.tipomovimento = '+inttostr(TS_LCBTipoMovimento.LookupKeyValue);
  end;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where s.tipopadrao = 3 and s.situacao = ''N'''+nTP_MV;

    if sClientes <> '' then begin
      CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
    end;
    sStatus := clbStatus.Selecionados;
    if sStatus <> '' then
      CommandText := CommandText + ' and s.status in (' + sStatus + ')';
    if cbPeriodo.Checked then begin
      CommandText := CommandText + ' and s.data between :idata and :fdata ';
      Params.ParamByName('iData').AsDateTime := edDataI.Date;
      Params.ParamByName('fData').AsDateTime := edDataF.Date;
    end;
    if cbValidade.Checked then begin
      CommandText := CommandText + ' and s.validade between :ivalid and :fvalid ';
      Params.ParamByName('ivalid').AsDateTime := edValidadeI.Date;
      Params.ParamByName('fvalid').AsDateTime := edValidadeF.Date;
    end;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) + ' com Validade entre '
         + FormatDateTime(ShortDateFormat, edValidadeI.Date) + ' e ' + FormatDateTime(ShortDateFormat, edValidadeF.Date));
    if sNomesClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesClientes,',',1));
      for i := 2 to ContaStrings(sNomesClientes,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesClientes,',',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
  end;
end;

procedure TRptEstimates.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptEstimates.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.dbgConsultaDblClick(Sender: TObject);
var
   nId : Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'cliente',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmClientes',self,true);
  	end;
  end
  else begin
    if dbgConsulta.TS_SelectedColumn = 'NOMEVENDEDOR' then begin
      with DMProjeto do begin
        nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'vendedor',0);
        SetParametrosForm([nId]);
        CriarForm('FrmFuncionarios',self,true);
      end;
    end
    else begin
      with DMProjeto do begin
        nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
        SetParametrosForm([nId]);
        CriarForm('FrmEstimates',self,true);
      end
    end;
  end;

  end;

procedure TRptEstimates.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.lkcbStatusChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.AbrirCadastrodeClientes1Click(Sender: TObject);
var nId: integer;
begin
  inherited;
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'cliente',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmClientes',self,true);
  	end;
end;

procedure TRptEstimates.AbrirEstimate1Click(Sender: TObject);
var nId: integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
    SetParametrosForm([nId]);
    CriarForm('FrmEstimates',self,true);
  end;
end;

procedure TRptEstimates.cbPeriodoChange(Sender: TObject);
begin
  inherited;
  edDataI.Enabled := cbPeriodo.Checked;
  edDataF.Enabled := cbPeriodo.Checked;
  TS_Label1.Enabled := cbPeriodo.Checked;
  TS_Label2.Enabled := cbPeriodo.Checked;
  AtualizaConsulta;
end;

procedure TRptEstimates.cbValidadeChange(Sender: TObject);
begin
  inherited;
  edValidadeI.Enabled := cbValidade.Checked;
  edValidadeF.Enabled := cbValidade.Checked;
  TS_Label4.Enabled := cbValidade.Checked;
  TS_Label5.Enabled := cbValidade.Checked;
  AtualizaConsulta;
end;

procedure TRptEstimates.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  C_Status.open;
  clbStatus.SetDataSet(C_Status);
  sClientes := '';
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataFDateChange;
  edDataF.OnDateChange := edDataFDateChange;

  edValidadeI.OnDateChange := nil;
  edValidadeF.OnDateChange := nil;
  if edValidadeI.GetEditingText = '' then edValidadeI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if edValidadeF.GetEditingText = '' then edValidadeF.Date := IncMonth(DmProjeto.dDataSistema, 1);
  edValidadeI.OnDateChange := edValidadeIDateChange;
  edValidadeF.OnDateChange := edValidadeIDateChange;

  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptEstimates.edDataFDateChange(Sender: TObject);
begin
  inherited;
	AtualizaConsulta;
end;

procedure TRptEstimates.edValidadeIDateChange(Sender: TObject);
begin
  inherited;
	AtualizaConsulta;
end;

procedure TRptEstimates.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbStatus.Selecionados( true );
  Accept := true;
  AtualizaConsulta;
end;

procedure TRptEstimates.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	AtualizaConsulta;
end;

end.
