unit Rpt_PagamentosComCartao;
                                                                         
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, TS_ButtonEdit,
  TS_EditFavorecido, TS_DateTimePicker, TS_DBLookupTipoFav, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel, Buttons,
  TS_SpeedButton, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_CheckBox;

type
  TRptPagamentosComCartao = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaDESCFORMAPAGAMENTO: TStringField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDESCFORMAPAGAMENTO: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    lbCartao: TTS_Label;
    cmbCartao: TTS_LookupComboBox;
    cmbTipoFav: TTS_DBLookupTipoFav;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaTAXAS: TBCDField;
    C_ConsultaTOTAL: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaSituacao: TStringField;
    dbgConsultaTaxas: TdxDBGridColumn;
    dbgConsultaTotal: TdxDBGridColumn;
    dbgConsultaSituacao: TdxDBGridColumn;
    C_ConsultaRETIRADA: TIntegerField;
    C_ConsultaTIPORETIRADA: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn11: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure cmbCartaoChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptPagamentosComCartao: TRptPagamentosComCartao;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TRptPagamentosComCartao.FormCreate(Sender: TObject);
begin
  inherited;
	with DMFinanceiro do begin
  	C_CartoesBus.Open;
  end;
end;

procedure TRptPagamentosComCartao.Atualizar;
begin
	with C_Consulta do begin
  	Close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where r.Data >= :DataI and r.Data <= :DataF and fp.Especie = 50 and r.Situacao = ''N'' and rd.Status < 70 ';
    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + 'and rd.favorecidodoc = '+IntToStr(edFavorecido.ID);
    if cmbCartao.LookUpKeyValue <> null then
    	CommandText := CommandText + 'and rd.formapagamento = '+DMFinanceiro.C_CartoesBusFormaPagamento.Asstring;
    Fetchparams;
    if (DataI.Date > 0) and (DataF.Date > 0) then begin
    	params.parambyname('Datai').AsDateTime := DataI.Date;
    	params.parambyname('Dataf').AsDateTime := DataF.Date;
    end;
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lbCartao.Caption+': '+iif(cmbCartao.text='','Todos',cmbCartao.text));
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptPagamentosComCartao.DataFDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComCartao.cmbCartaoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComCartao.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComCartao.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	if C_ConsultaValorPago.Value > 0 then
  	C_ConsultaSituacao.Value := 'Pago'
  else
  	C_ConsultaSituacao.Value := 'Em Aberto';

  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
end;

procedure TRptPagamentosComCartao.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  		SetParametrosForm([C_ConsultaFavorecido.AsInteger]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.AsInteger),self,true);
    end else begin
  		SetParametrosForm([C_ConsultaRetirada.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoRetirada.AsInteger),self,true);
    end;
  end;
end;

procedure TRptPagamentosComCartao.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(LastDataObject.TableName,'Retiradas;RetiradasDoc')>0 then
  	Atualizar;
end;

procedure TRptPagamentosComCartao.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComCartao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := DataFDateChange;
  Atualizar;
end;

end.
