unit Rpt_BalanceSheet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker,
  StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptBalanceSheet = class(TRptPadrao)
    lblPeriodo: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    C_ConsultaCODIGOREDUZIDO: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaDESCTIPO: TStringField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaCONTA: TIntegerField;
    C_ConsultaTIPO: TStringField;
    C_ConsultaCORRENTE: TStringField;
    C_ConsultaDescTipoConta: TStringField;
    dbgConsultaCODIGOREDUZIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaDESCTIPO: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaCONTA: TdxDBGridMaskColumn;
    dbgConsultaTIPO: TdxDBGridMaskColumn;
    dbgConsultaCORRENTE: TdxDBGridMaskColumn;
    dbgConsultaDescTipoConta: TdxDBGridColumn;
    C_ConsultaTIPOCONTA: TIntegerField;
    dbgConsultaTIPOCONTA: TdxDBGridColumn;
    C_ConsultaDescTipo2: TStringField;
    dbgConsultaDescTipo2: TdxDBGridColumn;
    C_ConsultaOrdemConta: TStringField;
    dbgConsultaOrdemConta: TdxDBGridColumn;
    C_ConsultaCONTAPAI: TIntegerField;
    C_ConsultaNIVEL: TIntegerField;
    dbgConsultaSintetico: TdxDBGridColumn;
    C_ConsultaSINTETICO: TStringField;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaTS_OnGetRowFooterNodeText(Sender: TObject;
      var Texto: String; ALastNode: TdxDBGridNode;
      AColumn: TdxDBGridColumn; AGroupIndex: Integer);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    sCondicaoTipo: string;
    function HierarquiaConta(nConta,nNivel: integer): string;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptBalanceSheet: TRptBalanceSheet;

implementation
uses DM_Projeto, funcoes, Rpt_GeneralLedger;

{$R *.DFM}

procedure TRptBalanceSheet.Atualizar;
var nSaldo,nNet: currency;
    xConta: integer;
//    sOrdem: string;
begin
  if bCarregando then
    exit;
  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos  + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where t.tipo in (''A'',''P'',''Q'') and c.saldo <> 0 ';
    DisableControls;
    open;
  end;

  while not C_Consulta.eof do begin
    nSaldo := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,0,trunc(dtDataI.date));
    C_Consulta.edit;
    C_ConsultaDescTipo2.value := AdicionarStr(C_ConsultaTipoConta.asstring,'0',2)+'-'+C_ConsultaDescTipo.asstring;

    if C_ConsultaTipo.value = 'A' then begin
      C_ConsultaDescTipoConta.value := 'ASSETS';
      nSaldo := nSaldo * (-1);
    end
    else
      C_ConsultaDescTipoConta.value := 'LIABILITIES & EQUITY';

    C_ConsultaSaldo.value := nSaldo;

    if C_ConsultaContaPai.IsNull then
      C_ConsultaOrdemConta.value := C_ConsultaConta.asstring+'-0'
    else begin
      if C_ConsultaNivel.value = 1 then
        C_ConsultaOrdemConta.value := C_ConsultaContaPai.asstring+'-1'
      else if C_ConsultaNivel.value > 1 then
        C_ConsultaOrdemConta.value := HierarquiaConta(C_ConsultaContaPai.value,C_ConsultaNivel.value);

      if C_ConsultaNivel.value > 0 then
        C_ConsultaDescConta.value  := AdicionarStr('',' ',C_ConsultaNivel.value * 6)+C_ConsultaDescConta.value;
    end;
    C_Consulta.post;

    C_Consulta.next;
  end;
  nNet := DMProjeto.CalcularNet(0,trunc(dtDataI.date));
  if nNet <> 0 then begin
    C_Consulta.Append;
    C_ConsultaTipo.value := 'Q';
    C_ConsultaTipoConta.value := 12;
    C_ConsultaConta.value := -9999999;
    C_ConsultaDescTipo.value := 'Equity';
    C_ConsultaDescTipo2.value := '12-Equity';
    C_ConsultaDescTipoConta.value := 'LIABILITIES & EQUITY';
    if nNet > 0 then
      C_ConsultaDescConta.value := 'Net Income'
    else
      C_ConsultaDescConta.value := 'Net Loss';
    C_ConsultaOrdemConta.value := 'ZZZZZZZZZZZZZZZZ';
    C_ConsultaSaldo.value := nNet;
    C_Consulta.Post;
  end;
  C_Consulta.first;
  C_Consulta.EnableControls;

  // Cálculos dos Totais das contas sintéticas
  dbgConsulta.FullExpand;
  dbgConsulta.gotofirst;
  while not dbgConsulta.iseof and dbgConsulta.FocusedNode.HasChildren do
    dbgConsulta.GotoNext(false);
  while not dbgConsulta.iseof do begin
    xConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
