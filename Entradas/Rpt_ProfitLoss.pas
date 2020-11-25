unit Rpt_ProfitLoss;

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
  dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt;

type
  TRptProfitLoss = class(TRptPadrao)
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
    procedure dbgConsultaCustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure GridPrinterLinkCustomDrawRowFooterCell(
      Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
      AClientRect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var ATextAlignX: TdxTextAlignX;
      var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
    procedure GridPrinterLinkCustomDrawCell(Sender: TBasedxReportLink;
      ACanvas: TCanvas; ABoundsRect, AClientRect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
      var ADone: Boolean);
  private
    function HierarquiaConta(nConta,nNivel: integer): string;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptProfitLoss: TRptProfitLoss;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptProfitLoss.Atualizar;
var nSaldo,nNet,nGrossProfit,nTotalGeral: currency;
    xConta: integer;
    sOrdem: string;
    bExclui: boolean;
begin
  if bCarregando then
    exit;

  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where c.tipoconta = t.tipoconta and t.tipo in (''R'',''D'',''S'') and '+
                   '((c.saldo <> 0 and c.sintetico = ''N'') or (c.sintetico = ''S''))';
    DisableControls;
    open;
  end;

  while not C_Consulta.eof do begin
    nSaldo := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,trunc(dtDataI.date),trunc(dtDataI.date));
    C_Consulta.edit;
    C_ConsultaDescTipo2.value := AdicionarStr(C_ConsultaTipoConta.asstring,'0',2)+'-'+C_ConsultaDescTipo.asstring;

    if (C_ConsultaTipo.value = 'R') or (C_ConsultaTipo.value = 'S') then begin
      C_ConsultaDescTipoConta.value := '1: Income/COGS';
//      nSaldo := nSaldo * (-1);
    end
    else begin
      C_ConsultaDescTipoConta.value := '3: Expenses';
//      nSaldo := nSaldo * (-1);
    end;

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
  nGrossProfit := DMProjeto.CalcularGrossProfit(trunc(dtDataI.date));
  nNet := DMProjeto.CalcularNet(trunc(dtDataI.date));

  // Gross Profit
  if nGrossProfit <> 0 then begin
    C_Consulta.Append;
    C_ConsultaTipo.value := 'X';
    C_ConsultaTipoConta.value := 20;
    C_ConsultaConta.value := -8888888;
    C_ConsultaDescTipo.value := 'Gross Profit';
    C_ConsultaDescTipo2.value := '20-Gross Profit';
    C_ConsultaDescTipoConta.value := '1: Income/COGS';
    C_ConsultaDescConta.value := 'Gross Profit';
    C_ConsultaOrdemConta.value := 'ZZZZZZZZZZZZZZZZ';
    C_ConsultaSaldo.value := nGrossProfit;
    C_Consulta.Post;
  end;
  // Net Income/Loss
  if nNet <> 0 then begin
    C_Consulta.Append;
    C_ConsultaTipo.value := 'Z';
    C_ConsultaTipoConta.value := 20;
    C_ConsultaConta.value := -9999999;
    C_ConsultaDescTipo.value := 'Equity';
    C_ConsultaDescTipo2.value := '12-Equity';
    C_ConsultaDescTipoConta.value := '4: Net Income/Loss';
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

    bExclui := false;
    if dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Sintetico','') = 'S' then begin
      nTotalGeral := dbgConsulta.TotalGeral('Saldo','ordemconta like ''%'+IntToStr(xConta)+'-%''');
      if nTotalGeral <> 0 then
        dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nTotalGeral))
      else begin
        dbgConsulta.DeleteRecord;
        bExclui := true;
      end;
    end;

    if not bExclui then
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

procedure TRptProfitLoss.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptProfitLoss.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var xRect: TRect;
    xCor : TColor;
