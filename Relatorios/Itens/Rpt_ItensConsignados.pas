unit Rpt_ItensConsignados;
                                                                                         
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
  TS_CheckBox, TS_PopupFiltrarItens;

type
  TRptItensConsignados = class(TRptPadrao)
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
    C_ConsultaESTOQUECONSIGENTRADA: TBCDField;
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
    dbgConsultaESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaQTD: TdxDBGridCurrencyColumn;
    dbgConsultaQTDDEV: TdxDBGridCurrencyColumn;
    dbgConsultaQTDACERT: TdxDBGridCurrencyColumn;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    DataF: TTS_DateTimePicker;
    FiltroItens: TTS_PopupFiltrarItens;
    DataVendaF: TTS_DateTimePicker;
    TS_Label4: TTS_Label;
    DataVendaI: TTS_DateTimePicker;
    TS_Label5: TTS_Label;
    C_ConsultaQTDEVENDIDA: TIntegerField;
    dbgConsultaQTDEVENDIDA: TdxDBGridMaskColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure ppeStatusCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure FiltroItensSelecionou(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptItensConsignados: TRptItensConsignados;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}

procedure TRptItensConsignados.AtualizaConsulta;
var sStatus: string;
begin
  sStatus := cklStatus.Selecionados;
  if (ContaStrings(sStatus,',') = 0) or (ContaStrings(sStatus,',') = 9) then begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select e.tipomovimento, ei.item, i.codigo, i.descricao, ' +
                           'i.unidade, i.referencia, i.estoqueconsigentrada, i.estoque, ' +
                           'sum(ei.quantidade) as qtd, ' +
                           'sum(ei.qtddevolvido) as qtddev, sum(ei.qtdacertado) as qtdacert, ' +

                           '(select count(si.quantidade) from saidasitens si inner join saidas s on si.saida = s.saida ' +
                           'where s.tipopadrao = 1 and s.situacao = ''N'' and  si.item = ei.item and ' +
                           's.data between :datasi and :datasf) as qtdevendida '+

                           'from entradas e ' +
                           'left join entradasitens ei on e.entrada = ei.entrada ' +
                           'inner join itens i on ei.item = i.item ' +
                           'where e.tipomovimento = 10 ' +
                           'and e.data between :datai and :dataf '+
                           iif(Length(FiltroItens.getSQL) > 0,' and '+FiltroItens.getSQL +' ',' ') +
                           'group by e.tipomovimento, ei.item,i.codigo, ' +
                           'i.descricao, i.unidade,i.referencia,i.estoqueconsigentrada,i.estoque ';

    Q_Consulta.ParamByName('datasi').AsDate := DataVendaI.Date;
    Q_Consulta.ParamByName('datasf').AsDate := DataVendaF.Date;

    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Todos...';
    dbgConsulta.TS_ReportFilter.Clear;
  end
  else begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select e.tipomovimento, ei.item, i.codigo, i.descricao, ' +
                           'i.unidade, i.referencia, i.estoqueconsigentrada, i.estoque, ' +
                           'sum(ei.quantidade) as qtd, ' +
                           'sum(ei.qtddevolvido) as qtddev, sum(ei.qtdacertado) as qtdacert, ' +
                           '(select count(si.quantidade) from saidasitens si inner join saidas s on si.saida = s.saida ' +
                           'where s.tipopadrao = 1 and s.situacao = ''N'' and  si.item = ei.item and ' +
                           's.data between :datasi and :datasf) as qtdevendida '+                           
                           'from entradas e ' +
                           'left join entradasitens ei on e.entrada = ei.entrada ' +
                           'inner join itens i on ei.item = i.item ' +
                           'where e.tipomovimento = 10 ' +
                           'and e.data between :datai and :dataf '+
                           'and ei.status in (' + sStatus + ') ' +
                           iif(Length(FiltroItens.getSQL) > 0,' and '+FiltroItens.getSQL +' ',' ') +
                           'group by e.tipomovimento, ei.item,i.codigo, ' +
                           'i.descricao, i.unidade,i.referencia,i.estoqueconsigentrada,i.estoque ';
    Q_Consulta.ParamByName('datasi').AsDate := DataVendaI.Date;
    Q_Consulta.ParamByName('datasf').AsDate := DataVendaF.Date;

    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Alguns...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Text := 'Status:' + cklStatus.Selecionados(True);
  end;
  dbgConsulta.TS_ReportFilter.Add( FiltroItens.Hint );
end;

procedure TRptItensConsignados.FormsComponentBeforeClearParams(
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

  DataVendaI.OnDateChange := nil;
  DataVendaF.OnDateChange := nil;
  if DataVendaI.GetEditingText = '' then DataVendaI.Date := DMProjeto.dDataSistema;
  if DataVendaF.GetEditingText = '' then DataVendaF.Date := DMProjeto.dDataSistema;
  DataVendaF.OnDateChange := DataFDateChange;
  DataVendaI.OnDateChange := DataIDateChange;

  AtualizaConsulta;
end;

procedure TRptItensConsignados.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsignados.ppeStatusCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsignados.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_ConsultaItem.Value]);
  DMProjeto.CriarForm('FrmItens',Self,True);
end;

procedure TRptItensConsignados.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsignados.DataFDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptItensConsignados.FiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
