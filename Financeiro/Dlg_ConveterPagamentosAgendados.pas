unit Dlg_ConveterPagamentosAgendados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Provider, DBClient, Db, IBCustomDataSet, IBQuery,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, FormsComponent, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib, TS_CheckBox, dxDBTLCl,
  dxGrClms, IBUpdateSQL, DM_Contabilidade, dxEditor, TS_DateTimePicker,
  BTOdeum, Placemnt;

type
  TDlgConveterPagamentosAgendados = class(TFrmModeloCadastros)
    DBContas: TTS_QDBGrid;
    ppmGrid: TTS_PopupMenu;
    Q_Agendamentos: TIBQuery;
    C_AgendamentosDS: TDataSource;
    C_Agendamentos: TClientDataSet;
    P_Agendamentos: TDataSetProvider;
    C_AgendamentosID: TIntegerField;
    C_AgendamentosVENCIMENTO: TDateField;
    C_AgendamentosVALOR: TBCDField;
    C_AgendamentosNOTAFISCAL: TStringField;
    C_AgendamentosNOME: TStringField;
    C_AgendamentosCOMPETENCIA: TDateField;
    C_AgendamentosOBS: TStringField;
    DBContasID: TdxDBGridMaskColumn;
    DBContasVENCIMENTO: TdxDBGridDateColumn;
    DBContasVALOR: TdxDBGridMaskColumn;
    DBContasNOTAFISCAL: TdxDBGridMaskColumn;
    DBContasNOME: TdxDBGridMaskColumn;
    DBContasCOMPETENCIA: TdxDBGridDateColumn;
    DBContasOBS: TdxDBGridMaskColumn;
    ckbIniciar: TTS_CheckBox;
    C_Agendamentos_icSelecionado: TIntegerField;
    C_ContasOperacao: TClientDataSet;
    Q_ContasOperacao: TIBQuery;
    Q_AgendamentosDS: TDataSource;
    C_AgendamentosQ_ContasOperacao: TDataSetField;
    C_ContasOperacaoCONTAOPERACAO: TIntegerField;
    C_ContasOperacaoCONTA: TIntegerField;
    C_ContasOperacaoIDGERADOR: TIntegerField;
    C_ContasOperacaoORIGEM: TIntegerField;
    C_ContasOperacaoHISTORICO: TStringField;
    C_ContasOperacaoCLIENTEREF: TIntegerField;
    C_ContasOperacaoVALOR: TBCDField;
    C_ContasOperacaoDS: TDataSource;
    pnSplit: TTS_Panel;
    DBSplit: TTS_QDBGrid;
    DBSplitCONTAOPERACAO: TdxDBGridMaskColumn;
    DBSplitCONTA: TdxDBGridMaskColumn;
    DBSplitIDGERADOR: TdxDBGridMaskColumn;
    DBSplitORIGEM: TdxDBGridMaskColumn;
    DBSplitHISTORICO: TdxDBGridMaskColumn;
    DBSplitCLIENTEREF: TdxDBGridMaskColumn;
    DBSplitVALOR: TdxDBGridMaskColumn;
    C_ContasOperacaoDESCCONTA: TStringField;
    DBSplitDescConta: TdxDBGridColumn;
    Q_AgendamentosID: TIntegerField;
    Q_AgendamentosVENCIMENTO: TDateField;
    Q_AgendamentosVALOR: TIBBCDField;
    Q_AgendamentosNOTAFISCAL: TIBStringField;
    Q_AgendamentosNOME: TIBStringField;
    Q_AgendamentosCOMPETENCIA: TDateField;
    Q_AgendamentosOBS: TIBStringField;
    TS_Panel1: TTS_Panel;
    lbFechar: TTS_Label;
    lbSplit: TTS_Label;
    U_ContasOperacao: TIBUpdateSQL;
    U_Agendamentos: TIBUpdateSQL;
    Q_AgendamentosCONTAAPAGAR: TIntegerField;
    C_AgendamentosCONTAAPAGAR: TIntegerField;
    Q_AgendamentosFORNECEDOR: TIntegerField;
    C_AgendamentosFORNECEDOR: TIntegerField;
    TS_Label1: TTS_Label;
    DataF: TTS_DateTimePicker;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_AgendamentosVALORChange(Sender: TField);
    procedure lbFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    function 	Validacoes : boolean;
    function 	Gravar : boolean;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgConveterPagamentosAgendados: TDlgConveterPagamentosAgendados;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TDlgConveterPagamentosAgendados.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  ckbIniciar.Checked := DMProjeto.Parametro('AutoLembrete')='S';
  DataF.Date				 := LastMonthDay( DMProjeto.dDataSistema );
end;

procedure TDlgConveterPagamentosAgendados.C_AgendamentosVALORChange(
  Sender: TField);
begin
  inherited;
