unit Rpt_InvoicesVencendoHoje;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, TS_LastDataObject, DlgMsg, 
  dxExEdtr, dxEdLib, TS_CheckBox, teCtrls, TS_EffectsPanel, Buttons,
  TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptInvoicesVencendoHoje = class(TRptPadrao)
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
    C_ConsultaPreview: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaVENDA: TIntegerField;
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
    N2: TMenuItem;
    MostrarEndereco: TMenuItem;
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
    dbgConsultaPreview: TdxDBGridColumn;
    dbgConsultaTITULO: TdxDBGridMaskColumn;
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
    C_ConsultaTIPOPADRAO: TIntegerField;
    C_ConsultaCOMPETENCIADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    procedure ckbEnderecoChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure MostrarEnderecoClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    procedure atualizar;
  public
    { Public declarations }
  end;

var
  RptInvoicesVencendoHoje: TRptInvoicesVencendoHoje;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptInvoicesVencendoHoje.Atualizar;
begin
  with C_Consulta do begin
	   Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'where (t.status = 2 or (t.vencimento = current_date and ' +
                   't.status > 0 and t.status < 50))';
    Open;
  end;  
end;

procedure TRptInvoicesVencendoHoje.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if not MostrarEndereco.Checked then begin
	  MostrarEndereco.Checked := true;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
  end else begin
    MostrarEndereco.Checked := true;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
  end;
end;

procedure TRptInvoicesVencendoHoje.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );

  DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);  
end;

procedure TRptInvoicesVencendoHoje.dbgConsultaDblClick(Sender: TObject);
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
  		end;
    end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaID.Value]);
    	CriarForm('FrmA_Receber',self,true);
  	end;
  end;
end;

procedure TRptInvoicesVencendoHoje.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar; 
end;

procedure TRptInvoicesVencendoHoje.MostrarEnderecoClick(Sender: TObject);
begin
  inherited;
  if not MostrarEndereco.Checked then begin
    MostrarEndereco.Checked := true;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
  end else begin
    MostrarEndereco.Checked := false;
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
  end;
end;

procedure TRptInvoicesVencendoHoje.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
//  Atualizar;
end;

procedure TRptInvoicesVencendoHoje.C_ConsultaCPF_CNPJGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := MascaraCPFCNPJ( Sender.AsString );
end;

end.
