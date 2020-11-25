unit MDI_Projeto;

interface

uses
    Windows, MDI_PADRAO, ComCtrls, Controls, ToolWin, Menus, ImgList,
    TransEff, teTimed, teMasked, teBlock, teForm, AppEvnts, Forms, SysUtils,
    TS_ApplicationEvents, DlgMsg, LoginDialog, Dialogs, Classes, ExtCtrls,
    Variants, jpeg, StdCtrls, Graphics, ShellApi, IBEvents,
    teIntrlc, teBlend, teSlide, teCtrls, TS_EffectsPanel, TS_Label, TS_Shape,
    TS_MaxPanel, TS_Panel, dxfLabel, NMFtp, DateUtils, RegErro, UrlMon;

type
    TMDIProjeto = class(TMDIPadrao)
        LembretesFinanceiros1: TMenuItem;
        Contas1: TMenuItem;
        TabelasAuxiliares1: TMenuItem;
        TextosDiversos1: TMenuItem;
        TiposdeAtividade1: TMenuItem;
        TiposdeEntrega1: TMenuItem;
        TiposdeEmpresa1: TMenuItem;
        Taxs1: TMenuItem;
        AgnciasdeTax1: TMenuItem;
        Factory1: TMenuItem;
        Cargos1: TMenuItem;
        Bancos1: TMenuItem;
        Paises1: TMenuItem;
        Estados1: TMenuItem;
        Idiomas1: TMenuItem;
        N8: TMenuItem;
        N9: TMenuItem;
        Usurios1: TMenuItem;
        Funcionrios1: TMenuItem;
        Funcionrios2: TMenuItem;
        N7: TMenuItem;
        ProduoSimples1: TMenuItem;
        N10: TMenuItem;
        ItensdePayroll1: TMenuItem;
        Payroll1: TMenuItem;
        Itens1: TMenuItem;
        Itens2: TMenuItem;
        N11: TMenuItem;
        AjustedeInventrio1: TMenuItem;
        ReajustedePreos1: TMenuItem;
        CalcularEstoqueMnimo1: TMenuItem;
        N12: TMenuItem;
        AberturadeBalano1: TMenuItem;
        DigitaodasContagens1: TMenuItem;
        FecharBalano1: TMenuItem;
        N13: TMenuItem;
        Unidades1: TMenuItem;
        Grupos1: TMenuItem;
        Fabricantes1: TMenuItem;
        TabelasdePreco1: TMenuItem;
        Caixa: TMenuItem;
        Clientes1: TMenuItem;
        AbrirCaixa: TMenuItem;
        RepassesParciaisdoCaixa: TMenuItem;
        FecharCaixa: TMenuItem;
        Clientes2: TMenuItem;
        N16: TMenuItem;
        Invoices1: TMenuItem;
        SalesOrder1: TMenuItem;
        Estimates1: TMenuItem;
        N17: TMenuItem;
        Parcelas1: TMenuItem;
        RecebimentosCrdigos1: TMenuItem;
        Parcelas2: TMenuItem;
        N19: TMenuItem;
        FazerFactory1: TMenuItem;
        TiposdeOperaes1: TMenuItem;
        PlanosdePagamento1: TMenuItem;
        FormasdePagamento1: TMenuItem;
        Fornecedores1: TMenuItem;
        N22: TMenuItem;
        Fornecedores2: TMenuItem;
        PagamentodeContas1: TMenuItem;
        PagamentoRpido1: TMenuItem;
        EscreverCheque1: TMenuItem;
        AgendamentodeDespesas1: TMenuItem;
        N24: TMenuItem;
        Financeiro1: TMenuItem;
        Relatrios1: TMenuItem;
        FazerDepsitosemBanco1: TMenuItem;
        TransferirDinheri1: TMenuItem;
        ConsultarChequesRecebidos1: TMenuItem;
        ApresentarCartesdeCrdito1: TMenuItem;
        ApresentarTickets1: TMenuItem;
        ApresentarConvnios1: TMenuItem;
        N4: TMenuItem;
        N25: TMenuItem;
        FluxodeCaixa1: TMenuItem;
        CaixaPrincipal1: TMenuItem;
        PosiodosCaixas1: TMenuItem;
        N26: TMenuItem;
        PagarCartodeCrdito1: TMenuItem;
        ChequesPendentesdeImpresso1: TMenuItem;
        ControlarChequesPagos1: TMenuItem;
        ConciliaoBancria1: TMenuItem;
        Financeiro2: TMenuItem;
        Recebimentos1: TMenuItem;
        Pagamentos1: TMenuItem;
        N28: TMenuItem;
        Statements1: TMenuItem;
        Clientes3: TMenuItem;
        Fornecedores3: TMenuItem;
        N30: TMenuItem;
        Itens3: TMenuItem;
        Vendas1: TMenuItem;
        ParcelasaReceber1: TMenuItem;
        ContasaPagar1: TMenuItem;
        ExtratodeContas1: TMenuItem;
        N31: TMenuItem;
        DepsitodeCheques1: TMenuItem;
        TransfernciasdeDinheiro1: TMenuItem;
        ChequesDevolvidos1: TMenuItem;
        ChequesnaEmpresa1: TMenuItem;
        ClientescomDevolues1: TMenuItem;
        SaldodeCheques1: TMenuItem;
        SaldodosClientes1: TMenuItem;
        SaldodosFornecedores1: TMenuItem;
        Factory2: TMenuItem;
        Crditos1: TMenuItem;
        N32: TMenuItem;
        Auditoria2: TMenuItem;
        Recebimentos2: TMenuItem;
        N33: TMenuItem;
        ParcelasaReceber2: TMenuItem;
        ParcelasRecebidas1: TMenuItem;
        ParcelasemAtraso1: TMenuItem;
        ParcelasVencidasHoje1: TMenuItem;
        N34: TMenuItem;
        ChequesPrdatados1: TMenuItem;
        CartesaReceber1: TMenuItem;
        Pagamentos2: TMenuItem;
        N35: TMenuItem;
        ContasaPagar2: TMenuItem;
        ContasPagas1: TMenuItem;
        ContasVencendoHoje1: TMenuItem;
        ContasemAtraso1: TMenuItem;
        N36: TMenuItem;
        ChequesaCompensar1: TMenuItem;
        PagamentoscomCarto1: TMenuItem;
        PagamentoscomTEF1: TMenuItem;
        Listagem1: TMenuItem;
        AnlisedeCrdito1: TMenuItem;
        N37: TMenuItem;
        MelhoresemCompras1: TMenuItem;
        QueDeixaramdeComprar1: TMenuItem;
        N38: TMenuItem;
        Aniversariantes1: TMenuItem;
        Desativados1: TMenuItem;
        OramentosemAberto1: TMenuItem;
        SemMovimento1: TMenuItem;
        Listagem2: TMenuItem;
        AnlisedeCompra1: TMenuItem;
        PedidosemAberto1: TMenuItem;
        AcompanhamentodePedido1: TMenuItem;
        Listagem3: TMenuItem;
        Estoque1: TMenuItem;
        TabelasdePreo1: TMenuItem;
        N40: TMenuItem;
        ExtratodeSadas1: TMenuItem;
        ExtratodeEntradas1: TMenuItem;
        ExtratoCompleto1: TMenuItem;
        N41: TMenuItem;
        ResuprimentodeEstoque1: TMenuItem;
        ContasaPagar3: TMenuItem;
        RecalcularComissessobreasVendas1: TMenuItem;
        PedidodeCompra1: TMenuItem;
        ComprarItens1: TMenuItem;
        N49: TMenuItem;
        OrdensdeProduo1: TMenuItem;
        N50: TMenuItem;
        TiposdeOperaesdeEntrada1: TMenuItem;
        PlanosdePagamento2: TMenuItem;
        Entradas1: TMenuItem;
        Saidas1: TMenuItem;
        ConverterAgendamentos1: TMenuItem;
        Histricos1: TMenuItem;
        Payroll2: TMenuItem;
        ConfernciadeProdues1: TMenuItem;
        ListadePayrollporCliente1: TMenuItem;
        AcompanhamentodasOrdensdeProduo1: TMenuItem;
        ChequesPagos1: TMenuItem;
        ToolBar1: TToolBar;
        ToolButton1: TToolButton;
        ToolButton2: TToolButton;
        ToolButton3: TToolButton;
        ToolButton4: TToolButton;
        ToolButton5: TToolButton;
        ToolButton6: TToolButton;
        ToolButton8: TToolButton;
        ToolButton9: TToolButton;
        ToolButton10: TToolButton;
        ToolButton11: TToolButton;
        ToolButton13: TToolButton;
        ToolButton14: TToolButton;
        ToolButton15: TToolButton;
        ToolButton7: TToolButton;
        ToolButton16: TToolButton;
        ToolButton17: TToolButton;
        ToolButton18: TToolButton;
        ToolButton19: TToolButton;
        ToolButton20: TToolButton;
        ToolButton21: TToolButton;
        ToolButton24: TToolButton;
        ToolButton25: TToolButton;
        ToolButton12: TToolButton;
        ToolButton28: TToolButton;
        ToolButton29: TToolButton;
        ToolButton30: TToolButton;
        PagaraFuncionrios1: TMenuItem;
        GeradordeEtiquetas1: TMenuItem;
        ConsultadePreos1: TMenuItem;
        CRM1: TMenuItem;
        AprovarEstimates1: TMenuItem;
        N29: TMenuItem;
        EstimatesAprovadas1: TMenuItem;
        AcompanharItens1: TMenuItem;
        N53: TMenuItem;
        ConfiguraodoCabealhodosRelatrios1: TMenuItem;
        Reparcelamento1: TMenuItem;
        Inventrio1: TMenuItem;
        ParcelasaRecebercomDocGarantia1: TMenuItem;
        N1: TMenuItem;
        Qualidades1: TMenuItem;
        Zonas1: TMenuItem;
        GruposdeCliente1: TMenuItem;
        GraudeRelac1: TMenuItem;
        OutrasTabelas1: TMenuItem;
        N2: TMenuItem;
        RequisiesdeItens1: TMenuItem;
        FactoryEmpresa1: TMenuItem;
        FactoryEmpresa2: TMenuItem;
        N3: TMenuItem;
        Adiantamento1: TMenuItem;
        Payrolls1: TMenuItem;
        Comisses1: TMenuItem;
        Cheques1: TMenuItem;
        N5: TMenuItem;
        AnaliseparaCompra1: TMenuItem;
        N6: TMenuItem;
        ExtratodeSaidas1: TMenuItem;
        ExtratodeEntradas2: TMenuItem;
        CriarumanovaEmpresa1: TMenuItem;
        MensagensparaOperacoes1: TMenuItem;
        TermosparaContratos1: TMenuItem;
        AssistentedeTemplatesparaInvoices1: TMenuItem;
        LogdeErros1: TMenuItem;
        N15: TMenuItem;
        AbrirExplorer1: TMenuItem;
        ConfiguraesRegionais1: TMenuItem;
        ServioInterbase1: TMenuItem;
        N18: TMenuItem;
        Devolues1: TMenuItem;
        PayrollDetalhado1: TMenuItem;
        Au1: TMenuItem;
        ClientesePrestadoresdeServios1: TMenuItem;
        N20: TMenuItem;
        ReciboColetivo1: TMenuItem;
        Ocorrncias2: TMenuItem;
        SalesOrders1: TMenuItem;
        SalesOrderscomItens1: TMenuItem;
        Estimates2: TMenuItem;
        FaturamentodasSO1: TMenuItem;
        PropagandasparaVenda1: TMenuItem;
        SalerOrderRpida1: TMenuItem;
        RelatriodeCaixa1: TMenuItem;
        DevoluesdeItens1: TMenuItem;
        NomedaMquina1: TMenuItem;
        Itensmaisvendido1: TMenuItem;
        OsGrupodeItensmaisvendido1: TMenuItem;
        OsFabricantesmaisvendido1: TMenuItem;
        Conversao1: TMenuItem;
        IBEventos_Conversas: TIBEvents;
        Interlace: TInterlacedTransition;
        ToolButton22: TToolButton;
        ListagemdeFuncionrios1: TMenuItem;
        N56: TMenuItem;
        Alfa: TBlendTransition;
        Slide: TSlideTransition;
        Entradas2: TMenuItem;
        Sadas1: TMenuItem;
        Estimates3: TMenuItem;
        SalesOrders2: TMenuItem;
        PedidosPendentes1: TMenuItem;
        abelasdePreosII1: TMenuItem;
        lbUsuario: TTS_Label;
        Credirio1: TMenuItem;
        N51: TMenuItem;
        N52: TMenuItem;
        Agenda1: TMenuItem;
        RelatrioseImpressoras1: TMenuItem;
        ConsistnciadePedidos1: TMenuItem;
        N57: TMenuItem;
        MetasdeFaturamento1: TMenuItem;
        N58: TMenuItem;
        MetasdeFaturamento2: TMenuItem;
        MetasporVendedor1: TMenuItem;
        PerfisdeTiposdeOperaes1: TMenuItem;
        PerfisdeTabelasdePreos1: TMenuItem;
        PerfisdeTiposdeOperaes2: TMenuItem;
        ltimasEntradas1: TMenuItem;
        DefinirPromoes1: TMenuItem;
        OperadoresdeProduo1: TMenuItem;
        ItensemPromoo1: TMenuItem;
        ItensemFalta1: TMenuItem;
        ItememFalta1: TMenuItem;
        EntradasConsignadas1: TMenuItem;
        SadasConsignadas1: TMenuItem;
        GrficoABCdoEstoque1: TMenuItem;
        Almoxarifados1: TMenuItem;
        ransfernciasentreAlmoxarifados1: TMenuItem;
        N59: TMenuItem;
        N60: TMenuItem;
        ProduodeItens1: TMenuItem;
        AssistenteparaBalano1: TMenuItem;
        N61: TMenuItem;
        N62: TMenuItem;
        VendasdeProduto1: TMenuItem;
        OutrasTabelas2: TMenuItem;
        MensagensparaOperaes1: TMenuItem;
        Composio1: TMenuItem;
        ransfernciadeAlmoxarifados1: TMenuItem;
        N21: TMenuItem;
        OcorrnciasdeFornecedores1: TMenuItem;
        FreteNotadeConhecimento1: TMenuItem;
        EncerrantesdeCombustvel1: TMenuItem;
        EncerrantesdeCombustvel2: TMenuItem;
        NotaFiscalparaCupom1: TMenuItem;
        OutrasSadas1: TMenuItem;
        N63: TMenuItem;
        OutrasEntradas1: TMenuItem;
        N64: TMenuItem;
        Otica1: TMenuItem;
        iposdeLentes1: TMenuItem;
        iposdeMaterial1: TMenuItem;
        Cores1: TMenuItem;
        Importao1: TMenuItem;
        AcertodeConsignaes1: TMenuItem;
        AcertodeConsignaes2: TMenuItem;
        N65: TMenuItem;
        DevoluesdeConsignaes1: TMenuItem;
        N66: TMenuItem;
        Filiais1: TMenuItem;
        EntradasConsignadas2: TMenuItem;
        Carteiras1: TMenuItem;
        ItensConsignados1: TMenuItem;
        ransfernciadeDinheiroChequesdeoutraEmpresa1: TMenuItem;
        ParcelaseChequesaReceber1: TMenuItem;
        ContaseChequesaPagar1: TMenuItem;
        Consignaes1: TMenuItem;
        Consignaes2: TMenuItem;
        ListagemECF1: TMenuItem;
        Caixas1: TMenuItem;
        Mdicos1: TMenuItem;
        Boletos1: TMenuItem;
        Fornecedores4: TMenuItem;
        Clientes4: TMenuItem;
        ComprasdeProdutosnoPerodo1: TMenuItem;
        CheckExpress1: TMenuItem;
        GerarInventrio1: TMenuItem;
        GerarInventrio2: TMenuItem;
        AlterarInventrio1: TMenuItem;
        Veiculos1: TMenuItem;
        RomaneiodeCargas1: TMenuItem;
        N67: TMenuItem;
        Extratos1: TMenuItem;
        Listagem4: TMenuItem;
        Parcelas3: TMenuItem;
        Parcelas4: TMenuItem;
        Ajustes1: TMenuItem;
        N47: TMenuItem;
        ExecutarComando1: TMenuItem;
        N23: TMenuItem;
        N68: TMenuItem;
        N69: TMenuItem;
        ContatoPsVenda1: TMenuItem;
        N70: TMenuItem;
        Etiquetas1: TMenuItem;
        LotesaVencer2: TMenuItem;
        OsMaisVendidos1: TMenuItem;
        N71: TMenuItem;
        N72: TMenuItem;
        N73: TMenuItem;
        Devoluesvendas: TMenuItem;
        N74: TMenuItem;
        DevoluoFornecedores1: TMenuItem;
        OutrasSaidas1: TMenuItem;
        N76: TMenuItem;
        OutrasEntradas2: TMenuItem;
        N77: TMenuItem;
        ProdutosVendidosnoPeriodo1: TMenuItem;
        AssistnciaTecnica: TMenuItem;
        EntradaEquipamento1: TMenuItem;
        N79: TMenuItem;
        ChamadoTcnico1: TMenuItem;
        N80: TMenuItem;
        MarcasdeEquipamentos1: TMenuItem;
        ModelosdeEquipamentos1: TMenuItem;
        ipodoServios1: TMenuItem;
        N81: TMenuItem;
        StatusdoServiosChamados1: TMenuItem;
        ipoEquipamento1: TMenuItem;
        LocalizaoEquipamento1: TMenuItem;
        N78: TMenuItem;
        Laboratrio1: TMenuItem;
        abelasdePreosMultiUnidades1: TMenuItem;
        ClculodoPreodeCusto1: TMenuItem;
        Acessrios1: TMenuItem;
        Romaneio1: TMenuItem;
        abeladePreo1: TMenuItem;
        Vendas2: TMenuItem;
        Pedido1: TMenuItem;
        GerarRemessa1: TMenuItem;
        ReceberRetornodeBanco1: TMenuItem;
        N82: TMenuItem;
        BaixarTtulosManualmente1: TMenuItem;
        N75: TMenuItem;
        Consignaes3: TMenuItem;
        ConsignaesdeProdutos1: TMenuItem;
        DevoluesdeConsignaes2: TMenuItem;
        N83: TMenuItem;
        Consignaes4: TMenuItem;
        GruposdeComisses1: TMenuItem;
        PreodeVendaXPreodeCusto1: TMenuItem;
        RelaodePreos1: TMenuItem;
        IP1: TMenuItem;
        Servio1: TMenuItem;
        Equipamentos1: TMenuItem;
        ecnologias1: TMenuItem;
        Marcas1: TMenuItem;
        N84: TMenuItem;
        Agendamento1: TMenuItem;
        OrdensdeServio1: TMenuItem;
        Rotas1: TMenuItem;
        N86: TMenuItem;
        FichaCardex1: TMenuItem;
        Manuteno1: TMenuItem;
        Relatrios2: TMenuItem;
        ClientesEquipamentos2: TMenuItem;
        OrdensdeServio2: TMenuItem;
        Rotas2: TMenuItem;
        Acompanhamento2: TMenuItem;
        Fretes1: TMenuItem;
        OutrasTabelas3: TMenuItem;
        Cotaes1: TMenuItem;
        Localizaes1: TMenuItem;
        ChequesPorOperao1: TMenuItem;
        SugestodeCompras1: TMenuItem;
        N85: TMenuItem;
        PlanodeDespesas1: TMenuItem;
        EstoqueFiscal1: TMenuItem;
        AtualizarAcesso1: TMenuItem;
        N87: TMenuItem;
        ChamadosporFuncionrio1: TMenuItem;
        VendasdeCartesdeCredito1: TMenuItem;
        Mix1: TMenuItem;
        DefinirPontuaodeCompra1: TMenuItem;
        RelacaoPontos: TMenuItem;
        N89: TMenuItem;
        N90: TMenuItem;
        PedidosdeCompra1: TMenuItem;
        InformaesFinanceiras1: TMenuItem;
        OutrasEntradascomProdutos1: TMenuItem;
        N39: TMenuItem;
        LicitaoparaCompras1: TMenuItem;
        PermitirAutorizaes1: TMenuItem;
        ReposiodeEstoquedeGondolas1: TMenuItem;
        N91: TMenuItem;
        Autorizaes1: TMenuItem;
        ConsultaPreosPeloCliente1: TMenuItem;
        ApuraodosCaixas1: TMenuItem;
        AjustedeEstoqueFiscal1: TMenuItem;
        SaldoConsignado1: TMenuItem;
        VendaPorVendedor1: TMenuItem;
        N93: TMenuItem;
        VendaProdutosporVendedor1: TMenuItem;
        N94: TMenuItem;
        AnteciparTitulos1: TMenuItem;
        N42: TMenuItem;
        VerificarAutenticao1: TMenuItem;
        N95: TMenuItem;
        AtualizarEstoque: TMenuItem;
        N96: TMenuItem;
        AlterarSenha1: TMenuItem;
        N97: TMenuItem;
        DigitaodaProduodosServios1: TMenuItem;
        N98: TMenuItem;
        RelaodaProduodosServiosemItens1: TMenuItem;
        ComissesPorLiquidez1: TMenuItem;
        ProdutosVendidosnoPerodoGrupoPai1: TMenuItem;
        N100: TMenuItem;
        ApuraoPisCofins1: TMenuItem;
        ComissesMontagens1: TMenuItem;
        Separao1: TMenuItem;
        Carga1: TMenuItem;
        ComissoVendaRecebimento1: TMenuItem;
        N101: TMenuItem;
        PrincipioAtivo1: TMenuItem;
        N102: TMenuItem;
        N103: TMenuItem;
        ExtratoFornecedores1: TMenuItem;
        N104: TMenuItem;
        N105: TMenuItem;
        N106: TMenuItem;
        ToolButton23: TToolButton;
        ToolButton26: TToolButton;
        N107: TMenuItem;
        Comisses2: TMenuItem;
        AjusteComisso1: TMenuItem;
        ComissoPorLiquidezporItemVendido1: TMenuItem;
        AcessoRemoto1: TMenuItem;
        ResultadosnoPerodo2: TMenuItem;
        N109: TMenuItem;
        N110: TMenuItem;
        N55: TMenuItem;
        N111: TMenuItem;
        N14: TMenuItem;
        ImportaoPDVs: TMenuItem;
        ExportacaoPDV: TMenuItem;
        MovimentaodeItens1: TMenuItem;
        VendasTiposCobranas1: TMenuItem;
        ApuraoMVA1: TMenuItem;
        ApuraoMVAporInvetrio1: TMenuItem;
        ApuraoMVAporEntradas1: TMenuItem;
        Localizar1: TMenuItem;
        DownloadAmmyy1: TMenuItem;
        DownloadTeamViewer1: TMenuItem;
        AcessoRemotoTeamViewer1: TMenuItem;
        Indstria1: TMenuItem;
        Funcionrios3: TMenuItem;
        Mquinas1: TMenuItem;
        ModeObra1: TMenuItem;
        CadastrodeMaquinrio1: TMenuItem;
        ipodeMquina1: TMenuItem;
        Insumos1: TMenuItem;
        CadastrodeInsumos1: TMenuItem;
        ipodeInsumo1: TMenuItem;
        MatriaPrima1: TMenuItem;
        DownloadShowMyPC1: TMenuItem;
        Produo1: TMenuItem;
        PontuaoClientes1: TMenuItem;
        Resgatar1: TMenuItem;
        EquipamentoNSrie1: TMenuItem;
        IdentificadosNSrie1: TMenuItem;
        RelaodeItens1: TMenuItem;
        VendasnoPerodo1: TMenuItem;
        EntradasnoPerodo1: TMenuItem;
        PedidosdeVendaLicitao1: TMenuItem;
        N27: TMenuItem;
        FaturarPedidos1: TMenuItem;
        ImgToolBar: TImageList;
        ImageList_Novo: TImageList;
        ConfernciadeCaixa1: TMenuItem;
    Oficina2: TMenuItem;
    OficinaPeriodo1: TMenuItem;
    ServioscomOficina1: TMenuItem;
    LucroporPedidodeVendas1: TMenuItem;
    RptVendasItens1: TMenuItem;
        procedure Bancos1Click(Sender: TObject);
        procedure Empresa1Click(Sender: TObject);
        procedure Idiomas1Click(Sender: TObject);
        procedure PlanosdePagamento1Click(Sender: TObject);
        procedure Unidades1Click(Sender: TObject);
        procedure TiposdeEntrega1Click(Sender: TObject);
        procedure Grupos1Click(Sender: TObject);
        procedure Taxs1Click(Sender: TObject);
        procedure ConectarClick(Sender: TObject);
        procedure Usurios1Click(Sender: TObject);
        procedure ConsultarChequesRecebidos1Click(Sender: TObject);
        procedure PagamentodeContas1Click(Sender: TObject);
        procedure PagamentoRpido1Click(Sender: TObject);
        procedure AbrirCaixaClick(Sender: TObject);
        procedure ExtratodeContas1Click(Sender: TObject);
        procedure CartesEmpresa1Click(Sender: TObject);
        procedure ContasaReceber2Click(Sender: TObject);
        procedure ContasaPagar2Click(Sender: TObject);
        procedure FluxodeCaixa1Click(Sender: TObject);
        procedure CadastrodeMensagens1Click(Sender: TObject);
        procedure RestaurarBackup1Click(Sender: TObject);
        procedure GeraodeCrditos1Click(Sender: TObject);
        procedure ChequesPendentesdeImpresso1Click(Sender: TObject);
        procedure TiposdeAtividade1Click(Sender: TObject);
        procedure Cadatr1Click(Sender: TObject);
        procedure PerfildoUsurio1Click(Sender: TObject);
        procedure Cargos1Click(Sender: TObject);
        procedure ApuraodeResultados1Click(Sender: TObject);
        procedure FazerDepsitosemBancoemCustdia1Click(Sender: TObject);
        procedure TextosDiversos1Click(Sender: TObject);
        procedure PerfildoSistema1Click(Sender: TObject);
        procedure CadastrodePermisses1Click(Sender: TObject);
        procedure ContasaPagar3Click(Sender: TObject);
        procedure EscreverCheque1Click(Sender: TObject);
        procedure ConciliaoBancria1Click(Sender: TObject);
        procedure Categorias1Click(Sender: TObject);
        procedure Emails1Click(Sender: TObject);
        procedure Recados1Click(Sender: TObject);
        procedure Clientes1Click(Sender: TObject);
        procedure SairdaAgenda1Click(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure Tarefas1Click(Sender: TObject);
        procedure ApplicationEvApplicationCreated(Sender: TObject);
        procedure Compromissos1Click(Sender: TObject);
        procedure TiposdeOperaes1Click(Sender: TObject);
        procedure ReajustedePreos1Click(Sender: TObject);
        procedure DigitaodasContagens1Click(Sender: TObject);
        procedure PosiodosCaixas1Click(Sender: TObject);
        procedure CaixaPrincipal1Click(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
        procedure ConteudoClick(Sender: TObject);
        procedure pmNavegadorClick(Sender: TObject);
        procedure Lembretes1Click(Sender: TObject);
        procedure Contas1Click(Sender: TObject);
        procedure TiposdeEmpresa1Click(Sender: TObject);
        procedure AgnciasdeTax1Click(Sender: TObject);
        procedure Factory1Click(Sender: TObject);
        procedure Paises1Click(Sender: TObject);
        procedure Estados1Click(Sender: TObject);
        procedure Funcionrios2Click(Sender: TObject);
        procedure Itens2Click(Sender: TObject);
        procedure AjustedeInventrio1Click(Sender: TObject);
        procedure CalcularEstoqueMnimo1Click(Sender: TObject);
        procedure AberturadeBalano1Click(Sender: TObject);
        procedure FecharBalano1Click(Sender: TObject);
        procedure Fabricantes1Click(Sender: TObject);
        procedure TabelasdePreco1Click(Sender: TObject);
        procedure RepassesParciaisdoCaixaClick(Sender: TObject);
        procedure Clientes2Click(Sender: TObject);
        procedure Invoices1Click(Sender: TObject);
        procedure Parcelas1Click(Sender: TObject);
        procedure RecebimentosCrdigos1Click(Sender: TObject);
        procedure Parcelas2Click(Sender: TObject);
        procedure FazerFactory1Click(Sender: TObject);
        procedure FormasdePagamento1Click(Sender: TObject);
        procedure Fornecedores2Click(Sender: TObject);
        procedure AgendamentodeDespesas1Click(Sender: TObject);
        procedure FazerDepsitosemBanco1Click(Sender: TObject);
        procedure TransferirDinheri1Click(Sender: TObject);
        procedure ApresentarCartesdeCrdito1Click(Sender: TObject);
        procedure ApresentarTickets1Click(Sender: TObject);
        procedure ApresentarConvnios1Click(Sender: TObject);
        procedure PagarCartodeCrdito1Click(Sender: TObject);
        procedure ControlarChequesPagos1Click(Sender: TObject);
        procedure FazerRemessa1Click(Sender: TObject);
        procedure Remetentes1Click(Sender: TObject);
        procedure Agncias1Click(Sender: TObject);
        procedure LocaldeDepsito1Click(Sender: TObject);
        procedure Indexadores1Click(Sender: TObject);
        procedure DepsitodeCheques1Click(Sender: TObject);
        procedure TransfernciasdeDinheiro1Click(Sender: TObject);
        procedure ChequesDevolvidos1Click(Sender: TObject);
        procedure ChequesnaEmpresa1Click(Sender: TObject);
        procedure ClientescomDevolues1Click(Sender: TObject);
        procedure SaldodeCheques1Click(Sender: TObject);
        procedure SaldodosClientes1Click(Sender: TObject);
        procedure SaldodosFornecedores1Click(Sender: TObject);
        procedure Factory2Click(Sender: TObject);
        procedure Crditos1Click(Sender: TObject);
        procedure Auditoria2Click(Sender: TObject);
        procedure Recebimentos2Click(Sender: TObject);
        procedure ParcelasaReceber2Click(Sender: TObject);
        procedure ParcelasRecebidas1Click(Sender: TObject);
        procedure ParcelasemAtraso1Click(Sender: TObject);
        procedure ParcelasVencidasHoje1Click(Sender: TObject);
        procedure ChequesPrdatados1Click(Sender: TObject);
        procedure CartesaReceber1Click(Sender: TObject);
        procedure Pagamentos2Click(Sender: TObject);
        procedure ContasPagas1Click(Sender: TObject);
        procedure ContasVencendoHoje1Click(Sender: TObject);
        procedure ContasemAtraso1Click(Sender: TObject);
        procedure ChequesaCompensar1Click(Sender: TObject);
        procedure PagamentoscomCarto1Click(Sender: TObject);
        procedure PagamentoscomTEF1Click(Sender: TObject);
        procedure Remessas2Click(Sender: TObject);
        procedure Agncias2Click(Sender: TObject);
        procedure Remetentes2Click(Sender: TObject);
        procedure Listagem1Click(Sender: TObject);
        procedure AnlisedeCrdito1Click(Sender: TObject);
        procedure MelhoresemCompras1Click(Sender: TObject);
        procedure QueDeixaramdeComprar1Click(Sender: TObject);
        procedure Aniversariantes1Click(Sender: TObject);
        procedure Desativados1Click(Sender: TObject);
        procedure OramentosemAberto1Click(Sender: TObject);
        procedure SemMovimento1Click(Sender: TObject);
        procedure Listagem2Click(Sender: TObject);
        procedure AnlisedeCompra1Click(Sender: TObject);
        procedure PedidosemAberto1Click(Sender: TObject);
        procedure AcompanhamentodePedido1Click(Sender: TObject);
        procedure Listagem3Click(Sender: TObject);
        procedure Estoque1Click(Sender: TObject);
        procedure TabelasdePreo1Click(Sender: TObject);
        procedure ExtratodeSadas1Click(Sender: TObject);
        procedure ExtratodeEntradas1Click(Sender: TObject);
        procedure ExtratoCompleto1Click(Sender: TObject);
        procedure ResuprimentodeEstoque1Click(Sender: TObject);
        procedure Vendas1Click(Sender: TObject);
        procedure ParcelasaReceber1Click(Sender: TObject);
        procedure ContasaPagar1Click(Sender: TObject);
        procedure Telefones1Click(Sender: TObject);
        procedure ConsultaaAgenda1Click(Sender: TObject);
        procedure Avisos1Click(Sender: TObject);
        procedure Ocorrncias1Click(Sender: TObject);
        procedure Lembretes2Click(Sender: TObject);
        procedure Memorizaes1Click(Sender: TObject);
        procedure Alertas1Click(Sender: TObject);
        procedure ItensdePayroll1Click(Sender: TObject);
        procedure ProduoSimples1Click(Sender: TObject);
        procedure ProduoporCliente1Click(Sender: TObject);
        procedure SalesOrder1Click(Sender: TObject);
        procedure Estimates1Click(Sender: TObject);
        procedure RecalcularComissessobreasVendas1Click(Sender: TObject);
        procedure PedidodeCompra1Click(Sender: TObject);
        procedure ComprarItens1Click(Sender: TObject);
        procedure FecharCaixaClick(Sender: TObject);
        procedure TiposdeOperaesdeEntrada1Click(Sender: TObject);
        procedure PlanosdePagamento2Click(Sender: TObject);
        procedure OrdensdeProduo1Click(Sender: TObject);
        procedure Entradas1Click(Sender: TObject);
        procedure Saidas1Click(Sender: TObject);
        procedure Tabela1Click(Sender: TObject);
        procedure ParmetrosClick(Sender: TObject);
        procedure ConverterAgendamentos1Click(Sender: TObject);
        procedure Payroll1Click(Sender: TObject);
        procedure ConfernciadeProdues1Click(Sender: TObject);
        procedure AcompanhamentodasOrdensdeProduo1Click(Sender: TObject);
        procedure ChequesPagos1Click(Sender: TObject);
        procedure ToolButton5Click(Sender: TObject);
        procedure PagaraFuncionrios1Click(Sender: TObject);
        procedure BeginBalance1Click(Sender: TObject);
        procedure GeradordeEtiquetas1Click(Sender: TObject);
        procedure ConsultadePreos1Click(Sender: TObject);
        procedure CRM1Click(Sender: TObject);
        procedure Statements1Click(Sender: TObject);
        procedure AprovarEstimates1Click(Sender: TObject);
        procedure ConfiguraodoCabealhodosRelatrios1Click(Sender: TObject);
        procedure Reparcelamento1Click(Sender: TObject);
        procedure EstimatesAprovadas1Click(Sender: TObject);
        procedure AcompanharItens1Click(Sender: TObject);
        procedure Acompanhamento2Click(Sender: TObject);
        procedure Inventrio1Click(Sender: TObject);
        procedure ParcelasaRecebercomDocGarantia1Click(Sender: TObject);
        procedure Qualidades1Click(Sender: TObject);
        procedure Zonas1Click(Sender: TObject);
        procedure GruposdeCliente1Click(Sender: TObject);
        procedure GraudeRelac1Click(Sender: TObject);
        procedure SalesOrderdoCaixa1Click(Sender: TObject);
        procedure RequisiesdeItens1Click(Sender: TObject);
        procedure FactoryEmpresa1Click(Sender: TObject);
        procedure FactoryEmpresa2Click(Sender: TObject);
        procedure Adiantamento1Click(Sender: TObject);
        procedure Payrolls1Click(Sender: TObject);
        procedure Comisses1Click(Sender: TObject);
        procedure AnaliseparaCompra1Click(Sender: TObject);
        procedure ExtratodeSaidas1Click(Sender: TObject);
        procedure ExtratodeEntradas2Click(Sender: TObject);
        procedure Histricos1Click(Sender: TObject);
        procedure VendaRapidaClick(Sender: TObject);
        procedure CriarumanovaEmpresa1Click(Sender: TObject);
        procedure MensagensparaOperacoes1Click(Sender: TObject);
        procedure TermosparaContratos1Click(Sender: TObject);
        procedure ListadePayrollporCliente1Click(Sender: TObject);
        procedure AssistentedeTemplatesparaInvoices1Click(Sender: TObject);
        procedure LogdeErros1Click(Sender: TObject);
        procedure AbrirExplorer1Click(Sender: TObject);
        procedure ConfiguraesRegionais1Click(Sender: TObject);
        procedure ServioInterbase1Click(Sender: TObject);
        procedure Devolues1Click(Sender: TObject);
        procedure PayrollDetalhado1Click(Sender: TObject);
        procedure AssistentedeAlertas1Click(Sender: TObject);
        procedure Au1Click(Sender: TObject);
        procedure ClientesePrestadoresdeServios1Click(Sender: TObject);
        procedure AutorizaesPendentes2Click(Sender: TObject);
        procedure ReciboColetivo1Click(Sender: TObject);
        procedure Ocorrncias2Click(Sender: TObject);
        procedure SalesOrders1Click(Sender: TObject);
        procedure SalesOrderscomItens1Click(Sender: TObject);
        procedure Estimates2Click(Sender: TObject);
        procedure FaturamentodasSO1Click(Sender: TObject);
        procedure PropagandasparaVenda1Click(Sender: TObject);
        procedure SalerOrderRpida1Click(Sender: TObject);
        procedure DevoluesdeItens1Click(Sender: TObject);
        procedure DevoluesvendasClick(Sender: TObject);
        procedure NomedaMquina1Click(Sender: TObject);
        procedure Itensmaisvendido1Click(Sender: TObject);
        procedure OsGrupodeItensmaisvendido1Click(Sender: TObject);
        procedure OsFabricantesmaisvendido1Click(Sender: TObject);
        procedure Conversao1Click(Sender: TObject);
        procedure IBEventos_ConversasEventAlert(Sender: TObject;
            EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure ListagemdeFuncionrios1Click(Sender: TObject);
        procedure PedidosPendentes1Click(Sender: TObject);
        procedure abelasdePreosII1Click(Sender: TObject);
        procedure RelatrioseImpressoras1Click(Sender: TObject);
        procedure SobreClick(Sender: TObject);
        procedure ConsistnciadePedidos1Click(Sender: TObject);
        procedure MetasdeFaturamento1Click(Sender: TObject);
        procedure MetasdeFaturamento2Click(Sender: TObject);
        procedure MetasporVendedor1Click(Sender: TObject);
        procedure PerfisdeTabelasdePreos1Click(Sender: TObject);
        procedure PerfisdeTiposdeOperaes1Click(Sender: TObject);
        procedure PerfisdeTiposdeOperaes2Click(Sender: TObject);
        procedure ltimasEntradas1Click(Sender: TObject);
        procedure DefinirPromoes1Click(Sender: TObject);
        procedure OperadoresdeProduo1Click(Sender: TObject);
        procedure ItensemPromoo1Click(Sender: TObject);
        procedure ItensemFalta1Click(Sender: TObject);
        procedure ItememFalta1Click(Sender: TObject);
        procedure EntradasConsignadas1Click(Sender: TObject);
        procedure SadasConsignadas1Click(Sender: TObject);
        procedure GrficoABCdoEstoque1Click(Sender: TObject);
        procedure Almoxarifados1Click(Sender: TObject);
        procedure ransfernciasentreAlmoxarifados1Click(Sender: TObject);
        procedure VendasdeProduto1Click(Sender: TObject);
        procedure MensagensparaOperaes1Click(Sender: TObject);
        procedure Composio1Click(Sender: TObject);
        procedure ransfernciadeAlmoxarifados1Click(Sender: TObject);
        procedure OcorrnciasdeFornecedores1Click(Sender: TObject);
        procedure FreteNotadeConhecimento1Click(Sender: TObject);
        procedure OperaesnoECF1Click(Sender: TObject);
        procedure ConfiguraodoECF1Click(Sender: TObject);
        procedure AdministrativoCarto1Click(Sender: TObject);
        procedure AdministrativoTecBan1Click(Sender: TObject);
        procedure AdministrativoHiperCard1Click(Sender: TObject);
        procedure EncerrantesdeCombustvel1Click(Sender: TObject);
        procedure EncerrantesdeCombustvel2Click(Sender: TObject);
        procedure InicializarECF1Click(Sender: TObject);
        procedure FinalizarECF1Click(Sender: TObject);
        procedure Sangria1Click(Sender: TObject);
        procedure Suprimento1Click(Sender: TObject);
        procedure NotaFiscalparaCupom1Click(Sender: TObject);
        procedure OutrasSadas1Click(Sender: TObject);
        procedure OutrasEntradas1Click(Sender: TObject);
        procedure iposdeLentes1Click(Sender: TObject);
        procedure iposdeMaterial1Click(Sender: TObject);
        procedure Cores1Click(Sender: TObject);
        procedure Importao1Click(Sender: TObject);
        procedure AcertodeConsignaes1Click(Sender: TObject);
        procedure AcertodeConsignaes2Click(Sender: TObject);
        procedure DevoluesdeConsignaes1Click(Sender: TObject);
        procedure Filiais1Click(Sender: TObject);
        procedure EntradasConsignadas2Click(Sender: TObject);
        procedure Carteiras1Click(Sender: TObject);
        procedure ransfernciadeDinheiroChequesdeoutraEmpresa1Click(
            Sender: TObject);
        procedure ParcelaseChequesaReceber1Click(Sender: TObject);
        procedure ContaseChequesaPagar1Click(Sender: TObject);
        procedure ListagemECF1Click(Sender: TObject);
        procedure RelatriodeCaixa1Click(Sender: TObject);
        procedure Mdicos1Click(Sender: TObject);
        procedure CheckExpress1Click(Sender: TObject);
        procedure Fornecedores4Click(Sender: TObject);
        procedure Clientes4Click(Sender: TObject);
        procedure ComprasdeProdutosnoPerodo1Click(Sender: TObject);
        procedure GerarInventrio2Click(Sender: TObject);
        procedure AlterarInventrio1Click(Sender: TObject);
        procedure Veiculos1Click(Sender: TObject);
        procedure ExecutarComando1Click(Sender: TObject);
        procedure ContatoPsVenda1Click(Sender: TObject);
        procedure Etiquetas1Click(Sender: TObject);
        procedure LotesaVencer2Click(Sender: TObject);
        procedure DevoluoFornecedores1Click(Sender: TObject);
        procedure OutrasSaidas1Click(Sender: TObject);
        procedure CheckoutClick(Sender: TObject);
        procedure OutrasEntradas2Click(Sender: TObject);
        procedure ProdutosVendidosnoPeriodo1Click(Sender: TObject);
        procedure MarcasdeEquipamentos1Click(Sender: TObject);
        procedure ModelosdeEquipamentos1Click(Sender: TObject);
        procedure ipoEquipamento1Click(Sender: TObject);
        procedure CadastroEquipamentos1Click(Sender: TObject);
        procedure ipodoServios1Click(Sender: TObject);
        procedure StatusdoServiosChamados1Click(Sender: TObject);
        procedure EntradaEquipamento1Click(Sender: TObject);
        procedure LocalizaoEquipamento1Click(Sender: TObject);
        procedure Laboratrio1Click(Sender: TObject);
        procedure ExportacaoPDVClick(Sender: TObject);
        procedure abelasdePreosMultiUnidades1Click(Sender: TObject);
        procedure ClculodoPreodeCusto1Click(Sender: TObject);
        procedure Acessrios1Click(Sender: TObject);
        procedure ChamadoTcnico1Click(Sender: TObject);
        procedure Romaneio1Click(Sender: TObject);
        procedure abeladePreo1Click(Sender: TObject);
        procedure Vendas2Click(Sender: TObject);
        procedure Pedido1Click(Sender: TObject);
        procedure BaixarTtulosManualmente1Click(Sender: TObject);
        procedure GerarRemessa1Click(Sender: TObject);
        procedure ReceberRetornodeBanco1Click(Sender: TObject);
        procedure Consignaes3Click(Sender: TObject);
        procedure DevoluesdeConsignaes2Click(Sender: TObject);
        procedure Consignaes4Click(Sender: TObject);
        procedure GruposdeComisses1Click(Sender: TObject);
        procedure PreodeVendaXPreodeCusto1Click(Sender: TObject);
        procedure RelaodePreos1Click(Sender: TObject);
        procedure IP1Click(Sender: TObject);
        procedure FiltrarFavorecido1Click(Sender: TObject);

        procedure Equipamentos1Click(Sender: TObject);
        procedure ecnologias1Click(Sender: TObject);
        procedure Marcas1Click(Sender: TObject);
        procedure StatusAtendimento1Click(Sender: TObject);
        procedure ipos1Click(Sender: TObject);
        procedure Agendamento1Click(Sender: TObject);
        procedure OrdensdeServio1Click(Sender: TObject);
        procedure Rotas1Click(Sender: TObject);
        procedure FichaCardex1Click(Sender: TObject);
        procedure Manuteno1Click(Sender: TObject);
        procedure ClientesEquipamentos2Click(Sender: TObject);
        procedure OrdensdeServio2Click(Sender: TObject);
        procedure Rotas2Click(Sender: TObject);
        procedure Fretes1Click(Sender: TObject);
        procedure Cotaes1Click(Sender: TObject);
        procedure Localizaes1Click(Sender: TObject);
        procedure ChequesPorOperao1Click(Sender: TObject);
        procedure SugestodeCompras1Click(Sender: TObject);
        procedure PlanodeDespesas1Click(Sender: TObject);
        procedure EstoqueFiscal1Click(Sender: TObject);
        procedure AtualizarAcesso1Click(Sender: TObject);
        procedure ChamadosporFuncionrio1Click(Sender: TObject);
        procedure ImportaoPDVs1Click(Sender: TObject);
        procedure VendasdeCartesdeCredito1Click(Sender: TObject);
        procedure Mix1Click(Sender: TObject);
        procedure DefinirPontuaodeCompra1Click(Sender: TObject);
        procedure RelacaoPontosClick(Sender: TObject);
        procedure InformaesFinanceiras1Click(Sender: TObject);
        procedure OutrasEntradascomProdutos1Click(Sender: TObject);
        procedure LicitaoparaCompras1Click(Sender: TObject);
        procedure PermitirAutorizaes1Click(Sender: TObject);
        procedure ReposiodeEstoquedeGondolas1Click(Sender: TObject);
        procedure Autorizaes1Click(Sender: TObject);
        procedure ConsultaPreosPeloCliente1Click(Sender: TObject);
        procedure ApuraodosCaixas1Click(Sender: TObject);
        procedure AjustedeEstoqueFiscal1Click(Sender: TObject);
        procedure SaldoConsignado1Click(Sender: TObject);
        procedure ExportacaoMovimentacaoClick(Sender: TObject);
        procedure CargadeDados1Click(Sender: TObject);
        procedure VendaPorVendedor1Click(Sender: TObject);
        procedure VendaProdutosporVendedor1Click(Sender: TObject);
        procedure AnteciparTitulos1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure VerificarAutenticao1Click(Sender: TObject);
        procedure AtualizarEstoqueClick(
            Sender: TObject);
        procedure AlterarSenha1Click(Sender: TObject);
        procedure DigitaodaProduodosServios1Click(Sender: TObject);
        procedure RelaodaProduodosServiosemItens1Click(Sender: TObject);
        procedure ComissesPorLiquidez1Click(Sender: TObject);
        procedure ExportaoDados1Click(Sender: TObject);
        procedure ExportaoNotasFiscais1Click(Sender: TObject);
        procedure ProdutosVendidosnoPerodoGrupoPai1Click(Sender: TObject);
        procedure ApuraoPisCofins1Click(Sender: TObject);
        procedure ComissesMontagens1Click(Sender: TObject);
        procedure Carga1Click(Sender: TObject);
        procedure Separao1Click(Sender: TObject);
        procedure ComissoVendaRecebimento1Click(Sender: TObject);
        procedure PrincipioAtivo1Click(Sender: TObject);
        procedure ExtratoFornecedores1Click(Sender: TObject);
        procedure MenuFiscalClick(Sender: TObject);
        procedure ToolButton23Click(Sender: TObject);
        procedure AjusteComisso1Click(Sender: TObject);
        procedure ComissoPorLiquidezporItemVendido1Click(Sender: TObject);
        procedure AcessoRemoto1Click(Sender: TObject);
        procedure ResultadosnoPerodo2Click(Sender: TObject);
        procedure MovimentaodeItens1Click(Sender: TObject);
        procedure VendasTiposCobranas1Click(Sender: TObject);
        procedure ApuraoMVAporInvetrio1Click(Sender: TObject);
        procedure ApuraoMVAporEntradas1Click(Sender: TObject);
        procedure Localizar1Click(Sender: TObject);
        procedure DownloadAmmyy1Click(Sender: TObject);
        procedure AcessoRemotoTeamViewer1Click(Sender: TObject);
        procedure DownloadTeamViewer1Click(Sender: TObject);
        procedure Funcionrios3Click(Sender: TObject);
        procedure ipodeMquina1Click(Sender: TObject);
        procedure CadastrodeMaquinrio1Click(Sender: TObject);
        procedure ModeObra1Click(Sender: TObject);
        procedure ipodeInsumo1Click(Sender: TObject);
        procedure CadastrodeInsumos1Click(Sender: TObject);
        procedure MatriaPrima1Click(Sender: TObject);
        procedure DownloadShowMyPC1Click(Sender: TObject);
        procedure Produo1Click(Sender: TObject);
        procedure Resgatar1Click(Sender: TObject);
        procedure RelaodeItens1Click(Sender: TObject);
        procedure VendasnoPerodo1Click(Sender: TObject);
        procedure EntradasnoPerodo1Click(Sender: TObject);
        procedure PedidosdeVendaLicitao1Click(Sender: TObject);
        procedure FaturarPedidos1Click(Sender: TObject);
        procedure ConfernciadeCaixa1Click(Sender: TObject);
        procedure AtualizarSuApps();
    procedure Oficina1Click(Sender: TObject);
    procedure OficinaPeriodo1Click(Sender: TObject);
    procedure ServioscomOficina1Click(Sender: TObject);
    procedure Lucro1Click(Sender: TObject);
    procedure LucroporPedidodeVendas1Click(Sender: TObject);
    procedure RptVendasItens1Click(Sender: TObject);
    private
        { Private declarations }
        validaPAF: TValidaPAF;
        sCaption: string;
        bMinimize: boolean;
        slArq: TStringList;
        procedure AtualizaMenu;
        procedure SetMenu(bAtiva: boolean);
        procedure AtualizarAcessoDia();
        function VerificaPermissaoAcesso(): boolean;
        function PrimeiroAcessoDia(): boolean;
        function PosReducaoZ(): boolean;
        function ZPeloSistema(): Boolean; {Verifico se existe o arquivo 'ZPeloSistema.TXT', se sim o sistema emitiu a Z}
    public
        { Public declarations }
    end;

var
    MDIProjeto: TMDIProjeto;
    //  mHHelp: THookHelpSystem;

implementation
uses DM_Projeto, DM_Financeiro, DM_Agenda, funcoes, FireBirdUses, Md5,
    Frm_Splash, Dlg_ConsultaPrecos, Dlg_Configurador, Frm_AtualizarAcesso,
    TDM_Projeto, {dm_ECF,} Frm_MsgTEF, Dlg_Importacao, Dlg_Wait,
    Dlg_UpdatePack, Dlg_ConsultaPrecosSalao, {ECF, FuncoesPAF, RegReducaoZ_R06,}
    dlg_Divulgacao, IBQuery, DB; {, funcoesProteq}

{$R *.DFM}

procedure TMDIProjeto.AtualizaMenu;
begin
    with DMProjeto do
        begin
            //        bSituacaoCaixa := DMFinanceiro.Conta_Situacao(DMFinanceiro.nContaPadrao) = 'Aberto';
            //    {PAF SO PARA O SYNCPDV}
            //        DMProjeto.PAFObrigatorio := FALSE;{ (DMProjeto.Parametro('PAFObrigatorio') = 'S');}
            //        DMProjeto.MostrarMenuPAF := TRUE; {(DMProjeto.Parametro('MostrarMenuPAF') = 'S');}
            //        bCaixa := (DMFinanceiro.nContaPadrao <> 1) and (DMFinanceiro.Conta_TipoConta(DMFinanceiro.nContaPadrao) = 1);
            //        Caixa.Enabled := (bCaixa);
            //        RepassesParciaisdoCaixa.Enabled := bSituacaoCaixa and bCaixa;
            //        AbrirCaixa.Enabled := (not bSituacaoCaixa) and (bCaixa);
            //        FecharCaixa.Enabled := bSituacaoCaixa and bCaixa;
            ////        SalesOrderdoCaixa1.Enabled := bSituacaoCaixa;
            ////        VendaRapida.Enabled := bSituacaoCaixa;
            ////        Checkout.Enabled := bSituacaoCaixa;
            ////        Sangria1.Enabled := bSituacaoCaixa;
            ////        Suprimento1.Enabled := bSituacaoCaixa;
            //        SalerOrderRpida1.Enabled := bSituacaoCaixa;
            //        Invoices1.Enabled := bSituacaoCaixa;
            //        NotaFiscalparaCupom1.Enabled := bSituacaoCaixa;
            //        Devolues1.Enabled := bSituacaoCaixa;
            //        OutrasSadas1.Enabled := bSituacaoCaixa;
            //        SalesOrder1.Enabled := bSituacaoCaixa;
            //        Estimates1.Enabled := bSituacaoCaixa;
            //        Parcelas1.Enabled := bSituacaoCaixa;
            //        RecebimentosCrdigos1.Enabled := bSituacaoCaixa;
            //        PagamentodeContas1.Enabled := bSituacaoCaixa;
            //        PagamentoRpido1.Enabled := bSituacaoCaixa;
            //        EscreverCheque1.Enabled := bSituacaoCaixa;
            //        ToolButton17.Enabled := bSituacaoCaixa;
            //        ToolButton14.Enabled := bSituacaoCaixa;
            //        ToolButton9.Enabled  := bSituacaoCaixa;
            //        ToolButton10.Enabled := bSituacaoCaixa;
            //        ToolButton13.Enabled := bSituacaoCaixa;
            bSituacaoCaixa := DMFinanceiro.Conta_Situacao(DMFinanceiro.nContaPadrao) = 'Aberto';
            {PAF SO PARA O SYNCPDV}
            DMProjeto.PAFObrigatorio := FALSE; { (DMProjeto.Parametro('PAFObrigatorio') = 'S');}
            DMProjeto.MostrarMenuPAF := TRUE; {(DMProjeto.Parametro('MostrarMenuPAF') = 'S');}
            bCaixa := (DMFinanceiro.nContaPadrao <> 1) and (DMFinanceiro.Conta_TipoConta(DMFinanceiro.nContaPadrao) = 1);
            Caixa.Visible := (bCaixa);
            RepassesParciaisdoCaixa.Visible := bSituacaoCaixa and bCaixa;
            AbrirCaixa.Visible := (not bSituacaoCaixa) and (bCaixa);
            FecharCaixa.Visible := bSituacaoCaixa and bCaixa;
            //        SalesOrderdoCaixa1.Visible := bSituacaoCaixa;
            //        VendaRapida.Visible := bSituacaoCaixa;
            //        Checkout.Visible := bSituacaoCaixa;
            //        Sangria1.Visible := bSituacaoCaixa;
            //        Suprimento1.Visible := bSituacaoCaixa;
            //        SalerOrderRpida1.Visible := bSituacaoCaixa;
            Invoices1.Visible := bSituacaoCaixa;
            NotaFiscalparaCupom1.Visible := bSituacaoCaixa;
            Devolues1.Visible := bSituacaoCaixa;
            OutrasSadas1.Visible := bSituacaoCaixa;
            SalesOrder1.Visible := bSituacaoCaixa;
            Estimates1.Visible := bSituacaoCaixa;
            Parcelas1.Visible := bSituacaoCaixa;
            RecebimentosCrdigos1.Visible := bSituacaoCaixa;
            PagamentodeContas1.Visible := bSituacaoCaixa;
            PagamentoRpido1.Visible := bSituacaoCaixa;
            EscreverCheque1.Visible := bSituacaoCaixa;
            ToolButton17.Visible := bSituacaoCaixa;
            ToolButton14.Visible := bSituacaoCaixa;
            ToolButton9.Visible := bSituacaoCaixa;
            ToolButton10.Visible := bSituacaoCaixa;
            ToolButton13.Visible := bSituacaoCaixa;
        end;
    DigitaodaProduodosServios1.Visible := (DMProjeto.Parametro('ServicosEmItens') = 'S');
    RelaodaProduodosServiosemItens1.Visible := DigitaodaProduodosServios1.Visible;
    AtualizarEstoque.Visible := (DMProjeto.Parametro('BaixaEstoqueOnLine') <> 'S');
    AssistnciaTecnica.Visible := (DMProjeto.Parametro('AssistenciaTecnica') = 'S');
    Servio1.Visible := (DMProjeto.Parametro('Servico') = 'S');
    Indstria1.Visible := (Dmprojeto.Parametro('Industria') = 'S');
    //    AdministrativoCarto1.Visible       := (DMProjeto.ParametroTEF('TEFGP') = 'S');
    //    AdministrativoTecBan1.Visible      := (DMProjeto.ParametroTEF('TEFTECBAN') = 'S');
    //    AdministrativoHiperCard1.Visible   := (DMProjeto.ParametroTEF('TEFHIPER') = 'S');
    GruposdeComisses1.Visible := (DMPRojeto.Parametro('GrupoComissao') = 'S');
    EstoqueFiscal1.Visible := (DMPRojeto.Parametro('BaixaEstoqueFiscal') = 'S');
    //    ImportaoPDVs1.Visible              := (DMPRojeto.Parametro('ImportacaoExportacao') = 'S');
    //    ExportacaoPDV.Visible              := ImportaoPDVs1.Visible;
    //    ExportacaoMovimentacao.Visible     := ImportaoPDVs1.Visible;
    //    CargadeDados1.Visible              := ImportaoPDVs1.Visible;
    AjustedeEstoqueFiscal1.Visible := EstoqueFiscal1.Visible;
    DefinirPontuaodeCompra1.Visible := (DMProjeto.Parametro('ControlePontos') = 'S');
    RelacaoPontos.Visible := DefinirPontuaodeCompra1.Visible;

    //    {PAF SO PARA O SYNCPDV}
    //    SalesOrderdoCaixa1.Visible    := DMPRojeto.MostrarMenuPAF;
    //    Checkout.Visible              := DMPRojeto.MostrarMenuPAF;
    //    SalerOrderRpida1.Visible      := DMPRojeto.MostrarMenuPAF;
    //    Estimates1.Visible            := DMPRojeto.MostrarMenuPAF;
    //    OutrasSadas1.Visible          := DMPRojeto.MostrarMenuPAF;
    //    ConfiguraodoECF1.Visible      := DMPRojeto.MostrarMenuPAF;

    DMProjeto.bPermitirOficina := (DMProjeto.Parametro('Oficina') = 'S');
    Oficina2.Visible := DMProjeto.bPermitirOficina;

end;

procedure TMDIProjeto.Bancos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmBancos', Self, false);
end;

procedure TMDIProjeto.Empresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEmpresa', Self, false);
end;

procedure TMDIProjeto.Idiomas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmIdiomas', Self, false);
end;

procedure TMDIProjeto.PlanosdePagamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 'S']);
    DMProjeto.CriarForm('FrmPlanos_Pagamento', self, false);
end;

procedure TMDIProjeto.Unidades1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmUnidades', Self, false);
end;

procedure TMDIProjeto.TiposdeEntrega1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposEntrega', Self, false);
end;

procedure TMDIProjeto.Grupos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmGrupos', Self, false);
end;

procedure TMDIProjeto.Taxs1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTaxs', Self, false);
end;

procedure TMDIProjeto.ConectarClick(Sender: TObject);
var i, id, Vendedores: integer;
    sDataFinanceiro: string;
    dDataFinanceiro, di, df: TDateTime;
    meta, metadiaria, metareal: currency;
begin
    DMProjeto.bBrasil := true;
    DMProjeto.Versao := 'E';
    SetMenu(false);
    if FrmSplash <> nil then
        begin
            SplashClose.Prepare(Self, FrmSplash.BoundsRect);
            try
                FrmSplash.Visible := false;
                FrmSplash.Close;
                if SplashClose.Prepared then
                    SplashClose.Execute;
            finally
                SplashClose.unPrepare;
            end;

            FrmSplash.Free;
            FrmSplash := nil;
        end;
    inherited;
    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Aguarde, Configurando o Sistema...';
    DlgWait.Show;
    DlgWait.Update;
    SetMenu(true);

    DMProjeto.nPDV := DMProjeto.GetPDVMaq;
    DMProjeto.AtualizaParametros;

    DMAgenda.Iniciar;
    try
        DMAgenda.IBEventos_Recados.RegisterEvents;
    except
    end;

    try
        IBEventos_Conversas.RegisterEvents;
    except
    end;
    DlgWait.lblMsg.Caption := 'Registrando Usuário...';
    DlgWait.Show;
    DlgWait.Update;
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Update usuarios set logado = ''S'' where usuario = :usuario ';
            Params[0].asinteger := DMProjeto.nFuncionario;
            ExecSQL;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;

    {Desconto Máximo do Funcionário}
    DlgWait.lblMsg.Caption := 'Configurando o Dessconto Máximo por Funcionário...';
    DlgWait.Show;
    DlgWait.Update;
    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.text := 'select descontomaximo, Funcionario, TabelaPadrao, TipoMovPR from usuarios where usuario = :usuario';
            params[0].AsInteger := DMProjeto.nFuncionario;
            open;
            DMProjeto.nMaxDescontoFunc := fields[0].AsCurrency;
            DMProjeto.nFuncionarioLogado := fields[1].asInteger;
            DMProjeto.nTabelaPadraoFunc := fields[2].asInteger;
            DMProjeto.nTipoMovPRFunc := fields[3].asInteger;
            close;
        end;
    DlgWait.lblMsg.Caption := 'Configurando o Perfil do Sistema...';
    DlgWait.Show;
    DlgWait.Update;

    DMProjeto.C_Empresas.Close;
    DMProjeto.C_Empresas.Open;

    DMFinanceiro.FecharDataSets;

    DMFinanceiro.nContaPadrao := DMFinanceiro.UsuarioCaixa;
    DMFinanceiro.sNomeContaPadrao := DMFinanceiro.Caixa_Nome;

    DMProjeto.AtualizaPermissoesTiposMovimento;
    DMProjeto.AtualizaPermissoesTabelasPreco;

    LotesaVencer2.Visible := DMProjeto.Parametro('ControleValidade') = 'S';
    if not LotesaVencer2.visible then
        LotesaVencer2.tag := 1;
    if (DMProjeto.Parametro('MultiAlmox') = 'S') then
        begin
            ransfernciasentreAlmoxarifados1.visible := True;
            ransfernciadeAlmoxarifados1.Visible := True;
            ReposiodeEstoquedeGondolas1.Visible := True;
            ransfernciadeAlmoxarifados1.tag := 1;
        end;
    EncerrantesdeCombustvel1.Visible := DMProjeto.Parametro('Encerrantes') = 'S';
    if not EncerrantesdeCombustvel1.visible then
        EncerrantesdeCombustvel1.tag := 1;

    EncerrantesdeCombustvel2.Visible := DMProjeto.Parametro('Encerrantes') = 'S';
    if not EncerrantesdeCombustvel2.visible then
        EncerrantesdeCombustvel2.tag := 1;

    Composio1.visible := DMProjeto.Parametro('Composicao') = 'S';
    if not Composio1.visible then
        Composio1.tag := 1;

    ProduodeItens1.visible := DMProjeto.bOrdemProducao;
    if not ProduodeItens1.visible then
        ProduodeItens1.tag := 1;

    N12.visible := ransfernciasentreAlmoxarifados1.visible;
    Almoxarifados1.visible := N12.visible;
    ransfernciadeAlmoxarifados1.visible := N12.visible;
    if not N12.visible then
        begin
            ransfernciasentreAlmoxarifados1.tag := 1;
            N12.tag := 1;
            Almoxarifados1.tag := 1;
            ransfernciadeAlmoxarifados1.tag := 1;
        end;

    Otica1.visible := DMProjeto.Parametro('TipoEmpresa') = 'O';
    if not Otica1.visible then
        Otica1.tag := 1;

    if DMProjeto.Parametro('TipoEmpresa') = 'H' then
        begin
        end;

    MetasdeFaturamento1.Visible := DMProjeto.Parametro('MetasFaturamento') = 'S';
    N57.Visible := MetasdeFaturamento1.Visible;

    CheckExpress1.Visible := DMProjeto.Parametro('CheckExpress') = 'S';

    abelasdePreosMultiUnidades1.Visible := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';
    ClculodoPreodeCusto1.Visible := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';
    RelaodePreos1.Visible := DMProjeto.Parametro('PesquisaMultiUnidade') = 'S';

    DlgWait.lblMsg.Caption := 'Atualizando Menus do usuário...';
    DlgWait.Show;
    DlgWait.Update;

    AtualizaMenu;
    {FINANCEIRO -> Atualizando Status em Contas a Pagar e a Receber - Até que o Servidor esteja pronto!}
    if (DMProjeto.Parametro('DataFinanceiro') < FormatDateTime('yyyymmdd', DMProjeto.dDataSistema)) then
        begin
            if (DMProjeto.Parametro('BackupAutomatico') = 'S') and (DMProjeto.Parametro('LocalBackup') <> '') then
                begin
                    DMProjeto.FazerBackup('OUTROLOCAL', IntToStr(DMProjeto.IndiceAlias), DMProjeto.Parametro('LocalBackup'), false, false,
                        false, nil, nil, nil, nil);
                end;

            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

            {Ajustando Datas dos Movimentos das contas}
            DlgWait.lblMsg.Caption := 'Atualizando valores de contas...';
            DlgWait.Show;
            DlgWait.Update;
            with DMProjeto.StoreProcedure do
                begin
                    StoredProcName := 'PP_INICIARDIASISTEMA';
                    ParamByName('DDATASISTEMA').AsDateTime := DMProjeto.dDataSistema;
                    Prepare;
                    ExecProc;
                end;

            {Metas de Faturamento}
        {    if DMProjeto.Parametro('MetasFaturamento') = 'S' then begin
              With DMProjeto.Q_SQL do begin
                Close;
                SQL.Text := 'Execute Procedure PP_MetasFaturamento';
                ExecSQL;
              end;
            end;
            {Verificação para liquidação de cartões}
            with DMProjeto.Q_SQL do
                begin
                    close;
                    sql.text := 'select operacao, contadestino from operacoesfinanceiras ' +
                        'where tipooperacao = 11 and floating = 0 and situacao is null and recebido <= :data';
                    parambyname('data').asDatetime := DMProjeto.dDataSistema;
                    open;
                    while not eof do
                        begin
                            DMFinanceiro.LiquidarCartoes(fieldbyname('operacao').AsString, fieldbyname('contadestino').AsInteger, DMProjeto.dDataSistema);
                            next;
                        end;
                end;

            {Verificação para crédito em conta dos cheques eletrônicos}
            sDataFinanceiro := DMProjeto.Parametro('DataFinanceiro');
            dDataFinanceiro := EncodeDate(StrToInt(Copy(sDataFinanceiro, 1, 4)), StrToInt(Copy(sDataFinanceiro, 5, 2)), StrToInt(Copy(sDataFinanceiro, 7, 2)));
            DMFinanceiro.CreditarEmContaChequeEletronico(dDataFinanceiro, DMProjeto.dDataSistema);
            DMProjeto.SetParametro('DataFinanceiro', FormatDateTime('yyyymmdd', DMProjeto.dDataSistema));

            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.Commit;

        end;
    {Alterando a data do sistema para a data do caixa corrente}
    if DMProjeto.bCaixa then
        DMProjeto.dDataSistema := DMFinanceiro.Caixa_MovimentoCorrente;
    try
        if not DMFinanceiro.IBEventos_Financeiro.Registered then
            DMFinanceiro.IBEventos_Financeiro.RegisterEvents;
    except
    end;

    if not ToolBar1.Visible then
        begin
            with Slide do
                begin
                    Prepare(ToolBar1.Parent, ToolBar1.BoundsRect);
                    ToolBar1.Visible := true;
                    if Prepared then
                        begin
                            Execute;
                            UnPrepare;
                        end;
                end;
        end;
    DlgWait.Close;
end;

procedure TMDIProjeto.Usurios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmUsuarios', Self, false);
end;

procedure TMDIProjeto.ConsultarChequesRecebidos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgLocalizarCheques', self, false);
end;

procedure TMDIProjeto.PagamentodeContas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgSangria', self, false);
end;

procedure TMDIProjeto.PagamentoRpido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPgtoInstantaneo', self, false);
end;

procedure TMDIProjeto.AbrirCaixaClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAberturaCaixa', self, true);
    AtualizaMenu;
end;

procedure TMDIProjeto.ExtratodeContas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgExtratoContas', self, false);
end;

procedure TMDIProjeto.CartesEmpresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCadastroCartaoEmpresa', self, false);
end;

procedure TMDIProjeto.ContasaReceber2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgGridParcelasAReceber', self, false);
end;

procedure TMDIProjeto.ContasaPagar2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptContasAPagar', self, false);
    //DMProjeto.CriarForm('DlgGridPagamentos',self,true);
end;

procedure TMDIProjeto.FluxodeCaixa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgFluxoCaixa', self, false);
end;

procedure TMDIProjeto.CadastrodeMensagens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMensagens', Self, false);
end;

procedure TMDIProjeto.RestaurarBackup1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRestaurar', self, true);
    if DMProjeto.VersaoSistema <> DMProjeto.Parametro('VersaoSistema') then
        begin
            ShowMessage('ATENÇÃO: O seu sistema não está atualizado para a versão ' + DMProjeto.VersaoSistema + '.' + #13 +
                'Favor contactar o Suporte da SyncTech.');
            //'Acesse na internet o endereço http://www.synctech.com.br e na seção Downloads baixe a atualização.');
            Application.Terminate;
        end;
end;

procedure TMDIProjeto.GeraodeCrditos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgGerarCredito', self, false);
end;

procedure TMDIProjeto.ChequesPendentesdeImpresso1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgChequesPendentesImpressao', self, false);
end;

procedure TMDIProjeto.TiposdeAtividade1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposAtividade', self, false);
end;

procedure TMDIProjeto.Cadatr1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.CriarForm('FrmCadPerfis',self,false);
end;

procedure TMDIProjeto.PerfildoUsurio1Click(Sender: TObject);
begin
    inherited;
    {  frmPerfilUsuario := TfrmPerfilUsuario.create(self,MenuMDI);
      frmPerfilUsuario.ShowModal;
      frmPerfilUsuario.Free;}
end;

procedure TMDIProjeto.Cargos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCargos', self, false);
end;

procedure TMDIProjeto.ApuraodeResultados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgApuracaoResultados', self, false);
end;

procedure TMDIProjeto.FazerDepsitosemBancoemCustdia1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgDepositoChequesEmCustodia', self, false);
end;

procedure TMDIProjeto.TextosDiversos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTextos', self, false);
end;

procedure TMDIProjeto.PerfildoSistema1Click(Sender: TObject);
begin
    inherited;
    {  frmPerfilSistema := TfrmPerfilSistema.create(self,MenuMDI);
      frmPerfilSistema.ShowModal;
      frmPerfilSistema.Free;}
end;

procedure TMDIProjeto.CadastrodePermisses1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.CriarForm('FrmPermissoes',self,false);
end;

procedure TMDIProjeto.ContasaPagar3Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmA_Pagar', Self, false);
end;

procedure TMDIProjeto.EscreverCheque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgEscreverCheque', Self, false);
end;

procedure TMDIProjeto.ConciliaoBancria1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgConciliacaoBancaria', self, false);
end;

procedure TMDIProjeto.Categorias1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FRMCATEGORIAS', Self, false);
end;

procedure TMDIProjeto.Emails1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgEmails', Self, false);
end;

procedure TMDIProjeto.Recados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DLGRECADOS', Self, false);
end;

procedure TMDIProjeto.Clientes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FRMCLIENTES', Self, false);
end;

procedure TMDIProjeto.SairdaAgenda1Click(Sender: TObject);
begin
    inherited;
    Close;
end;

procedure TMDIProjeto.FormCreate(Sender: TObject);
var sDir: string;
begin
    inherited;
    sDir := DMProjeto.ProgPath + 'help';
    //  mHHelp := THookHelpSystem.Create(sDir, '', htHHAPI);
    bMinimize := False;
    DMProjeto.TipoSituacaoCliente := 3;
    //1-Demo Liberado;
    //2-Demo Vencido;
    //3-Cliente Liberado;
    //4-Cliente Bloqueado
end;

procedure TMDIProjeto.Tarefas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgTarefas', self, false);
end;

{   Felipe  -   Copia os arquivos contidos do path SuApps para a path do SyncRetaguarda. Funcionalidade criada para servir de atualização
                para o SuApps (21/01/2016)  }
procedure TMDIProjeto.AtualizarSuApps();
var
    SR: TSearchRec;
    Ret: integer;
    arquivos: TStringList;
    pathArquivosSuApps, pathDestino: string;
begin
    pathDestino := ExtractFilePath(Application.ExeName);
    pathArquivosSuApps := ExtractFilePath(Application.ExeName) + 'Suapps';
    arquivos := TStringList.Create;

    try
        if (not DirectoryExists(pathArquivosSuApps)) then
            Exit;

        Ret := FindFirst(pathArquivosSuApps + '\*.*', faAnyFile, SR);

        while Ret = 0 do
            begin
                if (SR.Name <> '.') and (SR.Name <> '..') then
                    arquivos.Add(SR.Name);

                Ret := FindNext(SR);
            end;

        if arquivos.Count > 0 then
            begin
                for Ret := 0 to arquivos.Count - 1 do
                    begin
                        // Ultimo parametro passar como False, para substituir o arquivo no path de destino
                        CopyFile(pchar(pathArquivosSuApps + '\' + arquivos[Ret]), pchar(pathDestino + arquivos[Ret]), False);
                    end;

                for Ret := 0 to arquivos.Count - 1 do
                    begin
                        DeleteFile(pathArquivosSuApps + '\' + arquivos[Ret]);
                    end;
            end;

        FindClose(SR);
        arquivos.Free;
    except

    end;
end;

procedure TMDIProjeto.ApplicationEvApplicationCreated(Sender: TObject);
var rede, nsu, valor, valor2, md5TMP: string;
    sDataExpira, sHoraExpira, sPlacarede, sCnpj, sEstacoes, sRazao, sChave, sChaveTMP: string;
    dDataFinanceiro: tDatetime;
    nDia, nMes, nAno: word;
begin
    inherited;
    DMProjeto.nCasasDecimais := StrToInt(DMPRojeto.Parametro('CasasDecimais'));
    DMProjeto.sCasasDecimais := '######0.' + Copy('0000000000', 1, DMProjeto.nCasasDecimais);
    DMProjeto.sTipoTef := DMProjeto.ParametroTEF('TIPO_TEF');

    if ((DMProjeto.sNomeEmpresa = '') or (DMProjeto.sCPF_CNPJEmpresa = '')) and DMProjeto.LerPermissao('FrmEmpresa', '') then
        begin
            DMProjeto.SetParametrosForm([-1]);
            DMProjeto.CriarForm('FrmEmpresa', self, true);
            DMProjeto.C_Empresas.Close;
            DMProjeto.C_Empresas.Open;
        end
    else
        begin
            {Validando os Itens para preços automáticos}
            if (DMProjeto.Parametro('PrecosAutomaticos') = 'S') and
                (DMProjeto.nPerfil = StrToIntDef(DMProjeto.Parametro('PerfilValidaItens'), DMProjeto.nPerfil)) then
                DMProjeto.ValidaPrecosAutomaticos;
        end;

    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Verificando versão do sistema...';
    DlgWait.Show;
    DlgWait.Update;
    DlgWait.Close;

    //Para Homologação PAF efetuei este comentario ate a linha: "End; // Não Validar para Marcos e Cesar"
    if DMProjeto.Parametro('VersaoSistema') < DMProjeto.VersaoSistema then
        begin
            if DlgMsg.ShowMsg(8063) = 100 then
                begin
                    DlgWait.Close;
                    DlgWait := TDlgWait.Create(self);
                    DlgWait.Show;
                    DlgWait.Update;
                    DMProjeto.FazerBackup('OUTROLOCAL', IntToStr(DMProjeto.IndiceAlias), DMProjeto.Parametro('LocalBackup'), false, false,
                        false, nil, nil, nil, nil);
                    DlgWait.Close;
                end;
            if DMProjeto.Parametro('VersaoSistema') < '6.0.2.30' then
                begin
                    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                    DmProjeto.Q_Sql.Close;
                    DmProjeto.Q_Sql.Sql.Text := 'DELETE FROM ESTACOESCHAVE';
                    DmProjeto.Q_Sql.ExecSql;
                    DmProjeto.Q_Sql.Close;
                    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
                end;
            if FileExists(ExtractFilePath(Application.ExeName) + 'EmptySyncLoja.fdb') then
                begin
                    DlgUpdatePack := TDlgUpdatePack.Create(self, DMProjeto.DB_Projeto.DataBaseName, DMProjeto.VersaoSistema, 'Anterior');
                    DlgUpdatePack.ShowModal;
                    DlgUpdatePack.free;
                end
            else
                begin
                    ShowMessage('ATENÇÃO: O seu sistema não está atualizado para a versão ' + DMProjeto.VersaoSistema + '.' + #13 +
                        'Acesse na internet o endereço http://www.SyncTech.com.br e na seção Downloads baixe a atualização.');
                    Application.Terminate;
                end;
            Exit;
        end;
    //Senha Master Para Postar por mais 3 dias.
    if DMProjeto.sLoginName = 'NOME' then
        begin
            with DMProjeto.Q_Validacao do
                begin
                    Close;
                    Sql.Text := ' SELECT C.dataexpira, C.HoraExpira,  c.chave, c.estacaochave, C.ESTACOES ' +
                        ' FROM  estacoeschave c ';
                    Open;
                    if FieldByName('DATAEXPIRA').AsDateTime <= DMProjeto.getDataServidor then
                        begin
                            DecodeDate(DMProjeto.getDataServidor + 3, nAno, nMes, nDia);
                            sDataExpira := FormatDateTime('DD/MM/YYYY', EncodeDate(nAno, nMes, nDia));
                            sHoraExpira := '12:00:00';
                            //sEstacoes := iif(RecordCount > 0, FieldByName('ESTACOES').AsString, '0005');
                            sRazao := LowerCase(Funcoes.RetiraAcentos(dmProjeto.sRazaoEmpresa));
                            sCnpj := Funcoes.SoNumeros(dmProjeto.sCPF_CNPJEmpresa, 14);
                            sChaveTMP := LowerCase(MD5.MD5Print(MD5.MD5String(sDataExpira + sHoraExpira + sCnpj + sRazao + sEstacoes + '{CHAVE PARA 30 DIAS}')));
                            dmprojeto.UpdateEstacoes(sChaveTMP, sDataExpira, sHoraExpira, sEstacoes);
                        end;
                end;
            DlgMsg.ShowMsg(50, ['Sistema Atualizado Favor Reentrar no Sistema.']);
            DMProjeto.DB_Projeto.Connected := False;
            Application.Terminate;
        end;

    DlgWait.Close;
    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Verificando data do último movimento...';
    DlgWait.Show;
    DlgWait.Update;

    //    if (1 = 0) then begin
        //if (Pos(funcoes.PlacadeRede, '48-51-B7-89-CA-6A') <= 0) then begin
    if (Pos(funcoes.PlacadeRede, 'ZZZZZZZZZZZZZZZZZS') <= 0) then
        begin
            {Validação de Copia Demo e Data Expiração.}
            if (DMProjeto.Parametro('DataFinanceiro') > FormatDateTime('yyyymmdd', DMProjeto.getDataServidor)) then
                begin
                    DlgMsg.ShowMsg(50, ['A DATA DO COMPUTADOR É MENOR QUE A DO ULTIMO MOVIMENTO.' + #13 +
                        'FAVOR CORRIGIR PARA PODER ENTRAR NO SISTEMA!!!']);
                    DMProjeto.DB_Projeto.Connected := False;
                    Application.Terminate;
                    exit;
                end;

            DlgWait.Close;
            DlgWait := TDlgWait.Create(Self);
            DlgWait.lblMsg.Caption := 'Aguarde, Verificando Permissão de Acesso.';
            DlgWait.Show;
            DlgWait.Update;

            if (not VerificaPermissaoAcesso()) then
                begin
                    DlgWait.Close;
                    DlgWait := TDlgWait.Create(Self);
                    DlgWait.lblMsg.Caption := 'Verificando o registro do sistema...';
                    DlgWait.Show;
                    DlgWait.Update;
                    with DMProjeto.Q_Validacao do
                        begin
                            Close;
                            Sql.Text := ' SELECT C.dataexpira, C.HoraExpira,  c.chave, c.estacaochave, C.ESTACOES ' +
                                ' FROM  estacoeschave c ';
                            Open;
                            if RecordCount > 0 then
                                begin
                                    sDataExpira := FormatDateTime('DD/MM/YYYY', FieldByName('DATAEXPIRA').AsDateTime);
                                    sHoraExpira := FormatDateTime('HH:NN:SS', FieldByName('HORAEXPIRA').AsDateTime);
                                    sRazao := LowerCase(Funcoes.RetiraAcentos(dmProjeto.sRazaoEmpresa));
                                    sCnpj := Funcoes.SoNumeros(dmProjeto.sCPF_CNPJEmpresa, 14);
                                    sEstacoes := FieldByName('ESTACOES').AsString;

                                    DMProjeto.bDemo := False;
                                    sChaveTMP := LowerCase(MD5.MD5Print(MD5.MD5String(sDataExpira + sHoraExpira + sCnpj + sRazao + sEstacoes + '{CHAVE PARA 30 DIAS}')));
                                    sChave := funcoes.ChaveFinal(sChaveTMP);

                                    if (FieldByName('ESTACAOCHAVE').AsString = 'NULL') then
                                        DMProjeto.TipoSituacaoCliente := 1;

                                    if sChave <> (funcoes.ChaveFinal(FieldByName('CHAVE').AsString)) then
                                        begin
                                            DMProject.TipoSituacaoCliente := DMProject.TipoSituacaoCliente + 1;
                                            DlgMsg.ShowMsg(50, [pChar('A chave de Registro do seu sistema não é valida. Favor contactar a SyncTech para obter o acesso! ')]);
                                            //FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, False, 0, sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                            ConectarClick(Self);
                                            //Data Expira < que data do sistema
                                        end
                                    else if FieldByName('DATAEXPIRA').AsDateTime <= DMProjeto.getDataServidor then
                                        begin
                                            DMProject.TipoSituacaoCliente := DMProject.TipoSituacaoCliente + 1;
                                            //FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, False, 0, sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                            DlgMsg.ShowMsg(50, [pChar('A data de uso do sistema esta ultrapassada. Favor contactar a SyncTech para obter o acesso!')]);
                                            ConectarClick(Self);
                                            //Expiração proximo aos 10 dias.
                                        end
                                    else if (FieldByName('DATAEXPIRA').AsDateTime - DMProjeto.getDataServidor <= 10 {Expira com 10 dias}) then
                                        begin
                                            //                        FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, True, Trunc((FieldByName('DATAEXPIRA').AsDateTime - DMProjeto.dDataSistema)), sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                                            //Abaixo: Quando a foi adiantado a data do compudator para intalar o sistema e retornar a data
                                        end
                                    else if (FieldByName('DATAEXPIRA').AsDateTime + 90) <= (DMProjeto.getDataServidor) then
                                        begin
                                            DMProjeto.bDemo := True;
                                            DlgMsg.ShowMsg(50, [pChar('A chave de Registro do seu sistema não é valida. Favor contactar a SyncTech para obter o acesso!')]);
                                            //FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, False, 0, sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                            ConectarClick(Self);

                                            //                    end else if (((FireBirdUses.NumeroUsuarios(DMProjeto.DB_Projeto.DataBaseName) - 1) / 2) > StrToInt(sEstacoes)) then begin
                                            //                        DlgMsg.ShowMsg(50, [pChar('O Número de Sistemas Abertos Ultrapassou a Quantidade Máxima Contratada!!!' + #13 + #13 +
                                            //                                'Solicite ao seu fornecedor a configuração para um maior numero de computadores' + #13 + #13 +
                                            //                                'Número Máximo Permitido: ' + sEstacoes)]);
                                                                    //FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, False, 0, sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                        end;
                                end
                            else
                                begin
                                    DlgMsg.ShowMsg(50, [pChar('Favor contactar a SyncTech para obter acesso ao sistema! ')]);
                                    ConectarClick(Self);
                                    //   * * * * * * * * * * Não Iremos mais Permitir Testes sem o Devido Cadastro do sistema. Deve ser usado o MaxAdmin para acesso ao sistema.
                                    //                    try
                                    //                        DMProject.DadosEmpresa;
                                    //                        if (DMProjeto.GEN_ID('GENSIST_NEWDATABASE', True) = 0) then begin
                                    //                            DMProjeto.SetNEWDATABASE(1);
                                    //                            DMProjeto.bDemo := True;
                                    //                            DecodeDate(DMPRojeto.dDataSistema + 30, nAno, nMes, nDia);
                                    //                            nDia := 20;
                                    //                            sDataExpira := FormatDateTime('DD/MM/YYYY', EncodeDate(nAno, nMes, nDia));
                                    //                            sHoraExpira := FormatDateTime('HH:NN:SS', StrToTime('12:00:00'));
                                    //                            sRazao := LowerCase(Funcoes.RetiraAcentos(dmProjeto.sRazaoEmpresa));
                                    //                            sCnpj := Funcoes.SoNumeros(dmProjeto.sCPF_CNPJEmpresa, 14);
                                    //                            sEstacoes := Funcoes.SoNumeros(dmProjeto.sNumEstacoes, 04);
                                    //                            sChaveTMP := LowerCase(MD5.MD5Print(MD5.MD5String(sDataExpira + sHoraExpira + sCnpj + sRazao + sEstacoes + '{CHAVE PARA 30 DIAS}')));
                                    //                            sChave := funcoes.ChaveFinal(sChaveTMP);
                                    //
                                    //                            with DmProjeto.Q_Sql do begin
                                    //                                if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                                    //                                    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                                    //                                Close;
                                    //                                Sql.Text := 'DELETE FROM ESTACOESCHAVE';
                                    //                                ExecSql;
                                    //                                Close;
                                    //                                Sql.Text := 'INSERT INTO ESTACOESCHAVE (ESTACAOCHAVE,EMPRESA,ESTACOES,DATAEXPIRA,HORAEXPIRA,CHAVE) ' +
                                    //                                    ' VALUES (1,-1,:ESTACOES,:DATA,:HORA,:CHAVE) ';
                                    //                                ParamByName('DATA').AsDateTime := StrtoDateTime(sDataExpira);
                                    //                                ParamByName('HORA').AsTime := StrtoTime(sHoraExpira);
                                    //                                ParamByName('CHAVE').AsString := sChaveTMP;
                                    //                                ParamByName('ESTACOES').AsString := sEstacoes;
                                    //                                ExecSql;
                                    //                            end;
                                    //                            DMProject.TipoSituacaoCliente := 1;
                                    //                            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                                    //                                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                                    //                            DlgWait.Close;
                                    //                            DlgMsg.ShowMsg(50, ['Você tem até o dia ' + sDataExpira + ' para efetuar o registro.']);
                                    //                        end else begin
                                    //                            DlgWait.Close;
                                    //                            DlgMsg.ShowMsg(50, [pChar('O Seu Controle de Acesso Foi Alterado! Solicite ao seu fornecedor sua nova chave de acesso!')]);
                                    //                            //FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, False, 0, sPlacaRede, sEstacoes, sDataExpira, sHoraExpira, sRazao, sCnpj);
                                    //                            ConectarClick(Self);
                                    //
                                    //                        end; //Verificando se a Base é Nova;
                                    //                    except
                                    //                        on E: Exception do
                                    //                            DlgMsg.ShowMsg(50, ['Ocorreu um erro ao tentar liberar o sistema para uso. ' + #13 + #13 + E.message]);
                                    //                    end;
                                end;
                        end;
                end;

        end; // Não Validar para Marcos e Cesar
    DlgWait.Close;
    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Aguarde, inicializando o sistema....';
    DlgWait.Show;
    DlgWait.Update;

    AtualizarSuApps;

    Caption := 'SyncLoja - Versão do Sistema: ' + DMProjeto.VersaoSistema + ' | Empresa: ' + IIF(DMProject.TipoSituacaoCliente = 1, DMProjeto.sNomeEmpresa + ' * * * CÓPIA NÃO REGISTRADA * * * ', DMProjeto.sNomeEmpresa) + '| Usuário: ' + DMProjeto.sLoginName;
    if (DMProjeto.bCaixa) and (not DMProjeto.bSituacaoCaixa) then
        begin
            if DlgMsg.ShowMsg(413) = 100 then
                AbrirCaixaClick(Sender);
        end
    else if (DMProjeto.bCaixa) and (DMProjeto.bSituacaoCaixa) and (DMFinanceiro.Caixa_MovimentoCorrente < DMProjeto.getDataServidor) then
        if DlgMsg.ShowMsg(412, [formatdatetime(shortdateformat, DMFinanceiro.Caixa_MovimentoCorrente)]) = 100 then
            begin
                FecharCaixaClick(Sender);
                if DlgMsg.ShowMsg(413) = 100 then
                    AbrirCaixaClick(Sender);
            end;

    if DMProjeto.Parametro('AutoNavegador') = 'S' then
        DMProjeto.CriarForm('DlgNavegador', self, false);

    if (DMProjeto.Parametro('AutoLembrete') = 'S') and DMProjeto.LerPermissao('DlgLembretes', '') then
        DMProjeto.CriarForm('DlgLembretes', self, false);

    if (DMProjeto.Parametro('IniciarPagamentosAgendados') = 'S') and DMProjeto.LerPermissao('DlgConveterPagamentosAgendados', '') then
        DMProjeto.CriarForm('DlgConveterPagamentosAgendados', self, false);

    Invalidate;

    if DMProjeto.sLoginName <> 'NOME' then
        Inicializacao;

    DMProjeto.nEmpresaLogada := DMProjeto.GetEmpresa(DMProjeto.sLoginName);

    DlgWait.lblMsg.Caption := 'Guardando empresa logada...';
    DlgWait.Show;
    DlgWait.Update;

    if not (DMProjeto.Parametro('PermitirInformativo') = 'N') then
        begin
            if FileExists(DMProjeto.ImgPath + 'ImagemMDI.jpg') then
                begin
                    try
                        DlgWait.Close;
                        DlgWait := TDlgWait.Create(self);
                        DlgWait.lblMsg.Caption := 'Inserindo imagem do sistema...';
                        DlgWait.Show;
                        DlgWait.Update;
                        ImageMDI.Picture.LoadFromFile(DMProjeto.ImgPath + 'ImagemMDI.jpg');
                    except
                        DlgWait.Close;
                        DlgWait := TDlgWait.Create(self);
                        DlgWait.lblMsg.Caption := 'Inserindo imagem padrão...';
                        DlgWait.Show;
                        DlgWait.Update;
                    end;
                end;
        end;
    ImageMDI.Top := 1;
    ImageMDI.Visible := true;
    ImageMDI.Left := Trunc(((MDIProjeto.width - ImageMDI.width) / 2));
    if not ImageMDI.Visible then
        begin
            with Alfa do
                begin
                    Prepare(ImageMDI.Parent, ImageMDI.BoundsRect);
                    ImageMDI.Visible := true;
                    if Prepared then
                        begin
                            Execute;
                            UnPrepare;
                        end;
                end;
        end;
    DlgWait.Close;
    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Sistema configurado...';
    DlgWait.Show;
    DlgWait.Update;
    DlgWait.Close;
end;

procedure TMDIProjeto.Compromissos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCalendarioMes', Self, false);
end;

procedure TMDIProjeto.TiposdeOperaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposMovimento', Self, false);
end;

procedure TMDIProjeto.ReajustedePreos1Click(Sender: TObject);
begin
    inherited;
    if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then
        DMProjeto.CriarForm('DlgReajustePrecosMultUnidade', self, false)
    else
        DMProjeto.CriarForm('DlgReajustePrecos', self, false);
end;

procedure TMDIProjeto.DigitaodasContagens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgContagensItens', self, true);
end;

procedure TMDIProjeto.PosiodosCaixas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPosicaoCaixas', self, false);
end;

procedure TMDIProjeto.CaixaPrincipal1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCaixaPrincipal', self, false);
end;

procedure TMDIProjeto.FormDestroy(Sender: TObject);
begin
    inherited;
    //  mHHelp.Free;
    //  HHCloseAll;     //Close help before shutdown or big trouble
end;

procedure TMDIProjeto.ConteudoClick(Sender: TObject);
begin
    inherited;
    //  HtmlHelp(GetDesktopWindow, PChar(DMProjeto.ProgPath+'help\MaxShop_Plus.chm'), HH_DISPLAY_TOPIC, 0);
end;

procedure TMDIProjeto.pmNavegadorClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgNavegador', self, false);
end;

procedure TMDIProjeto.Lembretes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgLembretes', self, false);
end;

procedure TMDIProjeto.Contas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmContas', self, false);
end;

procedure TMDIProjeto.TiposdeEmpresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposBusiness', Self, false);
end;

procedure TMDIProjeto.AgnciasdeTax1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTaxAgencias', Self, false);
end;

procedure TMDIProjeto.Factory1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFactory', self, false);
end;

procedure TMDIProjeto.Paises1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPaises', Self, false);
end;

procedure TMDIProjeto.Estados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmUFS', Self, false);
end;

procedure TMDIProjeto.Funcionrios2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFuncionarios', Self, false);
end;

procedure TMDIProjeto.Itens2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmItens', Self, false);
end;

procedure TMDIProjeto.AjustedeInventrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAjustesItens', self, false);
end;

procedure TMDIProjeto.CalcularEstoqueMnimo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRecalcularMinimo', self, false);
end;

procedure TMDIProjeto.AberturadeBalano1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmBalancoFichas', self, false);
end;

procedure TMDIProjeto.FecharBalano1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgComparacaoContagens', self, true);
end;

procedure TMDIProjeto.Fabricantes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFabricantes', Self, false);
end;

procedure TMDIProjeto.TabelasdePreco1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTabelasPreco', Self, false);
end;

procedure TMDIProjeto.RepassesParciaisdoCaixaClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRepasse', self, false);
end;

procedure TMDIProjeto.Clientes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmClientes', Self, false);
end;

procedure TMDIProjeto.Parcelas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgDepositos', Self, false);
    {PAF}
 //   Try
 //     Try
 {Eliminação do DMECF.}
 //        if (DMProjeto.PAFObrigatorio) Then Begin
 //          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
 //          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
 //          if ((DMPRojeto.PAFObrigatorio) And (validaPAF.CodigoErro = 1)) Then
 //            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
 //          if (Not (DMECF.ECF1.DiaJaAberto())) Then
 //             raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
 //        End;
 //        DMProjeto.CriarForm('DlgDepositos', Self, false);
 {     except
         raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
              'ou os dados do arquivo auxiliar diverge da impressora!!!');
      End;
    Except
      On E:Exception do Begin
         MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
      End;
    End;}
end;

procedure TMDIProjeto.RecebimentosCrdigos1Click(Sender: TObject);
begin
    inherited;
    {PAF}
    try
        try
            {Eliminação do DMECF.}
        //        if (DMProjeto.PAFObrigatorio) Then Begin
        //          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
        //          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
        //          if ((DMPRojeto.PAFObrigatorio) And (validaPAF.CodigoErro = 1)) Then
        //            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
        //          if (Not (DMECF.ECF1.DiaJaAberto())) Then
        //             raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
        //        End;
            DMProjeto.CriarForm('DlgDepositosInstantaneos', self, false);
        except
            raise Exception.Create('Erro ao acessar impressora fiscal, '#13 +
                'ou os dados do arquivo auxiliar diverge da impressora!!!');
        end;
    except
        on E: Exception do
            begin
                MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
            end;
    end;

end;

procedure TMDIProjeto.Parcelas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmA_Receber', Self, false);
end;

procedure TMDIProjeto.FazerFactory1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgFactory', self, false);
end;

procedure TMDIProjeto.FormasdePagamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFormasPagamento', Self, false);
end;

procedure TMDIProjeto.Fornecedores2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFornecedores', Self, false);
end;

procedure TMDIProjeto.AgendamentodeDespesas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAgendDespesasFixas', self, false);
end;

procedure TMDIProjeto.FazerDepsitosemBanco1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgDepositoCheques', self, false);
end;

procedure TMDIProjeto.TransferirDinheri1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgTransferencias', self, false);
end;

procedure TMDIProjeto.ApresentarCartesdeCrdito1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 11]);
    DMProjeto.CriarForm('DlgApresentacaoCartao', self, false);
end;

procedure TMDIProjeto.ApresentarTickets1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 16]);
    DMProjeto.CriarForm('DlgApresentacaoCartao', self, false);
