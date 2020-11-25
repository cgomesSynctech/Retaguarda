unit Rpt_Entradas;
                
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, Buttons,
  TS_SpeedButton, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxEditor, dxExEdtr, dxEdLib, TS_PopupEdit, CheckLst,
  TS_CheckListBox, TS_DateTimePicker, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt, TS_CheckBox;

type
  TRptEntradas = class(TRptPadrao)
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENTRADA: TIntegerField;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    btFornecedores: TTS_SpeedButton;
    C_ConsultaFAVORECIDO: TIntegerField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    C_ConsultaOBS: TStringField;
    C_ConsultaUSUARIO: TStringField;
    C_ConsultaPLANOPAGAMENTO: TStringField;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaUSUARIO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTO: TdxDBGridCurrencyColumn;
    dbgConsultaJUROS: TdxDBGridCurrencyColumn;
    dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn;
    dbgConsultaTOTALPGTOS: TdxDBGridCurrencyColumn;
    dbgConsultaFRETE: TdxDBGridMaskColumn;
    dbgConsultaIMPOSTO: TdxDBGridMaskColumn;
    dbgConsultaColumn16: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    dbgConsultaBASECALCICMS: TdxDBGridCurrencyColumn;
    dbgConsultaVALORICMS: TdxDBGridCurrencyColumn;
    dbgConsultaVALORIPI: TdxDBGridCurrencyColumn;
    C_ConsultaTPMOVIMENTO: TStringField;
    dbgConsultaTPMOVIMENTO: TdxDBGridColumn;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaIMPOSTO: TFloatField;
    C_ConsultaFRETE: TBCDField;
    C_ConsultaDESCONTO: TBCDField;
    C_ConsultaJUROS: TFloatField;
    C_ConsultaTOTALPGTOS: TFloatField;
    C_ConsultaBASECALCICMS: TFloatField;
    C_ConsultaVALORICMS: TFloatField;
    C_ConsultaVALORIPI: TFloatField;
    procedure AtualizaConsulta;
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btFornecedoresClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
   FAddGroupData, FAddGroupFornecedor : Boolean;
   sSQLPadrao, sFornecedores, sNomesFornecedores : String;
  public
    { Public declarations }
  end;

var
  RptEntradas: TRptEntradas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptEntradas.AtualizaConsulta;
var
   sPrimeiroNome : String;
   i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ',Extract(month from e.data)||''/''||Extract(year from e.data) as MesAno ' +
                   'From ' + getTabelas + ' ' +
                   'where e.data between :iData and :fData and e.tipopadrao=101 and e.situacao = ''N'' ';

    if sFornecedores <> '' then begin
      CommandText := CommandText + ' and e.favorecido in (' + sFornecedores +')';
    end;
    Params.ParamByName('iData').AsDateTime := edDataI.Date;
    Params.ParamByName('fData').AsDateTime := edDataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
    if sNomesFornecedores <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesFornecedores,',',1));
      for i := 2 to ContaStrings(sNomesFornecedores,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesFornecedores,',',i));
      end;
      TS_ReportFilter.Add('Fornecedores: ' + sPrimeiroNome);
    end;
  end;
  FormsComponent.Caption := 'Compras no Período de: '+DateTostr(EdDataI.Date) +' a '+
                                                DateTostr(EdDataF.Date);


end;

procedure TRptEntradas.FormShow(Sender: TObject);
begin
  inherited;
  sFornecedores := '';
  sSQLPadrao := Q_Consulta.SQL.Text;
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := DmProjeto.dDataSistema;
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptEntradas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradas.btFornecedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFornecedores, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sFornecedores := GetParametrosForm(0);
      sNomesFornecedores := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptEntradas.dbgConsultaDblClick(Sender: TObject);
var
   nId : Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFornecedores',self,true);
  	end;
  end
  else begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Entrada',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmCompras',self,true);
    end;
  end;
end;

procedure TRptEntradas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  sNomesFornecedores := ''; 
end;

procedure TRptEntradas.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
