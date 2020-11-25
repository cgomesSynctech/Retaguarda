inherited DMSaidas: TDMSaidas
  Left = 292
  Top = 100
  Height = 659
  Width = 1024
  inherited OpenDialog: TOpenDialog
    Left = 24
    Top = 321
  end
  inherited SaveDialog: TSaveDialog
    Left = 24
    Top = 322
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
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
    Left = 22
    Top = 0
  end
  inherited Q_MasterDS: TDataSource
    Left = 86
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SAIDA,'
      '  NUMERO,'
      '  DATA,'
      '  FAVORECIDO,'
      '  OBS,'
      '  TAX,'
      '  PERCENTUALTAX,'
      '  DESCONTO,'
      '  PLANOPAGAMENTO,'
      '  VENDEDOR,'
      '  FRETE,'
      '  TOTAL,'
      '  TIPOENTREGA,'
      '  DATAENTREGA,'
      '  IMPORTACAO,'
      '  SITUACAO,'
      '  TIPOMOVIMENTO,'
      '  PEDIDO_CLIENTE,'
      '  OUTRASDESPESAS,'
      '  JUROS,'
      '  POSSUITAX,'
      '  BAIXAESTOQUE,'
      '  CALCCOMISSAO,'
      '  POSSUIENTREGA,'
      '  POSSUIFATURAS,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  IMPRESSO'
      'from SAIDAS '
      'where'
      '  SAIDA = :SAIDA')
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
      '  mensagemitem = :mensagemitem,'
      '  EMPRESA = :EMPRESA'
      'where  '
      '  SAIDA = :OLD_IDMESTRE and EMPRESA = :OLD_EMPRESA and PDV = '
      '  :OLD_PDV')
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
      'BAIXAESTOQUEFISCAL, mensagemitem, IMPORTACAO, EMPRESA)'
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
      ':BAIXAESTOQUEFISCAL , :mensagemitem, :IMPORTACAO, :EMPRESA)')
    DeleteSQL.Strings = (
      'delete from SAIDAS'
      'where'
      '  SAIDA = :OLD_IDMESTRE ')
    Left = 26
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    AposIniciar = DMComponentAposIniciar
    Exclusao = DMComponentExclusao
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    Gravar5_Terminar = DMComponentGravar5_Terminar
    ChavesDetalhes.Strings = ()
    GenerateIDFor.Strings = (
      'C_Itens=IDITEM'
      'C_Parcelas=ID'
      'C_SaidasItensFilhos=SAIDAITEMFILHO'
      'C_Mesclagens=SAIDAITEMMESCLA')
    Left = 25
    Top = 274
  end
  inherited DlgMsg: TDlgMsg
    Left = 91
    Top = 332
  end
  inherited P_Tabela: TDataSetProvider
    Left = 23
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    Left = 23
    Top = 160
    inherited C_TabelaIDMESTRE: TIntegerField
      OnChange = C_TabelaIDMESTREChange
    end
    inherited C_TabelaNUMERO: TStringField
      OnChange = C_TabelaNUMEROChange
    end
    inherited C_TabelaDATA: TDateField
      OnChange = C_TabelaDATAChange
    end
    inherited C_TabelaOBS: TStringField
      DisplayWidth = 8000
      Size = 500
    end
    inherited C_TabelaBAIXAESTOQUE: TStringField
      OnChange = C_TabelaBAIXAESTOQUEChange
    end
    object C_TabelaIMPRESSO: TStringField [11]
      FieldName = 'IMPRESSO'
      Origin = 'SAIDAS.IMPRESSO'
      Size = 1
    end
    inherited C_TabelaF_LIMITECREDITO: TBCDField
      DisplayFormat = '##,##0.00'
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField [70]
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'SAIDAS.PLANOPAGAMENTO'
      OnChange = C_TabelaPLANOPAGAMENTOChange
    end
    object C_TabelaVENDEDOR: TIntegerField [71]
      FieldName = 'VENDEDOR'
      Origin = 'SAIDAS.VENDEDOR'
      OnChange = C_TabelaVENDEDORChange
    end
    object C_TabelaTIPOENTREGA: TIntegerField [72]
      FieldName = 'TIPOENTREGA'
      Origin = 'SAIDAS.TIPOENTREGA'
    end
    object C_TabelaDATAENTREGA: TDateField [73]
      FieldName = 'DATAENTREGA'
      Origin = 'SAIDAS.DATAENTREGA'
    end
    object C_TabelaPEDIDO_CLIENTE: TStringField [74]
      FieldName = 'PEDIDO_CLIENTE'
      Origin = 'SAIDAS.PEDIDO_CLIENTE'
      Size = 12
    end
    object C_TabelaCAMPO01: TStringField [75]
      FieldName = 'CAMPO01'
      Origin = 'SAIDAS.CAMPO01'
      Size = 50
    end
    object C_TabelaCAMPO02: TStringField [76]
      FieldName = 'CAMPO02'
      Origin = 'SAIDAS.CAMPO02'
      Size = 50
    end
    object C_TabelaCAMPO03: TStringField [77]
      FieldName = 'CAMPO03'
      Origin = 'SAIDAS.CAMPO03'
      Size = 50
    end
    object C_TabelaCAMPO04: TStringField [78]
      FieldName = 'CAMPO04'
      Origin = 'SAIDAS.CAMPO04'
      Size = 50
    end
    object C_TabelalkPlanoPagamento: TStringField [79]
      FieldKind = fkLookup
      FieldName = 'lkPlanoPagamento'
      LookupDataSet = C_PlanosPagamento
      LookupKeyFields = 'PLANOPAGAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PLANOPAGAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkVendedor: TStringField [80]
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedores
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'VENDEDOR'
      Size = 25
      Lookup = True
    end
    object C_TabelalkTipoEntrega: TStringField [81]
      FieldKind = fkLookup
      FieldName = 'lkTipoEntrega'
      LookupDataSet = C_TiposEntrega
      LookupKeyFields = 'TIPOENTREGA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOENTREGA'
      EditMask = 'pre'
      Size = 25
      Lookup = True
    end
    object C_TabelacfEnderecoParaEntrega: TStringField [84]
      FieldKind = fkInternalCalc
      FieldName = 'cfEnderecoParaEntrega'
      Size = 120
    end
    object C_TabelaTABELAPADRAO: TIntegerField [85]
      FieldName = 'TABELAPADRAO'
      Origin = 'SAIDAS.TABELAPADRAO'
    end
    inherited C_TabelalkTipoMovimento: TStringField
      DisplayWidth = 40
      Size = 40
    end
    object C_TabelacfLastIDMov: TStringField [88]
      FieldKind = fkInternalCalc
      FieldName = 'cfLastIDMov'
      Size = 15
    end
    object C_TabelaVALIDADE: TDateField [89]
      FieldName = 'VALIDADE'
      Origin = 'SAIDAS.VALIDADE'
    end
    object C_TabelaDATAENTREGUE: TDateField [90]
      FieldName = 'DATAENTREGUE'
      Origin = 'SAIDAS.DATAENTREGUE'
    end
    object C_TabelaSTATUS: TStringField [91]
      FieldName = 'STATUS'
      Origin = 'SAIDAS.STATUS'
      OnValidate = C_TabelaSTATUSValidate
      Size = 1
    end
    object C_TabelaCONDICOESPGTO: TStringField [92]
      FieldName = 'CONDICOESPGTO'
      Origin = 'SAIDAS.CONDICOESPGTO'
      Size = 255
    end
    object C_TabelaF_AGRUPARPORITEM: TStringField [93]
      FieldName = 'F_AGRUPARPORITEM'
      Origin = 'FAVORECIDOS.F_AGRUPARPORITEM'
      Size = 1
    end
    object C_TabelaLOCALENTREGA: TIntegerField [94]
      FieldName = 'LOCALENTREGA'
      Origin = 'SAIDAS.LOCALENTREGA'
    end
    object C_TabelaCAIXA: TIntegerField [95]
      FieldName = 'CAIXA'
      Origin = 'SAIDAS.CAIXA'
    end
    object C_TabelaTIPOIMPRESSAO: TStringField [96]
      FieldName = 'TIPOIMPRESSAO'
      Origin = 'SAIDAS.TIPOIMPRESSAO'
      Size = 1
    end
    object C_TabelaicDescontoParcelas: TCurrencyField [97]
      FieldKind = fkInternalCalc
      FieldName = 'icDescontoParcelas'
    end
    object C_TabelaicAlertouLimite: TBooleanField [98]
      FieldKind = fkInternalCalc
      FieldName = 'icAlertouLimite'
    end
    object C_TabelalkStatus: TStringField [99]
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = C_Status
      LookupKeyFields = 'STATUS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUS'
      Size = 25
      Lookup = True
    end
    object C_TabelaSTATUSOLD: TStringField [100]
      FieldName = 'STATUSOLD'
      Origin = 'SAIDAS.STATUSOLD'
      Size = 1
    end
    object C_TabelaTERMOCONTRATO: TStringField [101]
      FieldName = 'TERMOCONTRATO'
      Origin = 'SAIDAS.TERMOCONTRATO'
      Size = 500
    end
    object C_TabelaALMOXPADRAO: TIntegerField [102]
      FieldName = 'ALMOXPADRAO'
      Origin = 'SAIDAS.ALMOXPADRAO'
      OnChange = C_TabelaALMOXPADRAOChange
    end
    object C_TabelaSERIENOTA: TStringField [103]
      FieldName = 'SERIENOTA'
      Origin = 'SAIDAS.SERIENOTA'
      Size = 3
    end
    object C_TabelaUFDESTINO: TStringField [104]
      FieldName = 'UFDESTINO'
      Origin = 'SAIDAS.UFDESTINO'
      Size = 2
    end
    object C_TabelaMODELO: TStringField [105]
      FieldName = 'MODELO'
      Origin = 'SAIDAS.MODELO'
      Size = 2
    end
    object C_TabelaPDV: TIntegerField [106]
      FieldName = 'PDV'
      Origin = 'SAIDAS.PDV'
    end
    object C_TabelaFONTE: TStringField [107]
      FieldName = 'FONTE'
      Origin = 'SAIDAS.FONTE'
      Size = 1
    end
    object C_TabelaTIPOFRETE: TStringField [108]
      FieldName = 'TIPOFRETE'
      Origin = 'SAIDAS.TIPOFRETE'
      Size = 1
    end
    object C_TabelaTRANSPORTADORA: TIntegerField [109]
      FieldName = 'TRANSPORTADORA'
      Origin = 'SAIDAS.TRANSPORTADORA'
    end
    object C_TabelaDESCESPECIE: TStringField [110]
      FieldName = 'DESCESPECIE'
      Origin = 'SAIDAS.DESCESPECIE'
      Size = 15
    end
    object C_TabelaDESCMARCA: TStringField [111]
      FieldName = 'DESCMARCA'
      Origin = 'SAIDAS.DESCMARCA'
      Size = 15
    end
    object C_TabelaDESCNUMERO: TStringField [112]
      FieldName = 'DESCNUMERO'
      Origin = 'SAIDAS.DESCNUMERO'
      Size = 10
    end
    object C_TabelaPLACAVEIC: TStringField [113]
      FieldName = 'PLACAVEIC'
      Origin = 'SAIDAS.PLACAVEIC'
      EditMask = '>LLL9999;1;_'
      Size = 10
    end
    object C_TabelaATRATAR: TStringField [114]
      FieldName = 'ATRATAR'
      Origin = 'SAIDAS.ATRATAR'
      Size = 255
    end
    object C_TabelaINTRODUCAO: TStringField [115]
      FieldName = 'INTRODUCAO'
      Origin = 'SAIDAS.INTRODUCAO'
      Size = 255
    end
    object C_TabelaPRAZOENTREGA: TStringField [116]
      FieldName = 'PRAZOENTREGA'
      Origin = 'SAIDAS.PRAZOENTREGA'
      Size = 40
    end
    object C_TabelaGARANTIA: TStringField [117]
      FieldName = 'GARANTIA'
      Origin = 'SAIDAS.GARANTIA'
      Size = 50
    end
    object C_TabelaSEESTOQUE: TStringField [118]
      FieldName = 'SEESTOQUE'
      Origin = 'SAIDAS.SEESTOQUE'
      Size = 1
    end
    object C_TabelaPROCESSO: TStringField [119]
      FieldName = 'PROCESSO'
      Origin = 'SAIDAS.PROCESSO'
      Size = 30
    end
    object C_TabelaCARTACONVITE: TStringField [120]
      FieldName = 'CARTACONVITE'
      Origin = 'SAIDAS.CARTACONVITE'
      Size = 30
    end
    object C_TabelaTOMADAPRECOS: TStringField [121]
      FieldName = 'TOMADAPRECOS'
      Origin = 'SAIDAS.TOMADAPRECOS'
      Size = 30
    end
    object C_TabelaDATAABERTURA: TStringField [122]
      FieldName = 'DATAABERTURA'
      Origin = 'SAIDAS.DATAABERTURA'
      Size = 30
    end
    object C_TabelaEXPLICACOES: TStringField [123]
      FieldName = 'EXPLICACOES'
      Origin = 'SAIDAS.EXPLICACOES'
      Size = 4000
    end
    object C_TabelalkTransportadora: TStringField [124]
      FieldKind = fkLookup
      FieldName = 'lkTransportadora'
      LookupDataSet = C_Transp
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'TRANSPORTADORA'
      Size = 40
      Lookup = True
    end
    object C_TabelalkCFOP: TStringField [125]
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = C_CFOPs
      LookupKeyFields = 'CFOP'
      LookupResultField = 'CFOP'
      KeyFields = 'CFOPNOTA'
      Size = 3
      Lookup = True
    end
    object C_TabelaSUBSTTRIB: TStringField [126]
      FieldName = 'SUBSTTRIB'
      Origin = 'SAIDAS.SUBSTTRIB'
      Size = 1
    end
    object C_TabelaQ_Parcelas: TDataSetField [127]
      FieldName = 'Q_Parcelas'
    end
    object C_TabelaF_BAIRRO: TStringField [128]
      FieldName = 'F_BAIRRO'
      Origin = 'FAVORECIDOS.F_BAIRRO'
      Size = 30
    end
    object C_TabelaF_CPF_CNPJ: TStringField [129]
      FieldName = 'F_CPF_CNPJ'
      Origin = 'FAVORECIDOS.F_CPF_CNPJ'
      OnValidate = C_TabelaF_CPF_CNPJValidate
      Size = 14
    end
    object C_TabelaF_INSCRICAO_EST: TStringField [130]
      FieldName = 'F_INSCRICAO_EST'
      Origin = 'FAVORECIDOS.F_INSCRICAO_EST'
      Size = 14
    end
    object C_TabelaCONDICOESPAGTO: TStringField [131]
      FieldName = 'CONDICOESPAGTO'
      Origin = 'SAIDAS.CONDICOESPAGTO'
      Size = 255
    end
    object C_TabelaCOBRANCA: TIntegerField [132]
      FieldName = 'COBRANCA'
      Origin = 'SAIDAS.COBRANCA'
    end
    object C_TabelaCARTEIRA: TIntegerField [133]
      FieldName = 'CARTEIRA'
      Origin = 'SAIDAS.CARTEIRA'
    end
    object C_TabelalkCobranca: TStringField [134]
      FieldKind = fkLookup
      FieldName = 'lkCobranca'
      LookupDataSet = C_TiposCobranca
      LookupKeyFields = 'TIPOCOBRANCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COBRANCA'
      Size = 25
      Lookup = True
    end
    object C_TabelalkCarteira: TStringField [135]
      FieldKind = fkLookup
      FieldName = 'lkCarteira'
      LookupDataSet = C_Carteiras
      LookupKeyFields = 'CARTEIRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTEIRA'
      Size = 25
      Lookup = True
    end
    object C_TabelaNF_CUPOM: TStringField [136]
      FieldName = 'NF_CUPOM'
      Origin = 'SAIDAS.NF_CUPOM'
      Size = 12
    end
    object C_TabelaMEDICO: TIntegerField [137]
      FieldName = 'MEDICO'
      Origin = 'SAIDAS.MEDICO'
    end
    object C_TabelaCFOPNOTA: TStringField [138]
      FieldName = 'CFOPNOTA'
      Origin = 'SAIDAS.CFOPNOTA'
      Size = 4
    end
    object C_TabelaTM_GERAFINANCEIRO: TStringField
      FieldName = 'TM_GERAFINANCEIRO'
      Origin = 'TIPOSMOVIMENTO.TM_GERAFINANCEIRO'
      Size = 1
    end
    object C_TabelaF_PERCDESCONTO: TBCDField
      FieldName = 'F_PERCDESCONTO'
      Origin = 'FAVORECIDOS.F_PERCDESCONTO'
      Precision = 18
      Size = 2
    end
    object C_TabelaBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'SAIDAS.BAIXAESTOQUEFISCAL'
      OnChange = C_TabelaBAIXAESTOQUEFISCALChange
      FixedChar = True
      Size = 1
    end
    object C_TabelaTM_BAIXAESTOQUEFISCAL: TStringField
      FieldName = 'TM_BAIXAESTOQUEFISCAL'
      Origin = 'TIPOSMOVIMENTO.TM_BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaTAX: TIntegerField
      FieldName = 'TAX'
      Origin = 'SAIDAS.TAX'
    end
    object C_TabelaF_CONSUMIDORFINAL: TStringField
      FieldName = 'F_CONSUMIDORFINAL'
      Origin = 'FAVORECIDOS.F_CONSUMIDORFINAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaMENSAGEMITEM: TStringField
      FieldName = 'MENSAGEMITEM'
      Origin = 'SAIDAS.MENSAGEMITEM'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'SAIDAS.IMPORTACAO'
      Required = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'SAIDAS.EMPRESA'
      Required = True
    end
    object C_TabelaPERCENTUALTAX: TFloatField
      FieldName = 'PERCENTUALTAX'
      Origin = 'SAIDAS.PERCENTUALTAX'
    end
    object C_TabelaJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'SAIDAS.JUROS'
    end
    object C_TabelaIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
      Origin = 'SAIDAS.IMPOSTO'
    end
    object C_TabelaIMPOSTO_INCLUSO: TFloatField
      FieldName = 'IMPOSTO_INCLUSO'
      Origin = 'SAIDAS.IMPOSTO_INCLUSO'
    end
    object C_TabelaPCOMISSAO: TFloatField
      FieldName = 'PCOMISSAO'
      Origin = 'SAIDAS.PCOMISSAO'
      OnValidate = C_TabelaPCOMISSAOValidate
    end
    object C_TabelaPJUROS: TFloatField
      FieldName = 'PJUROS'
      Origin = 'SAIDAS.PJUROS'
      OnChange = C_TabelaPJUROSChange
    end
    object C_TabelaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      Origin = 'SAIDAS.TOTALITENS'
    end
    object C_TabelaTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
      Origin = 'SAIDAS.TOTALITENS123'
    end
    object C_TabelaBASEIMPOSTO: TFloatField
      FieldName = 'BASEIMPOSTO'
      Origin = 'SAIDAS.BASEIMPOSTO'
    end
    object C_TabelaBASEINCLUSO: TFloatField
      FieldName = 'BASEINCLUSO'
      Origin = 'SAIDAS.BASEINCLUSO'
    end
    object C_TabelaDESCONTOITENS: TFloatField
      FieldName = 'DESCONTOITENS'
      Origin = 'SAIDAS.DESCONTOITENS'
    end
    object C_TabelaTOTALOLD: TFloatField
      FieldName = 'TOTALOLD'
      Origin = 'SAIDAS.TOTALOLD'
    end
    object C_TabelaREDUCOESBASE: TFloatField
      FieldName = 'REDUCOESBASE'
      Origin = 'SAIDAS.REDUCOESBASE'
    end
    object C_TabelaACRESCIMOSBASE: TFloatField
      FieldName = 'ACRESCIMOSBASE'
      Origin = 'SAIDAS.ACRESCIMOSBASE'
    end
    object C_TabelaVOLUMES: TFloatField
      FieldName = 'VOLUMES'
      Origin = 'SAIDAS.VOLUMES'
    end
    object C_TabelaOLDDESCONTO: TFloatField
      FieldName = 'OLDDESCONTO'
      Origin = 'SAIDAS.OLDDESCONTO'
    end
    object C_TabelaPJUROSNEGOCIADO: TFloatField
      FieldName = 'PJUROSNEGOCIADO'
      Origin = 'SAIDAS.PJUROSNEGOCIADO'
    end
    object C_TabelaTOTALPRODUTOS: TFloatField
      FieldName = 'TOTALPRODUTOS'
      Origin = 'SAIDAS.TOTALPRODUTOS'
    end
    object C_TabelaVALORIPIITENS: TFloatField
      FieldName = 'VALORIPIITENS'
      Origin = 'SAIDAS.VALORIPIITENS'
    end
    object C_TabelaBASECALCICMSITENS: TFloatField
      FieldName = 'BASECALCICMSITENS'
      Origin = 'SAIDAS.BASECALCICMSITENS'
    end
    object C_TabelaBASECALCSUBSTITENS: TFloatField
      FieldName = 'BASECALCSUBSTITENS'
      Origin = 'SAIDAS.BASECALCSUBSTITENS'
    end
    object C_TabelaVALORICMSITENS: TFloatField
      FieldName = 'VALORICMSITENS'
      Origin = 'SAIDAS.VALORICMSITENS'
    end
    object C_TabelaBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
      Origin = 'SAIDAS.BASECALCICMS'
    end
    object C_TabelaVALORICMS: TFloatField
      FieldName = 'VALORICMS'
      Origin = 'SAIDAS.VALORICMS'
    end
    object C_TabelaVALORISS: TFloatField
      FieldName = 'VALORISS'
      Origin = 'SAIDAS.VALORISS'
    end
    object C_TabelaVALORIPI: TFloatField
      FieldName = 'VALORIPI'
      Origin = 'SAIDAS.VALORIPI'
      OnChange = C_TabelaVALORIPIChange
    end
    object C_TabelaBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
      Origin = 'SAIDAS.BASECALCSUBST'
    end
    object C_TabelaVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
      Origin = 'SAIDAS.VALORICMSSUBST'
    end
    object C_TabelaALIQICMSVENDA: TFloatField
      FieldName = 'ALIQICMSVENDA'
      Origin = 'SAIDAS.ALIQICMSVENDA'
      OnChange = C_TabelaALIQICMSVENDAChange
    end
    object C_TabelaVALORISENTAS: TFloatField
      FieldName = 'VALORISENTAS'
      Origin = 'SAIDAS.VALORISENTAS'
    end
    object C_TabelaTOTALSERVICOS: TFloatField
      FieldName = 'TOTALSERVICOS'
      Origin = 'SAIDAS.TOTALSERVICOS'
    end
    object C_TabelaPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Origin = 'SAIDAS.POSSUIICMS'
      Size = 1
    end
    object C_TabelaPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Origin = 'SAIDAS.POSSUIIPI'
      Size = 1
    end
    object C_TabelaPOSSUIISS: TStringField
      FieldName = 'POSSUIISS'
      Origin = 'SAIDAS.POSSUIISS'
      Size = 1
    end
    object C_TabelaCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'SAIDAS.CONTABILIZAICMS'
      Size = 1
    end
    object C_TabelaVALOROUTRASICMS: TFloatField
      FieldName = 'VALOROUTRASICMS'
      Origin = 'SAIDAS.VALOROUTRASICMS'
    end
    object C_TabelaVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
      Origin = 'SAIDAS.VALORSEGURO'
    end
    object C_TabelaPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'SAIDAS.PESOBRUTO'
    end
    object C_TabelaPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      Origin = 'SAIDAS.PESOLIQUIDO'
    end
    object C_TabelaPAGOINVOICE: TFloatField
      FieldName = 'PAGOINVOICE'
      Origin = 'SAIDAS.PAGOINVOICE'
    end
    object C_TabelaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'SAIDAS.DESCONTO'
      OnChange = C_TabelaDESCONTOChange
    end
    object C_TabelaFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = 'SAIDAS.FRETE'
      OnChange = C_TabelaFRETEChange
    end
    object C_TabelaOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
      Origin = 'SAIDAS.OUTRASDESPESAS'
    end
    object C_TabelaLICITACAOICMS: TFloatField
      FieldName = 'LICITACAOICMS'
      Origin = 'SAIDAS.LICITACAOICMS'
    end
    object C_TabelaF_PESSOA_FJ: TStringField
      FieldName = 'F_PESSOA_FJ'
      Origin = 'FAVORECIDOS.F_PESSOA_FJ'
      Size = 1
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 23
    Top = 213
  end
  inherited ResultSet: TClientDataSet
    Left = 89
    Top = 53
  end
  inherited Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '
      't.SaidaItem    as IDITEM,'
      't.Saida        as IDMestre,'
      't.Sequencia    as Sequencia,'
      't.Descricao              as Descricao,'
      't.Quantidade           as Quantidade,'
      't.Preco        as Preco,'
      't.Item        as Item,'
      't.USOTIPOITEM    as UsoTipoItem,'
      't.SubTotalItem    as SubTotalItem,'
      't.SubTotalItem    as SubTotal,'
      't.Ordem        as Ordem,'
      't.TabelaPreco    as TabelaPreco,'
      't.PrecoTabela    as PrecoTabela,'
      't.RateioDesconto    as RateioDesconto,'
      't.HasChildren    as HasChildren,'
      't.CustoMedio    as CustoMedio,'
      't.ContaVenda          as ContaVenda,'
      't.Taxavel                 as Taxavel,'
      't.Producao    as Producao,'
      't.FuncProducao    as FuncProducao,'
      't.Coluna1        as Coluna1,'
      't.Coluna2        as Coluna2,'
      't.Coluna3        as Coluna3,'
      't.Coluna4        as Coluna4,'
      't.MaxDesconto    as MaxDesconto,'
      't.Quantidade    as OldQuantidade,'
      't.EntradaItem    as EntradaItem,'
      't.Despesa    as Despesa,'
      't.CustoContabil    as CustoContabil,'
      't.Mesclado    as Mesclado,'
      't.ITEM        as OLDITEM,'
      't.QtdFaturada    as QtdFaturada,'
      't.QtdMontagem         as QtdMontagem,'
      't.Status        as Status,'
      't.Status        as StatusOld,'
      't.Unidade     as Unidade,'
      't.Fator                    as Fator,'
      't.numerolote             as NumeroLote,'
      't.N_UsoTipoItem    as N_UsoTipoItem,'
      't.Preco        as OldPreco,'
      't.Unidade        as OldUnidade,'
      't.Desconto    as Desconto,'
      't.PDESCONTO as PDESCONTO,'
      't.Promocao    as Promocao,'
      't.PrecoSemPromocao as PrecoSemPromocao,'
      't.BaixaEstoque    as BaixaEstoque,'
      't.Almoxarifado    as Almoxarifado,'
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
      't.IDTRIBFEDERAL, '
      't.CSTPISCOFINS,'
      't.ALIQPIS,'
      't.ALIQCOFINS,'
      't.CSTIPI,'
      't.ALIQIPI,'
      't.PDV,'
      't.IMPORTACAO,'
      't.PCOMISSAO,'
      'i.TIPOITEM              as  I_TIPOITEM,'
      'i.CODIGO                as  I_CODIGO,'
      'i.CODIGOBARRAS                as  I_CODIGOBARRAS,'
      'i.DESCRICAOCOMPRA   as  I_DESCRICAOCOMPRA,'
      'i.GRUPO                 as  I_GRUPO,'
      'i.DESCRICAO             as  I_DESCRICAO,'
      'i.REFERENCIA    as  I_REFERENCIA,'
      'i.TAXAVEL               as  I_TAXAVEL,'
      'i.CUSTOMEDIO      as  I_CUSTOMEDIO,'
      'i.ULTIMOFORNECEDOR  as  I_ULTIMOFORNECEDOR,'
      'i.QTDEMINIMO       as  I_QTDEMINIMO,'
      'i.QTDEMAXIMO       as  I_QTDEMAXIMO,'
      'i.PONTOPEDIDO      as  I_PONTOPEDIDO,'
      'i.PERCENTUAL      as  I_PERCENTUAL,'
      'i.APLICARANTESTAX   as  I_APLICARANTESTAX,'
      'i.LOCALIZACAO      as  I_LOCALIZACAO,'
      'i.ESTOQUE    as  I_ESTOQUE,'
      'i.COMISSAO              as  I_COMISSAO,'
      'i.DESCONTOMAXIMO    as  I_DESCONTOMAXIMO,'
      'i.TAXINCLUSO        as  I_TAXINCLUSO,'
      'i.CONTA_VENDA    as  I_CONTA_VENDA,'
      'i.CONTA_CUSTO    as  I_CONTA_CUSTO,'
      'i.CONTA_INVENT   as  I_CONTA_INVENT,'
      'i.BALANCO    as  I_BALANCO,'
      'i.FOTO        as  I_FOTO, '
      'i.PROMOCAO    as  I_PROMOCAO,'
      'i.FATORLUCRO      as  I_FATORLUCRO,'
      'i.SEMLUCRO      as  I_SEMLUCRO,'
      'i.UNIDADE               as  I_UNIDADE,'
      'i.UnidadeEntrada    as  I_UnidadeEntrada,'
      'i.UnidadeCarga    as  I_UnidadeCarga,'
      'i.UnidadeVarejo    as  I_UnidadeVarejo,'
      'i.UnidadeMinima      as  I_UnidadeMinima,'
      'i.FatorUndVenda    as  I_FatorUndVenda,'
      'i.FatorUndCompra    as  I_FatorUndCompra,'
      'i.ComLucro    as  I_ComLucro,'
      'i.PesoBruto               as I_PesoBruto,'
      'i.PesoLiquido            as I_PesoLiquido,'
      'i.DescricaoComplementar as I_DescricaoComplementar,'
      'i.DescricaoTecnica    as  I_DescricaoTecnica,'
      'i.GrupoComissao as I_GRUPOCOMISSAO,'
      'i.INDEXADOR as I_INDEXADOR,'
      'I.clasfiscal as I_CLASFISCAL,'
      'i.identificacao as I_IDENTIFICACAO,'
      'i.item as I_ITEM,'
      'u.Descricao    as  DescricaoUnidade,'
      'u.Inteira        as  UnidadeInteira,'
      'pdf.Producao    as  ChaveProducaoFunc,'
      'g.DescontoMaximo    as  DescontoMaximoGrupo,'
      'g.Foto        as  FotoGrupo,'
      't.EMPRESA, '
      't.SITUACAO,'
      't.valorpisprod,'
      't.valorcofinsprod,'
      't.RATEIODESPESAS,'
      't.RATEIOFRETE,'
      'T.RATEIOSEGURO,'
      'T.QUANTIDADEVOLUME,'
      'T.PRECOCUSTOLICITACAO'
      'from    (((SAIDASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      '    left join UNIDADES u on I.Unidade = u.Unidade)'
      '    left join GRUPOS g on g.Grupo = i.Grupo)'
      '    left join PRODUCOESFUNC pdf on pdf.SAIDAITEM = t.SAIDAITEM'
      'where t.SAIDA = :IDMESTRE')
    Left = 160
  end
  inherited U_Itens: TIBUpdateSQL
    ModifySQL.Strings = (
      'update SAIDASITENS'
      'set'
      '  SEQUENCIA = :SEQUENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTIDADE = :QUANTIDADE,'
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
      '  CSTPISCOFINS  = :CSTPISCOFINS,'
      '  ALIQIPI = :ALIQIPI,'
      '  ALIQPIS  = :ALIQPIS,'
      '  ALIQCOFINS  = :ALIQCOFINS,'
      '  CSTIPI  = :CSTIPI,'
      '  ALIQIPI  = :ALIQIPI,'
      '  PDESCONTO = :PDESCONTO,'
      '  PDV = :PDV,'
      '  PCOMISSAO = :PCOMISSAO,'
      '  EMPRESA = :EMPRESA,'
      '  SITUACAO = :SITUACAO,'
      '  VALORPISPROD = :VALORPISPROD, '
      '  VALORCOFINSPROD = :VALORCOFINSPROD,'
      '  RATEIODESPESAS = :RATEIODESPESAS,'
      '  RATEIOFRETE = :RATEIOFRETE ,'
      '  RATEIOSEGURO = :RATEIOSEGURO,'
      '  QUANTIDADEVOLUME = :QUANTIDADEVOLUME'
      'Where'
      
        '  SaidaItem = :OLD_IDITEM and SAIDA = :OLD_IDMESTRE and EMPRESA ' +
        '= '
      '  :OLD_EMPRESA and PDV = :OLD_PDV')
    InsertSQL.Strings = (
      'insert into SAIDASITENS'
      '  (SAIDAITEM, SAIDA, SEQUENCIA, DESCRICAO, QUANTIDADE, '
      '   PRECO, ITEM, USOTIPOITEM, SUBTOTALITEM, ORDEM, '
      '   TABELAPRECO, PRECOTABELA, RATEIODESCONTO,'
      '   HASCHILDREN, CUSTOMEDIO, CONTAVENDA, TAXAVEL,'
      '   PRODUCAO, FUNCPRODUCAO, COLUNA1, COLUNA2, COLUNA3,'
      '   COLUNA4, MAXDESCONTO, DESPESA, ENTRADAITEM, '
      '   CUSTOCONTABIL, MESCLADO, QTDMONTAGEM, STATUS, NUMEROLOTE,'
      '   UNIDADE, FATOR,  N_UsoTipoItem, DESCONTO, '
      '   PROMOCAO, PRECOSEMPROMOCAO, BAIXAESTOQUE,'
      '   ALMOXARIFADO, DESCRICAOCOMPLEMENTAR, ORDEMMONTAGEM,'
      '  BASECALCICMSPROD,  IPI,  ALIQICMS,ALIQIPI,'
      '  CST,  REDUCAOCST,  SITUACAOECF,  CFOPNOTA,   '
      
        '  BASECALCSUBSTPROD,  VALORIPIPROD,   TVA,  NUMEROITEM,  REGISTR' +
        'O,'
      '  VALORICMSPROD,  VALORICMSSUBSTPROD,  VALORISENTASPROD, '
      'DATACONTATO, CFOPCST, BAIXAESTOQUEFISCAL, IDTRIBFEDERAL,'
      '  CSTPISCOFINS,   ALIQPIS,   ALIQCOFINS,   CSTIPI,   PDESCONTO, '
      'PDV, IMPORTACAO, PCOMISSAO,   EMPRESA, SITUACAO,VALORPISPROD,'
      '  VALORCOFINSPROD,RATEIODESPESAS,RATEIOFRETE,RATEIOSEGURO, '
      'QUANTIDADEVOLUME )'
      'values'
      '  (:IDITEM, :IDMESTRE, :SEQUENCIA, :DESCRICAO, :QUANTIDADE,'
      '   :PRECO, :ITEM, :USOTIPOITEM, :SUBTOTALITEM, :ORDEM,'
      '   :TABELAPRECO, :PRECOTABELA, :RATEIODESCONTO,'
      '   :HASCHILDREN, :CUSTOMEDIO, :CONTAVENDA, :TAXAVEL,'
      '   :PRODUCAO, :FUNCPRODUCAO, :COLUNA1, :COLUNA2, :COLUNA3,'
      '   :COLUNA4, :MAXDESCONTO, :DESPESA, :ENTRADAITEM,'
      
        '   :CUSTOCONTABIL, :MESCLADO, :QTDMONTAGEM, :STATUS, :NUMEROLOTE' +
        ','
      '   :UNIDADE, :FATOR, :N_UsoTipoItem, :DESCONTO,'
      '   :PROMOCAO, :PRECOSEMPROMOCAO, :BAIXAESTOQUE, '
      '   :ALMOXARIFADO, :DESCRICAOCOMPLEMENTAR, :ORDEMMONTAGEM, '
      '  :BASECALCICMSPROD,  :IPI,  :ALIQICMS,  :ALIQIPI,'
      '  :CST,  :REDUCAOCST,  :SITUACAOECF,  :CFOPNOTA,   '
      '  :BASECALCSUBSTPROD,  :VALORIPIPROD,   :TVA,  :NUMEROITEM,  '
      ':REGISTRO, :VALORICMSPROD,  :VALORICMSSUBSTPROD,'
      
        ':VALORISENTASPROD, :DATACONTATO, :CFOPCST , :BAIXAESTOQUEFISCAL,' +
        ' '
      ':IDTRIBFEDERAL,'
      
        ':CSTPISCOFINS,   :ALIQPIS,   :ALIQCOFINS,   :CSTIPI, :PDESCONTO,' +
        ' '
      ':PDV, :IMPORTACAO, :PCOMISSAO,  :EMPRESA, '
      ':SITUACAO,:VALORPISPROD,:VALORCOFINSPROD,:RATEIODESPESAS,'
      ':RATEIOFRETE,:RATEIOSEGURO, :QUANTIDADEVOLUME)')
    DeleteSQL.Strings = (
      'delete from SAIDASITENS'
      'where'
      '  SAIDAITEM = :OLD_IDITEM ')
    Left = 160
    Top = 55
  end
  inherited C_Itens: TClientDataSet
    OnCalcFields = C_ItensCalcFields
    Left = 160
    Top = 104
    inherited C_Itens_icSelecionado: TIntegerField [0]
    end
    inherited C_ItensI_TIPOITEM: TIntegerField [1]
    end
    inherited C_ItensI_CODIGO: TStringField [2]
    end
    inherited C_ItensI_DESCRICAOCOMPRA: TStringField [3]
    end
    inherited C_ItensI_GRUPO: TIntegerField [4]
    end
    inherited C_ItensI_DESCRICAO: TStringField [5]
    end
    inherited C_ItensI_QTDEMINIMO: TBCDField [6]
    end
    inherited C_ItensI_QTDEMAXIMO: TBCDField [7]
    end
    inherited C_ItensI_TAXAVEL: TStringField [8]
    end
    inherited C_ItensI_ULTIMOFORNECEDOR: TIntegerField [9]
    end
    inherited C_ItensI_PERCENTUAL: TBCDField [10]
    end
    inherited C_ItensI_APLICARANTESTAX: TStringField [11]
    end
    inherited C_ItensI_UNIDADE: TStringField [12]
    end
    inherited C_ItensI_ESTOQUE: TBCDField [13]
    end
    inherited C_ItensI_BALANCO: TStringField [14]
    end
    inherited C_ItensI_COMISSAO: TBCDField [15]
    end
    inherited C_ItensI_DESCONTOMAXIMO: TBCDField [16]
    end
    inherited C_ItensI_TAXINCLUSO: TStringField [17]
    end
    inherited C_ItensI_CONTA_VENDA: TIntegerField [18]
    end
    inherited C_ItensI_CONTA_CUSTO: TIntegerField [19]
    end
    inherited C_ItensI_CONTA_INVENT: TIntegerField [20]
    end
    inherited C_ItensI_FOTO: TStringField [21]
    end
    inherited C_ItensI_PROMOCAO: TStringField [22]
    end
    inherited C_ItensI_PONTOPEDIDO: TBCDField [23]
    end
    inherited C_ItensI_LOCALIZACAO: TIntegerField [24]
    end
    object C_ItensI_FATORLUCRO: TFloatField [25]
      FieldName = 'I_FATORLUCRO'
      Origin = 'ITENS.I_FATORLUCRO'
    end
    object C_ItensI_REFERENCIA: TStringField [26]
      FieldName = 'I_REFERENCIA'
      Origin = 'ITENS.I_REFERENCIA'
    end
    object C_ItensI_SEMLUCRO: TFloatField [27]
      FieldName = 'I_SEMLUCRO'
      Origin = 'ITENS.I_SEMLUCRO'
    end
    object C_ItensI_UNIDADEENTRADA: TStringField [28]
      FieldName = 'I_UNIDADEENTRADA'
      Origin = 'ITENS.I_UNIDADEENTRADA'
      Size = 6
    end
    object C_ItensI_UNIDADECARGA: TStringField [29]
      FieldName = 'I_UNIDADECARGA'
      Origin = 'ITENS.I_UNIDADECARGA'
      Size = 6
    end
    object C_ItensI_UNIDADEVAREJO: TStringField [30]
      FieldName = 'I_UNIDADEVAREJO'
      Origin = 'ITENS.I_UNIDADEVAREJO'
      Size = 6
    end
    object C_ItensI_UNIDADEMINIMA: TIntegerField [31]
      FieldName = 'I_UNIDADEMINIMA'
      Origin = 'ITENS.I_UNIDADEMINIMA'
    end
    object C_ItensI_CUSTOMEDIO: TFloatField [32]
      FieldName = 'I_CUSTOMEDIO'
      Origin = 'ITENS.I_CUSTOMEDIO'
    end
    object C_ItensI_FATORUNDVENDA: TFloatField [33]
      FieldName = 'I_FATORUNDVENDA'
      Origin = 'ITENS.I_FATORUNDVENDA'
    end
    object C_ItensI_FATORUNDCOMPRA: TFloatField [34]
      FieldName = 'I_FATORUNDCOMPRA'
      Origin = 'ITENS.I_FATORUNDCOMPRA'
    end
    object C_ItensI_PESOLIQUIDO: TBCDField [35]
      FieldName = 'I_PESOLIQUIDO'
      Origin = 'ITENS.I_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_ItensI_PESOBRUTO: TBCDField [36]
      FieldName = 'I_PESOBRUTO'
      Origin = 'ITENS.I_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_ItensI_DescricaoComplementar: TStringField [37]
      FieldName = 'I_DescricaoComplementar'
      Origin = 'ITENS.I_DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_ItensI_DescricaoTecnica: TStringField [38]
      FieldName = 'I_DescricaoTecnica'
      Origin = 'ITENS.I_DESCRICAOTECNICA'
      Size = 255
    end
    object C_ItensI_GRUPOCOMISSAO: TIntegerField [39]
      FieldName = 'I_GRUPOCOMISSAO'
      Origin = 'ITENS.I_GRUPOCOMISSAO'
    end
    object C_ItensI_INDEXADOR: TIntegerField [40]
      FieldName = 'I_INDEXADOR'
      Origin = 'ITENS.I_INDEXADOR'
    end
    object C_ItensI_COMLUCRO: TFloatField [41]
      FieldName = 'I_COMLUCRO'
      Origin = 'ITENS.I_COMLUCRO'
    end
    inherited C_ItensUSOTIPOITEM: TStringField [42]
    end
    inherited C_ItensITEM: TIntegerField [43]
      OnValidate = C_ItensITEMValidate
    end
    inherited C_ItensPRECO: TFloatField [44]
      DisplayFormat = '##,##0.000'
      currency = True
      Precision = 2
    end
    inherited C_ItensQUANTIDADE: TFloatField [45]
      OnValidate = C_ItensNUMEROLOTEValidate
      DisplayFormat = '##0.00##'
    end
    inherited C_ItensDESCRICAO: TStringField [46]
    end
    inherited C_ItensSEQUENCIA: TIntegerField [47]
    end
    inherited C_ItensIDMESTRE: TIntegerField [48]
    end
    inherited C_ItensIDITEM: TIntegerField [49]
    end
    inherited C_ItensUNIDADEINTEIRA: TStringField [50]
    end
    inherited C_ItensDESCRICAOUNIDADE: TStringField [51]
    end
    object C_ItensORDEM: TIntegerField [52]
      FieldName = 'ORDEM'
      Origin = 'SAIDASITENS.ORDEM'
    end
    inherited C_ItensSubTotal: TFloatField [53]
      Origin = 'SAIDASITENS.SUBTOTAL'
    end
    inherited C_ItensHASCHILDREN: TStringField [54]
    end
    object C_ItensTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'SAIDASITENS.TABELAPRECO'
    end
    object C_ItenscfBaixoEstoque: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cfBaixoEstoque'
    end
    object C_ItensCONTAVENDA: TIntegerField
      FieldName = 'CONTAVENDA'
      Origin = 'SAIDASITENS.CONTAVENDA'
    end
    object C_ItensTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'SAIDASITENS.TAXAVEL'
      Size = 1
    end
    object C_ItensQ_SaidasItensFilhos: TDataSetField
      FieldName = 'Q_SaidasItensFilhos'
    end
    object C_ItensOrdemMontagem: TStringField
      FieldName = 'OrdemMontagem'
      Origin = 'SAIDASITENS.ORDEMMONTAGEM'
      Size = 1
    end
    object C_ItensPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
      Origin = 'SAIDASITENS.PRODUCAO'
    end
    object C_ItensFUNCPRODUCAO: TIntegerField
      FieldName = 'FUNCPRODUCAO'
      Origin = 'SAIDASITENS.FUNCPRODUCAO'
    end
    object C_ItenslkFuncProducao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFuncProducao'
      LookupDataSet = C_Funcs
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCPRODUCAO'
      Size = 25
      Lookup = True
    end
    object C_ItensCHAVEPRODUCAOFUNC: TIntegerField
      FieldName = 'CHAVEPRODUCAOFUNC'
      Origin = 'PRODUCOESFUNC.CHAVEPRODUCAOFUNC'
    end
    object C_ItensCOLUNA1: TStringField
      FieldName = 'COLUNA1'
      Origin = 'SAIDASITENS.COLUNA1'
    end
    object C_ItensCOLUNA2: TStringField
      FieldName = 'COLUNA2'
      Origin = 'SAIDASITENS.COLUNA2'
    end
    object C_ItensCOLUNA3: TStringField
      FieldName = 'COLUNA3'
      Origin = 'SAIDASITENS.COLUNA3'
    end
    object C_ItensCOLUNA4: TStringField
      FieldName = 'COLUNA4'
      Origin = 'SAIDASITENS.COLUNA4'
    end
    object C_ItenscfValorMaxDesconto: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cfValorMaxDesconto'
    end
    object C_ItensENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Origin = 'SAIDASITENS.ENTRADAITEM'
    end
    object C_ItensDESPESA: TIntegerField
      FieldName = 'DESPESA'
      Origin = 'SAIDASITENS.DESPESA'
    end
    object C_ItensQ_Mesclagens: TDataSetField
      FieldName = 'Q_Mesclagens'
    end
    object C_ItensMESCLADO: TStringField
      FieldName = 'MESCLADO'
      Origin = 'SAIDASITENS.MESCLADO'
      Size = 1
    end
    object C_ItensTrocouItem: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'TrocouItem'
    end
    object C_ItensOLDITEM: TIntegerField
      FieldName = 'OLDITEM'
      Origin = 'SAIDASITENS.OLDITEM'
    end
    object C_ItensUltrapassouMesclagem: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'UltrapassouMesclagem'
    end
    object C_ItensFOTOGRUPO: TStringField
      FieldName = 'FOTOGRUPO'
      Origin = 'GRUPOS.FOTOGRUPO'
      Size = 255
    end
    object C_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'SAIDASITENS.STATUS'
      Size = 1
    end
    object C_ItensSTATUSOLD: TStringField
      FieldName = 'STATUSOLD'
      Origin = 'SAIDASITENS.STATUSOLD'
      Size = 1
    end
    object C_ItensNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Origin = 'SAIDASITENS.NUMEROLOTE'
      OnValidate = C_ItensNUMEROLOTEValidate
      Size = 12
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDASITENS.UNIDADE'
      OnChange = C_ItensUNIDADEChange
      OnValidate = C_ItensUNIDADEValidate
      Size = 6
    end
    object C_ItensPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Origin = 'SAIDASITENS.PROMOCAO'
      Size = 1
    end
    object C_ItensBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      Origin = 'SAIDASITENS.BAIXAESTOQUE'
      Size = 1
    end
    object C_ItensALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'SAIDASITENS.ALMOXARIFADO'
    end
    object C_ItensDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Origin = 'SAIDASITENS.DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_ItensSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'SAIDASITENS.SITUACAOECF'
      OnChange = C_ItensSITUACAOECFChange
      Size = 1
    end
    object C_ItensNUMEROITEM: TStringField
      FieldName = 'NUMEROITEM'
      Origin = 'SAIDASITENS.NUMEROITEM'
      Size = 5
    end
    object C_ItensREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Origin = 'SAIDASITENS.REGISTRO'
      Size = 15
    end
    object C_ItensCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Origin = 'SAIDASITENS.CFOPNOTA'
      Size = 4
    end
    object C_ItensDATACONTATO: TDateField
      FieldName = 'DATACONTATO'
      Origin = 'SAIDASITENS.DATACONTATO'
    end
    object C_ItensBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'SAIDASITENS.BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_ItensCFOPCST: TStringField
      FieldName = 'CFOPCST'
      Origin = 'SAIDASITENS.CFOPCST'
      Size = 4
    end
    object C_ItensIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Origin = 'SAIDASITENS.IDTRIBFEDERAL'
    end
    object C_ItenslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'UNIDADE'
      KeyFields = 'UNIDADE'
      Origin = 'u.Descricao'
      Size = 6
      Lookup = True
    end
    object C_ItenslkAlmox: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmox'
      LookupDataSet = C_Almoxarifado
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXARIFADO'
      Size = 30
      Lookup = True
    end
    object C_ItenslkSitECF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkSitECF'
      LookupDataSet = C_SitECF
      LookupKeyFields = 'SITUACAOECF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'SITUACAOECF'
      Lookup = True
    end
    object C_ItenslkCFOP: TStringField
      DisplayWidth = 4
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = C_CFOPs
      LookupKeyFields = 'CFOP'
      LookupResultField = 'CFOP'
      KeyFields = 'CFOPCST'
      Size = 3
      Lookup = True
    end
    object C_ItensicPercComissao: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icPercComissao'
    end
    object C_ItensicFoto: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icFoto'
      Size = 50
    end
    object C_ItensicPercDesconto: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icPercDesconto'
    end
    object C_ItensicGrupoDesconto: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icGrupoDesconto'
      Size = 5
    end
    object C_ItensCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'SAIDASITENS.CSTPISCOFINS'
      Size = 2
    end
    object C_ItensI_CODIGOBARRAS: TStringField
      FieldName = 'I_CODIGOBARRAS'
      Origin = 'ITENS.I_CODIGOBARRAS'
      Size = 13
    end
    object C_ItensPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'SAIDASITENS.PDV'
      Required = True
    end
    object C_ItensIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'SAIDASITENS.IMPORTACAO'
      Required = True
    end
    object C_ItensCST: TStringField
      FieldName = 'CST'
      Origin = 'SAIDASITENS.CST'
      Size = 3
    end
    object C_ItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'SAIDASITENS.EMPRESA'
      Required = True
    end
    object C_ItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SAIDASITENS.SITUACAO'
      Size = 32
    end
    object C_ItensI_CLASFISCAL: TStringField
      FieldName = 'I_CLASFISCAL'
      Origin = 'ITENS.I_CLASFISCAL'
      Size = 15
    end
    object C_ItensI_IDENTIFICACAO: TStringField
      FieldName = 'I_IDENTIFICACAO'
      Origin = 'ITENS.I_IDENTIFICACAO'
      Size = 1
    end
    object C_ItensI_ITEM: TIntegerField
      FieldName = 'I_ITEM'
      Origin = 'ITENS.I_ITEM'
    end
    object C_ItensCalcSubTotalPrecoLicitacao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcSubTotalPrecoLicitacao'
      Calculated = True
    end
    object C_ItensDifSubTotalLicitacao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DifSubTotalLicitacao'
      Calculated = True
    end
    object C_ItensPercLucroLicitacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'PercLucroLicitacao'
      EditMask = '###### %;1;'
      Size = 15
      Calculated = True
    end
    object C_ItensSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      Origin = 'SAIDASITENS.SUBTOTALITEM'
    end
    object C_ItensPRECOTABELA: TFloatField
      FieldName = 'PRECOTABELA'
      Origin = 'SAIDASITENS.PRECOTABELA'
    end
    object C_ItensRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
      Origin = 'SAIDASITENS.RATEIODESCONTO'
    end
    object C_ItensCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'SAIDASITENS.CUSTOMEDIO'
    end
    object C_ItensMAXDESCONTO: TFloatField
      FieldName = 'MAXDESCONTO'
      Origin = 'SAIDASITENS.MAXDESCONTO'
    end
    object C_ItensOLDQUANTIDADE: TFloatField
      FieldName = 'OLDQUANTIDADE'
      Origin = 'SAIDASITENS.OLDQUANTIDADE'
    end
    object C_ItensCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'SAIDASITENS.CUSTOCONTABIL'
    end
    object C_ItensQTDFATURADA: TFloatField
      FieldName = 'QTDFATURADA'
      Origin = 'SAIDASITENS.QTDFATURADA'
    end
    object C_ItensQTDMONTAGEM: TFloatField
      FieldName = 'QTDMONTAGEM'
      Origin = 'SAIDASITENS.QTDMONTAGEM'
    end
    object C_ItensFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'SAIDASITENS.FATOR'
    end
    object C_ItensOLDPRECO: TFloatField
      FieldName = 'OLDPRECO'
      Origin = 'SAIDASITENS.OLDPRECO'
    end
    object C_ItensOLDUNIDADE: TStringField
      FieldName = 'OLDUNIDADE'
      Origin = 'SAIDASITENS.OLDUNIDADE'
      Size = 6
    end
    object C_ItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'SAIDASITENS.DESCONTO'
    end
    object C_ItensPDESCONTO: TFloatField
      FieldName = 'PDESCONTO'
      Origin = 'SAIDASITENS.PDESCONTO'
      OnChange = C_ItensPDESCONTOChange
    end
    object C_ItensPRECOSEMPROMOCAO: TFloatField
      FieldName = 'PRECOSEMPROMOCAO'
      Origin = 'SAIDASITENS.PRECOSEMPROMOCAO'
    end
    object C_ItensBASECALCICMSPROD: TFloatField
      FieldName = 'BASECALCICMSPROD'
      Origin = 'SAIDASITENS.BASECALCICMSPROD'
    end
    object C_ItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'SAIDASITENS.IPI'
    end
    object C_ItensALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'SAIDASITENS.ALIQICMS'
    end
    object C_ItensREDUCAOCST: TFloatField
      FieldName = 'REDUCAOCST'
      Origin = 'SAIDASITENS.REDUCAOCST'
    end
    object C_ItensBASECALCSUBSTPROD: TFloatField
      FieldName = 'BASECALCSUBSTPROD'
      Origin = 'SAIDASITENS.BASECALCSUBSTPROD'
    end
    object C_ItensVALORIPIPROD: TFloatField
      FieldName = 'VALORIPIPROD'
      Origin = 'SAIDASITENS.VALORIPIPROD'
    end
    object C_ItensVALORICMSPROD: TFloatField
      FieldName = 'VALORICMSPROD'
      Origin = 'SAIDASITENS.VALORICMSPROD'
    end
    object C_ItensVALORICMSSUBSTPROD: TFloatField
      FieldName = 'VALORICMSSUBSTPROD'
      Origin = 'SAIDASITENS.VALORICMSSUBSTPROD'
    end
    object C_ItensVALORISENTASPROD: TFloatField
      FieldName = 'VALORISENTASPROD'
      Origin = 'SAIDASITENS.VALORISENTASPROD'
    end
    object C_ItensALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
      Origin = 'SAIDASITENS.ALIQPIS'
    end
    object C_ItensALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
      Origin = 'SAIDASITENS.ALIQCOFINS'
    end
    object C_ItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'SAIDASITENS.CSTIPI'
      Size = 2
    end
    object C_ItensALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
      Origin = 'SAIDASITENS.ALIQIPI'
    end
    object C_ItensPCOMISSAO: TFloatField
      FieldName = 'PCOMISSAO'
      Origin = 'SAIDASITENS.PCOMISSAO'
    end
    object C_ItensDESCONTOMAXIMOGRUPO: TBCDField
      FieldName = 'DESCONTOMAXIMOGRUPO'
      Origin = 'GRUPOS.DESCONTOMAXIMOGRUPO'
      Precision = 18
      Size = 2
    end
    object C_ItensVALORPISPROD: TFloatField
      FieldName = 'VALORPISPROD'
      Origin = 'SAIDASITENS.VALORPISPROD'
    end
    object C_ItensVALORCOFINSPROD: TFloatField
      FieldName = 'VALORCOFINSPROD'
      Origin = 'SAIDASITENS.VALORCOFINSPROD'
    end
    object C_ItensRATEIODESPESAS: TFloatField
      FieldName = 'RATEIODESPESAS'
      Origin = 'SAIDASITENS.RATEIODESPESAS'
    end
    object C_ItensRATEIOFRETE: TFloatField
      FieldName = 'RATEIOFRETE'
      Origin = 'SAIDASITENS.RATEIOFRETE'
    end
    object C_ItensRATEIOSEGURO: TFloatField
      FieldName = 'RATEIOSEGURO'
      Origin = 'SAIDASITENS.RATEIOSEGURO'
    end
    object C_ItensQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
      Origin = 'SAIDASITENS.QUANTIDADEVOLUME'
    end
    object C_ItensPRECOCUSTOLICITACAO: TFloatField
      FieldName = 'PRECOCUSTOLICITACAO'
      Origin = 'SAIDASITENS.PRECOCUSTOLICITACAO'
    end
    object C_ItensN_USOTIPOITEM: TFloatField
      FieldName = 'N_USOTIPOITEM'
      Origin = 'SAIDASITENS.N_USOTIPOITEM'
    end
    object C_ItensTVA: TFloatField
      FieldName = 'TVA'
      Origin = 'SAIDASITENS.TVA'
    end
    object C_ItenslkCSTIPI: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTIPI'
      LookupDataSet = C_CSTIPI
      LookupKeyFields = 'CSTIPI'
      LookupResultField = 'CSTDESC'
      KeyFields = 'CSTIPI'
      Size = 100
      Lookup = True
    end
    object C_ItenslkCSTPisCofins: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTPisCofins'
      LookupDataSet = C_CST_PisCofins
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINS'
      Size = 100
      Lookup = True
    end
  end
  inherited C_ItensDS: TDataSource
    Left = 156
    Top = 147
  end
  inherited Q_TiposMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.tipoorigem'
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.TipoPadrao = tp.TipoPadrao and tp.Tipo = '#39'S'#39' and Desativ' +
        'ado = '#39'N'#39
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento')
    Left = 545
    Top = 4
  end
  inherited P_TiposMovimento: TDataSetProvider
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 543
  end
  inherited C_TiposMovimento: TClientDataSet
    Left = 541
    Top = 102
    inherited C_TiposMovimentoDESCRICAO: TStringField
      DisplayWidth = 18
    end
    inherited C_TiposMovimentoBLOQUEARPORESTOQUE: TStringField
      LookupDataSet = C_Almoxarifado
    end
    inherited C_TiposMovimentoDESCTIPOPADRAO: TStringField
      DisplayWidth = 15
    end
    object C_TiposMovimentoTIT1_DATA: TStringField
      FieldName = 'TIT1_DATA'
      Origin = 'TIPOSMOVIMENTO.TIT1_DATA'
      Size = 15
    end
    object C_TiposMovimentoTIT2_DATA: TStringField
      FieldName = 'TIT2_DATA'
      Origin = 'TIPOSMOVIMENTO.TIT2_DATA'
      Size = 15
    end
    object C_TiposMovimentoTIT1_NUMERO: TStringField
      FieldName = 'TIT1_NUMERO'
      Origin = 'TIPOSMOVIMENTO.TIT1_NUMERO'
      Size = 15
    end
    object C_TiposMovimentoTIT2_NUMERO: TStringField
      FieldName = 'TIT2_NUMERO'
      Origin = 'TIPOSMOVIMENTO.TIT2_NUMERO'
      Size = 15
    end
    object C_TiposMovimentoCB_INFOENTREGA: TStringField
      FieldName = 'CB_INFOENTREGA'
      Origin = 'TIPOSMOVIMENTO.CB_INFOENTREGA'
      Size = 1
    end
    object C_TiposMovimentoTIT1_LOCALENTREGA: TStringField
      FieldName = 'TIT1_LOCALENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_LOCALENTREGA'
    end
    object C_TiposMovimentoTIT1_DATAENTREGA: TStringField
      FieldName = 'TIT1_DATAENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_DATAENTREGA'
    end
    object C_TiposMovimentoTIT1_TIPOENTREGA: TStringField
      FieldName = 'TIT1_TIPOENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_TIPOENTREGA'
    end
    object C_TiposMovimentoTIT2_LOCALENTREGA: TStringField
      FieldName = 'TIT2_LOCALENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_LOCALENTREGA'
    end
    object C_TiposMovimentoTIT2_DATAENTREGA: TStringField
      FieldName = 'TIT2_DATAENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_DATAENTREGA'
    end
    object C_TiposMovimentoTIT2_TIPOENTREGA: TStringField
      FieldName = 'TIT2_TIPOENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_TIPOENTREGA'
    end
    object C_TiposMovimentoCB_VENDEDOR: TStringField
      FieldName = 'CB_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.CB_VENDEDOR'
      Size = 1
    end
    object C_TiposMovimentoTIT1_VENDEDOR: TStringField
      FieldName = 'TIT1_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.TIT1_VENDEDOR'
    end
    object C_TiposMovimentoTIT2_VENDEDOR: TStringField
      FieldName = 'TIT2_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.TIT2_VENDEDOR'
    end
    object C_TiposMovimentoCB_PEDIDO: TStringField
      FieldName = 'CB_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.CB_PEDIDO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_PEDIDO: TStringField
      FieldName = 'TIT1_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.TIT1_PEDIDO'
    end
    object C_TiposMovimentoTIT2_PEDIDO: TStringField
      FieldName = 'TIT2_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.TIT2_PEDIDO'
    end
    object C_TiposMovimentoCB_COMISSAO: TStringField
      FieldName = 'CB_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.CB_COMISSAO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_COMISSAO: TStringField
      FieldName = 'TIT1_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_COMISSAO'
    end
    object C_TiposMovimentoTIT2_COMISSAO: TStringField
      FieldName = 'TIT2_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_COMISSAO'
    end
    object C_TiposMovimentoCB_TERMOS: TStringField
      FieldName = 'CB_TERMOS'
      Origin = 'TIPOSMOVIMENTO.CB_TERMOS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TERMOS: TStringField
      FieldName = 'TIT1_TERMOS'
      Origin = 'TIPOSMOVIMENTO.TIT1_TERMOS'
    end
    object C_TiposMovimentoTIT2_TERMOS: TStringField
      FieldName = 'TIT2_TERMOS'
      Origin = 'TIPOSMOVIMENTO.TIT2_TERMOS'
    end
    object C_TiposMovimentoCB_MENSAGEM: TStringField
      FieldName = 'CB_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.CB_MENSAGEM'
      Size = 1
    end
    object C_TiposMovimentoTIT1_MENSAGEM: TStringField
      FieldName = 'TIT1_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.TIT1_MENSAGEM'
    end
    object C_TiposMovimentoTIT2_MENSAGEM: TStringField
      FieldName = 'TIT2_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.TIT2_MENSAGEM'
    end
    object C_TiposMovimentoCB_DESCONTOS: TStringField
      FieldName = 'CB_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.CB_DESCONTOS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_DESCONTOS: TStringField
      FieldName = 'TIT1_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESCONTOS'
    end
    object C_TiposMovimentoTIT2_DESCONTOS: TStringField
      FieldName = 'TIT2_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESCONTOS'
    end
    object C_TiposMovimentoCB_FRETE: TStringField
      FieldName = 'CB_FRETE'
      Origin = 'TIPOSMOVIMENTO.CB_FRETE'
      Size = 1
    end
    object C_TiposMovimentoTIT1_FRETE: TStringField
      FieldName = 'TIT1_FRETE'
      Origin = 'TIPOSMOVIMENTO.TIT1_FRETE'
    end
    object C_TiposMovimentoTIT2_FRETE: TStringField
      FieldName = 'TIT2_FRETE'
      Origin = 'TIPOSMOVIMENTO.TIT2_FRETE'
    end
    object C_TiposMovimentoCB_TOTALITENS: TStringField
      FieldName = 'CB_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.CB_TOTALITENS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TOTALITENS: TStringField
      FieldName = 'TIT1_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.TIT1_TOTALITENS'
    end
    object C_TiposMovimentoTIT2_TOTALITENS: TStringField
      FieldName = 'TIT2_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.TIT2_TOTALITENS'
    end
    object C_TiposMovimentoCB_TOTALFINAL: TStringField
      FieldName = 'CB_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.CB_TOTALFINAL'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TOTALFINAL: TStringField
      FieldName = 'TIT1_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.TIT1_TOTALFINAL'
    end
    object C_TiposMovimentoTIT2_TOTALFINAL: TStringField
      FieldName = 'TIT2_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.TIT2_TOTALFINAL'
    end
    object C_TiposMovimentoTIT1_DESCRICAO: TStringField
      FieldName = 'TIT1_DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESCRICAO'
    end
    object C_TiposMovimentoTIT1_QUANTIDADE: TStringField
      FieldName = 'TIT1_QUANTIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_QUANTIDADE'
    end
    object C_TiposMovimentoTIT1_PRECO: TStringField
      FieldName = 'TIT1_PRECO'
      Origin = 'TIPOSMOVIMENTO.TIT1_PRECO'
    end
    object C_TiposMovimentoTIT1_SUBTOTAL: TStringField
      FieldName = 'TIT1_SUBTOTAL'
      Origin = 'TIPOSMOVIMENTO.TIT1_SUBTOTAL'
    end
    object C_TiposMovimentoTIT2_DESCRICAO: TStringField
      FieldName = 'TIT2_DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESCRICAO'
    end
    object C_TiposMovimentoTIT2_QUANTIDADE: TStringField
      FieldName = 'TIT2_QUANTIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_QUANTIDADE'
    end
    object C_TiposMovimentoTIT2_PRECO: TStringField
      FieldName = 'TIT2_PRECO'
      Origin = 'TIPOSMOVIMENTO.TIT2_PRECO'
    end
    object C_TiposMovimentoTIT2_SUBTOTAL: TStringField
      FieldName = 'TIT2_SUBTOTAL'
      Origin = 'TIPOSMOVIMENTO.TIT2_SUBTOTAL'
    end
    object C_TiposMovimentoCB_JUROS: TStringField
      FieldName = 'CB_JUROS'
      Origin = 'TIPOSMOVIMENTO.CB_JUROS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_JUROS: TStringField
      FieldName = 'TIT1_JUROS'
      Origin = 'TIPOSMOVIMENTO.TIT1_JUROS'
    end
    object C_TiposMovimentoTIT2_JUROS: TStringField
      FieldName = 'TIT2_JUROS'
      Origin = 'TIPOSMOVIMENTO.TIT2_JUROS'
    end
    object C_TiposMovimentoCB_DESPESAS: TStringField
      FieldName = 'CB_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.CB_DESPESAS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_DESPESAS: TStringField
      FieldName = 'TIT1_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESPESAS'
    end
    object C_TiposMovimentoTIT2_DESPESAS: TStringField
      FieldName = 'TIT2_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESPESAS'
    end
    object C_TiposMovimentoCB_CAMPO01: TStringField
      FieldName = 'CB_CAMPO01'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO01'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO1: TStringField
      FieldName = 'TIT1_CAMPO1'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO1'
    end
    object C_TiposMovimentoTIT2_CAMPO1: TStringField
      FieldName = 'TIT2_CAMPO1'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO1'
    end
    object C_TiposMovimentoCB_CAMPO02: TStringField
      FieldName = 'CB_CAMPO02'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO02'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO2: TStringField
      FieldName = 'TIT1_CAMPO2'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO2'
    end
    object C_TiposMovimentoTIT2_CAMPO2: TStringField
      FieldName = 'TIT2_CAMPO2'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO2'
    end
    object C_TiposMovimentoCB_CAMPO03: TStringField
      FieldName = 'CB_CAMPO03'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO03'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO3: TStringField
      FieldName = 'TIT1_CAMPO3'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO3'
    end
    object C_TiposMovimentoTIT2_CAMPO3: TStringField
      FieldName = 'TIT2_CAMPO3'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO3'
    end
    object C_TiposMovimentoCB_CAMPO04: TStringField
      FieldName = 'CB_CAMPO04'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO04'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO4: TStringField
      FieldName = 'TIT1_CAMPO4'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO4'
    end
    object C_TiposMovimentoTIT2_CAMPO4: TStringField
      FieldName = 'TIT2_CAMPO4'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO4'
    end
    object C_TiposMovimentoCB_CODIGO: TStringField
      FieldName = 'CB_CODIGO'
      Origin = 'TIPOSMOVIMENTO.CB_CODIGO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CODIGO: TStringField
      FieldName = 'TIT1_CODIGO'
      Origin = 'TIPOSMOVIMENTO.TIT1_CODIGO'
    end
    object C_TiposMovimentoTIT2_CODIGO: TStringField
      FieldName = 'TIT2_CODIGO'
      Origin = 'TIPOSMOVIMENTO.TIT2_CODIGO'
    end
    object C_TiposMovimentoCB_FUNCIONARIO: TStringField
      FieldName = 'CB_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.CB_FUNCIONARIO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_FUNCIONARIO: TStringField
      FieldName = 'TIT1_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.TIT1_FUNCIONARIO'
    end
    object C_TiposMovimentoTIT2_FUNCIONARIO: TStringField
      FieldName = 'TIT2_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.TIT2_FUNCIONARIO'
    end
    object C_TiposMovimentoTIT1_COLUNA1: TStringField
      FieldName = 'TIT1_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA1'
    end
    object C_TiposMovimentoTIT1_COLUNA2: TStringField
      FieldName = 'TIT1_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA2'
    end
    object C_TiposMovimentoTIT1_COLUNA3: TStringField
      FieldName = 'TIT1_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA3'
    end
    object C_TiposMovimentoTIT1_COLUNA4: TStringField
      FieldName = 'TIT1_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA4'
    end
    object C_TiposMovimentoTIT2_COLUNA1: TStringField
      FieldName = 'TIT2_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA1'
    end
    object C_TiposMovimentoTIT2_COLUNA2: TStringField
      FieldName = 'TIT2_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA2'
    end
    object C_TiposMovimentoTIT2_COLUNA3: TStringField
      FieldName = 'TIT2_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA3'
    end
    object C_TiposMovimentoTIT2_COLUNA4: TStringField
      FieldName = 'TIT2_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA4'
    end
    object C_TiposMovimentoCORTITULOS: TIntegerField
      FieldName = 'CORTITULOS'
      Origin = 'TIPOSMOVIMENTO.CORTITULOS'
    end
    object C_TiposMovimentoTIPOFAVPADRAO: TIntegerField
      FieldName = 'TIPOFAVPADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOFAVPADRAO'
    end
    object C_TiposMovimentoCB_COLUNA1: TStringField
      FieldName = 'CB_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA1'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA2: TStringField
      FieldName = 'CB_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA2'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA3: TStringField
      FieldName = 'CB_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA3'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA4: TStringField
      FieldName = 'CB_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA4'
      Size = 1
    end
    object C_TiposMovimentoTIT1_UNIDADE: TStringField
      FieldName = 'TIT1_UNIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_UNIDADE'
    end
    object C_TiposMovimentoTIT2_UNIDADE: TStringField
      FieldName = 'TIT2_UNIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_UNIDADE'
    end
    object C_TiposMovimentoFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'TIPOSMOVIMENTO.FOTO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_VALIDADE: TStringField
      FieldName = 'TIT1_VALIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_VALIDADE'
    end
    object C_TiposMovimentoTIT2_VALIDADE: TStringField
      FieldName = 'TIT2_VALIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_VALIDADE'
    end
    object C_TiposMovimentoCB_REFERENCIA: TStringField
      FieldName = 'CB_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.CB_REFERENCIA'
      Size = 1
    end
    object C_TiposMovimentoTIT1_REFERENCIA: TStringField
      FieldName = 'TIT1_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.TIT1_REFERENCIA'
    end
    object C_TiposMovimentoTIT2_REFERENCIA: TStringField
      FieldName = 'TIT2_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.TIT2_REFERENCIA'
    end
    object C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField
      FieldName = 'TIT1_QTDRECEBIDA'
      Origin = 'TIPOSMOVIMENTO.TIT1_QTDRECEBIDA'
    end
    object C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField
      FieldName = 'TIT2_QTDRECEBIDA'
      Origin = 'TIPOSMOVIMENTO.TIT2_QTDRECEBIDA'
    end
    object C_TiposMovimentoTIT1_SITUACAO: TStringField
      FieldName = 'TIT1_SITUACAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_SITUACAO'
    end
    object C_TiposMovimentoTIT2_SITUACAO: TStringField
      FieldName = 'TIT2_SITUACAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_SITUACAO'
    end
    object C_TiposMovimentoATUALIZACUSTO: TStringField
      FieldName = 'ATUALIZACUSTO'
      Origin = 'TIPOSMOVIMENTO.ATUALIZACUSTO'
      Size = 3
    end
    object C_TiposMovimentoATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      Origin = 'TIPOSMOVIMENTO.ATUALIZAPRECO'
      Size = 3
    end
    object C_TiposMovimentoINCLUIDESCONTO: TStringField
      FieldName = 'INCLUIDESCONTO'
      Origin = 'TIPOSMOVIMENTO.INCLUIDESCONTO'
      Size = 1
    end
    object C_TiposMovimentoATUALIZAPRECOMANUAL: TStringField
      FieldName = 'ATUALIZAPRECOMANUAL'
      Origin = 'TIPOSMOVIMENTO.ATUALIZAPRECOMANUAL'
      Size = 1
    end
    object C_TiposMovimentoCB_STATUS: TStringField
      FieldName = 'CB_STATUS'
      Origin = 'TIPOSMOVIMENTO.CB_STATUS'
      Size = 1
    end
    object C_TiposMovimentoSTATUSPADRAO: TStringField
      FieldName = 'STATUSPADRAO'
      Origin = 'TIPOSMOVIMENTO.STATUSPADRAO'
      Size = 1
    end
    object C_TiposMovimentoCB_STATUSITENS: TStringField
      FieldName = 'CB_STATUSITENS'
      Origin = 'TIPOSMOVIMENTO.CB_STATUSITENS'
      Size = 1
    end
    object C_TiposMovimentoSTATUSPADRAOITENS: TStringField
      FieldName = 'STATUSPADRAOITENS'
      Origin = 'TIPOSMOVIMENTO.STATUSPADRAOITENS'
      Size = 1
    end
    object C_TiposMovimentoCB_DOCSGARANTIA: TStringField
      FieldName = 'CB_DOCSGARANTIA'
      Origin = 'TIPOSMOVIMENTO.CB_DOCSGARANTIA'
      Size = 1
    end
    object C_TiposMovimentoCB_IMPRIMIROP: TStringField
      FieldName = 'CB_IMPRIMIROP'
      Origin = 'TIPOSMOVIMENTO.CB_IMPRIMIROP'
      Size = 1
    end
    object C_TiposMovimentoCB_PGTOS: TStringField
      FieldName = 'CB_PGTOS'
      Origin = 'TIPOSMOVIMENTO.CB_PGTOS'
      Size = 1
    end
    object C_TiposMovimentoCB_FICHACLIENTE: TStringField
      FieldName = 'CB_FICHACLIENTE'
      Origin = 'TIPOSMOVIMENTO.CB_FICHACLIENTE'
      Size = 1
    end
    object C_TiposMovimentoCB_TOPRINTER: TStringField
      FieldName = 'CB_TOPRINTER'
      Origin = 'TIPOSMOVIMENTO.CB_TOPRINTER'
      Size = 1
    end
    object C_TiposMovimentoCB_GERARNUM: TStringField
      FieldName = 'CB_GERARNUM'
      Origin = 'TIPOSMOVIMENTO.CB_GERARNUM'
      Size = 1
    end
    object C_TiposMovimentoFAVORECIDOPADRAO: TIntegerField
      FieldName = 'FAVORECIDOPADRAO'
      Origin = 'TIPOSMOVIMENTO.FAVORECIDOPADRAO'
    end
    object C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField
      FieldName = 'TIPOIMPRESSAO_OP'
      Origin = 'TIPOSMOVIMENTO.TIPOIMPRESSAO_OP'
      Size = 3
    end
    object C_TiposMovimentoMENSAGEMPADRAO: TIntegerField
      FieldName = 'MENSAGEMPADRAO'
      Origin = 'TIPOSMOVIMENTO.MENSAGEMPADRAO'
    end
    object C_TiposMovimentoCB_CONTRATO: TStringField
      FieldName = 'CB_CONTRATO'
      Origin = 'TIPOSMOVIMENTO.CB_CONTRATO'
      Size = 1
    end
    object C_TiposMovimentoTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TIPOSMOVIMENTO.TEMPLATE'
    end
    object C_TiposMovimentoTERMOCONTRATO: TIntegerField
      FieldName = 'TERMOCONTRATO'
      Origin = 'TIPOSMOVIMENTO.TERMOCONTRATO'
    end
    object C_TiposMovimentoTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TIPOSPADRAO.TIPOORIGEM'
    end
    object C_TiposMovimentoDIASVALIDADE: TIntegerField
      FieldName = 'DIASVALIDADE'
      Origin = 'TIPOSMOVIMENTO.DIASVALIDADE'
    end
    object C_TiposMovimentoTABELAPADRAO: TIntegerField
      FieldName = 'TABELAPADRAO'
      Origin = 'TIPOSMOVIMENTO.TABELAPADRAO'
    end
    object C_TiposMovimentoALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
      Origin = 'TIPOSMOVIMENTO.ALMOXPADRAO'
    end
    object C_TiposMovimentoTIPODESCRICAO: TStringField
      FieldName = 'TIPODESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIPODESCRICAO'
      Size = 2
    end
    object C_TiposMovimentoPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Origin = 'TIPOSMOVIMENTO.POSSUIICMS'
      Size = 1
    end
    object C_TiposMovimentoPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Origin = 'TIPOSMOVIMENTO.POSSUIIPI'
      Size = 1
    end
    object C_TiposMovimentoPOSSUIISS: TStringField
      FieldName = 'POSSUIISS'
      Origin = 'TIPOSMOVIMENTO.POSSUIISS'
      Size = 1
    end
    object C_TiposMovimentoCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'TIPOSMOVIMENTO.CONTABILIZAICMS'
      Size = 1
    end
    object C_TiposMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'TIPOSMOVIMENTO.SERIE'
      Size = 3
    end
    object C_TiposMovimentoMODELODOC: TStringField
      FieldName = 'MODELODOC'
      Origin = 'TIPOSMOVIMENTO.MODELODOC'
      Size = 2
    end
    object C_TiposMovimentoCB_ICMS: TStringField
      FieldName = 'CB_ICMS'
      Origin = 'TIPOSMOVIMENTO.CB_ICMS'
      Size = 1
    end
    object C_TiposMovimentoCB_TVA: TStringField
      FieldName = 'CB_TVA'
      Origin = 'TIPOSMOVIMENTO.CB_TVA'
      Size = 1
    end
    object C_TiposMovimentoCB_IPI: TStringField
      FieldName = 'CB_IPI'
      Origin = 'TIPOSMOVIMENTO.CB_IPI'
      Size = 1
    end
    object C_TiposMovimentoTIT1_ICMS: TStringField
      FieldName = 'TIT1_ICMS'
      Origin = 'TIPOSMOVIMENTO.TIT1_ICMS'
    end
    object C_TiposMovimentoTIT1_TVA: TStringField
      FieldName = 'TIT1_TVA'
      Origin = 'TIPOSMOVIMENTO.TIT1_TVA'
    end
    object C_TiposMovimentoTIT1_IPI: TStringField
      FieldName = 'TIT1_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT1_IPI'
    end
    object C_TiposMovimentoCB_LICITACAO: TStringField
      FieldName = 'CB_LICITACAO'
      Origin = 'TIPOSMOVIMENTO.CB_LICITACAO'
      Size = 1
    end
    object C_TiposMovimentoCB_CFOP: TStringField
      FieldName = 'CB_CFOP'
      Origin = 'TIPOSMOVIMENTO.CB_CFOP'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CFOP: TStringField
      FieldName = 'TIT1_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT1_CFOP'
    end
    object C_TiposMovimentoTIT2_CFOP: TStringField
      FieldName = 'TIT2_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT2_CFOP'
    end
    object C_TiposMovimentoTIPOCOB_PADRAO: TIntegerField
      FieldName = 'TIPOCOB_PADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOCOB_PADRAO'
    end
    object C_TiposMovimentoCB_NUMEROITEM: TStringField
      FieldName = 'CB_NUMEROITEM'
      Origin = 'TIPOSMOVIMENTO.CB_NUMEROITEM'
      Size = 1
    end
    object C_TiposMovimentoCB_REGISTRO: TStringField
      FieldName = 'CB_REGISTRO'
      Origin = 'TIPOSMOVIMENTO.CB_REGISTRO'
      Size = 1
    end
    object C_TiposMovimentoCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'TIPOSMOVIMENTO.CFOPASSOCIADO'
      Size = 4
    end
    object C_TiposMovimentoGERAFINANCEIRO: TStringField
      FieldName = 'GERAFINANCEIRO'
      Origin = 'TIPOSMOVIMENTO.GERAFINANCEIRO'
      Size = 1
    end
    object C_TiposMovimentoCB_NOTAFISCAL: TStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object C_TiposMovimentoTIPO_CARTEIRA_PADRAO: TIntegerField
      FieldName = 'TIPO_CARTEIRA_PADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPO_CARTEIRA_PADRAO'
    end
    object C_TiposMovimentoBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'TIPOSMOVIMENTO.BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TiposMovimentoCB_DESCONTOITEM: TStringField
      FieldName = 'CB_DESCONTOITEM'
      Origin = 'TIPOSMOVIMENTO.CB_DESCONTOITEM'
      Size = 1
    end
    object C_TiposMovimentoCB_CSTPADRAO: TStringField
      FieldName = 'CB_CSTPADRAO'
      Origin = 'TIPOSMOVIMENTO.CB_CSTPADRAO'
      Size = 1
    end
    object C_TiposMovimentoCST_PADRAO: TStringField
      FieldName = 'CST_PADRAO'
      Origin = 'TIPOSMOVIMENTO.CST_PADRAO'
      Size = 3
    end
    object C_TiposMovimentoLIVROFISCAL: TStringField
      FieldName = 'LIVROFISCAL'
      Origin = 'TIPOSMOVIMENTO.LIVROFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TiposMovimentoCALCULAPISCOFINS: TStringField
      FieldName = 'CALCULAPISCOFINS'
      Origin = 'TIPOSMOVIMENTO.CALCULAPISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TiposMovimentoCALCULAICMSSUBST: TStringField
      FieldName = 'CALCULAICMSSUBST'
      Origin = 'TIPOSMOVIMENTO.CALCULAICMSSUBST'
      FixedChar = True
      Size = 1
    end
    object C_TiposMovimentoCB_MENSAGEMTRIBUTOS: TStringField
      FieldName = 'CB_MENSAGEMTRIBUTOS'
      Origin = 'TIPOSMOVIMENTO.CB_MENSAGEMTRIBUTOS'
      FixedChar = True
      Size = 1
    end
  end
  inherited C_TiposMovimentoDS: TDataSource
    Left = 543
    Top = 147
  end
  object Q_PlanosPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento '
      'where Tipo in ('#39'S'#39', '#39'A'#39') and Desativado = '#39'N'#39' '
      'and  (Validade is null or Validade >= Current_Date)')
    UniDirectional = True
    Left = 543
    Top = 195
  end
  object P_PlanosPagamento: TDataSetProvider
    DataSet = Q_PlanosPagamento
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 543
    Top = 247
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanosPagamento'
    Left = 545
    Top = 296
    object C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'PLANOSPAGAMENTO.PLANOPAGAMENTO'
      Required = True
    end
    object C_PlanosPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PLANOSPAGAMENTO.DESCRICAO'
      Size = 30
    end
    object C_PlanosPagamentoJUROS: TBCDField
      FieldName = 'JUROS'
      Origin = 'PLANOSPAGAMENTO.JUROS'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
      Origin = 'PLANOSPAGAMENTO.QTDPARCELAS'
    end
    object C_PlanosPagamentoPDESCONTO: TBCDField
      FieldName = 'PDESCONTO'
      Origin = 'PLANOSPAGAMENTO.PDESCONTO'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField
      FieldName = 'DIAS_ANTECIPACAO'
      Origin = 'PLANOSPAGAMENTO.DIAS_ANTECIPACAO'
    end
    object C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField
      FieldName = 'JUROSNEGOCIAVEIS'
      Origin = 'PLANOSPAGAMENTO.JUROSNEGOCIAVEIS'
      Size = 1
    end
    object C_PlanosPagamentoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'PLANOSPAGAMENTO.TIPO'
      Size = 1
    end
    object C_PlanosPagamentoPERIODICIDADE: TIntegerField
      FieldName = 'PERIODICIDADE'
      Origin = 'PLANOSPAGAMENTO.PERIODICIDADE'
    end
    object C_PlanosPagamentoESQUEMAPARCELAS: TStringField
      FieldName = 'ESQUEMAPARCELAS'
      Origin = 'PLANOSPAGAMENTO.ESQUEMAPARCELAS'
      Size = 1
    end
    object C_PlanosPagamentoTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Origin = 'PLANOSPAGAMENTO.TIPOENTRADA'
      Size = 1
    end
    object C_PlanosPagamentoPERCENTUALENTRADA: TBCDField
      FieldName = 'PERCENTUALENTRADA'
      Origin = 'PLANOSPAGAMENTO.PERCENTUALENTRADA'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'PLANOSPAGAMENTO.VALIDADE'
    end
    object C_PlanosPagamentoDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'PLANOSPAGAMENTO.DESATIVADO'
      Size = 1
    end
    object C_PlanosPagamentoINTERVALOS: TStringField
      FieldName = 'INTERVALOS'
      Origin = 'PLANOSPAGAMENTO.INTERVALOS'
      Size = 1000
    end
    object C_PlanosPagamentoCARENCIAENTRADA: TStringField
      FieldName = 'CARENCIAENTRADA'
      Origin = 'PLANOSPAGAMENTO.CARENCIAENTRADA'
      Size = 10
    end
    object C_PlanosPagamentoMENORVALOR: TBCDField
      FieldName = 'MENORVALOR'
      Origin = 'PLANOSPAGAMENTO.MENORVALOR'
      Size = 2
    end
    object C_PlanosPagamentoCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'PLANOSPAGAMENTO.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamento_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object Q_Vendedores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'Select  Favorecido, Nome, Codigo, Comissao, Logotipo  From Favor' +
        'ecidos '
      'Where ISVendedor = '#39'S'#39' and Desativado = '#39'N'#39)
    UniDirectional = True
    Left = 304
    Top = 195
  end
  object P_Vendedores: TDataSetProvider
    DataSet = Q_Vendedores
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 304
    Top = 247
  end
  object C_Vendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedores'
    Left = 312
    Top = 298
    object C_VendedoresFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_VendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_VendedoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_VendedoresCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'FAVORECIDOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_VendedoresLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 50
    end
  end
  object Q_TiposEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From TiposEntrega'
      'order by Descricao')
    UniDirectional = True
    Left = 386
    Top = 195
  end
  object P_TiposEntrega: TDataSetProvider
    DataSet = Q_TiposEntrega
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 386
    Top = 247
  end
  object C_TiposEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEntrega'
    Left = 382
    Top = 294
    object C_TiposEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Origin = 'TIPOSENTREGA.TIPOENTREGA'
      Required = True
    end
    object C_TiposEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSENTREGA.DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento where Tipo = '#39'S'#39)
    UniDirectional = True
    Left = 86
    Top = 167
  end
  object Q_ProdutosPreco: TIBQuery
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
      #9'tp.DESCRICAO, tp.Baseada, tp.Percentual '
      'From ProdutosPreco pp '
      'INNER JOIN TabelasPreco tp ON pp.TabelaPreco = tp.TabelaPreco'
      
        'Where pp.ITEM  = :ITEM and pp.Unidade = :Unidade and tp.Desativa' +
        'do = '#39'N'#39
      'Order by tp.Percentual, tp.TabelaPreco ')
    UniDirectional = True
    Left = 354
    Top = 6
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
  object P_ProdutosPreco: TDataSetProvider
    DataSet = Q_ProdutosPreco
    Constraints = True
    Left = 354
    Top = 51
  end
  object C_ProdutosPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ProdutosPreco'
    OnCalcFields = C_ProdutosPrecoCalcFields
    OnFilterRecord = C_ProdutosPrecoFilterRecord
    Left = 357
    Top = 102
    object C_ProdutosPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ProdutosPrecoPRODUTOPRECO: TIntegerField
      FieldName = 'PRODUTOPRECO'
    end
    object C_ProdutosPrecoITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUTOSPRECO.ITEM'
    end
    object C_ProdutosPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'PRODUTOSPRECO.TABELAPRECO'
      Required = True
    end
    object C_ProdutosPrecoPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object C_ProdutosPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TABELASPRECO.DESCRICAO'
      Size = 25
    end
    object C_ProdutosPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
    object C_ProdutosPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Size = 2
    end
    object C_ProdutosPrecoPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Size = 3
    end
    object C_ProdutosPrecoPRECO_NORMAL: TBCDField
      FieldName = 'PRECO_NORMAL'
      Precision = 18
      Size = 3
    end
    object C_ProdutosPrecoPRECO: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PRECO'
    end
  end
  object C_ProdutosPrecoDS: TDataSource
    DataSet = C_ProdutosPreco
    Left = 354
    Top = 147
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select     t.*, t.FaltaReceber as Saldo,'
      '    (t.Valor - t.FaltaReceber) as Pgtos,'
      '    t.Venda as IDMestre '
      'from TitulosAReceber t'
      
        'Where t.Venda = :IDMestre and t.empresa = :empresa and t.pdv = :' +
        'pdv'
      'and t.Status <> 0')
    UniDirectional = True
    UpdateObject = U_Parcelas
    Left = 448
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDMESTRE'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'EMPRESA'
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
  object U_Parcelas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TitulosAReceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update TitulosAReceber'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALOR = :VALOR,'
      '  VALORPAGO = :VALORPAGO,'
      '  CLIENTE = :CLIENTE,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  VENDEDOR = :VENDEDOR,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  JUROSPLANO = :JUROSPLANO,'
      '  USUARIO = :USUARIO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROSRECEBIDOS = :JUROSRECEBIDOS,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  VALORJUROSMORA = :VALORJUROSMORA,'
      '  VALORMULTA = :VALORMULTA,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  PERCENTUALMULTA = :PERCENTUALMULTA,'
      '  PERCENTUALMORA = :PERCENTUALMORA,'
      '  Doc_Garantia = :Doc_Garantia,'
      '  Origem_AReceber = :Origem_AReceber,'
      '  IDGerador_AReceber = :IDGerador_AReceber,'
      '  TIPOCOBRANCA = :TIPOCOBRANCA,'
      '  CARTEIRA = :CARTEIRA,'
      '  PDV = :PDV,'
      '  EMPRESA = :EMPRESA,'
      '  NOSSONUMERO = :NOSSONUMERO,'
      '  DIGITONOSSONUMERO = :DIGITONOSSONUMERO'
      '  '
      'where'
      '  ID = :OLD_ID and EMPRESA = :OLD_EMPRESA and PDV = :OLD_PDV'
      ' ')
    InsertSQL.Strings = (
      'insert into TitulosAReceber'
      '  (ID, TITULO, PARCELA, VENCIMENTO, COMPETENCIA, VALOR, Venda, '
      '   VALORPAGO, CLIENTE, NOTAFISCAL, STATUS, VENDEDOR,'
      '   DATAANTECIPACAO, VALORDESCANTECIPADO, JUROSPLANO, USUARIO,'
      '   DESCONTOS, JUROSRECEBIDOS, DATAATRASADO, VALORJUROSMORA,'
      '   VALORMULTA, CREDITOUTILIZADO, CREDITOGERADO, '
      'PERCENTUALMULTA,'
      
        '   PERCENTUALMORA, Doc_Garantia, Origem_AReceber, IDGerador_ARec' +
        'eber,'
      '   TIPOCOBRANCA, CARTEIRA, PDV, IMPORTACAO, EMPRESA, '
      'NOSSONUMERO, DIGITONOSSONUMERO '
      ')'
      'values'
      
        '  (:ID, :TITULO, :PARCELA, :VENCIMENTO, :COMPETENCIA, :VALOR, :I' +
        'DMESTRE,'
      '   :VALORPAGO, :CLIENTE, :NOTAFISCAL, :STATUS, :VENDEDOR,'
      
        '   :DATAANTECIPACAO, :VALORDESCANTECIPADO, :JUROSPLANO, :USUARIO' +
        ','
      '   :DESCONTOS, :JUROSRECEBIDOS, :DATAATRASADO, :VALORJUROSMORA, '
      ':VALORMULTA,'
      '   :CREDITOUTILIZADO, :CREDITOGERADO, :PERCENTUALMULTA, '
      ':PERCENTUALMORA,'
      
        '   :Doc_Garantia, :Origem_AReceber, :IDGerador_AReceber, :TIPOCO' +
        'BRANCA, '
      ':CARTEIRA, :PDV, :IMPORTACAO, :EMPRESA, :NOSSONUMERO, '
      ':DIGITONOSSONUMERO)'
      ' '
      ' ')
    DeleteSQL.Strings = (
      'delete from TitulosAReceber'
      'where'
      '  ID = :OLD_ID')
    Left = 448
    Top = 53
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Parcelas
    Params = <>
    BeforePost = C_ParcelasBeforePost
    OnNewRecord = C_ParcelasNewRecord
    Left = 451
    Top = 102
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Origin = 'TITULOSARECEBER.ID'
      Required = True
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULOSARECEBER.TITULO'
      Size = 10
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'TITULOSARECEBER.PARCELA'
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
    end
    object C_ParcelasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
      Origin = 'TITULOSARECEBER.COMPETENCIA'
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'TITULOSARECEBER.VALOR'
      OnValidate = C_ParcelasVALORValidate
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'TITULOSARECEBER.SALDO'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasIDMESTRE: TIntegerField
      FieldName = 'IDMESTRE'
      Origin = 'TITULOSARECEBER.IDMESTRE'
    end
    object C_ParcelasVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'TITULOSARECEBER.VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'TITULOSARECEBER.CLIENTE'
    end
    object C_ParcelasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'TITULOSARECEBER.NOTAFISCAL'
      Size = 15
    end
    object C_ParcelasSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'TITULOSARECEBER.STATUS'
    end
    object C_ParcelasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'TITULOSARECEBER.VENDEDOR'
    end
    object C_ParcelasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
      Origin = 'TITULOSARECEBER.DATAANTECIPACAO'
    end
    object C_ParcelasVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Origin = 'TITULOSARECEBER.VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      Origin = 'TITULOSARECEBER.JUROSPLANO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'TITULOSARECEBER.USUARIO'
    end
    object C_ParcelasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'TITULOSARECEBER.DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSRECEBIDOS: TBCDField
      FieldName = 'JUROSRECEBIDOS'
      Origin = 'TITULOSARECEBER.JUROSRECEBIDOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
      Origin = 'TITULOSARECEBER.DATAATRASADO'
    end
    object C_ParcelasVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Origin = 'TITULOSARECEBER.VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Origin = 'TITULOSARECEBER.VALORMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Origin = 'TITULOSARECEBER.CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Origin = 'TITULOSARECEBER.CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPERCENTUALMULTA: TBCDField
      FieldName = 'PERCENTUALMULTA'
      Origin = 'TITULOSARECEBER.PERCENTUALMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPERCENTUALMORA: TBCDField
      FieldName = 'PERCENTUALMORA'
      Origin = 'TITULOSARECEBER.PERCENTUALMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPGTOS: TBCDField
      FieldName = 'PGTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDOC_GARANTIA: TStringField
      FieldName = 'DOC_GARANTIA'
      Origin = 'TITULOSARECEBER.DOC_GARANTIA'
    end
    object C_ParcelasORIGEM_ARECEBER: TIntegerField
      FieldName = 'ORIGEM_ARECEBER'
      Origin = 'TITULOSARECEBER.ORIGEM_ARECEBER'
    end
    object C_ParcelasIDGERADOR_ARECEBER: TIntegerField
      FieldName = 'IDGERADOR_ARECEBER'
      Origin = 'TITULOSARECEBER.IDGERADOR_ARECEBER'
    end
    object C_ParcelasTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TITULOSARECEBER.TIPOCOBRANCA'
    end
    object C_ParcelaslkTipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoCobranca'
      LookupDataSet = C_TiposCobranca
      LookupKeyFields = 'TIPOCOBRANCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOCOBRANCA'
      Size = 25
      Lookup = True
    end
    object C_ParcelasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Origin = 'TITULOSARECEBER.CARTEIRA'
    end
    object C_ParcelaslkCarteira: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCarteira'
      LookupDataSet = C_Carteiras
      LookupKeyFields = 'CARTEIRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTEIRA'
      Size = 30
      Lookup = True
    end
    object C_ParcelasPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'TITULOSARECEBER.PDV'
      Required = True
    end
    object C_ParcelasIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'TITULOSARECEBER.IMPORTACAO'
      Required = True
    end
    object C_ParcelasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'TITULOSARECEBER.EMPRESA'
      Required = True
    end
    object C_ParcelasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'TITULOSARECEBER.NOSSONUMERO'
    end
    object C_ParcelasVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'TITULOSARECEBER.VENDA'
    end
    object C_ParcelasDIGITONOSSONUMERO: TStringField
      FieldName = 'DIGITONOSSONUMERO'
      Origin = 'TITULOSARECEBER.DIGITONOSSONUMERO'
      FixedChar = True
      Size = 1
    end
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 455
    Top = 149
  end
  object C_SaidasItensFilhos: TClientDataSet
    Aggregates = <>
    DataSetField = C_ItensQ_SaidasItensFilhos
    Params = <>
    OnNewRecord = C_SaidasItensFilhosNewRecord
    Left = 244
    Top = 102
    object C_SaidasItensFilhosSAIDAITEMFILHO: TIntegerField
      FieldName = 'SAIDAITEMFILHO'
      Origin = 'SAIDASITENSFILHOS.SAIDAITEMFILHO'
      Required = True
    end
    object C_SaidasItensFilhosIDITEM: TIntegerField
      FieldName = 'IDITEM'
      Origin = 'SAIDASITENSFILHOS.IDITEM'
    end
    object C_SaidasItensFilhosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SAIDASITENSFILHOS.ITEM'
      OnChange = C_SaidasItensFilhosITEMChange
    end
    object C_SaidasItensFilhosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDASITENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_SaidasItensFilhosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_SaidasItensFilhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_SaidasItensFilhosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'SAIDASITENSFILHOS.CUSTOMEDIO'
    end
    object C_SaidasItensFilhosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'SAIDASITENSFILHOS.CUSTOCONTABIL'
    end
    object C_SaidasItensFilhosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDASITENSFILHOS.UNIDADE'
      OnChange = C_SaidasItensFilhosUNIDADEChange
      Size = 6
    end
    object C_SaidasItensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'SAIDASITENSFILHOS.FATOR'
    end
    object C_SaidasItensFilhosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'SAIDASITENSFILHOS.PRECO'
      Precision = 18
      Size = 3
    end
    object C_SaidasItensFilhoslkUnidFilho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidFilho'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'UNIDADE'
      KeyFields = 'UNIDADE'
      Size = 6
      Lookup = True
    end
    object C_SaidasItensFilhosUNIDADEOLD: TStringField
      FieldName = 'UNIDADEOLD'
      Origin = 'SAIDASITENSFILHOS.UNIDADEOLD'
      Size = 6
    end
    object C_SaidasItensFilhosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'SAIDASITENSFILHOS.QTDE'
      Precision = 18
      Size = 3
    end
    object C_SaidasItensFilhosIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'SAIDASITENSFILHOS.IMPORTACAO'
      Required = True
    end
    object C_SaidasItensFilhosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'SAIDASITENSFILHOS.EMPRESA'
      Required = True
    end
    object C_SaidasItensFilhosPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'SAIDASITENSFILHOS.PDV'
      Required = True
    end
  end
  object Q_SaidasItensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterItensDS
    SQL.Strings = (
      
        'select si.saidaitem as IDITEM,si.*, i.codigo, i.descricao, si.pr' +
        'eco,'
      'si.unidade as UnidadeOld'
      'from saidasitensfilhos si, itens i'
      'where si.item = i.item and si.saidaitem = :IDITEM')
    UniDirectional = True
    UpdateObject = U_SaidasItensFilhos
    Left = 243
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_SaidasItensFilhosDS: TDataSource
    DataSet = C_SaidasItensFilhos
    Left = 244
    Top = 147
  end
  object U_SaidasItensFilhos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidasitensfilhos '
      'where'
      '  SAIDAITEMFILHO = :SAIDAITEMFILHO')
    ModifySQL.Strings = (
      'update saidasitensfilhos'
      'set'
      '  EMPRESA = :EMPRESA,'
      '  PDV = :PDV,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  PRECO = :PRECO,'
      '  QTDE = :QTDE'
      'where'
      '  SAIDAITEMFILHO = :OLD_SAIDAITEMFILHO')
    InsertSQL.Strings = (
      'insert into saidasitensfilhos'
      '  (SAIDAITEMFILHO, EMPRESA, PDV, SAIDAITEM, ITEM, QUANTIDADE, '
      'CUSTOMEDIO, CUSTOCONTABIL, '
      '   UNIDADE, FATOR, PRECO, QTDE, IMPORTACAO)'
      'values'
      '  (:SAIDAITEMFILHO,:EMPRESA, :PDV, :IDITEM, :ITEM, :QUANTIDADE, '
      ':CUSTOMEDIO, :CUSTOCONTABIL, '
      '   :UNIDADE, :FATOR, :PRECO, :QTDE, :IMPORTACAO)')
    DeleteSQL.Strings = (
      'delete from saidasitensfilhos'
      'where'
      '  SAIDAITEMFILHO = :OLD_SAIDAITEMFILHO')
    Left = 245
    Top = 53
  end
  object Q_MasterItensDS: TDataSource
    DataSet = Q_Itens
    Left = 88
    Top = 108
  end
  object Q_Funcs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  Favorecido, Codigo, Nome  From Favorecidos '
      'Where Desativado = '#39'N'#39' and TipoFavorecido = 3')
    UniDirectional = True
    Left = 244
    Top = 198
  end
  object P_Funcs: TDataSetProvider
    DataSet = Q_Funcs
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 235
    Top = 249
  end
  object C_Funcs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Funcs'
    Left = 243
    Top = 302
    object IntegerField1: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object Q_SQLi: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento where Tipo = '#39'S'#39)
    UniDirectional = True
    Left = 88
    Top = 217
  end
  object Q_LocaisEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  Entrega, Favorecido, Descricao'
      'From FavorecidosEntrega'
      'Where Favorecido = :FAVORECIDO'
      'Order by Descricao')
    UniDirectional = True
    Left = 158
    Top = 196
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_LocaisEntrega: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
    ProviderName = 'P_LocaisEntrega'
    Left = 160
    Top = 294
    object C_LocaisEntregaENTREGA: TIntegerField
      FieldName = 'ENTREGA'
      Required = True
    end
    object C_LocaisEntregaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_LocaisEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object C_LocaisEntregaDS: TDataSource
    DataSet = C_LocaisEntrega
    Left = 86
    Top = 265
  end
  object P_LocaisEntrega: TDataSetProvider
    DataSet = Q_LocaisEntrega
    Constraints = True
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 158
    Top = 245
  end
  object Q_Mesclagens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterItensDS
    SQL.Strings = (
      'Select '#9'SAIDAITEMMESCLA, SAIDAITEM_ORIGINAL, QUANTIDADE,'
      #9'SAIDAITEM AS IDITEM, QTDMAXIMA, SAIDA_ORIGINAL,'
      
        #9'Quantidade as OldQuantidade, FECHAR_ORIGINAL, UNIDADE, FATOR, P' +
        'DV, EMPERSA '
      'from SaidasItensMescla'
      'Where SaidaItem = :IDITEM')
    UpdateObject = U_Mesclagens
    Left = 156
    Top = 342
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Mesclagens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from SaidasItensMescla '
      'where'
      '  SAIDAITEMMESCLA = :SAIDAITEMMESCLA')
    ModifySQL.Strings = (
      'update SaidasItensMescla'
      'set'
      '  SAIDAITEM_ORIGINAL = :SAIDAITEM_ORIGINAL,'
      '  SAIDAITEM = :IDITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  QTDMAXIMA = :QTDMAXIMA,'
      '  SAIDA_ORIGINAL = :SAIDA_ORIGINAL,'
      '  FECHAR_ORIGINAL = :FECHAR_ORIGINAL,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  PDV = :PDV'
      'where'
      '  SAIDAITEMMESCLA = :OLD_SAIDAITEMMESCLA')
    InsertSQL.Strings = (
      'insert into SaidasItensMescla'
      '  (SAIDAITEMMESCLA, SAIDAITEM_ORIGINAL, SAIDAITEM, '
      '   QUANTIDADE, QTDMAXIMA, SAIDA_ORIGINAL, FECHAR_ORIGINAL, '
      'UNIDADE, FATOR, PDV)'
      'values'
      '  (:SAIDAITEMMESCLA, :SAIDAITEM_ORIGINAL, :IDITEM, '
      '    :QUANTIDADE, :QTDMAXIMA, :SAIDA_ORIGINAL, :FECHAR_ORIGINAL, '
      '   :UNIDADE, :FATOR, :PDV)')
    DeleteSQL.Strings = (
      'delete from SaidasItensMescla'
      'where'
      '  SAIDAITEMMESCLA = :OLD_SAIDAITEMMESCLA')
    Left = 156
    Top = 389
  end
  object C_Mesclagens: TClientDataSet
    Aggregates = <>
    DataSetField = C_ItensQ_Mesclagens
    Params = <>
    OnNewRecord = C_MesclagensNewRecord
    Left = 156
    Top = 438
    object C_MesclagensSAIDAITEMMESCLA: TIntegerField
      FieldName = 'SAIDAITEMMESCLA'
      Origin = 'SAIDASITENSMESCLA.SAIDAITEMMESCLA'
      Required = True
    end
    object C_MesclagensSAIDAITEM_ORIGINAL: TIntegerField
      FieldName = 'SAIDAITEM_ORIGINAL'
      Origin = 'SAIDASITENSMESCLA.SAIDAITEM_ORIGINAL'
    end
    object C_MesclagensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDASITENSMESCLA.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_MesclagensQTDMAXIMA: TBCDField
      FieldName = 'QTDMAXIMA'
      Origin = 'SAIDASITENSMESCLA.QTDMAXIMA'
      Precision = 18
      Size = 3
    end
    object C_MesclagensIDITEM: TIntegerField
      FieldName = 'IDITEM'
      Origin = 'SAIDASITENSMESCLA.IDITEM'
    end
    object C_MesclagensSAIDA_ORIGINAL: TIntegerField
      FieldName = 'SAIDA_ORIGINAL'
      Origin = 'SAIDASITENSMESCLA.SAIDA_ORIGINAL'
    end
    object C_MesclagensOLDQUANTIDADE: TBCDField
      FieldName = 'OLDQUANTIDADE'
      Origin = 'SAIDASITENSMESCLA.OLDQUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_MesclagensFECHAR_ORIGINAL: TStringField
      FieldName = 'FECHAR_ORIGINAL'
      Origin = 'SAIDASITENSMESCLA.FECHAR_ORIGINAL'
      Size = 1
    end
    object C_MesclagensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDASITENSMESCLA.UNIDADE'
      Size = 6
    end
    object C_MesclagensFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'SAIDASITENSMESCLA.FATOR'
    end
    object C_MesclagensPDV: TStringField
      FieldName = 'PDV'
      Origin = 'SAIDASITENSMESCLA.PDV'
      Required = True
      Size = 10
    end
    object C_MesclagensEMPERSA: TIntegerField
      FieldName = 'EMPERSA'
      Origin = 'SAIDASITENSMESCLA.EMPERSA'
      Required = True
    end
  end
  object C_MesclagensDS: TDataSource
    DataSet = C_Mesclagens
    Left = 156
    Top = 483
  end
  object Q_Status: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From StatusSaidas'
      'order by Ordem')
    UniDirectional = True
    Left = 227
    Top = 342
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 227
    Top = 389
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 229
    Top = 438
    object C_StatusSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUSSAIDAS.STATUS'
      Required = True
      Size = 1
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSAIDAS.DESCRICAO'
      Size = 30
    end
    object C_StatusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'STATUSSAIDAS.ORDEM'
    end
  end
  object IBEventos_Saidas: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_FAVORECIDOS'
      'EVENTO_LOCAISENTREGA'
      'EVENTO_PLANOSPAGAMENTO'
      'EVENTO_TAXS'
      'EVENTO_TIPOSMOVIMENTO')
    Registered = False
    OnEventAlert = IBEventos_SaidasEventAlert
    Left = 743
    Top = 195
  end
  object Q_MensagensOperacoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From MensagensOperacoes'
      'order by Descricao')
    UniDirectional = True
    Left = 652
    Top = 195
  end
  object P_MensagensOperacoes: TDataSetProvider
    DataSet = Q_MensagensOperacoes
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 652
    Top = 247
  end
  object C_MensagensOperacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MensagensOperacoes'
    Left = 648
    Top = 296
    object C_MensagensOperacoesMENSAGEMOPERACAO: TIntegerField
      FieldName = 'MENSAGEMOPERACAO'
      Required = True
    end
    object C_MensagensOperacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
  end
  object C_MensagensOperacoesDS: TDataSource
    DataSet = C_MensagensOperacoes
    Left = 652
    Top = 342
  end
  object Q_TermosContratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From TERMOSCONTRATOS'
      'where Desativado = '#39'N'#39
      'order by Descricao'
      '')
    UniDirectional = True
    Left = 652
    Top = 4
  end
  object P_TermosContrato: TDataSetProvider
    DataSet = Q_TermosContratos
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 652
    Top = 51
  end
  object C_TermosContratos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TermosContrato'
    Left = 652
    Top = 102
    object C_TermosContratosTERMOCONTRATO: TIntegerField
      FieldName = 'TERMOCONTRATO'
      Required = True
    end
    object C_TermosContratosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object C_TermosContratosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TermosContratosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 25
    end
  end
  object C_TermosContratoDS: TDataSource
    DataSet = C_TermosContratos
    Left = 652
    Top = 145
  end
  object Q_Lotes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select il.*, i.FatorUndVenda'
      'from itenslotes il inner join Itens i ON i.Item = il.Item'
      'where il.item = :ITEM And il.EstoqueLote > 0 '
      'order by il.validade, il.numerolote')
    UniDirectional = True
    Left = 461
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end>
  end
  object P_Lotes: TDataSetProvider
    DataSet = Q_Lotes
    Constraints = True
    Left = 461
    Top = 389
  end
  object C_Lotes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Lotes'
    OnCalcFields = C_LotesCalcFields
    Left = 467
    Top = 438
    object C_LotesIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      Required = True
    end
    object C_LotesITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_LotesNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Size = 12
    end
    object C_LotesVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_LotesESTOQUELOTE: TBCDField
      FieldName = 'ESTOQUELOTE'
      Precision = 18
      Size = 3
    end
    object C_LotesQTDENTRADAS: TBCDField
      FieldName = 'QTDENTRADAS'
      Precision = 18
      Size = 3
    end
    object C_LotesFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_LotesicEstoqueLote: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoqueLote'
    end
  end
  object C_LotesDS: TDataSource
    DataSet = C_Lotes
    Left = 461
    Top = 483
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from unidades')
    Left = 461
    Top = 197
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 461
    Top = 298
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
    object C_UnidadesINTEIRA: TStringField
      FieldName = 'INTEIRA'
      Origin = 'UNIDADES.INTEIRA'
      Size = 1
    end
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 461
    Top = 247
  end
  object C_CFOPs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CFOPs'
    Left = 543
    Top = 440
    object C_CFOPsCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOPS.CFOP'
      Required = True
      Size = 3
    end
    object C_CFOPsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CFOPS.DESCRICAO'
      Size = 150
    end
    object C_CFOPsPAI: TStringField
      FieldName = 'PAI'
      Origin = 'CFOPS.PAI'
      Size = 3
    end
  end
  object P_CFOPs: TDataSetProvider
    DataSet = Q_CFOPs
    Constraints = True
    Left = 543
    Top = 389
  end
  object Q_CFOPs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cfops'
      'order by cfop')
    Left = 543
    Top = 342
  end
  object C_CFOPsDS: TDataSource
    DataSet = C_CFOPs
    Left = 543
    Top = 483
  end
  object Q_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.cst, c.tipomovimento, s.descricao, c.cfopassociado , c.' +
        'cfopforaestado, s.cfop_venda, s.cfop_compra, s.cfop_devolucao'
      'from cfopscst c'
      '  inner join csts s on s.cst = c.cst')
    Left = 386
    Top = 342
  end
  object P_CSTs: TDataSetProvider
    DataSet = Q_CSTs
    Constraints = True
    Left = 386
    Top = 389
  end
  object C_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs'
    Left = 386
    Top = 438
    object C_CSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_CSTsCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 4
    end
    object C_CSTsCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Size = 4
    end
    object C_CSTsCFOP_DEVOLUCAO: TStringField
      FieldName = 'CFOP_DEVOLUCAO'
      Size = 4
    end
    object C_CSTsTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_CSTsCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Size = 4
    end
    object C_CSTsCFOPFORAESTADO: TStringField
      FieldName = 'CFOPFORAESTADO'
      Size = 4
    end
    object C_CSTsCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
  end
  object C_CSTsDS: TDataSource
    DataSet = C_CSTs
    Left = 386
    Top = 483
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
    Left = 24
    Top = 369
  end
  object P_Transp: TDataSetProvider
    DataSet = Q_Transp
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 24
    Top = 471
  end
  object C_Transp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Transp'
    Left = 28
    Top = 419
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
  object Q_TiposCobranca: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From TiposCobranca'
      'where Desativado = '#39'N'#39
      'order by Descricao')
    UniDirectional = True
    Left = 303
    Top = 342
  end
  object P_TiposCobranca: TDataSetProvider
    DataSet = Q_TiposCobranca
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 304
    Top = 389
  end
  object C_TiposCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposCobranca'
    Left = 303
    Top = 438
    object C_TiposCobrancaTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TIPOSCOBRANCA.TIPOCOBRANCA'
      Required = True
    end
    object C_TiposCobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSCOBRANCA.DESCRICAO'
      Size = 50
    end
    object C_TiposCobrancaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'TIPOSCOBRANCA.DESATIVADO'
      Size = 1
    end
  end
  object C_TiposCobrancaDS: TDataSource
    DataSet = C_TiposCobranca
    Left = 303
    Top = 484
  end
  object Q_Carteiras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From Carteiras'
      'where Desativado = '#39'N'#39
      'order by Descricao')
    UniDirectional = True
    Left = 735
    Top = 266
  end
  object P_Carteiras: TDataSetProvider
    DataSet = Q_Carteiras
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 624
    Top = 377
  end
  object C_Carteiras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Carteiras'
    Left = 623
    Top = 428
    object C_CarteirasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRAS.CARTEIRA'
      Required = True
    end
    object C_CarteirasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CARTEIRAS.DESCRICAO'
      Size = 50
    end
    object C_CarteirasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'CARTEIRAS.NOSSONUMERO'
      Size = 11
    end
    object C_CarteirasNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Origin = 'CARTEIRAS.NUMEROCARTEIRA'
      Size = 10
    end
  end
  object C_CarteirasDS: TDataSource
    DataSet = C_Carteiras
    Left = 623
    Top = 480
  end
  object Q_SitECF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from situacoesecf'
      '')
    Left = 733
    Top = 362
  end
  object P_SitECF: TDataSetProvider
    DataSet = Q_SitECF
    Constraints = True
    Left = 688
    Top = 426
  end
  object C_SitECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SitECF'
    Left = 687
    Top = 477
    object C_SitECFSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'SITUACOESECF.SITUACAOECF'
      Required = True
      Size = 1
    end
    object C_SitECFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SITUACOESECF.DESCRICAO'
      Size = 25
    end
  end
  object Q_PosVenda: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select AGENDARCONTATO From itens'
      'where item = :Item')
    Left = 737
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Item'
        ParamType = ptUnknown
      end>
    object Q_PosVendaAGENDARCONTATO: TIBStringField
      FieldName = 'AGENDARCONTATO'
      Origin = 'ITENS.AGENDARCONTATO'
      Size = 1
    end
  end
  object Q_Almoxarifado: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ALMOXARIFADO, DESCRICAO from ALMOXARIFADOS'
      'order by DESCRICAO')
    Left = 810
    Top = 2
  end
  object C_Almoxarifado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifado'
    Left = 810
    Top = 102
    object C_AlmoxarifadoALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ALMOXARIFADOS.ALMOXARIFADO'
      Required = True
    end
    object C_AlmoxarifadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
  object P_Almoxarifado: TDataSetProvider
    DataSet = Q_Almoxarifado
    Constraints = True
    Left = 814
    Top = 54
  end
  object Beep: TBTBeeper
    BeatDuration = bd_500
    Left = 740
    Top = 140
  end
  object Q_TabelaCSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select c.cst, c.cst || '#39' - '#39' || c.descricao as descricao'
      'from csts c')
    UniDirectional = True
    Left = 793
    Top = 342
  end
  object P_TabelaCSTs: TDataSetProvider
    DataSet = Q_TabelaCSTs
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 794
    Top = 389
  end
  object C_TabelaCSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelaCSTs'
    Left = 793
    Top = 438
    object C_TabelaCSTsCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 3
    end
    object C_TabelaCSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 66
    end
  end
  object C_TabelaCSTs_DS: TDataSource
    DataSet = C_TabelaCSTs
    Left = 793
    Top = 484
  end
  object Q_CSTIPI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT c.*,c.cstipi ||'#39' - '#39'|| c.descricao as cstdesc FROM cstsip' +
        'i c where c.cstipi >= '#39'50'#39)
    Left = 883
    Top = 340
  end
  object P_CSTIPI: TDataSetProvider
    DataSet = Q_CSTIPI
    Constraints = True
    Left = 883
    Top = 389
  end
  object C_CSTIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTIPI'
    Left = 883
    Top = 438
    object C_CSTIPICSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTSIPI.CSTIPI'
      Required = True
      Size = 2
    end
    object C_CSTIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTSIPI.DESCRICAO'
      Size = 60
    end
    object C_CSTIPICSTDESC: TStringField
      FieldName = 'CSTDESC'
      Size = 65
    end
  end
  object C_CSTIPIDS: TDataSource
    DataSet = C_CSTIPI
    Left = 883
    Top = 487
  end
  object Q_CST_PisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.cstpiscofins, c.cstpiscofins || '#39' - '#39' || c.descricao as' +
        ' descricao'
      'from cstspiscofins c where c.cstpiscofins < '#39'50'#39
      'order by c.cstpiscofins asc')
    Left = 875
    Top = 144
  end
  object P_CST_PisCofins: TDataSetProvider
    DataSet = Q_CST_PisCofins
    Constraints = True
    Left = 875
    Top = 193
  end
  object C_CST_PisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CST_PisCofins'
    Left = 875
    Top = 242
    object C_CST_PisCofinsCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'CSTSPISCOFINS.CSTPISCOFINS'
      Required = True
      Size = 2
    end
    object C_CST_PisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 505
    end
  end
  object C_CST_PisCofins_DS: TDataSource
    DataSet = C_CST_PisCofins
    Left = 875
    Top = 291
  end
end
