unit Rpt_ContasPagas;
                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, StdCtrls, TS_Label, 
  TS_Image, dxfLabel, TS_MaxPanel, dxExEdtr, dxEdLib, TS_DateTimePicker,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxEditor, TS_ButtonEdit,
  TS_EditFavorecido, TS_LastDataObject, DlgMsg, 
  teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton, Menus, TS_PopupMenu,
  ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  BTOdeum, Placemnt, TS_CheckBox, Variants, Math;

type
  TRptContasPagas = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSPAGOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaSALDO: TBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaicValor: TdxDBGridMaskColumn;
    dbgConsultaicValorPago: TdxDBGridMaskColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaicDescontos: TdxDBGridMaskColumn;
    dbgConsultaicJurosPagos: TdxDBGridMaskColumn;
    dbgConsultaicCreditoGerado: TdxDBGridMaskColumn;
    dbgConsultaicCreditoUtilizado: TdxDBGridMaskColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaCEP: TStringField;
    dbgConsultaEndereco: TdxDBGridColumn;
    dbgConsultaCidade: TdxDBGridColumn;
    dbgConsultaEstado: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    dbgConsultaFone1: TdxDBGridColumn;
    dbgConsultaicSaldo: TdxDBGridColumn;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCOMPRA: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn21: TdxDBGridColumn;
    C_ConsultaOBS: TStringField;
    dbgConsultaOBS: TdxDBGridColumn;
    C_ConsultaDESCTIPOCOBRANCA: TStringField;
    dbgConsultaDESCTIPOCOBRANCA: TdxDBGridMaskColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaDESCINDEX: TStringField;
    dbgConsultaDESCINDEX: TdxDBGridMaskColumn;
    C_ConsultaicValor: TCurrencyField;
    C_ConsultaicValorPago: TCurrencyField;
    C_ConsultaicDescontos: TCurrencyField;
    C_ConsultaicJurosPagos: TCurrencyField;
    C_ConsultaicCreditoGerado: TCurrencyField;
    C_ConsultaicCreditoUtilizado: TCurrencyField;
    C_ConsultaicSaldo: TCurrencyField;
    Q_SQL: TIBQuery;
    C_ConsultaCONTADESPESA: TStringField;
    dbgConsultaContaDespesa: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptContasPagas: TRptContasPagas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptContasPagas.Atualizar;
begin
 	with C_Consulta do begin
  	close;
    FetchParams;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where d.datapago >= :DataI and d.datapago <= :DataF and ' +
                   '(d.fornecedor = :favorecido OR :todos = 0 ) and d.status > 0 ';

    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    params.parambyname('Favorecido').asInteger := edFavorecido.getID;
    params.parambyname('Todos').asInteger := edFavorecido.getID;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptContasPagas.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasPagas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasPagas.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasPagas.dbgConsultaDblClick(Sender: TObject);
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
    		CriarForm('FrmEntradas',self,true);
  		end;
    end;
  end else begin
//		with DMProjeto do begin
//  		SetParametrosForm([C_ConsultaRetirada.Value]);
//    	CriarForm(getTelaGeradora(C_ConsultaTipoRetirada.Value),self,true);
//  	end;
  end;
end;

procedure TRptContasPagas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
  	Atualizar;
end;

procedure TRptContasPagas.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptContasPagas.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATAPAGO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATAPAGO').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

  DataSet.FieldByName('icValor').AsVariant := DataSet.FieldByName('VALOR').AsCurrency;
  DataSet.FieldByName('icValorPago').AsVariant := DataSet.FieldByName('VALORPAGO').AsCurrency;
  DataSet.FieldByName('icDescontos').AsVariant := DataSet.FieldByName('DESCONTOS').AsCurrency;
  DataSet.FieldByName('icJurosPagos').AsVariant := DataSet.FieldByName('JUROSPAGOS').AsCurrency;
  DataSet.FieldByName('icCreditoGerado').AsVariant := DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency;
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
      DataSet.FieldByName('icCreditoGerado').AsVariant := DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency;
      DataSet.FieldByName('icCreditoUtilizado').AsVariant := RoundTo( DataSet.FieldByName('CREDITOUTILIZADO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
      DataSet.FieldByName('icSaldo').AsVariant := RoundTo( DataSet.FieldByName('SALDO').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
    end;
    Q_SQL.Close;
  end;

end;

end.
