unit Rpt_FaturaSalesOrders;

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
  TRptFaturaSalesOrders = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    btClientes: TTS_SpeedButton;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
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
    dbgConsultaSAIDAITEMMESCLA: TdxDBGridMaskColumn;
    dbgConsultaSAIDAITEM_ORIGINAL: TdxDBGridMaskColumn;
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaQTDMAXIMA: TdxDBGridCurrencyColumn;
    dbgConsultaSAIDA_ORIGINAL: TdxDBGridMaskColumn;
    dbgConsultaSAIDAITEM1: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
    dbgConsultaSAIDA1: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    C_ConsultaSAIDAITEMMESCLA: TIntegerField;
    C_ConsultaSAIDAITEM_ORIGINAL: TIntegerField;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaSAIDA_ORIGINAL: TIntegerField;
    C_ConsultaSAIDAITEM1: TIntegerField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaITEM: TStringField;
    C_ConsultaSAIDA1: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOPADRAO: TIntegerField;
    C_ConsultaINVOICE: TStringField;
    dbgConsultaINVOICE: TdxDBGridMaskColumn;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    C_ConsultaSAIDAINVOICE: TIntegerField;
    dbgConsultaSAIDAINVOICE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    N2: TMenuItem;
    AbrirSalesOrder1: TMenuItem;
    AbrirCadastrodeClientes1: TMenuItem;
    C_ConsultaQTDMAXIMA: TFloatField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    procedure AtualizaConsulta;    
    procedure btClientesClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure AbrirCadastrodeClientes1Click(Sender: TObject);
    procedure AbrirSalesOrder1Click(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
   sSQLPadrao, sClientes, sNomesClientes : String;
  public
    { Public declarations }
  end;

var
  RptFaturaSalesOrders: TRptFaturaSalesOrders;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptFaturaSalesOrders.AtualizaConsulta;
var
   sPrimeiroNome : String;
   i : integer;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where s.tipopadrao = 2 and s.data between :idata and :fdata';
                       
    if sClientes <> '' then begin
      CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
    end;
    Params.ParamByName('iData').AsDateTime := edDataI.Date;
    Params.ParamByName('fData').AsDateTime := edDataF.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Per�odo de: ' + FormatDateTime(ShortDateFormat, edDataI.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDataF.Date) );
    if sNomesClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesClientes,',',1));
      for i := 2 to ContaStrings(sNomesClientes,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesClientes,',',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
    FullExpand;
    GoToFirst;
  end;
  FormsComponent.Caption := 'Pedido de Venda no Per�odo de: '+DateTostr(edDataI.Date) +' a '+
                                                DateTostr(edDataF.Date);


end;


procedure TRptFaturaSalesOrders.btClientesClick(Sender: TObject);
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

procedure TRptFaturaSalesOrders.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptFaturaSalesOrders.dbgConsultaDblClick(Sender: TObject);
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
      if dbgConsulta.TS_SelectedColumn = 'INVOICE' then begin
        with DMProjeto do begin
          nId := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'SAIDAINVOICE',0);
          SetParametrosForm([nId]);
          CriarForm('FrmInvoices',Self,True);
        end;
      end
      else begin
        with DMProjeto do begin
          nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
          SetParametrosForm([nId]);
          CriarForm('FrmSalesOrder',self,true);
        end;
      end;
    end;
  end;

  end;

procedure TRptFaturaSalesOrders.FormsComponentBeforeClearParams(
  Sender: TObject);
var nId: integer;
begin
  inherited;                    
  if DMProjeto.QtdParametrosForm > 0 then begin
    nId := DMProjeto.GetParametrosForm(0);
    Q_Consulta.Sql.Add(' and s.saida = ' + InttoStr(nId));
  end;
  sClientes := '';
  sSQLPadrao := Q_Consulta.SQL.Text;
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := IncMonth(DmProjeto.dDataSistema, -1);
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptFaturaSalesOrders.AbrirCadastrodeClientes1Click(
  Sender: TObject);
var nId: integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'cliente',0);
    SetParametrosForm([nId]);
    CriarForm('FrmClientes',self,true);
  end;
end;

procedure TRptFaturaSalesOrders.AbrirSalesOrder1Click(Sender: TObject);
var nId: integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
    SetParametrosForm([nId]);
    CriarForm('FrmSalesOrder',self,true);
  end;
end;

procedure TRptFaturaSalesOrders.edDataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