end;

procedure TMDIProjeto.ApresentarConvnios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 17]);
    DMProjeto.CriarForm('DlgApresentacaoCartao', self, false);
end;

procedure TMDIProjeto.PagarCartodeCrdito1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPgtoCartaoEmpresa', self, false);
end;

procedure TMDIProjeto.ControlarChequesPagos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgChequesEmitidos', self, false);
end;

procedure TMDIProjeto.FazerRemessa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRemessa', self, false);
end;

procedure TMDIProjeto.Remetentes1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.SetParametrosForm([-1]); // "0" -- > incluir
    DMProjeto.CriarForm('FrmAgenciasEmpresa', self, false);
end;

procedure TMDIProjeto.Agncias1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.SetParametrosForm([-1]); // "0" -- > incluir
    DMProjeto.CriarForm('FrmAgencias', self, false);
end;

procedure TMDIProjeto.LocaldeDepsito1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmLocalDeposito', self, false);
end;

procedure TMDIProjeto.Indexadores1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.SetParametrosForm([-1]); // "-1" -- > sem parametro
    DMProjeto.CriarForm('FrmIndexador', self, false);
end;

procedure TMDIProjeto.DepsitodeCheques1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDepositoCheques', self, false);
end;

procedure TMDIProjeto.TransfernciasdeDinheiro1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptTransferencias', self, false);
end;

