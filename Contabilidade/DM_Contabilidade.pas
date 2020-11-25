unit DM_Contabilidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, Db, Provider, IBUpdateSQL, DBClient, IBQuery, DlgMsg, Variants;

type
  TDMContabilidade = class(TDataModule)
    Q_Contabilidade: TIBQuery;
    C_Contabilidade: TClientDataSet;
    C_ContabilidadeLANCAMENTO: TIntegerField;
    C_ContabilidadeDATA: TDateField;
    C_ContabilidadeORIGEM: TIntegerField;
    C_ContabilidadeREFERENCIA: TStringField;
    C_ContabilidadeNUMERO: TStringField;
    C_ContabilidadeDATA_AUDIT: TDateField;
    C_ContabilidadeUSUARIO: TIntegerField;
    U_Contabilidade: TIBUpdateSQL;
    Q_PlanoConta: TIBQuery;
    Q_PlanoContaProvider: TDataSetProvider;
    C_PlanoConta: TClientDataSet;
    C_PlanoContaCONTAPAI: TIntegerField;
    C_PlanoContaSALDO: TBCDField;
    C_PlanoContaCODIGOREDUZIDO: TStringField;
    C_PlanoContaTIPOCONTA: TIntegerField;
    C_PlanoContaDS: TDataSource;
    Q_ContabilidadeItens: TIBQuery;
    C_ContabilidadeItens: TClientDataSet;
    C_ContabilidadeItensLANCAMENTOITEM: TIntegerField;
    C_ContabilidadeItensCONTA: TIntegerField;
    C_ContabilidadeItensVALOR: TBCDField;
    C_ContabilidadeItensHISTORICO: TStringField;
    C_ContabilidadeItensLANCAMENTO: TIntegerField;
    C_ContabilidadeItensDebito: TIBBCDField;
    C_ContabilidadeItensCredito: TIBBCDField;
    C_ContabilidadeItenslkConta: TStringField;
    C_ContabilidadeItensFAVORECIDO: TIntegerField;
    U_ContabilidadeItens: TIBUpdateSQL;
    Q_ContabilProvider: TDataSetProvider;
    Q_ContabilidadeDS: TDataSource;
    C_ContabilidadeHORA_AUDIT: TStringField;
    C_ContabilidadeQ_ContabilidadeItens: TDataSetField;
    DlgMsg: TDlgMsg;
    C_ContabilidadeIDGERADOR: TIntegerField;
    Q_Aux: TIBQuery;
    C_ContabilidadeItensREGISTRO: TIntegerField;
    C_ContabilidadeItensALTERAR: TIntegerField;
    C_ContabilidadeItensTIPOCONTA: TIntegerField;
    C_ContabilidadeItensDescTipo: TStringField;
    C_PlanoContaCONTA: TIntegerField;
    C_PlanoContaDESCRICAO: TStringField;
    C_PlanoContaDESCTIPO: TStringField;
    C_ContabilidadeItensFlag: TStringField;
    C_ContabilidadeItensFLAG_ID: TIntegerField;
    procedure C_ContabilidadeItensCONTAChange(Sender: TField);
    procedure C_ContabilidadeItensBeforePost(DataSet: TDataSet);
    procedure C_ContabilidadeItensNewRecord(DataSet: TDataSet);
    procedure C_ContabilidadeNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    nOrigem,nHistorico,nLancamento,nLancamentoItem,nRegistro,nIDGerador: integer;
    sHistorico: string;
    slRegistros: TStringList;
    nPreDep,nPrePag,nPreCheque: integer;
    bGerando,bContabiliza: boolean;
    function ContaLink(nID,nFlag_ID: integer;nFav: integer = 0): integer;
    function ContaAR(nID: integer): integer;
    function ContaAP(nID: integer): integer;
    function DescConta(nID: integer): string;
    procedure AtualizaConta;
    function FavCartao(nCartao: integer): integer;
    procedure AtualizaPlanoContas;
    procedure AtualizaValorContaPagar(nID:integer;nValorNominal:currency;C_DatasetContas:TClientDataSet);

    function ContabilizaPrincipal(nIDGerador,nOrigem:integer;sNumero:string;dData:TDateTime):integer;
    function ContabilizaItens(nLancamento,nConta,nFavorecido:integer;nValor:currency;sHistorico:string;nFlag_ID:integer = 0):integer;
  public
    procedure ContabilizaPayroll(xIDGerador: integer; C_Dataset, C_DatasetFuncs, C_DatasetPayItens:TClientDataSet);
    procedure ContabilizaReparcelamento(xIDGerador: integer; C_Dataset, C_DatasetParcelas, C_DatasetNovasParcelas:TClientDataSet);
    procedure ContabilizaDevolucoesFornecedores(xIDGerador: integer; C_Dataset, C_DatasetItens:TClientDataSet);
    procedure ContabilizaInvoicesEntradas(xIDGerador: integer; C_Dataset, C_DatasetItens:TClientDataSet);
    procedure ContabilizaRepasse(xIDGerador,nContaDebito,nContaCredito: integer; nValor: currency;C_Dataset:TClientDataSet);
    procedure ContabilizaAberturaCaixa(xIDGerador,nContaDebito,nContaCredito: integer; nValor: currency);
    procedure ContabilizaPagarParcelasRapido(xIDGerador, nContaPagar: integer; C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaPagamentoContasRapido(xIDGerador: integer; bPrePagamento: boolean;C_Dataset, C_DatasetContas, C_DatasetCheques, C_DatasetChequesLoja:TClientDataSet);
    procedure ContabilizaReceberParcelasRapido(xIDGerador,nContaReceber: integer; C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaReceberPagamentosRapido(xIDGerador: integer; bPrePagamento:boolean;C_Dataset, C_DatasetContas, C_DatasetCheques, C_DatasetCartoes, C_DatasetChequesElet:TClientDataSet);
    procedure ContabilizaConciliacao(xIDGerador,nContaDestino: integer; C_Dataset, C_DatasetDepositos:TClientDataSet);
    procedure ContabilizaAlterarContaCheques(xIDGerador,nContaOrigem,nContaDestino: integer; C_Dataset:TClientDataSet);
    procedure ContabilizaPgtoCartaoEmpresa(xIDGerador: integer; sNumero,sMemo: string; nCartao: integer; nValor: currency;C_Dataset, C_DatasetFatAtraso,C_DatasetAjustes:TClientDataSet);
    procedure ContabilizaDescontarCheques(xIDGerador: integer; C_Dataset:TClientDataSet);
    procedure ContabilizaTransferencias(xIDGerador: integer; dData: TDateTime; nContaOrigem,nContaDestino: integer; nValor: currency; sMemo: string);
    procedure ContabilizaDepositoCheques(xIDGerador: integer; C_Dataset, C_DatasetCheques:TClientDataSet);
    procedure ContabilizaAgendDespesasFixas(C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaContaAPagar(C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaEscreverCheque(xIDGerador: integer; bPrePagamento: boolean;C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaPagamentoContas(xIDGerador: integer; C_Dataset, C_DatasetTitulos, C_DatasetCheques, C_DatasetChequesLoja:TClientDataSet);
    procedure ContabilizaPagtoPayroll(xIDGerador,nPayroll: integer;dDataPagamento:TDateTime; C_DatasetFuncs:TClientDataSet);
    procedure ContabilizaParcelasAPagar(xIDGerador: integer; C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaFactoryEmpresa(xIDGerador: integer; C_Dataset, C_DatasetCheques:TClientDataSet);
    procedure ContabilizaAcertoCheque(xIDGerador,nFavorecido,nConta,nIDDoc: integer;nValor,nValorDespesa:currency);
    procedure ContabilizaResgateCheque(xIDGerador:integer;C_Dataset: TClientDataset;nValorDesconto:currency);
    procedure ContabilizaChequeDevolvido(xIDGerador,nFavorecido,nConta,nIDDoc: integer;nValor,nValorEncargo:currency);
    procedure ContabilizaCadastroChequesDev(xIDGerador:integer;C_Dataset:TClientDataSet);
    procedure ContabilizaFactory(xIDGerador,nFavorecido: integer;dData:TDateTime; C_Dataset, C_DatasetTerceiros:TClientDataSet);
    procedure ContabilizaReceberParcelas(xIDGerador: integer; C_Dataset, C_DatasetContas:TClientDataSet);
    procedure ContabilizaReceberPagamentos(xIDGerador: integer; C_Dataset, C_DatasetTitulos, C_DatasetCheques, C_DatasetCartoes, C_DatasetChequesElet:TClientDataSet);
    procedure ContabilizaReceberPagamentosCaixa(xIDGerador: integer; dData: TDateTime; nCliente,nConta: integer;
    nValorTroco,nValorDinh,nValorTEF,nValorOutro,nCreditoUtilizado,nCreditoGerado:currency;sDescCheque,sDescDinheiro,sDescTEF,sDescOutro:string;
    nContaTEF,nContaOutro: variant;
    C_DatasetTitulos, C_DatasetCheques, C_DatasetCartoes, C_DatasetChequesElet:TClientDataSet);
    procedure ContabilizaDevolucoesClientes(xIDGerador: integer; C_Dataset, C_DatasetItens:TClientDataSet);
    procedure ContabilizaInvoices(xIDGerador: integer; C_Dataset, C_DatasetItens:TClientDataSet);
    procedure ContabilizaAjustesItens(xIDGerador: integer; C_Dataset:TClientDataSet);
    procedure ContabilizaFechamentoBalanco(xIDGerador: integer; C_Dataset:TClientDataSet);
    //
    procedure ContabilizaPadrao(sForm: string);
    function Salvar(xIDGerador: integer):boolean;
    procedure FechaDatasets;
    procedure SetPrePagamentoDep(xPrePagamento:boolean);
    procedure SetPrePagamentoRet(xPrePagamento:boolean);
    procedure SetPrePagamentoCheque(xPrePagamento:boolean);
    function ContaFlag(sFlag:string):integer;

    procedure SangriaAjustaValorNominal(C_Dataset,C_DatasetContas: TClientDataSet);
    procedure CancelarLancamentos(sIDGerador: string);
    procedure Iniciar;
  end;

var
  DMContabilidade: TDMContabilidade;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMContabilidade.C_ContabilidadeItensCONTAChange(Sender: TField);
begin
//  if C_ContabilidadeItensTipoConta.IsNull then
  if C_ContabilidadeItensCONTA.value <> C_PlanoContaConta.value then
    C_PlanoConta.locate('conta',C_ContabilidadeItensCONTA.value,[]);
  C_ContabilidadeItensTipoConta.value := C_PlanoContaTipoConta.value;
  C_ContabilidadeItensDescTipo.value := C_PlanoContaDescTipo.value;

  if not bGerando then begin
    if slRegistros.IndexOfName(C_ContabilidadeItensRegistro.asstring) = -1 then
      slRegistros.Add(C_ContabilidadeItensRegistro.asstring+'='+C_ContabilidadeItensCONTA.AsString)
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensCONTA.AsString;
  end;
end;

procedure TDMContabilidade.C_ContabilidadeItensBeforePost(
  DataSet: TDataSet);
begin
  C_ContabilidadeItensDebito.value := 0;
  C_ContabilidadeItensCredito.value := 0;
  if C_ContabilidadeItensValor.value > 0 then
    C_ContabilidadeItensCredito.value := C_ContabilidadeItensValor.value
  else
    C_ContabilidadeItensDebito.value := abs(C_ContabilidadeItensValor.value);
end;

procedure TDMContabilidade.C_ContabilidadeItensNewRecord(
  DataSet: TDataSet);
begin
  inc(nLancamentoItem);
  inc(nRegistro);
  C_ContabilidadeItensLancamentoItem.value := nLancamentoItem;
  C_ContabilidadeItensRegistro.value := nRegistro;
end;

procedure TDMContabilidade.C_ContabilidadeNewRecord(DataSet: TDataSet);
begin
  inc(nLancamento);
  C_ContabilidadeLancamento.value := nLancamento;
//  C_ContabilidadeIDGerador.value  := nIDGerador;
  C_ContabilidadeOrigem.value     := nOrigem;

  if nIDGerador > 0 then
    C_ContabilidadeIDGerador.value := nIDGerador
  else
    C_ContabilidadeIDGerador.AsVariant := null;
  C_ContabilidadeUsuario.value    := DMProjeto.nFuncionario;
  C_ContabilidadeData_Audit.value := DMProjeto.dDataSistema;
  C_ContabilidadeHora_Audit.value := copy(TimeToStr(time),1,5);

end;

function TDMContabilidade.Salvar;
var nDebito,nCredito: currency;
    bContaZerada:boolean;
begin
  result := true;
  exit;

  nIDGerador := xIDGerador;
  try
    if not DMProjeto.bBrasil then begin
//      C_Contabilidade.Filtered := false;
      C_ContabilidadeItens.filtered := false;

      nDebito := 0;
      nCredito := 0;
      bContaZerada := false;
      C_ContabilidadeItens.first;
      while not C_ContabilidadeItens.eof do begin
        if C_ContabilidadeItensValor.value = 0 then
          C_ContabilidadeItens.delete
        else
          C_ContabilidadeItens.next;
      end;
      C_ContabilidadeItens.first;
      while not C_ContabilidadeItens.eof do begin
        if C_ContabilidadeItensValor.value > 0 then
          nCredito := nCredito + C_ContabilidadeItensValor.value
        else
          nDebito := nDebito + abs(C_ContabilidadeItensValor.value);

        if C_ContabilidadeItensConta.value <= 0 then
          bContaZerada := true;
        C_ContabilidadeItens.next;
      end;
      C_ContabilidadeItens.first;
      if nCredito <> nDebito then begin
        if DMProjeto.bNaoSalvarDifContab then begin
          DlgMsg.ShowMsg(3051);
          result := false;
          exit;
        end
        else begin
          DlgMsg.ShowMsg(3051);
          DMProjeto.GeraLog('Contabilidade','Diferencas:'+IntToStr(nIDGerador)+' Origem:'+C_ContabilidadeOrigem.asstring);
  //        result := false;
  //        exit;
        end;
      end;

      if bContaZerada then
        DlgMsg.ShowMsg(6007);


{      C_Contabilidade.first;
      while not C_Contabilidade.eof do begin
        C_Contabilidade.edit;
        if nIDGerador > 0 then
          C_ContabilidadeIDGerador.value := nIDGerador
        else
          C_ContabilidadeIDGerador.AsVariant := null;
        C_ContabilidadeUsuario.value    := DMProjeto.nFuncionario;
        C_ContabilidadeData_Audit.value := DMProjeto.dDataSistema;
        C_ContabilidadeHora_Audit.value := copy(TimeToStr(time),1,5);
        C_Contabilidade.post;

        C_Contabilidade.next;
      end;}

      DMProjeto.GenerateIDs(C_Contabilidade,'lancamento');
      DMProjeto.GenerateIDs(C_ContabilidadeItens,'lancamentoitem');

      if C_ContabilidadeItens.state in [dsedit,dsinsert] then
        C_ContabilidadeItens.post;
      if C_Contabilidade.state in [dsedit,dsinsert] then
        C_Contabilidade.post;


      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      C_Contabilidade.ApplyUpdates(-1);

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      C_Contabilidade.close;
      C_ContabilidadeItens.close;
    end;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(3079,[e.message]);
      result := false;
    end;
  end;
end;

procedure TDMContabilidade.ContabilizaPadrao;
begin
  bContabiliza := false;
  exit;

  nLancamento := -8888;
  nLancamentoItem := -9999;
  nRegistro := 0;

  nOrigem := DMProjeto.TipoOrigem(sForm);
  nHistorico := DMProjeto.HistoricoPadraoOrigem(nOrigem);
  sHistorico := DMProjeto.HistoricoPadrao(nHistorico);

  bContabiliza := true;

  if not C_Contabilidade.Active then
    slRegistros.Clear;

  if not C_Contabilidade.Active or
    // caso seja primeira chamada para abertura dos datasets

    (C_ContabilidadeItens.Active and (C_ContabilidadeItensLancamentoItem.value = 0)) or
    // caso já tenha chamado a contabilidade e não houve nehuma conta contabilizada

    ((C_ContabilidadeIDGerador.value > 0) {<=} {<> -8888} and (C_ContabilidadeIDGerador.value <> nIDGerador)) then begin
    // caso já tenha chamado a contabilidade e não houve nehuma conta contabilizada
    C_Contabilidade.close;
    C_Contabilidade.FetchParams;
    C_Contabilidade.Params[0].asinteger := nIDGerador;
    C_Contabilidade.Open;

    if C_ContabilidadeLancamento.value > 0 then
      nLancamento := C_ContabilidadeLancamento.value;

    C_ContabilidadeItens.close;
    C_ContabilidadeItens.open;

//    if C_ContabilidadeItensLancamentoItem.value > 0 then
//      bContabiliza := false;
    if not C_ContabilidadeItens.eof then
      slRegistros.Clear;
    while not C_ContabilidadeItens.eof do begin
      slRegistros.Add(C_ContabilidadeItensRegistro.asstring+'='+C_ContabilidadeItensConta.asstring);
      C_ContabilidadeItens.edit;
      C_ContabilidadeItensDebito.value := 0;
      C_ContabilidadeItensCredito.value := 0;
      if C_ContabilidadeItensValor.value > 0 then
        C_ContabilidadeItensCredito.value := C_ContabilidadeItensValor.value
      else
        C_ContabilidadeItensDebito.value := abs(C_ContabilidadeItensValor.value);
      C_ContabilidadeItens.next;
    end;
  end;
  C_ContabilidadeItens.filtered := false;
  C_ContabilidadeItens.first;
  while not C_ContabilidadeItens.eof do
    C_ContabilidadeItens.delete;

  C_Contabilidade.first;
  while not C_Contabilidade.eof do
    C_Contabilidade.delete;

end;


//*************************************************************
//* ITENS: Ajustes de Itens
//* Data:  09/08/2001
//* Autor: Adriano
//*************************************************************
procedure TDMContabilidade.ContabilizaAjustesItens;
var
  nValor : Currency;
begin
  nIDGerador := xIDGerador;
  ContabilizaPadrao('FrmAjustesItens');

  if not bContabiliza then
    exit;

  bGerando := true;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  nValor := (C_Dataset.FieldByName('Quantidade').asCurrency * C_Dataset.FieldByName('Fator').asCurrency) *
             C_Dataset.FieldByName('Custo').ascurrency;

  // Conta de Inventário
  C_ContabilidadeItens.append;
  if nHistorico <= 0 then
    C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Descricao').AsString
  else
    C_ContabilidadeItensHistorico.value := sHistorico+' '+C_Dataset.FieldByName('Descricao').AsString;

  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(6);
  C_ContabilidadeItensValor.value := abs(nValor);
  if C_Dataset.FieldByName('Quantidade').AsFloat > 0 then
    C_ContabilidadeItensValor.value := (nValor) * -1;

  AtualizaConta;

  // Conta de Ajuste de Item
  C_ContabilidadeItens.append;
  if nHistorico <= 0 then
    C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Descricao').AsString
  else
    C_ContabilidadeItensHistorico.value := sHistorico+' '+C_Dataset.FieldByName('Descricao').AsString;

  C_ContabilidadeItensConta.value := C_Dataset.FieldByName('Conta').asinteger;
  C_ContabilidadeItensValor.value := (nValor);
  C_ContabilidadeItensAlterar.value := 1;
  C_ContabilidadeItens.post;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;

  bGerando := false;
  nRegistro := 0;
end;

//*************************************************************
//* ITENS: Fechamento de Balanço
//* Data:  11/08/2001
//* Autor: Adriano
//*************************************************************
procedure TDMContabilidade.ContabilizaFechamentoBalanco;
var nLancAtual: integer;
begin
  nIDGerador := xIDGerador;
  ContabilizaPadrao('DlgFechamentoBalanco');

  if not bContabiliza then
    exit;

  nOrigem := DMProjeto.TipoOrigem('FrmAjustesItens');
  nHistorico := DMProjeto.HistoricoPadraoOrigem(nOrigem);
  sHistorico := DMProjeto.HistoricoPadrao(nHistorico);


  bGerando := true;
  C_Dataset.first;
  while not C_Dataset.eof do begin
    C_Contabilidade.append;
    C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
    C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;

    C_Contabilidade.Post;

    if C_Dataset.FieldByName('ajusteitem').asinteger = nIDGerador then
      nLancAtual := nLancamento;
    // Conta de Inventário
    C_ContabilidadeItens.append;
    if nHistorico <= 0 then
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Descricao').AsString
    else
      C_ContabilidadeItensHistorico.value := sHistorico+' '+C_Dataset.FieldByName('Descricao').AsString;

    if C_Dataset.FieldByName('Quantidade').asfloat > 0 then begin
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(6);
      C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Quantidade').asfloat * C_Dataset.FieldByName('Fator').asCurrency * C_Dataset.FieldByName('Custo').ascurrency) * -1;
    end
    else begin
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(6);
      C_ContabilidadeItensValor.value := abs(C_Dataset.FieldByName('Quantidade').asfloat * C_Dataset.FieldByName('Fator').asCurrency * C_Dataset.FieldByName('Custo').ascurrency);
    end;
    C_ContabilidadeItensAlterar.value := 1;

    // Conta de Ajuste de Item
    C_ContabilidadeItens.append;
    if nHistorico <= 0 then
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Descricao').AsString
    else
      C_ContabilidadeItensHistorico.value := sHistorico+' '+C_Dataset.FieldByName('Descricao').AsString;

    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('Conta').asinteger;
    C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Quantidade').asfloat * C_Dataset.FieldByName('Fator').asCurrency * C_Dataset.FieldByName('Custo').ascurrency);
    C_ContabilidadeItensAlterar.value := 1;

    C_Dataset.next;
  end;
  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;

  C_Contabilidade.locate('lancamento',nLancAtual,[]);
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaInvoices;
var nTotalImposto: currency;
begin
  nIDGerador := xIDGerador;
  ContabilizaPadrao('FrmInvoices');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetItens.state in [dsEdit,dsInsert] then
    C_DatasetItens.post;

  bGerando := true;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;
  // Contabilidade dos Itens
  nTotalImposto := C_Dataset.FieldByName('Imposto').AsCurrency + C_Dataset.FieldByName('Imposto_Incluso').AsCurrency;

  // D - Account Receivable (-)
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(9);
  if not C_Dataset['F_Conta'] <> null then
    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('F_Conta').AsInteger
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);

  AtualizaConta;

  C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Total').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -1;

  // C - Sales Tax (+)
  if nTotalImposto > 0 then begin
    Q_Aux.SQL.text := 'select ta.descricao,f.conta,t.percentual as perctotal, ta.percentual, ta.fornecedor '+
    'from taxs t inner join taxsitens ti on t.tax = ti.tax '+
    'inner join taxagencias ta on  ti.taxagencia = ta.taxagencia '+
    'left join favorecidos f on ta.fornecedor = f.favorecido '+
    'where ti.tax = :tax';
    Q_Aux.params[0].asinteger := C_Dataset.FieldByName('tax').asinteger;
    Q_Aux.open;
    while not Q_Aux.eof do begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := Q_Aux.FieldByName('descricao').asstring;
      if Q_Aux.FieldByName('Conta').AsInteger > 0 then
        C_ContabilidadeItensConta.value      := Q_Aux.FieldByName('Conta').AsInteger
      else
        C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(23);
      C_ContabilidadeItensValor.value      := (((Q_Aux.FieldByName('percentual').AsCurrency * 100)/Q_Aux.FieldByName('perctotal').AsCurrency) * nTotalImposto)/100;
      C_ContabilidadeItensFavorecido.value := Q_Aux.FieldByName('Fornecedor').AsInteger;

      AtualizaConta;

      Q_Aux.next;
    end;
    Q_Aux.close;

    if C_Dataset.FieldByName('Imposto_Incluso').AsCurrency > 0 then begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := DescConta(31);
      C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(31);
      C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Imposto_Incluso').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      AtualizaConta;
    end;

  end;

  // Itens
  C_DatasetItens.first;
  nRegistro := 1000;
  while not C_DatasetItens.eof do begin
    if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 0 then begin // Produção
      // C - Sales (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('ContaVenda').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 1 then begin // Inventário
      // C - Sales (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('ContaVenda').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      // C - Inventory (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Invent').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('Quantidade').AsFloat * C_DatasetItens.FieldByName('Fator').AsFloat * C_DatasetItens.FieldByName('CustoMedio').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      // D - COGS (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger;
      C_ContabilidadeItensValor.value := (C_DatasetItens.FieldByName('Quantidade').AsFloat * C_DatasetItens.FieldByName('Fator').AsFloat * C_DatasetItens.FieldByName('CustoMedio').AsCurrency) * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 2 then begin // Sem Iventário
      // C - Sales (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(8);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 3 then begin // Serviços
      // C - Sales (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(8);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 5 then begin // Encargos
      // C - Sales (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 6 then begin // Descontos
      // C - Descontos
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetItens.next;
  end;
  nRegistro := 2000;
  // D - Desconto de Pé de Nota
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(1);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(1);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Desconto').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Frete
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(3);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(3);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Frete').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Despesas
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(16);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(16);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutrasDespesas').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(4);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(4);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Juros').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetItens.edit;
end;

procedure TDMContabilidade.ContabilizaDevolucoesClientes;
var nTotalImposto: currency;
begin
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmDevolucoesClientes');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetItens.state in [dsEdit,dsInsert] then
    C_DatasetItens.post;

  bGerando := true;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;
  // Contabilidade dos Itens
  nTotalImposto := C_Dataset.FieldByName('Imposto').AsCurrency + C_Dataset.FieldByName('Imposto_Incluso').AsCurrency;

  // C - Customers Credit (+)
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(13);
//  if not C_Dataset['F_Conta'] <> null then
//    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('F_Conta').AsInteger
//  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(13);

  AtualizaConta;

  C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Total').AsCurrency);
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -1;

  // D - Sales Tax (-)
  if nTotalImposto > 0 then begin
    Q_Aux.SQL.text := 'select ta.descricao,f.conta,t.percentual as perctotal, ta.percentual, ta.fornecedor '+
    'from taxs t inner join taxsitens ti on t.tax = ti.tax '+
    'inner join taxagencias ta on  ti.taxagencia = ta.taxagencia '+
    'left join favorecidos f on ta.fornecedor = f.favorecido '+
    'where ti.tax = :tax';
    Q_Aux.params[0].asinteger := C_Dataset.FieldByName('tax').asinteger;
    Q_Aux.open;
    while not Q_Aux.eof do begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := Q_Aux.FieldByName('descricao').asstring;
      if Q_Aux.FieldByName('Conta').AsInteger > 0 then
        C_ContabilidadeItensConta.value      := Q_Aux.FieldByName('Conta').AsInteger
      else
        C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(23);
      C_ContabilidadeItensValor.value      := ((((Q_Aux.FieldByName('percentual').AsCurrency * 100)/Q_Aux.FieldByName('perctotal').AsCurrency) * nTotalImposto)/100) * -1;
      C_ContabilidadeItensFavorecido.value := Q_Aux.FieldByName('Fornecedor').AsInteger;

      AtualizaConta;

      Q_Aux.next;
    end;
    Q_Aux.close;

    if C_Dataset.FieldByName('Imposto_Incluso').AsCurrency > 0 then begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := DescConta(31);
      C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(31);
      C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Imposto_Incluso').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      AtualizaConta;
    end;

  end;

  // Itens
  C_DatasetItens.first;
  nRegistro := 1000;
  while not C_DatasetItens.eof do begin
    if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 0 then begin // Produção
      // D - Sales (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 1 then begin // Inventário
      // D - Sales (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      // D - Inventory (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Invent').AsInteger;
      C_ContabilidadeItensValor.value := (C_DatasetItens.FieldByName('Quantidade').AsFloat * C_DatasetItens.FieldByName('Fator').AsFloat * C_DatasetItens.FieldByName('CustoMedio').AsCurrency) * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      // C - COGS (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger;
      C_ContabilidadeItensValor.value := (C_DatasetItens.FieldByName('Quantidade').AsFloat * C_DatasetItens.FieldByName('Fator').AsFloat * C_DatasetItens.FieldByName('CustoMedio').AsCurrency);
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 2 then begin // Sem Iventário
      // D - Sales (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(8);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 3 then begin // Serviços
      // D - Sales (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(8);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 5 then begin // Encargos
      // D - Sales (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 6 then begin // Descontos
      // C - Descontos
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotalItem').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetItens.next;
  end;
  nRegistro := 2000;
  // C - Desconto de Pé de Nota
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(1);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(1);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Desconto').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Frete
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(3);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(3);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Frete').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Despesas
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(16);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(16);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutrasDespesas').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(4);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(4);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Juros').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetItens.edit;
end;

procedure TDMContabilidade.ContabilizaReceberPagamentos;
var nContaAR: integer;
    nPagamento,nValorDinheiro,nTroco: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDepositos');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetTitulos.state in [dsEdit,dsInsert] then
    C_DatasetTitulos.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;
  if C_DatasetCartoes.state in [dsEdit,dsInsert] then
    C_DatasetCartoes.post;
  if C_DatasetChequesElet.state in [dsEdit,dsInsert] then
    C_DatasetChequesElet.post;

    {  if C_ContabilidadeLancamento.value <> 0 then
    C_Contabilidade.edit
  else}
    C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Titulos
  C_DatasetTitulos.first;
  nRegistro := 1000;
  while not C_DatasetTitulos.eof do begin
    if C_DatasetTitulos.FieldByName('_icSelecionado').asInteger = 1 then begin
      if C_DatasetTitulos.FieldByName('Pagamento').AsCurrency > C_DatasetTitulos.FieldByName('ValorAReceber').AsCurrency then
        nPagamento := C_DatasetTitulos.FieldByName('ValorAReceber').AsCurrency + C_DatasetTitulos.FieldByName('Juros').AsCurrency
      else
        nPagamento := C_DatasetTitulos.FieldByName('Pagamento').AsCurrency;
      if C_DatasetTitulos.FieldByName('Venda').asInteger > 0 then
        nContaAR := ContaAR(C_DatasetTitulos.FieldByName('Venda').asInteger)
      else
        nContaAR := ContaAR(C_DatasetTitulos.FieldByName('ID').asInteger);


     // C - Account Receivable
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := DescConta(9)
      else
        C_ContabilidadeItensHistorico.value := sHistorico;

      if nContaAR > 0 then
        C_ContabilidadeItensConta.value := nContaAR
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
      C_ContabilidadeItensValor.value := nPagamento - C_DatasetTitulos.FieldByName('Juros').AsCurrency + C_DatasetTitulos.FieldByName('Descontos').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      C_ContabilidadeItensFlag_ID.value := C_DatasetTitulos.FieldByName('ID').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Desconto
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(1);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Descontos').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;

      // C - Juros
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(4);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Juros').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetTitulos.next;
  end;
  nRegistro := 2000;

  nTroco := C_Dataset.FieldByName('Troco').AsCurrency;
  // D - Cheques
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccheque').asstring;
    if C_DatasetCheques.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCheques.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := (C_DatasetCheques.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
    C_DatasetCheques.next;
  end;
  // D - Cheques Elet.
  C_DatasetChequesElet.first;
  while not C_DatasetChequesElet.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetChequesElet.FieldByName('descconvenio').asstring;
    if C_DatasetChequesElet.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetChequesElet.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := (C_DatasetChequesElet.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
    C_DatasetChequesElet.next;
  end;

  nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
  if C_Dataset.FieldByName('ValorDinheiro').AsCurrency > 0 then begin
    if nTroco > C_Dataset.FieldByName('ValorDinheiro').AsCurrency then begin
      nValorDinheiro := 0;
      nTroco := nTroco - C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
    end
    else begin
      nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency - nTroco;
      nTroco := 0;
    end;

    if nTroco < 0 then
      nTroco := 0;
  end;
  // D - Dinheiro
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('descdinheiro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('conta').asinteger;
  C_ContabilidadeItensValor.value      := (nValorDinheiro) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Tef
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontatef').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contatef').AsInteger;
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('valortef').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Outros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontaoutros').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contaoutro').AsInteger;
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('OutroValor').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Utilizou Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('CreditoUtilizado').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  AtualizaConta;
  // D - Cartão Crédito
  C_DatasetCartoes.first;
  while not C_DatasetCartoes.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetCartoes.FieldByName('desccartao').asstring;
    if C_DatasetCartoes.FieldByName('contacartao').AsInteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCartoes.FieldByName('contacartao').AsInteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').AsInteger;
    C_ContabilidadeItensValor.value      := (C_DatasetCartoes.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCartoes.next;
  end;

  // C - Troco
  if nTroco > 0 then begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := 'troco';
    C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('conta').AsInteger;
    C_ContabilidadeItensValor.value      := nTroco;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
  end;
  // C - Crédito Gerado
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoGerado').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
//  C_ContabilidadeItens.post;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  if C_DatasetTitulos.recordcount > 0 then
    C_DatasetTitulos.edit;
  if C_DatasetCheques.recordcount > 0 then
    C_DatasetCheques.edit;
  if C_DatasetCartoes.recordcount > 0 then
    C_DatasetCartoes.edit;
  if C_DatasetChequesElet.recordcount > 0 then
    C_DatasetChequesElet.edit;
end;

procedure TDMContabilidade.ContabilizaReceberPagamentosCaixa;
var nContaAR: integer;
    nPagamento,nValorDinheiro,nTroco: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDepositos');

  if not bContabiliza then
    exit;

  if C_DatasetTitulos.state in [dsEdit,dsInsert] then
    C_DatasetTitulos.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;
  if C_DatasetCartoes.state in [dsEdit,dsInsert] then
    C_DatasetCartoes.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := dData;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Titulos
  C_DatasetTitulos.first;
  nRegistro := 1000;
  while not C_DatasetTitulos.eof do begin
    if C_DatasetTitulos.FieldByName('_icSelecionado').asInteger = 1 then begin
      if C_DatasetTitulos.FieldByName('Pagamento').AsCurrency > C_DatasetTitulos.FieldByName('ValorAReceber').AsCurrency then
        nPagamento := C_DatasetTitulos.FieldByName('ValorAReceber').AsCurrency + C_DatasetTitulos.FieldByName('Juros').AsCurrency
      else
        nPagamento := C_DatasetTitulos.FieldByName('Pagamento').AsCurrency;
      if C_DatasetTitulos.FieldByName('Venda').asInteger > 0 then
        nContaAR := ContaAR(C_DatasetTitulos.FieldByName('Venda').asInteger)
      else
        nContaAR := ContaAR(C_DatasetTitulos.FieldByName('ID').asInteger);


     // C - Account Receivable
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := DescConta(9)
      else
        C_ContabilidadeItensHistorico.value := sHistorico;

      if nContaAR > 0 then
        C_ContabilidadeItensConta.value := nContaAR
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
      C_ContabilidadeItensValor.value := nPagamento - C_DatasetTitulos.FieldByName('Juros').AsCurrency + C_DatasetTitulos.FieldByName('Descontos').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      C_ContabilidadeItensFlag_ID.value := C_DatasetTitulos.FieldByName('ID').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Desconto
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(1);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Descontos').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;

      // C - Juros
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(4);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Juros').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Cliente').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetTitulos.next;
  end;
  nRegistro := 2000;

  nTroco := nValorTroco;
  // D - Cheques
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := sDescCheque;
    if C_DatasetCheques.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCheques.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := nConta;

    C_ContabilidadeItensValor.value      := (C_DatasetCheques.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := nCliente;
    C_ContabilidadeItensAlterar.value := 1;
    C_DatasetCheques.next;
  end;

  // D - Cheques Elet.
  C_DatasetChequesElet.first;
  while not C_DatasetChequesElet.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetChequesElet.FieldByName('descconvenio').asstring;
    if C_DatasetChequesElet.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetChequesElet.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := nConta;

    C_ContabilidadeItensValor.value      := (C_DatasetChequesElet.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := nCliente;
    C_ContabilidadeItensAlterar.value := 1;
    C_DatasetChequesElet.next;
  end;

  nValorDinheiro := nValorDinh;
  if nValorDinh > 0 then begin
    if nTroco > nValorDinh then begin
      nValorDinheiro := 0;
      nTroco := nTroco - nValorDinh;
    end
    else begin
      nValorDinheiro := nValorDinh - nTroco;
      nTroco := 0;
    end;

    if nTroco < 0 then
      nTroco := 0;
  end;
  // D - Dinheiro
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := sDescDinheiro;
  C_ContabilidadeItensConta.value      := nConta;
  C_ContabilidadeItensValor.value      := (nValorDinheiro) * -1;
  C_ContabilidadeItensFavorecido.value := nCliente;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Tef
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := sDescTEF;
  C_ContabilidadeItensConta.asvariant  := nContaTEF;
  C_ContabilidadeItensValor.value      := (nValorTEF) * -1;
  C_ContabilidadeItensFavorecido.value := nCliente;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Outros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := sDescOutro;
  C_ContabilidadeItensConta.asvariant  := nContaOutro;
  C_ContabilidadeItensValor.value      := (nValorOutro) * -1;
  C_ContabilidadeItensFavorecido.value := nCliente;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Utilizou Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := (nCreditoUtilizado) * -1;
  C_ContabilidadeItensFavorecido.value := nCliente;
  AtualizaConta;
  // D - Cartão Crédito
  C_DatasetCartoes.first;
  while not C_DatasetCartoes.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetCartoes.FieldByName('lkcartao').asstring;
    if C_DatasetCartoes.FieldByName('contacartao').AsInteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCartoes.FieldByName('contacartao').AsInteger
    else
      C_ContabilidadeItensConta.value    := nConta;
    C_ContabilidadeItensValor.value      := (C_DatasetCartoes.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := nCliente;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCartoes.next;
  end;

  // C - Troco
  if nTroco > 0 then begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := 'troco';
    C_ContabilidadeItensConta.value      := nConta;
    C_ContabilidadeItensValor.value      := nTroco;
    C_ContabilidadeItensFavorecido.value := nCliente;
    C_ContabilidadeItensAlterar.value := 1;
  end;
  // C - Crédito Gerado
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := nCreditoGerado;
  C_ContabilidadeItensFavorecido.value := nCliente;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  if C_DatasetCheques.recordcount > 0 then
    C_DatasetCheques.edit;
  if C_DatasetCartoes.recordcount > 0 then
    C_DatasetCartoes.edit;
  if C_DatasetChequesElet.recordcount > 0 then
    C_DatasetChequesElet.edit;
end;

procedure TDMContabilidade.ContabilizaReceberParcelas;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmA_Receber');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Competencia').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Titulo').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // D - Account Receivable
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(9);
  if C_Dataset.FieldByName('contaareceber').Asinteger > 0 then
    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contaareceber').Asinteger
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Cliente').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -1;
  AtualizaConta;

  // C - Contas Operação
  C_DatasetContas.first;
  nRegistro := 1000;
  while not C_DatasetContas.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetContas.FieldByName('historico').asstring;
    C_ContabilidadeItensConta.value := C_DatasetContas.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_DatasetContas.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_DatasetContas.FieldByName('ClienteRef').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetContas.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaFactory;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgFactory');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetTerceiros.state in [dsEdit,dsInsert] then
    C_DatasetTerceiros.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := dData;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Cheques
  C_Dataset.first;
  nRegistro := 1000;
  while not C_Dataset.eof do begin
    if C_Dataset.FieldByName('_icSelecionado').asInteger = 1 then begin
      // C - Account Receivable (Cheque Pré-datado)
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico
      else
        C_ContabilidadeItensHistorico.value := DescConta(9);
      if C_Dataset.FieldByName('ContaReceber').asinteger > 0 then
        C_ContabilidadeItensConta.value := C_Dataset.FieldByName('ContaReceber').asinteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Account Receivable (Valor a Receber)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(9);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('ValorAReceber').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;

      // D - Juros Pagos
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(18);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(18);
      C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Valor').AsCurrency - C_Dataset.FieldByName('ValorAReceber').AsCurrency) * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;
    end;
    C_Dataset.next;
  end;

  // Cheques de Terceiros
  C_DatasetTerceiros.first;
  nRegistro := 1000;
  while not C_DatasetTerceiros.eof do begin
    // C - Emprestimos
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := DescConta(19);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(19);
    C_ContabilidadeItensValor.value := C_DatasetTerceiros.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_DatasetTerceiros.FieldByName('origem').Asinteger;
    AtualizaConta;

    // D - Account Receivable (Valor a Receber)
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := DescConta(9);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
    C_ContabilidadeItensValor.value := C_DatasetTerceiros.FieldByName('ValorAReceber').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_DatasetTerceiros.FieldByName('origem').AsInteger;
    AtualizaConta;

    // D - Juros Pagos
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := DescConta(18);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(18);
    C_ContabilidadeItensValor.value := (C_DatasetTerceiros.FieldByName('Valor').AsCurrency - C_DatasetTerceiros.FieldByName('ValorAReceber').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_DatasetTerceiros.FieldByName('origem').AsInteger;
    AtualizaConta;
    C_DatasetTerceiros.next;
  end;
  nRegistro := 2000;


  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetTerceiros.edit;
end;

procedure TDMContabilidade.ContabilizaChequeDevolvido;
var nContaAReceber: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDevolucaoCheques');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Cheque
  nRegistro := 1000;
  // C - Account Receivable
{  Q_Aux.close;
  Q_Aux.SQL.text := 'select contareceber from depositosdoc where iddoc = :nIdDoc';
  Q_Aux.params[0].asinteger := nIDDoc;
  Q_Aux.Open;
  nContaAReceber := Q_Aux.FieldByName('contareceber').AsInteger;}

  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(9);
  C_ContabilidadeItensConta.value := nConta;
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensAlterar.value := 1;

  // D - Caixa
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(15);

  if DMProjeto.ContaPadrao(17) > 0 then
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(17)
  else
    C_ContabilidadeItensConta.value := 1;
  C_ContabilidadeItensValor.value := nValor * -1;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensFlag_ID.value := -3;
  C_ContabilidadeItensAlterar.value := 1;

  // C - Despesas com taxas e juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(15);
  C_ContabilidadeItensConta.value := nConta;
  C_ContabilidadeItensValor.value := nValorEncargo;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensAlterar.value := 1;

  // D - Despesas com taxas e juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(20);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(20);
  C_ContabilidadeItensValor.value := nValorEncargo * -1;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaCadastroChequesDev;
var nContaAReceber: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDevolucaoCheques');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Cheque
  nRegistro := 1000;
  // C - Account Receivable
{  Q_Aux.close;
  Q_Aux.SQL.text := 'select contareceber from depositosdoc where iddoc = :nIdDoc';
  Q_Aux.params[0].asinteger := nIDDoc;
  Q_Aux.Open;
  nContaAReceber := Q_Aux.FieldByName('contareceber').AsInteger;}

  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(17);
  C_ContabilidadeItensConta.value := 1;
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').value * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
  C_ContabilidadeItensAlterar.value := 1;

  if C_Dataset.FieldByName('Devolvido').asstring <> 'S' then begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(24);
    if C_Dataset.FieldByName('contareceita').asinteger > 0 then
      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contareceita').asinteger
    else
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(24);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').value;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
    C_ContabilidadeItensAlterar.value := 1;
  end;

  if C_Dataset.FieldByName('Devolvido').asstring = 'S' then begin
    // C - Conta Banco
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico;

    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').value;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
    C_ContabilidadeItensAlterar.value := 1;

    // C - Despesas com taxas e juros
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := DescConta(15);
    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('taxas').value;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
    C_ContabilidadeItensAlterar.value := 1;

    // D - Despesas com taxas e juros
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := DescConta(20);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(20);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('taxas').value * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
    AtualizaConta;

    // D - Caixa
{    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico;

    C_ContabilidadeItensConta.value := 1;
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').value * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').asinteger;
    C_ContabilidadeItensAlterar.value := 1;}
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaAcertoCheque;
var nContaAReceber: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDevolucaoCheques');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Cheque
  nRegistro := 1000;

  // C - Contas a Receber
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := sHistorico;
  if DMProjeto.ContaPadrao(17) > 0 then
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(17)
  else
    C_ContabilidadeItensConta.value := 1;
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensAlterar.value := 1;

  // D - Caixa
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := 1;
  C_ContabilidadeItensValor.value := nValor * -1;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensAlterar.value := 1;

  // D - Caixa
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(15);
  C_ContabilidadeItensConta.value := 1;
  C_ContabilidadeItensValor.value := nValorDespesa * -1;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  C_ContabilidadeItensAlterar.value := 1;

  // C - taxas, juros e multa
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(4);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
  C_ContabilidadeItensValor.value := nValorDespesa;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaResgateCheque;
var nContaAReceber: integer;
    nTotalCheques: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgTrocaCheques');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Cheque
  nRegistro := 1000;

  // C - Contas a Receber
  nTotalCheques := 0;
  C_Dataset.first;
  while not C_Dataset.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := sHistorico;
    if C_Dataset.FieldByName('ContaReceber').AsInteger > 0 then
      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('ContaReceber').AsInteger
    else
      C_ContabilidadeItensConta.value := 1;
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    nTotalCheques := nTotalCheques + C_Dataset.FieldByName('Valor').AsCurrency;
    C_Dataset.next;
  end;
  // D - Desconto
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(1);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
  C_ContabilidadeItensValor.value := nValorDesconto * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  AtualizaConta;

  // D - Contas a Receber
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(9);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
  C_ContabilidadeItensValor.value := (nTotalCheques - nValorDesconto) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;


  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaParcelasAPagar;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmA_Pagar');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Competencia').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Titulo').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Account Payable
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  if C_Dataset.FieldByName('contaapagar').Asinteger > 0 then
    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contaapagar').Asinteger
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('fornecedor').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -2;
  AtualizaConta;

  // D - Contas Operação de Despesa
  C_DatasetContas.first;
  nRegistro := 1000;
  while not C_DatasetContas.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetContas.FieldByName('historico').asstring;
    C_ContabilidadeItensConta.value := C_DatasetContas.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_DatasetContas.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_DatasetContas.FieldByName('ClienteRef').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetContas.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaFactoryEmpresa;
var nContaAR: integer;
    nTotalAPagar, nTotalAReceber: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmFactoryEmpresa');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Titulo').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens
  nTotalAPagar 	 	:= 0;
  nTotalAReceber	:= 0;
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
  	nTotalAPagar 	 	:= nTotalAPagar + C_DatasetCheques.FieldByName('APagar').AsCurrency;
    nTotalAReceber	:= nTotalAReceber + C_DatasetCheques.FieldByName('Valor').AsCurrency;
    C_DatasetCheques.next;
  end;

  nTotalAPagar := nTotalAPagar - (nTotalAReceber*(C_Dataset.FieldByName('Taxa').AsCurrency/100));

  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := nTotalAPagar;
  ;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -2;
  AtualizaConta;

  // C - Juros Recebidos
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(4);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
  C_ContabilidadeItensValor.value := nTotalAReceber - nTotalAPagar;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  AtualizaConta;

  // D - Contas Operação de Despesa
  C_DatasetCheques.first;
  nRegistro := 1000;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetCheques.FieldByName('numcheque').asstring;
    C_ContabilidadeItensConta.value := C_DatasetCheques.FieldByName('ContaReceber').AsInteger;
    C_ContabilidadeItensValor.value := C_DatasetCheques.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_DatasetCheques.FieldByName('Cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCheques.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetCheques.edit;
end;

procedure TDMContabilidade.ContabilizaPagamentoContas;
var nContaAP: integer;
    nPagamento,nTroco,nValorDinheiro: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgSangria');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetTitulos.state in [dsEdit,dsInsert] then
    C_DatasetTitulos.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;
  if C_DatasetChequesLoja.Active and (C_DatasetChequesLoja.state in [dsEdit,dsInsert]) then
    C_DatasetChequesLoja.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Titulos
  C_DatasetTitulos.first;
  nRegistro := 1000;
  while not C_DatasetTitulos.eof do begin
    if C_DatasetTitulos.FieldByName('_icSelecionado').asInteger = 1 then begin
      if C_DatasetTitulos.FieldByName('Pagamento').AsCurrency > C_DatasetTitulos.FieldByName('ValorAPagar').AsCurrency then
        nPagamento := C_DatasetTitulos.FieldByName('ValorAPagar').AsCurrency + C_DatasetTitulos.FieldByName('Juros').AsCurrency
      else
        nPagamento := C_DatasetTitulos.FieldByName('Pagamento').AsCurrency;

      if C_DatasetTitulos.FieldByName('Compra').asInteger > 0 then
        nContaAP := ContaAP(C_DatasetTitulos.FieldByName('Compra').asInteger)
      else
        nContaAP := ContaAP(C_DatasetTitulos.FieldByName('ID').asInteger);

      if nContaAP = 0 then
        nContaAP := ContaLink(C_DatasetTitulos.FieldByName('IDGerador_APagar').asInteger,-2);
      // D - Account Payable
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico
      else
        C_ContabilidadeItensHistorico.value := DescConta(10);

      if nContaAP > 0 then
        C_ContabilidadeItensConta.value := nContaAP
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
      C_ContabilidadeItensValor.value := (nPagamento - C_DatasetTitulos.FieldByName('Juros').AsCurrency + C_DatasetTitulos.FieldByName('Descontos').AsCurrency) * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Fornecedor').AsInteger;
      C_ContabilidadeItensFlag_ID.value := C_DatasetTitulos.FieldByName('ID').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // C - Desconto
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(2);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(2);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Descontos').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Fornecedor').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;

      // D - Juros
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := DescConta(20);
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(20);
      C_ContabilidadeItensValor.value := C_DatasetTitulos.FieldByName('Juros').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetTitulos.FieldByName('Fornecedor').AsInteger;
      AtualizaConta;
  //    C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetTitulos.next;
  end;
  nRegistro := 2000;
  nTroco         := C_Dataset.FieldByName('Troco').AsCurrency;
  nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
  if C_Dataset.FieldByName('ValorDinheiro').AsCurrency > 0 then begin
    if nTroco > C_Dataset.FieldByName('ValorDinheiro').AsCurrency then begin
      nValorDinheiro := 0;
      nTroco := nTroco - C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
    end
    else begin
      nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency - nTroco;
      nTroco := 0;
    end;

    if nTroco < 0 then
      nTroco := 0;
  end;
  // D - Credito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoAbatido').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
//  C_ContabilidadeItensAlterar.value := 1;

  // C - Dinheiro
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('descdinheiro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contacaixa').asinteger;
  C_ContabilidadeItensValor.value      := nValorDinheiro;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Cheques
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccheque').asstring;
    if C_DatasetCheques.FieldByName('contapagar').asinteger > 0 then
      C_ContabilidadeItensConta.value      := C_DatasetCheques.FieldByName('contapagar').asinteger
    else
      C_ContabilidadeItensConta.value      := C_DatasetCheques.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := C_DatasetCheques.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCheques.next;
  end;
  // C - Cheques Loja
  if C_DatasetChequesLoja.Active then begin
    C_DatasetChequesLoja.first;
    while not C_DatasetChequesLoja.eof do begin
      if C_DatasetChequesLoja.FieldByName('_icSelecionado').asinteger = 1 then begin
        C_ContabilidadeItens.append;
        C_ContabilidadeItensHistorico.value  := 'Cheque de Clientes:'+C_DatasetChequesLoja.FieldByName('numcheque').asstring;
        C_ContabilidadeItensConta.value      := C_DatasetChequesLoja.FieldByName('contaatual').asinteger;
        C_ContabilidadeItensValor.value      := C_DatasetChequesLoja.FieldByName('Valor').AsCurrency;
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
        C_ContabilidadeItensAlterar.value := 1;
      end;
      C_DatasetChequesLoja.next;
    end;
  end;
  // C - Tef
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontatef').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contatef').AsInteger;
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('valortef').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Outros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontaoutro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contaoutro').AsInteger;
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutroValor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Utilizou Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(14);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(14);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoUtilizado').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Crédito Gerado
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(14);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(14);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoGerado').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Cartão Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccartaobus').asstring;
  if C_Dataset.FieldByName('contacartao').AsInteger <= 0 then
    C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(10)
  else
    C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contacartao').AsInteger;

  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('ValorCartao').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;

  // D - Troco
  if nTroco > 0 then begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := 'troco';
    C_ContabilidadeItensConta.value      := 1;
    C_ContabilidadeItensValor.value      := nTroco * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetTitulos.edit;
  if C_DatasetCheques.recordcount > 0 then
    C_DatasetCheques.edit;
  if C_DatasetChequesLoja.Active and (C_DatasetChequesLoja.recordcount > 0) then
    C_DatasetChequesLoja.edit;
end;

procedure TDMContabilidade.ContabilizaPagtoPayroll;
var nContaAP: integer;
    nPagamento: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgPgtoaFuncionarios');

  if not bContabiliza then
    exit;

  if C_DatasetFuncs.state in [dsEdit,dsInsert] then
    C_DatasetFuncs.post;
  // Contabilidade dos Itens

  // Titulos
  nRegistro := 1000;
//  C_DatasetFuncs.first;
//  C_DatasetFuncs.locate('id',nIDGerador,[]);
//  while not C_DatasetFuncs.eof do begin
//    if (C_DatasetFuncs.FieldByName('ID').asInteger = nIDGerador) {or (C_DatasetFuncs.FieldByName('retiradahist').asInteger <> 0)} then begin
      C_Contabilidade.append;
      C_ContabilidadeData.value   := dDataPagamento;
    //  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
      C_Contabilidade.post;

      nPagamento := C_DatasetFuncs.FieldByName('Valor').AsCurrency + C_DatasetFuncs.FieldByName('ValorDinheiro').AsCurrency;
      nContaAP := ContaLink(nPayroll,-2,C_DatasetFuncs.FieldByName('Fornecedor').AsInteger);

      // D - Account Payable
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico
      else
        C_ContabilidadeItensHistorico.value := DescConta(33);

      if nContaAP > 0 then
        C_ContabilidadeItensConta.value := nContaAP
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(33);
      C_ContabilidadeItensValor.value := (nPagamento) * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetFuncs.FieldByName('Fornecedor').AsInteger;
      C_ContabilidadeItensFlag_ID.value := C_DatasetFuncs.FieldByName('ID').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // C - Dinheiro
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := 'Dinheiro';
      C_ContabilidadeItensConta.value      := 1;
      C_ContabilidadeItensValor.value      := C_DatasetFuncs.FieldByName('VALORDINHEIRO').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetFuncs.FieldByName('Fornecedor').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      // C - Cheques
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value  := 'Cheque';
      C_ContabilidadeItensConta.value      := C_DatasetFuncs.FieldByName('conta').asinteger;
      C_ContabilidadeItensValor.value      := C_DatasetFuncs.FieldByName('Valor').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetFuncs.FieldByName('Fornecedor').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
      C_ContabilidadeItens.post;
//    end;
//    C_DatasetFuncs.next;
//  end;
  nRegistro := 2000;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_DatasetFuncs.edit;
end;

procedure TDMContabilidade.ContabilizaEscreverCheque;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgEscreverCheque');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens
(*
  // C - Account Payable
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  AtualizaConta;

  // D - Contas Operação
  C_DatasetContas.first;
  nRegistro := 1000;
  while not C_DatasetContas.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetContas.FieldByName('historico').asstring;
    C_ContabilidadeItensConta.value := C_DatasetContas.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_DatasetContas.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_DatasetContas.FieldByName('ClienteRef').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetContas.next;
  end;
*)
  // D - Account Payable
{  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  C_ContabilidadeItensFlag.value := 'AP';
  AtualizaConta;}

  if not bPrePagamento then begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(10);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensFlag.value := 'AP';
    if (nPreCheque = 2) or (nPreCheque = 0) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPreCheque := 0;
  end
  else begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(13);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(13);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensFlag.value := 'AP';
    if (nPreCheque = 2) or (nPreCheque = 1) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPreCheque := 1;
  end;

  // C - Banco
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contabanco').AsInteger;
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaPayroll;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmPayrolls');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetFuncs.state in [dsEdit,dsInsert] then
    C_DatasetFuncs.post;
  if C_DatasetPayItens.state in [dsEdit,dsInsert] then
    C_DatasetPayItens.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('DataPagamento').AsDateTime;
  C_Contabilidade.post;

  // Contabilidade dos Itens
  // C - Account Payable
  C_DatasetFuncs.first;
  while not C_DatasetFuncs.eof do begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(33);
    C_ContabilidadeItensHistorico.value := C_ContabilidadeItensHistorico.value + ': '+C_DatasetFuncs.FieldByName('nome').asstring;
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(33);
    if C_ContabilidadeItensConta.value = 0 then
      C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
    C_ContabilidadeItensValor.value := C_DatasetFuncs.FieldByName('VALORLIQUIDO').value;
    C_ContabilidadeItensFavorecido.value := C_DatasetFuncs.FieldByName('funcionario').AsInteger;
    C_ContabilidadeItensFlag_ID.value := -2;
    AtualizaConta;

    // D - Contas Operação de Despesa
    C_DatasetPayItens.first;
    nRegistro := 1000;
    while not C_DatasetPayItens.eof do begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetPayItens.FieldByName('descricao').asstring;
      C_ContabilidadeItensConta.value := C_DatasetPayItens.FieldByName('conta').asinteger;
      if C_ContabilidadeItensConta.value = 0 then
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(12);
//      if C_DatasetPayItens.FieldByName('tipopayroll').AsInteger >= 4 then
//        C_ContabilidadeItensValor.value := C_DatasetPayItens.FieldByName('Valor').AsCurrency
 //     else
        C_ContabilidadeItensValor.value := C_DatasetPayItens.FieldByName('Valor').value * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetFuncs.FieldByName('funcionario').AsInteger;
      AtualizaConta;

      C_DatasetPayItens.next;
    end;
    C_DatasetFuncs.next;
  end;
  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetFuncs.edit;
  C_DatasetPayItens.edit;
end;

procedure TDMContabilidade.ContabilizaAgendDespesasFixas;
begin
  exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Dataset.first;
  while not C_Dataset.eof do begin
    if C_Dataset.FieldByName('_icSelecionado').asinteger = 1 then
      ContabilizaContaAPagar(C_Dataset,C_DatasetContas);
    C_Dataset.next;
  end;
  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaContaAPagar;
var xOrigem,xLancamento,xContaPagar,nContaFav: integer;
begin
  exit;

  xOrigem := DMProjeto.TipoOrigem('FrmA_Pagar');
  xLancamento := ContabilizaPrincipal(C_Dataset.FieldByName('ID').asinteger,xOrigem,
                 C_Dataset.FieldByName('notafiscal').asstring,C_Dataset.FieldByName('competencia').asdatetime);

  if C_Dataset.FieldByName('contaapagar').asinteger > 0 then
    xContaPagar := C_Dataset.FieldByName('contaapagar').asinteger
  else
    xContaPagar := DMProjeto.ContaPadrao(10);
  // C - Account Payable
  ContabilizaItens(xLancamento,xContaPagar,C_Dataset.FieldByName('fornecedor').asinteger,
                   C_Dataset.FieldByName('valor').ascurrency,DescConta(10),-2);

  // D - Expenses
  C_DatasetContas.first;
  while not C_DatasetContas.eof do begin
    if C_DatasetContas.FieldByName('clienteref').asinteger > 0 then
      nContaFav := C_DatasetContas.FieldByName('clienteref').asinteger
    else
      nContaFav := C_Dataset.FieldByName('fornecedor').asinteger;
    ContabilizaItens(xLancamento,C_DatasetContas.FieldByName('conta').asinteger,nContaFav,
                     C_DatasetContas.FieldByName('valor').ascurrency * -1,C_DatasetContas.FieldByName('historico').asstring);

    C_DatasetContas.next;
  end;
end;

procedure TDMContabilidade.ContabilizaDepositoCheques;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDepositoCheques');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Cheques
  C_DatasetCheques.first;
  nRegistro := 1000;
  while not C_DatasetCheques.eof do begin
    if C_DatasetCheques.FieldByName('_icSelecionado').AsInteger = 1 then begin
      // C - Conta Origem
      C_ContabilidadeItens.append;
      if C_Dataset.FieldByName('Historico').AsString <> '' then
        C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Historico').AsString
      else if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;

      if C_DatasetCheques.FieldByName('contareceber').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetCheques.FieldByName('contareceber').AsInteger
      else
        C_ContabilidadeItensConta.value := 1;
      C_ContabilidadeItensValor.value := C_DatasetCheques.FieldByName('Valor').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_DatasetCheques.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Conta Destino
      C_ContabilidadeItens.append;
      if C_Dataset.FieldByName('Historico').AsString <> '' then
        C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Historico').AsString
      else if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;

      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contadestino').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetCheques.FieldByName('valor').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetCheques.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetCheques.next;
  end;

  // C - Dinheiro
  C_ContabilidadeItens.append;
  if C_Dataset.FieldByName('Historico').AsString <> '' then
    C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Historico').AsString
  else if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contaorigem').asinteger;
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valordinheiro').AsCurrency;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  // D - Dinheiro
  C_ContabilidadeItens.append;
  if C_Dataset.FieldByName('Historico').AsString <> '' then
    C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('Historico').AsString
  else if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contadestino').asinteger;
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valordinheiro').AsCurrency * -1;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetCheques.edit;
end;

procedure TDMContabilidade.ContabilizaTransferencias;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgTransferencias');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := dData;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Dinheiro
  C_ContabilidadeItens.append;
  if sMemo <> '' then
    C_ContabilidadeItensHistorico.value := sMemo
  else
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaOrigem;
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  // D - Dinheiro
  C_ContabilidadeItens.append;
  if sMemo <> '' then
    C_ContabilidadeItensHistorico.value := sMemo
  else
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaDestino;
  C_ContabilidadeItensValor.value := nValor * -1;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaDescontarCheques;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgLocalizarCheques');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Cheques
  C_Dataset.first;
  nRegistro := 1000;
  while not C_Dataset.eof do begin
    if C_Dataset.FieldByName('_icSelecionado').AsInteger = 1 then begin
      // C - Conta Origem
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := sHistorico;
      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contaatual').asinteger;
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Conta Destino
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := sHistorico;
      C_ContabilidadeItensConta.value := 1;
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_Dataset.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
end;

procedure TDMContabilidade.ContabilizaPgtoCartaoEmpresa;
var nContaAP,nFavorecido: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgPgtoCartaoEmpresa');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetFatAtraso.state in [dsEdit,dsInsert] then
    C_DatasetFatAtraso.post;
  if C_DatasetAjustes.state in [dsEdit,dsInsert] then
    C_DatasetAjustes.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
  C_ContabilidadeNumero.value := sNumero;
  C_Contabilidade.post;

  // Contabilidade dos Itens
  nFavorecido := FavCartao(nCartao);

  // C - Account Payable
  C_ContabilidadeItens.append;
  if (sMemo <> '') then
    C_ContabilidadeItensHistorico.value := sMemo+' '+sHistorico
  else if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensFavorecido.value := nFavorecido;
  AtualizaConta;

  // D - Cartoes
  C_Dataset.first;
  nRegistro := 1000;
  while not C_Dataset.eof do begin
    if C_Dataset.FieldByName('_icSelecionado').asinteger = 1 then begin
      C_ContabilidadeItens.append;
      if sMemo <> '' then
        C_ContabilidadeItensHistorico.value := sMemo+' '+sHistorico
      else if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;
      if C_Dataset.FieldByName('contapagar').asinteger > 0 then
        C_ContabilidadeItensConta.value := C_Dataset.FieldByName('contapagar').asinteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('FavorecidoDoc').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
     end;
    C_Dataset.next;
  end;

  // D - Faturas em Atraso
  C_DatasetFatAtraso.first;
  nRegistro := 1000;
  while not C_DatasetFatAtraso.eof do begin
    if C_DatasetFatAtraso.FieldByName('_icSelecionado').asinteger = 1 then begin
      C_ContabilidadeItens.append;
      if sMemo <> '' then
        C_ContabilidadeItensHistorico.value := sMemo+' '+sHistorico
      else if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;
      if C_DatasetFatAtraso.FieldByName('compra').asinteger > 0 then
        nContaAP := ContaAP(C_DatasetFatAtraso.FieldByName('Compra').asInteger)
      else
        nContaAP := ContaAP(C_DatasetFatAtraso.FieldByName('ID').asInteger);

      if nContaAP > 0 then
        C_ContabilidadeItensConta.value := nContaAP
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
      C_ContabilidadeItensValor.value := C_DatasetFatAtraso.FieldByName('Valor').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_DatasetFatAtraso.FieldByName('Fornecedor').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetFatAtraso.next;
  end;

  // D - Ajustes
  C_DatasetAjustes.first;
  nRegistro := 1000;
  while not C_DatasetAjustes.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := sHistorico; // corrigir
    C_ContabilidadeItensConta.value := C_DatasetAjustes.FieldByName('Conta').AsInteger;
    C_ContabilidadeItensValor.value := C_DatasetAjustes.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := nFavorecido;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetAjustes.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetFatAtraso.edit;
  C_DatasetAjustes.edit;
end;

procedure TDMContabilidade.ContabilizaAlterarContaCheques;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgChequesEmitidos');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  C_Dataset.first;
  nRegistro := 1000;
  while not C_Dataset.eof do begin
    if C_Dataset.FieldByName('_icSelecionado').AsInteger = 1 then begin
      // C - Conta Origem
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;
      C_ContabilidadeItensConta.value := nContaDestino;
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      // D - Conta Destino
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := sHistorico;
      C_ContabilidadeItensConta.value := nContaOrigem;
      C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_Dataset.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
end;

procedure TDMContabilidade.ContabilizaConciliacao;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgConciliacaoBancaria');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens
  (*
  C_DatasetDepositos.first;
  nRegistro := 1000;
  while not C_DatasetDepositos.eof do begin
    // Cartão de crédito
    if (C_DatasetDepositos.FieldByName('tipo').asstring = 'CC') and (C_DatasetDepositos.FieldByName('_icSelecionado').asinteger = 1) then begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetDepositos.FieldByName('historico').asstring;
      C_ContabilidadeItensConta.value := 1;
      C_ContabilidadeItensValor.value := C_DatasetDepositos.FieldByName('valor').AsCurrency;
      C_ContabilidadeItensAlterar.value := 1;

      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetDepositos.FieldByName('historico').asstring;
      C_ContabilidadeItensConta.value := nContaDestino;
      C_ContabilidadeItensValor.value := C_DatasetDepositos.FieldByName('valor').AsCurrency * -1;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetDepositos.next;
  end;
  *)
  C_Dataset.first;
  nRegistro := 2000;
  while not C_Dataset.eof do begin
    // D ou C - Conta Destino
    if C_Dataset.FieldByName('tipo').AsString = 'Creditar' then begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('memo').asstring;
      C_ContabilidadeItensConta.value := nContaDestino;
      C_ContabilidadeItensValor.value := abs(C_Dataset.FieldByName('valor').AsCurrency) * -1;
//      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('memo').asstring;
      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('conta').AsInteger;
      C_ContabilidadeItensValor.value := abs(C_Dataset.FieldByName('valor').AsCurrency);
//      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else begin
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('memo').asstring;
      C_ContabilidadeItensConta.value := nContaDestino;
      C_ContabilidadeItensValor.value := abs(C_Dataset.FieldByName('valor').AsCurrency);
//      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_Dataset.FieldByName('memo').asstring;
      C_ContabilidadeItensConta.value := C_Dataset.FieldByName('conta').AsInteger;
      C_ContabilidadeItensValor.value := abs(C_Dataset.FieldByName('valor').AsCurrency) * -1;
//      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_Dataset.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
end;

procedure TDMContabilidade.ContabilizaReceberPagamentosRapido;
var nContaAR: integer;
    nPagamento,nValorDinheiro,nTroco: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgDepositosInstantaneos');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;
  if C_DatasetCartoes.state in [dsEdit,dsInsert] then
    C_DatasetCartoes.post;
  if C_DatasetChequesElet.state in [dsEdit,dsInsert] then
    C_DatasetChequesElet.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens


  nRegistro := 1000;
  // C - Account Receivable
  if not bPrePagamento then begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(9);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Cliente').AsInteger;
    if (nPreDep = 2) or (nPreDep = 0) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPreDep := 0;
  end
  else begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(13);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(13);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Cliente').AsInteger;
    if (nPreDep = 2) or (nPreDep = 1) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPreDep := 1;
  end;
  C_ContabilidadeItensFlag.value := 'AR';

  nRegistro := 2000;

  nTroco := C_Dataset.FieldByName('Troco').AsCurrency;
  // D - Cheques
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccheque').asstring;
    if C_DatasetCheques.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCheques.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := C_DatasetCheques.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCheques.next;
  end;

  // D - Cheques Elet.
  C_DatasetChequesElet.first;
  while not C_DatasetChequesElet.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetChequesElet.FieldByName('descconvenio').asstring;
    if C_DatasetChequesElet.FieldByName('contareceber').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetChequesElet.FieldByName('contareceber').asinteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := (C_DatasetChequesElet.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
    C_DatasetChequesElet.next;
  end;

  nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
  if C_Dataset.FieldByName('ValorDinheiro').AsCurrency > 0 then begin
    if nTroco > C_Dataset.FieldByName('ValorDinheiro').AsCurrency then begin
      nValorDinheiro := 0;
      nTroco := nTroco - C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
    end
    else begin
      nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency - nTroco;
      nTroco := 0;
    end;

    if nTroco < 0 then
      nTroco := 0;
  end;
  // D - Dinheiro
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('descdinheiro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('conta').asinteger;
  C_ContabilidadeItensValor.value      := (nValorDinheiro) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Tef
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontatef').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contatef').AsInteger;
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('valortef').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // D - Outros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontaoutro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contaoutro').AsInteger;
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('OutroValor').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  if nTroco < 0 then
    nTroco := 0;
  // D - Utilizou Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := (C_Dataset.FieldByName('CreditoUtilizado').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
  AtualizaConta;
  // D - Cartão Crédito
  C_DatasetCartoes.first;
  while not C_DatasetCartoes.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_DatasetCartoes.FieldByName('desccartao').asstring;
    if C_DatasetCartoes.FieldByName('contacartao').AsInteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCartoes.FieldByName('contacartao').AsInteger
    else
      C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').AsInteger;
    C_ContabilidadeItensValor.value      := (C_DatasetCartoes.FieldByName('Valor').AsCurrency) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCartoes.next;
  end;
  if nTroco > 0 then begin
    // C - Troco
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := 'troco';
    C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('conta').AsInteger;
    C_ContabilidadeItensValor.value      := nTroco;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
  end;
  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  if C_DatasetContas.recordcount > 0 then
    C_DatasetContas.edit;
  if C_DatasetCheques.recordcount > 0 then
    C_DatasetCheques.edit;
  if C_DatasetCartoes.recordcount > 0 then
    C_DatasetCartoes.edit;
  if C_DatasetChequesElet.recordcount > 0 then
    C_DatasetChequesElet.edit;
end;

procedure TDMContabilidade.ContabilizaReceberParcelasRapido;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmA_Receber');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Competencia').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Titulo').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // D - Account Receivable
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(9);
  if nContaReceber > 0 then
    C_ContabilidadeItensConta.value := nContaReceber
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Cliente').AsInteger;
  AtualizaConta;

  // C - Contas Operação
  C_DatasetContas.first;
  nRegistro := 1000;
  while not C_DatasetContas.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetContas.FieldByName('historico').asstring;
    C_ContabilidadeItensConta.value := C_DatasetContas.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_DatasetContas.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Cliente').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetContas.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaPagarParcelasRapido;
var nContaAR: integer;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmA_Pagar');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Account Payable
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico
  else
    C_ContabilidadeItensHistorico.value := DescConta(10);

  if nContaPagar > 0 then
    C_ContabilidadeItensConta.value := nContaPagar
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('valor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
  AtualizaConta;

  // D - Contas Operação
  C_DatasetContas.first;
  nRegistro := 1000;
  while not C_DatasetContas.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value := C_DatasetContas.FieldByName('historico').asstring;
    C_ContabilidadeItensConta.value := C_DatasetContas.FieldByName('conta').asinteger;
    C_ContabilidadeItensValor.value := C_DatasetContas.FieldByName('Valor').AsCurrency * -1;
    if C_Datasetcontas.FieldByName('Clienteref').AsInteger > 0 then
      C_ContabilidadeItensFavorecido.value := C_Datasetcontas.FieldByName('Clienteref').AsInteger
    else
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetContas.next;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetContas.edit;
end;

procedure TDMContabilidade.ContabilizaPagamentoContasRapido;
var nContaAR: integer;
    nPagamento,nTroco,nValorDinheiro,nAbater: currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgPgtoInstantaneo');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetContas.state in [dsEdit,dsInsert] then
    C_DatasetContas.post;
  if C_DatasetCheques.state in [dsEdit,dsInsert] then
    C_DatasetCheques.post;
  if C_DatasetChequesLoja.Active and (C_DatasetChequesLoja.state in [dsEdit,dsInsert]) then
    C_DatasetChequesLoja.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens


  nRegistro := 1000;
  // D - Account Payable
  if not bPrePagamento and (C_Dataset.FieldByName('CreditoAbatido').AsCurrency <= 0) then begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(10);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);
    C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensFlag.value := 'AP';
    if (nPrePag = 2) or (nPrePag = 0) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPrePag := 0;
  end
  else if bPrePagamento then begin
    if C_Dataset.FieldByName('CreditoAbatido').AsCurrency < C_Dataset.FieldByName('Valor').AsCurrency then
      nAbater := C_Dataset.FieldByName('CreditoAbatido').AsCurrency
    else
      nAbater := C_Dataset.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico
    else
      C_ContabilidadeItensHistorico.value := DescConta(13);
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(13);
    C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Valor').AsCurrency - nAbater) * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
//    C_ContabilidadeItensFlag.value := 'AP';
    if (nPrePag = 2) or (nPrePag = 1) then
      AtualizaConta
    else
      slRegistros.values[C_ContabilidadeItensRegistro.asstring] := C_ContabilidadeItensConta.asstring;
    nPrePag := 1;
  end;
  nRegistro := 2000;

  nTroco := C_Dataset.FieldByName('Troco').AsCurrency;
  nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
  if C_Dataset.FieldByName('ValorDinheiro').AsCurrency > 0 then begin
    if nTroco > C_Dataset.FieldByName('ValorDinheiro').AsCurrency then begin
      nValorDinheiro := 0;
      nTroco := nTroco - C_Dataset.FieldByName('ValorDinheiro').AsCurrency;
    end
    else begin
      nValorDinheiro := C_Dataset.FieldByName('ValorDinheiro').AsCurrency - nTroco;
      nTroco := 0;
    end;

    if nTroco < 0 then
      nTroco := 0;
  end;

  // D - Credito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoAbatido').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  // C - Dinheiro
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('descdinheiro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contacaixa').asinteger;
  C_ContabilidadeItensValor.value      := nValorDinheiro;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Cheques
  C_DatasetCheques.first;
  while not C_DatasetCheques.eof do begin
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccheque').asstring;
    if C_DatasetCheques.FieldByName('contapagar').asinteger > 0 then
      C_ContabilidadeItensConta.value    := C_DatasetCheques.FieldByName('contapagar').asinteger
    else
      C_ContabilidadeItensConta.value    := C_DatasetCheques.FieldByName('conta').asinteger;

    C_ContabilidadeItensValor.value      := C_DatasetCheques.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_DatasetCheques.next;
  end;
  // C - Cheques Loja
  if C_DatasetChequesLoja.Active then begin
    C_DatasetChequesLoja.first;
    while not C_DatasetChequesLoja.eof do begin
      if C_DatasetChequesLoja.FieldByName('_icSelecionado').asinteger = 1 then begin
        C_ContabilidadeItens.append;
        C_ContabilidadeItensHistorico.value  := 'Cheque de Clientes:'+C_DatasetChequesLoja.FieldByName('numcheque').asstring;
        C_ContabilidadeItensConta.value      := C_DatasetChequesLoja.FieldByName('contaatual').asinteger;
        C_ContabilidadeItensValor.value      := C_DatasetChequesLoja.FieldByName('Valor').AsCurrency;
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
        C_ContabilidadeItensAlterar.value := 1;
      end;
      C_DatasetChequesLoja.next;
    end;
  end;
  // C - Tef
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontatef').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contatef').AsInteger;
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('valortef').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Outros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccontaoutro').asstring;
  C_ContabilidadeItensConta.value      := C_Dataset.FieldByName('contaoutro').AsInteger;
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutroValor').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;
  // C - Utilizou Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(13);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(13);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('CreditoUtilizado').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Cartão Crédito
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := C_Dataset.FieldByName('desccartao').asstring;
  if C_Dataset.FieldByName('contacartao').AsInteger > 0 then
    C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('contacartao').AsInteger
  else
    C_ContabilidadeItensConta.value    := C_Dataset.FieldByName('conta').AsInteger;
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('ValorCartao').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensAlterar.value := 1;

  if nTroco < 0 then
    nTroco := 0;

  if nTroco > 0 then begin
    // D - Troco
    C_ContabilidadeItens.append;
    C_ContabilidadeItensHistorico.value  := 'troco';
    C_ContabilidadeItensConta.value      := 1;
    C_ContabilidadeItensValor.value      := nTroco * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;
  end;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  if C_DatasetContas.recordcount > 0 then
    C_DatasetContas.edit;
  if C_DatasetCheques.recordcount > 0 then
    C_DatasetCheques.edit;
  if C_DatasetChequesLoja.Active and (C_DatasetChequesLoja.recordcount > 0) then
    C_DatasetChequesLoja.edit;
end;

procedure TDMContabilidade.ContabilizaAberturaCaixa;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgAberturaCaixa');

  if not bContabiliza then
    exit;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Dinheiro
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaCredito;
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  // D - Dinheiro
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaDebito;
  C_ContabilidadeItensValor.value := nValor * -1;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaRepasse;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgRepasse');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := DMProjeto.dDataSistema;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('NumCheque').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // C - Dinheiro
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaCredito;
  C_ContabilidadeItensValor.value := nValor;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  // D - Dinheiro
  C_ContabilidadeItens.append;
  if nHistorico > 0 then
    C_ContabilidadeItensHistorico.value := sHistorico;
  C_ContabilidadeItensConta.value := nContaDebito;
  C_ContabilidadeItensValor.value := nValor * -1;
  C_ContabilidadeItensAlterar.value := 1;
//  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;

  //  Cheques
  C_Dataset.first;
  while not C_Dataset.eof do begin
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico;
    C_ContabilidadeItensConta.value      := nContaCredito;
    C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Valor').AsCurrency;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := sHistorico;
    C_ContabilidadeItensConta.value      := nContaDebito;
    C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
    C_ContabilidadeItensAlterar.value := 1;

    C_Dataset.next;
  end;


  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;
end;

procedure TDMContabilidade.ContabilizaInvoicesEntradas;
begin
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmCompras');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetItens.state in [dsEdit,dsInsert] then
    C_DatasetItens.post;

  bGerando := true;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;
  // Contabilidade dos Itens

  // C - Account Payable (+)
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(10);
  if not C_Dataset['F_Conta'] <> null then
    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('F_Conta').AsInteger
  else
    C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(10);

  AtualizaConta;

  C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Total').AsCurrency);
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -2;

  // Itens
  C_DatasetItens.first;
  nRegistro := 1000;
  while not C_DatasetItens.eof do begin
    if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 1 then begin // Inventário
      // D - Inventory (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Invent').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency * -1;
      if C_DatasetItens.FieldByName('ClienteRef').AsInteger > 0 then
        C_ContabilidadeItensFavorecido.value := C_DatasetItens.FieldByName('ClienteRef').AsInteger
      else
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 2 then begin // Sem Iventário
      // D - Conta (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(26);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency * -1;
      if C_DatasetItens.FieldByName('ClienteRef').AsInteger > 0 then
        C_ContabilidadeItensFavorecido.value := C_DatasetItens.FieldByName('ClienteRef').AsInteger
      else
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 3 then begin // Serviços
      // D - Conta (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(26);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency * -1;
      if C_DatasetItens.FieldByName('ClienteRef').AsInteger > 0 then
        C_ContabilidadeItensFavorecido.value := C_DatasetItens.FieldByName('ClienteRef').AsInteger
      else
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 5 then begin // Encargos
      // D - Conta (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(20);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency * -1;
      if C_DatasetItens.FieldByName('ClienteRef').AsInteger > 0 then
        C_ContabilidadeItensFavorecido.value := C_DatasetItens.FieldByName('ClienteRef').AsInteger
      else
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 6 then begin // Descontos
      // C - Conta (-)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(27);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      if C_DatasetItens.FieldByName('ClienteRef').AsInteger > 0 then
        C_ContabilidadeItensFavorecido.value := C_DatasetItens.FieldByName('ClienteRef').AsInteger
      else
        C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetItens.next;
  end;
  nRegistro := 2000;
  // C - Desconto de Pé de Nota
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(27);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(27);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Desconto').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Frete
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(3);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(3);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Frete').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Despesas
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(28);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(28);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutrasDespesas').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // D - Juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(15);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(15);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Juros').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetItens.edit;
end;

