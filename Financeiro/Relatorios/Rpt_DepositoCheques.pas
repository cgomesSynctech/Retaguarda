unit Rpt_DepositoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, TS_DateTimePicker, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, TS_LastDataObject, Dlg_PopupContas, 
  DlgMsg, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, TS_PopupEdit, ComCtrls, Variants, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_CheckBox;

type
  TRptDepositoCheques = class(TRptPadrao)
    C_ConsultaOPERACAO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaLOGINNAME: TStringField;
    dbgConsultaOPERACAO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaLOGINNAME: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    lbConta: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    cmbConta: TTS_PopupEdit;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn10: TdxDBGridColumn;
    procedure cmbContaChange(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptDepositoCheques: TRptDepositoCheques;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TRptDepositoCheques.Atualizar;
begin
{    CommandText := 'Select o.Operacao, o.Data, c.Descricao as DescConta, '+
    							 'od.NumCheque, od.Valor, f.Nome, od.Vencimento, u.LoginName '+
                   'From OperacoesFinanceiras o '+
                   'inner join OperacoesFinanceirasDet od on o.operacao = od.operacao '+
                   'inner join Contas c on o.ContaDestino = c.Conta '+
                   'left join Usuarios u on o.usuario = u.usuario '+
                   'inner join Favorecidos f on od.favorecido = f.favorecido '+
									 'Where o.Data >= :DataI and o.Data <= :DataF and o.TipoOperacao = 7 and o.Situacao is null '; }
  with C_Consulta do begin
    Close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where o.Data >= :DataI and o.Data <= :DataF and o.TipoOperacao = 7 and o.Situacao is null ';

    if cmbConta.LookUpKeyValue <> 0 then
    	CommandText := CommandText + 'and o.ContaDestino = '+DMFinanceiro.C_ContasBcConta.AsString;
    CommandText := CommandText + ' order by o.Data';
    Params.ParamByName('DataI').AsDate := DataI.Date;
    Params.ParamByName('DataF').AsDate := DataF.Date;
		Open;
	end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (cmbConta.LookUpKeyValue <> null) then
    	TS_ReportFilter.Add(lbConta.Caption+': '+cmbConta.Text);
    FullExpand;
  end;
end;

procedure TRptDepositoCheques.cmbContaChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDepositoCheques.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDepositoCheques.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_ConsultaOperacao.Value]);
    CriarForm('DlgDepositoCheques',self,true);
    Atualizar;
  end;
end;

procedure TRptDepositoCheques.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDepositoCheques.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TRptDepositoCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
 	DMFinanceiro.C_ContasBc.Open;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  cmbConta.LookUpKeyValue := DMFinanceiro.getContaBancoPadrao;
end;

end.
