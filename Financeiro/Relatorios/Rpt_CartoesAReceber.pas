unit Rpt_CartoesAReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, TS_LastDataObject, DlgMsg, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton,
  TS_RadioButton, TS_ComboBox, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_CheckBox;

type
  TRptCartoesAReceber = class(TRptPadrao)
    C_ConsultaDESCCARTAO: TStringField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaTAXACARTAO: TBCDField;
    C_ConsultaIDDOC: TIntegerField;
    dbgConsultaDESCCARTAO: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    dbgConsultaTAXACARTAO: TdxDBGridMaskColumn;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    C_ConsultaVALORARECEBER: TBCDField;
    dbgConsultaValoraReceber: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaDEPOSITO: TIntegerField;
    C_ConsultaTIPODEPOSITO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    dbgConsultaDescStatus: TdxDBGridColumn;
    TS_Label3: TTS_Label;
    cmbStatus: TTS_ComboBox;
    TS_Label4: TTS_Label;
    cmbCartao: TTS_LookupComboBox;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    TS_SpeedButton1: TTS_SpeedButton;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn12: TdxDBGridColumn;
    C_ConsultaTITULO: TStringField;
    dbgConsultaTITULO: TdxDBGridMaskColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    procedure DataFDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure cmbStatusSelectionChange(Sender: TObject);
    procedure cmbCartaoSelectionChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptCartoesAReceber: TRptCartoesAReceber;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TRptCartoesAReceber.Atualizar;
begin
{    sql.text := 'Select dd.IDDoc, fp.Descricao as DescCartao, dd.Valor, '+
    						'dd.Vencimento, f.Nome, d.Data, d.Historico, dd.TaxaCartao, '+
                '(dd.Valor-dd.TaxaCartao) as ValorAReceber, sd.Descricao as DescStatus, '+
                'd.deposito, d.tipodeposito, d.favorecido, f.tipofavorecido '+
								'From DepositosDoc dd '+
         				'inner join Depositos d on dd.deposito = d.deposito '+
         				'inner join formaspagamento fp on dd.formapagamento = fp.formapagamento '+
                'inner join favorecidos f on d.favorecido = f.favorecido '+
         				'inner join statusdoc sd on dd.status = sd.status '+
								'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF '+
                'and :formapagamento '+
                'and  fp.especie IN (3,10,30) and dd.Status = :Status '+
								'Order by fp.Descricao, dd.Vencimento'; }
	 with C_Consulta do begin
  	close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
    							 'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF '+
                   'and :formapagamento '+
                   'and  fp.especie IN (3,10,30) and dd.Status = :Status '+
							    	 'Order by fp.Descricao, dd.Vencimento';
    if cmbStatus.ItemIndex = 2 then
    	CommandText := replace(CommandText,'= :Status','IN (1,2)')
    else if cmbStatus.ItemIndex = 0 then
    	CommandText := replace(CommandText,':Status','2')
    else
    	CommandText := replace(CommandText,':Status','1');

    if cmbCartao.LookupKeyValue = null then
    	CommandText := replace(CommandText,'and :formapagamento','')
    else
    	CommandText := replace(CommandText,':formapagamento','dd.formapagamento = '+
      						DMFInanceiro.C_CartoesCredFormapagamento.AsString);

    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    open;
  end;

	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
    if cmbCartao.LookupKeyValue <> null then
    	TS_ReportFilter.Add('Cartão: '+cmbCartao.Text);
    if cmbStatus.ItemIndex <> 2 then
	    TS_ReportFilter.Add('Status: '+cmbStatus.Text);
  	FullExpand;
  end;
end;


procedure TRptCartoesAReceber.DataFDateChange(Sender: TObject);
begin
  inherited;
  //Atualizar;
end;

procedure TRptCartoesAReceber.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaDeposito.Value]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoDeposito.Value),self,true);
  	end;
  end;
end;

procedure TRptCartoesAReceber.cmbStatusSelectionChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptCartoesAReceber.cmbCartaoSelectionChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptCartoesAReceber.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptCartoesAReceber.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([null,11,iif(cmbCartao.LookupKeyValue=null,0,cmbCartao.LookupKeyValue)]);
    CriarForm('DlgApresentacaoCartao',self,true)
  end;
end;

procedure TRptCartoesAReceber.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  cmbStatus.OnSelectionChange := nil;
  cmbStatus.ItemIndex := 2;
  cmbStatus.OnSelectionChange := cmbStatusSelectionChange;
  DMFinanceiro.C_CartoesCred.Open;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema+30 );
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := DataFDateChange;
//  Atualizar;
end;

procedure TRptCartoesAReceber.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);
end;

end.
