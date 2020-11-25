unit Rpt_ContasVencendoHoje;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxExEdtr, Placemnt, BTOdeum, dxEdLib, TS_CheckBox, Variants, Math;

type
  TRptContasVencendoHoje = class(TRptPadrao)
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
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaEndereco: TdxDBGridColumn;
    dbgConsultaCidade: TdxDBGridColumn;
    dbgConsultaEstado: TdxDBGridColumn;
    dbgConsultaFone1: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn20: TdxDBGridColumn;
    C_ConsultaCOMPETENCIADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
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
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
     procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptContasVencendoHoje: TRptContasVencendoHoje;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptContasVencendoHoje.Atualizar;
begin
  with C_Consulta do begin
 	  Close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where (d.status = 2) or (d.status=-3 and d.vencimento=current_date)';
    Open;
  end;  
end;


procedure TRptContasVencendoHoje.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else begin
		with DMProjeto do begin
     	SetParametrosForm([C_ConsultaID.AsInteger]);
    	CriarForm('FrmA_Pagar',self,false);
    end;
  end;
end;

procedure TRptContasVencendoHoje.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptContasVencendoHoje.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptContasVencendoHoje.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
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

end.
