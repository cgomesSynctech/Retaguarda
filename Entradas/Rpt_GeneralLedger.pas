unit Rpt_GeneralLedger;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  dxDBTLCl, dxGrClms, TS_Label, dxEditor, dxExEdtr,
  dxEdLib, TS_DateTimePicker, DBTables, TS_RadioGroup, TS_ComboBox,
  FormsComponent, dxfLabel, TS_MaxPanel, teCtrls, TS_EffectsPanel, Buttons,
  TS_SpeedButton, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, BTOdeum, Placemnt;

type
  TRptGeneralLedger = class(TRptPadrao)
    C_ConsultaLANCAMENTO: TIntegerField;
    C_ConsultaCODIGOREDUZIDO: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaORIGEM: TIntegerField;
    C_ConsultaDESCORIGEM: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaSALDO: TBCDField;
    dbgConsultaLANCAMENTO: TdxDBGridMaskColumn;
    dbgConsultaCODIGOREDUZIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaIDGERADOR: TdxDBGridMaskColumn;
    dbgConsultaORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDESCORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaNumeroDoc: TdxDBGridColumn;
    dbgConsultaNome: TdxDBGridColumn;
    dtDataI: TTS_DateTimePicker;
    lblPeriodo: TTS_Label;
    dtDataF: TTS_DateTimePicker;
    lblA: TTS_Label;
    C_ConsultaCONTA: TIntegerField;
    Q_Aux: TIBQuery;
    C_ConsultaContaContraPartida: TStringField;
    dbgConsultaContaContraPartida: TdxDBGridColumn;
    C_ConsultaLANCAMENTOITEM: TIntegerField;
    dbgConsultaLancamentoItem: TdxDBGridColumn;
    dbgConsultaCONTA: TdxDBGridColumn;
    lblAgrupar: TTS_Label;
    cmbAgrupar: TTS_ComboBox;
    C_ConsultaSaldoAnterior: TIBBCDField;
    dbgConsultaSaldoAnterior: TdxDBGridColumn;
    C_ConsultaTIPO: TStringField;
    dbgConsultaTipo: TdxDBGridColumn;
    C_ConsultaFORMNAME: TStringField;
    dbgConsultaFormName: TdxDBGridColumn;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    dbgConsultaFavorecido: TdxDBGridColumn;
    dbgConsultaColumn22: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaEndDragGroupColumn(Sender: TObject;
      Column: TdxDBTreeListColumn; NewGroupIndex: Integer;
      var Allow: Boolean);
    procedure cmbAgruparChange(Sender: TObject);
    procedure dbgConsultaGetSummaryTopText(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
      GroupKeyValue: Variant; FieldName: String; var AText: String);
    procedure dbgConsultaTS_OnColumnSorted(Sender: TObject;
      AColumn: TdxDBGridColumn; ASorted: TdxTreeListColumnSort);
    procedure btSumarizacaoCalculoClick(Sender: TObject);
    procedure dbgConsultaCustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dtDataIDateChange(Sender: TObject);
    procedure dtDataFDateChange(Sender: TObject);
    procedure GridPrinterLinkCustomDrawRowFooterCell(
      Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
      AClientRect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var ATextAlignX: TdxTextAlignX;
      var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
  private
    Tipo,Conta: integer;
    bProcessandoSaldo: boolean;
    dData: TDateTime;
    sWhere, sCondicaoTipo: string;
    procedure Ordenacao;
    procedure ProcessaSaldo;
    procedure Atualizar;
  public
  end;

var
  RptGeneralLedger: TRptGeneralLedger;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptGeneralLedger.Atualizar;
var nConta: integer;
    nSaldoAnterior: currency;
begin
  if bCarregando then
    exit;
  try
    dbgConsulta.ShowRowFooter := false;
    dbgConsulta.datasource := nil;
    with C_Consulta do begin
      DisableControls;
      close;
      FetchParams;
      CommandText := 'Select ' + getCampos + ' ' +
                     'From ' + getTabelas + ' ' + sWhere;
                                          
      if Tipo <> 3 then begin
        Params[0].asDateTime := trunc(dtDataI.date);
        Params[1].asDateTime := trunc(dtDataF.date);
      end;
      Open;
    end;

    nConta := C_ConsultaConta.value;
    nSaldoAnterior := 0;
    if (Tipo <> 3) {and (pos(C_ConsultaTipo.value,'APQ') > 0)} then
      nSaldoAnterior := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,0,trunc(dtDataI.date)-1);
    while not C_Consulta.eof do begin
      C_Consulta.edit;

      if (Tipo <> 3) {and (pos(C_ConsultaTipo.value,'APQ') > 0)} and (nConta <> C_ConsultaConta.value) then
        nSaldoAnterior := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,0,trunc(dtDataI.date)-1);
      C_ConsultaSaldoAnterior.value := nSaldoAnterior;
      if DMProjeto.bCodigoContab then begin
        if C_ConsultaCodigoReduzido.value <> '' then
          C_ConsultaDescConta.value := C_ConsultaCodigoReduzido.value + ' - '+C_ConsultaDescConta.value;
      end;

      C_ConsultaContaContraPartida.value := DMProjeto.GetValores(C_ConsultaLancamento.value,C_ConsultaValor.value);

      C_Consulta.next;
    end;
  finally
    C_Consulta.EnableControls;
    dbgConsulta.datasource := C_ConsultaDS;
    cmbAgruparChange(self);
  end;
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lblPeriodo.Caption+' '+dtDataI.Text+' '+lblA.caption+' '+dtDataF.Text);
    TS_ReportFilter.Add(lblAgrupar.Caption+' '+cmbAgrupar.Text);
    FullExpand;
    GotoFirst;
  	ShowRowFooter := true;
  end;
