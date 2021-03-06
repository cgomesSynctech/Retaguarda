unit RegistroClasses;

interface

uses
   Classes, Dlg_ConciliacaoBancaria, teRender, Frm_PayrollItems, DM_PayrollItems,
   Dlg_EscreverCheque, Dlg_OperacoesDoc, Dlg_MarcarDevolvido, Dlg_ItensFilhos,
   Dlg_ChequesEmitidos, Rpt_Transferencias, Rpt_ChequesNaEmpresa, Dlg_Configurador,
   Dlg_Data, Dlg_GrafVendas, Rpt_ReciboColetivo, Frm_Filiais, DM_Filiais,
   Dlg_Depositos, Frm_TiposAtividade, DM_TimeSimples, Frm_TimeSimples,
   DM_TiposAtividade, Dlg_EmissaoCheques, Rpt_DocGarantia, Dlg_Sobre,
   Dlg_DepositosInstantaneos, Dlg_ExtratoContas, Dlg_AutorizacoesPerfil,
   Dlg_FluxoCaixa, Dlg_GrafAReceberAPagar, Dlg_ConveterPagamentosAgendados,
   Dlg_ChequesPendentesImpressao, DM_TimeCliente, Frm_TimeCliente,
   Dlg_LocalizarCheques, Rpt_ClientesHistoricoDevolucoes, Dlg_CriarEmpresa,
   Rpt_RecebimentosDepositos, Rpt_PagamentosRetiradas, DM_PedidoRapido,
   Dlg_Backup, Dlg_Restaurar, Dlg_RecalcularComissao, Frm_AcompanharItens,
   Dlg_Opcoes, Rpt_ContasAPagar, Dlg_EscolherSaida, Dlg_Etiquetas,
   Dlg_PgtoInstantaneo,  Rpt_ChequesEmitidos, Dlg_ItensAlmox,
   DM_Entradas, Frm_Entradas, Dlg_CadastroCheques,  Dlg_Passos, Dlg_RelCaixa, Dlg_RelCaixaB,
   Dlg_Repasse, Dlg_AlterarConta, Frm_FastFuncPay, Rpt_AnaliseCompra,
   Dlg_Sangria, Dlg_Transferencias, Dlg_PgtoAFuncionarios, Frm_TransferenciasAlmox, DM_TransferenciasAlmox,
   DM_A_Pagar, DM_A_Receber, DM_Payrolls, Frm_Payrolls, DM_Almoxarifados, Frm_Almoxarifados,
   DM_Bancos, DM_TiposMovEntrada, Frm_TiposMovEntrada, DM_Promocoes, Frm_Promocoes,
   DM_Clientes, DM_Contas, Dlg_RecalculoItensFail, rpt_payrollsporcliente,
   DM_MensagensOperacoes, Frm_MensagensOperacoes, DM_TermosContratos, Frm_TermosContratos,
   DM_Empresa, DM_FormasPagamento, DM_Fornecedores, Frm_PedidoRapido,
   DM_Funcionarios, DM_Grupos, DM_Idiomas, Dlg_EscolherOperacao, Dlg_EscolherOperacaoEntrada,
   DM_Itens, DM_Paises, DM_Planos_Pagamento, DM_Requisicoes, Frm_Requisicoes,
   DM_TaxAgencias, DM_Taxs, Frm_AvaliandoEstimates, Frm_EstimatesAprovadas,
   DM_TiposBusiness, DM_TiposEntrega, DM_PedidosCompra, FRM_PedidosCompra,
   DM_UFS, DM_UNIDADES, DM_Usuarios, DM_Compras, FRM_Compras,
   frm_A_Pagar, frm_a_receber, Dlg_ApresentacaoCartao,
   Frm_Bancos, Dlg_CabecalhoRelatorios, Dlg_Reparcelamento,
   Frm_Clientes, Frm_Contas, Dlg_RelatoriosImpressoras,
   Dlg_DepositoCheques, Frm_Empresa, Rpt_Ocorrencias,
   frm_FormasPagamento, Frm_Fornecedores, Frm_Funcionarios,
   Frm_Grupos, Frm_Idiomas, Frm_FactoryEmpresa, DM_FactoryEmpresa,
   Frm_Itens, Frm_Paises, Rpt_FactoryEmpresa, Rpt_Promocoes,
   Frm_Planos_Pagamento, Frm_TaxAgencias, DM_Propagandas, Frm_Propagandas,
   Frm_Taxs, Frm_TiposBusiness, Frm_TiposEntrega,
   Frm_UFS, Frm_Unidades, DM_Mensagens, Frm_Mensagens,
   Frm_Usuarios, MDI_Projeto, Dlg_AgendDespesasFixas,
   Frm_Cargos, DM_Cargos, Frm_Factory, DM_Factory,
   Frm_Textos, DM_Textos, Frm_Consultas, DM_Consultas,
   Frm_GrauRelacionamentos, DM_GrauRelacionamentos, Frm_GrauParentescos, DM_GrauParentescos,
   Dlg_HistoricoDepositos, Dlg_HistoricoRetiradas, Dlg_HistoricoOperacoes,
   Rpt_VendasNoPeriodo, Rpt_VendasProdutos,
   Dlg_ContasPadrao, {Dlg_Alertas,} Rpt_ClientesPrestServ,
   Frm_Carteiras, DM_Carteiras,
   Dlg_SitCliente, Dlg_UltimasVendas, {Dlg_ExtratoFinanceiro,}
   Dlg_RepasseEntreEmpresas, Rpt_ParcelasChequesAReceber,
   Frm_Compromissos, DM_Compromissos, DM_Categorias, Frm_Categorias, DM_AgendaTelefones, Frm_AgendaTelefones,
   Dlg_BaixaTitulosBoletoBancario,
   DM_Recados, Frm_Recados, Dlg_Consulta, Dlg_Recados,

   Dlg_DescricaoCompromissos, DM_Tarefas, Frm_Tarefas,

   Dlg_Tarefas, Dlg_Legendas, Dlg_CalendarioMes, Dlg_Calendario,

   DM_Saidas, Frm_Saidas, DM_TiposMovimento, Frm_TiposMovimento,

   DM_SalesOrder, Frm_SalesOrder, DM_Invoices, Frm_Invoices,
   DM_Estimates, Frm_Estimates, Rpt_Payrolls, Rpt_Comissoes,
   DM_TabelasPreco, Frm_TabelasPreco, Rpt_Funcionarios,

   DM_Permissoes, Frm_Permissoes, DM_AjustesItens, Frm_AjustesItens, DM_Fabricantes,

   Frm_Fabricantes, DM_BalancoFichas, Frm_BalancoFichas, Dlg_ContagensItens, Dlg_ComparacaoContagens,

   Dlg_CamposCustomizaveis, Dlg_TrocaCheques, Rpt_ContasChequesAPagar,

   Dlg_PgtoCartaoEmpresa, Dlg_Lembretes, Dlg_RecalcularMinimo,

   DM_CadPerfis, Frm_CadPerfis, 

   {Dlg_ExtFinFornecedor,} Dlg_UltVendasFornecedor, Dlg_SitFornecedor,

   Dlg_EscolheFavorecidos, DM_LocaisEntrega, Frm_LocaisEntrega,

   Dlg_LocaisEntrega, Dlg_FichaFavorecido, Dlg_Statements, DM_DigitacaoItens, Frm_DigitacaoItens,

   Dlg_CaixaPrincipal, Dlg_PosicaoCaixas,

   Dlg_Factory, Rpt_Factorys, Dlg_AuditoriaFinanceira,

   Rpt_CartoesAReceber, Rpt_ChequesPreDatados, Rpt_InvoicesAReceber,

   Rpt_ItensMaisVendido, Rpt_GruposMaisVendido, Rpt_FabricantesMaisVendido,

   Rpt_InvoicesEmAtraso, Rpt_InvoicesRecebidas, Rpt_InvoicesVencendoHoje,

   Rpt_SaldoCheques, Rpt_SaldosClientes, Rpt_SaldoFornecedores,

   Rpt_ContasPagas, Rpt_ContasVencendoHoje, Rpt_ContasEmAtraso, Rpt_ChequesACompensar,

   Rpt_PagamentosComCartao, Rpt_DepositoCheques, Rpt_ChequesDevolvidos, Rpt_PagamentosComTEF,

   Rpt_Creditos, Rpt_Clientes, Rpt_AnaliseClientes, Rpt_AnaliseFornecedor,

   Rpt_Fornecedores, Rpt_ExtratoSaidasResumido, Rpt_ExtratoEntradasResumido,

   Dlg_Exemplo_planos_pagamento, Frm_ComissoesGerente,

   Dm_Lembrete, Dm_Ocorrencias , Frm_Lembrete, Frm_Memorizacao, Frm_Ocorrencias, Frm_Alerta, Dm_Alerta,

   Rpt_MelhoresClientes, Rpt_UltimaCompraCliente, Dlg_Avisos,

   Rpt_ClienteAniversariantes, Rpt_ClienteDesativados, Rpt_ClienteOrcamentoAberto,

   Rpt_ClienteSemMovimento, Rpt_Itens, Rpt_ExtratoSaidas, Rpt_ExtratoEntradas, Rpt_ExtratoCompleto,

   Rpt_ItensEntradaSaida, Rpt_ItensEntradaSaidaDetalhe, Dlg_ReajustePrecos,

   Dlg_EscolheTabelasPreco,

   Rpt_AcompanhamentoPedido, Rpt_PedidosAbertos, Rpt_ItensEstoque, Rpt_ItensTabelaPreco,

   DM_Montagens, Frm_Montagens, Frm_SaidasItensFilhos,

   Rpt_Entradas, Dlg_Parametros, Dlg_Templates,

   DM_Historicos, Frm_Historicos, Rpt_ConferProducoes, Frm_AcomphMontagens,

   Rpt_ItensInventario, Rpt_Inventario, Rpt_InventarioEstoque, Frm_Encerrantes, Rpt_Encerrantes,

   DM_Qualidades, Frm_Qualidades, DM_Zonas, Frm_Zonas, DM_GruposCliente, Frm_GruposCliente,

   Dlg_TrocaTransCliente, {Dlg_TraducaoTabelasSistema, } Frm_FatoresCustos,

   Frm_LotesExistentes, Rpt_ItensLotes, Frm_DevolucoesClientes, DM_DevolucoesClientes,
   Frm_DevolucoesFornecedores, DM_DevolucoesFornecedores,
   Rpt_DetalhePayroll, Rpt_FinanceiroEmail, Rpt_SalesOrders, Rpt_SalesOrdersItens, Rpt_Estimates,
   Rpt_FaturaSalesOrders{, Frm_Relacionamento}, Frm_Conversacao, Rpt_PedidosPendentes, Dlg_TabelaPrecos,
   Rpt_Consistencia, DM_MetasFaturamento, Frm_MetasFaturamento, Rpt_MetasFaturamento, Rpt_MetasVendedor,
   DM_ItensFalta, Frm_ItensFalta, Rpt_ItensFalta, Frm_PerfisTabelaPrecos, Frm_PerfisTiposMovimento,
   Frm_UltimasEntradas, DM_Operadores, Frm_Operadores, DM_EntradasConsignadas, Frm_EntradasConsignadas,
   DM_SaidasConsignadas, Frm_SaidasConsignadas, Dlg_CurvaABC, Rpt_ItensComposicao, Rpt_TransferenciasAlmox,
   DM_Fretes, Frm_Fretes,
   DM_NotasCupons, Frm_NotasCupons, DM_OutrasSaidas, Frm_OutrasSaidas, DM_OutrasEntradas, Frm_OutrasEntradas,
   DM_TiposLentes, Frm_TiposLentes, DM_TiposMaterial, Frm_TiposMaterial, DM_Cores, Frm_Cores,
   DM_AcertoConsigEnt, Frm_AcertoConsigEnt, DM_AcertoConsigSaid, Frm_AcertoConsigSaid, Rpt_EntradasConsig, Rpt_ItensConsignados,
   Rpt_ItensECF, DM_Medicos, Frm_Medicos, DM_Checks, Frm_Checks, Dlg_MescSaidConsig, Dlg_MescAcertSaida, Rpt_ItensConsigSaida,
   Frm_CidadesBristol, DM_CidadesBristol,
   DM_InventarioEstoque, FRM_InventarioEstoque,
   DM_Veiculos, FRM_Veiculos,
   DM_Romaneio, Frm_Romaneio, Dlg_EscolherSaidaRomaneio,
   DLG_ExecutarComando, dlg_DataPosvenda,
   rpt_DataPosVenda, dlg_EtiquetaItem, rpt_DevolucaoVendas , rpt_OutrasSaidas,rpt_DevolucaoCompras,
   rpt_outrasEntradas,Rpt_ProdutosVendidos,
   DM_Marcas, FRM_Marcas,
   DM_Modelos,FRM_Modelos,
   Dm_TipoEquipamentos, Frm_TipoEquipamentos,

   DM_TiposServicos, FRM_TiposServicos,
   DM_StatusServicos, FRM_StatusServicos,
   FRM_EQUIPAMENTOSITUACAO,
   DM_EntradasAssistencia, FRM_EntradasAssistencia,
   DM_LocalEquipamento, Frm_LocalEquipamento,
   DM_AssistenciaLaboratorio, Frm_AssistenciaLaboratorio,
   dlg_AssistenciaPecasServicos, dlg_AcompanhamentoAssistencia,
   dlg_IniciarOS,
   DM_ClassesPrecos, Frm_ClassesPrecos, Rpt_PrecosMultiUnidades,
   Dlg_CalculoCusto, DM_Acessorios, Frm_Acessorios, DM_ChamadoTecnico,
   Frm_ChamadoTecnico, Dlg_AlterarLocalizacao,
   DM_RomaneioCobr, Frm_RomaneioCobr, Dlg_TabelaPreco, Rpt_Vendas, Rpt_Pedidos,
   Dlg_GerarRemessa, Dlg_LerRetorno, Rpt_EntrConsig, Rpt_DevConsig,
   Rpt_VendasConsig, DM_GruposComissoes, Frm_GruposComissoes, Dlg_FormacaoCusto,
   Dlg_AtualizarPrecosCalculados, Rpt_PrecoXCusto, Rpt_ListaPrecos,
   Rpt_ComissaoSaida, Dlg_IP, Frm_FiltroFavorecidos, Rpt_ResultadosPeriodo,
   DM_Tecnologias, Frm_Tecnologias, DM_Equipamento, Frm_Equipamento,
   DM_StatusAtendimentos, Frm_StatusAtendimentos, Dlg_Agendamento, Dlg_TransferirAgendamento,
   DM_Agendamentos, Frm_Agendamentos, Rpt_ClientesEquipamentos,
   DM_OrdemServico, Frm_OrdemServico, Rpt_Servico, DM_Rotas, Frm_Rotas, Rpt_OrdensServicos,
   Rpt_Rotas, RPT_FichaCardex, DM_RotasManutencoes, Frm_RotasManutencoes,
   Dlg_AcompanhamentoServico, Rpt_Fretes, DM_Cotacoes, Frm_Cotacoes,
   DM_Indexadores, Frm_Indexadores, Dlg_GruposComissoes, DM_Localizacoes, Frm_Localizacoes,
   Rpt_ChequesPorOperacao, Rpt_SugestaoCompras, Dlg_PlanoContasDespesas, Rpt_ItensEstoqueFiscal,
   DM_TipoTributacao, Frm_TipoTributacao, Rpt_ChamadosPorFunc, 
   Rpt_VendasCartoes,  Rpt_MixVendedorClientes,
   Frm_Pontuacoes,DM_Pontuacoes, DM_PontuacaoResgates, Frm_PontuacaoResgates,
   Rpt_RelacaoPontos, DM_ClientesEquip, Frm_ClientesEquip, Dlg_QtdAlmoxarifado, Dlg_InformacoesFinanceiras,
   Rpt_OutrasEntradasProdutos, Rpt_ComprasProdutos,
   DM_Licitacoes, Frm_Licitacoes, Dlg_UsuariosPoderes, Rpt_ReposicaoGondolas,
   Rpt_Autorizacoes, Dlg_ApuracaoCaixa,
   Frm_AjustesItensFiscal, DM_AjustesItensFiscal, Rpt_SaldoConsignacaoSaida,
   Dlg_ReajustePrecosMultUnidade,
   Rpt_VendaVendedor,    Rpt_VendaProdutoVendedor,
   Dlg_AntecipacaoDuplicatas,
   dlg_AutenticacaoTitulos,
   Dlg_VerificaAutenticacao,
   Dlg_AtualizarEstoque,
   Dlg_AlterarSenha,
   DM_ProducoesServico , Frm_ProducoesServico,
   Rpt_ProducoesServico,
   Rpt_ComissoesLiquidez,
   Dlg_NFeExportarDados,
   rpt_ProdutosVendidosGrupoPai,
   Rpt_ApuracaoPisCofins,
   Rpt_ComissaoMontagem,
   Frm_RomaneioSeparacao,
   DM_RomaneioSeparacao,
   DM_PrincipioAtivo,
   Frm_PrincipioAtivo,
   Rpt_ComissaoVendaRecebimento,
   Rpt_ExtratoFornecedores,
   Frm_DetalheImportacoes,
   DM_DetalheImportacoes,
   Dlg_AjusteComissao,
   Dlg_AberturaCaixa,
   Dlg_Fechamento,
   Dlg_FechamentoModeloB,
   Rpt_ComissaoLiquidezItem,
   Dlg_ImportacaoPDV,
   Dlg_ExportarDadosPDV,
   Dlg_CargaDadosPDV,
   Dlg_GerarArquivoPirelli,
   Dlg_MarcasRelatorio,
   Dlg_PesquisaLocalizacao,
   Rpt_VendasTipoCobranca,
   Rpt_RelatorioMVA,
   Rpt_RelatorioMVAEntradas,
   Rpt_MovimentacaoItens,
   Rpt_ConsultarOS,
   Frm_FuncionariosIndustria, DM_FuncionariosIndustria,
   Frm_TiposMaquinas, DM_TiposMaquinas,
   Frm_MaquinasIndustria, DM_MaquinasIndustria,
   Frm_MaodeObraIndustria, DM_MaodeObraIndustria,
   Frm_TiposInsumos, DM_TiposInsumos,
   Frm_InsumosIndustria, DM_InsumosIndustria,
   Frm_MateriasPrimasIndustria, DM_MateriasPrimasIndustria,
   Dlg_ConsultaOS,
   Frm_Producoes, DM_Producoes,
   Frm_ItensIdentificacao, DM_ItensIdentificacao,
   Dlg_ItensIdentificacaoSaida,
   Rpt_ItensIdentificados, Rpt_SaidasItensIdentificados, Rpt_EntradasItensIdentificados,
   Rpt_SalesOrdersLicitacao,
   Frm_FaturarPedidos, Frm_EntradasReferenciadas, DM_EntradasReferenciadas,
   Frm_SaidasReferenciadas, DM_SaidasReferenciadas,
   Frm_MontagensProduto, DM_MontagensProduto,
   Dlg_MontagensProduto, Dlg_ConferenciaCaixa,
   Frm_Oficina, DM_Oficina,
   Rpt_Oficina, Rpt_ServicosOficina, Rpt_PedidoLucro, Rpt_VendasItens, DM_Flexdocs, Frm_Flexdocs;