procedure TMDIProjeto.ChequesDevolvidos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesDevolvidos', self, false);
end;

procedure TMDIProjeto.ChequesnaEmpresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesNaEmpresa', self, false);
end;

procedure TMDIProjeto.ClientescomDevolues1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClientesHistoricoDevolucoes', self, false);
end;

procedure TMDIProjeto.SaldodeCheques1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSaldoCheques', self, false);
end;

procedure TMDIProjeto.SaldodosClientes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSaldosClientes', self, false);
end;

procedure TMDIProjeto.SaldodosFornecedores1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSaldoFornecedores', self, false);
end;

procedure TMDIProjeto.Factory2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFactorys', self, false);
end;

procedure TMDIProjeto.Crditos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptCreditos', self, false);
end;

procedure TMDIProjeto.Auditoria2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAuditoriaFinanceira', self, false);
end;

procedure TMDIProjeto.Recebimentos2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptRecebimentosDepositos', self, false);
end;

procedure TMDIProjeto.ParcelasaReceber2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInvoicesAReceber', self, false);
end;

procedure TMDIProjeto.ParcelasRecebidas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInvoicesRecebidas', self, false);
end;

procedure TMDIProjeto.ParcelasemAtraso1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInvoicesEmAtraso', self, false);
end;

