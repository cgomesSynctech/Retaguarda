unit Rpt_Promocoes;
                                          
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEdLib,
  TS_ImageEdit, dxEditor, TS_DateTimePicker, TS_CheckBox;

type
  TRptPromocoes = class(TRptPadrao)
    C_ConsultaPROMOCAOITEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCITEM: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaPRECOPROMOCAO: TBCDField;
    C_ConsultaPRECOTABELA: TBCDField;
    C_ConsultaDATA_INICIAL: TDateField;
    C_ConsultaDATA_FINAL: TDateField;
    C_ConsultaFECHADA: TStringField;
    C_ConsultaDESCTABELAPRECO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    dbgConsultaDESCITEM: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaDATA_INICIAL: TdxDBGridDateColumn;
    dbgConsultaDATA_FINAL: TdxDBGridDateColumn;
    dbgConsultaDESCTABELAPRECO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaFECHADA: TdxDBGridCheckColumn;
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    cmbSituacao: TTS_ImageEdit;
    TS_Label3: TTS_Label;
    dbgConsultaPRECOPROMOCAO: TdxDBGridMaskColumn;
    dbgConsultaPRECOTABELA: TdxDBGridMaskColumn;
    C_ConsultaPROMOCAO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaColumn11: TdxDBGridColumn;
    dbgConsultaColumn12: TdxDBGridColumn;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaColumn13: TdxDBGridColumn;
    dbgConsultaColumn14: TdxDBGridColumn;
    DataF: TTS_DateTimePicker;
    lbA: TTS_Label;
    dbgConsultaColumn15: TdxDBGridGraphicColumn;
    Image1: TImage;
    C_ConsultaFOTO: TStringField;
    dbgConsultaColumn16: TdxDBGridColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure cmbSituacaoChange(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dbgConsultaColumn15CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dbgConsultaShowColumn(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure dbgConsultaHideColumn(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure GridPrinterLinkCustomDrawCell(Sender: TBasedxReportLink;
      ACanvas: TCanvas; ABoundsRect, AClientRect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptPromocoes: TRptPromocoes;

implementation

uses DM_Projeto, funcoes, jpeg;

{$R *.dfm}

{ TRptPromocoes }

procedure TRptPromocoes.Atualizar;
begin
	with C_Consulta do begin
  	Close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where ';
    if (DataI.Date > 0) and (DataF.Date > 0) then begin
    	CommandText := CommandText + 'p.data_final >= :datai and p.data_final <= :dataf ';
      Params.ParamByName('DataI').AsDateTime := DataI.Date;
      Params.ParamByName('DataF').AsDateTime := DataF.Date;
    end else
      CommandText := CommandText + 'p.data_inicial <= current_date ';
   	CommandText := CommandText + ' and p.fechada = '+QuotedStr(cmbSituacao.Text);
  	Open;
  end;
  with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Situação: '+cmbSituacao.Text);
   	if (DataI.Text <> '') and (DataF.Text <> '') then
   		TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
  end;
end;

procedure TRptPromocoes.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  cmbSituacao.Text := 'N';
	Atualizar;
end;

procedure TRptPromocoes.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPromocoes.cmbSituacaoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPromocoes.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPromocoes.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
  	if TS_SelectedColumn = 'DESCITEM' then begin
      DMProjeto.SetParametrosForm([C_ConsultaItem.AsInteger]);
    	DMProjeto.CriarForm('FrmItens',self,true);
    end else begin
      DMProjeto.SetParametrosForm([C_ConsultaPromocao.AsInteger]);
    	DMProjeto.CriarForm('FrmPromocoes',self,true);
    end;
  end;
end;

procedure TRptPromocoes.dbgConsultaColumn15CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
		Imagem : TBitMap;
    Jpg : TJpegImage;
    sArq: string;
begin
  inherited;
    if not AColumn.Visible then
    	Exit;
    InflateRect(ARect, 1, 1);
    ACanvas.Brush.Color := clWhite;
    ACanvas.FillRect(ARect);
    sArq := DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto','');
    if sArq <> '' then begin
      if fileexists(sArq) then begin
        if uppercase(ExtractFileExt(sArq)) = '.JPG' then begin
    			Jpg := TJpegImage.Create;
      		Jpg.LoadFromFile(DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto',''));
    			ACanvas.StretchDraw(Rect(ARect.Left, ARect.Top, ARect.Left + 128, ARect.Top + 96), Jpg);
      		Jpg.Free;
        end else begin
    			Imagem := TBitMap.Create;
      		Imagem.LoadFromFile(DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto',''));
    			ACanvas.StretchDraw(Rect(ARect.Left, ARect.Top, ARect.Left + 128, ARect.Top + 96), Imagem);
      		Imagem.Free;
        end;
      end;
  	end;
    ADone := True;
end;

procedure TRptPromocoes.dbgConsultaShowColumn(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
	if Column.Name = 'dbgConsultaColumn15' then
  	dbgConsulta.DefaultRowHeight := 96;
end;

procedure TRptPromocoes.dbgConsultaHideColumn(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
	if Column.Name = 'dbgConsultaColumn15' then
  	dbgConsulta.DefaultRowHeight := 16;
end;

procedure TRptPromocoes.GridPrinterLinkCustomDrawCell(
  Sender: TBasedxReportLink; ACanvas: TCanvas; ABoundsRect,
  AClientRect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  var AText: String; var AColor: TColor; AFont: TFont;
  var ATextAlignX: TdxTextAlignX; var ATextAlignY: TdxTextAlignY;
  var ADone: Boolean);
var
		Imagem : TBitMap;
    Jpg : TJpegImage;
    sArq: string;
begin
  inherited;
  if AColumn.Name = 'dbgConsultaColumn15' then begin
    InflateRect(AClientRect, 1, 1);
    ACanvas.Brush.Color := clWhite;
    ACanvas.FillRect(AClientRect);
    sArq := DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto','');
    if sArq <> '' then begin
      if fileexists(sArq) then begin
        if uppercase(ExtractFileExt(sArq)) = '.JPG' then begin
    			Jpg := TJpegImage.Create;
      		Jpg.LoadFromFile(DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto',''));
    			ACanvas.StretchDraw(Rect(AClientRect.Left, AClientRect.Top, AClientRect.Left + iif(AClientRect.Left>10000,12800,1280), AClientRect.Top + iif(AClientRect.Left>1000,9600,960)), Jpg);
      		Jpg.Free;
        end else begin
    			Imagem := TBitMap.Create;
      		Imagem.LoadFromFile(DMProjeto.ImgPath+dbgConsulta.getFieldValue(ANode,'Foto',''));
    			ACanvas.StretchDraw(Rect(AClientRect.Left, AClientRect.Top, AClientRect.Left + iif(AClientRect.Left>10000,12800,1280), AClientRect.Top + iif(AClientRect.Left>1000,9600,960)), Imagem);
      		Imagem.Free;
        end;
      end;
  	end;
    ADone := True;
  end;
end;

end.
