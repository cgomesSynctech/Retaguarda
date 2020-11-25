unit Rpt_DevConsig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEditor,
  dxEdLib, TS_DateTimePicker, TS_PopupEdit, CheckLst, TS_CheckListBox,
  TS_CheckBox;

type
  TRptDevConsig = class(TRptPadrao)
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    ppeStatus: TTS_PopupEdit;
    Q_Status: TIBQuery;
    P_Status: TDataSetProvider;
    C_Status: TClientDataSet;
    C_StatusSTATUS: TStringField;
    C_StatusDESCRICAO: TStringField;
    C_StatusORDEM: TIntegerField;
    C_StatusDESCRICAO1: TStringField;
    C_StatusDESCRICAO2: TStringField;
    C_StatusDESCRICAO3: TStringField;
    C_StatusDS: TDataSource;
    cklStatus: TTS_CheckListBox;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaESTOQUE: TBCDField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure ppeStatusCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptDevConsig: TRptDevConsig;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}

procedure TRptDevConsig.AtualizaConsulta;
var sStatus: string;
begin
  sStatus := cklStatus.Selecionados;
  if (ContaStrings(sStatus,',') = 0) or (ContaStrings(sStatus,',') = 9) then begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select si.saidaitem, si.item, si.descricao, si.quantidade, si.preco, ' +
                           'si.unidade, i.estoque, ' +
                           's.numero || '' - Data: '' || extract(day from s.data) || ''/'' || ' +
                           'extract(month from s.data) || ''/'' || extract(year from s.data) || '' - Status: '' || ' +
                           'ss.descricao as numero, ' +
                           's.data, s.favorecido, f.nome, si.saida ' +
                           'from saidasitens si ' +
                           'left join saidas s on si.saida = s.saida ' +
                           'left join itens i on si.item = i.item ' +
                           'left join favorecidos f on s.favorecido = f.favorecido ' +
                           'left join statusentradas ss on s.status = ss.status ' +
                           'where s.tipopadrao = 7 ' +
                           'and s.data between :datai and :dataf ';
    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Todos...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Text := 'Período de: ' + DataI.Text + ' a ' + DataF.Text;
  end
  else begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select si.saidaitem, si.item, si.descricao, si.quantidade, si.preco, ' +
                           'si.unidade, i.estoque, ' +
                           's.numero || '' - Data: '' || extract(day from s.data) || ''/'' || ' +
                           'extract(month from s.data) || ''/'' || extract(year from s.data) || '' - Status: '' || ' +
                           'ss.descricao as numero, ' +
                           's.data, s.favorecido, f.nome, si.saida ' +
                           'from saidasitens si ' +
                           'left join saidas s on si.saida = s.saida ' +
                           'left join itens i on si.item = i.item ' +
                           'left join favorecidos f on s.favorecido = f.favorecido ' +
                           'left join statusentradas ss on s.status = ss.status ' +
                           'where s.tipopadrao = 7 ' +
                           'and s.status in (' + sStatus + ') ' +
                           'and s.data between :datai and :dataf ';
    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Alguns...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Text := 'Período de: ' + DataI.Text + ' a ' + DataF.Text + ' - Status: ' + cklStatus.Selecionados(True);
  end;
  dbgConsulta.ExpandirGrupos;
end;

procedure TRptDevConsig.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Status.Close;
  C_Status.Open;
  cklStatus.UpdateItems;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := IncMonth(DMProjeto.dDataSistema, -1);
  if DataF.GetEditingText = '' then DataF.Date := IncMonth( DMProjeto.dDataSistema, 1);
  DataF.OnDateChange := DataFDateChange;
  DataI.OnDateChange := DataIDateChange;
  AtualizaConsulta;
end;

procedure TRptDevConsig.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptDevConsig.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if (dbgConsulta.TS_SelectedColumn = 'DESCRICAO') or (dbgConsulta.TS_SelectedColumn = 'UNIDADE') or
     (dbgConsulta.TS_SelectedColumn = 'ESTOQUE') then begin
       DMProjeto.SetParametrosForm([C_ConsultaItem.Value]);
       DMProjeto.CriarForm('FrmItens',self,true);
  end else if (dbgConsulta.TS_SelectedColumn = 'QUANTIDADE') or (dbgConsulta.TS_SelectedColumn = 'PRECO') then begin
  	DMProjeto.SetParametrosForm([C_ConsultaSaida.Value]);
    	DMProjeto.CriarForm('FrmAcertoConsigEnt',self,true);
  end;
end;

procedure TRptDevConsig.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptDevConsig.DataFDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptDevConsig.ppeStatusCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizaConsulta;
end;

end.
