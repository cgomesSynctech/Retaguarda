inherited DMCompras: TDMCompras
  Left = 184
  Top = 46
  Height = 650
  Width = 1102
  inherited Q_Tabela: TIBQuery
    SQL.Strings = (
      'Select '#9't.Entrada'#9#9'as IDMESTRE,'
      #9't.Favorecido'#9'as Favorecido,'
      #9't.Numero'#9#9'as Numero,'
      '       '#9't.Data'#9#9'as Data,'
      #9't.Total          '#9'as Total,'
      #9't.Situacao       '#9'as Situacao,'
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
      #9't.Frete'#9#9'as Frete,'
      #9't.TipoEntrega'#9'as TipoEntrega,'
      #9't.DataEntrega'#9'as DataEntrega,'
      #9't.OutrasDespesas'#9'as OutrasDespesas,'
      #9't.Juros'#9#9'as Juros,'
      #9't.Campo01'#9'as Campo01,'
      #9't.Campo02'#9'as Campo02,'
      #9't.Campo03 '#9'as Campo03,'
      #9't.Campo04'#9'as Campo04,'
      #9't.Imposto'#9#9'as Imposto,'
      #9't.PJuros'#9#9'as PJuros,'
      #9't.TotalItens'#9'as TotalItens,'
      #9't.TotalItens123'#9'as TotalItens123,'
      #9't.PrevisaoEntrega'#9'as PrevisaoEntrega,'
      #9't.Status'#9#9'as Status,'
      #9't.DescontoItens'#9'as DescontoItens,'
      #9't.Total'#9#9'as TotalOld,'
      #9't.LocalEntrega'#9'as LocalEntrega,'
      #9't.LocalCliente'#9'as LocalCliente,'
      #9't.IncluiDesconto'#9'as IncluiDesconto,'
      #9't.AtualizaCusto'#9'as AtualizaCusto,'
      #9't.AtualizaPreco'#9'as AtualizaPreco,'
      #9't.AtualizaPrecoManual as AtualizaPrecoManual,'
      '  '#9't.Usuario'#9#9'as Usuario,'
      #9't.Status'#9#9'as StatusOld,'
      '                t.BaseImposto          as BaseImposto,'
      '                t.BaseIncluso           as BaseIncluso,'
      '                t.Imposto_Incluso     as Imposto_Incluso,'
      #9't.ReducoesBase'#9'as ReducoesBase,'
      #9't.AcrescimosBase'#9'as AcrescimosBase,'
      #9't.Volumes'#9#9'as Volumes,'
      #9't.Desconto'#9'as OldDesconto,'
      #9't.AlmoxPadrao'#9'as AlmoxPadrao,'
      '                t.Vendedor               as Vendedor,'
      ''
      '                t.UFORIGEM ,'
      '                t.CFOPNOTA ,'
      '                t.CFOPENTRADA ,'
      '                t.SERIENOTA ,'
      '                t.VALORSEGURO ,'
      '                t.BASECALCICMS ,'
      '                t.VALORICMS ,'
      '                t.BASECALCSUBST ,'
      '                t.VALORICMSSUBST ,'
      '                t.VALORIPI ,'
      '                t.PESOBRUTO ,'
      '                t.PESOLIQUIDO ,'
      '                t.ALIQICMSCOMPRA ,'
      '                t.FRETEINCLUSO ,'
      '                t.VALORISENTAS ,'
      '                t.MODELO ,'
      '                t.VALOROUTRASICMS ,'
      '                t.VALORISENTASIPI ,'
      '                t.VALOROUTRASIPI ,'
      '                t.POSSUIICMS ,'
      '                t.POSSUIIPI ,'
      '                t.CONTABILIZAICMS ,'
      '                t.CIF_FOB, '
      '                t.DATANOTA,'
      '                t.NOTAORIGEM,'
      '                t.FRETEEXTERNO,'
      '                t.INDEXADOR,'
      '                t.FONTE,'
      '                t.BAIXAESTOQUEFISCAL,'
      '                t.ESPECIE,'
      '                T.PDV,'
      '                T.CHAVENFE, '
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
      '                f.BAIRRO                as F_BAIRRO,'
      '                f.CPF_CNPJ            as F_CPF_CNPJ,'
      '                f.INSCRICAO_EST as F_INSCRICAO_EST,'
      ''
      #9'tm.DESCRICAO'#9'as TM_Descricao,'
      #9'tm.TIPO'#9#9'as TM_TIPO,'
      #9'tm.POSSUITAX'#9'as TM_PossuiTax,'
      #9'tm.BAIXAESTOQUE as TM_BaixaEstoque,'
      #9'tm.BAIXAESTOQUEFISCAL as TM_BaixaEstoqueFiscal,'
      #9'tm.CALCCOMISSAO as TM_CalcComissao,'
      #9'tm.POSSUIENTREGA as TM_PossuiEntrega,'
      #9'tm.BLOQUEARSEATRASADO as TM_BloquearSeAtrasado,'
      #9'tm.BLOQUEARPORSITUACAO as TM_BloquearPorSituacao,'
      #9'tm.BLOQUEARPORESTOQUE as TM_BloquearPorEstoque,'
      #9'tm.LIMITEFAVORECIDO as TM_LimiteFavorecido,'
      #9'tm.SIGLAINICIAL '#9'as TM_SiglaInicial,'
      '                tm.CB_NOTAFISCAL,'
      '                tm.CB_ENTRADAPRECOVENDA,'
      #9'TotalPgtos as PagoInvoice,'
      '                fc.Nome as NomeCliente,'
      '                t.EMPRESA,'
      '                t.impresso'
      
        'from '#9'((ENTRADAS t  left join FAVORECIDOS f on t.FAVORECIDO = f.' +
        'FAVORECIDO)'
      
        #9'left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVIMEN' +
        'TO)'
      #9'left join Favorecidos fc ON fc.Favorecido = t.LocalCliente')
  end
  inherited U_Tabela: TIBUpdateSQL
    ModifySQL.Strings = (
      'update Entradas'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA,'
      '  TOTAL = :TOTAL,'
      '  SITUACAO = :SITUACAO,'
      '  OBS = :OBS,'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO,'
      '  POSSUITAX = :POSSUITAX,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  CALCCOMISSAO = :CALCCOMISSAO,'
      '  POSSUIENTREGA = :POSSUIENTREGA,'
      '  TIPOPADRAO = :TIPOPADRAO,'
      '  TAX = :TAX,'
      '  PERCENTUALTAX = :PERCENTUALTAX,'
      '  DESCONTO = :DESCONTO,'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO,'
      '  FRETE = :FRETE,'
      '  TIPOENTREGA = :TIPOENTREGA,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS,'
      '  JUROS = :JUROS,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  IMPOSTO = :IMPOSTO,'
      '  PJUROS = :PJUROS,'
      '  TOTALITENS = :TOTALITENS,'
      '  TOTALITENS123 = :TOTALITENS123,'
      '  PREVISAOENTREGA = :PREVISAOENTREGA,'
      '  STATUS = :STATUS,'
      '  DESCONTOITENS = :DESCONTOITENS,'
      '  LOCALENTREGA = :LOCALENTREGA,'
      '  LOCALCLIENTE = :LOCALCLIENTE,'
      '  INCLUIDESCONTO = :INCLUIDESCONTO,'
      '  ATUALIZACUSTO = :ATUALIZACUSTO,'
      '  ATUALIZAPRECO = :ATUALIZAPRECO,'
      '  ATUALIZAPRECOMANUAL = :ATUALIZAPRECOMANUAL,'
      '  USUARIO = :USUARIO,'
      '  IMPOSTO_INCLUSO = :IMPOSTO_INCLUSO,'
      '  BASEIMPOSTO = :BASEIMPOSTO,'
      '  BASEINCLUSO = :BASEINCLUSO,'
      '  REDUCOESBASE = :REDUCOESBASE,'
      '  ACRESCIMOSBASE = :ACRESCIMOSBASE,'
      '  VOLUMES = :VOLUMES,'
      '  ALMOXPADRAO = :ALMOXPADRAO,'
      '  UFORIGEM = :UFORIGEM,'
      '  CFOPNOTA = :CFOPNOTA,'
      '  CFOPENTRADA = :CFOPENTRADA,'
      '  SERIENOTA = :SERIENOTA,'
      '  VALORSEGURO = :VALORSEGURO,'
      '  BASECALCICMS = :BASECALCICMS,'
      '  VALORICMS = :VALORICMS,'
      '  BASECALCSUBST = :BASECALCSUBST,'
      '  VALORICMSSUBST = :VALORICMSSUBST,'
      '  VALORIPI = :VALORIPI,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  ALIQICMSCOMPRA = :ALIQICMSCOMPRA,'
      '  FRETEINCLUSO = :FRETEINCLUSO,'
      '  VALORISENTAS = :VALORISENTAS,'
      '  MODELO = :MODELO,'
      '  VALOROUTRASICMS = :VALOROUTRASICMS,'
      '  VALORISENTASIPI = :VALORISENTASIPI,'
      '  VALOROUTRASIPI = :VALOROUTRASIPI,'
      '  POSSUIICMS = :POSSUIICMS,'
      '  POSSUIIPI = :POSSUIIPI,'
      '  CONTABILIZAICMS = :CONTABILIZAICMS,'
      '  CIF_FOB = :CIF_FOB,'
      '  DATANOTA = :DATANOTA,'
      '  NOTAORIGEM = :NOTAORIGEM,'
      '  FRETEEXTERNO = :FRETEEXTERNO,'
      '  INDEXADOR = :INDEXADOR,'
      '  FONTE = :FONTE,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  VENDEDOR = :VENDEDOR,'
      '  ESPECIE = :ESPECIE,'
      '  PDV = :PDV,'
      '  CHAVENFE = :CHAVENFE,'
      '  IMPRESSO = :IMPRESSO'
      'where'
      '  ENTRADA = :OLD_IDMESTRE')
    InsertSQL.Strings = (
      'insert into Entradas'
      '  (ENTRADA, FAVORECIDO, NUMERO, DATA, TOTAL, SITUACAO, OBS, '
      'TIPOMOVIMENTO,'
      '   POSSUITAX, BAIXAESTOQUE, CALCCOMISSAO, POSSUIENTREGA, '
      'TIPOPADRAO, TAX,'
      '   PERCENTUALTAX, DESCONTO, PLANOPAGAMENTO, FRETE, TIPOENTREGA, '
      'DATAENTREGA,'
      '   OUTRASDESPESAS, JUROS, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'IMPOSTO,'
      '   PJUROS, TOTALITENS, TOTALITENS123, PREVISAOENTREGA, STATUS, '
      'DESCONTOITENS,'
      '   LOCALENTREGA, LOCALCLIENTE, INCLUIDESCONTO, ATUALIZACUSTO, '
      'ATUALIZAPRECO,'
      '   ATUALIZAPRECOMANUAL, USUARIO, IMPOSTO_INCLUSO, BASEIMPOSTO, '
      'BASEINCLUSO, REDUCOESBASE, ACRESCIMOSBASE, VOLUMES, '
      'ALMOXPADRAO,   UFORIGEM,'
      
        '  CFOPNOTA,  CFOPENTRADA, SERIENOTA,  VALORSEGURO,  BASECALCICMS' +
        ',  '
      'VALORICMS,'
      '  BASECALCSUBST,  VALORICMSSUBST,  VALORIPI,  PESOBRUTO,'
      '  PESOLIQUIDO,  ALIQICMSCOMPRA,  FRETEINCLUSO,  VALORISENTAS,'
      '  MODELO,  VALOROUTRASICMS,  VALORISENTASIPI,  VALOROUTRASIPI,'
      
        '  POSSUIICMS,  POSSUIIPI,  CONTABILIZAICMS,  CIF_FOB,  DATANOTA,' +
        ' '
      'NOTAORIGEM, FRETEEXTERNO, INDEXADOR, FONTE, BAIXAESTOQUEFISCAL, '
      'VENDEDOR, ESPECIE, PDV, CHAVENFE,IMPRESSO )'
      'values'
      
        '  (:IDMESTRE, :FAVORECIDO, :NUMERO, :DATA, :TOTAL, :SITUACAO, :O' +
        'BS,'
      ':TIPOMOVIMENTO,'
      '   :POSSUITAX, :BAIXAESTOQUE, :CALCCOMISSAO, :POSSUIENTREGA,'
      ':TIPOPADRAO,'
      '   :TAX, :PERCENTUALTAX, :DESCONTO, :PLANOPAGAMENTO, :FRETE,'
      ':TIPOENTREGA,'
      '   :DATAENTREGA, :OUTRASDESPESAS, :JUROS, :CAMPO01, :CAMPO02,'
      ':CAMPO03,'
      '   :CAMPO04, :IMPOSTO, :PJUROS, :TOTALITENS, :TOTALITENS123,'
      ':PREVISAOENTREGA,'
      '   :STATUS, :DESCONTOITENS, :LOCALENTREGA, :LOCALCLIENTE,'
      '   :INCLUIDESCONTO, :ATUALIZACUSTO, :ATUALIZAPRECO,'
      ':ATUALIZAPRECOMANUAL,'
      '   :USUARIO,   :IMPOSTO_INCLUSO, :BASEIMPOSTO, :BASEINCLUSO,'
      ':REDUCOESBASE, :ACRESCIMOSBASE, :VOLUMES, :ALMOXPADRAO, '
      ':UFORIGEM,'
      '  :CFOPNOTA, :CFOPENTRADA, :SERIENOTA,  :VALORSEGURO,  '
      ':BASECALCICMS,  :VALORICMS,'
      '  :BASECALCSUBST,  :VALORICMSSUBST,  :VALORIPI,  :PESOBRUTO,'
      
        '  :PESOLIQUIDO,  :ALIQICMSCOMPRA,  :FRETEINCLUSO,  :VALORISENTAS' +
        ','
      
        '  :MODELO,  :VALOROUTRASICMS,  :VALORISENTASIPI,  :VALOROUTRASIP' +
        'I,'
      
        '  :POSSUIICMS,  :POSSUIIPI,  :CONTABILIZAICMS,  :CIF_FOB,  :DATA' +
        'NOTA, '
      ':NOTAORIGEM, :FRETEEXTERNO, :INDEXADOR, :FONTE, '
      ':BAIXAESTOQUEFISCAL, :VENDEDOR, :ESPECIE, :PDV, :CHAVENFE '
      ',:IMPRESSO)')
  end
  inherited C_Tabela: TClientDataSet
    Left = 28
    Top = 155
    object C_TabelaCHAVENFE: TStringField
      FieldName = 'CHAVENFE'
      Origin = 'ENTRADAS.CHAVENFE'
      Size = 50
    end
    object C_TabelaIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Origin = 'ENTRADAS.IMPRESSO'
      Size = 1
    end
  end
  inherited Q_Itens: TIBQuery
    SQL.Strings = (
      'Select t.EntradaItem    as IDITEM,'
      't.Entrada        as IDMestre,'
      't.Sequencia    as Sequencia,'
      't.Descricao              as Descricao,'
      't.Quantidade           as Quantidade,'
      't.QuantidadeVolume           as QuantidadeVolume,'
      't.Preco        as Preco,'
      't.Item        as Item,'
      't.USOTIPOITEM    as UsoTipoItem,'
      't.SubTotalItem    as SubTotalItem,'
      't.SubTotalItem    as SubTotal,'
      't.Ordem        as Ordem,'
      't.HasChildren    as HasChildren,'
      't.CustoMedio    as CustoMedio,'
      't.CustoContabil    as CustoContabil,'
      't.Taxavel                 as Taxavel,'
      't.Coluna1        as Coluna1,'
      't.Coluna2        as Coluna2,'
      't.Coluna3        as Coluna3,'
      't.Coluna4        as Coluna4,'
      't.ClienteRef    as ClienteRef,'
      't.QtdRecebida    as QtdRecebida,'
      't.Situacao    as Situacao,'
      't.Referencia    as Referencia,'
      't.RateioDesconto    as RateioDesconto,'
      't.CustoMedio_Ant    as CustoMedio_Ant,'
      't.CustoContabil_Ant    as CustoContabil_Ant,'
      't.Lucro        as Lucro,'
      't.IndiceLucro    as IndiceLucro,'
      't.NovoPreco    as NovoPreco,'
      't.Analisado    as Analisado,'
      't.SemLucro    as SemLucro,'
      't.AtualizouCusto    as AtualizouCusto,'
      't.AtualizouPreco    as AtualizouPreco,'
      't.FreteProporcional as FreteProporcional,'
      't.CustoContabil     as CustoContabilOld,'
      't.Quantidade       as OldQuantidade,'
      't.Mesclado         as Mesclado,'
      't.ITEM             as OLDITEM,'
      't.Status           as Status,'
      't.CodigoForn       as CodigoForn,'
      't.Status           as StatusOld,'
      't.SaidaItem        as SaidaItem,'
      't.Vendedor         as Vendedor,'
      't.Unidade          as Unidade,'
      't.Fator            as Fator,'
      't.BaixaEstoque     as BaixaEstoque,'
      't.Almoxarifado     as Almoxarifado,'
      't.Unidade          as OldUnidade,'
      't.PDesconto        as PDesconto,'
      't.CompensacaoCusto as CompensacaoCusto,'
      't.BASECALCICMSPROD ,'
      't.BASECALCSUBSTPROD ,'
      't.VALORICMSPROD,'
      't.VALORICMSSUBSTPROD,'
      't.VALORISENTASPROD,'
      't.VALORIPIPROD,'
      't.valorpisprod,'
      't.valorcofinsprod,'
      't.IPI ,'
      't.aliqipi, '
      't.cstipi,'
      't.ALIQICMS ,'
      't.aliqpis,'
      't.aliqcofins,'
      't.CST ,'
      't.REDUCAOCST ,'
      't.CFOPENTRADA ,'
      't.DESCONTO ,'
      't.TVA,'
      't.SITUACAOECF,'
      't.CFOPCST,'
      't.IMPORTACAO,'
      't.FATORPRECO,'
      't.PRECOVENDA, '
      't.BAIXAESTOQUEFISCAL,'
      't.IDTRIBFEDERAL, '
      't.PDV,'
      't.NumeroLote           as NumeroLote,'
      't.Validade                 as Validade,'
      't.Fabricacao             as Fabricacao,  '
      't.cstpiscofins as cstpiscofins,'
      'T.FRETE,'
      'T.SEGURO ,'
      'T.OUTRASDESPESAS,'
      ''
      'i.clasfiscal as I_NCM,'
      'i.controlevalidade     as ControleValidade,'
      'i.PesoBruto               as I_Pesobruto,'
      'i.PesoLiquido            as I_PesoLiquido,'
      'i.Indexador                as I_INDEXADOR,'
      'i.IDTRIBFEDERAL  as  I_IDTRIBFEDERAL ,'
      'i.TIPOITEM              as  I_TIPOITEM,'
      'i.CODIGO                as  I_CODIGO,'
      'i.DESCRICAOCOMPRA   as  I_DESCRICAOCOMPRA,'
      'i.GRUPO                 as  I_GRUPO,'
      'i.DESCRICAO             as  I_DESCRICAO,'
      'i.TAXAVEL               as  I_TAXAVEL,'
      'i.CUSTOMEDIO      as  I_CUSTOMEDIO,'
      'i.ULTIMOFORNECEDOR  as  I_ULTIMOFORNECEDOR,'
      'i.QTDEMINIMO       as  I_QTDEMINIMO,'
      'i.QTDEMAXIMO       as  I_QTDEMAXIMO,'
      'i.PONTOPEDIDO      as  I_PONTOPEDIDO,'
      'i.PERCENTUAL      as  I_PERCENTUAL,'
      'i.APLICARANTESTAX   as  I_APLICARANTESTAX,'
      'i.UNIDADE               as  I_UNIDADE,'
      'i.LOCALIZACAO      as  I_LOCALIZACAO,'
      'i.ESTOQUE    as  I_ESTOQUE,'
      'i.ESTOQUEVOLUME    as  I_ESTOQUEVOLUME,'
      'i.COMISSAO              as  I_COMISSAO,'
      'i.DESCONTOMAXIMO    as  I_DESCONTOMAXIMO,'
      'i.TAXINCLUSO        as  I_TAXINCLUSO,'
      'i.CONTA_VENDA    as  I_CONTA_VENDA,'
      'i.CONTA_CUSTO    as  I_CONTA_CUSTO,'
      'i.CONTA_INVENT   as  I_CONTA_INVENT,'
      'i.BALANCO    as  I_BALANCO,'
      'i.FOTO        as  I_FOTO,'
      'i.PROMOCAO    as  I_PROMOCAO,'
      'i.FATORLUCRO      as  I_FATORLUCRO,'
      'i.SEMLUCRO      as  I_SEMLUCRO,'
      'i.PRECOCOMPRA   as I_PRECOCOMPRA,'
      'i.IDENTIFICACAO as I_IDENTIFICACAO,'
      'i.ITEM as I_ITEM,'
      'u.Descricao    as  DescricaoUnidade,'
      'u.Inteira        as  UnidadeInteira,'
      'fa.Nome        as  Nome,'
      'p.preco as PRECOVENDAProdutosPreco, '
      't.RateioSeguro    as RateioSeguro,'
      't.RateioFrete    as RateioFrete,'
      't.RateioDespesas    as RateioDespesas,'
      'T.EMPRESA'
      'from    ((ENTRADASITENS t'
      'LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      '    left join UNIDADES u on I.Unidade = u.Unidade)'
      '    left join FAVORECIDOS fa on fa.FAVORECIDO = t.CLIENTEREF'
      
        '    left join produtospreco  p on (p.item = i.item and p.tabelap' +
        'reco = 0)'
      'where '
      ''
      ' t.ENTRADA = :IDMESTRE'
      ' order by t.sequencia asc')
    Top = 7
  end
  inherited U_Itens: TIBUpdateSQL
    ModifySQL.Strings = (
      'update ENTRADASITENS'
      'set'
      'QUANTIDADEVOLUME = :QUANTIDADEVOLUME,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ITEM = :ITEM,'
      '  USOTIPOITEM = :USOTIPOITEM,'
      '  ORDEM = :ORDEM,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  TAXAVEL = :TAXAVEL,'
      '  COLUNA1 = :COLUNA1,'
      '  COLUNA2 = :COLUNA2,'
      '  COLUNA3 = :COLUNA3,'
      '  COLUNA4 = :COLUNA4,'
      '  CLIENTEREF = :CLIENTEREF,'
      '  QTDRECEBIDA = :QTDRECEBIDA,'
      '  SITUACAO = :SITUACAO,  '
      '  REFERENCIA = :REFERENCIA,'
      '  RATEIODESCONTO = :RATEIODESCONTO,'
      '  CUSTOMEDIO_ANT = :CUSTOMEDIO_ANT,'
      '  CUSTOCONTABIL_ANT = :CUSTOCONTABIL_ANT,'
      '  SEMLUCRO = :SEMLUCRO,'
      '  LUCRO = :LUCRO,'
      '  INDICELUCRO = :INDICELUCRO,'
      '  NOVOPRECO = :NOVOPRECO,'
      '  ATUALIZOUCUSTO = :ATUALIZOUCUSTO,'
      '  ATUALIZOUPRECO = :ATUALIZOUPRECO,'
      '  FRETEPROPORCIONAL = :FRETEPROPORCIONAL,'
      '  MESCLADO = :MESCLADO,'
      '  STATUS = :STATUS,'
      '  CODIGOFORN = :CODIGOFORN,'
      '  NUMEROLOTE = :NUMEROLOTE,'
      '  VALIDADE = :VALIDADE,'
      '  SAIDAITEM = :SAIDAITEM,'
      '  VENDEDOR = :VENDEDOR,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  ALMOXARIFADO = :ALMOXARIFADO,'
      '  IPI = :IPI,'
      '  ALIQICMS = :ALIQICMS,'
      '  CST = :CST,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  CFOPENTRADA = :CFOPENTRADA,'
      '  DESCONTO = :DESCONTO,'
      '  BASECALCSUBSTPROD = :BASECALCSUBSTPROD,'
      '  VALORIPIPROD = :VALORIPIPROD,'
      '  TVA = :TVA,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  VALORICMSPROD = :VALORICMSPROD,'
      '  VALORICMSSUBSTPROD = :VALORICMSSUBSTPROD,'
      '  VALORISENTASPROD = :VALORISENTASPROD,'
      '  COMPENSACAOCUSTO = :COMPENSACAOCUSTO,'
      '  PDESCONTO = :PDESCONTO,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  SUBTOTALITEM = :SUBTOTALITEM,'
      '  PRECO = :PRECO,'
      '  BASECALCICMSPROD = :BASECALCICMSPROD,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  CFOPCST = :CFOPCST,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  FATORPRECO = :FATORPRECO,'
      '  PRECOVENDA = :PRECOVENDA,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  IDTRIBFEDERAL =:IDTRIBFEDERAL,'
      '  FABRICACAO = :FABRICACAO,'
      '  PDV = :PDV,'
      '  EMPRESA = :EMPRESA,'
      '  CSTPISCOFINS = :CSTPISCOFINS,'
      '  ALIQPIS      = :ALIQPIS,'
      '  ALIQCOFINS   = :ALIQCOFINS,'
      '  VALORPISPROD = :VALORPISPROD,'
      '  VALORCOFINSPROD = :VALORCOFINSPROD,'
      '  CSTIPI          = :CSTIPI,'
      '  ALIQIPI      = :ALIQIPI,  '
      '  V_BCII       = :V_BCII,'
      '  V_DESPADUII  = :V_DESPADUII,'
      '  V_II = :V_II,'
      '  V_IOFII     = :V_IOFII,'
      '  RATEIODESPESAS = :RATEIODESPESAS,'
      '  RATEIOFRETE  = :RATEIOFRETE,'
      '  RATEIOSEGURO  = :RATEIOSEGURO,'
      '  FRETE = :FRETE,'
      '  SEGURO  = :SEGURO,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS'
      'where'
      '  ENTRADAITEM = :OLD_IDITEM')
  end
  inherited C_Itens: TClientDataSet
    inherited C_ItenslookUpCSTs: TStringField
      DisplayWidth = 3
      Size = 3
    end
    inherited C_ItensSUBTOTALITEM: TFloatField
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object C_ItenslkIndexador: TStringField [130]
      FieldKind = fkLookup
      FieldName = 'lkIndexador'
      LookupDataSet = C_Index
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'I_INDEXADOR'
      Size = 30
      Lookup = True
    end
    inherited C_ItensFATORPRECO: TFloatField
      OnChange = C_ItensFATORPRECOChange
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem'
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.Tipo = '#39'E'#39' and t.TipoPadrao = tp.TipoPadrao and t.TipoPa' +
        'drao = 101'
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento'
      '')
  end
  inherited C_TiposMovimento: TClientDataSet
    Top = 104
    inherited C_TiposMovimentoCALCULAPISCOFINS: TStringField
      Origin = ''
    end
  end
  inherited C_TiposEntrega: TClientDataSet
    Left = 369
  end
  inherited C_Mesclagens: TClientDataSet
    Top = 102
  end
  inherited Q_Status: TIBQuery
    Top = 7
  end
  inherited C_MensagensOperacoes: TClientDataSet
    Left = 258
    Top = 315
  end
  inherited Q_CFOPs_CSTs: TIBQuery
    Left = 761
    Top = 183
  end
  inherited P_CFOPs_CSTs: TDataSetProvider
    Left = 761
    Top = 244
  end
  inherited C_CFOPs_CSTs: TClientDataSet
    Left = 761
    Top = 301
  end
  inherited C_CFOPs_CSTsDS: TDataSource
    Left = 761
    Top = 362
  end
  inherited C_SitECF: TClientDataSet
    Left = 450
    Top = 315
  end
  inherited C_Vendedores: TClientDataSet
    Left = 986
    Top = 150
  end
  inherited Q_CSTs: TIBQuery
    Left = 859
    Top = 183
  end
  inherited P_CSTs: TDataSetProvider
    Left = 859
    Top = 236
  end
  inherited C_CSTs: TClientDataSet
    Left = 857
    Top = 287
  end
  inherited C_CSTs_DS: TDataSource
    Left = 859
    Top = 338
  end
  inherited Q_CSTs_IPI: TIBQuery
    Left = 988
    Top = 215
  end
  inherited P_CSTs_IPI: TDataSetProvider
    Left = 988
    Top = 268
  end
  inherited C_CSTs_IPI: TClientDataSet
    Left = 986
    Top = 319
  end
  inherited C_CSTs_IPI_DS: TDataSource
    Left = 988
    Top = 370
  end
  inherited Q_CSTs_PisCofins: TIBQuery
    Left = 876
    Top = 407
  end
  inherited P_CSTs_PisCofins: TDataSetProvider
    Left = 876
    Top = 460
  end
  inherited C_CSTs_PisCofins: TClientDataSet
    Left = 874
    Top = 511
  end
  inherited C_CSTs_PisCofins_DS: TDataSource
    Left = 876
    Top = 562
  end
  object Q_Index: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores'
      'order by 2')
    Left = 596
    Top = 400
  end
  object P_Index: TDataSetProvider
    DataSet = Q_Index
    Constraints = True
    Left = 596
    Top = 448
  end
  object C_Index: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Index'
    Left = 595
    Top = 500
    object C_IndexINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'INDEXADORES.INDEXADOR'
      Required = True
    end
    object C_IndexDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'INDEXADORES.DESCRICAO'
      Size = 30
    end
  end
end