procedure TMDIProjeto.ParcelasVencidasHoje1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInvoicesVencendoHoje', self, false);
end;

procedure TMDIProjeto.ChequesPrdatados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesPredatados', self, false);
end;

procedure TMDIProjeto.CartesaReceber1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptCartoesAReceber', self, false);
end;

procedure TMDIProjeto.Pagamentos2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPagamentosRetiradas', self, false);
end;

procedure TMDIProjeto.ContasPagas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptContasPagas', self, false);
end;

procedure TMDIProjeto.ContasVencendoHoje1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptContasVencendoHoje', self, false);
end;

procedure TMDIProjeto.ContasemAtraso1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptContasEmAtraso', self, false);
end;

procedure TMDIProjeto.ChequesaCompensar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesACompensar', self, false);
end;

procedure TMDIProjeto.PagamentoscomCarto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPagamentosComCartao', self, false);
end;

procedure TMDIProjeto.PagamentoscomTEF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPagamentosComTEF', self, false);
end;

procedure TMDIProjeto.Remessas2Click(Sender: TObject);
begin
    inherited;
    Dmprojeto.CriarForm('DlgRelRemessas', Self, False);
end;

procedure TMDIProjeto.Agncias2Click(Sender: TObject);
begin
    inherited;
    Dmprojeto.CriarForm('RptAgentes', Self, False);
