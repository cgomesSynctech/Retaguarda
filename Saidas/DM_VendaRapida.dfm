inherited DMVendaRapida: TDMVendaRapida
  Left = 36
  Height = 728
  inherited Q_Tabela: TIBQuery
    SQL.Strings = (
      'Select '#9't.Saida'#9#9'as IDMESTRE,'
      #9't.Favorecido'#9'as Favorecido,'
      #9't.Numero'#9'as Numero,'
      #9't.Data'#9#9'as Data,'
      #9't.Total'#9#9'as Total,'
      #9't.Situacao'#9'as Situacao,'
      #9't.OBS'#9#9'as OBS,'
      #9't.TipoMovimento'#9'as TipoMovimento,'
      #9't.PossuiTax'#9'as PossuiTax,'
      #9't.BaixaEstoque'#9'as BaixaEstoque,'
      #9't.CalcComissao'#9'as CalcComissao,'
      #9't.PossuiEntrega'#9'as PossuiEntrega,'
      #9't.TIPOPADRAO'#9'as TIPOPADRAO,'
      #9't.Tax'#9#9'as Tax,'
      #9't.PercentualTax'#9'as PercentualTax,'
      #9't.Desconto'#9'as Desconto,'
      #9't.PlanoPagamento'#9'as PlanoPagamento,'
      #9't.Vendedor'#9'as Vendedor,'
      #9't.Frete'#9#9'as Frete,'
      #9't.TipoEntrega'#9'as TipoEntrega,'
      #9't.DataEntrega'#9'as DataEntrega,'
      #9't.Pedido_Cliente'#9'as Pedido_Cliente,'
      #9't.OutrasDespesas'#9'as OutrasDespesas,'
      #9't.Juros'#9#9'as Juros,'
      #9't.Campo01'#9'as Campo01,'
      #9't.Campo02'#9'as Campo02,'
      #9't.Campo03 '#9'as Campo03,'
      #9't.Campo04'#9'as Campo04,'
      #9't.Impresso'#9'as Impresso,'
      #9't.Imposto'#9#9'as Imposto,'
      #9't.Imposto_Incluso'#9'as Imposto_Incluso,'
      #9't.PComissao'#9'as PComissao,'#9
      #9't.TabelaPadrao'#9'as TabelaPadrao,'
      #9't.PJuros'#9#9'as PJuros,'
      #9't.TotalItens'#9'as TotalItens,'
      #9't.TotalItens123'#9'as TotalItens123,'
      #9't.VALIDADE'#9'as Validade,'
      #9't.CondicoesPgto'#9'as CondicoesPgto,'
      #9't.DataEntregue'#9'as DataEntregue,'
      #9't.Status'#9#9'as Status,'
      #9't.BaseImposto'#9'as BaseImposto,'
      #9't.BaseIncluso'#9'as BaseIncluso,'
      #9't.DescontoItens'#9'as DescontoItens,'
      #9't.Total'#9#9'as TotalOld,'
      #9't.LocalEntrega'#9'as LocalEntrega,'
      #9't.Caixa'#9#9'as Caixa,'
      #9't.TipoImpressao'#9'as TipoImpressao,'
      #9't.Status'#9#9'as StatusOld,'
      #9't.ReducoesBase'#9'as ReducoesBase,'
      #9't.AcrescimosBase'#9'as AcrescimosBase,'
      #9't.Volumes'#9#9'as Volumes,'
      #9't.TermoContrato'#9'as TermoContrato,'
      #9't.Desconto'#9'as OldDesconto,'
      #9't.AlmoxPadrao'#9'as AlmoxPadrao,'
      #9't.PJurosNegociado'#9'as PJurosNegociado,'
      #9't.TotalProdutos'#9'as TotalProdutos,'
      #9't.VALORIPIITENS,'
      #9't.BaseCalcICMSItens,'
      #9't.BaseCalcSubstItens,'
      #9't.ValorICMSItens,'
      #9't.CFOPNOTA ,'
      #9't.SERIENOTA ,'
      #9't.UFDESTINO ,'
      #9't.BASECALCICMS ,'
      #9't.VALORICMS ,'
      #9't.VALORISS ,'
      #9't.VALORIPI ,'
      #9't.BASECALCSUBST ,'
      #9't.VALORICMSSUBST ,'
      #9't.ALIQICMSVENDA ,'
      #9't.VALORISENTAS ,'
      #9't.TOTALSERVICOS ,'
      #9't.POSSUIICMS ,'
      #9't.POSSUIIPI ,'
      #9't.POSSUIISS ,'
      #9't.CONTABILIZAICMS ,'
      #9't.VALOROUTRASICMS ,'
      #9't.MODELO,'
      #9't.PDV,'
      '                T.IMPORTACAO,'
      #9't.FONTE,'
      #9't.VALORSEGURO,'
      #9't.TIPOFRETE,'
      #9't.TRANSPORTADORA,'
      #9't.PESOBRUTO,'
      #9't.PESOLIQUIDO,'
      #9't.DESCESPECIE,'
      #9't.DESCMARCA,'
      #9't.DESCNUMERO,'
      #9't.PLACAVEIC,'
      #9't.SUBSTTRIB,'
      #9't.ATRATAR ,'
      #9't.INTRODUCAO ,'
      #9't.PRAZOENTREGA ,'
      #9't.CONDICOESPAGTO ,'
      #9't.GARANTIA ,'
      #9't.SEESTOQUE ,'
      #9't.PROCESSO ,'
      #9't.CARTACONVITE ,'
      #9't.TOMADAPRECOS ,'
      #9't.DATAABERTURA ,'
      #9't.EXPLICACOES ,'
      #9't.LICITACAOICMS ,'
      #9't.BAIXAESTOQUEFISCAL, '
      '                t.mensagemitem,'
      #9'f.CODIGO            '#9'as F_CODIGO,'
      #9'f.NOME              '#9'as F_NOME,'
      #9'f.RAZAO             '#9'as F_RAZAO,'
      #9'f.ENDERECO       '#9'as F_ENDERECO,'
      #9'f.CIDADE            '#9'as F_CIDADE,'
      #9'f.UF                '#9'as F_UF,'
      #9'f.CEP               '#9'as F_CEP,'
      #9'f.CAIXAPOSTAL    '#9'as F_CAIXAPOSTAL,'
      #9'f.PAIS              '#9'as F_PAIS,'
      #9'f.FONE1             '#9'as F_FONE1,'
      #9'f.FONE2             '#9'as F_FONE2,'
      #9'f.FAX               '#9'as F_FAX,'
      #9'f.CELULAR           '#9'as F_CELULAR,'
      #9'f.CONTATO           '#9'as F_CONTATO,'
      #9'f.EMAIL             '#9'as F_EMAIL,'
      #9'f.TIPOFAVORECIDO    '#9'as F_TIPOFAVORECIDO,'
      #9'f.TIPOATIVIDADE     '#9'as F_TIPOATIVIDADE,'
      #9'f.PLANOPAGAMENTO    '#9'as F_PLANOPAGAMENTO,'
      #9'f.VENDEDOR          '#9'as F_VENDEDOR,'
      #9'f.LIMITECREDITO     '#9'as F_LIMITECREDITO,'
      #9'f.TAXAVEL           '#9'as F_TAXAVEL,'
      #9'f.TAX               '#9'as F_TAX,'
      #9'f.EIN               '#9'as F_EIN,'
      #9'f.SSN               '#9'as F_SSN,'
      #9'f.TABELAPRECO  '#9'as F_TABELAPRECO,'
      #9'f.DESATIVADO     '#9'as F_DESATIVADO,'
      #9'f.EXIGIVEL1099   '#9'as F_EXIGIVEL1099,'
      #9'f.TIPOENTREGA    '#9'as F_TIPOENTREGA,'
      #9'f.DATACADASTRO'#9'as F_DATACADASTRO,'
      #9'f.SITE              '#9'as F_SITE,'
      #9'f.OBS               '#9'as F_OBS,'
      #9'f.IMPORTACAO   '#9'as F_IMPORTACAO,'
      #9'f.SITUACAO      '#9'as F_SITUACAO,'
      #9'f.CARGO           '#9'as F_CARGO,'
      #9'f.LOGOTIPO     '#9'as F_LOGOTIPO,'
      #9'f.JUROSFACTORY'#9'as F_JUROSFACTORY,'
      #9'f.TAXASFACTORY'#9'as F_TAXASFACTORY,'
      #9'f.FLOATINGFACTORY   as F_FLOATINGFACTORY,'
      #9'f.MEMO_CHECK  '#9'as F_MEMO_CHECK,'
      #9'f.CREDITO           '#9'as F_CREDITO,'
      #9'f.CONTA             '#9'as F_CONTA,'
      #9'f.NUMERO_REVENDA    as F_NUMERO_REVENDA,'
      #9'f.TIPO_FUNC         '#9'as F_TIPO_FUNC,'
      #9'f.DATANASC     '#9'as F_DATANASC,'
      #9'f.COMISSAO '#9'as F_COMISSAO,'
      #9'f.AgruparPorItem'#9'as F_AgruparPorItem,'
      #9'f.BAIRRO                as F_BAIRRO,'
      #9'f.CPF_CNPJ            as F_CPF_CNPJ,'
      #9'f.INSCRICAO_EST as F_INSCRICAO_EST,'
      #9'f.PERCDESCONTO as F_PERCDESCONTO,'
      '                f.ConsumidorFinal    as F_ConsumidorFinal,'
      #9'tm.DESCRICAO'#9'as TM_Descricao,'
      #9'tm.TIPO'#9#9'as TM_TIPO,'
      #9'tm.POSSUITAX'#9'as TM_PossuiTax,'
      #9'tm.BAIXAESTOQUE as TM_BaixaEstoque,'
      #9'tm.BAIXAESTOQUEFISCAL as TM_BaixaEstoqueFiscal,'
      #9'tm.GERAFINANCEIRO AS TM_GeraFinanceiro,'
      #9'tm.CALCCOMISSAO as TM_CalcComissao,'
      #9'tm.POSSUIENTREGA as TM_PossuiEntrega,'
      #9'tm.BLOQUEARSEATRASADO as TM_BloquearSeAtrasado,'
      #9'tm.BLOQUEARPORSITUACAO as TM_BloquearPorSituacao,'
      #9'tm.BLOQUEARPORESTOQUE as TM_BloquearPorEstoque,'
      #9'tm.LIMITEFAVORECIDO as TM_LimiteFavorecido,'
      #9'tm.SIGLAINICIAL '#9'as TM_SiglaInicial,'
      #9't.TotalPgtos '#9'as  PagoInvoice,'
      #9't.COBRANCA          as  COBRANCA,'
      #9't.CARTEIRA            as  CARTEIRA,'
      #9't.NF_CUPOM           as NF_CUPOM,'
      #9't.MEDICO                 as MEDICO,'
      't.NUMEROSERIEECF  as NUMEROSERIEECF,'
      't.NUMEROECF as NUMEROECF ,'
      't.CCF as CCF,'
      't.CRZ as CRZ'
      ''
      
        'from '#9'(SAIDAS t  left join FAVORECIDOS f on t.FAVORECIDO = f.FAV' +
        'ORECIDO)'
      
        #9'left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVIMEN' +
        'TO')
  end
  inherited U_Tabela: TIBUpdateSQL
    ModifySQL.Strings = (
      'update SAIDAS'
      'set'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  OBS = :OBS,'
      '  DESCONTO = :DESCONTO,'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO,'
      '  VENDEDOR = :VENDEDOR,'
      '  FRETE = :FRETE,'
      '  TOTAL = :TOTAL,'
      '  TIPOENTREGA = :TIPOENTREGA,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  SITUACAO = :SITUACAO,'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO,'
      '  PEDIDO_CLIENTE = :PEDIDO_CLIENTE,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS,'
      '  JUROS = :JUROS,'
      '  PJUROS = :PJUROS,'
      '  POSSUITAX = :POSSUITAX,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  CALCCOMISSAO = :CALCCOMISSAO,'
      '  POSSUIENTREGA = :POSSUIENTREGA,'
      '  TIPOPADRAO = :TIPOPADRAO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  IMPRESSO = :IMPRESSO,'
      '  IMPOSTO = :IMPOSTO,'
      '  IMPOSTO_INCLUSO = :IMPOSTO_INCLUSO,'
      '  PCOMISSAO = :PCOMISSAO,'
      '  TOTALITENS = :TOTALITENS,'
      '  TOTALITENS123 = :TOTALITENS123,'
      '  VALIDADE = :VALIDADE,'
      '  CONDICOESPGTO = :CONDICOESPGTO,'
      '  CONDICOESPAGTO = :CONDICOESPAGTO,'
      '  DATAENTREGUE = :DATAENTREGUE,'
      '  STATUS = :STATUS,'
      '  BASEIMPOSTO = :BASEIMPOSTO,'
      '  BASEINCLUSO = :BASEINCLUSO,'
      '  DESCONTOITENS = :DESCONTOITENS,'
      '  LOCALENTREGA = :LOCALENTREGA,'
      '  TABELAPADRAO = :TABELAPADRAO,'
      '  CAIXA = :CAIXA,'
      '  TIPOIMPRESSAO = :TIPOIMPRESSAO,'
      '  REDUCOESBASE = :REDUCOESBASE,'
      '  ACRESCIMOSBASE = :ACRESCIMOSBASE,'
      '  VOLUMES = :VOLUMES,'
      '  TERMOCONTRATO = :TERMOCONTRATO,'
      '  ALMOXPADRAO = :ALMOXPADRAO,'
      '  CFOPNOTA = :CFOPNOTA,'
      '  SERIENOTA = :SERIENOTA,'
      '  UFDESTINO = :UFDESTINO,'
      '  BASECALCICMS = :BASECALCICMS,'
      '  VALORICMS = :VALORICMS,'
      '  VALORISS = :VALORISS,'
      '  VALORIPI = :VALORIPI,'
      '  BASECALCSUBST = :BASECALCSUBST,'
      '  VALORICMSSUBST = :VALORICMSSUBST,'
      '  ALIQICMSVENDA = :ALIQICMSVENDA,'
      '  VALORISENTAS = :VALORISENTAS,'
      '  TOTALSERVICOS = :TOTALSERVICOS,'
      '  POSSUIICMS = :POSSUIICMS,'
      '  POSSUIIPI = :POSSUIIPI,'
      '  POSSUIISS = :POSSUIISS,'
      '  CONTABILIZAICMS = :CONTABILIZAICMS,'
      '  VALOROUTRASICMS = :VALOROUTRASICMS,'
      '  MODELO = :MODELO,'
      '  PDV = :PDV,'
      '  FONTE = :FONTE,'
      '  VALORSEGURO = :VALORSEGURO,'
      '  TIPOFRETE = :TIPOFRETE,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  DESCESPECIE = :DESCESPECIE,'
      '  DESCMARCA = :DESCMARCA,'
      '  DESCNUMERO = :DESCNUMERO,'
      '  PLACAVEIC = :PLACAVEIC,'
      '  SUBSTTRIB = :SUBSTTRIB,'
      '  ATRATAR = :ATRATAR,'
      '  INTRODUCAO = :INTRODUCAO,'
      '  PRAZOENTREGA = :PRAZOENTREGA,'
      '  GARANTIA = :GARANTIA,'
      '  SEESTOQUE = :SEESTOQUE,'
      '  PROCESSO = :PROCESSO,'
      '  CARTACONVITE = :CARTACONVITE,'
      '  TOMADAPRECOS = :TOMADAPRECOS,'
      '  DATAABERTURA = :DATAABERTURA,'
      '  EXPLICACOES = :EXPLICACOES,'
      '  LICITACAOICMS = :LICITACAOICMS,'
      '  PJUROSNEGOCIADO = :PJUROSNEGOCIADO,'
      '  VALORIPIITENS = :VALORIPIITENS,'
      '  BASECALCICMSITENS = :BASECALCICMSITENS,'
      '  VALORICMSITENS = :VALORICMSITENS,'
      '  BASECALCSUBSTITENS = :BASECALCSUBSTITENS,'
      '  TOTALPRODUTOS = :TOTALPRODUTOS,'
      '  COBRANCA = :COBRANCA,'
      '  CARTEIRA = :CARTEIRA,'
      '  NF_CUPOM = :NF_CUPOM,'
      '  MEDICO = :MEDICO,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  mensagemitem = :mensagemitem, '
      '  NUMEROECF = :NUMEROECF,'
      '  NUMEROSERIEECF = :NUMEROSERIEECF,'
      '  CCF = :CCF,  '
      '  CRZ = CRZ'
      'where'
      '  SAIDA = :OLD_IDMESTRE'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    InsertSQL.Strings = (
      'insert into SAIDAS'
      '  (SAIDA, NUMERO, DATA, FAVORECIDO, OBS, DESCONTO,'
      '   PLANOPAGAMENTO, VENDEDOR, FRETE, TOTAL, TIPOENTREGA,'
      '   DATAENTREGA, SITUACAO, TIPOMOVIMENTO, PEDIDO_CLIENTE,'
      '   OUTRASDESPESAS, JUROS, POSSUITAX, BAIXAESTOQUE,'
      '   CALCCOMISSAO, POSSUIENTREGA, TIPOPADRAO, CAMPO01, CAMPO02,'
      '   CAMPO03, CAMPO04, IMPRESSO, PCOMISSAO, IMPOSTO,'
      '   IMPOSTO_INCLUSO, PJUROS, TOTALITENS,TOTALITENS123, VALIDADE,'
      '   CONDICOESPGTO, CONDICOESPAGTO, DATAENTREGUE, STATUS, '
      '   BASEIMPOSTO, BASEINCLUSO,'
      '   DESCONTOITENS, LOCALENTREGA, TABELAPADRAO, CAIXA,'
      '   TIPOIMPRESSAO, REDUCOESBASE, ACRESCIMOSBASE, VOLUMES,'
      
        '   TERMOCONTRATO, ALMOXPADRAO,   CFOPNOTA, SERIENOTA,  UFDESTINO' +
        ','
      
        '   BASECALCICMS,  VALORICMS,  VALORISS, VALORIPI,  BASECALCSUBST' +
        ','
      '   VALORICMSSUBST,  ALIQICMSVENDA, VALORISENTAS,  TOTALSERVICOS,'
      '   POSSUIICMS,  POSSUIIPI,  POSSUIISS, CONTABILIZAICMS,'
      
        '   VALOROUTRASICMS, MODELO,  PDV,  FONTE, VALORSEGURO,  TIPOFRET' +
        'E,'
      '   TRANSPORTADORA, PESOBRUTO, PESOLIQUIDO,  DESCESPECIE,  '
      'DESCMARCA,'
      '   DESCNUMERO, PLACAVEIC, ATRATAR,  INTRODUCAO,  PRAZOENTREGA,'
      
        '   GARANTIA,  SEESTOQUE,  PROCESSO,  CARTACONVITE,  TOMADAPRECOS' +
        ','
      '   DATAABERTURA,  EXPLICACOES,  LICITACAOICMS, SUBSTTRIB, '
      'PJUROSNEGOCIADO,'
      '   VALORIPIITENS, BASECALCICMSITENS,  VALORICMSITENS, '
      'BASECALCSUBSTITENS,'
      '   TOTALPRODUTOS, COBRANCA, CARTEIRA, NF_CUPOM, MEDICO, '
      
        'BAIXAESTOQUEFISCAL, mensagemitem, NUMEROSERIEECF, NUMEROECF, CCF' +
        ', CRZ)'
      'values'
      '  (:IDMESTRE, :NUMERO, :DATA, :FAVORECIDO, :OBS, :DESCONTO,'
      '   :PLANOPAGAMENTO, :VENDEDOR, :FRETE, :TOTAL, :TIPOENTREGA,'
      '   :DATAENTREGA, :SITUACAO, :TIPOMOVIMENTO, :PEDIDO_CLIENTE,'
      '   :OUTRASDESPESAS, :JUROS, :POSSUITAX, :BAIXAESTOQUE, '
      ':CALCCOMISSAO,'
      '   :POSSUIENTREGA, :TIPOPADRAO, :CAMPO01, :CAMPO02,'
      '   :CAMPO03, :CAMPO04, :IMPRESSO, :PCOMISSAO, :IMPOSTO,'
      
        '   :IMPOSTO_INCLUSO, :PJUROS, :TOTALITENS, :TOTALITENS123, :VALI' +
        'DADE,'
      '   :CONDICOESPGTO, :CONDICOESPAGTO, :DATAENTREGUE, :STATUS,'
      '   :BASEIMPOSTO, :BASEINCLUSO, :DESCONTOITENS, :LOCALENTREGA,'
      '   :TABELAPADRAO, :CAIXA, :TIPOIMPRESSAO, :REDUCOESBASE,'
      '   :ACRESCIMOSBASE, :VOLUMES, :TERMOCONTRATO, :ALMOXPADRAO, '
      ':CFOPNOTA,'
      
        '   :SERIENOTA, :UFDESTINO, :BASECALCICMS,  :VALORICMS,  :VALORIS' +
        'S,'
      '   :VALORIPI, :BASECALCSUBST, :VALORICMSSUBST,  :ALIQICMSVENDA,'
      
        '   :VALORISENTAS, :TOTALSERVICOS, :POSSUIICMS, :POSSUIIPI, :POSS' +
        'UIISS,'
      '   :CONTABILIZAICMS, :VALOROUTRASICMS, :MODELO,  :PDV,  :FONTE,'
      '   :VALORSEGURO,  :TIPOFRETE, :TRANSPORTADORA, :PESOBRUTO,'
      '   :PESOLIQUIDO,  :DESCESPECIE,  :DESCMARCA, :DESCNUMERO,'
      
        '   :PLACAVEIC, :ATRATAR,  :INTRODUCAO,  :PRAZOENTREGA,   :GARANT' +
        'IA,'
      '   :SEESTOQUE,  :PROCESSO,  :CARTACONVITE, :TOMADAPRECOS,'
      '   :DATAABERTURA,  :EXPLICACOES,  :LICITACAOICMS, :SUBSTTRIB, '
      ':PJUROSNEGOCIADO,'
      '   :VALORIPIITENS, :BASECALCICMSITENS,  :VALORICMSITENS, '
      ':BASECALCSUBSTITENS,'
      '   :TOTALPRODUTOS, :COBRANCA, :CARTEIRA, :NF_CUPOM, :MEDICO ,'
      
        ':BAIXAESTOQUEFISCAL , :mensagemitem,  :NUMEROSERIEECF, :NUMEROEC' +
        'F, '
      ':CCF, :CRZ)')
  end
  inherited C_Tabela: TClientDataSet
    Left = 24
    inherited C_TabelaDESCONTO: TBCDField
      DisplayFormat = ''
    end
    inherited C_TabelaTABELAPADRAO: TIntegerField
      OnChange = C_TabelaTABELAPADRAOChange
    end
    object C_TabelaLabelMsg: TStringField [180]
      FieldKind = fkInternalCalc
      FieldName = 'LabelMsg'
      Size = 30
    end
    object C_TabelaicNomeTabelaPadrao: TStringField [181]
      FieldKind = fkInternalCalc
      FieldName = 'icNomeTabelaPadrao'
      Size = 50
    end
    object C_TabelaNUMEROECF: TStringField
      FieldName = 'NUMEROECF'
      Origin = 'SAIDAS.NUMEROECF'
      Size = 3
    end
    object C_TabelaCCF: TStringField
      FieldName = 'CCF'
      Origin = 'SAIDAS.CCF'
      Size = 6
    end
    object C_TabelaCRZ: TStringField
      FieldName = 'CRZ'
      Origin = 'SAIDAS.CRZ'
      Size = 4
    end
    object C_TabelaNUMEROSERIEECF: TStringField
      FieldName = 'NUMEROSERIEECF'
      Origin = 'SAIDAS.NUMEROSERIEECF'
    end
  end
  inherited Q_Itens: TIBQuery
    SQL.Strings = (
      'Select     t.SaidaItem    as IDITEM,'
      '    t.Saida        as IDMestre,'
      '           t.Sequencia    as Sequencia,'
      '    t.Descricao              as Descricao,'
      '    t.Quantidade           as Quantidade,'
      '    t.Preco        as Preco,'
      '    t.Item        as Item,'
      '    t.USOTIPOITEM    as UsoTipoItem,'
      '    t.SubTotalItem    as SubTotalItem,'
      '    t.SubTotalItem    as SubTotal,'
      '    t.Ordem        as Ordem,'
      '    t.TabelaPreco    as TabelaPreco,'
      '    t.PrecoTabela    as PrecoTabela,'
      '    t.RateioDesconto    as RateioDesconto,'
      '    t.HasChildren    as HasChildren,'
      '    t.CustoMedio    as CustoMedio,'
      '                t.ContaVenda          as ContaVenda,'
      '                t.Taxavel                 as Taxavel,'
      '    t.Producao    as Producao,'
      '    t.FuncProducao    as FuncProducao,'
      '    t.Coluna1        as Coluna1,'
      '    t.Coluna2        as Coluna2,'
      '    t.Coluna3        as Coluna3,'
      '    t.Coluna4        as Coluna4,'
      '    t.MaxDesconto    as MaxDesconto,'
      '    t.Quantidade    as OldQuantidade,'
      '    t.EntradaItem    as EntradaItem,'
      '    t.Despesa    as Despesa,'
      '    t.CustoContabil    as CustoContabil,'
      '    t.Mesclado    as Mesclado,'
      '    t.ITEM        as OLDITEM,'
      '    t.QtdFaturada    as QtdFaturada,'
      '    t.QtdMontagem         as QtdMontagem,'
      '    t.Status        as Status,'
      '    t.Status        as StatusOld,'
      '    t.Unidade     as Unidade,'
      '    t.Fator                    as Fator,'
      '                t.numerolote             as NumeroLote,'
      '    t.N_UsoTipoItem    as N_UsoTipoItem,'
      '    t.Preco        as OldPreco,'
      '    t.Unidade        as OldUnidade,'
      '    t.Desconto    as Desconto,'
      '    t.PDESCONTO as PDESCONTO,'
      '    t.Promocao    as Promocao,'
      '    t.PrecoSemPromocao as PrecoSemPromocao,'
      '    t.BaixaEstoque    as BaixaEstoque,'
      '    t.Almoxarifado    as Almoxarifado,'
      '    t.DescricaoComplementar as DescricaoComplementar,'
      '                t.OrdemMontagem   as OrdemMontagem,'
      '                t.BASECALCICMSPROD ,'
      '                t.IPI ,'
      '                t.ALIQICMS ,'
      '                t.CST ,'
      '                t.REDUCAOCST ,'
      '                t.SITUACAOECF ,'
      '                t.CFOPNOTA , '
      '                t.BASECALCSUBSTPROD ,'
      '                t.VALORIPIPROD , '
      '                t.TVA ,'
      '                t.NUMEROITEM,'
      '                t.REGISTRO,'
      '                t.VALORICMSPROD,'
      '                t.VALORICMSSUBSTPROD,'
      '                t.VALORISENTASPROD,'
      '                t.DATACONTATO,'
      '                t.CFOPCST,'
      '                t.BAIXAESTOQUEFISCAL,'
      '                t.IDTRIBFEDERAL, '
      '                t.CSTPISCOFINS,'
      '                t.ALIQPIS,'
      '                t.ALIQCOFINS,'
      '                t.CSTIPI,'
      '                t.ALIQIPI,'
      't.pdv, '
      'T.IMPORTACAO,'
      'T.PCOMISSAO,'
      '    i.TIPOITEM              as  I_TIPOITEM,'
      '    i.CODIGO  as  I_CODIGO,'
      'i.CODIGOBARRAS  as  I_CODIGOBARRAS,'
      '    i.codigobarras as I_CODIGOBARRAS,'
      '    i.DESCRICAOCOMPRA   as  I_DESCRICAOCOMPRA,'
      '    i.GRUPO                 as  I_GRUPO,'
      '    i.DESCRICAO             as  I_DESCRICAO,'
      '    i.REFERENCIA    as  I_REFERENCIA,'
      '    i.TAXAVEL               as  I_TAXAVEL,'
      '    i.CUSTOMEDIO      as  I_CUSTOMEDIO,'
      '    i.ULTIMOFORNECEDOR  as  I_ULTIMOFORNECEDOR,'
      '    i.QTDEMINIMO       as  I_QTDEMINIMO,'
      '    i.QTDEMAXIMO       as  I_QTDEMAXIMO,'
      '    i.PONTOPEDIDO      as  I_PONTOPEDIDO,'
      '    i.PERCENTUAL      as  I_PERCENTUAL,'
      '    i.APLICARANTESTAX   as  I_APLICARANTESTAX,'
      '    i.LOCALIZACAO      as  I_LOCALIZACAO,'
      '    i.ESTOQUE    as  I_ESTOQUE,'
      '    i.COMISSAO              as  I_COMISSAO,'
      '    i.DESCONTOMAXIMO    as  I_DESCONTOMAXIMO,'
      '    i.TAXINCLUSO        as  I_TAXINCLUSO,'
      '    i.CONTA_VENDA    as  I_CONTA_VENDA,'
      '    i.CONTA_CUSTO    as  I_CONTA_CUSTO,'
      '    i.CONTA_INVENT   as  I_CONTA_INVENT,'
      '    i.BALANCO    as  I_BALANCO,'
      '    i.FOTO        as  I_FOTO, '
      '    i.PROMOCAO    as  I_PROMOCAO,'
      '                i.FATORLUCRO      as  I_FATORLUCRO,'
      '                i.SEMLUCRO      as  I_SEMLUCRO,'
      '    i.UNIDADE               as  I_UNIDADE,'
      '    i.UnidadeEntrada    as  I_UnidadeEntrada,'
      '    i.UnidadeCarga    as  I_UnidadeCarga,'
      '    i.UnidadeVarejo    as  I_UnidadeVarejo,'
      '    i.UnidadeMinima      as  I_UnidadeMinima,'
      '    i.FatorUndVenda    as  I_FatorUndVenda,'
      '    i.FatorUndCompra    as  I_FatorUndCompra,'
      '                i.ComLucro    as  I_ComLucro,'
      '                i.PesoBruto               as I_PesoBruto,'
      '                i.PesoLiquido            as I_PesoLiquido,'
      '    i.DescricaoComplementar as I_DescricaoComplementar,'
      '    i.DescricaoTecnica    as  I_DescricaoTecnica,'
      '                i.GrupoComissao as I_GRUPOCOMISSAO,'
      '                i.INDEXADOR as I_INDEXADOR,'
      '    u.Descricao    as  DescricaoUnidade,'
      '    u.Inteira        as  UnidadeInteira,'
      '    pdf.Producao    as  ChaveProducaoFunc,'
      '    g.DescontoMaximo    as  DescontoMaximoGrupo,'
      '    g.Foto        as  FotoGrupo'
      '    '
      'from    (((SAIDASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      '    left join UNIDADES u on I.Unidade = u.Unidade)'
      '    left join GRUPOS g on g.Grupo = i.Grupo)'
      '    left join PRODUCOESFUNC pdf on pdf.SAIDAITEM = t.SAIDAITEM'
      'where t.SAIDA = :IDMESTRE')
  end
  inherited C_Itens: TClientDataSet
    inherited C_ItensI_CODIGOBARRAS: TStringField
      DisplayWidth = 14
      Size = 14
    end
    object C_ItensicIG: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icIG'
      Size = 1
    end
    object C_ItensicX: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icX'
      Size = 1
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem '
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.TipoPadrao = tp.TipoPadrao and t.Tipo = '#39'S'#39'  and t.Serie' +
        ' = '#39'ECF'#39
      'Order by t.TipoPadrao, t.TipoMovimento')
  end
  inherited C_PlanosPagamento: TClientDataSet
    object C_PlanosPagamentoicResumo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icResumo'
      Size = 255
    end
  end
  inherited C_ProdutosPreco: TClientDataSet
    Left = 355
    Top = 104
  end
  inherited C_Parcelas: TClientDataSet
    OnCalcFields = C_ParcelasCalcFields
    object C_Parcelas_icSelecionado: TIntegerField [0]
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ParcelasValorAReceber: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ValorAReceber'
    end
    object C_ParcelasPagamento: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Pagamento'
    end
    object C_ParcelasJuros: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Juros'
    end
    object C_ParcelasVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'TITULOSARECEBER.VENDA'
    end
  end
  inherited C_SaidasItensFilhos: TClientDataSet
    Left = 238
  end
  inherited C_Mesclagens: TClientDataSet
    Left = 154
  end
  inherited Q_Status: TIBQuery
    SQL.Strings = (
      'Select  *  From StatusSaidas'
      'where Status in ('#39'B'#39', '#39'C'#39', '#39'E'#39')'
      'order by Ordem')
  end
  inherited IBEventos_Saidas: TIBEvents
    Left = 743
    Top = 179
  end
  inherited C_SitECF: TClientDataSet
    Top = 477
  end
  object C_PlanosPagamentoDS: TDataSource
    DataSet = C_PlanosPagamento
    Left = 809
    Top = 414
  end
  object Q_Precos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'Select  '#9'pp.ProdutoPreco, pp.ITEM, pp.TABELAPRECO, pp.PRECO as P' +
        'RECO_NORMAL, '
      #9'pp.PRECOMANUAL, pp.PrecoPromocao, '
      
        #9'tp.DESCRICAO, tp.Baseada, tp.Percentual, i.descricao as descite' +
        'm'
      'From ProdutosPreco pp '
      'INNER JOIN TabelasPreco tp ON pp.TabelaPreco = tp.TabelaPreco'
      'INNER JOIN Itens i on i.item = pp.item'
      
        'Where pp.ITEM  = :ITEM and pp.Unidade = :Unidade and tp.Desativa' +
        'do = '#39'N'#39
      'Order by tp.Percentual, tp.TabelaPreco ')
    UniDirectional = True
    Left = 810
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Unidade'
        ParamType = ptUnknown
      end>
  end
  object P_Precos: TDataSetProvider
    DataSet = Q_Precos
    Constraints = True
    Left = 810
    Top = 235
  end
  object C_Precos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Precos'
    OnCalcFields = C_PrecosCalcFields
    OnFilterRecord = C_ProdutosPrecoFilterRecord
    Left = 811
    Top = 284
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PrecosPRODUTOPRECO: TIntegerField
      FieldName = 'PRODUTOPRECO'
      Required = True
    end
    object C_PrecosITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_PrecosTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_PrecosPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Size = 1
    end
    object C_PrecosPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_PrecosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_PrecosBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
    object C_PrecosPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_PrecosDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object C_PrecosPRECO_NORMAL: TBCDField
      FieldName = 'PRECO_NORMAL'
      Precision = 18
      Size = 3
    end
    object C_PrecosPRECO: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PRECO'
    end
  end
  object C_PrecosDS: TDataSource
    DataSet = C_Precos
    Left = 810
    Top = 331
  end
  object TEF2: TTEFDiscado
    Left = 234
    Top = 484
  end
end
