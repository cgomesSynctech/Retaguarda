unit Rpt_ExtratoSaidasResumido;               
//dxDBTLCl, dxGrClms,
interface                                                                                            

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, IBCustomDataSet, Db, StdCtrls, 
  dxExEdtr, dxEdLib, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_PopupEdit, dxCntner, dxEditor, TS_DateTimePicker, Buttons,
  TS_SpeedButton,  FormsComponent,
  DBClient, Provider, IBQuery, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_QDBGrid, ExtCtrls, TS_Label,
  dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxPrnDev, dxWrap, dxDBGrid, dxTL,
  dxDBCtrl, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  Placemnt, BTOdeum, dxDBTLCl, dxGrClms, TS_PopupFiltrarItens, TS_CheckBox;

type
  TRptExtratoSaidasResumido = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    btCliente: TTS_SpeedButton;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaIDITEM: TdxDBGridMaskColumn;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    d: TStringField;
    C_ConsultaDESCFABRIC: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridColumn;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaSUBTOTALCM: TFloatField;
    C_ConsultaSUBTOTALPC: TFloatField;
    C_ConsultaSUBTOTALCC: TFloatField;
    dbgConsultaSUBTOTALCC: TdxDBGridColumn;
    dbgConsultaSUBTOTALPC: TdxDBGridColumn;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaQTDEMINIMO: TBCDField;
    C_ConsultaQTDEMAXIMO: TBCDField;
    C_ConsultaULTIMACOMPRA: TDateField;
    C_ConsultaULTQTDECOMPRA: TBCDField;
    dbgConsultaULTIMACOMPRA: TdxDBGridDateColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn;
    dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaULTQTDECOMPRA: TdxDBGridMaskColumn;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaFATORUNDVENDA: TFloatField;
    C_ConsultaicEstoque: TFloatField;
    C_ConsultaicQtdeMinima: TFloatField;
    C_ConsultaicQtdeMaxima: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaicCustoMedio: TFloatField;
    C_ConsultaicUltQtdeCompra: TFloatField;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    C_ConsultaicCustoContabil: TFloatField;
    C_ConsultaTOTALQTDE: TFloatField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaDATA: TDateField;
    dbgConsultaData: TdxDBGridColumn;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    procedure btClienteClick(Sender: TObject);
    procedure lkTipoItemChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure edDataIniDateChange(Sender: TObject);
  private
    { Private declarations }
    sClientes, sNomesClientes : string;
    procedure AtualizaItens;
  public
    { Public declarations }
  end;

var
  RptExtratoSaidasResumido: TRptExtratoSaidasResumido;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptExtratoSaidasResumido.AtualizaItens;
var i : integer;
		sPrimeiroNome : string;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where t.data >= :datai and t.data <= :dataf and t.quantidade < 0 ' +
                   iif(sClientes<>'','and t.favorecido IN ('+sClientes+') ',' ')+
                   iif(PopupFiltroItens.getSQL( false )<>'','and '+PopupFiltroItens.getSQL( false ),' ')+
                   ' group by t.item, i.unidade, i.grupo, i.descricao, i.codigo, i.referencia,'+
                   'fab.descricao, g.descricaogrupo, i.estoque, i.qtdeminimo, i.qtdemaximo, ' +
                   'i.ultimacompra, i.ultqtdecompra, i.fatorundvenda, i.customedio, i.custocontabil, T.Data ';
    Params.ParamByName('DataI').AsDateTime := edDataIni.Date;
    Params.ParamByName('DataF').AsDateTime := edDataFim.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de ' + edDataini.Text+ ' a ' + edDatafim.Text);
    if sNomesClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesClientes,',',1));
      for i := 2 to ContaStrings(sNomesClientes,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesClientes,',',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
		TS_ReportFilter.Add(replace(PopupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptExtratoSaidasResumido.btClienteClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaItens;
    end;
  end;
end;

procedure TRptExtratoSaidasResumido.lkTipoItemChange(Sender: TObject);
begin  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidasResumido.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidasResumido.PeriodoDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidasResumido.dbgConsultaDblClick(Sender: TObject);
var
  nItem: Integer;
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
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem,edDataIni.date,edDataFim.date]);
    DMProjeto.CriarForm('RptExtratoSaidas', Self, True);
  end;
end;

procedure TRptExtratoSaidasResumido.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sClientes := '';
  sNomesClientes := '';
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if edDataIni.GetEditingText = '' then edDataIni.Date := DMProjeto.dDataSistema;
  if edDataFim.GetEditingText = '' then edDataFim.Date := DMProjeto.dDataSistema;
  edDataIni.OnDateChange := edDataIniDateChange;
  edDataFim.OnDateChange := edDataIniDateChange;
  AtualizaItens;
end;

procedure TRptExtratoSaidasResumido.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet['icEstoque']:= DataSet['Estoque'];
  DataSet['icQtdeMinima'] := DataSet['QtdeMinimo'];
  DataSet['icQtdeMaxima'] := DataSet['QtdeMaximo'];
  DataSet['icUltQtdeCompra'] := C_ConsultaUltQtdeCompra.AsInteger;
  DataSet['icCustoMedio'] := DataSet['CustoMedio'];
  DataSet['icCustoContabil'] := DataSet['CustoContabil'];
end;

procedure TRptExtratoSaidasResumido.PopupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidasResumido.edDataIniDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

end.
