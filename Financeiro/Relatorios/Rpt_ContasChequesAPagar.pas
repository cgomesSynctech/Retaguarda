unit Rpt_ContasChequesAPagar;
                          
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
  TS_DBLookupTipoFav, TS_ButtonEdit, TS_EditFavorecido, TS_CheckBox,
  Math;

type
  TRptContasChequesAPagar = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaCOMPETENCIA: TDateField;
    C_ConsultaVENCIMENTO: TDateField;
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
    dbgConsultaicFaltaPagar: TdxDBGridMaskColumn;
    C_ConsultaFALTAPAGAR: TBCDField;
    C_ConsultaFORNECEDOR: TIntegerField;
    C_ConsultaCONTA: TIntegerField;
    C_ConsultaOBSERVACAO: TStringField;
    dbgConsultaOBSERVACAO: TdxDBGridColumn;
    C_ConsultaTIPOCOBRANCA: TStringField;
    dbgConsultaTIPOCOBRANCA: TdxDBGridColumn;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaCOMPETENCIADIASEMANA: TStringField;
    C_ConsultaVENCIMENTODIASEMANA: TStringField;
    dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn;
    dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaDESCINDEX: TStringField;
    C_ConsultaicFaltaPagar: TCurrencyField;
    Q_SQL: TIBQuery;
    dbgConsultaDESCINDEX: TdxDBGridMaskColumn;
    C_ConsultaCTODESPESA: TStringField;
    dbgConsultaCTODESPESA: TdxDBGridColumn;
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
  RptContasChequesAPagar: TRptContasChequesAPagar;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}


procedure TRptContasChequesAPagar.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.Sql.Text := 'Select t.id, f.nome, t.competencia, t.vencimento, t.faltapagar, (t.vencimento-current_date) as faltaemdias, cast(t.Titulo as char(15)) as Doc, '+
                        ' cast('' '' as varchar(50)) as Banco, ''Contas '' as Tipo, f.cpf_cnpj, f.endereco, f.bairro, f.cep, f.cidade, f.uf, f.fone1, '+
                        ' f.fone2, f.tipofavorecido, t.fornecedor, t.idgerador_apagar as conta, t.obs as OBSERVACAO, tc.descricao as tipocobranca, '+
                        't.indexador, idx.descricao as descindex, c.Descricao as CTODespesa ' +
                        'From DuplicatasAPagar t Inner join Favorecidos f on t.fornecedor = f.favorecido left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca '+
                        'left join indexadores idx on t.indexador = idx.indexador ' +
                        ' left join contasoperacao x on x.idgerador = t.id '+
                        ' left join contas c on c.conta = x.conta '+
                        'Where t.vencimento >= :DataI and t.vencimento <= :DataF and t.status > 0 and t.status < 50 :FAV '+
                        'UNION '+
                        'Select dd.iddoc, f.nome, d.data, dd.vencimento, dd.valor, (dd.vencimento-current_date) as faltaemdias, cast(dd.numcheque as char(15)), '+
                        'c.descricao, ''Cheques'' as Tipo, f.cpf_cnpj, f.endereco, f.bairro, f.cep, f.cidade, f.uf, f.fone1, f.fone2, f.tipofavorecido, dd.favorecidodoc, dd.conta, '+
                        'cast('' '' as varchar(255))  as OBSERVACAO, cast('' '' as varchar(50))  as TIPOCOBRANCA, -8888 as indexador, '+
                        'cast('' '' as varchar(30)) as descindex, '+
                        ' y.descricao  as CTODespesa  ' +
                        'From RetiradasDoc dd '+
                        'Inner join Retiradas d on dd.retirada = d.retirada '+
                        'Left join Favorecidos f on dd.favorecidodoc = f.favorecido '+
                        'Left join Contas c on dd.conta = c.conta '+
                        'left join contasoperacao x on  x.idgerador = d.retirada '+
                        'left join contas y on y.conta = x.conta '+
                        'Where dd.Vencimento >= :DataI and '+
                        'dd.Vencimento <= :DataF and dd.status = 3 and dd.formapagamento > 1 and '+
                        'dd.formapagamento < 4 and d.situacao= ''N'' :FAV '+
                        'Order by 4  ';

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

procedure TRptContasChequesAPagar.edFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasChequesAPagar.DataFDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasChequesAPagar.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay(DMProjeto.dDataSistema);
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := DataFDateChange;
  Atualizar;
end;

procedure TRptContasChequesAPagar.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptContasChequesAPagar.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
  	if TS_SelectedColumn = 'NOME' then begin
    	with DMProjeto do begin
      	SetParametrosForm([C_ConsultaFornecedor.Value]);
      	CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
      end;
    end else begin
    	if Trim(C_ConsultaTipo.Value) = 'Cheques' then begin
    		with DMProjeto do begin
      		SetParametrosForm([null,C_ConsultaID.Value,C_ConsultaConta.Value]);
      		CriarForm('DlgChequesEmitidos',self,true);
      	end;
      end else begin
        if (TS_SelectedColumn = 'DOC') and (C_ConsultaCONTA.AsInteger > 1) then begin
          with DMProjeto do begin
            SetParametrosForm([C_ConsultaCONTA.AsInteger]);
            CriarForm('FrmCompras',Self,True);
          end;
        end
        else with DMProjeto do begin
      		SetParametrosForm([C_ConsultaID.Value]);
      		CriarForm('FrmA_Pagar',self,true);
      	end;
      end;
    end;
  end;
end;

procedure TRptContasChequesAPagar.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('COMPETENCIADIASEMANA').AsString := DataSet.FieldByName('COMPETENCIA').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('COMPETENCIA').AsDateTime);

  DataSet.FieldByName('VENCIMENTODIASEMANA').AsString := DataSet.FieldByName('VENCIMENTO').AsString +
     ' - ' + DiaSemana(DataSet.FieldByName('VENCIMENTO').AsDateTime);

  DataSet.FieldByName('icFaltaPagar').AsVariant := DataSet.FieldByName('FALTAPAGAR').AsCurrency;

  if (DataSet.FieldByName('Indexador').AsVariant <> null) and
     (DataSet.FieldByName('Indexador').AsInteger <> -8888) then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      DataSet.FieldByName('icFaltaPagar').AsVariant := RoundTo( DataSet.FieldByName('FALTAPAGAR').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
    end;
    Q_SQL.Close;
  end;
end;

end.
