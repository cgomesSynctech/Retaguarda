unit Rpt_ChequesEmitidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, FormsComponent, DBClient, Provider, IBCustomDataSet,
  IBQuery, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls,
  Buttons, TS_SpeedButton, StdCtrls, dxfLabel, TS_MaxPanel, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxExEdtr, dxEdLib, TS_ButtonEdit, Dlg_PopupContas,
  TS_EditFavorecido, TS_PopupEdit, dxEditor, TS_DateTimePicker, TS_Label,
  dxDBTLCl, dxGrClms, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_CheckBox, TS_RadioGroup;

type
  TRptChequesEmitidos = class(TRptPadrao)
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaDATA: TDateField;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaDESCFORMAPAG: TStringField;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    cmbConta: TTS_PopupEdit;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaDESCFORMAPAG: TdxDBGridMaskColumn;
    C_ConsultaFAVORECIDODOC: TIntegerField;
    C_ConsultaRETIRADA: TIntegerField;
    C_ConsultaTIPORETIRADA: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCTIPOFAVORECIDO: TStringField;
    dbgConsultaDESCTIPOFAVORECIDO: TdxDBGridColumn;
    C_ConsultaCHEQUENOMINAL: TStringField;
    C_ConsultaDESCORIGEM: TStringField;
    dbgConsultaCHEQUENOMINAL: TdxDBGridColumn;
    dbgConsultaDESCORIGEM: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn14: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    RgData: TTS_RadioGroup;
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
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
  RptChequesEmitidos: TRptChequesEmitidos;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

{ TRptPadrao1 }

procedure TRptChequesEmitidos.Atualizar;
begin
{    CommandText := 'Select rd.iddoc, rd.numcheque, rd.valor, rd.vencimento, r.data, '+
    							 'r.historico, f.nome, c.descricao as DescConta, fp.descricao as DescFormaPag, '+
                   'r.retirada, r.tiporetirada, rd.favorecidodoc, f.tipofavorecido, '+
                   't.Descricao as DescTipoFavorecido, o.Descricao as DescOrigem, rd.ChequeNominal '+
									 'From Retiradas r , RetiradasDoc rd, Favorecidos f, Contas c, '+
                   'FormasPagamento fp, TiposFavorecido t, TiposOrigens o '+
                	 'Where r.data >= :DataI and r.data <= :DataF and r.situacao = ''N'' '+
           				 'and r.retirada = rd.retirada and rd.formapagamento in (2,3) '; }

	with C_Consulta do begin
  	close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ';
    if rgData.ItemIndex = 0 Then Begin
      CommandText := CommandText + 'Where r.data >= :DataI and r.data <= :DataF and r.situacao = ''N'' '+
           				 'and r.retirada = rd.retirada and rd.formapagamento in (2,3) ';
    End Else Begin
      CommandText := CommandText + 'Where rd.vencimento >= :DataI and rd.vencimento <= :DataF and r.situacao = ''N'' '+
           				 'and r.retirada = rd.retirada and rd.formapagamento in (2,3) ';
    End;

    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + ' and rd.favorecidodoc = '+IntToStr(edFavorecido.ID)+' ';
    if cmbConta.LookUpKeyValue <> 0 then
			CommandText := CommandText + ' and rd.conta = '+IntToStr(cmbConta.LookUpKeyValue)+' ';
    CommandText := CommandText + ' and rd.favorecidodoc = f.favorecido '+
           											 ' and rd.conta = c.conta  '+
           											 ' and rd.formapagamento = fp.formapagamento '+
                                 ' and f.tipofavorecido = t.tipofavorecido '+
                                 ' and r.tiporetirada = o.origem '+
                                 ' order by rd.Conta, r.Data ';
    Params.ParamByName('DataI').asDateTime := DataI.Date;
    Params.ParamByName('DataF').asDateTime := DataF.Date;
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
    if cmbConta.LookupKeyValue <> null then
    	TS_ReportFilter.Add('Conta: '+cmbConta.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter[TS_ReportFilter.Count-1] := TS_ReportFilter[TS_ReportFilter.Count-1]+', '+cmbTipoFav.Text+': '+edFavorecido.Text;
  end;
end;

procedure TRptChequesEmitidos.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TRptChequesEmitidos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
  DMFinanceiro.C_ContasBc.Open;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema;
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := DataFDateChange;
  cmbConta.LookUpKeyValue := DMFinanceiro.getContaBancoPadrao;
end;

procedure TRptChequesEmitidos.cmbContaChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesEmitidos.DataFDateChange(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesEmitidos.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesEmitidos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.text = '' then
  	Atualizar;
end;

procedure TRptChequesEmitidos.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesEmitidos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  		SetParametrosForm([C_ConsultaFavorecidoDoc.AsInteger]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.AsInteger),self,true);
    end else begin
  		SetParametrosForm([C_ConsultaRetirada.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoRetirada.AsInteger),self,true);
    end;
  end;
end;

procedure TRptChequesEmitidos.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
end;

end.