procedure TDMContabilidade.ContabilizaDevolucoesFornecedores;
begin
  nIDGerador := xIDGerador;

  ContabilizaPadrao('FrmDevolucoesFornecedores');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetItens.state in [dsEdit,dsInsert] then
    C_DatasetItens.post;

  bGerando := true;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;
  // Contabilidade dos Itens

  // D - Account Payable (-)
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(14);
//  if not C_Dataset['F_Conta'] <> null then
//    C_ContabilidadeItensConta.value := C_Dataset.FieldByName('F_Conta').AsInteger
//  else
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(14);

  AtualizaConta;

  C_ContabilidadeItensValor.value := (C_Dataset.FieldByName('Total').AsCurrency) * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  C_ContabilidadeItensFlag_ID.value := -2;

  // Itens
  C_DatasetItens.first;
  nRegistro := 1000;
  while not C_DatasetItens.eof do begin
    if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 1 then begin // Inventário
      // C - Inventory (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Invent').AsInteger;
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 2 then begin // Sem Iventário
      // C - Conta (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(26);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 3 then begin // Serviços
      // C - Conta (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(26);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 5 then begin // Encargos
      // C - Conta (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Custo').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(20);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end
    else if C_DatasetItens.FieldByName('I_tipoitem').AsInteger = 6 then begin // Descontos
      // C - Conta (+)
      C_ContabilidadeItens.append;
      C_ContabilidadeItensHistorico.value := C_DatasetItens.FieldByName('Descricao').AsString;
      if C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger > 0 then
        C_ContabilidadeItensConta.value := C_DatasetItens.FieldByName('I_Conta_Venda').AsInteger
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(27);
      C_ContabilidadeItensValor.value := C_DatasetItens.FieldByName('SubTotal').AsCurrency * -1;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;
    end;
    C_DatasetItens.next;
  end;
  nRegistro := 2000;
  // D - Desconto de Pé de Nota
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(27);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(27);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Desconto').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Frete
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(3);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(3);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Frete').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Despesas
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(28);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(28);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('OutrasDespesas').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  // C - Juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value  := DescConta(15);
  C_ContabilidadeItensConta.value      := DMProjeto.ContaPadrao(15);
  C_ContabilidadeItensValor.value      := C_Dataset.FieldByName('Juros').AsCurrency;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetItens.edit;
