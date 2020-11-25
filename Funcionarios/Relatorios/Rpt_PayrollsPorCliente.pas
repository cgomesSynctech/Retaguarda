unit Rpt_PayrollsPorCliente;
                                                      
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, DB,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent,
  DBClient, Provider, IBCustomDataSet, IBQuery, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxCntner, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, Buttons, TS_SpeedButton,
  dxfLabel, TS_MaxPanel, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditItem,
  dxEditor, TS_DateTimePicker, TS_Label, TS_CheckBox, TS_EditFavorecido,
  BTOdeum, Placemnt;

type
  TRptPayrollsPorCliente = class(TRptPadrao)
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaPAYROLL: TStringField;
    C_ConsultaNOMEFUNCIONARIO: TStringField;
    C_ConsultaCARGO: TStringField;
    C_ConsultaDATAINICIO: TDateField;
    C_ConsultaDATAFIM: TDateField;
    C_ConsultaDATAPAGAMENTO: TDateField;
    C_ConsultaVALORLIQUIDO: TBCDField;
    C_ConsultaVALORBRUTO: TBCDField;
    C_ConsultaVBFUNC: TBCDField;
    C_ConsultaVLFUNC: TBCDField;
    C_ConsultaPAYROLLFUNC: TIntegerField;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaPAYROLL: TdxDBGridMaskColumn;
    dbgConsultaNOMEFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaCARGO: TdxDBGridMaskColumn;
    dbgConsultaDATAINICIO: TdxDBGridDateColumn;
    dbgConsultaDATAFIM: TdxDBGridDateColumn;
    dbgConsultaDATAPAGAMENTO: TdxDBGridDateColumn;
    dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn;
    dbgConsultaVALORBRUTO: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS: TdxDBGridMaskColumn;
    dbgConsultaVBFUNC: TdxDBGridMaskColumn;
    dbgConsultaVLFUNC: TdxDBGridMaskColumn;
    dbgConsultaPAYROLLFUNC: TdxDBGridMaskColumn;
    C_ConsultaPAGOESTEANO: TBCDField;
    dbgConsultaPAGOESTEANO: TdxDBGridColumn;
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    lbAte: TTS_Label;
    C_ConsultaITEM: TStringField;
    dbgConsultaITEM: TdxDBGridColumn;
    ckbPeriodo: TTS_CheckBox;
    lbCliente: TTS_Label;
    edCliente: TTS_EditFavorecido;
    C_ConsultaPAYROLLID: TIntegerField;
    C_ConsultaFUNCIONARIO: TIntegerField;
    dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ConsultaQTDHORAS: TFloatField;
    C_ConsultaQTDHORAS_USER: TStringField;
    procedure ckbPeriodoChange(Sender: TObject);
    procedure edClienteSelecionou(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptPayrollsPorCliente: TRptPayrollsPorCliente;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

{ TRptPayrollsPorCliente }

procedure TRptPayrollsPorCliente.Atualizar;
begin
  With C_Consulta do begin
    Close;
    Commandtext :=  'select c.nome as NomeCliente, p.Descricao as PayRoll, '+
                    'f.Nome as NomeFuncionario, cg.Descricao as Cargo, p.DataInicio, '+
                    'p.DataFim, p.DataPagamento, p.ValorLiquido, p.ValorBruto, '+
                    'pf.ValorBruto as VBFunc, pf.ValorLiquido as VLFunc, pf.QtdHoras, pf.QtdHoras_User, '+
                    'pf.payrollfunc, pf.PagoEsteAno, p.Payroll as PayrollID, pf.funcionario, '+
                    '(select i.descricao from PayrollsPayItens ppi '+
          		'inner join payrollitens pi on ppi.payrollitem = pi.payrollitem '+
          		'inner join itens i on ppi.item = i.item '+
          		'where ppi.payrollfunc = pf.payrollfunc and pi.tipopayroll = 1 '+
                        'group by i.descricao having count(*) = 1) as Item '+
                    'from Payrolls p '+
        	    	'inner join PayrollsFunc pf on p.payroll = pf.payroll '+
    		    	'inner join Favorecidos c on p.favorecido = c.favorecido '+
                        'inner join Favorecidos f on pf.funcionario = f.favorecido '+
        		'left join Cargos cg on f.cargo = cg.cargo ';
    if ckbPeriodo.Checked then begin
    	CommandText := CommandText + ' where p.datapagamento >= :datai and p.datapagamento <= :dataf ';
    	Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
    end;
    if edCliente.ID <> 0 then begin
    	if ckbPeriodo.Checked then
          CommandText := CommandText + ' and p.favorecido = :id '
      else
        Begin
      	  CommandText := CommandText + ' where p.favorecido = :id ';
          Params.ParamByName('id').AsInteger := edCliente.ID;
        End;
    end;
    CommandText := CommandText + ' order by c.nome, p.datapagamento ';
    Open;
    with dbgConsulta do begin
    	TS_ReportFilter.Clear;
      if ckbPeriodo.Checked then
      	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbAte.Caption+DataF.Text);
      if edCliente.ID <> 0 then
				TS_ReportFilter.Add(lbCliente.Caption+' '+edCliente.Text);
      FullExpand;
    end;
  end;
end;

procedure TRptPayrollsPorCliente.ckbPeriodoChange(Sender: TObject);
begin
  inherited;
  	lbPeriodo.Enabled := ckbPeriodo.Checked;
    lbAte.Enabled := ckbPeriodo.Checked;
    DataI.Enabled := ckbPeriodo.Checked;
    DataF.Enabled := ckbPeriodo.Checked;
    Atualizar;
end;

procedure TRptPayrollsPorCliente.edClienteSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPayrollsPorCliente.edClienteChange(Sender: TObject);
begin
  inherited;
	if edCliente.Text = '' then
  	Atualizar;
end;

procedure TRptPayrollsPorCliente.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptPayrollsPorCliente.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgConsultaQtdHoras_User.Visible := false
  else
  	dbgConsultaQtdHoras.Visible := false;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;

  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay(DMProjeto.dDataSistema);

  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;

  Atualizar;
end;

procedure TRptPayrollsPorCliente.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	if dbgConsulta.TS_SelectedColumn = 'NOMEFUNCIONARIO' then begin
  	DMProjeto.SetParametrosForm([C_ConsultaFuncionario.Value]);
    DMProjeto.CriarForm('FrmFuncionarios',self,true);
  end else begin
  	DMProjeto.SetParametrosForm([C_ConsultaPayrollID.Value]);
    DMProjeto.CriarForm('FrmPayRolls',self,true);
  end;
end;

procedure TRptPayrollsPorCliente.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
