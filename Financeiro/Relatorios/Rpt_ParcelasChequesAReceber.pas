unit Rpt_ParcelasChequesAReceber;

interface
                               
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxCntner, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent,
  DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, TS_ButtonEdit, TS_EditFavorecido, TS_CheckBox;

type
  TRptParcelasChequesAReceber = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaFALTARECEBER: TBCDField;
    C_ConsultaFALTAEMDIAS: TIntegerField;
    C_ConsultaBANCO: TStringField;
    C_ConsultaDOC: TStringField;
    C_ConsultaTIPO: TStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaCOMPETENCIA: TdxDBGridDateColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaFALTAEMDIAS: TdxDBGridMaskColumn;
    dbgConsultaBANCO: TdxDBGridMaskColumn;
    dbgConsultaDOC: TdxDBGridMaskColumn;
    dbgConsultaTIPO: TdxDBGridMaskColumn;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCLIENTE: TIntegerField;
    dbgConsultaFALTARECEBER: TdxDBGridMaskColumn;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaDATADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaDATADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaVENDEDOR: TStringField;
    dbgConsultaColumn21: TdxDBGridColumn;
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptParcelasChequesAReceber: TRptParcelasChequesAReceber;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}


procedure TRptParcelasChequesAReceber.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.Sql.Text := 'Select t.id, f.nome, t.competencia, t.vencimento, t.faltareceber, (t.vencimento-current_date) as faltaemdias, '+
          'cast(t.Titulo as char(50)) as Doc, cast('' '' as varchar(50)) as Banco, ''Parcelas'' as Tipo, f.cpf_cnpj, f.endereco, f.bairro, '+
          'f.cep, f.cidade, f.uf, f.fone1, f.fone2, f.tipofavorecido, t.cliente, v.Nome as Vendedor '+
          'From TitulosAReceber t Inner join Favorecidos f on t.cliente = f.favorecido '+
          ' Left Join Favorecidos v on v.favorecido = t.vendedor '+
          ' Where t.vencimento >= :DataI and t.vencimento <= :DataF and t.status > 0 and t.status < 50 :FAV '+
          'UNION '+
          'Select dd.iddoc, f.nome, d.data, dd.vencimento, dd.valor, (dd.vencimento-current_date) as faltaemdias, cast(dd.numcheque as char(50)), b.nome as banco, ''Cheques '' as Tipo, f.cpf_cnpj, f.endereco, '+
          'f.bairro, f.cep, f.cidade, f.uf, f.fone1, f.fone2, f.tipofavorecido, d.favorecido, Cast(''Não Informado'' as varchar(50)) as Vendedor '+
          'From DepositosDoc dd Inner join Depositos d on dd.empresa = d.empresa and dd.deposito = d.deposito and d.pdv = dd.pdv '+
          'Left join Favorecidos f on d.empresa = f.empresa and d.favorecido = f.favorecido Left join Favorecidos b on dd.empresa = b.empresa and dd.banco = b.favorecido '+
          'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF and dd.status = 3 and dd.formapagamento > 1 and dd.formapagamento < 4 and d.situacao= ''N'' :FAV Order by 4 ';
  if edFavorecido.ID <> 0 then
    Q_Consulta.Sql.Text := replace(Q_Consulta.Sql.Text,':FAV',' and f.favorecido = '+IntToStr(edFavorecido.ID))
  else
    Q_Consulta.Sql.Text := replace(Q_Consulta.Sql.Text,':FAV',' ');

  C_Consulta.FetchParams;
  C_Consulta.Params.ParamByName('DataI').AsDateTime := DataI.Date;
  C_Consulta.Params.ParamByName('DataF').AsDateTime := DataF.Date;
  C_Consulta.Open;

  with dbgConsulta do begin
  	FullExpand;
    with TS_ReportFilter do begin
    	Clear;
      Add('Vencimento de '+DataI.Text+' a '+DataF.Text);
    end;
  end;
end;

procedure TRptParcelasChequesAReceber.edFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptParcelasChequesAReceber.DataFDateChange(Sender: TObject);
begin
  inherited;
	//Atualizar;
end;

procedure TRptParcelasChequesAReceber.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DataI.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay(DMProjeto.dDataSistema);
  DataF.OnDateChange := DataFDateChange;
//  Atualizar;
end;

procedure TRptParcelasChequesAReceber.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptParcelasChequesAReceber.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
  	if TS_SelectedColumn = 'NOME' then begin
    	with DMProjeto do begin
      	SetParametrosForm([C_ConsultaCliente.Value]);
      	CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
      end;
    end else begin
    	if Trim(C_ConsultaTipo.Value) = 'Cheques' then begin
    		with DMProjeto do begin
      		SetParametrosForm([C_ConsultaCliente.Value,0]);
      		CriarForm('DlgLocalizarCheques',self,true);
      	end;
      end else begin
    		with DMProjeto do begin
      		SetParametrosForm([C_ConsultaID.Value]);
      		CriarForm('FrmA_Receber',self,true);
      	end;
      end;
    end;
  end;
end;

procedure TRptParcelasChequesAReceber.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DATADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);
  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);       
end;

end.