implementation


initialization

   {
   RegisterTEControl('TScrollBox', teNoRender, teNoRender, True, True);
   RegisterTEControl('TdxInplaceEdit', teAuto, tePaint, True, True);
   RegisterTEControl('TTS_CheckListBox', teAuto, tePaint, True, True);
   RegisterTEControl('TTS_CheckBox', teNoRender, teNoRender, True, True);
   }
   RegisterClass(TFrmFaturarPedidos);
   RegisterClass(TRptExtratoFornecedores);
   RegisterClass(TRptComissaoVendaRecebimento);
   RegisterClass(TRptComissaoMontagem);
   RegisterClass(TRptApuracaoPisCofins);
   RegisterClass(TrptProdutosVendidosGrupoPai);
   RegisterClass(TDlgReajustePrecosMultUnidade);
   RegisterClass(TDlgItensAlmox);
   RegisterClass(TRptVendasNoPeriodo);
   RegisterClass(TRptVendasProdutos);
   RegisterClass(TDMTransferenciasAlmox);
   RegisterClass(TFrmTransferenciasAlmox);
   RegisterClass(TDMAlmoxarifados);
   RegisterClass(TFRMAlmoxarifados);
   RegisterClass(TDMPromocoes);
   RegisterClass(TFrmPromocoes);
   RegisterClass(TDlgItensFilhos);
   RegisterClass(TDlgSobre);
   RegisterClass(TDlgPassos);
   RegisterClass(TRptPromocoes);
   RegisterClass(TDlgEscolherOperacao);
   RegisterClass(TDlgEscolherOperacaoEntrada);
   RegisterClass(TDlgRelatoriosImpressoras);
   RegisterClass(TDMPropagandas);
   RegisterClass(TFrmPropagandas);
   RegisterClass(TDlgCadastroCheques);
   RegisterClass(TRptDetalhePayroll);
   RegisterClass(TDlgTemplates);
   RegisterClass(TFrmDevolucoesFornecedores);
   RegisterClass(TDMDevolucoesFornecedores);
   RegisterClass(TDMTermosContratos);
   RegisterClass(TFRMTermosContratos);
   RegisterClass(TDMMensagensOperacoes);
	 RegisterClass(TFRMMensagensOperacoes);
   RegisterClass(TRptItensMaisVendido);
   RegisterClass(TRptGruposMaisVendido);
   RegisterClass(TRptFabricantesMaisVendido);
   RegisterClass(TRptClientesPrestServ);
   RegisterClass(TRptOcorrencias);
	 RegisterClass(TDMPedidoRapido);
	 RegisterClass(TFrmPedidoRapido);
	 RegisterClass(TFrmFactoryEmpresa);
   RegisterClass(TDMFactoryEmpresa);
   RegisterClass(TDMRequisicoes);
   RegisterClass(TFrmRequisicoes);
   RegisterClass(TDMCompras);
   RegisterClass(TFrmCompras);
   RegisterClass(TRptComissoes);
   RegisterClass(TDMPedidosCompra);
   RegisterClass(TFrmPedidosCompra);
   RegisterClass(TFrmAcompanharItens);
   RegisterClass(TFrmEstimatesAprovadas);
   RegisterClass(TFrmAvaliandoEstimates);
   RegisterClass(TDlgRecalculoItensFail);
   RegisterClass(TRptFactoryEmpresa);
   RegisterClass(TDlgTrocaCheques);
   RegisterClass(TFrmDevolucoesClientes);
   RegisterClass(TDMDevolucoesClientes);
   RegisterClass(TDlgRelCaixa);
   RegisterClass(TDlgRelCaixaB);
   RegisterClass(TDlgBackup);
   RegisterClass(TDMPayrolls);
   RegisterClass(TFrmPayrolls);
   RegisterClass(TDlgRestaurar);
   RegisterClass(TDlgEtiquetas);
   RegisterClass(TFrmFastFuncPay);
   RegisterClass(TDlgGrafVendas);
   RegisterClass(TDlgPgtoAFuncionarios);
   RegisterClass(TDlgConveterPagamentosAgendados);
   RegisterClass(TFrmPayrollItems);
   RegisterClass(TDMPayrollItems);
   RegisterClass(TDlgCriarEmpresa);
   RegisterClass(TDlgCabecalhoRelatorios);
   RegisterClass(TDlgReparcelamento);
   RegisterClass(TDlgAutorizacoesPerfil);
   RegisterClass(TRptDocGarantia);
   RegisterClass(TRptPayrollsporcliente);
   RegisterClass(TDlgGrafAReceberAPagar);
	 RegisterClass(TDlgOperacoesDoc);
   RegisterClass(TRptPayrolls);
   RegisterClass(TFrmCarteiras);
   RegisterClass(TDMCarteiras);
   RegisterClass(TRptFactorys);
   RegisterClass(TRptCreditos);
   RegisterClass(TRptReciboColetivo);
   RegisterClass(TRptPagamentosComTEF);
   RegisterClass(TRptTransferencias);
   RegisterClass(TRptSaldoFornecedores);
   RegisterClass(TRptChequesEmitidos);
   RegisterClass(TRptContasAPagar);
   RegisterClass(TRptContasPagas);
   RegisterClass(TRptChequesDevolvidos);
   RegisterClass(TRptContasVencendoHoje);
   RegisterClass(TRptContasEmAtraso);
   RegisterClass(TRptChequesACompensar);
   RegisterClass(TRptChequesNaEmpresa);
	 RegisterClass(TDlgFactory);
   RegisterClass(TRptFuncionarios);
   RegisterClass(TRptClientesHistoricoDevolucoes);
   RegisterClass(TDlgAuditoriaFinanceira);
   RegisterClass(TRptCartoesAReceber);
   RegisterClass(TRptChequesPreDatados);
   RegisterClass(TRptInvoicesAReceber);
   RegisterClass(TRptInvoicesEmAtraso);
   RegisterClass(TRptInvoicesRecebidas);
   RegisterClass(TRptInvoicesVencendoHoje);
   RegisterClass(TRptSaldoCheques);
   RegisterClass(TRptSaldosClientes);
   RegisterClass(TRptPagamentosComCartao);
   RegisterClass(TDMDigitacaoItens);
   RegisterClass(TFrmDigitacaoItens);
   RegisterClass(TDlgPgtoCartaoEmpresa);
   RegisterClass(TDlgCaixaPrincipal);
   RegisterClass(TDlgPosicaoCaixas);
   RegisterClass(TDlgLembretes);
   RegisterClass(TDlgHistoricoDepositos);
   RegisterClass(TDlgHistoricoRetiradas);
   RegisterClass(TDlgRepasse);
   RegisterClass(TDlgAlterarConta);
   RegisterClass(TDlgHistoricoOperacoes);
   RegisterClass(TDlgEscreverCheque);
   RegisterClass(TFrmCargos);
   RegisterClass(TDMCargos);
   RegisterClass(TFrmGrauRelacionamentos);
   RegisterClass(TDMGrauRelacionamentos);
   RegisterClass(TFrmGrauParentescos);
   RegisterClass(TDMGrauParentescos);
   RegisterClass(TFrmTextos);
   RegisterClass(TDMTextos);
   RegisterClass(TFrmConsultas);
   RegisterClass(TDMConsultas);
   RegisterClass(TDlgDepositosInstantaneos);
   RegisterClass(TDlgChequesEmitidos);
   RegisterClass(TDlgChequesPendentesImpressao);
   RegisterClass(TDlgData);
   RegisterClass(TDlgDepositos);
   RegisterClass(TDlgEmissaoCheques);
   RegisterClass(TDlgConciliacaoBancaria);
   RegisterClass(TFrmTiposAtividade);
   RegisterClass(TDMTiposAtividade);
   RegisterClass(TDlgExtratoContas);
   RegisterClass(TDlgFluxoCaixa);
   RegisterClass(TDlgLocalizarCheques);
   RegisterClass(TDlgMarcarDevolvido);
   RegisterClass(TDlgOpcoes);
   RegisterClass(TDlgPgtoInstantaneo);
   RegisterClass(TDlgSangria);
   RegisterClass(TDlgTransferencias);
   RegisterClass(TDMA_Pagar);
   RegisterClass(TDMA_Receber);
   RegisterClass(TDMBancos);
   RegisterClass(TDMClientes);
   RegisterClass(TDMContas);
   RegisterClass(TDMEmpresa);
   RegisterClass(TDMFormasPagamento);
   RegisterClass(TDMFornecedores);
   RegisterClass(TDMFuncionarios);
   RegisterClass(TDMGrupos);
   RegisterClass(TDMIdiomas);
   RegisterClass(TDMItens);
   RegisterClass(TDMPaises);
   RegisterClass(TDMPlanos_Pagamento);
   RegisterClass(TDMTaxAgencias);
   RegisterClass(TDMTaxs);
   RegisterClass(TDMTiposBusiness);
   RegisterClass(TDMTiposEntrega);
   RegisterClass(TDMUFS);
   RegisterClass(TDMUNIDADES);
   RegisterClass(TDMUsuarios);
   RegisterClass(TfrmA_Pagar);
   RegisterClass(Tfrma_receber);
   RegisterClass(TDlgApresentacaoCartao);
   RegisterClass(TFrmBancos);
   RegisterClass(TFrmClientes);
   RegisterClass(TFrmContas);
   RegisterClass(TDlgDepositoCheques);
   RegisterClass(TFrmEmpresa);
   RegisterClass(TfrmFormasPagamento);
   RegisterClass(TFrmFornecedores);
   RegisterClass(TFrmFuncionarios);
   RegisterClass(TFrmGrupos);
   RegisterClass(TFrmIdiomas);
   RegisterClass(TFrmItens);
   RegisterClass(TFrmPaises);
   RegisterClass(TFrmPlanos_Pagamento);
   RegisterClass(TFrmTaxAgencias);
   RegisterClass(TFrmTaxs);
   RegisterClass(TFrmTiposBusiness);
   RegisterClass(TFrmTiposEntrega);
   RegisterClass(TFrmUFS);
   RegisterClass(TFrmUnidades);
   RegisterClass(TFrmUsuarios);
   RegisterClass(TDMMensagens);
   RegisterClass(TFrmMensagens);
   RegisterClass(TDMFactory);
   RegisterClass(TFrmFactory);
   RegisterClass(TMDIProjeto);
   RegisterClass(TDlgAgendDespesasFixas);
   RegisterClass(TDlgSitCliente);
   RegisterClass(TDlgUltimasVendas);
   RegisterClass(TDMCompromissos);
   RegisterClass(TFRMCompromissos);
   RegisterClass(TDMCategorias);
   RegisterClass(TFRMCategorias);
   RegisterClass(TDMAgendaTelefones);
   RegisterClass(TFRMAgendaTelefones);
   RegisterClass(TDMRecados);
   RegisterClass(TFRMRecados);
   RegisterClass(TDlgConsulta);
   RegisterClass(TDlgRecados);
   RegisterClass(TDMTarefas);
   RegisterClass(TFRMTarefas);
   RegisterClass(TDlgDescricaoCompromissos);
   RegisterClass(TDlgTarefas);
   RegisterClass(TDlgLegendas);
   RegisterClass(TDlgCalendario);
   RegisterClass(TDlgCalendarioMes);
   RegisterClass(TDMSaidas);
   RegisterClass(TFrmSaidas);
	 RegisterClass(TDlgRepasseEntreEmpresas);
   RegisterClass(TDMSalesOrder);
   RegisterClass(TFrmSalesOrder);
   RegisterClass(TDMInvoices);
   RegisterClass(TFrmInvoices);
   RegisterClass(TDMEstimates);
   RegisterClass(TFrmEstimates);
   RegisterClass(TDMTiposMovimento);
   RegisterClass(TFrmTiposMovimento);
   RegisterClass(TDMTabelasPreco);
   RegisterClass(TFrmTabelasPreco);
   RegisterClass(TDMPermissoes);
   RegisterClass(TFrmPermissoes);
   RegisterClass(TDMAjustesItens);
   RegisterClass(TFrmAjustesItens);
   RegisterClass(TDMFabricantes);
   RegisterClass(TFrmFabricantes);
   RegisterClass(TDMBalancoFichas);
   RegisterClass(TFrmBalancoFichas);
   RegisterClass(TDlgContagensItens);
   RegisterClass(TDlgComparacaoContagens);
   RegisterClass(TDlgCamposCustomizaveis);
   RegisterClass(TDlgRecalcularMinimo);
   RegisterClass(TDMCadPerfis);
   RegisterClass(TFrmCadPerfis);
   RegisterClass(TDlgUltVendasFornecedor);
   RegisterClass(TDlgSitFornecedor);
   RegisterClass(TDlgEscolheFavorecidos);
   RegisterClass(TDMLocaisEntrega);
   RegisterClass(TFrmLocaisEntrega);
   RegisterClass(TDlgLocaisEntrega);
   RegisterClass(TDlgFichaFavorecido);
   RegisterClass(TDlgStatements);
   RegisterClass(TRptDepositoCheques);
   RegisterClass(TFrmComissoesGerente);
   RegisterClass(TDlgExemplo_planos_pagamento);
   RegisterClass(TDmLembrete);
   RegisterClass(TDmOcorrencias);
   RegisterClass(TFrmLembrete);
   RegisterClass(TFrmMemorizacao);
   RegisterClass(TFrmOcorrencias);
   RegisterClass(TFrmAlerta);
   RegisterClass(TDmAlerta);
   RegisterClass(TDlgAvisos);
   RegisterClass(TRptRecebimentosDepositos);
   RegisterClass(TRptPagamentosRetiradas);
   RegisterClass(TRptAnaliseFornecedor);
   RegisterClass(TRptFornecedores);
   RegisterClass(TRptPedidosAbertos);
   RegisterClass(TRptAcompanhamentoPedido);
   RegisterClass(TRptClientes);
   RegisterClass(TRptAnaliseClientes);
   RegisterClass(TRptMelhoresClientes);
   RegisterClass(TRptUltimaCompraCliente);
   RegisterClass(TRptClienteAniversariantes);
   RegisterClass(TRptClienteDesativados);
   RegisterClass(TRptClienteOrcamentoAberto);
   RegisterClass(TRptClienteSemMovimento);
   RegisterClass(TRptItens);
   RegisterClass(TRptItensTabelaPreco);
   RegisterClass(TRptItensEstoque);
   RegisterClass(TRptExtratoEntradas);
   RegisterClass(TRptExtratoSaidas);
   RegisterClass(TRptExtratoSaidasResumido);
   RegisterClass(TRptExtratoEntradasResumido);
   RegisterClass(TRptExtratoCompleto);
   RegisterClass(TRptItensEntradaSaida);
   RegisterClass(TRptItensEntradaSaidaDetalhe);
   RegisterClass(TDlgReajustePrecos);
   RegisterClass(TDlgEscolheTabelasPreco);
   RegisterClass(TFrmTimeSimples);
   RegisterClass(TDMTimeSimples);
   RegisterClass(TFrmTimeCliente);
   RegisterClass(TDMTimeCliente);
   RegisterClass(TDlgEscolherSaida);
   RegisterClass(TDlgRecalcularComissao);
   RegisterClass(TDMEntradas);
   RegisterClass(TFRMEntradas);
   RegisterClass(TDMTiposMovEntrada);
   RegisterClass(TFRMTiposMovEntrada);
   RegisterClass(TDMMontagens);
   RegisterClass(TFrmMontagens);
   RegisterClass(TFrmSaidasItensFilhos);
   RegisterClass(TRptEntradas);
   RegisterClass(TDlgParametros);
   RegisterClass(TDlgContasPadrao);
   RegisterClass(TDMHistoricos);
   RegisterClass(TFrmHistoricos);
   RegisterClass(TRptConferProducoes);
   RegisterClass(TFrmAcomphMontagens);
   RegisterClass(TRptItensInventario);
   RegisterClass(TRptEncerrantes);
   RegisterClass(TDMQualidades);
   RegisterClass(TFrmQualidades);
   RegisterClass(TDMZonas);
   RegisterClass(TFrmZonas);
   RegisterClass(TDMGruposCliente);
   RegisterClass(TFrmGruposCliente);
   RegisterClass(TDlgTrocaTransCliente);
   RegisterClass(TDlgConfigurador);
   RegisterClass(TFrmFatoresCustos);
   RegisterClass(TFrmLotesExistentes);
   RegisterClass(TRptItensLotes);
   RegisterClass(TRptAnaliseCompra);
   RegisterClass(TRptFinanceiroEmail);
   RegisterClass(TRptSalesOrders);
   RegisterClass(TRptSalesOrdersItens);
   RegisterClass(TRptEstimates);
   RegisterClass(TRptFaturaSalesOrders);
   RegisterClass(TFrmConversacao);
   RegisterClass(TRptPedidosPendentes);
   RegisterClass(TDlgTabelaPrecos);
   RegisterClass(TRptConsistencia);
   RegisterClass(TDMMetasFaturamento);
   RegisterClass(TFrmMetasFaturamento);
   RegisterClass(TRptMetasFaturamento);
   RegisterClass(TRptMetasVendedor);
   RegisterClass(TDMItensFalta);
   RegisterClass(TFrmItensFalta);
   RegisterClass(TRptItensFalta);
   RegisterClass(TFrmPerfisTabelaPrecos);
   RegisterClass(TFrmPerfisTiposMovimento);
   RegisterClass(TFrmUltimasEntradas);
   RegisterClass(TDMOperadores);
   RegisterClass(TFrmOperadores);
   RegisterClass(TDMEntradasConsignadas);
   RegisterClass(TFrmEntradasConsignadas);
   RegisterClass(TDMSaidasConsignadas);
   RegisterClass(TFrmSaidasConsignadas);
   RegisterClass(TDlgCurvaABC);
   RegisterClass(TRptItensComposicao);
   RegisterClass(TRptTransferenciasAlmox);
   RegisterClass(TDMFretes);
   RegisterClass(TFrmFretes);
   RegisterClass(TRptInventario);
   RegisterClass(TRptInventarioEstoque);
   RegisterClass(TFrmEncerrantes);
   RegisterClass(TRptEncerrantes);
   RegisterClass(TDMNotasCupons);
   RegisterClass(TFrmNotasCupons);
   RegisterClass(TDMOutrasSaidas);
   RegisterClass(TFrmOutrasSaidas);
   RegisterClass(TDMOutrasEntradas);
   RegisterClass(TFrmOutrasEntradas);
   RegisterClass(TDMTiposLentes);
   RegisterClass(TFrmTiposLentes);
   RegisterClass(TDMTiposMaterial);
   RegisterClass(TFrmTiposMaterial);
   RegisterClass(TDMCores);
   RegisterClass(TFrmCores);
   RegisterClass(TDMAcertoConsigEnt);
   RegisterClass(TFrmAcertoConsigEnt);
   RegisterClass(TDMAcertoConsigSaid);
   RegisterClass(TFrmAcertoConsigSaid);
   RegisterClass(TFrmFiliais);
   RegisterClass(TDMFiliais);
   RegisterClass(TRptEntradasConsig);
   RegisterClass(TRptItensConsignados);
   RegisterClass(TRptParcelasChequesAReceber);
   RegisterClass(TRptContasChequesAPagar);
   RegisterClass(TRptItensECF);
   RegisterClass(TDMMedicos);
   RegisterClass(TFrmMedicos);
   RegisterClass(TDlgBaixaTitulosBoletoBancario);
   RegisterClass(TDMChecks);
   RegisterClass(TFrmChecks);
   RegisterClass(TDlgMescSaidConsig);
   RegisterClass(TDlgMescAcertSaida);
   RegisterClass(TRptItensConsigSaida);
   RegisterClass(TRptComprasProdutos);
   RegisterClass(TFrmCidadesBristol);
   RegisterClass(TDMCidadesBristol);
   RegisterClass(TDMInventarioEstoque);
   RegisterClass(TFRMInventarioEstoque);
   RegisterClass(TDMVeiculos);
   RegisterClass(TFRMVeiculos);
   RegisterClass(TDMRomaneio);
   RegisterClass(TFrmRomaneio);
   RegisterClass(TDlgEscolherSaidaRomaneio);
   RegisterClass(TDLGExecutarComando);
   RegisterClass(TdlgDataPosvenda);
   RegisterClass(TrptDataPosVenda);
   RegisterClass(TDlgEtiquetaItem);
   RegisterClass(TrptDevolucaoVendas);
   RegisterClass(TrptDevolucaoCompras);
   RegisterClass(TrptOutrasSaidas);
   RegisterClass(trptoutrasEntradas);
   RegisterClass(tRptProdutosVendidos);
   RegisterClass(tDMMarcas);
   RegisterClass(tFRMMarcas);
   RegisterClass(tDMModelos);
   RegisterClass(tFRMModelos);
   RegisterClass(tFrmTipoEquipamentos);
   RegisterClass(tDMTipoEquipamentos);
   RegisterClass(tDMTiposServicos);
   RegisterClass(tFRMTiposServicos);
   RegisterClass(tDMStatusServicos);
   RegisterClass(tFRMStatusServicos);
   RegisterClass(tDMEntradasAssistencia);
   RegisterClass(tFRMEntradasAssistencia);
   RegisterClass(tFRMEQUIPAMENTOSITUACAO);
   RegisterClass(tDMLocalEquipamento);
   RegisterClass(tFrmLocalEquipamento);
   RegisterClass(tDMAssistenciaLaboratorio);
   RegisterClass(tFrmAssistenciaLaboratorio);
   RegisterClass(tdlgAssistenciaPecasServicos);
   RegisterClass(tdlgAcompanhamentoAssistencia);
   RegisterClass(tdlgIniciarOS);
   RegisterClass(tDMClassesPrecos);
   RegisterClass(tFrmClassesPrecos);
   RegisterClass(TRptPrecosMultiUnidades);
   RegisterClass(TDlgCalculoCusto);
   RegisterClass(TDMAcessorios);
   RegisterClass(TFrmAcessorios);
   RegisterClass(TDMChamadoTecnico);
   RegisterClass(TFrmChamadoTecnico);
   RegisterClass(TDlgAlterarLocalizacao);
   RegisterClass(TDMRomaneioCobr);
   RegisterClass(TFrmRomaneioCobr);
   RegisterClass(TDlgTabelaPreco);
   RegisterClass(TRptVendas);
   RegisterClass(TRptPedidos);
   RegisterClass(TDlgGerarRemessa);
   RegisterClass(TDlgLerRetorno);
   RegisterClass(TRptEntrConsig);
   RegisterClass(TRptDevConsig);
   RegisterClass(TRptVendasConsig);
   RegisterClass(TDMGruposComissoes);
   RegisterClass(TFrmGruposComissoes);
   RegisterClass(TDlgFormacaoCusto);
   RegisterClass(TDlgAtualizarPrecosCalculados);
   RegisterClass(TRptPrecoXCusto);
   RegisterClass(TRptListaPrecos);
   RegisterClass(TRptComissaoSaida);
   RegisterClass(TDlgIP);
   RegisterClass(TFrmFiltroFavorecidos);
   RegisterClass(TRptResultadosPeriodo);
   RegisterClass(TDMTecnologias);
   RegisterClass(TFrmTecnologias);
   RegisterClass(TDMEquipamento);
   RegisterClass(TFrmEquipamento);
   RegisterClass(TDMStatusAtendimentos);
   RegisterClass(TFrmStatusAtendimentos);
   RegisterClass(TDlgAgendamento);
   RegisterClass(TDlgTransferirAgendamento);
   RegisterClass(TDMAgendamentos);
   RegisterClass(TFrmAgendamentos);
   RegisterClass(TRptClientesEquipamentos);
   RegisterClass(TDMOrdemServico);
   RegisterClass(TFrmOrdemServico);
   RegisterClass(TRptServico);
   RegisterClass(TDMRotas);
   RegisterClass(TFrmRotas);
   RegisterClass(TRptOrdensServicos);
   RegisterClass(TRptRotas);
   RegisterClass(TRPTFichaCardex);
   RegisterClass(TDMRotasManutencoes);
   RegisterClass(TFrmRotasManutencoes);
   RegisterClass(TDlgAcompanhamentoServico);
   RegisterClass(TRptFretes);
   RegisterClass(TDMCotacoes);
   RegisterClass(TFrmCotacoes);
   RegisterClass(TDMIndexadores);
   RegisterClass(TFrmIndexadores);
   RegisterClass(TDlgGruposComissoes);
   RegisterClass(TDMLocalizacoes);
   RegisterClass(TFrmLocalizacoes);
   RegisterClass(TRptChequesPorOperacao);
   RegisterClass(TRptSugestaoCompras);
   RegisterClass(TDlgPlanoContasDespesas);
   RegisterClass(TRptItensEstoqueFiscal);
   RegisterClass(TDMTipoTributacao);
   RegisterClass(TFrmTipoTributacao);
   RegisterClass(TRptChamadosPorFunc);
   RegisterClass(TRptVendasCartoes);
   RegisterClass(TRptMixVendedorClientes);
   RegisterClass(TFrmPontuacoes);
   RegisterClass(TDMPontuacoes);
   RegisterClass(TDMPontuacaoResgates);
   RegisterClass(TFrmPontuacaoResgates);
   RegisterClass(TRptRelacaoPontos);
   RegisterClass(TDMClientesEquip);
   RegisterClass(TFrmClientesEquip);
   RegisterClass(TDlgQtdAlmoxarifado);
   RegisterClass(TDlgInformacoesFinanceiras);
   RegisterClass(TRptOutrasEntradasProdutos);
   RegisterClass(TRptComprasProdutos);
   RegisterClass(TDMLicitacoes);
   RegisterClass(TFrmLicitacoes);
   RegisterClass(TDlgUsuariosPoderes);
   RegisterClass(TRptReposicaoGondolas);
   RegisterClass(TRptAutorizacoes);
   RegisterClass(TDlgApuracaoCaixa);
   RegisterClass(TFrmAjustesItensFiscal);
   RegisterClass(TDMAjustesItensFiscal);
   RegisterClass(TRptSaldoConsignacaoSaida);
   RegisterClass(TRptVendaVendedor);
   RegisterClass(TRptVendaProdutoVendedor);
   RegisterClass(TDlgAntecipacaoDuplicatas);
   RegisterClass(TdlgAutenticacaoTitulos);
   RegisterClass(TDlgVerificaAutenticacao);
   RegisterClass(TDlgAtualizarEstoque);
   RegisterClass(TDlgAlterarSenha);
   RegisterClass(TDMProducoesServico);
   RegisterClass(TFrmProducoesServico);
   RegisterClass(TRptProducoesServico);
   RegisterClass(TRptComissoesLiquidez);
   RegisterClass(TDlgNFeExportarDados);
   RegisterClass(TDMRomaneioSeparacao);
   RegisterClass(TFRMRomaneioSeparacao);
   RegisterClass(TDMPrincipioAtivo);
   RegisterClass(TFRMPrincipioAtivo);
   RegisterClass(TFrmDetalheImportacoes);
   RegisterClass(TDMDetalheImportacoes);
   RegisterClass(TDLGAjusteComissao);
   RegisterClass(TRptComissaoLiquidezItem);
   RegisterClass(TDlgAberturaCaixa);
   RegisterClass(TDlgFechamento);
   RegisterClass(TDlgFechamentoModeloB);
   RegisterClass(TDlgExportarDadosPDV);
   RegisterClass(TDlgImportacaoPDV);
   RegisterClass(TDlgGerarArquivoPirelli);
   RegisterClass(TDlgMarcasRelatorio);
   RegisterClass(TDlgPesquisaLocalizacao);
   RegisterClass(TRptMovimentacaoItens);
   RegisterClass(TDlgCargaDadosPDV);
   RegisterClass(TRptVendasTipoCobranca);
   RegisterClass(TRptRelatorioMVA);
   RegisterClass(TRptRelatorioMVAEntradas);
   RegisterClass(TRptConsultaOS);
   RegisterClass(TFrmFuncionariosIndustria);
   RegisterClass(TDMFuncionariosIndustria);
   RegisterClass(TFrmTiposMaquinas);
   RegisterClass(TDMTiposMaquinas);
   RegisterClass(TFrmMaquinasIndustria);
   RegisterClass(TDMMaquinasIndustria);
   RegisterClass(TFrmMaodeObraIndustria);
   RegisterClass(TDMMaodeObraIndustria);
   RegisterClass(TFrmTiposInsumos);
   RegisterClass(TDMTiposInsumos);
   RegisterClass(TFrmInsumosIndustria);
   RegisterClass(TDMInsumosIndustria);
   RegisterClass(TFrmMateriasPrimasIndustria);
   RegisterClass(TDMMateriasPrimasIndustria);
   RegisterClass(TDlgConsultaOS);
   RegisterClass(TFrmProducao);
   RegisterClass(TDMProducao);
   RegisterClass(TFrmItensIdentificacao);
   RegisterClass(TDMItensIdentificacao);
   RegisterClass(TDlgItensIdentificacaoSaida);
   RegisterClass(TRptItensIdentificados);
   RegisterClass(TRptSaidasItensIdentificados);
   RegisterClass(TRptEntradasItensIdentificados);
   RegisterClass(TRptSalesOrdersLicitacao);
   RegisterClass(TFrmEntradasReferenciadas);
   RegisterClass(TDMEntradasReferenciadas);
   RegisterClass(TFrmSaidasReferenciadas);
   RegisterClass(TDMSaidasReferenciadas);
   RegisterClass(TFrmMontagensProduto);
   RegisterClass(TDMMontagensProduto);
   RegisterClass(TDlgMontagensProduto);
   RegisterClass(TDlgConferenciaCaixa);
   RegisterClass(TFrmOficina);
   RegisterClass(TDMOficina);
   RegisterClass(TRptOficina);
   RegisterClass(TRptServicosOficina);
   RegisterClass(TRptPedidoLucro);
   RegisterClass(TRptVendasItens);
   RegisterClass(TFrmFlexdocs);
   RegisterClass(TDMFlexdocs);