end;

procedure TRptGeneralLedger.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptGeneralLedger.dbgConsultaEndDragGroupColumn(Sender: TObject;
  Column: TdxDBTreeListColumn; NewGroupIndex: Integer; var Allow: Boolean);
begin
  inherited;
  Allow := false;
end;

procedure TRptGeneralLedger.Ordenacao;
begin
  dbgConsulta.BeginSorting;
  dbgConsultaData.Sorted := csUp;
  dbgConsultaLancamento.Sorted := csUp;
  dbgConsultaLancamentoItem.Sorted := csUp;
  dbgConsulta.EndSorting;
end;

procedure TRptGeneralLedger.ProcessaSaldo;
var nSaldo: currency;
begin
  if not C_Consulta.Active or (C_Consulta.recordcount < 1) then
    exit;

  if cmbAgrupar.text = 'Conta' then begin
    dbgConsulta.ShowRowFooter := false;
    dbgConsulta.FullExpand;
    dbgConsulta.gotofirst;
    while dbgConsulta.FocusedNode.HasChildren and not dbgConsulta.iseof do
      dbgConsulta.GotoNext(false);
    nSaldo := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'SaldoAnterior',0);
    while not dbgConsulta.iseof do begin
      nSaldo := nSaldo + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Valor',0);

      dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));

      dbgConsulta.GotoNext(false);

      while dbgConsulta.FocusedNode.HasChildren and not dbgConsulta.iseof do begin
        dbgConsulta.GotoNext(false);
        if not dbgConsulta.FocusedNode.HasChildren then
          nSaldo := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'SaldoAnterior',0);
      end;

      if dbgConsulta.iseof then begin
        nSaldo := nSaldo + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Valor',0);
        dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));
      end;
    end;
    dbgConsulta.gotofirst;
    bProcessandoSaldo := false;
    dbgConsulta.ShowRowFooter := true;
  end
  else begin
    bProcessandoSaldo := true;
    dbgConsulta.ShowRowFooter := false;
    dbgConsulta.FullExpand;
    dbgConsulta.gotofirst;
    while dbgConsulta.FocusedNode.HasChildren and not dbgConsulta.iseof do
      dbgConsulta.GotoNext(false);
    nSaldo := 0;
    while not dbgConsulta.iseof do begin
      nSaldo := nSaldo + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Valor',0);

      dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));
      dbgConsulta.GotoNext(false);

      while dbgConsulta.FocusedNode.HasChildren and not dbgConsulta.iseof do
        dbgConsulta.GotoNext(false);

      if dbgConsulta.iseof then begin
        nSaldo := nSaldo + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Valor',0);
        dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));
      end;
    end;
    dbgConsulta.gotofirst;
    bProcessandoSaldo := false;
    dbgConsulta.ShowRowFooter := true;
  end;