begin
  inherited;
  if ANode.HasChildren and (copy(AText,1,4) = 'Tipo') then begin
    if (copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '20') or
       (copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '12') then
      AText := ''
    else
      AText := copy(AText,11,30);
  end
  else if ANode.HasChildren and (copy(AText,1,5) = 'Grupo') then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4' then
      AText := ''
    else
      AText := copy(AText,12,30);
  end
  else if (dbgConsulta.GetFieldValue(ANode,'Sintetico','') = 'S') or
    (copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4') then begin
    AFont.style := AFont.style + [fsBold];
    if (copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4') then
      AFont.size := AFont.size + 2;
  end
  else if copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '20' then
    AText := '';

  if ANode.HasChildren and (AText = '') then begin
    xCor := ACanvas.Brush.Color;
    ACanvas.Brush.Color := clWhite;
    xRect.left := 1;
    xRect.right := 50;
    xRect.top := ARect.top;
    xRect.bottom := ARect.bottom;
    ACanvas.FillRect(xRect);
    ACanvas.Brush.Color := xCor;
  end;
end;

procedure TRptProfitLoss.dbgConsultaTS_OnGetRowFooterNodeText(
  Sender: TObject; var Texto: String; ALastNode: TdxDBGridNode;
  AColumn: TdxDBGridColumn; AGroupIndex: Integer);
begin
  inherited;
  if (AGroupIndex = 1) then begin
    if copy(dbgConsulta.GetFieldValue(ALastNode,'DescTipoConta',''),1,1) = '3' then
      Texto := 'TOTAL '+dbgConsulta.GetFieldValue(ALastNode,'DescTipoConta','');
  end
  else if (AGroupIndex = 0) then begin
    if copy(dbgConsulta.GetFieldValue(ALastNode,'DescTipo2',''),1,2) = '12' then
      Texto := ''
    else if copy(dbgConsulta.GetFieldValue(ALastNode,'DescTipo2',''),1,2) = '20' then
      Texto := dbgConsulta.GetFieldValue(ALastNode,'DescTipo','')
    else
      Texto := 'Total '+dbgConsulta.GetFieldValue(ALastNode,'DescTipo','');
  end;
end;

function TRptProfitLoss.HierarquiaConta(nConta,nNivel: integer): string;
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

procedure TRptProfitLoss.dbgConsultaCustomDrawFooterNode(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  inherited;
  if (AColumn = dbgConsultaSaldo) and (AFooterIndex = 1) then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) <> '3' then
      AText := '';
  end
  else if (AColumn = dbgConsultaSaldo) and (AFooterIndex = 0) then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4' then
      AText := '';
  end;
end;

procedure TRptProfitLoss.dbgConsultaDblClick(Sender: TObject);
var nConta: integer;
    sCondicaoTipo: string;
begin
  inherited;
  nConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);
  if lowercase(dbgConsulta.FocusedField.FieldName) = 'saldo' then begin
    sCondicaoTipo := '';
    if nConta = -9999999 then
      sCondicaoTipo := '''R'',''D'',''S'''
    else if nConta = -8888888 then
      sCondicaoTipo := '''R'',''S''';
    DMProjeto.SetParametrosForm([2,nConta,int(dtDataI.date),sCondicaoTipo]);
    DMProjeto.CriarForm('RptGeneralLedger', Self, True);
  end
  else begin
    DMProjeto.SetParametrosForm([nConta]);
    DMProjeto.CriarForm('FrmContas', Self, True);
  end;
end;

procedure TRptProfitLoss.dtDataIChange(Sender: TObject);
begin
  inherited;
  btAtualizarClick(self);
end;

procedure TRptProfitLoss.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  dtDataI.date := DMProjeto.dDataSistema;
  dbgConsultaOrdemConta.Sorted := csUp;
  bCarregando := false;
  btAtualizarClick(self);
end;

procedure TRptProfitLoss.GridPrinterLinkCustomDrawRowFooterCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  AFooterIndex: Integer; var AText: String; var AColor: TColor;
  AFont: TFont; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
begin
  if (AColumn = dbgConsultaSaldo) and (AFooterIndex = 1) then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) <> '3' then
      AText := '';
  end
  else if (AColumn = dbgConsultaSaldo) and (AFooterIndex = 0) then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4' then
      AText := '';
  end;
  inherited;
end;

procedure TRptProfitLoss.GridPrinterLinkCustomDrawCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  var AText: String; var AColor: TColor; AFont: TFont;
  var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
  var ADone: Boolean);
var xRect: TRect;
    xCor : TColor;
begin
  if ANode.HasChildren and (copy(AText,1,4) = 'Tipo') then begin
    if (copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '20') or
       (copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '12') then
      AText := ''
    else
      AText := copy(AText,11,30);
  end
  else if ANode.HasChildren and (copy(AText,1,5) = 'Grupo') then begin
    if copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4' then
      AText := ''
    else
      AText := copy(AText,12,30);
  end
  else if (dbgConsulta.GetFieldValue(ANode,'Sintetico','') = 'S') or
    (copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4') then begin
    AFont.style := AFont.style + [fsBold];
    if (copy(dbgConsulta.GetFieldValue(ANode,'DescTipoConta',''),1,1) = '4') then
      AFont.size := AFont.size + 2;
  end
  else if copy(dbgConsulta.GetFieldValue(ANode,'DescTipo2',''),1,2) = '20' then
    AText := '';

  if ANode.HasChildren and (AText = '') then begin
    xCor := ACanvas.Brush.Color;
    ACanvas.Brush.Color := clWhite;
    xRect.left := 1;
    xRect.right := 50;
    xRect.top := ABoundsRect.top;
    xRect.bottom := ABoundsRect.bottom;
    ACanvas.FillRect(xRect);
    ACanvas.Brush.Color := xCor;
  end;

  inherited;

end;

end.
