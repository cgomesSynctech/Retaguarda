unit Rpt_ChequesDevolvidos;

interface

uses                                                               
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxDBTLCl, dxGrClms, TS_SpeedButton, TS_LastDataObject,
  DlgMsg, dxExEdtr, dxEdLib, TS_CheckBox, teCtrls, Variants,
  TS_EffectsPanel, Buttons, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_ButtonEdit, TS_EditFavorecido, dxEditor, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav;

type
  TRptChequesDevolvidos = class(TRptPadrao)
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaNOMEBANCO: TStringField;
    C_ConsultaDIASPENDENTES: TIntegerField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaNOMEBANCO: TdxDBGridMaskColumn;
    dbgConsultaDIASPENDENTES: TdxDBGridMaskColumn;
    C_Consulta_icSelecionado: TIntegerField;
    TS_SpeedButton1: TTS_SpeedButton;
    ckbEndereco: TTS_CheckBox;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaFONE2: TStringField;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    C_ConsultaPreview: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    TS_SpeedButton2: TTS_SpeedButton;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn19: TdxDBGridColumn;
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptChequesDevolvidos: TRptChequesDevolvidos;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptChequesDevolvidos.Atualizar;
begin
  with C_Consulta do begin
    close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where dd.Status = 4 ';
    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + 'and d.favorecido = '+IntToStr(edFavorecido.ID);
    Open;
  end;
end;

procedure TRptChequesDevolvidos.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if C_Consulta.RecordCount > 0 then begin
  	DMProjeto.ImprimirRecibo(20,'','',':IDDoc='+C_ConsultaIDDoc.AsString,'');
  end;
end;

procedure TRptChequesDevolvidos.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptChequesDevolvidos.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptChequesDevolvidos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptChequesDevolvidos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  	DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
    DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end;
end;

procedure TRptChequesDevolvidos.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
		SetParametrosForm([null,C_ConsultaFavorecido.Value]);
   	CriarForm('DlgDepositosInstantaneos',self,true);
    LimparParametrosForm;
  end;
end;

procedure TRptChequesDevolvidos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then
  	edFavorecido.ID := DMProjeto.getParametrosForm(0)
  else
		Atualizar;
end;

procedure TRptChequesDevolvidos.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesDevolvidos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	Atualizar;
end;

end.
