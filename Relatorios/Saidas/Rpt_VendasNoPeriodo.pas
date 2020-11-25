unit Rpt_VendasNoPeriodo;

interface                                                                             

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib,
  TS_DBLookupComboBox, TS_LookupComboBox, TS_CheckBox, TS_PopupEdit,
  CheckLst, TS_CheckListBox, TS_Panel;

type
  TRptVendasNoPeriodo = class(TRptPadrao)
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaGRUPOCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDESCPLANOPAGAMENTO: TdxDBGridMaskColumn;
    dbgConsultaDATAENTREGA: TdxDBGridDateColumn;
    dbgConsultaDESCCAIXA: TdxDBGridMaskColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaFRETE: TdxDBGridCurrencyColumn;
    dbgConsultaValorFinal: TdxDBGridMaskColumn;
    dbgConsultaColumn20: TdxDBGridColumn;
    dbgConsultaDESCONTO: TdxDBGridMaskColumn;
    dbgConsultaJUROS: TdxDBGridMaskColumn;
    dbgConsultaVALORCOMISSAO: TdxDBGridMaskColumn;
    Q_TiposMovimentos: TIBQuery;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TipoMovimentoDS: TDataSource;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    TS_Label3: TTS_Label;
    btClientes: TTS_SpeedButton;
    btVendedor: TTS_SpeedButton;
    dbgConsultaMesAno: TdxDBGridColumn;
    dbgConsultaTOTALITEM: TdxDBGridColumn;
    cbCanceladas: TTS_CheckBox;
    dbgConsultaBASECALCICMS: TdxDBGridColumn;
    dbgConsultaBaseSubT: TdxDBGridColumn;
    dbgConsultaValorICMS: TdxDBGridColumn;
    dbgConsultaValorSubT: TdxDBGridColumn;
    dbgConsultaSubstituicao: TdxDBGridColumn;
    dbgConsultaDevolucao: TdxDBGridColumn;
    C_ConsultaValorFinal: TCurrencyField;
    dbgConsultaTotal: TdxDBGridColumn;
    clbTipoOperacao: TTS_CheckListBox;
    ppeTipoOperacao: TTS_PopupEdit;
    dbgConsultaDESCTIPOCOBRANCA: TdxDBGridMaskColumn;
    popupFavorecido: TTS_PopupEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    C_ConsultaMesAno: TStringField;
    cbFonte: TTS_CheckBox;
    cbNormal: TTS_CheckBox;
    dbgConsultaHora: TdxDBGridTimeColumn;
    cbISENTOS: TTS_CheckBox;
    cbSemInscricao: TTS_CheckBox;
    dbgConsultaInscricao_Est: TdxDBGridColumn;
    dbgConsultaCIDADE: TdxDBGridColumn;
    dbgConsultaBairro: TdxDBGridColumn;
    dbgConsultaUF: TdxDBGridColumn;
    dbgConsultaLOGINNAME: TdxDBGridColumn;
    dbgConsultaMOTIVOCANCELAMENTO: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    dbgConsultaENDERECO: TdxDBGridColumn;
    dbgConsultaCAMPO01: TdxDBGridColumn;
    dbgConsultaCAMPO02: TdxDBGridColumn;
    dbgConsultaCAMPO03: TdxDBGridColumn;
    dbgConsultaCAMPO04: TdxDBGridColumn;
    dbgConsultaProfissional: TdxDBGridColumn;
    LayoutVendasSellOUT1: TMenuItem;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDTMODIFICACAO: TDateTimeField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATAENTREGA: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOMOVIMENTO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaGRUPOCLIENTE: TStringField;
    C_ConsultaDESCPLANOPAGAMENTO: TStringField;
    C_ConsultaDESCCAIXA: TStringField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaDESCTABELAPRECO: TStringField;
    C_ConsultaDESCTIPOCOBRANCA: TStringField;
    C_ConsultaHORA: TTimeField;
    C_ConsultaINSCRICAO_EST: TStringField;
    C_ConsultaLOGINNAME: TStringField;
    C_ConsultaMOTIVOCANCELAMENTO: TStringField;
    C_ConsultaCAMPO01: TStringField;
    C_ConsultaCAMPO02: TStringField;
    C_ConsultaCAMPO03: TStringField;
    C_ConsultaCAMPO04: TStringField;
    C_ConsultaPROFISSIONAL: TStringField;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaDEVOLUCAO: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaIMPOSTO: TFloatField;
    C_ConsultaVALORCOMISSAO: TFloatField;
    C_ConsultaFRETE: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaJUROS: TFloatField;
    C_ConsultaVALORICMS: TFloatField;
    C_ConsultaVALORICMSSUBST: TFloatField;
    C_ConsultaBASECALCICMS: TFloatField;
    C_ConsultaBASECALCSUBST: TFloatField;
    C_ConsultaSUBSTTRIB: TStringField;
    dbgConsultaTIPOPESSOA: TdxDBGridMaskColumn;
    C_ConsultaTIPOPESSOA: TStringField;
    C_ConsultaNUMREMESSA: TStringField;
    dbgConsultaNumRemessa: TdxDBGridColumn;
    dbgConsultaColumn46: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure popupFavorecidoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure LayoutVendasSellOUT1Click(Sender: TObject);
  private
    sqlFavorecido: String;
    { Private declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptVendasNoPeriodo: TRptVendasNoPeriodo;

implementation

uses DM_Projeto, funcoes, TDM_Projeto;

{$R *.dfm}

procedure TRptVendasNoPeriodo.Atualizar;
var sSituacao, sTipoOperacao: string;
begin
  sSituacao := ' and s.situacao = '+iif(cbCanceladas.Checked,'''C''','''N''');

  C_Consulta.Close;
  Q_Consulta.SQL.Text := ' select ' + getCampos + ' from ' + getTabelas +
                         ' where (s.data >= :d1 and s.data <= :d2) ';
  if sClientes <> '' then begin
     Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.favorecido in (' + sClientes +')';
  end;
  if (trim(sqlFavorecido) <> '') then begin
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sqlFavorecido;
  end;
  if sVendedores <> '' then begin
     Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.vendedor in (' + sVendedores +')';
  end;
  sTipoOperacao := clbTipoOperacao.Selecionados;
  if (sTipoOperacao <> '') then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and s.tipomovimento in ('+sTipoOperacao+')';

  Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and s.tipopadrao = 1 ';

  If (cbFonte.Checked) and (Not cbNormal.Checked) Then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and (f.FONTE = ''S'') ';

  If (Not cbFonte.Checked) and (cbNormal.Checked) Then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and ((f.FONTE = ''N'') or (f.Fonte is null))';

  if (cbISENTOS.Checked) Then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and (f.INSCRICAO_EST  = ''ISENTO'') ';

  if (cbSemInscricao.Checked) Then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and (f.INSCRICAO_EST  = '''' or f.INSCRICAO_EST is Null) ';
  if (cbCanceladas.Checked) Then
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + sSituacao +' and (s.situacao = ''C'') ';

  Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' order by s.data ';

  Q_Consulta.ParamByName('d1').AsDateTime := DataI.Date;
  Q_Consulta.ParamByName('d2').AsDateTime := DataF.Date;

  C_Consulta.Open;

  FormsComponent.Caption := 'Vendas no Período de: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if sVendedores <> '' then  TS_ReportFilter.Add('Vendedores:' + sNomesVendedores);
    if sTipoOperacao <> '' then TS_ReportFilter.Add('Tipo Operação:' + clbTipoOperacao.Selecionados(True) );
    // Falta colocar o filtro de clientes
    GoToFirst;
  end;
end;

procedure TRptVendasNoPeriodo.btAtualizarClick(Sender: TObject);
begin
  inherited;
   Atualizar;
end;

procedure TRptVendasNoPeriodo.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasNoPeriodo.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos);
  clbTipoOperacao.SetSelecionados('1,7,700');
  if DMProjeto.ExisteParametrosForm then begin
     if DMProjeto.getParametrosForm(1) = 'C' then
        dbgConsulta.AddGroupColumn( dbgConsultaNomeCliente );
     if DMProjeto.getParametrosForm(1) = 'V' then
        dbgConsulta.AddGroupColumn( dbgConsultaNomeVendedor );
  end;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
//  FrmFiltroFavorecidos := TFrmFiltroFavorecidos.Create(self);
//  Atualizar;
end;

procedure TRptVendasNoPeriodo.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
     DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
     DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end else if dbgConsulta.TS_SelectedColumn = 'NOMEVENDEDOR' then begin
     if C_ConsultaVendedor.Value > 0 then begin
     	DMProjeto.SetParametrosForm([C_ConsultaVendedor.Value]);
    	DMProjeto.CriarForm('FrmFuncionarios',self,true);
     end;
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaSaida.Value,null,C_ConsultaTIPOMOVIMENTO.Value]);
     DMProjeto.CriarForm('FrmInvoices',self,true);
  end;
end;

procedure TRptVendasNoPeriodo.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptVendasNoPeriodo.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptVendasNoPeriodo.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sVendedores := GetParametrosForm(0);
       sNomesVendedores := GetParametrosForm(1);
       LimparParametrosForm;
       Atualizar;
    end;
  end;
end;
procedure TRptVendasNoPeriodo.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptVendasNoPeriodo.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  If C_ConsultaDevolucao.IsNull Then
    C_ConsultaValorFinal.AsCurrency := C_ConsultaTotal.AsCurrency
  Else
    C_ConsultaValorFinal.AsCurrency := C_ConsultaTotal.AsCurrency - C_ConsultaDevolucao.AsCurrency;

  DataSet.FieldByName('MesAno').AsString := FormatDateTime('mm/yyyy', DataSet.FieldByName('data').AsDateTime);
end;

procedure TRptVendasNoPeriodo.ppeTipoOperacaoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
  Atualizar;
end;

procedure TRptVendasNoPeriodo.popupFavorecidoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
{  sqlFavorecido := FrmFiltroFavorecidos.getSQL;
  if Trim(sqlFavorecido) = '' then begin
  	Text := 'Filtrar Cliente...';
    popupFavorecido.Font.Color := clBlack;
    popupFavorecido.Font.Style := [];
  end else begin
  	Text := 'Cliente Filtrados...';
    popupFavorecido.Font.Color := clRed;
    popupFavorecido.Font.Style := [fsBold];
  end;
}
  Atualizar;
end;

procedure TRptVendasNoPeriodo.LayoutVendasSellOUT1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm(['vendas']);
  DMProject.CriarForm('DlgGerarArquivoPirelli',Self,false);
  DMProjeto.LimparParametrosForm;
end;

end.