finalization
   unRegisterClass(TDMFlexdocs);
   unRegisterClass(TFrmFlexdocs);
   unRegisterClass(TRptVendasItens);
   unRegisterClass(TRptPedidoLucro);
   unRegisterClass(TFrmFaturarPedidos);
   unRegisterClass(TRptComissaoLiquidezItem);
   unRegisterClass(TDLGAjusteComissao);
   unRegisterClass(TFrmDetalheImportacoes);
   unRegisterClass(TDMDetalheImportacoes);
   unRegisterClass(TRptExtratoFornecedores);
   unRegisterClass(TRptComissaoVendaRecebimento);
   unRegisterClass(TDMPrincipioAtivo);
   unRegisterClass(TFRMPrincipioAtivo);
   unRegisterClass(TDMRomaneioSeparacao);
   unRegisterClass(TFRMRomaneioSeparacao);
   unRegisterClass(TRptComissaoMontagem);
   unRegisterClass(TRptApuracaoPisCofins);
   unRegisterClass(TrptProdutosVendidosGrupoPai);
   unRegisterClass(TDlgReajustePrecosMultUnidade);
   unRegisterClass(TDlgSobre);
   unRegisterClass(TDlgPassos);
   unRegisterClass(TDlgEscolherOperacao);
   unRegisterClass(TDlgEscolherOperacaoEntrada);
   unRegisterClass(TDMPropagandas);
   unRegisterClass(TFrmPropagandas);
   unRegisterClass(TDlgCadastroCheques);
	unRegisterClass(TRptDetalhePayroll);
	unRegisterClass(TDMPedidoRapido);
	unRegisterClass(TFrmPedidoRapido);
   unRegisterClass(TDMRequisicoes);
   unRegisterClass(TFrmRequisicoes);
   unRegisterClass(TDlgCriarEmpresa);
   unRegisterClass(TRptClientesPrestServ);
   unRegisterClass(TDMCompras);
   unRegisterClass(TFrmCompras);
   unRegisterClass(TDlgRelCaixa);
   unRegisterClass(TDlgRelCaixaB);
   unRegisterClass(TDMPedidosCompra);
   unRegisterClass(TFrmPedidosCompra);
   unRegisterClass(TFrmAcompanharItens);
   unRegisterClass(TFrmEstimatesAprovadas);
   unRegisterClass(TFrmAvaliandoEstimates);
   unRegisterClass(TDlgRecalculoItensFail);
   unRegisterClass(TRptPayrolls);
   unRegisterClass(TFrmFastFuncPay);
   unRegisterClass(TDMTiposMovEntrada);
   unRegisterClass(TFRMTiposMovEntrada);
   unRegisterClass(TDMEntradas);
   unRegisterClass(TFRMEntradas);
   unRegisterClass(TRptFactoryEmpresa);
   unRegisterClass(TDlgRecalcularComissao);
   unRegisterClass(TDlgEscolherSaida);
   unRegisterClass(TRptRecebimentosDepositos);
   unRegisterClass(TRptPagamentosRetiradas);
   unRegisterClass(TDlgBackup);
   unRegisterClass(TDlgRestaurar);
   unRegisterClass(TFrmDevolucoesClientes);
   unRegisterClass(TDMDevolucoesClientes);
   unRegisterClass(TRptChequesEmitidos);
   unRegisterClass(TDlgPgtoAFuncionarios);
   unRegisterClass(TRptFactorys);
   unRegisterClass(TRptCreditos);
   unRegisterClass(TRptPagamentosComTEF);
   unRegisterClass(TRptSaldoFornecedores);
	unRegisterClass(TDlgFactory);
   unRegisterClass(TRptFuncionarios);
   unRegisterClass(TDlgAuditoriaFinanceira);
   unRegisterClass(TRptItensMaisVendido);
   unRegisterClass(TRptGruposMaisVendido);
   unRegisterClass(TRptFabricantesMaisVendido);
   unRegisterClass(TRptCartoesAReceber);
   unRegisterClass(TRptChequesPreDatados);
   unRegisterClass(TRptInvoicesAReceber);
   unRegisterClass(TRptInvoicesEmAtraso);
   unRegisterClass(TRptDocGarantia);
   unRegisterClass(TDlgTrocaCheques);
   unRegisterClass(TDMFactory);
   unRegisterClass(TFrmFactory);
	unRegisterClass(TDlgOperacoesDoc);
   unRegisterClass(TRptInvoicesRecebidas);
   unRegisterClass(TFrmDevolucoesFornecedores);
   unRegisterClass(TDMDevolucoesFornecedores);
   unRegisterClass(TRptInvoicesVencendoHoje);
   unRegisterClass(TRptComissoes);
   unRegisterClass(TRptSaldoCheques);
   unRegisterClass(TDlgConveterPagamentosAgendados);
   unRegisterClass(TRptSaldosClientes);
   unRegisterClass(TRptDepositoCheques);
   unRegisterClass(TRptTransferencias);
	unRegisterClass(TDlgGrafVendas);
   unRegisterClass(TDMDigitacaoItens);
   unRegisterClass(TFrmDigitacaoItens);
   unRegisterClass(TRptContasAPagar);
   unRegisterClass(TRptPagamentosComCartao);
   unRegisterClass(TDlgPgtoCartaoEmpresa);
   unRegisterClass(TRptClientesHistoricoDevolucoes);
   unRegisterClass(TRptChequesDevolvidos);
   unRegisterClass(TRptChequesNaEmpresa);
   unRegisterClass(TFrmCargos);
   unRegisterClass(TDMCargos);
   unRegisterClass(TRptPromocoes);
   unRegisterClass(TRptContasPagas);
   unRegisterClass(TRptContasVencendoHoje);
   unRegisterClass(TRptContasEmAtraso);
   unRegisterClass(TRptChequesACompensar);
	unRegisterClass(TDlgDepositosInstantaneos);
   unRegisterClass(TDlgEscreverCheque);
   unRegisterClass(TDlgChequesEmitidos);
   unRegisterClass(TDlgGrafAReceberAPagar);
   unRegisterClass(TDlgData);
   unRegisterClass(TDlgHistoricoRetiradas);
   unRegisterClass(TDlgDepositos);
   unRegisterClass(TDlgEmissaoCheques);
   unRegisterClass(TDlgConciliacaoBancaria);
   unRegisterClass(TFrmTiposAtividade);
   unRegisterClass(TDMTiposAtividade);
   unRegisterClass(TDlgExtratoContas);
   unRegisterClass(TDlgFluxoCaixa);
   unRegisterClass(TDlgLembretes);
   unRegisterClass(TDlgRepasse);
   unRegisterClass(TDlgCaixaPrincipal);
   unRegisterClass(TDlgPosicaoCaixas);
   unRegisterClass(TDlgAlterarConta);
   unRegisterClass(TDlgChequesPendentesImpressao);
   unRegisterClass(TDlgRelatoriosImpressoras);
   unRegisterClass(TDlgLocalizarCheques);
   unRegisterClass(TDlgMarcarDevolvido);
   unRegisterClass(TDlgOpcoes);
   unRegisterClass(TDlgHistoricoDepositos);
   unRegisterClass(TDlgHistoricoOperacoes);
   unRegisterClass(TDlgPgtoInstantaneo);
   unRegisterClass(TDlgSangria);
   unRegisterClass(TDlgTransferencias);
   unRegisterClass(TDMA_Pagar);
   unRegisterClass(TDMA_Receber);
   unRegisterClass(TDMBancos);
   unRegisterClass(TDMClientes);
   unRegisterClass(TDMContas);
   unRegisterClass(TDMEmpresa);
   unRegisterClass(TDMFormasPagamento);
   unRegisterClass(TDMFornecedores);
   unRegisterClass(TDMFuncionarios);
   unRegisterClass(TDMGrupos);
   unRegisterClass(TDMIdiomas);
   unRegisterClass(TDMItens);
   unRegisterClass(TDMPaises);
   unRegisterClass(TDMPlanos_Pagamento);
   unRegisterClass(TRptVendasNoPeriodo);
   unRegisterClass(TRptVendasProdutos);
   unRegisterClass(TDMTaxAgencias);
   unRegisterClass(TDMTaxs);
   unRegisterClass(TDMTiposBusiness);
   unRegisterClass(TDMTiposEntrega);
   unRegisterClass(TDMUFS);
   unRegisterClass(TDMUNIDADES);
   unRegisterClass(TDMUsuarios);
   unRegisterClass(TfrmA_Pagar);
   unRegisterClass(Tfrma_receber);
   unRegisterClass(TDlgApresentacaoCartao);
   unRegisterClass(TFrmBancos);
   unRegisterClass(TFrmClientes);
   unRegisterClass(TFrmContas);
   unRegisterClass(TDlgDepositoCheques);
   unRegisterClass(TFrmEmpresa);
   unRegisterClass(TfrmFormasPagamento);
   unRegisterClass(TFrmFornecedores);
   unRegisterClass(TFrmFuncionarios);
   unRegisterClass(TFrmGrupos);
   unRegisterClass(TFrmIdiomas);
   unRegisterClass(TFrmItens);
   unRegisterClass(TFrmPaises);
   unRegisterClass(TFrmPlanos_Pagamento);
   unRegisterClass(TFrmTaxAgencias);
   unRegisterClass(TFrmTaxs);
   unRegisterClass(TRptOcorrencias);
   unRegisterClass(TFrmTiposBusiness);
   unRegisterClass(TFrmTiposEntrega);
   unRegisterClass(TFrmUFS);
   unRegisterClass(TDlgCabecalhoRelatorios);
   unRegisterClass(TDlgReparcelamento);
   unRegisterClass(TFrmUnidades);
   unRegisterClass(TFrmUsuarios);
   unRegisterClass(TRptReciboColetivo);
   unRegisterClass(TMDIProjeto);
   unRegisterClass(TDMMensagens);
   unRegisterClass(TFrmMensagens);
   unRegisterClass(TDlgAgendDespesasFixas);
   unRegisterClass(TDlgSitCliente);
   unRegisterClass(TDlgUltimasVendas);
