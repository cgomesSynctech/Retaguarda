inherited DMRequisicoes: TDMRequisicoes
  Left = 292
  Top = 0
  Height = 722
  Width = 1114
  inherited U_Tabela: TIBUpdateSQL
    Top = 54
  end
  inherited ResultSet: TClientDataSet
    Top = 54
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
      't.RateioSeguro    as RateioSeguro,'
      't.RateioFrete    as RateioFrete,'
      't.RateioDespesas    as RateioDespesas,'
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
      't.ENTRADA = :IDMESTRE'
      'order by t.sequencia asc')
    Top = 7
  end
  inherited C_Itens: TClientDataSet
    inherited C_ItensI_QTDEMAXIMO: TBCDField
      DisplayFormat = '#,##0.###'
    end
    inherited C_ItensSTATUS: TStringField
      OnValidate = C_ItensSTATUSValidate
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem'
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.TipoPadrao = tp.TipoPadrao and t.Tipo = '#39'E'#39' and t.TipoPa' +
        'drao = 103'
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento'
      '')
  end
  inherited P_TiposMovimento: TDataSetProvider
    Top = 54
  end
  inherited U_Parcelas: TIBUpdateSQL
    Left = 339
    Top = 53
  end
  inherited Q_Status: TIBQuery
    SQL.Strings = (
      'Select  *  From StatusEntradas'
      'where status not in ('#39'R'#39', '#39'L'#39', '#39'P'#39')'
      'order by Ordem')
    Top = 7
  end
  inherited P_Status: TDataSetProvider
    Top = 54
  end
end
