 unit Rpt_SalesOrders;
                                                                                          
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
  TRptSalesOrders = class(TRptPadrao)
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    btClientes: TTS_SpeedButton;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
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
    dbgConsultaSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSTATUSDESC: TdxDBGridMaskColumn;
    Abrircadastrodeclientes1: TMenuItem;
    AbrirSalesOrder1: TMenuItem;
    AbrirRelatriodeSalesOrderItens1: TMenuItem;
    TS_PopupEdit1: TTS_PopupEdit;
    clbStatus: TTS_CheckListBox;
    dbgConsultaColumn16: TdxDBGridColumn;
    TS_Label4: TTS_Label;
    C_TipoMovimentoDS: TDataSource;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    P_TiposMovimentos: TDataSetProvider;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    cbCanceladas: TTS_CheckBox;
    clbTipoOperacao: TTS_CheckListBox;
    TS_PopupEdit2: TTS_PopupEdit;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCLIENTE: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaSTATUS: TStringField;
    C_ConsultaSTATUSDESC: TStringField;
    C_ConsultaZONA: TStringField;
    dbgConsultaZona: TdxDBGridColumn;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaBAIRRO: TStringField;
    dbgConsultaCidade: TdxDBGridColumn;
    dbgConsultaUF: TdxDBGridColumn;
    dbgConsultaBairro: TdxDBGridColumn;
    C_ConsultaHORA: TTimeField;
    dbgConsultaHORA: TdxDBGridColumn;
    C_ConsultaCAMPO01: TStringField;
    C_ConsultaCAMPO02: TStringField;
    C_ConsultaCAMPO03: TStringField;
    C_ConsultaCAMPO04: TStringField;
    dbgConsultaCAMPO01: TdxDBGridColumn;
    dbgConsultaCAMPO02: TdxDBGridColumn;
    dbgConsultaCAMPO03: TdxDBGridColumn;
    dbgConsultaCAMPO04: TdxDBGridColumn;
    C_ConsultaTIPOMOVIMENTO: TIntegerField;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridDateColumn;
    C_ConsultaTOTAL: TFloatField;
    procedure AtualizaConsulta;    
    procedure btClientesClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure Abrircadastrodeclientes1Click(Sender: TObject);
    procedure AbrirSalesOrder1Click(Sender: TObject);
    procedure AbrirRelatriodeSalesOrderItens1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure TS_PopupEdit2CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
   FAddGroupData, FAddGroupCliente, FAddGroupVendedor : Boolean;
   sClientes, sNomesClientes : String;
  public
    { Public declarations }
  end;

var
  RptSalesOrders: TRptSalesOrders;

implementation

uses DM_Projeto, funcoes, TDM_Projeto;

{$R *.DFM}

procedure TRptSalesOrders.AtualizaConsulta;
var
   sTipoOperacao, sPrimeiroNome, sStatus, nTP_MV, sSituacao : String;
   i : integer;

begin
  ActiveControl := nil;
  nTP_MV := '';

  sTipoOperacao := clbTipoOperacao.Selecionados;
  if (sTipoOperacao <> '') then
    nTP_MV := 'and s.tipomovimento in ('+sTipoOperacao+')';

  C_Consulta.Close;
  sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,'''C''','''N''');
  Q_Consulta.SQL.Text := 'Select ' + getCampos + ' ' +
                         'From ' + getTabelas + ' ' +
                         'where s.data between :idata and :fdata and s.tipopadrao = 2 '+ sSituacao + nTP_MV;
  if sClientes <> '' then begin
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.favorecido in (' + sClientes +')';
  end;
  sStatus := clbStatus.Selecionados;
  if sStatus <> '' then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.status in (' + sStatus + ')';

  Q_Consulta.ParamByName('iData').AsDateTime := edDataI.Date;
  Q_Consulta.ParamByName('fData').AsDateTime := edDataF.Date;
  C_Consulta.Open;
  //
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
  end;
  FormsComponent.Caption := 'Pedido de Venda no Período de: '+DateTostr(edDataI.Date) +' a '+
                                                DateTostr(edDataF.Date);

end;


procedure TRptSalesOrders.btClientesClick(Sender: TObject);
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

procedure TRptSalesOrders .btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptSalesOrders.dbgConsultaDblClick(Sender: TObject);
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
      if dbgConsulta.TS_SelectedColumn = 'TOTAL' then begin
        with DMProjeto do begin
          nId := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Saida',0);
          SetParametrosForm([nId]);
          CriarForm('RptSalesOrdersItens',Self,True);
        end;
      end
      else begin
        with DMProjeto do begin
            SetParametrosForm([C_ConsultaSAIDA.Value, null, C_ConsultaTIPOMOVIMENTO.Value]);
            CriarForm('FrmSalesOrder', Self, True);
        end;
      end;
    end;
  end;

  end;

procedure TRptSalesOrders.Abrircadastrodeclientes1Click(Sender: TObject);
var nID : integer;
begin
  inherited;
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'cliente',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmClientes',self,true);
  	end;
end;

procedure TRptSalesOrders.AbrirSalesOrder1Click(Sender: TObject);
var nId : integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
    SetParametrosForm([nId]);
    CriarForm('FrmSalesOrder',self,true);
  end;
end;

procedure TRptSalesOrders.AbrirRelatriodeSalesOrderItens1Click(
  Sender: TObject);
var nId : integer;
begin
  inherited;
  with DMProjeto do begin
    nId := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Saida',0);
    SetParametrosForm([nId]);
    CriarForm('RptSalesOrdersItens',Self,True);
  end;
end;

procedure TRptSalesOrders.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos);  
  C_Status.open;
  clbStatus.SetDataSet(C_Status);
  sClientes := '';
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  if edDataI.GetEditingText = '' then edDataI.Date := DmProjeto.dDataSistema;
  if edDataF.GetEditingText = '' then edDataF.Date := DmProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  if C_Consulta.FindField('DATA') <> nil then
     C_Consulta.FindField('DATA').EditMask := ShortDateFormat;
//  AtualizaConsulta;
end;

procedure TRptSalesOrders.edDataIDateChange(Sender: TObject);
begin
  inherited;
//	AtualizaConsulta;
end;

procedure TRptSalesOrders.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbStatus.Selecionados( true );
  Accept := true;
	AtualizaConsulta;
end;

procedure TRptSalesOrders.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	AtualizaConsulta;
end;

procedure TRptSalesOrders.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptSalesOrders.TS_PopupEdit2CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
	AtualizaConsulta;
end;

end.
