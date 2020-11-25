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
  dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt, TS_ImageEdit, TS_PopupEdit,
  CheckLst, TS_CheckListBox;

type
  TRptProfitLoss = class(TRptPadrao)
    lblPeriodo: TTS_Label;
    dtDataF: TTS_DateTimePicker;
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
    C_ConsultaSaldo2: TIBBCDField;
    C_ConsultaSaldo3: TIBBCDField;
    C_ConsultaSaldo4: TIBBCDField;
    C_ConsultaSaldo5: TIBBCDField;
    C_ConsultaSaldo6: TIBBCDField;
    C_ConsultaSaldo7: TIBBCDField;
    C_ConsultaSaldo8: TIBBCDField;
    C_ConsultaSaldo9: TIBBCDField;
    C_ConsultaSaldo10: TIBBCDField;
    C_ConsultaSaldo11: TIBBCDField;
    C_ConsultaSaldo12: TIBBCDField;
    C_ConsultaSaldo13: TIBBCDField;
    C_ConsultaSaldo14: TIBBCDField;
    C_ConsultaSaldo15: TIBBCDField;
    C_ConsultaSaldo16: TIBBCDField;
    C_ConsultaSaldo17: TIBBCDField;
    C_ConsultaSaldo18: TIBBCDField;
    C_ConsultaSaldo19: TIBBCDField;
    C_ConsultaSaldo20: TIBBCDField;
    dbgConsultaSaldo1: TdxDBGridMaskColumn;
    dbgConsultaSaldo2: TdxDBGridMaskColumn;
    dbgConsultaSaldo3: TdxDBGridMaskColumn;
    dbgConsultaSaldo4: TdxDBGridMaskColumn;
    dbgConsultaSaldo5: TdxDBGridMaskColumn;
    dbgConsultaSaldo6: TdxDBGridMaskColumn;
    dbgConsultaSaldo7: TdxDBGridMaskColumn;
    dbgConsultaSaldo8: TdxDBGridMaskColumn;
    dbgConsultaSaldo9: TdxDBGridMaskColumn;
    dbgConsultaSaldo10: TdxDBGridMaskColumn;
    dbgConsultaSaldo11: TdxDBGridMaskColumn;
    dbgConsultaSaldo12: TdxDBGridMaskColumn;
    dbgConsultaSaldo13: TdxDBGridMaskColumn;
    dbgConsultaSaldo14: TdxDBGridMaskColumn;
    dbgConsultaSaldo15: TdxDBGridMaskColumn;
    dbgConsultaSaldo16: TdxDBGridMaskColumn;
    dbgConsultaSaldo17: TdxDBGridMaskColumn;
    dbgConsultaSaldo18: TdxDBGridMaskColumn;
    dbgConsultaSaldo19: TdxDBGridMaskColumn;
    dbgConsultaSaldo20: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    cmbColunas: TTS_ImageEdit;
    C_ConsultaSaldo1: TIBBCDField;
    dbgConsultaSaldo21: TdxDBGridMaskColumn;
    C_ConsultaSaldo21: TIBBCDField;
    C_ConsultaSaldo22: TIBBCDField;
    C_ConsultaSaldo23: TIBBCDField;
    C_ConsultaSaldo24: TIBBCDField;
    C_ConsultaSaldo25: TIBBCDField;
    C_ConsultaSaldo26: TIBBCDField;
    C_ConsultaSaldo27: TIBBCDField;
    C_ConsultaSaldo28: TIBBCDField;
    C_ConsultaSaldo29: TIBBCDField;
    C_ConsultaSaldo30: TIBBCDField;
    C_ConsultaSaldo31: TIBBCDField;
    C_ConsultaSaldo32: TIBBCDField;
    C_ConsultaSaldo33: TIBBCDField;
    C_ConsultaSaldo34: TIBBCDField;
    C_ConsultaSaldo35: TIBBCDField;
    C_ConsultaSaldo36: TIBBCDField;
    C_ConsultaSaldo37: TIBBCDField;
    C_ConsultaSaldo38: TIBBCDField;
    C_ConsultaSaldo39: TIBBCDField;
    C_ConsultaSaldo40: TIBBCDField;
    C_ConsultaSaldo41: TIBBCDField;
    C_ConsultaSaldo42: TIBBCDField;
    C_ConsultaSaldo43: TIBBCDField;
    C_ConsultaSaldo44: TIBBCDField;
    C_ConsultaSaldo45: TIBBCDField;
    C_ConsultaSaldo46: TIBBCDField;
    C_ConsultaSaldo47: TIBBCDField;
    C_ConsultaSaldo48: TIBBCDField;
    C_ConsultaSaldo49: TIBBCDField;
    C_ConsultaSaldo50: TIBBCDField;
    dbgConsultaSaldo22: TdxDBGridMaskColumn;
    dbgConsultaSaldo23: TdxDBGridMaskColumn;
    dbgConsultaSaldo24: TdxDBGridMaskColumn;
    dbgConsultaSaldo25: TdxDBGridMaskColumn;
    dbgConsultaSaldo26: TdxDBGridMaskColumn;
    dbgConsultaSaldo27: TdxDBGridMaskColumn;
    dbgConsultaSaldo28: TdxDBGridMaskColumn;
    dbgConsultaSaldo29: TdxDBGridMaskColumn;
    dbgConsultaSaldo30: TdxDBGridMaskColumn;
    dbgConsultaSaldo31: TdxDBGridMaskColumn;
    dbgConsultaSaldo32: TdxDBGridMaskColumn;
    dbgConsultaSaldo33: TdxDBGridMaskColumn;
    dbgConsultaSaldo34: TdxDBGridMaskColumn;
    dbgConsultaSaldo35: TdxDBGridMaskColumn;
    dbgConsultaSaldo36: TdxDBGridMaskColumn;
    dbgConsultaSaldo37: TdxDBGridMaskColumn;
    dbgConsultaSaldo38: TdxDBGridMaskColumn;
    dbgConsultaSaldo39: TdxDBGridMaskColumn;
    dbgConsultaSaldo40: TdxDBGridMaskColumn;
    dbgConsultaSaldo41: TdxDBGridMaskColumn;
    dbgConsultaSaldo42: TdxDBGridMaskColumn;
    dbgConsultaSaldo43: TdxDBGridMaskColumn;
    dbgConsultaSaldo44: TdxDBGridMaskColumn;
    dbgConsultaSaldo45: TdxDBGridMaskColumn;
    dbgConsultaSaldo46: TdxDBGridMaskColumn;
    dbgConsultaSaldo47: TdxDBGridMaskColumn;
    dbgConsultaSaldo48: TdxDBGridMaskColumn;
    dbgConsultaSaldo49: TdxDBGridMaskColumn;
    dbgConsultaSaldo50: TdxDBGridMaskColumn;
    clbComparativo: TTS_CheckListBox;
    cmbComparativo: TTS_PopupEdit;
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
    procedure dtDataFChange(Sender: TObject);
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
    procedure cmbColunasChange(Sender: TObject);
  private
    oSaldo: TdxDBGridMaskColumn;
    xData,xDataI: TDateTime;
    nIndice: integer;
    function HierarquiaConta(nConta,nNivel: integer): string;
  public
    { Public declarations }
  end;