//  if C_Agendamentos_IcSelecionado.value = 0 then
//  	abort;
  if not DBContas.Selecionado then
  	DBContas.Selecionar;
  pnSplit.Visible := (C_ContasOperacao.RecordCount > 1) and (DBSplit.TotalGeral('Valor')<>C_AgendamentosValor.AsCurrency);
  if pnSplit.Visible then begin
  	lbSplit.Caption := 'Split: '+formatfloat('###,###,##0.00',C_AgendamentosValor.AsCurrency);
    ActiveControl := DBSplit;
  end;
  if C_ContasOperacao.RecordCount = 1 then begin
  	C_ContasOperacao.Edit;
    C_ContasOperacaoValor.Value := C_AgendamentosValor.Value;
    C_ContasOperacao.Post;
  end;
end;

function TDlgConveterPagamentosAgendados.Validacoes: boolean;
begin
  result := false;
  if pnSplit.Visible then begin
  	DlgMsg.ShowMsg(945);
    exit;
  end;

	if C_ContasOperacao.State in [dsEdit,dsInsert] then
  	C_ContasOperacao.Post;

	if C_Agendamentos.State in [dsEdit,dsInsert] then
  	C_Agendamentos.Post;

  result := false;
	if DBContas.QuantidadeSelecionada = 0 then begin
  	DlgMsg.ShowMsg(354);
    exit;
  end;
  result := true;
end;

function TDlgConveterPagamentosAgendados.Gravar: boolean;
var sSelecionados : string;
		i : integer;
begin
	result := false;
  try
  	if not DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
			DMPRojeto.DB_Projeto.DefaultTransaction.StartTransaction;

    with DMFinanceiro do begin
      {Atualizando ContasOperação}
      C_Agendamentos.ApplyUpdates(0);
    	sSelecionados :=DBContas.FirstSelected;
    	for i:=1 to ContaStrings(sSelecionados,',') do begin
    		with Q_SQL do begin
          {Atualizando Duplicatas a Pagar}
      		close;
        	sql.text := 'update duplicatasapagar '+
        							'set valor = :valor, vencimento = :vencimento, '+
                      '    status = :status, notafiscal = :nota, contaapagar = :contaapagar '+
                      'where id = :id';
          parambyname('Valor').AsCurrency 	:= C_AgendamentosValor.AsCurrency;
          parambyname('Vencimento').AsDate	:= C_AgendamentosVencimento.Value;
          parambyname('Status').AsInteger 	:= DMFinanceiro.SetStatus(C_AgendamentosVencimento.Value);
          parambyname('nota').AsString 			:= C_AgendamentosNotaFiscal.Value;
          parambyname('ID').AsInteger 			:= C_AgendamentosID.Value;
          parambyname('contaapagar').AsInteger := C_AgendamentosContaapagar.Value;
          ExecSQL;
        end;
        DBContas.NextSelected;
      end;
      DMContabil.ContabilizaAgendDespesasFixas(C_Agendamentos,C_ContasOperacao);

  		if DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
				DMPRojeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    end;
    result := true;
    C_Agendamentos.Close;
    C_Agendamentos.Open;
  except
  	on e:exception do begin
    	DlgMsg.ShowMsg(2,e.Message, '');
			DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;
end;

procedure TDlgConveterPagamentosAgendados.lbFecharClick(Sender: TObject);
begin
  inherited;
  if C_Agendamentos.State in [dsEdit,dsInsert] then
  	C_Agendamentos.Post;
  if C_AgendamentosValor.Value <> DBSplit.TotalGeral('Valor') then begin
		DlgMsg.ShowMsg( 938, [formatfloat('###,##0.00',C_AgendamentosValor.Value-DBSplit.TotalGeral('Valor'))]);
    exit;
  end;
  pnSplit.Visible := false;
end;

procedure TDlgConveterPagamentosAgendados.btGravarClick(Sender: TObject);
begin
  inherited;
  if not Validacoes then
  	exit;
  Gravar;
end;

procedure TDlgConveterPagamentosAgendados.btComando1Click(Sender: TObject);
begin
  inherited;
  if C_Agendamentos.RecordCount = 0 then
  	exit;
  if btComando1.Down then begin
  	pnSplit.Visible := true;
  	ActiveControl := DBSplit;
  end else
  	lbFecharClick(Sender);
end;

procedure TDlgConveterPagamentosAgendados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	if (ckbIniciar.Checked) <> (DMProjeto.Parametro('AutoLembrete')='S') then
		DMProjeto.SetParametro('AutoLembrete',iif(ckbIniciar.Checked,'S','N'));
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
end;

procedure TDlgConveterPagamentosAgendados.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    DBContasNOTAFISCAL.caption := '# Doc.';
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgConveterPagamentosAgendados.Pesquisar;
begin
	with C_Agendamentos do begin
  	close;
    fetchparams;
    params.parambyname('DataI').AsDateTime := 0;//FirstMonthDay( DMProjeto.dDataSistema );
    params.parambyname('DataF').AsDateTime := DataF.Date;//LastMonthDay( DMProjeto.dDataSistema );
    open;
  end;
end;

procedure TDlgConveterPagamentosAgendados.DataFDateChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

end.