end;

procedure TDMContabilidade.ContabilizaReparcelamento;
var nContaAR: integer;
    nPagamento,nParcelasOrigem, nParcelasDestino : currency;
begin
  bGerando := true;
  nIDGerador := xIDGerador;

  ContabilizaPadrao('DlgReparcelamento');

  if not bContabiliza then
    exit;

  if C_Dataset.state in [dsEdit,dsInsert] then
    C_Dataset.post;
  if C_DatasetParcelas.state in [dsEdit,dsInsert] then
    C_DatasetParcelas.post;
  if C_DatasetNovasParcelas.state in [dsEdit,dsInsert] then
    C_DatasetNovasParcelas.post;

  C_Contabilidade.append;
  C_ContabilidadeData.value   := C_Dataset.FieldByName('Data').AsDateTime;
//  C_ContabilidadeNumero.value := C_Dataset.FieldByName('Numero').AsString;
  C_Contabilidade.post;

  // Contabilidade dos Itens

  // Parcelas
  C_DatasetParcelas.first;
  nRegistro := 1000;
  nParcelasOrigem := 0;
  while not C_DatasetParcelas.eof do begin
    if C_DatasetParcelas.FieldByName('_icSelecionado').asInteger = 1 then begin
      if C_DatasetParcelas.FieldByName('Venda').asInteger > 0 then
        nContaAR := ContaAR(C_DatasetParcelas.FieldByName('Venda').asInteger)
      else
        nContaAR := ContaAR(C_DatasetParcelas.FieldByName('ID').asInteger);

     // C - Account Receivable
      C_ContabilidadeItens.append;
      if nHistorico > 0 then
        C_ContabilidadeItensHistorico.value := DescConta(9)
      else
        C_ContabilidadeItensHistorico.value := sHistorico;

      if nContaAR > 0 then
        C_ContabilidadeItensConta.value := nContaAR
      else
        C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(9);
      C_ContabilidadeItensValor.value := C_DatasetParcelas.FieldByName('FaltaReceber').AsCurrency;
      C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
      C_ContabilidadeItensFlag_ID.value := C_DatasetParcelas.FieldByName('ID').AsInteger;
      C_ContabilidadeItensAlterar.value := 1;

      nParcelasOrigem := nParcelasOrigem + C_DatasetParcelas.FieldByName('FaltaReceber').AsCurrency;
    end;
    C_DatasetParcelas.next;
  end;
  // D - Desconto
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(1);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(1);
  C_ContabilidadeItensValor.value := C_Dataset.FieldByName('Descontos').AsCurrency * -1;
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;

  C_DatasetNovasParcelas.first;
  nRegistro := 1000;
  nParcelasDestino := 0;
  while not C_DatasetNovasParcelas.eof do begin
    nContaAR := DMProjeto.ContaPadrao(9);

    // D - Account Receivable
    C_ContabilidadeItens.append;
    if nHistorico > 0 then
      C_ContabilidadeItensHistorico.value := DescConta(9)
    else
      C_ContabilidadeItensHistorico.value := sHistorico;

    C_ContabilidadeItensConta.value := nContaAR;
    C_ContabilidadeItensValor.value := C_DatasetNovasParcelas.FieldByName('Valor').AsCurrency * -1;
    C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('favorecido').AsInteger;
