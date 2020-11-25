inherited DMSalesOrder: TDMSalesOrder
  Left = 394
  Top = 119
  Height = 549
  Width = 812
  inherited Q_Tabela: TIBQuery
    Top = 10
  end
  inherited U_Tabela: TIBUpdateSQL
    Top = 59
  end
  inherited ResultSet: TClientDataSet
    Left = 99
  end
  inherited Q_Itens: TIBQuery
    SQL.Strings = (
      'Select '
      't.SaidaItem as IDITEM,'
      't.Saida as IDMestre,'
      't.Sequencia as Sequencia,'
      't.Descricao          as Descricao,'
      't.Quantidade       as Quantidade,'
      't.QuantidadeVolume       as QuantidadeVolume,'
      't.Preco as Preco,'
      't.Item as Item,'
      't.USOTIPOITEM as UsoTipoItem,'
      't.SubTotalItem as SubTotalItem,'
      't.SubTotalItem as SubTotal,'
      't.Ordem as Ordem,'
      't.TabelaPreco as TabelaPreco,'
      't.PrecoTabela as PrecoTabela,'
      't.RateioDesconto as RateioDesconto,'
      't.HasChildren as HasChildren,'
      't.CustoMedio as CustoMedio,'
      't.ContaVenda  as ContaVenda,'
      't.Taxavel  as Taxavel,'
      't.Producao as Producao,'
      't.FuncProducao as FuncProducao,'
      't.Coluna1 as Coluna1,'
      't.Coluna2 as Coluna2,'
      't.Coluna3 as Coluna3,'
      't.Coluna4 as Coluna4,'
      't.MaxDesconto as MaxDesconto,'
      't.Quantidade as OldQuantidade,'
      't.EntradaItem as EntradaItem,'
      't.Despesa as Despesa,'
      't.CustoContabil as CustoContabil,'
      't.Mesclado as Mesclado,'
      't.ITEM as OLDITEM,'
      't.QtdFaturada as QtdFaturada,'
      't.QtdMontagem     as QtdMontagem,'
      't.Status as Status,'
      't.Status as StatusOld,'
      't.Unidade as Unidade,'
      't.Fator as Fator,'
      't.numerolote  as NumeroLote,'
      't.N_UsoTipoItem as N_UsoTipoItem,'
      't.Preco as OldPreco,'
      't.Unidade as OldUnidade,'
      't.Desconto as Desconto,'
      't.PDesconto as PDesconto,'
      't.Promocao as Promocao,'
      't.PrecoSemPromocao as PrecoSemPromocao,'
      't.BaixaEstoqueFiscal as BaixaEstoqueFiscal,'
      't.BaixaEstoque as BaixaEstoque,'
      't.Almoxarifado as Almoxarifado,'
      't.DescricaoComplementar as DescricaoComplementar,'
      't.OrdemMontagem   as OrdemMontagem,'
      't.BASECALCICMSPROD ,'
      't.IPI ,'
      't.ALIQICMS ,'
      't.CST ,'
      't.REDUCAOCST ,'
      't.SITUACAOECF ,'
      't.CFOPNOTA , '
      't.BASECALCSUBSTPROD ,'
      't.VALORIPIPROD , '
      't.TVA ,'
      't.NUMEROITEM,'
      't.REGISTRO,'
      't.VALORICMSPROD,'
      't.VALORICMSSUBSTPROD,'
      't.VALORISENTASPROD,'
      't.DATACONTATO,'
      't.CFOPCST,'
      't.BAIXAESTOQUEFISCAL,'
      't.IDTRIBFEDERAL,'
      't.CSTPISCOFINS,'
      't.ALIQPIS,'
      't.ALIQCOFINS,'
      't.CSTIPI,'
      't.ALIQIPI,'
      't.PDV,  '
      't.IMPORTACAO,'
      't.PCOMISSAO,'
      'T.EMPRESA,'
      'i.IDTRIBFEDERAL as I_IDTRIBFEDERAL,'
      'i.TIPOITEM          as  I_TIPOITEM,'
      'i.CODIGO            as  I_CODIGO,'
      'i.CODIGOBARRAS                as  I_CODIGOBARRAS,'
      'i.DESCRICAOCOMPRA   as  I_DESCRICAOCOMPRA,'
      'i.GRUPO             as  I_GRUPO,'
      'i.DESCRICAO         as  I_DESCRICAO,'
      'i.REFERENCIA as  I_REFERENCIA,'
      'i.TAXAVEL           as  I_TAXAVEL,'
      'i.CUSTOMEDIO      as  I_CUSTOMEDIO,'
      'i.ULTIMOFORNECEDOR  as  I_ULTIMOFORNECEDOR,'
      'i.QTDEMINIMO as  I_QTDEMINIMO,'
      'i.QTDEMAXIMO   as  I_QTDEMAXIMO,'
      'i.PONTOPEDIDO  as  I_PONTOPEDIDO,'
      'i.PERCENTUAL      as  I_PERCENTUAL,'
      'i.APLICARANTESTAX   as  I_APLICARANTESTAX,'
      'i.LOCALIZACAO      as  I_LOCALIZACAO,'
      'i.ESTOQUE as  I_ESTOQUE,'
      'i.ESTOQUEVolume as  I_ESTOQUEVolume,'
      'i.COMISSAO          as  I_COMISSAO,'
      'i.DESCONTOMAXIMO    as  I_DESCONTOMAXIMO,'
      'i.TAXINCLUSO        as  I_TAXINCLUSO,'
      'i.CONTA_VENDA    as  I_CONTA_VENDA,'
      'i.CONTA_CUSTO    as  I_CONTA_CUSTO,'
      'i.CONTA_INVENT   as  I_CONTA_INVENT,'
      'i.BALANCO as  I_BALANCO,'
      'i.FOTO as  I_FOTO, '
      'i.PROMOCAO as  I_PROMOCAO,'
      'i.FATORLUCRO      as  I_FATORLUCRO,'
      'i.SEMLUCRO  as  I_SEMLUCRO,'
      'i.UNIDADE           as  I_UNIDADE,'
      'i.UnidadeEntrada as  I_UnidadeEntrada,'
      'i.UnidadeCarga as  I_UnidadeCarga,'
      'i.UnidadeVarejo as  I_UnidadeVarejo,'
      'i.UnidadeMinima      as  I_UnidadeMinima,'
      'i.FatorUndVenda as  I_FatorUndVenda,'
      'i.FatorUndCompra as  I_FatorUndCompra,'
      'i.ComLucro as  I_ComLucro,'
      'i.PesoBruto               as I_PesoBruto,'
      'i.PesoLiquido            as I_PesoLiquido,'
      'i.DescricaoComplementar as I_DescricaoComplementar,'
      'i.DescricaoTecnica as  I_DescricaoTecnica,'
      'i.GrupoComissao as I_GRUPOCOMISSAO,'
      'i.INDEXADOR as I_INDEXADOR,'
      'u.Descricao as  DescricaoUnidade,'
      'u.Inteira as  UnidadeInteira,'
      'pdf.Producao as  ChaveProducaoFunc,'
      'g.DescontoMaximo as  DescontoMaximoGrupo,'
      'g.Foto as  FotoGrupo, t.situacao'
      ''
      'from(((SAIDASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      'left join UNIDADES u on I.Unidade = u.Unidade)'
      'left join GRUPOS g on g.Grupo = i.Grupo)'
      'left join PRODUCOESFUNC pdf on pdf.SAIDAITEM = t.SAIDAITEM'
      'where t.SAIDA = :IDMESTRE')
    Top = 6
  end
  inherited U_Itens: TIBUpdateSQL
    ModifySQL.Strings = (
      'update SAIDASITENS'
      'set'
      '  SEQUENCIA = :SEQUENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  QUANTIDADEVOLUME = :QUANTIDADEVOLUME,'
      '  QUANTIDADEVOLUME = :QUANTIDADEVOLUME,'
      '  PRECO = :PRECO,'
      '  ITEM = :ITEM,'
      '  USOTIPOITEM = :USOTIPOITEM,'
      '  SUBTOTALITEM = :SUBTOTALITEM,'
      '  ORDEM = :ORDEM,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  PRECOTABELA = :PRECOTABELA,'
      '  RATEIODESCONTO = :RATEIODESCONTO,'
      '  HASCHILDREN = :HASCHILDREN, '
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  CONTAVENDA = :CONTAVENDA,'
      '  TAXAVEL = :TAXAVEL,'
      '  PRODUCAO = :PRODUCAO,'
      '  FUNCPRODUCAO = :FUNCPRODUCAO,'
      '  COLUNA1 = :COLUNA1,'
      '  COLUNA2 = :COLUNA2,'
      '  COLUNA3 = :COLUNA3,'
      '  COLUNA4 = :COLUNA4 ,'
      '  MAXDESCONTO = :MAXDESCONTO,'
      '  DESPESA = :DESPESA, '
      '  ENTRADAITEM = :ENTRADAITEM,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  MESCLADO = :MESCLADO,'
      '  QTDMONTAGEM = :QTDMONTAGEM, '
      '  STATUS = :STATUS,'
      '  NUMEROLOTE = :NUMEROLOTE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  N_UsoTipoItem = :N_UsoTipoItem,'
      '  DESCONTO = :DESCONTO,'
      '  PROMOCAO = :PROMOCAO, '
      '  PRECOSEMPROMOCAO = :PRECOSEMPROMOCAO,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  ALMOXARIFADO = :ALMOXARIFADO,'
      '  DESCRICAOCOMPLEMENTAR = :DESCRICAOCOMPLEMENTAR,'
      '  ORDEMMONTAGEM = :ORDEMMONTAGEM,'
      '  BASECALCICMSPROD = :BASECALCICMSPROD,'
      '  IPI = :IPI,'
      '  ALIQICMS = :ALIQICMS,'
      '  CST = :CST,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  CFOPNOTA = :CFOPNOTA, '
      '  BASECALCSUBSTPROD = :BASECALCSUBSTPROD,'
      '  VALORIPIPROD = :VALORIPIPROD, '
      '  TVA = :TVA,'
      '  NUMEROITEM = :NUMEROITEM,'
      '  REGISTRO = :REGISTRO,'
      '  VALORICMSPROD = :VALORICMSPROD,'
      '  VALORICMSSUBSTPROD = :VALORICMSSUBSTPROD,'
      '  VALORISENTASPROD = :VALORISENTASPROD,'
      '  DATACONTATO = :DATACONTATO,'
      '  CFOPCST = :CFOPCST,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  IDTRIBFEDERAL = :IDTRIBFEDERAL,'
      '  PDESCONTO = :PDESCONTO, '
      '  EMPRESA = :EMPRESA, '
      '  SITUACAO = :SITUACAO'
      'where'
      '  SaidaItem = :OLD_IDITEM')
  end
  inherited C_Itens: TClientDataSet
    inherited C_ItensSTATUS: TStringField
      OnValidate = C_ItensSTATUSValidate
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.tipoorigem'
      'From TiposMovimento t'
      
        '         inner join TiposPadrao tp on t.TipoPadrao = tp.TipoPadr' +
        'ao'
      'Where  t.TipoPadrao = 2 and t.Tipo = '#39'S'#39' '
      'Order by t.TipoPadrao, t.TipoMovimento')
  end
  inherited C_Funcs: TClientDataSet
    Active = True
  end
  inherited C_MesclagensDS: TDataSource
    Left = 138
    Top = 455
  end
  inherited Q_Status: TIBQuery
    SQL.Strings = (
      'Select  *  From StatusSaidas'
      'where Status not in ('#39'B'#39', '#39'V'#39', '#39'G'#39', '#39'A'#39')'
      'order by Ordem')
    Left = 621
  end
  inherited C_LotesDS: TDataSource
    Left = 455
    Top = 459
  end
  inherited C_Unidades: TClientDataSet
    Active = True
  end
  inherited C_CFOPsDS: TDataSource
    Left = 541
    Top = 461
  end
  inherited C_CSTsDS: TDataSource
    Left = 374
    Top = 455
  end
  inherited P_Transp: TDataSetProvider
    Left = 34
    Top = 465
  end
  inherited C_TiposCobrancaDS: TDataSource
    Left = 277
    Top = 454
  end
  inherited C_CarteirasDS: TDataSource
    Left = 617
    Top = 458
  end
  inherited C_SitECF: TClientDataSet
    Active = True
    Left = 681
    Top = 459
  end
  inherited C_Almoxarifado: TClientDataSet
    Active = True
  end
end
