inherited DMOutrasEntradas: TDMOutrasEntradas
  Left = 216
  Top = 71
  Height = 633
  Width = 1122
  inherited Q_Tabela: TIBQuery
    SQL.Strings = (
      'Select '
      't.Entrada as IDMESTRE,'
      't.Favorecido as Favorecido,'
      't.Numero as Numero,'
      't.Data as Data,'
      't.Total as Total,'
      't.Situacao as Situacao,'
      't.OBS as OBS,'
      't.TipoMovimento as TipoMovimento,'
      't.PossuiTax as PossuiTax,'
      't.BaixaEstoque as BaixaEstoque,'
      't.CalcComissao as CalcComissao,'
      't.PossuiEntrega as PossuiEntrega,'
      't.TIPOPADRAO as TIPOPADRAO,'
      't.Tax as Tax,'
      't.PercentualTax as PercentualTax,'
      't.Desconto as Desconto,'
      't.PlanoPagamento as PlanoPagamento,'
      't.Frete as Frete,'
      't.TipoEntrega as TipoEntrega,'
      't.DataEntrega as DataEntrega,'
      't.OutrasDespesas as OutrasDespesas,'
      't.Juros as Juros,'
      't.Campo01 as Campo01,'
      't.Campo02 as Campo02,'
      't.Campo03 as Campo03,'
      't.Campo04 as Campo04,'
      't.Imposto as Imposto,'
      't.PJuros as PJuros,'
      't.TotalItens as TotalItens,'
      't.TotalItens123 as TotalItens123,'
      't.PrevisaoEntrega as PrevisaoEntrega,'
      't.Status as Status,'
      't.DescontoItens as DescontoItens,'
      't.Total as TotalOld,'
      't.LocalEntrega as LocalEntrega,'
      't.LocalCliente as LocalCliente,'
      't.IncluiDesconto as IncluiDesconto,'
      't.AtualizaCusto as AtualizaCusto,'
      't.AtualizaPreco as AtualizaPreco,'
      't.AtualizaPrecoManual as AtualizaPrecoManual,'
      't.Usuario as Usuario,'
      't.Status as StatusOld,'
      't.BaseImposto as BaseImposto,'
      't.BaseIncluso as BaseIncluso,'
      't.Imposto_Incluso as Imposto_Incluso,'
      't.ReducoesBase as ReducoesBase,'
      't.AcrescimosBase as AcrescimosBase,'
      't.Volumes as Volumes,'
      't.Desconto as OldDesconto,'
      't.AlmoxPadrao as AlmoxPadrao,'
      't.Vendedor as Vendedor,'
      't.UFORIGEM ,'
      't.CFOPNOTA ,'
      't.CFOPENTRADA ,'
      't.SERIENOTA ,'
      't.VALORSEGURO ,'
      't.BASECALCICMS ,'
      't.VALORICMS ,'
      't.BASECALCSUBST ,'
      't.VALORICMSSUBST ,'
      't.VALORIPI ,'
      't.PESOBRUTO ,'
      't.PESOLIQUIDO ,'
      't.ALIQICMSCOMPRA ,'
      't.FRETEINCLUSO ,'
      't.VALORISENTAS ,'
      't.MODELO ,'
      't.VALOROUTRASICMS ,'
      't.VALORISENTASIPI ,'
      't.VALOROUTRASIPI ,'
      't.POSSUIICMS ,'
      't.POSSUIIPI ,'
      't.CONTABILIZAICMS ,'
      't.CIF_FOB, '
      't.DATANOTA,'
      't.NOTAORIGEM,'
      't.FRETEEXTERNO,'
      't.INDEXADOR,'
      't.FONTE,'
      't.BAIXAESTOQUEFISCAL,'
      't.ESPECIE,'
      'T.PDV, '
      ' T.CHAVENFE,'
      'f.CODIGO as F_CODIGO,'
      'f.NOME as F_NOME,'
      'f.RAZAO as F_RAZAO,'
      'f.ENDERECO as F_ENDERECO,'
      'f.CIDADE as F_CIDADE,'
      'f.UF as F_UF,'
      'f.CEP as F_CEP,'
      'f.CAIXAPOSTAL as F_CAIXAPOSTAL,'
      'f.PAIS as F_PAIS,'
      'f.FONE1 as F_FONE1,'
      'f.FONE2 as F_FONE2,'
      'f.FAX as F_FAX,'
      'f.CELULAR as F_CELULAR,'
      'f.CONTATO as F_CONTATO,'
      'f.EMAIL as F_EMAIL,'
      'f.TIPOFAVORECIDO as F_TIPOFAVORECIDO,'
      'f.TIPOATIVIDADE as F_TIPOATIVIDADE,'
      'f.PLANOPAGAMENTO as F_PLANOPAGAMENTO,'
      'f.VENDEDOR as F_VENDEDOR,'
      'f.LIMITECREDITO as F_LIMITECREDITO,'
      'f.TAXAVEL as F_TAXAVEL,'
      'f.TAX as F_TAX,'
      'f.EIN as F_EIN,'
      'f.SSN as F_SSN,'
      'f.TABELAPRECO as F_TABELAPRECO,'
      'f.DESATIVADO as F_DESATIVADO,'
      'f.EXIGIVEL1099 as F_EXIGIVEL1099,'
      'f.TIPOENTREGA as F_TIPOENTREGA,'
      'f.DATACADASTRO as F_DATACADASTRO,'
      'f.SITE as F_SITE,'
      'f.OBS as F_OBS,'
      'f.IMPORTACAO as F_IMPORTACAO,'
      'f.SITUACAO as F_SITUACAO,'
      'f.CARGO as F_CARGO,'
      'f.LOGOTIPO as F_LOGOTIPO,'
      'f.JUROSFACTORY as F_JUROSFACTORY,'
      'f.TAXASFACTORY as F_TAXASFACTORY,'
      'f.FLOATINGFACTORY as F_FLOATINGFACTORY,'
      'f.MEMO_CHECK as F_MEMO_CHECK,'
      'f.CREDITO as F_CREDITO,'
      'f.CONTA as F_CONTA,'
      'f.NUMERO_REVENDA as F_NUMERO_REVENDA,'
      'f.TIPO_FUNC as F_TIPO_FUNC,'
      'f.DATANASC as F_DATANASC,'
      'f.COMISSAO as F_COMISSAO,'
      'f.BAIRRO as F_BAIRRO,'
      'f.CPF_CNPJ as F_CPF_CNPJ,'
      'f.INSCRICAO_EST as F_INSCRICAO_EST,'
      'tm.DESCRICAO as TM_Descricao,'
      'tm.TIPO as TM_TIPO,'
      'tm.POSSUITAX as TM_PossuiTax,'
      'tm.BAIXAESTOQUE as TM_BaixaEstoque,'
      'tm.BAIXAESTOQUEFISCAL as TM_BaixaEstoqueFiscal,'
      'tm.CALCCOMISSAO as TM_CalcComissao,'
      'tm.POSSUIENTREGA as TM_PossuiEntrega,'
      'tm.BLOQUEARSEATRASADO as TM_BloquearSeAtrasado,'
      'tm.BLOQUEARPORSITUACAO as TM_BloquearPorSituacao,'
      'tm.BLOQUEARPORESTOQUE as TM_BloquearPorEstoque,'
      'tm.LIMITEFAVORECIDO as TM_LimiteFavorecido,'
      'tm.SIGLAINICIAL as TM_SiglaInicial,'
      'tm.CB_NOTAFISCAL,'
      'tm.CB_ENTRADAPRECOVENDA,'
      'TotalPgtos as PagoInvoice,'
      'fc.Nome as NomeCliente,'
      't.detalheimportacao,'
      't.empresa, '
      't.Transportadora, '
      'T.PLACAVEIC'
      'from ((ENTRADAS t'
      '    left join FAVORECIDOS f on t.FAVORECIDO = f.FAVORECIDO)'
      
        '    left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVI' +
        'MENTO)    '
      
        '    left join Favorecidos fc ON fc.Favorecido = t.LocalCliente  ' +
        '  ')
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
      '  PDV = :PDV,  '
      '  CHAVENFE = :CHAVENFE,'
      'PLACAVEIC = :PLACAVEIC,'
      'TRANSPORTADORA = :TRANSPORTADORA'
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
      'VENDEDOR, ESPECIE, PDV,  CHAVENFE, PLACAVEIC, TRANSPORTADORA )'
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
      ':BAIXAESTOQUEFISCAL, :VENDEDOR, :ESPECIE, :PDV,  :CHAVENFE, '
      ':PLACAVEIC, :TRANSPORTADORA )')
  end
  inherited DMComponent: TDMComponent
    Gravar5_Terminar = DMComponentGravar5_Terminar
  end
  inherited C_Tabela: TClientDataSet
    inherited C_TabelaCALCCOMISSAO: TStringField
      KeyFields = '_icSelecionado'
    end
    object C_TabelaDETALHEIMPORTACAO: TIntegerField
      FieldName = 'DETALHEIMPORTACAO'
    end
    object C_TabelalkpDI: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpDI'
      LookupDataSet = C_DI
      LookupKeyFields = 'DETALHEIMPORTACAO'
      LookupResultField = 'CODIGO'
      KeyFields = 'DETALHEIMPORTACAO'
      Lookup = True
    end
    object C_TabelaCHAVENFE: TStringField
      FieldName = 'CHAVENFE'
      Origin = 'ENTRADAS.CHAVENFE'
      Size = 50
    end
    object C_TabelaTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object C_TabelalkTransportadora: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTransportadora'
      LookupDataSet = C_Transp
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'TRANSPORTADORA'
      Lookup = True
    end
    object C_TabelaPLACAVEIC: TStringField
      FieldName = 'PLACAVEIC'
      Size = 10
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
      't.frete as Frete,'
      't.seguro as Seguro,'
      't.outrasdespesas as OutrasDespesas,'
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
      'T.EMPRESA,'
      't.V_BCII,'
      't.V_DESPADUII,'
      't.V_II,'
      't.V_IOFII'
      'from    ((ENTRADASITENS t'
      'LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      '    left join UNIDADES u on I.Unidade = u.Unidade)'
      '    left join FAVORECIDOS fa on fa.FAVORECIDO = t.CLIENTEREF'
      
        '    left join produtospreco  p on (p.item = i.item and p.tabelap' +
        'reco = 0)'
      'where '
      't.empresa = :empresa'
      'and t.ENTRADA = :IDMESTRE'
      'and t.pdv =:pdv'
      'order by t.sequencia asc')
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IDMESTRE'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PDV'
        ParamType = ptUnknown
        Size = 4
      end>
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
      '  ALIQIPI      = :ALIQIPI,'
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
    object C_ItensV_BCII: TFloatField
      FieldName = 'V_BCII'
      Origin = 'ENTRADASITENS.V_BCII'
    end
    object C_ItensV_DESPADUII: TFloatField
      FieldName = 'V_DESPADUII'
      Origin = 'ENTRADASITENS.V_DESPADUII'
    end
    object C_ItensV_II: TFloatField
      FieldName = 'V_II'
      Origin = 'ENTRADASITENS.V_II'
    end
    object C_ItensV_IOFII: TFloatField
      FieldName = 'V_IOFII'
      Origin = 'ENTRADASITENS.V_IOFII'
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem'
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.Tipo = '#39'E'#39' and t.TipoPadrao = tp.TipoPadrao and t.TipoPa' +
        'drao in (105,150)'
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento'
      '')
  end
  inherited C_TiposMovimento: TClientDataSet
    Top = 104
  end
  inherited Q_Status: TIBQuery
    Top = 7
  end
  inherited Q_Almoxarifado: TIBQuery
    Left = 782
    Top = 14
  end
  object Q_DI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DETALHEIMPORTACOES'
      'order by CODIGO')
    Left = 565
    Top = 395
  end
  object P_DI: TDataSetProvider
    DataSet = Q_DI
    Constraints = True
    Left = 565
    Top = 441
  end
  object C_DI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_DI'
    Left = 565
    Top = 491
    object C_DIDETALHEIMPORTACAO: TIntegerField
      FieldName = 'DETALHEIMPORTACAO'
      Origin = 'DETALHEIMPORTACOES.DETALHEIMPORTACAO'
      Required = True
    end
    object C_DICODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DETALHEIMPORTACOES.CODIGO'
      Required = True
      Size = 12
    end
    object C_DILOCALDESEMBARACO: TStringField
      FieldName = 'LOCALDESEMBARACO'
      Origin = 'DETALHEIMPORTACOES.LOCALDESEMBARACO'
      Size = 255
    end
    object C_DIUF: TStringField
      FieldName = 'UF'
      Origin = 'DETALHEIMPORTACOES.UF'
      Size = 2
    end
    object C_DIDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DETALHEIMPORTACOES.DATA'
    end
    object C_DICODIGOEXPORT: TStringField
      FieldName = 'CODIGOEXPORT'
      Origin = 'DETALHEIMPORTACOES.CODIGOEXPORT'
      Size = 12
    end
  end
  object C_DIDs: TDataSource
    DataSet = C_DI
    Left = 565
    Top = 544
  end
  object Q_Transp: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  Favorecido, Nome, Codigo  From Favorecidos '
      
        'Where tipofavorecido = 2 and tipoempresa = '#39'T'#39' and Desativado = ' +
        #39'N'#39
      'order by nome')
    UniDirectional = True
    Left = 112
    Top = 423
  end
  object C_Transp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Transp'
    Left = 113
    Top = 472
    object C_TranspFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_TranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TranspCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
  end
  object P_Transp: TDataSetProvider
    DataSet = Q_Transp
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 112
    Top = 527
  end
end