end;

procedure TRptGeneralLedger.cmbAgruparChange(Sender: TObject);
var nSaldo: currency;
begin
  inherited;
  if not C_Consulta.Active or (C_Consulta.recordcount < 1) then
    exit;
  if cmbAgrupar.ItemIndex = 1 then begin
    dbgConsultaDescConta.GroupIndex := -1;
    dbgConsultaData.GroupIndex := 0;

    Ordenacao;

    ProcessaSaldo;
  end
  else if cmbAgrupar.ItemIndex = 2 then begin
    dbgConsultaDescConta.GroupIndex := -1;
    dbgConsultaData.GroupIndex := -1;

    ProcessaSaldo;
  end
  else begin
    bProcessandoSaldo := true;
    dbgConsultaData.GroupIndex := -1;
    dbgConsultaDescConta.GroupIndex := 0;

    Ordenacao;

    ProcessaSaldo;
  end
end;

procedure TRptGeneralLedger.dbgConsultaGetSummaryTopText(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
  GroupKeyValue: Variant; FieldName: String; var AText: String);
begin
  inherited;
  if (Tipo <> 3) {and (pos(dbgConsulta.GetFirstChildValue(ANode,'Tipo'),'APQ') > 0)} and
    (lowercase(cmbAgrupar.text) = 'conta') and (lowercase(FieldName) = 'saldo') then
    AText := FormatCurr('###,##0.00',dbgConsulta.GetFirstChildValue(ANode,'SaldoAnterior'));
end;

procedure TRptGeneralLedger.dbgConsultaTS_OnColumnSorted(Sender: TObject;
  AColumn: TdxDBGridColumn; ASorted: TdxTreeListColumnSort);
begin
  inherited;
  ProcessaSaldo;
end;

procedure TRptGeneralLedger.btSumarizacaoCalculoClick(Sender: TObject);
begin
  inherited;
  ProcessaSaldo;
end;

procedure TRptGeneralLedger.dbgConsultaCustomDrawFooterNode(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  inherited;
  if (AColumn = dbgConsultaSaldo) and not bProcessandoSaldo then
    AText := FormatCurr('###,##0.00',StrToFloat(dbgConsulta.GetFieldValue(ANode,'Saldo',0,true)));
end;

procedure TRptGeneralLedger.dbgConsultaDblClick(Sender: TObject);
var sForm: string;
    nID,nFavorecido: integer;
begin
  inherited;
  if lowercase(dbgConsulta.FocusedField.FieldName) = 'nome' then begin
    nFavorecido := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Favorecido',0);
    DMProjeto.SetParametrosForm([nFavorecido]);
    sForm := DMProjeto.FormFav(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'tipofavorecido',0));
    DMProjeto.CriarForm(sForm, Self, True);
  end
  else begin
    nID   := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'IDGerador',0);
    sForm := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FormName','');
    if (nID <> 0) and (sForm <> '') then begin
      DMProjeto.SetParametrosForm([nID]);
      DMProjeto.CriarForm(sForm, self, true);
    end
    else
      DlgMsg.ShowMsg(3120);
  end;
end;

procedure TRptGeneralLedger.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bCarregando := true;
  sWhere := '';
  Tipo  := DMProjeto.GetParametrosForm(0);
  Conta := DMProjeto.GetParametrosForm(1);
  dData := DMProjeto.GetParametrosForm(2);
  sCondicaoTipo := '';
  if DMProjeto.QtdParametrosForm > 3 then
    sCondicaoTipo := DMProjeto.GetParametrosForm(3);

  dtDataI.visible := true;
  dtDataF.visible := true;
  lblA.visible := true;
  lblPeriodo.visible := true;
  lblAgrupar.visible := true;
  cmbAgrupar.visible := true;
  dtDataF.left := 154;

  dtDataI.date := DMProjeto.dDataSistema;
  dtDataF.date := DMProjeto.dDataSistema;
  if Tipo = 1 then begin
    FormsComponent.caption := 'General Ledger';
    dData := dtDataF.date;
