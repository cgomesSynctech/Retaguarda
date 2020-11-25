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
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Variants;

type
  TRptEstimates = class(TRptPadrao)
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
    peAgrupamento: TTS_PopupEdit;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
    clbAgrupamento: TTS_CheckListBox;
    btVendedores: TTS_SpeedButton;
    dbgConsultaBASEIMPOSTO: TdxDBGridColumn;
    C_ConsultaBASEIMPOSTO: TBCDField;
    TS_Label3: TTS_Label;
    lkcbStatus: TTS_LookupComboBox;
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
    procedure AtualizaConsulta;    
    procedure btClientesClick(Sender: TObject);
    procedure clbAgrupamentoClickCheck(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btVendedoresClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure edDataIExit(Sender: TObject);
    procedure edDataFExit(Sender: TObject);
    procedure lkcbStatusChange(Sender: TObject);
    procedure edValidadeIExit(Sender: TObject);
    procedure edValidadeFExit(Sender: TObject);
  private
    { Private declarations }
   FAddGroupData, FAddGroupCliente, FAddGroupVendedor : Boolean;
   sSQLPadrao, sClientes, sVendedores, sNomesClientes, sNomesVendedores : String;
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
   sPrimeiroNome : String;
   i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := sSQLPadrao;
    if sClientes <> '' then begin
      CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
    end;
    if sVendedores <> '' then begin
      CommandText := CommandText + ' and s.vendedor in (' + sVendedores +')';
    end;
    if lkcbStatus.LookupKeyValue <> Null then
      CommandText := CommandText + ' and s.status = ''' + lkcbStatus.LookupKeyValue + '''';
    Params.ParamByName('iData').AsDateTime := edDataI.Date;
    Params.ParamByName('fData').AsDateTime := edDataF.Date;
    Params.ParamByName('ivalid').AsDateTime := edValidadeI.Date;
    Params.ParamByName('fvalid').AsDateTime := edValidadeF.Date;
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
    if sNomesVendedores <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesVendedores,',',1));
      for i := 2 to ContaStrings(sNomesVendedores,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesVendedores,',',i));
      end;
      TS_ReportFilter.Add('Vendedores: ' + sPrimeiroNome);
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

procedure TRptEstimates.clbAgrupamentoClickCheck(Sender: TObject);
begin
  inherited;
  if clbAgrupamento.Checked[clbAgrupamento.ItemIndex] then begin
     case clbAgrupamento.ItemIndex  of
       0 : begin
             FAddGroupData := dbgConsultaDATA.Visible;
             dbgConsultaData.GroupIndex := 0;
           end;
       1 : begin
             FAddGroupCliente := dbgConsultaNOME.Visible;
             dbgConsultaNOME.GroupIndex := 1;
           end;
       2 : begin
             FAddGroupVendedor := dbgConsultaNOMEVENDEDOR.Visible;
             dbgConsultaNOMEVENDEDOR.GroupIndex := 2;
           end;
     end;
  end
  else begin
     case clbAgrupamento.ItemIndex  of
       0 : begin
             dbgConsultaData.GroupIndex := -1;
             dbgConsultaData.Visible := FAddGroupData;
           end;
       1 : begin
             dbgConsultaNOME.GroupIndex := -1;
             dbgConsultaNOME.Visible := FAddGroupCliente;
           end;
       2 : begin
             FAddGroupVendedor := dbgConsultaNOMEVENDEDOR.Visible;
             dbgConsultaNOMEVENDEDOR.GroupIndex := -1;
           end;
     end;
  end;
end;

procedure TRptEstimates.FormShow(Sender: TObject);
begin
  inherited;
  sClientes := '';
  sVendedores := '';
  sSQLPadrao := Q_Consulta.SQL.Text;
  edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  edDataF.Date := DmProjeto.dDataSistema;
  edValidadeI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  edValidadeF.Date := IncMonth(DmProjeto.dDataSistema, 1);
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  AtualizaConsulta;
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

procedure TRptEstimates.btVendedoresClick(Sender: TObject);
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

procedure TRptEstimates.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.edDataIExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.edDataFExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.lkcbStatusChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.edValidadeIExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEstimates.edValidadeFExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
