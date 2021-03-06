unit Rpt_EntradasConsig;

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
  TRptEntradasConsig = class(TRptPadrao)
    C_ConsultaENTRADAITEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    dbgConsultaENTRADAITEM: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaQTDDEVOLVIDO: TdxDBGridCurrencyColumn;
    dbgConsultaQTDACERTADO: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    C_ConsultaENTRADA: TIntegerField;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
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
    dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
    DataVendaF: TTS_DateTimePicker;
    TS_Label4: TTS_Label;
    DataVendaI: TTS_DateTimePicker;
    TS_Label5: TTS_Label;
    btVendedor: TTS_SpeedButton;
    dbgConsultaQTDEVENDIDA: TdxDBGridMaskColumn;
    C_ConsultaicQtdConsigVend: TCurrencyField;
    dbgConsultaicQtdConsigVend: TdxDBGridColumn;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaQTDDEVOLVIDO: TFloatField;
    C_ConsultaQTDACERTADO: TFloatField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaQTDEVENDIDA: TFloatField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DataIDateChange(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure ppeStatusCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btVendedorClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    sFornecedores, sNomesFornecedores: string;
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptEntradasConsig: TRptEntradasConsig;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}

procedure TRptEntradasConsig.AtualizaConsulta;
var sStatus: string;
begin
  sStatus := cklStatus.Selecionados;
  if (ContaStrings(sStatus,',') = 0) or (ContaStrings(sStatus,',') = 9) then begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select ei.entradaitem, ei.item, ei.descricao, ei.quantidade, ei.preco, ei.subtotalitem, ' +
                           'ei.unidade, ei.qtddevolvido, ei.qtdacertado, i.estoque, ' +
                           'e.numero || '' - Data: '' || extract(day from e.data) || ''/'' || ' +
                           'extract(month from e.data) || ''/'' || extract(year from e.data) || '' - Status: '' || ' +
                           's.descricao as numero, ' +
                           'e.data, e.favorecido, f.nome, ei.entrada ' +

                           ', (select sum(si.quantidade) from saidasitens si inner join saidas s on si.saida = s.saida ' +
                           'where s.tipopadrao = 1 and s.situacao = ''N'' and si.item = ei.item and s.data between :datasi and :datasf) as  qtdevendida '+

                           'from entradasitens ei ' +
                           'left join entradas e on ei.entrada = e.entrada ' +
                           'left join itens i on ei.item = i.item ' +
                           'left join favorecidos f on e.favorecido = f.favorecido ' +
                           'left join statusentradas s on e.status = s.status ' +
                           'where e.tipopadrao = 104 ' +
                           'and e.data between :datai and :dataf ' +
                           'and e.situacao = ''N'' ';
    if (sFornecedores <> '') then
      Q_Consulta.Sql.Text := Q_Consulta.Sql.Text + ' and e.favorecido in (' + sFornecedores +')';

    Q_Consulta.ParamByName('datasi').AsDate := DataVendaI.Date;
    Q_Consulta.ParamByName('datasf').AsDate := DataVendaF.Date;

    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Todos...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Add('Per�odo de: ' + DataI.Text + ' a ' + DataF.Text);
    dbgConsulta.TS_ReportFilter.Add('Per�odo de Venda: ' + DataVendaI.Text + ' a ' + DataVendaF.Text);
    if (sNomesFornecedores <> '') then
      dbgConsulta.TS_ReportFilter.Add('Fornecedor(es):' + sNomesFornecedores );
  end
  else begin
    C_Consulta.Close;
    Q_Consulta.Sql.Text := 'select ei.entradaitem, ei.item, ei.descricao, ei.quantidade, ei.preco, ei.subtotalitem, ' +
                           'ei.unidade, ei.qtddevolvido, ei.qtdacertado, i.estoque, ' +
                           'e.numero || '' - Data: '' || extract(day from e.data) || ''/'' || ' +
                           'extract(month from e.data) || ''/'' || extract(year from e.data) || '' - Status: '' || ' +
                           's.descricao as numero, ' +
                           'e.data, e.favorecido, f.nome, ei.entrada ' +
                           ', (select sum(si.quantidade) from saidasitens si inner join saidas s on si.saida = s.saida ' +
                           'where s.tipopadrao = 1 and s.situacao = ''N'' and si.item = ei.item and s.data between :datasi and :datasf) as  qtdevendida '+
                           'from entradasitens ei ' +
                           'left join entradas e on ei.entrada = e.entrada ' +
                           'left join itens i on ei.item = i.item ' +
                           'left join favorecidos f on e.favorecido = f.favorecido ' +
                           'left join statusentradas s on e.status = s.status ' +
                           'where e.tipopadrao = 104 ' +
                           'and e.status in (' + sStatus + ') ' +
                           'and e.data between :datai and :dataf ' +
                           'and e.situacao = ''N'' ';
    Q_Consulta.ParamByName('datai').AsDate := DataI.Date;
    Q_Consulta.ParamByName('dataf').AsDate := DataF.Date;
    C_Consulta.Open;
    ppeStatus.Text := 'Alguns...';
    dbgConsulta.TS_ReportFilter.Clear;
    dbgConsulta.TS_ReportFilter.Add('Per�odo de: ' + DataI.Text + ' a ' + DataF.Text + ' - Status: ' + cklStatus.Selecionados(True));
    dbgConsulta.TS_ReportFilter.Add('Per�odo de Venda: ' + DataVendaI.Text + ' a ' + DataVendaF.Text);
    if (sNomesFornecedores <> '') then
      dbgConsulta.TS_ReportFilter.Add('Fornecedor(es):' + sNomesFornecedores );
  end;
  dbgConsulta.ExpandirGrupos;
  dbgConsulta.GotoFirst;
