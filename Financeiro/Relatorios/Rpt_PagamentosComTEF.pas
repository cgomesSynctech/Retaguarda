unit Rpt_PagamentosComTEF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, TS_DateTimePicker, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, TS_LastDataObject, Dlg_PopupContas,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_DBLookupTipoFav, TS_ButtonEdit,
  TS_EditFavorecido, Buttons, TS_SpeedButton, Menus, TS_PopupMenu,
  TS_PopupEdit, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_CheckBox;

type
  TRptPagamentosComTEF = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaID: TIntegerField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaVALOR: TFloatField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaTIPOOPERACAO: TIntegerField;
    dbgConsultaHISTORICO: TdxDBGridColumn;
    lbConta: TTS_Label;
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    lbA: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    cmbConta: TTS_PopupEdit;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn8: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    procedure cmbContaChange(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  protected
    DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptPagamentosComTEF: TRptPagamentosComTEF;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TRptPagamentosComTEF.Atualizar;
begin
{    CommandText := 'Select f.Nome, t.Data, t.ID, abs(t.Valor) as Valor, t.favorecido, f.tipofavorecido, '+
    							 'c.Descricao as DescConta, t.historico, t.idgerador, t.tipooperacao '+
                   'From Transacoes t '+
                   'inner join Favorecidos f on t.favorecido = f.favorecido '+
                   'inner join Contas c on t.conta = c.conta '+
                   'Where t.Data >= :DataI and t.Data <= :DataF and '+
                   't.FormaPagamento = 20 and t.TipoTransacao = ''D'' '; }
	with C_Consulta do begin
  	Close;
    FetchParams;
     CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where t.Data >= :DataI and t.Data <= :DataF and '+
                   't.FormaPagamento = 20 and t.TipoTransacao = ''D'' ';
    if cmbConta.LookUpKeyValue <> null then
    	CommandText := CommandText + 'and t.conta = '+DMFinanceiro.C_ContasBcConta.Asstring+' ';

    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + 'and t.favorecido = '+IntToStr(edFavorecido.ID)+' ';

    params.parambyname('Datai').AsDate := DataI.Date;
    params.parambyname('Dataf').AsDate := DataF.Date;
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lbConta.Caption+': '+iif(cmbConta.text='','Todos',cmbConta.text));
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;


procedure TRptPagamentosComTEF.cmbContaChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComTEF.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComTEF.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  		SetParametrosForm([C_ConsultaFavorecido.AsInteger]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.AsInteger),self,true);
    end else begin
  		SetParametrosForm([C_ConsultaIDGerador.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoOperacao.AsInteger),self,true);
    end;
  end;
end;

procedure TRptPagamentosComTEF.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(LastDataObject.TableName,'Retiradas;RetiradasDoc')>0 then
  	Atualizar;
end;

procedure TRptPagamentosComTEF.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.text = '' then
  	Atualizar;
end;

procedure TRptPagamentosComTEF.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosComTEF.btAtualizarClick(Sender: TObject);
begin
  inherited;
 	Atualizar;
end;

procedure TRptPagamentosComTEF.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TRptPagamentosComTEF.FormsComponentBeforeClearParams(
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

procedure TRptPagamentosComTEF.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);
end;

end.
