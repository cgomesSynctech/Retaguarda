unit Rpt_Saidas;

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
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt;

type
  TRptSaidas = class(TRptPadrao)
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCLIENTE: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaTOTALITENS: TBCDField;
    C_ConsultaDESCONTO: TBCDField;
    C_ConsultaFRETE: TBCDField;
    C_ConsultaOUTRASDESPESAS: TBCDField;
    C_ConsultaJUROS: TBCDField;
    C_ConsultaIMPOSTO: TBCDField;
    C_ConsultaTOTAL: TBCDField;
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
    btVendedores: TTS_SpeedButton;
    dbgConsultaBASEIMPOSTO: TdxDBGridColumn;
    C_ConsultaBASEIMPOSTO: TBCDField;
    C_ConsultaOBS: TStringField;
    C_ConsultaPLANOPAGAMENTO: TStringField;
    C_ConsultaVALORCOMISSAO: TBCDField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaCONDICOESPGTO: TStringField;
    C_ConsultaTOTALPGTOS: TBCDField;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn;
    dbgConsultaVALORCOMISSAO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaCONDICOESPGTO: TdxDBGridMaskColumn;
    dbgConsultaTOTALPGTOS: TdxDBGridCurrencyColumn;
    dbgConsultaDESCONTO: TdxDBGridMaskColumn;
    dbgConsultaFRETE: TdxDBGridMaskColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn22: TdxDBGridColumn;
    procedure AtualizaConsulta;    
    procedure btClientesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btVendedoresClick(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
   FAddGroupData, FAddGroupCliente, FAddGroupVendedor : Boolean;
   sClientes, sVendedores, sNomesClientes, sNomesVendedores : String;
  public
    { Public declarations }
  end;

var
  RptSaidas: TRptSaidas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptSaidas.AtualizaConsulta;
var
   sPrimeiroNome : String;
   i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where s.tipopadrao = 1 and s.situacao = ''N'' and '+
                   's.data between :idata and :fdata';
                   
    if sClientes <> '' then begin
      CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
    end;
    if sVendedores <> '' then begin
      CommandText := CommandText + ' and s.vendedor in (' + sVendedores +')';
    end;
    Params.ParamByName('iData').AsDateTime := edDataI.Date;
    Params.ParamByName('fData').AsDateTime := edDataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
    if sNomesClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesClientes,',',1));
      for i := 2 to ContaStrings(sNomesClientes,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesClientes,',',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
    if sNomesVendedores <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesVendedores,',',1));
      for i := 2 to ContaStrings(sNomesVendedores,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesVendedores,',',i));
      end;
      TS_ReportFilter.Add('Vendedores: ' + sPrimeiroNome);
    end;
  end;
end;


procedure TRptSaidas.btClientesClick(Sender: TObject);
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

procedure TRptSaidas.FormShow(Sender: TObject);
begin
  inherited;
  sClientes := '';
  sVendedores := '';
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  edDataI.OnDateChange := nil;
  edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  edDataF.Date := DmProjeto.dDataSistema;
	edDataI.OnDateChange := edDataIDateChange;
end;

procedure TRptSaidas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptSaidas.dbgConsultaDblClick(Sender: TObject);
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
        CriarForm('FrmInvoices',self,true);
      end
    end;
  end;

  end;

procedure TRptSaidas.btVendedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sVendedores := GetParametrosForm(0);
      sNomesVendedores := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptSaidas.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
