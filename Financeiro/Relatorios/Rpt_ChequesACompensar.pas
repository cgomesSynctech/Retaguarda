unit Rpt_ChequesACompensar;

interface               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, TS_LookupComboBox, dxDBTLCl,
  dxGrClms, TS_LastDataObject, DlgMsg, Dlg_PopupContas,
  dxEdLib, TS_DateTimePicker, TS_CheckBox, teCtrls, TS_EffectsPanel,
  TS_ButtonEdit, TS_EditFavorecido, Buttons, TS_SpeedButton,
  TS_DBLookupTipoFav, Menus, TS_PopupMenu, TS_PopupEdit, ComCtrls, Variants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt;

type
  TRptChequesACompensar = class(TRptPadrao)
    TS_Label1: TTS_Label;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaCHEQUENOMINAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaFORMAPAGAMENTO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaIDDOC: TIntegerField;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFORMAPAGAMENTO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    C_ConsultaPrazo: TStringField;
    dbgConsultaPrazo: TdxDBGridColumn;
    C_ConsultaRETIRADA: TIntegerField;
    C_ConsultaTIPORETIRADA: TIntegerField;
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
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    C_ConsultaPreview: TStringField;
    edFav: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    cmbConta: TTS_PopupEdit;
    C_ConsultaDESCTIPOFAV: TStringField;
    dbgConsultaDESCTIPOFAV: TdxDBGridColumn;
    dbgConsultaCHEQUENOMINAL: TdxDBGridColumn;
    C_ConsultaDESCORIGEM: TStringField;
    dbgConsultaDescOrigem: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn24: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure cmbContaChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure edFavChange(Sender: TObject);
    procedure edFavSelecionou(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptChequesACompensar: TRptChequesACompensar;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TRptChequesACompensar.Atualizar;
begin
	with C_Consulta do begin
  	Close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'WHERE rd.STATUS = 3 and (rd.CONTA = :conta or :Todos = 0) ' +
                   'and (rd.favorecidodoc = :fav or :TodosFav = 0) ' +
                   'order by rd.conta, rd.vencimento';

    Params.paramByname('Conta').AsInteger := DMFinanceiro.C_ContasBcConta.AsInteger;
    if cmbConta.LookUpKeyValue <> null then
    	Params.paramByname('Todos').AsInteger := cmbConta.LookUpKeyValue;
    Params.paramByname('Fav').AsInteger 	:= edFav.ID;
    Params.paramByname('TodosFav').AsInteger := edFav.ID;
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    if cmbConta.LookupKeyValue <> null then
    	TS_ReportFilter.Add('Conta: '+cmbConta.Text);
    if (edFav.ID<>0) then
    	TS_ReportFilter[TS_ReportFilter.Count-1] := TS_ReportFilter[TS_ReportFilter.Count-1]+', '+cmbTipoFav.Text+': '+edFav.Text;
  	FullExpand;
  end;
end;

procedure TRptChequesACompensar.C_ConsultaCalcFields(DataSet: TDataSet);
var Dias : integer;
begin
  inherited;
  Dias := trunc(C_ConsultaVencimento.Value - DMProjeto.dDataSistema);
	if Dias <= 30 then
  	C_ConsultaPrazo.Value := '0 - 30 dias'
  else if Dias <= 60 then
  	C_ConsultaPrazo.Value := '31 - 60 dias'
  else if Dias <= 90 then
  	C_ConsultaPrazo.Value := '61 - 90 dias'
  else
  	C_ConsultaPrazo.Value := 'maior que 90 dias';
  C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );

  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);  
end;

procedure TRptChequesACompensar.cmbContaChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesACompensar.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  		SetParametrosForm([C_ConsultaFavorecido.AsInteger]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.AsInteger),self,true);
    end else begin
  		SetParametrosForm([C_ConsultaRetirada.AsInteger]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoRetirada.AsInteger),self,true);
    end;
  end;
end;

procedure TRptChequesACompensar.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(LastDataObject.TableName,'Retiradas;RetiradasDoc')>0 then
  	Atualizar;
end;

procedure TRptChequesACompensar.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesACompensar.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
//  if ckbEndereco.Checked then
//  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
//  else
//  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptChequesACompensar.edFavChange(Sender: TObject);
begin
  inherited;
  if edFav.Text = '' then
  	Atualizar;
end;

procedure TRptChequesACompensar.edFavSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesACompensar.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesACompensar.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  cmbConta.popupcontrol := DlgPopup.pnPopup;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TRptChequesACompensar.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup 	:= TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
 	DMFinanceiro.C_ContasBc.Open;
  if DMProjeto.ExisteParametrosForm then begin
  	cmbConta.LookUpKeyValue := 0;
    edFav.ID := DMProjeto.getParametrosForm(1);
  end else begin
  	cmbConta.LookUpKeyValue := DMFinanceiro.getContaBancoPadrao;
  end;
end;

end.
