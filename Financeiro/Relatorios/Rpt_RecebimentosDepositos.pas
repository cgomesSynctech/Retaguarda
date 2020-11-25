unit Rpt_RecebimentosDepositos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxCntner, dxEditor,
  TS_DateTimePicker, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls,
  StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, Buttons,
  TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  TS_CheckBox;

type
  TRptRecebimentosDepositos = class(TRptPadrao)
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaDEPOSITO: TIntegerField;
    C_ConsultaTIPODEPOSITO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaDESCFORMAPAG: TStringField;
    C_ConsultaDESCORIGEM: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaDEPOSITO: TdxDBGridMaskColumn;
    dbgConsultaTIPODEPOSITO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaDESCFORMAPAG: TdxDBGridMaskColumn;
    dbgConsultaDESCORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn12: TdxDBGridColumn;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaRAZAO: TStringField;
    dbgConsultaCPF_CNPJ: TdxDBGridColumn;
    dbgConsultaRAZAO: TdxDBGridColumn;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaHISTORICO: TStringField;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    C_ConsultaicDiasAtraso: TIntegerField;
    dbgConsultaicDiasAtraso: TdxDBGridColumn;
    C_ConsultaDESCTIPOFAV: TStringField;
    dbgConsultaDescTipoFav: TdxDBGridColumn;
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptRecebimentosDepositos: TRptRecebimentosDepositos;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptRecebimentosDepositos.Atualizar;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where d.Data >= :DataI and d.Data <= :DataF and dd.Status < 70 and dd.formapagamento <> -1 ';

    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + ' and d.Favorecido = '+IntToStr(edFavorecido.ID);

    FetchParams;
    Params.ParamByName('DataI').AsDate := DataI.Date;
    Params.ParamByName('DataF').AsDate := DataF.Date;
    Open;
	end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;
                                                   

procedure TRptRecebimentosDepositos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
  	//Atualizar;
end;

procedure TRptRecebimentosDepositos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then  DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataF.OnDateChange := DataFDateChange;
//  Atualizar;
end;

procedure TRptRecebimentosDepositos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  		SetParametrosForm([C_ConsultaFavorecido.AsInteger]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.AsInteger),self,true);
    end else begin
  		SetParametrosForm([C_ConsultaDeposito.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoDeposito.AsInteger),self,true);
    end;
  end;
end;

procedure TRptRecebimentosDepositos.edFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptRecebimentosDepositos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptRecebimentosDepositos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if UpperCase(LastDataObject.TableName) = 'DEPOSITOS' then
  	btAtualizar.Click;
end;

procedure TRptRecebimentosDepositos.DataFDateChange(Sender: TObject);
begin
  inherited;
//  Atualizar;
end;

procedure TRptRecebimentosDepositos.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

  DataSet.FieldByName('icDiasAtraso').AsInteger := Trunc( DataSet.FieldByName('DATA').AsDateTime ) -
                                                   Trunc( DataSet.FieldByName('VENCIMENTO').AsDateTime );
end;

end.
