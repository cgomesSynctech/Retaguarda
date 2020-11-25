unit Rpt_DocGarantia;

interface                                                                            

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, dxCntner, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
  StdCtrls, TS_Label, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Db,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBCustomDataSet, IBQuery,
  TS_QDBGrid, ExtCtrls, dxfLabel, TS_MaxPanel, TS_LastDataObject,
  DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton,
  Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptDocGarantia = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSRECEBIDOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaSALDO: TBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaTITULO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOS: TdxDBGridMaskColumn;
    dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn;
    dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    lbA: TTS_Label;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaOBS: TStringField;
    dbgConsultaDataPago: TdxDBGridColumn;
    dbgConsultaObs: TdxDBGridColumn;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    C_ConsultaPreview: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaVENDA: TIntegerField;
    C_ConsultaTITULO: TStringField;
    N2: TMenuItem;
    MostrarEndereco: TMenuItem;
    ckbGarantia: TTS_CheckBox;
    C_ConsultaDOC_GARANTIA: TStringField;
    dbgConsultaColumn26: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure MostrarEnderecoClick(Sender: TObject);
    procedure ckbGarantiaChange(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptDocGarantia: TRptDocGarantia;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptDocGarantia.Atualizar;
begin
{    commandtext := 'select t.ID, t.notafiscal, f.nome, t.competencia, '+
    							 't.vencimento, t.valor, t.valorpago, t.datapago, t.descontos, '+
                   't.jurosrecebidos, t.creditogerado, t.creditoutilizado, '+
                   's.Descricao as DescStatus, t.doc_garantia, '+
                   '(t.faltareceber) as Saldo, '+
									 't.obs, t.cliente as favorecido, f.tipofavorecido, t.venda, t.titulo, '+
									 'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, f.cep, f.email,  f.CaixaPostal '+
                   'from titulosareceber t '+
        					 'inner join favorecidos f on t.cliente = f.favorecido '+
        					 'inner join statustitulos s on t.status = s.status '+
									 'where t.Vencimento >= :DataI and t.Vencimento <= :DataF and t.status IN (1,2,3) ';
}
  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
		   'where t.Vencimento >= :DataI and t.Vencimento <= :DataF and t.status IN (1,2,3) ';

    if edFavorecido.ID <> 0 then
       commandtext := commandtext + 'and (t.cliente = '+IntToStr(edFavorecido.ID)+') ';

    if ckbGarantia.Checked then
    	commandtext := commandtext + 'and t.doc_garantia is not null'
    else
    	commandtext := commandtext + 'and t.doc_garantia is null';

    FetchParams;
    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullCollapse;
  end;
end;

procedure TRptDocGarantia.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptDocGarantia.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TRptDocGarantia.DataIDateChange(Sender: TObject);
begin
  inherited;
//  Atualizar;
end;

procedure TRptDocGarantia.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	//Atualizar;
end;

procedure TRptDocGarantia.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DMProjeto.ExisteParametrosForm then begin
    if DMProjeto.qtdParametrosForm > 1 then
			edFavorecido.ID := DMProjeto.getParametrosForm(1);

    if DMProjeto.getParametrosForm(2) = 0 then
 			DataI.Text := ''
    else
    	DataI.Date := DMProjeto.getParametrosForm(2);

 		DataF.Date := DMProjeto.getParametrosForm(3);
  end else begin
		if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  	if DataF.GetEditingText = '' then  DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  end;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  //Atualizar;
end;

procedure TRptDocGarantia.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );

  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);
  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);  
end;

procedure TRptDocGarantia.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else if dbgConsulta.TS_SelectedColumn = 'TITULO' then begin
    if C_ConsultaVenda.AsInteger <> 0 then begin
			with DMProjeto do begin
  			SetParametrosForm([C_ConsultaVenda.Value]);
    		CriarForm('FrmInvoices',self,true);
  		end;
    end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaID.AsInteger]);
    	CriarForm('FrmA_Receber',self,true);
  	end;
  end;
end;

procedure TRptDocGarantia.MostrarEnderecoClick(Sender: TObject);
begin
  inherited;
  if not MostrarEndereco.Checked then begin
    MostrarEndereco.Checked := true;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  end else begin
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
    MostrarEndereco.Checked := false;
  end;
end;

procedure TRptDocGarantia.ckbGarantiaChange(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

end.