//    C_ContabilidadeItensFlag_ID.value := C_DatasetNovasParcelas.FieldByName('ID').AsInteger;
//    C_ContabilidadeItensAlterar.value := 1;

    nParcelasDestino := nParcelasDestino + C_DatasetNovasParcelas.FieldByName('Valor').AsCurrency;
    C_DatasetNovasParcelas.next;
  end;

  // C - Juros
  C_ContabilidadeItens.append;
  C_ContabilidadeItensHistorico.value := DescConta(4);
  C_ContabilidadeItensConta.value := DMProjeto.ContaPadrao(4);
  C_ContabilidadeItensValor.value := (nParcelasDestino - (nParcelasOrigem - C_Dataset.FieldByName('Descontos').AsCurrency));
  C_ContabilidadeItensFavorecido.value := C_Dataset.FieldByName('Favorecido').AsInteger;
  AtualizaConta;
  C_ContabilidadeItens.post;

  C_ContabilidadeItens.Filter := 'valor <> 0';
  C_ContabilidadeItens.filtered := true;

  AtualizaPlanoContas;
  bGerando := false;
  nRegistro := 0;

  C_Dataset.edit;
  C_DatasetParcelas.edit;
  C_DatasetNovasParcelas.edit;
end;

procedure TDMContabilidade.FechaDatasets;
begin
  C_Contabilidade.close;
  C_ContabilidadeItens.close;