//   unRegisterClass(TDlgExtratoFinanceiro);
   unRegisterClass(TDMCompromissos);
   unRegisterClass(TFRMCompromissos);
   unRegisterClass(TDMCategorias);
   unRegisterClass(TFRMCategorias);
   unRegisterClass(TDMAgendaTelefones);
   unRegisterClass(TFRMAgendaTelefones);
   unRegisterClass(TDMRecados);
   unRegisterClass(TFRMRecados);
   unRegisterClass(TDlgConsulta);
   unRegisterClass(TDlgRecados);
   unRegisterClass(TDMTarefas);
   unRegisterClass(TFRMTarefas);
   unRegisterClass(TDlgDescricaoCompromissos);
   unRegisterClass(TDlgTarefas);
   unRegisterClass(TDlgLegendas);
   unRegisterClass(TDlgCalendario);
   unRegisterClass(TDlgCalendarioMes);
   unRegisterClass(TDlgEtiquetas);
   unRegisterClass(TDMSaidas);
   unRegisterClass(TFrmSaidas);
	unRegisterClass(TFrmFactoryEmpresa);
   unRegisterClass(TDMFactoryEmpresa);
   unRegisterClass(TDMInvoices);
   unRegisterClass(TFrmInvoices);
   unRegisterClass(TDMSalesOrder);
   unRegisterClass(TFrmSalesOrder);
   unRegisterClass(TDMEstimates);
   unRegisterClass(TFrmEstimates);
   unRegisterClass(TRptPayrollsporcliente);
   unRegisterClass(TDMTiposMovimento);
   unRegisterClass(TFrmTiposMovimento);
   unRegisterClass(TDMTabelasPreco);
   unRegisterClass(TFrmTabelasPreco);
   unRegisterClass(TDMPermissoes);
   unRegisterClass(TFrmPermissoes);
   unRegisterClass(TDMAjustesItens);
   unRegisterClass(TFrmAjustesItens);
   unRegisterClass(TDMFabricantes);
   unRegisterClass(TFrmFabricantes);
   unRegisterClass(TDMBalancoFichas);
   unRegisterClass(TFrmBalancoFichas);
   unRegisterClass(TFrmGrauParentescos);
   unRegisterClass(TDMGrauParentescos);
   unRegisterClass(TDlgContagensItens);
   unRegisterClass(TDlgComparacaoContagens);
   unRegisterClass(TDlgCamposCustomizaveis);
   unRegisterClass(TDlgRecalcularMinimo);
   unRegisterClass(TDMCadPerfis);
   unRegisterClass(TFrmCadPerfis);