var
  RptProfitLoss: TRptProfitLoss;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptProfitLoss.btAtualizarClick(Sender: TObject);
var nSaldo,nNet,nGrossProfit,nTotalGeral: currency;
    xConta,i,xIndice,kIndice: integer;
    sOrdem: string;
    bExclui: boolean;
    nAnoF,nMesF,nDiaF,nAnoI,nMesI,nDiaI: word;
begin
  inherited;
  if bCarregando then
    exit;
  C_Consulta.close;
  C_Consulta.DisableControls;
  C_Consulta.open;

  while not C_Consulta.eof do begin
    nSaldo := 0;
    if (C_ConsultaSintetico.value = 'N') then
      nSaldo := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,trunc(dtDataI.date),trunc(dtDataF.date))
    else
      nSaldo := DMProjeto.SaldoContaAtualPai(C_ConsultaConta.value,trunc(dtDataI.date),trunc(dtDataF.date));

    if (nSaldo = 0)  then
      C_Consulta.delete
    else begin
      C_Consulta.edit;
      if (C_ConsultaSintetico.value = 'N') then begin
        C_ConsultaSaldo.value := nSaldo;

        // Configuração da Colunas
        xData := trunc(dtDataI.date);
        nIndice := 1;
        if (cmbColunas.text = '1') or (cmbColunas.text = 'Total') then begin
           { if clbComparativo.Checked[0] then begin // % Representativo
              if C_ConsultaSaldo.value <> 0 then begin
                TNumericField(C_Consulta.FieldByName('Saldo')).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo').ascurrency :=
                (C_Consulta.FieldByName('Saldo'+IntToStr(nIndice-1)).ascurrency * 100)/C_ConsultaSaldo.ascurrency;
              end;
              nIndice := nIndice + 1;
            end;

            if (clbComparativo.Checked[1]) and (xIndice > 1) then begin // % Comparativo
              if C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency <> 0 then begin
                TNumericField(C_Consulta.FieldByName('Saldo'+IntToStr(nIndice))).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).ascurrency :=
                ((C_Consulta.FieldByName('Saldo'+IntToStr(xIndice)).ascurrency - C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency) * 100)/C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency;
              end
              else begin
                TNumericField(C_Consulta.FieldByName('Saldo'+IntToStr(nIndice))).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).ascurrency := C_Consulta.FieldByName('Saldo'+IntToStr(xIndice)).ascurrency;
              end;
              nIndice := nIndice + 1;
            end;}
        end;
	      if (cmbColunas.Text = '2') then begin // Diário
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xData,xData);
            kIndice := xIndice;
            xIndice := nIndice;
            xData := xData + 1;
            nIndice := nIndice + 1;

            if clbComparativo.Checked[0] then begin // % Representativo
              if C_ConsultaSaldo.value <> 0 then begin
                TNumericField(C_Consulta.FieldByName('Saldo'+IntToStr(nIndice))).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).ascurrency :=
                (C_Consulta.FieldByName('Saldo'+IntToStr(nIndice-1)).ascurrency * 100)/C_ConsultaSaldo.ascurrency;
              end;
              nIndice := nIndice + 1;
            end;

            if (clbComparativo.Checked[1]) and (xIndice > 1) then begin // % Comparativo
              if C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency <> 0 then begin
                TNumericField(C_Consulta.FieldByName('Saldo'+IntToStr(nIndice))).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).ascurrency :=
                ((C_Consulta.FieldByName('Saldo'+IntToStr(xIndice)).ascurrency - C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency) * 100)/C_Consulta.FieldByName('Saldo'+IntToStr(kIndice)).ascurrency;
              end
              else begin
                TNumericField(C_Consulta.FieldByName('Saldo'+IntToStr(nIndice))).displayformat := '###,##0.0#%';
                C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).ascurrency := C_Consulta.FieldByName('Saldo'+IntToStr(xIndice)).ascurrency;
              end;
              nIndice := nIndice + 1;
            end;
          end;
        end
        else if (cmbColunas.Text = '3') then begin // Semanal
    //      while DayOfWeek(xData) <> 1 do
    //        xData := xData + 1;
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            xDataI := xData;
            if DayOfWeek(xDataI) = 1 then
              xData := xData + 1;
            while DayOfWeek(xData) <> 1 do
              xData := xData + 1;

            if xData > trunc(dtDataF.date) then
              xData := trunc(dtDataF.date);

            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xDataI,xData);
            xData := xData + 1;
            nIndice := nIndice + 1;
          end;
        end
        else if (cmbColunas.Text = '4') then begin // Quinzenal
    //      while DayOfWeek(xData) <> 1 do
    //        xData := xData + 1;
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            xDataI := xData;
            if DayOfWeek(xDataI) = 1 then
              xData := xData + 1;

            while (DayOfWeek(xData) <> 1) do
              xData := xData + 1;
            xData := xData + 1;
            while (DayOfWeek(xData) <> 1) do
              xData := xData + 1;

            if xData > trunc(dtDataF.date) then
              xData := trunc(dtDataF.date);

            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xDataI,xData);
            xData := xData + 1;
            nIndice := nIndice + 1;
          end;
        end
        else if (cmbColunas.Text = '5') then begin // Mensal
    //      while DayOfWeek(xData) <> 1 do
    //        xData := xData + 1;
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            xDataI := xData;
            xData := LastMonthDay(xDataI);

            if xData > trunc(dtDataF.date) then
              xData := trunc(dtDataF.date);
            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xDataI,xData);
            xData := xData + 1;
            nIndice := nIndice + 1;
          end;
        end
        else if (cmbColunas.Text = '6') then begin // Semestral
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            xDataI := xData;
            xData := DateAdd('SS',1,xDataI);

            if xData > trunc(dtDataF.date) then
              xData := trunc(dtDataF.date);
            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xDataI,xData);
            xData := xData + 1;
            nIndice := nIndice + 1;
          end;
        end
        else if (cmbColunas.Text = '7') then begin // Anual
    //      while DayOfWeek(xData) <> 1 do
    //        xData := xData + 1;
          while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
            xDataI := xData;
            xData := LastYearDay(xDataI);

            if xData > trunc(dtDataF.date) then
              xData := trunc(dtDataF.date);
            C_Consulta.FieldByName('Saldo'+IntToStr(nIndice)).value := DMProjeto.SaldoContaAtual(C_ConsultaConta.value,xDataI,xData);
            xData := xData + 1;
            nIndice := nIndice + 1;
          end;
        end;
      end;

      C_ConsultaDescTipo2.value := AdicionarStr(C_ConsultaTipoConta.asstring,'0',2)+'-'+C_ConsultaDescTipo.asstring;

      if (C_ConsultaTipo.value = 'R') or (C_ConsultaTipo.value = 'S') then begin
        C_ConsultaDescTipoConta.value := '1: Income/COGS';
  //      nSaldo := nSaldo * (-1);
      end
      else begin
        C_ConsultaDescTipoConta.value := '3: Expenses';
  //      nSaldo := nSaldo * (-1);
      end;

      if C_ConsultaContaPai.IsNull then
        C_ConsultaOrdemConta.value := 'x'+AdicionarStr(C_ConsultaConta.asstring,'0',10)+'-0'
      else begin
        if C_ConsultaNivel.value = 1 then
          C_ConsultaOrdemConta.value := 'x'+AdicionarStr(C_ConsultaContaPai.asstring,'0',10)+'-1'+';x'+AdicionarStr(C_ConsultaConta.asstring,'0',10)+'-0'
        else if C_ConsultaNivel.value > 1 then
          C_ConsultaOrdemConta.value := HierarquiaConta(C_ConsultaContaPai.value,C_ConsultaNivel.value)+';x'+AdicionarStr(C_ConsultaConta.asstring,'0',10)+'-0';

        if C_ConsultaNivel.value > 0 then
          C_ConsultaDescConta.value  := AdicionarStr('',' ',C_ConsultaNivel.value * 6)+C_ConsultaDescConta.value;
      end;
      C_Consulta.post;
      C_Consulta.next;
    end;
  end;
  nGrossProfit := DMProjeto.CalcularGrossProfit(trunc(dtDataI.date),trunc(dtDataF.date));
  nNet := DMProjeto.CalcularNet(trunc(dtDataI.date),trunc(dtDataF.date));

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

  xData := trunc(dtDataI.date);
  nIndice := 1;

  for i := 1 to 50 do begin
    oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(i)));
    if oSaldo <> nil then
      TdxDBGridMaskColumn(oSaldo).visible := false;
  end;

  // Configuração da Colunas
  if (cmbColunas.text = '2') then begin
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xIndice := nIndice;
      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := DateToStr(xData);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
      if clbComparativo.Checked[0] then begin // % Representativo
        oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
        if oSaldo <> nil then begin
          TdxDBGridMaskColumn(oSaldo).caption := '% Repres.';
          TdxDBGridMaskColumn(oSaldo).visible := true;
        end;
        nIndice := nIndice + 1;
      end;
      if clbComparativo.Checked[1] and (xIndice > 1) then begin // % Comparativo
        oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
        if oSaldo <> nil then begin
          TdxDBGridMaskColumn(oSaldo).caption := '% Comparativo';
          TdxDBGridMaskColumn(oSaldo).visible := true;
        end;
        nIndice := nIndice + 1;
      end;
    end;
  end
  else if (cmbColunas.Text = '3') then begin
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xDataI := xData;
      if DayOfWeek(xDataI) = 1 then
        xData := xData + 1;
      while DayOfWeek(xData) <> 1 do
        xData := xData + 1;
      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := 'Sem. '+IntToStr(nIndice)+' '+DateToStr(xDataI);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
    end;
  end
  else if (cmbColunas.Text = '4') then begin // Quinzenal
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xDataI := xData;
      if DayOfWeek(xDataI) = 1 then
        xData := xData + 1;

      while (DayOfWeek(xData) <> 1) do
        xData := xData + 1;
      xData := xData + 1;
      while (DayOfWeek(xData) <> 1) do
        xData := xData + 1;

      if xData > trunc(dtDataF.date) then
        xData := trunc(dtDataF.date);

      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := 'Quinz. '+IntToStr(nIndice)+' '+DateToStr(xDataI);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
    end;
  end
  else if (cmbColunas.Text = '5') then begin // Mensal
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xDataI := xData;
      xData := LastMonthDay(xDataI);

      if xData > trunc(dtDataF.date) then
        xData := trunc(dtDataF.date);
      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := MesExtenso(xDataI);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
    end;
  end
  else if (cmbColunas.Text = '6') then begin // Semestral
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xDataI := xData;
      xData := DateAdd('SS',1,xDataI);

      if xData > trunc(dtDataF.date) then
        xData := trunc(dtDataF.date);
      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := DateToStr(xDataI);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
    end;
  end
  else if (cmbColunas.Text = '7') then begin // Anualmente
    while (xData <= trunc(dtDataF.date)) and (nIndice <= 50) do begin
      xDataI := xData;
      xData := LastYearDay(xDataI);

      if xData > trunc(dtDataF.date) then
        xData := trunc(dtDataF.date);
      oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
      if oSaldo <> nil then begin
        TdxDBGridMaskColumn(oSaldo).caption := FormatDateTime('yyyy',xDataI);
        TdxDBGridMaskColumn(oSaldo).visible := true;
      end;
      xData := xData + 1;
      nIndice := nIndice + 1;
    end;
  end;

  // Cálculos dos Totais das contas sintéticas
  dbgConsulta.FullExpand;
  dbgConsulta.gotofirst;
  while not dbgConsulta.iseof and dbgConsulta.FocusedNode.HasChildren do
    dbgConsulta.GotoNext(false);
  while not dbgConsulta.iseof do begin
    xConta := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Conta',0);

    bExclui := false;
    if dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Sintetico','') = 'S' then begin
      nTotalGeral := dbgConsulta.TotalGeral('Saldo','ordemconta like ''%x'+AdicionarStr(IntToStr(xConta),'0',10)+'-%''');
      if nTotalGeral <> 0 then
        dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo',FormatCurr('###,##0.00',nTotalGeral));
    end
    else begin
      if not dbgConsulta.FocusedNode.HasChildren and (nTotalGeral <> 0) and (copy(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'descconta',''),1,2) = '  ') then
      {and (pos(IntToStr(xConta)+'-',dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'ordemconta','')) > 0) then}
        dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'Saldo'+IntToStr(nIndice),FormatCurr('###,##0.00',(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Saldo',0) * 100)/nTotalGeral));
    end;

    dbgConsulta.GotoNext(false);

    while not dbgConsulta.iseof and dbgConsulta.FocusedNode.HasChildren do
      dbgConsulta.GotoNext(false);
  end;

{  if clbComparativo.Checked[2] then begin
    oSaldo := TdxDBGridMaskColumn(FindComponent('dbgConsultaSaldo'+IntToStr(nIndice)));
    if oSaldo <> nil then begin
      TdxDBGridMaskColumn(oSaldo).caption := '% Categ.';
      TdxDBGridMaskColumn(oSaldo).visible := true;
    end;
  end;}
  ////////////////////////////////////////////
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lblPeriodo.Caption+': '+dtDataF.Text);
    FullExpand;
    GotoFirst;
  end;
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
var sContaPai,xContaPai,sContas,sContasOld: string;
    xConta: integer;
begin
  xConta := nConta;
  sContaPai  := IntToStr(nConta);
  xContaPai  := IntToStr(nConta);
  sContas := '';
  sContasOld := 'x'+AdicionarStr(sContaPai,'0',10)+'-'+IntToStr(nNivel);
  while xContaPai <> '' do begin
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'select contapai,nivel from contas where conta = :id';
    DMProjeto.Q_Contabil.params[0].asinteger := xConta;
    DMProjeto.Q_Contabil.open;
    xContaPai := DMProjeto.Q_Contabil.FieldByName('contapai').asstring;
    sContaPai := 'x'+AdicionarStr(DMProjeto.Q_Contabil.FieldByName('contapai').asstring,'0',10)+'-'+DMProjeto.Q_Contabil.FieldByName('nivel').asstring;
    xConta    := DMProjeto.Q_Contabil.FieldByName('contapai').asinteger;
    if xContaPai <> '' then begin
      if sContas <> '' then
        sContas := sContaPai+ ';'+sContas
      else
        sContas := sContaPai;
    end;
  end;
  sContas := sContas+';'+sContasOld;
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
    DMProjeto.SetParametrosForm([2,nConta,int(dtDataF.date),sCondicaoTipo]);
    DMProjeto.CriarForm('RptGeneralLedger', Self, false);
  end
  else begin
    DMProjeto.SetParametrosForm([nConta]);
    DMProjeto.CriarForm('FrmContas', Self, false);
  end;
end;

procedure TRptProfitLoss.dtDataFChange(Sender: TObject);
begin
  inherited;
  btAtualizarClick(self);
end;

procedure TRptProfitLoss.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  dtDataI.date := FirstMonthDay(DMProjeto.dDataSistema);
  dtDataF.date := DMProjeto.dDataSistema;
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

procedure TRptProfitLoss.cmbColunasChange(Sender: TObject);
begin
  inherited;
  if cmbColunas.text = '1' then
    cmbComparativo.visible := true
  else
    cmbComparativo.visible := false;

end;

end.