end;

procedure TMDIProjeto.Remetentes2Click(Sender: TObject);
begin
    inherited;
    Dmprojeto.CriarForm('RptRemetentes', Self, False);
end;

procedure TMDIProjeto.Listagem1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClientes', self, false);
end;

procedure TMDIProjeto.AnlisedeCrdito1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptAnaliseClientes', self, false);
end;

procedure TMDIProjeto.MelhoresemCompras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptMelhoresClientes', self, false);
end;

procedure TMDIProjeto.QueDeixaramdeComprar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptUltimaCompraCliente', self, false);
end;

procedure TMDIProjeto.Aniversariantes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClienteAniversariantes', self, false);
end;

procedure TMDIProjeto.Desativados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClienteDesativados', self, false);
end;

procedure TMDIProjeto.OramentosemAberto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClienteOrcamentoAberto', self, false);
end;

procedure TMDIProjeto.SemMovimento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClienteSemMovimento', self, false);
end;

procedure TMDIProjeto.Listagem2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFornecedores', self, false);
end;

procedure TMDIProjeto.AnlisedeCompra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptAnaliseFornecedor', self, false);
end;

procedure TMDIProjeto.PedidosemAberto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPedidosAbertos', Self, false);
end;

procedure TMDIProjeto.AcompanhamentodePedido1Click(Sender: TObject);
begin
    inherited;
    Dmprojeto.CriarForm('RptAcompanhamentoPedido', Self, False);
