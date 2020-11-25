unit Rpt_InvoicesEmAtraso;

interface       

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
  TS_LastDataObject, DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel,
  Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  Variants;

type
  TRptInvoicesEmAtraso = class(TRptPadrao)
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
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaPreview: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaVENDA: TIntegerField;
    C_ConsultaTITULO: TStringField;
    C_ConsultaFALTADIAS: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaTIPOCOBRANCA: TStringField;
    C_ConsultaDATAPRORROGACAO: TDateField;
    C_ConsultaEMPRESA: TStringField;
    C_ConsultaPERCENTUALMULTA: TBCDField;
    C_ConsultaPERCENTUALMORA: TBCDField;
    C_ConsultaVALORJUROSMORA: TBCDField;
    C_ConsultaVALORMULTA: TBCDField;
    C_ConsultaDATAATRASADO: TDateField;
    C_ConsultaPARCELA: TIntegerField;
    C_ConsultaVENDEDOR: TStringField;
    C_ConsultaDATAANTECIPACAO: TDateField;
    C_ConsultaVALORDESCANTECIPADO: TBCDField;
    C_ConsultaORIGEM_ARECEBER: TIntegerField;
    C_ConsultaIDGERADOR_ARECEBER: TIntegerField;
    C_ConsultaNUMBOLETO: TStringField;
    C_ConsultaDOC_GARANTIA: TStringField;
    C_ConsultaDESCCARTEIRA: TStringField;
    C_ConsultaNUMEROCARTEIRA: TStringField;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    N2: TMenuItem;
    MostrarEndereco: TMenuItem;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaPreview: TdxDBGridColumn;
    dbgConsultaVENDA: TdxDBGridMaskColumn;
    dbgConsultaTITULO: TdxDBGridMaskColumn;
    dbgConsultaFALTADIAS: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn;
    dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn;
    dbgConsultaEMPRESA: TdxDBGridMaskColumn;
    dbgConsultaDATAATRASADO: TdxDBGridDateColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn;
    dbgConsultaNUMBOLETO: TdxDBGridMaskColumn;
    dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn;
    dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn;
    dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn;
    C_ConsultaPrazo: TStringField;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOS: TdxDBGridMaskColumn;
    dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn;
    dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn;
    dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn;
    dbgConsultaVALORMULTA: TdxDBGridMaskColumn;
    dbgConsultaicJuros: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn;
    dbgConsultaVALORDESCANTECIPADO: TdxDBGridMaskColumn;
    C_ConsultaTIPOPADRAO: TIntegerField;
    C_ConsultaCOMPETENCIADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaicJuros: TCurrencyField;
    C_ConsultaicValorAReceber: TCurrencyField;
    dbgConsultaicValorAReceber: TdxDBGridColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure MostrarEnderecoClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    JurosParametrizado : currency;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptInvoicesEmAtraso: TRptInvoicesEmAtraso;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TRptInvoicesEmAtraso.Atualizar;
begin
  with C_Consulta do begin
    close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'where t.status = 3 ';
    if edFavorecido.ID <> 0 then begin
       CommandText := CommandText + ' and t.cliente = :favorecido';
       params.parambyname('Favorecido').asInteger := edFavorecido.ID;
    end;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptInvoicesEmAtraso.C_ConsultaCalcFields(DataSet: TDataSet);
var Dias : integer;
    vJuros : currency;
begin
  inherited;
  Dias := trunc(C_ConsultaVencimento.Value - DMProjeto.dDataSistema);
	if Dias <= 30 then
  	C_ConsultaPrazo.Value := '0 - 30 dias'
  else if Dias <= 60 then
  	C_ConsultaPrazo.Value := '31 - 60 dias'
  else if Dias <= 90 then
  	C_ConsultaPrazo.Value := '61 - 90 dias'
  else
  	C_ConsultaPrazo.Value := 'maior que 90 dias';
  C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );

  // Cálculo dos juros...
  vJuros:=0;
  if (DataSet.FieldByName('PERCENTUALMORA').AsCurrency > 0) Then
    vJuros := DataSet.FieldByName('PERCENTUALMORA').AsCurrency
  else if (JurosParametrizado > 0) Then
    vJuros := JurosParametrizado ;

  if (DataSet.FieldByName('DataAtrasado').AsDateTime < DMProjeto.dDataSistema) and (vJuros > 0) then  Begin
    DataSet.FieldByName('icJuros').Value	 := DMFinanceiro.CalculaJuros(DataSet.FieldByName('Valor').AsCurrency -
                                                                        DataSet.FieldByName('ValorPago').AsCurrency -
                                                                        DataSet.FieldByName('CreditoUtilizado').AsCurrency,
                                                                         vJuros,
                                                        iif( DataSet.FieldByName('DATAPAGO').AsVariant = null,Trunc(DMProjeto.dDataSistema - DataSet.FieldByName('DataAtrasado').AsDateTime),
                                                         Trunc(DMProjeto.dDataSistema - DataSet.FieldByName('DataPago').AsDateTime)));
  end
  else
    DataSet.FieldByName('icJuros').Value := 0;

  // Valor A Receber
  DataSet.FieldByName('icValorAReceber').Value := DataSet.FieldByName('Valor').AsCurrency -
                                                  DataSet.FieldByName('ValorPago').AsCurrency -
                                                  DataSet.FieldByName('CreditoUtilizado').AsCurrency +
                                                  DataSet.FieldByName('icJuros').AsCurrency;

  DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
end;

procedure TRptInvoicesEmAtraso.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptInvoicesEmAtraso.DataIDateChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptInvoicesEmAtraso.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptInvoicesEmAtraso.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
  	//Atualizar;
end;

procedure TRptInvoicesEmAtraso.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if not MostrarEndereco.Checked then begin
    MostrarEndereco.Checked := true;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
  end else begin
    MostrarEndereco.Checked := false;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
  end;
end;

procedure TRptInvoicesEmAtraso.dbgConsultaDblClick(Sender: TObject);
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
       If C_ConsultaTIPOPADRAO.Value = 1 Then Begin
  			SetParametrosForm([C_ConsultaVenda.Value]);
    		CriarForm('FrmInvoices',self,true);
       End
       Else Begin
  			SetParametrosForm([C_ConsultaVenda.Value]);
    		CriarForm('FrmSalesOrder',self,true);
       End;
     End;
    end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaID.Value]);
    	CriarForm('FrmA_Receber',self,true);
  	end;
  end;
end;

procedure TRptInvoicesEmAtraso.MostrarEnderecoClick(Sender: TObject);
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

procedure TRptInvoicesEmAtraso.FormsComponentBeforeClearParams(
  Sender: TObject);
var sJuros : string;  
begin
  inherited;
  if DMProjeto.Parametro('Juros')<>'' then begin
    sJuros := replace(DMProjeto.Parametro('Juros'),',',decimalseparator);
    sJuros := replace(sJuros,'.',decimalseparator);
  	JurosParametrizado := StrToFloat(sJuros);
  end else
    JurosParametrizado := 0;

  if DMProjeto.ExisteParametrosForm then begin
    with DMProjeto do begin
      edFavorecido.ID := GetParametrosForm(2);
    end;
  end else begin
//  	Atualizar;
  end;
end;

procedure TRptInvoicesEmAtraso.C_ConsultaCPF_CNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := MascaraCPFCNPJ( Sender.AsString );
end;

end.
