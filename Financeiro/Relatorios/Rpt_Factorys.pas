
unit Rpt_Factorys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, 
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms,
  dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, dxEditor, TS_DateTimePicker, TS_CheckBox, teCtrls,
  TS_EffectsPanel, Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum;

type
  TRptFactorys = class(TRptPadrao)
    C_ConsultaOPDOC: TIntegerField;
    C_ConsultaOPERACAO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaQTDDIAS: TIntegerField;
    C_ConsultaJUROS: TBCDField;
    C_ConsultaNOMEEMPRESA: TStringField;
    C_ConsultaIDDOC: TIntegerField;
    dbgConsultaOPDOC: TdxDBGridMaskColumn;
    dbgConsultaOPERACAO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVALORPAGO: TdxDBGridMaskColumn;
    dbgConsultaQTDDIAS: TdxDBGridMaskColumn;
    dbgConsultaJUROS: TdxDBGridMaskColumn;
    dbgConsultaNOMEEMPRESA: TdxDBGridMaskColumn;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edEmpresa: TTS_EditFavorecido;
    C_ConsultaOrigem: TStringField;
    dbgConsultaOrigem: TdxDBGridColumn;
    ckbEndereco: TTS_CheckBox;
    C_ConsultaPreview: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaHISTORICO: TStringField;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure DataIDateChange(Sender: TObject);
    procedure edEmpresaSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edEmpresaChange(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptFactorys: TRptFactorys;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

{ TRptPadrao1 }

procedure TRptFactorys.Atualizar;
begin
  with C_Consulta do begin
    close;
    fetchparams;
    CommandText := 'Select distinct ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where o.Data >= :DataI and o.Data <= :DataF and o.TipoOperacao = 24 and '+
                   ' (o.situacao is null) and '+
                   ' (o.Favorecido = :Empresa OR :todos = 0) ';

    params.parambyname('DataI').AsDate := trunc(DataI.Date);
    params.parambyname('DataF').AsDate := trunc(DataF.Date);
    params.parambyname('Empresa').AsInteger := edEmpresa.ID;
    params.parambyname('Todos').AsInteger 	:= edEmpresa.ID;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    if (edEmpresa.ID <> 0) then
    	TS_ReportFilter.Add(cmbTipoFav.text+': '+edEmpresa.Text);
    FullExpand;
  end;
end;

procedure TRptFactorys.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_ConsultaIDDoc.Value = 0 then
		C_ConsultaOrigem.Value := 'Terceiros'
  else
  	C_ConsultaOrigem.Value := 'Empresa';
  C_ConsultaPreview.Value  := DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptFactorys.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFactorys.edEmpresaSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFactorys.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptFactorys.edEmpresaChange(Sender: TObject);
begin
  inherited;
	if text = '' then
  	Atualizar;
end;

procedure TRptFactorys.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptFactorys.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
		if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
    	SetParametrosForm([C_ConsultaFavorecido.Value]);
      CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end else begin
    	SetParametrosForm([C_ConsultaOperacao.Value]);
      CriarForm('DlgFactory',self,true);
    end;
  end;
end;

procedure TRptFactorys.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.