end;

procedure TMDIProjeto.Listagem3Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItens', Self, false);
end;

procedure TMDIProjeto.Estoque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensEstoque', Self, false);
end;

procedure TMDIProjeto.TabelasdePreo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensTabelaPreco', Self, false);
end;

procedure TMDIProjeto.ExtratodeSadas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoSaidas', Self, false);
end;

procedure TMDIProjeto.ExtratodeEntradas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoEntradas', Self, false);
end;

procedure TMDIProjeto.ExtratoCompleto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoCompleto', Self, false);
end;

procedure TMDIProjeto.ResuprimentodeEstoque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensEntradaSaida', Self, false);
end;

procedure TMDIProjeto.Vendas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgGrafVendas', self, false);
end;

procedure TMDIProjeto.ParcelasaReceber1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['R', 'Parcelas a Receber', 'A Receber por Cliente', 'A Receber']);
    DMProjeto.CriarForm('DlgGrafAReceberAPagar', self, false);
end;

procedure TMDIProjeto.ContasaPagar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['P', 'Contas a Pagar', 'A Pagar por Favorecido', 'A Pagar']);
    DMProjeto.CriarForm('DlgGrafAReceberAPagar', self, false);
end;

procedure TMDIProjeto.Telefones1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FRMAGENDATELEFONES', Self, false);
end;

procedure TMDIProjeto.ConsultaaAgenda1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgConsulta', Self, false);
end;

procedure TMDIProjeto.Avisos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAvisos', self, false);
end;

procedure TMDIProjeto.Ocorrncias1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([1]);
    DMProjeto.CriarForm('FrmOcorrencias', self, false);
end;

procedure TMDIProjeto.Lembretes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([0, '', NULL, '', 0]);
    DMProjeto.CriarForm('FrmLembrete', self, false);
end;

procedure TMDIProjeto.Memorizaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([0]);
    DMProjeto.CriarForm('FrmMemorizacao', self, false);
end;

procedure TMDIProjeto.Alertas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([0, 0]);
    DMProjeto.CriarForm('FrmAlerta', Self, false);
end;

procedure TMDIProjeto.ItensdePayroll1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPayrollItems', Self, false);
end;

procedure TMDIProjeto.ProduoSimples1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTimeSimples', Self, false);
end;

procedure TMDIProjeto.ProduoporCliente1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTimeCliente', Self, false);
end;

procedure TMDIProjeto.Invoices1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 1]);
    DMProjeto.CriarForm('FrmInvoices', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.SalesOrder1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 2]);
    DMProjeto.CriarForm('FrmSalesOrder', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.Estimates1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 3]);
    DMProjeto.CriarForm('FrmEstimates', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.RecalcularComissessobreasVendas1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRecalcularComissao', self, true);
end;

procedure TMDIProjeto.PedidodeCompra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 102]);
    DMProjeto.CriarForm('FrmPedidosCompra', Self, false);
end;

procedure TMDIProjeto.ComprarItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 101]);
    DMProjeto.CriarForm('FrmCompras', Self, false);
end;

procedure TMDIProjeto.FecharCaixaClick(Sender: TObject);
begin
    inherited;
    if DMProjeto.Parametro('ModeloFechamento') = 'A' then
        DMProjeto.CriarForm('DlgFechamento', self, true)
    else
        DMProjeto.CriarForm('DlgFechamentoModeloB', self, true);
    AtualizaMenu;
end;

procedure TMDIProjeto.TiposdeOperaesdeEntrada1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposMovEntrada', Self, false);
end;

procedure TMDIProjeto.PlanosdePagamento2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 'E']);
    DMProjeto.CriarForm('FrmPlanos_Pagamento', self, false);
end;

procedure TMDIProjeto.OrdensdeProduo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMontagens', self, false);
end;

procedure TMDIProjeto.Entradas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptEntradas', self, false);
end;

procedure TMDIProjeto.Saidas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendasNoPeriodo', self, false);
end;

procedure TMDIProjeto.Tabela1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([-1]);
    DMProjeto.CriarForm('FrmEmpresa', self, true);
end;

procedure TMDIProjeto.ParmetrosClick(Sender: TObject);
begin
    inherited;
    //  DMProjeto.mMenuMDI := MenuMDI;
    //	DMProjeto.CriarForm('DlgConfigurador',self,false);
    DlgConfigurador := TDlgConfigurador.Create(self, MenuMDI);
    DlgConfigurador.ShowModal;
    DlgConfigurador.Release;

    DMProjeto.AtualizaParametros;
end;

procedure TMDIProjeto.ConverterAgendamentos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgConveterPagamentosAgendados', self, false);
end;

procedure TMDIProjeto.Payroll1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPayrolls', self, false);
end;

procedure TMDIProjeto.ConfernciadeProdues1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptConferProducoes', self, false);
end;

procedure TMDIProjeto.AcompanhamentodasOrdensdeProduo1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAcomphMontagens', self, false);
end;

procedure TMDIProjeto.ChequesPagos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesEmitidos', self, false);
end;

procedure TMDIProjeto.ToolButton5Click(Sender: TObject);
begin
    inherited;
    Sair.OnClick(self);
end;

procedure TMDIProjeto.PagaraFuncionrios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPgtoAFuncionarios', self, false);
end;

procedure TMDIProjeto.BeginBalance1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgBeginBalance', self, true);
end;

procedure TMDIProjeto.GeradordeEtiquetas1Click(Sender: TObject);
begin
    inherited;
    //DMProjeto.CriarForm('DlgNFeExportarDados', Self, False);
    DMProjeto.CriarForm('DlgEtiquetas', self, false);
end;

procedure TMDIProjeto.ConsultadePreos1Click(Sender: TObject);
begin
    inherited;
    DlgConsultaPrecos := TDlgConsultaPrecos.create(self);
    DlgConsultaPrecos.ShowModal;
    DlgConsultaPrecos.Release;
end;

procedure TMDIProjeto.CRM1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 1 {TipoFav}]);
    DMProjeto.CriarForm('DlgSitCliente', Self, true);
end;

procedure TMDIProjeto.Statements1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgStatements', Self, false);
end;

procedure TMDIProjeto.AprovarEstimates1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAvaliandoEstimates', self, false);
end;

procedure TMDIProjeto.ConfiguraodoCabealhodosRelatrios1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCabecalhoRelatorios', self, false);
end;

procedure TMDIProjeto.Reparcelamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgReparcelamento', self, false);
end;

procedure TMDIProjeto.EstimatesAprovadas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEstimatesAprovadas', self, false);
end;

procedure TMDIProjeto.AcompanharItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAcompanharItens', self, false);
end;

procedure TMDIProjeto.Acompanhamento2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAcompanhamentoServico', Self, False, False, '', True);
end;

procedure TMDIProjeto.Inventrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInventario', self, false);
end;

procedure TMDIProjeto.ParcelasaRecebercomDocGarantia1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDocGarantia', self, false);
end;

procedure TMDIProjeto.Qualidades1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmQualidades', Self, false);
end;

procedure TMDIProjeto.Zonas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmZonas', Self, false);
end;

procedure TMDIProjeto.GruposdeCliente1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmGruposCliente', Self, false);
end;

procedure TMDIProjeto.GraudeRelac1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmGrauRelacionamentos', Self, false);
end;

procedure TMDIProjeto.SalesOrderdoCaixa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCaixa', self, False, False, '', true);
end;

procedure TMDIProjeto.RequisiesdeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 103]);
    DMProjeto.CriarForm('FrmRequisicoes', self, false);
end;

procedure TMDIProjeto.FactoryEmpresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFactoryEmpresa', self, false);
end;

procedure TMDIProjeto.FactoryEmpresa2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFactoryEmpresa', self, false);
end;

procedure TMDIProjeto.Adiantamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, null, null, 3, true]);
    DMProjeto.CriarForm('DlgPgtoInstantaneo', self, false);
end;

procedure TMDIProjeto.Payrolls1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPayrolls', self, false);
end;

procedure TMDIProjeto.Comisses1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComissoes', self, false);
end;

procedure TMDIProjeto.AnaliseparaCompra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptAnaliseCompra', self, false);
end;

procedure TMDIProjeto.ExtratodeSaidas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoSaidasResumido', self, false);
end;

procedure TMDIProjeto.ExtratodeEntradas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoEntradasResumido', self, false);
end;

procedure TMDIProjeto.Histricos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmHistoricos', self, false);
end;

procedure TMDIProjeto.VendaRapidaClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmVendaRapida', Self, False, False, '', True);
end;

procedure TMDIProjeto.CriarumanovaEmpresa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCriarEmpresa', self, true);
    DMProjeto.LimparParametrosForm;
end;

procedure TMDIProjeto.MensagensparaOperacoes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 'V']);
    DMProjeto.CriarForm('FrmMensagensOperacoes', self, false);
end;

procedure TMDIProjeto.TermosparaContratos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTermosContratos', self, false);
end;

procedure TMDIProjeto.ListadePayrollporCliente1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPayrollsPorCliente', self, false);
end;

procedure TMDIProjeto.AssistentedeTemplatesparaInvoices1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgTemplates', self, false);
end;

procedure TMDIProjeto.LogdeErros1Click(Sender: TObject);
begin
    inherited;
    winexec(PChar('notepad.exe ' + ExtractFilePath(Application.ExeName) + DMProjeto.sLoginName + '.log'), SW_SHOWNORMAL);
end;

procedure TMDIProjeto.AbrirExplorer1Click(Sender: TObject);
begin
    inherited;
    WinExec(PChar('explorer ' + Copy(ExtractFilePath(Application.ExeName), 1, length(ExtractFilePath(Application.ExeName)) - 1)), sw_show);
end;

procedure TMDIProjeto.ConfiguraesRegionais1Click(Sender: TObject);
begin
    inherited;
    WinExec('Rundll32 shell32.dll,Control_RunDLL intl.cpl', sw_show);
end;

procedure TMDIProjeto.ServioInterbase1Click(Sender: TObject);
begin
    //   WinExec('Rundll32 shell32.dll,Control_RunDLL ibmgr.cpl', sw_show);
    WinExec('Rundll32 shell32.dll,Control_RunDLL Firebird2Control.cpl', sw_show);
end;

procedure TMDIProjeto.Devolues1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 106]);
    DMProjeto.CriarForm('FrmDevolucoesClientes', Self, false);
end;

procedure TMDIProjeto.PayrollDetalhado1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDetalhePayroll', Self, false);
end;

procedure TMDIProjeto.AssistentedeAlertas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAlertas', self, false);
end;

procedure TMDIProjeto.Au1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFinanceiroEmail', self, false);
end;

procedure TMDIProjeto.ClientesePrestadoresdeServios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClientesPrestServ', self, false);
end;

procedure TMDIProjeto.AutorizaesPendentes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAutorizacoesPerfil', self, true);
end;

procedure TMDIProjeto.ReciboColetivo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptReciboColetivo', self, false);
end;

procedure TMDIProjeto.Ocorrncias2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptOcorrencias', self, false);
end;

procedure TMDIProjeto.SalesOrders1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSalesOrders', Self, False);
end;

procedure TMDIProjeto.SalesOrderscomItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSalesOrdersItens', Self, False);
end;

procedure TMDIProjeto.Estimates2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptEstimates', Self, False);
end;

procedure TMDIProjeto.FaturamentodasSO1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFaturaSalesOrders', Self, False);
end;

procedure TMDIProjeto.PropagandasparaVenda1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPropagandas', Self, False);
end;

procedure TMDIProjeto.SalerOrderRpida1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, IIF(DMProjeto.nTipoMovPRFunc = 0, 2, DMProjeto.nTipoMovPRFunc)]);
    DMProjeto.CriarForm('FrmPedidoRapido', Self, False, False, '', True);
end;

procedure TMDIProjeto.DevoluesdeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 6]);
    DMProjeto.CriarForm('FrmDevolucoesFornecedores', Self, False);
end;

procedure TMDIProjeto.DevoluesvendasClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDevolucaoVendas', self, false);
end;

procedure TMDIProjeto.NomedaMquina1Click(Sender: TObject);
begin
    inherited;
    DlgMsg.ShowMsg(1200, [getNomeMaquina]);
end;

procedure TMDIProjeto.Itensmaisvendido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensMaisVendido', self, false);
end;

procedure TMDIProjeto.OsGrupodeItensmaisvendido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptGruposMaisVendido', self, false);
end;

procedure TMDIProjeto.OsFabricantesmaisvendido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFabricantesMaisVendido', self, false);
end;

procedure TMDIProjeto.Conversao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmConversacao', self, false);
end;

procedure TMDIProjeto.IBEventos_ConversasEventAlert(Sender: TObject;
    EventName: string; EventCount: Integer; var CancelAlerts: Boolean);
var nIndice: integer;
begin
    inherited;
    if (EventName = 'EVENTO_CONVERSAS') then
        begin

            DMProjeto.Q_Conversa.SQL.text := 'select conversa from conversas ' +
                'where para = :nUsuario and leu = ''N'' order by conversa';
            DMProjeto.Q_Conversa.params[0].asinteger := DMProjeto.nFuncionario;
            DMProjeto.Q_Conversa.open;
            if DMProjeto.Q_Conversa.FieldByname('conversa').asinteger > 0 then
                begin
                    nIndice := DMProjeto.FormExiste('FrmConversacao');
                    if nIndice <> -1 then
                        PostMessage(Screen.Forms[nIndice].Handle, PM_Conversa, 0, 0)
                    else
                        DMProjeto.CriarForm('FrmConversacao', self, false);
                end;
        end;
end;

procedure TMDIProjeto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if (Application.MessageBox('Deseja Realmente Sair do Sistema?', 'Aviso', MB_YESNO or MB_ICONQUESTION) = 7) then
        begin
            Action := caNone;
            Exit;
        end;
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'Update usuarios set logado = ''N'' where usuario = :usuario ';
            Params[0].asinteger := DMProjeto.nFuncionario;
            ExecSQL;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        end;
    inherited;
end;

procedure TMDIProjeto.ListagemdeFuncionrios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFuncionarios', self, false);
end;

procedure TMDIProjeto.SetMenu(bAtiva: boolean);
var i: integer;
begin
    {	with MenuMDI do begin
       for i:=0 to Items.Count-1 do
         MenuMDI.Items[i].Enabled := bAtiva;
      end;}
    {
      Cadastros1.enabled := bAtiva;
      Itens1.enabled := bAtiva;
      Clientes1.enabled := bAtiva;
      Fornecedores1.enabled := bAtiva;
      Funcionrios1.enabled := bAtiva;
      Caixa.enabled := bAtiva;
      Financeiro1.enabled := bAtiva;
      Agenda1.enabled := bAtiva;
      Relatrios1.enabled := bAtiva;
      Utilitrios1.enabled := bAtiva;
      Ajuda1.enabled := bAtiva;
    }
end;

procedure TMDIProjeto.PedidosPendentes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPedidosPendentes', self, false);
end;

procedure TMDIProjeto.abelasdePreosII1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgTabelaPrecos', Self, False);
end;

procedure TMDIProjeto.RelatrioseImpressoras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRelatoriosImpressoras', Self, False);
end;

procedure TMDIProjeto.SobreClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgSobre', Self, true);
end;

procedure TMDIProjeto.ConsistnciadePedidos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptConsistencia', Self, False);
end;

procedure TMDIProjeto.MetasdeFaturamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMetasFaturamento', Self, False);
end;

procedure TMDIProjeto.MetasdeFaturamento2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptMetasFaturamento', Self, False);
end;

procedure TMDIProjeto.MetasporVendedor1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptMetasVendedor', Self, False);
end;

procedure TMDIProjeto.PerfisdeTabelasdePreos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPerfisTabelaPrecos', self, true);
end;

procedure TMDIProjeto.PerfisdeTiposdeOperaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['S']);
    DMProjeto.CriarForm('FrmPerfisTiposMovimento', self, true);
end;

procedure TMDIProjeto.PerfisdeTiposdeOperaes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['E']);
    DMProjeto.CriarForm('FrmPerfisTiposMovimento', self, true);
end;

procedure TMDIProjeto.ltimasEntradas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmUltimasEntradas', self, true);
end;

procedure TMDIProjeto.DefinirPromoes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPromocoes', self, false);
end;

procedure TMDIProjeto.OperadoresdeProduo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmOperadores', self, false);
end;

procedure TMDIProjeto.ItensemPromoo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPromocoes', self, false);
end;

procedure TMDIProjeto.ItensemFalta1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmItensFalta', Self, False);
end;

procedure TMDIProjeto.ItememFalta1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensFalta', Self, False);
end;

procedure TMDIProjeto.EntradasConsignadas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 104]);
    DMProjeto.CriarForm('FrmEntradasConsignadas', Self, False);
