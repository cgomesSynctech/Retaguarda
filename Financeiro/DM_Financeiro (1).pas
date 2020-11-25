unit DM_Financeiro;

interface

uses
    Windows, Messages, SysUtils, Classes, Forms, Dialogs, Graphics, Controls,
    T_AutorizacaoDialog, DlgMsg, Db, IBCustomDataSet, IBQuery, DBClient,
    IBDatabase, Provider, variants, IBEvents, IB, Math, BTOdeum, RegValoresEstoque,
    IBStoredProc;

type
    TDMFinanceiro = class(TDataModule)
        Q_SQL2: TIBQuery;
        Q_SQL: TIBQuery;
        Q_ComandoSQL: TIBQuery;
        Q_Transacoes: TIBQuery;
        DlgMsg: TDlgMsg;
        dlgAutorizacao: TAutorizacaoDialog;
        Q_Auditorias: TIBQuery;
        IBT_Auditoria: TIBTransaction;
        Q_ContasCxBc: TIBQuery;
        Q_Contas: TIBQuery;
        Q_ContasCx: TIBQuery;
        Q_ContasBc: TIBQuery;
        Q_CartoesCred: TIBQuery;
        Q_CartoesBus: TIBQuery;
        Q_OutrasForma: TIBQuery;
        C_Contas: TClientDataSet;
        C_ContasCx: TClientDataSet;
        C_ContasBc: TClientDataSet;
        C_CartoesCred: TClientDataSet;
        C_CartoesBus: TClientDataSet;
        C_OutrasForma: TClientDataSet;
        C_ContasCxBc: TClientDataSet;
        P_Contas: TDataSetProvider;
        P_ContasCx: TDataSetProvider;
        P_ContasBc: TDataSetProvider;
        P_CartoesCred: TDataSetProvider;
        P_CartoesBus: TDataSetProvider;
        P_ContasCxBc: TDataSetProvider;
        C_ContasDS: TDataSource;
        C_ContasCxDS: TDataSource;
        C_ContasBcDS: TDataSource;
        C_CartoesCredDS: TDataSource;
        C_OutrasFormaDS: TDataSource;
        C_ContasCxCONTA: TIntegerField;
        C_ContasCxDESCRICAO: TStringField;
        C_ContasCONTA: TIntegerField;
        C_ContasDESCRICAO: TStringField;
        C_ContasTIPOCONTA: TIntegerField;
        C_ContasBcCONTA: TIntegerField;
        C_ContasBcDESCRICAO: TStringField;
        C_CartoesCredCARENCIACREDITO: TIntegerField;
        C_CartoesCredCONTALIBERACAO: TIntegerField;
        C_CartoesCredENCARGOS: TBCDField;
        C_CartoesCredDESCRICAO: TStringField;
        C_CartoesCredFORMAPAGAMENTO: TIntegerField;
        C_CartoesCredFORNECEDOR: TIntegerField;
        C_CartoesCredMELHORDIACOMPRA: TIntegerField;
        C_CartoesCredSIGLA: TStringField;
        C_CartoesBusDS: TDataSource;
        C_CartoesBusCARENCIACREDITO: TIntegerField;
        C_CartoesBusCONTALIBERACAO: TIntegerField;
        C_CartoesBusDESCRICAO: TStringField;
        C_CartoesBusENCARGOS: TBCDField;
        C_CartoesBusFORMAPAGAMENTO: TIntegerField;
        C_CartoesBusFORNECEDOR: TIntegerField;
        C_CartoesBusMELHORDIACOMPRA: TIntegerField;
        C_CartoesBusSIGLA: TStringField;
        P_OutrasFormaDS: TDataSetProvider;
        C_OutrasFormaCARENCIACREDITO: TIntegerField;
        C_OutrasFormaCONTALIBERACAO: TIntegerField;
        C_OutrasFormaDESCRICAO: TStringField;
        C_OutrasFormaENCARGOS: TBCDField;
        C_OutrasFormaFORMAPAGAMENTO: TIntegerField;
        C_OutrasFormaFORNECEDOR: TIntegerField;
        C_OutrasFormaMELHORDIACOMPRA: TIntegerField;
        C_OutrasFormaSIGLA: TStringField;
        C_OutrasFormaESPECIE: TIntegerField;
        C_ContasBcDESCTIPO: TStringField;
        C_ContasBcSALDO: TBCDField;
        C_ContasBcCONTAPAI: TIntegerField;
        C_ContasCONTAPAI: TIntegerField;
        C_ContasSALDO: TBCDField;
        C_ContasDESCTIPO: TStringField;
        C_ContasCxDESCTIPO: TStringField;
        C_ContasCxCONTAPAI: TIntegerField;
        C_ContasCODIGOREDUZIDO: TStringField;
        C_ContasCxTIPOCONTA: TIntegerField;
        C_ContasBcTIPOCONTA: TIntegerField;
        C_ContasCxCODIGOREDUZIDO: TStringField;
        C_ContasBcCODIGOREDUZIDO: TStringField;
        C_ContasCxBcDS: TDataSource;
        C_ContasCxBcCODIGOREDUZIDO: TStringField;
        C_ContasCxBcCONTA: TIntegerField;
        C_ContasCxBcDESCRICAO: TStringField;
        C_ContasCxBcDESCTIPO: TStringField;
        C_ContasCxBcCONTAPAI: TIntegerField;
        C_ContasCxBcTIPOCONTA: TIntegerField;
        C_ContasCxBcSALDO: TBCDField;
        C_ContasCxSALDO: TBCDField;
        C_ContasBcSALDOCONCILIACAO: TBCDField;
        C_ContasBcDATACONCILIACAO: TDateField;
        C_Bancos: TClientDataSet;
        P_Bancos: TDataSetProvider;
        Q_Bancos: TIBQuery;
        C_BancosDS: TDataSource;
        C_BancosFAVORECIDO: TIntegerField;
        C_BancosCODIGO: TStringField;
        C_BancosNOME: TStringField;
        C_ContasCxBcMOVIMENTOCORRENTE: TDateField;
        Q_ChequesLoja: TIBQuery;
        C_ChequesLoja: TClientDataSet;
        P_ChequesLoja: TDataSetProvider;
        C_ChequesLojaDS: TDataSource;
        C_ChequesLojaIDDOC: TIntegerField;
        C_ChequesLojaNOME: TStringField;
        C_ChequesLojaVENCIMENTO: TDateField;
        C_ChequesLojaVALOR: TBCDField;
        C_ChequesLojaNUMCHEQUE: TIntegerField;
        C_ChequesLojaNOMEBANCO: TStringField;
        C_ContasCxBcLIMITECREDITO: TBCDField;
        C_ChequesLoja_icSelecionado: TIntegerField;
        C_CartoesCredCONTARECEBER: TIntegerField;
        Q_Aux: TIBQuery;
        C_CartoesBusCONTARECEBER: TIntegerField;
        C_OutrasFormaCONTARECEBER: TIntegerField;
        C_OutrasFormaCONTAPAGAR: TIntegerField;
        C_CartoesBusCONTAPAGAR: TIntegerField;
        Q_Contabil: TIBQuery;
        C_ChequesLojaCONTAATUAL: TIntegerField;
        IBEventos_Financeiro: TIBEvents;
        Q_SQL3: TIBQuery;
        C_ChequesElet: TClientDataSet;
        C_ChequesEletoDS: TDataSource;
        P_ChequesElet: TDataSetProvider;
        Q_ChequesElet: TIBQuery;
        C_ChequesEletFORMAPAGAMENTO: TIntegerField;
        C_ChequesEletDESCRICAO: TStringField;
        C_ChequesEletESPECIE: TIntegerField;
        C_ChequesEletREFCREDITO: TStringField;
        C_ChequesEletCARENCIACREDITO: TIntegerField;
        C_ChequesEletCONTALIBERACAO: TIntegerField;
        C_ChequesEletDESATIVADO: TStringField;
        C_ChequesEletMENORPARCELA: TBCDField;
        C_ChequesEletENCARGOS: TBCDField;
        C_ChequesEletSIGLA: TStringField;
        C_ChequesEletCODIGOECF: TStringField;
        C_ChequesEletMELHORDIACOMPRA: TIntegerField;
        C_ChequesEletFORNECEDOR: TIntegerField;
        C_ChequesEletCONTA: TIntegerField;
        C_ChequesEletCONTARECEBER: TIntegerField;
        C_ChequesEletCONTAPAGAR: TIntegerField;
        Q_ChequesDev: TIBQuery;
        C_ChequesDev: TClientDataSet;
        C_ChequesDevDS: TDataSource;
        P_ChequesDev: TDataSetProvider;
        C_ChequesDevBANCO: TStringField;
        C_ChequesDevNUMCHEQUE: TIntegerField;
        C_ChequesDevDATA: TDateField;
        C_ChequesDevDESPESAS: TBCDField;
        C_ChequesDevENCARGOS: TBCDField;
        C_ChequesDevIDDOC: TIntegerField;
        C_ChequesDevTotal: TCurrencyField;
        C_ChequesDev_icSelecionado: TIntegerField;
        Beep: TBTBeeper;
        C_CartoesCredCARTAOTEF: TStringField;
        C_ChequesDevVALOR: TBCDField;
        procedure IBEventos_FinanceiroEventAlert(Sender: TObject;
            EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
        procedure C_ChequesDevDESPESASChange(Sender: TField);
        procedure C_ChequesDevCalcFields(DataSet: TDataSet);
    private
        { Private declarations }
        nValoresEstoque: TValoresEstoque;
        nTentativas: Integer;
        bGravouSaida: Boolean;
        sErro: string;
        sDebugBaixa: TStringList;
        function GetCaixa_Situacao: string;
        function GetCaixa_MovimentoCorrente: TDateTime;
        function GetCaixa_FuncResponsavel: integer;
        function GetCaixa_Nome: string;
        function GetCaixa_Turno: Integer;
        function GetCaixa(sCampo: string): Variant;
        procedure TransferirTitulosParaCobranca(DiasAtraso: integer; sSelecionados: string = '');
    public
        { Public declarations }
        nContaPadrao: integer;
        sNomeContaPadrao: string;
        procedure FecharDataSets;
        function Invoices(DataI, DataF: TDateTime): Currency;
        function Recebimentos(DataI, DataF: TDateTime): Currency;
        function Compras(DataI, DataF: TDateTime): Currency;
        function Pagamentos(DataI, DataF: TDateTime): Currency;
        function ParcelasAReceber(DataI, DataF: TDateTime): Currency;
        function ContasAPagar(DataI, DataF: TDateTime): Currency;
        function ChequesACompensar(DataI, DataF: TDateTime; Conta: integer = 0): Currency;
        function ChequesADepositar(DataI, DataF: TDateTime): Currency;
        function QueryToString(Query: TIBQuery): string;
        procedure InvoicesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime; idTabela, idFormaPagamento: integer);
        procedure TotalInvoicesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime);
        procedure TotalInvoicesDuplicata(Query: TIBQuery; DataI, DataF: TDateTime);
        procedure TotalInvoicesCanceladas(Query: TIBQuery; DataI, DataF: TDateTime);
        procedure TotalPorVendedor(Query: TIBQuery; DataI, DataF: TDateTime);
        function TotalGeralVendedor(Query: TIBQuery; DataI, DataF: TDateTime): string;
        procedure ItensPorGrupo(Query: TIBQuery; DataI, DataF: TDateTime; tipoitem, idGrupo: integer);
        procedure TransacoesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime);
        procedure InvoicesPorCliente(Query: TIBQuery; DataI, DataF: TDateTime; Cliente: integer = 0);
        procedure InvoicesPorItem(Query: TIBQuery; DataI, DataF: TDateTime; Item: integer = 0);
        function getSaldoContas(dDataInicial: TDateTime): string;

        function ExisteChequeDevolvido(Favorecido: integer): boolean; //Implica que liquida o pagamento
        function CalculaJuros(Valor, Juros: Currency; Dias: integer): Currency;
        procedure CancelarLancamentos(sIDGerador: string);
        procedure AjustaRecebimentoContas(nIDSaida: integer; sDepositos: string);
        //
        function CreditarEmContaChequeEletronico(dFinanceiro, dSistema: TDateTime): Currency;
        function VerificaValidade(sValidade: string): boolean;
        function getSaldoBeginBalance(Conta: integer): Currency;
        function getVencimentoParcela(id: integer): TDateTime;
        function getVencimentoDuplicata(id: integer): TDateTime;
        function SetStatus(Vencimento: TDateTime): integer;
        function getContaReceber(FormaPagamento: integer = 0; dData: TDateTime = 0; Vencimento: TDateTime = 0): integer;
        function getContaPagar(FormaPagamento: integer = 0; dData: TDateTime = 0; Vencimento: TDateTime = 0): integer;
        function getBancoConta(Conta: integer): integer;
        function getFormaPagamentoDoc(IDDoc: integer): integer;
        function getValorDoc(IDDoc: integer): Currency;
        function ExisteConta(Conta: integer): Boolean;
        procedure CarregarContasOperacao(C_ContasOperacao: TClientDataSet; IDGerador: integer);
        function ValidaContas(C_ContasOperacao: TClientDataSet; TotalContas, TotalOperacao: Currency; DescFaltaConta: string = ''): boolean;
        function DescontarCheques(sCheques: string; ValorOperacao: Currency): integer;
        function getContaDeposito(Deposito: integer): integer;
        function getFavorecidoDeposito(Deposito: integer): integer;
        function getFavorecidoParcela(Parcela: integer): integer;
        function getFavorecidoRetirada(Retirada: integer): integer;
        function getFavFormaPagamento(FormaPagamento: integer): integer;
        function getParcelaMinima(FormaPagamento: integer): currency;
        function getContaFormaPagamento(FormaPagamento: integer): integer;
        function getFormaPagamento(nFormaPagamento: integer): string; overload;
        function getFormaPagamento(sFormaPagamento: string): integer; overload;
        function getCarenciaCredito(FormaPagamento: integer; Data: TDateTime): TDateTime; overload;
        function getCarenciaCredito(FormaPagamento: integer): integer; overload;
        function getEncargos(FormaPagamento: integer; Valor: Currency = 0): Currency;
        function getMelhorDiaCompra(FormaPagamento: integer): integer;
        function getEspecie(nFormaPagamento: integer): string;
        function getEspecieID(nFormaPagamento: integer): integer;
        function getTransacaoEspecie(nEspecie: integer): string;
        function getFavorecido(nFavorecido: integer): string;
        function getBancoDaConta(Conta: integer): integer;
        function getDescricaoConta(Conta: integer): string;
        function getTipoRetirada(IDDoc: integer): integer;
        function getTituloOperacao(Operacao: integer): integer;
        procedure getChequesEmLoja(sCheques: string = ''; bTodos: boolean = false);
        procedure AuditoriaFinanceira(Tipo: integer; Descricao, Tabela: string; ID: integer; Valor: currency = 0; IDGerador: integer = 0; TipoOperacao: integer = 0; Conta: integer = 0); overload;
        procedure AuditoriaFinanceira(sQuery: string); overload;
        procedure InserirContasOperacao(C_ContasOperacao: TClientDataSet; IDGerador, Origem: integer);
        function ApagarTitulo(Titulo: integer): boolean;
        function ApagarDuplicata(Duplicata: integer): boolean;
        function ApagarDoc(IDDoc: integer; bApagarDoc: boolean = false): integer;
        procedure InserirOperacoesDoc(IDDoc, IDGerador, TipoOperacao, FormaPagamento, Status: integer; Valor: Currency);
        function AlterarContaCheques(ContaAtual: integer; sSelecionados: string): integer;
        procedure RegistrarCredito(Favorecido, IDGerador: Integer; TipoOperacao: integer; EmpresaDevendo: boolean; CredMenos, CredMais: currency; OBS: string);
        procedure EstornarCredito(IDGerador: integer);
        function CreditoFavorecido(Favorecido: Integer; EmpresaDevendo: boolean): currency;
        function GetTitulos(Id: integer): string;
        function GetDuplicatas(Id: integer): string;
        function SaldoCliente(Favorecido: Integer): currency;
        function SaldoFornecedor(Favorecido: Integer): currency;
        function SaldoConta(Conta: Integer; DataFinal: TDateTime; Especie: string = ''): Currency;
        function TotalEmCreditos(nConta: integer; DataIni, DataFim: TDatetime): Currency;
        function TotalEmDebitos(nConta: integer; DataIni, DataFim: TDatetime): Currency;
        function getContaBancoPadrao(Favorecido: integer = 0): integer;
        function ContaFavorecido(ID: integer): integer;
        function EhCaixa: Boolean;
        function ContaCaixaValida(nConta: Integer): boolean;
        procedure LancamentoDeTroco(Conta: integer; Data: TDateTime; Valor: Currency; Favorecido, IDGerador, TipoOperacao: integer; bRecebimento: boolean = true);
        function ProximoCheque(nConta: Integer): Integer;
        function ChequesDaRetirada(sRetirada: string; Conta: integer): string;
        function getOperacaoDet(sOperacoes: string; bComposto: boolean = true): string;
        function getOperacao(IDDoc: integer; TipoOperacao: integer = 0): integer;
        function getSituacaoOperacao(Operacao: integer): string;
        function getSituacaoDeposito(Deposito: integer): string;
        function getDeposito(IDDoc: integer): integer;
        function getDespesasDev(Deposito: integer): Currency;

        procedure AbrirCaixa(dData: TDateTime; Valor: currency; Proveniente, FuncResponsavel: Integer);
        procedure RepasseEntreEmpresas(ValorDinheiro, ValorCheque: Currency; sIDDoc: string; Empresa: integer);
        procedure Repasse(ValorDinheiro, ValorCheque: Currency; sIDDoc: string);
        procedure RepasseDinheiro(Valor: currency);
        procedure RepasseCheques(FormaPagamento: integer; sIDDoc: string);
        procedure FecharCaixa;
        function UsuarioCaixa: integer;
        procedure ApagarDeposito(Deposito: integer; bApagarTitulo: boolean = false; bApagarDoc: boolean = false);
        procedure ApagarRetirada(Retirada: integer; bApagarDoc: boolean = false);
        function ApagarRetiradaDoc(sIDDoc: string): boolean;
        function VerificarDocumentos(sDepositos: string; bMostrarDoc: boolean = false; sIDDoc: string = ''): boolean;
        function Conta_A_Pagar(Parcela: Integer;
            Valor: currency;
            Vencimento, Competencia: TDateTime;
            OBS: string;
            Natureza, Fornecedor, Compra: Integer;
            NotaFiscal: string;
            nIDOrigemAPagar: integer = 0;
            nIDGeradorAPagar: integer = 0;
            Status: integer = 0;
            nContaDespesa: integer = 0;
            PayRollFunc: integer = 0;
            RefCliente: integer = 0): Integer;

        function Conta_A_Receber(Parcela: Integer;
            ValorAReceber: currency;
            Vencimento: TDateTime;
            Competencia: TDateTime;
            OBS: string;
            Cliente, Venda: Integer;
            NotaFiscal: string;
            nIDOrigemAReceber: integer = 0;
            nIDGeradorAReceber: integer = 0;
            Status: integer = 0;
            nContaReceita: integer = 0;
            nTipoCobranca: Integer = 1): Integer;

        function ReceberRapido(Deposito, Titulo, Favorecido, Conta, Natureza: integer;
            Data, Competencia: TDateTime;
            Historico: string;
            Valor, Juros, Descontos, CreditoUtilizado, CreditoGerado: Currency;
            Vendedor: integer = 0; Troco: Currency = 0; Empresa: integer = -1): integer;

        function PagarRapido(Retirada, Duplicata, Natureza: integer; Data, Competencia: TDateTime;
            Historico: string; Valor, Juros, Descontos, CreditoUtilizado, CreditoGerado, CreditoAbatido: Currency;
            TipoPag: integer = 4; Troco: Currency = 0): integer;

        function PagarDuplicatas(Retirada: integer; sItens: string;
            Data: TDateTime; CreditoUtilizado, CreditoGerado: Currency;
            Historico: string; CreditoAbatido: Currency; Troco: Currency = 0): integer;

        function ReceberTitulos(Deposito: integer; sItens: string; Favorecido, Conta: integer;
            Data: TDateTime; CreditoUtilizado, CreditoGerado: Currency;
            Historico: string;
            Vendedor: integer = 0; Troco: Currency = 0): integer;

        function ReceberDoc(IDDoc, TipoOperacao, Deposito, FormaPagamento: integer;
            Valor: Currency;
            Data: TDateTime;
            Historico: string = '';
            NumCheque: integer = 0;
            Banco: integer = 0;
            TitularCheque: string = ''; ContaTEF: integer = 0;
            ModoCartao: integer = 0; ContaReceber: integer = 0;
            NumeroCartao: string = '';
            Validade: string = '';
            sInfoAdicionais: string = ''): integer;
        //NSU;RedeNSU;DATANSU;HORANSU;NUMEROCONTA;DVCONTA;AGENCIA;DVAGENCIA;DVCHEQUE;IDENTIF

        function PagarDoc(IDDoc, TipoOperacao, Retirada, Conta, Favorecido, FormaPagamento: integer;
            Valor: Currency; Data: TDateTime; NumCheque: integer = 0;
            ChequeNominal: string = ''; ContaPagar: integer = 0; Obs: string = ''): integer;

        function PagarChequesEmLoja(TipoOperacao, Retirada: integer; sIDDoc: string; nFavorecido: integer; sRetiradaDoc: string; Status: integer = 60): integer;

        function BaixarTitulo(sTitulos: string; dDATAANTECIPACAO: TDateTime = 0): boolean;
        function BaixarDuplicata(sDuplicatas: string; RetiradaHist: integer = 0; DinheiroFunc: Currency = 0; Conta: integer = 0): boolean;

        function Reparcelamento(Favorecido: integer; dtData: TDateTime; sParcelas: string; C_NovasParcelasP: TClientDataSet; ValorOperacao, Juros, Descontos: Currency; Plano: integer; var sTitulos: string; nTipoCobranca: Integer = 1): integer;
        function ContabContasOperacao(nConta: integer; nValor: currency; nID: integer; nOrigem: integer = 0): boolean;

        function Conta_Situacao(nConta: Integer): string;
        function Conta_DataMov(nConta: Integer): TDateTime;
        function Conta_Nome(nConta: Integer): string;
        function Conta_TipoConta(nConta: Integer): integer;
        function SaldoChequePre(Conta: integer; dtData: TDatetime = 0): Currency;

        function EspecieDocumento(nEspecie: Integer): Boolean;
        function EspecieAVista(nEspecie: Integer): Boolean;

        function Transferir(nConta_R, nConta_D: integer;
            nValor: currency;
            sHist: string;
            NFiscal, FromBanco: string;
            nFavorec: integer; dData: TDateTime; sRepasse: string = ''; TipoOperacao: integer = 8; Operacao: integer = 0; FormaPagamento: integer = 1): integer;

        function Depositar(TipoOperacao, Operacao, nConta, nContaOrigem: integer;
            dData: TDateTime;
            nValor: currency;
            nNumCheque: integer;
            nTipoDoc: integer;
            sHist: string;
            dVencDoc: TDateTime;
            NFiscal, FromBanco: string;
            nFavorec: integer; Conciliado: string = 'N'; sRepasse: string = ''): Integer;

        function Retirar(TipoOperacao, Operacao, nConta: integer;
            dData: TDateTime;
            nValor: currency;
            NumCheque: integer;
            nFormaPag: integer;
            sHist: string;
            dVencDoc: TDateTime;
            NFiscal, FromBanco: string;
            nFavorec: integer; IDDoc: integer = 0; Conciliado: string = 'N'; sRepasse: string = ''): Integer;

        procedure AtualizaConsumidorFinal(IDGerador, Favorecido: integer);

        {Opera��es com Cheques}
        function DepositarCheques(Conta: integer; Data: TDatetime; ValorOperacao, ValorDinheiro: Currency; Historico: string; Liquidar: Boolean; sItemsSelecionados: string; OperacaoDinheiro: integer): integer;
        function SetChequesEmCustodia(Operacao, Conta: Integer; sCheques: string): boolean;
        function DepositarChequesEmCustodia: boolean;
        function ResgatarCheque(Operacao, Cheque, Conta: Integer; bCreditarNoCaixa: boolean = true): boolean;
        function FazerFactory(Operacao: Integer; sIDDoc: string; Favorecido: integer; dData: TDateTime): Boolean;
        function AcertarChequeDevolvido(IDDoc, Deposito: Integer; TotalFinal, Encargos, Despesas: Currency; var nOperacao: integer): Boolean;
        function ChequeDevolvido(Operacao, IDDoc: integer; Encargos, Despesas: Currency): boolean;
        function CompensarCheques(nConta: integer; sCheques: string; Valor: Currency; dData: TDateTime = 0; Conciliado: string = 'N'): integer;

        {Opera��es com Cart�es}
        function ApresentarCartoes(Itens: string; FormaPagamento, Conta: Integer; Data: TDateTime; Historico: string; ValorOperacao, ValorEncargos: Currency): integer;
        function ApresentarTicket(Itens: string; FormaPagamento: integer; VencApresentacao, Data: TDateTime; Historico: string; ValorOperacao: Currency): integer;
        function ApresentarConveniado(Itens: string; FormaPagamento: integer; VencApresentacao, Data: TDateTime; Historico: string; ValorOperacao: Currency): integer;
        function LiquidarCartoes(sOperacoesApresentacao: string; Conta: integer; dData: TDateTime): string;

        {Funcoes de estorno completo - usa as funcoes acima para as transacoes necess�rias}
        function CancelarTitulo(Titulo: Integer; Empresa: integer; PDV: integer; sMotivo: string; bMotivo, bTransacao: Boolean; bAPagarDeposito: Boolean = True): Boolean;
        function CancelarDeposito(sDepositos: string; sMotivo: string; bMotivo, bTransacao: Boolean): Boolean;
        function CancelarDepositoDoc(IDDoc: Integer; sMotivo: string; bMotivo, bTransacao: Boolean): Boolean;
        function CancelarDuplicata(Duplicata: Integer; sMotivo: string; bMotivo: Boolean; bTransacao: Boolean): Boolean;
        function CancelarRetirada(sRetiradas: string; sMotivo: string; bMotivo, bTransacao: Boolean): Boolean;
        function CancelarRetiradaDoc(IDDoc: Integer; sMotivo: string; bMotivo, bTransacao: Boolean): Boolean;
        procedure CancelarOperacao(sOperacoes: string; TipoOperacao: integer; IDDoc: integer = 0);

        function ConciliarConta(Data: TDateTime; Conta: integer; Saldo: Currency; sDepositos, sPagamentos, sCheques: string; Ajuste: TClientDataSet): boolean;

        function ExcluirTransacoes(nIDGerador: integer): boolean;

        function Caixa_NomeFuncResp: string;

        function IntervaloParcelas(formapagamento: integer): integer;

        function ValoresEstoque(): TValoresEstoque;

        property Caixa_Nome: string
            read GetCaixa_Nome;

        property Caixa_Situacao: string
            read GetCaixa_Situacao;

        property Caixa_MovimentoCorrente: TDateTime
            read GetCaixa_MovimentoCorrente;

        property Caixa_FuncResponsavel: Integer
            read GetCaixa_FuncResponsavel;

    end;

var
    DMFinanceiro: TDMFinanceiro;

implementation
uses funcoes, Util2, Dlg_AlterarConta, DM_Projeto, TDM_Projeto;
{$R *.DFM}

{In�cio da Implementa��o}

function TDMFinanceiro.ValoresEstoque(): TValoresEstoque;
var
    nValoresEstoque: TValoresEstoque;
begin
    with DMProjeto.StoreProcedure do
        begin
            StoredProcName := 'PP_VALORESESTOQUE';
            ExecProc;
            nValoresEstoque.PrecoCompra := ParamByName('PRECOCOMPRA').AsCurrency;
            nValoresEstoque.CustoMedio := ParamByName('CUSTOMEDIO').AsCurrency;
            nValoresEstoque.CMV := ParamByName('CMV').AsCurrency;
            nValoresEstoque.PrecoVenda := ParamByName('PRECOVENDA').AsCurrency;
            nValoresEstoque.Lucro := ParamByName('LUCRO').AsCurrency;
        end;
    result := nValoresEstoque;
end;

{Caixa}

procedure TDMFinanceiro.FecharDataSets;
var
    i: integer;
begin
    for i := 0 to ComponentCount - 1 do
        if Components[i] is TDataSet then
            TDataSet(Components[i]).Close;
end;

function TDMFinanceiro.GetCaixa_Situacao;
var
    r: Variant;
begin
    r := GetCaixa('Situacao');
    if r <> null then
        result := r
    else
        result := '';
end;

function TDMFinanceiro.GetCaixa_MovimentoCorrente;
var
    r: Variant;
begin
    r := GetCaixa('MovimentoCorrente');
    if r <> null then
        result := r
    else
        result := DMProjeto.dDataSistema;
end;

function TDMFinanceiro.GetCaixa_FuncResponsavel;
var
    r: Variant;
begin
    r := GetCaixa('UsuarioCaixa');
    if r <> null then
        result := r
    else
        result := 0;
end;

function TDMFinanceiro.GetCaixa_Nome;
var
    r: Variant;
begin
    r := GetCaixa('Nome');
    if r <> null then
        result := r
    else
        result := '';
end;

function TDMFinanceiro.GetCaixa_Turno;
var
    r: Variant;
begin
    r := GetCaixa('Turno');
    if r <> null then
        result := r
    else
        result := 0;
end;

function TDMFinanceiro.GetCaixa;
begin
    with Q_SQL2 do
        begin
            if sCampo = 'Nome' then
                begin
                    sCampo := 'Descricao';
                    SQL.Text := 'Select Descricao from Contas Where Conta = :C ';
                end
            else
                SQL.Text := 'Select ' + sCampo + ' from Contas where Conta = :C ';

            Params[0].asInteger := nContaPadrao;

            Open;

            result := Q_SQL2[sCampo];

            Close;
        end;
end;

function TDMFinanceiro.getFormaPagamento(nFormaPagamento: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select descricao from formaspagamento ' +
                'where formapagamento = :FormaPagamento';
            parambyname('FormaPagamento').AsInteger := nFormaPagamento;
            open;
            result := fieldbyname('descricao').AsString;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getFormaPagamentoDoc(IDDoc: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select formapagamento from depositosdoc ' +
                'where iddoc = :iddoc';
            parambyname('IDDoc').AsInteger := IDDoc;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getValorDoc(IDDoc: integer): Currency;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select Valor from depositosdoc ' +
                'where iddoc = :iddoc';
            parambyname('IDDoc').AsInteger := IDDoc;
            open;
            result := fields[0].AsCurrency;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getEspecieID(nFormaPagamento: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            SQL.Text := 'Select Especie from FormasPagamento where FormaPagamento = :F';
            Params[0].asInteger := nFormaPagamento;
            Open;
            result := FieldByName('Especie').asInteger;
            Close;
            Free;
        end;
end;

function TDMFinanceiro.getTransacaoEspecie(nEspecie: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            SQL.Text := 'Select LancarEmTransacoes from EspeciesTitulos where Especie = :E';
            Params[0].asInteger := nEspecie;
            Open;
            result := FieldByName('LancarEmTransacoes').asString;
            Close;
            Free;
        end;
end;

function TDMFinanceiro.getEspecie(nFormaPagamento: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            SQL.Text := 'Select e.sigla from FormasPagamento f, especiestitulos e where FormaPagamento = :F and f.especie = e.especie';
            Params[0].asInteger := nFormaPagamento;
            Open;
            result := FieldByName('sigla').asString;
            Close;
            Free;
        end;
end;

function TDMFinanceiro.getFavorecido(nFavorecido: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select nome from favorecidos ' +
                'where favorecido = :Fav';
            parambyname('Fav').AsInteger := nFavorecido;
            open;
            result := fieldbyname('nome').AsString;
            close;
            free;
        end;
end;

function TDMFinanceiro.getFavFormaPagamento(FormaPagamento: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select fornecedor from formaspagamento ' +
                'where formapagamento = :Fp ';
            parambyname('Fp').AsInteger := FormaPagamento;
            open;
            result := fieldbyname('fornecedor').AsInteger;
            close;
            free;
        end;
end;

function TDMFinanceiro.getParcelaMinima(FormaPagamento: integer): currency;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select menorparcela from formaspagamento ' +
                'where formapagamento = :Fp ';
            parambyname('Fp').AsInteger := FormaPagamento;
            open;
            result := fields[0].AsCurrency;
            close;
            free;
        end;
end;

function TDMFinanceiro.getContaFormaPagamento(FormaPagamento: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select contaliberacao from formaspagamento ' +
                'where formapagamento = :Fp ';
            parambyname('Fp').AsInteger := FormaPagamento;
            open;
            result := fields[0].AsInteger;
            close;
            free;
        end;
end;

function TDMFinanceiro.getBancoDaConta(Conta: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select Banco from Contas ' +
                'where conta = :Conta';
            parambyname('Conta').AsInteger := Conta;
            open;
            result := fieldbyname('banco').AsInteger;
            close;
            free;
        end;
end;

procedure TDMFinanceiro.AuditoriaFinanceira(Tipo: integer; Descricao, Tabela: string; ID: integer; Valor: Currency = 0; IDGerador: integer = 0; TipoOperacao: integer = 0; Conta: integer = 0);
begin
    if DMProjeto.Parametro('AuditoriaFinanceira') <> 'S' then
        Exit;

    with Q_Auditorias do
        begin
            close;
            SQL.Text := 'insert into Auditorias ' +
                '(Data,Hora,Usuario,Tipo,Descricao,Tabela,IDTabela,Valor,IDGerador,TipoOperacao, Conta) ' +
                'values ' +
                '(current_date,current_time,:Usuario,:Tipo,:Descricao,:Tabela,:IDTabela,:Valor,:IDGerador,:TipoOperacao,:Conta)';
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('Tipo').AsInteger := Tipo;
            ParamByName('Descricao').AsString := Descricao;
            ParamByName('Tabela').AsString := Tabela;
            ParamByName('IDTabela').AsInteger := ID;
            ParamByName('Valor').AsCurrency := Valor;
            ParamByName('IDGerador').AsInteger := IDGerador;
            ParamByName('TipoOperacao').AsInteger := TipoOperacao;
            ParamByName('Conta').AsInteger := Conta;
            nTentativas := 0;
            bGravouSaida := False;
            repeat
                try
                    ExecSQL;
                    Close;
                    nTentativas := 3;
                    bGravouSaida := True;
                except
                    on e: Exception do
                        begin
                            sErro := sErro + e.Message;
                            Inc(nTentativas);
                            Sleep(20);
                        end;
                end;
            until nTentativas = 3;
            if not (bGravouSaida) then
                begin
                    Beep.BeepFor(800, 1000);
                    Beep.BeepFor(500, 800);
                    DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + ' AuditoriaFinanceira - 762 ' + #13 + #13 + sErro)]);
                end;
        end;

end;

procedure TDMFinanceiro.AuditoriaFinanceira(sQuery: string);
begin
    if DMProjeto.Parametro('AuditoriaFinanceira') <> 'S' then
        Exit;
    with Q_Auditorias do
        begin
            try
                close;
                SQL.Text := 'insert into Auditorias (Data,Hora,Usuario,Tipo,Descricao,Tabela,IDTabela,Valor,IDGerador,TipoOperacao,Conta) ' + sQuery;
                nTentativas := 0;
                bGravouSaida := False;
                repeat
                    try
                        ExecSQL;
                        Close;
                        nTentativas := 3;
                        bGravouSaida := True;
                    except
                        on e: Exception do
                            begin
                                sErro := sErro + e.Message;
                                Inc(nTentativas);
                                Sleep(20);
                            end;
                    end;
                until nTentativas = 3;
                if not (bGravouSaida) then
                    begin
                        Beep.BeepFor(800, 1000);
                        Beep.BeepFor(500, 800);
                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + ' AuditoriaFinanceira - 770 ' + #13 + #13 + sErro)]);
                    end;
            except
            end;
        end;
end;

function TDMFinanceiro.UsuarioCaixa;
begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select conta from contas where usuariocaixa = ' + IntToStr(DMProjeto.nFuncionario);
            open;
            if recordcount > 0 then
                result := fieldbyname('conta').asinteger
            else
                result := 1;
            close;
        end;
end;

function TDMFinanceiro.TotalEmCreditos(nConta: integer; DataIni, DataFim: TDatetime): Currency;
begin
    with Q_SQL do
        begin
            Close;
            {Creditos}
            SQL.Text := 'SELECT Sum(t.Valor) as Creditos ' +
                'FROM   Transacoes t ' +
                'WHERE  t.Conta = :nConta and t.TipoTransacao = ''C'' ' +
                'and    t.Data >= :DI and t.Data <= :DF ';
            ParamByName('nConta').asInteger := nConta;
            ParamByName('DI').asDatetime := Trunc(DataIni);
            ParamByName('DF').asDatetime := Trunc(DataFim);
            Open;
            result := FieldByName('Creditos').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.TotalEmDebitos(nConta: integer; DataIni, DataFim: TDatetime): Currency;
begin
    with Q_SQL do
        begin
            Close;
            {Debitos}
            SQL.Text := 'SELECT Sum(t.Valor) as Debitos ' +
                'FROM   Transacoes t ' +
                'WHERE  t.Conta = :nConta and t.TipoTransacao = ''D'' ' +
                'and    t.Data >= :DI and t.Data <= :DF ';
            ParamByName('nConta').asInteger := nConta;
            ParamByName('DI').asDatetime := Trunc(DataIni);
            ParamByName('DF').asDatetime := Trunc(DataFim);
            Open;
            result := FieldByName('Debitos').AsCurrency; //Retorna negativo.
            Close;
        end;
end;

function TDMFinanceiro.SaldoConta;
var nSaldo: Currency;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_SALDOCONTA';
            ParamByName('Conta').asInteger := Conta;
            ParamByName('Data').asDateTime := DataFinal + 1;
            ParamByName('Especie').asString := Especie;
            ExecProc;
            nSaldo := ParamByName('Saldo').AsCurrency;
            result := nSaldo;
            Close;
        end;
end;

function TDMFinanceiro.getContaBancoPadrao(Favorecido: integer = 0): integer;
var nConta: integer;
begin
    nConta := 0;
    with Q_ComandoSQL do
        begin
            if Favorecido <> 0 then
                begin
                    close;
                    sql.text := 'select contapagamento from favorecidos where favorecido = ' + IntToStr(Favorecido);
                    open;
                    nConta := fields[0].AsInteger;
                    if (nConta > 0) and (not DMFinanceiro.ExisteConta(nConta)) then
                        nConta := 0;
                end;
            if nConta = 0 then
                begin
                    nConta := DMProjeto.ContaPadrao(11);
                    if nConta = 0 then
                        begin
                            close;
                            sql.text := 'select conta from contas where tipoconta=2 and desativado=''N''';
                            open;
                            nConta := fields[0].AsInteger;
                            if not DMFinanceiro.ExisteConta(nConta) then
                                nConta := 0;
                        end;
                end;
        end;
    result := nConta;
end;

function TDMFinanceiro.getDescricaoConta(Conta: integer): string;
begin
    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'select descricao from contas where conta = ' + IntToStr(Conta);
            Open;
            result := fieldbyname('descricao').AsString;
            Close;
        end;
end;

function TDMFinanceiro.GetTitulos(Id: integer): string;
var sID: string;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select titulo from depositostitulos where deposito = ' + IntToStr(Id);
            open;
            first;
            sID := '';
            disablecontrols;
            while not EOF do
                begin
                    sID := sID + fieldbyname('titulo').AsString + ',';
                    Next;
                end;
            enablecontrols;
            sID := Copy(sID, 1, length(sID) - 1);
            result := sID;
            Close;
        end;
end;

function TDMFinanceiro.GetDuplicatas(Id: integer): string;
var sID: string;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select duplicata from retiradasduplicatas where retirada = ' + IntToStr(Id);
            open;
            first;
            sID := '';
            disablecontrols;
            while not EOF do
                begin
                    sID := sID + fieldbyname('duplicata').AsString + ',';
                    Next;
                end;
            enablecontrols;
            sID := Copy(sID, 1, length(sID) - 1);
            result := sID;
            Close;
        end;
end;

procedure TDMFinanceiro.RegistrarCredito;
var
    nCredito: currency;
    nID: integer;
    sDescricao: string;
begin
    nCredito := CredMais - CredMenos;
    with Q_SQL do
        begin
            nID := DMProjeto.Gen_ID('GEN_TRANSACOESC', true);
            Close;
            SQL.Text := 'Insert into TransacoesCreditos (Data, Favorecido, Valor, FatoGerador, Usuario, EmpresaDevendo, IDGerador, TipoOperacao, pdv, empresa) ' +
                'Values (:Data, :Favorecido, :Valor, :Fato, :Func, :EmpDev, :R_D, :TipoOperacao, :pdv, :empresa ) ';
            ParamByName('Data').asDate := DMProjeto.dDataSistema; // Data da Transa��o
            ParamByName('Favorecido').asInteger := Favorecido;
            ParamByName('Valor').AsCurrency := nCredito;
            ParamByName('Fato').asString := Copy(OBS, 1, 50);
            ParamByName('Func').asInteger := DMProjeto.nFuncionario;
            ParamByName('TipoOperacao').asInteger := TipoOperacao;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            if EmpresaDevendo then
                begin
                    ParamByName('EmpDev').asString := 'S';
                    sDescricao := 'Gerado um cr�dito para ' + getFavorecido(Favorecido) + ' no valor de ' + formatfloat('###,##0.00', nCredito);
                end
            else
                begin
                    ParamByName('EmpDev').asString := 'N'; //A Empresa possui um Cr�dito para com o Favorecido
                    sDescricao := 'Gerado um cr�dito para a Empresa, devedor: ' + getFavorecido(Favorecido) + ' no valor de ' + formatfloat('###,##0.00', nCredito);
                end;
            ParamByName('R_D').asInteger := IDGerador;
            ExecSQL;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;
    if nCredito > 0 then
        AuditoriaFinanceira(32, sDescricao + ' referente a ' + Copy(OBS, 1, 50), 'TransacoesCreditos', nID, Abs(nCredito), IDGerador, TipoOperacao)
    else
        AuditoriaFinanceira(10, sDescricao + ' referente a ' + Copy(OBS, 1, 50), 'TransacoesCreditos', nID, Abs(nCredito), IDGerador, TipoOperacao);
end;

procedure TDMFinanceiro.EstornarCredito;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'delete from TransacoesCreditos where IDGerador = :IDGerador';
            ParamByName('IDGerador').AsInteger := IDGerador;
            ExecSQL;
            Close;
        end;
end;

function TDMFinanceiro.CreditoFavorecido; //05/11/2000
begin
    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'Select sum(Valor) as SaldoCredito from TransacoesCreditos ' +
                'where Favorecido = :F and EmpresaDevendo = :E ';
            ParamByName('F').asInteger := Favorecido;
            if EmpresaDevendo then
                ParamByName('E').asString := 'S'
            else
                ParamByName('E').asString := 'N';

            Open;

            result := FieldByName('SaldoCredito').AsCurrency;

            Close;
        end;
end;

function TDMFinanceiro.SaldoCliente;
begin
    with Q_Transacoes do
        begin

            SQL.Text := 'Select sum(faltareceber) as Saldo from TitulosAReceber ' +
                'where Cliente = :F and Status > 0 and Status < 50 ';
            ParamByName('F').asInteger := Favorecido;
            Open;

            result := FieldByName('Saldo').AsCurrency;

            Close;
        end;
end;

function TDMFinanceiro.SaldoFornecedor;
begin
    with Q_Transacoes do
        begin

            SQL.Text := 'Select sum(faltapagar) as Saldo from DuplicatasAPagar ' +
                'where Fornecedor = :F and Status > 0 and Status < 50 ';
            ParamByName('F').asInteger := Favorecido;
            Open;

            result := FieldByName('Saldo').AsCurrency;

            Close;
        end;
end;

function TDMFinanceiro.EhCaixa;
var
    bFunc: boolean;
    sComp, sChave: string;
begin
    result := false;

    bFunc := true; // Parametro('AssociarCaixa') = 'Funcionario';

    if bFunc then
        sChave := AdicionarStr(InttoStr(DMProjeto.nFuncionario), '0', 5);

    sChave := ',' + sChave + ',';

    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select * from Contas where TipoConta = 1 and Desativado = ''N'' ';
            Open;
            disablecontrols;
            while not eof do
                begin
                    if bFunc then
                        sComp := FieldByName('Usuario').asString;

                    if pos(sChave, ',' + sComp + ',') > 0 then
                        begin
                            result := true; // o funcionario ou a m�quina est�o vinculados a um caixa;
                            //nContaCaixaVinculada := FieldByName('Conta').asInteger;
                            break;
                        end;
                    next;
                end;
            enablecontrols;
            Close;
        end;
end;

function TDMFinanceiro.ContaCaixaValida;
begin
    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'Select * from Contas where Conta = :C and TipoConta = 1 and Desativado = ''N'' ';
            Params[0].asInteger := nconta;
            Open;

            result := (recordcount > 0); //encontrou

            Close;
        end;
end;

function TDMFinanceiro.ChequesDaRetirada;
var
    sCheques: string;
begin
    if sRetirada = '' then
        sRetirada := '0';
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Select IDDoc from RetiradasDoc rd, Formaspagamento fp ' +
                'where rd.Retirada IN (' + sRetirada + ') and rd.Conta = ' + IntToStr(Conta) +
                ' and rd.formapagamento = fp.formapagamento and fp.Especie = 1 and rd.Status < 70 ';
            Open;
            DisableControls;
            sCheques := '';
            while not EOF do
                begin
                    sCheques := sCheques + ',' + FieldByName('IDDoc').asString;
                    Next;
                end;
            EnableControls;
            if sCheques <> '' then
                sCheques[1] := ' ';

            result := trim(sCheques);
            Close;
        end;
end;

function TDMFinanceiro.ProximoCheque;
var
    nUltCheque, nChequeBase: integer;
begin
    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'Select Max(NumCheque) as UltCheque from RetiradasDoc rd ' +
                'where rd.Conta = :C ';
            Params[0].asInteger := nConta;
            Open;

            nUltcheque := FieldByName('UltCheque').asInteger;

            Close;
            SQL.Text := 'Select NumChequeBase from Contas Where Conta = :C';
            Params[0].asInteger := nConta;
            Open;

            nChequeBase := FieldByName('NumChequeBase').asInteger;
            Close;

            if (nChequeBase > nUltCheque) or (nUltCheque = 0) then
                Result := nChequeBase + 1
            else
                Result := nUltCheque + 1;

            Close;

        end;
end;

procedure TDMFinanceiro.AbrirCaixa(dData: TDateTime; Valor: currency; Proveniente, FuncResponsavel: Integer);
begin
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    with Q_SQL do
        begin
            Close;
            {Abrindo o Caixa}
            SQL.Text := 'Update Contas set ' +
                '    Situacao = ''Aberto'', ' +
                '    MovimentoCorrente = :D ' +
                'Where Conta = :C';

            Params[0].asDateTime := dData;
            Params[1].asInteger := nContaPadrao;
            ExecSQL;

            Close;

            if Valor > 0 then
                Transferir(Proveniente, nContaPadrao, Valor, DMProjeto.getMsg(441) + ': ' + Caixa_Nome, '',
                    '', -1, dData);

            DMProjeto.dDataSistema := DMProjeto.getDataServidor;

            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;

            AuditoriaFinanceira(30, 'Abertura do Caixa: ' + Caixa_Nome, '', 0, Valor, 0, 0, nContaPadrao);
        end;
end;

procedure TDMFinanceiro.RepasseEntreEmpresas;
var IDGerador, IDOperacao: integer;
    sNomeEmpresa: string;
begin
    {Repassando Dinheiro para outra Empresa}
    with Q_SQL do
        begin
            close;
            sql.text := 'select nome from favorecidos where favorecido = ' + IntToStr(Empresa);
            Open;
            sNomeEmpresa := fields[0].AsString;
            Close;
        end;

    IDOperacao := DMProjeto.NextIDGlobal;

    if ValorDinheiro > 0 then
        begin

            IDGerador := Retirar(58, IDOperacao, nContaPadrao, DMProjeto.dDataSistema, ValorDinheiro,
                0, 1, 'Transfer�ncia p/ ' + sNomeEmpresa, DMProjeto.dDataSistema, '', 'N', Empresa);

            AuditoriaFinanceira(16, 'Caixa: ' + Caixa_Nome + ' em Dinheiro', 'Transacoes', 0, ValorDinheiro, IDGerador, 58, nContaPadrao);
        end;

    {Lan�ando em Opera��es Financeiras}

    with Q_Transacoes do
        begin
            close;
            sql.text := 'insert into operacoesfinanceiras ' +
                '(operacao, tipooperacao, favorecido, data, valoroperacao, ' +
                '	valordinheiro, contaorigem, contadestino, titulo, usuario, historico, pdv, empresa) ' +
                'values ' +
                '(:operacao, 58, :favorecido, :data, :valoroperacao, ' +
                '	:valordinheiro, :contaorigem, :empresa, :titulo, :usuario, :historico, :pdv, :empresa)';
            parambyname('operacao').asInteger := IDOperacao;
            parambyname('favorecido').asInteger := Empresa;
            parambyname('data').AsDatetime := DMProjeto.dDataSistema;
            parambyname('valoroperacao').asCurrency := ValorDinheiro + ValorCheque;
            parambyname('valordinheiro').asCurrency := ValorDinheiro;
            parambyname('contaorigem').asInteger := nContaPadrao;
            parambyname('empresa').asInteger := Empresa;
            parambyname('titulo').asInteger := IDGerador;
            parambyname('usuario').asInteger := DMProjeto.nFuncionario;
            parambyname('historico').asString := sIDDoc;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            execsql;

            {Lan�ando em Opera��es Financeiras Detalhe (Cheques)}
            if sIDDoc <> '' then
                begin
                    close;
                    sql.text := 'insert into operacoesfinanceirasdet ' +
                        '(operacao, numcheque, vencimento, valor, banco, ' +
                        ' favorecido, iddoc, contaatual, pdv, empresa) ' +
                        ' select :operacao, dd.numcheque, dd.vencimento, dd.valor, dd.banco, ' +
                        ' d.favorecido, dd.iddoc, dd.contaatual, d.pdv, d.empresa ' +
                        ' from depositosdoc dd ' +
                        ' inner join depositos d on d.deposito = dd.deposito ' +
                        ' where dd.iddoc IN (' + sIDDoc + ')';
                    sql.text := replace(sql.text, ':operacao', IntToStr(IDOperacao));
                    execsql;
                end;
        end;

    {Repassando Cheques para outra Empresa}
    if sIDDoc <> '' then
        begin

            with Q_Transacoes do
                begin
                    {Retirando do Caixa}
                    Close;
                    SQL.Text := 'Insert into Transacoes ' +
                        '    (Conta, ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                        '     Historico,Favorecido,Usuario,Hora,TipoOperacao, pdv, empresa) ' +
                        'Select dd.ContaAtual, dd.ContaAtual, :Data, (-1) * Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDDoc, ' +
                        '''Transfer�ncia p/ ' + sNomeEmpresa + ''', ' +
                        IntToStr(Empresa) + ' , :Usuario, CURRENT_TIME, 58, dd.pdv , dd.empresa' +
                        'From DepositosDoc dd ' +
                        'Where dd.IDDoc IN (' + sIDDoc + ')';

                    SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(IDOperacao));
                    SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Data', QuotedStr(formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente)));

                    ExecSQL;

                    Close;
                    SQL.Text := 'Update DepositosDoc ' +
                        'set DataRepasse = :Data, LocalTitulo = :Loc, ContaAtual = 0, Status = 62 ' +
                        'where IDDoc IN (' + sIDDoc + ')';
                    ParamByName('Data').asDate := DMProjeto.dDataSistema;
                    ParamByName('Loc').asString := sNomeEmpresa;
                    ExecSQL;
                    Close;

                    AuditoriaFinanceira('Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 16, ' +
                        '''Caixa: ' + Caixa_Nome + ' em Cheque'', ' +
                        '''Transacoes'', ' +
                        '(Select ID from Transacoes t Where t.IDGerador = dd.Deposito and t.IDDoc = dd.Iddoc and t.Situacao is null), ' +
                        'dd.Valor, ' +
                        'dd.Deposito, ' +
                        'd.TipoDeposito, ' +
                        IntToStr(nContaPadrao) + ' ' +
                        'From DepositosDoc dd, Depositos d Where IDDoc IN (' + sIDDoc + ') and dd.deposito = d.deposito');
                end;
        end;
end;

procedure TDMFinanceiro.Repasse;
var IDGerador, IDOperacao: integer;
begin
    IDOperacao := DMProjeto.NextIDGlobal;
    {Repassando Dinheiro para o Caixa Principal}
    if ValorDinheiro > 0 then
        begin
            IDGerador := Transferir(nContaPadrao, 1, ValorDinheiro,
                'Repasse p/ Cx.Principal', '',
                '', DMProjeto.nFavEmpresa, Caixa_MovimentoCorrente, 'R', 20, IDOperacao);
            AuditoriaFinanceira(16, 'Caixa: ' + Caixa_Nome + ' em Dinheiro', 'Transacoes', 0, ValorDinheiro, IDGerador, 20, nContaPadrao);
        end;

    {Lan�ando em Opera��es Financeiras}
    with Q_Transacoes do
        begin
            close;
            sql.text := 'insert into operacoesfinanceiras ' +
                '(operacao, tipooperacao, favorecido, data, valoroperacao, ' +
                '	valordinheiro, contaorigem, contadestino, titulo, usuario, historico, pdv, empresa) ' +
                'values ' +
                '(:operacao, 20, :favorecido, :data, :valoroperacao, ' +
                '	:valordinheiro, :contaorigem, :contadestino, :titulo, :usuario, :historico, :pdv, :empresa)';
            parambyname('operacao').asInteger := IDOperacao;
            parambyname('favorecido').asInteger := DMProjeto.nFuncionarioLogado;
            parambyname('data').AsDatetime := DMProjeto.dDataSistema;
            parambyname('valoroperacao').asCurrency := ValorDinheiro + ValorCheque;
            parambyname('valordinheiro').asCurrency := ValorDinheiro;
            parambyname('contaorigem').asInteger := nContaPadrao;
            parambyname('contadestino').asInteger := 1; //Caixa Principal
            parambyname('titulo').asInteger := IDGerador;
            parambyname('usuario').asInteger := DMProjeto.nFuncionario;
            parambyname('historico').asString := sIDDoc;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            execsql;

            {Lan�ando em Opera��es Financeiras Detalhe (Cheques)}
            if sIDDoc <> '' then
                begin
                    close;
                    sql.text := 'insert into operacoesfinanceirasdet ' +
                        '(operacao, numcheque, vencimento, valor, banco, ' +
                        ' favorecido, iddoc, contaatual, pdv, empresa) ' +
                        ' select :operacao, dd.numcheque, dd.vencimento, dd.valor, dd.banco, ' +
                        ' d.favorecido, dd.iddoc, dd.contaatual, dd.pdv, dd.empresa ' +
                        ' from depositosdoc dd ' +
                        ' inner join depositos d on d.deposito = dd.deposito ' +
                        ' where dd.iddoc IN (' + sIDDoc + ')';
                    sql.text := replace(sql.text, ':operacao', IntToStr(IDOperacao));
                    execsql;
                end;

            {Repasse de Cart�o de Cr�dito}
            Close;
            SQL.Text := ' Insert into Transacoes ' +
                '    (Conta, ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                '     Situacao, Historico,Favorecido,Usuario,Hora, TipoOperacao, pdv, empresa) ' +
                ' Select dd.ContaAtual, 1, :Data, (-1) * Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDDoc, ' +
                '       ''R'', ''Repasse p/ Cx. Principal'', ' +
                '       -1, :Usuario, CURRENT_TIME, 20, dd.pdv , dd.empresa ' +
                ' From DepositosDoc dd ' +
                ' Inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                ' Where dd.ContaAtual = :Conta and fp.especie = 3 ';

            SQL.Text := replace(SQL.Text, ':Conta', IntToStr(nContaPadrao));
            SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(IDOperacao));
            SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
            SQL.Text := replace(SQL.Text, ':Data', QuotedStr(formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente)));

            ExecSQL;

            {Depositando no Caixa Principal}
            Close;
            SQL.Text := 'Insert into Transacoes ' +
                ' (Conta,ContaOrigem,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                ' Situacao, Historico,Favorecido,Usuario,Hora, TipoOperacao, pdv, empresa) ' +
                ' Select 1 ,:ContaOrigem,:Data, Valor,''C'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDdoc, ' +
                '''R'', ''Repasse  '' || :NomeCaixa, ' +
                '-1, :Usuario, CURRENT_TIME, 20, dd.pdv , dd.empresa ' +
                ' From DepositosDoc dd ' +
                ' Inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                ' Where dd.ContaAtual = :Conta and fp.especie = 3 ';
            SQL.Text := replace(SQL.Text, ':Conta', IntToStr(nContaPadrao));
            SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(IDOperacao));
            SQL.Text := replace(SQL.Text, ':ContaOrigem', IntToStr(nContaPadrao));
            SQL.Text := replace(SQL.Text, ':NomeCaixa', '''' + Caixa_Nome + '''');
            SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
            SQL.Text := replace(SQL.Text, ':Data', '''' + formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente) + ''''); // Caixa_MovimentoCorrente
            ExecSQL;

            Close;
            SQL.Text := 'Select iddoc from DepositosDoc dd ' +
                'Inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                'Where dd.ContaAtual = :Conta and fp.especie = 3 ';
            ParamByName('Conta').AsInteger := nContaPadrao;
            Open;
            while not eof do
                begin
                    with q_ComandoSQL do
                        begin
                            close;
                            sql.text := 'update depositosdoc ' +
                                'set contaatual = 1, DataRepasse = :Data, LocalTitulo = :Loc ' +
                                'where iddoc = :iddoc';
                            ParamByName('Data').asDate := Caixa_MovimentoCorrente;
                            ParamByName('Loc').asString := Conta_Nome(1);
                            parambyname('iddoc').asInteger := q_Transacoes.FieldByName('iddoc').AsInteger;
                            execsql;
                        end;
                    Next;
                end;
        end;

    {Repassando Cheques para o Caixa Principal}
    if sIDDoc <> '' then
        begin
            with Q_Transacoes do
                begin
                    {Retirando do Caixa}
                    Close;
                    SQL.Text := 'Insert into Transacoes ' +
                        '    (Conta, ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                        '     Situacao, Historico,Favorecido,Usuario,Hora,TipoOperacao, pdv, empresa) ' +
                        ' Select dd.ContaAtual, 1, :Data, (-1) * Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDDoc, ' +
                        '       ''R'', ''Repasse p/ Cx. Principal'', ' +
                        '       -1, :Usuario, CURRENT_TIME, 20, dd.pdv , dd.empresa ' +
                        ' From DepositosDoc dd ' +
                        ' Where dd.IDDoc IN (' + sIDDoc + ')';

                    SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(IDOperacao));
                    SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Data', QuotedStr(formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente)));

                    ExecSQL;
                    {Depositando no Caixa Principal}
                    Close;
                    SQL.Text := 'Insert into Transacoes ' +
                        '(Conta,ContaOrigem,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                        'Situacao, Historico,Favorecido,Usuario,Hora,TipoOperacao, pdv, empresa) ' +
                        ' Select 1 ,:ContaOrigem,:Data, Valor,''C'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDdoc, ' +
                        ' ''R'', ''Repasse  '' || :NomeCaixa, ' +
                        ' -1, :Usuario, CURRENT_TIME, 20, dd.pdv , dd.empresa ' +
                        ' From DepositosDoc dd ' +
                        ' Where IDDoc IN (' + sIDDoc + ')';
                    SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(IDOperacao));
                    SQL.Text := replace(SQL.Text, ':ContaOrigem', IntToStr(nContaPadrao));
                    SQL.Text := replace(SQL.Text, ':NomeCaixa', '''' + Caixa_Nome + '''');
                    SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Data', '''' + formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente) + ''''); // Caixa_MovimentoCorrente
                    ExecSQL;

                    Close;
                    SQL.Text := 'Update DepositosDoc set DataRepasse = :Data, LocalTitulo = :Loc, ContaAtual = 1 ' +
                        ' where IDDoc IN (' + sIDDoc + ')';
                    ParamByName('Data').asDate := Caixa_MovimentoCorrente;
                    ParamByName('Loc').asString := Conta_Nome(1);
                    ExecSQL;
                    Close;
                    AuditoriaFinanceira(' Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 16, ' +
                        ' ''Caixa: ' + Caixa_Nome + ' em Cheque'', ' +
                        ' ''Transacoes'', ' +
                        ' (Select ID from Transacoes t Where t.IDGerador = dd.Deposito and t.IDDoc = dd.Iddoc and t.Situacao = ''R''), ' +
                        ' dd.Valor, ' +
                        ' dd.Deposito, ' +
                        ' d.TipoDeposito, ' +
                        IntToStr(nContaPadrao) + ' ' +
                        ' From DepositosDoc dd, Depositos d Where IDDoc IN (' + sIDDoc + ') and dd.deposito = d.deposito');
                end;
        end;
end;

procedure TDMFinanceiro.RepasseDinheiro;
var
    IDGerador: Integer;
    sIDDoc: string;
begin
    try
        {Transferindo para a Conta Caixa Principal}
        IDGerador := Transferir(nContaPadrao, 1, Valor,
            'Repasse ' + Caixa_Nome, '',
            '', DMProjeto.nFavEmpresa, Caixa_MovimentoCorrente, 'R');
        AuditoriaFinanceira(16, 'Caixa: ' + Caixa_Nome + ' em Dinheiro', 'Transacoes', 0, Valor, IDGerador, 20, nContaPadrao)

    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(479, e.message, '');
                DMProjeto.GeraLog('Repasse', e.message);
            end;
    end;
end;

procedure TDMFinanceiro.RepasseCheques;
begin
    with Q_SQL do
        begin
            if FormaPagamento = 2 then
                begin
                    {Retirando do Caixa}
                    Close;
                    SQL.Text := 'Insert into Transacoes ' +
                        '    (Conta, ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                        '     Situacao, Historico,Favorecido,Usuario,Hora, pdv, empresa) ' +
                        'Select dd.ContaAtual, 1, :Data, (-1) * Valor, ''D'', dd.NumCheque, dd.FormaPagamento, dd.Deposito, dd.IDDoc, ' +
                        '       ''R'', ''Repasse p/ Cx. Principal'', ' +
                        '       -1, :Usuario, CURRENT_TIME, dd.pdv , dd.empresa' +
                        'From DepositosDoc dd ' +
                        'Where dd.IDDoc IN (' + sIDDoc + ')';

                    SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Data', QuotedStr(formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente)));

                    ExecSQL;

                    {Depositando no Caixa Principal}
                    Close;
                    SQL.Text := 'Insert into Transacoes ' +
                        '(Conta,ContaOrigem,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                        'Situacao, Historico,Favorecido,Usuario,Hora, pdv, empresa) ' +
                        'Select 1 ,:ContaOrigem,:Data, Valor,''C'', dd.NumCheque, dd.FormaPagamento, dd.Deposito, dd.IDdoc, ' +
                        '''R'', ''Repasse  '' || :NomeCaixa, ' +
                        '-1, :Usuario, CURRENT_TIME, dd.pdv, dd.empresa ' +
                        'From DepositosDoc dd ' +
                        'Where IDDoc IN (' + sIDDoc + ')';
                    SQL.Text := replace(SQL.Text, ':ContaOrigem', IntToStr(nContaPadrao));
                    SQL.Text := replace(SQL.Text, ':NomeCaixa', '''' + Caixa_Nome + '''');
                    SQL.Text := replace(SQL.Text, ':Usuario', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Data', '''' + formatdatetime('mm/dd/yyyy', Caixa_MovimentoCorrente) + ''''); // Caixa_MovimentoCorrente
                    ExecSQL;
                end;
            Close;
            SQL.Text := 'Update DepositosDoc set DataRepasse = :Data, LocalTitulo = :Loc, ContaAtual = 1 ' +
                'where IDDoc IN (' + sIDDoc + ')';
            ParamByName('Data').asDate := Caixa_MovimentoCorrente;
            ParamByName('Loc').asString := Conta_Nome(1);
            ExecSQL;
            Close;
        end;
    AuditoriaFinanceira('Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 16, ' +
        '''Caixa: ' + Caixa_Nome + ' em Cheque'', ' +
        '''Transacoes'', ' +
        '(Select ID from Transacoes t Where t.IDGerador = dd.Deposito and t.IDDoc = dd.Iddoc and t.Situacao = ''R''), ' +
        'dd.Valor, ' +
        'dd.Deposito, ' +
        'd.TipoDeposito, ' +
        IntToStr(nContaPadrao) + ' ' +
        'From DepositosDoc dd, Depositos d Where IDDoc IN (' + sIDDoc + ') and dd.deposito = d.deposito');
end;

procedure TDMFinanceiro.FecharCaixa;
var nCheques, nDinheiro: Currency;
    sIDDoc: string;
begin
    with Q_SQL do
        begin
            try
                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

                if DMProjeto.Parametro('RepasseAutomatico') = 'S' then
                    begin
                        nDinheiro := DMFinanceiro.SaldoConta(DMFinanceiro.nContaPadrao, DMProjeto.dDataSistema, '5');

                        Close;
                        Sql.text := 'Select dd.IDDoc, dd.Valor ' +
                            'From DepositosDoc dd ' +
                            'inner join Depositos d on d.deposito = dd.deposito ' +
                            'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                            'Where dd.ContaAtual = :conta and dd.status < 70 and d.situacao = ''N'' and fp.Especie = 1 ';
                        ParamByName('Conta').AsInteger := DMFinanceiro.nContaPadrao;
                        Open;
                        nCheques := 0;
                        sIDDoc := '';
                        while not eof do
                            begin
                                nCheques := nCheques + fieldbyname('valor').AsCurrency;
                                sIDDoc := CExp(sIDDoc, ',') + fieldbyname('IDDoc').AsString;
                                next;
                            end;
                        Close;
                        Repasse(nDinheiro, nCheques, sIDDoc);
                    end;
                Close;
                SQL.Text := 'update depositosdoc dd ' +
                    'set dd.contaatual = 1 ' +
                    'where dd.contaatual = :C and ' +
                    'dd.formapagamento IN (' +
                    'select formapagamento from formaspagamento where especie IN (3,10)) ';
                ParamByName('C').AsInteger := DMFinanceiro.nContaPadrao;
                ExecSQL;

                Close;
                {Fechando o Caixa}
                SQL.Text := 'Update Contas set ' +
                    '    Situacao = ''Fechado'' ' +
                    ' Where Conta = :C ';

                Params[0].asInteger := nContaPadrao;
                ExecSQL;

                Close;
                AuditoriaFinanceira(31, 'Caixa: ' + Caixa_Nome, '', 0, SaldoConta(DMFinanceiro.nContaPadrao, DMProjeto.dDataSistema), 0, 0, nContaPadrao);

                if C_ContasCx.Active then
                    begin
                        C_ContasCx.close;
                        C_ContasCx.open;
                    end;

                if C_ContasCxBc.Active then
                    begin
                        C_ContasCxBc.close;
                        C_ContasCxBc.open;
                    end;

                DMProjeto.dDataSistema := DMProjeto.dDataSistemaAtual;

                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.Commit;

            except
                on E: Exception do
                    begin
                        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                            DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                        DMProjeto.RegistrarAuditoria(
                            'ERRO de Fechamento de Caixa - ' + Caixa_Nome,
                            e.Message, '', Caixa_Nome, '',
                            0, 0, '', '', '', 0, '', '', 0, 0);
                        // ShowMessage('Erro ao Fechar o Caixa!');
                        DlgMsg.ShowMsg(444, e.Message, '');
                        DMProjeto.GeraLog('FecharCaixa ', e.message);
                    end;
            end;
        end;
end;

procedure TDMFinanceiro.ApagarDeposito;
var Valor, Juros, Descontos, CreditoUtilizado, CreditoGerado: Currency;
    Titulo, nReg: integer;
begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select Titulo, Valor, Juros, Descontos, CreditoGerado, CreditoUtilizado ' +
                'from DepositosTitulos ' +
                'where Deposito = :Dep';
            ParamByName('Dep').AsInteger := Deposito;
            Open;
            disablecontrols;
            last;
            nReg := recordcount;
            first;
            while not EOF do
                begin
                    Titulo := fieldbyname('titulo').AsInteger;
                    Valor := fieldbyname('Valor').AsCurrency - fieldbyname('CreditoGerado').AsCurrency - fieldbyname('Juros').AsCurrency;
                    Descontos := fieldbyname('Descontos').AsCurrency;
                    Juros := fieldbyname('Juros').AsCurrency;
                    CreditoUtilizado := fieldbyname('CreditoUtilizado').AsCurrency;
                    CreditoGerado := fieldbyname('CreditoGerado').AsCurrency;
                    {atualizando Titulos a Receber}
                    if bApagarTitulo then
                        begin
                            with Q_SQL2 do
                                begin
                                    close;
                                    SQL.Text := 'delete from titulosareceber where id = :id';
                                    Params[0].AsInteger := Titulo;
                                    ExecSQL;
                                    //
                                    close;
                                    SQL.Text := 'delete from contasoperacao where idgerador = :id';
                                    Params[0].AsInteger := Titulo;
                                    ExecSQL;
                                end;
                            CancelarLancamentos(IntToStr(Titulo));
                        end
                    else
                        begin
                            with Q_SQL2 do
                                begin
                                    close;
                                    SQL.Text := 'update titulosareceber ' +
                                        'set valorpago = valorpago - :Valor, ' +
                                        'descontos = descontos - :descontos, ' +
                                        'jurosrecebidos = jurosrecebidos - :juros, ' +
                                        'CreditoUtilizado = CreditoUtilizado - :CredUti, ' +
                                        'CreditoGerado = CreditoGerado - :CredGerado, ' +
                                        'Status = 1 ';
                                    if nReg = 1 then
                                        SQL.Text := SQL.Text + ', DataPago = null ';

                                    SQL.Text := SQL.Text + ' where ID = :Titulo';
                                    ParamByName('Valor').AsCurrency := Valor;
                                    ParamByName('Descontos').AsCurrency := Descontos;
                                    ParamByName('Juros').AsCurrency := Juros;
                                    ParamByName('CredUti').AsCurrency := CreditoUtilizado;
                                    ParamByName('CredGerado').AsCurrency := CreditoGerado;
                                    ParamByName('Titulo').AsInteger := Titulo;
                                    nTentativas := 0;
                                    bGravouSaida := False;
                                    repeat
                                        try
                                            ExecSQL;
                                            Close;
                                            nTentativas := 3;
                                            bGravouSaida := True;
                                        except
                                            Inc(nTentativas);
                                            Sleep(20);
                                        end;
                                    until nTentativas = 3;
                                    if not (bGravouSaida) then
                                        DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.ApagarDeposito ')]);

                                end;
                        end;
                    Next;
                end;
            enablecontrols;
            {Apagando DepositosDoc}
            if bApagarDoc then
                begin
                    with Q_SQL3 do
                        begin
                            close;
                            SQL.Text := 'select iddoc from depositosdoc where Deposito = :Dep';
                            parambyname('Dep').AsInteger := Deposito;
                            Open;
                            while not eof do
                                begin
                                    ApagarDoc(fields[0].AsInteger, true);
                                    Next;
                                end;
                        end;
                end;
            {Apagando TransacoesCreditos}
            with Q_SQL3 do
                begin
                    close;
                    SQL.Text := 'delete from transacoescreditos where IDGerador = :Dep';
                    parambyname('Dep').AsInteger := Deposito;
                    ExecSQL;
                    {Apagando Transacoes, se houve TEF}
                    close;
                    SQL.Text := 'delete from transacoes where IDGerador = :Dep and tipooperacao = 22';
                    parambyname('Dep').AsInteger := Deposito;
                    ExecSQL;
                    close;
                    SQL.Text := 'delete from operacoesfinanceiras where operacao = :Dep and tipooperacao = 22';
                    parambyname('Dep').AsInteger := Deposito;
                    ExecSQL;

                    CancelarLancamentos(IntToStr(Deposito));

                    {Apagando Depositotitulos}
                    close;
                    SQL.Text := 'delete from depositostitulos where Deposito = :Dep';
                    parambyname('Dep').AsInteger := Deposito;
                    ExecSQL;
                    {Apagando Deposito}
                    close;
                    SQL.Text := 'delete from depositos where deposito = :Dep';
                    parambyname('Dep').AsInteger := Deposito;
                    ExecSQL;
                    {Apagando em Auditoria}
                    Close;
                    Sql.Text := 'Delete from Auditorias Where IDGerador = :ID ';
                    Params[0].AsInteger := Deposito;
                    ExecSQL;
                    Close;
                end;
        end;
end;

procedure TDMFinanceiro.ApagarRetirada;
var Valor, Juros, Descontos, CreditoUtilizado, CreditoGerado: Currency;
    Duplicata, TipoRetirada, nReg: integer;
    sIDDoc: string;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'execute procedure PP_ApagarRetirada(:retirada,:bApagarDoc)';
            parambyname('retirada').asinteger := Retirada;
            parambyname('bApagarDoc').asinteger := iif(bApagarDoc, 1, 0);
            execsql;
        end;
end;

function TDMFinanceiro.Conta_A_Pagar;
var
    Titulo: string;
    ID, nRetirada, nEspecie: Integer;
begin
    try

        ID := DMProjeto.NextIDGlobal;

        if (NotaFiscal <> '') then
            Titulo := Adicionarstr(NotaFiscal, '0', 6) + '-' + IntToStr(Parcela);

        with Q_Transacoes do
            begin
                Close;
                SQL.Text := 'Insert into DuplicatasAPagar ' +
                    '     (ID, Parcela, Titulo, Valor, ValorPago, Vencimento, Competencia, OBS, ' +
                    '      Natureza, Fornecedor, NotaFiscal, Usuario, Status, ' +
                    '      Descontos, CreditoUtilizado, JurosPagos, ValorDescAntecipado, ' +
                    '       CreditoGerado, DataAtrasado, JurosPlano, PayRollFunc, Origem_APagar, IDGerador_APagar, RefCliente, pdv, empresa) ' +
                    'Values ' +
                    '     (:ID, :Parc, :Tit, :Valor, 0, :Venc, :Comp, :OBS, :Nat, ' +
                    '      :Forn, :NFiscal, :Func, :Status, 0,0,0,0,0, :DtAtrasado, 0, :PayRollFunc, :Origem_APagar, :IDGerador_APagar, :RefCliente, :pdv, :empresa ) ';
                ParamByName('ID').asInteger := ID;
                ParamByName('Parc').asInteger := Parcela;
                ParamByName('Tit').asString := Titulo;
                ParamByName('Valor').AsCurrency := Valor;
                ParamByName('Venc').asDateTime := Vencimento;
                ParamByName('Comp').asDateTime := Competencia;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                if (Status = 1) or (Status = 0) then
                    ParamByName('Status').asInteger := SetStatus(Vencimento)
                else
                    ParamByName('Status').asInteger := Status;
                if OBS <> '' then
                    ParamByName('OBS').asString := OBS
                else
                    SQL.Text := replace(SQL.Text, ':OBS', 'null');
                ParamByName('Nat').asInteger := Natureza;
                ParamByName('Forn').asInteger := Fornecedor;

                if PayRollFunc <> 0 then
                    ParamByName('PayRollFunc').asInteger := PayRollFunc
                else
                    SQL.Text := replace(SQL.Text, ':PayRollFunc', 'null');

                if NotaFiscal <> '' then
                    ParamByName('NFiscal').asString := NotaFiscal
                else
                    SQL.Text := replace(SQL.Text, ':NFiscal', 'null');

                if DMProjeto.nFuncionario > 0 then
                    ParamByName('Func').asInteger := DMProjeto.nFuncionario
                else
                    SQL.Text := replace(SQL.Text, ':Func', 'null');

                if RefCliente <> 0 then
                    ParamByName('RefCliente').asInteger := RefCliente
                else
                    SQL.Text := replace(SQL.Text, ':RefCliente', 'null');

                ParamByName('DtAtrasado').asDateTime := DMProjeto.PrimeiroDiaUtil(Vencimento, false, true);

                ParamByName('Origem_APagar').asInteger := nIDOrigemAPagar;
                ParamByName('IDGerador_APagar').asInteger := nIDGeradorAPagar;
                ExecSQL;

                {    if nContaDespesa = 0 then
                      nContaDespesa := DMProjeto.ContaPadrao(25); }

                if nContaDespesa > 0 then
                    begin
                        ContabContasOperacao(nContaDespesa, Valor, ID, 0);
                        DMProjeto.Contabiliza(31, Competencia, ID, Fornecedor,
                            DMProjeto.ContaPadrao(10), nContaDespesa, Valor, NotaFiscal, '');
                    end;

                Result := ID;
                AuditoriaFinanceira(17, getFavorecido(Fornecedor) + ' Vencimento: ' + DateToStr(Vencimento), 'DuplicatasAPagar', ID, Valor, 0, 0, 0);

            end;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(2, 'DuplicatasAPagar - ' + e.message, '');
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;
end;

function TDMFinanceiro.Conta_A_Receber(Parcela: Integer;
    ValorAReceber: currency;
    Vencimento, Competencia: TDateTime;
    OBS: string;
    Cliente, Venda: Integer;
    NotaFiscal: string;
    nIDOrigemAReceber: integer = 0;
    nIDGeradorAReceber: integer = 0;
    Status: integer = 0;
    nContaReceita: integer = 0;
    nTipoCobranca: Integer = 1): Integer;
var
    Titulo: string;
    ID: integer;
begin

    if Parcela = 0 then
        Parcela := 1;

    ID := DMProjeto.NextIDGlobal;

    if (NotaFiscal <> '') and (Copy(NotaFiscal, 1, 1) <> 'R') then
        Titulo := Adicionarstr(NotaFiscal, '0', 6) + '-' + IntToStr(Parcela)
    else if (Copy(NotaFiscal, 1, 1) = 'R') then
        Titulo := 'REP' + formatdatetime('mmyy', Competencia) + '-' + IntToStr(Parcela)
    else
        Titulo := '';

    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'Insert into TitulosAReceber ' +
                '     (ID, Parcela, Valor, Vencimento, Competencia, ValorPago, DataPago, ' +
                '      OBS, Cliente, ' +
                '      Status, NotaFiscal, Titulo, DataAtrasado, Usuario, Venda, ' +
                '      ValorDescAntecipado, PercentualMulta, PercentualMora, JurosPlano, ' +
                '      Descontos, JurosRecebidos, ValorJurosMora, ValorMulta, CreditoUtilizado, CreditoGerado, Origem_AReceber, IDGerador_AReceber, TIPOCOBRANCA, pdv, empresa) ' +
                'Values ' +
                '     (:ID, :Parc, :Valor, :Venc, :Comp, 0, null, :OBS, :Cliente,  ' +
                '      :Status, :NFiscal, :Tit, :DtAtrasado, :FuncLogin, :Venda, ' +
                '      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, :Origem_AReceber, :IDGerador_AReceber, :TIPOCOBRANCA, :pdv, :empresa ) ';
            ParamByName('ID').asInteger := ID;
            ParamByName('Parc').asInteger := Parcela;
            ParamByName('Valor').AsCurrency := ValorAReceber;
            ParamByName('Venc').asDateTime := Vencimento;
            ParamByName('Comp').asDateTime := Competencia;
            ParamByName('TIPOCOBRANCA').asInteger := nTipoCobranca;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('DtAtrasado').asDateTime := DMProjeto.PrimeiroDiaUtil(Vencimento, false, true);
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            if (Status = 0) then
                ParamByName('Status').asInteger := SetStatus(Vencimento)
            else
                ParamByName('Status').asInteger := Status;

            ParamByName('Venda').asInteger := Venda;

            ParamByName('OBS').asString := OBS;

            ParamByName('Cliente').asInteger := Cliente;
            ParamByName('FuncLogin').asInteger := DMProjeto.nFuncionario;

            ParamByName('NFiscal').asString := NotaFiscal;

            ParamByName('Tit').asString := Titulo;

            ParamByName('Origem_AReceber').asInteger := nIDOrigemAReceber;
            ParamByName('IDGerador_AReceber').asInteger := nIDGeradorAReceber;
            ExecSQL;

            {    if nContaReceita = 0 then
                  nContaReceita := DMProjeto.ContaPadrao(24);  }

            if nContaReceita > 0 then
                begin
                    ContabContasOperacao(nContaReceita, ValorAReceber, ID, 0);

                    DMProjeto.Contabiliza(30, Competencia, ID, Cliente,
                        DMProjeto.ContaPadrao(9), nContaReceita, ValorAReceber, NotaFiscal, '');
                end;

            Result := ID;

            AuditoriaFinanceira(1, getFavorecido(Cliente) + ' Vencimento: ' + DateToStr(Vencimento), 'TitulosAReceber', ID, ValorAReceber, 0, 0, 0);
        end;
end;

function TDMFinanceiro.ApagarRetiradaDoc(sIDDoc: string): boolean;
var
    sMotivo: string;
    i: integer;
begin
    result := false;
    sMotivo := '';
    sMotivo := inputbox('Exclus�o de Documento(s)', 'Motivo:', '');

    if sMotivo = '' then
        Exit;

    for i := 1 to ContaStrings(sIDDoc, ',') do
        begin
            if StrToIntDef(SeparaStrings(sIDDoc, ',', i), 0) > 0 then
                begin
                    CancelarRetiradaDoc(StrToInt(SeparaStrings(sIDDoc, ',', i)), sMotivo, false, True);
                    if getTipoRetirada(StrToInt(SeparaStrings(sIDDoc, ',', i))) in [4, 5, 6] then
                        begin
                            {Apagando DAP Geradas}
                            with Q_ComandoSQL do
                                begin
                                    Close;
                                    SQL.Text := 'Delete from DuplicatasAPagar where ID in  ' +
                                        '(Select Duplicata from RetiradasDuplicatas rd, RetiradasDoc r ' +
                                        'where r.Retirada = rd.Retirada  ' +
                                        'and   r.IDDoc = ' + SeparaStrings(sIDDoc, ',', i) + ' ) ';
                                    ExecSQL;
                                    Close;
                                end;
                        end;
                end;
        end;

    with Q_SQL do
        begin
            close;
            SQL.Text := 'delete from retiradasdoc where IDDoc IN (' + sIDDoc + ')';
            ExecSQL;
            close;
            SQL.Text := 'delete from auditorias where IDTabela IN (' + sIDDoc + ')';
            ExecSQL;
            close;
        end;
    result := true;
end;

function TDMFinanceiro.PagarRapido;
var Cotacao: double;
    nIndexador: integer;
begin
    if Retirada = 0 then
        Retirada := DMProjeto.NextIDGlobal;
    try
        with Q_SQL do
            begin
                {Gravando RetiradasDuplicatas}
                if CreditoGerado = 0 then
                    begin
                        Close;
                        Cotacao := 1;
                        SQL.Text := 'select indexador from duplicatasapagar where id = ' + IntToStr(Duplicata);
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsVariant <> null) then
                            begin
                                nIndexador := Fields[0].AsInteger;
                                Close;
                                SQL.Text := 'select valor from cotacoes ' +
                                    'where data = (select max(data) from cotacoes where indexador = :i) ' +
                                    'and indexador = :i ';
                                ParamByName('i').AsInteger := nIndexador;
                                Open;
                                if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                                    begin
                                        Cotacao := Fields[0].AsFloat;
                                    end;
                            end;
                        Close;
                        SQL.Text := 'Insert into RetiradasDuplicatas ' +
                            '   (Retirada, Duplicata, Valor, Data, Juros, CreditoUtilizado, CreditoGerado, Descontos, Status, Cotacao, pdv, empresa) ' +
                            'Values ' +
                            '   (:R, :T, :VP, :Data, :J, :CredUti, :CredGerado, :Descontos, :Status, :Cotacao, :pdv, :empresa) ';
                        ParamByName('R').asInteger := Retirada;
                        ParamByName('T').asInteger := Duplicata;
                        ParamByName('VP').AsCurrency := Valor;
                        ParamByName('Data').AsDateTime := Data;
                        ParamByName('J').AsCurrency := Juros;
                        ParamByName('CredUti').AsCurrency := CreditoUtilizado;
                        ParamByName('CredGerado').AsCurrency := CreditoGerado;
                        ParamByName('Descontos').AsCurrency := Descontos;
                        ParamByName('Status').asInteger := 50;
                        ParamByName('Cotacao').AsFloat := Cotacao;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        ExecSQL;
                    end;

                {Gravando Retiradas}
                Close;
                SQL.Text := 'Insert into Retiradas ' +
                    '     (Retirada, Natureza, Data, Competencia, Historico, Valor, Usuario, TipoRetirada, Situacao, CreditoUtilizado, CreditoGerado, CreditoAbatido, Troco, pdv, empresa) ' +
                    'Values ' +
                    '     (:Ret, :Natureza, :Data, :Competencia, :Hist, :Valor, :Func, :TipoRetirada, ''N'', :CreditoUtilizado, :CreditoGerado, :CreditoAbatido, :Troco, :pdv, :empresa ) ';
                ParamByName('Ret').asInteger := Retirada;
                ParamByName('Data').asDateTime := Data;
                ParamByName('Natureza').asInteger := Natureza;
                ParamByName('Competencia').asDateTime := Competencia;
                ParamByName('Hist').asString := Historico;
                ParamByName('Valor').AsCurrency := Valor - CreditoUtilizado;
                ParamByName('Func').asInteger := DMProjeto.nFuncionario;
                ParamByName('TipoRetirada').asInteger := TipoPag;
                ParamByName('CreditoUtilizado').AsCurrency := CreditoUtilizado;
                ParamByName('CreditoGerado').AsCurrency := CreditoGerado;
                ParamByName('CreditoAbatido').AsCurrency := CreditoAbatido;
                ParamByName('Troco').AsCurrency := Troco;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                ExecSQL;

                {Liquidando a Conta a Pagar}

            end;

        result := Retirada;
    except
        on E: Exception do
            DlgMsg.ShowMsg(1, e.Message, '');
    end;
end;

function TDMFinanceiro.ReceberRapido;
begin
    try
        if Deposito = 0 then
            Deposito := DMProjeto.NextIDGlobal;

        with Q_SQL do
            begin
                if Valor <> CreditoGerado then
                    begin
                        Close;
                        SQL.Text := 'Insert into DepositosTitulos ' +
                            '(Deposito, Titulo, Valor, Data, Juros, Descontos, CreditoUtilizado, CreditoGerado, Status, pdv, empresa) ' +
                            'Values (:D, :T, :VP, :Data, :Juros, :Descontos, :CredUti, :CredGerado, :Status, :pdv, :empresa) ';
                        ParamByName('D').asInteger := Deposito;
                        ParamByName('T').asInteger := Titulo;
                        ParamByName('Data').asDateTime := Data;
                        ParamByName('VP').AsCurrency := Valor;
                        ParamByName('CredUti').AsCurrency := CreditoUtilizado;
                        ParamByName('CredGerado').AsCurrency := CreditoGerado;
                        ParamByName('Juros').AsCurrency := Juros;
                        ParamByName('Descontos').AsCurrency := Descontos;
                        ParamByName('Status').asInteger := 50;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        ExecSQL;
                    end;
                Close;
                SQL.Text := 'Insert into Depositos ' +
                    ' (Deposito, Conta, Data, Favorecido, Historico, Valor, Usuario, CreditoUtilizado, CreditoGerado, Troco, TipoDeposito, Situacao, Vendedor, pdv, empresa) ' +
                    'Values (:Dep, :Conta, :Data, :Favorecido, :Hist, :Valor, :Func, :CredUtilizado, :CredGerado, :Troco, :TipoDeposito, ''N'', :Vendedor, :pdv, :empresa ) ';
                ParamByName('Dep').asInteger := Deposito;
                ParamByName('Conta').asInteger := Conta;
                ParamByName('Data').asDateTime := Data;
                ParamByName('Favorecido').asInteger := Favorecido;
                ParamByName('Hist').asString := Historico;
                ParamByName('Valor').AsCurrency := Valor;
                ParamByName('Troco').AsCurrency := Troco;
                ParamByName('CredUtilizado').AsCurrency := CreditoUtilizado;
                ParamByName('CredGerado').AsCurrency := CreditoGerado;
                ParamByName('Func').asInteger := DMProjeto.nFuncionario;
                ParamByName('TipoDeposito').AsInteger := 2;
                ParamByName('Vendedor').AsInteger := Vendedor;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                ExecSQL;
            end;
        result := Deposito;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, 'Depositos - ' + e.message, '');
                DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;
end;

function TDMFinanceiro.ReceberTitulos(Deposito: integer; sItens: string; Favorecido, Conta: integer;
    Data: TDateTime; CreditoUtilizado, CreditoGerado: Currency; Historico: string;
    Vendedor: integer = 0; Troco: Currency = 0): integer;
var i: integer;
    Valor, ValorAReceber, Pagamento, Juros, Descontos, nSomaCredUtilizado, nSomaCredGerado: Currency;
    slItens: TStringList;
begin
    try
        sErro := '';
        slItens := TStringList.Create;
        slItens.Text := sItens;
        if Deposito = 0 then
            Deposito := DMProjeto.NextIDGlobal;
        Valor := 0;
        nSomaCredGerado := CreditoGerado;
        nSomaCredUtilizado := CreditoUtilizado;
        for i := 2 to slItens.Count - 1 do
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'Update TitulosAReceber Set ValorJurosMora = ValorJurosMora + :J, ' +
                            'percentualmora = (select case when t.percentualmora > 0 then t.percentualmora else :percentual end from titulosareceber t where t.id = :ID),' +
                            'obs =  '' Set ValorJurosMora = ValorJurosMora'' ' +
                            'Where ID = :ID ';
                        ParamByName('percentual').AsCurrency := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'PERCENTUALMORA')), 0);
                        ParamByName('J').AsCurrency := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Juros')), 0);
                        ParamByName('ID').AsInteger := StrToInt(SeparaStrings(slItens[0], ',', i - 1));
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + 'Linha - 2199 ' + #13 + #13 + sErro)]);
                            end;

                        SQL.Text := 'Insert into DepositosTitulos ' +
                            '(Deposito, Titulo, Valor, Data, Juros, Descontos, CreditoUtilizado, CreditoGerado, Status, pdv, empresa) ' +
                            'Values (:D, :T, :VP, :Data, :Juros, :Descontos, :CredUti, :CredGerado, :Status, :pdv, :empresa) ';
                        ParamByName('D').asInteger := Deposito;
                        ParamByName('T').asInteger := StrToInt(SeparaStrings(slItens[0], ',', i - 1));
                        ParamByName('Data').asDateTime := Data;
                        ParamByName('PDV').asInteger := DMPRojeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        ValorAReceber := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'ValorAReceber')), 0);
                        Pagamento := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Pagamento')), 0);
                        Juros := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Juros')), 0);
                        Descontos := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Descontos')), 0);
                        {Utilizando Cr�dito}
                        if nSomaCredUtilizado > 0 then
                            begin
                                if ((Pagamento + Juros + nSomaCredGerado) > nSomaCredUtilizado) then
                                    begin
                                        ParamByName('VP').AsCurrency := Pagamento - nSomaCredUtilizado;
                                        ParamByName('CredUti').AsCurrency := nSomaCredUtilizado;
                                        nSomaCredUtilizado := 0;
                                    end
                                else
                                    begin
                                        ParamByName('VP').AsCurrency := 0;
                                        ParamByName('CredUti').AsCurrency := Pagamento;
                                        nSomaCredUtilizado := nSomaCredUtilizado - (Pagamento + Juros);
                                    end;
                            end
                        else
                            begin
                                ParamByName('VP').AsCurrency := Pagamento;
                                ParamByName('CredUti').AsCurrency := 0;
                            end;
                        if (Pagamento - Juros) > ValorAReceber then
                            ParamByName('CredGerado').AsCurrency := (Pagamento + Juros) - ValorAReceber
                        else
                            ParamByName('CredGerado').AsCurrency := 0;

                        ParamByName('Juros').AsCurrency := Juros;
                        ParamByName('Descontos').AsCurrency := Descontos;
                        ParamByName('Status').asInteger := 50;
                        Valor := Valor + ParamByName('VP').AsCurrency;
                        nSomaCredGerado := 0;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + 'Linha - 2220 ' + #13 + #13 + sErro)]);
                            end;
                        AuditoriaFinanceira(2, getFavorecido(Favorecido), 'TitulosAReceber', StrToInt(SeparaStrings(slItens[0], ',', i - 1)), Valor, Deposito, 1, Conta);
                    end;
            end;
        slItens.Free;
        with Q_SQL do
            begin
                Close;
                SQL.Text := ' Insert into Depositos ' +
                    ' (Deposito, Conta, Data, Favorecido, Historico, Valor, Usuario, CreditoUtilizado, CreditoGerado, TipoDeposito, Situacao, Vendedor, Troco, pdv, empresa) ' +
                    ' Values ' +
                    ' (:Dep, :Conta, :Data, :Favorecido, :Hist, :Valor, :Func, :CredUtilizado, :CredGerado, :TipoDeposito, ''N'', :Vendedor, :Troco, :pdv, :empresa ) ';
                ParamByName('Dep').asInteger := Deposito;
                ParamByName('Conta').asInteger := Conta;
                ParamByName('Data').asDateTime := Data;
                ParamByName('Favorecido').asInteger := Favorecido;
                ParamByName('Hist').asString := Historico;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                if Valor <= 0 then
                    ParamByName('Valor').AsCurrency := CreditoGerado
                else
                    ParamByName('Valor').AsCurrency := Valor;
                ParamByName('CredUtilizado').AsCurrency := CreditoUtilizado;
                ParamByName('CredGerado').AsCurrency := CreditoGerado;
                ParamByName('Troco').AsCurrency := Troco;
                ParamByName('Func').asInteger := DMProjeto.nFuncionario;
                ParamByName('TipoDeposito').AsInteger := 1; // Recebimento de Invoices
                ParamByName('Vendedor').AsInteger := Vendedor;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                nTentativas := 0;
                bGravouSaida := False;
                repeat
                    try
                        ExecSQL;
                        Close;
                        nTentativas := 3;
                        bGravouSaida := True;
                    except
                        on e: Exception do
                            begin
                                sErro := sErro + e.Message;
                                Inc(nTentativas);
                                Sleep(20);
                            end;
                    end;
                until nTentativas = 3;
                if not (bGravouSaida) then
                    begin
                        Beep.BeepFor(800, 1000);
                        Beep.BeepFor(500, 800);
                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                'Linha - 2279 ' + #13 + #13 + sErro)]);
                    end;
            end;
        result := Deposito;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, 'Depositos - ' + e.message, '');
                if DMProjeto.DB_PROJETO.DefaultTransaction.InTransaction then
                    DMProjeto.DB_PROJETO.DefaultTransaction.Rollback;
            end;
    end;
end;

function TDMFinanceiro.PagarDuplicatas;
var i, nIndexador: integer;
    Valor, Pagamento, Juros, Descontos, nSomaCredUtilizado, nSomaCredGerado: Currency;
    slItens: TStringList;
    Titulo: string;
    Cotacao: double;
begin
    try
        slItens := TStringList.Create;
        sItens := Replace(sItens, #$D#$A, ' ');
        slItens.Text := sItens;

        if Retirada = 0 then
            Retirada := DMProjeto.NextIDGlobal;
        Valor := 0;
        nSomaCredGerado := CreditoGerado;
        nSomaCredUtilizado := CreditoUtilizado;
        for i := 2 to slItens.Count - 1 do
            begin
                with Q_SQL do
                    begin
                        Close;
                        Cotacao := 1;
                        SQL.Text := 'select indexador from duplicatasapagar where id = ' + IntToStr(StrToInt(SeparaStrings(slItens[0], ',', i - 1)));
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsVariant <> null) then
                            begin
                                nIndexador := Fields[0].AsInteger;
                                Close;
                                SQL.Text := 'select valor from cotacoes ' +
                                    'where data = (select max(data) from cotacoes where indexador = :i) ' +
                                    'and indexador = :i ';
                                ParamByName('i').AsInteger := nIndexador;
                                Open;
                                if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                                    begin
                                        Cotacao := Fields[0].AsFloat;
                                    end;
                            end;
                        Close;
                        SQL.Text := 'Insert into RetiradasDuplicatas ' +
                            '(Retirada, Duplicata, Valor, Data, Juros, Descontos, CreditoUtilizado, CreditoGerado, Status, Cotacao, pdv, empresa) ' +
                            'Values (:R, :D, :VP, :Data, :Juros, :Descontos, :CredUti, :CredGerado, :Status, :Cotacao, :pdv, :empresa) ';
                        ParamByName('R').asInteger := Retirada;
                        ParamByName('D').asInteger := StrToInt(SeparaStrings(slItens[0], ',', i - 1));
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('Data').asDateTime := Data;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        Pagamento := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Pagamento')), 0);
                        Juros := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Juros')), 0);
                        Descontos := StrToFloatDef(SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Descontos')), 0);
                        Titulo := SeparaStrings(slItens[i], '|||', IndiceString(slItens[1], '|||', 'Titulo'));
                        {Utilizando Cr�dito}
                        if nSomaCredUtilizado > 0 then
                            begin
                                if ((Pagamento + Juros + nSomaCredGerado) > nSomaCredUtilizado) then
                                    begin
                                        ParamByName('VP').AsCurrency := Pagamento - nSomaCredUtilizado;
                                        ParamByName('CredUti').AsCurrency := nSomaCredUtilizado;
                                        nSomaCredUtilizado := 0;
                                    end
                                else
                                    begin
                                        ParamByName('VP').AsCurrency := 0;
                                        ParamByName('CredUti').AsCurrency := Pagamento;
                                        nSomaCredUtilizado := nSomaCredUtilizado - (Pagamento + Juros);
                                    end;
                            end
                        else
                            begin
                                ParamByName('VP').AsCurrency := Pagamento;
                                ParamByName('CredUti').AsCurrency := 0;
                            end;
                        ParamByName('CredGerado').AsCurrency := nSomaCredGerado;
                        ParamByName('Juros').AsCurrency := Juros;
                        ParamByName('Descontos').AsCurrency := Descontos;
                        ParamByName('Status').asInteger := 50;
                        ParamByName('Cotacao').AsFloat := Cotacao;
                        Valor := Valor + ParamByName('VP').AsCurrency;
                        nSomaCredGerado := 0;
                        ExecSQL;
                        AuditoriaFinanceira(18, getFavorecido(getFavorecidoRetirada(Retirada)), 'DuplicatasAPagar', StrToInt(SeparaStrings(slItens[0], ',', i - 1)), ParamByName('VP').AsCurrency, Retirada, 3, 0);
                    end;
            end;
        slItens.Free;
        with Q_SQL do
            begin
                Close;
                SQL.Text := 'Insert into Retiradas ' +
                    ' (Retirada, Data, Historico, Valor, Usuario, TipoRetirada, Situacao, CreditoUtilizado, CreditoGerado, CreditoAbatido, Troco, pdv, empresa) ' +
                    'Values ' +
                    ' (:Ret, :Data, :Hist, :Valor, :Func, :TipoRetirada, ''N'', :CreditoUtilizado, :CreditoGerado, :CreditoAbatido, :Troco, :PDV , :empresa ) ';
                ParamByName('Ret').asInteger := Retirada;
                ParamByName('Data').asDateTime := Data;
                ParamByName('Hist').asString := Historico;
                ParamByName('Valor').AsCurrency := Valor + CreditoAbatido;
                ParamByName('Troco').AsCurrency := Troco;
                ParamByName('Func').asInteger := DMProjeto.nFuncionario;
                ParamByName('TipoRetirada').AsInteger := 3; // Pagamento de Invoices
                ParamByName('CreditoUtilizado').AsCurrency := CreditoUtilizado;
                ParamByName('CreditoGerado').AsCurrency := CreditoGerado;
                ParamByName('CreditoAbatido').AsCurrency := CreditoAbatido;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                ExecSQL;
            end;
        result := Retirada;

    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, 'Retiradas - ' + e.message, '');
                DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;
end;

function TDMFinanceiro.PagarDoc;
var Dia, Especie, Tipo, Status, nResposta, nStatus: integer;
    bAtualizarDoc, bLancarTransacoes: boolean;
    ValorOperacaoDoc: Currency;
    DataRetirada: TDateTime;
begin
    if FormaPagamento = 2 then
        if Data > DMProjeto.dDataSistema then
            FormaPagamento := 3;
    bAtualizarDoc := false;
    if IDDoc = 0 then
        IDDoc := DMProjeto.NextIDGlobal
    else
        begin
            with Q_SQL2 do
                begin
                    close;
                    sql.text := 'Select IDDoc, IDGerador, TipoOperacao, Valor, FormaPagamento from OperacoesDoc ' +
                        'Where IDDoc = :IDDoc and not TipoOperacao IN (1,2,3,4,5,6) ';
                    parambyname('IDDoc').asInteger := IDDoc;
                    open;
                    ValorOperacaoDoc := fieldbyname('Valor').AsCurrency;
                    last;
                    if recordcount > 0 then
                        begin
                            if fieldbyname('FormaPagamento').asInteger = FormaPagamento then
                                begin
                                    nResposta := DlgMsg.ShowMsg(924, [getFormaPagamento(FormaPagamento) + iif(NumCheque <> 0, ' - # ' + IntToStr(NumCheque), '') + ' Valor: ' + formatfloat('###,##0.00', ValorOperacaoDoc)]);
                                    while nResposta = 300 do
                                        begin
                                            DMProjeto.SetParametrosForm([IntToStr(IDDoc), false, false]);
                                            DMProjeto.CriarForm('DlgOperacoesDoc', self, true);
                                            nResposta := DlgMsg.ShowMsg(924, [getFormaPagamento(FormaPagamento) + iif(NumCheque <> 0, ' - # ' + IntToStr(NumCheque), '') + ' Valor: ' + formatfloat('###,##0.00', ValorOperacaoDoc)]);
                                        end;
                                    if nResposta = 200 then
                                        ApagarDoc(IDDoc, true)
                                    else
                                        bAtualizarDoc := true;
                                end
                            else
                                ApagarDoc(IDDoc, true);
                        end
                    else
                        bAtualizarDoc := true;
                end;
        end;
    {Atualiza��o do Documento}
    if bAtualizarDoc then
        begin
            with Q_SQL do
                begin
                    close;
                    sql.text := 'select data from retiradas ' +
                        'where retirada = :retirada';
                    parambyname('retirada').AsInteger := Retirada;
                    open;
                    DataRetirada := Fields[0].AsDateTime;

                    close;
                    sql.text := ' update retiradasdoc ' +
                        ' set numcheque = :numcheque, retirada = :retirada, valor = :valor, vencimento = :vencimento, ' +
                        ' conta = :conta, contapagar = :contapagar, obs = :obs ' +
                        ' where iddoc = :iddoc ';
                    if NumCheque <> 0 then
                        parambyname('numcheque').AsInteger := NumCheque
                    else
                        parambyname('numcheque').Value := null;
                    parambyname('valor').AsCurrency := Valor;
                    parambyname('vencimento').AsDateTime := Data;
                    parambyname('conta').AsInteger := Conta;
                    parambyname('contapagar').AsInteger := ContaPagar;
                    parambyname('iddoc').AsInteger := IDDoc;
                    parambyname('retirada').AsInteger := Retirada;
                    parambyname('Obs').AsString := Obs;
                    ExecSQL;

                    Close;
                    SQL.Text := 'update operacoesdoc set valor = :valor ' +
                        'where iddoc = ' + IntToStr(IDDoc);
                    ExecSQL;

                    {
                    Close;
                    SQL.Text := 'update transacoes '+
                                'set numcheque = :numcheque, valor = :valor, favorecido = :fav, '+
                                'data = :data '+
                                'where IDDoc = :IDDoc and tipotransacao = ''C''  ';
                    if NumCheque = 0 then
                       sql.text := replace(sql.text,':numcheque','null')
                    else
                       parambyname('numcheque').AsInteger:= NumCheque;
                    parambyname('data').AsDateTime			:= DataRetirada;
                    parambyname('valor').AsCurrency 		:= Valor;
                    parambyname('fav').AsInteger 				:= Favorecido;
                    parambyname('iddoc').AsInteger 			:= IDDoc;
                    ExecSQL;
                    }
                    Close;
                    SQL.Text := 'update transacoes ' +
                        'set numcheque = :numcheque, valor = :valor, favorecido = :fav, ' +
                        'data = :data, conta = :conta ' +
                        'where IDDoc = :IDDoc and tipotransacao = ''D''  ';
                    if NumCheque = 0 then
                        sql.text := replace(sql.text, ':numcheque', 'null')
                    else
                        parambyname('numcheque').AsInteger := NumCheque;
                    parambyname('data').AsDateTime := DataRetirada;
                    parambyname('valor').AsCurrency := -Valor;
                    parambyname('fav').AsInteger := Favorecido;
                    parambyname('iddoc').AsInteger := IDDoc;
                    parambyname('conta').AsInteger := Conta;
                    ExecSQL;

                    Close;
                    SQL.Text := 'update operacoesfinanceirasdet ' +
                        'set valor = :valor ' +
                        'where iddoc = :iddoc ';
                    ParamByName('IDDoc').AsInteger := IDDoc;
                    ParamByName('valor').AsCurrency := Valor;
                    ExecSQL;

                end;

        end
    else
        begin
            {RetiradasDoc}
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'Insert into RetiradasDoc ' +
                        '    (IDDoc, Retirada, Conta, FavorecidoDoc, FormaPagamento, Valor, NumCheque, Vencimento, ' +
                        '     Status, AVista, ChequeNominal, ContaPagar, Obs, pdv, empresa) ' +
                        'Values ' +
                        ' (:IDDoc,:Retirada, :Conta, :Fav, :FormaPagamento, :Valor, :NumChq, :Venc, ' +
                        '    :Status, :AVista, :ChqNom, :ContaPagar, :Obs, :pdv, :empresa ) ';
                    ParamByName('IDDoc').asInteger := IDDoc;
                    ParamByName('Retirada').asInteger := Retirada;
                    ParamByName('FormaPagamento').asInteger := FormaPagamento;
                    ParamByName('Fav').asInteger := Favorecido;
                    ParamByName('Valor').AsCurrency := Valor;
                    ParamByName('Conta').asInteger := Conta;
                    ParamByName('ContaPagar').asInteger := ContaPagar;
                    ParamByName('Obs').asString := Obs;
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                    Especie := getEspecieID(FormaPagamento);

                    bLancarTransacoes := getTransacaoEspecie(Especie) = 'S';

                    if Especie = 5 then
                        begin

                            SQL.Text := replace(SQL.Text, ':NumChq', 'null');
                            ParamByName('Venc').asDateTime := Data;
                            ParamByName('Status').asInteger := 50;
                            ParamByName('AVista').asString := 'S';
                            ParamByName('ChqNom').asString := '';
                            Tipo := 20;

                        end
                    else if Especie in [1, 2] then
                        begin

                            ParamByName('Venc').asDateTime := Data;
                            if Data <= DMProjeto.dDataSistema then
                                begin
                                    ParamByName('FormaPagamento').asInteger := 2;
                                    ParamByName('AVista').asString := 'S';
                                end
                            else
                                begin
                                    ParamByName('FormaPagamento').asInteger := 3;
                                    ParamByName('AVista').asString := 'N';
                                end;

                            ParamByName('Status').asInteger := 3;
                            ParamByName('ChqNom').asString := ChequeNominal;
                            if NumCheque = 0 then
                                SQL.Text := replace(SQL.Text, ':NumChq', 'null')
                            else
                                ParamByName('NumChq').asInteger := NumCheque;
                            Tipo := 21;
                        end
                    else if Especie = 50 then
                        begin {Cart�o Empresa}

                            Dia := StrToIntDef(formatdatetime('dd', data), 1);

                            if Dia < getMelhorDiaCompra(FormaPagamento) then
                                ParamByName('Venc').asDateTime := FirstMonthDay(Data) + getCarenciaCredito(FormaPagamento) - 1
                            else
                                ParamByName('Venc').asDateTime := FirstMonthDay(DateAdd('MM', 1, Data)) + getCarenciaCredito(FormaPagamento) - 1;

                            ParamByName('Status').asInteger := 7;
                            ParamByName('AVista').asString := 'N';
                            ParamByName('ChqNom').asString := '';
                            SQL.Text := replace(SQL.Text, ':NumChq', 'null');

                            Tipo := 22;
                        end
                    else if Especie = 20 then
                        begin {TEF}

                            SQL.Text := replace(SQL.Text, ':NumChq', 'null');
                            ParamByName('Venc').asDateTime := Data;
                            ParamByName('Status').asInteger := 50;
                            ParamByName('AVista').asString := 'S';
                            ParamByName('ChqNom').asString := '';
                            Tipo := 23;

                        end
                    else if Especie = 40 then
                        begin {Servi�o}

                            SQL.Text := replace(SQL.Text, ':NumChq', 'null');
                            ParamByName('Venc').asDateTime := Data;
                            ParamByName('Status').asInteger := 50;
                            ParamByName('AVista').asString := 'S';
                            ParamByName('ChqNom').asString := '';
                            Tipo := 24;

                        end
                    else
                        begin

                            Dia := StrToIntDef(formatdatetime('dd', data), 1);

                            if Dia < getMelhorDiaCompra(FormaPagamento) then
                                ParamByName('Venc').asDateTime := FirstMonthDay(Data) + getCarenciaCredito(FormaPagamento) - 1
                            else
                                ParamByName('Venc').asDateTime := FirstMonthDay(DateAdd('MM', 1, Data)) + getCarenciaCredito(FormaPagamento) - 1;

                            ParamByName('Status').asInteger := 50;
                            ParamByName('AVista').asString := 'N';
                            ParamByName('ChqNom').asString := '';
                            SQL.Text := replace(SQL.Text, ':NumChq', 'null');

                            Tipo := 25;

                        end;
                    Status := ParamByName('Status').asInteger;

                    ExecSQL;

                    if (bLancarTransacoes) then
                        begin

                            Close;
                            SQL.Text := 'Insert into transacoes ' +
                                ' (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                                ' Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                                ' Values  (:Conta, :Data, :Valor, ''D'', :NumCheque, :Forma, :Retirada, :IDDoc, ' +
                                ' :Historico, ''N'', :Favorecido, CURRENT_TIME, :Usuario, :TipoOperacao, :pdv, :empresa ) ';

                            ParamByName('Conta').AsInteger := Conta;
                            ParamByName('Data').AsDateTime := Data;
                            ParamByName('Valor').AsCurrency := -Valor;
                            ParamByName('Forma').AsInteger := FormaPagamento;
                            ParamByName('Retirada').AsInteger := Retirada;
                            ParamByName('IDDoc').AsInteger := IDDoc;
                            ParamByName('TipoOperacao').AsInteger := TipoOperacao;
                            ParamByName('Historico').AsString := Obs;
                            ParamByName('Favorecido').AsInteger := Favorecido;
                            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                            if NumCheque = 0 then
                                SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                            else
                                ParamByName('NumCheque').AsInteger := NumCheque;

                            ExecSQL;
                        end;

                    InserirOperacoesDoc(IDDoc, Retirada, TipoOperacao, FormaPagamento, Status, Valor);

                    AuditoriaFinanceira(Tipo, getFavorecido(Favorecido), 'RetiradasDoc', IDDoc, Valor, Retirada, TipoOperacao, Conta);
                end;
        end;

    result := IDDoc;
end;

function TDMFinanceiro.ApagarDoc;
begin
    with Q_Transacoes do
        begin
            close;
            sql.text := 'Select IDDoc, IDGerador, TipoOperacao, Valor from OperacoesDoc ' +
                'Where IDDoc = :IDDoc and TipoOperacao > 6 ' +
                'Order by IDGerador desc ';
            parambyname('IDDoc').asInteger := IDDoc;
            open;
            disablecontrols;
            first;
            while not EOF do
                begin
                    CancelarOperacao(fieldbyname('IDGerador').asString, fieldbyname('TipoOperacao').asInteger, IDDoc);
                    Next;
                end;
            enablecontrols;
            if bApagarDoc then
                begin
                    close;
                    sql.text := 'delete from depositosdoc ' +
                        'where iddoc = :iddoc';
                    parambyname('iddoc').asinteger := IDDoc;
                    ExecSQL;

                    close;
                    sql.text := 'delete from retiradasdoc ' +
                        'where iddoc = :iddoc';
                    parambyname('iddoc').asinteger := IDDoc;
                    ExecSQL;
                end;

            close;
            sql.text := 'delete from transacoes where idgerador = (select Max(idgerador) from transacoes where iddoc = :iddoc)';
            parambyname('iddoc').asinteger := IDDoc;
            ExecSQL;

            close;
            sql.text := 'delete from operacoesdoc ' +
                'where iddoc = :iddoc';
            parambyname('iddoc').asinteger := IDDoc;
            ExecSQL;

            close;
            sql.text := 'delete from auditorias where tabela = ''DepositosDoc'' and idtabela = ' + IntToStr(IDDoc);
            ExecSQL;

            close;
            sql.text := 'delete from auditorias where tabela = ''RetiradasDoc'' and idtabela = ' + IntToStr(IDDoc);
            ExecSQL;
            Close;
        end;
end;

procedure TDMFinanceiro.InserirOperacoesDoc(IDDoc, IDGerador, TipoOperacao, FormaPagamento, Status: integer; Valor: Currency);
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            Close;
            SQL.Text := 'insert into OperacoesDoc (iddoc, idgerador, tipooperacao, valor, formapagamento, data, status, usuario, obs, pdv, empresa) values ' +
                '( :IDDoc, :IDGerador, :TipoOperacao, :Valor, :FormaPagamento, :Data, :Status, :usuario, :obs, :pdv, :empresa )';
            ParamByName('IDDoc').AsInteger := IDDoc;
            ParamByName('IDGerador').AsInteger := IDGerador;
            ParamByName('TipoOperacao').AsInteger := TipoOperacao;
            ParamByName('Valor').AsCurrency := Valor;
            ParamByName('FormaPagamento').AsInteger := FormaPagamento;
            ParamByName('Data').AsDateTime := DMProjeto.dDataSistema;
            ParamByName('Status').AsInteger := Status;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('Obs').Value := DMProjeto.getCampoTabela('TiposOrigens', 'Origem', 'Descricao', TipoOperacao);
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            nTentativas := 0;
            bGravouSaida := False;
            repeat
                try
                    ExecSQL;
                    Close;
                    nTentativas := 3;
                    bGravouSaida := True;
                except
                    on e: Exception do
                        begin
                            sErro := sErro + e.Message;
                            Inc(nTentativas);
                            Sleep(20);
                        end;
                end;
            until nTentativas = 3;
            if not (bGravouSaida) then
                begin
                    Beep.BeepFor(800, 1000);
                    Beep.BeepFor(500, 800);
                    DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                            'Linha - 2812 ' + #13 + #13 + sErro)]);
                end;

            Free;
        end;
end;

function TDMFinanceiro.ReceberDoc;
var Especie, Conta, Favorecido, Tipo, Status, nResposta, nTipoConta: integer;
    bLancarTransacoes, bAtualizarDoc, bCancelarOperacoes: boolean;
    ValorOperacaoDoc: Currency;
    dtData, DataDeposito: TDateTime;
    sNomeConta: string;
begin
    try
        bAtualizarDoc := false;
        if IDDoc = 0 then
            IDDoc := DMProjeto.NextIDGlobal
        else
            begin
                with Q_SQL2 do
                    begin
                        close;
                        sql.text := 'Select IDDoc, IDGerador, TipoOperacao, Valor, FormaPagamento from OperacoesDoc ' +
                            'Where IDDoc = :IDDoc and not TipoOperacao IN (1,2,3,4,5,6) ';
                        parambyname('IDDoc').asInteger := IDDoc;
                        open;
                        ValorOperacaoDoc := fieldbyname('Valor').AsCurrency;
                        last;
                        if recordcount > 0 then
                            begin
                                if fieldbyname('FormaPagamento').asInteger = FormaPagamento then
                                    begin
                                        nResposta := DlgMsg.ShowMsg(924, [getFormaPagamento(FormaPagamento) + iif(NumCheque <> 0, ' - # ' + IntToStr(NumCheque), '') + ' Valor: ' + formatfloat('###,##0.00', Valor)]);
                                        while nResposta = 300 do
                                            begin
                                                DMProjeto.SetParametrosForm([IntToStr(IDDoc), false, false]);
                                                DMProjeto.CriarForm('DlgOperacoesDoc', self, true);
                                                nResposta := DlgMsg.ShowMsg(924, [getFormaPagamento(FormaPagamento) + iif(NumCheque <> 0, ' - # ' + IntToStr(NumCheque), '') + ' Valor: ' + formatfloat('###,##0.00', Valor)]);
                                            end;
                                        if nResposta = 200 then
                                            ApagarDoc(IDDoc, true)
                                        else
                                            bAtualizarDoc := true;
                                    end
                                else
                                    ApagarDoc(IDDoc, true);
                            end
                        else
                            bAtualizarDoc := true;
                    end;
            end;

        with Q_SQL do
            begin
                close;
                sql.text := 'select conta,data,favorecido from depositos where deposito = ' + IntToStr(Deposito);
                open;
                conta := fields[0].AsInteger;
                DataDeposito := fields[1].AsDateTime;
                Favorecido := fields[2].AsInteger;
                close;
                sql.text := 'select status from depositosdoc ' +
                    'where iddoc = :iddoc';
                parambyname('IDDoc').asInteger := IDDoc;
                open;
                Status := fields[0].AsInteger;
                close;
            end;

        nTipoConta := Conta_TipoConta(Conta);
        sNomeConta := Conta_Nome(Conta);
        if FormaPagamento = 2 then
            if Data > DataDeposito then
                FormaPagamento := 3;
        Especie := getEspecieID(FormaPagamento);

        {Atualiza��o do Documento}
        if bAtualizarDoc then
            begin
                with Q_SQL do
                    begin
                        close;
                        sql.text := 'update depositosdoc ' +
                            'set numcheque = :numcheque, deposito = :deposito, valor = :valor, ' +
                            '    vencimento = :vencimento, banco = :banco, contaatual = :conta, ' +
                            '    tipo = :tipo, formapagamento = :formapagamento, contareceber = :contareceber, ' +
                            '    numerocartao = :numerocartao, validade = :validade, ' +
                            '    foradaempresa = :foradaempresa, localtitulo = :localtitulo, ' +
                            '    infoadicionais = :infoadicionais ' +
                            '    :taxacartao ' +
                            'where iddoc = :iddoc ';
                        if NumCheque = 0 then
                            sql.text := replace(sql.text, ':numcheque', 'null')
                        else
                            parambyname('numcheque').AsInteger := NumCheque;

                        if Especie = 3 then
                            begin {Cart�o de Cr�dito}
                                sql.text := replace(sql.text, ':taxacartao', ', taxacartao = :taxa ');
                                parambyname('taxa').asCurrency := getEncargos(FormaPagamento, Valor);
                            end
                        else
                            sql.text := replace(sql.text, ':taxacartao', '');

                        parambyname('valor').AsCurrency := Valor;
                        parambyname('vencimento').AsDateTime := Data;
                        parambyname('banco').AsInteger := Banco;

                        if Especie = 20 then
                            parambyname('conta').AsInteger := ContaTEF
                        else
                            parambyname('conta').AsInteger := Conta;

                        parambyname('contareceber').AsInteger := ContaReceber;
                        parambyname('formapagamento').AsInteger := FormaPagamento;
                        parambyname('iddoc').AsInteger := IDDoc;
                        parambyname('deposito').AsInteger := Deposito;
                        parambyname('tipo').AsInteger := ModoCartao;
                        parambyname('numerocartao').AsString := NumeroCartao;
                        parambyname('validade').AsString := Validade;
                        parambyname('foradaempresa').AsString := iif(Especie = 20, 'S', iif(nTipoConta = 2, 'S', iif(Status >= 50, 'S', 'N')));
                        parambyname('localtitulo').AsString := sNomeConta;
                        parambyname('infoadicionais').AsString := sInfoAdicionais;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + 'Linha - 2921 ' + #13 + #13 + sErro)]);
                            end;
                        SQL.Text := 'update operacoesdoc ' +
                            'set valor = :valor, formapagamento = :formapag ' +
                            'where iddoc = ' + IntToStr(IDDoc);
                        Params[0].AsCurrency := Valor;
                        Params[1].AsInteger := FormaPagamento;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                        'Linha - 2985 ' + #13 + #13 + sErro)]);
                            end;
                        SQL.Text := 'update transacoes ' +
                            'set numcheque = :numcheque, valor = :valor, favorecido = :fav, ' +
                            'formapagamento = :formapag, conta = :conta, data = :data ' +
                            'where IDDoc = :IDDoc and tipotransacao = ''C'' ';
                        if NumCheque = 0 then
                            sql.text := replace(sql.text, ':numcheque', 'null')
                        else
                            parambyname('numcheque').AsInteger := NumCheque;
                        parambyname('valor').AsCurrency := Valor;
                        parambyname('data').AsDateTime := DataDeposito;
                        parambyname('fav').AsInteger := Favorecido;
                        parambyname('formapag').AsInteger := FormaPagamento;
                        parambyname('conta').AsInteger := Conta;
                        parambyname('iddoc').AsInteger := IDDoc;

                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                        'Linha - 3014 ' + #13 + #13 + sErro)]);
                            end;

                        SQL.Text := 'update transacoes ' +
                            'set numcheque = :numcheque, valor = :valor, favorecido = :fav, ' +
                            'formapagamento = :formapag, data = :data ' +
                            'where IDDoc = :IDDoc and tipotransacao = ''D''  ';
                        if NumCheque = 0 then
                            sql.text := replace(sql.text, ':numcheque', 'null')
                        else
                            parambyname('numcheque').AsInteger := NumCheque;
                        parambyname('data').AsDateTime := DataDeposito;
                        parambyname('valor').AsCurrency := -Valor;
                        parambyname('fav').AsInteger := Favorecido;
                        parambyname('formapag').AsInteger := FormaPagamento;
                        parambyname('iddoc').AsInteger := IDDoc;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                        'Linha - 3052 ' + #13 + #13 + sErro)]);
                            end;
                        SQL.Text := 'update operacoesfinanceirasdet ' +
                            'set valor = :valor ' +
                            'where iddoc = :iddoc ';
                        ParamByName('IDDoc').AsInteger := IDDoc;
                        ParamByName('valor').AsCurrency := Valor;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                        'Linha - 3089 ' + #13 + #13 + sErro)]);
                            end;

                        ValorOperacaoDoc := Valor - ValorOperacaoDoc;
                        sql.text := 'Select IDGerador, FormaPagamento from OperacoesDoc ' +
                            'Where IDDoc = :IDDoc and not TipoOperacao IN (1,2,3,4,5,6) ';
                        open;
                        disablecontrols;
                        first;
                        while not eof do
                            begin
                                with Q_SQL2 do
                                    begin
                                        Close;
                                        SQL.Text := 'select sum(valor) from transacoes ' +
                                            'where idgerador = :IDGerador and IDDoc = 0';
                                        ParamByName('IDGerador').AsInteger := q_sql.fieldbyname('idgerador').AsInteger;
                                        Open;
                                        if (fields[0].asCurrency > 0) and (fields[0].asCurrency <> ValorOperacaoDoc) then
                                            begin
                                                Close;
                                                SQL.Text := 'update transacoes ' +
                                                    'set valor = valor + :valor ' +
                                                    'where IDGerador = :IDGerador and IDDoc = 0 ';
                                                ParamByName('IDGerador').AsInteger := q_sql.fieldbyname('idgerador').AsInteger;
                                                ParamByName('valor').AsCurrency := ValorOperacaoDoc;
                                                nTentativas := 0;
                                                bGravouSaida := False;
                                                repeat
                                                    try
                                                        ExecSQL;
                                                        Close;
                                                        nTentativas := 3;
                                                        bGravouSaida := True;
                                                    except
                                                        on e: Exception do
                                                            begin
                                                                sErro := sErro + e.Message;
                                                                Inc(nTentativas);
                                                                Sleep(20);
                                                            end;
                                                    end;
                                                until nTentativas = 3;
                                                if not (bGravouSaida) then
                                                    begin
                                                        Beep.BeepFor(800, 1000);
                                                        Beep.BeepFor(500, 800);
                                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                                                'Linha - 3133 ' + #13 + #13 + sErro)]);
                                                    end;

                                                SQL.Text := 'update operacoesfinanceiras ' +
                                                    'set valoroperacao = valoroperacao + :valor ' +
                                                    'where operacao = :operacao ';
                                                ParamByName('operacao').AsInteger := q_sql.fieldbyname('idgerador').AsInteger;
                                                ParamByName('valor').AsCurrency := ValorOperacaoDoc;
                                                nTentativas := 0;
                                                bGravouSaida := False;
                                                repeat
                                                    try
                                                        ExecSQL;
                                                        Close;
                                                        nTentativas := 3;
                                                        bGravouSaida := True;
                                                    except
                                                        on e: Exception do
                                                            begin
                                                                sErro := sErro + e.Message;
                                                                Inc(nTentativas);
                                                                Sleep(20);
                                                            end;
                                                    end;
                                                until nTentativas = 3;
                                                if not (bGravouSaida) then
                                                    begin
                                                        Beep.BeepFor(800, 1000);
                                                        Beep.BeepFor(500, 800);
                                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                                                'Linha - 3161 ' + #13 + #13 + sErro)]);
                                                    end;
                                            end
                                        else if (fields[0].asCurrency > 0) then
                                            begin
                                                SQL.Text := 'delete from transacoes where idgerador = :id and iddoc = 0';
                                                Params[0].AsInteger := q_sql.fieldbyname('idgerador').AsInteger;
                                                nTentativas := 0;
                                                bGravouSaida := False;
                                                repeat
                                                    try
                                                        ExecSQL;
                                                        Close;
                                                        nTentativas := 3;
                                                        bGravouSaida := True;
                                                    except
                                                        on e: Exception do
                                                            begin
                                                                sErro := sErro + e.Message;
                                                                Inc(nTentativas);
                                                                Sleep(20);
                                                            end;
                                                    end;
                                                until nTentativas = 3;
                                                if not (bGravouSaida) then
                                                    begin
                                                        Beep.BeepFor(800, 1000);
                                                        Beep.BeepFor(500, 800);
                                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                                                'Linha - 3167 ' + #13 + #13 + sErro)]);
                                                    end;
                                                SQL.Text := 'update operacoesfinanceiras set situacao = ''C'' where operacao = :id';
                                                Params[0].AsInteger := q_sql.fieldbyname('idgerador').AsInteger;
                                                nTentativas := 0;
                                                bGravouSaida := False;
                                                repeat
                                                    try
                                                        ExecSQL;
                                                        Close;
                                                        nTentativas := 3;
                                                        bGravouSaida := True;
                                                    except
                                                        on e: Exception do
                                                            begin
                                                                sErro := sErro + e.Message;
                                                                Inc(nTentativas);
                                                                Sleep(20);
                                                            end;
                                                    end;
                                                until nTentativas = 3;
                                                if not (bGravouSaida) then
                                                    begin
                                                        Beep.BeepFor(800, 1000);
                                                        Beep.BeepFor(500, 800);
                                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 +
                                                                'Linha - 3213 ' + #13 + #13 + sErro)]);
                                                    end;
                                            end;
                                    end;
                                Next;
                            end;
                        enablecontrols;
                    end;

            end
        else
            begin
                with Q_SQL do
                    begin
                        {Lan�ando em DepositosDoc}
                        Close;
                        SQL.Text := 'Insert into DepositosDoc (' +
                            ' IDDoc, Deposito, FormaPagamento, Valor, Banco, NumCheque, Vencimento, ' +
                            ' Status, AVista, LocalTitulo, ContaAtual, ForaDaEmpresa, ' +
                            ' TaxaCartao, TitularCheque, Tipo, ContaReceber, NumeroCartao, Validade, ' +
                            ' Infoadicionais, pdv, empresa) ' +
                            'Values ' +
                            '(:IDDoc, :Deposito, :FormaPagamento, :Valor, :Banco, :NCh, :Venc, ' +
                            ' :Status, :AVista, :Loc, :ContaAtual, :Fora, :Taxa, ' +
                            ' :TitularCheque, :Tipo, :ContaReceber, :NumeroCartao, :Validade, ' +
                            '	:InfoAdicionais, :pdv, :empresa )';
                        ParamByName('IDDoc').asInteger := IDDoc;
                        ParamByName('Deposito').asInteger := Deposito;
                        ParamByName('FormaPagamento').asInteger := FormaPagamento;
                        ParamByName('ContaAtual').asInteger := Conta;
                        ParamByName('ContaReceber').asInteger := ContaReceber;
                        parambyname('numerocartao').AsString := NumeroCartao;
                        parambyname('validade').AsString := Validade;
                        parambyname('infoadicionais').AsString := sInfoAdicionais;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        if ModoCartao = 0 then
                            SQL.Text := replace(SQL.Text, ':Tipo', 'null')
                        else
                            ParamByName('Tipo').asInteger := ModoCartao;

                        ParamByName('Loc').asString := sNomeConta;
                        if Conta_TipoConta(Conta) = 1 then
                            ParamByName('Fora').asString := 'N'
                        else
                            ParamByName('Fora').asString := 'S';

                        {Lan�amento em Dinheiro}
                        if Especie = 5 then
                            begin

                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 50; //Liquidado
                                ParamByName('AVista').asString := 'S';
                                ParamByName('Taxa').AsCurrency := 0;
                                ParamByName('TitularCheque').asString := '';
                                Tipo := 4;
                                {Lan�amento em Cheques}
                            end
                        else if Especie in [1, 2] then
                            begin

                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := Banco;
                                if NumCheque = 0 then
                                    sql.text := replace(sql.text, ':NCh', 'null')
                                else
                                    ParamByName('NCh').asInteger := NumCheque;
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 3; //  Aguardando Compensa��o
                                ParamByName('FormaPagamento').asInteger := FormaPagamento;
                                if FormaPagamento = 2 then
                                    ParamByName('AVista').asString := 'S'
                                else
                                    ParamByName('AVista').asString := 'N';

                                ParamByName('Taxa').AsCurrency := 0;
                                ParamByName('TitularCheque').asString := TitularCheque;
                                Tipo := 5;
                                { Lan�amento em Cart�o de Cr�dito}
                            end
                        else if Especie = 3 then
                            begin

                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 1; // Aguandando Cr�dito
                                ParamByName('AVista').asString := 'N';
                                ParamByName('Taxa').AsCurrency := getEncargos(FormaPagamento, Valor);
                                ParamByName('TitularCheque').asString := TitularCheque;
                                Tipo := 6;

                            end
                        else if Especie = 40 then
                            begin {Servi�os}

                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 50;
                                ParamByName('AVista').asString := 'S';
                                ParamByName('Taxa').AsCurrency := 0;
                                ;
                                ParamByName('TitularCheque').asString := '';
                                Tipo := 8;

                            end
                        else if Especie = 20 then
                            begin {TEF}

                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 50;
                                ParamByName('ContaAtual').asInteger := ContaTEF;
                                ParamByName('AVista').asString := 'S';
                                ParamByName('TitularCheque').asString := '';
                                ParamByName('Fora').asString := 'S';
                                Tipo := 7;

                            end
                        else if Especie = 2 then
                            begin {Cheque Eletr�nico}

                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Venc').asDateTime := Data;
                                ParamByName('Status').asInteger := 1; // Aguandando Cr�dito
                                ParamByName('AVista').asString := 'N';
                                ParamByName('Taxa').AsCurrency := getEncargos(FormaPagamento, Valor);
                                ParamByName('TitularCheque').asString := '';
                                Tipo := 8;

                            end
                        else
                            begin

                                {Lan�amento com outra forma de pagamento}
                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Banco').asInteger := 0;
                                SQL.Text := replace(SQL.Text, ':NCh', 'null');
                                ParamByName('Venc').asDateTime := getCarenciaCredito(FormaPagamento, Data);
                                ParamByName('Status').asInteger := 1;
                                ParamByName('AVista').asString := 'N';
                                ParamByName('Taxa').AsCurrency := getEncargos(FormaPagamento, Valor);
                                ParamByName('TitularCheque').asString := '';
                                Tipo := 9;
                            end;
                        Status := ParamByName('Status').asInteger;
                        nTentativas := 0;
                        bGravouSaida := False;
                        repeat
                            try
                                ExecSQL;
                                Close;
                                nTentativas := 3;
                                bGravouSaida := True;
                            except
                                on e: Exception do
                                    begin
                                        sErro := sErro + e.Message;
                                        Inc(nTentativas);
                                        Sleep(20);
                                    end;
                            end;
                        until nTentativas = 3;
                        if not (bGravouSaida) then
                            begin
                                Beep.BeepFor(800, 1000);
                                Beep.BeepFor(500, 800);
                                DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + 'Linha - 3248 ' + #13 + #13 + sErro)]);
                            end;
                        SQL.Text := 'select data from depositos where deposito = :dep';
                        ParamByName('Dep').AsInteger := Deposito;
                        Open;
                        dtData := fields[0].AsDatetime;
                        {Lan�ando em Transa��es}
                        bLancarTransacoes := ((nTipoConta = 1) or ((getTransacaoEspecie(Especie) = 'S') or (FormaPagamento = 2))) and (FormaPagamento > 0);
                        if bLancarTransacoes then
                            begin
                                SQL.Text :=
                                    'Insert into transacoes ' +
                                    '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                                    '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) values ' +
                                    '    (:Conta, :Data, :Valor, :Tipo, :NumCheque, :FormaPagamento, :Deposito, :IDDoc, ' +
                                    '     :Historico, :FromBanco, :Favorecido, CURRENT_TIME, :Usuario, :TipoOperacao, :PDV, :empresa )';

                                ParamByName('Conta').AsInteger := Conta;
                                ParamByName('Data').AsDateTime := dtData;
                                ParamByName('Valor').AsCurrency := Valor;
                                ParamByName('Tipo').AsString := 'C';
                                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                if NumCheque = 0 then
                                    SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                                else
                                    ParamByName('NumCheque').AsInteger := NumCheque;
                                ParamByName('FormaPagamento').AsInteger := FormaPagamento;
                                ParamByName('Deposito').AsInteger := Deposito;
                                ParamByName('IDDoc').AsInteger := IDDoc;
                                ParamByName('Favorecido').AsInteger := Favorecido;
                                ParamByName('TipoOperacao').AsInteger := TipoOperacao;
                                ParamByName('Historico').AsString := Historico;
                                ParamByName('FromBanco').AsString := 'N';
                                ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                                nTentativas := 0;
                                bGravouSaida := False;
                                repeat
                                    try
                                        ExecSQL;
                                        Close;
                                        nTentativas := 3;
                                        bGravouSaida := True;
                                    except
                                        on e: Exception do
                                            begin
                                                sErro := sErro + e.Message;
                                                Inc(nTentativas);
                                                Sleep(20);
                                            end;
                                    end;
                                until nTentativas = 3;
                                if not (bGravouSaida) then
                                    begin
                                        Beep.BeepFor(800, 1000);
                                        Beep.BeepFor(500, 800);
                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro: DMFinanceiro Linha - 3402 ' + #13 + #13 + sErro)]);
                                    end;
                            end;
                        //A critica do erro ta na fun��o.
                        InserirOperacoesDoc(IDDoc, Deposito, TipoOperacao, FormaPagamento, Status, Valor);

                    end;

            end;

        if (ContaTEF <> 0) and (nTipoConta = 1) then
            Transferir(Conta, ContaTEF, Valor, 'Transf. TEF Banco', '', '', GetBancoConta(ContaTEF), Data, '', 22, Deposito, FormaPagamento);

        AuditoriaFinanceira(Tipo, getFavorecido(Favorecido), 'DepositosDoc', IDDoc, Valor, Deposito, TipoOperacao, Conta);
        result := IDDoc;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, ' ReceberDoc - ' + e.message, '');
            end;
    end;

end;

function TDMFinanceiro.BaixarTitulo;
var ValorTitulo, ValorPago, Juros, Descontos, CreditoUtilizado, CreditoGerado: Currency;
    Data: TDateTime;
    i: integer;
begin
    result := false;
    try
        { Efetuando a baixa do t�tulo }
        for i := 1 to ContaStrings(sTitulos, ',') do
            begin
                result := false;
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select sum(Valor) as ValorPago, sum(Juros) as Juros, ' +
                            'sum(descontos) as descontos, sum(CreditoUtilizado) as CredUti, ' +
                            'sum(CreditoGerado) as CredGer, ' +
                            'max(data) as Data ' +
                            'from DepositosTitulos ' +
                            'where Titulo = :Titulo and Status < 70 ';
                        ParamByName('Titulo').AsInteger := StrToInt(SeparaStrings(sTitulos, ',', i));
                        Open;
                        if RecordCount > 0 then
                            begin
                                ValorPago := fieldbyName('ValorPago').AsCurrency;
                                Juros := fieldbyName('Juros').AsCurrency;
                                Descontos := fieldbyName('Descontos').AsCurrency;
                                CreditoUtilizado := fieldbyName('CredUti').AsCurrency;
                                CreditoGerado := fieldbyName('CredGer').AsCurrency;
                                Data := fieldbyName('Data').AsDateTime;
                                Close;
                                SQL.Text := 'select Valor from TitulosAReceber where ID = ' + SeparaStrings(sTitulos, ',', i);
                                Open;
                                ValorTitulo := fields[0].AsCurrency;
                                nTentativas := 0;
                                Close;
                                SQL.Text := 'Update TitulosAReceber c ' +
                                    '    set ValorPago = :Valor, ' +
                                    '       DATAANTECIPACAO = :DATAANTECIPACAO, ' +
                                    '       JurosRecebidos = :Juros, ' +
                                    '       CreditoUtilizado = :CredUti, ' +
                                    '       CreditoGerado = :CredGerado, ' +
                                    '       Descontos = :Descontos, ' +
                                    '       DataPago = :D, ' +
                                    '       Status = :Status, ' +
                                    '       obs = '' DataPago = :D '' ' +
                                    'Where c.ID = :Titulo ';
                                ParamByName('Valor').AsCurrency := ValorPago;
                                ParamByName('Juros').AsCurrency := Juros;
                                ParamByName('CredUti').AsCurrency := CreditoUtilizado;
                                ParamByName('CredGerado').AsCurrency := CreditoGerado;
                                ParamByName('Descontos').AsCurrency := Descontos;
                                if ValorPago >= (ValorTitulo - Descontos - CreditoUtilizado + Juros) then
                                    ParamByName('Status').AsInteger := 50
                                else
                                    SQL.Text := replace(SQL.Text, ':Status', 'Status');
                                if dDATAANTECIPACAO > 0 then
                                    ParamByName('DATAANTECIPACAO').AsDateTime := dDATAANTECIPACAO
                                else
                                    SQL.Text := replace(SQL.Text, ':DATAANTECIPACAO', 'DATAANTECIPACAO');
                                ParamByName('D').asDateTime := Data;
                                ParamByName('Titulo').asInteger := StrToInt(SeparaStrings(sTitulos, ',', i));
                                nTentativas := 0;
                                bGravouSaida := False;
                                repeat
                                    try
                                        ExecSQL;
                                        Close;
                                        nTentativas := 3;
                                        bGravouSaida := True;
                                    except
                                        on e: Exception do
                                            begin
                                                sErro := sErro + e.Message;
                                                Inc(nTentativas);
                                                Sleep(20);
                                            end;
                                    end;
                                until nTentativas = 3;
                                if not (bGravouSaida) then
                                    begin
                                        Beep.BeepFor(800, 1000);
                                        Beep.BeepFor(500, 800);
                                        DlgMsg.ShowMsg(50, [pChar('Erro, Favor anotar este erro:!' + #13 + #13 + 'Linha - 3508 ' + #13 + #13 + sErro)]);
                                    end
                                else
                                    result := true;
                            end;
                    end;
            end;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, 'TitulosAReceber - ' + e.message, '');
                sDebugBaixa.Add('BaixaTitulo - TitulosAReceber - ' + e.message);
            end;
    end;
end;

procedure TDMFinanceiro.AtualizaConsumidorFinal(IDGerador, Favorecido: integer);
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'update depositos set favorecido = :fav ' +
                'where idgerador = :idgerador';
            parambyname('fav').asInteger := Favorecido;
            parambyname('idgerador').asInteger := IDGerador;
            execsql;

            close;
            sql.text := 'update transacoes set favorecido = :fav ' +
                'where idgerador = :idgerador';
            parambyname('fav').asInteger := Favorecido;
            parambyname('idgerador').asInteger := IDGerador;
            execsql;
        end;
end;

function TDMFinanceiro.BaixarDuplicata;
var ValorTitulo, ValorPago, Juros, Descontos, CreditoUtilizado, CreditoGerado,
    Cotacao: Currency;
    Data: TDateTime;
    Duplicata, i, Indexador: integer;
begin
    result := false;
    for i := 1 to ContaStrings(sDuplicatas, ',') do
        begin
            Duplicata := StrToInt(SeparaStrings(sDuplicatas, ',', i));
            {Efetuando a Baixa das Duplicatas - RetiradasDuplicatas}
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'select sum(Valor * Cotacao) as ValorPago, sum(CreditoUtilizado * Cotacao) as CredUti, sum(CreditoGerado * Cotacao) as CredGer, ' +
                        'sum(Descontos * Cotacao) as Descontos, Sum(Juros * Cotacao) as Juros, Max(Data) as Data ' +
                        'from RetiradasDuplicatas ' +
                        'Where Duplicata = :Dup and Status < 70';
                    ParamByName('Dup').asInteger := Duplicata;
                    Open;

                    if RecordCount > 0 then
                        begin
                            ValorPago := RoundTo(fieldbyName('ValorPago').AsCurrency, -2);
                            Juros := RoundTo(fieldbyName('Juros').AsCurrency, -2);
                            Descontos := RoundTo(fieldbyName('Descontos').AsCurrency, -2);
                            CreditoUtilizado := RoundTo(fieldbyName('CredUti').AsCurrency, -2);
                            CreditoGerado := RoundTo(fieldbyName('CredGer').AsCurrency, -2);
                            Data := fieldbyName('Data').AsDateTime;

                            Close;
                            SQL.Text := 'select Valor, Indexador from DuplicatasAPagar where ID = ' + SeparaStrings(sDuplicatas, ',', i);
                            Open;
                            ValorTitulo := fields[0].AsCurrency;

                            Close;
                            SQL.Text := 'Update DuplicatasAPagar ' +
                                '   set ValorPago = :Valor, ' +
                                '       JurosPagos = :Juros, ' +
                                '       CreditoUtilizado = :CredUti, ' +
                                '       CreditoGerado = :CredGer, ' +
                                '       Descontos = :Descontos, ' +
                                '       DataPago = :D, Status = :Status, ' +
                                '       Natureza = :RetiradaHist, JurosPlano = :DinheiroFunc, ' +
                                '       Banco = :Conta ' +
                                'Where  ID = :Retirada ';
                            ParamByName('Retirada').asInteger := Duplicata;
                            ParamByName('Conta').asInteger := Conta;
                            ParamByName('D').asDateTime := Data;
                            ParamByName('Valor').AsCurrency := ValorPago;
                            ParamByName('Juros').AsCurrency := Juros;
                            ParamByName('CredUti').AsCurrency := CreditoUtilizado;
                            ParamByName('CredGer').AsCurrency := CreditoGerado;
                            ParamByName('Descontos').AsCurrency := Descontos;
                            ParamByName('RetiradaHist').AsCurrency := RetiradaHist;
                            ParamByName('DinheiroFunc').AsCurrency := DinheiroFunc;
                            if ValorPago >= (ValorTitulo - Descontos - CreditoUtilizado + Juros) then
                                ParamByName('Status').AsInteger := 50
                            else
                                SQL.Text := replace(SQL.Text, ':Status', 'Status');
                            ExecSQL;
                            Close;
                            result := true;
                        end;
                end;
        end;
end;

function TDMFinanceiro.PagarChequesEmLoja;
var sNome: string;
    IDDoc, i: integer;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Insert into RetiradasChequesCaixa (Retirada, IDDoc, Favorecido, Conta, Status, pdv, empresa) ' +
                'Select :Ret, IDDoc, :Fav, ContaAtual, Status, pdv, empresa From  DepositosDoc where IDDoc in (' + sIDDoc + ') ';
            Params[0].asInteger := Retirada;
            Params[1].asInteger := nFavorecido;
            ExecSQL;
            {}
            for i := 1 to ContaStrings(sRetiradaDoc, ',') do
                begin
                    Close;
                    SQL.Text := 'update RetiradasChequesCaixa ' +
                        'set RetiradaDoc = :Retiradadoc ' +
                        'where retirada = :ret and iddoc = :iddoc';
                    ParamByName('RetiradaDoc').AsInteger := StrToInt(SeparaStrings(sRetiradaDoc, ',', i));
                    ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(sIDDoc, ',', i));
                    ParamByName('Ret').AsInteger := Retirada;
                    ExecSQL;
                end;
            Close;
            sNome := getFavorecido(nFavorecido);
            {Retirando Cheques das Contas}
            Close;
            SQL.Text :=
                'Insert into transacoes ' +
                '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                'Select ' +
                '     ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                '     (-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :IdGerador, dd.IDDoc, :Hist, ' +
                '     ''N'', :Fav, CURRENT_TIME, :Func, :TipoOperacao, d.pdv, d.empresa ' +
                'From Depositos d, DepositosDoc dd ' +
                'Where dd.IDDoc in (' + sIDDoc + ') and d.Deposito = dd.Deposito ';
            SQL.Text := replace(SQL.Text, ':Fav', IntToStr(nFavorecido));
            SQL.Text := replace(SQL.Text, ':Func', IntToStr(DMProjeto.nFuncionario));
            SQL.Text := replace(SQL.Text, ':IdGerador', IntToStr(Retirada));
            SQL.Text := replace(SQL.Text, ':TipoOperacao', IntToStr(TipoOperacao));
            SQL.Text := replace(SQL.Text, ':Hist', '''' + format(DMProjeto.getMsg(447), [sNome]) + '''');

            ExecSQL;

            AuditoriaFinanceira('Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 27, ' +
                'null, ' +
                '''DepositosDoc'',' +
                'dd.Iddoc, ' +
                'dd.Valor, ' +
                IntToStr(Retirada) + ', ' +
                '4,' +
                '0 ' +
                'From DepositosDoc dd where dd.IDDoc IN (' + sIDDoc + ')');

            {Atualizando Flags em DepositosDoc}
            Close;
            SQL.Text := 'Update DepositosDoc ' +
                '     set DataRetirada = :Data, LocalTitulo = ''' + sNome + ''', ' +
                '     Status = :Status, ContaAtual = 0, ForaDaEmpresa = ''S'' ' +
                'Where IDDoc in (' + sIDDoc + ') ';
            ParamByName('Status').AsInteger := Status;
            ParamByName('Data').AsDateTime := Caixa_MovimentoCorrente;
            ExecSQL;

            for i := 1 to ContaStrings(sIDDoc, ',') do
                begin
                    IDDoc := StrToInt(SeparaStrings(sIDDoc, ',', i));
                    InserirOperacoesDoc(IDDoc, Retirada, TipoOperacao, getFormaPagamentoDoc(IDDoc), 60, getValorDoc(IDDoc));
                end;

        end;
end;

function TDMFinanceiro.getContaDeposito(Deposito: integer): integer;
begin
    with Q_SQL2 do
        begin
            close;
            sql.text := 'select conta from depositos where deposito = :deposito';
            parambyname('deposito').asInteger := Deposito;
            open;
            result := fields[0].AsInteger;
            close;
        end;
end;

function TDMFinanceiro.getDeposito(IDDoc: integer): integer;
begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select Deposito from DepositosDoc ' +
                'where IDDoc = ' + IntToStr(IDDoc);
            Open;
            result := fieldbyname('Deposito').AsInteger;
            Close;
        end;
end;

function TDMFinanceiro.getOperacao(IDDoc: integer; TipoOperacao: integer = 0): integer;
begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select od.Operacao from OperacoesFinanceirasDet od left join operacoesfinanceiras o on od.operacao = o.operacao ' +
                'where od.IDDoc = ' + IntToStr(IDDoc) + iif(TipoOperacao <> 0, ' and o.TipoOperacao = ' + IntToStr(TipoOperacao), '');
            Open;
            result := fieldbyname('Operacao').AsInteger;
            Close;
        end;
end;

function TDMFinanceiro.getOperacaoDet;
var sIDDoc: string;
    Operacao: integer;
begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select Operacao, IDDoc from OperacoesFinanceirasDet ' +
                'where Operacao IN (' + sOperacoes + ') order by Operacao';
            Open;
            disablecontrols;
            First;
            sIDDoc := '';
            while not EOF do
                begin
                    Operacao := fieldbyname('Operacao').asInteger;
                    while (not EOF) and (Operacao = fieldbyname('Operacao').asInteger) do
                        begin
                            sIDDoc := sIDDoc + fieldbyname('IDDoc').AsString + ',';
                            Next;
                        end;
                    if (not EOF) and bComposto then
                        sIDDoc := Copy(sIDDoc, 1, length(sIDDoc) - 1) + ' = ';
                end;
            enablecontrols;
            sIDDoc := Copy(sIDDoc, 1, length(sIDDoc) - 1);
            close;
            result := sIDDoc;
        end;
end;

function TDMFinanceiro.getFavorecidoDeposito(Deposito: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            sql.text := 'select favorecido from depositos where deposito = :deposito';
            parambyname('deposito').asInteger := Deposito;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getFavorecidoParcela(Parcela: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            sql.text := 'select cliente from titulosareceber where id = :id';
            parambyname('id').asInteger := Parcela;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getFavorecidoRetirada(Retirada: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            sql.text := 'select favorecidodoc from retiradasdoc where retirada = :ret';
            parambyname('ret').asInteger := Retirada;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getCarenciaCredito(Formapagamento: integer; Data: TDateTime): TDateTime;
var Carencia: integer;
    dDataVenc: TDateTime;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select CarenciaCredito from formaspagamento where formapagamento = :ID ';
            parambyname('ID').AsInteger := formapagamento;
            open;
            Carencia := fields[0].AsInteger;
            Close;
            dDataVenc := Carencia + Data;
            result := DMProjeto.PrimeiroDiaUtil(dDataVenc);
        end;
end;

function TDMFinanceiro.getCarenciaCredito(Formapagamento: integer): Integer;
var Carencia: integer;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select CarenciaCredito from formaspagamento where formapagamento = :ID ';
            parambyname('ID').AsInteger := formapagamento;
            open;
            result := fields[0].AsInteger;
            Close;
        end;
end;

function TDMFinanceiro.getEncargos;
var Encargos: Currency;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select Encargos from formaspagamento where formapagamento = :ID ';
            parambyname('ID').AsInteger := formapagamento;
            open;
            Encargos := fields[0].AsCurrency;
            Close;
            if Valor <> 0 then
                result := Valor - (Valor * (1 - Encargos / 100))
            else
                result := Encargos;
        end;
end;

function TDMFinanceiro.getMelhorDiaCompra;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select MelhorDiaCompra from formaspagamento where formapagamento = :ID ';
            parambyname('ID').AsInteger := formapagamento;
            open;
            result := fields[0].AsInteger;
            Close;
        end;
end;

function TDMFinanceiro.Conta_Situacao;
begin
    with Q_Transacoes do
        begin
            Close;
            SQL.Text := 'Select Situacao from Contas ' +
                'where Conta = :C ';
            Params[0].asInteger := nConta;
            Open;

            Result := FieldByName('Situacao').asString;
            if result = '' then
                result := 'Aberto';

            Close;
        end;
end;

function TDMFinanceiro.Conta_DataMov;
var
    dDataMov: TDatetime;
begin
    with Q_SQL2 do
        begin
            Close;
            SQL.Text := 'Select MovimentoCorrente from Contas ' +
                'where Conta = :C ';
            Params[0].asInteger := nConta;
            Open;
            if recordcount > 0 then
                begin
                    dDataMov := FieldByName('MovimentoCorrente').asDateTime;
                    Result := dDataMov;
                end
            else
                result := DMProjeto.dDataSistema;

            if result <= 0 then
                result := DMProjeto.dDataSistema;

            Close;
        end;
end;

function TDMFinanceiro.EspecieDocumento;
begin
    result := (nEspecie in [1, 3, 5, 17, 20, 23]);
end;

function TDMFinanceiro.EspecieAVista; //Implica que liquida o pagamento
begin
    result := (nEspecie in [1, 5, 18, 6..9]);
end;

function TDMFinanceiro.ExisteChequeDevolvido(Favorecido: integer): boolean; //Implica que liquida o pagamento
begin
    with C_ChequesDev do
        begin
            close;
            disablecontrols;
            fetchparams;
            params.parambyname('favorecido').AsInteger := Favorecido;
            open;
            result := recordcount > 0;
            first;
            enablecontrols;
        end;
end;

function TDMFinanceiro.ChequeDevolvido;
var NumCheque, Conta, Favorecido: integer;
    Valor: Currency;
    Vencimento: TDateTime;
begin
    with Q_SQL do
        begin
            Close;
            SQL.text := 'select dd.*,d.favorecido from DepositosDoc dd, depositos d where dd.IDDoc = :IDDoc and dd.Deposito = d.deposito';
            ParamByName('IDDoc').AsInteger := IDDoc;
            Open;

            NumCheque := fieldbyname('NumCheque').AsInteger;
            Valor := fieldbyname('Valor').AsCurrency;
            Vencimento := fieldbyname('Vencimento').AsDateTime;
            Conta := fieldbyname('ContaAtual').AsInteger;
            Favorecido := fieldbyname('Favorecido').AsInteger;
            Close;
            SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ValorJuros, PercentualJuros, ContaDestino, ContaOrigem, ValorDinheiro, Historico,Usuario, FormaPagamento, pdv, empresa) ' +
                'Values ( ' +
                ':Operacao, 9, :Favorecido, Current_Date,:Valor,:Encargos,:Despesas,:Conta, :ContaOrigem, 0,''' + DMProjeto.getMsg(318) + ''',:Usuario,:FormaPagamento, :pdv, :empresa)';
            ParamByName('Operacao').AsInteger := Operacao;
            ParamByName('Favorecido').AsInteger := Favorecido;
            ParamByName('Valor').AsCurrency := Valor;
            ParamByName('Encargos').AsCurrency := Encargos;
            ParamByName('Despesas').AsCurrency := Despesas;
            ParamByName('Conta').AsInteger := 1;
            ParamByName('Contaorigem').AsInteger := Conta;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('FormaPagamento').AsInteger := IDDoc;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            ExecSQL;

            Close;
            SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa, valorpago) ' +
                'values ' +
                '(:Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa, null) ';
            ParamByName('Operacao').AsInteger := Operacao;
            if NumCheque = 0 then
                SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
            else
                ParamByName('NumCheque').AsInteger := NumCheque;
            ParamByName('Vencimento').AsDateTime := Vencimento;
            ParamByName('Valor').AsCurrency := Valor;
            ParamByName('Favorecido').AsInteger := Favorecido;
            ParamByName('IDDoc').AsInteger := IDDoc;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            ExecSQL;

            InserirOperacoesDoc(IDDoc, Operacao, 9, 2, 4, Valor);

            Close;
            SQL.Text := 'Update DepositosDoc set Status = 4, AVista = ''N'', NUNDEV = (NUNDEV + 1)  where IDDoc = :ID';
            ParamByName('ID').asInteger := IDDoc;
            ExecSQL;
            AuditoriaFinanceira(12, '', 'DepositosDoc', IDDoc, Valor, Operacao, 9, Conta);
        end;
end;

function TDMFinanceiro.Transferir;
var
    Dinheiro: integer;
begin
    result := 0;
    try
        sHist := Copy(sHist, 1, 80);
        if sRepasse = '' then
            begin
                if Operacao = 0 then
                    Operacao := DMProjeto.NextIDGlobal;
                with Q_SQL do
                    begin
                        close;
                        SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                            'Operacao, TipoOperacao, Data, ValorOperacao, ValorDinheiro, ContaDestino, ContaOrigem, Historico, Usuario, pdv, empresa) ' +
                            'values (:Operacao,:TipoOp,:Data,:Valor,:ValorDin, :ContaDest, :ContaOrig, :Historico, :Usuario, :pdv, :empresa ) ';
                        ParamByName('Operacao').AsInteger := Operacao;
                        ParamByName('TipoOp').AsInteger := TipoOperacao;
                        ParamByName('Data').AsDateTime := dData;
                        ParamByName('Valor').AsCurrency := nValor;
                        ParamByName('ValorDin').AsCurrency := nValor;
                        ParamByName('ContaOrig').AsInteger := nConta_R;
                        ParamByName('ContaDest').AsInteger := nConta_D;
                        ParamByName('Historico').AsString := sHist;
                        ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        ExecSQL;
                    end;
            end;

        //Retirando da ContaOrigem
        Retirar(TipoOperacao, Operacao, nConta_R, dData, nValor, 0, FormaPagamento, sHist, dData, NFiscal, '', nFavorec, 0, 'N', sRepasse);

        //Depositando na ContaDestino
        Depositar(TipoOperacao, Operacao, nConta_D, nConta_R, dData, nValor, 0, FormaPagamento, sHist, dData, NFiscal, '', nFavorec, 'N', sRepasse);

        result := Operacao;
        AuditoriaFinanceira(14, 'Origem: ' + Conta_Nome(nConta_R) + ' Destino: ' + Conta_Nome(nConta_D), 'OperacoesFinanceiras', Operacao, nValor, Operacao, 8, 0);
    except
        on E: Exception do
            DlgMsg.ShowMsg(1, 'Transfer�ncia ' + e.message, '');

    end;
end;

procedure TDMFinanceiro.CancelarOperacao;
var sIDDoc, sDoc, sDocs, sMotivo: string;
    Deposito, i, j: integer;
    Vencimento: TDateTime;
begin
    {Pegando os documentos da apresenta��o}
    if TipoOperacao = 13 then
        begin
            with Q_SQL2 do
                begin
                    close;
                    sql.text := 'select contaorigem from operacoesfinanceiras where operacao IN (' + sOperacoes + ')';
                    open;
                    first;
                    while not eof do
                        begin
                            sIDDoc := sIDDoc + getOperacaoDet(fields[0].AsString) + ',';
                            next;
                        end;
                    close;
                    sIDDoc := Copy(sIDDoc, 1, length(sIDDoc) - 1);
                end;
        end
    else
        sIDDoc := getOperacaoDet(sOperacoes);

    if ContaStrings(sIDDoc, ',') > 1 then
        begin
            if IDDoc <> 0 then
                sIDDoc := IntToStr(IDDoc);
        end;
    with Q_ComandoSQL do
        begin
            if TipoOperacao = 7 then
                begin {Quando a Operacao for "Dep�sito em Banco" - Atualizando em DepositosDoc para o Caixa Principal}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            try
                                close;
                                SQL.Text := 'update DepositosDoc d set ' +
                                    'd.ForaDaEmpresa = ''N'', d.Status = 3, d.ContaAtual = 1, LocalTitulo = ''' + Conta_Nome(1) + ''' ' +
                                    'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                                ExecSQL;
                            except
                                { Colocado o Try/Except para evitar que o erro seja exibido ao cancelar Dep�sito em Dinheiro. Obs: dep�sito em dinheiro n�o
                                    registra na tabela OperacoesFinanceirasDet. }
                            end;
                        end;
                end
            else if TipoOperacao = 9 then
                begin {Quando a Opera��o for Cheque Devolvido}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            close;
                            SQL.Text := 'update DepositosDoc set ' +
                                'ForaDaEmpresa = ''S'', Status = 50, ' +
                                'ContaAtual = (select ContaOrigem from OperacoesFinanceiras where Operacao = ' + SeparaStrings(sOperacoes, ',', i) + ') ' +
                                'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 10 then
                begin {Quando a Opera��o for Acerto de Cheques}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            close;
                            SQL.Text := 'update DepositosDoc set ' +
                                'ForaDaEmpresa = ''N'', Status = 4, ' +
                                'ContaAtual = 1, DataCancelamento = null, MotivoCancelamento = null, ' +
                                'FuncCancelamento = null  ' +
                                'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ExecSQL;
                            Close;
                            SQL.Text := 'update OperacoesFinanceirasDet od ' +
                                'set od.valorpago = null ' +
                                'where od.iddoc = :iddoc and ' +
                                'exists (select o.operacao from operacoesfinanceiras o where o.operacao = od.operacao and o.tipooperacao = 9 and o.situacao is null)';
                            ParamByName('iddoc').AsInteger := StrToInt(SeparaStrings(sIDDoc, ' = ', i));
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 11 then
                begin {Apresenta��o de Cart�es}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update DepositosDoc set Status = 1, AVista = ''N'', ForadaEmpresa=''N'', LocalTitulo= :L, ContaAtual = 1 ' +
                                'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ParamByName('L').asString := DMProjeto.getMsg(298);
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 12 then
                begin {Compensa��o de Cheques}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update RetiradasDoc set Status = 3 ' +
                                'where IDDoc in (' + SeparaStrings(sIDDoc, ' = ', i) + ') ';
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 13 then
                begin {Liquida��o de Cart�es}
                    {Atualizar Status do Documento}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            close;
                            sql.text := 'update depositosdoc ' +
                                'set status = 1, foradaempresa=''N'', LocalTitulo= :L, ContaAtual = 1 ' +
                                'where iddoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ParamByName('L').asString := DMProjeto.getMsg(298);
                            execsql;
                        end;

                    close;
                    sql.text := 'update operacoesfinanceiras ' +
                        'set floating = 0 ' +
                        'where operacao IN (' + sOperacoes + ')';
                    execsql;
                end
            else if TipoOperacao = 15 then
                begin {Pagamentos com Cart�o}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            if SeparaStrings(sIDDoc, ' = ', i) <> '' then
                                begin
                                    Close;
                                    SQL.Text := 'Update RetiradasDoc set Status = 7 ' +
                                        'where IDDoc in (' + SeparaStrings(sIDDoc, ' = ', i) + ') ';
                                    ExecSQL;
                                end;
                        end;
                end
            else if TipoOperacao = 16 then
                begin {Apresenta��o de Tickets}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update DepositosDoc set Status = 1, AVista = ''N'', ForadaEmpresa=''N'', LocalTitulo= :L, ContaAtual = 1 ' +
                                'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ParamByName('L').asString := DMProjeto.getMsg(298);
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 17 then
                begin {Apresenta��o de Conv�nios}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update DepositosDoc set Status = 1, AVista = ''N'', ForadaEmpresa=''N'', LocalTitulo= :L, ContaAtual = 1 ' +
                                'where IDDoc IN (' + SeparaStrings(sIDDoc, ' = ', i) + ')';
                            ParamByName('L').asString := DMProjeto.getMsg(298);
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 20 then
                begin {Repasses}
                    close;
                    sql.text := 'select historico, contaorigem from operacoesfinanceiras ' +
                        'where operacao IN (' + sOperacoes + ') and historico is not null';
                    open;
                    while not eof do
                        begin
                            sDocs := FieldByName('historico').AsString;
                            if sDocs <> '' then
                                begin
                                    with Q_SQL2 do
                                        begin
                                            close;
                                            sql.text := 'update depositosdoc ' +
                                                'set contaatual = :conta, localtitulo = :local, ' +
                                                '    datarepasse = null ' +
                                                'where iddoc IN (' + sDocs + ')';
                                            parambyname('conta').AsInteger := Q_ComandoSQL.FieldByName('contaorigem').AsInteger;
                                            parambyname('local').AsString := getDescricaoConta(Q_ComandoSQL.FieldByName('contaorigem').AsInteger);
                                            ExecSql;
                                        end;
                                end;
                            Next;
                        end;
                end
            else if TipoOperacao = 58 then
                begin {Transfer�ncia entre Empresas}
                    close;
                    sql.text := 'select historico from operacoesfinanceiras ' +
                        'where operacao IN (' + sOperacoes + ') and historico is not null';
                    open;
                    while not eof do
                        begin
                            sDocs := FieldByName('historico').AsString;
                            if sDocs <> '' then
                                begin
                                    with Q_SQL2 do
                                        begin
                                            close;
                                            sql.text := 'update depositosdoc ' +
                                                'set contaatual = 1, localtitulo = ''Caixa Principal'', status = 3, ' +
                                                '    datarepasse = null ' +
                                                'where iddoc IN (' + sDocs + ')';
                                            execsql;
                                        end;
                                end;
                            Next;
                        end;
                end
            else if TipoOperacao = 24 then
                begin {Factory}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update DepositosDoc set Status = 3, ContaAtual = 1, ForaDaEmpresa=''N'', LocalTitulo = ''Caixa Principal'', DataRetirada = null ' +
                                'where IDDoc in (' + SeparaStrings(sIDDoc, ' = ', i) + ') ';
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 27 then
                begin {Cheques Descontados}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'Update DepositosDoc set Status = 3, ForaDaEmpresa=''N'', ContaAtual = 1 ' +
                                'where IDDoc in (' + SeparaStrings(sIDDoc, ' = ', i) + ') ';
                            ExecSQL;
                        end;
                end
            else if TipoOperacao = 29 then
                begin {Agendamento de Despesas Fixas}
                    {Cancelando em Contas a Pagar}
                    close;
                    SQL.Text := 'select IDDoc from OperacoesFinanceirasDet where Operacao IN (' + sOperacoes + ')';
                    Open;
                    First;
                    sDoc := '';
                    while not eof do
                        begin
                            sDoc := sDoc + fields[0].AsString + ',';
                            next;
                        end;
                    if sDoc <> '' then
                        sDoc := Copy(sDoc, 1, length(sDoc) - 1);
                    sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');
                    if Trim(sMotivo) = '' then
                        Exit;
                    for i := 1 to ContaStrings(sDoc, ',') do
                        CancelarDuplicata(StrToInt(SeparaStrings(sDoc, ',', i)), sMotivo, false, false);
                end
            else if TipoOperacao = 48 then
                begin {Reparcelamento}
                    close;
                    sql.text := 'select iddoc from operacoesfinanceirasdet ' +
                        'where operacao in (' + sOperacoes + ')';
                    open;
                    first;
                    sDoc := '';
                    while not eof do
                        begin
                            sDoc := sDoc + fields[0].AsString + ',';
                            next;
                        end;
                    sDoc := Copy(sDoc, 1, length(sDoc) - 1);
                    {Verificando se houve pagamento para alguma parcela, caso haja poder�
                     ser cancelado}
                    if (Trim(sDoc) <> '') then
                        begin
                            with Q_ComandoSQL do
                                begin
                                    close;
                                    sql.text := 'select titulo, deposito from depositostitulos where titulo in (' + sDoc + ')';
                                    open;
                                    if fields[0].AsInteger > 0 then
                                        begin
                                            if DlgMsg.ShowMsg(601) = 200 then
                                                Exit;
                                            first;
                                            Deposito := 0;
                                            while not eof do
                                                begin
                                                    if Deposito <> fields[1].AsInteger then
                                                        ApagarDeposito(fields[1].AsInteger, true, true);
                                                    Deposito := fields[1].AsInteger;
                                                    next;
                                                end;
                                        end;
                                end;
                        end;
                    {Apagando as parcelas geradas}
                    close;
                    sql.text := 'delete from titulosareceber where id IN (' + sDoc + ')';
                    execsql;
                    {Retornando as parcelas negociadas}
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            close;
                            sql.text := 'select historico from operacoesfinanceiras ' +
                                'where operacao = :operacao';
                            parambyname('operacao').asInteger := StrToInt(SeparaStrings(sOperacoes, ',', i));
                            open;
                            sDoc := fields[0].AsString;
                            for j := 1 to ContaStrings(sDoc, ',') do
                                begin
                                    close;
                                    sql.text := 'select vencimento from titulosareceber where id = :id';
                                    parambyname('id').AsInteger := StrToInt(SeparaStrings(sDoc, ',', j));
                                    open;
                                    Vencimento := fields[0].AsDateTime;
                                    close;
                                    sql.text := 'update titulosareceber set status = ' + IntToStr(SetStatus(Vencimento)) + ' ' +
                                        'where id = :id';
                                    parambyname('id').AsInteger := StrToInt(SeparaStrings(sDoc, ',', j));
                                    nTentativas := 0;
                                    bGravouSaida := False;
                                    repeat
                                        try
                                            ExecSQL;
                                            Close;
                                            nTentativas := 3;
                                            bGravouSaida := True;
                                        except
                                            Inc(nTentativas);
                                            Sleep(20);
                                        end;
                                    until nTentativas = 3;
                                    if not (bGravouSaida) then
                                        DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.CancelarOperacao ')]);

                                end;
                        end;
                end
            else if TipoOperacao = 52 then
                begin {Resgate de Cheques}
                    close;
                    sql.text := 'select contaorigem as IDAPagar, contadestino as IDRetirada, titulo as IDAReceber from operacoesfinanceiras ' +
                        'where operacao IN (' + sOperacoes + ')';
                    open;
                    while not EOF do
                        begin
                            with Q_SQL2 do
                                begin
                                    {Apagar retirada e duplicatas a pagar}
                                    close;
                                    sql.text := 'execute procedure PP_ApagarRetiradasDuplicata( :Duplicata )';
                                    parambyname('Duplicata').asInteger := Q_ComandoSQL.FieldByName('IDAPagar').AsInteger;
                                    execsql;

                                    close;
                                    sql.text := 'execute procedure PP_ApagarDepositosTitulo( :Titulo )';
                                    parambyname('Titulo').Asinteger := Q_ComandoSQL.FieldByName('IDAReceber').AsInteger;
                                    execsql;

                                    close;
                                    sql.text := 'delete from titulosareceber where id = :id ';
                                    params[0].asinteger := Q_ComandoSQL.FieldByName('IDAReceber').AsInteger;
                                    execsql;
                                end;
                            next;
                        end;
                    close;
                    sql.text := 'select contaatual, iddoc from operacoesfinanceirasdet ' +
                        'where operacao IN (' + sOperacoes + ')';
                    open;
                    while not eof do
                        begin
                            with Q_SQL2 do
                                begin
                                    close;
                                    sql.text := 'update depositosdoc ' +
                                        'set contaatual = :conta, foradaempresa = ''N'', localtitulo = :local ' +
                                        'where iddoc = :iddoc';
                                    parambyname('conta').AsInteger := Q_ComandoSQL.Fields[0].AsInteger;
                                    parambyname('local').AsString := getDescricaoConta(Q_ComandoSQL.Fields[0].AsInteger);
                                    parambyname('iddoc').AsInteger := Q_ComandoSQL.Fields[1].AsInteger;
                                    execsql;
                                end;
                            next;
                        end;
                end;
            {Opera��es comuns de cancelamento}

            {Excluindo de Opera��es Financeiras Detalhe}
            if IDDoc <> 0 then
                begin
                    close;
                    SQL.Text := 'delete from OperacoesFinanceirasDet where Operacao IN (' + sOperacoes + ')' +
                        ' and IDDoc = ' + IntToStr(IDDoc);
                    ExecSQL;
                end;

            {Cancelando de Opera��es Financeiras}
            if IDDoc = 0 then
                begin
                    close;
                    SQL.Text := 'update OperacoesFinanceiras set situacao = ''C'', Usuario = :Usuario where Operacao IN (' + sOperacoes + ')';
                    Params[0].AsInteger := DMProjeto.nFuncionario;
                    ExecSQL;
                end
            else
                begin
                    if TipoOperacao in [7, 11, 12, 16, 17, 24, 27] then
                        begin
                            close;
                            SQL.Text := 'update OperacoesFinanceiras ' +
                                'set valoroperacao = (select sum(valor) from OperacoesFinanceirasDet where Operacao IN (' + sOperacoes + ')) ' +
                                'where Operacao IN (' + sOperacoes + ')';
                            ExecSQL;
                        end;
                end;
            {Excluindo em Titulos a Receber}
            close;
            SQL.Text := 'delete from TitulosAReceber where ID = (select coalesce(Titulo,0) from OperacoesFinanceiras where Operacao IN (' + sOperacoes + '))';
            try
                ExecSQL;
            except
                SQL.Text := 'delete from TitulosAReceber where ID IN (select Titulo from OperacoesFinanceiras where Operacao IN (' + sOperacoes + '))';
                ExecSQL;
            end;

            {Excluindo em Contas a Pagar}
            close;
            SQL.Text := 'delete from DuplicatasAPagar where ID = (select coalesce(Titulo,0) from OperacoesFinanceiras where Operacao IN (' + sOperacoes + '))';
            try
                ExecSQL;
            except
                SQL.Text := 'delete from DuplicatasAPagar where ID IN (select Titulo from OperacoesFinanceiras where Operacao IN (' + sOperacoes + '))';
                ExecSQL;
            end;

            ExecSQL;
            {Excluindo de Transacoes}
            close;
            SQL.Text := 'delete from Transacoes where IDGerador IN (' + sOperacoes + ') and TipoOperacao = ' + IntToStr(TipoOperacao);
            if IDDoc <> 0 then
                SQL.Text := SQL.Text + ' and IDDoc = ' + IntToStr(IDDoc);
            ExecSQL;
            {Atualizando Transa��es}
            close;
            SQL.text := 'select sum(valor) from OperacoesFinanceirasDet where Operacao IN (' + sOperacoes + ')';
            open;
            if fields[0].AsCurrency > 0 then
                begin
                    for i := 1 to ContaStrings(sOperacoes, ',') do
                        begin
                            Close;
                            SQL.Text := 'update transacoes ' +
                                'set valor = (select sum(valor) from OperacoesFinanceirasDet where Operacao IN (' + sOperacoes + ')) ' +
                                'where idgerador = ' + SeparaStrings(sOperacoes, ',', i) + ' and iddoc = 0 ';
                            ExecSQL;
                        end;
                end
            else
                begin
                    close;
                    SQL.Text := 'delete from transacoes ' +
                        'where idgerador IN (' + sOperacoes + ') and iddoc = 0 ';
                    ExecSQL;
                end;
            {Excluindo de TransacoesCreditos}
            if IDDoc = 0 then
                begin
                    close;
                    SQL.Text := 'delete from TransacoesCreditos where IDGerador IN (' + sOperacoes + ')';
                    ExecSQL;
                end;
            {Excluindo de Auditoria}
            close;
            SQL.Text := 'delete from Auditorias where IDGerador IN (' + sOperacoes + ')';
            ExecSQL;

            {Excluindo de Auditoria}
            close;
            SQL.Text := 'delete from OperacoesDoc where IDGerador IN (' + sOperacoes + ')';
            if IDDoc <> 0 then
                SQL.Text := SQL.Text + ' and IDDoc = ' + IntToStr(IDDoc);
            ExecSQL;
        end;
    for i := 1 to ContaStrings(sOperacoes, ',') do
        CancelarLancamentos(SeparaStrings(sOperacoes, ',', i));

end;

function TDMFinanceiro.DepositarCheques;
var NumCheque, Favorecido, Operacao, FormaPagamento, OpDoc, ContaOrigem, Deposito, i: integer;
    slItems: TStringList;
    Vencimento: TDateTime;
    ValorTotal, ValorDoc: Currency;
begin
    result := 0;
    slItems := TStringList.Create;
    slItems.Text := sItemsSelecionados;
    try
        Operacao := DMProjeto.NextIDGlobal;
        with Q_SQL do
            begin
                close;
                SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                    'Operacao, TipoOperacao, Data, ValorOperacao, ValorDinheiro, ContaDestino, Historico, Titulo, Usuario, pdv, empresa) ' +
                    'values ( ' +
                    ':Operacao,:TipoOp,:Data,:Valor,:ValorDin, :ContaDest,:Historico, :OperacaoDinheiro, :Usuario, :pdv, :empresa) ';
                ParamByName('Operacao').AsInteger := Operacao;
                ParamByName('TipoOp').AsInteger := 7;
                ParamByName('Data').AsDateTime := Data;
                ParamByName('Valor').AsCurrency := ValorOperacao;
                ParamByName('ValorDin').AsCurrency := ValorDinheiro;
                ParamByName('ContaDest').AsInteger := Conta;
                ParamByName('OperacaoDinheiro').AsInteger := OperacaoDinheiro;
                ParamByName('Historico').AsString := Historico;
                ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                ExecSQL;
                ValorTotal := 0;
                for i := 2 to slItems.Count - 1 do
                    begin
                        NumCheque := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'NumCheque')), 0);
                        Vencimento := StrToDate(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Vencimento')));
                        Favorecido := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Favorecido')), 0);
                        ValorDoc := StrToFloatDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Valor')), 0);
                        Deposito := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Deposito')), 0);
                        FormaPagamento := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'FormaPagamento')), 0);
                        ContaOrigem := 1; //StrToIntDef(SeparaStrings(slItems[i],'|||',IndiceString(slItems[1],'|||','ContaAtual')),0);
                        OpDoc := DMProjeto.NextIDGlobal;
                        Close;
                        {Verifica��o se ja existe um cheque igual nesta opera��o.}
                {
                       SQL.Text := ' Delete from OperacoesFinanceirasDet '+
                                    ' where NumCheque = :NumCheque '+
                                    ' and  Vencimento = :Vencimento '+
                                    ' and       Valor = :Valor '+
                                    ' and  Favorecido = :Favorecido '+
                                    ' and       IDDoc = :IDDoc '+
                                    ' and       Banco = :ContaOrigem ';
                        if NumCheque = 0 then
                         SQL.Text := replace( SQL.Text, ':NumCheque', 'null' )
                        else
                         ParamByName('NumCheque').AsInteger:= NumCheque;
                        ParamByName('Vencimento').AsDateTime:= Vencimento;
                        ParamByName('Valor').AsCurrency			:= ValorDoc;
                        ParamByName('Favorecido').AsInteger	:= Favorecido;
                        ParamByName('IDDoc').AsInteger			:= StrToInt(SeparaStrings(slItems[0],',',i-1));
                        ParamByName('ContaOrigem').AsInteger:= ContaOrigem;
                        ExecSQL;
                 }
                        {Lan�ando em Opera��es Financeiras Detalhes}
                        SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                            '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, Banco, pdv, empresa) ' +
                            'values ' +
                            '(:Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :ContaOrigem, :pdv, :empresa) ';
                        ParamByName('Operacao').AsInteger := Operacao;
                        ParamByName('ContaOrigem').AsInteger := ContaOrigem;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        if NumCheque = 0 then
                            SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                        else
                            ParamByName('NumCheque').AsInteger := NumCheque;
                        ParamByName('Vencimento').AsDateTime := Vencimento;
                        ParamByName('Valor').AsCurrency := ValorDoc;
                        ParamByName('Favorecido').AsInteger := Favorecido;
                        ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(slItems[0], ',', i - 1));
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                        ExecSQL;

                        InserirOperacoesDoc(StrToInt(SeparaStrings(slItems[0], ',', i - 1)), Operacao, 7, FormaPagamento, 50, ValorDoc);

                        {Retirando os Cheques do Caixa}
                        Close;
                        SQL.Text := 'Insert into transacoes ' +
                            '(Conta,Data,Valor,TipoTransacao, NumCheque,FormaPagamento, IDGerador, IDDoc,  ' +
                            'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                            'Values ' +
                            '(:Conta, :Data, :Valor, ''D'', :NumCheque, :FormaPag, :Deposito, :IDDoc, ' +
                            ':Historico, ''N'', :Banco, CURRENT_TIME, :FuncLogin, :TipoOperacao, :pdv, :empresa )';
                        ParamByName('Conta').AsInteger := ContaOrigem;
                        ParamByName('Banco').AsInteger := getBancoConta(Conta);
                        ParamByName('Data').AsDateTime := Data;
                        ParamByName('Valor').AsCurrency := -ValorDoc;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        if NumCheque = 0 then
                            SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                        else
                            ParamByName('NumCheque').AsInteger := NumCheque;
                        ParamByName('FormaPag').AsInteger := FormaPagamento;
                        ParamByName('Deposito').AsInteger := Operacao;
                        ParamByName('TipoOperacao').AsInteger := 7;
                        ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(slItems[0], ',', i - 1));
                        ParamByName('Historico').AsString := Historico;
                        ParamByName('FuncLogin').AsInteger := DMProjeto.nFuncionario;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                        ExecSQL;
                        ValorTotal := ValorTotal + ValorDoc;
                    end;
                {Depositando os Cheques no Banco escolhido}
                Close;
                SQL.Text := 'Insert into transacoes ' +
                    '(Conta,ContaOrigem,Data,Valor,TipoTransacao, NumCheque,FormaPagamento, IDGerador, IDDoc,  ' +
                    'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                    'Values ' +
                    '(:Conta, 1, :Data, :Valor, ''C'', null, :FormaPag, :Deposito, :IDDoc, ' +
                    ':Historico, ''N'', -1, CURRENT_TIME, :FuncLogin, :TipoOperacao, :pdv, :empresa )';
                ParamByName('Conta').AsInteger := Conta;
                ParamByName('Data').AsDateTime := Data;
                ParamByName('Valor').AsCurrency := ValorTotal;
                ParamByName('FormaPag').AsInteger := 2;
                ParamByName('Deposito').AsInteger := Operacao;
                ParamByName('TipoOperacao').AsInteger := 7;
                ParamByName('IDDoc').AsInteger := 0;
                ParamByName('Historico').AsString := Historico;
                ParamByName('FuncLogin').AsInteger := DMProjeto.nFuncionario;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                ExecSQL;

                AuditoriaFinanceira('select current_date,current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 11, ' +
                    '''Depositado cheque n�'' || dd.numcheque || '' de '' || dd.TitularCheque || '' para a conta ' +
                    Conta_Nome(Conta) + ' valor: '' || cast(valor as char(10)),''DepositosDoc'',dd.IDDoc,dd.Valor, ' + IntToStr(Operacao) + ', 7, ' + IntToStr(Conta) + ' ' +
                    'From OperacoesFinanceiras o, OperacoesFinanceirasDet od, DepositosDoc dd ' +
                    'Where o.Operacao = ' + IntToStr(Operacao) + ' and o.Operacao = od.Operacao and od.IDDoc = dd.IDDoc ');

                {Atualizando Flags em DepositosDoc}
                Close;
                SQL.Text := 'Update DepositosDoc ' +
                    'Set DataRetirada = :Data, LocalTitulo = :L, ForaDaEmpresa = ''S'', Status = :St, ContaAtual = :C ' +
                    'Where IDDoc in (' + slItems[0] + ') ';
                ParamByName('C').AsInteger := Conta;
                ParamByName('Data').AsDateTime := Data;
                ParamByName('L').asString := Conta_Nome(Conta);
                if Liquidar then
                    ParamByName('St').asInteger := 50
                else
                    ParamByName('St').asInteger := 3;

                ExecSQL;
            end;
        result := Operacao;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(1, e.message, '');
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;
end;

function TDMFinanceiro.SetChequesEmCustodia;
begin
    result := false;
    try

        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        with Q_ComandoSQL do
            begin
                {Retirando os Cheques da Empresa}
                Close;
                SQL.Text := 'Insert into transacoes ' +
                    '(Conta, Data, Valor, TipoTransacao, NumCheque, FormaPagamento, IDGerador, ' +
                    'Historico, FromBanco, Favorecido, Hora, Usuario, pdv, empresa) ' +
                    'Select ' +
                    'dd.ContaAtual, :Data, ' +
                    '(-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, dd.Deposito, ' +
                    'o.Historico, ' +
                    '''N'', :FavEmpresa, CURRENT_TIME, :FuncLogin, o.pdv, o.empresa ' +
                    'From OperacoesFinanceiras o, OperacoesFinanceirasDet od, DepositosDoc dd ' +
                    'Where o.Operacao = od.Operacao and od.IDDoc = dd.IDDoc ' +
                    'and   o.Operacao = :Operacao ';
                SQL.Text := replace(SQL.Text, ':Data', QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
                SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(Operacao));
                SQL.Text := replace(SQL.Text, ':FavEmpresa', IntToStr(DMProjeto.nFavEmpresa));
                SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
                ExecSQL;

                {Atualizando Flags em DepositosDoc}
                Close;
                SQL.Text := 'Update DepositosDoc ' +
                    'set LocalTitulo = :L, ForaDaEmpresa = ''S'', Status = :St, ContaAtual = :C ' +
                    'Where IDDoc in (Select ID from OperacoesFinanceitasDet where Operacao = ' + IntToStr(Operacao) + ') ';
                ParamByName('C').AsInteger := Conta;
                ParamByName('L').asString := Conta_Nome(Conta);
                ParamByName('St').asInteger := 6;
                ExecSQL;

            end;

        result := True;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(255, e.message, '');
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;
end;

function TDMFinanceiro.DepositarChequesEmCustodia;
var nCheques, nIDBanco: integer;
    nValorFolha, nTotal: Currency;
    sValor: string;
begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select count(iddoc) as qtde, sum(valor) as total from depositosdoc ' +
        'Where Vencimento <= CURRENT_DATE and Status = 6 ';
    Q_SQL.Open;
    nTotal := Q_SQL.fieldbyname('total').AsCurrency;
    nCheques := Q_SQL.fieldbyname('qtde').asinteger;
    Q_SQL.Close;
    if nCheques <= 0 then
        Exit;
    result := false;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        with Q_ComandoSQL do
            begin
                {Depositando os Cheques no Banco escolhido - AVista = S porque qq. cheque depositado em banco est� dispon�vel para aplica��o}
                Close;
                SQL.Text :=
                    'Insert into transacoes ' +
                    '    (Conta, Data, Valor, TipoTransacao, NumCheque, FormaPagamento, IDGerador, IDDoc, ' +
                    '     Historico, FromBanco, Favorecido, Hora, Usuario, pdv, empresa) ' +
                    'Select ' +
                    '     dd.ContaAtual, CURRENT_DATE, dd.Valor, ''C'', dd.NumCheque, dd.FormaPagamento, dd.Deposito, dd.IDDoc, ' +
                    '     d.Historico, null, ' +
                    '     :FavEmpresa, CURRENT_TIME, :FuncLogin, d.pdv, d.empresa ' +
                    'From DepositosDoc dd, Depositos d ' +
                    'Where dd.Status = 6 and dd.Vencimento <= CURRENT_DATE and dd.Deposito = d.Deposito';
                SQL.Text := replace(SQL.Text, ':FavEmpresa', IntToStr(DMProjeto.nFavEmpresa));
                SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));

                ExecSQL;
                AuditoriaFinanceira('select current_date,current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', ''Custodia'',' +
                    '''Dep�sito de Cheque em Cust�dia n�'' || numcheque || '' depositado na conta '' || localtitulo || '' de '' || TitularCheque,''DepositosDoc'',IDDoc,Valor,null ' +
                    'from depositosdoc ' +
                    'Where Status = 6 and Vencimento <= CURRENT_DATE');
                {Retirar taxas por cheque em cust�dia}
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select contaatual, count(iddoc) as qtde, sum(valor) as total from depositosdoc ' +
                            'Where Vencimento <= CURRENT_DATE and Status = 6 ' +
                            'group by contaatual';
                        Open;
                        disablecontrols;
                        First;
                        while not EOF do
                            begin
                                with Q_SQL2 do
                                    begin
                                        Close;
                                        SQL.Text := 'select b.Favorecido from contas c, favorecidos b ' +
                                            'where c.conta = ' + Q_SQL.fieldbyname('contaatual').AsString + ' and c.banco = b.favorecido ';
                                        Open;
                                        nIDBanco := fieldbyname('Favorecido').asInteger;
                                    end;

                                nValorFolha := StrToFloatDef(DMProjeto.Parametro('CustodiaCheque'), 0);

                                if nValorFolha = 0 then
                                    begin
                                        sValor := InputBox('Informe o valor', 'Informe o valor de cada folha que o banco cobra:', '0');
                                        sValor := replace(sValor, ',', decimalseparator);
                                        sValor := replace(sValor, '.', decimalseparator);
                                        nValorFolha := StrToFloatDef(sValor, 0);
                                    end;

                                Retirar(0, 0, fieldbyname('contaatual').AsInteger, DMProjeto.dDataSistema, nValorFolha * fieldbyname('qtde').AsInteger,
                                    0, 2, 'Taxa Cheques Cust�dia', DMProjeto.dDataSistema, '', 'S', nIDBanco);
                                Next;
                            end;
                        enablecontrols;
                        Close;
                    end;

                {Atualizando Flags em DepositosDoc}
                Close;
                SQL.Text := 'Update DepositosDoc ' +
                    '     set Status = :St ' +
                    'Where Status = 6 and Vencimento <= CURRENT_DATE';
                ParamByName('St').asInteger := 50;
                ExecSQL;
            end;
        DlgMsg.ShowMsg(571, [nCheques, currencystring + formatfloat('###,###,##0.00', nTotal)]);
        result := True;
    except
        on E: Exception do
            begin
                DlgMsg.ShowMsg(255, e.message, '');
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;
end;

function TDMFinanceiro.ResgatarCheque;
begin
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        with Q_ComandoSQL do
            begin

                {Retirar da Conta-Banc�ria}
                Close;
                SQL.Text :=
                    'Insert into transacoes ' +
                    '    (Conta,Data,Valor,TipoTransacao,NumCheque, FormaPagamento, IDGerador, IDDoc, ' +
                    '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                    'Select ' +
                    '     ' + iif(bCreditarNoCaixa, 'dd.contaatual', IntToStr(Conta)) + ', CURRENT_DATE, (-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :Operacao, ' +
                    '     dd.IDDoc, ''Cheque Devolvido'', null , ' +
                    '     d.favorecido, CURRENT_TIME, :FuncLogin, 9, d.pdv, d.empresa ' +
                    'From DepositosDoc dd, Depositos d ' +
                    'Where dd.IDDoc = :ID and dd.deposito = d.deposito ';

                //SQL.Text := replace(SQL.Text, ':FavEmpresa', IntToStr(DMProjeto.nFavEmpresa) );
                SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
                SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(Operacao));
                ParamByName('ID').AsInteger := Cheque;

                ExecSQL;

                {Retirando o Cheque na Empresa - n�o dispon�vel (Avista = N)}
                if bCreditarNoCaixa then
                    begin
                        Close;
                        SQL.Text :=
                            'Insert into transacoes ' +
                            '    (Conta,ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                            '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                            'Select ' +
                            '     1, :ContaOrigem, :Data, dd.Valor, ''C'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDDoc, ' +
                            '     ''Cheque Devolvido'', ' +
                            '     ''N'', :FavEmpresa, CURRENT_TIME, :FuncLogin, 9, dd.pdv, dd.empresa ' +
                            'From DepositosDoc dd ' +
                            'Where dd.IDDoc = :ID ';
                        SQL.Text := replace(SQL.Text, ':Data', QuotedStr(formatdatetime('mm/dd/yyyy', Conta_DataMov(1))));
                        SQL.Text := replace(SQL.Text, ':FavEmpresa', IntToStr(DMProjeto.nFavEmpresa));
                        SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
                        SQL.Text := replace(SQL.Text, ':ContaOrigem', IntToStr(Conta));
                        SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(Operacao));

                        ParamByName('ID').AsInteger := Cheque;

                        ExecSQL;

                        {Atualizando Flags em DepositosDoc}
                        Close;
                        SQL.Text := 'Update DepositosDoc ' +
                            '     set LocalTitulo = :L, ForaDaEmpresa = ''N'', ContaAtual = :C ' +
                            'Where IDDoc = :Cheque ';
                        ParamByName('Cheque').AsInteger := Cheque;
                        ParamByName('C').AsInteger := 1;
                        ParamByName('L').asString := Conta_Nome(1);
                        ExecSQL;
                    end;

                result := True;

            end;

    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DlgMsg.ShowMsg(255, e.message, '');
            end;
    end;

end;

function TDMFinanceiro.ApresentarCartoes;
var Operacao, Favorecido, i: integer;
    slItems: TStringlist;
    Vencimento, dtCarencia: TDateTime;
    ValorDoc: Currency;
begin
    result := 0;
    with Q_ComandoSQL do
        begin
            slItems := TStringList.Create;
            slItems.Text := Itens;
            try
                Operacao := DMProjeto.NextIDGlobal;
                {Lan�ando em Opera��es Financeiras}
                with Q_SQL do
                    begin
                        close;
                        SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                            'Operacao, TipoOperacao, ContaDestino, Favorecido, Data, Recebido, ValorOperacao, ValorDinheiro, ' +
                            'Historico, FormaPagamento, Floating, Usuario, PercentualJuros, ValorJuros, pdv, empresa) ' +
                            'values ( ' +
                            ':Operacao,:TipoOp, :Conta, :Fav, :Data,:Receber, :Valor,0, :Historico, :FormaPagamento, 0, :Usuario, :PercentualJuros, :ValorJuros, :pdv, :empresa ) ';
                        ParamByName('Operacao').AsInteger := Operacao;
                        ParamByName('TipoOp').AsInteger := 11;
                        ParamByName('Conta').AsInteger := Conta;
                        ParamByName('Fav').AsInteger := getFavFormaPagamento(FormaPagamento);
                        ParamByName('Data').AsDateTime := Data;
                        ParamByName('Receber').AsDateTime := getCarenciaCredito(FormaPagamento, Data);
                        ParamByName('Valor').AsCurrency := ValorOperacao;
                        ParamByName('PercentualJuros').AsCurrency := getEncargos(FormaPagamento);
                        ParamByName('ValorJuros').AsCurrency := ValorEncargos; //getEncargos(FormaPagamento,ValorOperacao);
                        ParamByName('FormaPagamento').AsInteger := FormaPagamento;
                        ParamByName('Historico').AsString := Historico;
                        ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                        ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                        ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                        ExecSQL;
                        for i := 2 to slItems.Count - 1 do
                            begin
                                Vencimento := StrToDate(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Vencimento')));
                                Favorecido := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Favorecido')), 0);
                                ValorDoc := StrToFloatDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Valor')), 0);

                                Close;
                                {Lan�ando em Opera��es Financeiras Detalhes}
                                SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                    '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa) ' +
                                    'values ' +
                                    '(:Operacao, null, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa) ';
                                ParamByName('Operacao').AsInteger := Operacao;
                                ParamByName('Vencimento').AsDateTime := Vencimento;
                                ParamByName('Valor').AsCurrency := ValorDoc;
                                ParamByName('Favorecido').AsInteger := Favorecido;
                                ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(slItems[0], ',', i - 1));
                                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                ExecSQL;
                                InserirOperacoesDoc(StrToInt(SeparaStrings(slItems[0], ',', i - 1)), Operacao, 11, FormaPagamento, 2, ValorDoc);
                                AuditoriaFinanceira(15, '', 'DepositosDoc', StrToInt(SeparaStrings(slItems[0], ',', i - 1)), ValorDoc, Operacao, 11, Conta);
                            end;
                    end;
                {Retirando os Cart�es da Empresa}
                Close;
                SQL.Text := 'Insert into transacoes ' +
                    '(Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                    'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                    'Select dd.ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                    '(-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :IDGerador, dd.IDDoc, ' +
                    ':Historico, ' +
                    '''N'', -1, CURRENT_TIME, :FuncLogin, 11, dd.pdv, dd.empresa  ' +
                    'From DepositosDoc dd ' +
                    'Where dd.IDDoc IN (select od.IDDoc From OperacoesFinanceirasDet od Where od.Operacao = ' + IntToStr(Operacao) + ')';
                SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
                SQL.Text := replace(SQL.Text, ':IDGerador', IntToStr(Operacao));
                SQL.Text := replace(SQL.Text, ':Historico', QuotedStr('Cart�o Liquidado'));
                ExecSQL;

                {Atualizando Flags em DepositosDoc}
                Close;
                SQL.Text := 'Update DepositosDoc set Status = 2, AVista = ''S'', ForadaEmpresa=''S'', LocalTitulo= :L, ContaAtual = :C ' +
                    'where IDDoc IN (' + slItems[0] + ')';
                ParamByName('C').AsInteger := Conta;
                ParamByName('L').asString := Conta_Nome(Conta);
                ExecSQL;
                dtCarencia := getCarenciaCredito(FormaPagamento, Data);
                if (Data = getCarenciaCredito(FormaPagamento, Data)) then
                    LiquidarCartoes(IntToStr(Operacao), Conta, dtCarencia);
                //Contabilizar ContasOpera��es:
            except
                on E: Exception do
                    DlgMsg.ShowMsg(1, e.message, '');
            end;
        end;
    result := Operacao;
end;

function TDMFinanceiro.LiquidarCartoes(sOperacoesApresentacao: string; Conta: integer; dData: TDateTime): string;
var ValorOperacao, Encargos: Currency;
    i, Operacao, OperacaoApresentacao, FormaPagamento, Favorecido: integer;
    sOperacoes: string;
    nContaReceber: integer;
begin
    sOperacoes := '';
    {Opera��es Financeiras}
    for i := 1 to ContaStrings(sOperacoesApresentacao, ',') do
        begin

            Operacao := DMProjeto.NextIDGlobal;
            sOperacoes := sOperacoes + IntToStr(Operacao) + ',';
            OperacaoApresentacao := StrToInt(SeparaStrings(sOperacoesApresentacao, ',', i));

            with Q_SQL do
                begin
                    close;
                    SQL.Text := 'select ValorOperacao, FormaPagamento, Favorecido from OperacoesFinanceiras where Operacao = :Op';
                    Params[0].AsInteger := OperacaoApresentacao;
                    open;

                    ValorOperacao := fields[0].AsCurrency;
                    FormaPagamento := fields[1].AsInteger;
                    Favorecido := fields[2].AsInteger;

                    Close;
                    SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                        'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ContaDestino, ContaOrigem, ValorDinheiro, Historico, FormaPagamento, Usuario, pdv, empresa) ' +
                        'Values ( ' +
                        ':Operacao, 13, :Favorecido, Current_Date,:Valor,:ContaDestino, :Apresentacao, 0,:Historico, :FormaPagamento, :Usuario, :pdv, :empresa)';
                    ParamByName('Operacao').AsInteger := Operacao;
                    ParamByName('Valor').AsCurrency := ValorOperacao;
                    ParamByName('ContaDestino').AsInteger := Conta;
                    ParamByName('Favorecido').AsInteger := Favorecido;
                    ParamByName('Apresentacao').AsInteger := OperacaoApresentacao;
                    ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('FormaPagamento').AsInteger := FormaPagamento;
                    ParamByName('Historico').AsString := getFormaPagamento(FormaPagamento);
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                    ExecSQL;

                    {Depositando no Banco}
                    Close;
                    SQL.Text := 'Insert into transacoes ' +
                        '(Conta,ContaOrigem,Data,Valor,TipoTransacao,FormaPagamento, IDGerador, IDDoc, ' +
                        'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, Conciliado, pdv, empresa) values ' +
                        '(:Conta, 1, :Data, :Valor, ''C'', :FormaPag, :IDGerador, 0, ' +
                        ':Historico, ''N'', :Fav, CURRENT_TIME, :FuncLogin, :TipoOperacao, ''N'', :pdv, :empresa ) ';
                    ParamByName('Conta').AsInteger := Conta;
                    ParamByName('Fav').AsInteger := Favorecido;
                    ParamByName('Data').AsDateTime := dData;
                    ParamByName('Valor').AsCurrency := ValorOperacao;
                    ParamByName('FormaPag').AsInteger := 1;
                    ParamByName('IDGerador').AsInteger := Operacao;
                    ParamByName('TipoOperacao').AsInteger := 13;
                    ParamByName('FuncLogin').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('Historico').AsString := getFormaPagamento(FormaPagamento);
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                    ExecSQL;

                    {Retirando do Banco - Encargos}
                    if DMProjeto.Parametro('AutoEncargosCartao') = 'S' then
                        begin

                            close;
                            sql.text := 'select valorjuros from operacoesfinanceiras ' +
                                'where operacao = ' + IntToStr(OperacaoApresentacao);
                            open;
                            Encargos := fields[0].AsCurrency;

                            Close;
                            SQL.Text := 'Insert into transacoes ' +
                                '(Conta,ContaOrigem,Data,Valor,TipoTransacao,FormaPagamento, IDGerador, IDDoc, ' +
                                'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, Conciliado, pdv, empresa) values ' +
                                '(:Conta, 1, :Data, :Valor, ''D'', :FormaPag, :IDGerador, 0, ' +
                                ':Historico, ''N'', :Fav, CURRENT_TIME, :FuncLogin, :TipoOperacao, ''N'', :pdv, :empresa ) ';
                            ParamByName('Conta').AsInteger := Conta;
                            ParamByName('Fav').AsInteger := Favorecido;
                            ParamByName('Data').AsDateTime := dData;
                            ParamByName('Valor').AsCurrency := -Encargos;
                            ParamByName('FormaPag').AsInteger := 1;
                            ParamByName('IDGerador').AsInteger := Operacao;
                            ParamByName('TipoOperacao').AsInteger := 13;
                            ParamByName('FuncLogin').AsInteger := DMProjeto.nFuncionario;
                            ParamByName('Historico').AsString := getFormaPagamento(FormaPagamento);
                            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                            ExecSQL;

                        end;

                    close;
                    sql.text := 'update operacoesfinanceiras ' +
                        'set floating = :operacao ' +
                        'where operacao = ' + IntToStr(OperacaoApresentacao);
                    parambyname('operacao').asInteger := Operacao;
                    execsql;

                    {Atualizar Status do Documento}
                    close;
                    sql.text := 'select contareceber from depositosdoc ' +
                        'where iddoc IN (select iddoc from OperacoesFinanceirasDet where Operacao = ' + IntToStr(OperacaoApresentacao) + ')';
                    open;
                    nContaReceber := FieldByName('contareceber').asinteger;

                    close;
                    sql.text := 'update depositosdoc ' +
                        'set status = 50, foradaempresa=''S'' ' +
                        'where iddoc IN (select iddoc from OperacoesFinanceirasDet where Operacao = ' + IntToStr(OperacaoApresentacao) + ')';
                    execsql;

                    DMProjeto.Contabiliza(13, dData, OperacaoApresentacao, Favorecido,
                        Conta, nContaReceber, ValorOperacao, '', getFormaPagamento(FormaPagamento));

                    AuditoriaFinanceira(34, getFormaPagamento(FormaPagamento), 'OperacoesFinanceiras', Operacao,
                        ValorOperacao, Operacao, 13, Conta);

                end;
        end;
    result := Copy(sOperacoes, 1, length(sOperacoes) - 1);
end;

function TDMFinanceiro.ApresentarTicket;
var Operacao, Favorecido, i: integer;
    slItems: TStringlist;
    Vencimento, dtCarencia: TDateTime;
    ValorDoc: Currency;
begin
    result := 0;

    with Q_ComandoSQL do
        begin
            slItems := TStringList.Create;
            slItems.Text := Itens;

            Operacao := DMProjeto.NextIDGlobal;
            {Lan�ando em Opera��es Financeiras}
            with Q_SQL do
                begin
                    close;
                    SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                        'Operacao, TipoOperacao, Data, Recebido, ValorOperacao, ValorDinheiro, ContaDestino, Historico, Floating, Usuario, FormaPagamento, pdv, empresa) ' +
                        'values ( ' +
                        ':Operacao,:TipoOp,:Data,:Vencimento,:Valor,:ValorDin, :ContaDest,:Historico, 0, :Usuario, :FormaPagamento, :pdv, :empresa) ';
                    ParamByName('Operacao').AsInteger := Operacao;
                    ParamByName('TipoOp').AsInteger := 16;
                    ParamByName('Data').AsDateTime := Data;
                    ParamByName('Valor').AsCurrency := ValorOperacao;
                    ParamByName('ValorDin').AsCurrency := 0;
                    ParamByName('Vencimento').AsDateTime := VencApresentacao;
                    ParamByName('ContaDest').AsInteger := FormaPagamento;
                    ParamByName('FormaPagamento').AsInteger := FormaPagamento;
                    ParamByName('Historico').AsString := Historico;
                    ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                    ExecSQL;
                    for i := 2 to slItems.Count - 1 do
                        begin

                            Vencimento := StrToDate(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Vencimento')));
                            Favorecido := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Favorecido')), 0);
                            ValorDoc := StrToFloatDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Valor')), 0);

                            Close;
                            {Lan�ando em Opera��es Financeiras Detalhes}
                            SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa) ' +
                                'values ' +
                                '(:Operacao, null, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa) ';
                            ParamByName('Operacao').AsInteger := Operacao;
                            ParamByName('Vencimento').AsDateTime := Vencimento;
                            ParamByName('Valor').AsCurrency := ValorDoc;
                            ParamByName('Favorecido').AsInteger := Favorecido;
                            ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(slItems[0], ',', i - 1));
                            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                            ExecSQL;

                            InserirOperacoesDoc(StrToInt(SeparaStrings(slItems[0], ',', i - 1)), Operacao, 11, FormaPagamento, 2, ValorDoc);

                            AuditoriaFinanceira(15, '', 'DepositosDoc', StrToInt(SeparaStrings(slItems[0], ',', i - 1)), ValorDoc, Operacao, 16, 0);
                        end;
                end;

            {Retirando os Cart�es da Empresa}
            Close;
            SQL.Text := 'Insert into transacoes ' +
                '(Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                'Select ' +
                'dd.ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                '(-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :IDGerador, dd.IDDoc, ' +
                ':Historico, ' +
                '''N'', -1, CURRENT_TIME, :FuncLogin, 11, dd.pdv, dd.empresa  ' +
                'From DepositosDoc dd ' +
                'Where dd.IDDoc IN (' + slItems[0] + ')';
            SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
            SQL.Text := replace(SQL.Text, ':IDGerador', IntToStr(Operacao));
            SQL.Text := replace(SQL.Text, ':Historico', QuotedStr(Historico));
            ExecSQL;

            {Atualizando Flags em DepositosDoc}
            Close;
            SQL.Text := 'Update DepositosDoc set Status = 2, AVista = ''N'', ForadaEmpresa=''S'', LocalTitulo= :L, ContaAtual= 0 ' +
                'where IDDoc IN (' + slItems[0] + ')';
            ParamByName('L').asString := getFavorecido(getFavFormaPagamento(FormaPagamento));
            ExecSQL;

            dtCarencia := getCarenciaCredito(FormaPagamento, Data);
            if (Data = getCarenciaCredito(FormaPagamento, Data)) then
                LiquidarCartoes(IntToStr(Operacao), getContaFormaPagamento(FormaPagamento), dtCarencia);

        end;
    result := Operacao;
end;

function TDMFinanceiro.ApresentarConveniado;
var Operacao, Favorecido, i: integer;
    slItems: TStringlist;
    Vencimento: TDateTime;
    ValorDoc: Currency;
begin
    result := 0;

    with Q_ComandoSQL do
        begin
            slItems := TStringList.Create;
            slItems.Text := Itens;

            Operacao := DMProjeto.NextIDGlobal;
            {Lan�ando em Opera��es Financeiras}
            with Q_SQL do
                begin
                    close;
                    SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                        'Operacao, TipoOperacao, Data, Recebido, ValorOperacao, ValorDinheiro, ContaDestino, Historico, Floating, Usuario, pdv, empresa) ' +
                        'values ( ' +
                        ':Operacao,:TipoOp, :Data, :Vencimento, :Valor, :ValorDin, :ContaDest, :Historico, 0, :Usuario, :pdv, :empresa) ';
                    ParamByName('Operacao').AsInteger := Operacao;
                    ParamByName('TipoOp').AsInteger := 17;
                    ParamByName('Data').AsDateTime := Data;
                    ParamByName('Valor').AsCurrency := ValorOperacao;
                    ParamByName('ValorDin').AsCurrency := 0;
                    ParamByName('ContaDest').AsInteger := FormaPagamento;
                    ParamByName('Historico').AsString := Historico;
                    ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                    ParamByName('Vencimento').AsDateTime := VencApresentacao;
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                    ExecSQL;

                    for i := 2 to slItems.Count - 1 do
                        begin

                            Vencimento := StrToDate(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Vencimento')));
                            Favorecido := StrToIntDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Favorecido')), 0);
                            ValorDoc := StrToFloatDef(SeparaStrings(slItems[i], '|||', IndiceString(slItems[1], '|||', 'Valor')), 0);

                            Close;
                            {Lan�ando em Opera��es Financeiras Detalhes}
                            SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa) ' +
                                'values ' +
                                '(:Operacao, null, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa) ';
                            ParamByName('Operacao').AsInteger := Operacao;
                            ParamByName('Vencimento').AsDateTime := Vencimento;
                            ParamByName('Valor').AsCurrency := ValorDoc;
                            ParamByName('Favorecido').AsInteger := Favorecido;
                            ParamByName('IDDoc').AsInteger := StrToInt(SeparaStrings(slItems[0], ',', i - 1));
                            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                            ExecSQL;

                            InserirOperacoesDoc(StrToInt(SeparaStrings(slItems[0], ',', i - 1)), Operacao, 11, FormaPagamento, 2, ValorDoc);

                            AuditoriaFinanceira(15, '', 'DepositosDoc', StrToInt(SeparaStrings(slItems[0], ',', i - 1)), ValorDoc, Operacao, 17);
                        end;
                end;

            {Retirando os Cart�es da Empresa}
            Close;
            SQL.Text := 'Insert into transacoes ' +
                '(Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                'Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                'Select ' +
                'dd.ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                '(-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :IDGerador, dd.IDDoc, ' +
                ':Historico, ' +
                '''N'', -1, CURRENT_TIME, :FuncLogin, 11, dd.pdv , dd.empresa ' +
                'From DepositosDoc dd ' +
                'Where dd.IDDoc IN (' + slItems[0] + ')';
            SQL.Text := replace(SQL.Text, ':FuncLogin', IntToStr(DMProjeto.nFuncionario));
            SQL.Text := replace(SQL.Text, ':IDGerador', IntToStr(Operacao));
            SQL.Text := replace(SQL.Text, ':Historico', QuotedStr(Historico));
            ExecSQL;

            {Gerando Conta a Receber}
            Conta_A_Receber(1,
                ValorOperacao - getEncargos(FormaPagamento, ValorOperacao),
                VencApresentacao, DMProjeto.dDataSistema,
                Historico,
                getFavFormaPagamento(FormaPagamento),
                0, // Venda
                '', // Nota Fiscal
                17,
                Operacao);

            {Atualizando Flags em DepositosDoc}
            Close;
            SQL.Text := 'Update DepositosDoc set Status = 2, AVista = ''N'', ForadaEmpresa=''S'', LocalTitulo= :L, ContaAtual= 0 ' +
                'where IDDoc IN (' + slItems[0] + ')';
            ParamByName('L').asString := getFavorecido(getFavFormaPagamento(FormaPagamento));
            ExecSQL;

        end;
    result := Operacao;
end;

function TDMFinanceiro.Caixa_NomeFuncResp;
begin
    if Caixa_FuncResponsavel = 0 then
        begin
            result := '';
            exit;
        end;

    with Q_ComandoSQL do
        begin
            SQL.Text := 'Select nome from Favorecidos where Favorecido = :N ';
            Params[0].asInteger := Caixa_FuncResponsavel;

            Open;

            result := Q_ComandoSQL['Nome'];

            Close;
        end;
end;

function TDMFinanceiro.Conta_Nome;
begin
    with Q_SQL2 do
        begin
            Close;
            SQL.Text := 'Select Descricao from Contas where Conta = :C ';
            Params[0].asInteger := nConta;

            Open;

            result := FieldByName('Descricao').asString;

            Close;
        end;
end;

function TDMFinanceiro.Conta_TipoConta;
begin
    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select TipoConta from Contas where Conta = :C ';
            Params[0].asInteger := nConta;

            Open;

            result := FieldByName('TipoConta').asInteger;

            Close;
        end;
end;

function TDMFinanceiro.getDespesasDev(Deposito: integer): Currency;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'select valor from transacoes where idgerador = :dep and tipooperacao = 23';
            parambyname('dep').asInteger := Deposito;
            open;
            result := abs(fieldbyname('valor').AsCurrency);
            close;
        end;
end;

function TDMFinanceiro.SaldoChequePre;
begin
    with Q_SQL2 do
        begin
            close;
            sql.text := 'select sum(rd.valor) as Saldo from retiradasdoc rd ' +
                'where ' + iif(dtData <> 0, ' rd.vencimento <= :data and ', '') + ' rd.formapagamento = 3 and rd.conta = :conta and rd.status = 3';
            if pos(':data', sql.text) > 0 then
                parambyname('data').asDatetime := dtData;
            parambyname('conta').asInteger := Conta;
            open;
            result := fieldbyname('saldo').AsCurrency;
            close;
        end;
end;

function TDMFinanceiro.CompensarCheques;
var Operacao: integer;
begin
    Operacao := DMProjeto.NextIDGlobal;
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                'Operacao, TipoOperacao, Data, ValorOperacao, ContaDestino, ValorDinheiro, Historico, Usuario, pdv, empresa) ' +
                'Values ( ' +
                ':Operacao, 12, Current_Date,:Valor,:Conta, 0,''' + DMProjeto.getMsg(583) + ''', :Usuario, :pdv, :empresa)';
            ParamByName('Operacao').AsInteger := Operacao;
            ParamByName('Valor').AsCurrency := Valor;
            ParamByName('Conta').AsInteger := nConta;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            ExecSQL;

            close;
            SQL.Text := 'select rd.numcheque, rd.vencimento, rd.valor, rd.favorecidodoc, ' +
                'rd.iddoc, rd.formapagamento, r.historico ' +
                'from retiradasdoc rd, retiradas r ' +
                'where rd.IDDoc IN (' + sCheques + ') and rd.retirada = r.retirada ';
            open;
            disablecontrols;
            first;
            while not EOF do
                begin
                    with Q_SQL2 do
                        begin
                            Close;
                            SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa) ' +
                                'values ' +
                                '(:Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa) ';
                            ParamByName('Operacao').AsInteger := Operacao;
                            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                            if Q_SQL.fieldbyname('NumCheque').AsInteger = 0 then
                                SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                            else
                                ParamByName('NumCheque').AsInteger := Q_SQL.fieldbyname('NumCheque').AsInteger;
                            ParamByName('Vencimento').AsDateTime := Q_SQL.fieldbyname('Vencimento').AsDateTime;
                            ParamByName('Valor').AsCurrency := Q_SQL.fieldbyname('Valor').AsCurrency;
                            ParamByName('Favorecido').AsInteger := Q_SQL.fieldbyname('FavorecidoDoc').AsInteger;
                            ParamByName('IDDoc').AsInteger := Q_SQL.fieldbyname('IDDoc').AsInteger;
                            ExecSQL;
                        end;

                    InserirOperacoesDoc(Q_SQL.fieldbyname('IDDoc').AsInteger, Operacao, 12, Q_SQL.fieldbyname('FormaPagamento').AsInteger, 50, Q_SQL.fieldbyname('Valor').AsCurrency);

                    Retirar(12, Operacao, nConta, TDateTime(iif(dData = 0, DMProjeto.dDataSistema, dData)), fieldbyname('valor').AsCurrency, Q_SQL.fieldbyname('NumCheque').AsInteger,
                        2, iif(fieldbyname('historico').asString = '', 'Cheque Compensado', fieldbyname('historico').asString), DMProjeto.dDataSistema, '', 'S', fieldbyname('favorecidodoc').asInteger, Q_SQL.fieldbyname('IDDoc').AsInteger, Conciliado);

                    AuditoriaFinanceira(29, '', 'RetiradasDoc', Q_SQL.fieldbyname('IDDoc').AsInteger,
                        Q_SQL.fieldbyname('Valor').AsCurrency, Operacao, 12, nConta);
                    Next;
                end;
            disablecontrols;
            Close;
            SQL.Text := 'Update RetiradasDoc set Status = 50 ' +
                'where IDDoc in (' + sCheques + ') ';
            ExecSQL;

            result := Operacao;
        end;
end;

function TDMFinanceiro.Depositar;
var
    nEspecie: integer;
    nID: integer;
    sFavorec: string;
begin
    result := -1;

    nEspecie := -1;
    with Q_ComandoSQL do
        begin
            Close;
            if nTipoDoc = -1 then
                begin
                    SQL.Text := 'Select FormaPagamento from FormasPagamento where Especie = 5';
                    Open;

                    nTipoDoc := FieldByName('FormaPagamento').asInteger;

                    Close;
                    nEspecie := 5;
                end;

            if nEspecie = -1 then
                begin
                    SQL.Text := 'Select Especie from FormasPagamento where FormaPagamento = :F';
                    Params[0].asInteger := nTipoDoc;
                    Open;

                    nEspecie := FieldByName('Especie').asInteger;

                    Close;
                end;

            SQL.Text :=
                'Insert into transacoes ' +
                '    (Conta, ContaOrigem, Data,Valor,TipoTransacao,NumCheque,FormaPagamento, Situacao, ' +
                '     Historico, FromBanco, Favorecido, Hora, Usuario, IDGerador, TipoOperacao, Conciliado, IDDoc, pdv, empresa) ' +
                'Values ' +
                '    (:C, :O, :D, :V, ''C'', :NumCheque, :TipoDoc, :Sit, :Hist, :FB, :Favorecido, ' +
                '     CURRENT_TIME, :Func, :IDGerador, :TipoOperacao, :Conciliado, 0, :pdv , :empresa) ';
            ParamByName('C').AsInteger := nConta;
            ParamByName('O').AsInteger := nContaOrigem;
            ParamByName('TipoOperacao').AsInteger := TipoOperacao;
            ParamByName('D').AsDateTime := dData;
            ParamByName('V').AsCurrency := nValor;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            if nNumCheque = 0 then
                SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
            else
                ParamByName('NumCheque').AsInteger := nNumCheque;

            ParamByName('TipoDoc').AsInteger := nTipoDoc;

            if sRepasse <> '' then
                ParamByName('Sit').AsString := sRepasse
            else
                SQL.Text := Replace(SQL.Text, ':Sit', 'null');

            if sHist <> '' then
                ParamByName('Hist').AsString := sHist
            else
                SQL.Text := Replace(SQL.Text, ':Hist', 'null');

            if FromBanco = '' then
                FromBanco := 'N';

            ParamByName('Conciliado').AsString := Conciliado;
            ParamByName('FB').asString := FromBanco;
            ParamByName('Favorecido').AsInteger := nFavorec;
            ParamByName('IDGerador').AsInteger := Operacao;

            ParamByName('Func').AsInteger := DMProjeto.nFuncionario;

            ExecSQL;
            if nEspecie = 3 then
                sFavorec := getFormaPagamento(nTipoDoc)
            else
                sFavorec := getFavorecido(nFavorec);
            result := 0;
        end;

end;

function TDMFinanceiro.Retirar;
var
    nEspecie: integer;
    nID: integer;
    sFavorec: string;
begin
    result := -1;

    nEspecie := -1;

    with Q_ComandoSQL do
        begin
            Close;
            if nFormaPag = -1 then
                begin
                    SQL.Text := 'Select FormaPagamento from FormasPagamento where Especie = 5';
                    Open;

                    nFormaPag := FieldByName('FormaPagamento').asInteger;

                    Close;
                    nEspecie := 5;
                end;

            if nEspecie = -1 then
                begin
                    SQL.Text := 'Select Especie from FormasPagamento where FormaPagamento = :F';
                    Params[0].asInteger := nFormaPag;
                    Open;

                    nEspecie := FieldByName('Especie').asInteger;

                    Close;
                end;
            nID := DMProjeto.GEN_ID('gen_transacoes');
            SQL.Text :=
                'Insert into transacoes ' +
                '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, Situacao, ' +
                '     Historico, FromBanco, Favorecido, Hora, Usuario, IDGerador, TipoOperacao, IDDoc, Conciliado, pdv, empresa) ' +
                'Values ' +
                '    (:C, :D, :V, ''D'', :NumCheque, :FormaPag, :Sit, :Hist, :FB, :Favorecido, ' +
                '     CURRENT_TIME, :Func, :IDGerador, :TipoOperacao, :IDDoc, :Conciliado, :pdv, :empresa ) ';
            ParamByName('C').AsInteger := nConta;
            ParamByName('TipoOperacao').AsInteger := TipoOperacao;
            ParamByName('D').AsDateTime := dData;
            ParamByName('V').AsCurrency := nValor * (-1);
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            if NumCheque = 0 then
                SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
            else
                ParamByName('NumCheque').AsInteger := NumCheque;
            ParamByName('FormaPag').AsInteger := nFormaPag;
            ParamByName('IDDoc').AsInteger := IDDoc;
            if sRepasse <> '' then
                ParamByName('Sit').AsString := sRepasse
            else
                SQL.Text := Replace(SQL.Text, ':Sit', 'null');
            ParamByName('Conciliado').AsString := Conciliado;
            ParamByName('Hist').AsString := sHist;

            if FromBanco = '' then
                FromBanco := 'N';

            ParamByName('FB').asString := FromBanco;
            ParamByName('Favorecido').AsInteger := nFavorec;
            ParamByName('IDGerador').AsInteger := Operacao;

            ParamByName('Func').AsInteger := DMProjeto.nFuncionario;

            ExecSQL;
            if nEspecie = 3 then
                sFavorec := getFormaPagamento(nFormaPag)
            else
                sFavorec := getFavorecido(nFavorec);
            result := 0;
        end;

end;

function TDMFinanceiro.VerificarDocumentos;
var sIDDocs: string;
begin
    result := false;
    with Q_SQL2 do
        begin
            Close;
            SQL.Text := 'Select IDDoc From OperacoesDoc ' +
                'where IDGerador IN (' + sDepositos + ') ' + iif(sIDDoc <> '', 'and IDDoc = ' + sIDDoc, '') + ' and not TipoOperacao IN (1,2,3,4,5,6) ';
            Open;
            disablecontrols;
            First;
            sIDDocs := '';
            while not EOF do
                begin
                    sIDDocs := sIDDocs + fields[0].AsString + ',';
                    Next;
                end;
            enablecontrols;
            {Mostrar os documentos que n�o se encontram na Empresa}
            if bMostrarDoc then
                begin
                    if sIDDocs <> '' then
                        begin
                            sIDDocs := Copy(sIDDocs, 1, length(sIDDocs) - 1);
                            DMProjeto.SetParametrosForm([sIDDocs, true, false]);
                            if DMProjeto.CriarForm('DlgOperacoesDoc', self, true) = 1 then
                                result := true;
                        end
                    else
                        result := true;
                end
            else
                result := true;
        end;
end;

function TDMFinanceiro.CancelarTitulo;
var
    sInv, sTitulo, sDepositos: string;
    nValor, nCreditoG, nCreditoU, nValorPago: currency;
    Deposito, Fav, x: Integer;
begin
    sTitulo := IntToStr(Titulo);
    result := false;

    {Valida��o / Cr�tica}
    with Q_SQL2 do
        begin
            {Vericando se o T�tulo j� foi Cancelado}
            Close;
            SQL.Text := 'Select Titulo, Cliente, Valor, Status, ValorPago, CreditoUtilizado, CreditoGerado From TitulosAReceber Where ID = ' + sTitulo;

            if (Empresa <> null) and (PDV <> null) then
                begin
                    Q_SQL2.SQL.Text := Q_SQL2.SQL.Text + ' and empresa = :Empresa and pdv = :PDV';
                    Params[0].AsInteger := Empresa;
                    Params[1].AsInteger := PDV;
                end;
            Open;
            if FieldByName('Status').AsInteger = 0 then
                begin
                    DlgMsg.ShowMsg(928);
                    Exit;
                end;

            {Verificando se houve pagamento}
            with Q_SQL do
                begin
                    Deposito := 0;
                    Close;
                    SQL.Text := 'Select deposito from DepositosTitulos ' +
                        'where Titulo = ' + sTitulo + ' and status < 70 ' +
                        'order by deposito desc';
                    Open;
                    Deposito := Fields[0].AsInteger;

                    //    	if fields[0].AsInteger > 0 then begin
                    //      	Close;
                    //    		if DlgMsg.ShowMsg(811) = 200 then
                    //      		Exit;
                    //    	end;

                end;
            nValorPago := FieldByName('ValorPago').asCurrency;
            nCreditoG := FieldByName('CreditoGerado').asCurrency;
            nCreditoU := FieldByName('CreditoUtilizado').asCurrency;
            Fav := FieldByName('Cliente').asInteger;
            sInv := FieldByName('Titulo').asString;
            nValor := FieldByName('Valor').asCurrency;
            sInv := 'Cancelamento da Parcela # ' + sInv;

            Close;
        end;

    {Valida��o Conclu�da}
    if bMotivo and (sMotivo = '') then
        while sMotivo = '' do
            sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');
    if (bAPagarDeposito) and (Deposito > 0) then
        DMFinanceiro.CancelarDeposito(IntToStr(Deposito), sMotivo, False, False);

    with Q_SQL2 do
        begin
            {Cancelando o T�tulo}
            SQL.Text := 'Update TitulosAReceber set ' +
                '    Status = 0, DataCancelamento = :D, OBS = :O, FuncCancelamento = :F ' +
                'where (Status <> 50) and ID = ' + sTitulo + ' and Empresa = :Empresa and Pdv = :Pdv';
            ParamByName('D').asDateTime := DMProjeto.dDataSistema;
            ParamByName('O').asString := DMProjeto.getMsg(449) + ': ' + sMotivo + '.'#13 +
                'Em ' + FormatDateTime(ShortDateFormat, DMProjeto.dDataSistema) + #13 +
                'Usu�rio: ' + DMProjeto.sLoginName;
            ParamByName('F').asInteger := DMProjeto.nFuncionario;
            ParamByName('Empresa').AsInteger := Empresa;
            ParamByName('Pdv').AsInteger := Pdv;
            nTentativas := 0;
            bGravouSaida := False;
            repeat
                try
                    ExecSQL;
                    Close;
                    nTentativas := 3;
                    bGravouSaida := True;
                except
                    Inc(nTentativas);
                    Sleep(20);
                end;
            until nTentativas = 3;
            if not (bGravouSaida) then
                DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.CancelarOperacao ')]);

            {Registrando o Cr�dito}
            if ((nCreditoG + nValorPago) > 0) then
                begin
                    DlgMsg.ShowMsg(50, [pChar('Sera Gerado um Cr�dito para o Cliente no Valor de: R$ ' + FormatFloat('0.00', nValorPago - nCreditoG))]);
                    RegistrarCredito(Fav, Deposito, 30, true, 0, nValorPago - nCreditoG, sInv);
                end;
        end;

    DMFinanceiro.CancelarLancamentos(sTitulo);

    //    DMFinanceiro.CancelarDeposito( IntToStr(Deposito), sMotivo, False, True );

    AuditoriaFinanceira(3, sMotivo, 'TitulosAReceber', Titulo, nValor, Titulo, 30, 0);

    result := true;
end;

function TDMFinanceiro.CancelarDeposito;
var
    sTitulos, sTitulo, sDeposito, sDocs, sNome, sHistorico, sErro, sDataFinanceiro: string;
    IDTitulo, TipoDeposito, nFavorecido, i, j, k: Integer;
    bCancelouTodosDocs: Boolean;
    Valor, CreditoGerado: Currency;
    ddata, dDataFinanceiro: TDateTime;
begin
    result := false;

    {Valida��o / Cr�tica}

    {Verificando se os documentos recebidos ainda se encontram na empresa}
    if not VerificarDocumentos(sDepositos, bMotivo) then
        Exit;

    if bMotivo then
        begin
            sMotivo := '';
            sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');
            if Trim(sMotivo) = '' then
                Exit;
        end;

    for i := 1 to ContaStrings(sDepositos, ',') do
        begin
            sDeposito := SeparaStrings(sDepositos, ',', i);

            {Verificando se o dep�sito ja foi cancelado}
            with Q_ComandoSQL do
                begin
                    Close;
                    SQL.Text := 'Select d.TipoDeposito, d.Situacao, f.nome, d.Valor, d.Historico, d.CreditoGerado, d.data From Depositos d ' +
                        'inner join Favorecidos f on d.favorecido = f.favorecido ' +
                        'where Deposito = ' + sDeposito;
                    Open;
                    if fields[1].AsString = 'C' then
                        begin
                            Close;
                            Continue;
                        end;
                    TipoDeposito := Fields[0].AsInteger;
                    sNome := Fields[2].AsString;
                    Valor := Fields[3].AsCurrency;
                    sHistorico := Fields[4].AsString;
                    CreditoGerado := Fields[5].AsCurrency;
                    ddata := Fields[6].AsDateTime;
                end;

            sDataFinanceiro := DMProjeto.Parametro('DataFinanceiro');
            dDataFinanceiro := EncodeDate(StrToInt(Copy(sDataFinanceiro, 1, 4)), StrToInt(Copy(sDataFinanceiro, 5, 2)), StrToInt(Copy(sDataFinanceiro, 7, 2)));
            if ddata < dDataFinanceiro then
                begin
                    DlgMsg.ShowMsg(50, [pChar('Opera��o n�o permitida, Transa��o j� finalizada !')]);
                    raise Exception.Create('@@');
                end;

            with Q_ComandoSQL do
                begin
                    Close;
                    SQL.Text := 'Select IDDoc From DepositosDoc where Deposito = ' + sDeposito + ' and Status < 70 ';
                    Open;
                    disablecontrols;
                    sDocs := '';
                    while not EOF do
                        begin
                            sDocs := sDocs + ',' + FieldByName('IDDoc').asString;
                            Next;
                        end;
                    enablecontrols;
                    if sDocs <> '' then
                        sDocs[1] := ' ';

                    sDocs := trim(sDocs);

                    if not DMProjeto.DB_Projeto.DefaultTransaction.Intransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

                    {Cancelando cada DepositoDoc}
                    bCancelouTodosDocs := true;
                    for j := 1 to ContaStrings(sDocs, ',') do
                        begin
                            if not CancelarDepositoDoc(StrToInt(SeparaStrings(sDocs, ',', j)), sMotivo, false, false) then
                                begin
                                    bCancelouTodosDocs := False;
                                    break;
                                end;
                        end;

                    if bCancelouTodosDocs then
                        begin
                            {Cancelando o Deposito}
                            Close;
                            SQL.Text := 'Update Depositos set ' +
                                '    Situacao = ''C'' where Deposito = ' + sDeposito;
                            ExecSQL;

                            {Deletando transfer�nias TEF}
                            Close;
                            Sql.text := 'delete from transacoes where idgerador = :id and tipooperacao = 22';
                            Parambyname('id').AsInteger := StrToInt(sDeposito);
                            Execsql;

                            {Cancelando o DepositoTitulos}
                            Close;
                            SQL.Text := 'Update DepositosTitulos set ' +
                                '    Status = 70 where Deposito = :Dep';
                            ParamByName('Dep').AsInteger := StrToInt(sDeposito);
                            ExecSQL;

                            {Corrigindo ValorPago dos T�tulos afetados pelo deposito}
                            Close;
                            SQL.Text := 'Select Titulo From DepositosTitulos ' +
                                'where Deposito = ' + sDeposito;
                            Open;
                            sTitulos := '';
                            while not EOF do
                                begin
                                    sTitulos := sTitulos + fieldbyname('Titulo').AsString + ',';
                                    next;
                                end;
                            Close;
                            sTitulos := Copy(sTitulos, 1, length(sTitulos) - 1);
                            if sTitulos <> '' then
                                begin
                                    for k := 1 to ContaStrings(sTitulos, ',') do
                                        begin
                                            Close;
                                            SQL.Text := 'Select Sum(Valor) as TotalPago, ' +
                                                'Sum(CreditoUtilizado) as CU, ' +
                                                'Sum(CreditoGerado) as CG, ' +
                                                'Sum(Juros) as J, ' +
                                                'Sum(Descontos) as D ' +
                                                'From DepositosTitulos where Titulo = ' + SeparaStrings(sTitulos, ',', k) + ' and Status < 70 ';
                                            Open;
                                            if not EOF then
                                                begin
                                                    while not EOF do
                                                        begin
                                                            Q_SQL2.Close;
                                                            Q_SQL2.SQL.Text := 'Update TitulosAReceber set ' +
                                                                'ValorPago = :V, ' +
                                                                'CreditoUtilizado = :CU, ' +
                                                                'CreditoGerado    = :CG, ' +
                                                                'Descontos = :D, ' +
                                                                'JurosRecebidos = :J, ' +
                                                                'ValorJurosMora = 0, ' +
                                                                'Status = 1 ' +
                                                                'Where ID = :T  ';
                                                            Q_SQL2.ParamByName('V').AsCurrency := FieldByName('TotalPago').AsCurrency;
                                                            Q_SQL2.ParamByName('CU').AsCurrency := FieldByName('CU').AsCurrency;
                                                            Q_SQL2.ParamByName('CG').AsCurrency := FieldByName('CG').AsCurrency;
                                                            Q_SQL2.ParamByName('D').AsCurrency := FieldByName('D').AsCurrency;
                                                            Q_SQL2.ParamByName('J').AsCurrency := FieldByName('J').AsCurrency;
                                                            Q_SQL2.ParamByName('T').asInteger := StrToInt(SeparaStrings(sTitulos, ',', k));
                                                            nTentativas := 0;
                                                            bGravouSaida := False;
                                                            repeat
                                                                try
                                                                    Q_SQL2.ExecSQL;
                                                                    Q_SQL2.Close;
                                                                    nTentativas := 3;
                                                                    bGravouSaida := True;
                                                                except
                                                                    on E: Exception do
                                                                        begin
                                                                            Inc(nTentativas);
                                                                            Sleep(20);
                                                                            sErro := e.message;
                                                                        end;
                                                                end;
                                                            until nTentativas = 3;
                                                            if not (bGravouSaida) then
                                                                DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.CancelarDeposito - 2 ' + sErro)]);
                                                            NEXT;
                                                        end;
                                                end
                                            else
                                                begin
                                                    Q_SQL2.Close;
                                                    Q_SQL2.SQL.Text := 'Update TitulosAReceber set ' +
                                                        'ValorPago = 0, ' +
                                                        'CreditoUtilizado = 0, ' +
                                                        'CreditoGerado    = 0, ' +
                                                        'Descontos = 0, ' +
                                                        'JurosRecebidos = 0, ' +
                                                        'Status = 1 ' +
                                                        'Where ID = :T  ';
                                                    Q_SQL2.ParamByName('T').asInteger := StrToInt(SeparaStrings(sTitulos, ',', k));
                                                    nTentativas := 0;
                                                    bGravouSaida := False;
                                                    bGravouSaida := False;
                                                    repeat
                                                        try
                                                            Q_SQL2.ExecSQL;
                                                            Q_SQL2.Close;
                                                            nTentativas := 3;
                                                            bGravouSaida := True;
                                                        except
                                                            on E: Exception do
                                                                begin
                                                                    Inc(nTentativas);
                                                                    Sleep(20);
                                                                    sErro := e.message;
                                                                end;
                                                        end;
                                                    until nTentativas = 3;
                                                    if not (bGravouSaida) then
                                                        DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.CancelarDeposito - 3 ' + sErro)]);
                                                end;
                                        end;
                                end;
                            {Estornando Creditos}
                            EstornarCredito(StrToInt(sDeposito));

                            {Caso for proveniente de Recebimento R�pido, apaga o titulo a receber}
                            if (TipoDeposito = 2) and (CreditoGerado = 0) then
                                begin
                                    Close;
                                    SQL.Text := 'Select t.ID, t.Titulo From DepositosTitulos dt ' +
                                        'inner join TitulosAReceber t on dt.Titulo = t.id ' +
                                        'where Deposito = ' + sDeposito;
                                    Open;
                                    IDTitulo := fields[0].AsInteger;
                                    sTitulo := fields[1].AsString;
                                    Close;
                                    SQL.Text := 'Delete from TitulosAReceber where ID = :ID';
                                    Params[0].Asinteger := IDTitulo;
                                    ExecSQL;

                                    {Cancelar Contabilidade}
                                    CancelarLancamentos(IntToStr(IDTitulo));

                                    {Cancelar Cheques Devolvidos, se houverem}
                                    Close;
                                    SQL.text := 'select operacao from operacoesfinanceiras ' +
                                        'where contaorigem = ' + sDeposito + ' and tipooperacao = 10';
                                    Open;
                                    if Fields[0].AsInteger > 0 then
                                        CancelarOperacao(Fields[0].AsString, 10);
                                    Close;

                                    AuditoriaFinanceira(37, 'Ref.No ' + sTitulo + ' de ' + sNome, 'TitulosAReceber', 0, Valor, 0, 0, 0);
                                end;

                            Close;
                            SQL.Text := 'delete from auditorias where idgerador = ' + sDeposito;
                            ExecSQL;
                            Close;
                        end;

                    CancelarLancamentos(sDeposito);

                    AuditoriaFinanceira(13, DMProjeto.TipoOrigem(TipoDeposito) + ':' + sHistorico, 'Depositos', StrToInt(sDeposito), Valor, StrToInt(sDeposito), TipoDeposito, 0);

                    result := true;
                end;
        end;
end;

function TDMFinanceiro.CancelarDepositoDoc;
var
    sIDDoc, sDeposito, sNome, sFormaPagamento: string;
    nValor, nValorDoc, nSaldoConta: currency;
    FormaPagamento, nEspecie, ContaDoc, nFavorecido, TipoDeposito: Integer;
begin
    result := false;
    sIDDoc := IntToStr(IDDoc);

    if bMotivo then
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    if trim(sMotivo) = '' then
        exit;

    {Valida��o / Cr�tica}
    {Verificando se o Documento j� est� cancelado}
    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select Status from DepositosDoc Where IDDoc = ' + sIDDoc;
            Open;
            if Fields[0].AsInteger >= 70 then
                begin
                    Close;
                    Exit;
                end;
            Close;
            SQL.Text := 'Select d.Deposito, d.TipoDeposito, dd.Valor, dd.ContaAtual, dd.Formapagamento, d.Favorecido ' +
                'from DepositosDoc dd, Depositos d where dd.IDDoc = ' + sIDDoc + ' and dd.Deposito = d.Deposito ';
            Open;
            sDeposito := IIF(((FieldByName('Deposito').IsNull) or (FieldByName('Deposito').asString = '')), '0', FieldByName('Deposito').asString);
            if bMotivo then
                begin
                    if not VerificarDocumentos(sDeposito, bMotivo, sIDDoc) then
                        begin
                            Close;
                            Exit;
                        end;
                end;

            nValor := FieldByName('Valor').AsCurrency;
            nEspecie := getEspecieID(FieldByName('FormaPagamento').asInteger);
            ContaDoc := FieldByName('ContaAtual').asInteger;
            TipoDeposito := FieldByName('TipoDeposito').asInteger;
            nValorDoc := nValor;
            FormaPagamento := FieldByName('FormaPagamento').asInteger;
            sFormaPagamento := getFormaPagamento(FieldByName('FormaPagamento').asInteger);
            sNome := getFavorecido(FieldByName('Favorecido').asInteger);

            Close;

            {Apagando Opera��es com este documento}
            ApagarDoc(IDDoc);

            {Cancelando os Documentos}
            Close;
            SQL.Text := 'Update DepositosDoc set ' +
                '     Status = 70, DataCancelamento = :D, MotivoCancelamento = :O, FuncCancelamento = :F ' +
                'Where IDDoc = ' + sIDDoc;
            ParamByName('D').asDateTime := DMProjeto.dDataSistema;
            ParamByName('O').asString := sMotivo;
            ParamByName('F').asInteger := DMProjeto.nFuncionario;
            ExecSQL;

            InserirOperacoesDoc(IDDoc, StrTOInt(sDeposito), TipoDeposito, FormaPagamento, 70, nValorDoc);

            AuditoriaFinanceira(35, sFormaPagamento + ' de ' + sNome, 'DepositosDoc', IDDoc, nValorDoc, StrToInt(sDeposito), TipoDeposito, ContaDoc);

            result := true;

        end;
end;

function TDMFinanceiro.CancelarDuplicata;
var
    sDuplicata, sRetiradas, sTitulosCan, sNome: string;
    i, Retirada, nQtde: Integer;
    Valor: currency;
begin
    sDuplicata := IntToStr(Duplicata);
    result := false;

    {Valida��o / Cr�tica}

    with Q_SQL2 do
        begin
            {Vericando se a Duplicata j� foi Cancelada}
            Close;
            SQL.Text := 'Select Status From DuplicatasAPagar Where ID = ' + sDuplicata;
            Open;
            if Fields[0].AsInteger = 0 then
                begin
                    DlgMsg.ShowMsg(928);
                    Exit;
                end;

            {Verificando se esta duplicata foi paga em conjunto com outras duplicatas}
            Close;
            Sql.Text := 'select Retirada from retiradasduplicatas ' +
                'where Duplicata = ' + sDuplicata + ' and Status < 70 ';
            Open;
            disablecontrols;
            sRetiradas := '';
            while not Eof do
                begin
                    sRetiradas := sRetiradas + fields[0].AsString + ',';
                    Next;
                end;
            enablecontrols;
            sRetiradas := Copy(sRetiradas, 1, length(sRetiradas) - 1);

            if sRetiradas <> '' then
                begin
                    Close;
                    Sql.Text := 'select distinct duplicata from retiradasduplicatas ' +
                        'where retirada IN (' + sRetiradas + ') and status < 70 ';
                    Open;
                    Last;
                    nQtde := RecordCount;
                    if nQtde > 0 then
                        begin
                            Close;
                            Sql.Text := 'select Retirada from RetiradasDuplicatas ' +
                                'where Duplicata = ' + sDuplicata + ' and status < 70 ';
                            Open;
                            Retirada := fields[0].AsInteger;
                            if nQtde > 1 then
                                begin
                                    if DlgMsg.ShowMsg(926) = 100 then
                                        begin
                                            DMProjeto.SetParametrosForm([Retirada]);
                                            DMProjeto.CriarForm('DlgSangria', self, false);
                                            Exit;
                                        end
                                    else
                                        Exit;
                                end;
                        end;
                    {Verificando se os documentos recebidos ainda se encontra na empresa}
                    if not VerificarDocumentos(IntToStr(Retirada), true) then
                        Exit;
                end;
        end;

    {Valida��o Conclu�da}

    if bMotivo then
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    if Trim(sMotivo) = '' then
        Exit;

    with Q_ComandoSQL do
        begin
            {Capturando Retiradas}
            Close;
            SQL.Text := 'Select sum(Valor) From DuplicatasAPagar ' +
                'where ID = ' + sDuplicata + ' and Status < 70';
            Open;
            Valor := Fields[0].AsCurrency;

            {Cancelando todos as Retiradas - se houver}

            if nQtde > 0 then
                CancelarRetirada(sRetiradas, sMotivo, false, false);

            {Cancelando a Duplicata}
            Close;
            SQL.Text := 'Update DuplicatasAPagar set ' +
                '    Status = 0, DataCancelamento = :D, OBS = :O, FuncCancelamento = :F ' +
                'where ID = ' + sDuplicata;
            ParamByName('D').asDateTime := DMProjeto.dDataSistema;
            ParamByName('O').asString := sMotivo + '.' + FormatDateTime(DMProjeto.sDateFormat, DMProjeto.dDataSistema) + ' por: ' +
                DMProjeto.sLoginName;
            ParamByName('F').asInteger := DMProjeto.nFuncionario;
            ExecSQL;

            DMFinanceiro.CancelarLancamentos(sDuplicata);

            AuditoriaFinanceira(19, '', 'DuplicatasAPagar', StrToInt(sDuplicata), Valor, 0, 0, 0);

            Close;
            SQL.Text := 'delete from auditorias where tipo = 17 and idtabela = :id ';
            Params[0].AsInteger := StrToInt(sDuplicata);
            ExecSQL;

            result := true;

        end;
end;

function TDMFinanceiro.CancelarRetirada;
var
    sRetirada, sDocs, sDuplicatas, Historico, sDataFinanceiro: string;
    TipoRetirada, i, j, k: Integer;
    bCancelouTodosDocs: Boolean;
    Valor, CreditoGerado: Currency;
    ddata, dDataFinanceiro: TDateTime;
begin
    result := false;
    {Valida��o / Cr�tica}

    {Verificando se os documentos recebidos ainda se encontra na empresa}
    if bMotivo then
        if not VerificarDocumentos(sRetiradas, bMotivo) then
            Exit;

    if bMotivo then
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    for i := 1 to ContaStrings(sRetiradas, ',') do
        begin
            sRetirada := SeparaStrings(sRetiradas, ',', i);

            {Verificando se a retirada j� foi cancelada}
            with Q_ComandoSQL do
                begin
                    Close;
                    SQL.Text := 'Select TipoRetirada, Situacao, Valor, historico, CreditoGerado, data From Retiradas ' +
                        'where Retirada = ' + sRetirada;
                    Open;
                    if fields[1].AsString = 'C' then
                        begin
                            Close;
                            Exit;
                        end;
                    TipoRetirada := fields[0].AsInteger;
                    Valor := Fields[2].AsCurrency;
                    Historico := Fields[3].AsString;
                    CreditoGerado := Fields[4].AsCurrency;
                    ddata := Fields[5].AsDateTime;
                end;

            sDataFinanceiro := DMProjeto.Parametro('DataFinanceiro');
            dDataFinanceiro := EncodeDate(StrToInt(Copy(sDataFinanceiro, 1, 4)), StrToInt(Copy(sDataFinanceiro, 5, 2)), StrToInt(Copy(sDataFinanceiro, 7, 2)));
            if ddata < dDataFinanceiro then
                begin
                    DlgMsg.ShowMsg(50, [pChar('Opera��o n�o permitida, Transa��o j� finalizada !')]);
                    raise Exception.Create('@@');
                end;

            with Q_ComandoSQL do
                begin
                    sDocs := '';
                    Close;
                    SQL.Text := 'Select IDDoc From RetiradasDoc where Retirada = ' + sRetirada;
                    Open;
                    disablecontrols;
                    while not EOF do
                        begin
                            sDocs := sDocs + ',' + FieldByName('IDDoc').asString;
                            next;
                        end;
                    enablecontrols;

                    if sDocs <> '' then
                        sDocs[1] := ' ';

                    sDocs := trim(sDocs);

                    Close;

                    {Cancelando cada RetiradaDoc}
                    bCancelouTodosDocs := true;
                    for j := 1 to ContaStrings(sDocs, ',') do
                        if not CancelarRetiradaDoc(StrToInt(SeparaStrings(sDocs, ',', j)), sMotivo, false, false) then
                            begin
                                bCancelouTodosDocs := False;
                                break;
                            end;

                    if bCancelouTodosDocs then
                        begin

                            {Cancelando em RetiradasChequesCaixa (pago com Cheque em Loja)}
                            Close;
                            Sql.Text := 'select iddoc, conta, status from retiradaschequescaixa ' +
                                'where retirada = ' + sRetirada;
                            Open;
                            while not eof do
                                begin
                                    with Q_SQL2 do
                                        begin
                                            close;
                                            sql.text := 'update depositosdoc ' +
                                                'set contaatual = :conta, status = :status, foradaempresa=''N'', ' +
                                                '    localtitulo= :local, dataretirada = null ' +
                                                'where iddoc = :iddoc';
                                            parambyname('IDDoc').AsInteger := Q_ComandoSQL.FieldByName('IDDoc').AsInteger;
                                            parambyname('Conta').AsInteger := Q_ComandoSQL.FieldByName('Conta').AsInteger;
                                            parambyname('Status').AsInteger := Q_ComandoSQL.FieldByName('Status').AsInteger;
                                            parambyname('Local').AsString := getDescricaoConta(Q_ComandoSQL.FieldByName('Conta').AsInteger);
                                            execsql;

                                            close;
                                            sql.text := 'delete from transacoes where idgerador = :idgerador and iddoc = :iddoc';
                                            parambyname('idgerador').asInteger := StrToInt(sRetirada);
                                            parambyname('iddoc').asInteger := Q_ComandoSQL.FieldByName('IDDoc').AsInteger;
                                            execsql;
                                        end;
                                    Next;
                                end;

                            {Cancelando o Retirada}
                            Close;
                            SQL.Text := 'Update Retiradas set ' +
                                ' Situacao = ''C'' where Retirada = ' + sRetirada;
                            ExecSQL;

                            {Cancelando o Deposito}
                            Close;
                            SQL.Text := 'Update RetiradasDuplicatas set ' +
                                '    Status = 70 where Retirada = ' + sRetirada;
                            ExecSQL;

                            {Corrigindo ValorPago das Duplicatas afetadas pela retirada}
                            Close;
                            SQL.Text := 'Select Duplicata From RetiradasDuplicatas ' +
                                'where Retirada = ' + sRetirada;
                            Open;
                            sDuplicatas := '';
                            while not EOF do
                                begin
                                    sDuplicatas := sDuplicatas + fieldbyname('Duplicata').AsString + ',';
                                    next;
                                end;
                            Close;
                            sDuplicatas := Copy(sDuplicatas, 1, length(sDuplicatas) - 1);
                            if sDuplicatas <> '' then
                                begin
                                    for k := 1 to ContaStrings(sDuplicatas, ',') do
                                        begin
                                            Close;
                                            SQL.Text := 'Select Sum(Valor * Cotacao) as TotalPago, ' +
                                                'Sum(CreditoUtilizado * Cotacao) as CU, ' +
                                                'Sum(CreditoGerado * Cotacao) as CG, ' +
                                                'Sum(Juros * Cotacao) as J, ' +
                                                'Sum(Descontos * Cotacao) as D ' +
                                                'From RetiradasDuplicatas where Duplicata = ' + SeparaStrings(sDuplicatas, ',', k) + ' and Status < 70 ';
                                            Open;
                                            if not EOF then
                                                begin
                                                    while not EOF do
                                                        begin
                                                            Q_SQL2.Close;
                                                            Q_SQL2.SQL.Text := 'Update DuplicatasAPagar set ' +
                                                                'ValorPago = :V, ' +
                                                                'CreditoUtilizado = :CU, ' +
                                                                'CreditoGerado    = :CG, ' +
                                                                'Descontos = :D, ' +
                                                                'JurosPagos = :J, ' +
                                                                'Status = :Status ' +
                                                                'Where ID = :T  ';
                                                            Q_SQL2.ParamByName('V').AsCurrency := FieldByName('TotalPago').AsCurrency;
                                                            Q_SQL2.ParamByName('CU').AsCurrency := FieldByName('CU').AsCurrency;
                                                            Q_SQL2.ParamByName('CG').AsCurrency := FieldByName('CG').AsCurrency;
                                                            Q_SQL2.ParamByName('D').AsCurrency := FieldByName('D').AsCurrency;
                                                            Q_SQL2.ParamByName('J').AsCurrency := FieldByName('J').AsCurrency;
                                                            Q_SQL2.ParamByName('T').asInteger := StrToInt(SeparaStrings(sDuplicatas, ',', k));
                                                            Q_SQL2.ParamByName('Status').asInteger := SetStatus(getVencimentoDuplicata(StrToInt(SeparaStrings(sDuplicatas, ',', k))));
                                                            Q_SQL2.ExecSQL;
                                                            NEXT;
                                                        end;
                                                end
                                            else
                                                begin
                                                    Q_SQL2.Close;
                                                    Q_SQL2.SQL.Text := 'Update DuplicatasAPagar set ' +
                                                        'ValorPago = 0, ' +
                                                        'CreditoUtilizado = 0, ' +
                                                        'CreditoGerado    = 0, ' +
                                                        'Descontos = 0, ' +
                                                        'JurosPagos = 0, ' +
                                                        'Status = :Status ' +
                                                        'Where ID = :T  ';
                                                    Q_SQL2.ParamByName('T').asInteger := StrToInt(SeparaStrings(sDuplicatas, ',', k));
                                                    Q_SQL2.ParamByName('Status').asInteger := SetStatus(getVencimentoDuplicata(StrToInt(SeparaStrings(sDuplicatas, ',', k))));
                                                    Q_SQL2.ExecSQL;
                                                end;
                                        end;
                                end;

                            {Estornando Creditos}
                            EstornarCredito(StrToInt(sRetirada));

                            {Caso for proveniente de Pagamento R�pido, apaga o titulo a pagar}
                            if (TipoRetirada in [4, 5]) and (CreditoGerado = 0) then
                                begin
                                    Close;
                                    SQL.Text := 'Delete from DuplicatasAPagar where ID = ' +
                                        '(Select Duplicata From RetiradasDuplicatas where Retirada = ' + sRetirada + ')';
                                    ExecSQL;

                                    Close;
                                    SQL.Text := 'Select Duplicata From RetiradasDuplicatas where Retirada = ' + sRetirada;
                                    open;
                                    while not eof do
                                        begin
                                            CancelarLancamentos(FieldByName('duplicata').asstring);
                                            next;
                                        end;
                                end;

                            {Excluindo de Auditoria}
                            Close;
                            SQL.Text := 'delete from auditorias where idgerador = ' + sRetirada;
                            ExecSQL;

                        end;

                end;
            CancelarLancamentos(sRetirada);

            result := true;

        end;

end;

function TDMFinanceiro.CancelarRetiradaDoc;
var
    sIDDoc, sRetirada, sNome, sFormaPagamento, sValor: string;
    Valor: currency;
    nID, FormaPagamento, Especie, ContaDoc, Retirada, TipoRetirada, nQtde: integer;
begin
    sIDDoc := IntToStr(IDDoc);
    result := false;

    {Valida��o / Cr�tica}
     {Verificando se o Documento j� est� cancelado}
    with Q_ComandoSQL do
        begin
            Close;
            SQL.Text := 'Select r.Retirada, r.TipoRetirada, rd.Valor, rd.Conta, rd.Formapagamento, rd.FavorecidoDoc, rd.Status ' +
                'from RetiradasDoc rd, Retiradas r where rd.IDDoc = ' + sIDDoc + ' and rd.Retirada = r.Retirada ';
            Open;
            sRetirada := FieldByName('Retirada').asString;
            if bMotivo then
                begin
                    if not VerificarDocumentos(sRetirada, bMotivo, sIDDoc) then
                        begin
                            Close;
                            Exit;
                        end;
                end;

            if FieldByName('Status').AsInteger >= 70 then
                begin
                    Close;
                    Exit;
                end;

            Valor := FieldByName('Valor').AsCurrency;
            Especie := getEspecieID(FieldByName('FormaPagamento').asInteger);
            ContaDoc := FieldByName('Conta').asInteger;
            TipoRetirada := FieldByName('TipoRetirada').asInteger;
            FormaPagamento := FieldByName('FormaPagamento').asInteger;
            sFormaPagamento := getFormaPagamento(FieldByName('FormaPagamento').asInteger);
            sNome := getFavorecido(FieldByName('FavorecidoDoc').asInteger);
            sRetirada := FieldByName('Retirada').asString;

            if bMotivo then
                begin
                    if not VerificarDocumentos(sRetirada, bMotivo, sIDDoc) then
                        begin
                            Close;
                            Exit;
                        end;
                end;
        end;

    if bMotivo then
        sMotivo := InputBox(DMProjeto.getMsg(449), DMProjeto.getMsg(450) + ':', '');

    with Q_ComandoSQL do
        begin

            {Apagando Opera��es com este documento}
            ApagarDoc(IDDoc);

            {Cancelando os Documentos}
            Close;
            SQL.Text := 'Update RetiradasDoc set ' +
                '     Status = 70, DataCancelamento = :D, MotivoCancelamento = :O, FuncCancelamento = :F ' +
                'Where IDDoc = ' + sIDDoc;
            ParamByName('D').asDateTime := DMProjeto.dDataSistema;
            ParamByName('O').asString := sMotivo;
            ParamByName('F').asInteger := DMProjeto.nFuncionario;
            ExecSQL;

            InserirOperacoesDoc(IDDoc, StrToInt(sRetirada), TipoRetirada, FormaPagamento, 70, Valor);
            AuditoriaFinanceira(35, sFormaPagamento + ' de ' + sNome, 'DepositosDoc', IDDoc, Valor, StrToInt(sRetirada), TipoRetirada, ContaDoc);

            Close;

            result := true;

        end;
end;

function TDMFinanceiro.AcertarChequeDevolvido;
var
    sIDDoc, sMotivo: string;
    IDDocAcerto, NumCheque, Favorecido, Conta, Operacao, Titulo, IDGerador: integer;
    Valor: Currency;
    Vencimento: TDateTime;
begin
    sIDDoc := IntToStr(IDDoc);
    IDGerador := getDeposito(IDDoc);
    result := false;
    Operacao := DMProjeto.NextIDGlobal;
    nOperacao := Operacao;
    sMotivo := DMProjeto.getMsg(465);
    try
        with Q_ComandoSQL do
            begin
                Close;
                SQL.text := 'select dd.numcheque, dd.valor, dd.vencimento, dd.contaatual, ' +
                    'd.favorecido ' +
                    'from DepositosDoc dd, depositos d ' +
                    'where dd.IDDoc = :IDDoc and dd.Deposito = d.deposito';
                ParamByName('IDDoc').AsInteger := IDDoc;
                Open;

                NumCheque := fieldbyname('NumCheque').AsInteger;
                Valor := fieldbyname('Valor').AsInteger;
                Vencimento := fieldbyname('Vencimento').AsDateTime;
                Conta := fieldbyname('ContaAtual').AsInteger;
                Favorecido := fieldbyname('Favorecido').AsInteger;

                if (TotalFinal > Valor) then
                    begin

                        {Corrigindo o Valor do Dep�sito}
                        Close;
                        SQL.Text := 'Update Depositos set Valor = Valor + :V ' +
                            'Where Deposito = :Deposito ';
                        ParamByName('Deposito').asInteger := IDGerador;
                        ParamByName('V').AsCurrency := TotalFinal - Valor;
                        ExecSQL;

                    end;

                Close;
                SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                    'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ValorJuros, PercentualJuros, ContaDestino, ContaOrigem, ValorDinheiro, Historico, Titulo, Usuario, pdv, empresa) ' +
                    'Values ( ' +
                    ':Operacao, 10, :Favorecido, Current_Date,:Valor,:Encargos, :Despesas, :Conta, :Deposito, 0, ''' + DMProjeto.getMsg(318) + ''',:Titulo, :Usuario, :pdv, :empresa)';
                ParamByName('Operacao').AsInteger := Operacao;
                ParamByName('Deposito').AsInteger := Deposito;
                ParamByName('Favorecido').AsInteger := Favorecido;
                ParamByName('Valor').AsCurrency := Valor;
                ParamByName('Encargos').AsCurrency := Encargos;
                ParamByName('Despesas').AsCurrency := Despesas;
                ParamByName('Conta').AsInteger := 1;
                ParamByName('Titulo').AsInteger := Titulo;
                ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                ExecSQL;
                {
                Close;
                SQL.Text := 'Insert into OperacoesFinanceirasDet '+
                      '(OpDoc, Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc) '+
                            'values '+
                            '(:OpDoc, :Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc) ';
                ParamByName('OpDoc').AsInteger 			:= DMProjeto.NextIDGlobal;
                ParamByName('Operacao').AsInteger	 	:= Operacao;
                if NumCheque = 0 then
                 SQL.Text := replace( SQL.Text, ':NumCheque', 'null' )
                else
                 ParamByName('NumCheque').AsInteger:= NumCheque;
                ParamByName('Vencimento').AsDateTime:= Vencimento;
                ParamByName('Valor').AsCurrency			:= Valor;
                ParamByName('Favorecido').AsInteger	:= Favorecido;
                ParamByName('IDDoc').AsInteger			:= IDDoc;
                ExecSQL;
                }
                InserirOperacoesDoc(IDDoc, Operacao, 10, 2, 50, Valor);

                {Cancelando os Documentos}
                Close;
                SQL.Text := 'Update DepositosDoc set ' +
                    '     Status = 71, DataCancelamento = :D, MotivoCancelamento = :O, FuncCancelamento = :F ' +
                    'Where IDDoc = ' + IntToStr(IDDoc);
                ParamByName('D').asDateTime := DMProjeto.dDataSistema;
                ParamByName('O').asString := sMotivo;
                ParamByName('F').asInteger := DMProjeto.nFuncionario;
                ExecSQL;

                Close;
                SQL.Text :=
                    'Insert into transacoes ' +
                    '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                    '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                    'Select ' +
                    '     ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                    '     (-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, ' +
                    '     :Operacao, dd.IDDoc, :OBS, ' +
                    '     ''N'', Favorecido, CURRENT_TIME, dd.FuncCancelamento, 10, d.pdv, d.empresa ' +
                    'From Depositos d, DepositosDoc dd, Contas c ' +
                    'Where dd.IDDoc = :IDDoc and d.Deposito = dd.Deposito and dd.ContaAtual = c.Conta ';
                ParamByName('IDDoc').AsInteger := IDDoc;
                SQL.Text := replace(SQL.Text, ':OBS', '''' + Copy(sMotivo, 1, 50) + '''');
                SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(Operacao));
                ExecSQL;

                {Inserindo outro documento}
                   {Agora a tela de recebimento r�pido que ser� feito o acerto de cheque}
                   {
                   IDDocAcerto := ReceberDoc( 0, 10, IDGerador, FormaPagamento, TotalFinal,
                                      DMProjeto.dDataSistema,'Acerto de Cheque', 0, -5000 );
                   }
                Close;
                SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                    '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, pdv, empresa) ' +
                    'values ' +
                    '(:Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :pdv, :empresa) ';
                ParamByName('Operacao').AsInteger := Operacao;
                ParamByName('NumCheque').AsInteger := NumCheque;
                ParamByName('Vencimento').AsDateTime := DMProjeto.dDataSistema;
                ParamByName('Valor').AsCurrency := Valor;
                ParamByName('Favorecido').AsInteger := Favorecido;
                ParamByName('IDDoc').AsInteger := IDDoc;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                ExecSQL;

                Close;
                SQL.Text := 'update OperacoesFinanceirasDet od ' +
                    'set od.valorpago = :valor ' +
                    'where od.iddoc = :iddoc and ' +
                    'exists (select o.operacao from operacoesfinanceiras o where o.operacao = od.operacao and o.tipooperacao = 9 and o.situacao is null)';
                ParamByName('valor').AsCurrency := TotalFinal;
                ParamByName('iddoc').AsInteger := IDDoc;
                ExecSQL;

                result := true;

            end;
    except
        on e: exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBack;

                // ShowMessage('N�o foi poss�vel cancelar Documento!'+#13+e.Message);
                DlgMsg.ShowMsg(459, e.message, '');
            end;
    end;
end;

function TDMFinanceiro.getTipoRetirada(IDDoc: integer): integer;
begin
    with Q_ComandoSQL do
        begin
            close;
            SQL.Text := 'select r.tiporetirada from retiradasdoc rd, retiradas r ' +
                'where rd.IDDoc = ' + IntToStr(IDDoc) + ' and rd.retirada = r.retirada ';
            open;
            result := fieldbyname('tiporetirada').AsInteger;
            close;
        end;
end;

function TDMFinanceiro.AlterarContaCheques;
begin
    result := 0;
    DlgAlterarConta := TDlgAlterarConta.Create(self);
    with DlgAlterarConta do
        begin
            nConta := ContaAtual;
            lblTexto.Caption := 'Foram selecionado(s) ' + IntToStr(ContaStrings(sSelecionados, ',')) + ' cheque(s) da Conta: ';
            lblConta.Caption := getDescricaoConta(ContaAtual);

            if ShowModal = mrOk then
                begin

                    nConta := DMProjeto.getParametrosForm(0);
                    DMProjeto.LimparParametrosForm;
                    with Q_SQL do
                        begin
                            Close;
                            SQL.Text := 'Update RetiradasDoc ' +
                                '   set Conta = :Conta ' +
                                'Where IDDoc in (' + sSelecionados + ') ';
                            ParambyName('Conta').asInteger := nConta;
                            ExecSQL;

                            Close;
                            SQL.Text := 'Update Transacoes ' +
                                '   set Conta = :ContaAtual ' +
                                'Where IDDoc in (' + sSelecionados + ')';
                            ParambyName('ContaAtual').asInteger := nConta;
                            ExecSQL;
                        end;

                    result := nConta;
                end;
            Release;
        end;
end;

function TDMFinanceiro.ConciliarConta;
var nTotal: currency;
    i, Operacao, IDCompensacao, IDAjuste: integer;
begin
    with Q_SQL2 do
        begin
            Operacao := DMProjeto.NextIDGlobal;
            close;
            sql.text := 'insert into OperacoesFinanceiras ( Operacao, Data, TipoOperacao, ContaDestino, ValorOperacao, pdv, empresa) ' +
                'values (:Operacao, :Data, 28, :ContaDestino, :ValorOperacao, :pdv, :empresa) ';
            parambyname('Operacao').AsInteger := Operacao;
            parambyname('Data').AsDateTime := Data;
            parambyname('ContaDestino').AsInteger := Conta;
            parambyname('ValorOperacao').AsCurrency := Saldo;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            execsql;

            if sDepositos <> '' then
                begin
                    close;
                    sql.text := 'insert into OperacoesFinanceirasDet ( Operacao, Obs, TipoConciliacao, pdv, empresa) ' +
                        'values (:Operacao, :Obs, :Tipo, :pdv, :empresa )';
                    parambyname('Operacao').AsInteger := Operacao;
                    parambyname('Obs').AsString := sDepositos;
                    parambyname('Tipo').AsString := 'D'; {Dep�sitos/Recebimentos}
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                    ExecSQL;
                    close;
                    SQL.Text := 'update transacoes set Conciliado = ''S'' where ID IN (' + sDepositos + ')';
                    ExecSQL;
                end;
            if sPagamentos <> '' then
                begin
                    close;
                    sql.text := 'insert into OperacoesFinanceirasDet ' +
                        '( Operacao, Obs, TipoConciliacao, pdv, empresa) ' +
                        'values (:Operacao, :Obs, :Tipo, :pdv, :empresa )';
                    parambyname('Operacao').AsInteger := Operacao;
                    parambyname('Obs').AsString := sPagamentos;
                    parambyname('Tipo').AsString := 'P'; {Pagamentos/Despesas}
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                    ExecSQL;
                    close;
                    SQL.Text := 'update transacoes set Conciliado = ''S'' where ID IN (' + sPagamentos + ')';
                    ExecSQL;
                end;
            {Compensa��o de Cheques}
            if sCheques <> '' then
                begin
                    close;
                    SQL.Text := 'select sum(valor) from retiradasdoc where iddoc IN (' + sCheques + ')';
                    open;
                    nTotal := fields[0].AsCurrency;
                    close;

                    IDCompensacao := CompensarCheques(Conta, sCheques, nTotal, Data, 'S');

                    close;
                    sql.text := 'insert into OperacoesFinanceirasDet (Operacao, Obs, TipoConciliacao, pdv, empresa) ' +
                        'values (:Operacao, :Obs, :Tipo, :pdv, :empresa )';
                    parambyname('Operacao').AsInteger := Operacao;
                    parambyname('Obs').AsString := sCheques + ';' + IntToStr(IDCompensacao);
                    parambyname('Tipo').AsString := 'C'; {Compensa��o}
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                    ExecSQL;

                end;
            {Cart�es de Cr�dito}
            {
            if sCartoes <> '' then begin

              sCartoes := LiquidarCartoes( sCartoes , Conta, Data );

              close;
             sql.text := 'insert into OperacoesFinanceirasDet ( OpDoc, Operacao, Obs, TipoConciliacao ) '+
                   'values (:OpDoc, :Operacao, :Obs, :Tipo )';
              parambyname('OpDoc').AsInteger 		:= DMProjeto.NextIDGlobal;
              parambyname('Operacao').AsInteger := Operacao;
              parambyname('Obs').AsString 			:= sCartoes;
              parambyname('Tipo').AsString 			:= 'E'; // Cart�o
              ExecSQL;

            end;
            }
            {Ajustes}
            with Ajuste do
                begin
                    disablecontrols;
                    First;
                    while not EOF do
                        begin
                            if UpperCase(Copy(FieldByName('Tipo').AsString, 1, 1)) = 'D' then
                                IDAjuste := Retirar(28, Operacao, Conta, FieldByName('Data').AsDateTime, FieldByName('Valor').AsCurrency, 0, 1,
                                    FieldByName('Memo').AsString, FieldByName('Data').AsDateTime,
                                    '', 'S', getBancoDaConta(Conta), 0, 'S')
                            else
                                IDAjuste := Depositar(28, Operacao, Conta, 0, FieldByName('Data').AsDateTime, FieldByName('Valor').AsCurrency, 0, 1,
                                    FieldByName('Memo').AsString, FieldByName('Data').AsDateTime,
                                    '', 'S', getBancoDaConta(Conta), 'S');

                            with Q_SQL2 do
                                begin
                                    close;
                                    sql.text := 'insert into OperacoesFinanceirasDet (Operacao, Obs, TipoConciliacao, pdv, empresa) ' +
                                        'values (:Operacao, :Obs, :Tipo, :pdv, :empresa )';
                                    parambyname('Operacao').AsInteger := Operacao;
                                    parambyname('Obs').AsString := IntToStr(IDAjuste);
                                    parambyname('Tipo').AsString := 'A'; {Ajuste}
                                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                    ExecSQL;
                                end;

                            Next;
                        end;
                    enablecontrols;
                end;
            Close;
            SQL.Text := 'update contas set dataconciliacao = :data, saldoconciliacao = :saldo ' +
                'where conta = :conta';
            ParamByName('data').asDateTime := Data;
            ParamByName('conta').asInteger := Conta;
            ParamByName('Saldo').AsCurrency := Saldo;
            ExecSQL;
        end;
end;

function TDMFinanceiro.ContaFavorecido;
begin
    with Q_SQL do
        begin
            SQL.Text := 'select conta from favorecidos where conta = :id';
            params[0].asinteger := ID;
            Open;
            result := fieldbyname('conta').asInteger;
            close;
        end;
end;

function TDMFinanceiro.ApagarTitulo(Titulo: integer): boolean;
var sDep: string;
    bValido: boolean;
begin
    result := true;

    with Q_ComandoSQL do
        begin
            close;
            SQL.Text := 'select deposito from depositostitulos ' +
                'where titulo = :titulo ';
            Params[0].AsInteger := Titulo;
            Open;
            disablecontrols;
            while not eof do
                begin
                    sDep := sDep + fields[0].AsString + ',';
                    Next;
                end;
            enablecontrols;
            sDep := Copy(sDep, 1, length(sDep) - 1);
            {Verificando se este dep�sito foi utilizado para pagar apenas este t�tulo}
            if sDep <> '' then
                begin
                    close;
                    sql.text := 'Select Titulo From DepositosTitulos ' +
                        'Where Deposito IN (' + sDep + ')';
                    open;
                    bValido := true;
                    disablecontrols;
                    while not eof do
                        begin
                            if fields[0].AsInteger <> Titulo then
                                begin
                                    bValido := false;
                                    break;
                                end;
                            Next;
                        end;
                    enablecontrols;
                    result := bValido;
                    if not bValido then
                        Exit;
                end;
            {Exclus�o do T�tulo}
            Close;
            SQL.Text := 'Delete from TitulosAReceber ' +
                'Where ID = :ID ';
            Params[0].AsInteger := Titulo;
            ExecSQL;
            {Delete from depositos}
            Close;
            SQL.Text := 'Delete from DepositosTitulos ' +
                'Where Titulo = :Titulo';
            Params[0].AsInteger := Titulo;
            ExecSQL;
            if sDep <> '' then
                begin
                    {Delete from depositos}
                    Close;
                    SQL.Text := 'Delete from Depositos ' +
                        'Where Deposito IN (' + sDep + ')';
                    ExecSQL;
                    {Delete from depositosdoc}
                    Close;
                    SQL.Text := 'Delete from DepositosDoc ' +
                        'Where Deposito IN (' + sDep + ')';
                    ExecSQL;
                    {Delete from Transa��es}
                    Close;
                    SQL.Text := 'Delete from Transacoes ' +
                        'Where IDGerador IN (' + sDep + ')';
                    ExecSQL;
                    {Delete from Transa��esCr�ditos}
                    Close;
                    SQL.Text := 'Delete from TransacoesCreditos ' +
                        'Where IDGerador IN (' + sDep + ')';
                    ExecSQL;
                end;
            CancelarLancamentos(IntToStr(Titulo));
        end;

end;

function TDMFinanceiro.ApagarDuplicata(Duplicata: integer): boolean;
var sRet: string;
    bValido: boolean;
begin
    result := true;

    with Q_ComandoSQL do
        begin
            close;
            SQL.Text := 'select retirada from retiradasduplicatas ' +
                'where duplicata = :titulo ';
            Params[0].AsInteger := Duplicata;
            Open;
            disablecontrols;
            while not eof do
                begin
                    sRet := sRet + fields[0].AsString + ',';
                    Next;
                end;
            enablecontrols;
            sRet := Copy(sRet, 1, length(sRet) - 1);
            {Verificando se este dep�sito foi utilizado para pagar apenas este t�tulo}
            if sRet <> '' then
                begin
                    close;
                    sql.text := 'Select Duplicata From RetiradasDuplicatas ' +
                        'Where Retirada IN (' + sRet + ')';
                    open;
                    bValido := true;
                    disablecontrols;
                    while not eof do
                        begin
                            if fields[0].AsInteger <> Duplicata then
                                begin
                                    bValido := false;
                                    break;
                                end;
                            Next;
                        end;
                    enablecontrols;
                    result := bValido;
                    if not bValido then
                        Exit;
                end;

            {Exclus�o do Duplicatas}
            Close;
            SQL.Text := 'Delete from DuplicatasAPagar ' +
                'Where ID = :ID ';
            Params[0].AsInteger := Duplicata;
            ExecSQL;
            {Delete from RetiradasDuplicatas}
            Close;
            SQL.Text := 'Delete from RetiradasDuplicatas ' +
                'Where Duplicata = :Titulo';
            Params[0].AsInteger := Duplicata;
            ExecSQL;
            if sRet <> '' then
                begin
                    {Delete from Retiradas}
                    Close;
                    SQL.Text := 'Delete from Retiradas ' +
                        'Where Retirada IN (' + sRet + ')';
                    ExecSQL;
                    {Delete from RetiradasDoc}
                    Close;
                    SQL.Text := 'Delete from RetiradasDoc ' +
                        'Where Retirada IN (' + sRet + ')';
                    ExecSQL;
                    {Delete from Transa��es}
                    Close;
                    SQL.Text := 'Delete from Transacoes ' +
                        'Where IDGerador IN (' + sRet + ')';
                    ExecSQL;
                    {Delete from Transa��esCr�ditos}
                    Close;
                    SQL.Text := 'Delete from TransacoesCreditos ' +
                        'Where IDGerador IN (' + sRet + ')';
                    ExecSQL;
                end;
            CancelarLancamentos(IntToStr(Duplicata));
        end;

end;

function TDMFinanceiro.getFormaPagamento(sFormaPagamento: string): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select formapagamento from formaspagamento ' +
                'where descricao = :FormaPagamento';
            parambyname('FormaPagamento').AsString := sFormaPagamento;
            open;
            result := fieldbyname('formapagamento').AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getTituloOperacao(Operacao: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select titulo from operacoesfinanceiras ' +
                'where operacao = :operacao';
            parambyname('operacao').AsInteger := Operacao;
            open;
            result := fieldbyname('titulo').AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.FazerFactory;
var sNome: string;
    IDDoc, i: integer;
begin
    with Q_SQL do
        begin
            sNome := getFavorecido(Favorecido);
            {Retirando Cheques das Contas}
            if sIDDoc <> '' then
                begin
                    Close;
                    SQL.Text :=
                        'Insert into transacoes ' +
                        '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                        '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                        'Select ' +
                        '     ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                        '     (-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :IDGerador, dd.IDDoc, :Hist, ' +
                        '     ''N'', :Fav, CURRENT_TIME, :Func, 24, d.pdv, d.empresa ' +
                        'From Depositos d, DepositosDoc dd ' +
                        'Where dd.IDDoc in (' + sIDDoc + ') and d.Deposito = dd.Deposito ';
                    SQL.Text := replace(SQL.Text, ':Fav', IntToStr(Favorecido));
                    SQL.Text := replace(SQL.Text, ':Func', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':IDGerador', IntToStr(Operacao));
                    SQL.Text := replace(SQL.Text, ':Hist', '''' + 'Factory' + '''');
                    ExecSQL;

                    {Cheques da Empresa}
                    AuditoriaFinanceira('Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 33, ' +
                        'null, ' +
                        '''DepositosDoc'',' +
                        'dd.Iddoc, ' +
                        'dd.Valor, ' +
                        IntToStr(Operacao) + ', ' +
                        '24,' +
                        '0 ' +
                        'From DepositosDoc dd where dd.IDDoc IN (' + sIDDoc + ')');

                    {Atualizando Flags em DepositosDoc}
                    Close;
                    SQL.Text := 'Update DepositosDoc ' +
                        '     set DataRetirada = :Data, Status = 55, LocalTitulo = ''' + sNome + ''', ' +
                        '     ContaAtual = 0, ForaDaEmpresa = ''S'' ' +
                        'Where IDDoc in (' + sIDDoc + ') ';
                    ParamByName('Data').AsDateTime := dData;
                    ExecSQL;

                end;

            {Terceiros}
            AuditoriaFinanceira('Select current_date, current_time, ' + IntToStr(DMProjeto.nFuncionario) + ', 33, ' +
                '''Cheques de Terceiros'', ' +
                '''OperacoesFinanceirasDet'',' +
                'od.OpDoc, ' +
                'od.Valor, ' +
                IntToStr(Operacao) + ', ' +
                '24,' +
                '0 ' +
                'From OperacoesFinanceirasDet od where od.Operacao = ' + IntToStr(Operacao) + ' and IDDoc = 0');

            for i := 1 to ContaStrings(sIDDoc, ',') do
                begin
                    IDDoc := StrToInt(SeparaStrings(sIDDoc, ',', i));
                    InserirOperacoesDoc(IDDoc, Operacao, 24, getFormaPagamentoDoc(IDDoc), 55, getValorDoc(IDDoc));
                end;

        end;
end;

function TDMFinanceiro.DescontarCheques(sCheques: string; ValorOperacao: Currency): integer;
var Operacao: integer;
begin
    with Q_SQL do
        begin
            {Lan�ando em Opera��es Financeiras}
            Operacao := DMProjeto.NextIDGlobal;

            Close;
            SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ValorJuros, ContaDestino, ContaOrigem, ValorDinheiro, Historico, Titulo, Usuario, pdv, empresa) ' +
                'Values ( ' +
                ':Operacao, 27, :Favorecido, Current_Date,:Valor,:Encargos, :Conta, :ContaOrigem, 0,''' + DMProjeto.getMsg(318) + ''',:Titulo,:Usuario, :pdv, :empresa)';
            ParamByName('Operacao').AsInteger := Operacao;
            ParamByName('Favorecido').AsInteger := -1;
            ParamByName('Valor').AsCurrency := ValorOperacao;
            ParamByName('Encargos').AsCurrency := 0;
            ParamByName('Conta').AsInteger := 0;
            ParamByName('Contaorigem').AsInteger := 0;
            ParamByName('Titulo').AsInteger := 0;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            ExecSQL;

            with Q_SQL2 do
                begin
                    close;
                    sql.text := 'select * from DepositosDoc where IDDoc IN (' + sCheques + ')';
                    open;
                    disablecontrols;
                    while not EOF do
                        begin
                            with Q_SQL do
                                begin
                                    Close;
                                    SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                        '(Operacao, NumCheque, Vencimento, Valor, Favorecido, IDDoc, ContaAtual, pdv, empresa) ' +
                                        'values ' +
                                        '(:Operacao, :NumCheque, :Vencimento, :Valor, :Favorecido, :IDDoc, :Conta, :pdv, :empresa) ';
                                    ParamByName('Operacao').AsInteger := Operacao;
                                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                    if q_sql2.fieldbyname('NumCheque').AsInteger = 0 then
                                        SQL.Text := replace(SQL.Text, ':NumCheque', 'null')
                                    else
                                        ParamByName('NumCheque').AsInteger := q_sql2.fieldbyname('NumCheque').AsInteger;
                                    ParamByName('Vencimento').AsDate := q_sql2.fieldbyname('Vencimento').AsDateTime;
                                    ParamByName('Valor').AsCurrency := q_sql2.fieldbyname('Valor').AsCurrency;
                                    ParamByName('Favorecido').AsInteger := 0;
                                    ParamByName('IDDoc').AsInteger := q_sql2.fieldbyname('IDDoc').AsInteger;
                                    ParamByName('Conta').AsInteger := q_sql2.fieldbyname('ContaAtual').AsInteger;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                                    ExecSQL;
                                    InserirOperacoesDoc(q_sql2.fieldbyname('IDDoc').AsInteger, Operacao, 27, q_sql2.fieldbyname('Formapagamento').AsInteger, 50, q_sql2.fieldbyname('Valor').AsCurrency);

                                end;
                            Next;
                        end;
                    enablecontrols;
                end;
            {Retirando os Cheques}
            Close;

            with Q_SQL3 do
                begin
                    Close;
                    SQL.Text := ' Insert into transacoes ' +
                        ' (Conta, Data, Valor, TipoTransacao, NumCheque, FormaPagamento, IDGerador, IDDoc, ' +
                        ' Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                        ' Select ' +
                        ' ContaAtual, (Select MovimentoCorrente from Contas where Conta = dd.ContaAtual), ' +
                        ' (-1) * dd.Valor, ''D'', dd.NumCheque, dd.FormaPagamento, :Operacao, dd.IDDoc, :Hist, ' +
                        ' ''N'', -1, CURRENT_TIME, :Func, 27, d.pdv , d.empresa ' +
                        ' From Depositos d, DepositosDoc dd ' +
                        ' Where dd.IDDoc in (' + sCheques + ') and d.Deposito = dd.Deposito ';
                    SQL.Text := replace(SQL.Text, ':Func', IntToStr(DMProjeto.nFuncionario));
                    SQL.Text := replace(SQL.Text, ':Operacao', IntToStr(Operacao));
                    SQL.Text := replace(SQL.Text, ':Hist', '''' + 'Cheques Descontados' + '''');

                    ExecSQL;
                end;

            {Dep�sito no Caixa Principal}
            Close;
            SQL.Text :=
                'Insert into transacoes ' +
                '    (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                '     Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) Values ' +
                '    (1, :Data, :Valor, ''C'', null, 1, :Operacao, 0, ''Cheques Descontados'', ''N'', -1,' +
                '    current_time, :Usuario, 27, :pdv, :empresa )';
            ParamByName('Operacao').AsInteger := Operacao;
            ParamByName('Data').AsDate := DMProjeto.dDataSistema;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('Valor').AsCurrency := ValorOperacao;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

            ExecSQL;

            {Atualizando Flag do Documento}
            Close;
            SQL.Text := 'update DepositosDoc ' +
                'set ForaDaEmpresa = ''S'', Status = 50, ContaAtual = 0 ' +
                'where iddoc IN (' + sCheques + ')';
            ExecSQL;

        end;
    result := Operacao;
end;

procedure TDMFinanceiro.getChequesEmLoja(sCheques: string = ''; bTodos: boolean = false);
begin
    with C_ChequesLoja do
        begin
            close;
            CommandText := 'Select dd.IDDoc, f.Nome, dd.Vencimento, dd.Valor, dd.NumCheque, b.Nome as NomeBanco, dd.contaatual ' +
                'From DepositosDoc dd inner join Depositos d on dd.deposito = d.deposito ' +
                'left join Favorecidos f on d.Favorecido = f.Favorecido ' +
                'left join Favorecidos b on dd.Banco = b.favorecido ' +
                'Where (:Conta and dd.Status = 3 and dd.ForaDaEmpresa = ''N'') ';
            if not bTodos then
                CommandText := replace(CommandText, ':Conta', 'dd.ContaAtual = ' + IntToStr(DMFinanceiro.nContaPadrao))
            else
                CommandText := replace(CommandText, ':Conta and', '');

            if sCheques <> '' then
                CommandText := CommandText + ' or (dd.Iddoc IN (' + sCheques + '))';
            Open;
        end;
end;

procedure TDMFinanceiro.InserirContasOperacao;
begin
    C_ContasOperacao.DisableControls;
    C_ContasOperacao.First;
    with Q_Transacoes do
        begin
            close;
            sql.text := 'DELETE FROM contasoperacao where IdGerador = :IdGerador ';
            parambyname('IDGerador').AsInteger := IDGerador;
            execsql;
            close;
            sql.text := 'insert into contasoperacao ' +
                '(ContaOperacao, Conta, IdGerador, Origem, Historico, ClienteRef, Valor, pdv, empresa) values ' +
                '(:ContaOperacao, :Conta, :IdGerador, :Origem, :Historico, :ClienteRef, :Valor, :pdv, :empresa)';
        end;
    while not C_ContasOperacao.EOF do
        begin
            with Q_Transacoes do
                begin
                    parambyname('ContaOperacao').AsInteger := DMProjeto.NextIDGlobal;
                    parambyname('Conta').AsInteger := C_ContasOperacao.FieldByName('Conta').AsInteger;
                    parambyname('IDGerador').AsInteger := IDGerador;
                    parambyname('Origem').AsInteger := Origem;
                    parambyname('Historico').AsString := C_ContasOperacao.FieldByName('Historico').AsString;
                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                    if C_ContasOperacao.FindField('ClienteRef') = nil then
                        parambyname('ClienteRef').AsInteger := 0
                    else
                        parambyname('ClienteRef').AsInteger := C_ContasOperacao.FieldByName('ClienteRef').AsInteger;
                    parambyname('Valor').AsCurrency := C_ContasOperacao.FieldByName('Valor').AsCurrency;
                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;

                    execsql;
                    close;
                end;
            C_ContasOperacao.Next;
        end;
    C_ContasOperacao.EnableControls;
end;

function TDMFinanceiro.ValidaContas;
begin
    result := false;
    if C_ContasOperacao.State in [dsEdit, dsInsert] then
        C_ContasOperacao.Post;
    {
     if C_ContasOperacao.RecordCount = 0 then begin
       DlgMsg.ShowMsg( 929, ['a conta de despesa']);
        exit;
      end;
    }
    with C_ContasOperacao do
        begin
            DisableControls;
            first;
            while not eof do
                begin
                    if (fieldbyname('conta').Isnull) or (fieldbyname('conta').asInteger = 0) then
                        begin
                            EnableControls;
                            DlgMsg.ShowMsg(929, [iif(DescFaltaConta = '', 'a Conta', DescFaltaConta)]);
                            exit;
                        end;
                    if (fieldbyname('valor').Isnull) or (fieldbyname('valor').asCurrency = 0) then
                        begin
                            EnableControls;
                            DlgMsg.ShowMsg(929, ['o valor']);
                            exit;
                        end;
                    if (fieldbyname('valor').asInteger < 0) then
                        begin
                            EnableControls;
                            DlgMsg.ShowMsg(929, ['o valor. (n�o pode ser negativo)']);
                            exit;
                        end;
                    Next;
                end;
            EnableControls;
        end;

    if TotalContas <> TotalOperacao then
        begin
            DlgMsg.ShowMsg(938, [formatfloat('###,##0.00', TotalOperacao - TotalContas)]);
            exit;
        end;
    result := true;
end;

procedure TDMFinanceiro.CarregarContasOperacao;
begin
    with Q_ComandoSQL do
        begin
            Close;
            Sql.text := 'select * from contasoperacao ' +
                'where idgerador = :id';
            params[0].asInteger := IDGerador;
            Open;
            First;
            C_ContasOperacao.EmptyDataSet;
            while not EOF do
                begin
                    if not (C_ContasOperacao.State in [dsInsert]) then
                        C_ContasOperacao.Append;
                    C_ContasOperacao.FieldByName('Conta').AsInteger := fieldbyname('Conta').AsInteger;
                    C_ContasOperacao.FieldByName('Historico').AsString := fieldbyname('Historico').AsString;
                    if C_ContasOperacao.FindField('ClienteRef') <> nil then
                        begin
                            C_ContasOperacao.FieldByName('ClienteRef').AsInteger := fieldbyname('ClienteRef').AsInteger;
                            C_ContasOperacao.FieldByName('NomeClienteRef').AsString := DMFinanceiro.getFavorecido(fieldbyname('ClienteRef').AsInteger);
                        end;
                    C_ContasOperacao.FieldByName('Valor').AsCurrency := fieldbyname('Valor').AsCurrency;
                    C_ContasOperacao.Post;
                    Next;
                end;
            Close;
        end;
end;

procedure TDMFinanceiro.CancelarLancamentos;
//var sLancamentos: string;
begin
    with Q_Contabil do
        begin
            Close;
            Sql.Text := 'execute procedure PP_CancelarLancamentos(''' + sIDGerador + ''')';
            ExecSQL;
            Close;
        end;
    {
      if pos(',',sIDGerador) > 0 then
        Q_Contabil.SQL.Text := 'select lancamento from lancamentos where idgerador in ('+sidgerador+')'
      else
        Q_Contabil.SQL.Text := 'select lancamento from lancamentos where idgerador = '+sidgerador;
      Q_Contabil.open;
      sLancamentos := '';
      while not Q_Contabil.eof do begin
        if sLancamentos <> '' then
          sLancamentos := sLancamentos + ',';
        sLancamentos := Q_Contabil.FieldByName('lancamento').asstring;
        Q_Contabil.next;
      end;

      //
      if sLancamentos <> '' then begin
        Q_Contabil.SQL.Text := 'delete from lancamentos where lancamento in ('+sLancamentos+')';
        Q_Contabil.execsql;
      end;
      //
      if sLancamentos <> '' then begin
        Q_Contabil.SQL.Text := 'delete from lancamentositens where lancamento in ('+sLancamentos+')';
        Q_Contabil.execsql;
      end;
    }
end;

function TDMFinanceiro.getContaPagar;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    if FormaPagamento = 0 then
        begin
            if Vencimento <= dData then
                FormaPagamento := 2
            else
                FormaPagamento := 3;
        end;
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select contapagar from FormasPagamento ' +
                'where formapagamento = :id';
            parambyname('ID').AsInteger := FormaPagamento;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getContaReceber;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    if FormaPagamento = 0 then
        begin
            if Vencimento <= dData then
                FormaPagamento := 2
            else
                FormaPagamento := 3;
        end;

    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select contareceber from FormasPagamento ' +
                'where formapagamento = :id';
            parambyname('ID').AsInteger := FormaPagamento;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getSituacaoDeposito(Deposito: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select situacao from Depositos ' +
                'where Deposito = :id';
            parambyname('ID').AsInteger := Deposito;
            open;
            result := fields[0].AsString;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getSituacaoOperacao(Operacao: integer): string;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select situacao from OperacoesFinanceiras ' +
                'where Operacao = :id';
            parambyname('ID').AsInteger := Operacao;
            open;
            result := fields[0].AsString;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getBancoConta(Conta: integer): integer;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select banco from contas ' +
                'where conta = :id';
            parambyname('ID').AsInteger := Conta;
            open;
            result := fields[0].AsInteger;
            close;
            Free;
        end;
end;

function TDMFinanceiro.ExcluirTransacoes(nIDGerador: integer): boolean;
begin
    Q_Aux.close;
    Q_Aux.SQL.text := 'delete from transacoes where idgerador = :id';
    Q_Aux.params[0].asinteger := nIDGerador;
    Q_Aux.ExecSQL;
end;

function TDMFinanceiro.SetStatus;
begin
    if Vencimento > DMProjeto.dDataSistema then
        result := 1
    else if Vencimento = DMProjeto.dDataSistema then
        result := 2
    else
        result := 3;
end;

function TDMFinanceiro.getVencimentoParcela(id: integer): TDateTime;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select vencimento from titulosareceber ' +
                'where id = :ID';
            parambyname('ID').AsInteger := id;
            open;
            result := fieldbyname('vencimento').AsDateTime;
            close;
            Free;
        end;
end;

function TDMFinanceiro.getVencimentoDuplicata(id: integer): TDateTime;
var Query: TIBQuery;
begin
    Query := TIBQuery.Create(self);
    with Query do
        begin
            DataBase := DMProjeto.DB_Projeto;
            close;
            SQL.Text := 'select vencimento from duplicatasapagar ' +
                'where id = :ID';
            parambyname('ID').AsInteger := id;
            open;
            result := fieldbyname('vencimento').AsDateTime;
            close;
            Free;
        end;
end;

procedure TDMFinanceiro.AjustaRecebimentoContas;
var
    nContaCredito, i, nQtde, nLancamento: integer;
begin
    nContaCredito := DMProjeto.ContaPadrao(13);

    nQtde := ContaStrings(sDepositos, ',');
    for i := 1 to nQtde do
        begin
            DMProjeto.Q_Contabil.close;
            DMProjeto.Q_Contabil.SQL.text := 'select lancamento from lancamentos where idgerador = :id';
            DMProjeto.Q_Contabil.params[0].asinteger := StrToInt(SeparaStrings(sDepositos, ',', i));
            DMProjeto.Q_Contabil.open;
            nLancamento := DMProjeto.Q_Contabil.FieldByName('lancamento').asinteger;
            //
            DMProjeto.Q_Contabil.close;
            DMProjeto.Q_Contabil.SQL.text := 'update lancamentositens set conta = :conta where lancamento = :id and flag_id = :nflag';
            DMProjeto.Q_Contabil.params[0].asinteger := nContaCredito;
            DMProjeto.Q_Contabil.params[1].asinteger := nLancamento;
            DMProjeto.Q_Contabil.params[2].asinteger := nIDSaida;
            DMProjeto.Q_Contabil.ExecSQL;
        end;
end;

function TDMFinanceiro.ExisteConta;
begin
    with q_sql do
        begin
            close;
            sql.text := 'select count(*) from contas where conta = :conta';
            params[0].asInteger := Conta;
            open;
            result := fields[0].AsInteger > 0;
            close;
        end;
end;

function TDMFinanceiro.ContabContasOperacao;
begin
    DMProjeto.Q_Contabil.close;
    DMProjeto.Q_Contabil.SQL.text := 'insert into contasoperacao(conta,valor,idgerador,origem, pdv, empresa) ' +
        'values (:conta,:valor,:idgerador,:origem, :pdv, :empresa)';
    DMProjeto.Q_Contabil.params[0].asinteger := nConta;
    DMProjeto.Q_Contabil.params[1].ascurrency := nValor;
    DMProjeto.Q_Contabil.params[2].asinteger := nID;
    DMProjeto.Q_Contabil.params[3].asinteger := nOrigem;
    DMProjeto.Q_Contabil.params[4].AsInteger := DMProjeto.nPDV;
    DMProjeto.Q_Contabil.params[5].AsInteger := DMPRojeto.nEmpresaLogada;
    DMProjeto.Q_Contabil.ExecSQL;
end;

function TDMFinanceiro.Reparcelamento;
var Operacao, IDParcela, i, Status, nParcela, nTotalParcelas: integer;
begin

    with Q_SQL do
        begin

            {Lan�ando em Opera��es Financeiras}
            Operacao := DMProjeto.NextIDGlobal;

            Close;
            SQL.Text := 'Insert into OperacoesFinanceiras ( ' +
                'Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ValorJuros, ValorRecebido, Floating, Historico, Usuario, pdv, empresa) ' +
                'Values ( ' +
                ':Operacao, 48, :Favorecido, :Data, :Valor, :ValorJuros, :ValorRecebido, :Floating, :Historico, :Usuario, :pdv, :empresa)';
            ParamByName('Operacao').AsInteger := Operacao;
            ParamByName('Favorecido').AsInteger := Favorecido;
            ParamByName('Data').AsDateTime := dtData;
            ParamByName('Valor').AsCurrency := ValorOperacao;
            ParamByName('ValorJuros').AsCurrency := Juros;
            ParamByName('ValorRecebido').AsCurrency := Descontos;
            ParamByName('Historico').AsString := sParcelas;
            ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
            ParamByName('Floating').AsInteger := Plano;
            ParamByName('PDV').AsInteger := DMProjeto.nPDV;
            ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
            ExecSQL;

            with C_NovasParcelasP do
                begin
                    disablecontrols;
                    first;
                    sTitulos := '';
                    nParcela := 1;
                    nTotalParcelas := RecordCount;
                    while not EOF do
                        begin

                            IDParcela := Conta_A_Receber(StrToIntDef(fieldbyname('parcela').asString,
                                nParcela),
                                fieldbyname('valor').asCurrency,
                                fieldbyname('vencimento').asDateTime,
                                dtData,
                                'Reparcelamento em ' + DateToStr(dtData),
                                Favorecido,
                                0, // Venda
                                'R:' + formatdatetime('mmyy', dtData) + ':' + formatfloat('00', nParcela) + '/' + formatfloat('00', nTotalParcelas),
                                48,
                                Operacao,
                                0, //Status
                                10, //Conta Receita
                                nTipoCobranca);

                            sTitulos := sTitulos + IntToStr(IDParcela) + ',';
                            with Q_SQL do
                                begin
                                    Close;
                                    SQL.Text := 'Insert into OperacoesFinanceirasDet ' +
                                        '(Operacao, Vencimento, Valor, Favorecido, IDDoc, ' +
                                        ' Vendedor, Juros, Obs, pdv, empresa) ' +
                                        'values ' +
                                        '(:Operacao, :Vencimento, :Valor, :Favorecido, :IDDoc, ' +
                                        ' :DataAntec, :ValorAntec, :Parcela, :pdv, :empresa) ';
                                    ParamByName('Operacao').AsInteger := Operacao;
                                    ParamByName('Vencimento').AsDate := C_NovasParcelasP.fieldbyname('Vencimento').AsDateTime;
                                    ParamByName('Valor').AsCurrency := C_NovasParcelasP.fieldbyname('Valor').AsCurrency;
                                    ParamByName('Favorecido').AsInteger := Favorecido;
                                    ParamByName('IDDoc').AsInteger := IDParcela;
                                    ParamByName('DataAntec').AsInteger := iif(C_NovasParcelasP.fieldbyname('DataAntecipacao').IsNull, 0, C_NovasParcelasP.fieldbyname('DataAntecipacao').Value);
                                    ParamByName('ValorAntec').AsCurrency := C_NovasParcelasP.fieldbyname('ValorDescAntecipado').Value;
                                    ParamByName('Parcela').AsString := C_NovasParcelasP.fieldbyname('Parcela').AsString;
                                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                    ExecSQL;
                                end;
                            Next;
                            inc(nParcela);
                        end;
                    sTitulos := Copy(sTitulos, 1, length(sTitulos) - 1);
                    enablecontrols;
                end;

            for i := 1 to ContaStrings(sParcelas, ',') do
                begin
                    close;
                    sql.text := 'select valor, faltareceber from titulosareceber ' +
                        'where ID = :id';
                    parambyname('id').AsInteger := StrToInt(SeparaStrings(sParcelas, ',', i));
                    open;
                    if (fieldbyname('valor').AsCurrency - fieldbyname('faltareceber').AsCurrency) > 0 then
                        Status := 55
                    else
                        Status := -2;
                    close;
                    sql.text := 'update titulosareceber set status = ' + IntToStr(Status) +
                        'where id = ' + SeparaStrings(sParcelas, ',', i);
                    nTentativas := 0;
                    repeat
                        try
                            ExecSQL;
                            Close;
                            nTentativas := 3;
                            bGravouSaida := True;
                        except
                            Inc(nTentativas);
                            Sleep(20);
                        end;
                    until nTentativas = 3;
                    if not (bGravouSaida) then
                        DlgMsg.ShowMsg(50, [pChar('Erro ao tentar gravar, Favor anotar este erro:!' + #13 + #13 + ' TDMFinanceiro.Reparcelamento ')]);

                end;
            close;
        end;
    result := Operacao;
end;

function TDMFinanceiro.CalculaJuros(Valor, Juros: Currency; Dias: integer): Currency;
begin
    result := Trunc((((Juros / 100) / 30) * (Dias + 1)) * Valor) +
        Trunc(Frac((((Juros / 100) / 30) * (Dias + 1)) * Valor) * 100) / 100;
end;

procedure TDMFinanceiro.LancamentoDeTroco(Conta: integer; Data: TDateTime; Valor: Currency; Favorecido, IDGerador, TipoOperacao: integer; bRecebimento: boolean = true);
begin
    try
        with Q_SQL do
            begin
                close;
                SQL.Text := 'Insert into transacoes ' +
                    ' (Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento, IDGerador, IDDoc, ' +
                    ' Historico, FromBanco, Favorecido, Hora, Usuario, TipoOperacao, pdv, empresa) ' +
                    'Values ' +
                    ' (:Conta, :Data, :Valor, :Tipo, null, 1, :Retirada, 0, ' +
                    ' :Historico, ''N'', :Favorecido, CURRENT_TIME, :Usuario, :TipoOperacao, :pdv, :empresa ) ';
                ParamByName('Conta').AsInteger := Conta;
                ParamByName('Data').AsDateTime := Data;
                ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                if bRecebimento then
                    begin
                        ParamByName('Tipo').AsString := 'D';
                        ParamByName('Valor').AsCurrency := -Valor;
                    end
                else
                    begin
                        ParamByName('Tipo').AsString := 'C';
                        ParamByName('Valor').AsCurrency := Valor;
                    end;
                ParamByName('Retirada').AsInteger := IDGerador;
                ParamByName('TipoOperacao').AsInteger := TipoOperacao;
                ParamByName('Historico').AsString := 'Troco';
                ParamByName('Favorecido').AsInteger := Favorecido;
                ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                ExecSQL;
                Close;
            end;
    except
        on E: Exception do ShowMessage(('Erro em TDMFinanceiro.LancamentoDeTroco ' + e.message));
    end;
end;

function TDMFinanceiro.getSaldoBeginBalance(Conta: integer): Currency;
begin
    //  if DMProjeto.Parametro('DataBeginBalance') = '' then
    //  	result := 0
    //  else begin
    with Q_SQL do
        begin
            close;
            SQL.Text := 'select valor from transacoes ' +
                'where conta = :conta and historico = ''begin balance''';
            //    	parambyname('data').asDate := DMProjeto.ConverteDataParametro(DMProjeto.Parametro('DataBeginBalance'));
            parambyname('conta').asInteger := Conta;
            open;
            result := fields[0].AsCurrency;
            close;
        end;
    //  end;
end;

function TDMFinanceiro.VerificaValidade(sValidade: string): boolean;
begin
    result := false;
    if length(sValidade) <> 5 then
        result := true
    else if EncodeDate(StrToInt(Copy(sValidade, 4, 5)), StrToInt(Copy(sValidade, 1, 2)), Day(LastMonthDay(EncodeDate(StrToInt(Copy(sValidade, 4, 5)), StrToInt(Copy(sValidade, 1, 2)), 1)))) < DMProjeto.dDataSistema then
        result := true;
end;

procedure TDMFinanceiro.IBEventos_FinanceiroEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
begin
    if EventName = 'EVENTO_CONTAS' then
        begin
            C_Contas.close;
            C_Contas.open;
            C_Contascx.close;
            C_Contascx.open;
            C_Contasbc.close;
            C_Contasbc.open;
            C_Contascxbc.close;
            C_Contascxbc.open;
            C_Contas.close;
            C_Contas.open;
            C_Contas.close;
            C_Contas.open;
        end
    else if EventName = 'EVENTO_FORMASPAGAMENTO' then
        begin
            C_CartoesCred.close;
            C_CartoesCred.open;
            C_CartoesBus.close;
            C_CartoesBus.open;
            C_OutrasForma.close;
            C_OutrasForma.open;
        end;
end;

function TDMFinanceiro.CreditarEmContaChequeEletronico(dFinanceiro, dSistema: TDateTime): Currency;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text :=
                ' Insert into Transacoes (Conta,ContaOrigem,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                ' Situacao, Historico, Favorecido, Usuario, Hora, TipoOperacao, pdv, empresa) ' +
                ' Select fp.contaliberacao, dd.ContaAtual, Current_Date, ' +
                ' dd.Valor*-1, ''D'', dd.NumCheque, dd.formapagamento, dd.deposito, ' +
                ' dd.iddoc, null, fp.descricao, fp.fornecedor, ' + IntToStr(DMProjeto.nFuncionario) + ', ' +
                ' Current_Time, 53, dd.pdv, dd.empresa ' +
                ' From DepositosDoc dd ' +
                ' inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                ' Where dd.Vencimento > :dFinanceiro and ((dd.Vencimento + fp.carenciacredito) <= :dSistema) ' +
                ' and dd.Status < 70 and dd.DataRetirada is null and fp.Especie = 2 ';
            ParamByName('dFinanceiro').AsDateTime := dFinanceiro;
            ParamByName('dSistema').AsDateTime := dSistema;
            ExecSQL;
            if RowsAffected > 0 then
                begin
                    Close;
                    SQL.Text :=
                        ' select fp.formapagamento, fp.Descricao, fp.contaliberacao, fp.fornecedor, fp.CarenciaCredito, ' +
                        ' sum(dd.Valor) as Total, sum(dd.Valor*(fp.Encargos/100)) as Encargos ' +
                        ' From DepositosDoc dd inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                        ' Where dd.Vencimento > :dFinanceiro and ((dd.Vencimento + fp.carenciacredito) <= :dSistema) ' +
                        ' and dd.Status < 70 and dd.DataRetirada is null and fp.Especie = 2 ' +
                        ' Group by fp.formapagamento, fp.Descricao, fp.contaliberacao, ' +
                        ' fp.fornecedor, fp.CarenciaCredito ';
                    ParamByName('dFinanceiro').AsDateTime := dFinanceiro;
                    ParamByName('dSistema').AsDateTime := dSistema;
                    Open;
                    while not EOF do
                        begin
                            with Q_SQL2 do
                                begin
                                    {Cr�dito}
                                    Close;
                                    SQL.Text := 'Insert into Transacoes ' +
                                        '(Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                                        'Historico, Favorecido, Usuario, Hora, TipoOperacao, pdv, empresa) ' +
                                        'Values ' +
                                        '(:Conta,:Data,:Valor,''C'',0,:ForPag,0, 0, ' +
                                        ':Historico, :Favorecido, :Usuario, Current_Time, 53, :pdv, :empresa)';
                                    ParamByName('Conta').AsInteger := Q_SQL.FieldByName('ContaLiberacao').AsInteger;
                                    ParamByName('Data').AsDateTime := dFinanceiro;
                                    ParamByName('Valor').AsCurrency := Q_SQL.FieldByName('Total').AsCurrency;
                                    ParamByName('ForPag').AsInteger := Q_SQL.FieldByName('FormaPagamento').AsInteger;
                                    ParamByName('Historico').AsString := DMProjeto.getCampoTabela('TiposOrigens', 'Origem', 'Descricao', 53);
                                    ParamByName('Favorecido').AsInteger := Q_SQL.FieldByName('Fornecedor').AsInteger;
                                    ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                    ExecSQL;
                                    {Encargos}
                                    Close;
                                    SQL.Text := 'Insert into Transacoes ' +
                                        '(Conta,Data,Valor,TipoTransacao,NumCheque,FormaPagamento,IDGerador, IDDoc, ' +
                                        'Historico, Favorecido, Usuario, Hora, TipoOperacao, pdv, empresa) ' +
                                        'Values ' +
                                        '(:Conta,:Data,:Valor,''D'',0,:ForPag,0, 0, ' +
                                        ':Historico, :Favorecido, :Usuario, Current_Time, 53, :pdv, :empresa)';
                                    ParamByName('Conta').AsInteger := Q_SQL.FieldByName('ContaLiberacao').AsInteger;
                                    ParamByName('Data').AsDateTime := dFinanceiro;
                                    ParamByName('Valor').AsCurrency := Q_SQL.FieldByName('Encargos').AsCurrency * -1;
                                    ParamByName('ForPag').AsInteger := Q_SQL.FieldByName('FormaPagamento').AsInteger;
                                    ParamByName('Historico').AsString := DMProjeto.getCampoTabela('TiposOrigens', 'Origem', 'Descricao', 53);
                                    ParamByName('Favorecido').AsInteger := Q_SQL.FieldByName('Fornecedor').AsInteger;
                                    ParamByName('Usuario').AsInteger := DMProjeto.nFuncionario;
                                    ParamByName('PDV').AsInteger := DMProjeto.nPDV;
                                    ParamByName('EMPRESA').asInteger := DMPRojeto.nEmpresaLogada;
                                    ExecSQL;
                                end;
                            Next;
                        end;
                end;
            Close;
            SQL.Text :=
                ' Update DepositosDoc dd Set dd.DataRetirada = :dSistema ' +
                ' Where dd.Vencimento > :dFinanceiro and dd.Vencimento <= :dSistema ' +
                ' and dd.Status < 70 and dd.DataRetirada is null and ' +
                ' (select especie from formaspagamento where formapagamento = dd.formapagamento) = 2';
            ParamByName('dFinanceiro').AsDateTime := dFinanceiro;
            ParamByName('dSistema').AsDateTime := dSistema;
            ExecSQL;
        end;
end;

procedure TDMFinanceiro.C_ChequesDevDESPESASChange(Sender: TField);
begin
    C_ChequesDevTotal.Value := C_ChequesDevValor.Value + C_ChequesDevDespesas.Value + C_ChequesDevEncargos.Value;
end;

procedure TDMFinanceiro.C_ChequesDevCalcFields(DataSet: TDataSet);
begin
    C_ChequesDevTotal.Value := C_ChequesDevValor.Value + C_ChequesDevDespesas.Value + C_ChequesDevEncargos.Value;
end;

function TDMFinanceiro.getSaldoContas(dDataInicial: TDateTime): string;
var sDados: string;
begin
    sDados := '';
    with Q_SQL do
        begin
            close;
            sql.text := 'select conta, descricao from contas ' +
                'where tipoconta in (1,2) and desativado = ''N'' ' +
                'order by tipoconta, descricao';
            open;
            while not EOF do
                begin
                    sDados := CExp(sDados, ';') +
                        fieldbyname('Descricao').AsString + '=' +
                        formatfloat('#,###,##0.00', DMFinanceiro.SaldoConta(fieldbyname('Conta').AsInteger, dDataInicial)) + '=' +
                        formatfloat('#,###,##0.00', DMFinanceiro.SaldoConta(fieldbyname('Conta').AsInteger, DMProjeto.dDataSistema));
                    Next;
                end;
            Close;
            result := sDados;
        end;
end;

function TDMFinanceiro.Invoices;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_INVOICES';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Total').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.Recebimentos;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_RECEBIMENTOS';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Valor').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.Compras;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_COMPRAS';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Total').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.Pagamentos;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_PAGAMENTOS';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Valor').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.ParcelasAReceber;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_PARCELASARECEBER';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Saldo').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.ContasAPagar;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_CONTASAPAGAR';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Saldo').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.ChequesACompensar;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_CHEQUESACOMPENSAR';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ParamByName('Conta').AsInteger := Conta;
            ExecProc;
            result := parambyname('Total').AsCurrency;
            Close;
        end;
end;

function TDMFinanceiro.ChequesADepositar;
begin
    with DMProjeto.StoreProcedure do
        begin
            Close;
            StoredProcName := 'PP_CHEQUESADEPOSITAR';
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            ExecProc;
            result := parambyname('Total').AsCurrency;
            Close;
        end;
end;

procedure TDMFinanceiro.InvoicesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime; idTabela, idFormaPagamento: integer);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select Distinct s.numero, ' +
                'coalesce((select max(sa.numero) ' +
                'from saidas sx inner join saidasitens ss on sx.saida = ss.saida and sx.pdv = ss.pdv ' +
                'left join saidasitensmescla sm on ss.saidaitem = sm.saidaitem ' +
                'inner join saidasitens si on sm.saidaitem_original = si.saidaitem ' +
                'inner join saidas sa on si.saida = sa.saida ' +
                'where sx.saida = s.saida), '''') as pedido, ' +
                's.data, substr(c.nome, 1, 25) as cliente, ' +
                'substr(v.nome, 1, 25) as vendedor, count (*) as parcelas, sum(dd.valor) as vltotal ' +
                'from depositosdoc dd inner join depositostitulos dt on dd.deposito = dt.deposito ' +
                'inner join titulosareceber tr on dt.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
                'inner join saidas s on s.saida = tr.venda and s.empresa = tr.empresa and s.pdv = tr.pdv ' +
                'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                'inner join favorecidos c on s.favorecido = c.favorecido ' +
                'left join favorecidos v on v.favorecido = s.vendedor ' +
                'where(s.data >= :datai and s.data <= :dataf) and s.situacao = ''N'' and s.tabelapadrao = :tabela ' +
                'and fp.formapagamento = :forma ' +
                'group by s.data, s.numero, s.saida, dd.valor, s.total, fp.Descricao, c.nome, v.nome ' +
                'order by s.data asc, s.numero asc ';

            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            ParamByName('tabela').AsInteger := idTabela;
            ParamByName('forma').AsInteger := idFormaPagamento;
            Open;
        end;
end;

procedure TDMFinanceiro.TotalInvoicesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select fp.descricao, sum(dd.valor) as total ' +
                'from Depositos d inner join DepositosDoc dd on d.empresa = dd.empresa and d.pdv = dd.pdv and d.deposito = dd.deposito ' +
                'inner join depositostitulos dt on  d.empresa = dt.empresa and d.pdv = dt.pdv and d.deposito = dt.deposito ' +
                'inner join titulosareceber tr on dt.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
                'inner join saidas s on s.empresa = tr.empresa and s.pdv = tr.pdv and s.saida = tr.venda ' +
                'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                'where s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' ' +
                'group by fp.descricao order by 2 desc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
        end;
end;

procedure TDMFinanceiro.TotalInvoicesDuplicata(Query: TIBQuery; DataI, DataF: TDateTime);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select distinct tr.titulo, ' +
                'coalesce((select max(sa.numero) ' +
                'from saidas sx inner join saidasitens ss on sx.saida = ss.saida ' +
                'left join saidasitensmescla sm on ss.saidaitem = sm.saidaitem ' +
                'inner join saidasitens si on sm.saidaitem_original = si.saidaitem ' +
                'inner join saidas sa on si.saida = sa.saida ' +
                'where sx.saida = s.saida), '''') as pedido, ' +
                'dt.data, substr(v.nome, 1, 14) as Vendedor, substr(c.nome, 1, 14) as Cliente, fp.descricao, tr.valor, ' +
                'dt.valor as valorpago, ' +
                'dt.juros, tr.faltareceber, case when(tr.vencimento > dt.data) or (tr.faltareceber <= 0) then 0 ' +
                'else dt.data - tr.vencimento end as diasatraso ' +
                'from Depositos d inner join DepositosDoc dd on d.empresa = dd.empresa and d.pdv = dd.pdv and d.deposito = dd.deposito ' +
                'inner join depositostitulos dt on d.empresa = dt.empresa and d.pdv = dt.pdv and d.deposito = dt.deposito ' +
                'inner join titulosareceber tr on dt.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
                'left join saidas s on s.empresa = tr.empresa and s.pdv = tr.pdv and s.saida = tr.venda ' +
                'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento ' +
                'left join favorecidos v on v.favorecido = s.vendedor ' +
                'left join favorecidos c on c.favorecido = tr.cliente ' +
                'where dt.data >= :datai and dt.data <= :dataf ' +
                'and dt.status < 70 and tr.tipocobranca = 2 ' +
                'group by tr.titulo, s.saida, d.deposito, dt.data, v.nome, c.nome, fp.Descricao, tr.valor, dt.valor, dt.juros, tr.faltareceber, 11 ' +
                'order by d.deposito asc, dt.data asc, tr.titulo asc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
        end;
end;

procedure TDMFinanceiro.TotalInvoicesCanceladas(Query: TIBQuery; DataI, DataF: TDateTime);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select s.numero, ' +
                'coalesce((select max(sa.numero) ' +
                'from saidas sx inner join saidasitens ss on sx.saida = ss.saida and sx.pdv = ss.pdv ' +
                'left join saidasitensmescla sm on ss.saidaitem = sm.saidaitem ' +
                'inner join saidasitens si on sm.saidaitem_original = si.saidaitem ' +
                'inner join saidas sa on si.saida = sa.saida ' +
                'where sx.saida = s.saida), '''') as pedido, ' +
                's.data, substr(f.nome, 1, 20) as cliente, substr(v.nome, 1, 20) as vendedor, cast(s.totalitens as numeric(15, 2)) as totalitens, ' +
                'cast(abs(s.desconto) as numeric(15, 2)) as desconto, cast(s.total as numeric(15, 2)) as total ' +
                'from saidas s ' +
                'inner join favorecidos f on s.favorecido = f.favorecido ' +
                'left join favorecidos v on s.vendedor = v.favorecido ' +
                'where s.data >= :datai and s.data <= :dataf ' +
                'and upper(s.situacao) = ''C'' and s.tipopadrao = 1 ' +
                'order by s.data asc, s.numero asc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
        end;

end;

procedure TDMFinanceiro.TotalPorVendedor(Query: TIBQuery; DataI, DataF: TDateTime);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select v.codigo, v.nome, count(*) as quantidade, sum(dd.valor) as total ' +
                'from saidas s inner join favorecidos v on s.vendedor = v.favorecido ' +
                'inner join titulosareceber tr on s.saida = tr.venda and s.empresa = tr.empresa and tr.pdv = s.pdv ' +
                'inner join depositostitulos dt on tr.id = dt.titulo and tr.empresa = dt.empresa and tr.pdv = dt.pdv ' +
                'inner join depositos d on dt.deposito = d.deposito and dt.empresa = d.empresa and dt.pdv = d.pdv ' +
                'inner join depositosdoc dd on dt.deposito = dd.deposito and dt.empresa = dd.empresa and dt.pdv = dd.pdv ' +
                'where s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' ' +
                'group by v.codigo, v.nome order by 4 desc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
        end;
end;

function TDMFinanceiro.TotalGeralVendedor(Query: TIBQuery; DataI, DataF: TDateTime): string;
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select coalesce(count(*), 0) as quantidade, coalesce(sum(dd.valor), 0) as totalgeral ' +
                'from saidas s inner join favorecidos v on s.vendedor = v.favorecido ' +
                'inner join titulosareceber tr on s.saida = tr.venda and s.empresa = tr.empresa and tr.pdv = s.pdv ' +
                'inner join depositostitulos dt on tr.id = dt.titulo and tr.empresa = dt.empresa and tr.pdv = dt.pdv ' +
                'inner join depositos d on dt.deposito = d.deposito and dt.empresa = d.empresa and dt.pdv = d.pdv ' +
                'inner join depositosdoc dd on dt.deposito = dd.deposito and dt.empresa = dd.empresa and dt.pdv = dd.pdv ' +
                'where s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
            Result := QueryToString(Query);
        end;
end;

procedure TDMFinanceiro.ItensPorGrupo(Query: TIBQuery; DataI, DataF: TDateTime; tipoitem, idGrupo: integer);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select ii.codigo, ii.descricao, f.descricao as fabricante, cast(sum(si.quantidade) as numeric (15, 3)) as quantidade, ' +
                'cast(sum(si.subtotalitem) as numeric (15, 2)) as total ' +
                'from saidas s inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                'inner join itens ii on si.item = ii.item inner join grupos g on ii.grupo = g.grupo ' +
                'inner join fabricantes f on ii.fabricante = f.fabricante ' +
                'where s.data >= :datai and s.data <= :dataf and s.tipopadrao = 1 and ii.tipoitem = :tipoitem and s.situacao = ''N'' ' +
                'and g.grupo = :grupo group by g.grupo, g.descricaogrupo, ii.codigo, ii.descricao, f.descricao order by g.grupo asc, 4 desc, 3 desc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            ParamByName('tipoitem').AsInteger := tipoitem;
            ParamByName('grupo').AsInteger := idGrupo;
            Open;
        end;
end;

procedure TDMFinanceiro.TransacoesPorFormaPagamento(Query: TIBQuery; DataI, DataF: TDateTime);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'select tr.titulo, t.data, d.historico, cast(t.valor as numeric (15, 2)) as total ' +
                'from transacoes t inner join depositos d on t.idgerador = d.deposito and t.empresa = d.empresa and t.pdv = d.pdv ' +
                'inner join depositostitulos dt on d.deposito = dt.deposito and d.empresa = dt.empresa and d.pdv = dt.pdv ' +
                'inner join titulosareceber tr on dt.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
                'inner join saidas s on tr.venda = s.saida and tr.empresa = s.empresa and tr.pdv = s.pdv ' +
                'where (t.data >= :datai and t.data <= :dataf) and upper(s.situacao) = ''N'' and upper(t.tipotransacao) = ''C'' ' +
                'and s.tipopadrao = 1 and t.formapagamento = 1 order by s.data asc, s.numero asc ';
            ParamByName('datai').AsDateTime := (DataI);
            ParamByName('dataf').AsDateTime := (DataF);
            Open;
        end;
end;

procedure TDMFinanceiro.InvoicesPorCliente(Query: TIBQuery; DataI, DataF: TDateTime; Cliente: integer = 0);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'Select first :Cliente nome, total from PP_InvoicesPorCliente (:DataI, :DataF, 0) order by total desc';
            ParamByName('Cliente').AsInteger := Cliente;
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            Open;
        end;
end;

procedure TDMFinanceiro.InvoicesPorItem(Query: TIBQuery; DataI, DataF: TDateTime; Item: integer = 0);
begin
    with Query do
        begin
            Close;
            SQL.Text := 'Select first :Item descricao, fabricante, qtde, total from PP_InvoicesPorItem (:DataI, :DataF, 0) order by qtde desc';
            ParamByName('Item').AsInteger := Item;
            ParamByName('DataI').AsDateTime := (DataI);
            ParamByName('DataF').AsDateTime := (DataF);
            Open;
        end;
end;

function TDMFinanceiro.QueryToString(Query: TIBQuery): string;
var sLinha, sLinhas: string;
    i: integer;
begin
    with Query do
        begin
            DisableControls;
            First;
            sLinhas := '';
            while not EOF do
                begin
                    sLinha := '';
                    for i := 0 to FieldCount - 1 do
                        if fields[i].DataType in [ftFloat, ftBCD, ftCurrency] then
                            sLinha := CExp(sLinha, '=') + formatfloat('#,###,##0.00', Fields[i].AsCurrency)
                        else
                            sLinha := CExp(sLinha, '=') + Fields[i].AsString;
                    sLinhas := CExp(sLinhas, ';') + sLinha;
                    Next;
                end;
            EnableControls;
            Close;
            result := sLinhas;
        end;
end;

procedure TDMFinanceiro.TransferirTitulosParaCobranca(DiasAtraso: integer; sSelecionados: string = '');
var IDCliente, Cobranca: integer;
    DataMin: TDatetime;
    nTotal: Currency;
    sCPF_CNPJ: string;
begin
    (*	with Q_SQL do begin
       Close;
        SQL.Text := 'SELECT t.id, f.cpf_cnpj, f.nome, t.vencimento, t.faltareceber, t.cliente '+
               'FROM titulosareceber t '+
               'inner join favorecidos f on t.cliente = f.favorecido '+
               'WHERE t.vencimento >= :data and t.status = 3 '+
                    iif(sSelecionados<>'','and t.id IN ('+sSelecionados+') '+,'')+
               'ORDER BY t.cliente';
        ParamByName('Data').AsDateTime := DMProjeto.dDataSistemaAtual - DiasAtraso;
        Open;
        while not EOF do begin
         IDCliente := fieldbyname('cliente').AsInteger;
          sCPF_CNPJ := fieldbyname('CPF_CNPJ').AsString;
          DataMin  := 99999;
          nTotal    := 0;
          Cobranca := DMProjeto.NextIDGlobal;
          while (IDCLiente = fieldbyname('cliente').AsInteger) and (not EOF) do begin
           with Q_SQL2 do begin
             Close;
              Sql.Text := 'INSERT INTO COBRANCASDET (COBRANCA,TITULO,VALOR,VENCIMENTO,STATUS,DATAENTRADA,PRORROGACAO,VALORACERTADO) '+
                          'VALUES '+
                          '(:COBRANCA, :TITULO, :VALOR, :VENCIMENTO, 1, :DATAENTRADA, null, 0)';
              parambyname('cobranca').AsInteger 			:= Cobranca;
              parambyname('titulo').AsInteger 					:= FieldByName('ID').AsInteger;
              parambyname('valor').AsCurrency 					:= FieldByName('FaltaReceber').AsInteger;
              parambyname('vencimento').AsDatetime	:= FieldByName('Vencimento').AsDatetime;
              parambyname('dataentrada').AsDatetime:= DMProjeto.dDataSistemaAtual;
              ExecSQL;
              Close;
              SQL.Text := 'update titulosareceber '+
                          'set status = 6 '+
                          'where id = '+FieldByName('ID').AsString;
              ExecSQL;
            end;
            nTotal := nTotal + fieldbyname('faltareceber').AsCurrency;
            if DataMin > FieldByName('Vencimento').AsDatetime then
             DataMin := FieldByName('Vencimento').AsDatetime;
            with Q_SQL2 do begin
             close;
              sql.text := 'INSERT INTO COBRANCAS (COBRANCA,DATAENTRADA,CLIENTE,SALDO,PRIMEIROVENC,STATUS,CPF_CNPJ,PROXIMOCONTATO,DATAINICIOCOBRANCA,LIMITEMAXDESCONTO) '+
                          ' VALUES '+
                          '(:COBRANCA,:DATAENTRADA,:CLIENTE,:SALDO,:PRIMEIROVENC,:STATUS,:CPF_CNPJ,null,null,0)';
              parambyname('COBRANCA').AsInteger := Cobranca;
              parambyname('DATAENTRADA').AsDateTime := DMProjeto.dDataSistemaAtual;
              parambyname('CLIENTE').AsInteger := IDCliente;
              parambyname('SALDO').AsCurrency := nTotal;
              parambyname('PRIMEIROVENC').AsDateTime := DataMin;
              parambyname('STATUS').AsInteger := 1;
              parambyname('CPF_CNPJ').AsString := sCPF_CNPJ;
              ExecSQL;
            end;
            Next;
          end;
        end;
      end; *)
end;

function TDMFinanceiro.IntervaloParcelas(formapagamento: integer): integer;
begin
    with Q_SQL2 do
        begin
            close;
            SQL.Text := 'select intervaloparcelas from formaspagamento where formapagamento = :ID ';
            parambyname('ID').AsInteger := formapagamento;
            open;
            result := Fields[0].AsInteger;
        end;
end;

end.