end;

procedure TRptEntradasConsig.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sFornecedores := '';
  sNomesFornecedores := '';
  //
  C_Status.Close;
  C_Status.Open;
  cklStatus.UpdateItems;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := IncMonth(DMProjeto.dDataSistema, -1);
  if DataF.GetEditingText = '' then DataF.Date := IncMonth( DMProjeto.dDataSistema, 1);
  DataF.OnDateChange := DataFDateChange;
  DataI.OnDateChange := DataIDateChange;

  DataVendaI.OnDateChange := nil;
  DataVendaF.OnDateChange := nil;
  if DataVendaI.GetEditingText = '' then DataVendaI.Date := IncMonth(DMProjeto.dDataSistema, -1);
  if DataVendaF.GetEditingText = '' then DataVendaF.Date := IncMonth( DMProjeto.dDataSistema, 1);
  DataVendaF.OnDateChange := DataFDateChange;
  DataVendaI.OnDateChange := DataIDateChange;

  AtualizaConsulta;
end;

procedure TRptEntradasConsig.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradasConsig.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if (dbgConsulta.TS_SelectedColumn = 'DESCRICAO') or (dbgConsulta.TS_SelectedColumn = 'UNIDADE') or
     (dbgConsulta.TS_SelectedColumn = 'ESTOQUE') then begin
       DMProjeto.SetParametrosForm([C_ConsultaItem.Value]);
       DMProjeto.CriarForm('FrmItens',self,true);
  end else if (dbgConsulta.TS_SelectedColumn = 'QUANTIDADE') or (dbgConsulta.TS_SelectedColumn = 'PRECO') then begin
  	DMProjeto.SetParametrosForm([C_ConsultaEntrada.Value]);
    	DMProjeto.CriarForm('FrmEntradasConsignadas',self,true);
  end else begin
//  	DMProjeto.SetParametrosForm([C_ConsultaSaida.Value]);
//    DMProjeto.CriarForm('FrmInvoices',self,true);
  end;
end;

procedure TRptEntradasConsig.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var num:string;
begin
  inherited;
{  if ANode.HasChildren and (copy(AText,1,6) = 'N�mero') then begin
//    num := Trim(Copy(Atext,Pos(':',Atext)+1,Length(Atext)-Pos(':',Atext)));
//    C_Consulta.Locate('NUMERO',num,[]);
    AText := 'N�mero:' + dbgConsulta.GetFieldValue(ANode, 'NUMERO', '') + ' - Data:' + dbgConsulta.GetFieldValue(ANode,'DATA','');
  end;
 // ADone := True;}
end;

procedure TRptEntradasConsig.DataIDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradasConsig.DataFDateChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradasConsig.ppeStatusCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptEntradasConsig.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFornecedores, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sFornecedores := GetParametrosForm(0);
       sNomesFornecedores := GetParametrosForm(1);
       LimparParametrosForm;
       AtualizaConsulta;
    end;
  end;
end;

procedure TRptEntradasConsig.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if ( DataSet.FieldByName('QTDEVENDIDA').AsCurrency <= (DataSet.FieldByName('QUANTIDADE').AsCurrency
      - DataSet.FieldByName('QTDDEVOLVIDO').AsCurrency)) then
    DataSet.FieldByName('icQtdConsigVend').AsCurrency :=  DataSet.FieldByName('QTDEVENDIDA').AsCurrency
  else
     DataSet.FieldByName('icQtdConsigVend').AsCurrency := (DataSet.FieldByName('QUANTIDADE').AsCurrency
      - DataSet.FieldByName('QTDDEVOLVIDO').AsCurrency);
end;

end.
