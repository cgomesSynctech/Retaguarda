unit Rpt_ExtratoEntradas;
                                                                               
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, IBCustomDataSet, Db, StdCtrls, CheckLst, TS_CheckListBox,
  dxExEdtr, dxEdLib, TS_CheckBox, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_PopupEdit, dxCntner, dxEditor, TS_DateTimePicker, Buttons,
  TS_SpeedButton, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBQuery, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_QDBGrid, ExtCtrls, TS_Label,
  dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  TS_PopupFiltrarItens;

type
  TRptExtratoEntradas = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaIDCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaIDITEM: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaTIPOORIGEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCFABRIC: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridColumn;
    C_ConsultaTRANSACAOESTOQUE: TIntegerField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaSUBTOTALCM: TFloatField;
    C_ConsultaSUBTOTALCC: TFloatField;
    dbgConsultaSUBTOTALCC: TdxDBGridColumn;
    dbgConsultaSUBTOTALPC: TdxDBGridColumn;
    C_ConsultaSUBTOTALPC: TFloatField;
    dbgConsultaPRECOCOMPRA: TdxDBGridColumn;
    C_ConsultaDESCORIGEM: TStringField;
    dbgConsultaDESCORIGEM: TdxDBGridColumn;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaCODIGO: TStringField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaFATORUNDCOMPRA: TFloatField;
    C_ConsultaFATOR: TFloatField;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesano: TdxDBGridColumn;
    procedure lkTipoItemChange(Sender: TObject);
    procedure clbTipoMovimentoClickCheck(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure dbgConsultaQUANTIDADESummaryFooter(Sender: TObject;
      DataSet: TDataSet; var Value: Extended);
    procedure dbgConsultaSummaryGroups0SummaryItems1Summary(
      Sender: TObject; DataSet: TDataSet; var Value: Extended);
  private
    { Private declarations }
	  sClientes, sNomesClientes : string;
    procedure AtualizaItens;
  public
    { Public declarations }
  end;

var
  RptExtratoEntradas: TRptExtratoEntradas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptExtratoEntradas.AtualizaItens;
var condTipoMov, condClientes, condFornecedores, condVendedores: string;
    sPrimeiroNome : string;
    i : integer;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where t.data >= :datai and t.data <= :dataf and t.quantidade > 0 ' +
                   iif(PopupFiltroItens.getSQL( false )<>'','and '+PopupFiltroItens.getSQL( false ),'') +
                   ' order by t.data, t.transacaoestoque';
    Params.ParamByName('DataI').AsDateTime := edDataIni.Date;
    Params.ParamByName('DataF').AsDateTime := edDataFim.Date;
    Open;
  end;
  with dbgConsulta do begin
    FullExpand;
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de ' + edDataini.Text + ' a ' + edDatafim.Text);
    TS_ReportFilter.Add(replace(PopupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptExtratoEntradas.lkTipoItemChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradas.clbTipoMovimentoClickCheck(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradas.PeriodoDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradas.dbgConsultaDblClick(Sender: TObject);
var
  nItem, nTipoOrigem : Integer;
  sForm : String;
begin
  inherited;
  if (UpperCase(dbgConsulta.FocusedField.FieldName) = 'CODIGO')
  or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'DESCRICAO')
  or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'REFERENCIA') then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, True);
  end
  else begin
    if UpperCase(dbgConsulta.FocusedField.FieldName) = 'NOME' then begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'favorecido', 0);
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaFavorecido(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOFAVORECIDO', 0));
    end
    else begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDGERADOR', 0);
      nTipoOrigem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOORIGEM', 0);

      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaGeradora(nTipoOrigem);
    end;
    DMProjeto.CriarForm(sForm, Self, True);
  end;
end;


procedure TRptExtratoEntradas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if DMProjeto.QtdParametrosForm > 0 then begin
    edDataIni.date := DMProjeto.GetParametrosForm(1);
    edDataFim.date := DMProjeto.GetParametrosForm(2);
    PopupFiltroItens.TS_ItensSelecionados := DMProjeto.GetParametrosForm(0);
  end
  else begin
    if edDataIni.GetEditingText = '' then edDataIni.Date := DMProjeto.dDataSistema;
    if edDataFim.GetEditingText = '' then edDataFim.Date := DMProjeto.dDataSistema;
  end;
  edDataIni.OnDateChange := PeriodoDateChange;
  edDataFim.OnDateChange := PeriodoDateChange;
  AtualizaItens;
end;

procedure TRptExtratoEntradas.PopupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

procedure TRptExtratoEntradas.dbgConsultaQUANTIDADESummaryFooter(
  Sender: TObject; DataSet: TDataSet; var Value: Extended);
begin
  inherited;
	Value :=  (Value*DataSet.FieldByName('fator').AsFloat)/DataSet.FieldByName('fatorundcompra').AsFloat;
end;

procedure TRptExtratoEntradas.dbgConsultaSummaryGroups0SummaryItems1Summary(
  Sender: TObject; DataSet: TDataSet; var Value: Extended);
begin
  inherited;
	Value :=  (Value*DataSet.FieldByName('fator').AsFloat)/DataSet.FieldByName('fatorundcompra').AsFloat;
end;

end.
