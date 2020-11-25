unit Rpt_ItensConsigSaida;
                                                                                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, CheckLst, TS_CheckListBox,
  dxEditor, dxEdLib, TS_PopupEdit, dxDBTLCl, dxGrClms, TS_DateTimePicker,
  TS_CheckBox;

type
  TRptItensConsigSaida = class(TRptPadrao)
    TS_Label1: TTS_Label;
    ppeStatus: TTS_PopupEdit;
    cklStatus: TTS_CheckListBox;
    Q_Status: TIBQuery;
    P_Status: TDataSetProvider;
    C_Status: TClientDataSet;
    C_StatusDS: TDataSource;
    C_StatusSTATUS: TStringField;
    C_StatusDESCRICAO: TStringField;
    C_StatusORDEM: TIntegerField;
    C_StatusDESCRICAO1: TStringField;
    C_StatusDESCRICAO2: TStringField;
    C_StatusDESCRICAO3: TStringField;
    C_ConsultaTIPOMOVIMENTO: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaQTD: TBCDField;
    C_ConsultaQTDDEV: TBCDField;
    C_ConsultaQTDACERT: TBCDField;
    dbgConsultaTIPOMOVIMENTO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaQTD: TdxDBGridCurrencyColumn;
    dbgConsultaQTDDEV: TdxDBGridCurrencyColumn;
    dbgConsultaQTDACERT: TdxDBGridCurrencyColumn;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaESTOQUECONSIGSAIDA: TBCDField;
    dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure ppeStatusCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptItensConsigSaida: TRptItensConsigSaida;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}

procedure TRptItensConsigSaida.AtualizaConsulta;
var sStatus: string;
begin
  sStatus := cklStatus.Selecionados;
  if (ContaStrings(sStatus,',') = 0) or (ContaStrings(sStatus,',') = 10) then begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select s.tipomovimento, si.item, i.codigo, i.descricao, ' +
                           'i.unidade, i.referencia, i.estoqueconsigsaida, i.estoque, ' +
                           'sum(si.quantidade) as qtd, ' +
                           'sum(si.qtddevolvido) as qtddev, sum(si.qtdacertado) as qtdacert ' +
                           'from saidas s ' +
                           'left join saidasitens si on s.saida = si.saida ' +
                           'left join itens i on si.item = i.item ' +
                           'where s.tipomovimento = 11 ' +
                           'and s.data between :datai and :dataf '+
                           'group by s.tipomovimento, si.item,i.codigo, ' +
                           'i.descricao, i.unidade,i.referencia,i.estoqueconsigsaida,i.estoque ';
    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Todos...';
    dbgConsulta.TS_ReportFilter.Clear;
  end
  else begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select s.tipomovimento, si.item, i.codigo, i.descricao, ' +
                           'i.unidade, i.referencia, i.estoqueconsigsaida, i.estoque, ' +
                           'sum(si.quantidade) as qtd, ' +
                           'sum(si.qtddevolvido) as qtddev, sum(si.qtdacertado) as qtdacert ' +
                           'from saidas s ' +
                           'left join saidasitens si on s.saida = si.saida ' +
                           'left join itens i on si.item = i.item ' +
                           'where s.tipomovimento = 11 ' +
                           'and s.data between :datai and :dataf '+
                           'and si.status in (' + sStatus + ') ' +
                           'group by s.tipomovimento, si.item,i.codigo, ' +
                           'i.descricao, i.unidade,i.referencia,i.estoqueconsigsaida,i.estoque ';
    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Alguns...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Text := 'Status:' + cklStatus.Selecionados(True);
  end;
end;

procedure TRptItensConsigSaida.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Status.Close;
  C_Status.Open;
  cklStatus.UpdateItems;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema;
  DataF.OnDateChange := DataFDateChange;
  DataI.OnDateChange := DataIDateChange;
  AtualizaConsulta;

end;

procedure TRptItensConsigSaida.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsigSaida.ppeStatusCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsigSaida.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_ConsultaItem.Value]);
  DMProjeto.CriarForm('FrmItens',Self,True);
end;

procedure TRptItensConsigSaida.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsigSaida.DataFDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
