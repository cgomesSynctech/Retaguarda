unit Rpt_InvoicesRecebidas;
                              
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxEditor, TS_ButtonEdit, TS_EditFavorecido,
  StdCtrls, TS_Label, dxDBTLCl, dxGrClms, TS_Image, dxfLabel,
  TS_MaxPanel, TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  TS_CheckBox;

type
  TRptInvoicesRecebidas = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSRECEBIDOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaTITULO: TStringField;
    C_ConsultaFALTADIAS: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaTIPOCOBRANCA: TStringField;
    C_ConsultaDATAPRORROGACAO: TDateField;
    C_ConsultaEMPRESA: TStringField;
    C_ConsultaPERCENTUALMULTA: TBCDField;
    C_ConsultaPERCENTUALMORA: TBCDField;
    C_ConsultaVALORJUROSMORA: TBCDField;
    C_ConsultaVALORMULTA: TBCDField;
    C_ConsultaDATAATRASADO: TDateField;
    C_ConsultaPARCELA: TIntegerField;
    C_ConsultaVENDEDOR: TStringField;
    C_ConsultaDATAANTECIPACAO: TDateField;
    C_ConsultaVALORDESCANTECIPADO: TBCDField;
    C_ConsultaORIGEM_ARECEBER: TIntegerField;
    C_ConsultaIDGERADOR_ARECEBER: TIntegerField;
    C_ConsultaNUMBOLETO: TStringField;
    C_ConsultaDOC_GARANTIA: TStringField;
    C_ConsultaDESCCARTEIRA: TStringField;
    C_ConsultaNUMEROCARTEIRA: TStringField;
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaTITULO: TdxDBGridMaskColumn;
    dbgConsultaFALTADIAS: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn;
    dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn;
    dbgConsultaEMPRESA: TdxDBGridMaskColumn;
    dbgConsultaDATAATRASADO: TdxDBGridDateColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn;
    dbgConsultaNUMBOLETO: TdxDBGridMaskColumn;
    dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn;
    dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn;
    dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOS: TdxDBGridMaskColumn;
    dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn;
    dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn;
    dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn;
    dbgConsultaVALORJUROSMORA: TdxDBGridMaskColumn;
    dbgConsultaVALORMULTA: TdxDBGridMaskColumn;
    dbgConsultaVALORDESCANTECIPADO: TdxDBGridMaskColumn;
    C_ConsultaDESCCAIXA: TStringField;
    dbgConsultaDESCCAIXA: TdxDBGridMaskColumn;
    C_ConsultaTIPOPADRAO: TIntegerField;
    C_ConsultaVENDA: TIntegerField;
    C_ConsultaCOMPETENCIADATASEMANA: TStringField;
    C_ConsultaVENCIMENTODATASEMANA: TStringField;
    dbgConsultaCOMPETENCIADATASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODATASEMANA: TdxDBGridColumn;
    C_ConsultaTIPOREC: TStringField;
    dbgConsultaTIPOREC: TdxDBGridColumn;
    C_ConsultaDESCPER: TBCDField;
    dbgConsultaDESCPER: TdxDBGridColumn;
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
  	procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvoicesRecebidas: TRptInvoicesRecebidas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptInvoicesRecebidas.Atualizar;
begin
  with C_Consulta do begin
    close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'where t.datapago >= :DataI and t.datapago <= :DataF ' +
                   'and t.status > 0 ' +
                   'and (t.cliente = :favorecido OR :todos = 0 )';

    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    params.parambyname('Favorecido').asInteger := edFavorecido.getID;
    params.parambyname('Todos').asInteger := edFavorecido.getID;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
  end;
end;

procedure TRptInvoicesRecebidas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptInvoicesRecebidas.DataFDateChange(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TRptInvoicesRecebidas.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptInvoicesRecebidas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
//  	Atualizar;
end;

procedure TRptInvoicesRecebidas.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ANode.HasChildren then begin
		if dbgConsulta.getFieldValue( ANode, 'Saldo',0 ) > 0 then
  		AFont.Color := clBlue
  	else
  		AFont.Color := clBlack;
  end;
end;

procedure TRptInvoicesRecebidas.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
     with DMProjeto do begin
  	SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
     end;
    end else if dbgConsulta.TS_SelectedColumn = 'TITULO' then begin
      if C_ConsultaVenda.AsInteger <> 0 then begin
			with DMProjeto do begin
       If C_ConsultaTIPOPADRAO.Value = 1 Then Begin
  	  SetParametrosForm([C_ConsultaVenda.Value]);
    	  CriarForm('FrmInvoices',self,true);
       End
       Else Begin
  	  SetParametrosForm([C_ConsultaVenda.Value]);
    	CriarForm('FrmSalesOrder',self,true);
       End;
     End;
    end;

  end else begin
    if C_ConsultaIDGerador_AReceber.AsInteger <> 0 then begin
      with DMProjeto do begin
  	SetParametrosForm([C_ConsultaIDGerador_AReceber.Value]);
    	CriarForm('FrmInvoices',self,true);
      end;
    end;
  end;
end;
 
procedure TRptInvoicesRecebidas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataF.OnDateChange := DataFDateChange;
//  Atualizar;
end;

procedure TRptInvoicesRecebidas.C_ConsultaCPF_CNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := MascaraCPFCNPJ( Sender.AsString );
end;

procedure TRptInvoicesRecebidas.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('COMPETENCIADATASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODATASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

  DataSet.FieldByName('TIPOREC').AsString :=
     iif(DataSet.FieldByName('COMPETENCIA').AsDateTime < DataSet.FieldByName('DATAPAGO').AsDateTime,
     'REC. PARCELA','VENDA PROD.');
end;

end.
