unit DM_Contas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, Variants;

type
  TDMContas = class(TDMManutencao)
    Q_Bancos: TIBQuery;
    Q_SQL: TIBQuery;
    C_TabelaDescBanco: TStringField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaNUMCONTA: TStringField;
    C_TabelaAGENCIA: TStringField;
    C_TabelaGERENTE: TStringField;
    C_TabelaDATASALDOINICIAL: TDateField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaMOVIMENTOCORRENTE: TDateField;
    C_TabelaBANCO: TIntegerField;
    C_TabelaSALDOINICIAL: TBCDField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaNUMCHEQUEBASE: TIntegerField;
    C_TabelaDESCRICAOATUAL: TStringField;
    C_TabelaLIMITECREDITO: TBCDField;
    C_TabelaTIPOCONTA: TIntegerField;
    C_TabelaOBS: TStringField;
    C_TabelaCODIGOCONTA: TStringField;
    Q_TiposContasProvider: TDataSetProvider;
    C_TiposContas: TClientDataSet;
    Q_TiposContas: TIBQuery;
    C_TiposContasTIPOCONTA: TIntegerField;
    C_TiposContasDESCRICAO: TStringField;
    C_TiposContasTIPO: TStringField;
    C_TabelalkTipoConta: TStringField;
    Q_Associacao: TIBQuery;
    C_TabelaDATACONCILIACAO: TDateField;
    C_TabelaSALDOCONCILIACAO: TBCDField;
    Q_Contas: TIBQuery;
    C_Contas: TClientDataSet;
    C_TabelaCONTAPAI: TIntegerField;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_TabelaCODIGOREDUZIDO: TStringField;
    C_TabelaUSUARIOCAIXA: TIntegerField;
    C_TabelaSALDO: TBCDField;
    Q_Usuarios: TIBQuery;
    Q_UsuariosProvider: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    C_TabelalkUsuario: TStringField;
    Q_Master2DS: TDataSource;
    C_TiposContasQ_Contas: TDataSetField;
    C_TabelalkContaPai: TStringField;
    Q_TiposContasTIPOCONTA: TIntegerField;
    Q_TiposContasDESCRICAO: TIBStringField;
    Q_TiposContasTIPO: TIBStringField;
    C_TabelaSINTETICO: TStringField;
    C_TabelaNIVEL: TIntegerField;
    Q_Aux: TIBQuery;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasDS: TDataSource;
    P_Bancos: TDataSetProvider;
    C_Bancos: TClientDataSet;
    C_BancosFAVORECIDO: TIntegerField;
    C_BancosNOME: TStringField;
    C_TabelaSaldoAtual: TCurrencyField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_TabelaDESPESAFIXA: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_TabelaDESATIVADOValidate(Sender: TField);
    procedure C_TabelaBeforePost(DataSet: TDataSet);
    procedure C_TabelaCONTAPAIValidate(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentGravar4_AposCommit(Sender: TObject);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure C_TabelaCODIGOREDUZIDOValidate(Sender: TField);
    procedure C_TabelaUSUARIOCAIXAValidate(Sender: TField);
  private
    function TipoConta(nConta:integer):integer;
    function VerificaLanctosConta(nConta:integer):boolean;
    function VerificaExistenciaUsuario: boolean;
    function ContabilizaOutrasInicializa(dData:TDateTime): integer;
    function ContabilizaOutrasItens(nIDLanc,nConta:integer;nValor:currency): boolean;
    procedure ContabilizaContasOutras(dData:TDateTime;nDiferenca:currency);
    function ContabilizaSaldos(dData:TDateTime;nConta:integer;nSaldo:currency): integer;
  public
  	nTipoConta : integer;
  end;

var
  DMContas: TDMContas;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

function TDMContas.VerificaLanctosConta;
begin
  DMProjeto.Q_Contabil.close;
  DMProjeto.Q_Contabil.SQL.text := 'select distinct conta from lancamentositens where conta = :conta order by conta';
  DMProjeto.Q_Contabil.params[0].asinteger := nConta;
  DMProjeto.Q_Contabil.open;
  DMProjeto.Q_Contabil.last;
  result := DMProjeto.Q_Contabil.FieldByName('conta').asinteger > 0;
end;

procedure TDMContas.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  if nTipoConta <> 0 then
  	C_TabelaTipoConta.Value 	 	:= nTipoConta
  else
  	C_TabelaTipoConta.Value			:= 2;

  C_TabelaLimiteCredito.Value	 	:= 0;
  C_TabelaSaldoInicial.Value	 	:= 0;
  C_TabelaSaldoConciliacao.Value:= 0;
  C_TabelaSaldo.Value	         	:= 0;
  C_TabelaDesativado.Value	 		:= 'N';
  C_TabelaSintetico.Value	 			:= 'N';
  C_TabelaNivel.Value	         	:= 0;
  C_TabelaSituacao.Value	 			:= 'Aberto';
  C_TabelaMovimentoCorrente.Value := DMProjeto.dDataSistema;
end;

procedure TDMContas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMContas := self;
  nTipoConta := 2;
end;

procedure TDMContas.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
var nConta : integer;
		sConta : string;
begin
  inherited;
  if C_TabelaConta.Value = 1 then begin
    bSkip := true;
    DlgMsg.ShowMsg(3002); // Esta Conta não pode ser excluída!
    exit;
  end;
end;


procedure TDMContas.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  C_Contas.close;
  C_Contas.open;
end;

procedure TDMContas.C_TabelaDESATIVADOValidate(Sender: TField);
begin
  inherited;
  if C_TabelaConta.Value = 1 then begin
    DlgMsg.ShowMsg(3001); // Esta Conta não pode ser desativada!
    raise Exception.Create('@');
  end;
end;

procedure TDMContas.C_TabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_TabelaConta.value < 0 then begin
    if C_TabelaTipoConta.value <> 1 then
      C_TabelaSituacao.Value := 'Aberto'
    else
      C_TabelaSituacao.Value := 'Criado';
  end;
end;

procedure TDMContas.C_TabelaCONTAPAIValidate(Sender: TField);
begin
  inherited;
  if VerificaLanctosConta(C_TabelaContaPai.value) or (C_TabelaContaPai.value = C_TabelaConta.value) then begin
    DlgMsg.ShowMsg(6006);
    raise Exception.Create('@');
  end;
end;

procedure TDMContas.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
  var nNivel, nContaPai: integer;
begin
  inherited;
  if not bAlteracao then begin
    if not C_TabelaContaPai.IsNull then begin
      if not (C_Tabela.state in [dsEdit,dsInsert]) then
        C_Tabela.edit;
      C_TabelaSintetico.value := 'N';

      // Cálculo do Nível da Conta
      Q_Aux.close;
      Q_Aux.SQL.text := 'select contapai from contas where conta = :conta';

      nContaPai := C_Tabela.FieldByName('contapai').AsInteger;
      nNivel := 0;
      while nContaPai > 0 do begin
        inc(nNivel);

        Q_Aux.close;
        Q_Aux.ParamByName('conta').asinteger := nContaPai;
        Q_Aux.open;
        nContaPai := Q_Aux.FieldByName('contapai').AsInteger;
      end;
      C_TabelaNivel.value := nNivel;
    end;
  end;

  if C_Tabela.state in [dsEdit,dsInsert] then
    C_Tabela.post;

{  with DMProjeto.Q_SQL do begin
    SQL.text := 'select conta from contas where upper(descricao) = '''+uppercase(C_Tabeladescricao.value)+''' '+
    'and conta <> '+IntToStr(C_TabelaConta.value);
    open;
    if recordcount > 0 then begin
      DlgMsg.ShowMsg(3070);
      bSkip := true;
    end;
  end;}
end;

function TDMContas.TipoConta(nConta:integer):integer;
begin
  DMProjeto.Q_Contabil.close;
  DMProjeto.Q_Contabil.SQL.text := 'select tipoconta from contas where conta = '+IntToStr(nConta);
  DMProjeto.Q_Contabil.open;
  result := DMProjeto.Q_Contabil.FieldByName('tipoconta').asinteger;
end;

procedure TDMContas.DMComponentGravar4_AposCommit(Sender: TObject);
begin
  inherited;
//  if bAlteracao then
    DMProjeto.AtualizaPlanoContas;

  if C_TabelaTipoConta.Value = 2 then begin
    with DMProjeto.Q_SQL do begin
      close;
      SQL.text := 'select conta from contaspadrao where id = 11';
      open;
      if fields[0].IsNull then begin
        close;
        sql.text := 'update contaspadrao set conta = :conta where id = 11';
        params[0].asinteger := C_TabelaConta.Value;
        execsql;
        close;
      end;
    end;
    if DMFinanceiro.C_ContasBc.Active then begin
       DMFinanceiro.C_ContasBc.Close;
       DMFinanceiro.C_ContasBc.Open;
    end;
    if DMFinanceiro.C_ContasCxBc.Active then begin
       DMFinanceiro.C_ContasCxBc.Close;
       DMFinanceiro.C_ContasCxBc.Open;
    end;
  end else if C_TabelaTipoConta.Value = 1 then begin
    if DMFinanceiro.C_ContasCx.Active then begin
       DMFinanceiro.C_ContasCx.Close;
       DMFinanceiro.C_ContasCx.Open;
    end;
    if DMFinanceiro.C_ContasCxBc.Active then begin
       DMFinanceiro.C_ContasCxBc.Close;
       DMFinanceiro.C_ContasCxBc.Open;
    end;
  end else if DMFinanceiro.C_Contas.Active then begin
    DMFinanceiro.C_Contas.Close;
    DMFinanceiro.C_Contas.Open;
  end;

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
end;

procedure TDMContas.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  C_TiposContas.close;
  C_TiposContas.open;
  C_Contas.close;
  C_Contas.open;
end;

procedure TDMContas.DMComponentGravar3_AposApply(Sender: TObject);
var nLancamento: integer;
    dData: TDateTime;
begin
  inherited;
  nTipoConta := C_TabelaTipoConta.value;
  C_TiposContas.locate('tipoconta',nTipoConta,[]);
  if DMProjeto.Parametro('DataBeginBalance') <> '' then
    dData := DMProjeto.ConverteDataParametro(DMProjeto.Parametro('DataBeginBalance'))
  else
    dData := FirstMonthDay(DMProjeto.dDataSistema);

  if not bAlteracao and ((C_TabelaTipoConta.value = 1) or (C_TabelaTipoConta.value = 2)) then begin
    if C_TabelaSaldoAtual.value <> 0 then begin
      nLancamento := ContabilizaSaldos(dData,C_TabelaConta.value,C_TabelaSaldoAtual.value);
      if C_TabelaSaldoAtual.value > 0 then
        DMFinanceiro.Depositar(21,nLancamento,C_TabelaConta.value,0,
        dData,C_TabelaSaldoAtual.value,0,1,'begin balance',0,
        '','',-1,'S')
      else if C_TabelaSaldoAtual.value < 0 then
        DMFinanceiro.Retirar(21,nLancamento,C_TabelaConta.value,
        dData,abs(C_TabelaSaldoAtual.value),0,1,'begin balance',0,
        '','',-1,0,'S');
    end;
  end
  else if not bAlteracao then begin
    if (C_TabelaSaldoAtual.value <> 0) then
      ContabilizaContasOutras(dData,C_TabelaSaldoAtual.value);
  end;
end;

procedure TDMContas.ContabilizaContasOutras;
var i,nIDLanc: integer;
begin
  nIDLanc := ContabilizaOutrasInicializa(dData);

  if (C_TiposContasTipo.value = 'A') or (C_TiposContasTipo.value = 'D') or (C_TiposContasTipo.value = 'S') then begin
    ContabilizaOutrasItens(nIDLanc,DMProjeto.ContaPadrao(5),nDiferenca);
    ContabilizaOutrasItens(nIDLanc,C_TabelaConta.value,nDiferenca * -1);
  end
  else begin
    ContabilizaOutrasItens(nIDLanc,DMProjeto.ContaPadrao(5),nDiferenca * -1);
    ContabilizaOutrasItens(nIDLanc,C_TabelaConta.value,nDiferenca);
  end;
end;

function TDMContas.ContabilizaOutrasInicializa;
var nID: integer;
begin
  nID := DMProjeto.NextIDGlobal;
  with DMProjeto.Q_Contabil do begin
    close;
    SQL.Text := 'insert into lancamentos(lancamento,referencia,origem,data,numero,idgerador,'+
    'usuario,data_audit,hora_audit) '+
    'values(:lancamento,:referencia,:origem,:data,:numero,:idgerador,'+
    ':usuario,:data_audit,:hora_audit) ';
    params[0].asinteger  := nID;
    params[1].asstring   := '';
    params[2].asinteger  := 21;
    params[3].asdatetime := dData;
    params[4].asstring   := '';
    params[5].asinteger  := nID;
    params[6].asinteger  := DMProjeto.nFuncionario;
    params[7].asdatetime := DMProjeto.dDataSistema;
    params[8].asstring   := copy(TimeToStr(time),1,5);
    ExecSQL;
  end;
  result := nID;
end;

function TDMContas.ContabilizaOutrasItens;
begin
  with DMProjeto.Q_Contabil do begin
    close;
    SQL.Text := 'insert into lancamentositens(lancamentoitem,lancamento,conta,favorecido,'+
    'valor,historico) '+
    'values(:lancamentoitem,:lancamento,:conta,:favorecido,:valor,:historico)';
    params[0].asinteger  := DMProjeto.NextIDGlobal;
    params[1].asinteger  := nIDLanc;
    params[2].asinteger  := nConta;
    params[3].asinteger  := 0;
    params[4].ascurrency := nValor;
    params[5].asstring   := 'begin balance';
    ExecSQL;
  end;
end;

procedure TDMContas.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  if pos('order by',Where) > 0 then
    Where := Where + ', descricao';
end;

procedure TDMContas.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if bAlteracao then begin
    if (C_Tabelatipoconta.value <> 0) and ((C_Tabelatipoconta.value <= 7) or (C_Tabelatipoconta.value >= 15)) then
      C_TabelaSaldoAtual.value := C_TabelaSaldo.value * -1
    else
      C_TabelaSaldoAtual.value := C_TabelaSaldo.value;
  end;
end;

procedure TDMContas.C_TabelaCODIGOREDUZIDOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistenciaConta(C_TabelaConta.value,'C',C_TabelaCODIGOREDUZIDO.value) then begin
    DlgMsg.ShowMsg(5001,['Conta']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMContas.C_TabelaUSUARIOCAIXAValidate(Sender: TField);
begin
  inherited;
  if VerificaExistenciaUsuario then begin
    DlgMsg.ShowMsg(6016);
    raise Exception.Create('@@');
  end;
end;

function TDMContas.VerificaExistenciaUsuario;
begin
  DMProjeto.Q_Contabil.close;
  DMProjeto.Q_Contabil.SQL.text := 'select conta from contas where tipoconta = 1 and usuariocaixa = :usuario and conta <> :conta';
  DMProjeto.Q_Contabil.params[0].asinteger := C_TabelaUsuarioCaixa.value;
  DMProjeto.Q_Contabil.params[1].asinteger := C_TabelaConta.value;
  DMProjeto.Q_Contabil.open;
  result := DMProjeto.Q_Contabil.FieldByName('conta').asinteger <> 0;
end;

function TDMContas.ContabilizaSaldos;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  if nSaldo > 0 then begin
    nContaDebito  := nConta;
    nContaCredito := DMProjeto.ContaPadrao(5);
  end
  else begin
    nContaDebito  := DMProjeto.ContaPadrao(5);
    nContaCredito := nConta;
  end;

  result := DMProjeto.Contabiliza(21,dData,0,0,
  nContaDebito,nContaCredito,nSaldo,'','Begin Balance');
end;

end.