end;

function TDMContabilidade.DescConta;
begin
  with DMProjeto.Q_SQL do begin
    SQL.Text := 'select descricao from contaspadraoidioma where idioma = 1 and id = :id';
    params[0].asinteger := nID;
    Open;
    result := fieldbyname('descricao').asstring;
    close;
  end;
end;

procedure TDMContabilidade.DataModuleCreate(Sender: TObject);
begin
  slRegistros := TStringList.Create;
end;

procedure TDMContabilidade.AtualizaConta;
begin
  if C_ContabilidadeItensAlterar.value <> 1 then begin
    if slRegistros.IndexOfName(IntToStr(nRegistro)) <> -1 then
      C_ContabilidadeItensConta.value := StrToInt(slRegistros.values[IntToStr(nRegistro)]);
  end;
end;

function TDMContabilidade.FavCartao(nCartao: integer): integer;
begin
  Q_Aux.SQL.text := 'select fornecedor from formaspagamento '+
  'where formapagamento = :fp';
  Q_Aux.params[0].asinteger := nCartao;
  Q_Aux.open;
  result := Q_Aux.FieldByName('fornecedor').asinteger;
end;

function TDMContabilidade.ContaLink;
begin
  if nfav = 0 then begin
    Q_Aux.SQL.text := 'select li.conta from lancamentos l, lancamentositens li '+
    'where l.idgerador = :id and l.lancamento = li.lancamento and li.flag_id = :nFlag';
    Q_Aux.params[0].asinteger := nID;
    Q_Aux.params[1].asinteger := nFlag_ID;
  end
  else begin
    Q_Aux.SQL.text := 'select li.conta from lancamentos l, lancamentositens li '+
    'where l.idgerador = :id and l.lancamento = li.lancamento and li.flag_id = :nFlag and li.favorecido = :nFav';
    Q_Aux.params[0].asinteger := nID;
    Q_Aux.params[1].asinteger := nFlag_ID;
    Q_Aux.params[2].asinteger := nFav;
  end;
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