//   unRegisterClass(TDlgSitFuncionario);
//   unRegisterClass(TDlgExtFinFornecedor);
   unRegisterClass(TDlgUltVendasFornecedor);
   unRegisterClass(TDlgSitFornecedor);
   unRegisterClass(TDlgEscolheFavorecidos);
   unRegisterClass(TDMLocaisEntrega);
   unRegisterClass(TFrmLocaisEntrega);
   unRegisterClass(TDlgLocaisEntrega);
//   unRegisterClass(TFrmRelInvoices);
   unRegisterClass(TDlgFichaFavorecido);
   unRegisterClass(TDlgStatements);
   unRegisterClass(TDlgTemplates);
   unRegisterClass(TFrmComissoesGerente);
   unRegisterClass(TDmLembrete);
   unRegisterClass(TDmOcorrencias);
   unRegisterClass(TFrmLembrete);
   unRegisterClass(TFrmMemorizacao);
   unRegisterClass(TFrmOcorrencias);
   unRegisterClass(TDlgExemplo_planos_pagamento);
   unRegisterClass(TFrmAlerta);
   unRegisterClass(TDmAlerta);
   unRegisterClass(TDlgAvisos);
   unRegisterClass(TRptMelhoresClientes);
   unRegisterClass(TRptUltimaCompraCliente);
   unRegisterClass(TRptAnaliseFornecedor);
   unRegisterClass(TRptFornecedores);
   unRegisterClass(TRptPedidosAbertos);
   unRegisterClass(TRptAcompanhamentoPedido);
   unRegisterClass(TRptClientes);
   unRegisterClass(TRptAnaliseClientes);
   unRegisterClass(TRptClienteAniversariantes);
   unRegisterClass(TRptClienteDesativados);
   unRegisterClass(TRptClienteOrcamentoAberto);
   unRegisterClass(TRptClienteSemMovimento);
   unRegisterClass(TRptItens);
   unRegisterClass(TRptItensTabelaPreco);
   unRegisterClass(TRptItensEstoque);
   unRegisterClass(TRptExtratoEntradas);
   unRegisterClass(TRptExtratoSaidas);
   unRegisterClass(TRptExtratoSaidasResumido);
   unRegisterClass(TRptExtratoEntradasResumido);
   unRegisterClass(TRptExtratoCompleto);
   unRegisterClass(TRptItensEntradaSaida);
   unRegisterClass(TRptItensEntradaSaidaDetalhe);
   unRegisterClass(TDlgEscolheTabelasPreco);
   unRegisterClass(TDlgReajustePrecos);
   unRegisterClass(TDlgAutorizacoesPerfil);
   unRegisterClass(TFrmPayrollItems);
   unRegisterClass(TDMPayrollItems);
   unRegisterClass(TFrmTimeSimples);
   unRegisterClass(TDMTimeSimples);
   unRegisterClass(TFrmTimeCliente);
   unRegisterClass(TDMTimeCliente);
   unRegisterClass(TDMMontagens);
   unRegisterClass(TFrmMontagens);
   unRegisterClass(TFrmSaidasItensFilhos);
   unRegisterClass(TRptEntradas);
   unRegisterClass(TDlgParametros);
   unRegisterClass(TDlgContasPadrao);
   unRegisterClass(TDMHistoricos);
   unRegisterClass(TFrmHistoricos);
