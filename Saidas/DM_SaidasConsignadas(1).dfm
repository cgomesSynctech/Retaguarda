inherited DMSaidasConsignadas: TDMSaidasConsignadas
  Left = 276
  Top = 109
  Height = 450
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
      '                T.IMPORTACAO,'
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
      '                f.PESSOA_FJ as F_Pessoa_FJ,'
      '                f.ConsumidorFinal    as F_ConsumidorFinal,'
      '                f.PESSOA_FJ as F_Pessoa_FJ,'
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
      't.EMPRESA'
      
        'from '#9'(SAIDAS t  left join FAVORECIDOS f on t.FAVORECIDO = f.FAV' +
        'ORECIDO)'
      
        #9'left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVIMEN' +
        'TO')
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
      'Where  t.TipoPadrao = 4 and t.Tipo = '#39'S'#39' '
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento')
  end
  inherited Q_Status: TIBQuery
    SQL.Strings = (
      'Select  *  From StatusSaidas'
      'where Status not in ('#39'B'#39', '#39'C'#39', '#39'E'#39', '#39'V'#39', '#39'G'#39', '#39'A'#39')'
      'order by Ordem')
    Left = 621
  end
end