function TDMContabilidade.ContaAR(nID: integer): integer;
begin
  Q_Aux.SQL.text := 'select li.conta from lancamentos l, lancamentositens li, contas c '+
  'where l.idgerador = :id and l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = 3';
  Q_Aux.params[0].asinteger := nID;
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

function TDMContabilidade.ContaAP(nID: integer): integer;
begin
  Q_Aux.SQL.text := 'select li.conta from lancamentos l, lancamentositens li, contas c '+
  'where l.idgerador = :id and l.lancamento = li.lancamento and li.conta = c.conta and c.tipoconta = 8';
  Q_Aux.params[0].asinteger := nID;
  Q_Aux.open;
  result := Q_Aux.FieldByName('conta').asinteger;
end;

procedure TDMContabilidade.CancelarLancamentos;
var sLancamentos: string;
begin
  exit;
  if pos(',',sIDGerador) > 0 then
    Q_Aux.SQL.Text := 'select lancamento from lancamentos where idgerador in ('+sidgerador+')'
  else
    Q_Aux.SQL.Text := 'select lancamento from lancamentos where idgerador = '+sidgerador;
  Q_Aux.open;
  sLancamentos := '';
  while not Q_Aux.eof do begin
    if sLancamentos <> '' then
      sLancamentos := sLancamentos + ',';
    sLancamentos := Q_Aux.FieldByName('lancamento').asstring;
    Q_Aux.next;
  end;
  Q_Aux.close;

  //
  if sLancamentos <> '' then begin
    Q_Aux.SQL.Text := 'delete from lancamentos where lancamento in ('+sLancamentos+')';
    Q_Aux.execsql;
  end;
  //
  if sLancamentos <> '' then begin
    Q_Aux.SQL.Text := 'delete from lancamentositens where lancamento in ('+sLancamentos+')';
    Q_Aux.execsql;
  end;