end;

procedure TMDIProjeto.SadasConsignadas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 4]);
    DMProjeto.CriarForm('FrmSaidasConsignadas', Self, False);
end;

procedure TMDIProjeto.GrficoABCdoEstoque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCurvaABC', Self, False);
end;

procedure TMDIProjeto.Almoxarifados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAlmoxarifados', self, false);
end;

procedure TMDIProjeto.ransfernciasentreAlmoxarifados1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTransferenciasAlmox', self, false);
end;

procedure TMDIProjeto.VendasdeProduto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendasProdutos', self, false);
end;

procedure TMDIProjeto.MensagensparaOperaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 'C']);
    DMProjeto.CriarForm('FrmMensagensOperacoes', self, false);
end;

procedure TMDIProjeto.Composio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensComposicao', self, false);
end;

procedure TMDIProjeto.ransfernciadeAlmoxarifados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptTransferenciasAlmox', self, false);
end;

procedure TMDIProjeto.OcorrnciasdeFornecedores1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([2]);
    DMProjeto.CriarForm('FrmOcorrencias', self, false);
end;

procedure TMDIProjeto.FreteNotadeConhecimento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFretes', self, false);
end;

procedure TMDIProjeto.OperaesnoECF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmConfigECF', Self, False);
end;

procedure TMDIProjeto.ConfiguraodoECF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([-1, DMProjeto.Maquina]);
    DMProjeto.CriarForm('FrmPDVs', Self, true);
    DMProjeto.nPDV := DMProjeto.GetPDVMaq;
end;

procedure TMDIProjeto.AdministrativoCarto1Click(Sender: TObject);
begin
    inherited;
    {Eliminação do DMECF.}
    //    DMECF.Administrativa( 'CARTAO ' );
end;

procedure TMDIProjeto.AdministrativoTecBan1Click(Sender: TObject);
begin
    inherited;
    {Eliminação do DMECF.}
    //    DMECF.Administrativa( 'TECBAN' );
end;

procedure TMDIProjeto.AdministrativoHiperCard1Click(Sender: TObject);
begin
    inherited;
    {Eliminação do DMECF.}
        //    DMECF.Administrativa( 'HIPER' );
end;

procedure TMDIProjeto.EncerrantesdeCombustvel1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEncerrantes', Self, False);
end;

procedure TMDIProjeto.EncerrantesdeCombustvel2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptEncerrantes', Self, False);
end;

function TMDIProjeto.ZPeloSistema(): Boolean;
var Sim: Boolean;
begin
    if (FileExists(ExtractFilePath(Application.ExeName) + 'ZPeloSistema.TXT')) then
        begin
            Sim := True;
            DeleteFile(ExtractFilePath(Application.ExeName) + 'ZPeloSistema.TXT');
        end
    else
        Sim := False;
    Result := Sim;
end;

function TMDIProjeto.PosReducaoZ(): boolean;
var Dia, Mes, Ano, data: string;
begin
    Result := true;
    {Eliminação do DMECF.}
    //  Try
    //    Try
    //      DlgWait := TDlgWait.Create(self);
    //      DlgWait.lblMsg.Caption := 'Aguarde, gravando dados da Reducao Z...';
    //      DlgWait.Show;
    //      DlgWait.Update;
    //     {PAF} {Dados Redução Z}
    //      data :=  DMECF.ECF1.GetDataHoraUltimaZ();
    //      DMProjeto.ReducaoZ(data);
    //      dia:= Copy(FormatDateTime('ddmmyyyy',DMProject.getDataServidor),1,2);
    //      mes:= Copy(FormatDateTime('ddmmyyyy',DMProject.getDataServidor),3,2);
    //      ano:= Copy(FormatDateTime('ddmmyyyy',DMProject.getDataServidor),7,2);
    //  //    if (Copy(data,3,2) <> mes) Then Begin
    //  //      MessageDlg('A ultima redução Z foi efetuada no mes anterior, aguarde que o '+#13+#10+'sistema irá executar tarefas obrigatórias da legislação fiscal', mtInformation, [mbOK], 0);
    //        {Atualizar Sintegra}
    //      DlgWait.lblMsg.Caption := 'Aguarde, gravando dados do SPED/SINTEGRA...';
    //      DlgWait.Show;
    //      DlgWait.Update;
    ////      DMECF.ECF1.Sintegra(dia+mes+ano,dia+mes+ano, ExtractFilePath(Application.ExeName));
    ////      DMPRojeto.AtualizarSintegra( ExtractFilePath(Application.ExeName));
    ////      DeleteFile(ExtractFilePath(Application.ExeName)+'SINTEGRA.TXT');
    //  //    End;
    //      {Pegando o Numero da Proxima Redução Z}
    //      DMProjeto.PAFCampos.ProximaZ := SoNumeros(IntToStr(StrToInt(DMECF.ECF1.GetNroUltimaReducaoZ()) + 1),4);
    //      FuncoesPAF.AtualizaArquivoAuxiliar(DMProjeto.PAFCampos, ExtractFilePath(Application.ExeName));
    //      Result := true;
    //    Except
    //      Result := false;
    //    End;
    //  finally
    //     DlgWait.Close;
    //  End;

end;

procedure TMDIProjeto.FinalizarECF1Click(Sender: TObject);
var s, data: string;
    dia, mes, ano: integer;
    dData: TDateTime;
begin
    {Eliminação do DMECF.}
    //    inherited;
    //    s := DMECF.ECF1.ChkECFAberto;
    //    if s = 'ECF Fechado' then begin
    //      DlgMsg.ShowMsg(6035);
    //    end else begin
    //      if DlgMsg.ShowMsg(6033) = 100 then begin
    //         try
    //          DMECF.ECF1.FechamentoDia(ExtractFilePath(Application.ExeName));
    //          if (DMProjeto.PAFObrigatorio) Then Begin
    //            if (not PosReducaoZ()) Then
    //              raise Exception.Create('Erro ao tentar gravar dados da última redução Z!');
    //            data :=  DMECF.ECF1.GetDataHoraUltimaZ();
    //            dia := StrToInt(Copy(data,1,2));
    //            mes := StrToInt(Copy(data,3,2));
    //            ano := StrToInt('20'+Copy(data,6,2));
    //            dData := EncodeDate(ano,mes,dia);
    //            if (Not DMProjeto.GerarMovimentoPorECF(dData, dData)) Then
    //              raise Exception.Create('Erro ao tentar gerar arquivo do movimento do ECF!');
    //            MessageDlg('Finalização do ECF efetuada com êxito!'
    //                       +#13+'Arquivo do movimento diario gerado em: '
    //                       +ExtractFilePath(Application.ExeName) + dmECF.ECF1.GetCodigoModeloFiscal() + Copy(DMProjeto.PAFCampos.NroFabricacao_ECF,7,14) + FormatDateTime('DDMMYYYY',dData) +'.TXT'
    //                       +#13+'A aplicação será finalizada!!!', mtInformation, [mbOK], 0);
    //            {InicializarECF1.Enabled := True;}
    //            Application.Terminate;
    //         End;
    //         Except on E:Exception do
    //             MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
    //         End;
    //      end;
    //    end;
end;

procedure TMDIProjeto.InicializarECF1Click(Sender: TObject);
var s: string;
begin
    {Eliminação do DMECF.}
    //    s := DMECF.ECF1.ChkECFAberto;
    //    if (s = 'Z Pendente') Then Begin
    //      if (MessageDlg('Existe uma "REDUÇÃO Z" pendente. Emitir agora?',mtConfirmation, mbOKCancel, 0) = mrOk) Then
    //         FinalizarECF1Click(self);
    //    end Else Begin
    //        if (s = 'ECF Fechado') Then Begin
    //          if DlgMsg.ShowMsg(6032) = 100 then begin
    //             if ((DMProjeto.PAFObrigatorio) And (Not ZPeloSistema())) Then
    //               PosReducaoZ();
    //             if (DMProjeto.nModeloECF = 8) Then
    //                DMECF.ECF1.AberturaDia('0,00', 'Dinheiro')
    //             Else
    //                DMECF.ECF1.Sangria('0,01', DMProjeto.sLoginName);
    //             InicializarECF1.Enabled := False;
    //             if (DMProjeto.PAFObrigatorio) Then Begin
    //               DMProjeto.ReducaoZ_R06('CN');
    //               DMProjeto.PAFCampos.ProximaZ := SoNumeros(IntToStr(StrToInt(DMECF.ECF1.GetNroUltimaReducaoZ()) + 1),4);
    //             End;
    //          End ;
    //        End Else
    //          MessageDlg('A abertura do ECF já foi efetuada',mtInformation,[mbOk], 0);
    //    End;
end;

procedure TMDIProjeto.Sangria1Click(Sender: TObject);
begin
    inherited;
    {PAF}
 {Eliminação do DMECF.}
 //   Try
 //     Try
 //        if (DMProjeto.PAFObrigatorio) Then Begin
 //          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
 //          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
 //          if ((DMPRojeto.PAFObrigatorio) And (validaPAF.CodigoErro = 1)) Then
 //            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
 //          if (Not (DMECF.ECF1.DiaJaAberto())) Then
 //             raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
 //        End;
 //
 //        DMProjeto.CriarForm('DlgSangriaCaixa', self, true);
 //     except
 //        raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
 //             'ou os dados do arquivo auxiliar diverge da impressora!!!');
 //     End;
 //   Except
 //     On E:Exception do Begin
 //        MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
 //     End;
 //   End;
end;

procedure TMDIProjeto.Suprimento1Click(Sender: TObject);
begin
    inherited;
    {PAF}
 {Eliminação do DMECF.}
 //   Try
 //     Try
 //        if (DMProjeto.PAFObrigatorio) Then Begin
 //          DMProjeto.PAFCampos := FuncoesPAF.LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
 //          validaPAF := (FuncoesPAF.ValidarPAF(StrToCurr(DMECF.ECF1.GetGrandeTotal()),StrToCurr(DMProjeto.PAFCampos.GrandeTotal), DMECF.ECF1.GetNumeroFabricacao(),DMProjeto.PAFCampos.NroFabricacao_ECF));
 //          if ((DMPRojeto.PAFObrigatorio) And (validaPAF.CodigoErro = 1)) Then
 //            Raise Exception.Create(validaPAF.MsgErro+#13+'O Sistema será bloqueado para vendas no ECF.');
 //          if (Not (DMECF.ECF1.DiaJaAberto())) Then
 //             raise Exception.Create('A impressora ainda não foi iniciada para este dia!!!');
 //        End;
 //        DMProjeto.CriarForm('DlgSuprimentosCaixa', self, true);
 //     except
 //        raise Exception.Create('Erro ao acessar impressora fiscal, '#13+
 //             'ou os dados do arquivo auxiliar diverge da impressora!!!');
 //     End;
 //   Except
 //     On E:Exception do Begin
 //        MessageDlg(pchar(E.Message), mtWarning, [mbOK], 0);
 //     End;
 //   End;

end;

procedure TMDIProjeto.NotaFiscalparaCupom1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 8]);
    DMProjeto.CriarForm('FrmNotasCupons', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.OutrasSadas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 40]);
    DMProjeto.CriarForm('FrmOutrasSaidas', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.OutrasEntradas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 150]);
    DMProjeto.CriarForm('FrmOutrasEntradas', Self, False, False, '', DMProjeto.Parametro('VendasFullScreen') = 'S');
end;

procedure TMDIProjeto.iposdeLentes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposLentes', self, false);
end;

procedure TMDIProjeto.iposdeMaterial1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposMaterial', self, false);
end;

procedure TMDIProjeto.Cores1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCores', self, false);
end;

procedure TMDIProjeto.Importao1Click(Sender: TObject);
begin
    inherited;
    DlgImportacao := TDlgImportacao.create(self);
    DlgImportacao.showmodal;
    DlgImportacao.free;
end;

procedure TMDIProjeto.AcertodeConsignaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 7]);
    DMProjeto.CriarForm('FrmAcertoConsigEnt', Self, False);
end;

procedure TMDIProjeto.AcertodeConsignaes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 107]);
    DMProjeto.CriarForm('FrmAcertoConsigSaid', Self, False);
end;

procedure TMDIProjeto.DevoluesdeConsignaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 9]);
    DMProjeto.CriarForm('FrmDevConsigEnt', Self, False);
end;

procedure TMDIProjeto.Filiais1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFiliais', Self, False);
end;

procedure TMDIProjeto.EntradasConsignadas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptEntradasConsig', Self, False);
end;

procedure TMDIProjeto.Carteiras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCarteiras', Self, False);
end;

procedure TMDIProjeto.ransfernciadeDinheiroChequesdeoutraEmpresa1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgRepasseEntreEmpresas', Self, False);
end;

procedure TMDIProjeto.ParcelaseChequesaReceber1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptParcelasChequesAReceber', Self, False);
end;

procedure TMDIProjeto.ContaseChequesaPagar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptContasChequesAPagar', Self, False);
end;

procedure TMDIProjeto.ListagemECF1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensECF', Self, False);
end;