//   unRegisterClass(TDlgHistoricosPadroes);
   unRegisterClass(TDMPayrolls);
   unRegisterClass(TFrmPayrolls);
   unRegisterClass(TRptConferProducoes);
   unRegisterClass(TFrmAcomphMontagens);
   unRegisterClass(TRptItensInventario);
   unRegisterClass(TDMQualidades);
   unRegisterClass(TFrmQualidades);
   unRegisterClass(TDMZonas);
   unRegisterClass(TFrmZonas);
   unRegisterClass(TFrmGrauRelacionamentos);
   unRegisterClass(TDMGrauRelacionamentos);
   unRegisterClass(TDMGruposCliente);
   unRegisterClass(TFrmGruposCliente);
   unRegisterClass(TDlgTrocaTransCliente);
   unRegisterClass(TDlgConfigurador);
//   unRegisterClass(TDlgTraducaoTabelasSistema);
   unRegisterClass(TFrmFatoresCustos);
   unRegisterClass(TFrmLotesExistentes);
   unRegisterClass(TRptItensLotes);
   unRegisterClass(TRptAnaliseCompra);
	unRegisterClass(TDMMensagensOperacoes);
	unRegisterClass(TFRMMensagensOperacoes);
	unRegisterClass(TDMTermosContratos);
	unRegisterClass(TFRMTermosContratos);
   unRegisterClass(TRptFinanceiroEmail);
   unRegisterClass(TRptSalesOrders);
   unRegisterClass(TRptSalesOrdersItens);
   unRegisterClass(TRptEstimates);
   unRegisterClass(TRptFaturaSalesOrders);
   unRegisterClass(TFrmConversacao);