end;

procedure TDMContabilidade.SetPrePagamentoDep(xPrePagamento:boolean);
begin
  if not xPrePagamento then
    nPreDep := 0
  else
    nPreDep := 1;
end;

procedure TDMContabilidade.SetPrePagamentoRet(xPrePagamento:boolean);
begin
  if not xPrePagamento then
    nPrePag := 0
  else
    nPrePag := 1;
end;

procedure TDMContabilidade.SetPrePagamentoCheque(xPrePagamento:boolean);
begin
  if not xPrePagamento then
    nPreCheque := 0
  else
    nPreCheque := 1;
end;

function TDMContabilidade.ContaFlag;
begin
  result := 0;
  exit;
  if C_ContabilidadeItens.Locate('Flag',sFlag,[]) then
    result := C_ContabilidadeItensConta.value;
end;

procedure TDMContabilidade.Iniciar;
begin
  exit;
  C_Contabilidade.close;
  C_ContabilidadeItens.close;
  slRegistros.Clear;
end;

procedure TDMContabilidade.AtualizaPlanoContas;
begin
  C_ContabilidadeItens.first;
  while not C_ContabilidadeItens.eof do begin
    if C_ContabilidadeItenslkConta.IsNull then begin
      C_PlanoConta.close;
      C_PlanoConta.open;
      break;
    end;
    C_ContabilidadeItens.next;
  end;