procedure TMDIProjeto.RelatriodeCaixa1Click(Sender: TObject);
begin
    inherited;
    if MessageDlg('Para o relatório do tipo "A", clique em "Sim".'
        + #13 + #10 + 'Para o relatório do tipo "B", clique em "Não".'
        + #13 + #10 + 'Escolha o relatório.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        //    if DMProjeto.Parametro('ModeloFechamento') = 'A' then
        DMProjeto.CriarForm('DlgRelCaixa', Self, False)
    else
        DMProjeto.CriarForm('DlgRelCaixaB', Self, False);
end;

procedure TMDIProjeto.Mdicos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMedicos', Self, False);
end;

procedure TMDIProjeto.CheckExpress1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmChecks', Self, False);
end;

procedure TMDIProjeto.Fornecedores4Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensConsignados', Self, False);
end;

procedure TMDIProjeto.Clientes4Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensConsigSaida', Self, False);
end;

procedure TMDIProjeto.ComprasdeProdutosnoPerodo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComprasProdutos', Self, False);
end;

procedure TMDIProjeto.GerarInventrio2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptInventarioEstoque', Self, False);
end;

procedure TMDIProjeto.AlterarInventrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FRMInventarioEstoque', Self, False);
end;

procedure TMDIProjeto.Veiculos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FRMVeiculos', Self, False);
end;

procedure TMDIProjeto.ExecutarComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DLGExecutarComando', Self, False);
end;

procedure TMDIProjeto.ContatoPsVenda1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDataPosVenda', Self, False);
end;

procedure TMDIProjeto.Etiquetas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgEtiquetaItem', Self, False);
end;

procedure TMDIProjeto.LotesaVencer2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensLotes', Self, False);
end;

procedure TMDIProjeto.DevoluoFornecedores1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDevolucaoCompras', self, false);
end;

procedure TMDIProjeto.OutrasSaidas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptOutrasSaidas', self, false);
end;

procedure TMDIProjeto.CheckoutClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCheckout', Self, False, False, '', True);
end;

procedure TMDIProjeto.OutrasEntradas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptOutrasEntradas', self, false);
end;

procedure TMDIProjeto.ProdutosVendidosnoPeriodo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptProdutosVendidos', self, false);
end;

procedure TMDIProjeto.MarcasdeEquipamentos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMarcas', self, false);
end;

procedure TMDIProjeto.ModelosdeEquipamentos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmModelos', self, false);
end;

procedure TMDIProjeto.ipoEquipamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTipoEquipamentos', self, false);
end;

procedure TMDIProjeto.CadastroEquipamentos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmClientesEquipamentos', self, false);
end;

procedure TMDIProjeto.ipodoServios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposServicos', self, false);
end;

procedure TMDIProjeto.StatusdoServiosChamados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmStatusServicos', self, false);
end;

procedure TMDIProjeto.EntradaEquipamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEntradasAssistencia', self, false);
end;

procedure TMDIProjeto.LocalizaoEquipamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmLocalEquipamento', self, false);
end;

procedure TMDIProjeto.Laboratrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('dlgAcompanhamentoAssistencia', Self, False, False, '', True);
end;

procedure TMDIProjeto.ExportacaoPDVClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgExportarDadosPDV', self, true);
end;

procedure TMDIProjeto.abelasdePreosMultiUnidades1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPrecosMultiUnidades', Self, False);
end;

procedure TMDIProjeto.ClculodoPreodeCusto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCalculoCusto', Self, False);
end;

procedure TMDIProjeto.Acessrios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAcessorios', Self, False);
end;

procedure TMDIProjeto.ChamadoTcnico1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmChamadoTecnico', Self, False);
end;

procedure TMDIProjeto.Romaneio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRomaneioCobr', Self, False);
end;

procedure TMDIProjeto.abeladePreo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgTabelaPreco', Self, False);
end;

procedure TMDIProjeto.Vendas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendas', Self, False);
end;

procedure TMDIProjeto.Pedido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPedidos', Self, False);
end;

procedure TMDIProjeto.BaixarTtulosManualmente1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgBaixaTitulosBoletoBancario', self, false);
end;

procedure TMDIProjeto.GerarRemessa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgGerarRemessa', Self, False);
end;

procedure TMDIProjeto.ReceberRetornodeBanco1Click(Sender: TObject);
begin
    inherited;
    DMPRojeto.CriarForm('DlgLerRetorno', Self, False);
end;

procedure TMDIProjeto.Consignaes3Click(Sender: TObject);
begin
    inherited;
    DMPRojeto.CriarForm('RptEntrConsig', Self, False);
end;

procedure TMDIProjeto.DevoluesdeConsignaes2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptDevConsig', Self, False);
end;

procedure TMDIProjeto.Consignaes4Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendasConsig', Self, False);
end;

procedure TMDIProjeto.GruposdeComisses1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmGruposComissoes', Self, False);
end;

procedure TMDIProjeto.PreodeVendaXPreodeCusto1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptPrecoXCusto', Self, False);
end;

procedure TMDIProjeto.RelaodePreos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptListaPrecos', Self, False);
end;

procedure TMDIProjeto.IP1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgIP', Self, False);
end;

procedure TMDIProjeto.FiltrarFavorecido1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFiltroFavorecidos', Self, False);
end;

procedure TMDIProjeto.Equipamentos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmEquipamento', Self, False);
end;

procedure TMDIProjeto.ecnologias1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTecnologias', Self, False);
end;

procedure TMDIProjeto.Marcas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMarcas', Self, False);
end;

procedure TMDIProjeto.StatusAtendimento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmStatusAtendimentos', self, false);
end;

procedure TMDIProjeto.ipos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposServicos', self, false);
end;

procedure TMDIProjeto.Agendamento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAgendamento', self, false);
end;

procedure TMDIProjeto.OrdensdeServio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmOrdemServico', self, false);
end;

procedure TMDIProjeto.Rotas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRotas', self, false);
end;

procedure TMDIProjeto.FichaCardex1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFichaCardex', self, false);
end;

procedure TMDIProjeto.Manuteno1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRotasManutencoes', self, false);
end;

procedure TMDIProjeto.ClientesEquipamentos2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptClientesEquipamentos', self, false);
end;

procedure TMDIProjeto.OrdensdeServio2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptOrdensServicos', self, false);
end;

procedure TMDIProjeto.Rotas2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptRotas', self, false);
end;

procedure TMDIProjeto.Fretes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptFretes', Self, False);
end;

procedure TMDIProjeto.Cotaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmCotacoes', Self, False);
end;

procedure TMDIProjeto.Localizaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmLocalizacoes', Self, False);
end;

procedure TMDIProjeto.ChequesPorOperao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChequesPorOperacao', Self, False);
end;

procedure TMDIProjeto.SugestodeCompras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSugestaoCompras', Self, False);
end;

procedure TMDIProjeto.PlanodeDespesas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgPlanoContasDespesas', Self, False);
end;

procedure TMDIProjeto.EstoqueFiscal1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensEstoqueFiscal', Self, false);
end;

procedure TMDIProjeto.AtualizarAcesso1Click(Sender: TObject);
begin
    inherited;
    FrmAtualizarAcesso := TFrmAtualizarAcesso.Create(Self, True, 0, funcoes.PlacadeRede, '', '', '', '', '');
end;

procedure TMDIProjeto.ChamadosporFuncionrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptChamadosPorFunc', Self, False);
end;

procedure TMDIProjeto.ImportaoPDVs1Click(Sender: TObject);
begin
    inherited;
    //  DMProjeto.CriarForm('DlgImportacaoPDV', self, true);
    DMProjeto.CriarForm('DlgCargaDadosPDV', self, true);

end;

procedure TMDIProjeto.VendasdeCartesdeCredito1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendasCartoes', self, false);
end;

procedure TMDIProjeto.Mix1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptMixVendedorClientes', self, false);
end;

procedure TMDIProjeto.DefinirPontuaodeCompra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPontuacoes', self, true);
end;

procedure TMDIProjeto.RelacaoPontosClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptRelacaoPontos', self, true);
end;

procedure TMDIProjeto.InformaesFinanceiras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([Null, 1 {TipoFav}]);
    DMProjeto.CriarForm('DlgInformacoesFinanceiras', Self, true);
end;

procedure TMDIProjeto.OutrasEntradascomProdutos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptOutrasEntradasProdutos', self, true);
end;

procedure TMDIProjeto.LicitaoparaCompras1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmLicitacoes', self, False);
end;

procedure TMDIProjeto.PermitirAutorizaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgUsuariosPoderes', self, False);
end;

procedure TMDIProjeto.ReposiodeEstoquedeGondolas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptReposicaoGondolas', self, False);
end;

procedure TMDIProjeto.Autorizaes1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptAutorizacoes', self, False);
end;

procedure TMDIProjeto.ConsultaPreosPeloCliente1Click(Sender: TObject);
begin
    inherited;
    DlgConsultaPrecosSalao := TDlgConsultaPrecosSalao.create(self);
    DlgConsultaPrecosSalao.ShowModal;
    DlgConsultaPrecosSalao.Release;

end;

procedure TMDIProjeto.ApuraodosCaixas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgApuracaoCaixa', Self, False)
end;

procedure TMDIProjeto.AjustedeEstoqueFiscal1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmAjustesItensFiscal', self, false);
end;

procedure TMDIProjeto.SaldoConsignado1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSaldoConsignacaoSaida', self, false);
end;

procedure TMDIProjeto.ExportacaoMovimentacaoClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgExportarMovimentos', self, false);
end;

procedure TMDIProjeto.CargadeDados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCargaDadosPDV', self, false);
end;

procedure TMDIProjeto.VendaPorVendedor1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendaVendedor', self, false);
end;

procedure TMDIProjeto.VendaProdutosporVendedor1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendaProdutoVendedor', self, false);
end;

procedure TMDIProjeto.AnteciparTitulos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAntecipacaoDuplicatas', self, false);
end;

procedure TMDIProjeto.FormShow(Sender: TObject);
begin
    inherited;
    //  lbVersao.Visible := True;
  //  lbVersao.Width := ImageMDI.Width;
  //  lbVersao.Left := ImageMDI.Left;
  //  lbVersao.Top  := ImageMDI.Height + 1;
  //  lbVersao.Caption := 'Versão do Sistema: ' + VersaoSistema;
end;

procedure TMDIProjeto.VerificarAutenticao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgVerificaAutenticacao', Self, True, False, 'Verificar Autenticação', false);
end;

procedure TMDIProjeto.AtualizarEstoqueClick(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAtualizarEstoque', Self, False);
end;

procedure TMDIProjeto.AlterarSenha1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAlterarSenha', Self, False);
end;

procedure TMDIProjeto.DigitaodaProduodosServios1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmProducoesServico', Self, False);
end;

procedure TMDIProjeto.RelaodaProduodosServiosemItens1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptProducoesServico', Self, False);
end;

procedure TMDIProjeto.ComissesPorLiquidez1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComissoesLiquidez', Self, False);
end;

procedure TMDIProjeto.ExportaoDados1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgNFeExportarDados', Self, False);
end;

procedure TMDIProjeto.ExportaoNotasFiscais1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgEscolherOperacao', self, true);
end;

procedure TMDIProjeto.ProdutosVendidosnoPerodoGrupoPai1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptProdutosVendidosGrupoPai', self, true);
end;

procedure TMDIProjeto.ApuraoPisCofins1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptApuracaoPisCofins', self, true);
end;

procedure TMDIProjeto.ComissesMontagens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComissaoMontagem', self, true);
end;

procedure TMDIProjeto.Carga1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRomaneio', Self, False);
end;

procedure TMDIProjeto.Separao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmRomaneioSeparacao', Self, False);
end;

procedure TMDIProjeto.ComissoVendaRecebimento1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComissaoVendaRecebimento', self, true);
end;

procedure TMDIProjeto.PrincipioAtivo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPrincipioAtivo', self, false);
end;

procedure TMDIProjeto.AtualizarAcessoDia();
var
    sDataDia: string;
begin
    with DMProjeto.Q_SQL do
        begin
            Close;
            SQL.Text := 'select distinct format(current_date,''yyyyMMdd'' ) from anos  ';
            Open;
            sDataDia := MD5.MD5Print(MD5.MD5String(Trim(Fields[0].AsString)));
            Close;
            SQL.Text := 'Update PARAMETROS SET VALOR = :sDataDia WHERE PARAMETRO = ''VerificouAcessoHoje'' ';
            Params[0].AsString := sDataDia;
            Open;
            Close;
        end;
    try
        DMProjeto.IBT_Projeto.Commit;
    except
    end;
end;

function TMDIProjeto.PrimeiroAcessoDia(): boolean;
var
    retorno: Boolean;
    sData, sDataDia: string;
begin

    //    DlgWait.lblMsg.Caption := 'Verificando primeiro acesso do dia...';
    //    DlgWait.Show;
    //    DlgWait.Update;
    //
    //    sData := DMProjeto.Parametro('VerificouAcessoHoje');
    //    with DMProjeto.Q_SQL do begin
    //        Close;
    //        SQL.Text := 'select distinct format(current_date,''yyyyMMdd'' ) from anos  ';
    //        Open;
    //        sDataDia := MD5.MD5Print(MD5.MD5String(Trim(Fields[0].AsString)));
    //    end;
    //    if (sData = sDataDia) then
    //        retorno := false
    //    else
    retorno := true;
    Result := retorno;
end;

function TMDIProjeto.VerificaPermissaoAcesso(): boolean;
var
    ReceberFTP: TNMFTP;
    sDataExpira, sHoraExpira, sCnpj, sRazao, sChaveTMP, sEstacoes, sPlacarede, sClienteBloqueado: string;
    dDataExpira, dia: TdateTime;
    nDia, nMes, nAno: word;

begin
    //    try
    //        DlgWait.lblMsg.Caption := 'Conectado ao servidor 1, verificando imagem...';
    //        DlgWait.Show;
    //        DlgWait.Update;
    //        UrlDownloadToFile(nil, PChar('http://mjrantunes.com.br/img/imagemMDI.jpg'), PChar(DMProjeto.ImgPath + 'ImagemMDI.jpg'), 0, nil);
    //    except
    //    end;

    result := false;
    //    if PrimeiroAcessoDia() then begin
    //        result := false;
    //        ReceberFTP := TNMFTP.Create(self);
    //
    //        DlgWait.lblMsg.Caption := 'Verificando estações...';
    //        DlgWait.Show;
    //        DlgWait.Update;
    //
    //        with DMProjeto.Q_Validacao do begin
    //            Close;
    //            Sql.Text := ' SELECT C.dataexpira, C.HoraExpira,  c.chave, c.estacaochave, C.ESTACOES ' +
    //                ' FROM  estacoeschave c ';
    //            Open;
    //            DecodeDate(DMProjeto.getDataServidor + 30, nAno, nMes, nDia);
    //            dDataExpira := EncodeDate(nAno, nMes, 20);
    //
    //            sDataExpira := FormatDateTime('DD/MM/YYYY', dDataExpira);
    //            sHoraExpira := '12:00:00';
    //            sEstacoes := iif(RecordCount > 0, FieldByName('ESTACOES').AsString, '0005');
    //            sRazao := LowerCase(Funcoes.RetiraAcentos(dmProjeto.sRazaoEmpresa));
    //            sCnpj := Funcoes.SoNumeros(dmProjeto.sCPF_CNPJEmpresa, 14);
    //            sChaveTMP := LowerCase(MD5.MD5Print(MD5.MD5String(sDataExpira + sHoraExpira + sCnpj + sRazao + sEstacoes + '{CHAVE PARA 30 DIAS}')));
    //            dia := StrToInt(FormatDateTime('dd', Now));
    //        end;
    //        try
    //            DlgWait.lblMsg.Caption := 'Conectando ao servidor 1...';
    //            DlgWait.Show;
    //            DlgWait.Update;
    //            try
    //                DlgWait.lblMsg.Caption := 'Conectado ao servidor 1, verificando imagem...';
    //                DlgWait.Show;
    //                DlgWait.Update;
    //                UrlDownloadToFile(nil, PChar('http://mjrantunes.com.br/img/imagemMDI.jpg'), PChar(DMProjeto.ImgPath + 'ImagemMDI.jpg'), 0, nil);
    //            except
    //            end;
    //
    //            with DMProjeto.Q_ValidaCliente do begin
    //
    //                Close;
    //                ParamByName('cpf_cnpj').AsString := DMProjeto.sCPF_CNPJEmpresa;
    //                Open;
    //                sClienteBloqueado := FieldByName('bloqueado').AsString;
    //
    //                DMProjeto.DadosClientesVerificacao(dmprojeto.sCPF_CNPJEmpresa, dmprojeto.sRazaoEmpresa, dmprojeto.sEmail, dmprojeto.sFone1Empresa, DMProjeto.Maquina);
    //
    //                DlgWait.lblMsg.Caption := 'Conectado ao servidor 1, salvando dados no servidor...';
    //                DlgWait.Show;
    //                DlgWait.Update;
    //
    //                if (sClienteBloqueado = 'N') then begin
    //                    AtualizarAcessoDia();
    //                    Result := true;
    //                    if (dia >= 15) and (dia <= 20) then
    //                        if (dDataExpira < DMProjeto.getDataServidor) then
    //                            dmprojeto.UpdateEstacoes(sChaveTMP, sDataExpira, sHoraExpira, sEstacoes);
    //                end else
    //                    Result := False
    //
    //            end;
    //        except
    //        End;
    ////            with ReceberFTP do begin
    ////                DlgWait.lblMsg.Caption := 'Conectando ao servidor 2...';
    ////                DlgWait.Show;
    ////                DlgWait.Update;
    ////                Host := 'ftp.synctech.com.br';
    ////                UserID := 'nfe2';
    ////                PassWord := 'nfe2';
    ////                Application.ProcessMessages;
    ////
    ////                try
    ////                    Connect;
    ////                    Mode(MODE_BYTE);
    ////
    ////                    DlgWait.lblMsg.Caption := 'Conectado ao servidor 2, verificando status ...';
    ////                    DlgWait.Show;
    ////                    DlgWait.Update;
    ////
    ////                    ChangeDir('/wwwroot/NFe2');
    ////                    DownLoad(DMProjeto.sCPF_CNPJEmpresa, ExtractFilePath(Application.ExeName) + DMProjeto.sCPF_CNPJEmpresa);
    ////                    DeleteFile(ExtractFilePath(Application.ExeName) + DMProjeto.sCPF_CNPJEmpresa);
    ////
    ////                    DlgWait.lblMsg.Caption := 'Atualizando o acesso...';
    ////                    DlgWait.Show;
    ////                    DlgWait.Update;
    ////
    ////                    AtualizarAcessoDia();
    ////
    ////                    DlgWait.lblMsg.Caption := 'Conectado ao servidor 2, verificando imagem...';
    ////                    DlgWait.Show;
    ////                    DlgWait.Update;
    ////
    ////                    ChangeDir('/wwwroot/img');
    ////                    DownLoad('ImagemMDI.jpg', DMProjeto.ImgPath + 'ImagemMDI.jpg');
    ////
    ////                    DlgWait.lblMsg.Caption := 'Desconectando do servidor 2...';
    ////                    DlgWait.Show;
    ////                    DlgWait.Update;
    ////
    ////                    result := true;
    ////                    if (dia >= 15) and (dia <= 20) then
    ////                        if (dDataExpira < DMProjeto.getDataServidor) then
    ////                            dmprojeto.UpdateEstacoes(sChaveTMP, sDataExpira, sHoraExpira, sEstacoes);
    ////                except
    ////                    ReceberFTP := TNMFTP.Create(self);
    ////                    with ReceberFTP do begin
    ////                        DlgWait.lblMsg.Caption := 'Conectando ao servidor 3...';
    ////                        DlgWait.Show;
    ////                        DlgWait.Update;
    ////                        Host := 'ftp.mjrantunes.com.br';
    ////                        UserID := 'mjrantunes';
    ////                        PassWord := 'Ant072201';
    ////                        Application.ProcessMessages;
    ////                        try
    ////                            Connect;
    ////                            Mode(MODE_BYTE);
    ////
    ////                            DlgWait.lblMsg.Caption := 'Conectado ao servidor 3, verificando status ...';
    ////                            DlgWait.Show;
    ////                            DlgWait.Update;
    ////
    ////                            ChangeDir('/www/NFe2');
    ////                            DownLoad(DMProjeto.sCPF_CNPJEmpresa, ExtractFilePath(Application.ExeName) + DMProjeto.sCPF_CNPJEmpresa);
    ////                            DeleteFile(ExtractFilePath(Application.ExeName) + DMProjeto.sCPF_CNPJEmpresa);
    ////
    ////                            DlgWait.lblMsg.Caption := 'Atualizando o acesso...';
    ////                            DlgWait.Show;
    ////                            DlgWait.Update;
    ////
    ////                            AtualizarAcessoDia();
    ////
    ////
    ////                            DlgWait.lblMsg.Caption := 'Conectado ao servidor 3, verificando imagem...';
    ////                            DlgWait.Show;
    ////                            DlgWait.Update;
    ////
    ////                            ChangeDir('/www/img');
    ////                            DownLoad('ImagemMDI.jpg', DMProjeto.ImgPath + 'ImagemMDI.jpg');
    ////
    ////                            DlgWait.lblMsg.Caption := 'Desconectando do servidor 3...';
    ////                            DlgWait.Show;
    ////                            DlgWait.Update;
    ////
    ////                            result := true;
    ////                            if (dia >= 15) and (dia <= 20) then
    ////                                if (dDataExpira < DMProjeto.getDataServidor) then
    ////                                    dmprojeto.UpdateEstacoes(sChaveTMP, sDataExpira, sHoraExpira, sEstacoes);
    ////                        except
    ////                            Result := False;
    ////                        end;
    ////                    end;
    ////                end;
    ////            end;
    ////        end;
    //    end else
    //        Result := true;
end;

procedure TMDIProjeto.ExtratoFornecedores1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptExtratoFornecedores', self, true);
end;

procedure TMDIProjeto.MenuFiscalClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgMenuFiscal', Self, true);
end;

procedure TMDIProjeto.ToolButton23Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgMenuFiscal', Self, true);
end;

procedure TMDIProjeto.AjusteComisso1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgAjusteComissao', Self, true);
end;

procedure TMDIProjeto.ComissoPorLiquidezporItemVendido1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptComissaoLiquidezItem', Self, true);
end;

procedure TMDIProjeto.AcessoRemoto1Click(Sender: TObject);
begin
    inherited;
    WinExec(pchar(ExtractFilePath(Application.ExeName) + 'AA_v3.exe'), SW_SHOW);
end;

procedure TMDIProjeto.ResultadosnoPerodo2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptResultadosPeriodo', Self, False);
end;

procedure TMDIProjeto.MovimentaodeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptMovimentacaoItens', Self, False);
end;

procedure TMDIProjeto.VendasTiposCobranas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptVendasTipoCobranca', Self, false);
end;

procedure TMDIProjeto.ApuraoMVAporInvetrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptRelatorioMVA', Self, false);
end;

procedure TMDIProjeto.ApuraoMVAporEntradas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptRelatorioMVAentradas', Self, false);
end;

procedure TMDIProjeto.Localizar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgConsultaOS', self, false);
end;

procedure TMDIProjeto.Funcionrios3Click(Sender: TObject);
begin
    inherited;
    Dmprojeto.CriarForm('FrmFuncionariosIndustria', Self, False);
end;

procedure TMDIProjeto.ipodeMquina1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposMaquinas', Self, False);
end;

procedure TMDIProjeto.CadastrodeMaquinrio1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMaquinasIndustria', Self, False);
end;

procedure TMDIProjeto.ModeObra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMaodeObraIndustria', Self, False);
end;

procedure TMDIProjeto.ipodeInsumo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmTiposInsumos', Self, False);
end;

procedure TMDIProjeto.CadastrodeInsumos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmInsumosIndustria', Self, False);
end;

procedure TMDIProjeto.MatriaPrima1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMateriasPrimasIndustria', Self, False);
end;

procedure TMDIProjeto.Produo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmProducao', Self, False);
end;

procedure TMDIProjeto.DownloadAmmyy1Click(Sender: TObject);
begin
    inherited;
    HlinkNavigateString(nil, 'http://www.ammyy.com/AA_v3.4.exe');
end;

procedure TMDIProjeto.AcessoRemotoTeamViewer1Click(Sender: TObject);
begin
    inherited;
    WinExec(pchar(ExtractFilePath(Application.ExeName) + 'Suporte Remoto Synctech.exe'), SW_SHOW);
end;

procedure TMDIProjeto.DownloadTeamViewer1Click(Sender: TObject);
begin
    inherited;
    HlinkNavigateString(nil, 'https://mega.co.nz/#!YcsiwQJJ!cokHahNvuYRyv0KOYFArexTV2fYTC1YhFM8S5wukKlA');
end;

procedure TMDIProjeto.DownloadShowMyPC1Click(Sender: TObject);
begin
    inherited;
    HlinkNavigateString(nil, 'http://download3.showmypc.com/ShowMyPC3152.exe');
end;

procedure TMDIProjeto.Resgatar1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmPontuacaoResgates', self, true);
end;

procedure TMDIProjeto.RelaodeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptItensIdentificados', Self, False);
end;

procedure TMDIProjeto.VendasnoPerodo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSaidasItensIdentificados', Self, False);
end;

procedure TMDIProjeto.EntradasnoPerodo1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptEntradasItensIdentificados', Self, False);
end;

procedure TMDIProjeto.PedidosdeVendaLicitao1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('RptSalesOrdersLicitacao', Self, False);
end;

procedure TMDIProjeto.FaturarPedidos1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmFaturarPedidos', Self, False);
end;

procedure TMDIProjeto.ConfernciadeCaixa1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgConferenciaCaixa', Self, False);
end;

procedure TMDIProjeto.Oficina1Click(Sender: TObject);
begin
  inherited;
    DMProjeto.CriarForm('RptOficina', Self, False);
end;

procedure TMDIProjeto.OficinaPeriodo1Click(Sender: TObject);
begin
  inherited;
    DMProjeto.CriarForm('RptOficina', Self, False);
end;

procedure TMDIProjeto.ServioscomOficina1Click(Sender: TObject);
begin
  inherited;
    DMProjeto.CriarForm('RptServicosOficina', Self, False);
end;

procedure TMDIProjeto.Lucro1Click(Sender: TObject);
begin
  inherited;
    DMProjeto.CriarForm('RptPedidoLucro', Self, False);
end;

procedure TMDIProjeto.LucroporPedidodeVendas1Click(Sender: TObject);
begin
  inherited;
     DMProjeto.CriarForm('RptPedidoLucro', Self, False);
end;

procedure TMDIProjeto.RptVendasItens1Click(Sender: TObject);
begin
  inherited;
        DMProjeto.CriarForm('RptVendasItens', Self, False);
end;

end.

