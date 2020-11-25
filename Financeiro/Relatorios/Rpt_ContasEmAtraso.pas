unit Rpt_ContasEmAtraso;
                                                                                   
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
  TS_LastDataObject, DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel,
  Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  Variants, Math;

type
  TRptContasEmAtraso = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSPAGOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaPrazo: TStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaicValor: TdxDBGridMaskColumn;
    dbgConsultaicValorPago: TdxDBGridMaskColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaicDescontos: TdxDBGridMaskColumn;
    dbgConsultaicJurosPagos: TdxDBGridMaskColumn;
    dbgConsultaicCreditoGerado: TdxDBGridMaskColumn;
    dbgConsultaicCreditoUtilizado: TdxDBGridMaskColumn;
    dbgConsultaicSaldo: TdxDBGridMaskColumn;
    dbgConsultaPrazo: TdxDBGridColumn;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaEndereco: TdxDBGridColumn;
    dbgConsultaCidade: TdxDBGridColumn;
    dbgConsultaEstado: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    dbgConsultaFone1: TdxDBGridColumn;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    dbgConsultaFone2: TdxDBGridColumn;
    dbgConsultaCelular: TdxDBGridColumn;
    dbgConsultaFax: TdxDBGridColumn;
    dbgConsultaCaixaPostal: TdxDBGridColumn;
    dbgConsultaEmail: TdxDBGridColumn;
    C_ConsultaPreview: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCOMPRA: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    N2: TMenuItem;
    MostrarEndereco: TMenuItem;
    C_ConsultaDIASEMATRASO: TIntegerField;
    dbgConsultaDiasEmAtraso: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn27: TdxDBGridColumn;
    C_ConsultaCOMPETENCIADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaDESCINDEX: TStringField;
    C_ConsultaicValor: TCurrencyField;
    C_ConsultaicValorPago: TCurrencyField;
    C_ConsultaicDescontos: TCurrencyField;
    C_ConsultaicJurosPagos: TCurrencyField;
    C_ConsultaicCreditoGerado: TCurrencyField;
    C_ConsultaicCreditoUtilizado: TCurrencyField;
    C_ConsultaicSaldo: TCurrencyField;
    Q_SQL: TIBQuery;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure DataIDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure MostrarEnderecoClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptContasEmAtraso: TRptContasEmAtraso;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptContasEmAtraso.Atualizar;
begin
	with C_Consulta do begin
  	close;
    FetchParams;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where (d.status = 3 or (d.status=-3 and d.Vencimento<current_date)) ' +
                   'and (d.Fornecedor = :Favorecido or :Todos = 0)';

    params.parambyname('Favorecido').asInteger := edFavorecido.getID;
    params.parambyname('Todos').asInteger := edFavorecido.getID;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptContasEmAtraso.C_ConsultaCalcFields(DataSet: TDataSet);
var Dias : integer;
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

  DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

  DataSet.FieldByName('icValor').AsVariant := DataSet.FieldByName('VALOR').AsCurrency;
  DataSet.FieldByName('icValorPago').AsVariant := DataSet.FieldByName('VALORPAGO').AsCurrency;
  DataSet.FieldByName('icDescontos').AsVariant := DataSet.FieldByName('DESCONTOS').AsCurrency;
  DataSet.FieldByName('icJurosPagos').AsVariant := DataSet.FieldByName('JUROSPAGOS').AsCurrency;
  DataSet.FieldByName('icCreditoGerado').AsVariant := DataSet.FieldByName('CREDITOGERADO').AsCurrency;
  DataSet.FieldByName('icCreditoUtilizado').AsVariant := DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency;
  DataSet.FieldByName('icSaldo').AsVariant := DataSet.FieldByName('SALDO').AsCurrency;

  if (DataSet.FieldByName('Indexador').AsVariant <> null) then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      DataSet.FieldByName('icValor').AsVariant := RoundTo( DataSet.FieldByName('VALOR').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icValorPago').AsVariant := RoundTo( DataSet.FieldByName('VALORPAGO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icDescontos').AsVariant := RoundTo( DataSet.FieldByName('DESCONTOS').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icJurosPagos').AsVariant := RoundTo( DataSet.FieldByName('JUROSPAGOS').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icCreditoGerado').AsVariant := RoundTo( DataSet.FieldByName('CREDITOGERADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icCreditoUtilizado').AsVariant := RoundTo( DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icSaldo').AsVariant := RoundTo( DataSet.FieldByName('SALDO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
    end;
    Q_SQL.Close;
  end;
end;

procedure TRptContasEmAtraso.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasEmAtraso.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasEmAtraso.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if text = '' then
  	Atualizar;
end;

procedure TRptContasEmAtraso.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else if dbgConsulta.TS_SelectedColumn = 'NOTAFISCAL' then begin
    if C_ConsultaCompra.AsInteger <> 0 then begin
			with DMProjeto do begin
  			SetParametrosForm([C_ConsultaCompra.Value]);
    		CriarForm('FrmCompras',self,true);
  		end;
    end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaID.AsInteger]);
    	CriarForm('FrmA_Pagar',self,true);
  	end;
  end;
end;

procedure TRptContasEmAtraso.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasEmAtraso.MostrarEnderecoClick(Sender: TObject);
begin
  inherited;
  if MostrarEndereco.Checked then begin
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
    MostrarEndereco.Checked := true;
  end else begin
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
    MostrarEndereco.Checked := false;
  end;
end;

procedure TRptContasEmAtraso.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

end.