//   unRegisterClass(TFrmRelacionamento);
   unRegisterClass(TRptPedidosPendentes);
   unRegisterClass(TDlgTabelaPrecos);
   unRegisterClass(TDlgItensFilhos);
   unRegisterClass(TRptConsistencia);
   unRegisterClass(TDMMetasFaturamento);
   unRegisterClass(TFrmMetasFaturamento);
   unRegisterClass(TRptMetasFaturamento);
   unRegisterClass(TRptMetasVendedor);
   unRegisterClass(TDMItensFalta);
   unRegisterClass(TFrmItensFalta);
   unRegisterClass(TRptItensFalta);
   unRegisterClass(TFrmPerfisTabelaPrecos);
   unRegisterClass(TFrmPerfisTiposMovimento);
   unRegisterClass(TDMPromocoes);
   unRegisterClass(TFrmPromocoes);
   unRegisterClass(TFrmUltimasEntradas);
   unRegisterClass(TDMOperadores);
   unRegisterClass(TFrmOperadores);
   unRegisterClass(TDMEntradasConsignadas);
   unRegisterClass(TFrmEntradasConsignadas);
   unRegisterClass(TDMSaidasConsignadas);
   unRegisterClass(TFrmSaidasConsignadas);
   unRegisterClass(TDlgCurvaABC);
   unRegisterClass(TDMAlmoxarifados);
   unRegisterClass(TFRMAlmoxarifados);
   unRegisterClass(TDMTransferenciasAlmox);
   unRegisterClass(TFrmTransferenciasAlmox);
   unRegisterClass(TDlgItensAlmox);
   unRegisterClass(TRptItensComposicao);
   unRegisterClass(TRptTransferenciasAlmox);
   unRegisterClass(TDMFretes);
   unRegisterClass(TFrmFretes);
   unRegisterClass(TRptInventario);
   unRegisterClass(TRptInventarioEstoque);
   unRegisterClass(TFrmEncerrantes);
   unRegisterClass(TRptEncerrantes);
   unRegisterClass(TDMNotasCupons);
   unRegisterClass(TFrmNotasCupons);
   unRegisterClass(TDMOutrasSaidas);
   unRegisterClass(TFrmOutrasSaidas);
   unRegisterClass(TDMOutrasEntradas);
   unRegisterClass(TFrmOutrasEntradas);
   unRegisterClass(TDMTiposLentes);
   unRegisterClass(TFrmTiposLentes);
   unRegisterClass(TDMTiposMaterial);
   unRegisterClass(TFrmTiposMaterial);
   unRegisterClass(TDMCores);
   unRegisterClass(TFrmCores);
   unRegisterClass(TDMAcertoConsigEnt);
   unRegisterClass(TFrmAcertoConsigEnt);
   unRegisterClass(TDMAcertoConsigSaid);
   unRegisterClass(TFrmAcertoConsigSaid);
   unRegisterClass(TFrmFiliais);
   unRegisterClass(TDMFiliais);
   unRegisterClass(TRptEntradasConsig);
   unRegisterClass(TRptItensConsignados);
   unRegisterClass(TFrmCarteiras);
   unRegisterClass(TDMCarteiras);
   unRegisterClass(TDlgRepasseEntreEmpresas);
   unRegisterClass(TRptParcelasChequesAReceber);
   unRegisterClass(TRptContasChequesAPagar);
   unRegisterClass(TRptItensECF);
   unRegisterClass(TDMMedicos);
   unRegisterClass(TFrmMedicos);
   unRegisterClass(TDlgBaixaTitulosBoletoBancario);
   unRegisterClass(TDMChecks);
   unRegisterClass(TFrmChecks);
   unRegisterClass(TDlgMescSaidConsig);
   unRegisterClass(TDlgMescAcertSaida);
   unRegisterClass(TRptItensConsigSaida);
   unRegisterClass(TRptComprasProdutos);
   unRegisterClass(TFrmCidadesBristol);
   unRegisterClass(TDMCidadesBristol);
   unRegisterClass(TDMInventarioEstoque);
   unRegisterClass(TFRMInventarioEstoque);
   unRegisterClass(TDMVeiculos);
   unRegisterClass(TFRMVeiculos);
   unRegisterClass(TDMRomaneio);
   unRegisterClass(TFrmRomaneio);
   unRegisterClass(TDlgEscolherSaidaRomaneio);
   unRegisterClass(TDLGExecutarComando);
   unRegisterClass(TdlgDataPosvenda);
   unRegisterClass(TrptDataPosVenda);
   unRegisterClass(TDlgEtiquetaItem);
   unRegisterClass(TrptDevolucaoVendas);
   unRegisterClass(TrptDevolucaoCompras);
   unRegisterClass(TrptOutrasSaidas);
   unRegisterClass(trptoutrasEntradas);
   unRegisterClass(tRptProdutosVendidos);
   unRegisterClass(tDMMarcas);
   unRegisterClass(tFRMMarcas);
   unRegisterClass(tDMModelos);
   unRegisterClass(tFRMModelos);
   unRegisterClass(tFrmTipoEquipamentos);
   unRegisterClass(tDMTipoEquipamentos);
   unRegisterClass(tDMTiposServicos);
   unRegisterClass(tFRMTiposServicos);
   unRegisterClass(tDMStatusServicos);
   unRegisterClass(tFRMStatusServicos);
   unRegisterClass(tDMEntradasAssistencia);
   unRegisterClass(tFRMEntradasAssistencia);
   unRegisterClass(tFRMEQUIPAMENTOSITUACAO);
   unRegisterClass(tDMLocalEquipamento);
   unRegisterClass(tFrmLocalEquipamento);
   unRegisterClass(tDMAssistenciaLaboratorio);
   unRegisterClass(tFrmAssistenciaLaboratorio);
   unRegisterClass(tdlgAssistenciaPecasServicos);
   unRegisterClass(tdlgAcompanhamentoAssistencia);
   unRegisterClass(tdlgIniciarOS);
   unRegisterClass(tDMClassesPrecos);
   unRegisterClass(tFrmClassesPrecos);
   unRegisterClass(TRptPrecosMultiUnidades);
   unRegisterClass(TDlgCalculoCusto);
   unRegisterClass(TDMAcessorios);
   unRegisterClass(TFrmAcessorios);
   unRegisterClass(TDMChamadoTecnico);
   unRegisterClass(TFrmChamadoTecnico);
   unRegisterClass(TDlgAlterarLocalizacao);
   unRegisterClass(TDMRomaneioCobr);
   unRegisterClass(TFrmRomaneioCobr);
   unRegisterClass(TDlgTabelaPreco);
   unRegisterClass(TRptVendas);
   unRegisterClass(TRptPedidos);
   unRegisterClass(TDlgGerarRemessa);
   unRegisterClass(TDlgLerRetorno);
   unRegisterClass(TRptEntrConsig);
   unRegisterClass(TRptDevConsig);
   unRegisterClass(TRptVendasConsig);
   unRegisterClass(TDMGruposComissoes);
   unRegisterClass(TFrmGruposComissoes);
   unRegisterClass(TDlgFormacaoCusto);
   unRegisterClass(TDlgAtualizarPrecosCalculados);
   unRegisterClass(TRptPrecoXCusto);
   unRegisterClass(TRptListaPrecos);
   unRegisterClass(TRptComissaoSaida);
   unRegisterClass(TDlgIP);
   unRegisterClass(TFrmFiltroFavorecidos);
   unRegisterClass(TRptResultadosPeriodo);
   unRegisterClass(TDMTecnologias);
   unRegisterClass(TFrmTecnologias);
   unRegisterClass(TDMEquipamento);
   unRegisterClass(TFrmEquipamento);
   unRegisterClass(TDMStatusAtendimentos);
   unRegisterClass(TFrmStatusAtendimentos);
   unRegisterClass(TDlgAgendamento);
   unRegisterClass(TDlgTransferirAgendamento);
   unRegisterClass(TDMAgendamentos);
   unRegisterClass(TFrmAgendamentos);
   unRegisterClass(TRptClientesEquipamentos);
   unRegisterClass(TDMOrdemServico);
   unRegisterClass(TFrmOrdemServico);
   unRegisterClass(TRptServico);
   unRegisterClass(TDMRotas);
   unRegisterClass(TFrmRotas);
   unRegisterClass(TRptOrdensServicos);
   unRegisterClass(TRptRotas);
   unRegisterClass(TRPTFichaCardex);
   unRegisterClass(TDMRotasManutencoes);
   unRegisterClass(TFrmRotasManutencoes);
   unRegisterClass(TDlgAcompanhamentoServico);
   unRegisterClass(TRptFretes);
   unRegisterClass(TDMCotacoes);
   unRegisterClass(TFrmCotacoes);
   unRegisterClass(TDMIndexadores);
   unRegisterClass(TFrmIndexadores);
   unRegisterClass(TDlgGruposComissoes);
   unRegisterClass(TDMLocalizacoes);
   unRegisterClass(TFrmLocalizacoes);
   unRegisterClass(TRptChequesPorOperacao);
   unRegisterClass(TRptSugestaoCompras);
   unRegisterClass(TDlgPlanoContasDespesas);
   unRegisterClass(TRptItensEstoqueFiscal);
   unRegisterClass(TDMTipoTributacao);
   unRegisterClass(TFrmTipoTributacao);
   unRegisterClass(TRptChamadosPorFunc);
   unRegisterClass(TRptVendasCartoes);
   unRegisterClass(TRptMixVendedorClientes);
   unRegisterClass(TFrmPontuacoes);
   unRegisterClass(TDMPontuacoes);
   unRegisterClass(TDMPontuacaoResgates);
   unRegisterClass(TFrmPontuacaoResgates);
   unRegisterClass(TRptRelacaoPontos);
   unRegisterClass(TDMClientesEquip);
   unRegisterClass(TFrmClientesEquip);
   unRegisterClass(TDlgQtdAlmoxarifado);
   unRegisterClass(TDlgInformacoesFinanceiras);
   unRegisterClass(TRptOutrasEntradasProdutos);
   unRegisterClass(TRptComprasProdutos);
   unRegisterClass(TDMLicitacoes);
   unRegisterClass(TFrmLicitacoes);
   unRegisterClass(TDlgUsuariosPoderes);
   unRegisterClass(TRptReposicaoGondolas);
   unRegisterClass(TRptAutorizacoes);
   unRegisterClass(TDlgApuracaoCaixa);
   unRegisterClass(TFrmAjustesItensFiscal);
   unRegisterClass(TDMAjustesItensFiscal);
   unRegisterClass(TRptSaldoConsignacaoSaida);
   unRegisterClass(TRptVendaVendedor);
   unRegisterClass(TRptVendaProdutoVendedor);
   unRegisterClass(TDlgAntecipacaoDuplicatas);
   unRegisterClass(TdlgAutenticacaoTitulos);
   unRegisterClass(TDlgVerificaAutenticacao);
   unRegisterClass(TDlgAtualizarEstoque);
   unRegisterClass(TDlgAlterarSenha);
   unRegisterClass(TDMProducoesServico);
   unRegisterClass(TFrmProducoesServico);
   unRegisterClass(TRptProducoesServico);
   unRegisterClass(TRptComissoesLiquidez);
   unRegisterClass(TDlgNFeExportarDados);
   unRegisterClass(TDlgAberturaCaixa);
   unRegisterClass(TDlgFechamento);
   unRegisterClass(TDlgFechamentoModeloB);
   unRegisterClass(TDlgExportarDadosPDV);
   unRegisterClass(TDlgImportacaoPDV);
   unRegisterClass(TDlgGerarArquivoPirelli);
   unRegisterClass(TDlgMarcasRelatorio);
   unRegisterClass(TDlgPesquisaLocalizacao);
   unRegisterClass(TRptMovimentacaoItens);
   unRegisterClass(TDlgCargaDadosPDV);
   unRegisterClass(TRptVendasTipoCobranca);
   unRegisterClass(TRptRelatorioMVA);
   unRegisterClass(TRptRelatorioMVAEntradas);
   unRegisterClass(TRptConsultaOS);
   unRegisterClass(TFrmFuncionariosIndustria);
   unRegisterClass(TDMFuncionariosIndustria);
   unRegisterClass(TFrmTiposMaquinas);
   unRegisterClass(TDMTiposMaquinas);
   unRegisterClass(TFrmMaquinasIndustria);
   unRegisterClass(TDMMaquinasIndustria);
   unRegisterClass(TFrmMaodeObraIndustria);
   unRegisterClass(TDMMaodeObraIndustria);
   unRegisterClass(TFrmTiposInsumos);
   unRegisterClass(TDMTiposInsumos);
   unRegisterClass(TFrmInsumosIndustria);
   unRegisterClass(TDMInsumosIndustria);
   unRegisterClass(TFrmMateriasPrimasIndustria);
   unRegisterClass(TDMMateriasPrimasIndustria);
   unRegisterClass(TDlgConsultaOS);
   unRegisterClass(TFrmProducao);
   unRegisterClass(TDMProducao);
   unRegisterClass(TFrmItensIdentificacao);
   unRegisterClass(TDMItensIdentificacao);
   unRegisterClass(TDlgItensIdentificacaoSaida);
   unRegisterClass(TRptItensIdentificados);
   unRegisterClass(TRptSaidasItensIdentificados);
   unRegisterClass(TRptEntradasItensIdentificados);
   unRegisterClass(TRptSalesOrdersLicitacao);
   unRegisterClass(TFrmEntradasReferenciadas);
   unRegisterClass(TDMEntradasReferenciadas);
   unRegisterClass(TFrmSaidasReferenciadas);
   unRegisterClass(TDMSaidasReferenciadas);
   unRegisterClass(TFrmMontagensProduto);
   unRegisterClass(TDMMontagensProduto);
   unRegisterClass(TDlgMontagensProduto);
   unRegisterClass(TDlgConferenciaCaixa);
   unRegisterClass(TFrmOficina);
   unRegisterClass(TDMOficina);
   unRegisterClass(TRptOficina);
   unRegisterClass(TRptServicosOficina);
end.