end;

procedure TDMContabilidade.SangriaAjustaValorNominal;
begin
  if C_Dataset.state in [dsedit,dsinsert] then
    C_Dataset.post;
  C_Dataset.first;
  while not C_Dataset.eof do begin
    if (C_Dataset.FieldByName('_icSelecionado').asinteger = 1) and (C_Dataset.FieldByName('compra').asinteger <= 0) then
      AtualizaValorContaPagar(C_Dataset.FieldByName('id').asinteger,C_Dataset.FieldByName('valornominal').ascurrency,C_DatasetContas);
    C_Dataset.next;
  end;
  C_Dataset.edit;
end;

procedure TDMContabilidade.AtualizaValorContaPagar;
var nLancamento: integer;
begin
  DMProjeto.Q_Contabil.close;
  DMProjeto.Q_Contabil.SQL.text := 'select lancamento from lancamentos where idgerador = :id';
  DMProjeto.Q_Contabil.params[0].asinteger := nID;
  DMProjeto.Q_Contabil.open;
  nLancamento := DMProjeto.Q_Contabil.FieldByName('lancamento').asinteger;
  //
  DMProjeto.Q_Contabil.close;
  DMProjeto.Q_Contabil.SQL.text := 'update lancamentositens set valor = :valor where lancamento = :nlancto and flag_id = :nflag';
  DMProjeto.Q_Contabil.params[0].ascurrency := nValorNominal;
  DMProjeto.Q_Contabil.params[1].asinteger := nLancamento;
  DMProjeto.Q_Contabil.params[2].asinteger := -2;
  DMProjeto.Q_Contabil.ExecSQL;

  C_DatasetContas.first;
  while not C_DatasetContas.eof do begin
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'update lancamentositens set valor = :valor where lancamento = :nlancto and conta = :conta and (flag_id <> :nflag or flag_id is null)';
    DMProjeto.Q_Contabil.params[0].ascurrency := C_DatasetContas.FieldByName('valor').ascurrency * -1;
    DMProjeto.Q_Contabil.params[1].asinteger := nLancamento;
    DMProjeto.Q_Contabil.params[2].asinteger := C_DatasetContas.FieldByName('conta').asinteger;
    DMProjeto.Q_Contabil.params[3].asinteger := -2;
    DMProjeto.Q_Contabil.ExecSQL;
    C_DatasetContas.next;
  end;
end;

function TDMContabilidade.ContabilizaPrincipal;
var nID:integer;
begin
  exit;

  nID := DMProjeto.NextIDGlobal;
  with DMProjeto.Q_Contabil do begin
    close;
    SQL.Text := 'insert into lancamentos(lancamento,origem,data,numero,idgerador,'+
    'usuario,data_audit,hora_audit) '+
    'values(:lancamento,:origem,:data,:numero,:idgerador,'+
    ':usuario,:data_audit,:hora_audit) ';
    params[0].asinteger  := nID;
    params[1].asinteger  := nOrigem;
    params[2].asdatetime := dData;
    params[3].asstring   := sNumero;
    params[4].asinteger  := nIDGerador;
    params[5].asinteger  := DMProjeto.nFuncionario;
    params[6].asdatetime := dData;
    params[7].asstring   := copy(TimeToStr(time),1,5);
    ExecSQL;
  end;
  result := nID;
end;

function TDMContabilidade.ContabilizaItens(nLancamento,nConta,nFavorecido:integer;nValor:currency;sHistorico:string;nFlag_ID:integer = 0):integer;
var nID:integer;
begin
  exit;

  nID := DMProjeto.NextIDGlobal;
  with DMProjeto.Q_Contabil do begin
    close;
    SQL.Text := 'insert into lancamentositens(lancamentoitem,lancamento,conta,favorecido,'+
    'valor,historico,flag_id) '+
    'values(:lancamentoitem,:lancamento,:conta,:favorecido,'+
    ':valor,:historico,:flag_id) ';
    params[0].asinteger  := nID;
    params[1].asinteger  := nLancamento;
    params[2].asinteger  := nConta;
    params[3].asinteger  := nFavorecido;
    params[4].ascurrency := nValor;
    params[5].asstring   := sHistorico;
    params[6].asinteger  := nFlag_ID;
    ExecSQL;
  end;
  result := nID;
end;


end.
