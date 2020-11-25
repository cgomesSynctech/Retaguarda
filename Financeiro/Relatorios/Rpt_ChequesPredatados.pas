unit Rpt_ChequesPredatados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, TS_LastDataObject, DlgMsg,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxExEdtr, dxEdLib, TS_ButtonEdit,
  TS_EditFavorecido, dxEditor, TS_DateTimePicker, TS_CheckBox, teCtrls,
  TS_EffectsPanel, Buttons, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum;

type
  TRptChequesPreDatados = class(TRptPadrao)
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaDESCCONTA: TStringField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    C_ConsultaPrazo: TStringField;
    dbgConsultaPrazo: TdxDBGridColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    ckbEndereco: TTS_CheckBox;
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
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaDEPOSITO: TIntegerField;
    C_ConsultaTIPODEPOSITO: TIntegerField;
    TS_SpeedButton1: TTS_SpeedButton;
    dbgConsultaFaltaDias: TdxDBGridColumn;
    C_ConsultaFALTADIAS: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn22: TdxDBGridColumn;
    C_ConsultaHISTORICO: TStringField;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaDATADIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    C_ConsultaNOMEBANCO: TStringField;
    dbgConsultaNOMEBANCO: TdxDBGridMaskColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptChequesPreDatados: TRptChequesPreDatados;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptChequesPreDatados.C_ConsultaCalcFields(DataSet: TDataSet);
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

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('DATA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('DATA').AsDateTime);
end;

procedure TRptChequesPreDatados.Atualizar;
begin
{    CommandText := 'Select dd.IDDoc, dd.NumCheque, dd.Valor, f.Nome, d.Data, '+
    							 'dd.Vencimento, b.Nome as NomeBanco, c.Descricao as DescConta, '+
                   'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, '+
                   'f.cep, f.email,  f.CaixaPostal, f.TipoFavorecido, d.favorecido, '+
                   'd.Deposito, d.TipoDeposito '+
									 'From DepositosDoc dd '+
         					 'inner join Depositos d on dd.deposito = d.deposito '+
         					 'left join Favorecidos f on d.favorecido = f.favorecido '+
         					 'left join Favorecidos b on dd.banco = b.favorecido '+
         					 'left join Contas c on dd.ContaAtual = c.Conta '+
									 'Where dd.vencimento >= :DataI and dd.vencimento <= :DataF '+
             			 iif(edFavorecido.ID <> 0,'and d.favorecido = '+IntToStr(edFavorecido.ID)+' ',' ')+
                   'and dd.formapagamento in (2,3) and dd.status < 50 and '+
                   'dd.foradaempresa = ''N'' '+
                   'order by dd.vencimento'; }
	with C_Consulta do begin
  	Close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
									 'Where dd.vencimento >= :DataI and dd.vencimento <= :DataF '+
             			 iif(edFavorecido.ID <> 0,'and d.favorecido = '+IntToStr(edFavorecido.ID)+' ',' ')+
                   'and dd.formapagamento in (2,3) and dd.status < 50 and '+
                   'dd.foradaempresa = ''N'' '+
                   'order by dd.vencimento';

    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptChequesPreDatados.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptChequesPreDatados.DataIDateChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptChequesPreDatados.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptChequesPreDatados.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	//Atualizar;
end;

procedure TRptChequesPreDatados.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaFavorecido.Value]);
    	CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end;
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_ConsultaDeposito.Value]);
    	CriarForm(getTelaGeradora(C_ConsultaTipoDeposito.Value),self,true);
  	end;
  end;
end;

procedure TRptChequesPreDatados.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesPreDatados.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema + 30;
  if DMProjeto.ExisteParametrosForm then begin
    if DMProjeto.QtdParametrosForm > 1 then begin
      DataI.Date := 0;
    	edFavorecido.ID := DMProjeto.getParametrosForm(1);
    end;
  end;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
//  Atualizar;
end;

procedure TRptChequesPreDatados.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	CriarForm('DlgDepositoCheques',self,true);
  end;
end;

end.
