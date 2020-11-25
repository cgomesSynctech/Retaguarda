unit Rpt_ReciboColetivo;                                          

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, DBClient, Provider, Db, IBCustomDataSet,
  IBQuery, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls,
  Buttons, TS_SpeedButton, StdCtrls, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_Label, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  ComCtrls, Variants, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, BTOdeum, dxEdLib, TS_ButtonEdit, TS_EditPayroll,
  Placemnt, TS_CheckBox;

type
  TRptReciboColetivo = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVALORLIQUIDO: TBCDField;
    C_ConsultaVALORBRUTO: TBCDField;
    C_ConsultaCARGO: TStringField;
    C_ConsultaDATAADIMISSAO: TDateField;
    C_ConsultaPAYROLL: TStringField;
    C_ConsultaDATAINICIO: TDateField;
    C_ConsultaDATAFIM: TDateField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS: TdxDBGridMaskColumn;
    dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn;
    dbgConsultaVALORBRUTO: TdxDBGridMaskColumn;
    dbgConsultaCARGO: TdxDBGridMaskColumn;
    dbgConsultaDATAADIMISSAO: TdxDBGridDateColumn;
    dbgConsultaPAYROLL: TdxDBGridMaskColumn;
    dbgConsultaDATAINICIO: TdxDBGridDateColumn;
    dbgConsultaDATAFIM: TdxDBGridDateColumn;
    C_ConsultaAssinatura: TStringField;
    dbgConsultaAssinatura: TdxDBGridColumn;
    TS_Label1: TTS_Label;
    C_ConsultaNOMECLIENTE: TStringField;
    dbgConsultaNOMECLIENTE: TdxDBGridColumn;
    C_ConsultaID: TIntegerField;
    C_ConsultaQTDHORAS: TFloatField;
    dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ConsultaQTDHORAS_USER: TStringField;
    edPayroll: TTS_EditPayroll;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn15: TdxDBGridColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btImprimirVisualClick(Sender: TObject);
    procedure btImprimirImpressoraClick(Sender: TObject);
    procedure EnviarparaoEmail1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbPayRollChange(Sender: TObject);
    procedure edPayrollSelecionou(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptReciboColetivo: TRptReciboColetivo;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptReciboColetivo.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaAssinatura.Value := '________________________________________________________________________';
end;

procedure TRptReciboColetivo.btImprimirVisualClick(Sender: TObject);
begin
	with GridPrinterLink.PrinterPage.PageFooter do begin
    if CenterTitle.Text = '' then begin
			CenterTitle.Clear;
    	CenterTitle.Add('___________________________________');
    	CenterTitle.Add('Manager Signature');
    end;
  end;
  inherited;
	with GridPrinterLink.PrinterPage.PageFooter do begin
		CenterTitle.Clear;
  end;
end;

procedure TRptReciboColetivo.btImprimirImpressoraClick(Sender: TObject);
begin
	with GridPrinterLink.PrinterPage.PageFooter do begin
    if CenterTitle.Text = '' then begin
			CenterTitle.Clear;
    	CenterTitle.Add('___________________________________');
    	CenterTitle.Add('Manager Signature');
    end;
  end;
  inherited;
	with GridPrinterLink.PrinterPage.PageFooter do begin
		CenterTitle.Clear;
  end;
end;

procedure TRptReciboColetivo.EnviarparaoEmail1Click(Sender: TObject);
begin
  inherited;
	with GridPrinterLink.PrinterPage.PageFooter do begin
    if CenterTitle.Text = '' then begin
			CenterTitle.Clear;
    	CenterTitle.Add('___________________________________');
    	CenterTitle.Add('Manager Signature');
    end;
  end;
  inherited;
	with GridPrinterLink.PrinterPage.PageFooter do begin
		CenterTitle.Clear;
  end;
end;

procedure TRptReciboColetivo.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgConsultaQtdHoras_User.Visible := false
  else
  	dbgConsultaQtdHoras.Visible := false;

	if DMProjeto.ExisteParametrosForm then
		edPayRoll.ID := DMProjeto.getParametrosForm(1);

  Atualizar;
end;

procedure TRptReciboColetivo.Atualizar;
begin
{commandtext := 'Select d.id, f.nome, rd.numcheque, pf.qtdhoras, pf.valorliquido, '+
    							 'pf.valorbruto, c.Descricao as Cargo, f.dataadimissao, '+
                   'p.descricao as Payroll, p.datainicio, p.datafim, '+
                   'fp.nome as NomeCliente, pf.qtdhoras_user '+
		  							 'From DuplicatasAPagar d '+
                   'inner join RetiradasDuplicatas rrd on d.id = rrd.duplicata '+
         					 'inner join Retiradas r on rrd.retirada = r.retirada '+
         					 'inner join RetiradasDoc rd on r.retirada = rd.retirada '+
         					 'inner join Payrollsfunc pf on d.payrollfunc = pf.payrollfunc '+
         					 'inner join Payrolls p on pf.payroll = p.payroll '+
                   'left join Favorecidos f on rd.favorecidodoc = f.favorecido '+
         					 'left join Favorecidos fp on p.favorecido = fp.favorecido '+
                   'left join Cargos c on f.cargo = c.cargo ';}
	with C_Consulta do begin
		 close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ';

   //if edPayRoll.ID <> 0 then
		CommandText := CommandText + 'where p.payroll = '+IntToStr(edPayRoll.ID);

   Open;
  end;
  with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(edPayRoll.Text);
  end;
end;

procedure TRptReciboColetivo.cmbPayRollChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptReciboColetivo.edPayrollSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptReciboColetivo.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