//    dtDataI.visible := false;
//    dtDataF.left := dtDataI.left;
//    lblA.visible := false;
//    lblPeriodo.caption := 'Em:';
//    Q_Consulta.SQL.Add('where l.data >= :dDataI and l.data <= :dDataF');
//    Q_Consulta.SQL.Add('order by c.descricao, l.data, l.lancamento, li.lancamentoitem');
    sWhere := 'where l.data >= :dDataI and l.data <= :dDataF';
    Ajuda1.HelpContext := 459;
  end
  else if Tipo = 2 then begin
    FormsComponent.caption := 'Transações no Período';
//    Q_Consulta.SQL.Add('where l.data >= :dDataI and l.data <= :dDataF');
    sWhere := 'where l.data >= :dDataI and l.data <= :dDataF';
    if Conta > 0 then begin
//      Q_Consulta.SQL.Add('and (c.conta = '+IntToStr(Conta)+' or c.contapai = '+IntToStr(Conta)+') ')
      sWhere := sWhere + 'and (c.conta = '+IntToStr(Conta)+' or c.contapai = '+IntToStr(Conta)+') ';
    end
    else if sCondicaoTipo <> '' then
        sWhere := 'and t.tipo in ('+sCondicaoTipo+') '; //Q_Consulta.SQL.Add('and t.tipo in ('+sCondicaoTipo+') ');
//    Q_Consulta.SQL.Add('order by c.descricao, l.data, l.lancamento, li.lancamentoitem');
    Ajuda1.HelpContext := 540;
  end
  else if Tipo = 3 then begin
    FormsComponent.caption := 'Todas Transações da Conta';
    dtDataI.visible := false;
    dtDataF.visible := false;
    lblA.visible := false;
    lblPeriodo.visible := false;
//    cmbAgrupar.text := 'Nenhum';
    lblAgrupar.visible := false;
    cmbAgrupar.visible := false;
    //Q_Consulta.SQL.Add('where (c.conta = '+IntToStr(Conta)+' or c.contapai = '+IntToStr(Conta)+') ');
    sWhere := 'where (c.conta = '+IntToStr(Conta)+' or c.contapai = '+IntToStr(Conta)+') ';
//    Q_Consulta.SQL.Add('order by c.descricao, l.data, l.lancamento, li.valor');
    Ajuda1.HelpContext := 648;
  end;

  btAgrupamentoConfigurar.Enabled := false;
  dtDataI.date := FirstMonthDay(dtDataF.date);
//  dtDataF.date := DMProjeto.dDataSistema;

  if dData > 0 then begin
    dtDataI.date := FirstMonthDay(dData);
    dtDataF.date := dData;
  end;
  bCarregando := false;
  Atualizar;
end;

procedure TRptGeneralLedger.dtDataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptGeneralLedger.dtDataFDateChange(Sender: TObject);
begin
  inherited;
  if Tipo = 1 then
    dtDataI.date := FirstMonthDay(dtDataF.Date)
  else
    Atualizar;
end;

procedure TRptGeneralLedger.GridPrinterLinkCustomDrawRowFooterCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  AFooterIndex: Integer; var AText: String; var AColor: TColor;
  AFont: TFont; var ATextAlignX: TdxTextAlignX;
  var ATextAlignY: TdxTextAlignY; var ADone: Boolean);
begin
  inherited;
  if (AColumn = dbgConsultaSaldo) and not bProcessandoSaldo then begin
    ATextAlignX := taRight;
    AText := FormatCurr('#,###,##0.00',StrToFloat(dbgConsulta.GetFieldValue(ANode,'Saldo',0,true)));
  end;
end;

end.