//    sOrdem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'OrdemConta','');

{    bFilhos := false;
    dbgConsulta.GotoNext(false);
    if not dbgConsulta.FocusedNode.HasChildren and (IntToStr(xConta)+'-' = copy(sOrdem,1,pos('-',sOrdem))) and (sOrdem <> dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'OrdemConta','')) then
      bFilhos := true;
    dbgConsulta.GotoPrev(false);}

    if dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Sintetico','') = 'S' then
      dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',
                  dbgConsulta.TotalGeral('Saldo','ordemconta like ''%'+IntToStr(xConta)+'-%''')));

    dbgConsulta.GotoNext(false);

    while not dbgConsulta.iseof and dbgConsulta.FocusedNode.HasChildren do
      dbgConsulta.GotoNext(false);
  end;
  ////////////////////////////////////////////
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lblPeriodo.Caption+': '+dtDataI.Text);
    FullExpand;
    GotoFirst;
	end;
end;


procedure TRptBalanceSheet.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptBalanceSheet.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.HasChildren and (copy(AText,1,4) = 'Tipo') then
    AText := 'Tipo  :  '+copy(AText,11,30)
  else if dbgConsulta.GetFieldValue(ANode,'Sintetico','') = 'S' then
    AFont.style := AFont.style + [fsBold]; 
end;

procedure TRptBalanceSheet.dbgConsultaTS_OnGetRowFooterNodeText(
  Sender: TObject; var Texto: String; ALastNode: TdxDBGridNode;
  AColumn: TdxDBGridColumn; AGroupIndex: Integer);
begin
  inherited;
  if (AGroupIndex = 1) then
    Texto := 'TOTAL '+dbgConsulta.GetFieldValue(ALastNode,'DescTipoConta','')
  else if (AGroupIndex = 0) then
    Texto := 'Total '+dbgConsulta.GetFieldValue(ALastNode,'DescTipo','');
end;

function TRptBalanceSheet.HierarquiaConta(nConta,nNivel: integer): string;
var sContaPai,xContaPai,sContas: string;
    xConta: integer;
begin
  xConta := nConta;
  sContaPai := IntToStr(nConta);
  xContaPai := IntToStr(nConta);
  sContas := sContaPai+'-'+IntToStr(nNivel);
  while xContaPai <> '' do begin
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'select contapai,nivel from contas where conta = :id';
    DMProjeto.Q_Contabil.params[0].asinteger := xConta;
    DMProjeto.Q_Contabil.open;
    xContaPai := DMProjeto.Q_Contabil.FieldByName('contapai').asstring;
    sContaPai := DMProjeto.Q_Contabil.FieldByName('contapai').asstring+'-'+DMProjeto.Q_Contabil.FieldByName('nivel').asstring;
    xConta    := DMProjeto.Q_Contabil.FieldByName('contapai').asinteger;
    if xContaPai <> '' then
      sContas := sContaPai+ ';'+sContas;
  end;
  result := sContas;
end;

procedure TRptBalanceSheet.dbgConsultaDblClick(Sender: TObject);
var nConta: integer;
begin
  inherited;
  nConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
  if (lowercase(dbgConsulta.FocusedField.FieldName) = 'saldo') or (nConta = -9999999) then begin
    sCondicaoTipo := '';
    if nConta = -9999999 then
      sCondicaoTipo := '''A'',''P'',''Q''';
    DMProjeto.SetParametrosForm([2,nConta,int(dtDataI.date),sCondicaoTipo]);
    DMProjeto.CriarForm('RptGeneralLedger', Self, false);
  end
  else begin
    DMProjeto.SetParametrosForm([nConta]);
    DMProjeto.CriarForm('FrmContas', Self, false);
  end;

end;

procedure TRptBalanceSheet.dtDataIChange(Sender: TObject);
begin
  inherited;
  if not bCarregando then
    Atualizar;
end;

procedure TRptBalanceSheet.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  dtDataI.date := DMProjeto.dDataSistema;
  dbgConsultaOrdemConta.Sorted := csUp;
  bCarregando := false;
  Atualizar;
end;

end.
