unit Rpt_PagamentosRetiradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxCntner, dxEditor,
  TS_DateTimePicker, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls, Dlg_PopupContas, 
  TS_EffectsPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls,
  StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, Buttons,
  TS_SpeedButton, Menus, TS_PopupMenu, TS_PopupEdit, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_CheckBox;

type
  TRptPagamentosRetiradas = class(TRptPadrao)
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaRETIRADA: TIntegerField;
    C_ConsultaTIPORETIRADA: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaDESCFORMAPAG: TStringField;
    C_ConsultaDESCORIGEM: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaRETIRADA: TdxDBGridMaskColumn;
    dbgConsultaTIPORETIRADA: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNome: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaDESCFORMAPAG: TdxDBGridMaskColumn;
    dbgConsultaDESCORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    lbConta: TTS_Label;
    cmbConta: TTS_PopupEdit;
    C_ConsultaDESCTIPOFAV: TStringField;
    C_ConsultaCHEQUENOMINAL: TStringField;
    dbgConsultaDESCTIPOFAV: TdxDBGridColumn;
    dbgConsultaCHEQUENOMINAL: TdxDBGridColumn;
    C_ConsultaNOME: TStringField;
    dbgConsultaHistorico: TdxDBGridColumn;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn15: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    C_ConsultaDESCCONTADESPESA: TStringField;
    dbgConsultaDESCCONTADESPESA: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure cmbContaChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPagamentosRetiradas: TRptPagamentosRetiradas;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}


procedure TRptPagamentosRetiradas.Atualizar;
begin
	with C_Consulta do begin
  	Close;
     CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where r.Data >= :DataI and r.Data <= :DataF and r.Situacao = ''N'' :FavorecidoDoc :ContaDoc ';

    if edFavorecido.ID <> 0 then begin
    	CommandText := replace( CommandText,':FavorecidoDoc',' and rd.FavorecidoDoc = '+IntToStr(edFavorecido.ID));
      CommandText := replace( CommandText,':Favorecido',' and rcc.Favorecido = '+IntToStr(edFavorecido.ID));
    end else begin
	    CommandText := replace( CommandText,':FavorecidoDoc', '' );
      CommandText := replace( CommandText,':Favorecido', '' );
    end;

    if cmbConta.LookUpKeyValue <> 0 then begin
    	CommandText := replace( CommandText,':ContaDoc',' and rd.Conta = '+IntToStr(cmbConta.LookUpKeyValue));
      CommandText := replace( CommandText,':Conta',' and rcc.Conta = '+IntToStr(cmbConta.LookUpKeyValue));
    end else begin
    	CommandText := replace( CommandText,':ContaDoc','');
    	CommandText := replace( CommandText,':Conta','');
    end;
    FetchParams;
    Params.ParamByName('DataI').AsDate := DataI.Date;
    Params.ParamByName('DataF').AsDate := DataF.Date;
//    DisableControls;
    Open;
//    DisableControls;
//    First;
//    while not EOF do begin
//    	Edit;
//      FieldbyName('ic_Invoices').AsString := FieldbyName('ic_Invoices').AsString +

//    end;

  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lbConta.Caption+' '+iif(cmbConta.text='','Todas',cmbConta.text));
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptPagamentosRetiradas.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPagamentosRetiradas.DataIDateChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptPagamentosRetiradas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptPagamentosRetiradas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
  	//Atualizar;
end;

procedure TRptPagamentosRetiradas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
 	DMFinanceiro.C_ContasCxBc.Open;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  //Atualizar;
  // cmbConta.LookUpKeyValue := DMFinanceiro.getContaBancoPadrao;
end;

procedure TRptPagamentosRetiradas.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaRetirada.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoRetirada.AsInteger),self,true);
  	end;
  end;
end;

procedure TRptPagamentosRetiradas.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TRptPagamentosRetiradas.cmbContaChange(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TRptPagamentosRetiradas.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);
end;

end.
